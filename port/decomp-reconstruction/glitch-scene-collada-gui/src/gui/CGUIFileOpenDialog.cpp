// Bodies of glitch::gui::IGUIFileOpenDialog and CGUIFileOpenDialog (canonical classes: gui/CGUIFileOpenDialog.hpp). This file replaces their
// bodies in gui_elements.cpp, gui_simple_accessors.cpp and the file dialog parts of the recon slices.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIFileOpenDialog.hpp"

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/CGUIListBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIStaticText.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"

namespace glitch::gui {

// 0x53c07c _ZN6glitch3gui18IGUIFileOpenDialogC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIFileOpenDialog::IGUIFileOpenDialog(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_FILE_OPEN_DIALOG, environment, parent, id, rectangle) {}

// 0x53c510 _ZN6glitch3gui18IGUIFileOpenDialogD1Ev (D0 0x53c6b8 skipped)
IGUIFileOpenDialog::~IGUIFileOpenDialog() = default;

// 0x53ca9c _ZN6glitch3gui18CGUIFileOpenDialogC1EPKwPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEi (C2 0x53d114)
CGUIFileOpenDialog::CGUIFileOpenDialog(const wchar_t* title, IGUIEnvironment* environmentValue, IGUIElement* parentElement, int id)
    : IGUIFileOpenDialog(
          environmentValue, parentElement, id,
          detail::makeRect((parentElement->absoluteRect.LowerRightCorner.X - 350 - parentElement->absoluteRect.UpperLeftCorner.X) / 2,
                           (parentElement->absoluteRect.LowerRightCorner.Y - 250 - parentElement->absoluteRect.UpperLeftCorner.Y) / 2,
                           (parentElement->absoluteRect.LowerRightCorner.X - 350 - parentElement->absoluteRect.UpperLeftCorner.X) / 2 + 350,
                           (parentElement->absoluteRect.LowerRightCorner.Y - 250 - parentElement->absoluteRect.UpperLeftCorner.Y) / 2 + 250)) {
    text = title;
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUISpriteBank* sprites = nullptr;
    video::SColor symbolColor;
    symbolColor.color = 0xFFFFFFFFu;
    if (skin != nullptr) {
        sprites = skin->getSpriteBank();                   // K 0x30
        symbolColor = skin->getColor(EGDC_WINDOW_SYMBOL);  // K 0x10
    }
    const int buttonWidth = environmentValue->getSkin()->getSize(EGDS_WINDOW_BUTTON_WIDTH);  // K 0x18
    const int width = relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X;

    closeButton = environment->addButton(detail::makeRect(width - 4 - buttonWidth, 3, width - 4, buttonWidth + 3), this, -1, L"",
                                         skin != nullptr ? skin->getDefaultText(EGDT_WINDOW_CLOSE) : L"C");  // K 0x78
    closeButton->setSubElement(true);
    closeButton->tabStop = false;
    if (sprites != nullptr) {
        closeButton->setSpriteBank(sprites);  // K 0x90
        closeButton->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(EGDI_WINDOW_CLOSE)), symbolColor, false);  // K 0x94
        closeButton->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(EGDI_WINDOW_CLOSE)), symbolColor, false);
    }
    closeButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
    ++closeButton->referenceCounter;

    okButton = environment->addButton(detail::makeRect(width - 80, 30, width - 10, 50), this, -1,
                                      skin != nullptr ? skin->getDefaultText(EGDT_MSG_BOX_OK) : L"O", nullptr);
    okButton->setSubElement(true);
    okButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
    ++okButton->referenceCounter;

    cancelButton = environment->addButton(detail::makeRect(width - 80, 55, width - 10, 75), this, -1,
                                          skin != nullptr ? skin->getDefaultText(EGDT_MSG_BOX_CANCEL) : L"C", nullptr);
    cancelButton->setSubElement(true);
    cancelButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
    ++cancelButton->referenceCounter;

    fileBox = environment->addListBox(detail::makeRect(10, 55, width - 90, 230), this, -1, true);  // K 0x98
    fileBox->setSubElement(true);
    fileBox->setAlignment(EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT);
    ++fileBox->referenceCounter;

    fileNameText = environment->addStaticText(nullptr, detail::makeRect(10, 30, width - 90, 50), true, false, this, -1, false);  // K 0xa8
    fileNameText->setSubElement(true);
    fileNameText->setAlignment(EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
    ++fileNameText->referenceCounter;

    io::IFileSystem* system = environment->getFileSystem().get();  // K 0x24
    if (system != nullptr) {
        ++system->referenceCounter;
    }
    io::IFileSystem* previous = fileSystem;
    fileSystem = system;
    if (previous != nullptr) {
        previous->drop();
    }
    tabGroup = true;
    fillListBox();
}

