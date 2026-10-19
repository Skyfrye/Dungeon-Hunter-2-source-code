// glitch::gui::IGUIFileOpenDialog and CGUIFileOpenDialog: the file picker window (a list of the files of the working directory of the file
// system, the selected name and the buttons). Canonical header of the scene-owner wave (gui family). It replaces the stand-ins of
// gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp and the file dialog parts of the recon slices.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIFileOpenDialog constructor 0x53c07c (element type 6), destructors 0x53c510 /
// 0x53c6b8; CGUIFileOpenDialog constructors 0x53ca9c / 0x53d114, destructors 0x53c584 / 0x53c734 / 0x53c878; tools/decomp_vtable.py
// glitch::gui::CGUIFileOpenDialog): Irrlicht 1.7.x's dialog with a static text instead of the edit box for the directory. The object continues
// IGUIElement at +0x158; the virtual bases follow at +0x1cc / +0x1d0, count at +0x1d4.
//   +0x158 DragStart   +0x160 FileName (STLport wide string, 72 bytes)   +0x1a8 Dragging   +0x1ac CloseButton   +0x1b0 OKButton   +0x1b4 CancelButton
//   +0x1b8 FileBox   +0x1bc FileNameText (the static text with the working directory)   +0x1c0 (unused)   +0x1c4 FileSystem (reference held)
//   +0x1c8 FileList (reference held)
#pragma once

#include <string>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::io {
class IFileList;
}

namespace glitch::gui {

class IGUIButton;
class IGUIListBox;
class IGUIStaticText;

class IGUIFileOpenDialog : public IGUIElement {
public:
    // 0x53c07c: the IGUIElement base with the type EGUIET_FILE_OPEN_DIALOG.
    IGUIFileOpenDialog(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x53c510 (D1), 0x53c6b8 (D0 copy): empty.
    ~IGUIFileOpenDialog() override;

    virtual const wchar_t* getFileName() const = 0;  // K 0x7c
};

class CGUIFileOpenDialog : public IGUIFileOpenDialog {
public:
    // 0x53ca9c (C1) / 0x53d114 (C2): a 350x250 window centred in the parent with the title, the close / OK / cancel buttons, the list of
    // the files and the directory text; the file system is the environment's. The list is filled.
    CGUIFileOpenDialog(const wchar_t* title, IGUIEnvironment* environment, IGUIElement* parent, int id);
    // 0x53c584 (D1), 0x53c734, 0x53c878: drops the children, the file list and the file system.
    ~CGUIFileOpenDialog() override;

    // K 0x08, 0x53d74c: the window is dragged with the left mouse button, the wheel scrolls the list; clicking a file in the list selects it,
    // clicking a directory twice enters it; the close / cancel button posts the cancel event, OK (with a selected file) the selected event.
    bool onEvent(const SEvent& event) override;
    // K 0x20, 0x53c344: the window background with the title, then the children.
    void draw() override;

    const wchar_t* getFileName() const override;  // 0x53bfac

    // 0x53bfb4 / 0x53bff4: EGET_FILE_SELECTED / EGET_FILE_CHOOSE_DIALOG_CANCELLED to the parent.
    void sendSelectedEvent();
    void sendCancelEvent();
    // 0x53c894: refills the list from the files of the working directory (a directory icon for directories) and the directory text.
    void fillListBox();

    core::position2d<int> dragStart{};          // +0x158
    std::wstring fileName;                      // +0x160
    bool dragging = false;                      // +0x1a8
    IGUIButton* closeButton = nullptr;          // +0x1ac
    IGUIButton* okButton = nullptr;             // +0x1b0
    IGUIButton* cancelButton = nullptr;         // +0x1b4
    IGUIListBox* fileBox = nullptr;             // +0x1b8
    IGUIStaticText* fileNameText = nullptr;     // +0x1bc
    io::IFileSystem* fileSystem = nullptr;      // +0x1c4
    io::IFileList* fileList = nullptr;          // +0x1c8
};

}  // namespace glitch::gui
