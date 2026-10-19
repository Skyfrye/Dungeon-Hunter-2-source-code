// DriverAndroid redo batch (r1-vox-audio-vox_DriverAndroid-72f056-0): the parts of the
// audio-thread state that run without a JavaVM. Suspend and resume update the flag and the
// buffered duration, DoCallbackAT runs its timing tail, _InitAT stores the 44100 rate and
// returns it on the no-JavaVM path, CreateDriverSource links a new source into the base list and
// DestroyDriverSource unlinks it, runs the virtual destructor and frees the block.
#include <chrono>
#include <cmath>
#include <cstdio>
#include <new>

#include "vox-audio/vox/driver_android.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

// Test-only access to the private audio-thread state (DriverAndroid befriends this name).
struct DriverAndroidTestAccess {
    static void SetActive(DriverAndroid& driver, bool active) { driver.active_ = active; }
    static bool Paused(const DriverAndroid& driver) { return driver.paused_; }
    static int Mode(const DriverAndroid& driver) { return driver.mode_; }
    static int SourceCount(const DriverAndroid& driver) { return driver.field_0c_; }
    static bool ListEmpty(const DriverAndroid& driver) { return driver.list_head_.next == &driver.list_head_; }
};

}  // namespace vox

namespace {

int g_failures = 0;
int g_destroyed = 0;

#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

double NowSeconds() {
    using Clock = std::chrono::steady_clock;
    return std::chrono::duration<double>(Clock::now().time_since_epoch()).count();
}

class CountingSource : public vox::DriverSourceInterface {
public:
    ~CountingSource() override { ++g_destroyed; }
};

}  // namespace

int main() {
    vox::DriverAndroid driver;
    CHECK(vox::DriverAndroidTestAccess::Mode(driver) == 0);

    // Mode 0 (no back end): the mode dispatch is a no-op.
    driver.Resume();
    driver.Suspend();

    // _InitAT: the argument is never read, and the no-JavaVM path returns the 44100 rate.
    CHECK(driver._InitAT(nullptr) == 44100);
    CHECK(driver._InitAT(reinterpret_cast<void*>(&g_destroyed)) == 44100);

    // Suspend does nothing while the audio thread is not active.
    vox::DriverAndroid::m_dataDuration = 5.0;
    vox::DriverAndroid::m_updateStartTime = NowSeconds() - 2.0;
    driver._SuspendAT();
    CHECK(vox::DriverAndroid::m_dataDuration == 5.0);
    CHECK(!vox::DriverAndroidTestAccess::Paused(driver));

    // Active: the flag is set and the duration loses the time since the last start (about 2 s).
    vox::DriverAndroidTestAccess::SetActive(driver, true);
    driver._SuspendAT();
    CHECK(vox::DriverAndroidTestAccess::Paused(driver));
    CHECK(std::fabs(vox::DriverAndroid::m_dataDuration - 3.0) < 0.1);

    // Resume clears the flag and restarts the clock at now.
    driver._ResumeAT();
    CHECK(!vox::DriverAndroidTestAccess::Paused(driver));
    CHECK(std::fabs(vox::DriverAndroid::m_updateStartTime - NowSeconds()) < 1.0);

    // DoCallbackAT timing tail: a threshold above the remaining duration means no sleep, so the
    // 10 s chunk is never waited for. (The first call in the process also sets the start time.)
    _jarray* array = nullptr;
    vox::DriverAndroid::m_updateTime = 10.0;
    vox::DriverAndroid::m_dataThreshold = 100.0;
    driver.DoCallbackAT(array);
    CHECK(array == nullptr);

    // A threshold below the remaining duration sleeps for one chunk; a zero chunk returns at once.
    vox::DriverAndroid::m_updateTime = 0.0;
    vox::DriverAndroid::m_dataThreshold = -1000.0;
    driver.DoCallbackAT(array);
    CHECK(array == nullptr);

    // CreateDriverSource: with the driver active it builds a DriverAndroidSource, links its node at the tail of the base list
    // and counts it (the base counter starts at 1); DestroyDriverSource unlinks and frees it again.
    CHECK(vox::DriverAndroidTestAccess::ListEmpty(driver));
    CHECK(vox::DriverAndroidTestAccess::SourceCount(driver) == 1);
    const std::int32_t format[4] = {2, 44100, 16, 0};
    vox::DriverSourceInterface* created = driver.CreateDriverSource(format, nullptr, 0);
    CHECK(created != nullptr);
    CHECK(!vox::DriverAndroidTestAccess::ListEmpty(driver));
    CHECK(vox::DriverAndroidTestAccess::SourceCount(driver) == 2);
    driver.DestroyDriverSource(created);
    CHECK(vox::DriverAndroidTestAccess::ListEmpty(driver));
    // An inactive driver creates nothing.
    vox::DriverAndroidTestAccess::SetActive(driver, false);
    CHECK(driver.CreateDriverSource(format, nullptr, 0) == nullptr);
    CHECK(vox::DriverAndroidTestAccess::SourceCount(driver) == 2);

    // DestroyDriverSource: null is a no-op; a live source gets its virtual destructor run once.
    driver.DestroyDriverSource(nullptr);
    CHECK(g_destroyed == 0);
    void* block = VoxAlloc(sizeof(CountingSource));
    CHECK(block != nullptr);
    if (block != nullptr) {
        auto* source = new (block) CountingSource();
        driver.DestroyDriverSource(source);
        CHECK(g_destroyed == 1);
    }

    std::printf("r1-vox-audio-vox_DriverAndroid-72f056-0_test: %s\n",
                g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
