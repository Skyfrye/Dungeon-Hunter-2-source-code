// Bodies of glitch::gui::IGUITab, CGUITab, IGUITabControl and CGUITabControl (canonical classes: gui/CGUITabControl.hpp). This file replaces
// their bodies in gui_elements.cpp, gui_simple_accessors.cpp and recon/slice_31.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUITabControl.hpp"

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

// ---------------------------------------------------------------------------------------------------------------------
// IGUITab / CGUITab
// ---------------------------------------------------------------------------------------------------------------------

// 0x5537cc _ZN6glitch3gui7IGUITabC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUITab::IGUITab(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_TAB, environment, parent, id, rectangle) {}

// 0x553f30 _ZN6glitch3gui7IGUITabD1Ev (D0 0x554598 skipped)
IGUITab::~IGUITab() = default;

// 0x553850 _ZN6glitch3gui6CGUITabC1EiPNS0_15IGUIEnvironmentEPNS0_11IGUIElementERKNS_4core4rectIiEEi (C2 0x553994)
CGUITab::CGUITab(int tabNumber, IGUIEnvironment* environment, IGUIElement* parent, const core::rect<int>& rectangle, int id)
    : IGUITab(environment, parent, id, rectangle) {
    number = tabNumber;
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin != nullptr) {
        textColor = skin->getColor(EGDC_BUTTON_TEXT);
    } else {
        textColor.color = 0xFF000000u;
    }
}

// 0x553fa4 _ZN6glitch3gui6CGUITabD1Ev (D2 0x554034 skipped)
CGUITab::~CGUITab() = default;

// 0x552040 _ZNK6glitch3gui6CGUITab9getNumberEv
int CGUITab::getNumber() const {
    return number;
}

// 0x552048 _ZN6glitch3gui6CGUITab9setNumberEi
void CGUITab::setNumber(int tabNumber) {
    number = tabNumber;
}

// 0x552050 _ZN6glitch3gui6CGUITab17setDrawBackgroundEb
void CGUITab::setDrawBackground(bool draw) {
    drawBackground = draw;
}

// 0x5520f0 _ZNK6glitch3gui6CGUITab19isDrawingBackgroundEv
bool CGUITab::isDrawingBackground() const {
    return drawBackground;
}

// 0x552058 _ZN6glitch3gui6CGUITab18setBackgroundColorENS_5video6SColorE
void CGUITab::setBackgroundColor(video::SColor color) {
    backColor = color;
}

// 0x5520f8 _ZNK6glitch3gui6CGUITab18getBackgroundColorEv
video::SColor CGUITab::getBackgroundColor() const {
    return backColor;
}

// 0x552080 _ZN6glitch3gui6CGUITab12setTextColorENS_5video6SColorE
void CGUITab::setTextColor(video::SColor color) {
    textColor = color;
}

// 0x5520a8 _ZNK6glitch3gui6CGUITab12getTextColorEv
video::SColor CGUITab::getTextColor() const {
    return textColor;
}

// 0x554690 _ZN6glitch3gui6CGUITab4drawEv
void CGUITab::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin != nullptr && drawBackground) {
        skin->draw2DRectangle(this, backColor, absoluteRect, &absoluteClippingRect);  // K 0x64
    }
    IGUIElement::draw();
}

// 0x552140 _ZNK6glitch3gui6CGUITab19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUITab::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addInt("TabNumber", number, false);             // K 0x4c
    attributes->addBool("DrawBackground", drawBackground, false);  // K 0xd8
    attributes->addColor("BackColor", backColor, false);        // K 0x118
    attributes->addColor("TextColor", textColor, false);
}

