// Engine unification wave u1-core: the canonical glitch::SEvent / glitch::IEventReceiver
// (os/event_receiver.hpp), the counting boost::intrusive_ptr additions, glitch::ILogger as a reference counted
// interface, and the game's IEvent family (dh2/IEvent.hpp, EvAcceleration, EvTouchScreenMove, EvTouchScreenPress).
#include <cstdarg>
#include <cstdio>
#include <string>
#include <type_traits>

#include "dh2/EvAcceleration.hpp"
#include "dh2/EvTouchScreenMove.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/IEvent.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/os/event_receiver.hpp"
#include "glitch-core-io/os/logging.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// A receiver the way TouchScreenWin32 uses the interface: onEvent is the slot at +0x08 and the result means
// "consumed".
struct MouseCounter : glitch::IEventReceiver {
    int moves = 0;
    int downs = 0;
    bool onEvent(const glitch::SEvent& event) override {
        if (event.EventType != glitch::EET_MOUSE_INPUT_EVENT) return false;
        if (event.MouseInput.Event == glitch::EMIE_MOUSE_MOVED) ++moves;
        if (event.MouseInput.Event == glitch::EMIE_LMOUSE_PRESSED_DOWN) ++downs;
        return true;
    }
};

struct Counted : glitch::IReferenceCounted {
    static int alive;
    Counted() { ++alive; }
    ~Counted() override { --alive; }
};
int Counted::alive = 0;

struct Capture : glitch::ILogger {
    glitch::ELOG_LEVEL level = glitch::ELL_ERROR;
    std::string text;
    glitch::ELOG_LEVEL getLogLevel() const override { return level; }
    void setLogLevel(glitch::ELOG_LEVEL l) override { level = l; }
    void log(const char*, glitch::ELOG_LEVEL) override {}
    void log(const char*, const char*, glitch::ELOG_LEVEL) override {}
    void log(const wchar_t*, const wchar_t*, glitch::ELOG_LEVEL) override {}
    void log(const wchar_t*, glitch::ELOG_LEVEL) override {}
    void vlogf(glitch::ELOG_LEVEL l, const char* format, std::va_list args) override {
        char buffer[128];
        std::vsnprintf(buffer, sizeof buffer, format, args);
        level = l;
        text = buffer;
    }
};

}  // namespace

int main() {
    // SEvent: the type and the mouse payload (the words TouchScreenWin32::onEvent reads at +0x00, +0x08, +0x0c, +0x14).
    {
        glitch::SEvent event;
        event.EventType = glitch::EET_MOUSE_INPUT_EVENT;
        event.MouseInput = {12, 34, 0.f, glitch::EMIE_LMOUSE_PRESSED_DOWN};
        MouseCounter receiver;
        CHECK(receiver.onEvent(event));
        event.MouseInput.Event = glitch::EMIE_MOUSE_MOVED;
        CHECK(receiver.onEvent(event));
        CHECK(receiver.downs == 1 && receiver.moves == 1);
        event.EventType = glitch::EET_KEY_INPUT_EVENT;
        event.KeyInput = {0, 17, true, false, true};
        CHECK(!receiver.onEvent(event));
        CHECK(event.KeyInput.Key == 17 && event.KeyInput.PressedDown);
        // The three payload views start at the same place (+0x08) and share the first words.
        CHECK(sizeof(glitch::SEvent::SMouseInput) == 16);
        CHECK(glitch::EET_GUI_EVENT == 0 && glitch::EET_MOUSE_INPUT_EVENT == 1 && glitch::EET_KEY_INPUT_EVENT == 2);
        CHECK(glitch::EMIE_MOUSE_MOVED == 6 && glitch::EMIE_MOUSE_WHEEL == 7);
        // A default event is zeroed.
        glitch::SEvent blank;
        CHECK(blank.EventType == 0 && blank.GUIEvent.Caller == nullptr);
    }

    // intrusive_ptr: nullptr, add_ref flag, comparison with raw pointers, reset, swap, detach.
    {
        boost::intrusive_ptr<Counted> none = nullptr;
        CHECK(!none && none == nullptr && !(none != nullptr));
        Counted* raw = new Counted();
        {
            boost::intrusive_ptr<Counted> owner(raw);              // takes the reference: count stays 1
            CHECK(raw->referenceCounter == 1 && owner == raw && raw == owner);
            boost::intrusive_ptr<Counted> second(raw, true);       // boost's add_ref form: count 2
            CHECK(raw->referenceCounter == 2 && second == owner);
            boost::intrusive_ptr<Counted> third(raw, false);       // no add_ref: the caller's reference
            third.detach();                                        // gives it up without a drop
            CHECK(raw->referenceCounter == 2);
            second.reset();
            CHECK(raw->referenceCounter == 1);
            boost::intrusive_ptr<Counted> other(new Counted());
            owner.swap(other);
            CHECK(other.get() == raw && owner.get() != raw);
            CHECK(Counted::alive == 2);
        }
        CHECK(Counted::alive == 0);
    }

    // ILogger is an IReferenceCounted; logf forwards the level, the format and the variadic area to slot +0x24.
    {
        Capture* logger = new Capture();
        CHECK(logger->referenceCounter == 1);
        logger->logf(glitch::ELL_WARNING, "%s=%d", "n", 7);
        CHECK(logger->level == glitch::ELL_WARNING && logger->text == "n=7");
        glitch::os::ILogger* os = logger;  // the glitch::os spelling still names the same class
        CHECK(os == static_cast<glitch::ILogger*>(logger));
        static_assert(std::is_same<glitch::os::ELOG_LEVEL, glitch::ELOG_LEVEL>::value, "one enum");
        CHECK(logger->drop());
    }

    // The IEvent family: id at +0x04 (getEventID is the slot at +0x08), set by each derived class.
    {
        IEvent* press = new EvTouchScreenPress(10, 20, 3, true);
        IEvent* move = new EvTouchScreenMove(-1, 2, 7);
        EvAcceleration accel(0.5f, 1.5f, -2.f);
        CHECK(press->getEventID() == 4 && move->getEventID() == 5 && accel.getEventID() == 6);
        CHECK(static_cast<EvTouchScreenPress*>(press)->pressed && static_cast<EvTouchScreenPress*>(press)->id == 3);
        CHECK(static_cast<EvTouchScreenMove*>(move)->x == -1 && static_cast<EvTouchScreenMove*>(move)->id == 7);
        CHECK(accel.z == -2.f);
        delete press;
        delete move;
    }

    if (failures == 0) std::printf("u1_core_events_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
