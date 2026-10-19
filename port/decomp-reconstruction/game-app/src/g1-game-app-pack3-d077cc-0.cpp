// Batch g1-game-app-pack3-d077cc-0 (POProjectile, POZone; POVillager and PlayerLightTweaker are deferred, see the end).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// The collision callbacks reach the owning GameObject through its handle, as the originals do: ObjectBase::GetHandle
// on the owner, then ObjectHandle::GetObject or operator GameObject*. The Hex-Rays signatures drop some arguments
// (the `this` of GetHandle, and the other body of POZone::onCollisionBegins), so the argument use below follows the asm.
#include "dh2/POProjectile.hpp"
#include "dh2/POZone.hpp"

#include "core-platform/deps/game_types.hpp"  // Point2D, Point3D
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/PlayerLightTweaker.hpp"
#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/LightBase.hpp"
#include "dh2/global/ctrl_camera.hpp"  // ApplicationGetInstance
#include "glitch-core-io/os/device.hpp"  // glitch::IDevice::videoDriver (+0x10)
#include "glitch-video/global_parameter_manager.hpp"  // CGlobalMaterialParameterManager
#include "glitch-video/material_parameters_bind_g.hpp"  // the typed setParameter members
#include "glitch-video/video_driver.hpp"  // IVideoDriver::m_globalParameters (+0xe4), m_fogColorIds (+0xfa)
#include <cstdio>
#include <cstring>

extern const char* RES_PATH;  // core-platform/src/filesystem_win32.cpp
#include "dh2/Zone.hpp"

namespace {

// The GameObject that owns body, resolved through the owner's handle (ObjectBase::GetHandle, then operator
// GameObject*). The original does not test body or its owner for null first, and neither does this.
GameObject* ResolveOwner(PhysicalBaseObject* body) {
    ObjectHandle handle = body->m_owner->GetHandle();
    return handle;
}

}  // namespace

// 0x47046c POProjectile::onCollisionPersists(PhysicalBaseObject*, Point2D<float> const&, bool)
// The asm loads slot +0x0c of the vtable (onCollisionBegins) and calls it with r1..r3 unchanged, so the
// arguments pass through as they are. Hex-Rays shows only a1 because the call is a plain pass-through.
void POProjectile::onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) {
    onCollisionBegins(other, point, flag);
}

// 0x470480 POProjectile::~POProjectile() (D1, complete-object destructor)
// The original stores the POProjectile vtable and calls PhysicalObject's base destructor (asm: BL
// PhysicalObject::~PhysicalObject, the D2 form). The empty body gives the same two steps.
POProjectile::~POProjectile() {}

// 0x4704b4 POProjectile::onCollisionBegins(PhysicalBaseObject*, Point2D<float> const&, bool)
// The owner of this body (m_owner, +0x08) is looked up through its handle. When its GO id (+0xf4, m_goId) is 9,
// which is Projectile (GO_IDS 9 in global/object_factory.hpp), and the other body is set, the owner's slot +0xd0
// is called: Projectile::OnCollision(the other body's owner, point). The flag is not read (r3 is unused in the asm).
void POProjectile::onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& point, bool /*flag*/) {
    ObjectHandle handle = m_owner->GetHandle();
    ObjectBase* object = handle.GetObject(false);
    if (object != nullptr && static_cast<int>(object->m_goId) == 9) {
        if (other != nullptr) {
            static_cast<Projectile*>(object)->OnCollision(other->m_owner, point);
        }
    }
}