// 0x553db0 _ZN6glitch3gui6CGUITab21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// A tab read from a file registers itself with a tab control parent and becomes its active tab when it is visible.
void CGUITab::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    setNumber(attributes->getInt("TabNumber"));                 // K 0x98
    setDrawBackground(attributes->getBool("DrawBackground"));   // K 0x80
    setBackgroundColor(attributes->getColor("BackColor"));      // K 0x84
    setTextColor(attributes->getColor("TextColor"));            // K 0x90
    if (parent != nullptr && parent->type == EGUIET_TAB_CONTROL) {
        CGUITabControl* control = static_cast<CGUITabControl*>(parent);
        control->addTab(this);       // K 0xac
        if (isVisible()) {           // K 0x2c
            control->setActiveTab(this);  // K 0x8c
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// IGUITabControl / CGUITabControl
// ---------------------------------------------------------------------------------------------------------------------

// 0x552ec0 _ZN6glitch3gui14IGUITabControlC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUITabControl::IGUITabControl(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_TAB_CONTROL, environment, parent, id, rectangle) {}

// 0x554070 _ZN6glitch3gui14IGUITabControlD1Ev (D0 0x554614 skipped)
IGUITabControl::~IGUITabControl() = default;

// 0x552f44 _ZN6glitch3gui14CGUITabControlC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementERKNS_4core4rectIiEEbbi (C2 0x5533b0)
CGUITabControl::CGUITabControl(IGUIEnvironment* environmentValue, IGUIElement* parentElement, const core::rect<int>& rectangle,
                               bool fillBackgroundValue, bool borderValue, int id)
    : IGUITabControl(environmentValue, parentElement, id, rectangle) {
    border = borderValue;
    fillBackground = fillBackgroundValue;
    IGUISkin* skin = environment->getSkin();  // K 0x38
    video::SColor color{0xFFFFFFFFu};
    IGUISpriteBank* sprites = nullptr;
    tabHeight = 32;
    if (skin != nullptr) {
        sprites = skin->getSpriteBank();            // K 0x30
        color = skin->getColor(EGDC_WINDOW_SYMBOL);  // K 0x10
        tabHeight = skin->getSize(EGDS_BUTTON_HEIGHT) + 2;
    }
    auto makeScrollButton = [&](EGUI_DEFAULT_ICON icon) {
        IGUIButton* button = environment->addButton(detail::makeRect(0, 0, 10, 10), this, -1, nullptr, nullptr);  // K 0x78
        if (button != nullptr) {
            button->setSpriteBank(sprites);                                                          // K 0x90
            button->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(icon)), color, false);    // K 0x94
            button->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(icon)), color, false);
            button->setVisible(false);       // K 0x30
            button->setSubElement(true);     // K 0x38
            button->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
            button->setOverrideFont(environment->getBuiltInFont());  // K 0x7c, getBuiltInFont K 0x68
            ++button->referenceCounter;
        }
        return button;
    };
    upButton = makeScrollButton(EGDI_CURSOR_LEFT);
    downButton = makeScrollButton(EGDI_CURSOR_RIGHT);
    setTabVerticalAlignment(EGUIA_UPPERLEFT);
}

// 0x5540e4 _ZN6glitch3gui14CGUITabControlD1Ev (0x5541f4 and 0x554210 are the other forms)
CGUITabControl::~CGUITabControl() {
    for (CGUITab* tab : tabs) {
        if (tab != nullptr) {
            tab->drop();
        }
    }
    if (upButton != nullptr) {
        upButton->drop();
    }
    if (downButton != nullptr) {
        downButton->drop();
    }
}

// 0x552214 _ZNK6glitch3gui14CGUITabControl11getTabCountEv
int CGUITabControl::getTabCount() const {
    return static_cast<int>(tabs.size());
}

// 0x552228 _ZNK6glitch3gui14CGUITabControl6getTabEi
IGUITab* CGUITabControl::getTab(int idx) const {
    if (static_cast<unsigned>(idx) < tabs.size()) {
        return tabs[idx];
    }
    return nullptr;
}

// 0x552808 _ZNK6glitch3gui14CGUITabControl12getActiveTabEv
int CGUITabControl::getActiveTab() const {
    return activeTab;
}

// 0x55250c _ZNK6glitch3gui14CGUITabControl12getTabHeightEv
int CGUITabControl::getTabHeight() const {
    return tabHeight;
}

// 0x552514 _ZNK6glitch3gui14CGUITabControl16getTabExtraWidthEv
int CGUITabControl::getTabExtraWidth() const {
    return tabExtraWidth;
}

// 0x552800 _ZNK6glitch3gui14CGUITabControl24getTabVerticalAlignmentEv
EGUI_ALIGNMENT CGUITabControl::getTabVerticalAlignment() const {
    return verticalAlignment;
}

// 0x5525bc _ZN6glitch3gui14CGUITabControl16setTabExtraWidthEi
void CGUITabControl::setTabExtraWidth(int extraWidth) {
    tabExtraWidth = extraWidth < 0 ? 0 : extraWidth;
    recalculateScrollBar();
}

