// glitch::gui::CGUIEnvironment and CDefaultGUIElementFactory: the GUI environment (the root element, the focus and hover handling, the skin, the
// fonts, sprite banks, TrueType fonts and faces, the widget creators, the XML save / load) and the factory of the built-in widget types.
// Canonical header of the scene-owner wave (gui family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp,
// layouts/gui.hpp and recon/slice_00.hpp, slice_01.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; CGUIEnvironment constructors 0x53a0c0 / 0x53a308, destructors 0x539118 / 0x539474 /
// 0x539490; createGUIEnvironment 0x53a2d0; tools/decomp_vtable.py glitch::gui::CGUIEnvironment, 496 bytes): Irrlicht's CGUIEnvironment, which is
// both an IGUIEnvironment (primary base: vptr, use count at +0x04) and the root IGUIElement (second base at +0x08, element type EGUIET_ROOT,
// 0x158 bytes), with the virtual bases of the element at +0x1cc / +0x1d0 and their count at +0x1d4. The members continue at +0x160:
//   +0x160 ToolTip.LastTime   +0x164 ToolTip.LaunchTime (1000)   +0x168 ToolTip.Element (reference held)
//   +0x16c Factories (vector of IGUIElementFactory*, references held)
//   +0x178 Fonts (vector of SFont, 28 bytes: name string, IGUIFont*)    +0x184 TTFonts (vector of STTFont, 32 bytes: name string, size,
//   IGUITTFont*)   +0x190 Faces (vector of SFace, 28 bytes: name string, CGUITTFace*)   +0x19c SpriteBanks (vector of SSpriteBank, 28 bytes: name
//   string, IGUISpriteBank*)
//   +0x1a8 Driver (reference held)   +0x1ac Hovered   +0x1b0 Focus (references held)   +0x1b4 LastHoveredMousePos   +0x1bc CurrentSkin (reference
//   held)   +0x1c0 FileSystem (reference held)   +0x1c4 UserReceiver   +0x1c8 Operator (reference held)
// The ordered lists are searched with lower_bound (they are not kept sorted by the insertions, as in the original).
#pragma once

#include <string>

#include "glitch-core-io/core/allocator.hpp"  // core::stringc / stringw / svector (STLPORT-DECISION.md section 6)
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"

namespace glitch::io {
class IXMLWriter;
}

namespace glitch::gui {

class CGUITTFace;
class IGUITTFont;

class CDefaultGUIElementFactory : public IGUIElementFactory {
public:
    // 0x6a56ec (C1) / 0x6a571c (C2): the environment the elements are created in.
    explicit CDefaultGUIElementFactory(IGUIEnvironment* environment);
    // 0x6a5d20 (D1), 0x6a5d44 (D0 copy): empty.
    ~CDefaultGUIElementFactory() override;

    // K 0x0c, 0x6a574c: creates the element of the type (one of the 22 built-in ones) with a default 100x100 rectangle through the environment;
    // null for any other type.
    IGUIElement* addGUIElement(EGUI_ELEMENT_TYPE type, IGUIElement* parent) override;
    // K 0x10, 0x6a5dc4: by type name.
    IGUIElement* addGUIElement(const char* typeName, IGUIElement* parent) override;
    int getCreatableGUIElementTypeCount() const override;                              // K 0x14, 0x6a5cc8: 22
    EGUI_ELEMENT_TYPE getCreateableGUIElementType(int index) const override;           // K 0x18, 0x6a5cd0
    const char* getCreateableGUIElementTypeName(int index) const override;             // K 0x1c, 0x6a5ce0
    const char* getCreateableGUIElementTypeName(EGUI_ELEMENT_TYPE type) const override;  // K 0x20, 0x6a5d00
    // 0x6a5d6c: the element type with the name (the root type, 23, for an unknown name).
    EGUI_ELEMENT_TYPE getTypeFromName(const char* name) const;

