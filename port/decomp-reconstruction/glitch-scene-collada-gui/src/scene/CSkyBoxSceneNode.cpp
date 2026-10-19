// Bodies of glitch::scene::CSkyBoxSceneNode (canonical class: scene/CSkyBoxSceneNode.hpp). This file replaces the stand-in bodies in
// src/scene_simple_accessors.cpp.
#include "glitch-scene-collada-gui/scene/CSkyBoxSceneNode.hpp"

#include <cmath>
#include <cstring>

#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/material_access.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

// E_MATERIAL_TYPE 11, the sky box material type; E_SHADER_PARAMETER_TYPE 2 (texture) and 6 (colour).
constexpr int kSkyMaterialType = 11;
constexpr int kTextureParameterType = 2;
constexpr int kColorParameterType = 6;

// The 24 vertices of the cube of half-size 10 the sky box draws, four per face in the order front, left, back, right, top, bottom:
// u, v, x, y, z (20 bytes each). The order of the constants is the original's; each face is a triangle fan.
const float kVertices[24 * 5] = {
    1.0f, 1.0f, -10.0f, -10.0f, -10.0f, 0.0f, 1.0f, 10.0f,  -10.0f, -10.0f, 0.0f, 0.0f, 10.0f,  10.0f,  -10.0f, 1.0f, 0.0f, -10.0f, 10.0f,  -10.0f,
    1.0f, 1.0f, 10.0f,  -10.0f, -10.0f, 0.0f, 1.0f, 10.0f,  -10.0f, 10.0f,  0.0f, 0.0f, 10.0f,  10.0f,  10.0f,  1.0f, 0.0f, 10.0f,  10.0f,  -10.0f,
    1.0f, 1.0f, 10.0f,  -10.0f, 10.0f,  0.0f, 1.0f, -10.0f, -10.0f, 10.0f,  0.0f, 0.0f, -10.0f, 10.0f,  10.0f,  1.0f, 0.0f, 10.0f,  10.0f,  10.0f,
    1.0f, 1.0f, -10.0f, -10.0f, 10.0f,  0.0f, 1.0f, -10.0f, -10.0f, -10.0f, 0.0f, 0.0f, -10.0f, 10.0f,  -10.0f, 1.0f, 0.0f, -10.0f, 10.0f,  10.0f,
    1.0f, 1.0f, 10.0f,  10.0f,  -10.0f, 0.0f, 1.0f, 10.0f,  10.0f,  10.0f,  0.0f, 0.0f, -10.0f, 10.0f,  10.0f,  1.0f, 0.0f, -10.0f, 10.0f,  -10.0f,
    0.0f, 0.0f, 10.0f,  -10.0f, 10.0f,  1.0f, 0.0f, 10.0f,  -10.0f, -10.0f, 1.0f, 1.0f, -10.0f, -10.0f, -10.0f, 0.0f, 1.0f, -10.0f, -10.0f, 10.0f,
};

}  // namespace

