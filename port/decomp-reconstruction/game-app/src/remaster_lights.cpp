// Port addition (remaster, not in the binary; REMASTER.md "Dynamic lights"): torches, braziers and spell effects light the level.
//
// The original lights the world with one light, the player's (light set "PlayerLight", parameter light0 of every material).
// Torches and spells are only textures and particles. The shader's LightN* uniforms read the driver's global parameters
// DynamicLightN (8 of them; the scene manager clears the ones it used last frame and adds the scene's light nodes from 0 up, which
// in this game is the player's light or two). Here three CLight objects go into DynamicLight5..7 every frame (uniforms
// Light5Position / Light5Diffusecolor / Light5Attenuation ... of the remaster world shader). Before the level is drawn the
// visible scene graph is walked: a node whose
// first material's texture is a fire, torch or spell effect is a light source, coloured by the texture (orange fire, blue and
// green torch fire, lightning, poison, frost, magic). The three sources closest to the camera target drive the three lights;
// fire flickers. The shader adds N.L * colour * a smooth window falloff over the light's radius (Attenuation.x) to the
// lit colour. Port setting: dynlights (percent, default 100; 0 = off).
#include <cctype>
#include <chrono>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <unordered_map>
#include <vector>

#include "core-platform/port_settings.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-shared/shared_string_heap.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/material_parameters_part_1b.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace {

using glitch::video::CLight;

constexpr int kLights = 3;
constexpr int kFirstSlot = 5;  // DynamicLight5 .. DynamicLight7

struct Kind {
    float r, g, b;
    float intensity;
    float radius;
    bool flicker;
};

// colour classes by texture name; index 0 = not a light
const Kind kKinds[] = {
    {0, 0, 0, 0, 1, false},
    {1.00f, 0.55f, 0.22f, 2.4f, 650.0f, true},   // 1 fire, torch, brazier, candle, lava
    {0.35f, 0.55f, 1.00f, 2.4f, 650.0f, true},   // 2 blue torch fire
    {0.40f, 1.00f, 0.35f, 2.2f, 650.0f, true},   // 3 green torch fire
    {0.65f, 0.75f, 1.00f, 2.2f, 480.0f, false},  // 4 lightning, sparks
    {0.45f, 1.00f, 0.30f, 1.6f, 420.0f, false},  // 5 poison
    {0.50f, 0.85f, 1.00f, 1.6f, 420.0f, false},  // 6 frost, ice, water spells
    {0.75f, 0.45f, 1.00f, 1.6f, 420.0f, false},  // 7 magic, portal, aura
};

int classify(const std::string& texture) {
    std::string n;
    for (char c : texture) n += static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
    const std::size_t slash = n.find_last_of("/\\");
    if (slash != std::string::npos) n = n.substr(slash + 1);
    // whole tokens of the name ("selectorcharactere" must not read as "torch"); a token may carry trailing digits (fire01)
    std::vector<std::string> tokens;
    {
        std::string cur;
        for (char c : n) {
            if (c == '_' || c == '.' || c == '-' || c == ' ') {
                if (!cur.empty()) tokens.push_back(cur);
                cur.clear();
            } else {
                cur += c;
            }
        }
        if (!cur.empty()) tokens.push_back(cur);
    }
    auto has = [&](const char* s) {
        const std::size_t len = std::strlen(s);
        for (const std::string& t : tokens) {
            if (t.compare(0, len, s) == 0 && (t.size() == len || std::isdigit(static_cast<unsigned char>(t[len])) || t[len] == 's')) return true;
        }
        return false;
    };
    if (has("smoke") || has("dust") || has("fog") || has("shadow") || has("blood") || has("trail") || has("decal") || has("n") ||
        has("caustic") || has("bubule") || has("cloud") || has("ring") || has("shockwave") || has("lenz") || has("lens") || has("flare") ||
        has("flares")) {
        return 0;
    }
    if (has("fire") && has("blue")) return 2;
    if (has("fire") && has("green")) return 3;
    if (has("torch") || has("fire") || has("flame") || has("brazier") || has("candle") || has("lava") || has("ember")) return 1;
    if (has("lightning") || has("spark")) return 4;
    if (has("poison")) return 5;
    if (has("frost") || has("freeze") || (has("spell") && has("water")) || has("ice")) return 6;
    if (has("magic") || has("portal") || has("aura") || has("arcane") || has("eclipse") || has("spectral")) return 7;
    return 0;
}

// the first texture of a material (its first sampler parameter)
std::string firstTexture(glitch::video::CMaterial* material) {
    glitch::video::CMaterialRenderer* renderer = material->m_renderer.get();
    if (renderer == nullptr) return std::string();
    for (std::size_t i = 0; i < renderer->m_entryStorage.size(); ++i) {
        if (renderer->m_entryStorage[i].kind != 2) continue;
        boost::intrusive_ptr<glitch::video::ITexture> texture;
        if (material->parameters.getParameter(static_cast<uint16_t>(i), 0u, texture) && texture) return texture->m_name;
    }
    return std::string();
}

boost::intrusive_ptr<CLight> s_light[kLights];
std::unordered_map<const void*, int> s_kindOf;  // material -> class (raw keys, cleared now and then)
unsigned s_frame = 0;

struct Source {
    glitch::core::vector3d<float> at;
    int kind;
    float d2;
    const void* material;
};

