// Bodies of glitch::scene::IBillboardSceneNode and CBillboardSceneNode (canonical classes: scene/CBillboardSceneNode.hpp). This file
// replaces scene_nodes.cpp (getType, getBoundingBox, getMaterialCount, getSize) and the billboard entries of recon/slice_05
// (constructor, clone, onRegisterSceneNode, setSize, setColor, setMaterial, render, getMaterial) and recon/slice_31 (getColor,
// serializeAttributes, deserializeAttributes).
#include "glitch-scene-collada-gui/scene/CBillboardSceneNode.hpp"
#include "glitch-core-io/io/iattributes.hpp"

#include <cmath>

#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

// 0x580eac _ZN6glitch5scene19IBillboardSceneNodeC2EiRKNS_4core8vector3dIfEE (base object; the complete object adds the virtual base)
IBillboardSceneNode::IBillboardSceneNode(int id, const core::vector3d<float>& position)
    : ISceneNode(id, position, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f}, core::vector3d<float>{1.0f, 1.0f, 1.0f}) {}

// 0x580df0 _ZN6glitch5scene19IBillboardSceneNodeD1Ev
// 0x581754 _ZN6glitch5scene19IBillboardSceneNodeD0Ev (skipped)
IBillboardSceneNode::~IBillboardSceneNode() = default;

// 0x5818fc _ZN6glitch5scene19CBillboardSceneNodeC1EPNS_5video12IVideoDriverEiRKNS_4core8vector3dIfEERKNS5_11dimension2dIfEENS2_6SColorESC_
// 0x581c80 _ZN6glitch5scene19CBillboardSceneNodeC2EPNS_5video12IVideoDriverEiRKNS_4core8vector3dIfEERKNS5_11dimension2dIfEENS2_6SColorESC_
// Verified against Hex-Rays 0x5818fc: the size and the default box, then the stream table (allocate(1, 0x60000)), then
// IVideoDriver::createBuffer (vtable +0x78) with type 0, usage 4, size 144 and the four vertices as the data (the last
// argument is 0, so the buffer does not own the array), then setupStreams(buffer, -1) (0x5a15c0) and only then the
// count word +0x08 = 4, then the four colours (corner 0/2 = the second colour, 1/3 = the first, i.e. bottom, top,
// bottom, top) and the texture coordinates (1,1) (1,0) (0,1) (0,0). The temporary buffer handle is dropped at the end
// of the body, leaving the stream table as its only holder. The vertices' positions and normals are zeroed by the
// original's clear loop (+0x158, 144 bytes) and by the members' zero initialisers here; nothing writes them.
// This replaces the earlier PARTIAL body, which could not attach the buffer because CVertexStreams::setupStreams was
// not reconstructed yet - it is now (glitch-video/src/vertex_streams.cpp).
CBillboardSceneNode::CBillboardSceneNode(video::IVideoDriver* driver, int id, const core::vector3d<float>& position,
                                         const core::dimension2d<float>& dimensions, video::SColor top, video::SColor bottom)
    : IBillboardSceneNode(id, position) {
    static_assert(sizeof(SVertex) == 36, "the vertices are 36 bytes in the original, 144 for the four");
    setSize(dimensions);
    vertexStreams = video::CVertexStreams::allocate(static_cast<std::uint8_t>(1), 0x60000u);
    boost::intrusive_ptr<video::IBuffer> buffer = driver->createBuffer(0, 4, 144, vertices, false);
    vertexStreams->setupStreams(buffer, 0xffffffffu);
    vertexStreams->m_field08 = 4;
    vertices[0].color = bottom;
    vertices[1].color = top;
    vertices[2].color = bottom;
    vertices[3].color = top;
    vertices[0].texCoords = core::dimension2d<float>{1.0f, 1.0f};
    vertices[1].texCoords = core::dimension2d<float>{1.0f, 0.0f};
    vertices[2].texCoords = core::dimension2d<float>{0.0f, 1.0f};
    vertices[3].texCoords = core::dimension2d<float>{0.0f, 0.0f};
}

// 0x5817dc _ZN6glitch5scene19CBillboardSceneNodeD1Ev
// 0x5818c0 _ZN6glitch5scene19CBillboardSceneNodeD0Ev (skipped)
CBillboardSceneNode::~CBillboardSceneNode() = default;

