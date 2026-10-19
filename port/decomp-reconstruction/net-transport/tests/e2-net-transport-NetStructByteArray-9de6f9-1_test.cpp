// Test for batch e2-net-transport-NetStructByteArray-9de6f9-1 (256-byte NetStructByteArray instance).
// Covers the constructor with a non-empty value (the size bits are 2048), the accessors, SetBuffer,
// GetBuffer, Write and the complete destructor. The Read path is PARTIAL in the ledger and is not
// exercised beyond the SetValue call it makes.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "net-transport/tb/net_struct_byte_array.hpp"

static int failures = 0;
#define CHECK(cond)                                                                 \
    do {                                                                            \
        if (!(cond)) {                                                              \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);    \
            ++failures;                                                             \
        }                                                                           \
    } while (0)

int main() {
    // Constant accessors.
    CHECK(NetStructByteArray<256u>::GetMaxBufferSize() == 256);

    // Empty constructor path: no block is allocated.
    {
        ByteArray empty;
        NetStructByteArray<256u> obj(empty);
        CHECK(obj.GetBufferPtr() == nullptr);
        CHECK(obj.GetBufferSize() == 0);
        CHECK(obj.GetSizeBits() == 2048);
        unsigned char out[4] = {0xAA, 0xAA, 0xAA, 0xAA};
        CHECK(obj.GetBuffer(out, 4) == 0);
        CHECK(out[0] == 0xAA);
    }

    // Constructor with a value: the bytes are deep-copied into the member.
    {
        ByteArray init;
        init.SetBuffer("XYZ", 3);
        NetStructByteArray<256u> obj(init);
        CHECK(obj.GetBufferSize() == 3);
        unsigned char out[8] = {0};
        CHECK(obj.GetBuffer(out, 8) == 3);
        CHECK(std::memcmp(out, "XYZ", 3) == 0);
    }

    // SetBuffer with an owned value, then Write: 16-bit size plus the bytes.
    {
        NetStructByteArray<256u> obj(ByteArray{});
        const unsigned char bytes[5] = {1, 2, 3, 4, 5};
        obj.SetBuffer(bytes, 5);
        CHECK(obj.GetBufferSize() == 5);
        CHECK(obj.GetBufferPtr() != nullptr && obj.GetBufferPtr() != bytes);

        unsigned char out[8] = {0};
        CHECK(obj.GetBuffer(out, 8) == 5);
        CHECK(std::memcmp(out, bytes, 5) == 0);

        NetBitStream stream(64);
        obj.Write(stream);
        CHECK(stream.WritePosition() == 16u + 40u);
    }  // destructor frees the block here

    if (failures == 0) {
        std::printf("e2 NetStructByteArray<256u> test: all checks passed\n");
        return 0;
    }
    std::printf("e2 NetStructByteArray<256u> test: %d failure(s)\n", failures);
    return 1;
}