void walk(glitch::scene::ISceneNode* node, const glitch::core::vector3d<float>& focus, std::vector<Source>& out, int depth) {
    if (node == nullptr || depth > 40 || !node->visible || !node->visibleInParent) return;
    if (node->getMaterialCount() > 0) {
        boost::intrusive_ptr<glitch::video::CMaterial> material = node->getMaterial(0);
        if (material) {
            auto found = s_kindOf.find(material.get());
            int kind;
            if (found == s_kindOf.end()) {
                kind = classify(firstTexture(material.get()));
                s_kindOf.emplace(material.get(), kind);
            } else {
                kind = found->second;
            }
            if (kind != 0) {
                const glitch::core::vector3d<float> p = node->getAbsolutePosition();
                const float dx = p.X - focus.X, dy = p.Y - focus.Y, dz = p.Z - focus.Z;
                const float d2 = dx * dx + dy * dy + dz * dz;
                if (d2 < 1800.0f * 1800.0f) out.push_back({p, kind, d2, material.get()});
            }
        }
    }
    for (glitch::scene::ISceneNode* child : node->getChildren()) walk(child, focus, out, depth + 1);
}

void ensureLights() {
    for (auto& light : s_light) {
        if (!light) {
            light = CLight::allocate(nullptr);
            light->m_diffuseColor = glitch::video::SColorf{0.0f, 0.0f, 0.0f, 0.0f};
            light->m_attenuation.X = 1.0f;
        }
    }
}

void place(CLight* light, const glitch::core::vector3d<float>& at) {
    glitch::core::CMatrix4<float> m;
    for (int i = 0; i < 16; ++i) m.M[i] = (i % 5 == 0) ? 1.0f : 0.0f;
    m.M[12] = at.X;
    m.M[13] = at.Y;
    m.M[14] = at.Z;
    m.flag = false;
    light->setAbsoluteTransformation(m);
}

}  // namespace

// Application::Draw, before the level is drawn.
void Dh2UpdateDynamicLights(glitch::video::IVideoDriver* driver, glitch::scene::ISceneNode* root, glitch::scene::ICameraSceneNode* camera) {
    static const float amount = static_cast<float>(dh2port::Get("dynlights", 100)) / 100.0f;
    if (amount <= 0.0f || driver == nullptr || root == nullptr || camera == nullptr || driver->m_globalParameters == nullptr ||
        driver->m_dynamicLightBase == 0xffff || driver->m_dynamicLightLimit < kFirstSlot + kLights) {
        return;
    }
    ensureLights();
    for (int i = 0; i < kLights; ++i) {
        glitch::video::detail::part1b::setParameter(driver->m_globalParameters->store(),
                                                    static_cast<uint16_t>(driver->m_dynamicLightBase + kFirstSlot + i), 0u, s_light[i].get());
    }
    if (++s_frame % 600 == 0) s_kindOf.clear();  // materials come and go with levels and effects
    const glitch::core::vector3d<float> focus = camera->getTarget();
    std::vector<Source> sources;
    walk(root, focus, sources, 0);
    // the closest sources, at most one per 150 units (a torch is often several nodes: flame, halo, sparks)
    std::vector<Source> chosen;
    while (static_cast<int>(chosen.size()) < kLights && !sources.empty()) {
        std::size_t best = 0;
        for (std::size_t i = 1; i < sources.size(); ++i) {
            if (sources[i].d2 < sources[best].d2) best = i;
        }
        const Source s = sources[best];
        sources.erase(sources.begin() + static_cast<long>(best));
        bool near = false;
        for (const Source& c : chosen) {
            const float dx = c.at.X - s.at.X, dy = c.at.Y - s.at.Y, dz = c.at.Z - s.at.Z;
            if (dx * dx + dy * dy + dz * dz < 150.0f * 150.0f) near = true;
        }
        if (!near) chosen.push_back(s);
    }
#ifdef DH2_HOST_RUNNER
    if (std::getenv("DH2_DL_LOG") != nullptr && s_frame % 120 == 0) {
        for (const Source& c : chosen) {
            std::fprintf(stdout, "DYNLIGHT frame %u kind %d dist %.0f tex %s\n", s_frame, c.kind, std::sqrt(c.d2),
                         firstTexture(static_cast<glitch::video::CMaterial*>(const_cast<void*>(c.material))).c_str());
        }
    }
#endif
    const double t = std::chrono::duration<double>(std::chrono::steady_clock::now().time_since_epoch()).count();
    for (int i = 0; i < kLights; ++i) {
        CLight* light = s_light[i].get();
        if (i >= static_cast<int>(chosen.size())) {
            light->m_diffuseColor = glitch::video::SColorf{0.0f, 0.0f, 0.0f, 0.0f};
            continue;
        }
        const Kind& k = kKinds[chosen[i].kind];
        float flicker = 1.0f;
        if (k.flicker) {
            const double phase = t * 1.0 + i * 7.31;
            flicker = static_cast<float>(0.85 + 0.09 * std::sin(phase * 9.1) + 0.06 * std::sin(phase * 23.7 + 1.3));
        }
        // a little above the source, so the floor around a torch lights evenly
        glitch::core::vector3d<float> at = chosen[i].at;
        at.Z += 40.0f;
        place(light, at);
        light->m_diffuseColor = glitch::video::SColorf{k.r, k.g, k.b, k.intensity * flicker * amount};
        light->m_attenuation.X = k.radius;
    }
}
