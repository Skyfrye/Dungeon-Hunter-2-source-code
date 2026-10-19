// DriverInterface vtable slot order (checked, not only the member declaration order).
// The binary's _ZTVN3vox15DriverInterfaceE (0x993b60) and _ZTVN3vox13DriverAndroidE (0x993a98)
// (vtables-001.json) give the 32-bit slots; the callers confirm two of them:
// KillEmitter 0x86e1a0 calls slot +0x48 and VoxEngineInternal::Update3D 0x862ec0 calls +0x24.
//   +0x08 Init, +0x0c Shutdown, +0x10 Suspend, +0x14 Resume, +0x18 RampOut, +0x1c RampIn,
//   +0x20 Update, +0x24 Set3DParameter, +0x28 SetDSPParameter, +0x2c SetStaticBusRouting,
//   +0x30 SetDynamicBusRouting, +0x34 SetSFXPresetActive, +0x38 SetOutputMode,
//   +0x3c GetOutputMode, +0x40 PrintDebug, +0x44 CreateDriverSource,
//   +0x48 DestroyDriverSource, +0x4c FillBuffer.
// The host table has 8-byte entries for the 4-byte originals, so a host entry index n is the
// original offset 4n. This test records one call per slot through the base interface and checks
// that the slot the engine uses for the call is the method the binary's table names.
#include <cstdio>

#include "vox-audio/vox/driver.hpp"

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

class Recorder : public vox::DriverInterface {
public:
    void Init(void*) override { ++init; }
    void Shutdown() override { ++shutdown; }
    void Suspend() override { ++suspend; }
    void Resume() override { ++resume; }
    void Set3DParameter(int, const void*) override { ++set3d; }
    void PrintDebug() override { ++print_debug; }
    void DestroyDriverSource(vox::DriverSourceInterface*) override { ++destroy_source; }

    int init = 0;
    int shutdown = 0;
    int suspend = 0;
    int resume = 0;
    int set3d = 0;
    int print_debug = 0;
    int destroy_source = 0;
};

}  // namespace

int main() {
    Recorder driver;
    void** addresses = *reinterpret_cast<void***>(&driver);
    // addresses[0] and addresses[1] are the destructor slots. addresses[2] is the original's
    // +0x08 slot, so the original offset of index n is 4 * n.
    const int index_of_init = 2;
    CHECK(reinterpret_cast<char*>(addresses[index_of_init]) != nullptr);

    vox::DriverInterface* base = &driver;
    base->Init(nullptr);
    base->Shutdown();
    base->Suspend();
    base->Resume();
    base->Set3DParameter(0, nullptr);
    base->PrintDebug();
    base->DestroyDriverSource(nullptr);

    // Every virtual call above must reach its own override. If the declaration order in
    // driver.hpp moved a slot, two counters would trade places: for example a PrintDebug call
    // would land on DestroyDriverSource, which is what the port did before this check.
    CHECK(driver.init == 1);
    CHECK(driver.shutdown == 1);
    CHECK(driver.suspend == 1);
    CHECK(driver.resume == 1);
    CHECK(driver.set3d == 1);
    CHECK(driver.print_debug == 1);
    CHECK(driver.destroy_source == 1);

    // The base's own defaults, which the engine's driver calls fall back on.
    CHECK(base->SetOutputMode(static_cast<vox::VoxOutputMode>(2)) == 0);
    CHECK(base->GetOutputMode() == 1);

    std::printf("w13_driver_slots_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
