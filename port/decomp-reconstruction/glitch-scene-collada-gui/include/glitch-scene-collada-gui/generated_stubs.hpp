// Stubs for trivial glitch::collada bodies: each is either an empty body or a
// single constant return in the Hex-Rays pseudocode (re-checked in the Hex-Rays
// re-run; see NOTES.md). The first argument is the `this` pointer where the
// original is a member. The bodies are complete, so their ledger rows are
// reconstructed; they stay free function templates named by their original
// address until each is attached to its owning class. The entries of the classes that became canonical in the unification wave
// (IMesh, CMesh, CMorphingMesh, ISceneNodeAnimator, CSceneNodeAnimatorSet, CSceneNodeAnimatorSynchronizedSet, CColladaDatabase,
// CResFileManager) moved to their members.
#pragma once

#include <cstdint>

namespace glitch::collada::stubs {

// 0x62fee4 _ZN6glitch7collada15particle_system15CForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
// glitch::collada::particle_system::CForceSceneNode::bind(glitch::collada::CParticleSystemSceneNode*)
template <class... A> void stub_62fee4(A&&...) {}

// 0x62fee8 _ZN6glitch7collada15particle_system15CForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
// glitch::collada::particle_system::CForceSceneNode::bind(glitch::collada::CGlitchNewParticleSystemSceneNode*)
template <class... A> void stub_62fee8(A&&...) {}

// 0x62feec _ZNK6glitch7collada15particle_system15CForceSceneNode7getTypeEv
// glitch::collada::particle_system::CForceSceneNode::getType() const
template <class... A> std::uint32_t stub_62feec(A&&...) { return 0x66656164u; }

// 0x62fef8 _ZN6glitch7collada15particle_system15CForceSceneNode6renderEPv
// glitch::collada::particle_system::CForceSceneNode::render(void*)
template <class... A> void stub_62fef8(A&&...) {}

// 0x62ff04 _ZN6glitch7collada15CColladaFactory20getAdditionalEffectsERKNS0_16CColladaDatabaseEPNS0_7SEffectERNS0_11SEffectListE
// glitch::collada::CColladaFactory::getAdditionalEffects(glitch::collada::CColladaDatabase const&, glitch::collada::SEffect*, glitch::collada::SEffectList&)
template <class... A> void stub_62ff04(A&&...) {}

// 0x62ff38 _ZN6glitch7collada15CColladaFactory20isSharingMeshBuffersERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
// glitch::collada::CColladaFactory::isSharingMeshBuffers(glitch::collada::CColladaDatabase const&, glitch::collada::SGeometry*)
template <class... A> std::uint32_t stub_62ff38(A&&...) { return 1u; }

// 0x637b78 _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode7getTypeEv
// glitch::collada::CGlitchNewParticleSystemSceneNode::getType() const
template <class... A> std::uint32_t stub_637b78(A&&...) { return 0x67656164u; }

// 0x646160 _ZNK6glitch7collada14CMeshSceneNode7getTypeEv
// glitch::collada::CMeshSceneNode::getType() const
template <class... A> std::uint32_t stub_646160(A&&...) { return 0x6d656164u; }

// 0x646188 _ZN6glitch7collada14CMeshSceneNode7setMeshERKN5boost13intrusive_ptrINS_5scene5IMeshEEE
// glitch::collada::CMeshSceneNode::setMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&)
template <class... A> void stub_646188(A&&...) {}

// 0x6493f8 _ZNK6glitch7collada28CModularSkinnedMeshSceneNode7getTypeEv
// glitch::collada::CModularSkinnedMeshSceneNode::getType() const
template <class... A> std::uint32_t stub_6493f8(A&&...) { return 0x4d656164u; }

// 0x64bb84 _ZNK6glitch7collada24CParticleSystemSceneNode7getTypeEv
// glitch::collada::CParticleSystemSceneNode::getType() const
template <class... A> std::uint32_t stub_64bb84(A&&...) { return 0x70656164u; }

// 0x65cd1c _ZNK6glitch7collada10CSceneNode7getTypeEv
// glitch::collada::CSceneNode::getType() const
template <class... A> std::uint32_t stub_65cd1c(A&&...) { return 0x6e656164u; }

// 0x6669f8 _ZNK6glitch7collada21CSkinnedMeshSceneNode7getTypeEv
// glitch::collada::CSkinnedMeshSceneNode::getType() const
template <class... A> std::uint32_t stub_6669f8(A&&...) { return 0x73656164u; }

// 0x667774 _ZN6glitch7collada24IParticleSystemSceneNode5cloneEv
// glitch::collada::IParticleSystemSceneNode::clone()
template <class... A> std::uint32_t stub_667774(A&&...) { return 0u; }

// 0x669b6c _ZN6glitch7collada12ISkinnedMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
// glitch::collada::ISkinnedMesh::setBoundingBox(glitch::core::aabbox3d<float> const&)
template <class... A> void stub_669b6c(A&&...) {}

// 0x66b938 _ZNK6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique16needOutputBufferEv
// glitch::collada::detail::CColladaHardwareMatrixSkinTechnique::needOutputBuffer() const
template <class... A> std::uint32_t stub_66b938(A&&...) { return 0u; }

// 0x66d078 _ZNK6glitch7collada6detail33CColladaHardwareQuatSkinTechnique16needOutputBufferEv
// glitch::collada::detail::CColladaHardwareQuatSkinTechnique::needOutputBuffer() const
template <class... A> std::uint32_t stub_66d078(A&&...) { return 0u; }

// 0x66e770 _ZNK6glitch7collada6detail36CColladaHardwareTextureSkinTechnique16needOutputBufferEv
// glitch::collada::detail::CColladaHardwareTextureSkinTechnique::needOutputBuffer() const
template <class... A> std::uint32_t stub_66e770(A&&...) { return 0u; }

// 0x66f6b8 _ZNK6glitch7collada6detail29CColladaSoftwareSkinTechnique16needOutputBufferEv
// glitch::collada::detail::CColladaSoftwareSkinTechnique::needOutputBuffer() const
template <class... A> std::uint32_t stub_66f6b8(A&&...) { return 1u; }

// 0x66f6c0 _ZNK6glitch7collada6detail29CColladaSoftwareSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
// glitch::collada::detail::CColladaSoftwareSkinTechnique::checkAvailability(glitch::video::STechnique const&) const
template <class... A> std::uint32_t stub_66f6c0(A&&...) { return 1u; }

// 0x6e5168 _ZNK6glitch7collada16CCameraSceneNode7getTypeEv
// glitch::collada::CCameraSceneNode::getType() const
template <class... A> std::uint32_t stub_6e5168(A&&...) { return 0x63656164u; }

// 0x6e5a2c _ZNK6glitch7collada17CCoronasSceneNode7getTypeEv
// glitch::collada::CCoronasSceneNode::getType() const
template <class... A> std::uint32_t stub_6e5a2c(A&&...) { return 0x736e7263u; }

}  // namespace glitch::collada::stubs
