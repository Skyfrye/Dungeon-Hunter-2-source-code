// BufferedStream: heap copy of everything an IStreamBase holds. Reconstructed from
// libDungeonHunter2.so pseudocode.
//
// Original layout (32-bit offsets):
//   +0x00 data pointer (new[] of the source size)
//   +0x04 size
#pragma once

#include <memory>

#include "dh2/IStreamBase.hpp"

class BufferedStream {
public:
    // 0x42b1e4 _ZN14BufferedStream10FillBufferEP11IStreamBase
    void FillBuffer(IStreamBase* source);

    // Accessors for tests; the original reads the fields directly.
    const char* data() const { return data_.get(); }
    int size() const { return size_; }

private:
    std::unique_ptr<char[]> data_;   // +0x00
    int size_ = 0;                   // +0x04
};
