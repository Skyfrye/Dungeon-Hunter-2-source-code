// glitch::gui::IGUIElement: the base of every GUI element (Irrlicht's IGUIElement). Canonical header of the scene-owner wave (gui family). It
// replaces the IGUIElement of gui_elements.hpp and layouts/gui.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructor 0x552c24 (base-object form, it takes the VTT), clone constructors 0x537724
// and 0x54832c, destructors 0x539020 / 0x539bec / 0x539d08 / 0x545aac / 0x547b48 / 0x548750; tools/decomp_vtable.py glitch::gui::IGUIElement,
// 208 bytes: the primary table has no header words, K is the listing offset):
//   Bases: glitch::IEventReceiver (primary: destructors K 0x00 / 0x04, onEvent K 0x08), and two virtual bases that follow the object at
//   +0x158: io::IAttributeExchangingObject (serializeAttributes / deserializeAttributes are also K 0x74 / 0x78 of the primary table) and
//   glitch::IReferenceCounted (onDelete is the last slot). The object is 0x158 bytes without them.
//   +0x00 vptr
//   +0x04 child list (core::list<IGUIElement*>: sentinel {next, prev}; a node is {next, prev, element}, 12 bytes from GlitchAlloc)
//   +0x0c name (STLport std::string: 16-byte buffer, finish +0x1c, start +0x20)         +0x24 parent
//   +0x28 RelativeRect: the rectangle relative to the parent after the alignment, clamped to the size limits (updateAbsolutePosition)
//   +0x38 AbsoluteRect                    +0x48 AbsoluteClippingRect         +0x58 DesiredRect (the rectangle the constructor and
//   setRelativePosition store)            +0x68 LastParentRect (the parent's absolute rectangle at the last update)
//   +0x78 ScaleRect (4 floats: the rectangle as a fraction of the parent, for EGUIA_SCALE edges)
//   +0x88 MaxSize (dimension2d<int>, 0 = no limit)   +0x90 MinSize (starts 1x1)
//   +0x98 IsVisible, +0x99 IsEnabled, +0x9a IsSubElement, +0x9b NoClip, +0x9c IgnoreAllClipping
//   +0xa0 text (STLport std::wstring: 16 wchar_t buffer, finish +0xe0, start +0xe4)        +0xe8 tool tip text (same shape; finish +0x128, start +0x12c)
//   +0x130 id, +0x134 TabStop, +0x138 TabOrder (starts -1), +0x13c TabGroup,
//   +0x140 AlignLeft, +0x144 AlignRight, +0x148 AlignTop, +0x14c AlignBottom, +0x150 environment, +0x154 element type
// The decompiled clones of getNextElement and setTabOrder have constants folded in; the definitions here are the general ones.
//
// Port notes: the child list is scene::SNodeList (the same node shape); the STLport strings are std::string / std::wstring; the pointers are
// host width, so the layout above is the contract of the offsets, not of sizeof.
#pragma once

#include <cstdint>
#include <string>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/event_receiver.hpp"
#include "glitch-scene-collada-gui/gui/gui_types.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace glitch::io {
class IAttributes;
struct SAttributeReadWriteOptions;
}  // namespace glitch::io

namespace glitch::gui {

class IGUIEnvironment;

class IGUIElement : public IEventReceiver, public virtual io::IAttributeExchangingObject, public virtual IReferenceCounted {
public:
    using ElementList = scene::SNodeList<IGUIElement*>;

