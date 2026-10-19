// Bodies of glitch::gui::IGUIContextMenu, CGUIContextMenu and CGUIMenu (canonical classes: gui/CGUIContextMenu.hpp). This file replaces their
// bodies in gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_02.cpp, recon/slice_25.cpp and recon/slice_33.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIContextMenu.hpp"

#include <algorithm>
#include <string>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/CGUISpriteBank.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"

namespace glitch::gui {

namespace {

// The attribute name of an item: the name followed by the character with the index as its code (as in the original).
std::string itemKey(const char* name, std::uint32_t index) {
    std::string key = name;
    key.push_back(static_cast<char>(index));
    return key;
}

}  // namespace

// 0x6adcf0 _ZN6glitch3gui15IGUIContextMenuC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIContextMenu::IGUIContextMenu(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_CONTEXT_MENU, environment, parent, id, rectangle) {}

// 0x545bb4 _ZN6glitch3gui15IGUIContextMenuD1Ev (D0 0x545f58 skipped)
IGUIContextMenu::~IGUIContextMenu() = default;

// 0x6adfb8 _ZN6glitch3gui15CGUIContextMenuC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEbb (C2 0x6ae100)
CGUIContextMenu::CGUIContextMenu(IGUIEnvironment* environmentValue, IGUIElement* parentElement, int id, core::rect<int> rectangle,
                                 bool getFocus, bool allowFocusValue)
    : IGUIContextMenu(environmentValue, parentElement, id, rectangle) {
    allowFocus = allowFocusValue;
    pos = rectangle.UpperLeftCorner;
    recalculateSize();
    if (getFocus) {
        environment->setFocus(this);  // K 0x10
    }
    noClip = true;
}

// 0x6ae858 _ZN6glitch3gui15CGUIContextMenuD1Ev (0x6ae974 and 0x6ae990 are the other forms)
CGUIContextMenu::~CGUIContextMenu() {
    for (SItem& item : items) {
        if (item.subMenu != nullptr) {
            item.subMenu->drop();
        }
    }
    if (lastFont != nullptr) {
        lastFont->drop();
    }
}

// 0x6acdac _ZNK6glitch3gui15CGUIContextMenu12getItemCountEv
std::uint32_t CGUIContextMenu::getItemCount() const {
    return static_cast<std::uint32_t>(items.size());
}

// 0x6aea9c _ZN6glitch3gui15CGUIContextMenu7addItemEPKwibbb
// A null text makes a separator. An item with a sub menu gets a new, hidden CGUIContextMenu (that neither takes nor allows the focus).
std::uint32_t CGUIContextMenu::addItem(const wchar_t* text, int commandId, bool enabled, bool hasSubMenu, bool checked) {
    SItem item;
    item.text = text != nullptr ? text : L"";
    item.isSeparator = text == nullptr;
    item.enabled = enabled;
    item.checked = checked;
    item.dim = core::dimension2d<int>{0, 0};
    item.subMenu = nullptr;
    item.commandId = commandId;
    if (hasSubMenu) {
        core::rect<int> rectangle = detail::makeRect(0, 0, 100, 100);
        item.subMenu = new CGUIContextMenu(environment, this, commandId, rectangle, false, false);
        item.subMenu->setVisible(false);
    }
    items.push_back(item);
    recalculateSize();
    return static_cast<std::uint32_t>(items.size()) - 1;
}

// 0x6aced4 _ZN6glitch3gui15CGUIContextMenu12addSeparatorEv
std::uint32_t CGUIContextMenu::addSeparator() {
    return addItem(nullptr, -1, true, false, false);  // K 0x80
}

// 0x6acf08 _ZNK6glitch3gui15CGUIContextMenu11getItemTextEj
const wchar_t* CGUIContextMenu::getItemText(std::uint32_t index) const {
    if (index >= items.size()) {
        return nullptr;
    }
    return items[index].text.c_str();
}

// 0x6ad8cc _ZN6glitch3gui15CGUIContextMenu11setItemTextEjPKw
void CGUIContextMenu::setItemText(std::uint32_t index, const wchar_t* text) {
    if (index < items.size()) {
        items[index].text = text;
        recalculateSize();  // K 0xbc
    }
}

// 0x6acf44 _ZNK6glitch3gui15CGUIContextMenu13isItemEnabledEj
bool CGUIContextMenu::isItemEnabled(std::uint32_t index) const {
    return index < items.size() ? items[index].enabled : false;
}

// 0x6acfbc _ZN6glitch3gui15CGUIContextMenu14setItemEnabledEjb
void CGUIContextMenu::setItemEnabled(std::uint32_t index, bool enabled) {
    if (index < items.size()) {
        items[index].enabled = enabled;
    }
}

// 0x6acff4 _ZN6glitch3gui15CGUIContextMenu14setItemCheckedEjb
void CGUIContextMenu::setItemChecked(std::uint32_t index, bool checked) {
    if (index < items.size()) {
        items[index].checked = checked;
    }
}

// 0x6acf80 _ZNK6glitch3gui15CGUIContextMenu13isItemCheckedEj
bool CGUIContextMenu::isItemChecked(std::uint32_t index) const {
    return index < items.size() ? items[index].checked : false;
}

// 0x6ae7bc _ZN6glitch3gui15CGUIContextMenu10removeItemEj
void CGUIContextMenu::removeItem(std::uint32_t index) {
    if (index >= items.size()) {
        return;
    }
    if (items[index].subMenu != nullptr) {
        items[index].subMenu->drop();
        items[index].subMenu = nullptr;
    }
    items.erase(items.begin() + index);
    recalculateSize();
}

// 0x6ae480 _ZN6glitch3gui15CGUIContextMenu14removeAllItemsEv
void CGUIContextMenu::removeAllItems() {
    for (SItem& item : items) {
        if (item.subMenu != nullptr) {
            item.subMenu->drop();
        }
    }
    items.clear();
    recalculateSize();
}

// 0x6ad4d4 _ZNK6glitch3gui15CGUIContextMenu15getSelectedItemEv
int CGUIContextMenu::getSelectedItem() const {
    return highLighted;
}

// 0x6ad518 _ZNK6glitch3gui15CGUIContextMenu16getItemCommandIdEj
int CGUIContextMenu::getItemCommandId(std::uint32_t index) const {
    return index < items.size() ? items[index].commandId : -1;
}

// 0x6ad554 _ZN6glitch3gui15CGUIContextMenu16setItemCommandIdEji
void CGUIContextMenu::setItemCommandId(std::uint32_t index, int commandId) {
    if (index < items.size()) {
        items[index].commandId = commandId;
    }
}

// 0x6ad4dc _ZNK6glitch3gui15CGUIContextMenu10getSubMenuEj
IGUIContextMenu* CGUIContextMenu::getSubMenu(std::uint32_t index) const {
    return index < items.size() ? items[index].subMenu : nullptr;
}

// 0x6acdd4 _ZN6glitch3gui15CGUIContextMenu10setSubMenuEjPS1_
// (The original calls setVisible on the new menu before checking it, so a null menu is not supported there either.)
void CGUIContextMenu::setSubMenu(std::uint32_t index, CGUIContextMenu* menu) {
    if (index >= items.size()) {
        return;
    }
    if (items[index].subMenu != nullptr) {
        items[index].subMenu->drop();
    }
    items[index].subMenu = menu;
    menu->setVisible(false);  // K 0x30
    if (items[index].subMenu != nullptr) {
        ++menu->referenceCounter;
        menu->allowFocus = false;
        if (menu == environment->getFocus()) {  // K 0x14
            environment->setFocus(this);        // K 0x10
        }
    }
    recalculateSize();
}

// 0x6ad1d0 _ZNK6glitch3gui15CGUIContextMenu8getHRectERKNS1_5SItemERKNS_4core4rectIiEE
core::rect<int> CGUIContextMenu::getHRect(const SItem& item, const core::rect<int>& absolute) const {
    core::rect<int> result = absolute;
    result.UpperLeftCorner.Y = absolute.UpperLeftCorner.Y + item.posY;
    result.LowerRightCorner.Y = result.UpperLeftCorner.Y + item.dim.Height;
    return result;
}

// 0x6ad214 _ZNK6glitch3gui15CGUIContextMenu7getRectERKNS1_5SItemERKNS_4core4rectIiEE
core::rect<int> CGUIContextMenu::getRect(const SItem& item, const core::rect<int>& absolute) const {
    core::rect<int> result = absolute;
    result.UpperLeftCorner.Y = absolute.UpperLeftCorner.Y + item.posY;
    result.UpperLeftCorner.X = absolute.UpperLeftCorner.X + 20;
    result.LowerRightCorner.Y = result.UpperLeftCorner.Y + item.dim.Height;
    return result;
}

// 0x6ad260 _ZN6glitch3gui15CGUIContextMenu15recalculateSizeEv
// Without a menu font nothing changes. The width is at least 100 (a separator is exactly 100 wide, as in the original); the heights add up
// from 3 and end 5 below the last item (at least 10).
void CGUIContextMenu::recalculateSize() {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUIFont* font = skin->getFont(EGDF_MENU);
    if (font == nullptr) {
        return;
    }
    core::rect<int> rectangle;
    rectangle.UpperLeftCorner = relativeRect.UpperLeftCorner;
    int width = 100;
    int height = 3;
    if (!items.empty()) {
        for (SItem& item : items) {
            if (item.isSeparator) {
                item.dim.Width = 100;
                item.dim.Height = 10;
            } else {
                item.dim = font->getDimension(item.text.c_str());  // K 0x1c
                item.dim.Width += 40;
                width = std::max(width, item.dim.Width);
            }
            item.posY = height;
            height += item.dim.Height;
        }
        height += 5;
        if (height < 10) {
            height = 10;
        }
    } else {
        height = 10;
    }
    rectangle.LowerRightCorner.X = width + relativeRect.UpperLeftCorner.X;
    rectangle.LowerRightCorner.Y = height + relativeRect.UpperLeftCorner.Y;
    setRelativePosition(rectangle);
    for (SItem& item : items) {
        CGUIContextMenu* sub = item.subMenu;
        if (sub == nullptr) {
            continue;
        }
        const int subHeight = sub->absoluteRect.LowerRightCorner.Y - sub->absoluteRect.UpperLeftCorner.Y;
        const int subWidth = sub->absoluteRect.LowerRightCorner.X - sub->absoluteRect.UpperLeftCorner.X;
        sub->setRelativePosition(detail::makeRect(width - 5, item.posY, subWidth - 5 + width, item.posY + subHeight));
    }
}

// 0x6ad9e8 _ZN6glitch3gui15CGUIContextMenu9highlightERKNS_4core10position2dIiEEb
bool CGUIContextMenu::highlight(const core::position2d<int>& point, bool canOpenSubMenu) {
    // An open sub menu gets the point first.
    int openMenu = -1;
    for (std::size_t i = 0; i < items.size(); ++i) {
        if (items[i].subMenu != nullptr && items[i].subMenu->isVisible()) {  // K 0x2c
            openMenu = static_cast<int>(i);
            break;
        }
    }
    if (openMenu != -1) {
        if (items[static_cast<std::size_t>(openMenu)].subMenu->highlight(point, canOpenSubMenu)) {  // K 0xc0
            highLighted = openMenu;
            changeTime = os::Timer::getTime();
            return true;
        }
    }
    for (std::size_t j = 0; j < items.size(); ++j) {
        const core::rect<int> rectangle = getHRect(items[j], absoluteRect);  // K 0xc8
        if (!detail::rectContains(rectangle, point)) {
            continue;
        }
        highLighted = static_cast<int>(j);
        changeTime = os::Timer::getTime();
        for (std::size_t i = 0; i < items.size(); ++i) {
            if (items[i].subMenu == nullptr) {
                continue;
            }
            if (i == j) {
                if (canOpenSubMenu) {
                    items[i].subMenu->setVisible(true);
                }
            } else {
                items[i].subMenu->setVisible(false);
            }
        }
        return true;
    }
    highLighted = openMenu;
    return false;
}

// 0x6ad02c _ZN6glitch3gui15CGUIContextMenu9sendClickERKNS_4core10position2dIiEE
std::uint32_t CGUIContextMenu::sendClick(const core::position2d<int>& point) {
    // The first open sub menu gets the click.
    for (SItem& item : items) {
        if (item.subMenu != nullptr && item.subMenu->isVisible()) {
            const std::uint32_t result = item.subMenu->sendClick(point);  // K 0xc4
            if (result != 0) {
                return result;
            }
            break;
        }
    }
    if (!isPointInside(point)) {  // K 0x10
        return 0;
    }
    if (highLighted < 0 || static_cast<std::size_t>(highLighted) >= items.size()) {
        return 0;
    }
    const SItem& selected = items[static_cast<std::size_t>(highLighted)];
    if (!selected.enabled || selected.isSeparator || selected.subMenu != nullptr) {
        return 2;
    }
    SEvent event;
    event.EventType = EET_GUI_EVENT;
    event.GUIEvent.Caller = this;
    event.GUIEvent.Element = nullptr;
    event.GUIEvent.EventType = EGET_MENU_ITEM_SELECTED;
    IGUIElement* receiver = parent != nullptr ? parent : eventParent;
    if (receiver != nullptr) {
        receiver->onEvent(event);
    }
    return 1;
}

// 0x6ad58c _ZN6glitch3gui15CGUIContextMenu14setEventParentEPNS0_11IGUIElementE
void CGUIContextMenu::setEventParent(IGUIElement* newParent) {
    eventParent = newParent;
    for (SItem& item : items) {
        if (item.subMenu != nullptr) {
            item.subMenu->setEventParent(newParent);
        }
    }
}

// 0x6ad620 _ZNK6glitch3gui15CGUIContextMenu14hasOpenSubMenuEv
bool CGUIContextMenu::hasOpenSubMenu() const {
    for (const SItem& item : items) {
        if (item.subMenu != nullptr && item.subMenu->isVisible()) {
            return true;
        }
    }
    return false;
}

// 0x6ad6c4 _ZN6glitch3gui15CGUIContextMenu16closeAllSubMenusEv
void CGUIContextMenu::closeAllSubMenus() {
    for (SItem& item : items) {
        if (item.subMenu != nullptr) {
            item.subMenu->setVisible(false);
        }
    }
}

// 0x6adc3c _ZN6glitch3gui15CGUIContextMenu10setVisibleEb
void CGUIContextMenu::setVisible(bool value) {
    highLighted = -1;
    changeTime = os::Timer::getTime();
    for (SItem& item : items) {
        if (item.subMenu != nullptr) {
            item.subMenu->setVisible(false);
        }
    }
    visible = value;
}

// 0x6ae1f4 _ZN6glitch3gui15CGUIContextMenu7onEventERKNS_6SEventE
bool CGUIContextMenu::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    if (!enabled) {
        return forward();
    }
    if (event.EventType == EET_GUI_EVENT) {
        const int type = event.GUIEvent.EventType;
        if (type == EGET_ELEMENT_FOCUS_LOST) {
            if (event.GUIEvent.Caller == this) {
                const bool outside = event.GUIEvent.Element == nullptr || !detail::isMyChild<IGUIElement>(this, static_cast<const IGUIElement*>(event.GUIEvent.Element));
                if (outside && allowFocus) {
                    setEventParent(parent);
                    remove();  // K 0x1c
                    return false;
                }
            }
        } else if (type == EGET_ELEMENT_FOCUSED && event.GUIEvent.Caller == this && !allowFocus) {
            return true;
        }
        return forward();
    }
    if (event.EventType != EET_MOUSE_INPUT_EVENT) {
        return forward();
    }
    const core::position2d<int> point = detail::makePoint(event.MouseInput.X, event.MouseInput.Y);
    switch (event.MouseInput.Event) {
        case EMIE_LMOUSE_LEFT_UP: {
            // The menu may be removed by the click (it loses the focus), so it is held across the call.
            ++referenceCounter;
            const std::uint32_t result = sendClick(point);  // K 0xc4
            if (result <= 1 && environment->hasFocus(this)) {
                environment->removeFocus(this);  // K 0x18
            }
            drop();
            return true;
        }
        case EMIE_MOUSE_MOVED:
            if (environment->hasFocus(this)) {
                highlight(point, true);  // K 0xc0
            }
            return true;
        case EMIE_LMOUSE_PRESSED_DOWN:
            return true;
        default:
            return forward();
    }
}

