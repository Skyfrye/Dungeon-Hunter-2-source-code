// glitch::gui::IGUIEnvironment and IGUIElementFactory: the GUI environment interface (the factory of the GUI elements, the focus, the skin
// and the fonts) and the factory interface. Canonical header of the scene-owner wave (gui family). It replaces the IGUIEnvironment /
// IGUIElementFactory stand-ins of gui_simple_accessors.hpp and layouts/gui.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::gui::CGUIEnvironment, 496 bytes; destructors
// IGUIEnvironment 0x5353c4 / 0x535cfc empty, IGUIElementFactory 0x6a56e8 / 0x6a5d58 empty): both interfaces have glitch::IReferenceCounted as a
// non-virtual primary base (K 0x00 / 0x04 destructors, 0x08 onDelete) and no members besides the count.
//   IGUIEnvironment: K 0x0c drawAll, 0x10 setFocus, 0x14 getFocus, 0x18 removeFocus, 0x1c hasFocus, 0x20 getVideoDriver, 0x24 getFileSystem,
//   0x28 getOSOperator, 0x2c clear, 0x30 postEventFromUser, 0x34 setUserEventReceiver, 0x38 getSkin, 0x3c setSkin, 0x40 createSkin, 0x44
//   getElementById, 0x48 getElementByName, 0x4c getFont, 0x50 / 0x54 getTTFont, 0x58 / 0x5c removeTTFont, 0x60 / 0x64 removeTTFontFace, 0x68
//   getBuiltInFont, 0x6c getSpriteBank, 0x70 addEmptySpriteBank, 0x74 getRootGUIElement, 0x78 addButton ... 0xd0 addTable, 0xd4
//   getDefaultGUIElementFactory, 0xd8 registerGUIElementFactory, 0xdc getRegisteredGUIElementFactoryCount, 0xe0 getGUIElementFactory, 0xe4
//   addGUIElement, 0xe8 / 0xec saveGUI, 0xf0 / 0xf4 loadGUI.
//   IGUIElementFactory: K 0x0c addGUIElement(type), 0x10 addGUIElement(name), 0x14 getCreatableGUIElementTypeCount, 0x18
//   getCreateableGUIElementType, 0x1c / 0x20 getCreateableGUIElementTypeName.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace glitch {
struct SEvent;
class IEventReceiver;
class IOSOperator;
namespace io {
class IFileSystem;
class IReadFile;
class IWriteFile;
class IXMLWriter;
template <typename CharType, typename SuperClass>
class IIrrXMLReader;
}  // namespace io
namespace video {
class IVideoDriver;
class ITexture;
}  // namespace video
}  // namespace glitch

namespace glitch::gui {

class IGUIElement;
class IGUIFont;
class IGUITTFont;
class IGUISpriteBank;
class IGUIButton;
class IGUIWindow;
class IGUIScrollBar;
class IGUIImage;
class IGUICheckBox;
class IGUIListBox;
class IGUIMeshViewer;
class IGUIFileOpenDialog;
class IGUIColorSelectDialog;
class IGUIStaticText;
class IGUIEditBox;
class IGUISpinBox;
class IGUIInOutFader;
class IGUITabControl;
class IGUITab;
class IGUIContextMenu;
class IGUIToolBar;
class IGUIComboBox;
class IGUITable;

class IGUIElementFactory : public IReferenceCounted {
public:
    ~IGUIElementFactory() override;  // 0x6a56e8 (D1), 0x6a5d58 (D0 copy): empty

    virtual IGUIElement* addGUIElement(EGUI_ELEMENT_TYPE type, IGUIElement* parent) = 0;                // K 0x0c
    virtual IGUIElement* addGUIElement(const char* typeName, IGUIElement* parent) = 0;                  // K 0x10
    virtual int getCreatableGUIElementTypeCount() const = 0;                                            // K 0x14
    virtual EGUI_ELEMENT_TYPE getCreateableGUIElementType(int index) const = 0;                         // K 0x18
    virtual const char* getCreateableGUIElementTypeName(int index) const = 0;                           // K 0x1c
    virtual const char* getCreateableGUIElementTypeName(EGUI_ELEMENT_TYPE type) const = 0;              // K 0x20
};

class IGUIEnvironment : public IReferenceCounted {
public:
    // 0x5353c4 (D1), 0x535cfc (D0 copy): empty.
    ~IGUIEnvironment() override;

