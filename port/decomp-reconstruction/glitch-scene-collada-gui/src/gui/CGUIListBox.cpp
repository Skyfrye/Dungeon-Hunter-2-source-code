// Bodies of glitch::gui::IGUIListBox and CGUIListBox (canonical classes: gui/CGUIListBox.hpp). This file replaces their bodies in
// gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_01.cpp, recon/slice_02.cpp and recon/slice_31.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIListBox.hpp"

#include <cwchar>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/CGUIScrollBar.hpp"
#include "glitch-scene-collada-gui/gui/CGUISpriteBank.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"

namespace glitch::gui {

namespace {

void postListBoxEvent(IGUIElement* parent, IGUIElement* caller, int eventType) {
    SEvent event;
    event.EventType = EET_GUI_EVENT;
    event.GUIEvent.Caller = caller;
    event.GUIEvent.Element = nullptr;
    event.GUIEvent.EventType = eventType;
    parent->onEvent(event);
}

// The attribute name of the item `index`: the raw character with that value (not its digits), followed by `suffix`, as the original builds it.
std::string itemAttributeName(const std::string& prefix, std::uint32_t index) {
    std::string name = prefix;
    name.push_back(static_cast<char>(index));
    return name;
}

}  // namespace

// 0x542568 _ZN6glitch3gui11IGUIListBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIListBox::IGUIListBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_LIST_BOX, environment, parent, id, rectangle) {}

// 0x544428 _ZN6glitch3gui11IGUIListBoxD1Ev (D0 0x544660 skipped)
IGUIListBox::~IGUIListBox() = default;

// 0x542a40 _ZN6glitch3gui10CGUIListBoxC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEbbb (C2 0x542c64)
CGUIListBox::CGUIListBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle, bool clip, bool drawBackValue,
                         bool moveOverSelectValue)
    : IGUIListBox(environment, parent, id, rectangle) {
    drawBack = drawBackValue;
    moveOverSelect = moveOverSelectValue;
    const int scrollBarSize = environment->getSkin()->getSize(EGDS_SCROLLBAR_SIZE);  // K 0x38, K 0x18
    const int width = relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X;
    const int height = relativeRect.LowerRightCorner.Y - relativeRect.UpperLeftCorner.Y;
    scrollBar = new CGUIScrollBar(false, environment, this, 0, detail::makeRect(width - scrollBarSize, 0, width, height), !clip);
    scrollBar->setSubElement(true);  // K 0x38
    scrollBar->tabStop = false;
    scrollBar->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT);
    scrollBar->setVisible(false);    // K 0x30
    scrollBar->drop();
    scrollBar->setPos(0);            // K 0x98
    ++scrollBar->referenceCounter;
    noClip = !clip;
    tabStop = true;
    setTabOrder(-1);
    updateAbsolutePosition();
}

// 0x54449c _ZN6glitch3gui10CGUIListBoxD1Ev (0x544578 and 0x544594 are the other forms)
CGUIListBox::~CGUIListBox() {
    if (scrollBar != nullptr) {
        scrollBar->drop();
    }
    if (font != nullptr) {
        font->drop();
    }
    if (iconBank != nullptr) {
        iconBank->drop();
    }
}

// 0x541bcc _ZNK6glitch3gui10CGUIListBox12getItemCountEv
std::uint32_t CGUIListBox::getItemCount() const {
    return static_cast<std::uint32_t>(items.size());
}

// 0x541bf4 _ZNK6glitch3gui10CGUIListBox11getListItemEj
const wchar_t* CGUIListBox::getListItem(std::uint32_t id) const {
    return id < items.size() ? items[id].text.c_str() : nullptr;
}

// 0x541c30 _ZNK6glitch3gui10CGUIListBox7getIconEj
int CGUIListBox::getIcon(std::uint32_t index) const {
    return index < items.size() ? items[index].icon : -1;
}

// 0x541c6c _ZN6glitch3gui10CGUIListBox7addItemEPKw
std::uint32_t CGUIListBox::addItem(const wchar_t* text) {
    return addItem(text, -1);  // K 0x88
}

