// Slice 05: glitch::scene billboard and light functions. (The batch, camera, empty, mesh, octree selector and scene manager
// functions of this slice are members of the canonical classes now.) The members these bodies touch are not mapped in
// scene_nodes.hpp yet, so the entries are free functions here and most bodies are stubs (status partial in the ledger).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/deps/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/deps/video_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene_nodes.hpp"

namespace glitch::scene {
class IShadowReceiverTarget;
}

namespace glitch::video {
class IBuffer;
class ITexture;
}  // namespace glitch::video

namespace glitch::scene::recon_05 {

// CBillboardSceneNode
// 0x580a40 _ZN6glitch5scene19CBillboardSceneNode20onRegisterSceneNodeEv
bool billboardOnRegisterSceneNode(CBillboardSceneNode& node);
// 0x580aa0 _ZN6glitch5scene19CBillboardSceneNode7setSizeERKNS_4core10dimension2dIfEE
// Reconstructed: width and height default to 1 when zero, and the bounding box
// half extent is (width + height) / 6.
void billboardSetSize(CBillboardSceneNode& node, const core::dimension2d<float>& size);
// 0x580b24 _ZN6glitch5scene19CBillboardSceneNode11getMaterialEj
boost::intrusive_ptr<video::CMaterial>* billboardGetMaterial(CBillboardSceneNode& node, std::uint32_t index);
// 0x580b44 _ZN6glitch5scene19CBillboardSceneNode8setColorERKNS_5video6SColorE
void billboardSetColor(CBillboardSceneNode& node, const video::SColor& color);
// 0x580b94 _ZN6glitch5scene19CBillboardSceneNode8setColorERKNS_5video6SColorES5_
void billboardSetColor(CBillboardSceneNode& node, const video::SColor& top, const video::SColor& bottom);
// 0x580e68 _ZN6glitch5scene19CBillboardSceneNode11setMaterialERKN5boost13intrusive_ptrINS_5video9CMaterialEEE
void billboardSetMaterial(CBillboardSceneNode& node, const boost::intrusive_ptr<video::CMaterial>& material);
// 0x580f58 _ZN6glitch5scene19CBillboardSceneNode6renderEPv
void billboardRender(CBillboardSceneNode& node, void* context);
// 0x5818fc 0x581c80 CBillboardSceneNode constructor variants
void billboardConstruct(CBillboardSceneNode& node, video::IVideoDriver* driver, std::int32_t type);
// 0x581bc4 _ZNK6glitch5scene19CBillboardSceneNode5cloneEv
CBillboardSceneNode* billboardClone(const CBillboardSceneNode& node);

// CLightSceneNode
// 0x583e30 0x583fbc _ZN6glitch5scene15CLightSceneNodeC2ERS1_ (copy constructor variants)
void lightSceneNodeCopyConstruct(CLightSceneNode& node, const CLightSceneNode& source);
// 0x583f94 _ZNK6glitch5scene15CLightSceneNode5cloneEv
CLightSceneNode* lightSceneNodeClone(const CLightSceneNode& node);
// 0x5840f0 0x584238 _ZN6glitch5scene15CLightSceneNodeC2Eb (constructor variants)
void lightSceneNodeConstruct(CLightSceneNode& node, bool flag);

// 0x589de8 _ZN6glitch17intrusive_ptr_releaseEPKNS_22ISharedMemoryBlockHeaderINS_5video9CMaterialEEE
void intrusivePtrRelease(video::CMaterial* material);

}  // namespace glitch::scene::recon_05
