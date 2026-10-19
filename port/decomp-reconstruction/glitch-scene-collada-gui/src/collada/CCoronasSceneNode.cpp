// Bodies of glitch::collada::CCoronasSceneNode (canonical class: collada/CCoronasSceneNode.hpp). This file replaces the CCoronasSceneNode
// bodies that lived in src/collada_scene_accessors.cpp and the recon/slice_32 stand-ins.
//
// A comment `// 0xADDR symbol` precedes each function.
#include "glitch-scene-collada-gui/collada/CCoronasSceneNode.hpp"

#include <cmath>
#include <utility>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada {

namespace {

// E_TRANSFORMATION_STATE: 0 view, 1 world, 2 projection. E_BUFFER_TYPE 0 (vertices), E_BUFFER_USAGE 4.
constexpr video::E_TRANSFORMATION_STATE kViewTransform = 0;
constexpr video::E_TRANSFORMATION_STATE kWorldTransform = 1;
constexpr video::E_TRANSFORMATION_STATE kProjectionTransform = 2;

// The vertex stream table both constructors build: four vertices over the corner array (position, texture coordinate 0, normal and colour,
// 36 bytes each), the vertex count 4.
void setUpStreams(CCoronasSceneNode& node, video::IVideoDriver* driver) {
    boost::intrusive_ptr<video::CVertexStreams> streams = video::CVertexStreams::allocate(static_cast<std::uint8_t>(1), 0x60000u);
    node.vertexStreams = streams.detach();
    boost::intrusive_ptr<video::IBuffer> buffer = driver->createBuffer(0, 4, sizeof(node.corners), node.corners, false);
    node.vertexStreams->setupStreams(buffer, 0xFFFFFFFFu);
    node.vertexStreams->m_field08 = 4;
}

// The texture coordinates of the corners: (u, v) of each corner.
void setCornerUV(CCoronasSceneNode& node, const float (&uv)[4][2]) {
    for (int i = 0; i < 4; ++i) {
        node.corners[i].u = uv[i][0];
        node.corners[i].v = uv[i][1];
    }
}

}  // namespace

// 0x6e5a2c _ZNK6glitch7collada17CCoronasSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CCoronasSceneNode::getType() const {
    return static_cast<scene::E_SCENE_NODE_TYPE>(1936618083);
}

// 0x6e5a38 _ZNK6glitch7collada17CCoronasSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CCoronasSceneNode::getBoundingBox() const {
    return boundingBox;
}

// 0x6e5a40 _ZN6glitch7collada17CCoronasSceneNode7setSizeERKNS_4core11dimension2dIfEE. A zero component becomes 1.
void CCoronasSceneNode::setSize(const core::dimension2d<float>& size) {
    width = size.Width;
    height = size.Height;
    if (width == 0.0f) width = 1.0f;
    if (height == 0.0f) height = 1.0f;
}

// 0x60f8b8 _ZN6glitch7collada17CCoronasSceneNode11setMaterialERNS0_9SMaterialEPNS_5video12IVideoDriverE
void CCoronasSceneNode::setMaterial(SMaterial& record, video::IVideoDriver* driver) {
    boost::intrusive_ptr<video::CMaterial> built = root->getMaterial(&record, driver);
    if (built) {
        material = built;
    }
}

// 0x6e5bc8 _ZN6glitch7collada17CCoronasSceneNode9isBlockedEv
// The original returns 0 when the blocking callback (+0x130) is null. Otherwise it asks the active camera (+0x110 scene
// manager, +0xe4) for its absolute position and this node for its own, packs the six floats into {camera, this} - the
// listing writes v5 (the camera's) last - and returns whatever the callback returns.
// One host deviation, named: the camera is tested for null. The original loads it and calls getAbsolutePosition on it
// unconditionally, which crashes when no camera is registered; the port cannot reproduce a crash.
std::int32_t CCoronasSceneNode::isBlocked() {
    if (blockCallback == nullptr) {
        return 0;
    }
    scene::ISceneNode* camera = sceneManager != nullptr ? static_cast<scene::ISceneNode*>(sceneManager->activeCamera) : nullptr;
    if (camera == nullptr) {
        return 0;
    }
    const core::vector3d<float> cameraPosition = camera->getAbsolutePosition();
    const core::vector3d<float> nodePosition = getAbsolutePosition();
    const float segment[6] = {nodePosition.X, nodePosition.Y, nodePosition.Z,
                              cameraPosition.X, cameraPosition.Y, cameraPosition.Z};
    return blockCallback(segment);
}

