// Bodies of glitch::scene::ITextSceneNode, CTextSceneNode and CBillboardTextSceneNode (canonical classes: scene/CTextSceneNode.hpp).
// This file replaces the stand-in bodies in src/scene_simple_accessors.cpp.
#include "glitch-scene-collada-gui/scene/CTextSceneNode.hpp"

#include <cwchar>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/CGUISpriteBank.hpp"
#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/material_access.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {
// E_MATERIAL_TYPE 9, the material type of the billboard text nodes.
constexpr int kBillboardTextMaterialType = 9;
// E_SHADER_PARAMETER_TYPE 2, the texture parameter.
constexpr int kTextureParameterType = 2;
}  // namespace

// 0x6d5b5c _ZN6glitch5scene14ITextSceneNodeC2EiRKNS_4core8vector3dIfEE
ITextSceneNode::ITextSceneNode(int nodeId, const core::vector3d<float>& position)
    : ISceneNode(nodeId, position, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f}, core::vector3d<float>{1.0f, 1.0f, 1.0f}) {}

// 0x6d5a84 _ZN6glitch5scene14ITextSceneNodeD1Ev (D0 0x6d6864: skipped)
ITextSceneNode::~ITextSceneNode() = default;

// ---- CTextSceneNode ---------------------------------------------------------------------------------------------------

// 0x6d5e00 _ZN6glitch5scene14CTextSceneNodeC2EiPNS_3gui8IGUIFontEPNS0_21ISceneCollisionManagerERKNS_4core8vector3dIfEEPKwNS_5video6SColorE
// 0x6d5ce0 _ZN6glitch5scene14CTextSceneNodeC1EiPNS_3gui8IGUIFontEPNS0_21ISceneCollisionManagerERKNS_4core8vector3dIfEEPKwNS_5video6SColorE
CTextSceneNode::CTextSceneNode(int nodeId, gui::IGUIFont* textFont, ISceneCollisionManager* collisions,
                               const core::vector3d<float>& position, const wchar_t* initialText, video::SColor color)
    : ITextSceneNode(nodeId, position), text(initialText), textColor(color), font(textFont), collisionManager(collisions) {
    if (font != nullptr) {
        ++font->referenceCounter;
    }
    setAutomaticCulling(0);
}

// 0x6d5f78 _ZN6glitch5scene14CTextSceneNodeD2Ev, 0x6d6b0c (D1), 0x6d6bc0 (D0, skipped)
CTextSceneNode::~CTextSceneNode() {
    if (font != nullptr) {
        font->drop();
    }
}

// 0x6d5c00 _ZN6glitch5scene14CTextSceneNode7setTextEPKw
void CTextSceneNode::setText(const wchar_t* newText) {
    text.assign(newText, newText + std::wcslen(newText));
}

// 0x6d5874 _ZN6glitch5scene14CTextSceneNode12setTextColorENS_5video6SColorE
void CTextSceneNode::setTextColor(video::SColor color) {
    textColor = color;
}

// 0x6d5b04 _ZN6glitch5scene14CTextSceneNode19onRegisterSceneNodeEv
// Files the node for the transparent pass (8) without a material; always answers 1.
int CTextSceneNode::onRegisterSceneNode() {
    const boost::intrusive_ptr<video::CMaterial> noMaterial;
    sceneManager->registerNodeForRendering(this, noMaterial, nullptr, ESNRP_TRANSPARENT, nullptr, 0x7FFFFFFF);
    return 1;
}

// 0x6d5c30 _ZN6glitch5scene14CTextSceneNode6renderEPv
// With a font and a collision manager: the text is drawn centred in a one-pixel rectangle at the screen position of the node's absolute
// position seen from the active camera.
void CTextSceneNode::render(void* /*renderContext*/) {
    if (font == nullptr || collisionManager == nullptr) {
        return;
    }
    const core::position2d<std::int32_t> position =
        collisionManager->getScreenCoordinatesFrom3DPosition(getAbsolutePosition(), sceneManager->activeCamera);
    core::rect<int> area;
    area.UpperLeftCorner.X = position.X;
    area.UpperLeftCorner.Y = position.Y;
    area.LowerRightCorner.X = position.X + 1;
    area.LowerRightCorner.Y = position.Y + 1;
    font->draw(text.c_str(), area, textColor, true, true, nullptr);
}

// 0x6d586c _ZNK6glitch5scene14CTextSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CTextSceneNode::getBoundingBox() const {
    return boundingBox;
}

