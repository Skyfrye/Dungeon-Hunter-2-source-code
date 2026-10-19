// Slice 33 reconstruction (see include/glitch-scene-collada-gui/recon/slice_33.hpp).
// Each function keeps the original address and mangled symbol in its comment.
// Bodies marked "not reconstructed" keep the signature and return a neutral value; the
// original body is a larger routine whose parts depend on unmapped classes.

#include "glitch-scene-collada-gui/recon/slice_33.hpp"

#include <algorithm>
#include <cmath>
#include <cstddef>
#include <cstring>

namespace glitch::collada::recon_33 {

namespace {

// Attribute constants of the particle affector and emitter index deserializers.
// The original compares the attribute name with the expected key and stops at the
// first mismatch; each helper below does the same and returns the next index.
bool nameIs(IAttributesStandIn& attrs, std::int32_t index, const char* expected) {
    const char* name = attrs.attributeNameAt(index);
    return name != nullptr && std::strcmp(name, expected) == 0;
}

}  // namespace

// ---------------------------------------------------------------------------
// glitch::collada::detail skin techniques
// ---------------------------------------------------------------------------

// 0x66b948 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
int prepareMatrixSkinBuffer(HardwareSkinTechniqueStandIn& self, int step,
                            IVideoDriverStandIn* driver, SkinBufferStandIn& skinBuffer,
                            MeshBufferStandIn* meshBuffer) {
    (void)driver;
    if (step == kPrepareBufferStepUpload) {
        self.prepareSkinBuffer(skinBuffer, meshBuffer);  // vtable +0x18
    }
    return kPrepareBufferReturnHandled;
}

// 0x66d088 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
int prepareQuatSkinBuffer(HardwareSkinTechniqueStandIn& self, int step,
                          IVideoDriverStandIn* driver, SkinBufferStandIn& skinBuffer,
                          MeshBufferStandIn* meshBuffer) {
    (void)driver;
    if (step == kPrepareBufferStepUpload) {
        self.prepareSkinBuffer(skinBuffer, meshBuffer);  // vtable +0x18
    }
    return kPrepareBufferReturnHandled;
}

// 0x66e780 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
int prepareTextureSkinBuffer(HardwareSkinTechniqueStandIn& self, int step,
                             IVideoDriverStandIn* driver, SkinBufferStandIn& skinBuffer,
                             MeshBufferStandIn* meshBuffer) {
    (void)driver;
    if (step == kPrepareBufferStepUpload) {
        self.prepareSkinBuffer(skinBuffer, meshBuffer);  // vtable +0x18
    }
    return kPrepareBufferReturnHandled;
}

// 0x66f7a8 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
// Partial: the material technique lookup that yields the flag mask is passed in as
// `technique`; the original reads it through the material chain. The skin buffer
// reference count that the original takes and drops around the driver call is not
// modelled.
int prepareSoftwareSkinBuffer(SoftwareSkinTechniqueStandIn& self, int step,
                              IVideoDriverStandIn* driver, SkinBufferStandIn& skinBuffer,
                              MeshBufferStandIn* meshBuffer, std::uint32_t technique) {
    // The original uses 0x60001 when the byte at +0x18 is set and 0x20001 otherwise.
    const std::uint32_t flags = self.hasSkinningFlag ? 393217u : 131073u;
    const std::uint32_t processBuffer =
        self.getProcessBuffer(driver, step == 0, flags & technique);
    if ((processBuffer & 4u) != 0) {
        self.processSkinBuffer(skinBuffer, meshBuffer);  // vtable +0x18
    }
    return static_cast<int>(processBuffer);
}


// ---------------------------------------------------------------------------
// glitch::scene::CSceneCollisionManager
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// glitch::scene animators
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// glitch::scene skybox, terrain, text, shadow volume
// ---------------------------------------------------------------------------

// 0x6cebc8 _ZN6glitch5scene16CSkyBoxSceneNodeC2EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS2_8ITextureEEESA_SA_SA_SA_SA_i
// Not reconstructed (14012 byte body).
void constructSkyBoxC2(void* self, void* driver) {
    (void)self;
    (void)driver;
}

// 0x6cf564 _ZN6glitch5scene16CSkyBoxSceneNodeC1EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS2_8ITextureEEESA_SA_SA_SA_SA_i
// Not reconstructed (14086 byte body).
void constructSkyBoxC1(void* self, void* driver) {
    (void)self;
    (void)driver;
}

// The CTerrainSceneNode rows of this slice (0x6d042c, 0x6d083c, 0x6d5268, 0x6d21ac, 0x6d4454) are members of the canonical
// scene/CTerrainSceneNode.hpp (src/scene/CTerrainSceneNode.cpp); their stand-ins are gone.

// 0x6ffb1c _ZN6glitch5scene22CShadowVolumeSceneNodeC1EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrIKNS0_5IMeshEEEiNS0_20E_SHADOW_VOLUME_TYPEEf
// Not reconstructed (2001 byte body).
void constructShadowVolumeC1(void* self, void* driver, void* mesh, std::int32_t id, int type, float f) {
    (void)self;
    (void)driver;
    (void)mesh;
    (void)id;
    (void)type;
    (void)f;
}

// 0x6ffc70 _ZN6glitch5scene22CShadowVolumeSceneNodeC2EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrIKNS0_5IMeshEEEiNS0_20E_SHADOW_VOLUME_TYPEEf
// Not reconstructed (1930 byte body).
void constructShadowVolumeC2(void* self, void* driver, void* mesh, std::int32_t id, int type, float f) {
    (void)self;
    (void)driver;
    (void)mesh;
    (void)id;
    (void)type;
    (void)f;
}

// 0x701358 _ZN6glitch5scene22CShadowVolumeSceneNode11SSilhouette16createSilhouetteENS_4core8vector3dIfEENS_5video12E_LIGHT_TYPEERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEE
// Not reconstructed (8712 byte body).
void createSilhouette(void* self, const core::vector3d<float>& light, int lightType, void* mesh) {
    (void)self;
    (void)light;
    (void)lightType;
    (void)mesh;
}

// ---------------------------------------------------------------------------
// glitch::collada coronas and glitch::scene animated mesh
// ---------------------------------------------------------------------------

// 0x6e5a90 _ZNK6glitch7collada17CCoronasSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void serializeCoronas(const CoronasSceneNodeStandIn& self, IAttributesStandIn& attrs) {
    attrs.addFloat("Width", self.width);     // +0x148
    attrs.addFloat("Height", self.height);   // +0x14c
    attrs.addColor("VColor", self.vColor);   // +0x18c
}

// 0x6e5b0c _ZN6glitch7collada17CCoronasSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The final virtual call (slot +0xf4 on the node, with the size) is omitted.
void deserializeCoronas(CoronasSceneNodeStandIn& self, IAttributesStandIn& attrs) {
    self.width = attrs.getFloat("Width");
    self.height = attrs.getFloat("Height");
    self.vColor = attrs.getColor("VColor");
}



}  // namespace glitch::collada::recon_33
