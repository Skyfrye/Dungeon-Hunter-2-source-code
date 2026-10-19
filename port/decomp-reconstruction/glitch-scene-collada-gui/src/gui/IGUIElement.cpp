// Bodies of glitch::gui::IGUIElement (canonical class: gui/IGUIElement.hpp) and the name tables of gui/gui_types.hpp. This file replaces the
// IGUIElement functions of gui_elements.cpp and of recon/slice_00.cpp, slice_01.cpp, slice_02.cpp and recon/v2/wave_01.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

#include <cwchar>

#include "glitch-core-io/io/iattributes.hpp"

namespace glitch::gui {

// ---------------------------------------------------------------------------------------------------------------------
// Name tables (the strings of the binary's internal-linkage copies)
// ---------------------------------------------------------------------------------------------------------------------

const char* const GUIElementTypeNames[23] = {
    "button",   "checkBox", "comboBox",   "contextMenu", "menu",    "editBox", "fileOpenDialog", "colorSelectDialog",
    "inOutFader", "image",  "listBox",    "meshViewer",  "messageBox", "modalScreen", "scrollBar", "spinBox",
    "staticText", "tab",    "tabControl", "table",       "toolBar", "window",  nullptr};
const char* const GUIAlignmentNames[5] = {"upperLeft", "lowerRight", "center", "scale", nullptr};
const char* const GUISkinTypeNames[5] = {"windowsClassic", "windowsMetallic", "burning", "unknown", nullptr};
const char* const GUISkinColorNames[22] = {"3DDarkShadow", "3DShadow",       "3DFace",       "3DHighlight",  "3DLight",
                                           "ActiveBorder", "ActiveCaption",  "AppWorkspace", "ButtonText",   "GrayText",
                                           "Highlight",    "HighlightText",  "InactiveBorder", "InactiveCaption", "ToolTip",
                                           "ToolTipBackground", "ScrollBar", "Window",       "WindowSymbol", "Icon",
                                           "IconHighlight", nullptr};
const char* const GUISkinSizeNames[11] = {"ScrollBarSize",   "MenuHeight",       "WindowButtonWidth", "CheckBoxWidth",
                                          "MessageBoxWidth", "MessageBoxHeight", "ButtonWidth",       "ButtonHeight",
                                          "TextDistanceX",   "TextDistanceY",    nullptr};
const char* const GUISkinTextNames[9] = {"MessageBoxOkay",     "MessageBoxCancel",   "MessageBoxYes",       "MessageBoxNo",
                                         "WindowButtonClose",  "WindowButtonMaximize", "WindowButtonMinimize", "WindowButtonRestore",
                                         nullptr};
const char* const GUISkinIconNames[24] = {"windowMaximize", "windowRestore", "windowClose",     "windowMinimize", "windowResize",
                                          "cursorUp",       "cursorDown",    "cursorLeft",      "cursorRight",    "menuMore",
                                          "checkBoxChecked", "dropDown",     "smallCursorUp",   "smallCursorDown", "radioButtonChecked",
                                          "moreLeft",       "moreRight",     "moreUp",          "moreDown",       "expand",
                                          "collapse",       "file",          "directory",       nullptr};

// ---------------------------------------------------------------------------------------------------------------------
// IGUIElement
// ---------------------------------------------------------------------------------------------------------------------

// 0x552c24 _ZN6glitch3gui11IGUIElementC2ENS0_17EGUI_ELEMENT_TYPEEPNS0_14IGUIEnvironmentEPS1_iNS_4core4rectIiEE (the base-object form; it takes
// the VTT). The clones 0x537724 and 0x54832c are the same body with the type folded to EGUIET_ROOT.
IGUIElement::IGUIElement(EGUI_ELEMENT_TYPE elementType, IGUIEnvironment* env, IGUIElement* parentElement, int elementId,
                         core::rect<int> rectangle)
    : relativeRect(rectangle),
      absoluteRect(rectangle),
      absoluteClippingRect(rectangle),
      desiredRect(rectangle),
      id(elementId),
      environment(env),
      type(elementType) {
    // The members start as the constructor writes them: the last parent rectangle and the scale rectangle empty, the size limits (0,0) and
    // (1,1), visible and enabled, no sub element, no clipping flags, the tab order -1 and the four alignments upper left.
    lastParentRect = core::rect<int>();
    if (parentElement != nullptr) {
        parentElement->addChild(this);  // K 0x14
    }
    if (parent != nullptr) {
        // The absolute rectangles move into the parent's frame and are clipped against the parent's clipping rectangle.
        const core::rect<int>& parentAbsolute = parent->absoluteRect;
        const core::rect<int>& parentClip = parent->absoluteClippingRect;
        const int left = parentAbsolute.UpperLeftCorner.X + absoluteRect.UpperLeftCorner.X;
        const int top = parentAbsolute.UpperLeftCorner.Y + absoluteRect.UpperLeftCorner.Y;
        const int right = parentAbsolute.UpperLeftCorner.X + absoluteRect.LowerRightCorner.X;
        const int bottom = parentAbsolute.UpperLeftCorner.Y + absoluteRect.LowerRightCorner.Y;
        absoluteRect.UpperLeftCorner = {left, top};
        absoluteRect.LowerRightCorner = {right, bottom};
        absoluteClippingRect = absoluteRect;
        lastParentRect = parentAbsolute;
        if (absoluteClippingRect.LowerRightCorner.X > parentClip.LowerRightCorner.X) {
            absoluteClippingRect.LowerRightCorner.X = parentClip.LowerRightCorner.X;
        }
        if (absoluteClippingRect.LowerRightCorner.Y > parentClip.LowerRightCorner.Y) {
            absoluteClippingRect.LowerRightCorner.Y = parentClip.LowerRightCorner.Y;
        }
        if (parentClip.UpperLeftCorner.X > absoluteClippingRect.UpperLeftCorner.X) {
            absoluteClippingRect.UpperLeftCorner.X = parentClip.UpperLeftCorner.X;
        }
        if (parentClip.UpperLeftCorner.Y > absoluteClippingRect.UpperLeftCorner.Y) {
            absoluteClippingRect.UpperLeftCorner.Y = parentClip.UpperLeftCorner.Y;
        }
        if (absoluteClippingRect.LowerRightCorner.Y < absoluteClippingRect.UpperLeftCorner.Y) {
            absoluteClippingRect.UpperLeftCorner.Y = absoluteClippingRect.LowerRightCorner.Y;
        }
        if (absoluteClippingRect.UpperLeftCorner.X > absoluteClippingRect.LowerRightCorner.X) {
            absoluteClippingRect.UpperLeftCorner.X = absoluteClippingRect.LowerRightCorner.X;
        }
    }
}

// 0x539020 _ZN6glitch3gui11IGUIElementD2Ev (D1 forms 0x539bec, 0x539d08, 0x545aac, 0x547b48, 0x548750; D0 skipped)
// Every child loses its parent link and the reference this element held; the strings and the list nodes are freed by the members.
IGUIElement::~IGUIElement() {
    for (IGUIElement* child : children) {
        child->parent = nullptr;
        child->drop();
    }
    children.clear();
}

// 0x534fe8 _ZN6glitch3gui11IGUIElement7onEventERKNS_6SEventE
bool IGUIElement::onEvent(const SEvent& event) {
    if (parent != nullptr) {
        return parent->onEvent(event);  // K 0x08
    }
    return false;
}

// 0x534920 _ZN6glitch3gui11IGUIElement22updateAbsolutePositionEv
// The relative rectangle is moved by the alignments (the parent's size change since the last update, or the scale fraction), the size limits
// are applied to the result (kept in DesiredRect), and the absolute rectangle is that one moved to the parent's origin. The clipping rectangle
// is the absolute one clipped against the parent's (against the topmost ancestor's when NoClip is set, not at all with IgnoreAllClipping).
void IGUIElement::updateAbsolutePosition() {
    core::rect<int> parentAbsolute;  // all zero without a parent
    int clipLeft = 0;
    int clipTop = 0;
    int clipRight = 0;
    int clipBottom = 0;
    int parentWidth = 0;
    int parentHeight = 0;
    if (parent != nullptr) {
        parentAbsolute = parent->absoluteRect;
        const IGUIElement* clipSource = parent;
        if (noClip) {
            while (clipSource->parent != nullptr) {
                clipSource = clipSource->parent;
            }
        }
        clipLeft = clipSource->absoluteClippingRect.UpperLeftCorner.X;
        clipTop = clipSource->absoluteClippingRect.UpperLeftCorner.Y;
        clipRight = clipSource->absoluteClippingRect.LowerRightCorner.X;
        clipBottom = clipSource->absoluteClippingRect.LowerRightCorner.Y;
        parentWidth = parentAbsolute.LowerRightCorner.X - parentAbsolute.UpperLeftCorner.X;
        parentHeight = parentAbsolute.LowerRightCorner.Y - parentAbsolute.UpperLeftCorner.Y;
    }
    const int diffX = parentWidth - (lastParentRect.LowerRightCorner.X - lastParentRect.UpperLeftCorner.X);
    const int diffY = parentHeight - (lastParentRect.LowerRightCorner.Y - lastParentRect.UpperLeftCorner.Y);
    float scaledWidth = 0.0f;
    float scaledHeight = 0.0f;
    if (alignLeft == EGUIA_SCALE || alignRight == EGUIA_SCALE) {
        scaledWidth = static_cast<float>(parentWidth);
    }
    if (alignTop == EGUIA_SCALE || alignBottom == EGUIA_SCALE) {
        scaledHeight = static_cast<float>(parentHeight);
    }

    // Left edge.
    if (alignLeft == EGUIA_CENTER) {
        desiredRect.UpperLeftCorner.X += diffX / 2;
    } else if (alignLeft == EGUIA_SCALE) {
        desiredRect.UpperLeftCorner.X = static_cast<int>(scaledWidth * scaleRect[0]);
    } else if (alignLeft == EGUIA_LOWERRIGHT) {
        desiredRect.UpperLeftCorner.X += diffX;
    }
    // Right edge.
    if (alignRight == EGUIA_CENTER) {
        desiredRect.LowerRightCorner.X += diffX / 2;
    } else if (alignRight == EGUIA_SCALE) {
        desiredRect.LowerRightCorner.X = static_cast<int>(scaledWidth * scaleRect[2]);
    } else if (alignRight == EGUIA_LOWERRIGHT) {
        desiredRect.LowerRightCorner.X += diffX;
    }
    // Top edge.
    if (alignTop == EGUIA_CENTER) {
        desiredRect.UpperLeftCorner.Y += diffY / 2;
    } else if (alignTop == EGUIA_SCALE) {
        desiredRect.UpperLeftCorner.Y = static_cast<int>(scaledHeight * scaleRect[1]);
    } else if (alignTop == EGUIA_LOWERRIGHT) {
        desiredRect.UpperLeftCorner.Y += diffY;
    }
    // Bottom edge.
    if (alignBottom == EGUIA_CENTER) {
        desiredRect.LowerRightCorner.Y += diffY / 2;
    } else if (alignBottom == EGUIA_SCALE) {
        desiredRect.LowerRightCorner.Y = static_cast<int>(scaledHeight * scaleRect[3]);
    } else if (alignBottom == EGUIA_LOWERRIGHT) {
        desiredRect.LowerRightCorner.Y += diffY;
    }

    // The size limits are applied to the aligned rectangle, which is kept as DesiredRect.
    const int width = desiredRect.LowerRightCorner.X - desiredRect.UpperLeftCorner.X;
    const int height = desiredRect.LowerRightCorner.Y - desiredRect.UpperLeftCorner.Y;
    relativeRect.UpperLeftCorner = desiredRect.UpperLeftCorner;
    relativeRect.LowerRightCorner = desiredRect.LowerRightCorner;
    if (minSize.Width > width) {
        relativeRect.LowerRightCorner.X = desiredRect.UpperLeftCorner.X + minSize.Width;
    }
    if (minSize.Height > height) {
        relativeRect.LowerRightCorner.Y = relativeRect.UpperLeftCorner.Y + minSize.Height;
    }
    if (maxSize.Width != 0 && maxSize.Width < width) {
        relativeRect.LowerRightCorner.X = relativeRect.UpperLeftCorner.X + maxSize.Width;
    }
    if (maxSize.Height != 0 && maxSize.Height < height) {
        relativeRect.LowerRightCorner.Y = relativeRect.UpperLeftCorner.Y + maxSize.Height;
    }
    // An inverted rectangle is repaired by swapping the edges.
    if (relativeRect.LowerRightCorner.X < relativeRect.UpperLeftCorner.X) {
        const int swapped = relativeRect.LowerRightCorner.X;
        relativeRect.LowerRightCorner.X = relativeRect.UpperLeftCorner.X;
        relativeRect.UpperLeftCorner.X = swapped;
    }
    if (relativeRect.LowerRightCorner.Y < relativeRect.UpperLeftCorner.Y) {
        const int swapped = relativeRect.LowerRightCorner.Y;
        relativeRect.LowerRightCorner.Y = relativeRect.UpperLeftCorner.Y;
        relativeRect.UpperLeftCorner.Y = swapped;
    }

    const int absLeft = parentAbsolute.UpperLeftCorner.X + relativeRect.UpperLeftCorner.X;
    const int absRight = parentAbsolute.UpperLeftCorner.X + relativeRect.LowerRightCorner.X;
    const int absTop = parentAbsolute.UpperLeftCorner.Y + relativeRect.UpperLeftCorner.Y;
    const int absBottom = parentAbsolute.UpperLeftCorner.Y + relativeRect.LowerRightCorner.Y;
    if (parent == nullptr) {
        // Without a parent the clipping limits are the rectangle itself.
        clipLeft = absLeft;
        clipRight = absRight;
        clipTop = absTop;
        clipBottom = absBottom;
    }
    absoluteRect.UpperLeftCorner = {absLeft, absTop};
    absoluteRect.LowerRightCorner = {absRight, absBottom};
    absoluteClippingRect = absoluteRect;
    if (!ignoreAllClipping) {
        if (absRight > clipRight) {
            absoluteClippingRect.LowerRightCorner.X = clipRight;
        }
        if (clipBottom < absBottom) {
            absoluteClippingRect.LowerRightCorner.Y = clipBottom;
        }
        if (clipLeft > absoluteClippingRect.UpperLeftCorner.X) {
            absoluteClippingRect.UpperLeftCorner.X = clipLeft;
        }
        if (clipTop > absoluteClippingRect.UpperLeftCorner.Y) {
            absoluteClippingRect.UpperLeftCorner.Y = clipTop;
        }
        if (absoluteClippingRect.UpperLeftCorner.Y > absoluteClippingRect.LowerRightCorner.Y) {
            absoluteClippingRect.UpperLeftCorner.Y = absoluteClippingRect.LowerRightCorner.Y;
        }
        if (absoluteClippingRect.UpperLeftCorner.X > absoluteClippingRect.LowerRightCorner.X) {
            absoluteClippingRect.UpperLeftCorner.X = absoluteClippingRect.LowerRightCorner.X;
        }
    }
    lastParentRect = parentAbsolute;
    for (IGUIElement* child : children) {
        child->updateAbsolutePosition();  // K 0x0c
    }
}

// 0x534e48 _ZNK6glitch3gui11IGUIElement13isPointInsideERKNS_4core10position2dIiEE
bool IGUIElement::isPointInside(const core::position2d<int>& point) const {
    return absoluteClippingRect.UpperLeftCorner.X <= point.X && absoluteClippingRect.UpperLeftCorner.Y <= point.Y &&
           point.X <= absoluteClippingRect.LowerRightCorner.X && point.Y <= absoluteClippingRect.LowerRightCorner.Y;
}

// 0x535dec _ZN6glitch3gui11IGUIElement8addChildEPS1_
void IGUIElement::addChild(IGUIElement* child) {
    if (child != nullptr) {
        ++child->referenceCounter;
        child->remove();  // K 0x1c: leaves the old parent
        child->lastParentRect = absoluteRect;
        child->parent = this;
        children.pushBack(child);
    }
}

// 0x535d10 _ZN6glitch3gui11IGUIElement11removeChildEPS1_
void IGUIElement::removeChild(IGUIElement* child) {
    for (auto it = children.begin(); it != children.end(); ++it) {
        if (*it == child) {
            child->parent = nullptr;
            child->drop();
            children.erase(child);
            return;
        }
    }
}

// 0x534e90 _ZN6glitch3gui11IGUIElement6removeEv
void IGUIElement::remove() {
    if (parent != nullptr) {
        parent->removeChild(this);  // K 0x18
    }
}

// 0x534eb8 _ZN6glitch3gui11IGUIElement4drawEv
void IGUIElement::draw() {
    if (visible) {
        for (IGUIElement* child : children) {
            child->draw();  // K 0x20
        }
    }
}

// 0x534ef8 _ZN6glitch3gui11IGUIElement12OnPostRenderEj
void IGUIElement::OnPostRender(std::uint32_t timeMs) {
    if (visible) {
        for (IGUIElement* child : children) {
            child->OnPostRender(timeMs);  // K 0x24
        }
    }
}

// 0x534f40 _ZN6glitch3gui11IGUIElement4moveENS_4core10position2dIiEE
void IGUIElement::move(core::position2d<int> offset) {
    core::rect<int> moved;
    moved.UpperLeftCorner = {desiredRect.UpperLeftCorner.X + offset.X, desiredRect.UpperLeftCorner.Y + offset.Y};
    moved.LowerRightCorner = {desiredRect.LowerRightCorner.X + offset.X, desiredRect.LowerRightCorner.Y + offset.Y};
    setRelativePosition(moved);
}

// 0x534f90 _ZNK6glitch3gui11IGUIElement9isVisibleEv
bool IGUIElement::isVisible() const {
    return visible;
}

// 0x534f98 _ZN6glitch3gui11IGUIElement10setVisibleEb
void IGUIElement::setVisible(bool value) {
    visible = value;
}

// 0x534fa0 _ZNK6glitch3gui11IGUIElement12isSubElementEv
bool IGUIElement::isSubElement() const {
    return subElement;
}

// 0x534fa8 _ZN6glitch3gui11IGUIElement13setSubElementEb
void IGUIElement::setSubElement(bool value) {
    subElement = value;
}

// 0x534fb0 _ZNK6glitch3gui11IGUIElement9isEnabledEv
bool IGUIElement::isEnabled() const {
    return enabled;
}

// 0x534fb8 _ZN6glitch3gui11IGUIElement10setEnabledEb
void IGUIElement::setEnabled(bool value) {
    enabled = value;
}

// 0x5362c8 _ZN6glitch3gui11IGUIElement7setTextEPKw
void IGUIElement::setText(const wchar_t* newText) {
    text.assign(newText, newText + std::wcslen(newText));
}

// 0x534fc0 _ZNK6glitch3gui11IGUIElement7getTextEv
const wchar_t* IGUIElement::getText() const {
    return text.c_str();
}

// 0x538234 _ZN6glitch3gui11IGUIElement14setToolTipTextEPKw
void IGUIElement::setToolTipText(const wchar_t* newText) {
    toolTipText.assign(newText, newText + std::wcslen(newText));
}

// 0x534fc8 _ZNK6glitch3gui11IGUIElement14getToolTipTextEv
const std::wstring& IGUIElement::getToolTipText() const {
    return toolTipText;
}

// 0x534fd0 _ZNK6glitch3gui11IGUIElement5getIDEv
int IGUIElement::getID() const {
    return id;
}

// 0x534fd8 _ZN6glitch3gui11IGUIElement5setIDEi
void IGUIElement::setID(int newId) {
    id = newId;
}

// 0x534fe0 _ZNK6glitch3gui11IGUIElement7getNameEv
const char* IGUIElement::getName() const {
    return name.c_str();
}

// 0x539ec8 _ZN6glitch3gui11IGUIElement7setNameEPKc
void IGUIElement::setName(const char* newName) {
    name.assign(newName);
}

// 0x535d70 _ZN6glitch3gui11IGUIElement12bringToFrontEPS1_
bool IGUIElement::bringToFront(IGUIElement* child) {
    if (!children.erase(child)) {
        return false;
    }
    children.pushBack(child);
    return true;
}

// 0x535014 _ZNK6glitch3gui11IGUIElement11getChildrenEv
const IGUIElement::ElementList& IGUIElement::getChildren() const {
    return children;
}

// 0x53501c _ZNK6glitch3gui11IGUIElement14getElementFromIdEib
IGUIElement* IGUIElement::getElementFromId(int elementId, bool searchChildren) const {
    IGUIElement* found = nullptr;
    for (IGUIElement* child : children) {
        if (child->getID() == elementId) {  // K 0x54
            return child;
        }
        if (searchChildren) {
            found = child->getElementFromId(elementId, true);  // K 0x6c
        }
        if (found != nullptr) {
            return found;
        }
    }
    return found;
}

// 0x5350a4 _ZNK6glitch3gui11IGUIElement11getTypeNameEv
// The table has no range check in the original: the types ELEMENT (22) and ROOT (23) read the entries that follow it in the data segment (the
// terminating null, then the first entries of GUIAlignmentNames).
const char* IGUIElement::getTypeName() const {
    if (type < 23) {
        return GUIElementTypeNames[type];
    }
    const std::uint32_t next = type - 23;
    return next < 5 ? GUIAlignmentNames[next] : nullptr;
}

// 0x5350bc _ZNK6glitch3gui11IGUIElement19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void IGUIElement::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) const {
    attributes->addInt("Id", id, false);                              // K 0x4c
    attributes->addString("Name", getName(), false);                  // K 0x7c, getName K 0x5c
    attributes->addString("Caption", getText(), false);               // K 0x94, getText K 0x48
    attributes->addRect("Rect", desiredRect, false);                 // K 0x1f0
    attributes->addPosition2d("MinSize", core::position2d<int>{minSize.Width, minSize.Height}, false);  // K 0x1d8
    attributes->addPosition2d("MaxSize", core::position2d<int>{maxSize.Width, maxSize.Height}, false);
    attributes->addBool("NoClip", noClip, false);                     // K 0xd8
    attributes->addBool("IgnoreAllClipping", ignoreAllClipping, false);
    attributes->addEnum("LeftAlign", static_cast<int>(alignLeft), GUIAlignmentNames, false);       // K 0xf4
    attributes->addEnum("RightAlign", static_cast<int>(alignRight), GUIAlignmentNames, false);
    attributes->addEnum("TopAlign", static_cast<int>(alignTop), GUIAlignmentNames, false);
    attributes->addEnum("BottomAlign", static_cast<int>(alignBottom), GUIAlignmentNames, false);
    attributes->addBool("Visible", visible, false);
    attributes->addBool("Enabled", enabled, false);
    attributes->addBool("TabStop", tabStop, false);
    attributes->addBool("TabGroup", tabGroup, false);
    attributes->addInt("TabOrder", tabOrder, false);
}

