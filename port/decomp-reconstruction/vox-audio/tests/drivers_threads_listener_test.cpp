// vox::DriverCallbackInterface: the scratch work buffer grows only when asked for more,
// the listener setters accept their parameters, and FillBuffer leaves the output alone
// while the interface is not active.
#include <cstdint>
#include <cstdio>

#include "vox-audio/vox/driver_callback.hpp"

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

// DriverCallbackInterface is abstract (the binary's vtable leaves Shutdown, Suspend, Resume, PrintDebug and
// DestroyDriverSource null for the concrete driver); the test supplies empty ones.
class TestMixer : public vox::DriverCallbackInterface {
public:
    void Shutdown() override {}
    void Suspend() override {}
    void Resume() override {}
    void PrintDebug() override {}
    void DestroyDriverSource(vox::DriverSourceInterface*) override {}
};

int main() {
    using vox::DriverCallbackInterface;
    using vox::DriverScratchBuffer;

    TestMixer mixer;
    mixer.SetDefaultParameter();

    // Setting the listener parameters one by one: doppler factor, speed of sound and model.
    const float doppler = 1.5f;
    mixer.Set3DParameter(0, &doppler);
    const std::int32_t model = 5;
    mixer.Set3DParameter(2, &model);
    const float position[3] = {1.0f, 2.0f, 3.0f};
    mixer.Set3DParameter(3, position);

    // Inactive: FillBuffer does not touch the output.
    std::int16_t out[8] = {7, 7, 7, 7, 7, 7, 7, 7};
    mixer.FillBuffer(out, 4);
    for (std::int16_t value : out) {
        CHECK(value == 7);
    }

    // The work buffer grows to the requested size and keeps it for smaller requests.
    DriverScratchBuffer& work = DriverCallbackInterface::GetWorkBuffer(16);
    CHECK(work.count >= 16);
    CHECK(work.data != nullptr);
    const std::int32_t grown = work.count;
    DriverScratchBuffer& again = DriverCallbackInterface::GetWorkBuffer(8);
    CHECK(again.count == grown);
    DriverScratchBuffer& larger = DriverCallbackInterface::GetWorkBuffer(64);
    CHECK(larger.count >= 64);

    // Init clears the static records (the memory is not released here).
    mixer.Init(nullptr);
    CHECK(DriverCallbackInterface::GetWorkBuffer(0).count == 0);

    std::printf("drivers_threads_listener_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
