// glitch::createDevice (0x5340ac): the 0x58-byte creation parameters it fills (the block at the original 32-bit offsets, and the two address words as the
// host-width members of SCreationParameters, TRACK-B decision 2) and what the device keeps of them. A device without a video driver (driver type 0)
// is made and returned; the parameters are read back from it. Exit status is non-zero when a check fails.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/event_receiver.hpp"
#include "glitch-scene-collada-gui/os/CAndroidOSDevice.hpp"

using namespace glitch;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

template <typename T>
T number(const SCreationParameters& parameters, std::size_t offset) {
    T value;
    std::memcpy(&value, parameters.bytes + offset, sizeof value);
    return value;
}

}  // namespace

int main() {
    std::setvbuf(stdout, nullptr, _IONBF, 0);
    core::dimension2d<int> size{800, 480};
    IEventReceiver* receiver = reinterpret_cast<IEventReceiver*>(static_cast<std::uintptr_t>(0x1234560));  // only stored, never called
    IDevice* device = createDevice(0, size, 32, true, true, false, receiver);
    CHECK(device != nullptr);
    if (device != nullptr) {
        const SCreationParameters& p = device->creationParameters;
        CHECK(number<std::int32_t>(p, 0x00) == 0 && number<std::int32_t>(p, 0x04) == 800 && number<std::int32_t>(p, 0x08) == 480);
        CHECK(p.bytes[0x0c] == 32 && p.bytes[0x0d] == 16 && p.bytes[0x0e] == 1 && p.bytes[0x0f] == 1 && p.bytes[0x10] == 0 && p.bytes[0x11] == 0);
        CHECK(device->isFullscreen());  // the flag at the original +0x0e
        CHECK(number<std::int32_t>(p, 0x14) == 0 && number<std::int32_t>(p, 0x18) == 0 && number<std::int32_t>(p, 0x1c) == 0);
        CHECK(number<std::int32_t>(p, 0x20) == 0x40000);
        CHECK(p.bytes[0x24] == 0 && p.bytes[0x25] == 0 && p.bytes[0x26] == 0 && number<std::int32_t>(p, 0x2c) == 0 && p.bytes[0x30] == 0);
        CHECK(number<std::int32_t>(p, 0x34) == -1 && number<std::int32_t>(p, 0x38) == -1);
        CHECK(number<std::int32_t>(p, 0x40) == 5242880 && number<std::int32_t>(p, 0x44) == 655360);
        CHECK(number<std::int32_t>(p, 0x48) == 0x20000 && number<std::int32_t>(p, 0x4c) == 0x2000);
        CHECK(number<float>(p, 0x50) == 1.0f && number<std::int32_t>(p, 0x54) == 0);
        // The two address words are the host-width members; the block holds zero there.
        CHECK(p.eventReceiver == receiver && p.version != nullptr && std::strcmp(p.version, "0.1.0.2") == 0);
        CHECK(number<std::int32_t>(p, 0x28) == 0 && number<std::int32_t>(p, 0x3c) == 0);
        device->drop();
    }
    if (failures == 0) {
        std::printf("create_device_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
