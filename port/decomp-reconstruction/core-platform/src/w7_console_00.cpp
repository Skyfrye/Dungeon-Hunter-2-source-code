#include "core-platform/w7_console_00.hpp"

#include <cstdint>
#include <string>
#include <vector>

#include "core-platform/filesystem_win32.hpp"
#include "core-platform/w7_console_01.hpp"
#include "dh2/Application.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/gui/CGUIListBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIStaticText.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/video_driver.hpp"

// The console's device: Singleton<Application>::s_inst +0x10, the ELF global dword_99F73C.
glitch::IDevice* ConsoleDevice() {
    return ApplicationGetInstance().m_device;
}

// dword_99F740: the word at Singleton<Application>::s_inst +0x14 (Application::m_eventManager).
EventManager* ConsoleEventManager() {
    return ApplicationGetInstance().m_eventManager;
}

// 0x32fdc0 _ZN7Console12_destroyListEv
// Verified against the listing: the object at Console+0x40 is the list box (IGUIListBox::clear at
// K 0x98, then IGUIElement::remove at K 0x1c), the object at +0x44 is the title bar
// (IGUIElement::remove at K 0x1c); each slot is cleared when it was non-null. The slot identities
// come from the CGUIListBox / CGUIStaticText vtable listings (K = the vptr byte offset).
// LAYOUT REQUEST (glitch-core-io/os/device.hpp): IDevice +0x18 is the gui environment.
void Console::_destroyList() {
    if (menu_ != nullptr) {
        menu_->clear();
        menu_->remove();
        menu_ = nullptr;
    }
    if (menu_title_ != nullptr) {
        menu_title_->remove();
        menu_title_ = nullptr;
    }
}

// 0x32fe28 _ZN7Console11_createListERSt6vectorISsSaISsEEPc
// Verified against the listing, call by call: _destroyList; the gui environment at IDevice +0x18
// (proved by the chain below, which only fits glitch::gui::IGUIEnvironment: K 0x38 getSkin, K 0x28
// IGUISkin::getFont, K 0x20 IGUIFont::getDimension(char const*), K 0x10/0x14 IGUISkin::getColor/
// setColor); addStaticText (K 0xa8) with (10, 20, width + 14, height + 28); setTextAlignment (K 0xa0,
// 2,2); setOverrideColor (K 0x84, 0xFF00FF00); setBackgroundColor (K 0x94, 0xFF000000); the last
// render target of IVideoDriver::m_renderTargets (driver +0xcc, the element before the end) capped at
// 640x480; addListBox (K 0x98) at (50, getTextHeight (K 0xac) + 24, width - 115, height - 30);
// setAutoScrollEnabled (K 0xa4, true); the one-shot setBGAlpha block (the ELF static at 0x99fcc0)
// that raises IGUISkin::getColor(EGDC_3D_HIGH_LIGHT)'s alpha by 50 and stores it back; one addItem
// (K 0x84) per input string; setSelected (K 0xa0, -1). The vector is a std::vector<std::string>: the
// listing's stride is 24 bytes with the element's character pointer read at +0x14, which is the
// STLport string layout this binary uses (Globals: c_str() there is +0x14, not host-offset 0).
// LAYOUT REQUEST (glitch-core-io/os/device.hpp): IDevice +0x18 is the gui environment, declared
// there only as `void* unk_18`; the cast in the body is that member.
// DEVIATIONS (all host-necessitated): (1) the two wide buffers the listing hands to addStaticText
// (frame +0x1024, 1024 bytes) and addItem (frame +0x24, 4096 bytes) are never written by the
// function - every STR/STRB in it targets the rectangle, colour and flag slots, and its sibling
// Console::_addToList has the same shape (the static wchar_t buffer at 0x99fcc4 has one reference
// and no store) - so they are zero-initialised here; the original's uninitialised stack contents are
// not reproducible. (2) null guards on the device, the gui environment and the driver/render-target
// stack, where the original dereferences without a test.
void Console::_createList(std::vector<std::string>& items, char* title) {
    static bool setBGAlpha = false;

    _destroyList();

    glitch::IDevice* device = ConsoleDevice();
    if (device == nullptr) {
        return;
    }
    glitch::gui::IGUIEnvironment* gui = device->guiEnvironment;  // +0x18, typed in device.hpp now
    if (gui == nullptr) {
        return;
    }

    wchar_t titleText[512] = {};
    wchar_t itemText[2048] = {};

    glitch::gui::IGUISkin* skin = gui->getSkin();
    glitch::gui::IGUIFont* font = skin->getFont(glitch::gui::EGDF_DEFAULT);
    const glitch::core::dimension2d<int> titleSize = font->getDimension(title);

    glitch::gui::IGUIStaticText* titleBar = gui->addStaticText(
        titleText,
        glitch::gui::detail::makeRect(10, 20, titleSize.Width + 14, titleSize.Height + 28),
        false, false, nullptr, 0, true);
    menu_title_ = titleBar;
    titleBar->setTextAlignment(glitch::gui::EGUIA_CENTER, glitch::gui::EGUIA_CENTER);
    glitch::video::SColor overrideColor;
    overrideColor.color = 0xFF00FF00u;
    titleBar->setOverrideColor(overrideColor);
    glitch::video::SColor backgroundColor;
    backgroundColor.color = 0xFF000000u;
    titleBar->setBackgroundColor(backgroundColor);

    int width = 0;
    int height = 0;
    if (glitch::video::IVideoDriver* driver = device->videoDriver) {
        if (!driver->m_renderTargets.empty()) {
            const glitch::video::IRenderTarget* target = driver->m_renderTargets.back().get();
            width = target->m_width;
            height = target->m_height;
        }
    }
    if (width >= 640) {
        width = 640;
    }
    if (height >= 480) {
        height = 480;
    }

    glitch::gui::IGUIListBox* list = gui->addListBox(
        glitch::gui::detail::makeRect(50, titleBar->getTextHeight() + 24, width - 115, height - 30),
        nullptr, 0, true);
    menu_ = list;
    list->setAutoScrollEnabled(true);

    if (!setBGAlpha) {
        setBGAlpha = true;
        glitch::video::SColor highlight = gui->getSkin()->getColor(glitch::gui::EGDC_3D_HIGH_LIGHT);
        highlight.setComponent(3, static_cast<std::uint8_t>(highlight.component(3) + 50));
        gui->getSkin()->setColor(glitch::gui::EGDC_3D_HIGH_LIGHT, highlight);
    }

    const std::size_t count = items.size();
    for (std::size_t i = 0; i != count; ++i) {
        list->addItem(itemText);
    }
    list->setSelected(-1);
}

// 0x3301c4 _ZN7Console17_setMenuLevelListEv
// Body matches the listing: _createList over the vector at Console+0x10 with the title "LEVELS".
// _createList is defined above, so the call binds.
void Console::_setMenuLevelList() {
    _createList(lists_[0], const_cast<char*>("LEVELS"));
}

// 0x3301d8 _ZN7Console15_setMenuCamerasEv
// Body is a bare return in the listing.
void Console::_setMenuCameras() {}

// 0x3301dc _ZN7Console25_setMenuLoadQuestProgressEv
// Body matches the listing: _createList over the vector at Console+0x34 with the title
// "Load Quest Progress".
void Console::_setMenuLoadQuestProgress() {
    _createList(lists_[3], const_cast<char*>("Load Quest Progress"));
}

// 0x33026c _ZN7Console24SetShowRoomDisplayedAnimEi
// Body is a bare return in the listing; the argument is unused.
void Console::SetShowRoomDisplayedAnim(int) {}
