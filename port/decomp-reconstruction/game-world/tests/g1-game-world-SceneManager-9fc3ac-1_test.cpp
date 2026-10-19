// Test for batch g1-game-world-SceneManager-9fc3ac-1.
//
// The batch source cannot be linked on its own yet: its SceneManager vtable needs every virtual of the engine's
// CSceneManager, and its material bodies are partial (see the batch notes). This test covers the logic that the material
// walkers will use, which lives in dh2/global/scene_technique_names.hpp and needs no engine symbols: the custom,
// x-ray, shadow and common technique names, and the wire-frame and mask x-ray state words.

#include <cstdint>
#include <cstdio>
#include <optional>
#include <string>

#include "dh2/global/scene_technique_names.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

using namespace dh2::scene_technique;

CustomTechniqueRequest AllOn() {
    CustomTechniqueRequest r;
    r.wantLit = true;
    r.texture = false;
    r.alphaMode = 0;
    r.wantSpecular = true;
    r.wantFog = true;
    r.lightingOn = true;
    r.specularOn = true;
    r.fogOn = true;
    return r;
}

// Compares an optional name with the expected text.
bool NameEquals(const std::optional<std::string>& got, const char* want) {
    return got.has_value() && *got == want;
}

// Expects that the function left the material alone.
bool NameEquals(const std::optional<std::string>& got, std::nullopt_t) { return !got.has_value(); }

void TestCustomTechniqueNames() {
    CustomTechniqueRequest off;
    CustomTechniqueRequest fogOnly = off;
    fogOnly.wantFog = true;
    fogOnly.fogOn = true;

    EXPECT(NameEquals(CustomTechniqueName("CE_SHADOW_a", "x", fogOnly), "CE_shadow_fog"));
    EXPECT(NameEquals(CustomTechniqueName("CE_SHADOW_a", "x", off), "CE_shadow"));
    EXPECT(NameEquals(CustomTechniqueName("CE_GLOW_a", "x", off), "CE_translucent_additive"));
    EXPECT(NameEquals(CustomTechniqueName("CE_other", "x", off), ""));
    EXPECT(NameEquals(CustomTechniqueName("FX_BLEND_a", "x", off), "Additif_VC"));
    EXPECT(NameEquals(CustomTechniqueName("FX_BLEND_a", "x", fogOnly), "Additif_VC_fog"));
    EXPECT(NameEquals(CustomTechniqueName("FX_other", "x", off), ""));

    // GL_ families: the light tag comes from the renderer name; the material name supplies the other tags.
    // "GL_XAYSN_x": name[3] is not U, name[5] is not A, name[6] is S, name[7] is N.
    EXPECT(NameEquals(CustomTechniqueName("GL_XAYSN_x", "GL_Diffuse_L4_VC_a", AllOn()),
                      "L4_Vc_----_Sp_Nm_----_Fg"));
    // "GL_UAYSN_x": name[3] is U, so the L0_ form is used.
    EXPECT(NameEquals(CustomTechniqueName("GL_UAYSN_x", "GL_Diffuse_L4_VC_a", AllOn()),
                      "L0_Vc_----_Sp_Nm_----_Fg"));
    EXPECT(NameEquals(CustomTechniqueName("GL_XAYSN_x", "GL_Diffuse_L1", AllOn()), "L1_----_----_Sp_Nm_----_Fg"));
    CustomTechniqueRequest alphaTwo = AllOn();
    alphaTwo.alphaMode = 2;
    EXPECT(NameEquals(CustomTechniqueName("GL_XAYSN_x", "GL_Diffuse_L4_VC_a", alphaTwo),
                      "L4_Vc_Al_Sp_Nm_----_Fg"));
    CustomTechniqueRequest unlitTexture = AllOn();
    unlitTexture.wantLit = false;
    unlitTexture.texture = true;
    unlitTexture.wantSpecular = false;
    unlitTexture.wantFog = false;
    EXPECT(NameEquals(CustomTechniqueName("GL_XAYSN_x", "GL_Diffuse_L4_VC_a", unlitTexture),
                      "Unlit_Texture_----_----_----"));
    unlitTexture.texture = false;
    EXPECT(NameEquals(CustomTechniqueName("GL_XAYSN_x", "GL_Diffuse_L4_VC_a", unlitTexture),
                      "Unlit_Color_----_----_----"));
    EXPECT(NameEquals(CustomTechniqueName("GL_XAYSN_x", "GL_Other", AllOn()), std::nullopt));
    EXPECT(NameEquals(CustomTechniqueName("GL_AB", "GL_Diffuse_L4", AllOn()), std::nullopt));

    CustomTechniqueRequest decal = off;
    decal.wantLit = true;
    decal.lightingOn = true;
    decal.wantSpecular = true;
    decal.specularOn = true;
    EXPECT(NameEquals(CustomTechniqueName("DC_DECSP_a", "x", decal), "Decal_Spec"));
    EXPECT(NameEquals(CustomTechniqueName("DC_DECAL_a", "x", decal), "Decal"));
    decal.lightingOn = false;
    EXPECT(NameEquals(CustomTechniqueName("DC_DECAL_a", "x", decal), "Decal_Unlit"));

    // DV names: "DVAXYZW" gets the alpha tag from name[2] = A and the lit form; "DVAXNZW" also gets _NM.
    CustomTechniqueRequest lit = off;
    lit.wantLit = true;
    lit.lightingOn = true;
    lit.wantFog = true;
    lit.fogOn = true;
    EXPECT(NameEquals(CustomTechniqueName("DVAXYZW", "x", lit), "Diffuse_VC_Alpha_Fog"));
    EXPECT(NameEquals(CustomTechniqueName("DVAXNZW", "x", lit), "Diffuse_VC_Alpha_NM_Fog"));
    lit.wantFog = false;
    EXPECT(NameEquals(CustomTechniqueName("DVXXXZW", "x", lit), "Diffuse_VC"));
    CustomTechniqueRequest texture = off;
    texture.texture = true;
    EXPECT(NameEquals(CustomTechniqueName("DVXXXZW", "x", texture), "Unlit_Texture"));
    EXPECT(NameEquals(CustomTechniqueName("ZZZZZZZ", "x", lit), std::nullopt));
    EXPECT(NameEquals(CustomTechniqueName("ZZZ", "x", lit), ""));
    EXPECT(NameEquals(CustomTechniqueName("AB", "x", lit), std::nullopt));
    EXPECT(NameEquals(CustomTechniqueName(nullptr, "x", lit), std::nullopt));
}