// 0x539838 _ZN6glitch3gui11IGUIElement21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void IGUIElement::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) {
    setID(attributes->getInt("Id"));                                  // K 0x58, setID K 0x58
    setName(attributes->getString("Name").c_str());                   // K 0x84, setName K 0x60
    setText(attributes->getStringW("Caption").c_str());               // K 0x9c, setText K 0x44
    setVisible(attributes->getBool("Visible"));                       // K 0xe4, setVisible K 0x30
    setEnabled(attributes->getBool("Enabled"));                       // setEnabled K 0x40
    tabStop = attributes->getBool("TabStop");
    tabGroup = attributes->getBool("TabGroup");
    tabOrder = attributes->getInt("TabOrder");
    const core::position2d<int> maxLimit = attributes->getPosition2d("MaxSize");  // K 0x1e4
    maxSize = {maxLimit.X, maxLimit.Y};
    updateAbsolutePosition();                                         // K 0x0c
    const core::position2d<int> minLimit = attributes->getPosition2d("MinSize");
    minSize.Width = minLimit.X <= 0 ? 1 : minLimit.X;
    minSize.Height = minLimit.Y <= 0 ? 1 : minLimit.Y;
    updateAbsolutePosition();
    noClip = attributes->getBool("NoClip");
    ignoreAllClipping = attributes->getBool("IgnoreAllClipping");
    const int left = attributes->getEnum("LeftAlign", GUIAlignmentNames);        // K 0x100
    const int right = attributes->getEnum("RightAlign", GUIAlignmentNames);
    const int top = attributes->getEnum("TopAlign", GUIAlignmentNames);
    const int bottom = attributes->getEnum("BottomAlign", GUIAlignmentNames);
    setAlignment(static_cast<EGUI_ALIGNMENT>(left), static_cast<EGUI_ALIGNMENT>(right), static_cast<EGUI_ALIGNMENT>(top),
                 static_cast<EGUI_ALIGNMENT>(bottom));
    setRelativePosition(attributes->getRect("Rect"));                 // K 0x1fc
}

