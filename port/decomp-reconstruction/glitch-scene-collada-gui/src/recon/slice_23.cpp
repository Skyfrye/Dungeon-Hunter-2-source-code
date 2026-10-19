// Slice 23 reconstruction (see include/glitch-scene-collada-gui/recon/slice_23.hpp).
// Each function keeps the original address and mangled symbol in its comment.
// Bodies marked "stub" keep the signature and return a neutral value: the original
// reads guest pointers or members whose layout is not in any layout header.

#include "glitch-scene-collada-gui/recon/slice_23.hpp"

namespace glitch::collada::recon_23 {

// glitch::collada::SAnimationAccessor: canonical class in collada/SAnimationAccessor.hpp (src/collada/SAnimationAccessor.cpp).

// ---------------------------------------------------------------------------
// Skin techniques. Constructors write the vtable, the technique SSkin and SSkinCache
// references, the flag and an empty map. Their members are not in a layout header, so
// the bodies are stubs. The D1 destructors erase the per-technique map and chain to the
// interface base. Bodies that call the base map and vtable are stubs too.
// ---------------------------------------------------------------------------
namespace matrix_skin {

// 0x66b880 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueC2ERNS0_5SSkinERNS0_10SSkinCacheEb
// 0x66b8dc _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb
void construct(Technique&, SkinStandIn&, SkinCacheStandIn&, bool) {}  // stub: members unmapped

// 0x66b9cc _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueD1Ev
void destroy(Technique&) {}  // stub: map erase and base chain need unmapped members

// 0x66ba50 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique23checkAvailabilityStaticERKNS_5video10STechniqueE
bool checkAvailabilityStatic(const STechniqueStandIn&) {
    return false;  // stub: IShader::getParameterID and STechnique layout not mapped
}

// 0x66beac _ZNK6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
bool checkAvailability(const Technique&, const STechniqueStandIn&) {
    return false;  // stub: depends on checkAvailabilityStatic and the skin-cache flag word
}

// 0x66c278 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
void skin(Technique&, SkinBufferStandIn&, MeshBufferStandIn*) {}  // stub: material parameter upload

// 0x66c544 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique15preparePtrCacheEv
void preparePtrCache(Technique&) {}  // stub: scene-node lookup by scope id not mapped

// 0x66c8a4 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
int init(Technique&, SkinBufferStandIn&, MeshBufferStandIn*, VideoDriverStandIn*, bool) {
    return 0;  // stub: initProxyBuffer and the skin-cache flag update not mapped
}

// 0x66cd18 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique12prepareCacheEv
void prepareCache(Technique&) {}  // stub: matrix product into the 68-byte cache entries not mapped

}  // namespace matrix_skin

namespace quat_skin {

// 0x66cfc0 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueC2ERNS0_5SSkinERNS0_10SSkinCacheEb
// 0x66d01c _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb
void construct(Technique&, SkinStandIn&, SkinCacheStandIn&, bool) {}  // stub: members unmapped

// 0x66df04 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueD1Ev
void destroy(Technique&) {}  // stub: map erase and base chain need unmapped members

// 0x66d730 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique23checkAvailabilityStaticERKNS_5video10STechniqueE
bool checkAvailabilityStatic(const STechniqueStandIn&) {
    return false;  // stub: IShader::getParameterID pair and the parameter table not mapped
}

// 0x66d8c8 _ZNK6glitch7collada6detail33CColladaHardwareQuatSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
bool checkAvailability(const Technique&, const STechniqueStandIn&) {
    return false;  // stub: depends on checkAvailabilityStatic and the skin-cache flag word
}

// 0x66dc40 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
void skin(Technique&, SkinBufferStandIn&, MeshBufferStandIn*) {}  // stub: rb-tree parameter cache not mapped

// 0x66df88 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique15preparePtrCacheEv
void preparePtrCache(Technique&) {}  // stub: scene-node lookup by scope id not mapped

// 0x66e204 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique12prepareCacheEv
void prepareCache(Technique&) {}  // stub: dual-quaternion cache build not mapped

// 0x66e634 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
int init(Technique&, SkinBufferStandIn&, MeshBufferStandIn*, VideoDriverStandIn*, bool) {
    return 0;  // stub: initProxyBuffer and the skin-cache flag update not mapped
}

}  // namespace quat_skin

namespace texture_skin {

// 0x66e6b8 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueC2ERNS0_5SSkinERNS0_10SSkinCacheEb
// 0x66e714 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb
void construct(Technique&, SkinStandIn&, SkinCacheStandIn&, bool) {}  // stub: members unmapped

// 0x66ee10 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueD1Ev
void destroy(Technique&) {}  // stub: map erase and base chain need unmapped members

// 0x66e7d0 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique23checkAvailabilityStaticERKNS_5video10STechniqueE
bool checkAvailabilityStatic(const STechniqueStandIn&) {
    return false;  // stub: two IShader::getParameterID lookups not mapped
}

// 0x66e89c _ZNK6glitch7collada6detail36CColladaHardwareTextureSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
bool checkAvailability(const Technique&, const STechniqueStandIn&) {
    return false;  // stub: depends on checkAvailabilityStatic and the skin-cache flag word
}

// 0x66ec14 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
void skin(Technique&, SkinBufferStandIn&, MeshBufferStandIn*) {}  // stub: texture and parameter upload

// 0x66ee94 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique15preparePtrCacheEv
void preparePtrCache(Technique&) {}  // stub: scene-node lookup by scope id not mapped

// 0x66f1f4 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
int init(Technique&, SkinBufferStandIn&, MeshBufferStandIn*, VideoDriverStandIn*, bool) {
    return 0;  // stub: initProxyBuffer and the skin-cache flag update not mapped
}

// 0x66f280 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique12prepareCacheEv
void prepareCache(Technique&) {}  // stub: texture-matrix cache build not mapped

}  // namespace texture_skin

namespace software_skin {

// 0x66f5f8 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueC2ERNS0_5SSkinERNS0_10SSkinCacheEb
// 0x66f658 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb
void construct(Technique&, SkinStandIn&, SkinCacheStandIn&, bool) {}  // stub: members unmapped

// 0x66f724 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueD1Ev
void destroy(Technique&) {}  // stub: map erase and base chain need unmapped members

}  // namespace software_skin

namespace skin_technique {

// 0x670dcc _ZN6glitch7collada6detail21IColladaSkinTechniqueD1Ev
// 0x670e58 _ZN6glitch7collada6detail21IColladaSkinTechniqueD2Ev
// Clears the vtable, releases the shared buffer at +0x08 when its count reaches zero.
void destroyBase(Interface&) {}  // stub: shared buffer layout not mapped

}  // namespace skin_technique

// The glitch::ps shape domains are in src/ps/PDomain.cpp.

}  // namespace glitch::collada::recon_23
