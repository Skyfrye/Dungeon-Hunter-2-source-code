// Bodies of glitch::gui::CGUIEnvironment, CDefaultGUIElementFactory and the IGUIEnvironment / IGUIElementFactory destructors (canonical classes:
// gui/CGUIEnvironment.hpp, gui/IGUIEnvironment.hpp). This file replaces their bodies in gui_elements.cpp, gui_simple_accessors.cpp,
// recon/slice_00.cpp, recon/slice_01.cpp, recon/slice_31.cpp and tb_scene-collada-gui-glitch_gui_CGUIEnvironment-0.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIEnvironment.hpp"

#include <algorithm>

#include "glitch-core-io/core/sort.hpp"
#include <cstring>
#include <cwchar>
#include <string>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/io/xml_attributes.hpp"
#include "glitch-core-io/io/xml_reader.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/CGUICheckBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIColorSelectDialog.hpp"
#include "glitch-scene-collada-gui/gui/CGUIComboBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIContextMenu.hpp"
#include "glitch-scene-collada-gui/gui/CGUIEditBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIFileOpenDialog.hpp"
#include "glitch-scene-collada-gui/gui/CGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/CGUIImage.hpp"
#include "glitch-scene-collada-gui/gui/CGUIListBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIMeshViewer.hpp"
#include "glitch-scene-collada-gui/gui/CGUIScrollBar.hpp"
#include "glitch-scene-collada-gui/gui/CGUISkin.hpp"
#include "glitch-scene-collada-gui/gui/CGUISpinBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUISpriteBank.hpp"
#include "glitch-scene-collada-gui/gui/CGUIStaticText.hpp"
#include "glitch-scene-collada-gui/gui/CGUITTFont.hpp"
#include "glitch-scene-collada-gui/gui/CGUITabControl.hpp"
#include "glitch-scene-collada-gui/gui/CGUITable.hpp"
#include "glitch-scene-collada-gui/gui/CGUIWindow.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/builtin_font_data.hpp"
#include "glitch-scene-collada-gui/os/COSOperator.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

const wchar_t* const GLITCH_XML_FORMAT_GUI_ENV = L"glitch_gui";
const wchar_t* const GLITCH_XML_FORMAT_GUI_ELEMENT = L"element";
const wchar_t* const GLITCH_XML_FORMAT_GUI_ELEMENT_ATTR_TYPE = L"type";

namespace {

// The ordered lists are searched with lower_bound and an equality test, without being sorted (the find of the original, binary_search<> of
// 0x538314 / 0x538470 / 0x5385cc / 0x539e3c): the index of the entry or -1.
template <typename T>
int searchOrdered(const core::svector<T>& list, const T& key) {
    return glitch::core::binary_search(list, key);  // lower_bound, then the equality test
}

std::string lowerCase(const char* text) {
    std::string result = text != nullptr ? text : "";
    for (char& c : result) {
        if (static_cast<unsigned char>(c - 'A') <= 25u) {
            c = static_cast<char>(c + 32);
        }
    }
    return result;
}

// The size of the current render target of the driver, the "screen" the root element covers.
core::dimension2d<int> screenSizeOf(video::IVideoDriver* driver) {
    core::dimension2d<int> size;
    size.Width = 0;
    size.Height = 0;
    if (driver != nullptr && !driver->m_renderTargets.empty()) {
        const boost::intrusive_ptr<video::IRenderTarget>& target = driver->m_renderTargets.back();
        size.Width = target->m_width;
        size.Height = target->m_height;
    }
    return size;
}

void grabElement(IGUIElement* element) {
    ++element->referenceCounter;
}

}  // namespace

// 0x5353c4 _ZN6glitch3gui15IGUIEnvironmentD1Ev (D0 0x535cfc skipped)
IGUIEnvironment::~IGUIEnvironment() = default;

// 0x6a56e8 _ZN6glitch3gui19IGUIElementFactoryD1Ev (D0 0x6a5d58 skipped)
IGUIElementFactory::~IGUIElementFactory() = default;

// 0x6a56ec _ZN6glitch3gui25CDefaultGUIElementFactoryC1EPNS0_15IGUIEnvironmentE (C2 0x6a571c)
CDefaultGUIElementFactory::CDefaultGUIElementFactory(IGUIEnvironment* environmentValue) : environment(environmentValue) {}

// 0x6a5d20 _ZN6glitch3gui25CDefaultGUIElementFactoryD1Ev (D0 0x6a5d44 skipped)
CDefaultGUIElementFactory::~CDefaultGUIElementFactory() = default;

// 0x6a574c _ZN6glitch3gui25CDefaultGUIElementFactory13addGUIElementENS0_17EGUI_ELEMENT_TYPEEPNS0_11IGUIElementE
IGUIElement* CDefaultGUIElementFactory::addGUIElement(EGUI_ELEMENT_TYPE type, IGUIElement* parent) {
    const core::rect<int> rectangle = detail::makeRect(0, 0, 100, 100);
    switch (type) {
        case EGUIET_BUTTON:
            return environment->addButton(rectangle, parent, -1, nullptr, nullptr);  // K 0x78
        case EGUIET_CHECK_BOX:
            return environment->addCheckBox(false, rectangle, parent, -1, nullptr);  // K 0x94
        case EGUIET_COMBO_BOX:
            return environment->addComboBox(rectangle, parent, -1);  // K 0xcc
        case EGUIET_CONTEXT_MENU:
            return environment->addContextMenu(rectangle, parent, -1);  // K 0xc0
        case EGUIET_MENU:
            return environment->addMenu(parent, -1);  // K 0xc4
        case EGUIET_EDIT_BOX:
            return environment->addEditBox(nullptr, rectangle, true, parent, -1);  // K 0xac
        case EGUIET_FILE_OPEN_DIALOG:
            return environment->addFileOpenDialog(nullptr, true, parent, -1);  // K 0xa0
        case EGUIET_COLOR_SELECT_DIALOG:
            return environment->addColorSelectDialog(nullptr, true, parent, -1);  // K 0xa4
        case EGUIET_IN_OUT_FADER:
            return environment->addInOutFader(nullptr, parent, -1);  // K 0xb4
        case EGUIET_IMAGE: {
            boost::intrusive_ptr<video::ITexture> noTexture;
            core::position2d<int> origin;
            origin.X = 0;
            origin.Y = 0;
            return environment->addImage(noTexture, origin, true, parent, -1, nullptr);  // K 0x8c
        }
        case EGUIET_LIST_BOX:
            return environment->addListBox(rectangle, parent, -1, false);  // K 0x98
        case EGUIET_MESH_VIEWER:
            return environment->addMeshViewer(rectangle, parent, -1, nullptr);  // K 0x9c
        case EGUIET_MESSAGE_BOX:
            return environment->addMessageBox(nullptr, nullptr, false, 0, parent, -1);  // K 0x84
        case EGUIET_MODAL_SCREEN:
            return environment->addModalScreen(parent);  // K 0x80
        case EGUIET_SCROLL_BAR:
            return environment->addScrollBar(false, rectangle, parent, -1);  // K 0x88
        case EGUIET_SPIN_BOX:
            return environment->addSpinBox(L"0", rectangle, parent, -1);  // K 0xb0
        case EGUIET_STATIC_TEXT:
            return environment->addStaticText(nullptr, rectangle, false, true, parent, -1, false);  // K 0xa8
        case EGUIET_TAB:
            return environment->addTab(rectangle, parent, -1);  // K 0xbc
        case EGUIET_TAB_CONTROL:
            return environment->addTabControl(rectangle, parent, false, true, -1);  // K 0xb8
        case EGUIET_TABLE:
            return environment->addTable(rectangle, parent, -1, false);  // K 0xd0
        case EGUIET_TOOL_BAR:
            return environment->addToolBar(parent, -1);  // K 0xc8
        case EGUIET_WINDOW:
            return environment->addWindow(rectangle, false, nullptr, parent, -1);  // K 0x7c
        default:
            return nullptr;
    }
}

// 0x6a5dc4 _ZN6glitch3gui25CDefaultGUIElementFactory13addGUIElementEPKcPNS0_11IGUIElementE
IGUIElement* CDefaultGUIElementFactory::addGUIElement(const char* typeName, IGUIElement* parent) {
    return addGUIElement(getTypeFromName(typeName), parent);  // K 0x0c
}

