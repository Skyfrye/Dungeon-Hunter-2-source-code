#include "net-session-online/c_event_queue_base.hpp"

#include <cstdio>
#include <cstring>

#include "net-session-online/deps/platform_stand_ins.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Test subclass exposes the protected expiry flag through the public base.
class Queue : public CEventQueueBase {};

int main() {
    OnlineClockStorage() = 500;
    Queue q;
    CHECK(!q.HasEvents());

    const char a[] = "aa";
    const char b[] = "bbb";
    q.AddEvent(1, const_cast<char*>(a), 3);
    q.AddEvent(2, const_cast<char*>(b), 4);
    CHECK(q.HasEvents());

    char out[8] = {};
    CHECK(q.GetEventData(2, out, 8) == 4);  // CopyData returns the payload size (0x7fdf24)
    CHECK(std::strcmp(out, "bbb") == 0);
    CHECK(q.GetEventData(9, out, 8) == -1 && out[0] == 'b');

    // Peek does not consume; consume removes the first match.
    CHECK(q.HasEventOccured(1, false));
    CHECK(q.HasEventOccured(1, false));
    CHECK(q.ConsumeEvent(1));
    CHECK(!q.ConsumeEvent(1));
    CHECK(q.HasEvents());

    q.Clear(2);
    CHECK(!q.HasEvents());

    q.AddEvent(3, nullptr, 0);
    q.AddEvent(3, nullptr, 0);
    q.Clear();
    CHECK(!q.HasEvents());

    std::printf("%s\n", failures ? "c_event_queue_base: FAILED" : "c_event_queue_base: ok");
    return failures != 0;
}
