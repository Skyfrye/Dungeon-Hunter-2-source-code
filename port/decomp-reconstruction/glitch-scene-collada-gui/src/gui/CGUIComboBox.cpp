// Bodies of glitch::gui::IGUIComboBox and CGUIComboBox (canonical classes: gui/CGUIComboBox.hpp). This file replaces their bodies in
// gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_24.cpp and recon/slice_33.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIComboBox.hpp"

#include <cwchar>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/CGUIListBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIStaticText.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"

namespace glitch::gui {

namespace {

// The attribute name of the item `index` of the combo box: the raw character with that value, then "Text" (see CGUIListBox).
std::string comboItemName(std::uint32_t index) {
    std::string name;
    name.push_back(static_cast<char>(index));
    name += "Text";
    return name;
}

}  // namespace

// 0x6aae64 _ZN6glitch3gui12IGUIComboBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIComboBox::IGUIComboBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_COMBO_BOX, environment, parent, id, rectangle) {}

// 0x6acbbc _ZN6glitch3gui12IGUIComboBoxD1Ev (D0 0x6acd10 skipped)
IGUIComboBox::~IGUIComboBox() = default;

// 0x6ab38c _ZN6glitch3gui12CGUIComboBoxC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE (C2 0x6ab740)
CGUIComboBox::CGUIComboBox(IGUIEnvironment* environmentValue, IGUIElement* parentElement, int id, core::rect<int> rectangle)
    : IGUIComboBox(environmentValue, parentElement, id, rectangle) {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    const int buttonWidth = skin != nullptr ? skin->getSize(EGDS_WINDOW_BUTTON_WIDTH) : 15;
    const int width = rectangle.LowerRightCorner.X - rectangle.UpperLeftCorner.X;
    const int height = rectangle.LowerRightCorner.Y - rectangle.UpperLeftCorner.Y;
    listButton = environment->addButton(detail::makeRect(width - 2 - buttonWidth, 2, width - 2, height - 2), this, -1, L"", nullptr);  // K 0x78
    if (skin != nullptr) {
        IGUISpriteBank* sprites = skin->getSpriteBank();  // K 0x30
        if (sprites != nullptr) {
            listButton->setSpriteBank(sprites);  // K 0x90
            listButton->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(EGDI_CURSOR_DOWN)), skin->getColor(EGDC_WINDOW_SYMBOL), false);  // K 0x94
            listButton->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(EGDI_CURSOR_DOWN)), skin->getColor(EGDC_WINDOW_SYMBOL), false);
        }
    }
    listButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT);
    listButton->setSubElement(true);  // K 0x38
    listButton->tabStop = false;

    const core::rect<int> textRect =
        detail::makeRect(2, 2, relativeRect.LowerRightCorner.X - 2 - relativeRect.UpperLeftCorner.X - detail::rectWidth(listButton->absoluteRect),
                         relativeRect.LowerRightCorner.Y - 2 - relativeRect.UpperLeftCorner.Y);
    selectedText = environment->addStaticText(L"", textRect, false, false, this, -1, false);  // K 0xa8
    selectedText->setSubElement(true);
    selectedText->setAlignment(EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT);
    selectedText->setTextAlignment(EGUIA_UPPERLEFT, EGUIA_CENTER);  // K 0xa0
    selectedText->enableOverrideColor(true);                         // K 0x8c
    tabStop = true;
    noClip = true;
    setTabOrder(-1);
}

// 0x6acc30 _ZN6glitch3gui12CGUIComboBoxD1Ev (D2 0x6accd4 skipped)
CGUIComboBox::~CGUIComboBox() = default;

// 0x6aaa88 _ZNK6glitch3gui12CGUIComboBox12getItemCountEv
std::uint32_t CGUIComboBox::getItemCount() const {
    return static_cast<std::uint32_t>(items.size());
}

// 0x6aaab8 _ZNK6glitch3gui12CGUIComboBox7getItemEj
const wchar_t* CGUIComboBox::getItem(std::uint32_t idx) const {
    return idx < items.size() ? items[idx].c_str() : nullptr;
}

// 0x6aaafc _ZNK6glitch3gui12CGUIComboBox7getTextEv
const wchar_t* CGUIComboBox::getText() const {
    return getItem(static_cast<std::uint32_t>(selected));  // K 0x80
}

// 0x6aab14 _ZNK6glitch3gui12CGUIComboBox11getSelectedEv
int CGUIComboBox::getSelected() const {
    return selected;
}

// 0x6aab1c _ZN6glitch3gui12CGUIComboBox11setSelectedEi
void CGUIComboBox::setSelected(int idx) {
    if (idx >= -1 && idx < static_cast<int>(items.size())) {
        selected = idx;
        selectedText->setText(idx == -1 ? L"" : items[static_cast<std::size_t>(idx)].c_str());  // K 0x44
    }
}