// 0x6a5cc8 _ZNK6glitch3gui25CDefaultGUIElementFactory30getCreatableGUIElementTypeCountEv
int CDefaultGUIElementFactory::getCreatableGUIElementTypeCount() const {
    return 22;
}

// 0x6a5cd0 _ZNK6glitch3gui25CDefaultGUIElementFactory28getCreateableGUIElementTypeEi
EGUI_ELEMENT_TYPE CDefaultGUIElementFactory::getCreateableGUIElementType(int index) const {
    return static_cast<unsigned int>(index) > 0x15 ? EGUIET_ROOT : static_cast<EGUI_ELEMENT_TYPE>(index);
}

// 0x6a5ce0 _ZNK6glitch3gui25CDefaultGUIElementFactory32getCreateableGUIElementTypeNameEi
const char* CDefaultGUIElementFactory::getCreateableGUIElementTypeName(int index) const {
    return static_cast<unsigned int>(index) <= 0x15 ? GUIElementTypeNames[index] : nullptr;
}

// 0x6a5d00 _ZNK6glitch3gui25CDefaultGUIElementFactory32getCreateableGUIElementTypeNameENS0_17EGUI_ELEMENT_TYPEE
const char* CDefaultGUIElementFactory::getCreateableGUIElementTypeName(EGUI_ELEMENT_TYPE type) const {
    return static_cast<unsigned int>(type) <= 0x15 ? GUIElementTypeNames[type] : nullptr;
}

// 0x6a5d6c _ZNK6glitch3gui25CDefaultGUIElementFactory15getTypeFromNameEPKc
EGUI_ELEMENT_TYPE CDefaultGUIElementFactory::getTypeFromName(const char* name) const {
    for (int i = 0; GUIElementTypeNames[i] != nullptr; ++i) {
        if (std::strcmp(name, GUIElementTypeNames[i]) == 0) {
            return static_cast<EGUI_ELEMENT_TYPE>(i);
        }
    }
    return EGUIET_ROOT;
}

// 0x539d44 _ZNK6glitch3gui15CGUIEnvironment7STTFontltERKS2_
bool CGUIEnvironment::STTFont::operator<(const STTFont& other) const {
    if (namedPath == other.namedPath) {
        return size < other.size;
    }
    return namedPath < other.namedPath;
}

// 0x53a0c0 _ZN6glitch3gui15CGUIEnvironmentC1ERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_5video12IVideoDriverEPNS_11IOSOperatorE (C2 0x53a308)
CGUIEnvironment::CGUIEnvironment(const boost::intrusive_ptr<io::IFileSystem>& fileSystemValue, video::IVideoDriver* driverValue,
                                 IOSOperator* osOperatorValue)
    : IGUIEnvironment(),
      IGUIElement(EGUIET_ROOT, static_cast<IGUIEnvironment*>(this), nullptr, -1,
                  detail::makeRect(0, 0, screenSizeOf(driverValue).Width, screenSizeOf(driverValue).Height)),
      driver(driverValue),
      fileSystem(fileSystemValue),
      osOperator(osOperatorValue) {
    if (driver != nullptr) {
        ++driver->referenceCounter;
    }
    if (osOperator != nullptr) {
        ++osOperator->referenceCounter;
    }
    CDefaultGUIElementFactory* factory = new CDefaultGUIElementFactory(this);
    registerGUIElementFactory(factory);
    factory->drop();
    loadBuiltInFont();
    IGUISkin* skin = createSkin(EGST_WINDOWS_METALLIC);
    setSkin(skin);
    skin->drop();
    toolTip.launchTime = 1000;
    toolTip.lastTime = 0;
    tabGroup = true;
    toolTip.element = nullptr;
}

// 0x53a2d0 _ZN6glitch3gui20createGUIEnvironmentERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_5video12IVideoDriverEPNS_11IOSOperatorE
IGUIEnvironment* createGUIEnvironment(const boost::intrusive_ptr<io::IFileSystem>& fileSystem, video::IVideoDriver* driver, IOSOperator* osOperator) {
    return new CGUIEnvironment(fileSystem, driver, osOperator);
}

// 0x539118 _ZN6glitch3gui15CGUIEnvironmentD1Ev (0x539474 and 0x539490 are the other forms)
CGUIEnvironment::~CGUIEnvironment() {
    if (hovered != nullptr && hovered != rootElement()) {
        hovered->drop();
        hovered = nullptr;
    }
    if (driver != nullptr) {
        driver->drop();
        driver = nullptr;
    }
    if (focus != nullptr) {
        focus->drop();
        focus = nullptr;
    }
    if (toolTip.element != nullptr) {
        toolTip.element->drop();
        toolTip.element = nullptr;
    }
    if (osOperator != nullptr) {
        osOperator->drop();
        osOperator = nullptr;
    }
    if (currentSkin != nullptr) {
        currentSkin->drop();
        currentSkin = nullptr;
    }
    for (SSpriteBank& bank : spriteBanks) {
        if (bank.bank != nullptr) {
            bank.bank->drop();
        }
    }
    for (SFont& font : fonts) {
        font.font->drop();
    }
    for (SFace& face : faces) {
        face.face->drop();
    }
    for (STTFont& ttFont : ttFonts) {
        ttFont.font->drop();
    }
    for (IGUIElementFactory* factory : factories) {
        factory->drop();
    }
    // The file system is released with its smart pointer.
}

// 0x5353c8 _ZN6glitch3gui15CGUIEnvironment8setFocusEPNS0_11IGUIElementE
// The old focus gets EGET_ELEMENT_FOCUS_LOST and may refuse (then nothing changes), the new one EGET_ELEMENT_FOCUSED. The root never takes the focus.
bool CGUIEnvironment::setFocus(IGUIElement* element) {
    IGUIElement* oldFocus = focus;
    if (oldFocus == element) {
        return false;
    }
    if (element == rootElement()) {
        element = nullptr;
    } else if (element != nullptr) {
        grabElement(element);
        oldFocus = focus;
    }
    IGUIElement* held = oldFocus;
    if (oldFocus != nullptr) {
        grabElement(oldFocus);
        SEvent lost;
        lost.EventType = EET_GUI_EVENT;
        lost.GUIEvent.Caller = focus;
        lost.GUIEvent.Element = element;
        lost.GUIEvent.EventType = EGET_ELEMENT_FOCUS_LOST;
        if (focus->onEvent(lost)) {
            if (element != nullptr) {
                element->drop();
            }
            oldFocus->drop();
            return false;
        }
        oldFocus->drop();
        oldFocus = focus;
        held = oldFocus;
    }
    if (element != nullptr) {
        if (oldFocus != nullptr) {
            grabElement(oldFocus);
            oldFocus = focus;
        }
        SEvent gained;
        gained.EventType = EET_GUI_EVENT;
        gained.GUIEvent.Caller = element;
        gained.GUIEvent.Element = oldFocus;
        gained.GUIEvent.EventType = EGET_ELEMENT_FOCUSED;
        if (element->onEvent(gained)) {
            element->drop();
            if (held != nullptr) {
                held->drop();
            }
            return false;
        }
        if (held != nullptr) {
            held->drop();
        }
        held = focus;
    }
    if (held != nullptr) {
        held->drop();
    }
    focus = element;
    return true;
}

// 0x535598 _ZNK6glitch3gui15CGUIEnvironment8getFocusEv
IGUIElement* CGUIEnvironment::getFocus() const {
    return focus;
}

// 0x5355a0 _ZN6glitch3gui15CGUIEnvironment11removeFocusEPNS0_11IGUIElementE
bool CGUIEnvironment::removeFocus(IGUIElement* element) {
    if (focus != nullptr && focus == element) {
        SEvent lost;
        lost.EventType = EET_GUI_EVENT;
        lost.GUIEvent.Caller = focus;
        lost.GUIEvent.Element = nullptr;
        lost.GUIEvent.EventType = EGET_ELEMENT_FOCUS_LOST;
        if (focus->onEvent(lost)) {
            return false;
        }
    }
    if (focus != nullptr) {
        focus->drop();
        focus = nullptr;
    }
    return true;
}

// 0x53562c _ZNK6glitch3gui15CGUIEnvironment8hasFocusEPNS0_11IGUIElementE
bool CGUIEnvironment::hasFocus(IGUIElement* element) const {
    return focus == element;
}

// 0x535640 _ZNK6glitch3gui15CGUIEnvironment14getVideoDriverEv
video::IVideoDriver* CGUIEnvironment::getVideoDriver() const {
    return driver;
}

