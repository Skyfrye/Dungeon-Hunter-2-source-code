// Technique-name and render-state word logic of the SceneManager material walkers (batch g1-game-world-SceneManager-9fc3ac-1).
//
// These are pure functions of the material and technique names, the flags, and the 32-bit words of a render pass's
// state block (word 0 and word 1 here). The member bodies that read a CMaterial or a CMaterialRenderer field cannot be
// compiled in the same translation unit as dh2/SceneManager.hpp yet (see the batch notes), so the logic lives here and
// is tested on its own (game-world/tests/g1-game-world-SceneManager-9fc3ac-1_test.cpp).
//
// A null name matches nothing: the original's string calls (LC_API_STRCMP_0, LC_API_STRNCMP_0) are not recovered for
// a null argument.
#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <optional>
#include <string>

namespace dh2::scene_technique {

inline bool NameIs(const char* name, const char* text) { return name != nullptr && std::strcmp(name, text) == 0; }

inline bool HasPrefix(const char* name, const char* prefix) {
    return name != nullptr && std::strncmp(name, prefix, std::strlen(prefix)) == 0;
}

// The flags ChangeCustomTechnique reads: the original's a3, a4, a5 (EForceBool), a6 and a7, with the three SceneManager
// bytes they are gated by (+0x430 lighting, +0x431 specular, +0x432 fog). The seventh flag is never read.
struct CustomTechniqueRequest {
    bool wantLit = false;            // a3, gated by lightingOn
    bool texture = false;            // a4: Unlit_Texture when set, Unlit_Color when clear
    std::int32_t alphaMode = 0;      // a5 (EForceBool): 0 and 2 select the alpha names
    bool wantSpecular = false;       // a6, gated by specularOn
    bool wantFog = false;            // a7, gated by fogOn
    bool lightingOn = false;         // SceneManager +0x430
    bool specularOn = false;         // SceneManager +0x431
    bool fogOn = false;              // SceneManager +0x432
};

// The technique name ChangeCustomTechnique applies to a material, or nullopt when the original leaves the material
// alone. An empty name is applied as it is: the original calls ChangeTechnique with an empty string on those paths.
// rendererName is the renderer's own name (used by the GL_ families only).
inline std::optional<std::string> CustomTechniqueName(const char* materialName, const char* rendererName,
                                                      const CustomTechniqueRequest& r) {
    if (materialName == nullptr) {
        return std::nullopt;  // the original's strlen faults here
    }
    const std::size_t length = std::strlen(materialName);
    if (length <= 2) {
        return std::nullopt;
    }

    if (HasPrefix(materialName, "CE_")) {
        const std::string fogSuffix = (r.wantFog && r.fogOn) ? "_fog" : "";
        if (HasPrefix(materialName, "CE_SHADOW")) {
            return std::string("CE_shadow") + fogSuffix;
        }
        if (HasPrefix(materialName, "CE_GLOW")) {
            return std::string("CE_translucent_additive") + fogSuffix;
        }
        return std::string();
    }

    if (HasPrefix(materialName, "FX_")) {
        const std::string fogSuffix = (r.wantFog && r.fogOn) ? "_fog" : "";
        // The NoBlend_VC test cannot match a name that starts with FX_; it stays in the order the original has it.
        if (std::strncmp(materialName, "NoBlend_VC", 9) == 0) {
            return std::string("NoBlend_VC") + fogSuffix;
        }
        if (std::strncmp(materialName, "FX_BLEND", 7) == 0) {
            return std::string("Additif_VC") + fogSuffix;
        }
        return std::string();
    }

    if (HasPrefix(materialName, "GL_")) {
        if (length <= 7) {
            return std::nullopt;
        }
        // The light tag and the vertex colour come from the renderer's name, not the material's.
        std::string lightTag = "----";
        std::string vertexColour = "----";
        if (HasPrefix(rendererName, "GL_Diffuse_L4_VC")) {
            lightTag = "L4";
            vertexColour = "Vc";
        } else if (HasPrefix(rendererName, "GL_Diffuse_L1_VC")) {
            lightTag = "L1";
            vertexColour = "Vc";
        } else if (HasPrefix(rendererName, "GL_Diffuse_L4")) {
            lightTag = "L4";
        } else if (HasPrefix(rendererName, "GL_Diffuse_L1")) {
            lightTag = "L1";
        } else {
            return std::nullopt;
        }
        const std::string alpha = ((materialName[5] == 'A' && r.alphaMode == 0) || r.alphaMode == 2) ? "Al" : "----";
        const std::string spec = (materialName[6] == 'S' && r.wantSpecular && r.specularOn) ? "Sp" : "----";
        const std::string normal = (materialName[7] == 'N') ? "Nm" : "----";
        const std::string fog = (r.wantFog && r.fogOn) ? "Fg" : "----";
        const std::string unused = "----";
        if (r.wantLit && r.lightingOn) {
            if (materialName[3] == 'U') {
                return "L0_" + vertexColour + "_" + alpha + "_" + spec + "_" + normal + "_" + unused + "_" + fog;
            }
            return lightTag + "_" + vertexColour + "_" + alpha + "_" + spec + "_" + normal + "_" + unused + "_" + fog;
        }
        if (r.texture) {
            return "Unlit_Texture_" + alpha + "_" + fog + "_" + unused;
        }
        return "Unlit_Color_" + alpha + "_" + fog + "_" + unused;
    }

    if (HasPrefix(materialName, "DC_DECAL") || HasPrefix(materialName, "DC_DECSP")) {
        const std::string spec = (HasPrefix(materialName, "DC_DECSP") && r.wantSpecular && r.specularOn) ? "_Spec" : "";
        const std::string fog = (r.wantFog && r.fogOn) ? "_Fog" : "";
        if (r.wantLit && r.lightingOn) {
            return std::string("Decal") + spec + fog;
        }
        return std::string("Decal_Unlit") + fog;
    }

    if (length <= 5) {
        return std::string();
    }
    if (!(materialName[0] == 'D' && materialName[1] == 'V')) {
        return std::nullopt;
    }
    std::string alphaSuffix;
    std::string spec;
    std::string fog;
    if (materialName[2] == 'A' && (r.alphaMode == 0 || r.alphaMode == 2)) {
        alphaSuffix = "_Alpha";
    }
    if (materialName[3] == 'S' && r.wantSpecular && r.specularOn) {
        spec = "_Spec";
    }
    if (materialName[4] == 'N') {
        spec = "_NM";  // overwrites the specular tag, as the original does
    }
    if (r.wantFog && r.fogOn) {
        fog = "_Fog";
    }
    if (r.wantLit && r.lightingOn) {
        return std::string("Diffuse_VC") + alphaSuffix + spec + fog;
    }
    if (r.texture) {
        return std::string("Unlit_Texture") + alphaSuffix + fog;
    }
    return std::string("Unlit_Color") + alphaSuffix + fog;
}

// ChangeCustomXrayTechnique: nullopt when the material is not an XR_ material. `fog` is the original's a4 && fog flag.
inline std::optional<std::string> CustomXrayTechniqueName(const char* materialName, bool mask, bool fog) {
    if (!HasPrefix(materialName, "XR_")) {
        return std::nullopt;
    }
    if (!HasPrefix(materialName, "XR_XRAY")) {
        return std::string();
    }
    if (mask) {
        return std::string("XR_mask_xray_alpha");
    }
    return std::string("XR_draw_xray_alpha") + (fog ? "_fog" : "");
}

// ChangeCustomShadowProjectionTechnique: nullopt when the material is not an SH_ material. `fog` is the original's
// a && fog flag.
inline std::optional<std::string> ShadowProjectionTechniqueName(const char* materialName, bool fog) {
    if (!HasPrefix(materialName, "SH_")) {
        return std::nullopt;
    }
    if (!HasPrefix(materialName, "SH_SHADOW")) {
        return std::string();
    }
    return std::string("SH_Draw_Shadow") + (fog ? "_Fg" : "");
}

// ChangeCommonTechnique: the technique a material with technique name `current` changes to, or nullopt when it keeps its
// technique. `fog` is the original's b && fog flag. The "fog & lighting" case with fog off re-selects "fog & lighting",
// as the pseudocode has it.
inline std::optional<std::string> CommonTechniqueName(const char* current, bool fog) {
    if (fog) {
        if (NameIs(current, "default")) {
            return std::string("fog");
        }
        if (NameIs(current, "lighting")) {
            return std::string("fog & lighting");
        }
        if (NameIs(current, "DiffSpec_VCAmbient")) {
            return std::string("DiffSpec_VCAmbientFog");
        }
        return std::nullopt;
    }
    if (!NameIs(current, "fog")) {
        if (NameIs(current, "fog & lighting")) {
            return std::string("fog & lighting");
        }
        if (NameIs(current, "DiffSpec_VCAmbientFog")) {
            return std::string("DiffSpec_VCAmbient");
        }
        return std::nullopt;
    }
    return std::string("default");
}

// DBG_WireFrame: word 1 of a pass's render state, with bits 12-13 and 14-15 cleared and, when enabled, 0x1000 and 0x4000.
inline std::uint32_t WireFrameWord1(std::uint32_t word1, bool enable) {
    const std::uint32_t lowered = (word1 & 0xFFFFCFFFu) | (enable ? 0x1000u : 0u);
    return (lowered & 0xFFFF3FFFu) | (enable ? 0x4000u : 0u);
}

// SetMaskXray: the four edits of the first pass, applied in order. Word 0 gets 0xFF00; word 1 gets bit 27, then its low
// three bits, then bits 9-11 set to 2.
inline void MaskXrayWords(std::uint32_t& word0, std::uint32_t& word1) {
    word1 |= 0x08000000u;
    word1 |= 7u;
    word0 |= 0xFF00u;
    word1 = (word1 & 0xFFFFF1FFu) | 0x400u;
}

}  // namespace dh2::scene_technique
