// CRC-32 table (reflected polynomial, checked against the standard values) and CZipWriter state.
#include "glitch-core-io/boost/crc_table.hpp"
#include "glitch-core-io/io/memory_write_file.hpp"
#include "glitch-core-io/io/zip_writer.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using boost::detail::crc_table_t_32_79764919_true;

int main() {
    crc_table_t_32_79764919_true::init_table();
    crc_table_t_32_79764919_true::init_table();  // second call does nothing
    const std::uint32_t* table = crc_table_t_32_79764919_true::table_;
    CHECK(table[0] == 0x00000000u);
    CHECK(table[1] == 0x77073096u);
    CHECK(table[2] == 0xEE0E612Cu);
    CHECK(table[128] == 0xEDB88320u);
    CHECK(table[255] == 0x2D02EF8Du);

    // A writer over a memory write file: the destructor closes it (central directory and end record).
    glitch::io::CMemoryWriteFile out(16);
    {
        glitch::io::CZipWriter* zip = new glitch::io::CZipWriter(&out);
        CHECK(zip->referenceCounter == 1);
        CHECK(zip->writeFile == &out && !zip->flag && zip->names.empty());
        CHECK(zip->addNewFile("a.txt", "hello", 5) == 5);
        zip->addNewFile("dir/b.bin", "xyz", 3);
        CHECK(zip->names.size() == 2u && zip->records.size() == 2u);
        // 30 + 5 + 5 for the first entry, 30 + 9 + 3 for the second.
        CHECK(zip->directoryOffset == 40u + 42u);
        CHECK(zip->directorySize == 46u + 5u + 46u + 9u);
        zip->drop();
    }
    const std::uint8_t* zbytes = out.getBuffer();
    const std::int32_t zsize = out.getBufferSize();
    // local entries (40 + 42), the central directory (51 + 55), the end record (22)
    CHECK(zsize == 82 + 106 + 22);
    auto u32 = [&](int at) { return zbytes[at] | (zbytes[at + 1] << 8) | (zbytes[at + 2] << 16) | (static_cast<std::uint32_t>(zbytes[at + 3]) << 24); };
    auto u16 = [&](int at) { return zbytes[at] | (zbytes[at + 1] << 8); };
    CHECK(u32(0) == 0x04034b50u && u16(4) == 10 && u16(8) == 0);       // local header, version 10, method 0
    CHECK(u32(14) == 0x3610a686u);                                    // CRC-32 of "hello"
    CHECK(u32(18) == 5u && u32(22) == 5u && u16(26) == 5 && u16(28) == 0);
    CHECK(std::memcmp(zbytes + 30, "a.txt", 5) == 0 && std::memcmp(zbytes + 35, "hello", 5) == 0);
    CHECK(u32(40) == 0x04034b50u && u32(40 + 14) == 0xeb8eba67u);      // CRC-32 of "xyz"
    CHECK(u32(82) == 0x02014b50u && u32(82 + 42) == 0u);               // first central record points at offset 0
    CHECK(u32(82 + 51 + 42) == 40u);                                  // second central record points at offset 40
    CHECK(std::memcmp(zbytes + 82 + 46, "a.txt", 5) == 0);
    CHECK(u32(188) == 101010256u && u16(188 + 8) == 2 && u16(188 + 10) == 2);
    CHECK(u32(188 + 12) == 106u && u32(188 + 16) == 82u);             // directory size and offset

    if (failures == 0) std::printf("crc_zip_writer_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