// 0x6aec08 _ZN6glitch3gui15CGUIContextMenu4drawEv
// The highlighted item of an enabled menu gets the highlight colour and text colour; a disabled item the gray text colour. The arrow of an
// item with a sub menu sits in the last 15 pixels, the check mark in the margin to the left (both from the sprite bank of the skin).
void CGUIContextMenu::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return;
    }
    IGUIFont* font = skin->getFont(EGDF_MENU);
    if (font != lastFont) {
        if (lastFont != nullptr) {
            lastFont->drop();
        }
        lastFont = font;
        if (lastFont != nullptr) {
            ++lastFont->referenceCounter;
        }
        recalculateSize();  // K 0xbc
    }
    IGUISpriteBank* sprites = skin->getSpriteBank();  // K 0x30
    skin->draw3DMenuPane(this, absoluteRect, nullptr);  // K 0x50
    for (std::size_t i = 0; i < items.size(); ++i) {
        const SItem& item = items[i];
        if (item.isSeparator) {
            core::rect<int> line = absoluteRect;
            const int top = absoluteRect.UpperLeftCorner.Y + item.posY;
            line.UpperLeftCorner.X += 5;
            line.LowerRightCorner.X -= 5;
            line.UpperLeftCorner.Y = top + 3;
            line.LowerRightCorner.Y = top + 4;
            skin->draw2DRectangle(this, skin->getColor(EGDC_3D_SHADOW), line, nullptr);  // K 0x64
            line.LowerRightCorner.Y += 1;
            line.UpperLeftCorner.Y += 1;
            skin->draw2DRectangle(this, skin->getColor(EGDC_3D_HIGH_LIGHT), line, nullptr);
            continue;
        }
        const core::rect<int> rectangle = getRect(item, absoluteRect);  // K 0xcc
        const bool isHighLighted = static_cast<int>(i) == highLighted;
        EGUI_DEFAULT_COLOR colorIndex;
        if (isHighLighted && item.enabled) {
            core::rect<int> highlightRect = absoluteRect;
            highlightRect.UpperLeftCorner.Y = rectangle.UpperLeftCorner.Y;
            highlightRect.LowerRightCorner.Y = rectangle.LowerRightCorner.Y;
            highlightRect.UpperLeftCorner.X += 5;
            highlightRect.LowerRightCorner.X -= 5;
            skin->draw2DRectangle(this, skin->getColor(EGDC_HIGH_LIGHT), highlightRect, nullptr);
        }
        colorIndex = isHighLighted ? EGDC_HIGH_LIGHT_TEXT : EGDC_BUTTON_TEXT;
        if (!item.enabled) {
            colorIndex = EGDC_GRAY_TEXT;
        }
        const video::SColor color = skin->getColor(colorIndex);
        if (font != nullptr) {
            font->draw(item.text.c_str(), rectangle, color, false, true, nullptr);  // K 0x0c
        }
        const std::uint32_t startTime = isHighLighted ? changeTime : 0;
        const std::uint32_t currentTime = isHighLighted ? os::Timer::getTime() : 0;
        if (item.subMenu != nullptr && sprites != nullptr) {
            core::position2d<int> center;
            center.X = (2 * rectangle.LowerRightCorner.X - 15) / 2;
            center.Y = (rectangle.LowerRightCorner.Y + rectangle.UpperLeftCorner.Y) / 2;
            sprites->draw2DSprite(skin->getIcon(EGDI_CURSOR_RIGHT), center, nullptr, color, startTime, currentTime, isHighLighted, true);
        }
        if (item.checked && sprites != nullptr) {
            core::position2d<int> center;
            center.X = (2 * rectangle.UpperLeftCorner.X - 15) / 2;
            center.Y = (rectangle.LowerRightCorner.Y + rectangle.UpperLeftCorner.Y) / 2;
            sprites->draw2DSprite(skin->getIcon(EGDI_CHECK_BOX_CHECKED), center, nullptr, color, startTime, currentTime, isHighLighted, true);
        }
    }
    IGUIElement::draw();
}