// 0x6d5844 _ZNK6glitch5scene14CTextSceneNode7getTypeEv
E_SCENE_NODE_TYPE CTextSceneNode::getType() const {
    return ESNT_TEXT;
}

// ---- CBillboardTextSceneNode --------------------------------------------------------------------------------------------

// 0x6d6438 _ZN6glitch5scene23CBillboardTextSceneNodeC1ERNS_5video24CMaterialRendererManagerEiPNS_3gui8IGUIFontEPKwRKNS_4core8vector3dIfEERKNSA_11dimension2dIfEENS2_6SColorESJ_ (complete object)
// 0x6d6020 _ZN6glitch5scene23CBillboardTextSceneNodeC2E... (base object; the same body). Verified against the listing 0x6d6020: the font type test (vtable +40) with the log on a
// non-bitmap font, createMaterialRenderer(9) then getMaterialRenderer (the Invalid-entry check is the collection's get),
// getParameterID(type 2, 0) into ParameterID, font stored at +388 with a use taken, `new CMesh` at +444, then per sprite-bank
// texture (getTextureCount through the bank vtable +20, getTexture through +24): createMaterialInstance(9), setParameter<ITexture>
// at index 0, and the buffer's vertex attribute mask read as m_renderer(+4)->m_techniques(+0x18)[getTechnique()*12 + 8]
// ->passes[0](+0x20)->shader(+0x38), i.e. material->m_renderer->m_techniques[material->getTechnique()].passes[0].shader
// (CMaterial::getTechnique 0x5c5d34 is reconstructed for its fallback path only, see its own row). stream index type 0xff and
// primitive type 6, then addMeshBuffer(buffer, material, empty map). Ends with setText(initialText), setSize(newSize) and
// setAutomaticCulling(1).
CBillboardTextSceneNode::CBillboardTextSceneNode(video::CMaterialRendererManager& materialRenderers, int nodeId,
                                                 gui::IGUIFont* textFont, const wchar_t* initialText,
                                                 const core::vector3d<float>& position, const core::dimension2d<float>& newSize,
                                                 video::SColor topColor, video::SColor bottomColor)
    : ITextSceneNode(nodeId, position), size{0.0f, 0.0f}, colorA(topColor), colorB(bottomColor) {
    if (textFont != nullptr) {
        if (textFont->getType() != gui::EGFT_BITMAP) {
            os::Printer::log("Sorry, CBillboardTextSceneNode does not support this font type", ELL_INFORMATION);
        } else {
            const std::uint16_t rendererId =
                materialRenderers.createMaterialRenderer(static_cast<video::E_MATERIAL_TYPE>(kBillboardTextMaterialType));
            const boost::intrusive_ptr<video::CMaterialRenderer> renderer = materialRenderers.getMaterialRenderer(rendererId);
            const std::uint16_t textureParameter =
                renderer->getParameterID(static_cast<video::E_SHADER_PARAMETER_TYPE>(kTextureParameterType), 0);
            font = textFont;
            ++font->referenceCounter;
            mesh = boost::intrusive_ptr<CMesh>(new CMesh(), true);
            gui::IGUISpriteBank* bank = static_cast<gui::IGUIFontBitmap*>(font)->getSpriteBank();
            for (std::uint32_t i = 0; i < bank->getTextureCount(); ++i) {
                boost::intrusive_ptr<video::CMaterial> material =
                    materialRenderers.createMaterialInstance(static_cast<video::E_MATERIAL_TYPE>(kBillboardTextMaterialType));
                setMaterialTexture(*material, textureParameter, 0, bank->getTexture(i));
                const video::STechnique& technique = material->m_renderer->m_techniques[material->getTechnique()];
                const auto* shader = static_cast<const video::IShader*>(technique.passes[0].shader);
                video::CPrimitiveStream stream;
                stream.m_indexType = 0xff;
                stream.m_primitiveType = 6;
                boost::intrusive_ptr<CMeshBuffer> buffer(new CMeshBuffer(shader->m_vertexAttributeMask, stream, false), true);
                mesh->addMeshBuffer(buffer, material, boost::intrusive_ptr<video::CMaterialVertexAttributeMap>());
            }
        }
    }
    setText(initialText);
    setSize(newSize);
    setAutomaticCulling(1);
}

// 0x6d6a08 _ZN6glitch5scene23CBillboardTextSceneNodeD2Ev, 0x6d68f4 (D1), 0x6d69ec (D0, skipped)
CBillboardTextSceneNode::~CBillboardTextSceneNode() {
    if (font != nullptr) {
        font->drop();
    }
}

