// Slice 22 reconstruction: glitch::collada scene-node animator and skinned-mesh
// classes plus the animation_track applicator helper. Most rows are partial: the
// member layouts of these classes are not in the layout headers yet, so the bodies
// are stubs and each ledger note says what is missing.
// The stand-in classes live in glitch::collada::recon_22 and have no members.
#pragma once

#include <string>
#include <vector>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-scene-collada-gui/layouts/animation_track.hpp"
#include "glitch-scene-collada-gui/layouts/collada_db.hpp"
#include "glitch-scene-collada-gui/layouts/scene.hpp"

namespace glitch::collada {
class IMesh;  // canonical: collada/IMesh.hpp (not included: it would redefine the layouts/collada_db.hpp records)
}  // namespace glitch::collada

namespace glitch::collada::recon_22 {

// Incomplete stand-ins for types outside this slice.
class CSceneNode;
class SNode;
class CRootSceneNode;
class SController;
class SChannel;
using glitch::video::CMaterial;                  // canonical: glitch-video/material.hpp
using glitch::video::CMaterialVertexAttributeMap; // canonical: glitch-video/material_vertex_attribute_map.hpp
using glitch::video::IVideoDriver;               // canonical: glitch-video/video_driver.hpp
class CMatrix4;
class SQuaternion;
class IMesh;
class SSkinBuffer;

// CAnimationSet, CSceneNodeAnimatorSet, CSceneNodeAnimatorSynchronizedBlender, CSceneNodeAnimatorSynchronizedSet: canonical in
// collada/CAnimationSet.hpp, collada/CSceneNodeAnimatorSet.hpp, collada/CSceneNodeAnimatorSynchronizedBlender.hpp and
// collada/CSceneNodeAnimatorSynchronizedSet.hpp.

// Stand-in for glitch::collada::CSkinnedMesh (layout not in layout headers; no members).
class CSkinnedMesh {
public:
    // 0x663538 _ZN6glitch7collada12CSkinnedMesh6attachEPNS_5scene10ISceneNodeE
    int attach(scene::ISceneNode* node);
    // 0x663584 _ZN6glitch7collada12CSkinnedMesh9onAnimateEj
    int onAnimate(unsigned int time);
    // 0x6635b4 _ZNK6glitch7collada12CSkinnedMesh18getMeshBufferCountEv
    int getMeshBufferCount() const;
    // 0x6636a4 _ZNK6glitch7collada12CSkinnedMesh14getBoundingBoxEv
    core::aabbox3d<float> getBoundingBox() const;
    // 0x66383c _ZNK6glitch7collada12CSkinnedMesh21reverifySkinTechniqueERKNS0_11SSkinBufferE
    int reverifySkinTechnique(const SSkinBuffer& buffer) const;
    // 0x6638bc _ZNK6glitch7collada12CSkinnedMesh16needOutputBufferEv
    int needOutputBuffer() const;
    // 0x66391c _ZN6glitch7collada12CSkinnedMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS3_INS4_27CMaterialVertexAttributeMapEEE
    int setMaterial(unsigned int index, CMaterial* material, CMaterialVertexAttributeMap* attributeMap);
    // 0x6639f4 _ZN6glitch7collada12CSkinnedMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
    int releaseProcessBuffer(IVideoDriver* driver, unsigned int index);
    // 0x664c84 _ZN6glitch7collada12CSkinnedMesh20setIsSkinningEnabledEb
    int setIsSkinningEnabled(bool enabled);
    // 0x664e0c _ZN6glitch7collada12CSkinnedMesh15updateTechniqueEj
    void* updateTechnique(unsigned int index);
    // 0x665580 _ZNK6glitch7collada12CSkinnedMesh12getTransformERKNS_4core8CMatrix4IfEE
    const CMatrix4* getTransform(const CMatrix4& matrix) const;
    // 0x665678 _ZN6glitch7collada12CSkinnedMesh4initEPNS_5video12IVideoDriverEb
    void init(IVideoDriver* driver, bool flag);
    // 0x665938 _ZN6glitch7collada12CSkinnedMeshD1Ev
    ~CSkinnedMesh();
    // 0x665a38 _ZN6glitch7collada12CSkinnedMeshD2Ev
    void destroyCompleteObject();
    // 0x665fe8 _ZN6glitch7collada12CSkinnedMeshC2ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
    CSkinnedMesh(const CColladaDatabase& database, IVideoDriver* driver, SController& controller, CRootSceneNode* root);
};

// Stand-in for glitch::collada::SSkinCache (layout not in layout headers; no members).
class SSkinCache {
public:
    // 0x663b54 _ZN6glitch7collada10SSkinCacheD1Ev
    ~SSkinCache();
};

// Stand-in for glitch::collada::SSkinBuffer (layout not in layout headers; no members).
class SSkinBuffer {
public:
    // 0x664530 _ZN6glitch7collada11SSkinBufferaSERKS1_
    SSkinBuffer& operator=(const SSkinBuffer& other);
    // 0x6645f8 _ZN6glitch7collada11SSkinBufferD1Ev
    ~SSkinBuffer();
};

// Stand-in for glitch::collada::CSkinnedMeshSceneNode (layout not in layout headers; no members).
class CSkinnedMeshSceneNode {
public:
    // 0x666a04 _ZNK6glitch7collada21CSkinnedMeshSceneNode25getTransformedBoundingBoxEv
    core::aabbox3d<float> getTransformedBoundingBox() const;
    // 0x666a18 _ZN6glitch7collada21CSkinnedMeshSceneNode20setIsSkinningEnabledEb
    int setIsSkinningEnabled(bool enabled);
    // 0x666a54 _ZN6glitch7collada21CSkinnedMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
    CSkinnedMeshSceneNode(IMesh* const& mesh, SNode* node, int id, const core::vector3d<float>& position, const SQuaternion& rotation, const core::vector3d<float>& scale);
    // 0x666b3c _ZN6glitch7collada21CSkinnedMeshSceneNodeC2ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
    void constructAsSecondaryBase(int* vtt, IMesh* const& mesh, SNode* node, int id, const core::vector3d<float>& position, const SQuaternion& rotation, const core::vector3d<float>& scale);
};

// IMesh (0x667704) and CTimelineController (0x666d04, 0x666d6c, 0x666f44, 0x6670a4) are canonical now: collada/IMesh.hpp and
// collada/CTimelineController.hpp. Their stand-ins were removed from this slice.

// IAnimationSetTemplate: canonical in collada/CAnimationSet.hpp.

// Stand-in for glitch::collada::IParticleSystemSceneNode (layout not in layout headers; no members).
class IParticleSystemSceneNode {
public:
    // 0x66777c _ZNK6glitch7collada24IParticleSystemSceneNode11getMaterialEj
    CMaterial* getMaterial(unsigned int index) const;
    // 0x66779c _ZNK6glitch7collada24IParticleSystemSceneNode16getMaterialCountEv
    int getMaterialCount() const;
    // 0x66781c _ZN6glitch7collada24IParticleSystemSceneNodeD1Ev
    ~IParticleSystemSceneNode();
    // 0x6678b8 _ZN6glitch7collada24IParticleSystemSceneNodeD2Ev
    void destroyAsSecondaryBase(int* vtt);
    // 0x66792c _ZN6glitch7collada24IParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
    IParticleSystemSceneNode(const CColladaDatabase& database, std::vector<std::string>* names, CRootSceneNode* root);
    // 0x667a98 _ZN6glitch7collada24IParticleSystemSceneNodeC2ERKNS0_16CColladaDatabaseEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
    void constructAsSecondaryBase(int* vtt, const CColladaDatabase& database, std::vector<std::string>* names, CRootSceneNode* root);
};

// ISceneNodeAnimator: canonical in collada/ISceneNodeAnimator.hpp.

// Stand-in for glitch::collada::ISkinnedMesh (layout not in layout headers; no members).
class ISkinnedMesh {
public:
    // 0x669bf4 _ZN6glitch7collada12ISkinnedMeshD1Ev
    ~ISkinnedMesh();
    // 0x669c28 _ZN6glitch7collada12ISkinnedMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
    int releaseProcessBuffer(IVideoDriver* driver, unsigned int index);
    // 0x669d6c _ZNK6glitch7collada12ISkinnedMesh12getTransformERKNS_4core8CMatrix4IfEE
    const CMatrix4* getTransform(const CMatrix4& matrix) const;
};

// CMaterialApplicatorInfo::clone (0x667ed0) is a member of the canonical class now (collada/CApplicatorInfo.hpp).

// 0x66a010 _ZNK6glitch7collada18SAnimationAccessor10applyValueEiiPvPNS0_15animation_track15CApplicatorInfoERib
int applyValue(const SAnimationAccessor& accessor, int a, int b, void* target, animation_track::CApplicatorInfo* applicator, int* out, bool flag);

}  // namespace glitch::collada::recon_22
