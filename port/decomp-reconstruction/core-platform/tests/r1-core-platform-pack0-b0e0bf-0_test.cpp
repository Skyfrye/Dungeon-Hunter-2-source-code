// Checks for batch r1-core-platform-pack0-b0e0bf-0:
//   TouchScreenWin32::onEvent (mouse press, move, release state machine),
//   TouchScreenPS3 reached through its glitch::IEventReceiver base (the secondary vptr),
//   PerfCounters::GetEntry (creates a missing entry once; the history holds one sample per
//   Update call made while the switch is on).
#include "core-platform/deps/debug_switches.hpp"
#include "core-platform/perf_counters.hpp"
#include "core-platform/touch_screen_ps3.hpp"
#include "core-platform/touch_screen_win32.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
// A mouse event (type 1) with the given mouse event code and position.
glitch::SEvent MouseEvent(int code, int x, int y) {
    glitch::SEvent ev{};
    ev.EventType = glitch::EET_MOUSE_INPUT_EVENT;
    ev.MouseInput.X = x;
    ev.MouseInput.Y = y;
    ev.MouseInput.Event = code;
    return ev;
}
}  // namespace

int main() {
    // TouchScreenWin32: a move before a press is not consumed; press, move and release are.
    {
        TouchScreenWin32 win(640, 480);
        CHECK(!win.onEvent(MouseEvent(6, 1, 1)));
        CHECK(win.onEvent(MouseEvent(0, 10, 20)));   // begin
        CHECK(win.onEvent(MouseEvent(6, 15, 25)));   // move while held
        CHECK(win.onEvent(MouseEvent(3, 15, 25)));   // end
        CHECK(!win.onEvent(MouseEvent(6, 16, 26)));  // move after release
        CHECK(!win.onEvent(MouseEvent(5, 0, 0)));    // unknown mouse code
    }

    // A non-mouse event type is never consumed.
    {
        TouchScreenWin32 win(640, 480);
        glitch::SEvent ev = MouseEvent(0, 1, 1);
        ev.EventType = glitch::EET_KEY_INPUT_EVENT;
        CHECK(!win.onEvent(ev));
    }

    // TouchScreenPS3 through its glitch::IEventReceiver base. Its isDown state is separate
    // from TouchScreenWin32's.
    {
        TouchScreenPS3 pad;
        glitch::IEventReceiver* receiver = &pad;
        CHECK(!receiver->onEvent(MouseEvent(6, 5, 6)));
        CHECK(receiver->onEvent(MouseEvent(0, 5, 6)));
        CHECK(receiver->onEvent(MouseEvent(6, 7, 8)));
        CHECK(receiver->onEvent(MouseEvent(3, 7, 8)));
        CHECK(!receiver->onEvent(MouseEvent(6, 7, 8)));
    }

    // PerfCounters::GetEntry: the same name gives the same entry; a new entry gets a history
    // with one zero per Update call made so far.
    DebugSwitches::s_inst.SetSwitch("EnablePerfCounters", true);
    {
        PerfCounters pc;
        PerfCounters::CounterEntry* first = pc.GetEntry("cpu");
        CHECK(first != nullptr);
        CHECK(first == pc.GetEntry("cpu"));
        CHECK(first->name_ == "cpu");
        CHECK(first->history_.empty());
        pc.Update(0.5f);
        pc.Update(0.5f);
        CHECK(pc.GetEntry("cpu")->history_.size() == 2);
        PerfCounters::CounterEntry* late = pc.GetEntry("gpu");
        CHECK(late != first);
        CHECK(late->name_ == "gpu");
        CHECK(late->history_.size() == 2);
    }

    if (failures == 0) {
        std::printf("r1-core-platform-pack0-b0e0bf-0 test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
