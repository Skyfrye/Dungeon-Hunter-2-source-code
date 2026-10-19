// Slice 05 reconstruction. Bodies marked partial are stubs: the members they
// read or write are not mapped in the shared scene headers yet. See the ledger
// notes for each address. The CBatchSceneNode, CBatchMesh, CCameraSceneNode, CEmptySceneNode, CMeshSceneNode,
// triangle-selector, ISceneNode and CSceneManager stubs of this slice were removed in the unification wave: those classes are
// canonical now (scene/*.hpp, src/scene/*.cpp). The billboard and light stubs remain because those two classes have no canonical
// header yet.
#include "glitch-scene-collada-gui/recon/slice_05.hpp"

namespace glitch::scene::recon_05 {

// 0x580a40 _ZN6glitch5scene19CBillboardSceneNode20onRegisterSceneNodeEv
bool billboardOnRegisterSceneNode(CBillboardSceneNode& node) {
    (void)node;
    return true;
}

// 0x580aa0 _ZN6glitch5scene19CBillboardSceneNode7setSizeERKNS_4core10dimension2dIfEE
void billboardSetSize(CBillboardSceneNode& node, const core::dimension2d<float>& size) {
    // The input is read before the node is written, so aliasing does not change the result.
    const float width = size.Width;
    const float height = size.Height;
    node.size = size;
    if (node.size.Width == 0.0f) {
        node.size.Width = 1.0f;
    }
    if (node.size.Height == 0.0f) {
        node.size.Height = 1.0f;
    }
    const float radius = (width + height) / 6.0f;
    node.boundingBox.MinEdge = {-radius, -radius, -radius};
    node.boundingBox.MaxEdge = {radius, radius, radius};
}

// 0x580b24 _ZN6glitch5scene19CBillboardSceneNode11getMaterialEj
boost::intrusive_ptr<video::CMaterial>* billboardGetMaterial(CBillboardSceneNode& node, std::uint32_t index) {
    (void)node;
    (void)index;
    return nullptr;
}

// 0x580b44 _ZN6glitch5scene19CBillboardSceneNode8setColorERKNS_5video6SColorE
void billboardSetColor(CBillboardSceneNode& node, const video::SColor& color) {
    (void)node;
    (void)color;
}

// 0x580b94 _ZN6glitch5scene19CBillboardSceneNode8setColorERKNS_5video6SColorES5_
void billboardSetColor(CBillboardSceneNode& node, const video::SColor& top, const video::SColor& bottom) {
    (void)node;
    (void)top;
    (void)bottom;
}

// 0x580e68 _ZN6glitch5scene19CBillboardSceneNode11setMaterialERKN5boost13intrusive_ptrINS_5video9CMaterialEEE
void billboardSetMaterial(CBillboardSceneNode& node, const boost::intrusive_ptr<video::CMaterial>& material) {
    (void)node;
    (void)material;
}

// 0x580f58 _ZN6glitch5scene19CBillboardSceneNode6renderEPv
void billboardRender(CBillboardSceneNode& node, void* context) {
    (void)node;
    (void)context;
}

// 0x5818fc 0x581c80 _ZN6glitch5scene19CBillboardSceneNodeC2EPNS_5video12IVideoDriverEi (constructor variants)
void billboardConstruct(CBillboardSceneNode& node, video::IVideoDriver* driver, std::int32_t type) {
    (void)node;
    (void)driver;
    (void)type;
}

// 0x581bc4 _ZNK6glitch5scene19CBillboardSceneNode5cloneEv
CBillboardSceneNode* billboardClone(const CBillboardSceneNode& node) {
    (void)node;
    return nullptr;
}

// 0x583e30 0x583fbc _ZN6glitch5scene15CLightSceneNodeC2ERS1_ (copy constructor variants)
void lightSceneNodeCopyConstruct(CLightSceneNode& node, const CLightSceneNode& source) {
    (void)node;
    (void)source;
}

// 0x583f94 _ZNK6glitch5scene15CLightSceneNode5cloneEv
CLightSceneNode* lightSceneNodeClone(const CLightSceneNode& node) {
    (void)node;
    return nullptr;
}

// 0x5840f0 0x584238 _ZN6glitch5scene15CLightSceneNodeC2Eb (constructor variants)
void lightSceneNodeConstruct(CLightSceneNode& node, bool flag) {
    (void)node;
    (void)flag;
}

// 0x589de8 _ZN6glitch17intrusive_ptr_releaseEPKNS_22ISharedMemoryBlockHeaderINS_5video9CMaterialEEE
void intrusivePtrRelease(video::CMaterial* material) {
    (void)material;
}

}  // namespace glitch::scene::recon_05
