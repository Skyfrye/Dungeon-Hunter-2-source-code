#include "net-transport/sync.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
class Counter : public Thread {
public:
    std::atomic<int> steps{0};
protected:
    int Kernel() override { ++steps; std::this_thread::yield(); return 0; }
};
}  // namespace

int main() {
    CMutex m;
    CHECK(m.IsLocked() == 1);
    m.Lock();
    CHECK(m.IsLocked() == 0);
    m.Lock();
    m.Unlock();
    CHECK(m.IsLocked() == 0);
    m.Unlock();
    CHECK(m.IsLocked() == 1);

    CNetMutex nm;
    nm.Lock();
    nm.Lock();
    CHECK(nm.Unlock() == 0);
    CHECK(nm.Unlock() == 0);

    {
        Counter t;
        CHECK(t.Start() == 0);
        while (t.steps.load() < 3) std::this_thread::yield();
        CHECK(t.Stop() == 0);
        CHECK(t.steps.load() >= 3);
    }
    std::printf("%s\n", failures ? "sync: FAILED" : "sync: ok");
    return failures != 0;
}