// 0x6af2bc _ZNK6glitch3gui15CGUIContextMenu19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIContextMenu::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addPosition2d("Position", pos, false);  // K 0x1d8
    if (parent != nullptr && (parent->type == EGUIET_CONTEXT_MENU || parent->type == EGUIET_MENU)) {
        // The index of this menu in the item list of its parent.
        const IGUIContextMenu* menuParent = static_cast<const IGUIContextMenu*>(parent);
        std::uint32_t index = 0;
        while (index < menuParent->getItemCount() && this != menuParent->getSubMenu(index)) {
            ++index;
        }
        attributes->addInt("ParentItem", static_cast<int>(index), false);  // K 0x4c
    }
    attributes->addInt("ItemCount", static_cast<int>(items.size()), false);
    for (std::uint32_t i = 0; i < items.size(); ++i) {
        const SItem& item = items[i];
        attributes->addBool(itemKey("IsSeparator", i).c_str(), item.isSeparator, false);  // K 0xd8
        if (!item.isSeparator) {
            attributes->addString(itemKey("Text", i).c_str(), item.text.c_str(), false);        // K 0x94
            attributes->addInt(itemKey("CommandID", i).c_str(), item.commandId, false);
            attributes->addBool(itemKey("Enabled", i).c_str(), item.enabled, false);
        }
    }
}