    // 0x552c24 (the type, environment, parent, id and rectangle arguments; clones 0x537724 and 0x54832c with the type folded to ROOT): the
    // rectangle is stored in all five rectangle members (translated into the parent's frame for the absolute ones), the flags start visible
    // and enabled, the parent (when given) adds the element as a child (vtable K 0x14) and the absolute rectangles are clipped to the parent's.
    IGUIElement(EGUI_ELEMENT_TYPE type, IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x539020 and five copies (D1 and D2 forms), D0 skipped: the children lose their parent and their reference, then the strings and the
    // child list are freed.
    ~IGUIElement() override;

    // K 0x08, 0x534fe8: forwards to the parent (K 0x08), false without one.
    bool onEvent(const SEvent& event) override;
    // K 0x0c, 0x534920: recomputes the rectangles from the parent's, the alignments and the size limits, then updates the children.
    virtual void updateAbsolutePosition();
    // K 0x10, 0x534e48: both edges of the absolute rectangle are inside.
    virtual bool isPointInside(const core::position2d<int>& point) const;
    // K 0x14, 0x535dec: takes a reference, detaches the child from its old parent, makes this its parent and appends it.
    virtual void addChild(IGUIElement* child);
    // K 0x18, 0x535d10: unlinks the child (parent cleared, reference dropped).
    virtual void removeChild(IGUIElement* child);
    // K 0x1c, 0x534e90: asks the parent to remove this element.
    virtual void remove();
    // K 0x20, 0x534eb8: draws the children when visible.
    virtual void draw();
    // K 0x24, 0x534ef8: OnPostRender of the children when visible.
    virtual void OnPostRender(std::uint32_t timeMs);
    // K 0x28, 0x534f40: moves the relative rectangle by the offset.
    virtual void move(core::position2d<int> offset);
    // K 0x2c .. 0x68, 0x534f90 .. 0x535014 and the setters.
    virtual bool isVisible() const;                        // 0x534f90
    virtual void setVisible(bool visible);                 // 0x534f98 (K 0x30)
    virtual bool isSubElement() const;                     // 0x534fa0 (K 0x34)
    virtual void setSubElement(bool subElement);           // 0x534fa8 (K 0x38)
    virtual bool isEnabled() const;                        // 0x534fb0 (K 0x3c)
    virtual void setEnabled(bool enabled);                 // 0x534fb8 (K 0x40)
    virtual void setText(const wchar_t* text);             // 0x5362c8 (K 0x44)
    virtual const wchar_t* getText() const;                // 0x534fc0 (K 0x48)
    virtual void setToolTipText(const wchar_t* text);      // 0x538234 (K 0x4c)
    virtual const std::wstring& getToolTipText() const;    // 0x534fc8 (K 0x50)
    virtual int getID() const;                             // 0x534fd0 (K 0x54)
    virtual void setID(int id);                            // 0x534fd8 (K 0x58)
    virtual const char* getName() const;                   // 0x534fe0 (K 0x5c)
    virtual void setName(const char* name);                // 0x539ec8 (K 0x60)
    // K 0x64, 0x535d70: moves the child to the end of the list (drawn last); false when it is not a child.
    virtual bool bringToFront(IGUIElement* child);
    // K 0x68, 0x535014: the object at +0x04.
    virtual const ElementList& getChildren() const;
    // K 0x6c, 0x53501c: the first child (searching the descendants when `searchChildren`) with the id, null when none.
    virtual IGUIElement* getElementFromId(int id, bool searchChildren = false) const;
    // K 0x70, 0x5350a4: GUIElementTypeNames[type] (no range check).
    virtual const char* getTypeName() const;
    // K 0x74 / 0x78, 0x5350bc and 0x539838.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    // Direct calls in the original.
    // 0x534dd0: the topmost visible element under the point (children first, last drawn first-hit), null when none.
    IGUIElement* getElementFromPoint(const core::position2d<int>& point);
    // 0x534740: stores the relative rectangle (and the scale rectangle of the SCALE edges), then updates the absolute rectangles (K 0x0c).
    void setRelativePosition(const core::rect<int>& position);
    // 0x534840: stores the four alignments and the scale rectangle of the SCALE edges.
    void setAlignment(EGUI_ALIGNMENT left, EGUI_ALIGNMENT right, EGUI_ALIGNMENT top, EGUI_ALIGNMENT bottom);
    // 0x542840 and copies (clones with constants folded in): the tab navigation search used by the environment.
    bool getNextElement(int startOrder, bool reverse, bool group, IGUIElement*& first, IGUIElement*& closest,
                        bool includeInvisible = false) const;
    // 0x542994 and copies: a negative index numbers the element after the highest one of its tab group.
    void setTabOrder(int index);

    // Inline accessors of Irrlicht's header (no separate function in the binary).
    const core::rect<int>& getRelativePosition() const { return relativeRect; }
    const core::rect<int>& getAbsolutePosition() const { return absoluteRect; }
    const core::rect<int>& getAbsoluteClippingRect() const { return absoluteClippingRect; }
    IGUIElement* getParent() const { return parent; }
    bool isTabStop() const { return tabStop; }
    void setTabStop(bool value) { tabStop = value; }
    bool isTabGroup() const { return tabGroup; }
    void setTabGroup(bool value) { tabGroup = value; }
    int getTabOrder() const { return tabOrder; }
    IGUIElement* getTabGroup() {
        IGUIElement* result = this;
        while (result != nullptr && !result->isTabGroup()) {
            result = result->getParent();
        }
        return result;
    }
    EGUI_ELEMENT_TYPE getType() const { return type; }
    IGUIEnvironment* getEnvironment() const { return environment; }
    void setNotClipped(bool noClip) {
        this->noClip = noClip;
        updateAbsolutePosition();
    }
    bool isNotClipped() const { return noClip; }
    void setMaxSize(core::dimension2d<int> size) {
        maxSize = size;
        updateAbsolutePosition();
    }
    void setMinSize(core::dimension2d<int> size) {
        minSize = size;
        if (minSize.Width < 1) {
            minSize.Width = 1;
        }
        if (minSize.Height < 1) {
            minSize.Height = 1;
        }
        updateAbsolutePosition();
    }

    ElementList children;                                // +0x04
    std::string name;                                    // +0x0c (start +0x20)
    IGUIElement* parent = nullptr;                       // +0x24
    core::rect<int> relativeRect;                         // +0x28
    core::rect<int> absoluteRect;                        // +0x38
    core::rect<int> absoluteClippingRect;                // +0x48
    core::rect<int> desiredRect;                        // +0x58
    core::rect<int> lastParentRect;                      // +0x68
    float scaleRect[4] = {0.0f, 0.0f, 0.0f, 0.0f};       // +0x78 (left, top, right, bottom as fractions of the parent size)
    core::dimension2d<int> maxSize{0, 0};                // +0x88
    core::dimension2d<int> minSize{1, 1};                // +0x90
    bool visible = true;                                 // +0x98
    bool enabled = true;                                 // +0x99
    bool subElement = false;                             // +0x9a
    bool noClip = false;                                 // +0x9b
    bool ignoreAllClipping = false;                      // +0x9c
    std::wstring text;                                   // +0xa0 (start +0xe4)
    std::wstring toolTipText;                            // +0xe8 (start +0x12c)
    int id = 0;                                          // +0x130
    bool tabStop = false;                                // +0x134
    int tabOrder = -1;                                   // +0x138
    bool tabGroup = false;                               // +0x13c
    EGUI_ALIGNMENT alignLeft = EGUIA_UPPERLEFT;          // +0x140
    EGUI_ALIGNMENT alignRight = EGUIA_UPPERLEFT;         // +0x144
    EGUI_ALIGNMENT alignTop = EGUIA_UPPERLEFT;           // +0x148
    EGUI_ALIGNMENT alignBottom = EGUIA_UPPERLEFT;        // +0x14c
    IGUIEnvironment* environment = nullptr;              // +0x150
    EGUI_ELEMENT_TYPE type = EGUIET_ELEMENT;             // +0x154
};

}  // namespace glitch::gui