// 0x535648 _ZNK6glitch3gui15CGUIEnvironment13getFileSystemEv
const boost::intrusive_ptr<io::IFileSystem>& CGUIEnvironment::getFileSystem() const {
    return fileSystem;
}

// 0x535650 _ZNK6glitch3gui15CGUIEnvironment13getOSOperatorEv
IOSOperator* CGUIEnvironment::getOSOperator() const {
    return osOperator;
}

// 0x535658 _ZN6glitch3gui15CGUIEnvironment5clearEv
void CGUIEnvironment::clear() {
    if (focus != nullptr) {
        focus->drop();
        focus = nullptr;
    }
    if (hovered != nullptr && hovered != rootElement()) {
        hovered->drop();
        hovered = nullptr;
    }
    const IGUIElement::ElementList& children = getRootGUIElement()->getChildren();  // K 0x74, 0x68
    while (!children.empty()) {
        static_cast<scene::SListNode<IGUIElement*>*>(children.head.prev)->value->remove();  // the last child, K 0x1c
    }
}

// 0x535710 _ZN6glitch3gui15CGUIEnvironment7onEventERKNS_6SEventE
bool CGUIEnvironment::onEvent(const SEvent& event) {
    if (userReceiver == nullptr) {
        return false;
    }
    if (event.EventType == EET_MOUSE_INPUT_EVENT || event.EventType == EET_KEY_INPUT_EVENT ||
        (event.EventType == EET_GUI_EVENT && event.GUIEvent.Caller == rootElement())) {
        return false;
    }
    return userReceiver->onEvent(event);
}

// 0x535768 _ZN6glitch3gui15CGUIEnvironment20setUserEventReceiverEPNS_14IEventReceiverE
void CGUIEnvironment::setUserEventReceiver(IEventReceiver* receiver) {
    userReceiver = receiver;
}

// 0x535770 _ZNK6glitch3gui15CGUIEnvironment7getSkinEv
IGUISkin* CGUIEnvironment::getSkin() const {
    return currentSkin;
}

// 0x535778 _ZN6glitch3gui15CGUIEnvironment7setSkinEPNS0_9IGUISkinE
void CGUIEnvironment::setSkin(IGUISkin* skin) {
    if (currentSkin != skin) {
        if (currentSkin != nullptr) {
            currentSkin->drop();
        }
        currentSkin = skin;
        if (currentSkin != nullptr) {
            ++currentSkin->referenceCounter;
        }
    }
}

// 0x5357d0 _ZNK6glitch3gui15CGUIEnvironment27getDefaultGUIElementFactoryEv
IGUIElementFactory* CGUIEnvironment::getDefaultGUIElementFactory() const {
    return getGUIElementFactory(0);  // K 0xe0
}

// 0x5357e8 _ZNK6glitch3gui15CGUIEnvironment36getRegisteredGUIElementFactoryCountEv
int CGUIEnvironment::getRegisteredGUIElementFactoryCount() const {
    return static_cast<int>(factories.size());
}

// 0x5357fc _ZNK6glitch3gui15CGUIEnvironment19getGUIElementFactoryEj
IGUIElementFactory* CGUIEnvironment::getGUIElementFactory(unsigned int index) const {
    return index < factories.size() ? factories[index] : nullptr;
}

// 0x537dac _ZN6glitch3gui15CGUIEnvironment25registerGUIElementFactoryEPNS0_19IGUIElementFactoryE
void CGUIEnvironment::registerGUIElementFactory(IGUIElementFactory* factoryToAdd) {
    if (factoryToAdd != nullptr) {
        ++factoryToAdd->referenceCounter;
        factories.push_back(factoryToAdd);
    }
}

// 0x535818 _ZN6glitch3gui15CGUIEnvironment13addGUIElementEPKcPNS0_11IGUIElementE
IGUIElement* CGUIEnvironment::addGUIElement(const char* elementName, IGUIElement* parent) {
    if (parent == nullptr) {
        parent = rootElement();
    }
    IGUIElement* element = nullptr;
    for (std::size_t i = 0; i < factories.size() && element == nullptr; ++i) {
        element = factories[i]->addGUIElement(elementName, parent);  // K 0x10
    }
    return element;
}

// 0x535884 _ZN6glitch3gui15CGUIEnvironment7saveGUIEPKcPNS0_11IGUIElementE
bool CGUIEnvironment::saveGUI(const char* filename, IGUIElement* start) {
    io::IWriteFile* file = fileSystem->createAndWriteFile(filename, false);  // K 0x14
    if (file == nullptr) {
        return false;
    }
    const bool result = saveGUI(file, start);  // K 0xec
    file->drop();
    return result;
}

// 0x5358e0 _ZN6glitch3gui15CGUIEnvironment7saveGUIEPNS_2io10IWriteFileEPNS0_11IGUIElementE
bool CGUIEnvironment::saveGUI(io::IWriteFile* file, IGUIElement* start) {
    if (file == nullptr) {
        return false;
    }
    io::IXMLWriter* writer = fileSystem->createXMLWriter(file);  // K 0x60
    if (writer == nullptr) {
        return false;
    }
    writer->writeXMLHeader();  // K 0x0c
    if (start == nullptr) {
        start = rootElement();
    }
    writeGUIElement(writer, start);  // K 0x100
    writer->drop();
    return true;
}

// 0x538670 _ZN6glitch3gui15CGUIEnvironment15writeGUIElementEPNS_2io10IXMLWriterEPNS0_11IGUIElementE
void CGUIEnvironment::writeGUIElement(io::IXMLWriter* writer, IGUIElement* node) {
    if (writer == nullptr || node == nullptr) {
        return;
    }
    io::IAttributes* attributes = fileSystem->createEmptyAttributes(nullptr);  // K 0x64
    node->serializeAttributes(attributes, nullptr);  // K 0x74
    const wchar_t* name = nullptr;
    if (attributes->getAttributeCount() != 0) {  // K 0x0c
        if (node == rootElement()) {
            name = GLITCH_XML_FORMAT_GUI_ENV;
            writer->writeElement(name, false, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr);  // K 0x10
        } else {
            name = GLITCH_XML_FORMAT_GUI_ELEMENT;
            const std::wstring typeName = core::stringc2stringw(node->getTypeName());  // K 0x70
            writer->writeElement(name, false, GLITCH_XML_FORMAT_GUI_ELEMENT_ATTR_TYPE, typeName.c_str(), nullptr, nullptr, nullptr, nullptr, nullptr,
                                 nullptr, nullptr, nullptr);
        }
        writer->writeLineBreak();  // K 0x24
        writer->writeLineBreak();
        io::CXMLAttributesWriter attributesWriter(writer, true, nullptr);
        attributesWriter.write(attributes);
        writer->writeLineBreak();
    }
    const IGUIElement::ElementList& children = node->getChildren();  // K 0x68
    for (IGUIElement::ElementList::iterator it = children.begin(); it != children.end(); ++it) {
        if (!(*it)->isSubElement()) {  // K 0x34
            writeGUIElement(writer, *it);
        }
    }
    if (attributes->getAttributeCount() != 0) {
        writer->writeClosingTag(name);  // K 0x1c
        writer->writeLineBreak();
        writer->writeLineBreak();
    }
    attributes->drop();
}

// 0x537380 _ZN6glitch3gui15CGUIEnvironment7loadGUIEPNS_2io9IReadFileEPNS0_11IGUIElementE
bool CGUIEnvironment::loadGUI(io::IReadFile* file, IGUIElement* parent) {
    if (file == nullptr) {
        os::Printer::log("Unable to open GUI file", os::ELL_ERROR);
        return false;
    }
    io::IXMLReader* reader = fileSystem->createXMLReader(file);  // K 0x50
    if (reader == nullptr) {
        os::Printer::log("GUI is not a valid XML file", file->getFileName(), os::ELL_ERROR);  // K 0x28
        return false;
    }
    while (reader->read()) {  // K 0x0c
        readGUIElement(reader, parent);  // K 0x104
    }
    reader->drop();
    return true;
}

// 0x536388 _ZN6glitch3gui15CGUIEnvironment7loadGUIEPKcPNS0_11IGUIElementE
bool CGUIEnvironment::loadGUI(const char* filename, IGUIElement* parent) {
    io::IReadFile* file = fileSystem->createAndOpenFile(filename);  // K 0x0c
    if (file == nullptr) {
        os::Printer::log("Unable to open gui file", filename, os::ELL_ERROR);
        return false;
    }
    const bool result = loadGUI(file, parent);  // K 0xf4
    file->drop();
    return result;
}