// 0x534dd0 _ZN6glitch3gui11IGUIElement17getElementFromPointERKNS_4core10position2dIiEE
// The children are tried last to first (the last drawn is on top); an invisible element finds nothing, itself included.
IGUIElement* IGUIElement::getElementFromPoint(const core::position2d<int>& point) {
    if (!visible) {
        return nullptr;
    }
    // The list is walked backwards: the node before the sentinel is the last child.
    scene::SListLink* sentinel = &children.head;
    for (scene::SListLink* link = sentinel->prev; link != sentinel; link = link->prev) {
        IGUIElement* target = static_cast<scene::SListNode<IGUIElement*>*>(link)->value->getElementFromPoint(point);
        if (target != nullptr) {
            return target;
        }
    }
    if (visible && isPointInside(point)) {  // K 0x10
        return this;
    }
    return nullptr;
}

// 0x534740 _ZN6glitch3gui11IGUIElement19setRelativePositionERKNS_4core4rectIiEE
void IGUIElement::setRelativePosition(const core::rect<int>& position) {
    if (parent != nullptr) {
        const float parentWidth = static_cast<float>(parent->absoluteRect.LowerRightCorner.X - parent->absoluteRect.UpperLeftCorner.X);
        const float parentHeight = static_cast<float>(parent->absoluteRect.LowerRightCorner.Y - parent->absoluteRect.UpperLeftCorner.Y);
        if (alignLeft == EGUIA_SCALE) {
            scaleRect[0] = static_cast<float>(position.UpperLeftCorner.X) / parentWidth;
        }
        if (alignRight == EGUIA_SCALE) {
            scaleRect[2] = static_cast<float>(position.LowerRightCorner.X) / parentWidth;
        }
        if (alignTop == EGUIA_SCALE) {
            scaleRect[1] = static_cast<float>(position.UpperLeftCorner.Y) / parentHeight;
        }
        if (alignBottom == EGUIA_SCALE) {
            scaleRect[3] = static_cast<float>(position.LowerRightCorner.Y) / parentHeight;
        }
    }
    desiredRect = position;
    updateAbsolutePosition();  // K 0x0c
}