// 0x6af62c _ZN6glitch3gui15CGUIContextMenu21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIContextMenu::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    pos = attributes->getPosition2d("Position");  // K 0x1e4
    if (parent != nullptr && (parent->type == EGUIET_CONTEXT_MENU || parent->type == EGUIET_MENU)) {
        static_cast<CGUIContextMenu*>(parent)->setSubMenu(static_cast<std::uint32_t>(attributes->getInt("ParentItem")), this);  // K 0xb8
    }
    removeAllItems();  // K 0xa4
    const int count = attributes->getInt("ItemCount");
    for (int i = 0; i < count; ++i) {
        const std::uint32_t index = static_cast<std::uint32_t>(i);
        if (attributes->getBool(itemKey("IsSeparator", index).c_str())) {  // K 0xe4
            addSeparator();
        } else {
            const std::wstring text = attributes->getStringW(itemKey("Text", index).c_str());  // K 0x9c
            const int commandId = attributes->getInt(itemKey("CommandID", index).c_str());
            const bool itemEnabled = attributes->getBool(itemKey("Enabled", index).c_str());
            const bool itemChecked = attributes->getBool(itemKey("Checked", index).c_str());
            addItem(text.c_str(), commandId, itemEnabled, false, itemChecked);
        }
    }
    recalculateSize();
}

