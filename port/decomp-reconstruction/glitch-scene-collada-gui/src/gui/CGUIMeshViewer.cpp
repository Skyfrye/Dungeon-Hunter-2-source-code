// Bodies of glitch::gui::IGUIMeshViewer, CGUIMeshViewer, IGUIToolBar and CGUIToolBar (canonical classes: gui/CGUIMeshViewer.hpp). This file
// replaces their bodies in gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_02.cpp, recon/slice_04.cpp and recon/v2/wave_02.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIMeshViewer.hpp"

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

// ---------------------------------------------------------------------------------------------------------------------
// IGUIMeshViewer / CGUIMeshViewer
// ---------------------------------------------------------------------------------------------------------------------

// 0x546390 _ZN6glitch3gui14IGUIMeshViewerC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIMeshViewer::IGUIMeshViewer(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_MESH_VIEWER, environment, parent, id, rectangle) {}

// 0x5467d8 _ZN6glitch3gui14IGUIMeshViewerD1Ev (D0 0x546980 skipped)
IGUIMeshViewer::~IGUIMeshViewer() = default;

// 0x546650 _ZN6glitch3gui14CGUIMeshViewerC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE (C2 0x546728)
CGUIMeshViewer::CGUIMeshViewer(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIMeshViewer(environment, parent, id, rectangle) {}

// 0x54684c _ZN6glitch3gui14CGUIMeshViewerD1Ev (0x5468e0 and 0x5468fc are the other forms)
CGUIMeshViewer::~CGUIMeshViewer() = default;

// 0x5462c4 _ZN6glitch3gui14CGUIMeshViewer7setMeshERKN5boost13intrusive_ptrINS_5scene13IAnimatedMeshEEE
void CGUIMeshViewer::setMesh(const boost::intrusive_ptr<scene::IAnimatedMesh>& newMesh) {
    mesh = newMesh;
}

// 0x5462f0 _ZNK6glitch3gui14CGUIMeshViewer7getMeshEv
boost::intrusive_ptr<scene::IAnimatedMesh> CGUIMeshViewer::getMesh() const {
    return mesh;
}

// 0x546348 _ZN6glitch3gui14CGUIMeshViewer11setMaterialERKN5boost13intrusive_ptrINS_5video9CMaterialEEE
void CGUIMeshViewer::setMaterial(const boost::intrusive_ptr<video::CMaterial>& newMaterial) {
    material = newMaterial;
}

// 0x54630c _ZNK6glitch3gui14CGUIMeshViewer11getMaterialEv
boost::intrusive_ptr<video::CMaterial> CGUIMeshViewer::getMaterial() const {
    return material;
}

// 0x5467ac _ZN6glitch3gui14CGUIMeshViewer7onEventERKNS_6SEventE
bool CGUIMeshViewer::onEvent(const SEvent& event) {
    return parent != nullptr ? parent->onEvent(event) : false;
}

// 0x5469fc _ZN6glitch3gui14CGUIMeshViewer4drawEv
void CGUIMeshViewer::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();                       // K 0x38
    video::IVideoDriver* driver = environment->getVideoDriver();   // K 0x20

    // The viewport: the element's rectangle one pixel inside, clipped to the clipping rectangle.
    core::rect<int> viewPort = detail::makeRect(absoluteRect.UpperLeftCorner.X + 1, absoluteRect.UpperLeftCorner.Y + 1,
                                                absoluteRect.LowerRightCorner.X - 1, absoluteRect.LowerRightCorner.Y - 1);
    detail::rectClipAgainst(viewPort, absoluteClippingRect);

    // The frame.
    core::rect<int> frame = absoluteRect;
    frame.LowerRightCorner.Y = frame.UpperLeftCorner.Y + 1;
    skin->draw2DRectangle(this, skin->getColor(EGDC_3D_SHADOW), frame, &absoluteClippingRect);  // K 0x64
    frame.LowerRightCorner.Y = absoluteRect.LowerRightCorner.Y;
    frame.LowerRightCorner.X = frame.UpperLeftCorner.X + 1;
    skin->draw2DRectangle(this, skin->getColor(EGDC_3D_SHADOW), frame, &absoluteClippingRect);
    frame = absoluteRect;
    frame.UpperLeftCorner.X = absoluteRect.LowerRightCorner.X - 1;
    skin->draw2DRectangle(this, skin->getColor(EGDC_3D_HIGH_LIGHT), frame, &absoluteClippingRect);
    frame = absoluteRect;
    frame.UpperLeftCorner.Y = absoluteRect.LowerRightCorner.Y - 1;
    skin->draw2DRectangle(this, skin->getColor(EGDC_3D_HIGH_LIGHT), frame, &absoluteClippingRect);

    if (mesh) {
        // The viewport of the current render target is replaced while the mesh draws.
        video::IRenderTarget* target = driver->m_renderTargets.back().get();
        const core::rect<int> oldViewPort = target->viewport();
        target->setViewport(viewPort);  // K 0x0c

        core::CMatrix4<float> world(core::CMatrix4<float>::EM4CONST_IDENTITY);
        driver->setTransform(1, world);  // ETS_WORLD, K 0x6c
        driver->setMaterial(material, material ? static_cast<std::uint8_t>(material->getTechnique()) : static_cast<std::uint8_t>(255), nullptr);

        const std::uint32_t frameCount = mesh->getFrameCount();  // K 0x30
        const std::int32_t frameIndex = frameCount != 0 ? static_cast<std::int32_t>((os::Timer::getTime() / 20) % frameCount) : 0;
        boost::intrusive_ptr<scene::IMesh> frameMesh = mesh->getMesh(frameIndex, 255, -1, -1);  // K 0x34
        for (std::uint32_t i = 0; i < frameMesh->getMeshBufferCount(); ++i) {
            boost::intrusive_ptr<const scene::CMeshBuffer> buffer = frameMesh->getMeshBuffer(i);
            driver->drawMeshBuffer(buffer);
        }
        target->setViewport(oldViewPort);
    }
    IGUIElement::draw();
}

