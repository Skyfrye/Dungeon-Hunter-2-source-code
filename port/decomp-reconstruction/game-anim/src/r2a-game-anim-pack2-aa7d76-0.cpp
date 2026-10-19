// Batch r2a-game-anim-pack2-aa7d76-0 (redo pass): the v2Controller base constructor.
//
// No ELF symbol. The original has no standalone v2Controller constructor. Each derived constructor writes the v2Controller
// fields inline and then runs ASSERT(controllable): v2EmuController (0x4065ac, 0x4066cc), v2GamepadController (0x406978,
// 0x406a64), v2HudController (0x408930, 0x408a04), v2MixedController (0x408dd8, 0x408ecc) and v2NetController (0x4091f4,
// 0x4092c8). This body is defined once here, so the derived constructors name it in their initializer lists and the
// assert runs once per construction, as it does in the original.
//
// Stores, at the original 32-bit offsets: +0x04 m_controllable, +0x08 m_blocked = 0, +0x09 unk_009 = 0, +0x0a unk_00a = 0,
// +0x0c m_character = 0. The vptr is compiler-managed. A null controllable runs the assert: gAssertLevel 2 stops the
// program (the original stores 0 to address 0), gAssertLevel 1 prints the message and continues (v2Controller.h:68).

#include <cstdio>
#include <cstdlib>

#include "dh2/v2Controller.hpp"

// Engine assert level, defined in core-platform/src/memory.cpp.
extern int gAssertLevel;

v2Controller::v2Controller(v2Controllable* controllable)
    : m_controllable(controllable), m_blocked(false), unk_009(false), unk_00a(false), m_character(nullptr) {
    if (controllable == nullptr) {
        if (gAssertLevel == 2) {
            // The original stores 0 to address 0 to force a crash.
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "controllable",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h", 68);
        }
    }
}
