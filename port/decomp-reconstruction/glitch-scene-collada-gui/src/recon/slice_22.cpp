// Slice 22 reconstruction (see include/glitch-scene-collada-gui/recon/slice_22.hpp).
// Each function keeps its original address and mangled symbol in its comment.
// Stubbed bodies say what is missing; the ledger note for the row repeats it.

#include "glitch-scene-collada-gui/recon/slice_22.hpp"

namespace glitch::collada::recon_22 {

// CAnimationSet, CSceneNodeAnimatorSet, CSceneNodeAnimatorSynchronizedBlender and CSceneNodeAnimatorSynchronizedSet: canonical
// classes in collada/ (src/collada/CAnimationSet.cpp, CSceneNodeAnimatorSet.cpp, CSceneNodeAnimatorSynchronizedBlender.cpp,
// CSceneNodeAnimatorSynchronizedSet.cpp).

// ---------------------------------------------------------------------------
// CSkinnedMesh
// ---------------------------------------------------------------------------

// 0x663538 _ZN6glitch7collada12CSkinnedMesh6attachEPNS_5scene10ISceneNodeE
int CSkinnedMesh::attach(scene::ISceneNode* node)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); attach hook not modelled
    return 0;
}

// 0x663584 _ZN6glitch7collada12CSkinnedMesh9onAnimateEj
int CSkinnedMesh::onAnimate(unsigned int time)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); virtual dispatch through the mesh slot not named
    return 0;
}

// 0x6635b4 _ZNK6glitch7collada12CSkinnedMesh18getMeshBufferCountEv
int CSkinnedMesh::getMeshBufferCount() const
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); buffer array at +0x5c with 0x14 stride not in layout headers
    return 0;
}

// 0x6636a4 _ZNK6glitch7collada12CSkinnedMesh14getBoundingBoxEv
core::aabbox3d<float> CSkinnedMesh::getBoundingBox() const
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); the pseudocode returns the member address as char*; returned by value here; box member not in layout headers
    return {};
}

// 0x66383c _ZNK6glitch7collada12CSkinnedMesh21reverifySkinTechniqueERKNS0_11SSkinBufferE
int CSkinnedMesh::reverifySkinTechnique(const SSkinBuffer& buffer) const
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); technique check depends on the material and vertex attribute map layouts
    return 0;
}

// 0x6638bc _ZNK6glitch7collada12CSkinnedMesh16needOutputBufferEv
int CSkinnedMesh::needOutputBuffer() const
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); per-buffer scan not in layout headers
    return 0;
}

// 0x66391c _ZN6glitch7collada12CSkinnedMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS3_INS4_27CMaterialVertexAttributeMapEEE
int CSkinnedMesh::setMaterial(unsigned int index, CMaterial* material, CMaterialVertexAttributeMap* attributeMap)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); refcount handling on the buffer entry not in layout headers
    return 0;
}

// 0x6639f4 _ZN6glitch7collada12CSkinnedMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
int CSkinnedMesh::releaseProcessBuffer(IVideoDriver* driver, unsigned int index)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); the video driver interface is not modelled
    return 0;
}

// 0x664c84 _ZN6glitch7collada12CSkinnedMesh20setIsSkinningEnabledEb
int CSkinnedMesh::setIsSkinningEnabled(bool enabled)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); per-buffer technique update not in layout headers
    return 0;
}

// 0x664e0c _ZN6glitch7collada12CSkinnedMesh15updateTechniqueEj
void* CSkinnedMesh::updateTechnique(unsigned int index)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); the pseudocode returns a refcounted pointer; the material type is not modelled
    return nullptr;
}

// 0x665580 _ZNK6glitch7collada12CSkinnedMesh12getTransformERKNS_4core8CMatrix4IfEE
const CMatrix4* CSkinnedMesh::getTransform(const CMatrix4& matrix) const
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); CMatrix4 is a stand-in pointer type here
    return nullptr;
}

// 0x665678 _ZN6glitch7collada12CSkinnedMesh4initEPNS_5video12IVideoDriverEb
void CSkinnedMesh::init(IVideoDriver* driver, bool flag)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); buffer setup not in layout headers
}

// 0x665938 _ZN6glitch7collada12CSkinnedMeshD1Ev
CSkinnedMesh::~CSkinnedMesh()
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); D1 body with the SSkinCache base member
}

// 0x665a38 _ZN6glitch7collada12CSkinnedMeshD2Ev
void CSkinnedMesh::destroyCompleteObject()
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); second ~CSkinnedMesh with the same demangled name; declared under a distinct name
}

// 0x665fe8 _ZN6glitch7collada12CSkinnedMeshC2ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
CSkinnedMesh::CSkinnedMesh(const CColladaDatabase& database, IVideoDriver* driver, SController& controller, CRootSceneNode* root)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); the 1264 byte constructor is only outlined here
}


// ---------------------------------------------------------------------------
// SSkinCache
// ---------------------------------------------------------------------------

// 0x663b54 _ZN6glitch7collada10SSkinCacheD1Ev
SSkinCache::~SSkinCache()
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); cache destructor frees its buffers; layout not in layout headers
}