// 0x545928 _ZN6glitch3gui8CGUIMenuC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE (C2 0x545a10)
CGUIMenu::CGUIMenu(IGUIEnvironment* environmentValue, IGUIElement* parentElement, int id, core::rect<int> rectangle)
    : CGUIContextMenu(environmentValue, parentElement, id, rectangle, false, true) {
    type = EGUIET_MENU;
    noClip = false;
    recalculateSize();
}

// 0x5458b4 _ZN6glitch3gui8CGUIMenuD1Ev (D0 0x545edc skipped)
CGUIMenu::~CGUIMenu() = default;

// 0x545878 _ZN6glitch3gui8CGUIMenu22updateAbsolutePositionEv
void CGUIMenu::updateAbsolutePosition() {
    if (parent != nullptr) {
        desiredRect.LowerRightCorner.X = parent->absoluteRect.LowerRightCorner.X - parent->absoluteRect.UpperLeftCorner.X;
    }
    IGUIElement::updateAbsolutePosition();
}

// 0x5455b8 _ZN6glitch3gui8CGUIMenu15recalculateSizeEv
// Without a menu font the bar takes the parent's right edge as its width and the menu height of the skin.
void CGUIMenu::recalculateSize() {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUIFont* font = skin->getFont(EGDF_MENU);
    if (font == nullptr) {
        if (parent != nullptr) {
            const int menuHeight = skin->getSize(EGDS_MENU_HEIGHT);  // K 0x18
            relativeRect.UpperLeftCorner.Y = 0;
            relativeRect.LowerRightCorner.X = parent->absoluteRect.LowerRightCorner.X;
            relativeRect.LowerRightCorner.Y = menuHeight;
            relativeRect.UpperLeftCorner.X = 0;
        }
        return;
    }
    core::rect<int> rectangle = detail::makeRect(0, 0, 0, 0);
    const int height = font->getDimension(L"A").Height + 5;
    int total = 0;
    for (SItem& item : items) {
        if (item.isSeparator) {
            item.dim.Width = 0;
            item.dim.Height = height;
        } else {
            item.dim = font->getDimension(item.text.c_str());
            item.dim.Width += 20;
        }
        item.posY = total;
        total += item.dim.Width;
    }
    if (parent != nullptr) {
        total = parent->absoluteRect.LowerRightCorner.X - parent->absoluteRect.UpperLeftCorner.X;
    }
    rectangle.LowerRightCorner.Y = height;
    rectangle.LowerRightCorner.X = total;
    setRelativePosition(rectangle);
    for (SItem& item : items) {
        CGUIContextMenu* sub = item.subMenu;
        if (sub == nullptr) {
            continue;
        }
        const int subWidth = sub->absoluteRect.LowerRightCorner.X - sub->absoluteRect.UpperLeftCorner.X;
        const int subHeight = sub->absoluteRect.LowerRightCorner.Y - sub->absoluteRect.UpperLeftCorner.Y;
        sub->setRelativePosition(detail::makeRect(item.posY, height, item.posY + subWidth - 5, height + subHeight));
    }
}

