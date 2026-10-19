// Batch v1-vendor-gameswf-gameswf-fddef6-0 (vendor-gameswf, owner gameswf).
//
// Reconstructed here (12): format_utf_text, the allocator internals and the filter-engine
// create/close pair, plus gaussian_kernel. The bodies follow the Hex-Rays pseudocode and the
// ARM assembly (tools/decomp_asm.py) for each address.
//
// Not defined here (8): string_printf, encode_utf8_from_wchar_generic<unsigned short>,
// encode_utf8_from_wchar_generic<unsigned int>, decode_next_unicode_character,
// encode_unicode_character, get_verbose_parse, get_verbose_debug, get_verbose_action. Their
// bodies match gameswf r1714 (vendor-gameswf/upstream/gameswf-r1714), so they are ledgered
// `upstream` and no DH2 body is needed.

#include <cmath>
#include <cstring>
#include <new>

#include "base/utf8.h"
#include "core-platform/memory.hpp"
#include "vendor-gameswf/filter_engine.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_utf_text.hpp"

namespace gameswf {

namespace {

// 2.5066282749... (sqrt(2 * pi)) as the float bit pattern 0x40206C99 used by the binary.
constexpr float kSqrt2Pi = 0x1.40d932p+1f;

}  // namespace

// 0x752a18 gameswf::format_utf_text(char const*, char*, int, bool)
void format_utf_text(const char* src, char* dst, int delim, bool flag)
{
    const char* next = src + 1;                            // R7: the byte after the current one
    unsigned char cur = static_cast<unsigned char>(*src);  // R3: the current byte
    bool after_mark = false;                               // R5: set after '!' or '?'
    int offset = 0;                                        // var_8: bytes written by the encoder

    while (cur != 0) {
        const int sc = static_cast<signed char>(cur);  // SXTB
        if (sc == ' ') {
            // A space before ! . : ; ? becomes U+00A0. The test is bit (byte - 33) of 0x46002001.
            const unsigned idx = static_cast<unsigned char>(static_cast<unsigned char>(*next) - 33);
            if (idx <= 0x1Eu && ((1u << idx) & 0x46002001u) != 0) {
                offset = 0;
                utf8::encode_unicode_character(dst, &offset, 0xA0u);
                dst += offset;
                cur = static_cast<unsigned char>(*next);  // the punctuation is handled next
                ++next;
                continue;
            }
            // Not replaced: the space goes on to the common path (the delimiter test is skipped).
        } else if (sc == delim) {
            *dst++ = static_cast<char>(0x11);
            cur = static_cast<unsigned char>(*next);
            ++next;
            continue;
        }

        if (sc == '!' || sc == '?') {
            after_mark = true;
        }
        *dst++ = static_cast<char>(cur);
        if (flag && after_mark) {
            offset = 0;
            utf8::encode_unicode_character(dst, &offset, 0x20u);
            after_mark = false;
            dst += offset;
        }
        cur = static_cast<unsigned char>(*next);
        ++next;
    }
    *dst = static_cast<char>(cur);  // the terminating NUL
}

// 0x752b2c gameswf::init_memory_allocator()
void init_memory_allocator() {}

// 0x752b30 gameswf::close_memory_allocator()
void close_memory_allocator() {}

// 0x752b34 gameswf::dump_memory_allocator()
void dump_memory_allocator() {}

// 0x752b38 gameswf::free_internal(void*, unsigned int)
// Thunk: the binary is "b SwfFree". The second argument is not used.
void free_internal(void* p, unsigned int /*size*/)
{
    SwfFree(p);
}

// 0x752b3c gameswf::malloc_internal(unsigned int, swf::MemHint, char const*, int)
// Thunk: "mov r1, #0; b SwfAlloc". The caller's hint is replaced by 0.
void* malloc_internal(unsigned int size, swf::MemHint /*hint*/, const char* file, int line)
{
    return SwfAlloc(size, static_cast<swf::MemHint>(0), file, line);
}

// 0x752b4c gameswf::realloc_internal(void*, unsigned int, unsigned int, swf::MemHint, char const*, int)
void* realloc_internal(void* p, unsigned int new_size, unsigned int old_size, swf::MemHint hint,
                       const char* file, int line)
{
    void* block = malloc_internal(new_size, hint, file, line);
    std::memcpy(block, p, old_size < new_size ? old_size : new_size);
    free_internal(p, old_size);
    return block;
}

// 0x752b9c gameswf::malloc_internal(unsigned int, swf::MemHint)
// Thunk: "mov r1, #0; b SwfAlloc". The caller's hint is replaced by 0.
void* malloc_internal(unsigned int size, swf::MemHint /*hint*/)
{
    return SwfAlloc(size, static_cast<swf::MemHint>(0));
}

// 0x752bac gameswf::realloc_internal(void*, unsigned int, unsigned int, swf::MemHint)
void* realloc_internal(void* p, unsigned int new_size, unsigned int old_size, swf::MemHint hint)
{
    void* block = malloc_internal(new_size, hint);
    std::memcpy(block, p, old_size < new_size ? old_size : new_size);
    free_internal(p, old_size);
    return block;
}

// 0x75756c gameswf::create_filter_engine()
void create_filter_engine()
{
    if (filter_engine::s_instance == nullptr) {
        // The binary calls operator new(0x68, 0) and then the constructor without a null check. 0x68 is the 32-bit object
        // size; the host object has pointer-width members (sizeof is larger), so the host allocation is sizeof(filter_engine),
        // as the other creators of this library do (create_alpha, create_render_handler_irrlicht).
        void* mem = operator new(sizeof(filter_engine), static_cast<swf::MemHint>(0));
        filter_engine* engine = new (mem) filter_engine();
        filter_engine::s_instance = engine;
    }
}

// 0x757840 gameswf::gaussian_kernel(float*, int)
// Single-precision throughout (VFP helpers in the binary). The result is 2 * radius + 1 weights,
// symmetric about the centre, normalised to sum 1. The binary's r0 result (the last weight) is
// not modelled, so the function is void.
void gaussian_kernel(float* kernel, int radius)
{
    const float sigma = static_cast<float>(radius) * 0.5f;  // v5
    const float scale = 1.0f / (sigma * kSqrt2Pi);          // v6
    const float denom = (sigma + sigma) * sigma;            // v9: 2 * sigma^2
    float sum = 0.0f;                                       // v10
    int v8 = -radius;                                       // runs from -radius up to radius
    if (radius >= v8) {
        int i = 0;
        do {
            const float e = static_cast<float>((radius - i) * v8) / denom;
            const float w = scale * std::exp(e);
            kernel[i] = w;
            sum = sum + w;
            ++v8;
            ++i;
        } while (radius >= v8);
    }
    // 2 * radius, as the binary's LSL #1 (sign tested by BMI).
    const int n = static_cast<int>(static_cast<unsigned>(radius) << 1);
    if (n >= 0) {
        int i = 0;
        do {
            kernel[i] = kernel[i] / sum;
            ++i;
        } while (n >= i);
    }
}

// 0x759140 gameswf::close_filter_engine()
void close_filter_engine()
{
    filter_engine* engine = filter_engine::s_instance;
    if (engine != nullptr) {
        engine->~filter_engine();
        free_internal(engine, 0u);  // the binary passes 0 as the second argument
    }
    filter_engine::s_instance = nullptr;
}

}  // namespace gameswf
