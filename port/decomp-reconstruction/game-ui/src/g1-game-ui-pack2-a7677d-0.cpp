// Dropable, FSCommandParam and FlashAnimContext bodies, batch g1-game-ui-pack2-a7677d-0 (16 functions).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. The call targets of Dropable::TestDragable were
// checked against the ARM assembly (tools/decomp_asm.py). Offsets in comments are the original 32-bit ARM offsets.
//
// Facts used here:
//   - Dropable::Dropable calls character->get_bound(rect*) through vtable +0x12c, the slot GameSWFUtils uses for
//     the same call. The original writes the rect straight into m_bounds (+0x10). Here it goes to a local
//     gameswf::rect, and the four floats are copied (xmin, xmax, ymin, ymax).
//   - The original constructor never writes m_intersecting (+0x08). Reading that bool before the first TestDragable
//     is undefined on the host, so the constructor sets it to false. This is the one store the binary does not make.
//   - Dropable::SendEvent passes a fourth argument (its own this, the caller's r3) that DragAndDrop::SendEvent never
//     reads. Only the three declared arguments are passed. The same holds for the calls in DragAndDrop.cpp.
//   - TestDragable's dropped branch builds a gameswf::as_value of type object. The DH2 layout is written by the
//     as_value(as_object*) constructor, which adds a reference, so the explicit add_ref of the original is that
//     constructor. The value is released with drop_refs, which also clears the pointer.
//   - At debug assert level 2 the original stores to address 0 (dword_0 = 0) to crash. The host calls std::abort,
//     as core-platform/src/memory.cpp does. At level 1 it prints the same message to stderr.
//   - FSCommandParam is a std::string. The original reads its character data at +0x14 in the 32-bit layout, which is
//     the text that c_str() returns on the host.
//   - The FSCommandParam destructors free the text buffer through the base std::string. The compiler destroys the
//     base after the empty body, as it does for DialogMsg.
//   - The helpers gameswf::character::get_bound and the RenderFX methods are virtual or declared in other headers.
//     Their bodies are not in this batch.

#include <array>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/DebugSwitches.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/Dropable.hpp"
#include "dh2/FSCommandParam.hpp"
#include "dh2/FlashAnimContext.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/RenderFX.hpp"
#include "gameswf/gameswf_character.h"
#include "vendor-gameswf/as_value.hpp"

namespace {

// The isTracingDropable switch. The original loads the debug switches and reads the switch in each branch of
// TestDragable that sends an event or the dropped clip. The bool result is discarded in every branch.
void TraceDropable() {
    DebugSwitches::s_inst.load();
    const std::string name("isTracingDropable");
    DebugSwitches::s_inst.GetSwitch(name);
}

}  // namespace

// ---- Dropable ----

// 0x411e5c _ZN8DropableC2EP6MenuFXPN7gameswf9characterE
// 0x411e88 _ZN8DropableC1EP6MenuFXPN7gameswf9characterE  (the other constructor address: identical body)
// Stores the menu (+0x00) and the character (+0x0c). Then the character writes its bounds through get_bound
// (vtable +0x12c) into m_bounds (+0x10). m_intersecting (+0x08) is set to false here, see the file comment.
Dropable::Dropable(MenuFX* menu, gameswf::character* character)
    : m_menu(menu), m_intersecting(false), m_character(character), m_bounds{} {
    gameswf::rect bounds;
    m_character->get_bound(&bounds);
    m_bounds[0] = bounds.m_x_min;
    m_bounds[1] = bounds.m_x_max;
    m_bounds[2] = bounds.m_y_min;
    m_bounds[3] = bounds.m_y_max;
}

// 0x411eb4 _ZN8DropableD2Ev
// 0x411eb8 _ZN8DropableD1Ev  (the other destructor address: identical body)
// Empty in the original (BX LR at both addresses).
Dropable::~Dropable() {}

// 0x412070 _ZN8Dropable9SendEventEi
// Forwards the event with this drop target's menu (+0x00) and character (+0x0c) to DragAndDrop::SendEvent, and
// returns that result.
int Dropable::SendEvent(int event) {
    return DragAndDrop::SendEvent(event, m_menu, m_character);
}

// 0x412098 _ZNK8Dropable14IsIntersectingEP8Dragable
// The dragable's character is at Dragable +0x08. Both absolute rects are taken before any comparison, the dragable's
// first and then this target's. The centre of the dragable rect must lie inside the target rect, edges included.
// The rects are (xmin, xmax, ymin, ymax). The original calls GameSWFUtils::GetAbsoluteBoundingRect on each character,
// which is PARTIAL in game-ui, so the real overlap needs that function finished.
bool Dropable::IsIntersecting(Dragable* dragable) const {
    if (dragable == nullptr) {
        return false;
    }
    const std::array<float, 4> drag = GameSWFUtils::GetAbsoluteBoundingRect(dragable->m_character);
    const std::array<float, 4> drop = GameSWFUtils::GetAbsoluteBoundingRect(m_character);
    const float centre_x = (drag[1] + drag[0]) * 0.5f;
    const float centre_y = (drag[3] + drag[2]) * 0.5f;
    return centre_x >= drop[0] && centre_x <= drop[1] && centre_y >= drop[2] && centre_y <= drop[3];
}

