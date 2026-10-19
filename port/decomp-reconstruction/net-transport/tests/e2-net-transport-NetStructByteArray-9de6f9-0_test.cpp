// Test for batch e2-net-transport-NetStructByteArray-9de6f9-0 (64-byte NetStructByteArray instance).
// Covers the empty constructor, the accessors, GetBuffer, Write and the complete destructor. The
// constructor and Read with a non-empty value are not exercised here; the Read path is PARTIAL in the ledger.
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <cstdio>

#include "net-transport/tb/net_struct_byte_array.hpp"

static int failures = 0;
#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++failures;                                                \
        }                                                              \
    } while (0)

int main() {
    // Empty constructor path: no block is allocated, so nothing is freed twice.
    {
        ByteArray empty;
        NetStructByteArray<64u> obj(empty);
        CHECK(obj.GetBufferPtr() == nullptr);
        CHECK(obj.GetBufferSize() == 0);
        CHECK(obj.GetMaxBufferSize() == 64);
        CHECK(obj.GetSizeBits() == 512);
        unsigned char out[4] = {0xAA, 0xAA, 0xAA, 0xAA};
        CHECK(obj.GetBuffer(out, 4) == 0);
        CHECK(out[0] == 0xAA);
    }

    // Owned value: the block is given to the member by SetValue and freed by the destructor.
    {
        NetStructByteArray<64u> obj(ByteArray{});
        ByteArray value;
        value.SetBuffer("ABCDE", 5);
        obj.SetValue(value);
        CHECK(obj.GetBufferPtr() != nullptr && obj.GetBufferPtr() != value.data);  // SetValue deep-copies
        CHECK(obj.GetBufferSize() == 5);
        // value keeps its own block; its destructor frees it at the end of the scope

        unsigned char out[8] = {0};
        CHECK(obj.GetBuffer(out, 8) == 5);
        CHECK(std::memcmp(out, "ABCDE", 5) == 0);

        // Write: 16-bit size, then the bytes. Total 16 + 5 * 8 bits.
        NetBitStream stream(64);
        obj.Write(stream);
        CHECK(stream.WritePosition() == 16u + 40u);
    }  // destructor frees the block here

    if (failures == 0) {
        std::printf("e2 NetStructByteArray<64u> test: all checks passed\n");
        return 0;
    }
    std::printf("e2 NetStructByteArray<64u> test: %d failure(s)\n", failures);
    return 1;
}
