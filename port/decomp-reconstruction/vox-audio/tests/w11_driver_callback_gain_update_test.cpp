// vox::DriverCallbackSourceInterface: SetGain's Q14 clamps (gain above 1, below 0, NaN),
// and Update's eighth-step move of the +0x04 word toward dt * 16384.
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <limits>

#include "vox-audio/vox/driver_callback.hpp"

namespace vox {
struct DriverCallbackSourceInterfaceTestAccess {
    static void SetPeriod(DriverCallbackSourceInterface& d, int value) { d.period_ = value; }
    static int Period(const DriverCallbackSourceInterface& d) { return d.period_; }
    static int GainWord(const DriverCallbackSourceInterface& d) { return d.field_28_; }
};
}  // namespace vox

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
    using vox::DriverCallbackSourceInterface;
    using vox::DriverCallbackSourceInterfaceTestAccess;

    const std::int32_t kFormat[4] = {2, 44100, 16, 0};
    const std::int32_t kNoBuffers = 0;
    DriverCallbackSourceInterface source(kFormat, &kNoBuffers, 0);

    // SetGain: above 1.0 stores 0x4000, below 0 stores 0, NaN stores 0, in between Q14.
    source.SetGain(2.0f);
    CHECK(DriverCallbackSourceInterfaceTestAccess::GainWord(source) == 0x4000);
    source.SetGain(-0.5f);
    CHECK(DriverCallbackSourceInterfaceTestAccess::GainWord(source) == 0);
    source.SetGain(0.25f);
    CHECK(DriverCallbackSourceInterfaceTestAccess::GainWord(source) == 4096);
    source.SetGain(std::numeric_limits<float>::quiet_NaN());
    CHECK(DriverCallbackSourceInterfaceTestAccess::GainWord(source) == 0);

    // Update: target = dt * 16384 truncated; the word moves by (target - word) >> 3.
    DriverCallbackSourceInterfaceTestAccess::SetPeriod(source, 0);
    source.Update(1.0f);  // target 16384, step 2048
    CHECK(DriverCallbackSourceInterfaceTestAccess::Period(source) == 2048);
    source.Update(0.0f);  // target 0, difference -2048, step -256
    CHECK(DriverCallbackSourceInterfaceTestAccess::Period(source) == 1792);
    source.Update(0.5f);  // target 8192, difference 6400, step 800
    CHECK(DriverCallbackSourceInterfaceTestAccess::Period(source) == 2592);

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("w11_driver_callback_gain_update_test: ok\n");
    return 0;
}