    virtual void drawAll() = 0;                                                                         // K 0x0c
    virtual bool setFocus(IGUIElement* element) = 0;                                                    // K 0x10
    virtual IGUIElement* getFocus() const = 0;                                                          // K 0x14
    virtual bool removeFocus(IGUIElement* element) = 0;                                                 // K 0x18
    virtual bool hasFocus(IGUIElement* element) const = 0;                                              // K 0x1c
    virtual video::IVideoDriver* getVideoDriver() const = 0;                                            // K 0x20
    virtual const boost::intrusive_ptr<io::IFileSystem>& getFileSystem() const = 0;                     // K 0x24
    virtual IOSOperator* getOSOperator() const = 0;                                                     // K 0x28
    virtual void clear() = 0;                                                                           // K 0x2c
    virtual bool postEventFromUser(const SEvent& event) = 0;                                            // K 0x30
    virtual void setUserEventReceiver(IEventReceiver* receiver) = 0;                                    // K 0x34
    virtual IGUISkin* getSkin() const = 0;                                                              // K 0x38
    virtual void setSkin(IGUISkin* skin) = 0;                                                           // K 0x3c
    virtual IGUISkin* createSkin(EGUI_SKIN_TYPE type) = 0;                                              // K 0x40
    virtual IGUIElement* getElementById(int id, IGUIElement* start = nullptr) = 0;                      // K 0x44
    virtual IGUIElement* getElementByName(const char* name, IGUIElement* start = nullptr) = 0;          // K 0x48
    virtual IGUIFont* getFont(const char* filename) = 0;                                                // K 0x4c
    virtual IGUITTFont* getTTFont(const char* filename, unsigned int size) = 0;                         // K 0x50
    virtual IGUITTFont* getTTFont(io::IReadFile* file, unsigned int size) = 0;                          // K 0x54
    virtual bool removeTTFont(const char* filename, unsigned int size) = 0;                             // K 0x58
    virtual bool removeTTFont(io::IReadFile* file, unsigned int size) = 0;                              // K 0x5c
    virtual bool removeTTFontFace(const char* filename) = 0;                                            // K 0x60
    virtual bool removeTTFontFace(io::IReadFile* file) = 0;                                             // K 0x64
    virtual IGUIFont* getBuiltInFont() const = 0;                                                       // K 0x68
    virtual IGUISpriteBank* getSpriteBank(const char* filename) = 0;                                    // K 0x6c
    virtual IGUISpriteBank* addEmptySpriteBank(const char* name) = 0;                                   // K 0x70
    virtual IGUIElement* getRootGUIElement() = 0;                                                       // K 0x74
    virtual IGUIButton* addButton(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1,
                                  const wchar_t* text = nullptr, const wchar_t* tooltiptext = nullptr) = 0;  // K 0x78
    virtual IGUIWindow* addWindow(const core::rect<int>& rectangle, bool modal = false, const wchar_t* text = nullptr,
                                  IGUIElement* parent = nullptr, int id = -1) = 0;                       // K 0x7c
    virtual IGUIElement* addModalScreen(IGUIElement* parent) = 0;                                       // K 0x80
    virtual IGUIWindow* addMessageBox(const wchar_t* caption, const wchar_t* text = nullptr, bool modal = true, int flags = 0x1,
                                      IGUIElement* parent = nullptr, int id = -1) = 0;                   // K 0x84
    virtual IGUIScrollBar* addScrollBar(bool horizontal, const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1) = 0;  // K 0x88
    virtual IGUIImage* addImage(const boost::intrusive_ptr<video::ITexture>& image, core::position2d<int> pos, bool useAlphaChannel = true,
                                IGUIElement* parent = nullptr, int id = -1, const wchar_t* text = nullptr) = 0;  // K 0x8c
    virtual IGUIImage* addImage(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1,
                                const wchar_t* text = nullptr) = 0;                                      // K 0x90
    virtual IGUICheckBox* addCheckBox(bool checked, const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1,
                                      const wchar_t* text = nullptr) = 0;                                // K 0x94
    virtual IGUIListBox* addListBox(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1,
                                    bool drawBackground = false) = 0;                                    // K 0x98
    virtual IGUIMeshViewer* addMeshViewer(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1,
                                          const wchar_t* text = nullptr) = 0;                            // K 0x9c
    virtual IGUIFileOpenDialog* addFileOpenDialog(const wchar_t* title = nullptr, bool modal = true, IGUIElement* parent = nullptr,
                                                  int id = -1) = 0;                                      // K 0xa0
    virtual IGUIColorSelectDialog* addColorSelectDialog(const wchar_t* title = nullptr, bool modal = true, IGUIElement* parent = nullptr,
                                                        int id = -1) = 0;                                // K 0xa4
    virtual IGUIStaticText* addStaticText(const wchar_t* text, const core::rect<int>& rectangle, bool border = false, bool wordWrap = true,
                                          IGUIElement* parent = nullptr, int id = -1, bool fillBackground = false) = 0;  // K 0xa8
    virtual IGUIEditBox* addEditBox(const wchar_t* text, const core::rect<int>& rectangle, bool border = true, IGUIElement* parent = nullptr,
                                    int id = -1) = 0;                                                    // K 0xac
    virtual IGUISpinBox* addSpinBox(const wchar_t* text, const core::rect<int>& rectangle, IGUIElement* parent = nullptr,
                                    int id = -1) = 0;                                                    // K 0xb0
    virtual IGUIInOutFader* addInOutFader(const core::rect<int>* rectangle = nullptr, IGUIElement* parent = nullptr, int id = -1) = 0;  // K 0xb4
    virtual IGUITabControl* addTabControl(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, bool fillbackground = false,
                                          bool border = true, int id = -1) = 0;                          // K 0xb8
    virtual IGUITab* addTab(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1) = 0;  // K 0xbc
    virtual IGUIContextMenu* addContextMenu(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1) = 0;  // K 0xc0
    virtual IGUIContextMenu* addMenu(IGUIElement* parent = nullptr, int id = -1) = 0;                   // K 0xc4
    virtual IGUIToolBar* addToolBar(IGUIElement* parent = nullptr, int id = -1) = 0;                    // K 0xc8
    virtual IGUIComboBox* addComboBox(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1) = 0;  // K 0xcc
    virtual IGUITable* addTable(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1, bool drawBackground = false) = 0;  // K 0xd0
    virtual IGUIElementFactory* getDefaultGUIElementFactory() const = 0;                                // K 0xd4
    virtual void registerGUIElementFactory(IGUIElementFactory* factoryToAdd) = 0;                       // K 0xd8
    virtual int getRegisteredGUIElementFactoryCount() const = 0;                                        // K 0xdc
    virtual IGUIElementFactory* getGUIElementFactory(unsigned int index) const = 0;                     // K 0xe0
    virtual IGUIElement* addGUIElement(const char* elementName, IGUIElement* parent = nullptr) = 0;     // K 0xe4
    virtual bool saveGUI(const char* filename, IGUIElement* start = nullptr) = 0;                       // K 0xe8
    virtual bool saveGUI(io::IWriteFile* file, IGUIElement* start = nullptr) = 0;                       // K 0xec
    virtual bool loadGUI(const char* filename, IGUIElement* parent = nullptr) = 0;                      // K 0xf0
    virtual bool loadGUI(io::IReadFile* file, IGUIElement* parent = nullptr) = 0;                       // K 0xf4
};

}  // namespace glitch::gui