// 0x5525c8 _ZN6glitch3gui14CGUITabControl12setTabHeightEi
void CGUITabControl::setTabHeight(int height) {
    if (height < 0) {
        height = 0;
    }
    tabMaxWidth = 2 * height;
    tabHeight = height;
    recalculateScrollBar();
}

// 0x55263c _ZN6glitch3gui14CGUITabControl24setTabVerticalAlignmentENS0_14EGUI_ALIGNMENTE
// The scroll buttons sit at the right end of the tab row (the upper or the lower edge); their size is the skin's window button width,
// limited to the tab height.
void CGUITabControl::setTabVerticalAlignment(EGUI_ALIGNMENT alignment) {
    verticalAlignment = alignment;
    IGUISkin* skin = environment->getSkin();  // K 0x38
    int maxWidth;
    int buttonStep;
    int buttonOffset;
    int buttonSize;
    if (skin != nullptr) {
        const int windowButton = skin->getSize(EGDS_WINDOW_BUTTON_WIDTH);  // K 0x18
        if (windowButton > tabHeight) {
            maxWidth = static_cast<int>(static_cast<float>(tabHeight) * 2.5f);
            buttonStep = tabHeight + 1;
            buttonOffset = tabHeight / -2;
            buttonSize = tabHeight;
        } else {
            maxWidth = static_cast<int>(static_cast<float>(windowButton) * 2.5f);
            buttonStep = windowButton + 1;
            buttonOffset = windowButton / -2;
            buttonSize = windowButton;
        }
    } else {
        buttonStep = 17;
        buttonOffset = -8;
        maxWidth = 40;
        buttonSize = 16;
    }
    const int left = relativeRect.LowerRightCorner.X - 1 - relativeRect.UpperLeftCorner.X - maxWidth;
    tabMaxWidth = maxWidth;
    int top;
    if (verticalAlignment != EGUIA_UPPERLEFT) {
        top = tabHeight / -2 - relativeRect.UpperLeftCorner.Y + relativeRect.LowerRightCorner.Y + buttonOffset;
        upButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT);
        downButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT);
    } else {
        top = buttonOffset + tabHeight / 2;
        upButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
        downButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
    }
    upButton->setRelativePosition(detail::makeRect(left, top, left + buttonSize, top + buttonSize));
    downButton->setRelativePosition(detail::makeRect(left + buttonStep, top, left + buttonStep + buttonSize, top + buttonSize));
    recalculateScrollBar();
}

// 0x552244 _ZNK6glitch3gui14CGUITabControl17needScrollControlEib
bool CGUITabControl::needScrollControl(int startIndex, bool withScrollControl) const {
    if (startIndex >= static_cast<int>(tabs.size())) {
        startIndex -= 1;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return false;
    }
    IGUIFont* font = skin->getFont(EGDF_DEFAULT);  // K 0x28
    if (tabs.empty() || font == nullptr) {
        return false;
    }
    const int first = startIndex < 0 ? 0 : startIndex;
    int position = absoluteRect.UpperLeftCorner.X + 2;
    for (int i = first; i < static_cast<int>(tabs.size()); ++i) {
        const wchar_t* text = tabs[i] != nullptr ? tabs[i]->getText() : nullptr;  // K 0x48
        position += tabExtraWidth + font->getDimension(text).Width;                // K 0x1c
        if (withScrollControl) {
            if (position > absoluteRect.LowerRightCorner.X - tabMaxWidth) {
                return true;
            }
        } else if (position > absoluteRect.LowerRightCorner.X) {
            return true;
        }
    }
    return false;
}

// 0x55251c _ZN6glitch3gui14CGUITabControl18recalculateScrollBarEv
void CGUITabControl::recalculateScrollBar() {
    scrollControl = needScrollControl(0, false) || currentScrollTabIndex > 0;
    upButton->setVisible(scrollControl);    // K 0x30
    downButton->setVisible(scrollControl);
    bringToFront(upButton);                 // K 0x64
    bringToFront(downButton);
}

// 0x5525dc _ZN6glitch3gui14CGUITabControl10scrollLeftEv
void CGUITabControl::scrollLeft() {
    if (currentScrollTabIndex > 0) {
        --currentScrollTabIndex;
    }
    recalculateScrollBar();
}

// 0x5525f0 _ZN6glitch3gui14CGUITabControl11scrollRightEv
void CGUITabControl::scrollRight() {
    if (currentScrollTabIndex < static_cast<int>(tabs.size()) - 1 && needScrollControl(currentScrollTabIndex, true)) {
        ++currentScrollTabIndex;
    }
    recalculateScrollBar();
}