void TestXraySwitchShadowNames() {
    EXPECT(NameEquals(CustomXrayTechniqueName("XR_XRAY_a", true, false), "XR_mask_xray_alpha"));
    EXPECT(NameEquals(CustomXrayTechniqueName("XR_XRAY_a", true, true), "XR_mask_xray_alpha"));
    EXPECT(NameEquals(CustomXrayTechniqueName("XR_XRAY_a", false, false), "XR_draw_xray_alpha"));
    EXPECT(NameEquals(CustomXrayTechniqueName("XR_XRAY_a", false, true), "XR_draw_xray_alpha_fog"));
    EXPECT(NameEquals(CustomXrayTechniqueName("XR_other", false, true), ""));
    EXPECT(NameEquals(CustomXrayTechniqueName("AB_x", false, true), std::nullopt));

    EXPECT(NameEquals(ShadowProjectionTechniqueName("SH_SHADOW_1", true), "SH_Draw_Shadow_Fg"));
    EXPECT(NameEquals(ShadowProjectionTechniqueName("SH_SHADOW_1", false), "SH_Draw_Shadow"));
    EXPECT(NameEquals(ShadowProjectionTechniqueName("SH_other", true), ""));
    EXPECT(NameEquals(ShadowProjectionTechniqueName("XX", true), std::nullopt));
}

void TestCommonTechniqueNames() {
    EXPECT(NameEquals(CommonTechniqueName("default", true), "fog"));
    EXPECT(NameEquals(CommonTechniqueName("lighting", true), "fog & lighting"));
    EXPECT(NameEquals(CommonTechniqueName("DiffSpec_VCAmbient", true), "DiffSpec_VCAmbientFog"));
    EXPECT(NameEquals(CommonTechniqueName("other", true), std::nullopt));
    EXPECT(NameEquals(CommonTechniqueName("fog", false), "default"));
    EXPECT(NameEquals(CommonTechniqueName("fog & lighting", false), "fog & lighting"));
    EXPECT(NameEquals(CommonTechniqueName("DiffSpec_VCAmbientFog", false), "DiffSpec_VCAmbient"));
    EXPECT(NameEquals(CommonTechniqueName("lighting", false), std::nullopt));
    EXPECT(NameEquals(CommonTechniqueName(nullptr, true), std::nullopt));
    EXPECT(NameEquals(CommonTechniqueName(nullptr, false), std::nullopt));
}

void TestStateWords() {
    // Wire frame: bits 12-13 and 14-15 of word 1 are rewritten; the other bits stay.
    EXPECT(WireFrameWord1(0xFFFFFFFFu, true) == 0xFFFF5FFFu);
    EXPECT(WireFrameWord1(0xFFFFFFFFu, false) == 0xFFFF0FFFu);
    EXPECT(WireFrameWord1(0x00000000u, true) == 0x00005000u);
    EXPECT(WireFrameWord1(0x00000000u, false) == 0x00000000u);

    // Mask x-ray from a zero block, and from a block that already has bits 9-11 set.
    std::uint32_t w0 = 0;
    std::uint32_t w1 = 0;
    MaskXrayWords(w0, w1);
    EXPECT(w0 == 0x0000FF00u);
    EXPECT(w1 == 0x08000407u);

    w0 = 0x12345678u;
    w1 = 0x00000E00u;
    MaskXrayWords(w0, w1);
    EXPECT(w0 == 0x1234FF78u);
    EXPECT(w1 == 0x08000407u);
}

}  // namespace

int main() {
    TestCustomTechniqueNames();
    TestXraySwitchShadowNames();
    TestCommonTechniqueNames();
    TestStateWords();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("all checks passed\n");
    return 0;
}