// 0x470520 POProjectile::onCollisionTest(PhysicalBaseObject*, short, ushort, ushort, short, ushort, ushort)
// Runs PhysicalObject::onCollisionTest with the same arguments. When it passes, the owner of this body is
// looked up through its handle and accepted when its GO id is 9 (Projectile) or 10 (LaserTypeProjectile, GO_IDS 10).
// For an accepted owner and a set other body, the owner's slot +0xd0 is called with the other body's owner and the
// owner's position (m_position X and Y, +0x160 and +0x164). Always returns false (0).
// LaserTypeProjectile.hpp now declares it as a Projectile subclass, so the id 10 call goes through the Projectile type:
// slot +0xd0 is the virtual OnCollision, which the asm calls with the same signature for both ids.
bool POProjectile::onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                                   unsigned short otherMask, short group, unsigned short category,
                                   unsigned short mask) {
    if (PhysicalObject::onCollisionTest(other, otherGroup, otherCategory, otherMask, group, category, mask)) {
        ObjectHandle handle = m_owner->GetHandle();
        ObjectBase* target = handle.GetObject(false);
        bool accepted = target != nullptr && static_cast<int>(target->m_goId) == 9;
        if (!accepted) {
            ObjectHandle handle10 = m_owner->GetHandle();
            target = handle10.GetObject(false);
            accepted = target != nullptr && static_cast<int>(target->m_goId) == 10;
        }
        if (accepted && other != nullptr) {
            const GameObject* game = static_cast<GameObject*>(target);
            const Point2D<float> position{game->m_position.X, game->m_position.Y};
            static_cast<Projectile*>(target)->OnCollision(other->m_owner, position);
        }
    }
    return false;
}

// 0x4706ec POProjectile::~POProjectile() (D0, deleting destructor)
// Skipped: compiler-generated. It runs the D1 body and then CustomFree(this) (asm 0x4706ec). A C++ delete of a
// POProjectile does the same, so no body is written.

// 0x470728 POZone::~POZone() (D1, complete-object destructor)
// Stores the POZone vtable and calls PhysicalObject's base destructor (asm: BL PhysicalObject D2). The empty body
// gives the same two steps.
POZone::~POZone() {}

// 0x47075c POZone::onCollisionEnds(PhysicalBaseObject*, Point2D<float> const&, bool)
// The other body's owner is resolved to a GameObject (asm: LDR R1,[R1,#8], then GetHandle and operator GameObject*).
// When the zone (this->m_owner, +0x08) and that object are both set, the zone's slot +0xd4 is called:
// Zone::OnCollisionEnds(object). The point and flag are not read.
void POZone::onCollisionEnds(PhysicalBaseObject* other, const Point2D<float>& /*point*/, bool /*flag*/) {
    Zone* zone = static_cast<Zone*>(m_owner);
    GameObject* object = ResolveOwner(other);
    if (object != nullptr && zone != nullptr) {
        zone->OnCollisionEnds(object);
    }
}

// 0x4707a8 POZone::onCollisionPersists(PhysicalBaseObject*, Point2D<float> const&, bool)
// Same lookup as onCollisionEnds. Calls the zone's slot +0xd0: Zone::OnCollisionPersists(object).
void POZone::onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& /*point*/, bool /*flag*/) {
    Zone* zone = static_cast<Zone*>(m_owner);
    GameObject* object = ResolveOwner(other);
    if (object != nullptr && zone != nullptr) {
        zone->OnCollisionPersists(object);
    }
}

// 0x4707f4 POZone::onCollisionBegins(PhysicalBaseObject*, Point2D<float> const&, bool)
// Same lookup as onCollisionEnds (the other body's owner, asm: LDR R1,[R1,#8]). Calls the zone's slot +0xcc:
// Zone::OnCollisionBegins(object).
void POZone::onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& /*point*/, bool /*flag*/) {
    Zone* zone = static_cast<Zone*>(m_owner);
    GameObject* object = ResolveOwner(other);
    if (object != nullptr && zone != nullptr) {
        zone->OnCollisionBegins(object);
    }
}

// 0x470840 POZone::onCollisionTest(PhysicalBaseObject*, short, ushort, ushort, short, ushort, ushort)
// Returns the PhysicalObject::onCollisionTest result. When it is true, the same lookup runs and the zone's slot +0xc8
// is called: Zone::OnCollision(object) when both the zone and the object are set.
bool POZone::onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                             unsigned short otherMask, short group, unsigned short category, unsigned short mask) {
    const bool passed =
        PhysicalObject::onCollisionTest(other, otherGroup, otherCategory, otherMask, group, category, mask);
    if (passed) {
        Zone* zone = static_cast<Zone*>(m_owner);
        GameObject* object = ResolveOwner(other);
        if (object != nullptr && zone != nullptr) {
            zone->OnCollision(object);
        }
    }
    return passed;
}