    IGUIEnvironment* environment = nullptr;  // +0x08
};

class CGUIEnvironment : public IGUIEnvironment, public IGUIElement {
public:
    struct SFont {
        std::string namedPath;         // +0x00
        IGUIFont* font = nullptr;      // +0x18
        bool operator<(const SFont& other) const { return namedPath < other.namedPath; }
    };
    struct SSpriteBank {
        std::string namedPath;         // +0x00
        IGUISpriteBank* bank = nullptr;  // +0x18
        bool operator<(const SSpriteBank& other) const { return namedPath < other.namedPath; }
    };
    struct SFace {
        std::string namedPath;         // +0x00
        CGUITTFace* face = nullptr;    // +0x18
        bool operator<(const SFace& other) const { return namedPath < other.namedPath; }
    };
    struct STTFont {
        std::string namedPath;         // +0x00
        std::uint32_t size = 0;        // +0x18
        IGUITTFont* font = nullptr;    // +0x1c
        // 0x539d44: by name, then by size.
        bool operator<(const STTFont& other) const;
    };

    // 0x53a0c0 (C1) / 0x53a308 (C2): the root element covers the screen of the driver; the default element factory is registered, the built-in
    // font loaded and the classic skin created.
    CGUIEnvironment(const boost::intrusive_ptr<io::IFileSystem>& fileSystem, video::IVideoDriver* driver, IOSOperator* osOperator);
    // 0x539118 (D1), 0x539474, 0x539490: drops everything the environment holds.
    ~CGUIEnvironment() override;

