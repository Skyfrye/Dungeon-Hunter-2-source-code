// Tests of the canonical glitch::gui classes (scene-owner gui family): a CGUIEnvironment without a video driver and without a file system
// (the root element covers a 0x0 screen, the built-in font cannot be loaded without a driver) and the widgets it creates. The checks are on
// the state the widgets keep (items, ranges, selection, tab order, text) and on the event routing between a widget, the root element and the
// user receiver; nothing is drawn.
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/CGUICheckBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIComboBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIContextMenu.hpp"
#include "glitch-scene-collada-gui/gui/CGUIEditBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/CGUIListBox.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"
#include "glitch-scene-collada-gui/gui/CGUIScrollBar.hpp"
#include "glitch-scene-collada-gui/gui/CGUISpinBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIStaticText.hpp"
#include "glitch-scene-collada-gui/gui/CGUITabControl.hpp"
#include "glitch-scene-collada-gui/gui/CGUITable.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"

#include <cstdio>
#include <cstring>
#include <cwchar>

using namespace glitch;
using namespace glitch::gui;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)
#define CHECK_WSTR(a, b) do { if (std::wcscmp((a), (b)) != 0) { std::printf("FAIL %s:%d %s != %s\n", __FILE__, __LINE__, #a, #b); ++failures; } } while (0)