// 0x6e5c40 _ZN6glitch7collada17CCoronasSceneNode19onRegisterSceneNodeEv
// When isBlocked() is 0 (true is 1 and does not compare, as written), the node is registered with the scene manager:
// registerNodeForRendering(this, the material at +0x168, null user data, pass 3 = ESNRP_AUTOMATIC, no position override,
// sortOrder 0x7fffffff). Always returns 1.
int CCoronasSceneNode::onRegisterSceneNode() {
    if (!isBlocked()) {
        sceneManager->registerNodeForRendering(this, material, nullptr, scene::ESNRP_AUTOMATIC, nullptr, 0x7FFFFFFF);
    }
    return 1;
}

// 0x6e5d14 _ZN6glitch7collada17CCoronasSceneNode6renderEPv
// With the active camera and the driver present: the inverse of the projection (P) and of the view (V) matrices are made. The unit
// direction from the camera target to the camera is stored as the normal of all four corners. The world position of the clip-space origin
// and the world directions of the clip-space x and y axes give the right and up vectors (normalised, scaled by twice the width and the
// height). The node's position goes through the view and projection matrices to a point on the near plane, back through P and V, and
// moved by the direction. The quad is turned about that direction by (distance to the camera / 50 * 3.1416) * rotationScale + rotationOffset
// (the axis is negated for a negative angle; the angle is logged as text, as the original does every call), and the four corners are
// the centre plus or minus the turned right and up vectors. Only with a non-zero render context the quad is drawn: the world matrix is
// the identity, the material is set, the depth function is 7 while one four-vertex triangle strip is drawn, and the old depth function
// is restored. The expressions keep the listing's order of float operations (including the products with 0.0).
void CCoronasSceneNode::render(void* renderContext) {
    scene::CSceneManager* manager = sceneManager;
    scene::ICameraSceneNode* camera = manager->activeCamera;
    video::IVideoDriver* driver = manager->driver;
    if (camera == nullptr || driver == nullptr) {
        return;
    }
    const core::CMatrix4<float>& projection = driver->getTransform(kProjectionTransform);
    const core::CMatrix4<float>& view = driver->getTransform(kViewTransform);
    const float* Q = projection.M;
    const float* W = view.M;

    core::CMatrix4<float> inverseProjection(core::CMatrix4<float>::EM4CONST_IDENTITY);
    projection.getInverse(inverseProjection);
    core::CMatrix4<float> inverseView(core::CMatrix4<float>::EM4CONST_IDENTITY);
    view.getInverse(inverseView);
    const float* P = inverseProjection.M;
    const float* V = inverseView.M;

    const core::vector3d<float> nodePosition = getAbsolutePosition();
    const core::vector3d<float> cameraPosition = camera->getAbsolutePosition();
    const core::vector3d<float>& target = camera->getTarget();
    core::vector3d<float> direction{cameraPosition.X - target.X, cameraPosition.Y - target.Y, cameraPosition.Z - target.Z};
    direction.normalize();
    for (SCoronaCorner& corner : corners) {
        corner.normal[0] = direction.X;
        corner.normal[1] = direction.Y;
        corner.normal[2] = direction.Z;
    }

    // The world position of the clip-space origin.
    const float x0 = (((P[0] * 0.0f) + (P[4] * 0.0f)) + (P[8] * 0.0f)) + P[12];
    const float y0 = (((P[1] * 0.0f) + (P[5] * 0.0f)) + (P[9] * 0.0f)) + P[13];
    const float z0 = (((P[2] * 0.0f) + (P[6] * 0.0f)) + (P[10] * 0.0f)) + P[14];
    const float originX = (((x0 * V[0]) + (y0 * V[4])) + (z0 * V[8])) + V[12];
    const float originY = (((x0 * V[1]) + (y0 * V[5])) + (z0 * V[9])) + V[13];
    const float originZ = (((x0 * V[2]) + (y0 * V[6])) + (z0 * V[10])) + V[14];

    // The right vector: the clip-space x axis, 2 * width long.
    const float x1 = P[12] + ((P[8] * 0.0f) + (P[0] + (P[4] * 0.0f)));
    const float y1 = P[13] + ((P[9] * 0.0f) + (P[1] + (P[5] * 0.0f)));
    const float z1 = P[14] + ((P[10] * 0.0f) + (P[2] + (P[6] * 0.0f)));
    core::vector3d<float> right{(V[12] + (((V[0] * x1) + (V[4] * y1)) + (V[8] * z1))) - originX,
                                (V[13] + (((V[1] * x1) + (V[5] * y1)) + (V[9] * z1))) - originY,
                                (V[14] + (((V[2] * x1) + (V[6] * y1)) + (V[10] * z1))) - originZ};
    right.normalize();
    const float rightX = (width * right.X) + (width * right.X);
    const float rightY = (width * right.Y) + (width * right.Y);
    const float rightZ = (width * right.Z) + (width * right.Z);

    // The up vector: the clip-space y axis, 2 * height long.
    const float x2 = (((P[0] * 0.0f) + P[4]) + (P[8] * 0.0f)) + P[12];
    const float y2 = (((P[1] * 0.0f) + P[5]) + (P[9] * 0.0f)) + P[13];
    const float z2 = (((P[2] * 0.0f) + P[6]) + (P[10] * 0.0f)) + P[14];
    core::vector3d<float> up{((((x2 * V[0]) + (y2 * V[4])) + (z2 * V[8])) + V[12]) - originX,
                             ((((x2 * V[1]) + (y2 * V[5])) + (z2 * V[9])) + V[13]) - originY,
                             ((((x2 * V[2]) + (y2 * V[6])) + (z2 * V[10])) + V[14]) - originZ};
    up.normalize();
    const float upX = (height * up.X) + (height * up.X);
    const float upY = (height * up.Y) + (height * up.Y);
    const float upZ = (height * up.Z) + (height * up.Z);

    // The node's position in view space, and its perspective division.
    const float viewX = (((nodePosition.X * W[0]) + (nodePosition.Y * W[4])) + (nodePosition.Z * W[8])) + W[12];
    const float viewY = (((nodePosition.X * W[1]) + (nodePosition.Y * W[5])) + (nodePosition.Z * W[9])) + W[13];
    const float viewZ = (((nodePosition.X * W[2]) + (nodePosition.Y * W[6])) + (nodePosition.Z * W[10])) + W[14];
    const float divisor = (((viewX * Q[2]) + (viewY * Q[6])) + (viewZ * Q[10])) + Q[14];
    const float reciprocal = 1.0f / divisor;
    const float clipX = (((viewX * Q[0]) + (viewY * Q[4])) + (viewZ * Q[8])) + Q[12];
    const float ndcX = (reciprocal * clipX) + (reciprocal * clipX);
    const float clipY = ((viewX * Q[1]) + (viewY * Q[5]));
    const float ndcY = (reciprocal * ((clipY + (viewZ * Q[9])) + Q[13])) + (reciprocal * ((clipY + (viewZ * Q[9])) + Q[13]));

    // Back to world space, moved by the direction.
    const float wx = (((ndcX * P[0]) + (ndcY * P[4])) + (P[8] * 0.0f)) + P[12];
    const float wy = (((ndcX * P[1]) + (ndcY * P[5])) + (P[9] * 0.0f)) + P[13];
    const float wz = (((ndcX * P[2]) + (ndcY * P[6])) + (P[10] * 0.0f)) + P[14];
    const float centerX = ((((wx * V[0]) + (wy * V[4])) + (wz * V[8])) + V[12]) - direction.X;
    const float centerY = ((((wx * V[1]) + (wy * V[5])) + (wz * V[9])) + V[13]) - direction.Y;
    const float centerZ = ((((wx * V[2]) + (wy * V[6])) + (wz * V[10])) + V[14]) - direction.Z;

    // The turn about the direction.
    core::CMatrix4<float> rotation(core::CMatrix4<float>::EM4CONST_IDENTITY);
    const core::vector3d<float> nodeAgain = getAbsolutePosition();
    const float dx = nodeAgain.X - cameraPosition.X;
    const float dy = nodeAgain.Y - cameraPosition.Y;
    const float dz = nodeAgain.Z - cameraPosition.Z;
    const float distance = static_cast<float>(std::sqrt(static_cast<double>(((dx * dx) + (dy * dy)) + (dz * dz))));
    const float angle = (((distance / 50.0f) * 3.1416f) * rotationScale) + rotationOffset;
    core::vector3d<float> axis{direction.X, direction.Y, direction.Z};
    if (angle < 0.0f) {
        axis.X = -axis.X;
        axis.Y = -axis.Y;
        axis.Z = -axis.Z;
    }
    os::Printer::log((core::float2stringc(angle) + "\n").c_str(), ELL_INFORMATION);
    const core::quaternion turn = core::quaternion::fromAngleAxis(angle, axis);
    turn.getMatrix(rotation);
    const float* R = rotation.M;
    const float turnedRightX = (((rightX * R[0]) + (rightY * R[4])) + (rightZ * R[8])) + R[12];
    const float turnedRightY = (((rightX * R[1]) + (rightY * R[5])) + (rightZ * R[9])) + R[13];
    const float turnedRightZ = (((rightX * R[2]) + (rightY * R[6])) + (rightZ * R[10])) + R[14];
    const float turnedUpX = R[12] + (((upX * R[0]) + (upY * R[4])) + (upZ * R[8]));
    const float turnedUpY = R[13] + (((upX * R[1]) + (upY * R[5])) + (upZ * R[9]));
    const float turnedUpZ = R[14] + (((upX * R[2]) + (upY * R[6])) + (upZ * R[10]));
    corners[0].position[0] = (centerX + turnedRightX) - turnedUpX;
    corners[0].position[1] = (centerY + turnedRightY) - turnedUpY;
    corners[0].position[2] = (centerZ + turnedRightZ) - turnedUpZ;
    corners[1].position[0] = (centerX + turnedRightX) + turnedUpX;
    corners[1].position[1] = (centerY + turnedRightY) + turnedUpY;
    corners[1].position[2] = (centerZ + turnedRightZ) + turnedUpZ;
    corners[2].position[0] = (centerX - turnedRightX) - turnedUpX;
    corners[2].position[1] = (centerY - turnedRightY) - turnedUpY;
    corners[2].position[2] = (centerZ - turnedRightZ) - turnedUpZ;
    corners[3].position[0] = (centerX - turnedRightX) + turnedUpX;
    corners[3].position[1] = (centerY - turnedRightY) + turnedUpY;
    corners[3].position[2] = (centerZ - turnedRightZ) + turnedUpZ;

    if (renderContext != nullptr) {
        const video::E_COMPARE_FUNC depthFunction = driver->getDepthFunc();
        const core::CMatrix4<float> identity(core::CMatrix4<float>::EM4CONST_IDENTITY);
        driver->setTransform(kWorldTransform, identity);
        const std::uint8_t technique = material ? static_cast<std::uint8_t>(material->getTechnique()) : 255;
        driver->setMaterial(material, technique, nullptr);
        driver->setDepthFunc(7);
        boost::intrusive_ptr<const video::CVertexStreams> streams(vertexStreams, true);  // the node keeps its own use (STUB-AUDIT: the wrap without add-ref released it every frame)
        video::CPrimitiveStream strip;
        strip.m_offset = 0;
        strip.m_count = 4;
        strip.m_vertexStart = 0;
        strip.m_vertexEnd = 4;
        strip.m_indexType = 255;
        strip.m_primitiveType = 4;
        const boost::intrusive_ptr<const scene::CMeshBuffer> noMesh;
        driver->draw(streams, strip, nullptr, noMesh);
        driver->setDepthFunc(depthFunction);
    }
}

