// Tests for the LCAndroidSocket constructor (0x8a0020 / 0x8a013c) and destructor (0x89ff54 / 0x89ffc8).
#include "net-transport/lc_android_socket.hpp"

#include <atomic>
#include <chrono>
#include <cstdio>
#include <cstring>
#include <thread>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// Written by an idle worker that the destructor detaches. It must outlive the test scope.
std::atomic<int> g_idle_worker_done{0};

}  // namespace

int main() {
    // Constructor: the fields the original constructor sets hold the arguments.
    {
        LCXPlayerSocketObserver observer;
        LCAndroidSocket s("lobby.example", 9001, &observer);
        CHECK(s.serverPort_ == 9001);
        CHECK(s.observer_ == &observer);
        CHECK(s.serverName_ != nullptr && std::strcmp(s.serverName_.get(), "lobby.example") == 0);
        CHECK(s.socket_ == -1);
        CHECK(s.socketType_ == 0);
        CHECK(s.gethostbynameState_ == 0);
        CHECK(s.state_ == LCXPlayerSocket::kStateNone);
        CHECK(!s.host_thread_.joinable());
    }
    // Constructor with a null name: no copy is made, and the observer may be null.
    {
        LCAndroidSocket s(nullptr, 0, nullptr);
        CHECK(s.serverName_ == nullptr);
        CHECK(s.observer_ == nullptr);
        CHECK(s.socket_ == -1);
    }
    // Destructor while a lookup is busy: the worker is joined, so it has finished when the object is gone.
    {
        std::atomic<bool> finished{false};
        {
            LCAndroidSocket s(nullptr, 0, nullptr);
            s.gethostbynameState_ = 1;
            s.host_thread_ = std::thread([&finished] {
                std::this_thread::sleep_for(std::chrono::milliseconds(30));
                finished = true;
            });
        }
        CHECK(finished.load());
    }
    // Destructor with an idle (finished) worker: the thread is detached and nothing waits for it.
    {
        {
            LCAndroidSocket s(nullptr, 0, nullptr);
            s.gethostbynameState_ = 0;
            s.host_thread_ = std::thread([] { g_idle_worker_done = 1; });
        }
        for (int i = 0; i < 400 && g_idle_worker_done.load() == 0; ++i) {
            std::this_thread::sleep_for(std::chrono::milliseconds(5));
        }
        CHECK(g_idle_worker_done.load() == 1);
    }
    if (failures != 0) {
        std::printf("%d failure(s)\n", failures);
        return 1;
    }
    std::printf("p1-net-transport-pack0-912dbe-0 ok\n");
    return 0;
}
