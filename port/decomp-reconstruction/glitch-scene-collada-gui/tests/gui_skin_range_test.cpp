// The index tests of glitch::gui::CGUISkin (0x54aa24 getColor, 0x54aa64 setColor, 0x54aaa0 getSize, 0x54aab4 setSize, 0x54ab74 getIcon,
// 0x54ab88 setIcon). The binary compares the index as an unsigned word (a2 <= 0x14, a2 > 9, a2 > 0x16), so a negative index is out of range
// and a valid one is the last entry of the table (the same bounds Irrlicht 1.5.1 writes as (u32)index < COUNT).
#include "glitch-scene-collada-gui/gui/CGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"

#include <cstdio>

using namespace glitch;
using namespace glitch::gui;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CGUIEnvironment* env = new CGUIEnvironment(boost::intrusive_ptr<io::IFileSystem>(), nullptr, nullptr);
    IGUISkin* skin = env->getSkin();
    CHECK(skin != nullptr);

    // Sizes: 0 .. EGDS_TEXT_DISTANCE_Y are valid, anything else reads 0 and writes nothing.
    const EGUI_DEFAULT_SIZE lastSize = EGDS_TEXT_DISTANCE_Y;
    skin->setSize(lastSize, 77);
    CHECK(skin->getSize(lastSize) == 77);
    skin->setSize(static_cast<EGUI_DEFAULT_SIZE>(-1), 55);
    CHECK(skin->getSize(static_cast<EGUI_DEFAULT_SIZE>(-1)) == 0);
    CHECK(skin->getSize(static_cast<EGUI_DEFAULT_SIZE>(EGDS_TEXT_DISTANCE_Y + 1)) == 0);
    CHECK(skin->getSize(lastSize) == 77);

    // Colours: 0 .. EGDC_ICON_HIGH_LIGHT are valid.
    const EGUI_DEFAULT_COLOR lastColor = EGDC_ICON_HIGH_LIGHT;
    skin->setColor(lastColor, video::SColor{0x11223344u});
    CHECK(skin->getColor(lastColor).color == 0x11223344u);
    skin->setColor(static_cast<EGUI_DEFAULT_COLOR>(-1), video::SColor{0x55667788u});
    CHECK(skin->getColor(static_cast<EGUI_DEFAULT_COLOR>(-1)).color == 0u);
    CHECK(skin->getColor(static_cast<EGUI_DEFAULT_COLOR>(EGDC_ICON_HIGH_LIGHT + 1)).color == 0u);
    CHECK(skin->getColor(lastColor).color == 0x11223344u);

    // Icons: 0 .. EGDI_DIRECTORY are valid.
    const EGUI_DEFAULT_ICON lastIcon = EGDI_DIRECTORY;
    skin->setIcon(lastIcon, 123u);
    CHECK(skin->getIcon(lastIcon) == 123u);
    skin->setIcon(static_cast<EGUI_DEFAULT_ICON>(-1), 456u);
    CHECK(skin->getIcon(static_cast<EGUI_DEFAULT_ICON>(-1)) == 0u);
    CHECK(skin->getIcon(static_cast<EGUI_DEFAULT_ICON>(EGDI_DIRECTORY + 1)) == 0u);
    CHECK(skin->getIcon(lastIcon) == 123u);

    static_cast<IGUIEnvironment*>(env)->drop();
    if (failures != 0) {
        std::printf("%d failure(s)\n", failures);
        return 1;
    }
    std::printf("gui_skin_range_test: ok\n");
    return 0;
}