// 0x6aaa64 _ZN6glitch3gui12CGUIComboBox16setTextAlignmentENS0_14EGUI_ALIGNMENTES2_
void CGUIComboBox::setTextAlignment(EGUI_ALIGNMENT horizontal, EGUI_ALIGNMENT vertical) {
    hAlign = horizontal;
    vAlign = vertical;
    selectedText->setTextAlignment(horizontal, vertical);  // K 0xa0
}

// 0x6ac7a4 _ZN6glitch3gui12CGUIComboBox7addItemEPKw
std::uint32_t CGUIComboBox::addItem(const wchar_t* text) {
    items.emplace_back(text);
    if (selected == -1) {
        setSelected(0);  // K 0x94
    }
    return static_cast<std::uint32_t>(items.size()) - 1;
}

// 0x6ac938 _ZN6glitch3gui12CGUIComboBox10removeItemEj
void CGUIComboBox::removeItem(std::uint32_t id) {
    if (id < items.size()) {
        if (selected == static_cast<int>(id)) {
            setSelected(-1);
        }
        items.erase(items.begin() + static_cast<std::ptrdiff_t>(id));
    }
}

// 0x6ac760 _ZN6glitch3gui12CGUIComboBox5clearEv
void CGUIComboBox::clear() {
    items.clear();
    setSelected(-1);
}

// 0x6aabb4 _ZN6glitch3gui12CGUIComboBox25sendSelectionChangedEventEv
void CGUIComboBox::sendSelectionChangedEvent() {
    if (parent != nullptr) {
        SEvent changed;
        changed.EventType = EET_GUI_EVENT;
        changed.GUIEvent.Caller = this;
        changed.GUIEvent.Element = nullptr;
        changed.GUIEvent.EventType = EGET_COMBO_BOX_CHANGED;
        parent->onEvent(changed);
    }
}

// 0x6aac1c _ZN6glitch3gui12CGUIComboBox13openCloseMenuEv
void CGUIComboBox::openCloseMenu() {
    if (listBox != nullptr) {
        environment->setFocus(this);  // K 0x10
        listBox->remove();            // K 0x1c
        listBox = nullptr;
        return;
    }
    if (parent != nullptr) {
        parent->bringToFront(this);  // K 0x64
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    std::uint32_t rows = static_cast<std::uint32_t>(items.size());
    if (rows > 5) {
        rows = 5;
    } else if (rows == 0) {
        rows = 1;
    }
    IGUIFont* font = skin->getFont(EGDF_DEFAULT);  // K 0x28
    int height = static_cast<int>(rows);
    if (font != nullptr) {
        height *= font->getDimension(L"A").Height + 4;  // K 0x1c
    }
    const int comboHeight = detail::rectHeight(absoluteRect);
    const core::rect<int> listRect = detail::makeRect(0, comboHeight, detail::rectWidth(absoluteRect), comboHeight + height);
    CGUIListBox* menu = new CGUIListBox(environment, this, -1, listRect, false, true, true);
    listBox = menu;
    menu->setSubElement(true);  // K 0x38
    menu->drop();
    for (const std::wstring& item : items) {
        menu->addItem(item.c_str());  // K 0x84
    }
    menu->setSelected(selected);      // K 0xa0
    environment->setFocus(listBox);   // K 0x10
}

// 0x6abb48 _ZN6glitch3gui12CGUIComboBox7onEventERKNS_6SEventE
bool CGUIComboBox::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    auto clampSelection = [this]() {
        if (selected < 0) {
            setSelected(0);
        }
        if (selected >= static_cast<int>(items.size())) {
            setSelected(static_cast<int>(items.size()) - 1);
        }
    };
    if (!enabled) {
        return forward();
    }
    switch (event.EventType) {
        case EET_MOUSE_INPUT_EVENT: {
            const core::position2d<int> point = detail::makePoint(event.MouseInput.X, event.MouseInput.Y);
            switch (event.MouseInput.Event) {
                case EMIE_LMOUSE_PRESSED_DOWN:
                    if (listBox != nullptr && listBox->isPointInside(point)) {  // K 0x10
                        listBox->onEvent(event);
                    }
                    return true;
                case EMIE_LMOUSE_LEFT_UP:
                    if (listBox == nullptr || !detail::rectContains(listBox->absoluteRect, point) || !listBox->onEvent(event)) {
                        openCloseMenu();
                    }
                    return true;
                case EMIE_MOUSE_WHEEL: {
                    const int previous = selected;
                    // The original computes (Wheel < 0 ? Selected + 1 : Selected) and passes 1 when that is not zero, else -1, to setSelected (a
                    // slip for "Selected +- 1"); the clamp below then brings the result into range. Kept as the listing does it.
                    setSelected(((event.MouseInput.Wheel < 0.0f ? selected + 1 : selected) != 0) ? 1 : -1);
                    clampSelection();
                    if (selected != previous) {
                        sendSelectionChangedEvent();
                    }
                    return forward();
                }
                default:
                    return forward();
            }
        }
        case EET_KEY_INPUT_EVENT: {
            const bool keyDown = event.KeyInput.PressedDown;
            const int key = event.KeyInput.Key;
            if (listBox != nullptr && keyDown && key == KEY_ESCAPE) {
                openCloseMenu();
                return true;
            }
            if (key == KEY_RETURN || key == KEY_SPACE) {
                if (!keyDown) {
                    openCloseMenu();
                }
                listButton->setPressed(listBox == nullptr);  // K 0x9c
                return true;
            }
            if (!keyDown) {
                return forward();
            }
            const int previous = selected;
            bool absorb = true;
            switch (key) {
                case KEY_PRIOR:
                case KEY_HOME:
                    setSelected(0);
                    break;
                case KEY_NEXT:
                case KEY_END:
                    setSelected(static_cast<int>(items.size()) - 1);
                    break;
                case KEY_UP:
                    setSelected(previous - 1);
                    break;
                case KEY_DOWN:
                    setSelected(previous + 1);
                    break;
                default:
                    absorb = false;
                    break;
            }
            clampSelection();
            if (previous != selected) {
                sendSelectionChangedEvent();
            }
            return absorb ? true : forward();
        }
        case EET_GUI_EVENT:
            switch (event.GUIEvent.EventType) {
                case EGET_ELEMENT_FOCUS_LOST:
                    if (listBox != nullptr) {
                        const IGUIElement* caller = static_cast<const IGUIElement*>(event.GUIEvent.Caller);
                        const IGUIElement* element = static_cast<const IGUIElement*>(event.GUIEvent.Element);
                        if (environment->hasFocus(listBox) || detail::isMyChild<IGUIElement>(listBox, caller)) {  // K 0x1c
                            if (element != this && element != listButton && element != listBox &&
                                (element == nullptr || !detail::isMyChild<IGUIElement>(listBox, element))) {
                                openCloseMenu();
                            }
                        }
                    }
                    return forward();
                case EGET_BUTTON_CLICKED:
                    if (event.GUIEvent.Caller == listButton) {
                        openCloseMenu();
                        return true;
                    }
                    return forward();
                case EGET_LISTBOX_CHANGED:
                case EGET_LISTBOX_SELECTED_AGAIN:
                    if (event.GUIEvent.Caller != listBox) {
                        return true;
                    }
                    setSelected(listBox->getSelected());  // K 0x9c
                    if (selected < 0 || selected >= static_cast<int>(items.size())) {
                        setSelected(-1);
                    }
                    openCloseMenu();
                    sendSelectionChangedEvent();
                    return true;
                default:
                    return forward();
            }
        default:
            return forward();
    }
}