// ---------------------------------------------------------------------------
// SSkinBuffer
// ---------------------------------------------------------------------------

// 0x664530 _ZN6glitch7collada11SSkinBufferaSERKS1_
SSkinBuffer& SSkinBuffer::operator=(const SSkinBuffer& other)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); the copy of the buffer fields is not reproduced; layout not in layout headers
    return *this;
}

// 0x6645f8 _ZN6glitch7collada11SSkinBufferD1Ev
SSkinBuffer::~SSkinBuffer()
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); releases the attribute map and material references; layout not in layout headers
}


// ---------------------------------------------------------------------------
// CSkinnedMeshSceneNode
// ---------------------------------------------------------------------------

// 0x666a04 _ZNK6glitch7collada21CSkinnedMeshSceneNode25getTransformedBoundingBoxEv
core::aabbox3d<float> CSkinnedMeshSceneNode::getTransformedBoundingBox() const
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); transform applied to the mesh box not modelled
    return {};
}

// 0x666a18 _ZN6glitch7collada21CSkinnedMeshSceneNode20setIsSkinningEnabledEb
int CSkinnedMeshSceneNode::setIsSkinningEnabled(bool enabled)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); forwards to the mesh through a vtable slot not named
    return 0;
}

// 0x666a54 _ZN6glitch7collada21CSkinnedMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
CSkinnedMeshSceneNode::CSkinnedMeshSceneNode(IMesh* const& mesh, SNode* node, int id, const core::vector3d<float>& position, const SQuaternion& rotation, const core::vector3d<float>& scale)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); scene node base not in layout headers; quaternion is a stand-in
}

// 0x666b3c _ZN6glitch7collada21CSkinnedMeshSceneNodeC2ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
void CSkinnedMeshSceneNode::constructAsSecondaryBase(int* vtt, IMesh* const& mesh, SNode* node, int id, const core::vector3d<float>& position, const SQuaternion& rotation, const core::vector3d<float>& scale)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); secondary base variant with the int* table argument
}


// ---------------------------------------------------------------------------
// IParticleSystemSceneNode
// ---------------------------------------------------------------------------

// 0x66777c _ZNK6glitch7collada24IParticleSystemSceneNode11getMaterialEj
CMaterial* IParticleSystemSceneNode::getMaterial(unsigned int index) const
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); material array at +0x164 not in layout headers
    return nullptr;
}

// 0x66779c _ZNK6glitch7collada24IParticleSystemSceneNode16getMaterialCountEv
int IParticleSystemSceneNode::getMaterialCount() const
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); material array size not in layout headers
    return 0;
}

// 0x66781c _ZN6glitch7collada24IParticleSystemSceneNodeD1Ev
IParticleSystemSceneNode::~IParticleSystemSceneNode()
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); D1 body frees the buffer and the material list then the scene node base
}

// 0x6678b8 _ZN6glitch7collada24IParticleSystemSceneNodeD2Ev
void IParticleSystemSceneNode::destroyAsSecondaryBase(int* vtt)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); secondary base variant with the int* table argument
}

// 0x66792c _ZN6glitch7collada24IParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
IParticleSystemSceneNode::IParticleSystemSceneNode(const CColladaDatabase& database, std::vector<std::string>* names, CRootSceneNode* root)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); particle parameter setup not modelled; res::vector replaced by std::vector stand-in
}

// 0x667a98 _ZN6glitch7collada24IParticleSystemSceneNodeC2ERKNS0_16CColladaDatabaseEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
void IParticleSystemSceneNode::constructAsSecondaryBase(int* vtt, const CColladaDatabase& database, std::vector<std::string>* names, CRootSceneNode* root)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); secondary base variant with the int* table argument
}


// ---------------------------------------------------------------------------
// ISkinnedMesh
// ---------------------------------------------------------------------------

// 0x669bf4 _ZN6glitch7collada12ISkinnedMeshD1Ev
ISkinnedMesh::~ISkinnedMesh()
{
    // Stub: unattached: needs member declaration in layouts/collada_db.hpp (class layout not in layout headers); sets the vptr then destroys the CColladaDatabase member at +0x0c
}

// 0x669c28 _ZN6glitch7collada12ISkinnedMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
int ISkinnedMesh::releaseProcessBuffer(IVideoDriver* driver, unsigned int index)
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); the pseudocode return type is CMaterial** which looks misdecompiled; declared int
    return 0;
}

// 0x669d6c _ZNK6glitch7collada12ISkinnedMesh12getTransformERKNS_4core8CMatrix4IfEE
const CMatrix4* ISkinnedMesh::getTransform(const CMatrix4& matrix) const
{
    // Stub: unattached: needs member declaration in layouts/scene.hpp (class layout not in layout headers); CMatrix4 is a stand-in pointer type here
    return nullptr;
}

// Not rebuilt (D0 deleting destructor thunks): 0x65f348 0x65fb10 0x6615f4 0x6619ec 0x662bf4 0x667020 0x667044 0x667088 0x667610 0x667738 0x66789c 0x667cf0 0x667d04 0x6697a8 0x669dc4

}  // namespace glitch::collada::recon_22