// 0x53b418 _ZN6glitch3gui15CGUIEnvironment14readGUIElementEPNS_2io13IIrrXMLReaderIwNS_17IReferenceCountedEEEPNS0_11IGUIElementE
void CGUIEnvironment::readGUIElement(io::IIrrXMLReader<wchar_t, IReferenceCounted>* reader, IGUIElement* node) {
    if (reader == nullptr) {
        return;
    }
    const int nodeType = reader->getNodeType();  // K 0x14
    if (nodeType == 0 || nodeType == 6 || nodeType == 2) {
        return;
    }
    IGUIElement* current;
    if (node != nullptr || std::wcscmp(GLITCH_XML_FORMAT_GUI_ENV, reader->getNodeName()) != 0) {  // K 0x3c
        if (std::wcscmp(GLITCH_XML_FORMAT_GUI_ELEMENT, reader->getNodeName()) == 0) {
            const wchar_t* typeName = reader->getAttributeValue(GLITCH_XML_FORMAT_GUI_ELEMENT_ATTR_TYPE);  // K 0x24
            const std::string typeNameNarrow = core::stringw2stringc(typeName);
            current = addGUIElement(typeNameNarrow.c_str(), node);  // K 0xe4
            if (current == nullptr) {
                os::Printer::log("Could not create GUI element of unknown type", typeNameNarrow.c_str(), os::ELL_INFORMATION);
            }
        } else {
            current = nullptr;
        }
    } else {
        current = rootElement();
    }
    while (reader->read()) {
        const int type = reader->getNodeType();
        if (type == 1) {
            if (std::wcscmp(L"attributes", reader->getNodeName()) == 0) {
                io::IAttributes* attributes = fileSystem->createEmptyAttributes(driver);  // K 0x64
                io::CXMLAttributesReader attributesReader(static_cast<io::CXMLReaderImpl<wchar_t, IReferenceCounted>*>(reader), true, nullptr);
                attributesReader.read(attributes);
                if (current != nullptr) {
                    current->deserializeAttributes(attributes, nullptr);  // K 0x78
                }
                attributes->drop();
            } else if (std::wcscmp(GLITCH_XML_FORMAT_GUI_ELEMENT, reader->getNodeName()) == 0 ||
                       std::wcscmp(GLITCH_XML_FORMAT_GUI_ENV, reader->getNodeName()) == 0) {
                readGUIElement(reader, current);  // K 0x104
            } else {
                const std::string unknown = core::stringw2stringc(reader->getNodeName());
                os::Printer::log("Found unknown element in glitch GUI file", unknown.c_str(), os::ELL_INFORMATION);
            }
        } else if (type == 2) {
            if (std::wcscmp(GLITCH_XML_FORMAT_GUI_ELEMENT, reader->getNodeName()) == 0) {
                return;
            }
            if (std::wcscmp(GLITCH_XML_FORMAT_GUI_ENV, reader->getNodeName()) == 0) {
                return;
            }
        }
    }
}

// 0x53595c _ZNK6glitch3gui15CGUIEnvironment19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIEnvironment::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUISkin* skin = getSkin();  // K 0x38
    if (skin != nullptr) {
        attributes->addEnum("Skin", static_cast<int>(skin->getType()), GUISkinTypeNames, false);  // K 0xf4
        skin->serializeAttributes(attributes, options);
    }
}

// 0x535a08 _ZN6glitch3gui15CGUIEnvironment21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIEnvironment::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    if (attributes->existsAttribute("Skin")) {  // K 0x24
        IGUISkin* skin = getSkin();
        const int type = attributes->getEnum("Skin", GUISkinTypeNames);  // K 0x100
        if (skin == nullptr || static_cast<int>(skin->getType()) != type) {
            IGUISkin* created = createSkin(static_cast<EGUI_SKIN_TYPE>(type));  // K 0x40
            setSkin(created);                                                    // K 0x3c
            created->drop();
        }
        skin = getSkin();
        if (skin != nullptr) {
            skin->deserializeAttributes(attributes, options);
        }
    }
    const core::dimension2d<int> size = screenSizeOf(driver);
    relativeRect = detail::makeRect(0, 0, size.Width, size.Height);
    absoluteRect = detail::makeRect(0, 0, size.Width, size.Height);
}

// 0x535b58 _ZN6glitch3gui15CGUIEnvironment14getElementByIdEiPNS0_11IGUIElementE
IGUIElement* CGUIEnvironment::getElementById(int id, IGUIElement* start) {
    if (start == nullptr) {
        start = getRootGUIElement();  // K 0x74
    }
    if (start->getID() == id) {  // K 0x54
        return start;
    }
    const IGUIElement::ElementList& children = start->getChildren();  // K 0x68
    for (IGUIElement::ElementList::iterator it = children.begin(); it != children.end(); ++it) {
        IGUIElement* found = getElementById(id, *it);  // K 0x44
        if (found != nullptr) {
            return found;
        }
    }
    return nullptr;
}

// 0x53644c _ZN6glitch3gui15CGUIEnvironment16getElementByNameEPKcPNS0_11IGUIElementE
IGUIElement* CGUIEnvironment::getElementByName(const char* name, IGUIElement* start) {
    if (start == nullptr) {
        start = getRootGUIElement();
    }
    if (std::strcmp(start->getName(), name) == 0) {  // K 0x5c
        return start;
    }
    const IGUIElement::ElementList& children = start->getChildren();
    for (IGUIElement::ElementList::iterator it = children.begin(); it != children.end(); ++it) {
        IGUIElement* found = getElementByName(name, *it);  // K 0x48
        if (found != nullptr) {
            return found;
        }
    }
    return nullptr;
}

// 0x535bf8 _ZNK6glitch3gui15CGUIEnvironment14getBuiltInFontEv
IGUIFont* CGUIEnvironment::getBuiltInFont() const {
    return fonts.empty() ? nullptr : fonts.front().font;
}

// 0x535c10 _ZN6glitch3gui15CGUIEnvironment17getRootGUIElementEv
IGUIElement* CGUIEnvironment::getRootGUIElement() {
    return rootElement();
}

// 0x53b7d4 _ZN6glitch3gui15CGUIEnvironment7getFontEPKc
// A font that is not in the list is loaded: through its XML description (a "bitmap" font; "vector" ones are refused) with the file system working
// directory switched to the folder of the file, else as a plain bitmap font file.
IGUIFont* CGUIEnvironment::getFont(const char* filename) {
    SFont key;
    key.namedPath = lowerCase(filename);
    const int index = searchOrdered(fonts, key);
    if (index != -1) {
        return fonts[static_cast<std::size_t>(index)].font;
    }
    if (!fileSystem->existFile(filename)) {  // K 0x44
        os::Printer::log("Could not load font because the file does not exist", key.namedPath.c_str(), os::ELL_ERROR);
        return nullptr;
    }
    IGUIFont* font = nullptr;
    io::IXMLReader* reader = fileSystem->createXMLReader(filename);  // K 0x4c
    if (reader != nullptr) {
        bool found = false;
        int fontType = 3;
        while (reader->read() && !found) {
            if (reader->getNodeType() == 1) {
                if (std::wstring(L"font") == reader->getNodeName()) {
                    const wchar_t* typeValue = reader->getAttributeValue(L"type");  // K 0x24
                    found = true;
                    if (typeValue != nullptr && std::wstring(L"vector") == typeValue) {
                        fontType = 1;
                    } else {
                        fontType = (typeValue != nullptr && std::wstring(L"bitmap") == typeValue) ? 0 : fontType;
                    }
                }
            }
        }
        if (fontType != 0) {
            if (fontType == 1) {
                os::Printer::log("Unable to load font, XML vector fonts are not supported yet", key.namedPath.c_str(), os::ELL_ERROR);
            }
            reader->drop();
        } else {
            CGUIFont* bitmapFont = new CGUIFont(this, filename);
            const std::string workingDirectory = fileSystem->getWorkingDirectory();  // K 0x2c
            fileSystem->changeWorkingDirectoryTo(fileSystem->getFileDir(glitch::core::stringc(key.namedPath.c_str())).c_str());  // K 0x30, 0x38
            const bool loaded = bitmapFont->load(reader);
            fileSystem->changeWorkingDirectoryTo(workingDirectory.c_str());
            if (loaded) {
                font = bitmapFont;
            } else {
                bitmapFont->drop();
            }
            reader->drop();
        }
    }
    if (font == nullptr) {
        CGUIFont* bitmapFont = new CGUIFont(this, key.namedPath.c_str());
        if (!bitmapFont->load(key.namedPath.c_str())) {
            bitmapFont->drop();
            return nullptr;
        }
        font = bitmapFont;
    }
    key.font = font;
    fonts.push_back(key);
    return font;
}