// 0x580aa0 _ZN6glitch5scene19CBillboardSceneNode7setSizeERKNS_4core11dimension2dIfEE
// A zero width or height is stored as 1; the box is +-(width + height) / 6 in every axis, computed from the argument.
void CBillboardSceneNode::setSize(const core::dimension2d<float>& dimensions) {
    size.Width = dimensions.Width;
    size.Height = dimensions.Height;
    if (size.Width == 0.0f) size.Width = 1.0f;
    if (size.Height == 0.0f) size.Height = 1.0f;
    const float half = (dimensions.Width + dimensions.Height) / 6.0f;
    boundingBox.MinEdge = core::vector3d<float>{-half, -half, -half};
    boundingBox.MaxEdge = core::vector3d<float>{half, half, half};
}

// 0x580b3c _ZNK6glitch5scene19CBillboardSceneNode7getSizeEv
const core::dimension2d<float>& CBillboardSceneNode::getSize() const {
    return size;
}

// 0x580b44 _ZN6glitch5scene19CBillboardSceneNode8setColorERKNS_5video6SColorE
void CBillboardSceneNode::setColor(const video::SColor& color) {
    for (SVertex& vertex : vertices) {
        vertex.color = color;
    }
}

// 0x580b94 _ZN6glitch5scene19CBillboardSceneNode8setColorERKNS_5video6SColorES5_
// Corners 0 and 3 get the second colour, corners 1 and 2 the first.
void CBillboardSceneNode::setColor(const video::SColor& top, const video::SColor& bottom) {
    vertices[0].color = bottom;
    vertices[1].color = top;
    vertices[2].color = top;
    vertices[3].color = bottom;
}

// 0x580bec _ZNK6glitch5scene19CBillboardSceneNode8getColorERNS_5video6SColorES4_
void CBillboardSceneNode::getColor(video::SColor& top, video::SColor& bottom) const {
    bottom = vertices[0].color;
    top = vertices[1].color;
}

// 0x580c48 _ZNK6glitch5scene19CBillboardSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CBillboardSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    attributes->addFloat("Width", size.Width, false);
    attributes->addFloat("Height", size.Height, false);
    attributes->addColor("Shade_Top", vertices[1].color, false);
    attributes->addColor("Shade_Down", vertices[0].color, false);
}

// 0x580cf8 _ZN6glitch5scene19CBillboardSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Reads the four values, then calls setSize (vptr+0x08) with the stored size.
void CBillboardSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
    size.Width = attributes->getFloat("Width");
    size.Height = attributes->getFloat("Height");
    vertices[1].color = attributes->getColor("Shade_Top");
    vertices[0].color = attributes->getColor("Shade_Down");
    setSize(size);
}

// 0x580a40 _ZN6glitch5scene19CBillboardSceneNode19onRegisterSceneNodeEv
// Registers the node with its material, the constant 1 as the user-data word, pass 3, no position and sort order 0x7FFFFFFF.
// The original dereferences the scene manager without a test.
int CBillboardSceneNode::onRegisterSceneNode() {
    if (sceneManager != nullptr) {
        sceneManager->registerNodeForRendering(this, material, reinterpret_cast<void*>(static_cast<std::uintptr_t>(1)), 3,
                                               nullptr, 0x7FFFFFFF);
    }
    return 1;
}