// 0x6ac368 _ZN6glitch3gui12CGUIComboBox4drawEv
void CGUIComboBox::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUIElement* currentFocus = environment->getFocus();  // K 0x14
    if (currentFocus != lastFocus) {
        bool focused = false;
        if (currentFocus == this) {
            focused = true;
        } else if (currentFocus != nullptr) {
            focused = detail::isMyChild<IGUIElement>(this, currentFocus);
        }
        lastFocus = currentFocus;
        hasFocus = focused;
        selectedText->setBackgroundColor(skin->getColor(EGDC_HIGH_LIGHT));  // K 0x94
        selectedText->setDrawBackground(hasFocus);                           // K 0x98
        selectedText->setOverrideColor(skin->getColor(hasFocus ? EGDC_HIGH_LIGHT_TEXT : EGDC_BUTTON_TEXT));  // K 0x84
    }
    skin->draw3DSunkenPane(this, skin->getColor(EGDC_3D_HIGH_LIGHT), true, true, absoluteRect, &absoluteClippingRect);  // K 0x48
    IGUIElement::draw();
}

// 0x6ac12c _ZNK6glitch3gui12CGUIComboBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIComboBox::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addEnum("HTextAlign", static_cast<int>(hAlign), GUIAlignmentNames, false);  // K 0xf4
    attributes->addEnum("VTextAlign", static_cast<int>(vAlign), GUIAlignmentNames, false);
    attributes->addInt("Selected", selected, false);                                          // K 0x4c
    attributes->addInt("ItemCount", static_cast<int>(items.size()), false);
    for (std::uint32_t i = 0; i < items.size(); ++i) {
        attributes->addString(comboItemName(i).c_str(), items[i].c_str(), false);  // K 0x94
    }
}

// 0x6ac9bc _ZN6glitch3gui12CGUIComboBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIComboBox::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    const int horizontal = attributes->getEnum("HTextAlign", GUIAlignmentNames);  // K 0x100
    const int vertical = attributes->getEnum("VTextAlign", GUIAlignmentNames);
    setTextAlignment(static_cast<EGUI_ALIGNMENT>(horizontal), static_cast<EGUI_ALIGNMENT>(vertical));  // K 0x98
    clear();                                                                                            // K 0x8c
    const int count = attributes->getInt("ItemCount");
    for (int i = 0; i != count; ++i) {
        const std::wstring text = attributes->getStringW(comboItemName(static_cast<std::uint32_t>(i)).c_str());  // K 0x9c
        addItem(text.c_str());  // K 0x84
    }
    setSelected(attributes->getInt("Selected"));  // K 0x94
}

}  // namespace glitch::gui