// 0x4709a0 POZone::~POZone() (D0, deleting destructor)
// Skipped: compiler-generated. It runs the D1 body and then CustomFree(this) (asm). A C++ delete of a POZone does
// the same, so no body is written.

// Deferred to the redo pass (batch r2a-game-app-pack1-e4281c-0, game-app/src/r2a-game-app-pack1-e4281c-0.cpp):
//   0x3b3824 POVillager::~POVillager() (D1) is written there now that dh2/POCharacter.hpp exists.
//   0x40dd7c PlayerLightTweaker::GetIdsFromName is written there now that the CTweakable base header exists.
// Still deferred here, and not compiled in this file:
//   0x3b43e0 POVillager::~POVillager() (D0): compiler-generated; its D1 is in the pack1 file.
//   0x32f2b4 PlayerLightTweaker::PlayerLightTweaker() and 0x40de48 onSetValue: not in this file.
//   0x40e518 ~PlayerLightTweaker() (D0): compiler-generated.

// 0x40e4c4 PlayerLightTweaker::~PlayerLightTweaker() (D1). The original resets the vptr, frees the heap block of the
// m_lightType string (+0xf8) when it is not the inline buffer, then runs ~CTweakable. The std::string member and the base
// destructor do the same here.
PlayerLightTweaker::~PlayerLightTweaker() {}

