// VoxThread static helpers: the thread id is stable within a thread; Sleep returns.
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
}  // namespace

int main() {
    const std::uintptr_t here = vox::VoxThread::GetCurThreadId();
    CHECK(here == vox::VoxThread::GetCurThreadId());
    std::uintptr_t there = 0;
    std::thread other([&] { there = vox::VoxThread::GetCurThreadId(); });
    other.join();
    CHECK(there != here);

    vox::VoxThread::Sleep(1);

    std::printf("vox_thread_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
