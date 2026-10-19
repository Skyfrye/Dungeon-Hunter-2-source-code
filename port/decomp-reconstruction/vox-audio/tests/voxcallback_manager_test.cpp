// vox::VoxCallbackManager: Add appends, SendAll fires and destroys in order, and the
// destructor destroys whatever was not sent.
#include <cstdio>
#include <new>
#include <vector>

#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/voxcallback_manager.hpp"

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

std::vector<int> g_log;  // "i" for Invoke of callback i, "-i" for its destruction

class Recorder : public vox::VoxCallback {
public:
    explicit Recorder(int id) : id_(id) {}
    ~Recorder() override { g_log.push_back(-id_); }
    void Invoke() override { g_log.push_back(id_); }

private:
    int id_;
};

// Callbacks are allocated with VoxAlloc and released by the manager with VoxFree.
Recorder* MakeRecorder(int id) {
    void* storage = VoxAlloc(sizeof(Recorder));
    return new (storage) Recorder(id);
}
}  // namespace

int main() {
    // Null callbacks are ignored, and an empty manager sends nothing.
    {
        vox::VoxCallbackManager manager;
        manager.Add(nullptr);
        manager.SendAll();
        CHECK(g_log.empty());
    }

    // SendAll fires in insertion order, destroying each callback after it runs.
    g_log.clear();
    {
        vox::VoxCallbackManager manager;
        manager.Add(MakeRecorder(1));
        manager.Add(MakeRecorder(2));
        manager.Add(nullptr);
        manager.Add(MakeRecorder(3));
        manager.SendAll();
        const std::vector<int> expected = {1, -1, 2, -2, 3, -3};
        CHECK(g_log == expected);
        // The ring is empty again, so a second SendAll does nothing.
        g_log.clear();
        manager.SendAll();
        CHECK(g_log.empty());
    }

    // The destructor destroys pending callbacks without invoking them.
    g_log.clear();
    {
        vox::VoxCallbackManager manager;
        manager.Add(MakeRecorder(7));
        manager.Add(MakeRecorder(8));
    }
    {
        const std::vector<int> expected = {-7, -8};
        CHECK(g_log == expected);
    }

    // Items added after a send are kept until the next send.
    g_log.clear();
    {
        vox::VoxCallbackManager manager;
        manager.Add(MakeRecorder(4));
        manager.SendAll();
        manager.Add(MakeRecorder(5));
        CHECK(g_log.size() == 2);
        manager.SendAll();
        CHECK(g_log.size() == 4);
    }

    std::printf("voxcallback_manager_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