// 0x545480 _ZN6glitch3gui10CGUIListBox7addItemEPKwi
std::uint32_t CGUIListBox::addItem(const wchar_t* text, int icon) {
    ListItem item;
    item.text.assign(text, text + std::wcslen(text));
    item.icon = icon;
    items.push_back(item);
    recalculateItemHeight();
    recalculateItemWidth(icon);
    return static_cast<std::uint32_t>(items.size()) - 1;
}

// 0x545304 _ZN6glitch3gui10CGUIListBox10insertItemEjPKwi
// (An index past the end appends; the original inserts at the raw position.)
std::int32_t CGUIListBox::insertItem(std::uint32_t index, const wchar_t* text, int icon) {
    ListItem item;
    item.text.assign(text, text + std::wcslen(text));
    item.icon = icon;
    if (index > items.size()) {
        index = static_cast<std::uint32_t>(items.size());
    }
    items.insert(items.begin() + static_cast<std::ptrdiff_t>(index), item);
    recalculateItemHeight();
    recalculateItemWidth(icon);
    return static_cast<std::int32_t>(index);
}

// 0x544828 _ZN6glitch3gui10CGUIListBox7setItemEjPKwi
void CGUIListBox::setItem(std::uint32_t index, const wchar_t* text, int icon) {
    if (index >= items.size()) {
        return;
    }
    items[index].text.assign(text, text + std::wcslen(text));
    items[index].icon = icon;
    recalculateItemHeight();
    recalculateItemWidth(icon);
}

// 0x5446dc _ZN6glitch3gui10CGUIListBox9swapItemsEjj
void CGUIListBox::swapItems(std::uint32_t index1, std::uint32_t index2) {
    if (index1 < items.size() && index2 < items.size()) {
        std::swap(items[index1], items[index2]);
    }
}

// 0x544390 _ZN6glitch3gui10CGUIListBox10removeItemEj
void CGUIListBox::removeItem(std::uint32_t index) {
    if (index >= items.size()) {
        return;
    }
    if (selected == static_cast<int>(index)) {
        selected = -1;
    } else if (static_cast<int>(index) < selected) {
        selected -= 1;
        selectTime = os::Timer::getTime();
    }
    items.erase(items.begin() + static_cast<std::ptrdiff_t>(index));
    recalculateItemHeight();
}

// 0x544280 _ZN6glitch3gui10CGUIListBox5clearEv
void CGUIListBox::clear() {
    items.clear();
    selected = -1;
    itemsIconWidth = 0;
    if (scrollBar != nullptr) {
        scrollBar->setPos(0);  // K 0x98
    }
    recalculateItemHeight();
}

// 0x541dc4 _ZNK6glitch3gui10CGUIListBox11getSelectedEv
int CGUIListBox::getSelected() const {
    return selected;
}

// 0x542518 _ZN6glitch3gui10CGUIListBox11setSelectedEi
void CGUIListBox::setSelected(int index) {
    if (static_cast<std::uint32_t>(index) < items.size()) {
        selected = index;
    } else {
        selected = -1;
    }
    selectTime = os::Timer::getTime();
    recalculateScrollPos();
}

// 0x541de4 _ZN6glitch3gui10CGUIListBox13setSpriteBankEPNS0_14IGUISpriteBankE
void CGUIListBox::setSpriteBank(IGUISpriteBank* bank) {
    if (bank != nullptr) {
        ++bank->referenceCounter;
    }
    if (iconBank != nullptr) {
        iconBank->drop();
    }
    iconBank = bank;
}

// 0x541ee4 _ZN6glitch3gui10CGUIListBox20setAutoScrollEnabledEb
void CGUIListBox::setAutoScrollEnabled(bool scroll) {
    autoScroll = scroll;
}

// 0x541eec _ZNK6glitch3gui10CGUIListBox19isAutoScrollEnabledEv
bool CGUIListBox::isAutoScrollEnabled() const {
    return autoScroll;
}

// 0x541ff4 _ZN6glitch3gui10CGUIListBox20setItemOverrideColorEjRKNS_5video6SColorE
// (No bounds check, as in the original.)
void CGUIListBox::setItemOverrideColor(std::uint32_t index, const video::SColor& color) {
    for (SOverrideColor& entry : items[index].overrideColors) {
        entry.use = true;
        entry.color = color;
    }
}

