// glitch::gui::IGUIMeshViewer, CGUIMeshViewer, IGUIToolBar and CGUIToolBar: the mesh viewer and the tool bar. Canonical header of the
// scene-owner wave (gui family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp, recon/slice_02.hpp,
// recon/slice_04.hpp and recon/v2/wave_02.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; the interface constructors take the element type: IGUIMeshViewer 0x546390 (type 11),
// IGUIToolBar 0x55b190 (type 20); each concrete class continues the object at +0x158 and the two virtual bases follow its members):
//   CGUIMeshViewer (constructors 0x546650 / 0x546728, destructors 0x54684c / 0x5468e0 / 0x5468fc; bases at +0x160 / +0x164, count at +0x168):
//     +0x158 Material (boost::intrusive_ptr<video::CMaterial>)   +0x15c Mesh (reference held)
//   CGUIToolBar (constructors 0x55b450 / 0x55b5f0, destructors 0x55b83c / 0x55b8cc; bases at +0x15c / +0x160, count at +0x164):
//     +0x158 ButtonX (the next free x of the bar, starts 5)
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::video {
class CMaterial;
class ITexture;
}  // namespace glitch::video

namespace glitch::scene {
class IAnimatedMesh;
}

namespace glitch::gui {

class IGUIButton;

class IGUIMeshViewer : public IGUIElement {
public:
    // 0x546390: the IGUIElement base with the type EGUIET_MESH_VIEWER.
    IGUIMeshViewer(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x5467d8 (D1), 0x546980 (D0 copy): empty.
    ~IGUIMeshViewer() override;

    virtual void setMesh(const boost::intrusive_ptr<scene::IAnimatedMesh>& mesh) = 0;        // K 0x7c
    virtual boost::intrusive_ptr<scene::IAnimatedMesh> getMesh() const = 0;                  // K 0x80
    virtual void setMaterial(const boost::intrusive_ptr<video::CMaterial>& material) = 0;    // K 0x84
    virtual boost::intrusive_ptr<video::CMaterial> getMaterial() const = 0;                  // K 0x88
};

class CGUIMeshViewer : public IGUIMeshViewer {
public:
    // 0x546650 (C1) / 0x546728 (C2): no mesh, no material.
    CGUIMeshViewer(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x54684c (D1), 0x5468e0, 0x5468fc: drops the mesh and the material.
    ~CGUIMeshViewer() override;

    // K 0x08, 0x5467ac: forwards to the parent.
    bool onEvent(const SEvent& event) override;
    // K 0x20, 0x5469fc: a frame of EGDC_3D_SHADOW (top, left) and EGDC_3D_HIGH_LIGHT (right, bottom) lines, then the mesh frame
    // (time / 20) % frame count drawn in the viewport inside the frame (clipped to the clipping rectangle) with an identity world matrix and
    // the viewer's material, then the children.
    void draw() override;

    void setMesh(const boost::intrusive_ptr<scene::IAnimatedMesh>& newMesh) override;       // 0x5462c4
    boost::intrusive_ptr<scene::IAnimatedMesh> getMesh() const override;                    // 0x5462f0
    void setMaterial(const boost::intrusive_ptr<video::CMaterial>& newMaterial) override;   // 0x546348
    boost::intrusive_ptr<video::CMaterial> getMaterial() const override;                    // 0x54630c

    boost::intrusive_ptr<video::CMaterial> material;        // +0x158
    boost::intrusive_ptr<scene::IAnimatedMesh> mesh;        // +0x15c
};

class IGUIToolBar : public IGUIElement {
public:
    // 0x55b190: the IGUIElement base with the type EGUIET_TOOL_BAR.
    IGUIToolBar(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x55b7c8 (D1), 0x55b908 (D0 copy): empty.
    ~IGUIToolBar() override;

    // K 0x7c.
    virtual IGUIButton* addButton(int id = -1, const wchar_t* text = nullptr, const wchar_t* tooltiptext = nullptr,
                                  const boost::intrusive_ptr<video::ITexture>& img = boost::intrusive_ptr<video::ITexture>(),
                                  const boost::intrusive_ptr<video::ITexture>& pressedimg = boost::intrusive_ptr<video::ITexture>(),
                                  bool isPushButton = false, bool useAlphaChannel = false) = 0;
};

class CGUIToolBar : public IGUIToolBar {
public:
    // 0x55b450 (C1) / 0x55b5f0 (C2): ButtonX starts at 5; the bar spans the parent's width (100 without a parent) below the other full-width
    // children of the parent, one menu height high.
    CGUIToolBar(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x55b83c (D1), 0x55b8cc (D2): empty.
    ~CGUIToolBar() override;

    // K 0x08, 0x55b740: a left press inside the bar is consumed; everything else goes to the parent.
    bool onEvent(const SEvent& event) override;
    // K 0x0c, 0x55afcc: the relative rectangle spans the parent's width.
    void updateAbsolutePosition() override;
    // K 0x20, 0x55b984: the skin's tool bar frame, then the children.
    void draw() override;
    // K 0x7c, 0x55b014: a CGUIButton at ButtonX (+3), two pixels from the top, the size of the image plus a margin; ButtonX moves to the
    // button's right edge. The button is given the text, tip, images and flags that are set.
    IGUIButton* addButton(int id = -1, const wchar_t* text = nullptr, const wchar_t* tooltiptext = nullptr,
                          const boost::intrusive_ptr<video::ITexture>& img = boost::intrusive_ptr<video::ITexture>(),
                          const boost::intrusive_ptr<video::ITexture>& pressedimg = boost::intrusive_ptr<video::ITexture>(),
                          bool isPushButton = false, bool useAlphaChannel = false) override;

    int buttonX = 5;  // +0x158
};

}  // namespace glitch::gui
