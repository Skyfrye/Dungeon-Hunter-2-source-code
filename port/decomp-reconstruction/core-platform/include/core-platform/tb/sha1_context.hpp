// SHA-1 context of libnativeinterface.so (batch p1-core-platform-lib_libnativeinterface-fd1381-0).
//
// The SHA1* functions are free functions with C linkage (no class). Layout from the ARM listing of
// SHA1Reset, SHA1Input and SHA1PadMessage: the context is 0x68 bytes, the digest words come first and the
// 64-byte message block starts at +0x1c. The field names follow the RFC 3174 reference that the function
// names match; the binary has no names for them.
// Definitions: core-platform/src/p1-core-platform-lib_libnativeinterface-fd1381-0.cpp.
#pragma once

#include <cstdint>

struct SHA1Context {
    uint32_t digest[5];          // +0x00 Intermediate_Hash (H0..H4)
    uint32_t length_low;         // +0x14 message length in bits, low word
    uint32_t length_high;        // +0x18 message length in bits, high word
    uint8_t message_block[64];   // +0x1c
    int message_block_index;     // +0x5c
    int computed;                // +0x60 non-zero after SHA1Result pads the message
    int corrupted;               // +0x64 non-zero after an input error (length overflow or input after result)
};

static_assert(sizeof(SHA1Context) == 0x68, "SHA1Context is 0x68 bytes in the original");

extern "C" {

// 0xedc SHA1Reset
void SHA1Reset(SHA1Context* context);

// 0x1128 SHA1Input
void SHA1Input(SHA1Context* context, const uint8_t* bytes, uint32_t length);

// 0x118c SHA1PadMessage
void SHA1PadMessage(SHA1Context* context);

// 0xf14 SHA1ProcessMessageBlock
void SHA1ProcessMessageBlock(SHA1Context* context);

// 0x123c SHA1Result: returns 1 on success, 0 when the context is corrupted
int SHA1Result(SHA1Context* context);

}  // extern "C"