// 0x542050 _ZN6glitch3gui10CGUIListBox20setItemOverrideColorEjNS0_18EGUI_LISTBOX_COLOREERKNS_5video6SColorE
void CGUIListBox::setItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType, const video::SColor& color) {
    if (index < items.size() && static_cast<std::uint32_t>(colorType) < EGUI_LBC_COUNT) {
        items[index].overrideColors[colorType].use = true;
        items[index].overrideColors[colorType].color = color;
    }
}

// 0x5420d4 _ZN6glitch3gui10CGUIListBox22clearItemOverrideColorEj
void CGUIListBox::clearItemOverrideColor(std::uint32_t index) {
    for (SOverrideColor& entry : items[index].overrideColors) {
        entry.use = false;
    }
}

// 0x542114 _ZN6glitch3gui10CGUIListBox22clearItemOverrideColorEjNS0_18EGUI_LISTBOX_COLOREE
void CGUIListBox::clearItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType) {
    if (index < items.size() && static_cast<std::uint32_t>(colorType) < EGUI_LBC_COUNT) {
        items[index].overrideColors[colorType].use = false;
    }
}

// 0x542168 _ZNK6glitch3gui10CGUIListBox20hasItemOverrideColorEjNS0_18EGUI_LISTBOX_COLOREE
bool CGUIListBox::hasItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType) const {
    if (index >= items.size() || static_cast<std::uint32_t>(colorType) >= EGUI_LBC_COUNT) {
        return false;
    }
    return items[index].overrideColors[colorType].use;
}

// 0x5421c8 _ZNK6glitch3gui10CGUIListBox20getItemOverrideColorEjNS0_18EGUI_LISTBOX_COLOREE
video::SColor CGUIListBox::getItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType) const {
    if (index < items.size() && static_cast<std::uint32_t>(colorType) < EGUI_LBC_COUNT) {
        return items[index].overrideColors[colorType].color;
    }
    return video::SColor{};
}

// 0x542258 _ZNK6glitch3gui10CGUIListBox19getItemDefaultColorENS0_18EGUI_LISTBOX_COLOREE
video::SColor CGUIListBox::getItemDefaultColor(EGUI_LISTBOX_COLOR colorType) const {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return video::SColor{};
    }
    switch (colorType) {
        case EGUI_LBC_TEXT:
            return skin->getColor(EGDC_BUTTON_TEXT);
        case EGUI_LBC_TEXT_HIGHLIGHT:
            return skin->getColor(EGDC_HIGH_LIGHT_TEXT);
        case EGUI_LBC_ICON:
            return skin->getColor(EGDC_ICON);
        case EGUI_LBC_ICON_HIGHLIGHT:
            return skin->getColor(EGDC_ICON_HIGH_LIGHT);
        default:
            return video::SColor{};
    }
}

// 0x541dcc _ZN6glitch3gui10CGUIListBox22updateAbsolutePositionEv
void CGUIListBox::updateAbsolutePosition() {
    IGUIElement::updateAbsolutePosition();
    recalculateItemHeight();
}

// 0x541c84 _ZN6glitch3gui10CGUIListBox21recalculateItemHeightEv
// The item height follows the default font of the skin: "A" plus 4. The total height drives the scroll bar range and visibility.
void CGUIListBox::recalculateItemHeight() {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    int total;
    if (font != skin->getFont(EGDF_DEFAULT)) {  // K 0x28
        if (font != nullptr) {
            font->drop();
        }
        font = skin->getFont(EGDF_DEFAULT);
        itemHeight = 0;
        if (font != nullptr) {
            itemHeight = font->getDimension(L"A").Height + 4;  // K 0x1c
            ++font->referenceCounter;
            total = itemHeight * static_cast<int>(items.size());
        } else {
            total = 0;
        }
    } else {
        total = itemHeight * static_cast<int>(items.size());
    }
    totalItemHeight = total;
    const int height = absoluteRect.LowerRightCorner.Y - absoluteRect.UpperLeftCorner.Y;
    scrollBar->setMax(total - height);        // K 0x80
    scrollBar->setVisible(totalItemHeight > height);  // K 0x30
}