// 0x53a694 _ZN6glitch3gui15CGUIEnvironment13getSpriteBankEPKc
// (Loading sprite banks from files is not implemented in the original; an unknown bank is never returned.)
IGUISpriteBank* CGUIEnvironment::getSpriteBank(const char* filename) {
    SSpriteBank key;
    key.namedPath = lowerCase(filename);
    const int index = searchOrdered(spriteBanks, key);
    if (index != -1) {
        return spriteBanks[static_cast<std::size_t>(index)].bank;
    }
    if (!fileSystem->existFile(key.namedPath.c_str())) {
        os::Printer::log("Could not load sprite bank because the file does not exist", filename, os::ELL_ERROR);
    }
    return nullptr;
}

// 0x53a9f0 _ZN6glitch3gui15CGUIEnvironment18addEmptySpriteBankEPKc
// (The name is stored as given, not lower-cased; null when a bank of that name exists.)
IGUISpriteBank* CGUIEnvironment::addEmptySpriteBank(const char* name) {
    SSpriteBank key;
    key.namedPath = name != nullptr ? name : "";
    if (searchOrdered(spriteBanks, key) != -1) {
        return nullptr;
    }
    CGUISpriteBank* bank = new CGUISpriteBank(this);
    key.bank = bank;
    spriteBanks.push_back(key);
    return bank;
}

// 0x53ada8 _ZN6glitch3gui15CGUIEnvironment9getTTFontEPKcj
// The face file is loaded under the lower-cased name; a font is made per (name, size) and attached with no border.
IGUITTFont* CGUIEnvironment::getTTFont(const char* filename, unsigned int size) {
    SFace faceKey;
    faceKey.namedPath = lowerCase(filename);
    const int faceIndex = searchOrdered(faces, faceKey);
    CGUITTFace* face;
    if (faceIndex == -1) {
        face = new CGUITTFace();
        if (!face->load(faceKey.namedPath.c_str())) {
            face->drop();
            return nullptr;
        }
        faceKey.face = face;
        faces.push_back(faceKey);
    } else {
        face = faces[static_cast<std::size_t>(faceIndex)].face;
    }
    STTFont fontKey;
    fontKey.namedPath = faceKey.namedPath;
    fontKey.size = size;
    const int fontIndex = searchOrdered(ttFonts, fontKey);
    if (fontIndex != -1) {
        return ttFonts[static_cast<std::size_t>(fontIndex)].font;
    }
    CGUITTFont* font = new CGUITTFont(driver);
    video::SColor noColor;
    noColor.color = 0;
    if (!font->attach(face, size, 0, noColor)) {  // K 0x6c
        font->drop();
        return nullptr;
    }
    fontKey.font = font;
    ttFonts.push_back(fontKey);
    return font;
}

// 0x53b0cc _ZN6glitch3gui15CGUIEnvironment9getTTFontEPNS_2io9IReadFileEj
IGUITTFont* CGUIEnvironment::getTTFont(io::IReadFile* file, unsigned int size) {
    SFace faceKey;
    faceKey.namedPath = lowerCase(file != nullptr ? file->getFileName() : nullptr);  // K 0x28
    const int faceIndex = searchOrdered(faces, faceKey);
    CGUITTFace* face;
    if (faceIndex == -1) {
        face = new CGUITTFace();
        if (!face->load(file)) {
            face->drop();
            return nullptr;
        }
        faceKey.face = face;
        faces.push_back(faceKey);
    } else {
        face = faces[static_cast<std::size_t>(faceIndex)].face;
    }
    STTFont fontKey;
    fontKey.namedPath = faceKey.namedPath;
    fontKey.size = size;
    const int fontIndex = searchOrdered(ttFonts, fontKey);
    if (fontIndex != -1) {
        return ttFonts[static_cast<std::size_t>(fontIndex)].font;
    }
    CGUITTFont* font = new CGUITTFont(driver);
    video::SColor noColor;
    noColor.color = 0;
    if (!font->attach(face, size, 0, noColor)) {
        font->drop();
        return nullptr;
    }
    fontKey.font = font;
    ttFonts.push_back(fontKey);
    return font;
}

// 0x53bce4 _ZN6glitch3gui15CGUIEnvironment12removeTTFontEPKcj
bool CGUIEnvironment::removeTTFont(const char* filename, unsigned int size) {
    SFace faceKey;
    faceKey.namedPath = lowerCase(filename);
    if (searchOrdered(faces, faceKey) == -1) {
        return false;
    }
    STTFont fontKey;
    fontKey.namedPath = faceKey.namedPath;
    fontKey.size = size;
    const int index = searchOrdered(ttFonts, fontKey);
    if (index == -1) {
        return false;
    }
    ttFonts[static_cast<std::size_t>(index)].font->drop();
    ttFonts.erase(ttFonts.begin() + index);
    removeTTFontFace(filename);  // K 0x60
    return true;
}

// 0x53ab20 _ZN6glitch3gui15CGUIEnvironment12removeTTFontEPNS_2io9IReadFileEj
bool CGUIEnvironment::removeTTFont(io::IReadFile* file, unsigned int size) {
    SFace faceKey;
    faceKey.namedPath = lowerCase(file != nullptr ? file->getFileName() : nullptr);
    if (searchOrdered(faces, faceKey) == -1) {
        return false;
    }
    STTFont fontKey;
    fontKey.namedPath = faceKey.namedPath;
    fontKey.size = size;
    const int index = searchOrdered(ttFonts, fontKey);
    if (index == -1) {
        return false;
    }
    ttFonts[static_cast<std::size_t>(index)].font->drop();
    ttFonts.erase(ttFonts.begin() + index);
    removeTTFontFace(file);  // K 0x64
    return true;
}

// 0x53a4dc _ZN6glitch3gui15CGUIEnvironment15removeTTFontFaceEPKc
// A face is removed only when no font (list entry named exactly like the file name) uses it.
bool CGUIEnvironment::removeTTFontFace(const char* filename) {
    SFace faceKey;
    faceKey.namedPath = lowerCase(filename);
    const int index = searchOrdered(faces, faceKey);
    if (index == -1) {
        return false;
    }
    const std::string requested = filename != nullptr ? filename : "";
    for (const STTFont& ttFont : ttFonts) {
        if (ttFont.namedPath == requested) {
            return false;
        }
    }
    faces[static_cast<std::size_t>(index)].face->drop();
    faces.erase(faces.begin() + index);
    return true;
}

// 0x53a814 _ZN6glitch3gui15CGUIEnvironment15removeTTFontFaceEPNS_2io9IReadFileE
bool CGUIEnvironment::removeTTFontFace(io::IReadFile* file) {
    SFace faceKey;
    faceKey.namedPath = lowerCase(file != nullptr ? file->getFileName() : nullptr);
    const int index = searchOrdered(faces, faceKey);
    if (index == -1) {
        return false;
    }
    for (const STTFont& ttFont : ttFonts) {
        const char* name = file != nullptr ? file->getFileName() : "";
        if (ttFont.namedPath == (name != nullptr ? name : "")) {
            return false;
        }
    }
    faces[static_cast<std::size_t>(index)].face->drop();
    faces.erase(faces.begin() + index);
    return true;
}

// 0x539ef0 _ZN6glitch3gui15CGUIEnvironment15loadBuiltInFontEv
void CGUIEnvironment::loadBuiltInFont() {
    bool optionWasOn = false;
    if (driver != nullptr && (driver->m_options & 0x2000u) != 0) {
        driver->setOption(0x2000, false);  // K 0xa0
        optionWasOn = true;
    }
    io::IReadFile* file = io::createMemoryReadFile(const_cast<unsigned char*>(BuiltInFontData), static_cast<long>(BuiltInFontDataSize), "#DefaultFont", false);
    CGUIFont* font = new CGUIFont(this, "#DefaultFont");
    if (font->load(file)) {
        SFont entry;
        entry.namedPath = "#DefaultFont";
        entry.font = font;
        fonts.push_back(entry);
        file->drop();
    } else {
        os::Printer::log("Error: Could not load built-in Font. Did you compile without the BMP loader?", os::ELL_ERROR);
        font->drop();
        file->drop();
    }
    if (driver != nullptr && optionWasOn != ((driver->m_options >> 13) & 1u)) {
        driver->setOption(0x2000, optionWasOn);
    }
}