// 0x40de48 PlayerLightTweaker::onSetValue(std::string const&)
// Dispatch on the property name, as the original's strncmp chain does. Every branch reads the light index from the
// ASCII digit the registered name ends in (the byte after the prefix: [14] for m_attenuation, [15] for ambient and
// diffuse, [16] for specular), then the light pointer at m_lights[index]. A zero light pointer is skipped, as the
// original tests it (the asm's LDR from the light array is followed by a null test before every setter call).
// The colour branches divide the stored bytes by 255; the stored value is a property of the tweaker itself, so the
// original re-reads it instead of using the string.
// The original reaches the current level through Application::GetCurrentLevel and the level's own LevelConfig
// (Level::GetLevelConfig +0x3ef4a8): the fog start and end go to m_fogStart/m_fogEnd (+0x1d8/+0x1dc) as truncated
// ints, the fog colour to m_fogColor (+0x1e0); the fog colour is copied to m_clearColor (+0x1ec) as well. The global
// material parameters are written too: the fog colour pair to the manager's material parameter `m_fogColorIds[0]`
// (+0xfa of the driver, with index 0), the fog start and end to the same id plus 2 (`start + 2`, index 0), and the
// fog direction mask to the raw words of the parameter block at +0x458..+0x460 of the manager (IVideoDriver +0x1c
// then +0x1c is CGlobalMaterialParameterManager; asm 0x40e240: LDR R3,[R4,#(dword_99F73C-0x99F72C)] = +0x10 =
// m_device, LDR R3,[R3,#0x1C] = videoDriver, LDR R3,[R3,#0xE4] = m_globalParameters).
void PlayerLightTweaker::onSetValue(const std::string& name) {
    // The original loads the std::string data pointer once and passes it to every strncmp.
    const char* const s = name.c_str();
    if (std::strncmp(s, "m_attenuation", 13) == 0) {
        const int index = static_cast<signed char>(s[14]) - 48;
        LightBase* light = (index >= 0 && index < 5) ? m_lights[index] : nullptr;
        if (light != nullptr) {
            const glitch::core::vector3d<float>& a = m_attenuation[index];
            light->SetAttenuation(Point3D<float>{a.X, a.Y, a.Z});
        }
        return;
    }
    if (std::strncmp(s, "m_ambientColor", 14) == 0) {
        const int index = static_cast<signed char>(s[15]) - 48;
        LightBase* light = (index >= 0 && index < 5) ? m_lights[index] : nullptr;
        if (light != nullptr) {
            const glitch::video::SColor c = m_ambientColor[index];
            light->SetAmbientColor(Point3D<float>{static_cast<float>(c.component(0)) / 255.0f,
                                                  static_cast<float>(c.component(1)) / 255.0f,
                                                  static_cast<float>(c.component(2)) / 255.0f});
        }
        return;
    }
    if (std::strncmp(s, "m_diffuseColor", 14) == 0) {
        const int index = static_cast<signed char>(s[15]) - 48;
        LightBase* light = (index >= 0 && index < 5) ? m_lights[index] : nullptr;
        if (light != nullptr) {
            const glitch::video::SColor c = m_diffuseColor[index];
            light->SetDiffuseColor(Point3D<float>{static_cast<float>(c.component(0)) / 255.0f,
                                                  static_cast<float>(c.component(1)) / 255.0f,
                                                  static_cast<float>(c.component(2)) / 255.0f});
        }
        return;
    }
    if (std::strncmp(s, "m_specularColor", 15) == 0) {
        const int index = static_cast<signed char>(s[16]) - 48;
        LightBase* light = (index >= 0 && index < 5) ? m_lights[index] : nullptr;
        if (light != nullptr) {
            const glitch::video::SColor c = m_specularColor[index];
            light->SetSpecularColor(Point3D<float>{static_cast<float>(c.component(0)) / 255.0f,
                                                   static_cast<float>(c.component(1)) / 255.0f,
                                                   static_cast<float>(c.component(2)) / 255.0f});
        }
        return;
    }
    if (std::strncmp(s, "m_fogColor", 10) == 0) {
        glitch::video::IVideoDriver* const driver = ApplicationGetInstance().m_device->videoDriver;
        driver->m_globalParameters->setParameter(driver->m_fogColorIds[0], 0u, m_fogColor);
        Level* const level = ApplicationGetInstance().GetCurrentLevel();
        if (level != nullptr) {
            LevelConfig* const config = level->GetLevelConfig();
            const float r = static_cast<float>(m_fogColor.component(0));
            const float g = static_cast<float>(m_fogColor.component(1));
            const float b = static_cast<float>(m_fogColor.component(2));
            config->m_fogColor.X = r;   // +0x1e0, asm STR R7,[R0,#0x1E0]
            config->m_fogColor.Y = g;   // +0x1e4
            config->m_fogColor.Z = b;   // +0x1e8
            config->m_clearColor.X = r; // +0x1ec, the original reads the config a second time
            config->m_clearColor.Y = g; // +0x1f0
            config->m_clearColor.Z = b; // +0x1f4
        }
        return;
    }
    if (std::strncmp(s, "m_fogStart", 10) == 0 || std::strncmp(s, "m_fogEnd", 8) == 0) {
        // The pair is built in the order (start, end) into one 8-byte stack slot and sent as a vector2d<float>.
        // The index is the low half of the driver's FogColor id word plus 2 (asm 0x40e0ec: LDRH [R0,#0xFA] + 2).
        const glitch::core::vector2d<float> range{m_fogStart, m_fogEnd};
        glitch::video::IVideoDriver* const driver = ApplicationGetInstance().m_device->videoDriver;
        driver->m_globalParameters->setParameter(static_cast<std::uint16_t>(driver->m_fogColorIds[0] + 2), 0u, range);
        Level* const level = ApplicationGetInstance().GetCurrentLevel();
        if (level != nullptr) {
            LevelConfig* const config = level->GetLevelConfig();
            config->m_fogStart = static_cast<std::int32_t>(m_fogStart);  // +0x1d8, asm __aeabi_f2iz
            config->m_fogEnd = static_cast<std::int32_t>(m_fogEnd);      // +0x1dc
            if (m_fogEnd > 0.0f && m_fogEnabled == 0.0f) {               // asm: VCMPE + VCMPEQ against 0
                m_fogEnabled = 1.0f;                                     // 1065353216 = 1.0f
                level->EnableFog(nullptr);
            }
        }
        return;
    }
    if (std::strncmp(s, "m_fogDirectionMask", 18) == 0) {
        // The three words of the mask go to the game SceneManager (device +0x1C, asm 0x40e25c..0x40e26c: LDR R3,[R3,#0x1C]; STR
        // R2,[R3,#0x458/0x45c/0x460]), where Level::Update reads them as unk_458/unk_45c/unk_460. (The earlier port wrote them
        // at +0x458 of the driver's global parameter manager, a 0x3c-byte object: a heap overrun on the host.)
        SceneManager* const sceneManager = DeviceSceneManager();
        sceneManager->unk_458 = m_fogDirectionMask.X;
        sceneManager->unk_45c = m_fogDirectionMask.Y;
        sceneManager->unk_460 = m_fogDirectionMask.Z;
        Level* const level = ApplicationGetInstance().GetCurrentLevel();
        if (level != nullptr) {
            level->EnableFog(nullptr);
        }
        return;
    }
}