// 0x6e703c (D1) / 0x6e70e4 (D2). Verified against the decompilation: the two vtable words (the primary one and the
// secondary at +0x204), then the reference count of the vertex-stream table at +0x1fc is decremented and the table is
// deleted when it was the last use, then the material handle and the scene-node base.
// The listing's decrement is `if ((*(_DWORD*)v1)-- == 1) { ~CVertexStreams(v1); LC_API_FREE_0(v1); }`. The port's
// CVertexStreams keeps that count in m_refCount (+0x00) and glitch-video/vertex_streams.hpp exposes it through the
// intrusive_ptr hooks, which run exactly that body (delete, after the destructor), so the drop is written as
// intrusive_ptr_release. The material handle and the base are destroyed by the members here.
CCoronasSceneNode::~CCoronasSceneNode() {
    if (vertexStreams != nullptr) {
        video::intrusive_ptr_release(vertexStreams);
        vertexStreams = nullptr;
    }
}

// 0x6e7164 _ZN6glitch7collada17CCoronasSceneNodeC1EPNS_5video12IVideoDriverEiRKNS_4core8vector3dIfEERKN5boost13intrusive_ptrINS1_9CMaterialEEERKNS3_11dimension2dIfEENS1_6SColorE
// (C2 0x6e7488). The base is built with id -1 and an identity transform (the identifier and position arguments are not read), the box is
// -1 .. 1, the size is stored as given, the corners start zero, the stream table is made, the corner colours are the colour argument and the
// texture coordinates (1, 1), (1, 0), (0, 0), (0, 1); the material is stored and the blocking callback cleared.
CCoronasSceneNode::CCoronasSceneNode(video::IVideoDriver* driver, int /*id*/, const core::vector3d<float>& /*position*/,
                                     boost::intrusive_ptr<video::CMaterial> materialArg, const core::dimension2d<float>& size,
                                     video::SColor color)
    : scene::ISceneNode(-1, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                        core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    boundingBox.MinEdge = core::vector3d<float>{-1.0f, -1.0f, -1.0f};
    boundingBox.MaxEdge = core::vector3d<float>{1.0f, 1.0f, 1.0f};
    width = size.Width;
    height = size.Height;
    setUpStreams(*this, driver);
    for (SCoronaCorner& corner : corners) {
        corner.color = color.color;
    }
    static const float kUV[4][2] = {{1.0f, 1.0f}, {1.0f, 0.0f}, {0.0f, 0.0f}, {0.0f, 1.0f}};
    setCornerUV(*this, kUV);
    material = std::move(materialArg);
    blockCallback = nullptr;
}