// 0x541e18 _ZN6glitch3gui10CGUIListBox18recalculateScrollPosEv
void CGUIListBox::recalculateScrollPos() {
    if (!autoScroll) {
        return;
    }
    const int selectedPosition = (selected == -1 ? totalItemHeight : itemHeight * selected) - scrollBar->getPos();  // K 0x94
    const int height = absoluteRect.LowerRightCorner.Y - absoluteRect.UpperLeftCorner.Y;
    if (selectedPosition < 0) {
        scrollBar->setPos(scrollBar->getPos() + selectedPosition);
    } else if (selectedPosition > height - itemHeight) {
        scrollBar->setPos(itemHeight - height + selectedPosition + scrollBar->getPos());
    }
}

// 0x541ef4 _ZN6glitch3gui10CGUIListBox19recalculateItemWidthEi
void CGUIListBox::recalculateItemWidth(int icon) {
    if (iconBank == nullptr || icon < 0) {
        return;
    }
    std::vector<SGUISprite>& sprites = iconBank->getSprites();  // K 0x10
    if (static_cast<std::uint32_t>(icon) >= sprites.size() || sprites[icon].Frames.empty()) {
        return;
    }
    const std::uint32_t rectNumber = sprites[icon].Frames[0].rectNumber;
    std::vector<core::rect<int>>& positions = iconBank->getPositions();  // K 0x0c
    if (rectNumber < positions.size()) {
        const int width = detail::rectWidth(positions[rectNumber]);
        if (itemsIconWidth < width) {
            itemsIconWidth = width;
        }
    }
}

// 0x542400 _ZN6glitch3gui10CGUIListBox9selectNewEib
void CGUIListBox::selectNew(int ypos, bool onlyHover) {
    const std::uint32_t now = os::Timer::getTime();
    const int previous = selected;
    if (itemHeight != 0) {
        selected = (ypos - absoluteRect.UpperLeftCorner.Y - 1 + scrollBar->getPos()) / itemHeight;
    }
    if (selected < 0) {
        selected = 0;
    } else if (selected >= static_cast<int>(items.size())) {
        selected = static_cast<int>(items.size()) - 1;
    }
    recalculateScrollPos();
    if (parent != nullptr && !onlyHover) {
        postListBoxEvent(parent, this, (selected == previous && now < selectTime + 500) ? EGET_LISTBOX_SELECTED_AGAIN : EGET_LISTBOX_CHANGED);
    }
    selectTime = now;
}

// 0x5448ac _ZNK6glitch3gui10CGUIListBox22getSerializationLabelsENS0_18EGUI_LISTBOX_COLOREERNSt...
bool CGUIListBox::getSerializationLabels(EGUI_LISTBOX_COLOR colorType, core::stringc& useColorLabel, core::stringc& colorLabel) const {
    switch (colorType) {
        case EGUI_LBC_TEXT:
            useColorLabel = "UseColText";
            colorLabel = "ColText";
            return true;
        case EGUI_LBC_TEXT_HIGHLIGHT:
            useColorLabel = "UseColTextHl";
            colorLabel = "ColTextHl";
            return true;
        case EGUI_LBC_ICON:
            useColorLabel = "UseColIcon";
            colorLabel = "ColIcon";
            return true;
        case EGUI_LBC_ICON_HIGHLIGHT:
            useColorLabel = "UseColIconHl";
            colorLabel = "ColIconHl";
            return true;
        default:
            return false;
    }
}

