// glitch::collada::COnDemandReader: the on-demand reader over an open file (res::onDemandReader's implementation). Canonical header, residue
// pass ob.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; the vtable at 0x978558: D1 0x60b2b4, D0 0x60b644, read 0x60b2b8, read with callback
// 0x60b304): the object is {+0x00 vptr, +0x04 the wrapped IReadFile}. Both reads seek the file to `offset` (slot +0x18, absolute) and read `size`
// bytes into the buffer (slot +0x0c); the callback form ignores its callback and user data.
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/res/onDemand.hpp"

namespace glitch::io {
class IReadFile;
}

namespace glitch::collada {

class COnDemandReader : public res::onDemandReader {
public:
    explicit COnDemandReader(io::IReadFile* readFile) : file(readFile) {}
    // 0x60b2b4 (D1): empty. D0 (0x60b644) is the compiler's deleting thunk.
    ~COnDemandReader() override;

    // 0x60b2b8: seeks to `offset`, reads `size` bytes; answers the file's read result.
    std::int32_t read(std::int32_t size, std::int32_t offset, void* buffer) override;
    // 0x60b304: the same; the callback and its data are not used.
    std::int32_t read(std::int32_t size, std::int32_t offset, void* buffer, void (*callback)(int, int, void*, void*),
                      void* userData) override;

    io::IReadFile* file = nullptr;  // +0x04
};

}  // namespace glitch::collada