// 0x537440 _ZN6glitch3gui15CGUIEnvironment10createSkinENS0_14EGUI_SKIN_TYPEE
IGUISkin* CGUIEnvironment::createSkin(EGUI_SKIN_TYPE type) {
    CGUISkin* skin = new CGUISkin(type, driver);
    IGUIFont* builtIn = getBuiltInFont();  // K 0x68
    IGUISpriteBank* bank = nullptr;
    skin->setFont(builtIn, EGDF_DEFAULT);  // K 0x2c
    if (builtIn != nullptr && builtIn->getType() == EGFT_BITMAP) {
        bank = static_cast<IGUIFontBitmap*>(builtIn)->getSpriteBank();  // K 0x48
    }
    skin->setSpriteBank(bank);  // K 0x34
    return skin;
}

// 0x5372bc _ZN6glitch3gui15CGUIEnvironment9addButtonERKNS_4core4rectIiEEPNS0_11IGUIElementEiPKwS9_
IGUIButton* CGUIEnvironment::addButton(const core::rect<int>& rectangle, IGUIElement* parent, int id, const wchar_t* text, const wchar_t* tooltiptext) {
    CGUIButton* button = new CGUIButton(this, parent != nullptr ? parent : rootElement(), id, rectangle, false);
    if (text != nullptr) {
        button->setText(text);  // K 0x44
    }
    if (tooltiptext != nullptr) {
        button->setToolTipText(tooltiptext);  // K 0x4c
    }
    button->drop();
    return button;
}

// 0x5371e0 _ZN6glitch3gui15CGUIEnvironment9addWindowERKNS_4core4rectIiEEbPKwPNS0_11IGUIElementEi
IGUIWindow* CGUIEnvironment::addWindow(const core::rect<int>& rectangle, bool modal, const wchar_t* text, IGUIElement* parent, int id) {
    if (parent == nullptr) {
        parent = rootElement();
    }
    if (modal) {
        CGUIModalScreen* modalScreen = new CGUIModalScreen(this, parent, -1);
        modalScreen->drop();
        parent = modalScreen;
    }
    CGUIWindow* window = new CGUIWindow(this, parent, id, rectangle);
    if (text != nullptr) {
        window->setText(text);
    }
    window->drop();
    return window;
}

// 0x5369e0 _ZN6glitch3gui15CGUIEnvironment14addModalScreenEPNS0_11IGUIElementE
IGUIElement* CGUIEnvironment::addModalScreen(IGUIElement* parent) {
    CGUIModalScreen* modalScreen = new CGUIModalScreen(this, parent != nullptr ? parent : rootElement(), -1);
    modalScreen->drop();
    return modalScreen;
}

// 0x5370a0 _ZN6glitch3gui15CGUIEnvironment13addMessageBoxEPKwS3_biPNS0_11IGUIElementEi
// The box is centred in the parent with the message box size of the skin; null without a skin.
IGUIWindow* CGUIEnvironment::addMessageBox(const wchar_t* caption, const wchar_t* text, bool modal, int flags, IGUIElement* parent, int id) {
    if (currentSkin == nullptr) {
        return nullptr;
    }
    if (parent == nullptr) {
        parent = rootElement();
    }
    const int parentWidth = parent->absoluteRect.LowerRightCorner.X - parent->absoluteRect.UpperLeftCorner.X;
    const int parentHeight = parent->absoluteRect.LowerRightCorner.Y - parent->absoluteRect.UpperLeftCorner.Y;
    const int width = currentSkin->getSize(EGDS_MESSAGE_BOX_WIDTH);
    const int height = currentSkin->getSize(EGDS_MESSAGE_BOX_HEIGHT);
    const int left = (parentWidth - width) / 2;
    const int top = (parentHeight - height) / 2;
    if (modal) {
        CGUIModalScreen* modalScreen = new CGUIModalScreen(this, parent, -1);
        modalScreen->drop();
        parent = modalScreen;
    }
    CGUIMessageBox* box = new CGUIMessageBox(this, caption, text, flags, parent, id, detail::makeRect(left, top, left + width, top + height));
    box->drop();
    return box;
}

// 0x537010 _ZN6glitch3gui15CGUIEnvironment12addScrollBarEbRKNS_4core4rectIiEEPNS0_11IGUIElementEi
IGUIScrollBar* CGUIEnvironment::addScrollBar(bool horizontal, const core::rect<int>& rectangle, IGUIElement* parent, int id) {
    CGUIScrollBar* scrollBar = new CGUIScrollBar(horizontal, this, parent != nullptr ? parent : rootElement(), id, rectangle, false);
    scrollBar->drop();
    return scrollBar;
}

// 0x536e7c _ZN6glitch3gui15CGUIEnvironment8addImageERKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core10position2dIiEEbPNS0_11IGUIElementEiPKw
IGUIImage* CGUIEnvironment::addImage(const boost::intrusive_ptr<video::ITexture>& image, core::position2d<int> pos, bool useAlphaChannel,
                                     IGUIElement* parent, int id, const wchar_t* text) {
    int width = 0;
    int height = 0;
    if (image) {
        width = static_cast<int>(image->m_width);
        height = static_cast<int>(image->m_height);
    }
    CGUIImage* element = new CGUIImage(this, parent != nullptr ? parent : rootElement(), id,
                                       detail::makeRect(pos.X, pos.Y, pos.X + width, pos.Y + height));
    if (text != nullptr) {
        element->setText(text);
    }
    if (useAlphaChannel) {
        element->setUseAlphaChannel(true);  // K 0x88
    }
    if (image) {
        element->setImage(image);  // K 0x7c
    }
    element->drop();
    return element;
}

// 0x536de0 _ZN6glitch3gui15CGUIEnvironment8addImageERKNS_4core4rectIiEEPNS0_11IGUIElementEiPKw
IGUIImage* CGUIEnvironment::addImage(const core::rect<int>& rectangle, IGUIElement* parent, int id, const wchar_t* text) {
    CGUIImage* element = new CGUIImage(this, parent != nullptr ? parent : rootElement(), id, rectangle);
    if (text != nullptr) {
        element->setText(text);
    }
    element->drop();
    return element;
}

// 0x536ca0 _ZN6glitch3gui15CGUIEnvironment11addCheckBoxEbRKNS_4core4rectIiEEPNS0_11IGUIElementEiPKw
IGUICheckBox* CGUIEnvironment::addCheckBox(bool checked, const core::rect<int>& rectangle, IGUIElement* parent, int id, const wchar_t* text) {
    CGUICheckBox* checkBox = new CGUICheckBox(checked, this, parent != nullptr ? parent : rootElement(), id, rectangle);
    if (text != nullptr) {
        checkBox->setText(text);
    }
    checkBox->drop();
    return checkBox;
}

// 0x536b50 _ZN6glitch3gui15CGUIEnvironment10addListBoxERKNS_4core4rectIiEEPNS0_11IGUIElementEib
// The list uses the sprite bank of the skin (else the one of a bitmap built-in font).
IGUIListBox* CGUIEnvironment::addListBox(const core::rect<int>& rectangle, IGUIElement* parent, int id, bool drawBackground) {
    CGUIListBox* listBox = new CGUIListBox(this, parent != nullptr ? parent : rootElement(), id, rectangle, true, drawBackground, false);
    if (currentSkin != nullptr && currentSkin->getSpriteBank() != nullptr) {
        listBox->setSpriteBank(currentSkin->getSpriteBank());  // K 0x94
    } else if (getBuiltInFont() != nullptr) {
        IGUIFont* builtIn = getBuiltInFont();
        if (builtIn->getType() == EGFT_BITMAP) {
            listBox->setSpriteBank(static_cast<IGUIFontBitmap*>(builtIn)->getSpriteBank());
        }
    }
    listBox->drop();
    return listBox;
}