// 0x5449b8 _ZNK6glitch3gui10CGUIListBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIListBox::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addBool("DrawBack", drawBack, false);              // K 0xd8
    attributes->addBool("MoveOverSelect", moveOverSelect, false);
    attributes->addBool("AutoScroll", autoScroll, false);
    attributes->addInt("ItemCount", static_cast<int>(items.size()), false);  // K 0x4c
    for (std::uint32_t i = 0; i < items.size(); ++i) {
        attributes->addString(itemAttributeName("", i).c_str(), items[i].text.c_str(), false);  // K 0x94
        for (int c = 0; c < EGUI_LBC_COUNT; ++c) {
            core::stringc useLabel;
            core::stringc colorLabel;
            if (!getSerializationLabels(static_cast<EGUI_LISTBOX_COLOR>(c), useLabel, colorLabel)) {
                return;
            }
            const SOverrideColor& entry = items[i].overrideColors[c];
            attributes->addBool(itemAttributeName(useLabel.c_str(), i).c_str(), entry.use, false);
            if (entry.use) {
                attributes->addColor(itemAttributeName(colorLabel.c_str(), i).c_str(), entry.color, false);  // K 0x118
            }
        }
    }
}

// 0x544d7c _ZN6glitch3gui10CGUIListBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIListBox::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    clear();  // K 0x98
    drawBack = attributes->getBool("DrawBack");               // K 0xe4
    moveOverSelect = attributes->getBool("MoveOverSelect");
    autoScroll = attributes->getBool("AutoScroll");
    IGUIElement::deserializeAttributes(attributes, options);
    const int count = attributes->getInt("ItemCount");        // K 0x58
    for (int i = 0; i < count; ++i) {
        const std::wstring text = attributes->getStringW(itemAttributeName("", static_cast<std::uint32_t>(i)).c_str());  // K 0x9c
        addItem(text.c_str(), -1);  // K 0x88
        for (int c = 0; c < EGUI_LBC_COUNT; ++c) {
            core::stringc useLabel;
            core::stringc colorLabel;
            if (!getSerializationLabels(static_cast<EGUI_LISTBOX_COLOR>(c), useLabel, colorLabel)) {
                return;
            }
            SOverrideColor& entry = items[static_cast<std::size_t>(i)].overrideColors[c];
            entry.use = attributes->getBool(itemAttributeName(useLabel.c_str(), static_cast<std::uint32_t>(i)).c_str());
            if (entry.use) {
                entry.color = attributes->getColor(itemAttributeName(colorLabel.c_str(), static_cast<std::uint32_t>(i)).c_str());  // K 0x124
            }
        }
    }
}