// 0x6cf564 _ZN6glitch5scene16CSkyBoxSceneNodeC1EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS2_8ITextureEEESA_SA_SA_SA_SA_i (complete object)
// 0x6cebc8 _ZN6glitch5scene16CSkyBoxSceneNodeC2EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS2_8ITextureEEESA_SA_SA_SA_SA_i (base object; the same body).
// (The C1/C2 addresses are the ones in the symbol table: 7140708 = 0x6cf564 is C1, 7138248 = 0x6cebc8 is C2.) The materials come from the sky renderer; their textures are clamped and stored in the renderer's
// texture parameter, the colour parameter (when the renderer has one) is set to white. The vertex stream table has two streams over
// one 480-byte buffer (positions at offset 8, texture coordinates at offset 0, stride 20) which the constructor fills with the cube.
// Verified against the listing 0x6cf564: createMaterialRenderer(11) then getMaterialRenderer (the Invalid-entry check is the
// collection's get), getParameterID(type 2, 0) into +360 and getParameterID(type 6, 0) into the colour id, the six-face loop that
// takes the face's use before storing it (LDR/ADD #1/STR and the drop after), setWrap then setParameter<ITexture> at index 0 and
// setParameterCvt<SColor> of 0xFFFFFFFF only when the colour id is not 0xffff (CMP R7,#0xFFFF), CVertexStreams::allocate(1, 0),
// the two setStream calls (offsets 8 and 0, fields 3/2 and stride 20), field08 = 24, IBuffer::reset(480, new[480], true) and
// map(4), CMaterialVertexAttributeMap::allocate, the 480 copied bytes, the bind test on flags +12 and usage +17, and updateStates.
CSkyBoxSceneNode::CSkyBoxSceneNode(video::IVideoDriver* driver, const boost::intrusive_ptr<video::ITexture>& top,
                                   const boost::intrusive_ptr<video::ITexture>& bottom,
                                   const boost::intrusive_ptr<video::ITexture>& left,
                                   const boost::intrusive_ptr<video::ITexture>& right,
                                   const boost::intrusive_ptr<video::ITexture>& front,
                                   const boost::intrusive_ptr<video::ITexture>& back, int nodeId)
    : ISceneNode(nodeId, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                 core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    setAutomaticCulling(0);
    boundingBox = core::aabbox3d<float>{{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}};

    video::CMaterialRendererManager* manager = driver->m_materialRendererManager;
    const std::uint16_t rendererId = manager->createMaterialRenderer(static_cast<video::E_MATERIAL_TYPE>(kSkyMaterialType));
    const boost::intrusive_ptr<video::CMaterialRenderer> renderer = manager->getMaterialRenderer(rendererId);
    textureParameterId = renderer->getParameterID(static_cast<video::E_SHADER_PARAMETER_TYPE>(kTextureParameterType), 0);
    const std::uint16_t colorParameterId = renderer->getParameterID(static_cast<video::E_SHADER_PARAMETER_TYPE>(kColorParameterType), 0);

    const boost::intrusive_ptr<video::ITexture> faces[6] = {front, left, back, right, top, bottom};
    for (int i = 0; i < 6; ++i) {
        materials[i] = manager->createMaterialInstance(static_cast<video::E_MATERIAL_TYPE>(kSkyMaterialType));
        if (faces[i]) {
            faces[i]->setWrapClamp();
            setMaterialTexture(*materials[i], textureParameterId, 0, faces[i]);
            if (colorParameterId != 0xFFFF) {
                setMaterialColorCvt(*materials[i], colorParameterId, 0, video::SColor{0xFFFFFFFFu});
            }
        }
    }

    vertexStreams = video::CVertexStreams::allocate(static_cast<std::uint8_t>(1), 0u);
    boost::intrusive_ptr<video::IBuffer> buffer = driver->createBuffer(0, 0, 0, nullptr, true);

    video::SVertexStreamData positions;
    positions.buffer = buffer;
    positions.offset = 8;
    positions.field08 = 6;
    positions.field0c = 3;
    positions.field0e = 20;
    vertexStreams->setStream(&vertexStreams->m_streams[0], positions, false);
    video::SVertexStreamData coordinates;
    coordinates.buffer = buffer;
    coordinates.offset = 0;
    coordinates.field08 = 6;
    coordinates.field0c = 2;
    coordinates.field0e = 20;
    vertexStreams->setStream(&vertexStreams->m_streams[1], coordinates, false);
    vertexStreams->m_field08 = 24;

    buffer->reset(sizeof(kVertices), new std::uint8_t[sizeof(kVertices)], true);
    std::uint8_t* mapped = buffer->map(4);
    attributeMap = video::CMaterialVertexAttributeMap::allocate(renderer, boost::intrusive_ptr<const video::CVertexStreams>(vertexStreams));
    if (mapped != nullptr) {
        std::memcpy(mapped, kVertices, sizeof(kVertices));
    }
    buffer->unmap();
    if (((buffer->m_flags12 & video::IBuffer::kFlagDriverMapped) == 0 || (buffer->m_flags12 & video::IBuffer::kFlagHasData) != 0) &&
        buffer->m_usage != 4) {
        buffer->bindImpl(true);
    }
    vertexStreams->updateStates(false);
}

// 0x6cea98 _ZN6glitch5scene16CSkyBoxSceneNodeD1Ev (D0 0x6ceb8c: skipped)
CSkyBoxSceneNode::~CSkyBoxSceneNode() = default;

// 0x6ce418 _ZN6glitch5scene16CSkyBoxSceneNode19onRegisterSceneNodeEv
int CSkyBoxSceneNode::onRegisterSceneNode() {
    const boost::intrusive_ptr<video::CMaterial> noMaterial;
    sceneManager->registerNodeForRendering(this, noMaterial, nullptr, ESNRP_PRE_SOLID, nullptr, 0x7FFFFFFF);
    return 1;
}