// 0x545818 _ZNK6glitch3gui8CGUIMenu8getHRectERKNS0_15CGUIContextMenu5SItemERKNS_4core4rectIiEE
core::rect<int> CGUIMenu::getHRect(const SItem& item, const core::rect<int>& absolute) const {
    core::rect<int> result = absolute;
    result.UpperLeftCorner.X = absolute.UpperLeftCorner.X + item.posY;
    result.LowerRightCorner.X = result.UpperLeftCorner.X + item.dim.Width;
    return result;
}

// 0x54585c _ZNK6glitch3gui8CGUIMenu7getRectERKNS0_15CGUIContextMenu5SItemERKNS_4core4rectIiEE
core::rect<int> CGUIMenu::getRect(const SItem& item, const core::rect<int>& absolute) const {
    return getHRect(item, absolute);  // K 0xc8
}

// 0x545c18 _ZN6glitch3gui8CGUIMenu7onEventERKNS_6SEventE
bool CGUIMenu::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    if (!enabled) {
        return forward();
    }
    if (event.EventType == EET_MOUSE_INPUT_EVENT) {
        const int x = event.MouseInput.X;
        const int y = event.MouseInput.Y;
        const core::position2d<int> point = detail::makePoint(x, y);
        if (event.MouseInput.Event == EMIE_LMOUSE_LEFT_UP) {
            if (!environment->hasFocus(this)) {  // K 0x1c
                environment->setFocus(this);     // K 0x10
            }
            if (parent != nullptr) {
                parent->bringToFront(this);  // K 0x64
            }
            bool shouldCloseSubMenu = hasOpenSubMenu();
            if (!detail::rectContains(absoluteClippingRect, x, y)) {
                if (sendClick(point) <= 1 && environment->hasFocus(this)) {
                    environment->removeFocus(this);  // K 0x18
                }
                shouldCloseSubMenu = false;
            }
            highlight(point, true);  // K 0xc0
            if (shouldCloseSubMenu) {
                closeAllSubMenus();
                return true;
            }
            return true;
        }
        if (event.MouseInput.Event == EMIE_MOUSE_MOVED) {
            if (environment->hasFocus(this)) {
                highlight(point, hasOpenSubMenu());
            }
            return true;
        }
        return forward();
    }
    if (event.EventType == EET_GUI_EVENT) {
        const int type = event.GUIEvent.EventType;
        if (type == EGET_ELEMENT_FOCUS_LOST) {
            if (event.GUIEvent.Caller == this) {
                if (event.GUIEvent.Element == nullptr || !detail::isMyChild<IGUIElement>(this, static_cast<const IGUIElement*>(event.GUIEvent.Element))) {
                    closeAllSubMenus();
                    highLighted = -1;
                }
            }
            return forward();
        }
        if (type == EGET_ELEMENT_FOCUSED && event.GUIEvent.Caller == this) {
            if (parent == nullptr) {
                return false;
            }
            parent->bringToFront(this);
            return forward();
        }
    }
    return forward();
}