// 0x534840 _ZN6glitch3gui11IGUIElement12setAlignmentENS0_14EGUI_ALIGNMENTES2_S2_S2_
void IGUIElement::setAlignment(EGUI_ALIGNMENT left, EGUI_ALIGNMENT right, EGUI_ALIGNMENT top, EGUI_ALIGNMENT bottom) {
    alignTop = top;
    alignBottom = bottom;
    alignLeft = left;
    alignRight = right;
    if (parent != nullptr) {
        const float parentWidth = static_cast<float>(parent->absoluteRect.LowerRightCorner.X - parent->absoluteRect.UpperLeftCorner.X);
        const float parentHeight = static_cast<float>(parent->absoluteRect.LowerRightCorner.Y - parent->absoluteRect.UpperLeftCorner.Y);
        if (left == EGUIA_SCALE) {
            scaleRect[0] = static_cast<float>(desiredRect.UpperLeftCorner.X) / parentWidth;
        }
        if (right == EGUIA_SCALE) {
            scaleRect[2] = static_cast<float>(desiredRect.LowerRightCorner.X) / parentWidth;
        }
        if (alignTop == EGUIA_SCALE) {
            scaleRect[1] = static_cast<float>(desiredRect.UpperLeftCorner.Y) / parentHeight;
        }
        if (alignBottom == EGUIA_SCALE) {
            scaleRect[3] = static_cast<float>(desiredRect.LowerRightCorner.Y) / parentHeight;
        }
    }
}