// 0x6ce53c _ZN6glitch5scene16CSkyBoxSceneNode6renderEPv
// A perspective camera sees the six faces drawn around it: the world transform is the node's absolute transform with the camera's
// absolute position as translation, and every face whose material has a texture is drawn as a triangle fan over its four vertices. An
// orthographic camera sees one face over the whole render target: the face is chosen by the dominant axis of the viewing direction
// (x: 2 or 0, y: 5 or 4, z: 3 or 1) and drawn as a 2D image from the texture's full area to the target's rectangle (-1, 0, w - 1, h).
void CSkyBoxSceneNode::render(void* /*renderContext*/) {
    ICameraSceneNode* camera = sceneManager->activeCamera;
    video::IVideoDriver* driver = sceneManager->driver;
    if (camera == nullptr || driver == nullptr) {
        return;
    }
    if (!camera->isOrthogonal()) {
        core::CMatrix4<float> world = absoluteTransform;
        const core::vector3d<float> cameraPosition = camera->getAbsolutePosition();
        world.M[12] = cameraPosition.X;
        world.M[13] = cameraPosition.Y;
        world.M[14] = cameraPosition.Z;
        world.flag = false;
        driver->setTransform(static_cast<video::E_TRANSFORMATION_STATE>(1), world);
        for (std::uint32_t face = 0; face < 6; ++face) {
            boost::intrusive_ptr<video::ITexture> texture;
            if (getMaterialTexture(*materials[face], textureParameterId, 0, texture) && texture) {
                driver->setMaterial(materials[face], boost::intrusive_ptr<const video::CMaterialVertexAttributeMap>(attributeMap));
                video::CPrimitiveStream stream;
                stream.m_offset = 0;
                stream.m_count = 4;
                stream.m_vertexStart = face * 4;
                stream.m_vertexEnd = face * 4 + 4;
                stream.m_indexType = 0xff;
                stream.m_primitiveType = 5;
                driver->draw(boost::intrusive_ptr<const video::CVertexStreams>(vertexStreams), stream, nullptr,
                             boost::intrusive_ptr<const CMeshBuffer>());
            }
        }
        return;
    }
    const core::vector3d<float> target = camera->getTarget();
    const core::vector3d<float> cameraPosition = camera->getAbsolutePosition();
    core::vector3d<float> direction{target.X - cameraPosition.X, target.Y - cameraPosition.Y, target.Z - cameraPosition.Z};
    direction.normalize();
    const float ax = std::fabs(direction.X);
    const float ay = std::fabs(direction.Y);
    const float az = std::fabs(direction.Z);
    std::uint32_t face = 0;
    if (ax >= ay && ax >= az) {
        if (direction.X <= 0.0f) face = 2;
    } else if (ax <= ay && ay >= az) {
        face = direction.Y <= 0.0f ? 5 : 4;
    } else if (ax <= az && ay <= az) {
        face = direction.Z <= 0.0f ? 3 : 1;
    }
    boost::intrusive_ptr<video::ITexture> texture;
    if (getMaterialTexture(*materials[face], textureParameterId, 0, texture) && texture) {
        const video::IRenderTarget* renderTarget = driver->m_renderTargets.back().get();
        core::rect<std::int32_t> destination;
        destination.UpperLeftCorner.X = -1;
        destination.UpperLeftCorner.Y = 0;
        destination.LowerRightCorner.X = renderTarget->m_width - 1;
        destination.LowerRightCorner.Y = renderTarget->m_height;
        core::rect<std::int32_t> source;
        source.UpperLeftCorner.X = 0;
        source.UpperLeftCorner.Y = 0;
        source.LowerRightCorner.X = static_cast<std::int32_t>(texture->m_width);
        source.LowerRightCorner.Y = static_cast<std::int32_t>(texture->m_height);
        video::C2DDriver::draw2DImage(driver, texture, destination, source, nullptr, nullptr, false);
    }
}

// 0x6ce3c8 _ZNK6glitch5scene16CSkyBoxSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CSkyBoxSceneNode::getBoundingBox() const {
    return boundingBox;
}

// 0x6ce3d0 _ZNK6glitch5scene16CSkyBoxSceneNode11getMaterialEj
boost::intrusive_ptr<video::CMaterial> CSkyBoxSceneNode::getMaterial(std::uint32_t index) const {
    return materials[index];
}

// 0x6ce3f0 _ZNK6glitch5scene16CSkyBoxSceneNode16getMaterialCountEv
std::uint32_t CSkyBoxSceneNode::getMaterialCount() const {
    return 6;
}

// 0x6ce3bc _ZNK6glitch5scene16CSkyBoxSceneNode7getTypeEv
E_SCENE_NODE_TYPE CSkyBoxSceneNode::getType() const {
    return ESNT_SKY_BOX;
}

// 0x6cff30 _ZN6glitch5scene16CSkyBoxSceneNode5cloneEPNS0_10ISceneNodeEPNS0_13CSceneManagerE
// A sky box without textures on the driver of the given manager (this node's when null) with this node's id, the base members and the
// six materials copied (shared).
ISceneNode* CSkyBoxSceneNode::clone(ISceneNode* /*newParent*/, CSceneManager* newManager) {
    CSceneManager* manager = newManager != nullptr ? newManager : sceneManager;
    const boost::intrusive_ptr<video::ITexture> none;
    auto* copy = new CSkyBoxSceneNode(manager->driver, none, none, none, none, none, none, id);
    copy->cloneMembers(this);
    for (int i = 0; i < 6; ++i) {
        copy->materials[i] = materials[i];
    }
    return copy;
}

}  // namespace glitch::scene
