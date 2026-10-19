#include "glitch-core-io/io/memory_write_file.hpp"

#include <cstring>

namespace glitch::io {

// 0x6b4d04 _ZN6glitch2io16CMemoryWriteFileC1Ej
CMemoryWriteFile::CMemoryWriteFile(std::uint32_t reserve) {
    buffer.reserve(reserve);
}

// 0x6b4dac _ZN6glitch2io16CMemoryWriteFile4seekElb
// Only the relative case moves: the listing branches straight to the return when the flag is
// clear (CMP R2,#0; BEQ), so an absolute seek changes nothing and returns true.
// Moving before the start clamps to 0. Moving past the end grows the buffer
// to pos + 1 bytes, reserving (pos + 1) * 2 first when capacity is short.
bool CMemoryWriteFile::seek(long offset32, bool relative) {
    const std::int32_t offset = static_cast<std::int32_t>(offset32);
    if (relative) {
        std::int32_t newPos = position + offset;
        if (newPos < 0) {
            position = 0;
        } else {
            position = newPos;
            if (static_cast<std::int32_t>(buffer.size()) < newPos) {
                if (static_cast<std::int32_t>(buffer.capacity()) < newPos) {
                    buffer.reserve(static_cast<std::size_t>(newPos + 1) * 2);
                }
                buffer.resize(static_cast<std::size_t>(position) + 1);
            }
        }
    }
    return true;
}

// 0x6b4e44 _ZN6glitch2io16CMemoryWriteFile5writeEPKvj
// Grows the buffer to position + size when needed (reserving twice that when capacity is short),
// copies the data at the position, advances the position by the count and returns the count.
std::size_t CMemoryWriteFile::write(const void* data, unsigned int size) {
    std::size_t needed = static_cast<std::size_t>(position) + size;
    if (buffer.size() < needed) {
        if (buffer.capacity() < needed) {
            buffer.reserve(needed * 2);
            needed = static_cast<std::size_t>(position) + size;
        }
        buffer.resize(needed);
    }
    std::memcpy(buffer.data() + position, data, size);
    position += static_cast<std::int32_t>(size);
    return size;
}

}  // namespace glitch::io
