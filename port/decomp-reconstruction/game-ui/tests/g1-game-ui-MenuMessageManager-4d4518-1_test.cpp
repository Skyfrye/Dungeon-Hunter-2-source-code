// Checks the DialogMsg queue bodies of batch g1-game-ui-MenuMessageManager-4d4518-1 that run without the engine:
// EnqueueMessage (flag true and false) and SkipEnqueuedMessage. Their callbacks go through Invoke, which reaches the
// engine only through MenuManager::GetInstance and MenuManager::GetHUDRoot. The test defines those two so that the root
// is null (Invoke returns at once) and every Invoke entry is counted through GetInstance. The DialogMsg members the
// bodies use and the message destructor are defined here too, because the DialogMsg source is not linked.
#include <cstdio>
#include <deque>
#include <string>

#include "dh2/DialogMsg.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"

namespace {
int g_invokeEntries = 0;  // every Invoke call enters MenuManager::GetInstance first
}

// Test-only definitions of the engine parts the bodies reach.
MenuManager* MenuManager::GetInstance() {
    ++g_invokeEntries;
    return nullptr;
}

MenuFX* MenuManager::GetHUDRoot() {
    return nullptr;  // the stub ignores this, so the null instance is never dereferenced
}

DialogMsg::DialogMsg(const std::string& title, const std::string& text, int style, int actorIndex)
    : std::string(title), m_text(text), m_style(style) {
    (void)actorIndex;
}

DialogMsg::DialogMsg(const DialogMsg& other)
    : std::string(other), m_text(other.m_text), m_style(other.m_style), m_actorName(other.m_actorName) {}

DialogMsg::~DialogMsg() {}

const char* DialogMsg::s_StartFuncName[1] = {"StartDialog"};
const char* DialogMsg::s_SkipFuncName = nullptr;

// The queue's destructor is part 1's; the test defines its own empty one so that a local queue object can be made.
template <>
MenuMessageManager<DialogMsg, 1>::~MenuMessageManager() {}

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL %s\n", what);
        ++g_failures;
    }
}

bool FrontIs(const std::deque<DialogMsg>& queue, const char* title) {
    return !queue.empty() && static_cast<const std::string&>(queue.front()) == title;
}

}  // namespace

int main() {
    MenuMessageManager<DialogMsg, 1> manager;
    std::deque<DialogMsg>& queue = manager.m_queues[0];

    // Enqueue A with the flag set on an empty queue: the queue holds one message, so the start callback is entered once.
    manager.EnqueueMessage(DialogMsg("A", "a-text", 0, -1), 0, true);
    Check(queue.size() == 1, "size after the first enqueue");
    Check(FrontIs(queue, "A"), "front after the first enqueue");
    Check(g_invokeEntries == 1, "start callback after the first enqueue");

    // Enqueue B with the flag set: the queue holds two, so no callback.
    manager.EnqueueMessage(DialogMsg("B", "b-text", 0, -1), 0, true);
    Check(queue.size() == 2, "size after the second enqueue");
    Check(g_invokeEntries == 1, "no callback when the queue already held a message");

    // Enqueue C with the flag clear: appended, no callback.
    manager.EnqueueMessage(DialogMsg("C", "c-text", 0, -1), 0, false);
    Check(queue.size() == 3, "size after the flag-clear enqueue");
    Check(g_invokeEntries == 1, "flag clear makes no callback");

    // Skip with no skip name set: pops A, then the queue still holds messages, so the start callback is entered.
    manager.SkipEnqueuedMessage(0, true);
    Check(queue.size() == 2, "size after the first skip");
    Check(FrontIs(queue, "B"), "front after the first skip");
    Check(g_invokeEntries == 2, "start callback after the first skip");

    // Skip with a skip name set: pops B, enters the skip callback, then the start callback (C is still queued).
    DialogMsg::s_SkipFuncName = "SkipDialog";
    manager.SkipEnqueuedMessage(0, true);
    Check(queue.size() == 1, "size after the second skip");
    Check(FrontIs(queue, "C"), "front after the second skip");
    Check(g_invokeEntries == 4, "skip and start callbacks after the second skip");

    // Skip the last message: pops C, enters the skip callback, and no start callback since the queue is empty.
    manager.SkipEnqueuedMessage(0, true);
    Check(queue.empty(), "queue empty after the third skip");
    Check(g_invokeEntries == 5, "skip callback only after the third skip");

    // Skip on an empty queue changes nothing and enters no callback.
    manager.SkipEnqueuedMessage(0, true);
    Check(queue.empty(), "empty queue stays empty");
    Check(g_invokeEntries == 5, "no callback on an empty queue");

    // Enqueue D with the flag set on the empty queue again: one message, so the start callback is entered.
    DialogMsg::s_SkipFuncName = nullptr;
    manager.EnqueueMessage(DialogMsg("D", "d-text", 0, -1), 0, true);
    Check(queue.size() == 1 && FrontIs(queue, "D"), "D queued after the queue emptied");
    Check(g_invokeEntries == 6, "start callback for D");

    if (g_failures == 0) {
        std::printf("MenuMessageManager DialogMsg queue: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