// 0x53c584 _ZN6glitch3gui18CGUIFileOpenDialogD1Ev (0x53c734 and 0x53c878 are the other forms)
CGUIFileOpenDialog::~CGUIFileOpenDialog() {
    if (closeButton != nullptr) {
        closeButton->drop();
    }
    if (okButton != nullptr) {
        okButton->drop();
    }
    if (cancelButton != nullptr) {
        cancelButton->drop();
    }
    if (fileBox != nullptr) {
        fileBox->drop();
    }
    if (fileNameText != nullptr) {
        fileNameText->drop();
    }
    if (fileList != nullptr) {
        fileList->drop();
    }
    if (fileSystem != nullptr) {
        fileSystem->drop();
    }
}

// 0x53bfac _ZNK6glitch3gui18CGUIFileOpenDialog11getFileNameEv
const wchar_t* CGUIFileOpenDialog::getFileName() const {
    return fileName.c_str();
}

// 0x53bfb4 _ZN6glitch3gui18CGUIFileOpenDialog17sendSelectedEventEv
void CGUIFileOpenDialog::sendSelectedEvent() {
    SEvent event;
    event.EventType = EET_GUI_EVENT;
    event.GUIEvent.Caller = this;
    event.GUIEvent.Element = nullptr;
    event.GUIEvent.EventType = EGET_FILE_SELECTED;
    if (parent != nullptr) {
        parent->onEvent(event);
    }
}

// 0x53bff4 _ZN6glitch3gui18CGUIFileOpenDialog15sendCancelEventEv
void CGUIFileOpenDialog::sendCancelEvent() {
    SEvent event;
    event.EventType = EET_GUI_EVENT;
    event.GUIEvent.Caller = this;
    event.GUIEvent.Element = nullptr;
    event.GUIEvent.EventType = EGET_FILE_CHOOSE_DIALOG_CANCELLED;
    if (parent != nullptr) {
        parent->onEvent(event);
    }
}

// 0x53c894 _ZN6glitch3gui18CGUIFileOpenDialog11fillListBoxEv
void CGUIFileOpenDialog::fillListBox() {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (fileSystem == nullptr || fileBox == nullptr || skin == nullptr) {
        return;
    }
    if (fileList != nullptr) {
        fileList->drop();
    }
    fileBox->clear();  // K 0x98
    fileList = fileSystem->createFileList();  // K 0x40
    for (std::uint32_t i = 0; i < fileList->getFileCount(); ++i) {
        const std::wstring name = core::stringc2stringw(fileList->getFileName(i));
        fileBox->addItem(name.c_str(), static_cast<int>(skin->getIcon(fileList->isDirectory(i) ? EGDI_DIRECTORY : EGDI_FILE)));  // K 0x88
    }
    if (fileNameText != nullptr) {
        const std::wstring directory = core::stringc2stringw(fileSystem->getWorkingDirectory());  // K 0x2c
        fileNameText->setText(directory.c_str());                                                   // K 0x44
    }
}