// 0x4126a0 _ZN8Dropable12TestDragableEP8Dragableb
// PARTIAL. Every branch and every call is rebuilt in the original order. The state m_intersecting (+0x08) is kept
// from the previous test. The events are: over (0) when the dragable enters, out (1) when it leaves, failed (3) when
// a drop misses, and dropped (2) when a drop hits. The notify flag selects the drop branches.
//
// The dropped branch ends with `return gameswf::as_value::drop_refs(...)`, so the original returns the r0 left by
// drop_refs. In the object case drop_refs calls ref_counted::drop_ref, which returns nothing, so that value has no
// defined meaning. The vendor header declares drop_refs void, and this function returns 0 on that path. The only
// caller in the tree, DragAndDrop::OnEvent, ignores the result.
int Dropable::TestDragable(Dragable* dragable, bool notify) {
    const bool was_intersecting = m_intersecting;  // v4: the value at +0x08 before this test
    if (dragable == nullptr) {
        // ASSERT(activeDragable != 0). Level 2 crashes (the original stores to address 0), level 1 prints.
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "activeDragable != 0",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\DragAndDrop.cpp", 209);
        }
    }

    const int result = IsIntersecting(dragable) ? 1 : 0;
    m_intersecting = result != 0;

    if (result == 0 && notify) {
        // Failed drop: the dropped clip is cleared to 0 (the int overload of SetMember), and only the dragable is told.
        TraceDropable();
        m_menu->SetMember("_root", "dropped_clip", 0);
        return dragable->SendEvent(3);
    }

    if (result != 0 && notify) {
        // Successful drop: _root.dropped_clip is set to the dragged character. The as_value holds one reference.
        TraceDropable();
        gameswf::as_value dropped(static_cast<gameswf::as_object*>(dragable->m_character));
        m_menu->SetMember("_root", "dropped_clip", dropped);
        dragable->SendEvent(2);
        SendEvent(2);
        dropped.drop_refs();
        // PARTIAL: the original returns the r0 of drop_refs here, see the function comment.
        return 0;
    }

    // Enter and leave, without a drop.
    if (was_intersecting) {
        if (result == 0) {
            TraceDropable();
            dragable->SendEvent(1);
            return SendEvent(1);
        }
    } else if (result != 0) {
        TraceDropable();
        dragable->SendEvent(0);
        return SendEvent(0);
    }
    return result;
}

// ---- FSCommandParam ----

// 0x415c98 _ZN14FSCommandParamC1EPKc
// 0x415cb8 _ZN14FSCommandParamC2EPKc  (the other constructor address: identical body)
// Copies the text into the std::string base.
FSCommandParam::FSCommandParam(const char* value) : std::string(value) {}

// 0x4159b4 _ZN14FSCommandParamD1Ev
// 0x415c54 _ZN14FSCommandParamD2Ev  (the other destructor address: identical body)
// The original frees the text buffer when it is not the inline one: the node allocator for up to 0x80 bytes and
// CustomFree above that. The std::string base releases the buffer after this empty body on the host.
FSCommandParam::~FSCommandParam() {}

// 0x4156b8 _ZN14FSCommandParam9GetStringEPKc
// Returns 1 and does not read the name (MOV R0, #1; BX LR).
int FSCommandParam::GetString(const char* name) {
    (void)name;
    return 1;
}

// 0x41577c _ZN14FSCommandParam8GetFloatEPf
// strtod of the token text, stored through the pointer as a float. Returns whether the value is not 0.0.
bool FSCommandParam::GetFloat(float* value) {
    const float parsed = static_cast<float>(std::strtod(c_str(), nullptr));
    *value = parsed;
    return parsed != 0.0f;
}

// 0x4157b4 _ZN14FSCommandParam6GetIntEPi
// atoi of the token text, stored through the pointer. Returns whether the value is not 0.
bool FSCommandParam::GetInt(int* value) {
    const int parsed = std::atoi(c_str());
    *value = parsed;
    return parsed != 0;
}

// ---- FlashAnimContext ----

// 0x413aec _ZN16FlashAnimContext7SetTextEPKc
// Copies the text into m_text (+0x20) only when its length is at most 46, so the copy and its terminator fit in 48
// bytes. Longer text leaves m_text unchanged. The original returns a char* (the destination on the copy path and the
// length on the other path). The dh2 header declares void, and FlashAnimManager::PlayScrollingCombatText ignores it.
void FlashAnimContext::SetText(const char* text) {
    if (std::strlen(text) <= 46) {
        std::strcpy(m_text, text);
    }
}

// 0x413f14 _ZN16FlashAnimContext15SetTextToNumberEi
// A negative value clears m_text[0]. The text is then formatted anyway, because the limit test is value < 2147483646
// (the limit is a static initialised once through the guard variable). snprintf with the buffer size gives the same
// output as sprintf for every int, and cannot overflow m_text.
void FlashAnimContext::SetTextToNumber(int value) {
    constexpr int kMaxNumber = 2147483646;
    if (value < 0) {
        m_text[0] = '\0';
    }
    if (value < kMaxNumber) {
        std::snprintf(m_text, sizeof(m_text), "%d", value);
    }
}
