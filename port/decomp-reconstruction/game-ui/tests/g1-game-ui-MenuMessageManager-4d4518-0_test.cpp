// Test for batch g1-game-ui-MenuMessageManager-4d4518-0.
//
// Covers the DialogMsg instance of MenuMessageManager<T, N>: the virtual destructor (the queue is released when the
// manager is deleted through its base pointer), FlushEnqueuedMessages (pops every queued message, and is a no-op on an
// empty queue) and GetNextEnqueuedMessage (copies the front message, leaves it queued, returns false on an empty queue).
// The DialogMsg source is linked as well, so its copy constructor, copy assignment and destructor are the real ones. The
// game code it calls is defined elsewhere in the full build, so this test defines small stand-ins for it, as the
// DialogMsg test does: ParsePlayerName wraps its input in brackets, getString returns a fixed text, and the DialogActors
// table is empty. The stand-ins are not the real bodies.

#include <cstdint>
#include <cstdio>
#include <string>

#include "core-platform/w7_global_rem.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/item_instance.hpp"
#include "pydata-accessors/w7_arrays27.hpp"

// Stand-ins for the game code DialogMsg.cpp and this batch's instantiation call.
std::string ParsePlayerName(const std::string& name) { return "<" + name + ">"; }

const char* StringManager::getString(int) const { return "MISSING"; }

namespace {

// Raw storage for the StringManager the stand-in returns. getString does not read it, so it is never constructed.
alignas(StringManager) unsigned char g_fakeStringManager[sizeof(StringManager)];

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

// A DialogMsg with no actor, built from the two strings. The title is the std::string base.
DialogMsg Make(const char* title, const char* text, int style) {
    return DialogMsg(std::string(title), std::string(text), style, -1);
}

}  // namespace

// The DialogActors table is read only by SetActorName, which the tests above never reach with an actor index. The
// pointer is left empty.
StringManager* ApplicationGetStringManager() {
    return reinterpret_cast<StringManager*>(g_fakeStringManager);
}

std::uint8_t* Arrays::DialogActors::members = nullptr;

int main() {
    // Destructor. A heap-allocated manager with two queued messages is deleted through its base pointer. The virtual
    // destructor releases the queue; the test passes when this returns without a fault.
    {
        MenuMessageManager<DialogMsg, 1>* mgr = new MenuMessageManager<DialogMsg, 1>();
        mgr->m_queues[0].push_back(Make("A", "text a", 1));
        mgr->m_queues[0].push_back(Make("B", "text b", 2));
        MenuMessageManager<DialogMsg, 1>* base = mgr;
        delete base;
    }

    // FlushEnqueuedMessages. Forty messages span more than one deque node, so the pops cross a node boundary.
    {
        MenuMessageManager<DialogMsg, 1> mgr;
        for (int i = 0; i < 40; ++i) {
            mgr.m_queues[0].push_back(Make("T", "x", i));
        }
        EXPECT(mgr.m_queues[0].size() == 40);
        mgr.FlushEnqueuedMessages(0);
        EXPECT(mgr.m_queues[0].empty());
        mgr.FlushEnqueuedMessages(0);  // empty queue: no effect
        EXPECT(mgr.m_queues[0].empty());
    }

    // GetNextEnqueuedMessage. On an empty queue it returns false and leaves the message alone.
    {
        MenuMessageManager<DialogMsg, 1> mgr;
        DialogMsg out = Make("old", "old text", 5);
        EXPECT(!mgr.GetNextEnqueuedMessage(out, 0));
        const std::string& title = out;
        EXPECT(title == "<old>");
        EXPECT(out.m_style == 5);
    }

    // With two queued messages it copies the front one (style, text and title) and keeps it queued. A second call
    // returns the same front message, because nothing is popped.
    {
        MenuMessageManager<DialogMsg, 1> mgr;
        mgr.m_queues[0].push_back(Make("A", "text a", 7));
        mgr.m_queues[0].push_back(Make("B", "text b", 8));
        DialogMsg out = Make("old", "old text", 5);

        EXPECT(mgr.GetNextEnqueuedMessage(out, 0));
        const std::string& title = out;
        EXPECT(title == "<A>");
        EXPECT(out.m_text == "<text a>");
        EXPECT(out.m_style == 7);
        EXPECT(mgr.m_queues[0].size() == 2);

        EXPECT(mgr.GetNextEnqueuedMessage(out, 0));
        EXPECT(out.m_style == 7);
        EXPECT(mgr.m_queues[0].size() == 2);

        // The queued front is still the source: flushing it and asking again gives false.
        mgr.FlushEnqueuedMessages(0);
        EXPECT(!mgr.GetNextEnqueuedMessage(out, 0));
    }

    if (g_failures == 0) {
        std::printf("all MenuMessageManager<DialogMsg,1> checks passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
