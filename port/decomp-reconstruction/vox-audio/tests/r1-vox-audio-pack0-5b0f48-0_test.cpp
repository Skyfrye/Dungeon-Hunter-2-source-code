// Batch r1-vox-audio-pack0-5b0f48-0 test.
//  - The IMA ADPCM step and index tables against the binary's rodata: the 89 step values (178 bytes at
//    .rodata 0x911a24, AdpcmDecoder::cAdpcmStepSizeTable) and the 16 index bytes (0x911a14,
//    cAdpcmIndexTable). The expected values were read with IDA get_bytes and decoded little-endian.
//  - The VoxAlloc_c forward (0x889494) to the four-argument VoxAlloc.
// Build and run: bash tools/trackb/check_tu.sh --test <this> src/ima_adpcm.cpp src/vox_alloc.cpp src/r1-vox-audio-pack0-5b0f48-0.cpp
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "vox-audio/vox/ima_adpcm.hpp"
#include "vox-audio/vox/memory.hpp"

namespace {

// AdpcmDecoder::cAdpcmStepSizeTable, .rodata 0x911a24, 89 int16 values (IDA get_bytes, decoded).
constexpr std::uint16_t kRodataStep[89] = {
    0x0007, 0x0008, 0x0009, 0x000a, 0x000b, 0x000c, 0x000d, 0x000e, 0x0010, 0x0011, 0x0013,
    0x0015, 0x0017, 0x0019, 0x001c, 0x001f, 0x0022, 0x0025, 0x0029, 0x002d, 0x0032, 0x0037,
    0x003c, 0x0042, 0x0049, 0x0050, 0x0058, 0x0061, 0x006b, 0x0076, 0x0082, 0x008f, 0x009d,
    0x00ad, 0x00be, 0x00d1, 0x00e6, 0x00fd, 0x0117, 0x0133, 0x0151, 0x0173, 0x0198, 0x01c1,
    0x01ee, 0x0220, 0x0256, 0x0292, 0x02d4, 0x031c, 0x036c, 0x03c3, 0x0424, 0x048e, 0x0502,
    0x0583, 0x0610, 0x06ab, 0x0756, 0x0812, 0x08e0, 0x09c3, 0x0abd, 0x0bd0, 0x0cff, 0x0e4c,
    0x0fba, 0x114c, 0x1307, 0x14ee, 0x1706, 0x1954, 0x1bdc, 0x1ea5, 0x21b6, 0x2515, 0x28ca,
    0x2cdf, 0x315b, 0x364b, 0x3bb9, 0x41b2, 0x4844, 0x4f7e, 0x5771, 0x602f, 0x69ce, 0x7462,
    0x7fff};

// AdpcmDecoder::cAdpcmIndexTable, .rodata 0x911a14, 16 bytes.
constexpr std::int8_t kRodataIndex[16] = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

int failures = 0;

void Expect(bool ok, const char* what, int index) {
    if (!ok) {
        std::printf("FAIL %s[%d]\n", what, index);
        ++failures;
    }
}

}  // namespace

int main() {
    static_assert(sizeof(kRodataStep) / sizeof(kRodataStep[0]) == 89, "89 step values");
    static_assert(sizeof(vox::kImaStepTable) / sizeof(vox::kImaStepTable[0]) == 89, "89 step entries");
    static_assert(sizeof(vox::kImaIndexTable) / sizeof(vox::kImaIndexTable[0]) == 16, "16 index entries");

    for (int i = 0; i < 89; ++i) {
        Expect(vox::kImaStepTable[i] == static_cast<std::int16_t>(kRodataStep[i]), "kImaStepTable", i);
    }
    for (int i = 0; i < 16; ++i) {
        Expect(vox::kImaIndexTable[i] == kRodataIndex[i], "kImaIndexTable", i);
    }

    // VoxAlloc_c forwards to VoxAlloc(size, file, function, line): the block is usable and freed.
    void* block = VoxAlloc_c(64, __FILE__, __func__, __LINE__);
    Expect(block != nullptr, "VoxAlloc_c", 0);
    if (block != nullptr) {
        std::memset(block, 0xa5, 64);
        VoxFree(block);
    }

    if (failures != 0) {
        std::printf("%d failure(s)\n", failures);
        return 1;
    }
    std::printf("r1-vox-audio-pack0-5b0f48-0 test: all checks passed\n");
    return 0;
}
