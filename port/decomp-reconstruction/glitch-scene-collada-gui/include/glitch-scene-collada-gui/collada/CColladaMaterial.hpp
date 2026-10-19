// glitch::collada free functions of the material creation path (canonical header, residue pass ob). Declarations of the
// functions in src/collada/CColladaMaterial.cpp: createMaterial 0x631ce8 and the anonymous-namespace setMaterialParameter helper of the
// effect-to-renderer templates.
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/deps/video_stand_ins.hpp"

namespace glitch {
namespace video {
class CMaterial;
class CMaterialRenderer;
class IVideoDriver;
}  // namespace video

namespace collada {

class CColladaDatabase;
class CRootSceneNode;
struct SMaterial;
struct SEffectList;
struct SProfileNullTraits;
struct SProfileGLES2Traits;

// 0x631ce8 _ZN6glitch7collada14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS4_17CMaterialRendererEEERNS0_9SMaterialEPNS0_14CRootSceneNodeE
// The material of `record` over `renderer`: a material named after the record whose parameters are the record's parameter values (each
// checked against the renderer's parameter, converted when allowed, and logged when not), and whose technique is the record's technique
// parameter when the renderer has one. A null renderer gives a null material. The original returns the pointer through a hidden out
// slot; the port returns it.
boost::intrusive_ptr<video::CMaterial> createMaterial(const CColladaDatabase& db, video::IVideoDriver* driver,
                                                      const boost::intrusive_ptr<video::CMaterialRenderer>& renderer, SMaterial& record,
                                                      CRootSceneNode* root);

// 0x636b6c _ZN6glitch7collada22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
// The renderer `name` built from the effects of the list for the driver family: the GLES2 profile for the driver bits 0x18 (none of 7), the
// null profile for a driver of type 0; any other family gives null.
boost::intrusive_ptr<video::CMaterialRenderer> createMaterialRenderer(const CColladaDatabase& db, video::IVideoDriver* driver,
                                                                      const char* name, const SEffectList& effects, CRootSceneNode* root);

// 0x6357a0 (null profile) and 0x6361e8 (GLES2 profile): the renderer built from the effects of the list through the profile's traits.
// PARTIAL: not yet transcribed (see the ledger rows).
template <typename Traits>
boost::intrusive_ptr<video::CMaterialRenderer> createMaterialRendererForProfile(const CColladaDatabase& db, video::IVideoDriver* driver,
                                                                                const char* name, const SEffectList& effects,
                                                                                CRootSceneNode* root);

}  // namespace collada
}  // namespace glitch
