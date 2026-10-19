// IBuffer::copy return value, IBuffer::reset ownership and flag handling, and the
// dirty read-back path of the const IBuffer::map (E_BUFFER_READ_MAP_ACCESS).
#include "glitch-video/buffer.hpp"
#include "video_test_types.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


int main() {
    using glitch::video::IBuffer;
    using glitch::video::test::TestBuffer;

    // copy: unowned data with a size gets a private copy and the owns bit; a second call copies nothing.
    uint8_t src[4] = {9, 8, 7, 6};
    TestBuffer unowned(0, 0, 4, src, 0);
    CHECK(unowned.copy());
    CHECK(unowned.m_data != src && unowned.m_data[0] == 9 && unowned.m_data[3] == 6);
    CHECK((unowned.m_flags12 & IBuffer::kFlagOwnsData) != 0);
    CHECK(!unowned.copy());

    // reset with a new pointer frees the owned copy and keeps the data flag.
    unowned.reset(4, src, true);
    CHECK(unowned.m_data == src);
    CHECK((unowned.m_flags12 & IBuffer::kFlagOwnsData) != 0);
    unowned.m_data = nullptr;  // src is a stack array: keep the destructor from freeing it

    // reset to size 0 drops the data, the size and the owns bit on the way (bit 0 is set again).
    TestBuffer sized(0, 0, 8, new uint8_t[8], 0);
    sized.m_flags12 = IBuffer::kFlagOwnsData;
    sized.reset(0, nullptr, false);
    CHECK(sized.m_data == nullptr && sized.m_size == 0);
    CHECK((sized.m_flags12 & IBuffer::kFlagOwnsData) != 0);

    // reset with a null pointer and a non-zero size: bit 1 is not set, bit 2 is cleared.
    TestBuffer nullData(0, 0, 4, src, 0);
    nullData.m_flags12 = IBuffer::kFlagDirty | IBuffer::kFlagHasData;
    nullData.reset(4, nullptr, false);
    CHECK(nullData.m_data == nullptr && (nullData.m_flags12 & IBuffer::kFlagDirty) == 0);

    // mapRead(1) with a dirty buffer copies the driver bytes into m_data and clears the dirty bit.
    uint8_t driverCopy[4] = {1, 2, 3, 4};
    uint8_t dest[4] = {};
    TestBuffer rb(0, 0, 4, dest, 0);
    rb.sentinel = driverCopy;
    rb.m_flags12 = IBuffer::kFlagDirty;
    CHECK(static_cast<const IBuffer&>(rb).map(1) == dest);
    CHECK(dest[0] == 1 && dest[3] == 4);
    CHECK((rb.m_flags12 & IBuffer::kFlagDirty) == 0);
    CHECK(rb.m_mapCount13 == 33);

    if (failures == 0) std::printf("buffer_reset: ok\n");
    return failures == 0 ? 0 : 1;
}