// 0x552378 _ZN6glitch3gui14CGUITabControl9selectTabENS_4core10position2dIiEE
bool CGUITabControl::selectTab(core::position2d<int> point) {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUIFont* font = skin->getFont(EGDF_DEFAULT);
    int top;
    int bottom;
    if (verticalAlignment == EGUIA_UPPERLEFT) {
        top = absoluteRect.UpperLeftCorner.Y + 2;
        bottom = top + tabHeight;
    } else {
        bottom = absoluteRect.LowerRightCorner.Y;
        top = bottom - tabHeight;
    }
    if (absoluteRect.UpperLeftCorner.X <= point.X && top <= point.Y && absoluteRect.LowerRightCorner.X >= point.X && bottom >= point.Y) {
        int position = absoluteRect.UpperLeftCorner.X + 2;
        for (int i = currentScrollTabIndex; i < static_cast<int>(tabs.size()); ++i) {
            const wchar_t* text = tabs[i] != nullptr ? tabs[i]->getText() : nullptr;
            const int width = font->getDimension(text).Width;
            if (scrollControl && absoluteRect.LowerRightCorner.X < position) {
                break;
            }
            if (position <= point.X && top <= point.Y && tabExtraWidth + width + position >= point.X && bottom >= point.Y) {
                setActiveTab(i);  // K 0x88
                return true;
            }
            position += tabExtraWidth + width;
        }
    }
    return false;
}

// 0x552810 _ZN6glitch3gui14CGUITabControl12setActiveTabEi
bool CGUITabControl::setActiveTab(int idx) {
    if (static_cast<unsigned>(idx) >= tabs.size()) {
        return false;
    }
    const int previous = activeTab;
    activeTab = idx;
    for (std::size_t i = 0; i < tabs.size(); ++i) {
        if (tabs[i] != nullptr) {
            tabs[i]->setVisible(activeTab == static_cast<int>(i));  // K 0x30
        }
    }
    if (idx != previous && parent != nullptr) {
        SEvent changed;
        changed.EventType = EET_GUI_EVENT;
        changed.GUIEvent.Caller = this;
        changed.GUIEvent.Element = nullptr;
        changed.GUIEvent.EventType = EGET_TAB_CHANGED;
        parent->onEvent(changed);
    }
    return true;
}

// 0x5528d4 _ZN6glitch3gui14CGUITabControl12setActiveTabEPNS0_11IGUIElementE
bool CGUITabControl::setActiveTab(IGUIElement* tab) {
    for (std::size_t i = 0; i < tabs.size(); ++i) {
        if (tabs[i] == tab) {
            return setActiveTab(static_cast<int>(i));
        }
    }
    return false;
}

// 0x552944 _ZN6glitch3gui14CGUITabControl22updateAbsolutePositionEv
void CGUITabControl::updateAbsolutePosition() {
    IGUIElement::updateAbsolutePosition();
    recalculateScrollBar();
}

// 0x552a60 _ZN6glitch3gui14CGUITabControl11removeChildEPNS0_11IGUIElementE
void CGUITabControl::removeChild(IGUIElement* child) {
    bool wasTab = false;
    for (std::size_t i = 0; i < tabs.size();) {
        if (tabs[i] == child) {
            tabs[i]->drop();
            tabs.erase(tabs.begin() + static_cast<std::ptrdiff_t>(i));
            wasTab = true;
        } else {
            ++i;
        }
    }
    if (wasTab) {
        for (std::size_t i = 0; i < tabs.size(); ++i) {
            if (tabs[i] != nullptr) {
                tabs[i]->setNumber(static_cast<int>(i));  // K 0x98
            }
        }
    }
    IGUIElement::removeChild(child);
    recalculateScrollBar();
}

// 0x5543ec _ZN6glitch3gui14CGUITabControl6addTabEPKwi
IGUITab* CGUITabControl::addTab(const wchar_t* caption, int id) {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return nullptr;
    }
    core::rect<int> rectangle;
    if (verticalAlignment != EGUIA_UPPERLEFT) {
        rectangle = detail::makeRect(1, 1, detail::rectWidth(absoluteRect) - 1, detail::rectHeight(absoluteRect) - tabHeight);
    } else {
        rectangle = detail::makeRect(1, tabHeight, detail::rectWidth(absoluteRect) - 1, detail::rectHeight(absoluteRect) - 1);
    }
    CGUITab* tab = new CGUITab(static_cast<int>(tabs.size()), environment, this, rectangle, id);
    tab->setText(caption);  // K 0x44
    tab->setAlignment(EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT);
    tab->setVisible(false);
    tabs.push_back(tab);
    if (activeTab == -1) {
        activeTab = 0;
        tab->setVisible(true);
    }
    recalculateScrollBar();
    return tab;
}

