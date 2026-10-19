// NetStructByteArray<N>: a replicated byte array of at most N bytes. Reconstructed from
// libDungeonHunter2.so pseudocode. The three instantiations in this batch are N = 3, 30, 36.
// N = 256 (batch e2-...-9de6f9-1) is defined as explicit member specializations in
// src/e2-net-transport-NetStructByteArray-9de6f9-1.cpp.
//
// Original layout (32-bit offsets, kept as comments):
//   +0x00 vptr (the shared NetStructMemberType<ByteArray> vtable, off_963868)
//   +0x20 value_ (ByteArray, inherited from NetStructMemberType<ByteArray>):
//         +0x20 data pointer, +0x24 size
// Vtable slot +0x1c is NetStructMemberType<ByteArray>::SetValue (0x36f264). This class does not
// override it in the original (checked against off_963868).
#pragma once

#include <cstddef>
#include <cstdint>

#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_struct.hpp"
#include "net-transport/deps/byte_array.hpp"

template <unsigned N>
class NetStructByteArray : public NetStructMemberType<ByteArray> {
public:
    // Constructor from a ByteArray: 0x370550 (36u), 0x370608 (3u), 0x3706c0 (30u), 0x7feeb8 (64u).
    // Sets the bit size to N * 8 (288, 24, 240, 512).
    NetStructByteArray(const ByteArray& initial);

    ~NetStructByteArray() override;

    // Reads a 16-bit size, then that many bytes. 0x3702f8 (36u), 0x3703b0 (3u), 0x370430 (30u),
    // 0x7fee00 (64u). Partial (see the .cpp).
    void Read(NetBitStream& stream) override;

    // Vtable +0x20 of every NetStructByteArray<N> is NetStructMemberType<ByteArray>::TestValue
    // (0x36d388, always true), inherited unchanged. Declared here only so the class is not abstract.
    bool TestValue(const ByteArray& value) const override {
        return NetStructMemberType<ByteArray>::TestValue(value);
    }

    // 0x36d398 / 0x36d3b0 / 0x36d3c8: data pointer (a 32-bit address in the original, host pointer here).
    const void* GetBufferPtr() const;
    // 0x36d3a0 / 0x36d3b8 / 0x36d3d0: size in bytes.
    int GetBufferSize() const;
    // 0x36d3a8 / 0x36d3c0 / 0x36d3d8: the compile-time maximum N.
    static int GetMaxBufferSize();

    // 0x36d76c (30u), 0x36d730 (3u), 0x36d6f4 (36u). The original takes a second int that the
    // pseudocode never reads (its register is reused for the size), so it is left unnamed.
    int GetBuffer(void* dst, int) const;

    // Serializes the size as 16 bits, then the bytes.
    // 0x36dc64 (30u), 0x36dc34 (3u), 0x36dc04 (36u)
    void Write(NetBitStream& stream) const override;

    // 0x3702a8 (30u is not in this batch), 0x370258 (3u), 0x36ffd0 (36u). See the .cpp for the
    // SetValue dependency.
    void SetBuffer(const void* src, std::size_t size);
};
