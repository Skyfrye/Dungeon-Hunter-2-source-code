#include "glitch-core-io/io/stream_itr_loader.hpp"

#include <cstring>

namespace glitch::io {

// 0x6b5b74 _ZN6glitch2io16SStreamItrLoader14loadAndAdvanceEPNS0_9IReadFileEb
// Elements of 2, 4 and 8 bytes are read one at a time into the scratch buffer and stored
// byte-reversed (big-endian file bytes to a host value), as the listing's shuffle does. Any other
// element size, a clear swapBytes and a zero count read nothing. The destination always advances by
// stride. The original returns the register holding the last read count (the object pointer on the
// read-nothing path, where its result store is dead); the port returns the last read count and 0
// when nothing was read. Both call sites in the listing ignore the value.
int SStreamItrLoader::loadAndAdvance(IReadFile* file, bool swapBytes) {
    int result = 0;
    if (swapBytes && count > 0 && (elementSize == 2 || elementSize == 4 || elementSize == 8)) {
        for (std::uint16_t i = 0; i < count; ++i) {
            result = file->read(readBuffer, elementSize);
            // Big-endian file bytes to a host value: the first byte read is the most significant.
            std::uint64_t value = 0;
            for (std::uint16_t b = 0; b < elementSize; ++b) {
                value = (value << 8) | readBuffer[b];
            }
            // Store the value in the element width (the original writes 2, 4 or 8 bytes).
            std::uint8_t* dest = data + static_cast<std::size_t>(i) * elementSize;
            std::memcpy(dest, &value, elementSize);
        }
    }
    data += stride;
    return result;
}

}  // namespace glitch::io
