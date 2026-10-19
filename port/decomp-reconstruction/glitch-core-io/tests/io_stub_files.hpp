// Test support: inert implementations of the pure slots of glitch::io::IReadFile and IWriteFile, so that a
// test fake overrides only the slots it needs (the interfaces are pure in the binary, see io/interfaces.hpp).
#pragma once

#include <cstdint>

#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io::testing {

class StubReadFile : public IReadFile {
public:
    std::int32_t read(void*, std::uint32_t) override { return 0; }
    bool readAsync(void*, std::uint32_t, ReadAsyncCallBack, void*) override { return false; }
    bool readAsync(void*, std::uint32_t, long, ReadAsyncCallBack, void*) override { return false; }
    bool seek(long, bool) override { return false; }
    IReadFile* clone() const override { return nullptr; }
    long getSize() const override { return 0; }
    long getPos() const override { return 0; }
    const char* getFileName() const override { return ""; }
    const char* getFullPath() const override { return ""; }
};

class StubWriteFile : public IWriteFile {
public:
    std::size_t write(const void*, unsigned int) override { return 0; }
    void flush() override {}
    bool seek(long, bool) override { return false; }
    long getPos() const override { return 0; }
    const char* getFileName() const override { return ""; }
    const char* getFullPath() const override { return ""; }
};

}  // namespace glitch::io::testing
