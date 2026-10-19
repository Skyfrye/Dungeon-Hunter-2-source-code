// glitch::io::CZipWriter: writes a zip archive of stored (uncompressed) entries to a write file. Layout from the original
// offsets: +0x08 the write file (not reference counted by this class), +0x0c flag byte (set by close), +0x10 the running
// offset of the next local header, +0x14 the size of the central directory so far, +0x18..+0x20 the 46-byte central
// records (begin, end, capacity), +0x24 the names of the entries added so far (vector of strings).
#pragma once

#include <array>
#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io {

class CZipWriter : public glitch::IReferenceCounted {
public:
    explicit CZipWriter(IWriteFile* file);  // 0x6b4f34 (C2), 0x6b4f90 (C1)
    // Both destructors call close() (no check of the flag), which writes the central directory.
    ~CZipWriter() override;                 // 0x6b5238 (D1), 0x6b5288 (D2)

    // 0x6b4fec: writes each central record and its name, then the 22-byte end record, and flushes.
    void close();
    // 0x6b5448: adds a stored entry (local header, name, data) and its central record.
    std::size_t addNewFile(const core::stringc& name, const void* data, unsigned int size);
    // 0x6b581c: reads the whole read file and adds it as above.
    void addNewFile(const core::stringc& name, IReadFile* file);

    CZipWriter(const CZipWriter&) = delete;
    CZipWriter& operator=(const CZipWriter&) = delete;

    IWriteFile* writeFile = nullptr;   // +0x08
    bool flag = false;                 // +0x0c
    std::uint32_t directoryOffset = 0; // +0x10
    std::uint32_t directorySize = 0;   // +0x14
    std::vector<std::array<std::uint8_t, 46>> records;  // +0x18
    core::svector<core::stringc> names;    // +0x24
};

}  // namespace glitch::io
