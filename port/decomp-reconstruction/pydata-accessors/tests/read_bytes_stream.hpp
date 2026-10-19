#pragma once

// Test streams for the pydata tests. The records read through StreamReader, which calls the canonical
// IStreamBase::read slot (dh2/IStreamBase.hpp). A test derives from ReadBytesStream and implements ReadBytes(dst, n),
// which fills n bytes and returns false when the stream cannot serve them (then read returns 0 bytes, as a stream at
// its end does). Header only; CMake compiles tests/*.cpp, so this file is not a test itself.
#include <cstddef>
#include <cstdint>

#include "dh2/IStreamBase.hpp"

class ReadBytesStream : public IStreamBase {
public:
    virtual bool ReadBytes(void* dst, std::size_t n) = 0;

    std::uint32_t size() const override { return 0; }
    bool canRead() const override { return true; }
    bool canWrite() const override { return false; }
    std::uint64_t peek(void*, std::uint64_t) const override { return 0; }
    std::uint64_t read(void* dst, std::uint64_t n) override {
        return ReadBytes(dst, static_cast<std::size_t>(n)) ? n : 0;
    }
    std::uint64_t write(const void*, std::uint64_t) override { return 0; }
    void seek(std::uint64_t) override {}
    std::uint64_t tell() const override { return 0; }
    void skip(std::uint64_t) override {}
};