// 0x6d589c _ZN6glitch5scene23CBillboardTextSceneNode7setTextEPKw: empty
void CBillboardTextSceneNode::setText(const wchar_t* /*newText*/) {}

// 0x6d59cc _ZN6glitch5scene23CBillboardTextSceneNode12setTextColorENS_5video6SColorE
void CBillboardTextSceneNode::setTextColor(video::SColor color) {
    textColor = color;
}

// 0x6d58a8 _ZN6glitch5scene23CBillboardTextSceneNode19onRegisterSceneNodeEv: returns 1
int CBillboardTextSceneNode::onRegisterSceneNode() {
    return 1;
}

// 0x6d6be4 _ZN6glitch5scene23CBillboardTextSceneNode6renderEPv
// The user data is the 1-based index of the mesh buffer to draw (0: nothing). The world transform becomes the identity, the buffer's
// material and vertex attribute map are given to the driver, and the buffer is drawn.
void CBillboardTextSceneNode::render(void* userData) {
    if (userData == nullptr) {
        return;
    }
    video::IVideoDriver* driver = sceneManager->driver;
    const core::CMatrix4<float> identity{core::CMatrix4<float>::EM4CONST_IDENTITY};
    driver->setTransform(static_cast<video::E_TRANSFORMATION_STATE>(1), identity);
    const std::uint32_t index = static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(userData)) - 1u;
    const boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(index);
    const boost::intrusive_ptr<const video::CMaterialVertexAttributeMap> attributeMap = mesh->getMaterialVertexAttributeMap(index);
    driver->setMaterial(material, attributeMap);
    const boost::intrusive_ptr<CMeshBuffer> buffer = mesh->getMeshBuffer(index);
    driver->drawMeshBuffer(boost::intrusive_ptr<const CMeshBuffer>(buffer));
}

// 0x6d58b8 _ZNK6glitch5scene23CBillboardTextSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CBillboardTextSceneNode::getBoundingBox() const {
    return boundingBox;
}

// 0x6d5920 _ZNK6glitch5scene23CBillboardTextSceneNode11getMaterialEj
// The mesh's material at the index, a null handle when there is no mesh or the index is past its buffers.
boost::intrusive_ptr<video::CMaterial> CBillboardTextSceneNode::getMaterial(std::uint32_t index) const {
    if (mesh && mesh->getMeshBufferCount() > index) {
        return mesh->getMaterial(index);
    }
    return boost::intrusive_ptr<video::CMaterial>();
}

// 0x6d5990 _ZNK6glitch5scene23CBillboardTextSceneNode16getMaterialCountEv
std::uint32_t CBillboardTextSceneNode::getMaterialCount() const {
    return mesh ? mesh->getMeshBufferCount() : 0u;
}

// 0x6d5858 _ZNK6glitch5scene23CBillboardTextSceneNode7getTypeEv: 'text', like CTextSceneNode
E_SCENE_NODE_TYPE CBillboardTextSceneNode::getType() const {
    return ESNT_TEXT;
}

// 0x6d58c8 _ZN6glitch5scene23CBillboardTextSceneNode7setSizeERKNS_4core11dimension2dIfEE
// Stores the size; a zero width or height becomes 1.
void CBillboardTextSceneNode::setSize(const core::dimension2d<float>& newSize) {
    size = newSize;
    if (size.Width == 0.0f) size.Width = 1.0f;
    if (size.Height == 0.0f) size.Height = 1.0f;
}

// 0x6d59c4 _ZNK6glitch5scene23CBillboardTextSceneNode7getSizeEv
const core::dimension2d<float>& CBillboardTextSceneNode::getSize() const {
    return size;
}

// 0x6d59fc _ZN6glitch5scene23CBillboardTextSceneNode8setColorERKNS_5video6SColorE: empty
void CBillboardTextSceneNode::setColor(const video::SColor& /*color*/) {}

// 0x6d5a08 _ZN6glitch5scene23CBillboardTextSceneNode8setColorERKNS_5video6SColorES5_: empty
void CBillboardTextSceneNode::setColor(const video::SColor& /*top*/, const video::SColor& /*bottom*/) {}

// 0x6d5a14 _ZNK6glitch5scene23CBillboardTextSceneNode8getColorERNS_5video6SColorES4_
// The two colours of the constructor.
void CBillboardTextSceneNode::getColor(video::SColor& top, video::SColor& bottom) const {
    top = colorA;
    bottom = colorB;
}

}  // namespace glitch::scene
