// vox::VoxThread object: the callback runs on its own thread until Stop, a null callback
// starts no thread, and Stop joins without a further call.
#include <atomic>
#include <chrono>
#include <cstdio>
#include <thread>

#include "vox-audio/vox/vox_thread.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

std::atomic<int> g_calls{0};
std::atomic<void*> g_first{nullptr};

void CountCall(void* first, void* second) {
    (void)second;
    g_first.store(first);
    g_calls.fetch_add(1);
}
}  // namespace

int main() {
    int marker = 0;

    // A null callback never starts a thread, and Stop is safe on it.
    {
        vox::VoxThread idle(nullptr, nullptr, nullptr, nullptr);
        idle.Stop();
    }

    // The callback runs about every 66 ms, with its arguments passed through.
    {
        vox::VoxThread worker(&CountCall, &marker, nullptr, "drivers-threads-test");
        std::this_thread::sleep_for(std::chrono::milliseconds(150));
        worker.Stop();
        const int seen = g_calls.load();
        CHECK(seen > 0);
        CHECK(g_first.load() == static_cast<void*>(&marker));
        std::this_thread::sleep_for(std::chrono::milliseconds(80));
        CHECK(g_calls.load() == seen);  // no call after Stop has joined the thread
    }

    // Stop can be called twice.
    {
        vox::VoxThread again(nullptr, nullptr, nullptr, "again");
        again.Stop();
        again.Stop();
    }

    std::printf("drivers_threads_vox_thread_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
