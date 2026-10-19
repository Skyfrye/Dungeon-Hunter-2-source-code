// glitch::io::CMemoryWriteFile: a write target backed by an in-memory byte
// vector. Layout from the original: +0x08 position, +0x0c..+0x14 buffer vector.
#pragma once

#include <cstddef>
#include <cstdint>
#include <vector>

#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io {

// _ZTVN6glitch2io16CMemoryWriteFileE: an IWriteFile (write, flush, seek, getPos, getFileName, getFullPath).
class CMemoryWriteFile : public IWriteFile {
public:
    // +0x08: current position
    std::int32_t position = 0;
    // +0x0c..+0x14: buffer (begin, end, capacity end in the original)
    std::vector<std::uint8_t> buffer;

    explicit CMemoryWriteFile(std::uint32_t reserve);  // 0x6b4d04 (C1), 0x6b4d58 (C2)

    // Vtable order: +0x0c write, +0x10 flush, +0x14 seek, +0x18 getPos, +0x1c getFileName, +0x20 getFullPath.
    // 0x6b4e44: writes at the position, advances it by the count and returns the count.
    std::size_t write(const void* data, unsigned int size) override;
    void flush() override {}                                    // 0x6b4c60
    bool seek(long offset, bool relative) override;             // 0x6b4dac
    long getPos() const override { return position; }           // 0x6b4c64
    const char* getFileName() const override { return "<memory>"; }  // 0x6b4c6c
    const char* getFullPath() const override { return "<memory>"; }  // 0x6b4c7c
    const std::uint8_t* getBuffer() const { return buffer.data(); }  // 0x6b4c8c
    std::int32_t getBufferSize() const { return static_cast<std::int32_t>(buffer.size()); }  // 0x6b4c94
};

}  // namespace glitch::io