// 0x53d74c _ZN6glitch3gui18CGUIFileOpenDialog7onEventERKNS_6SEventE
bool CGUIFileOpenDialog::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    if (!enabled) {
        return forward();
    }
    if (event.EventType == EET_GUI_EVENT) {
        switch (event.GUIEvent.EventType) {
            case EGET_ELEMENT_FOCUS_LOST:
                dragging = false;
                return forward();
            case EGET_BUTTON_CLICKED: {
                const void* caller = event.GUIEvent.Caller;
                if (caller == closeButton || caller == cancelButton) {
                    sendCancelEvent();
                    remove();  // K 0x1c
                    return true;
                }
                if (caller == okButton) {
                    if (!fileName.empty()) {
                        sendSelectedEvent();
                        remove();
                        return true;
                    }
                }
                return forward();
            }
            case EGET_LISTBOX_CHANGED: {
                const int selected = fileBox->getSelected();  // K 0x9c
                if (fileList != nullptr && fileSystem != nullptr) {
                    if (fileList->isDirectory(static_cast<std::uint32_t>(selected))) {
                        fileName.clear();
                    } else {
                        fileName = core::stringc2stringw(fileList->getFullFileName(static_cast<std::uint32_t>(selected)));
                    }
                }
                return forward();
            }
            case EGET_LISTBOX_SELECTED_AGAIN: {
                const int selected = fileBox->getSelected();
                if (fileList == nullptr || fileSystem == nullptr) {
                    return forward();
                }
                if (fileList->isDirectory(static_cast<std::uint32_t>(selected))) {
                    fileSystem->changeWorkingDirectoryTo(fileList->getFileName(static_cast<std::uint32_t>(selected)));  // K 0x30
                    fillListBox();
                    fileName.clear();
                    return forward();
                }
                fileName = core::stringc2stringw(fileList->getFullFileName(static_cast<std::uint32_t>(selected)));
                return true;
            }
            default:
                return forward();
        }
    }
    if (event.EventType != EET_MOUSE_INPUT_EVENT) {
        return forward();
    }
    switch (event.MouseInput.Event) {
        case EMIE_LMOUSE_PRESSED_DOWN:
            dragStart.X = event.MouseInput.X;
            dragStart.Y = event.MouseInput.Y;
            dragging = true;
            environment->setFocus(this);  // K 0x10
            return true;
        case EMIE_LMOUSE_LEFT_UP:
            dragging = false;
            return true;
        case EMIE_MOUSE_MOVED:
            if (!dragging) {
                return forward();
            }
            if (parent != nullptr) {
                const int x = event.MouseInput.X;
                const int y = event.MouseInput.Y;
                if (x <= parent->absoluteRect.UpperLeftCorner.X || y <= parent->absoluteRect.UpperLeftCorner.Y ||
                    x >= parent->absoluteRect.LowerRightCorner.X || y >= parent->absoluteRect.LowerRightCorner.Y) {
                    return true;
                }
            }
            move(detail::makePoint(event.MouseInput.X - dragStart.X, event.MouseInput.Y - dragStart.Y));  // K 0x28
            dragStart.X = event.MouseInput.X;
            dragStart.Y = event.MouseInput.Y;
            return true;
        case EMIE_MOUSE_WHEEL:
            return fileBox->onEvent(event);  // K 0x08
        default:
            return forward();
    }
}

// 0x53c344 _ZN6glitch3gui18CGUIFileOpenDialog4drawEv
void CGUIFileOpenDialog::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    core::rect<int> titleRect = skin->draw3DWindowBackground(this, true, skin->getColor(EGDC_ACTIVE_BORDER), absoluteRect, &absoluteClippingRect);  // K 0x4c
    if (!text.empty()) {
        titleRect.UpperLeftCorner.X += 2;
        titleRect.LowerRightCorner.X -= 5 + skin->getSize(EGDS_WINDOW_BUTTON_WIDTH);
        IGUIFont* font = skin->getFont(EGDF_WINDOW);
        if (font != nullptr) {
            font->draw(text.c_str(), titleRect, skin->getColor(EGDC_ACTIVE_CAPTION), false, true, &absoluteClippingRect);  // K 0x0c
        }
    }
    IGUIElement::draw();
}

}  // namespace glitch::gui