    // ---- IGUIEnvironment ----
    void drawAll() override;                                                                          // K 0x0c, 0x537648
    bool setFocus(IGUIElement* element) override;                                                     // K 0x10, 0x5353c8
    IGUIElement* getFocus() const override;                                                           // K 0x14, 0x535598
    bool removeFocus(IGUIElement* element) override;                                                  // K 0x18, 0x5355a0
    bool hasFocus(IGUIElement* element) const override;                                               // K 0x1c, 0x53562c
    video::IVideoDriver* getVideoDriver() const override;                                             // K 0x20, 0x535640
    const boost::intrusive_ptr<io::IFileSystem>& getFileSystem() const override;                      // K 0x24, 0x535648
    IOSOperator* getOSOperator() const override;                                                      // K 0x28, 0x535650
    void clear() override;                                                                            // K 0x2c, 0x535658
    bool postEventFromUser(const SEvent& event) override;                                             // K 0x30, 0x537c5c
    void setUserEventReceiver(IEventReceiver* receiver) override;                                     // K 0x34, 0x535768
    IGUISkin* getSkin() const override;                                                               // K 0x38, 0x535770
    void setSkin(IGUISkin* skin) override;                                                            // K 0x3c, 0x535778
    IGUISkin* createSkin(EGUI_SKIN_TYPE type) override;                                               // K 0x40, 0x537440
    IGUIElement* getElementById(int id, IGUIElement* start = nullptr) override;                       // K 0x44, 0x535b58
    IGUIElement* getElementByName(const char* name, IGUIElement* start = nullptr) override;           // K 0x48, 0x53644c
    IGUIFont* getFont(const char* filename) override;                                                 // K 0x4c, 0x53b7d4
    IGUITTFont* getTTFont(const char* filename, unsigned int size) override;                          // K 0x50, 0x53ada8
    IGUITTFont* getTTFont(io::IReadFile* file, unsigned int size) override;                           // K 0x54, 0x53b0cc
    bool removeTTFont(const char* filename, unsigned int size) override;                              // K 0x58, 0x53bce4
    bool removeTTFont(io::IReadFile* file, unsigned int size) override;                               // K 0x5c, 0x53ab20
    bool removeTTFontFace(const char* filename) override;                                             // K 0x60, 0x53a4dc
    bool removeTTFontFace(io::IReadFile* file) override;                                              // K 0x64, 0x53a814
    IGUIFont* getBuiltInFont() const override;                                                        // K 0x68, 0x535bf8
    IGUISpriteBank* getSpriteBank(const char* filename) override;                                     // K 0x6c, 0x53a694
    IGUISpriteBank* addEmptySpriteBank(const char* name) override;                                    // K 0x70, 0x53a9f0
    IGUIElement* getRootGUIElement() override;                                                        // K 0x74, 0x535c10
    IGUIButton* addButton(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1, const wchar_t* text = nullptr,
                          const wchar_t* tooltiptext = nullptr) override;                              // K 0x78, 0x5372bc
    IGUIWindow* addWindow(const core::rect<int>& rectangle, bool modal = false, const wchar_t* text = nullptr, IGUIElement* parent = nullptr,
                          int id = -1) override;                                                       // K 0x7c, 0x5371e0
    IGUIElement* addModalScreen(IGUIElement* parent) override;                                        // K 0x80, 0x5369e0
    IGUIWindow* addMessageBox(const wchar_t* caption, const wchar_t* text = nullptr, bool modal = true, int flags = 0x1,
                              IGUIElement* parent = nullptr, int id = -1) override;                    // K 0x84, 0x5370a0
    IGUIScrollBar* addScrollBar(bool horizontal, const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1) override;  // K 0x88, 0x537010
    IGUIImage* addImage(const boost::intrusive_ptr<video::ITexture>& image, core::position2d<int> pos, bool useAlphaChannel = true,
                        IGUIElement* parent = nullptr, int id = -1, const wchar_t* text = nullptr) override;  // K 0x8c, 0x536e7c
    IGUIImage* addImage(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1, const wchar_t* text = nullptr) override;  // K 0x90, 0x536de0
    IGUICheckBox* addCheckBox(bool checked, const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1,
                              const wchar_t* text = nullptr) override;                                  // K 0x94, 0x536ca0
    IGUIListBox* addListBox(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1, bool drawBackground = false) override;  // K 0x98, 0x536b50
    IGUIMeshViewer* addMeshViewer(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1,
                                  const wchar_t* text = nullptr) override;                              // K 0x9c, 0x536d44
    IGUIFileOpenDialog* addFileOpenDialog(const wchar_t* title = nullptr, bool modal = true, IGUIElement* parent = nullptr, int id = -1) override;  // K 0xa0, 0x536abc
    IGUIColorSelectDialog* addColorSelectDialog(const wchar_t* title = nullptr, bool modal = true, IGUIElement* parent = nullptr,
                                                int id = -1) override;                                  // K 0xa4, 0x536a28
    IGUIStaticText* addStaticText(const wchar_t* text, const core::rect<int>& rectangle, bool border = false, bool wordWrap = true,
                                  IGUIElement* parent = nullptr, int id = -1, bool fillBackground = false) override;  // K 0xa8, 0x536954
    IGUIEditBox* addEditBox(const wchar_t* text, const core::rect<int>& rectangle, bool border = true, IGUIElement* parent = nullptr,
                            int id = -1) override;                                                      // K 0xac, 0x5368e8
    IGUISpinBox* addSpinBox(const wchar_t* text, const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1) override;  // K 0xb0, 0x536880
    IGUIInOutFader* addInOutFader(const core::rect<int>* rectangle = nullptr, IGUIElement* parent = nullptr, int id = -1) override;  // K 0xb4, 0x536574
    IGUITabControl* addTabControl(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, bool fillbackground = false,
                                  bool border = true, int id = -1) override;                            // K 0xb8, 0x536810
    IGUITab* addTab(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1) override;  // K 0xbc, 0x5367ac
    IGUIContextMenu* addContextMenu(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1) override;  // K 0xc0, 0x536724
    IGUIContextMenu* addMenu(IGUIElement* parent = nullptr, int id = -1) override;                      // K 0xc4, 0x53669c
    IGUIToolBar* addToolBar(IGUIElement* parent = nullptr, int id = -1) override;                       // K 0xc8, 0x536628
    IGUIComboBox* addComboBox(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1) override;  // K 0xcc, 0x5364f4
    IGUITable* addTable(const core::rect<int>& rectangle, IGUIElement* parent = nullptr, int id = -1, bool drawBackground = false) override;  // K 0xd0, 0x536f78
    IGUIElementFactory* getDefaultGUIElementFactory() const override;                                   // K 0xd4, 0x5357d0
    void registerGUIElementFactory(IGUIElementFactory* factoryToAdd) override;                          // K 0xd8, 0x537dac
    int getRegisteredGUIElementFactoryCount() const override;                                           // K 0xdc, 0x5357e8
    IGUIElementFactory* getGUIElementFactory(unsigned int index) const override;                        // K 0xe0, 0x5357fc
    IGUIElement* addGUIElement(const char* elementName, IGUIElement* parent = nullptr) override;        // K 0xe4, 0x535818
    bool saveGUI(const char* filename, IGUIElement* start = nullptr) override;                          // K 0xe8, 0x535884
    bool saveGUI(io::IWriteFile* file, IGUIElement* start = nullptr) override;                          // K 0xec, 0x5358e0
    bool loadGUI(const char* filename, IGUIElement* parent = nullptr) override;                         // K 0xf0, 0x536388
    bool loadGUI(io::IReadFile* file, IGUIElement* parent = nullptr) override;                          // K 0xf4, 0x537380

