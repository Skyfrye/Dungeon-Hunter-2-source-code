// Host checks for the r1-glitch-core-io-glitch_core-6498de-0 batch: fast_atof_move (0x322bc8),
// the heapsort and binary_search order of the pak and zip entries (0x56fa04 .. 0x5783c4), the
// file-list order (0x6b41d8 / 0x6b4338) and quantizeScaleOffset (0x6a1300 / 0x6a14f0).
// Returns non-zero on failure.
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "glitch-core-io/core/quantize.hpp"
#include "glitch-core-io/core/sort.hpp"
#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/file_list.hpp"
#include "glitch-core-io/io/pak_reader.hpp"
#include "glitch-core-io/io/zip_reader.hpp"

namespace {

int failures = 0;

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

void testFastAtof() {
    float v = 0.f;
    const char* end = glitch::core::fast_atof_move("-12.5e2 rest", v);
    CHECK(v == -1250.f);
    CHECK(*end == ' ');

    end = glitch::core::fast_atof_move("3.25x", v);
    CHECK(v == 3.25f && *end == 'x');

    // An exponent is read only after a decimal point, as in the original.
    end = glitch::core::fast_atof_move("12e3", v);
    CHECK(v == 12.f && *end == 'e');

    end = glitch::core::fast_atof_move("1.e2", v);
    CHECK(v == 100.f && *end == '\0');

    end = glitch::core::fast_atof_move("0.5e-1", v);
    CHECK(std::fabs(v - 0.05f) < 1e-7f && *end == '\0');

    const char abc[] = "abc";
    end = glitch::core::fast_atof_move(abc, v);
    CHECK(v == 0.f && end == abc);
}

void testQuantize() {
    // The 3D scale multiplies by the float nearest 1/65535 (0x37800080 in the listing).
    const float inv = 1.0f / 65535.0f;
    std::uint32_t bits = 0;
    std::memcpy(&bits, &inv, sizeof bits);
    CHECK(bits == 0x37800080u);

    using glitch::core::vector3d;
    vector3d<std::int16_t> q[2] = {};
    const vector3d<float> pts[2] = {{0.f, 0.f, 0.f}, {65535.f, 65535.f, 65535.f}};
    vector3d<float> scale{}, offset{};
    glitch::core::quantizeScaleOffset(q, sizeof(vector3d<std::int16_t>), pts, sizeof(vector3d<float>), 2,
                                      scale, offset);
    CHECK(q[0].X == -32767 && q[1].X == 32767);
    CHECK(q[0].Y == -32767 && q[1].Y == 32767);
    CHECK(q[0].Z == -32767 && q[1].Z == 32767);
    CHECK(std::fabs(scale.X - 1.f) < 1e-5f && std::fabs(scale.Z - 1.f) < 1e-5f);
    CHECK(offset.X == 32767.5f && offset.Z == 32767.5f);
}

void testPakOrder() {
    // The name is compared as signed chars: 0xff is -1, below 'a' (0x61).
    std::vector<glitch::io::SPakFileEntry> entries(4);
    entries[0].simpleFileName = "b";
    entries[1].simpleFileName = glitch::core::stringc("\xff", 1);
    entries[2].simpleFileName = "a";
    entries[3].simpleFileName = "ab";
    CHECK(entries[1] < entries[2]);
    glitch::core::heapsort(entries.data(), static_cast<int>(entries.size()));
    CHECK(entries[0].simpleFileName == glitch::core::stringc("\xff", 1));
    CHECK(entries[1].simpleFileName == "a");
    CHECK(entries[2].simpleFileName == "ab");
    CHECK(entries[3].simpleFileName == "b");

    glitch::io::SPakFileEntry key;
    key.simpleFileName = "ab";
    CHECK(glitch::core::binary_search(entries, key) == 2);
    key.simpleFileName = "zz";
    CHECK(glitch::core::binary_search(entries, key) == -1);
    key.simpleFileName = "";
    CHECK(glitch::core::binary_search(entries, key) == -1);
}

void testZipOrder() {
    std::vector<glitch::io::SZipFileEntry> entries(3);
    entries[0].simpleFileName = "data/b.bin";
    entries[1].simpleFileName = "data/a.bin";
    entries[2].simpleFileName = "data";
    glitch::core::heapsort(entries.data(), static_cast<int>(entries.size()));
    CHECK(entries[0].simpleFileName == "data");
    CHECK(entries[1].simpleFileName == "data/a.bin");
    CHECK(entries[2].simpleFileName == "data/b.bin");

    glitch::io::SZipFileEntry key;
    key.simpleFileName = "data/a.bin";
    CHECK(glitch::core::binary_search(entries, key) == 1);
}

void testFileListOrder() {
    // Directories sort before files; names compare case-insensitively within each group.
    using glitch::io::CFileList;
    std::vector<CFileList::FileEntry> files(4);
    files[0].Name = "b.txt";
    files[1].Name = "Music";
    files[1].isDirectory = true;
    files[2].Name = "a.txt";
    files[3].Name = "Art";
    files[3].isDirectory = true;
    CHECK(files[1] < files[2]);
    CHECK(!(files[2] < files[1]));
    glitch::core::heapsort(files.data(), static_cast<int>(files.size()));
    CHECK(files[0].Name == "Art" && files[1].Name == "Music");
    CHECK(files[2].Name == "a.txt" && files[3].Name == "b.txt");
}

}  // namespace

int main() {
    testFastAtof();
    testQuantize();
    testPakOrder();
    testZipOrder();
    testFileListOrder();
    std::printf(failures ? "r1-glitch-core-io-glitch_core-6498de-0 test: %d failure(s)\n"
                         : "r1-glitch-core-io-glitch_core-6498de-0 test: ok\n",
                failures);
    return failures ? 1 : 0;
}