// 0x580f58 _ZN6glitch5scene19CBillboardSceneNode6renderEPv
// With an active camera and a driver: the view direction is the normalised vector from the camera to its target; the width axis is
// view x up (the up vector itself, in the listing's x/y/z-swapped order, when that is zero) scaled to half the width, the height axis
// is view x width-axis scaled to half the height; the four normals are the reversed view direction; the corners are
// P + A + B, P + A - B, P - A + B, P - A - B (P the node's absolute position) turned about P by the node's rotation. A non-null render
// context also draws: world transform identity, the material (technique 255 without one), then the four vertices as a triangle strip.
void CBillboardSceneNode::render(void* renderContext) {
    video::IVideoDriver* driver = sceneManager != nullptr ? sceneManager->driver : nullptr;
    ICameraSceneNode* camera = sceneManager != nullptr ? sceneManager->activeCamera : nullptr;
    if (camera == nullptr || driver == nullptr) {
        return;
    }
    const core::vector3d<float> position = getAbsolutePosition();
    const core::vector3d<float> cameraPosition = camera->getAbsolutePosition();
    const core::vector3d<float> target = camera->getTarget();
    const core::vector3d<float> up = camera->getUpVector();
    core::vector3d<float> view{target.X - cameraPosition.X, target.Y - cameraPosition.Y, target.Z - cameraPosition.Z};
    view.normalize();
    core::vector3d<float> across{view.Y * up.Z - view.Z * up.Y, view.Z * up.X - view.X * up.Z, view.X * up.Y - view.Y * up.X};
    if (std::sqrt(across.X * across.X + across.Y * across.Y + across.Z * across.Z) == 0.0f) {
        across = core::vector3d<float>{up.Y, up.X, up.Z};
    }
    across.normalize();
    const float halfWidth = size.Width * 0.5f;
    across = core::vector3d<float>{halfWidth * across.X, halfWidth * across.Y, halfWidth * across.Z};
    core::vector3d<float> down{view.Y * across.Z - view.Z * across.Y, view.Z * across.X - view.X * across.Z,
                               view.X * across.Y - view.Y * across.X};
    down.normalize();
    const float halfHeight = size.Height * 0.5f;
    down = core::vector3d<float>{down.X * halfHeight, down.Y * halfHeight, down.Z * halfHeight};
    for (SVertex& vertex : vertices) {
        vertex.normal = core::vector3d<float>{-view.X, -view.Y, -view.Z};
    }
    const core::vector3d<float> corners[4] = {
        {position.X + across.X + down.X, position.Y + across.Y + down.Y, position.Z + across.Z + down.Z},
        {position.X + across.X - down.X, position.Y + across.Y - down.Y, position.Z + across.Z - down.Z},
        {position.X - across.X + down.X, position.Y - across.Y + down.Y, position.Z - across.Z + down.Z},
        {position.X - across.X - down.X, position.Y - across.Y - down.Y, position.Z - across.Z - down.Z},
    };
    for (int i = 0; i < 4; ++i) {
        const core::vector3d<float> offset{corners[i].X - position.X, corners[i].Y - position.Y, corners[i].Z - position.Z};
        const core::vector3d<float> turned = rotation * offset;
        vertices[i].position = core::vector3d<float>{position.X + turned.X, position.Y + turned.Y, position.Z + turned.Z};
    }
    if (renderContext == nullptr) {
        return;
    }
    static const core::CMatrix4<float> identity{core::CMatrix4<float>::EM4CONST_IDENTITY};
    driver->setTransform(1, identity);
    const std::uint8_t technique = material ? material->getTechnique() : 255;
    driver->setMaterial(material, technique, nullptr);
    const boost::intrusive_ptr<const video::CVertexStreams> streams = vertexStreams;
    video::CPrimitiveStream primitives;
    primitives.m_count = 4;
    primitives.m_vertexEnd = 4;
    primitives.m_indexType = 255;
    primitives.m_primitiveType = 4;
    const boost::intrusive_ptr<const CMeshBuffer> none;
    driver->draw(streams, primitives, nullptr, none);
}

// 0x580a98 _ZNK6glitch5scene19CBillboardSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CBillboardSceneNode::getBoundingBox() const {
    return boundingBox;
}

// 0x580b34 _ZNK6glitch5scene19CBillboardSceneNode16getMaterialCountEv
std::uint32_t CBillboardSceneNode::getMaterialCount() const {
    return 1;
}

// 0x580a2c _ZNK6glitch5scene19CBillboardSceneNode7getTypeEv
E_SCENE_NODE_TYPE CBillboardSceneNode::getType() const {
    return ESNT_BILLBOARD;
}

// 0x580b24 _ZN6glitch5scene19CBillboardSceneNode11getMaterialEj
boost::intrusive_ptr<video::CMaterial>& CBillboardSceneNode::getMaterial(std::uint32_t /*index*/) {
    return material;
}

// 0x580e68 _ZN6glitch5scene19CBillboardSceneNode11setMaterialERKN5boost13intrusive_ptrINS_5video9CMaterialEEE
void CBillboardSceneNode::setMaterial(const boost::intrusive_ptr<video::CMaterial>& newMaterial) {
    material = newMaterial;
}

// 0x581bc4 _ZN6glitch5scene19CBillboardSceneNode5cloneEv
// A new billboard with this node's driver (the scene manager's, +0x14), id, position and size and white corners; then
// ISceneNode::cloneMembers copies the base members and the material handle is shared.
ISceneNode* CBillboardSceneNode::clone() {
    video::IVideoDriver* driver = sceneManager != nullptr ? sceneManager->driver : nullptr;
    video::SColor white;
    white.color = 0xFFFFFFFFu;
    auto* copy = new CBillboardSceneNode(driver, id, position, size, white, white);
    copy->cloneMembers(this);
    copy->material = material;
    return copy;
}

}  // namespace glitch::scene