    // ---- the root element (IGUIElement, second base) ----
    // K 0x74 / 0x78 of the element table, 0x53595c and 0x535a08: the skin type and the skin attributes; the root covers the screen again.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // K 0x08 of the element table, 0x535710: only the GUI events that do not come from the root go to the user receiver.
    bool onEvent(const SEvent& event) override;
    // K 0x24 of the element table, 0x537e7c: launches the tool tip of the hovered element after the launch time, then the children.
    void OnPostRender(std::uint32_t timeMs) override;

    // ---- the rest of the CGUIEnvironment primary table (K 0xf8 ..) ----
    // 0x538670: writes the element (and its non sub element children) as XML.
    virtual void writeGUIElement(io::IXMLWriter* writer, IGUIElement* node);
    // 0x53b418: creates the elements of an XML GUI file (the attributes element gives the attributes of the current element).
    virtual void readGUIElement(io::IIrrXMLReader<wchar_t, IReferenceCounted>* reader, IGUIElement* node);

    // 0x539ef0: the font "#DefaultFont" from the embedded bitmap data.
    void loadBuiltInFont();
    // 0x5374f4: finds the element under the mouse position; posts the left / hovered events and restarts the tool tip delay.
    void updateHoveredElement(core::position2d<int> mousePos);
    // 0x537b44: the next element of the tab order (reverse / group steps), the root when there is none and a group was asked.
    IGUIElement* getNextElement(bool reverse, bool group);

    // The root element as seen by the creators (the element subobject).
    IGUIElement* rootElement() { return static_cast<IGUIElement*>(this); }
    const IGUIElement* rootElement() const { return static_cast<const IGUIElement*>(this); }

    struct SToolTip {
        std::uint32_t lastTime = 0;       // +0x160
        std::uint32_t launchTime = 1000;  // +0x164
        IGUIElement* element = nullptr;   // +0x168
    };
    SToolTip toolTip;                                       // +0x160
    std::vector<IGUIElementFactory*> factories;             // +0x16c
    core::svector<SFont> fonts;                               // +0x178
    core::svector<STTFont> ttFonts;                           // +0x184
    core::svector<SFace> faces;                               // +0x190
    core::svector<SSpriteBank> spriteBanks;                   // +0x19c
    video::IVideoDriver* driver = nullptr;                  // +0x1a8
    IGUIElement* hovered = nullptr;                         // +0x1ac
    IGUIElement* focus = nullptr;                           // +0x1b0
    core::position2d<int> lastHoveredMousePos{};            // +0x1b4
    IGUISkin* currentSkin = nullptr;                        // +0x1bc
    boost::intrusive_ptr<io::IFileSystem> fileSystem;       // +0x1c0
    IEventReceiver* userReceiver = nullptr;                 // +0x1c4
    IOSOperator* osOperator = nullptr;                      // +0x1c8
};

// 0x53a2d0: a new environment (the original's glitch::gui::createGUIEnvironment).
IGUIEnvironment* createGUIEnvironment(const boost::intrusive_ptr<io::IFileSystem>& fileSystem, video::IVideoDriver* driver, IOSOperator* osOperator);

// The XML names of the GUI files.
extern const wchar_t* const GLITCH_XML_FORMAT_GUI_ENV;                // L"glitch_gui"
extern const wchar_t* const GLITCH_XML_FORMAT_GUI_ELEMENT;            // L"element"
extern const wchar_t* const GLITCH_XML_FORMAT_GUI_ELEMENT_ATTR_TYPE;  // L"type"

}  // namespace glitch::gui