// 0x6e7778 _ZN6glitch7collada17CCoronasSceneNodeC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_8SCoronasEPNS0_14CRootSceneNodeE
// (C2 0x6e7a80). The record's rotation values and flag, the box, the corners (zero), the root node, the record's name, the width and height
// (1.0 first, then the record's), the stream table, then white corners with the texture coordinates (1, 1), (1, 0), (0, 1), (0, 0).
CCoronasSceneNode::CCoronasSceneNode(const CColladaDatabase& /*db*/, video::IVideoDriver* driver, SCoronas& coronas, CRootSceneNode* rootNode)
    : scene::ISceneNode(-1, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                        core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    rotationScale = coronas.rotationScale;
    rotationOffset = coronas.rotationOffset;
    unk_13c = coronas.unk_18;
    unk_140 = coronas.unk_1c;
    boundingBox.MinEdge = core::vector3d<float>{-1.0f, -1.0f, -1.0f};
    boundingBox.MaxEdge = core::vector3d<float>{1.0f, 1.0f, 1.0f};
    root = rootNode;
    setName(coronas.displayName);
    flag_144 = coronas.flag != 0;
    width = coronas.width;
    height = coronas.height;
    setUpStreams(*this, driver);
    static const float kUV[4][2] = {{1.0f, 1.0f}, {1.0f, 0.0f}, {0.0f, 1.0f}, {0.0f, 0.0f}};
    setCornerUV(*this, kUV);
    for (SCoronaCorner& corner : corners) {
        corner.color = 0xFFFFFFFFu;
    }
    blockCallback = nullptr;
}