// 0x553a94 _ZN6glitch3gui14CGUITabControl6addTabEPNS0_7CGUITabE
void CGUITabControl::addTab(CGUITab* tab) {
    if (tab == nullptr) {
        return;
    }
    for (CGUITab* existing : tabs) {
        if (existing == tab) {
            return;
        }
    }
    ++tab->referenceCounter;
    if (tab->getNumber() == -1) {
        tab->setNumber(static_cast<int>(tabs.size()));  // K 0x98
    }
    while (tab->getNumber() >= static_cast<int>(tabs.size())) {
        tabs.push_back(nullptr);
    }
    if (tabs[tab->getNumber()] != nullptr) {
        tabs.push_back(tabs[tab->getNumber()]);
        tabs.back()->setNumber(static_cast<int>(tabs.size()));
    }
    tabs[tab->getNumber()] = tab;
    if (activeTab == -1) {
        activeTab = tab->getNumber();
    }
    if (tab->getNumber() == activeTab) {
        setActiveTab(tab->getNumber());
    }
}

// 0x55295c _ZNK6glitch3gui14CGUITabControl19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUITabControl::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addInt("ActiveTab", activeTab, false);              // K 0x4c
    attributes->addBool("Border", border, false);                   // K 0xd8
    attributes->addBool("FillBackground", fillBackground, false);
    attributes->addInt("TabHeight", tabHeight, false);
    attributes->addEnum("TabVerticalAlignment", static_cast<int>(verticalAlignment), GUIAlignmentNames, false);  // K 0xf4
}

// 0x553ca4 _ZN6glitch3gui14CGUITabControl21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUITabControl::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    border = attributes->getBool("Border");
    fillBackground = attributes->getBool("FillBackground");
    activeTab = -1;
    setTabHeight(attributes->getInt("TabHeight"));  // K 0x94
    IGUIElement::deserializeAttributes(attributes, options);
    setActiveTab(attributes->getInt("ActiveTab"));  // K 0x88
    setTabVerticalAlignment(static_cast<EGUI_ALIGNMENT>(attributes->getEnum("TabVerticalAlignment", GUIAlignmentNames)));  // K 0x9c
}

// 0x554310 _ZN6glitch3gui14CGUITabControl7onEventERKNS_6SEventE
bool CGUITabControl::onEvent(const SEvent& event) {
    if (enabled) {
        if (event.EventType == EET_MOUSE_INPUT_EVENT) {
            if (event.MouseInput.Event == EMIE_LMOUSE_PRESSED_DOWN) {
                return true;
            }
            if (event.MouseInput.Event == EMIE_LMOUSE_LEFT_UP) {
                if (selectTab(detail::makePoint(event.MouseInput.X, event.MouseInput.Y))) {
                    return true;
                }
            }
        } else if (event.EventType == EET_GUI_EVENT && event.GUIEvent.EventType == EGET_BUTTON_CLICKED) {
            if (event.GUIEvent.Caller == upButton) {
                scrollLeft();
                return true;
            }
            if (event.GUIEvent.Caller == downButton) {
                scrollRight();
                return true;
            }
        }
    }
    return parent != nullptr ? parent->onEvent(event) : false;
}