// 0x542f54 _ZN6glitch3gui10CGUIListBox7onEventERKNS_6SEventE
bool CGUIListBox::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    if (!enabled) {
        return forward();
    }
    if (event.EventType == EET_MOUSE_INPUT_EVENT) {
        const core::position2d<int> point = detail::makePoint(event.MouseInput.X, event.MouseInput.Y);
        switch (event.MouseInput.Event) {
            case EMIE_LMOUSE_PRESSED_DOWN:
                selecting = true;
                return true;
            case EMIE_LMOUSE_LEFT_UP:
                selecting = false;
                if (!isPointInside(point)) {  // K 0x10
                    return true;
                }
                selectNew(event.MouseInput.Y, false);
                return true;
            case EMIE_MOUSE_MOVED:
                if ((!selecting && !moveOverSelect) || !isPointInside(point)) {
                    return forward();
                }
                selectNew(event.MouseInput.Y, true);
                return true;
            case EMIE_MOUSE_WHEEL:
                scrollBar->setPos(scrollBar->getPos() - 10 * static_cast<int>(event.MouseInput.Wheel));
                return true;
            default:
                return forward();
        }
    }
    if (event.EventType == EET_GUI_EVENT) {
        if (event.GUIEvent.EventType == EGET_ELEMENT_FOCUS_LOST) {
            if (event.GUIEvent.Caller == this) {
                selecting = false;
            }
        } else if (event.GUIEvent.EventType == EGET_SCROLL_BAR_CHANGED && event.GUIEvent.Caller == scrollBar) {
            return true;
        }
        return forward();
    }
    if (event.EventType != EET_KEY_INPUT_EVENT) {
        return forward();
    }

    const int key = event.KeyInput.Key;
    if (!event.KeyInput.PressedDown) {
        if (key == KEY_RETURN || key == KEY_SPACE) {
            if (parent != nullptr) {
                postListBoxEvent(parent, this, EGET_LISTBOX_SELECTED_AGAIN);
            }
            return true;
        }
        return forward();
    }
    if (key == KEY_DOWN || key == KEY_UP || key == KEY_PRIOR || key == KEY_NEXT || key == KEY_END || key == KEY_HOME) {
        const int previous = selected;
        const int pageSize = itemHeight != 0 ? (absoluteRect.LowerRightCorner.Y - absoluteRect.UpperLeftCorner.Y) / itemHeight : 0;
        switch (key) {
            case KEY_DOWN:
                selected = previous + 1;
                break;
            case KEY_UP:
                selected = previous - 1;
                break;
            case KEY_PRIOR:
                selected = previous - pageSize;
                break;
            case KEY_NEXT:
                selected = previous + pageSize;
                break;
            case KEY_END:
                selected = static_cast<int>(items.size()) - 1;
                break;
            default:  // KEY_HOME
                selected = 0;
                break;
        }
        if (selected >= static_cast<int>(items.size())) {
            selected = static_cast<int>(items.size()) - 1;
        } else if (selected < 0) {
            selected = 0;
        }
        recalculateScrollPos();
        if (selected != previous && parent != nullptr && !selecting && !moveOverSelect) {
            postListBoxEvent(parent, this, EGET_LISTBOX_CHANGED);
            return true;
        }
        return true;
    }
    if (event.KeyInput.Char == 0) {
        return forward();
    }

    // Type-ahead: characters typed within half a second build a prefix that is searched for from the selected item on. (The search wraps
    // around to the start; the wrap-around loop of the original stops at the first item that does not match, which this keeps.)
    const std::uint32_t now = os::Timer::getTime();
    if (now - lastKeyTime >= 500) {
        keyBuffer.assign(1, static_cast<wchar_t>(event.KeyInput.Char));
    } else if (!(keyBuffer.size() == 1 && keyBuffer[0] == static_cast<wchar_t>(event.KeyInput.Char))) {
        keyBuffer.push_back(static_cast<wchar_t>(event.KeyInput.Char));
    }
    lastKeyTime = now;
    const int start = selected;
    auto prefixEquals = [&](std::size_t itemIndex) {
        const std::wstring prefix = items[itemIndex].text.substr(0, keyBuffer.size());
        return core::wcsicmp(keyBuffer.c_str(), prefix.c_str()) == 0;
    };
    if (start >= 0 && keyBuffer.size() > 1 && items[static_cast<std::size_t>(start)].text.size() >= keyBuffer.size()) {
        if (prefixEquals(static_cast<std::size_t>(start))) {
            return true;
        }
    }
    for (int current = start + 1; current < static_cast<int>(items.size()); ++current) {
        if (keyBuffer.size() <= items[static_cast<std::size_t>(current)].text.size() && prefixEquals(static_cast<std::size_t>(current))) {
            if (parent != nullptr && selected != current && !selecting && !moveOverSelect) {
                postListBoxEvent(parent, this, EGET_LISTBOX_CHANGED);
            }
            setSelected(current);  // K 0xa0
            return true;
        }
    }
    if (start < 0) {
        return true;
    }
    for (int current = 0; current <= start; ++current) {
        if (keyBuffer.size() <= items[static_cast<std::size_t>(current)].text.size() && !prefixEquals(static_cast<std::size_t>(current))) {
            if (parent != nullptr && selected != current && !selecting && !moveOverSelect) {
                selected = current;
                postListBoxEvent(parent, this, EGET_LISTBOX_CHANGED);
            }
            setSelected(current);
            return true;
        }
    }
    return true;
}