// 0x6e5a90 _ZNK6glitch7collada17CCoronasSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Three stores (vtable slots measured off the listing; the port's IAttributes declares the same slots):
// addFloat("Width", width, false) at +0x64, addFloat("Height", height, false) at +0x64, addColor("VColor",
// the vertex colour, false) at +0x118. The float is passed as the raw bit pattern of +0x148 / +0x14c, and the colour is
// the word at +0x18c, i.e. corners[0].color.
void CCoronasSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) const {
    attributes->addFloat("Width", width, false);
    attributes->addFloat("Height", height, false);
    attributes->addColor("VColor", video::SColor{corners[0].color}, false);
}

// 0x6e5b0c _ZN6glitch7collada17CCoronasSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// getFloat("Width") into +0x148 and getFloat("Height") into +0x14c (slot +0x70 each), then getColor("VColor") at +0x124
// whose four bytes are stored separately at +0x18c..+0x18f (corners[0].color). The listing ends with the node's own vtable slot
// +0xf4 on the pair (width, height) at +0x148, which is setSize (it maps a zero to 1 in place).
void CCoronasSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    width = attributes->getFloat("Width");
    height = attributes->getFloat("Height");
    corners[0].color = attributes->getColor("VColor").color;
    core::dimension2d<float> size;
    size.Width = width;
    size.Height = height;
    setSize(size);
}

}  // namespace glitch::collada