// 0x32f2b4 PlayerLightTweaker::PlayerLightTweaker()
// The base tweaker takes the device pointer (Application::m_device). The five light slots are cleared (attenuation, the
// three colour arrays, the light pointers) and the fog enable and direction mask (+0x118..+0x127) are zeroed; the fog
// colour, start and end are left as they are. m_lightType starts empty. Then every attenuation, colour and fog value is
// registered by name (light by light: attenuation X/Y/Z, ambient, diffuse, specular), m_lightType is mapped with kind 2
// (a string attribute), and the tweaker XML is loaded from the resource root (the flag is 0 here).
PlayerLightTweaker::PlayerLightTweaker() : glitch::debugger::CTweakable(ApplicationGetInstance().m_device) {
    for (int i = 0; i < 5; ++i) {
        m_attenuation[i].X = 0.0f;  // +0x7c + 12 i
        m_attenuation[i].Y = 0.0f;
        m_attenuation[i].Z = 0.0f;
    }
    m_lightType.clear();  // +0xf8 (inline buffer, 16 bytes in the original)
    m_fogEnabled = 0.0f;  // +0x118
    m_fogDirectionMask.X = 0.0f;  // +0x11c
    m_fogDirectionMask.Y = 0.0f;
    m_fogDirectionMask.Z = 0.0f;
    for (int i = 0; i < 5; ++i) {
        m_lights[i] = nullptr;  // +0x128
        m_ambientColor[i].color = 0;  // +0xb8
        m_diffuseColor[i].color = 0;  // +0xcc
        m_specularColor[i].color = 0;  // +0xe0
    }

    char name[32];
    for (int i = 0; i < 5; ++i) {
        std::snprintf(name, sizeof(name), "m_attenuation[%d].X", i);
        registerVariable(name, m_attenuation[i].X);
        std::snprintf(name, sizeof(name), "m_attenuation[%d].Y", i);
        registerVariable(name, m_attenuation[i].Y);
        std::snprintf(name, sizeof(name), "m_attenuation[%d].Z", i);
        registerVariable(name, m_attenuation[i].Z);
        std::snprintf(name, sizeof(name), "m_ambientColor[%d]", i);
        registerVariable(name, m_ambientColor[i]);
        std::snprintf(name, sizeof(name), "m_diffuseColor[%d]", i);
        registerVariable(name, m_diffuseColor[i]);
        std::snprintf(name, sizeof(name), "m_specularColor[%d]", i);
        registerVariable(name, m_specularColor[i]);
    }
    registerVariable("m_fogColor", m_fogColor);
    registerVariable("m_fogStart", m_fogStart);
    registerVariable("m_fogEnd", m_fogEnd);
    registerVariable("m_fogDirectionMask.X", m_fogDirectionMask.X);
    registerVariable("m_fogDirectionMask.Y", m_fogDirectionMask.Y);
    registerVariable("m_fogDirectionMask.Z", m_fogDirectionMask.Z);
    registerVariableName("m_lightType");
    mappings["m_lightType"] = SMapping(2, &m_lightType);  // kind 2: a string attribute

    char s[256];
    std::snprintf(s, sizeof(s), "%s/data/tweaker/player_light.tweaker_xml", RES_PATH);
    loadXML(s, false);
}

// PlayerLightTweaker::TWEAKER_NAMES (.data 0x99978c, four string pointers followed by a null): the names of the four light sets,
// in the order Application::PostInit (0x32f7e8) creates the tweakers.
const char* const PlayerLightTweaker::TWEAKER_NAMES[4] = {"PlayerLight", "SceneLight", "CameraLight", "MonsterLight"};
