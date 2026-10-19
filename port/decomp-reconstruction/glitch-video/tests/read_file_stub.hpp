// Test support: inert implementations of the pure slots of glitch::io::IReadFile (glitch-core-io/io/interfaces.hpp), so
// that a test fake overrides only the slots it uses. The slots are pure in the binary (vtable +0x0c..+0x2c). The inert
// answers are size 0, position 0 and an empty name, as the video tests used before the canonical interface.
#pragma once

#include <cstdint>

#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::video::test {

class StubReadFile : public glitch::io::IReadFile {
public:
    std::int32_t read(void*, std::uint32_t) override { return 0; }
    bool readAsync(void*, std::uint32_t, glitch::io::ReadAsyncCallBack, void*) override { return false; }
    bool readAsync(void*, std::uint32_t, long, glitch::io::ReadAsyncCallBack, void*) override { return false; }
    bool seek(long, bool) override { return false; }
    glitch::io::IReadFile* clone() const override { return nullptr; }
    long getSize() const override { return 0; }
    long getPos() const override { return 0; }
    const char* getFileName() const override { return ""; }
    const char* getFullPath() const override { return ""; }
};

}  // namespace glitch::video::test