namespace {

core::rect<int> rc(int l, int t, int r, int b) {
    return detail::makeRect(l, t, r, b);
}

// A fixed pitch font (8 x 12 pixels per character) standing in for the built-in bitmap font, which needs a video driver to load.
struct FakeFont : IGUIFont {
    void draw(const wchar_t*, const core::rect<int>&, video::SColor, bool, bool, const core::rect<int>*) override {}
    void draw(const char*, const core::rect<int>&, video::SColor, bool, bool, const core::rect<int>*) override {}
    void drawInTexture(const wchar_t*, const boost::intrusive_ptr<video::ITexture>&, core::rect<int>, video::SColor, bool, bool) override {}
    void drawInTexture(const char*, const boost::intrusive_ptr<video::ITexture>&, core::rect<int>, video::SColor, bool, bool) override {}
    core::dimension2d<int> getDimension(const wchar_t* text) const override {
        core::dimension2d<int> size;
        size.Width = static_cast<int>(std::wcslen(text)) * 8;
        size.Height = 12;
        return size;
    }
    core::dimension2d<int> getDimension(const char* text) const override {
        core::dimension2d<int> size;
        size.Width = static_cast<int>(std::strlen(text)) * 8;
        size.Height = 12;
        return size;
    }
    int getCharacterFromPos(const wchar_t* text, int pixelX) const override {
        const int index = pixelX / 8;
        const int length = static_cast<int>(std::wcslen(text));
        return index < length ? index : -1;
    }
    void setKerningWidth(int) override {}
    void setKerningHeight(int) override {}
    void setBorder(std::uint32_t, video::SColor) override {}
    int getKerningWidth(const wchar_t*, const wchar_t*) const override { return 0; }
    int getKerningHeight() const override { return 0; }
    void setTracking(int) override {}
    int getTracking() const override { return 0; }
};

// Counts the GUI events that reach the user receiver, by type.
struct CountingReceiver : IEventReceiver {
    int counts[EGET_COUNT] = {};
    const void* lastCaller = nullptr;
    bool consume = false;  // the result of onEvent: true rejects focus changes and the like
    bool onEvent(const SEvent& event) override {
        if (event.EventType == EET_GUI_EVENT && event.GUIEvent.EventType >= 0 && event.GUIEvent.EventType < EGET_COUNT) {
            ++counts[event.GUIEvent.EventType];
            lastCaller = event.GUIEvent.Caller;
        }
        return consume;
    }
};

SEvent mouse(int event, int x, int y) {
    SEvent e;
    e.EventType = EET_MOUSE_INPUT_EVENT;
    e.MouseInput.X = x;
    e.MouseInput.Y = y;
    e.MouseInput.Wheel = 0.0f;
    e.MouseInput.Event = event;
    return e;
}

SEvent guiEvent(const void* caller, int type) {
    SEvent e;
    e.EventType = EET_GUI_EVENT;
    e.GUIEvent.Caller = caller;
    e.GUIEvent.Element = nullptr;
    e.GUIEvent.EventType = type;
    return e;
}

void testEnvironment(CGUIEnvironment& env) {
    IGUIElement* root = env.getRootGUIElement();
    CHECK(root != nullptr);
    CHECK(root->getType() == EGUIET_ROOT);
    CHECK(root->getEnvironment() == &env);
    CHECK(root->getParent() == nullptr);
    CHECK(env.getSkin() != nullptr);
    CHECK(env.getDefaultGUIElementFactory() != nullptr);
    CHECK(env.getRegisteredGUIElementFactoryCount() == 1);
    CHECK(env.getGUIElementFactory(0) == env.getDefaultGUIElementFactory());
    CHECK(env.getVideoDriver() == nullptr);
    CHECK(env.getFocus() == nullptr);
}

void testFactory(CGUIEnvironment& env) {
    CDefaultGUIElementFactory* factory = static_cast<CDefaultGUIElementFactory*>(env.getDefaultGUIElementFactory());
    CHECK(factory->getCreatableGUIElementTypeCount() == 22);
    CHECK(factory->getCreateableGUIElementType(0) == EGUIET_BUTTON);
    CHECK(std::strcmp(factory->getCreateableGUIElementTypeName(EGUIET_BUTTON), "button") == 0);
    CHECK(factory->getTypeFromName("button") == EGUIET_BUTTON);
    CHECK(factory->getTypeFromName("noSuchElement") == EGUIET_ROOT);
    CHECK(factory->getCreateableGUIElementTypeName(EGUIET_ROOT) == nullptr);
    // A button created by name is a child of the parent given.
    IGUIElement* parent = env.addStaticText(L"p", rc(0, 0, 50, 50));
    IGUIElement* created = env.addGUIElement("button", parent);
    CHECK(created != nullptr && created->getType() == EGUIET_BUTTON && created->getParent() == parent);
    CHECK(env.addGUIElement("noSuchElement", parent) == nullptr);
    parent->remove();
}

void testButton(CGUIEnvironment& env) {
    IGUIButton* button = env.addButton(rc(10, 10, 60, 30), nullptr, 7, L"OK", L"tip");
    CHECK(button != nullptr);
    CHECK(button->getType() == EGUIET_BUTTON);
    CHECK(button->getID() == 7);
    CHECK_WSTR(button->getText(), L"OK");
    CHECK_WSTR(button->getToolTipText().c_str(), L"tip");
    CHECK(button->getParent() == env.getRootGUIElement());
    CHECK(button->getAbsolutePosition().UpperLeftCorner.X == 10 && button->getAbsolutePosition().LowerRightCorner.Y == 30);
    CHECK(!button->isPushButton());
    CHECK(!button->isPressed());
    button->setIsPushButton(true);
    CHECK(button->isPushButton());
    button->setPressed(true);
    CHECK(button->isPressed());
    button->setPressed(false);
    CHECK(!button->isPressed());
    button->setDrawBorder(false);
    CHECK(!button->isDrawingBorder());
    button->setUseAlphaChannel(true);
    CHECK(button->isAlphaChannelUsed());
    CHECK(button->isTabStop());
    CHECK(env.getElementById(7) == button);
    CHECK(env.getElementById(8) == nullptr);
    button->setName("okButton");
    CHECK(env.getElementByName("okButton") == button);
    CHECK(env.getElementByName("OKBUTTON") == nullptr);
    button->remove();
    CHECK(env.getElementById(7) == nullptr);
}

void testFocus(CGUIEnvironment& env) {
    IGUIButton* a = env.addButton(rc(0, 0, 10, 10), nullptr, 1);
    IGUIButton* b = env.addButton(rc(20, 0, 30, 10), nullptr, 2);
    CHECK(env.setFocus(a));
    CHECK(env.getFocus() == a && env.hasFocus(a) && !env.hasFocus(b));
    CHECK(env.setFocus(b));
    CHECK(env.getFocus() == b && !env.hasFocus(a));
    // removeFocus drops whatever has the focus, whichever element is named (the original does the same), and answers true unless the
    // FOCUS_LOST event of the named focus element was consumed.
    CHECK(env.removeFocus(a));
    CHECK(env.getFocus() == nullptr);
    a->remove();
    b->remove();
}

void testButtonClick(CGUIEnvironment& env) {
    CountingReceiver receiver;
    env.setUserEventReceiver(&receiver);
    IGUIButton* button = env.addButton(rc(10, 10, 60, 30), nullptr, 9, L"go");
    // The press inside the button focuses it and presses it; the release inside posts BUTTON_CLICKED to the parent (the root), which hands
    // it to the user receiver.
    CHECK(env.postEventFromUser(mouse(EMIE_LMOUSE_PRESSED_DOWN, 20, 20)));
    CHECK(env.getFocus() == button);
    CHECK(button->isPressed());
    CHECK(receiver.counts[EGET_BUTTON_CLICKED] == 0);
    CHECK(env.postEventFromUser(mouse(EMIE_LMOUSE_LEFT_UP, 20, 20)));
    CHECK(!button->isPressed());
    CHECK(receiver.counts[EGET_BUTTON_CLICKED] == 1);
    CHECK(receiver.lastCaller == static_cast<const void*>(static_cast<IGUIElement*>(button)));
    // A press inside and a release outside does not click.
    env.postEventFromUser(mouse(EMIE_LMOUSE_PRESSED_DOWN, 20, 20));
    env.postEventFromUser(mouse(EMIE_LMOUSE_LEFT_UP, 200, 200));
    CHECK(receiver.counts[EGET_BUTTON_CLICKED] == 1);
    // A disabled button ignores the click.
    button->setEnabled(false);
    env.postEventFromUser(mouse(EMIE_LMOUSE_PRESSED_DOWN, 20, 20));
    env.postEventFromUser(mouse(EMIE_LMOUSE_LEFT_UP, 20, 20));
    CHECK(receiver.counts[EGET_BUTTON_CLICKED] == 1);
    button->remove();
    env.setUserEventReceiver(nullptr);
}

void testRootEventFilter(CGUIEnvironment& env) {
    // CGUIEnvironment::onEvent: a GUI event whose caller is the root itself never reaches the user receiver; the others do.
    CountingReceiver receiver;
    receiver.consume = true;
    env.setUserEventReceiver(&receiver);
    CHECK(!env.onEvent(guiEvent(env.getRootGUIElement(), EGET_ELEMENT_FOCUSED)));
    CHECK(receiver.counts[EGET_ELEMENT_FOCUSED] == 0);
    IGUIElement* other = env.addStaticText(L"x", rc(0, 0, 10, 10));
    CHECK(env.onEvent(guiEvent(other, EGET_ELEMENT_FOCUSED)));
    CHECK(receiver.counts[EGET_ELEMENT_FOCUSED] == 1);
    // Mouse and key events are not GUI events: the root rejects them.
    CHECK(!env.onEvent(mouse(EMIE_MOUSE_MOVED, 1, 1)));
    other->remove();
    env.setUserEventReceiver(nullptr);
}

void testListBox(CGUIEnvironment& env) {
    IGUIListBox* list = env.addListBox(rc(0, 0, 100, 100), nullptr, 3, true);
    CHECK(list->getType() == EGUIET_LIST_BOX);
    CHECK(list->getItemCount() == 0);
    CHECK(list->getSelected() == -1);
    CHECK(list->addItem(L"one") == 0);
    CHECK(list->addItem(L"two", 5) == 1);
    CHECK(list->addItem(L"three") == 2);
    CHECK(list->getItemCount() == 3);
    CHECK_WSTR(list->getListItem(1), L"two");
    CHECK(list->getIcon(1) == 5);
    list->setSelected(2);
    CHECK(list->getSelected() == 2);
    list->swapItems(0, 1);
    CHECK_WSTR(list->getListItem(0), L"two");
    CHECK_WSTR(list->getListItem(1), L"one");
    CHECK(list->insertItem(1, L"mid", 2) == 1);
    CHECK(list->getItemCount() == 4);
    CHECK_WSTR(list->getListItem(1), L"mid");
    list->setItem(1, L"middle", 3);
    CHECK_WSTR(list->getListItem(1), L"middle");
    CHECK(list->getIcon(1) == 3);
    CHECK(!list->hasItemOverrideColor(0, EGUI_LBC_TEXT));
    video::SColor red;
    red.color = 0xff0000ffu;
    list->setItemOverrideColor(0, EGUI_LBC_TEXT, red);
    CHECK(list->hasItemOverrideColor(0, EGUI_LBC_TEXT));
    CHECK(!list->hasItemOverrideColor(0, EGUI_LBC_ICON));
    CHECK(list->getItemOverrideColor(0, EGUI_LBC_TEXT).color == red.color);
    list->clearItemOverrideColor(0, EGUI_LBC_TEXT);
    CHECK(!list->hasItemOverrideColor(0, EGUI_LBC_TEXT));
    list->removeItem(0);
    CHECK(list->getItemCount() == 3);
    CHECK_WSTR(list->getListItem(0), L"middle");
    CHECK(list->isAutoScrollEnabled());
    list->setAutoScrollEnabled(false);
    CHECK(!list->isAutoScrollEnabled());
    list->clear();
    CHECK(list->getItemCount() == 0);
    CHECK(list->getSelected() == -1);
    list->remove();
}

void testScrollBar(CGUIEnvironment& env) {
    IGUIScrollBar* bar = env.addScrollBar(true, rc(0, 0, 100, 16), nullptr, 4);
    CHECK(bar->getType() == EGUIET_SCROLL_BAR);
    CHECK(bar->getPos() == 0);
    bar->setMax(50);
    CHECK(bar->getMax() == 50);
    bar->setPos(20);
    CHECK(bar->getPos() == 20);
    bar->setPos(100);
    CHECK(bar->getPos() == 50);
    bar->setPos(-5);
    CHECK(bar->getPos() == 0);
    bar->setSmallStep(3);
    bar->setLargeStep(11);
    CHECK(bar->getSmallStep() == 3 && bar->getLargeStep() == 11);
    bar->remove();
}

void testCheckBox(CGUIEnvironment& env) {
    CountingReceiver receiver;
    env.setUserEventReceiver(&receiver);
    IGUICheckBox* box = env.addCheckBox(false, rc(0, 0, 80, 20), nullptr, 6, L"label");
    CHECK(box->getType() == EGUIET_CHECK_BOX);
    CHECK(!box->isChecked());
    box->setChecked(true);
    CHECK(box->isChecked());
    // A click toggles the box and posts CHECKBOX_CHANGED.
    env.postEventFromUser(mouse(EMIE_LMOUSE_PRESSED_DOWN, 5, 5));
    env.postEventFromUser(mouse(EMIE_LMOUSE_LEFT_UP, 5, 5));
    CHECK(!box->isChecked());
    CHECK(receiver.counts[EGET_CHECKBOX_CHANGED] == 1);
    box->remove();
    env.setUserEventReceiver(nullptr);
}

void testSpinBox(CGUIEnvironment& env) {
    IGUISpinBox* spin = env.addSpinBox(L"2", rc(0, 0, 100, 20), nullptr, 12);
    CHECK(spin->getType() == EGUIET_SPIN_BOX);
    CHECK(spin->getEditBox() != nullptr && spin->getEditBox()->getType() == EGUIET_EDIT_BOX);
    CHECK(spin->getStepSize() == 1.0f);
    spin->setRange(0.0f, 10.0f);
    CHECK(spin->getMin() == 0.0f && spin->getMax() == 10.0f);
    spin->setDecimalPlaces(1);
    spin->setValue(4.0f);
    CHECK(spin->getValue() == 4.0f);
    CHECK_WSTR(spin->getText(), L"4.0");
    spin->setValue(12.0f);  // clamps to the range maximum
    CHECK(spin->getValue() == 10.0f);
    spin->setValue(-3.0f);
    CHECK(spin->getValue() == 0.0f);
    spin->setStepSize(0.5f);
    CHECK(spin->getStepSize() == 0.5f);
    // The up button adds the step and posts SPINBOX_CHANGED to the parent.
    CountingReceiver receiver;
    env.setUserEventReceiver(&receiver);
    CGUISpinBox* concrete = static_cast<CGUISpinBox*>(spin);
    concrete->onEvent(guiEvent(concrete->buttonSpinUp, EGET_BUTTON_CLICKED));
    CHECK(spin->getValue() == 0.5f);
    CHECK(receiver.counts[EGET_SPINBOX_CHANGED] == 1);
    concrete->onEvent(guiEvent(concrete->buttonSpinDown, EGET_BUTTON_CLICKED));
    CHECK(spin->getValue() == 0.0f);
    env.setUserEventReceiver(nullptr);
    spin->remove();
}

void testTabControl(CGUIEnvironment& env) {
    IGUITabControl* tabs = env.addTabControl(rc(0, 0, 200, 100), nullptr, true, true, 13);
    CHECK(tabs->getType() == EGUIET_TAB_CONTROL);
    CHECK(tabs->getTabCount() == 0);
    CHECK(tabs->getActiveTab() == -1);
    IGUITab* first = tabs->addTab(L"A", 1);
    IGUITab* second = tabs->addTab(L"B", 2);
    CHECK(tabs->getTabCount() == 2);
    CHECK(first->getType() == EGUIET_TAB && first->getID() == 1);
    CHECK(first->getNumber() == 0 && second->getNumber() == 1);
    CHECK(tabs->getTab(1) == second);
    CHECK(tabs->getActiveTab() == 0);
    CHECK(tabs->setActiveTab(1));
    CHECK(tabs->getActiveTab() == 1);
    CHECK(!tabs->setActiveTab(5));
    CHECK(tabs->getActiveTab() == 1);
    CHECK(tabs->setActiveTab(first));
    CHECK(tabs->getActiveTab() == 0);
    tabs->setTabHeight(25);
    CHECK(tabs->getTabHeight() == 25);
    tabs->setTabExtraWidth(7);
    CHECK(tabs->getTabExtraWidth() == 7);
    tabs->remove();
}

void testComboBox(CGUIEnvironment& env) {
    IGUIComboBox* combo = env.addComboBox(rc(0, 0, 100, 20), nullptr, 14);
    CHECK(combo->getType() == EGUIET_COMBO_BOX);
    CHECK(combo->getItemCount() == 0);
    CHECK(combo->getSelected() == -1);
    CHECK(combo->addItem(L"a") == 0);
    CHECK(combo->addItem(L"b") == 1);
    CHECK(combo->addItem(L"c") == 2);
    CHECK(combo->getItemCount() == 3);
    CHECK_WSTR(combo->getItem(2), L"c");
    combo->setSelected(1);
    CHECK(combo->getSelected() == 1);
    CHECK_WSTR(combo->getText(), L"b");
    combo->clear();
    CHECK(combo->getItemCount() == 0);
    CHECK(combo->getSelected() == -1);
    combo->remove();
}

void testEditBox(CGUIEnvironment& env) {
    IGUIEditBox* edit = env.addEditBox(L"abc", rc(0, 0, 100, 20), true, nullptr, 15);
    CHECK(edit->getType() == EGUIET_EDIT_BOX);
    CHECK_WSTR(edit->getText(), L"abc");
    edit->setText(L"hello");
    CHECK_WSTR(edit->getText(), L"hello");
    CHECK(edit->getMax() == 0);
    edit->setMax(3);
    CHECK(edit->getMax() == 3);
    CHECK_WSTR(edit->getText(), L"hel");
    CHECK(!edit->isPasswordBox());
    edit->setPasswordBox(true);
    CHECK(edit->isPasswordBox());
    CHECK(!edit->isMultiLineEnabled());
    edit->setMultiLine(true);
    CHECK(edit->isMultiLineEnabled());
    edit->remove();
}

void testStaticText(CGUIEnvironment& env) {
    IGUIStaticText* text = env.addStaticText(L"hello", rc(0, 0, 100, 20), true, false, nullptr, 16, true);
    CHECK(text->getType() == EGUIET_STATIC_TEXT);
    CHECK_WSTR(text->getText(), L"hello");
    CHECK(!text->isWordWrapEnabled());
    text->setWordWrap(true);
    CHECK(text->isWordWrapEnabled());
    CHECK(!text->isOverrideColorEnabled());
    text->enableOverrideColor(true);
    CHECK(text->isOverrideColorEnabled());
    text->setText(L"bye");
    CHECK_WSTR(text->getText(), L"bye");
    text->remove();
}

void testTable(CGUIEnvironment& env) {
    IGUITable* table = env.addTable(rc(0, 0, 200, 100), nullptr, 17, true);
    CHECK(table->getType() == EGUIET_TABLE);
    CHECK(table->getColumnCount() == 0);
    table->addColumn(L"name");
    table->addColumn(L"value");
    CHECK(table->getColumnCount() == 2);
    CHECK(table->getRowCount() == 0);
    CHECK(table->addRow(0) == 0);
    CHECK(table->addRow(1) == 1);
    CHECK(table->getRowCount() == 2);
    table->setCellText(0, 0, L"b");
    table->setCellText(0, 1, L"2");
    table->setCellText(1, 0, L"a");
    table->setCellText(1, 1, L"1");
    CHECK_WSTR(table->getCellText(0, 0), L"b");
    int marker = 0;
    table->setCellData(1, 1, &marker);
    CHECK(table->getCellData(1, 1) == &marker);
    table->swapRows(0, 1);
    CHECK_WSTR(table->getCellText(0, 0), L"a");
    CHECK_WSTR(table->getCellText(1, 1), L"2");
    table->setColumnOrdering(0, EGCO_ASCENDING);
    table->orderRows(0, EGOM_ASCENDING);
    CHECK_WSTR(table->getCellText(0, 0), L"a");
    table->orderRows(0, EGOM_DESCENDING);
    CHECK_WSTR(table->getCellText(0, 0), L"b");
    CHECK(table->hasResizableColumns());
    table->setResizableColumns(false);
    CHECK(!table->hasResizableColumns());
    table->setColumnWidth(0, 40);
    table->removeRow(0);
    CHECK(table->getRowCount() == 1);
    table->removeColumn(1);
    CHECK(table->getColumnCount() == 1);
    table->clearRows();
    CHECK(table->getRowCount() == 0);
    table->remove();
}

void testContextMenu(CGUIEnvironment& env) {
    IGUIContextMenu* menu = env.addContextMenu(rc(0, 0, 100, 100), nullptr, 18);
    CHECK(menu->getType() == EGUIET_CONTEXT_MENU);
    CHECK(menu->getItemCount() == 0);
    CHECK(menu->addItem(L"Open", 5) == 0);
    CHECK(menu->addSeparator() == 1);
    CHECK(menu->addItem(L"Close", 6, false) == 2);
    CHECK(menu->getItemCount() == 3);
    CHECK_WSTR(menu->getItemText(0), L"Open");
    CHECK(menu->getItemCommandId(0) == 5 && menu->getItemCommandId(2) == 6);
    CHECK(menu->isItemEnabled(0));
    CHECK(!menu->isItemEnabled(2));
    menu->setItemEnabled(2, true);
    CHECK(menu->isItemEnabled(2));
    CHECK(!menu->isItemChecked(0));
    menu->setItemChecked(0, true);
    CHECK(menu->isItemChecked(0));
    menu->setItemText(0, L"Load");
    CHECK_WSTR(menu->getItemText(0), L"Load");
    menu->setItemCommandId(0, 50);
    CHECK(menu->getItemCommandId(0) == 50);
    CHECK(menu->getSubMenu(0) == nullptr);
    CHECK(menu->getSelectedItem() == -1);
    menu->removeItem(1);
    CHECK(menu->getItemCount() == 2);
    menu->removeAllItems();
    CHECK(menu->getItemCount() == 0);
    menu->remove();
}

void testElementTree(CGUIEnvironment& env) {
    IGUIElement* root = env.getRootGUIElement();
    const std::size_t before = root->getChildren().empty() ? 0 : 1;
    (void)before;
    IGUIElement* outer = env.addStaticText(L"outer", rc(10, 10, 110, 110));
    IGUIElement* inner = env.addStaticText(L"inner", rc(5, 5, 50, 50), false, true, outer, 21);
    CHECK(inner->getParent() == outer);
    // The absolute rectangle of the inner element is relative to the outer one.
    CHECK(inner->getAbsolutePosition().UpperLeftCorner.X == 15 && inner->getAbsolutePosition().UpperLeftCorner.Y == 15);
    outer->move(detail::makePoint(10, 20));
    CHECK(inner->getAbsolutePosition().UpperLeftCorner.X == 25 && inner->getAbsolutePosition().UpperLeftCorner.Y == 35);
    // getElementFromId always matches the direct children; the descent into the grandchildren is the optional part.
    CHECK(outer->getElementFromId(21, false) == inner);
    IGUIElement* deep = env.addStaticText(L"deep", rc(1, 1, 10, 10), false, true, inner, 22);
    CHECK(outer->getElementFromId(22, false) == nullptr);
    CHECK(outer->getElementFromId(22, true) == deep);
    CHECK(inner->isPointInside(detail::makePoint(25, 35)));
    CHECK(!inner->isPointInside(detail::makePoint(24, 35)));
    outer->setVisible(false);
    CHECK(outer->getElementFromPoint(detail::makePoint(30, 40)) == nullptr);
    outer->setVisible(true);
    CHECK(env.getElementById(21) == inner);
    outer->remove();
    CHECK(env.getElementById(21) == nullptr);
}

void testClear(CGUIEnvironment& env) {
    env.addButton(rc(0, 0, 10, 10), nullptr, 31);
    env.addButton(rc(0, 0, 10, 10), nullptr, 32);
    CHECK(env.getElementById(31) != nullptr);
    env.clear();
    CHECK(env.getElementById(31) == nullptr && env.getElementById(32) == nullptr);
    CHECK(env.getFocus() == nullptr);
}

}  // namespace

int main() {
    CGUIEnvironment* env = new CGUIEnvironment(boost::intrusive_ptr<io::IFileSystem>(), nullptr, nullptr);
    FakeFont* font = new FakeFont;
    env->getSkin()->setFont(font, EGDF_DEFAULT);
    font->drop();
    // Without a video driver the root covers a 0x0 screen, and every child is clipped to it: give it a screen.
    env->getRootGUIElement()->setRelativePosition(rc(0, 0, 800, 600));
    testEnvironment(*env);
    testFactory(*env);
    testButton(*env);
    testFocus(*env);
    testButtonClick(*env);
    testRootEventFilter(*env);
    testListBox(*env);
    testScrollBar(*env);
    testCheckBox(*env);
    testSpinBox(*env);
    testTabControl(*env);
    testComboBox(*env);
    testEditBox(*env);
    testStaticText(*env);
    testTable(*env);
    testContextMenu(*env);
    testElementTree(*env);
    testClear(*env);
    static_cast<IGUIEnvironment*>(env)->drop();
    if (failures != 0) {
        std::printf("%d failure(s)\n", failures);
        return 1;
    }
    std::printf("gui_widgets_test: ok\n");
    return 0;
}
