// DriverAndroid: the VoxSet* exports (threshold clamp, API level, JavaVM) and the mode
// dispatch with no back end selected.
#include <cstdio>

#include "vox-audio/vox/driver_android.hpp"

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
    // Threshold: below 0 gives 0, above 1 gives 1, otherwise the value is kept.
    VoxSetDataThreshold(-0.5);
    CHECK(vox::DriverAndroid::m_dataThresholdRatio == 0.0);
    VoxSetDataThreshold(2.0);
    CHECK(vox::DriverAndroid::m_dataThresholdRatio == 1.0);
    VoxSetDataThreshold(0.25);
    CHECK(vox::DriverAndroid::m_dataThresholdRatio == 0.25);

    VoxSetAndroidAPILevel(19);
    CHECK(vox::DriverAndroid::s_androidAPILevel == 19);

    int marker = 0;
    VoxSetJavaVM(reinterpret_cast<_JavaVM*>(&marker));
    CHECK(vox::DriverAndroid::s_javaVM == reinterpret_cast<_JavaVM*>(&marker));
    VoxSetJavaVMC(nullptr);
    CHECK(vox::DriverAndroid::s_javaVM == nullptr);
    CHECK(vox::DriverAndroid::m_dataThresholdRatio == 1.0);

    // Mode 0 (no back end): every dispatch is a no-op, and Shutdown joins nothing.
    vox::DriverAndroid driver;
    driver.Update(0.016f);
    driver.Resume();
    driver.Suspend();
    driver.Shutdown();
    CHECK(!vox::DriverAndroid::m_running);

    std::printf("driver_android_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