// ---------------------------------------------------------------------------------------------------------------------
// IGUIToolBar / CGUIToolBar
// ---------------------------------------------------------------------------------------------------------------------

// 0x55b190 _ZN6glitch3gui11IGUIToolBarC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIToolBar::IGUIToolBar(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_TOOL_BAR, environment, parent, id, rectangle) {}

// 0x55b7c8 _ZN6glitch3gui11IGUIToolBarD1Ev (D0 0x55b908 skipped)
IGUIToolBar::~IGUIToolBar() = default;

// 0x55b450 _ZN6glitch3gui11CGUIToolBarC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE (C2 0x55b5f0)
// The bar sits below the full-width children of the parent that are already at or above its top.
CGUIToolBar::CGUIToolBar(IGUIEnvironment* environment, IGUIElement* parentElement, int id, core::rect<int> rectangle)
    : IGUIToolBar(environment, parentElement, id, rectangle) {
    int top = 0;
    int parentWidth = 100;
    if (parentElement != nullptr) {
        parentWidth = parent->absoluteRect.LowerRightCorner.X - parent->absoluteRect.UpperLeftCorner.X;
        for (IGUIElement* child : parentElement->getChildren()) {  // K 0x68
            const core::rect<int>& r = child->absoluteRect;
            if (r.UpperLeftCorner.X == 0 && top >= r.UpperLeftCorner.Y && r.LowerRightCorner.X == parentWidth) {
                top = r.LowerRightCorner.Y;
            }
        }
    }
    setRelativePosition(detail::makeRect(0, top, parentWidth, top + environment->getSkin()->getSize(EGDS_MENU_HEIGHT)));
}

// 0x55b83c _ZN6glitch3gui11CGUIToolBarD1Ev (D2 0x55b8cc skipped)
CGUIToolBar::~CGUIToolBar() = default;

// 0x55afcc _ZN6glitch3gui11CGUIToolBar22updateAbsolutePositionEv
void CGUIToolBar::updateAbsolutePosition() {
    if (parent != nullptr) {
        desiredRect.UpperLeftCorner.X = 0;
        desiredRect.LowerRightCorner.X = parent->absoluteRect.LowerRightCorner.X - parent->absoluteRect.UpperLeftCorner.X;
    }
    IGUIElement::updateAbsolutePosition();
}

// 0x55b740 _ZN6glitch3gui11CGUIToolBar7onEventERKNS_6SEventE
bool CGUIToolBar::onEvent(const SEvent& event) {
    if (enabled && event.EventType == EET_MOUSE_INPUT_EVENT && event.MouseInput.Event == EMIE_LMOUSE_PRESSED_DOWN &&
        detail::rectContains(absoluteClippingRect, event.MouseInput.X, event.MouseInput.Y)) {
        return true;
    }
    return parent != nullptr ? parent->onEvent(event) : false;
}

// 0x55b984 _ZN6glitch3gui11CGUIToolBar4drawEv
void CGUIToolBar::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return;
    }
    skin->draw3DToolBar(this, absoluteRect, &absoluteClippingRect);  // K 0x54
    IGUIElement::draw();
}

// 0x55b014 _ZN6glitch3gui11CGUIToolBar9addButtonEiPKwS3_RKN5boost13intrusive_ptrINS_5video8ITextureEEES9_bb
// A button without an image gets the rectangle (ButtonX + 3, 2, 0, 0) and ButtonX is reset to 0 (the arithmetic of the original).
IGUIButton* CGUIToolBar::addButton(int id, const wchar_t* text, const wchar_t* tooltiptext, const boost::intrusive_ptr<video::ITexture>& img,
                                   const boost::intrusive_ptr<video::ITexture>& pressedimg, bool isPushButton, bool useAlphaChannel) {
    buttonX += 3;
    const int left = buttonX;
    int right = 0;
    int bottom = 0;
    if (img) {
        right = left + 8 + static_cast<int>(img->m_width);
        bottom = static_cast<int>(img->m_height) + 8;
    }
    buttonX = right;
    CGUIButton* button = new CGUIButton(environment, this, id, detail::makeRect(left, 2, right, bottom), false);
    button->drop();
    if (text != nullptr) {
        button->setText(text);  // K 0x44
    }
    if (tooltiptext != nullptr) {
        button->setToolTipText(tooltiptext);  // K 0x4c
    }
    if (img) {
        button->setImage(img);  // K 0x80
    }
    if (pressedimg) {
        button->setPressedImage(pressedimg);  // K 0x88
    }
    if (isPushButton) {
        button->setIsPushButton(true);  // K 0x98
    }
    if (useAlphaChannel) {
        button->setUseAlphaChannel(true);  // K 0xa4
    }
    return button;
}

}  // namespace glitch::gui