// 0x536d44 _ZN6glitch3gui15CGUIEnvironment13addMeshViewerERKNS_4core4rectIiEEPNS0_11IGUIElementEiPKw
IGUIMeshViewer* CGUIEnvironment::addMeshViewer(const core::rect<int>& rectangle, IGUIElement* parent, int id, const wchar_t* text) {
    CGUIMeshViewer* viewer = new CGUIMeshViewer(this, parent != nullptr ? parent : rootElement(), id, rectangle);
    if (text != nullptr) {
        viewer->setText(text);
    }
    viewer->drop();
    return viewer;
}

// 0x536abc _ZN6glitch3gui15CGUIEnvironment17addFileOpenDialogEPKwbPNS0_11IGUIElementEi
IGUIFileOpenDialog* CGUIEnvironment::addFileOpenDialog(const wchar_t* title, bool modal, IGUIElement* parent, int id) {
    if (parent == nullptr) {
        parent = rootElement();
    }
    if (modal) {
        CGUIModalScreen* modalScreen = new CGUIModalScreen(this, parent, -1);
        modalScreen->drop();
        parent = modalScreen;
    }
    CGUIFileOpenDialog* dialog = new CGUIFileOpenDialog(title, this, parent, id);
    dialog->drop();
    return dialog;
}

// 0x536a28 _ZN6glitch3gui15CGUIEnvironment20addColorSelectDialogEPKwbPNS0_11IGUIElementEi
IGUIColorSelectDialog* CGUIEnvironment::addColorSelectDialog(const wchar_t* title, bool modal, IGUIElement* parent, int id) {
    if (parent == nullptr) {
        parent = rootElement();
    }
    if (modal) {
        CGUIModalScreen* modalScreen = new CGUIModalScreen(this, parent, -1);
        modalScreen->drop();
        parent = modalScreen;
    }
    CGUIColorSelectDialog* dialog = new CGUIColorSelectDialog(title, this, parent, id);
    dialog->drop();
    return dialog;
}

// 0x536954 _ZN6glitch3gui15CGUIEnvironment13addStaticTextEPKwRKNS_4core4rectIiEEbbPNS0_11IGUIElementEib
IGUIStaticText* CGUIEnvironment::addStaticText(const wchar_t* text, const core::rect<int>& rectangle, bool border, bool wordWrap,
                                               IGUIElement* parent, int id, bool fillBackground) {
    CGUIStaticText* staticText = new CGUIStaticText(text, border, this, parent != nullptr ? parent : rootElement(), id, rectangle, fillBackground);
    staticText->setWordWrap(wordWrap);  // K 0xa4
    staticText->drop();
    return staticText;
}

// 0x5368e8 _ZN6glitch3gui15CGUIEnvironment10addEditBoxEPKwRKNS_4core4rectIiEEbPNS0_11IGUIElementEi
IGUIEditBox* CGUIEnvironment::addEditBox(const wchar_t* text, const core::rect<int>& rectangle, bool border, IGUIElement* parent, int id) {
    CGUIEditBox* editBox = new CGUIEditBox(text, border, this, parent != nullptr ? parent : rootElement(), id, rectangle);
    editBox->drop();
    return editBox;
}

// 0x536880 _ZN6glitch3gui15CGUIEnvironment10addSpinBoxEPKwRKNS_4core4rectIiEEPNS0_11IGUIElementEi
IGUISpinBox* CGUIEnvironment::addSpinBox(const wchar_t* text, const core::rect<int>& rectangle, IGUIElement* parent, int id) {
    CGUISpinBox* spinBox = new CGUISpinBox(text, this, parent != nullptr ? parent : rootElement(), id, rectangle);
    spinBox->drop();
    return spinBox;
}

// 0x536574 _ZN6glitch3gui15CGUIEnvironment13addInOutFaderEPKNS_4core4rectIiEEPNS0_11IGUIElementEi
// Without a rectangle the fader covers the screen of the driver.
IGUIInOutFader* CGUIEnvironment::addInOutFader(const core::rect<int>* rectangle, IGUIElement* parent, int id) {
    core::rect<int> area;
    if (rectangle != nullptr) {
        area = *rectangle;
    } else {
        const core::dimension2d<int> size = screenSizeOf(driver);
        area = detail::makeRect(0, 0, size.Width, size.Height);
    }
    CGUIInOutFader* fader = new CGUIInOutFader(this, parent != nullptr ? parent : rootElement(), id, area);
    fader->drop();
    return fader;
}

// 0x536810 _ZN6glitch3gui15CGUIEnvironment13addTabControlERKNS_4core4rectIiEEPNS0_11IGUIElementEbbi
IGUITabControl* CGUIEnvironment::addTabControl(const core::rect<int>& rectangle, IGUIElement* parent, bool fillbackground, bool border, int id) {
    CGUITabControl* tabControl = new CGUITabControl(this, parent != nullptr ? parent : rootElement(), rectangle, fillbackground, border, id);
    tabControl->drop();
    return tabControl;
}

// 0x5367ac _ZN6glitch3gui15CGUIEnvironment6addTabERKNS_4core4rectIiEEPNS0_11IGUIElementEi
IGUITab* CGUIEnvironment::addTab(const core::rect<int>& rectangle, IGUIElement* parent, int id) {
    CGUITab* tab = new CGUITab(-1, this, parent != nullptr ? parent : rootElement(), rectangle, id);
    tab->drop();
    return tab;
}

// 0x536724 _ZN6glitch3gui15CGUIEnvironment14addContextMenuERKNS_4core4rectIiEEPNS0_11IGUIElementEi
IGUIContextMenu* CGUIEnvironment::addContextMenu(const core::rect<int>& rectangle, IGUIElement* parent, int id) {
    CGUIContextMenu* menu = new CGUIContextMenu(this, parent != nullptr ? parent : rootElement(), id, rectangle, true, true);
    menu->drop();
    return menu;
}

// 0x53669c _ZN6glitch3gui15CGUIEnvironment7addMenuEPNS0_11IGUIElementEi
IGUIContextMenu* CGUIEnvironment::addMenu(IGUIElement* parent, int id) {
    if (parent == nullptr) {
        parent = rootElement();
    }
    const core::rect<int> area = detail::makeRect(0, 0, parent->absoluteRect.LowerRightCorner.X - parent->absoluteRect.UpperLeftCorner.X,
                                                  parent->absoluteRect.LowerRightCorner.Y - parent->absoluteRect.UpperLeftCorner.Y);
    CGUIMenu* menu = new CGUIMenu(this, parent, id, area);
    menu->drop();
    return menu;
}

// 0x536628 _ZN6glitch3gui15CGUIEnvironment10addToolBarEPNS0_11IGUIElementEi
IGUIToolBar* CGUIEnvironment::addToolBar(IGUIElement* parent, int id) {
    CGUIToolBar* toolBar = new CGUIToolBar(this, parent != nullptr ? parent : rootElement(), id, detail::makeRect(0, 0, 10, 10));
    toolBar->drop();
    return toolBar;
}

// 0x5364f4 _ZN6glitch3gui15CGUIEnvironment11addComboBoxERKNS_4core4rectIiEEPNS0_11IGUIElementEi
IGUIComboBox* CGUIEnvironment::addComboBox(const core::rect<int>& rectangle, IGUIElement* parent, int id) {
    CGUIComboBox* comboBox = new CGUIComboBox(this, parent != nullptr ? parent : rootElement(), id, rectangle);
    comboBox->drop();
    return comboBox;
}

// 0x536f78 _ZN6glitch3gui15CGUIEnvironment8addTableERKNS_4core4rectIiEEPNS0_11IGUIElementEib
IGUITable* CGUIEnvironment::addTable(const core::rect<int>& rectangle, IGUIElement* parent, int id, bool drawBackground) {
    CGUITable* table = new CGUITable(this, parent != nullptr ? parent : rootElement(), id, rectangle, true, drawBackground, false);
    table->drop();
    return table;
}