// 0x542840 _ZNK6glitch3gui11IGUIElement14getNextElementEibbRPS1_S3_b (the clones 0x5379b4, 0x549838, 0x55eb7c, 0x6a5f3c, 0x6a7714, 0x6ab18c,
// 0x6b0194 have the arguments folded in)
// Looks, in this element's subtree, for the tab stop whose order is `startOrder` one step forward (or back) and reports it in `closest`
// (returning true); otherwise `closest` holds the nearest stop in that direction and `first` the farthest, over the stops of the same group
// kind. Invisible elements and their subtrees are skipped unless `includeInvisible`.
bool IGUIElement::getNextElement(int startOrder, bool reverse, bool group, IGUIElement*& first, IGUIElement*& closest,
                                 bool includeInvisible) const {
    int wanted = startOrder + (reverse ? -1 : 1);
    if (wanted == -2) {
        wanted = 0x40000000;
    }
    for (IGUIElement* child : children) {
        if ((child->isVisible() || includeInvisible) && (group || !child->tabGroup)) {  // isVisible K 0x2c
            if (child->tabStop && child->tabGroup == group) {
                const int currentOrder = child->tabOrder;
                if (currentOrder == wanted) {
                    closest = child;
                    return true;
                }
                if (closest != nullptr) {
                    const int closestOrder = closest->tabOrder;
                    if ((reverse && currentOrder > closestOrder && currentOrder < startOrder) ||
                        (!reverse && currentOrder < closestOrder && currentOrder > startOrder)) {
                        closest = child;
                    }
                } else if ((reverse && currentOrder < startOrder) || (!reverse && currentOrder > startOrder)) {
                    closest = child;
                }
                if (first != nullptr) {
                    const int firstOrder = first->tabOrder;
                    if ((reverse && firstOrder < currentOrder) || (!reverse && firstOrder > currentOrder)) {
                        first = child;
                    }
                } else {
                    first = child;
                }
            }
            if (child->getNextElement(startOrder, reverse, group, first, closest, includeInvisible)) {
                return true;
            }
        }
    }
    return false;
}

// 0x542994 _ZN6glitch3gui11IGUIElement11setTabOrderEi (clones 0x54998c, 0x55ecd0, 0x6a6090, 0x6a7868, 0x6ab2e0, 0x6b02e8)
// A negative index numbers the element after the highest tab order of its group (the nearest ancestor that is a tab group, found from the
// element itself or, when it is one, from the root of its tree).
void IGUIElement::setTabOrder(int index) {
    if (index >= 0) {
        tabOrder = index;
        return;
    }
    tabOrder = 0;
    IGUIElement* element = getTabGroup();
    while (tabGroup && element != nullptr && element->parent != nullptr) {
        element = element->parent;
    }
    IGUIElement* first = nullptr;
    IGUIElement* closest = nullptr;
    if (element != nullptr) {
        element->getNextElement(-1, true, tabGroup, first, closest, true);
        if (first != nullptr) {
            tabOrder = first->tabOrder + 1;
        }
    }
}

}  // namespace glitch::gui