// 0x5439b4 _ZN6glitch3gui10CGUIListBox4drawEv
void CGUIListBox::draw() {
    if (!visible) {
        return;
    }
    recalculateItemHeight();
    IGUISkin* skin = environment->getSkin();  // K 0x38

    // The clip rectangle of the items: inside the frame, without the visible scroll bar, against the element's clipping rectangle.
    core::rect<int> clipRect = detail::makeRect(absoluteRect.UpperLeftCorner.X + 1, absoluteRect.UpperLeftCorner.Y + 1, absoluteRect.LowerRightCorner.X,
                                                absoluteRect.LowerRightCorner.Y);
    if (scrollBar->isVisible()) {  // K 0x2c
        clipRect.LowerRightCorner.X = absoluteRect.LowerRightCorner.X - skin->getSize(EGDS_SCROLLBAR_SIZE);
    }
    clipRect.LowerRightCorner.Y -= 1;
    detail::rectClipAgainst(clipRect, absoluteClippingRect);

    core::rect<int> frameRect = absoluteRect;
    skin->draw3DSunkenPane(this, skin->getColor(EGDC_3D_HIGH_LIGHT), true, drawBack, frameRect, &clipRect);  // K 0x48

    frameRect = detail::makeRect(absoluteRect.UpperLeftCorner.X + 1, absoluteRect.UpperLeftCorner.Y, absoluteRect.LowerRightCorner.X,
                                 absoluteRect.LowerRightCorner.Y);
    if (scrollBar->isVisible()) {
        frameRect.LowerRightCorner.X = absoluteRect.LowerRightCorner.X - skin->getSize(EGDS_SCROLLBAR_SIZE);
    }
    frameRect.LowerRightCorner.Y = absoluteRect.UpperLeftCorner.Y + itemHeight;
    frameRect.UpperLeftCorner.Y -= scrollBar->getPos();
    frameRect.LowerRightCorner.Y -= scrollBar->getPos();

    bool highlight = true;
    if (!highlightWhenNotFocused) {
        highlight = environment->hasFocus(this) || environment->hasFocus(scrollBar);  // K 0x1c
    }

    for (std::size_t i = 0; i < items.size(); ++i) {
        if (frameRect.LowerRightCorner.Y >= absoluteRect.UpperLeftCorner.Y && frameRect.UpperLeftCorner.Y <= absoluteRect.LowerRightCorner.Y) {
            const bool isSelected = selected == static_cast<int>(i) && highlight;
            if (isSelected) {
                skin->draw2DRectangle(this, skin->getColor(EGDC_HIGH_LIGHT), frameRect, &clipRect);  // K 0x64
            }
            core::rect<int> textRect = detail::makeRect(frameRect.UpperLeftCorner.X + 3, frameRect.UpperLeftCorner.Y, frameRect.LowerRightCorner.X,
                                                        frameRect.LowerRightCorner.Y);
            if (font != nullptr) {
                const ListItem& item = items[i];
                auto colorOf = [&](EGUI_LISTBOX_COLOR kind) {
                    return hasItemOverrideColor(static_cast<std::uint32_t>(i), kind) ? getItemOverrideColor(static_cast<std::uint32_t>(i), kind)
                                                                                      : getItemDefaultColor(kind);  // K 0xbc, 0xc0, 0xc4
                };
                if (iconBank != nullptr && item.icon >= 0) {
                    const core::position2d<int> iconPosition =
                        detail::makePoint(textRect.UpperLeftCorner.X + itemsIconWidth / 2,
                                          frameRect.UpperLeftCorner.Y + (textRect.LowerRightCorner.Y - frameRect.UpperLeftCorner.Y) / 2);
                    if (isSelected) {
                        const video::SColor iconColor = colorOf(EGUI_LBC_ICON_HIGHLIGHT);
                        iconBank->draw2DSprite(static_cast<std::uint32_t>(item.icon), iconPosition, &clipRect, iconColor, selectTime,
                                               os::Timer::getTime(), false, true);  // K 0x24
                    } else {
                        const video::SColor iconColor = colorOf(EGUI_LBC_ICON);
                        iconBank->draw2DSprite(static_cast<std::uint32_t>(item.icon), iconPosition, &clipRect, iconColor, 0,
                                               selected == static_cast<int>(i) ? os::Timer::getTime() : 0, false, true);
                    }
                }
                textRect.UpperLeftCorner.X += itemsIconWidth + 3;
                font->draw(item.text.c_str(), textRect, colorOf(isSelected ? EGUI_LBC_TEXT_HIGHLIGHT : EGUI_LBC_TEXT), false, true, &clipRect);  // K 0x0c
            }
        }
        frameRect.UpperLeftCorner.Y += itemHeight;
        frameRect.LowerRightCorner.Y += itemHeight;
    }
    IGUIElement::draw();
}

}  // namespace glitch::gui