// 0x545fc4 _ZN6glitch3gui8CGUIMenu4drawEv
void CGUIMenu::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUIFont* font = skin->getFont(EGDF_MENU);
    if (font != lastFont) {
        if (lastFont != nullptr) {
            lastFont->drop();
        }
        lastFont = font;
        if (lastFont != nullptr) {
            ++lastFont->referenceCounter;
        }
        recalculateSize();  // K 0xbc
    }
    skin->draw3DToolBar(this, absoluteRect, &absoluteClippingRect);  // K 0x54
    for (std::size_t i = 0; i < items.size(); ++i) {
        const SItem& item = items[i];
        if (item.isSeparator) {
            continue;
        }
        const core::rect<int> rectangle = getRect(item, absoluteRect);  // K 0xcc
        const bool isHighLighted = static_cast<int>(i) == highLighted;
        EGUI_DEFAULT_COLOR colorIndex = EGDC_BUTTON_TEXT;
        if (isHighLighted) {
            if (item.enabled) {
                skin->draw3DSunkenPane(this, skin->getColor(EGDC_3D_DARK_SHADOW), true, true, rectangle, &absoluteClippingRect);  // K 0x48
                colorIndex = EGDC_HIGH_LIGHT_TEXT;
            }
        }
        if (!item.enabled) {
            colorIndex = EGDC_GRAY_TEXT;
        }
        if (font != nullptr) {
            font->draw(item.text.c_str(), rectangle, skin->getColor(colorIndex), true, true, &absoluteClippingRect);  // K 0x0c
        }
    }
    IGUIElement::draw();
}

}  // namespace glitch::gui