// 0x5374f4 _ZN6glitch3gui15CGUIEnvironment19updateHoveredElementENS_4core10position2dIiEE
void CGUIEnvironment::updateHoveredElement(core::position2d<int> mousePos) {
    lastHoveredMousePos = mousePos;
    IGUIElement* lastHovered = hovered;
    hovered = rootElement()->getElementFromPoint(mousePos);
    if (hovered != nullptr) {
        const std::uint32_t now = os::Timer::getTime();
        if (hovered != rootElement()) {
            grabElement(hovered);
        }
        if (lastHovered != hovered) {
            SEvent event;
            event.EventType = EET_GUI_EVENT;
            if (lastHovered != nullptr) {
                event.GUIEvent.Caller = lastHovered;
                event.GUIEvent.EventType = EGET_ELEMENT_LEFT;
                lastHovered->onEvent(event);
            }
            if (toolTip.element != nullptr) {
                toolTip.element->remove();  // K 0x1c
                toolTip.element->drop();
                toolTip.element = nullptr;
                toolTip.lastTime += 500;
            } else if (toolTip.lastTime <= now - toolTip.lastTime) {
                toolTip.lastTime = now;
            } else {
                toolTip.lastTime += 500;
            }
            event.GUIEvent.Caller = hovered;
            event.GUIEvent.EventType = EGET_ELEMENT_HOVERED;
            hovered->onEvent(event);
        }
    }
    if (lastHovered != nullptr && lastHovered != rootElement()) {
        lastHovered->drop();
    }
}

// 0x537648 _ZN6glitch3gui15CGUIEnvironment7drawAllEv
void CGUIEnvironment::drawAll() {
    if (driver != nullptr) {
        const core::dimension2d<int> size = screenSizeOf(driver);
        if (absoluteRect.LowerRightCorner.X != size.Width || absoluteRect.LowerRightCorner.Y != size.Height) {
            desiredRect.LowerRightCorner.X = size.Width;
            desiredRect.LowerRightCorner.Y = size.Height;
            absoluteClippingRect = desiredRect;
            absoluteRect = desiredRect;
            updateAbsolutePosition();  // K 0x0c of the element
        }
    }
    if (toolTip.element != nullptr) {
        bringToFront(toolTip.element);  // K 0x64
    }
    IGUIElement::draw();  // K 0x20
    OnPostRender(os::Timer::getTime());
}

// 0x537b44 _ZN6glitch3gui15CGUIEnvironment14getNextElementEbb
IGUIElement* CGUIEnvironment::getNextElement(bool reverse, bool group) {
    IGUIElement* start = focus;
    if (focus != nullptr && !focus->tabGroup) {
        do {
            start = start->parent;
        } while (start != nullptr && !start->tabGroup);
    }
    int startOrder;
    if (group) {
        startOrder = start != nullptr ? start->tabOrder : -1;
        start = rootElement();
    } else {
        if (focus == nullptr || focus->tabGroup) {
            startOrder = -1;
        } else {
            startOrder = focus->tabOrder;
            if (startOrder == -1) {
                for (IGUIElement* up = focus->parent; up != nullptr && startOrder == -1; up = up->parent) {
                    startOrder = up->tabOrder;
                }
            }
        }
        if (start == nullptr) {
            start = rootElement();
        }
    }
    IGUIElement* first = nullptr;
    IGUIElement* closest = nullptr;
    start->getNextElement(startOrder, reverse, group, first, closest);
    if (closest != nullptr) {
        return closest;
    }
    if (first != nullptr) {
        return first;
    }
    return group ? rootElement() : nullptr;
}

// 0x537c5c _ZN6glitch3gui15CGUIEnvironment17postEventFromUserERKNS_6SEventE
// Mouse events update the hovered element and give the focus on a left press; they go to the focus, else to the hovered element. Key events
// handle Tab (focus change) before the focus gets them.
bool CGUIEnvironment::postEventFromUser(const SEvent& event) {
    if (event.EventType == EET_MOUSE_INPUT_EVENT) {
        updateHoveredElement(detail::makePoint(event.MouseInput.X, event.MouseInput.Y));
        if (event.MouseInput.Event == EMIE_LMOUSE_PRESSED_DOWN) {
            if ((hovered != nullptr && hovered != focus) || focus == nullptr) {
                setFocus(hovered);  // K 0x10
            }
        }
        if (focus != nullptr) {
            if (focus->onEvent(event)) {
                return true;
            }
            if (focus != nullptr) {
                return false;
            }
        }
        return hovered != nullptr ? hovered->onEvent(event) : false;
    }
    if (event.EventType == EET_KEY_INPUT_EVENT) {
        if (event.KeyInput.PressedDown && event.KeyInput.Key == KEY_TAB) {
            IGUIElement* next = getNextElement(event.KeyInput.Shift, event.KeyInput.Control);
            if (next != nullptr && next != focus) {
                if (setFocus(next)) {
                    return true;
                }
            }
        }
        return focus != nullptr ? focus->onEvent(event) : false;
    }
    return false;
}

// 0x537e7c _ZN6glitch3gui15CGUIEnvironment12OnPostRenderEj
// After the launch time a hovered element with a tool tip text gets a static text with it, above the mouse (kept inside the screen).
void CGUIEnvironment::OnPostRender(std::uint32_t timeMs) {
    if (timeMs - toolTip.lastTime >= toolTip.launchTime) {
        IGUIElement* target = hovered;
        if (target != nullptr && target != rootElement() && toolTip.element == nullptr) {
            const std::wstring& tipText = target->getToolTipText();  // K 0x50
            IGUISkin* skin = getSkin();
            if (!tipText.empty() && skin != nullptr && skin->getFont(EGDF_TOOLTIP) != nullptr) {
                IGUIFont* font = skin->getFont(EGDF_TOOLTIP);
                const core::dimension2d<int> dimension = font->getDimension(tipText.c_str());  // K 0x1c
                const int width = dimension.Width + 2 * skin->getSize(EGDS_TEXT_DISTANCE_X);
                const int height = dimension.Height + 2 * skin->getSize(EGDS_TEXT_DISTANCE_Y);
                core::rect<int> area;
                area.UpperLeftCorner = lastHoveredMousePos;
                area.LowerRightCorner.X = area.UpperLeftCorner.X + width;
                area.UpperLeftCorner.Y = area.UpperLeftCorner.Y - height - 1;
                area.LowerRightCorner.Y = area.UpperLeftCorner.Y + height - 1;
                // rect<int>::constrainTo(absoluteRect)
                {
                    const int areaWidth = area.LowerRightCorner.X - area.UpperLeftCorner.X;
                    const int areaHeight = area.LowerRightCorner.Y - area.UpperLeftCorner.Y;
                    if (areaWidth <= absoluteRect.LowerRightCorner.X - absoluteRect.UpperLeftCorner.X &&
                        areaHeight <= absoluteRect.LowerRightCorner.Y - absoluteRect.UpperLeftCorner.Y) {
                        if (area.UpperLeftCorner.X < absoluteRect.UpperLeftCorner.X) {
                            area.UpperLeftCorner.X = absoluteRect.UpperLeftCorner.X;
                            area.LowerRightCorner.X = area.UpperLeftCorner.X + areaWidth;
                        }
                        if (area.LowerRightCorner.X > absoluteRect.LowerRightCorner.X) {
                            area.LowerRightCorner.X = absoluteRect.LowerRightCorner.X;
                            area.UpperLeftCorner.X = area.LowerRightCorner.X - areaWidth;
                        }
                        if (area.UpperLeftCorner.Y < absoluteRect.UpperLeftCorner.Y) {
                            area.UpperLeftCorner.Y = absoluteRect.UpperLeftCorner.Y;
                            area.LowerRightCorner.Y = area.UpperLeftCorner.Y + areaHeight;
                        }
                        if (area.LowerRightCorner.Y > absoluteRect.LowerRightCorner.Y) {
                            area.LowerRightCorner.Y = absoluteRect.LowerRightCorner.Y;
                            area.UpperLeftCorner.Y = area.LowerRightCorner.Y - areaHeight;
                        }
                    }
                }
                IGUIStaticText* element = addStaticText(tipText.c_str(), area, true, true, rootElement(), -1, true);  // K 0xa8
                toolTip.element = element;
                element->setOverrideColor(skin->getColor(EGDC_TOOLTIP));                      // K 0x84
                element->setBackgroundColor(skin->getColor(EGDC_TOOLTIP_BACKGROUND));         // K 0x94
                element->setOverrideFont(skin->getFont(EGDF_TOOLTIP));                        // K 0x7c
                element->setSubElement(true);                                                 // K 0x38
                grabElement(element);
                const int textHeight = element->getTextHeight();  // K 0xac
                core::rect<int> relative = element->getRelativePosition();
                relative.LowerRightCorner.Y = relative.UpperLeftCorner.Y + textHeight;
                element->setRelativePosition(relative);
            }
        }
    }
    IGUIElement::OnPostRender(timeMs);
}

}  // namespace glitch::gui
