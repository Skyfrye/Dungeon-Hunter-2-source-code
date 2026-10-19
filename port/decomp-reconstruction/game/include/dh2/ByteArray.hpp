// ByteArray: a heap block of bytes with its length. Used as the value type of NetStructByteArray<N>.
// Original 32-bit size 0x8 (8): data pointer at +0x00, length at +0x04. No vtable.
// Reconstructed from libDungeonHunter2.so pseudocode (ByteArray::SetBuffer 0x36ddac).
// Note: net-transport/deps/byte_array.hpp still defines a stand-in struct ByteArray with the same
// layout. A translation unit must not include both until that stand-in is retired.
#pragma once

#include <cstdint>

class ByteArray {
public:
    // ByteArray::SetBuffer(void const*, int), 0x36ddac. Reuses the block when the length is
    // unchanged, otherwise frees it and allocates a new block of the requested length. The block is
    // zero-filled and then filled from the source. Returns the data pointer (null when nothing was
    // allocated).
    void* SetBuffer(const void* data, int size);                    // 0x36ddac

    void* m_buffer;                                                 // +0x00 block pointer, null when empty
    std::int32_t m_size;                                            // +0x04 length of the block in bytes
};