// 0x554738 _ZN6glitch3gui14CGUITabControl4drawEv
// The tab row is drawn button by button from the scroll index; the active tab is remembered and drawn last, framed, with the row line
// broken around it. (The scroll test in the loop compares the right and the left edge of the button, as the original does.)
void CGUITabControl::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return;
    }
    IGUIFont* font = skin->getFont(EGDF_DEFAULT);                 // K 0x28
    video::IVideoDriver* driver = environment->getVideoDriver();  // K 0x20
    core::rect<int> frameRect = absoluteRect;
    if (tabs.empty()) {
        video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_3D_HIGH_LIGHT), frameRect, &absoluteClippingRect);
    }
    if (font == nullptr) {
        return;
    }
    if (verticalAlignment != EGUIA_UPPERLEFT) {
        frameRect.UpperLeftCorner.Y = frameRect.LowerRightCorner.Y - 1 - tabHeight;
        frameRect.LowerRightCorner.Y -= 2;
    } else {
        frameRect.LowerRightCorner.Y = frameRect.UpperLeftCorner.Y + 2 + tabHeight;
        frameRect.UpperLeftCorner.Y += 2;
    }
    int left = 0;
    int right = 0;
    CGUITab* activeTabElement = nullptr;
    if (currentScrollTabIndex < static_cast<int>(tabs.size())) {
        int position = frameRect.UpperLeftCorner.X + 2;
        for (int i = currentScrollTabIndex; i < static_cast<int>(tabs.size()); ++i) {
            const wchar_t* text = tabs[i] != nullptr ? tabs[i]->getText() : nullptr;  // K 0x48
            const int end = tabExtraWidth + font->getDimension(text).Width + position;
            frameRect.UpperLeftCorner.X = position;
            frameRect.LowerRightCorner.X = end;
            if (scrollControl && end < position) {
                break;
            }
            if (activeTab == i) {
                left = position;
                right = end;
                activeTabElement = tabs[i];
            } else {
                skin->draw3DTabButton(this, false, frameRect, &absoluteClippingRect, verticalAlignment);  // K 0x58
                font->draw(text, frameRect, tabs[i]->getTextColor(), true, true, &absoluteClippingRect);   // K 0x0c, K 0x94
            }
            position = end;
        }
    }

    core::rect<int> line = detail::makeRect(0, 0, 0, 0);
    if (right != 0 && left != 0 && activeTabElement != nullptr) {
        frameRect.UpperLeftCorner.X = left - 2;
        frameRect.LowerRightCorner.X = right + 2;
        if (verticalAlignment == EGUIA_UPPERLEFT) {
            frameRect.UpperLeftCorner.Y -= 2;
            skin->draw3DTabButton(this, true, frameRect, &absoluteClippingRect, verticalAlignment);
            font->draw(activeTabElement->getText(), frameRect, activeTabElement->getTextColor(), true, true, &absoluteClippingRect);
            line = detail::makeRect(absoluteRect.UpperLeftCorner.X, frameRect.LowerRightCorner.Y - 1, left - 1, frameRect.LowerRightCorner.Y);
            video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_3D_HIGH_LIGHT), line, &absoluteClippingRect);
            line.UpperLeftCorner.X = right;
            line.LowerRightCorner.X = absoluteRect.LowerRightCorner.X;
            video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_3D_HIGH_LIGHT), line, &absoluteClippingRect);
        } else {
            frameRect.LowerRightCorner.Y += 2;
            skin->draw3DTabButton(this, true, frameRect, &absoluteClippingRect, verticalAlignment);
            font->draw(activeTabElement->getText(), frameRect, activeTabElement->getTextColor(), true, true, &absoluteClippingRect);
            line = detail::makeRect(absoluteRect.UpperLeftCorner.X, frameRect.UpperLeftCorner.Y - 1, left - 1, frameRect.UpperLeftCorner.Y);
            video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_3D_DARK_SHADOW), line, &absoluteClippingRect);
            line.UpperLeftCorner.X = right;
            line.LowerRightCorner.X = absoluteRect.LowerRightCorner.X;
            video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_3D_DARK_SHADOW), line, &absoluteClippingRect);
        }
    } else {
        // No active tab in view: one line under (or over) the whole row.
        if (verticalAlignment != EGUIA_UPPERLEFT) {
            line = detail::makeRect(absoluteRect.UpperLeftCorner.X, frameRect.UpperLeftCorner.Y - 1, 1000, frameRect.UpperLeftCorner.Y);
            video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_3D_DARK_SHADOW), line, &absoluteClippingRect);
        } else {
            line = detail::makeRect(absoluteRect.UpperLeftCorner.X, frameRect.LowerRightCorner.Y - 1, absoluteRect.LowerRightCorner.X,
                                    frameRect.LowerRightCorner.Y);
            video::C2DDriver::draw2DRectangle(driver, skin->getColor(EGDC_3D_HIGH_LIGHT), line, &absoluteClippingRect);
        }
    }
    skin->draw3DTabBody(this, border, fillBackground, absoluteRect, &absoluteClippingRect, tabHeight, verticalAlignment);  // K 0x5c
    IGUIElement::draw();
}

}  // namespace glitch::gui
