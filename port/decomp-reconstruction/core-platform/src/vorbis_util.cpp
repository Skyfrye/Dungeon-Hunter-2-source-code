#include "core-platform/vorbis_util.hpp"

#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <vector>

namespace {
// Bit length of each 4-bit value: the table ilog indexes into.
const signed char kLog2Of4Bit[16] = {0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4};
}  // namespace

// 0x876364 _ZL11bit_reversej
unsigned int bit_reverse(unsigned int n) {
    unsigned int v = (n & 0x55555555u) << 1 | (n & 0xAAAAAAAAu) >> 1;
    v = (v & 0x33333333u) << 2 | (v & 0xCCCCCCCCu) >> 2;
    v = (v & 0x0F0F0F0Fu) << 4 | (v & 0xF0F0F0F0u) >> 4;
    v = (v & 0x00FF00FFu) << 8 | (v & 0xFF00FFFFu) >> 8;
    return v >> 16 | v << 16;
}

// 0x8763e0 _ZL4ilogi
int ilog(unsigned int n) {
    if (n > 0x3FFF) {
        if (n < 0x1000000) {
            if (n > 0x7FFFF) {
                return kLog2Of4Bit[n >> 20] + 20;
            }
            return kLog2Of4Bit[n >> 15] + 15;
        }
        if (n > 0x1FFFFFFF) {
            if (static_cast<std::int32_t>(n) >= 0) {
                return kLog2Of4Bit[n >> 30] + 30;
            }
            return 0;
        }
        return kLog2Of4Bit[n >> 25] + 25;
    }
    if (n < 0x10) {
        return kLog2Of4Bit[n];
    }
    if (n > 0x1FF) {
        return kLog2Of4Bit[n >> 10] + 10;
    }
    return kLog2Of4Bit[n >> 5] + 5;
}

// 0x8764d8 _ZL14uint32_comparePKvS0_
unsigned int uint32_compare(const void* a, const void* b) {
    const unsigned int x = *static_cast<const unsigned int*>(a);
    const unsigned int y = *static_cast<const unsigned int*>(b);
    if (x < y) {
        return 0xFFFFFFFFu;
    }
    return y < x ? 1u : 0u;
}

// 0x8764f8 _Z13point_comparePKvS0_
unsigned int point_compare(const void* a, const void* b) {
    const unsigned short x = *static_cast<const unsigned short*>(a);
    const unsigned short y = *static_cast<const unsigned short*>(b);
    if (x < y) {
        return 0xFFFFFFFFu;
    }
    return y < x ? 1u : 0u;
}

// 0x876518 _ZL22imdct_step3_iter0_loopiPfiiS_
// Butterfly pass over n/4 groups of eight floats (Hex-Rays). `e` and `e + i_off`
// are read and written going backwards; `a` steps through the twiddle table.
void imdct_step3_iter0_loop(int n, float* e, int iOffset, int kOffset, float* a) {
    float* ePos = e + iOffset;
    float* kPos = ePos + kOffset;
    for (int count = n >> 2; count > 0; --count) {
        const float v9 = ePos[0] - kPos[0];
        const float v10 = ePos[-1] - kPos[-1];
        ePos[0] = ePos[0] + kPos[0];
        ePos[-1] = ePos[-1] + kPos[-1];
        kPos[0] = (v9 * a[0]) - (v10 * a[1]);
        kPos[-1] = (v10 * a[0]) + (v9 * a[1]);

        const float v11 = ePos[-2] - kPos[-2];
        const float v12 = ePos[-3] - kPos[-3];
        ePos[-2] = ePos[-2] + kPos[-2];
        ePos[-3] = ePos[-3] + kPos[-3];
        kPos[-2] = (v11 * a[8]) - (v12 * a[9]);
        kPos[-3] = (v12 * a[8]) + (v11 * a[9]);

        const float v13 = ePos[-4] - kPos[-4];
        const float v14 = ePos[-5] - kPos[-5];
        ePos[-4] = ePos[-4] + kPos[-4];
        ePos[-5] = ePos[-5] + kPos[-5];
        kPos[-4] = (v13 * a[16]) - (v14 * a[17]);
        kPos[-5] = (v14 * a[16]) + (v13 * a[17]);

        const float v15 = ePos[-6] - kPos[-6];
        const float v16 = ePos[-7] - kPos[-7];
        ePos[-6] = ePos[-6] + kPos[-6];
        ePos[-7] = ePos[-7] + kPos[-7];
        kPos[-6] = (v15 * a[24]) - (v16 * a[25]);
        kPos[-7] = (v16 * a[24]) + (v15 * a[25]);

        a += 32;
        ePos -= 8;
        kPos -= 8;
    }
}

// 0x8767cc _ZL24imdct_step3_inner_r_loopiPfiiS_i
// Same butterfly as the iter0 loop, with four twiddle pointers that each step
// `stride` groups of four floats (0x10 * stride bytes in the original).
void imdct_step3_inner_r_loop(int n, float* e, int iOffset, int kOffset, float* a, int stride) {
    const int count = n >> 2;
    const int advance = 4 * stride;
    float* ePos = e + iOffset;
    float* kPos = ePos + kOffset;
    float* t0 = a;
    float* t1 = a + stride;
    float* t2 = a + 2 * stride;
    float* t3 = a + 3 * stride;
    for (int i = 0; i < count; ++i) {
        const float v15 = ePos[0] - kPos[0];
        const float v16 = ePos[-1] - kPos[-1];
        ePos[0] = ePos[0] + kPos[0];
        ePos[-1] = ePos[-1] + kPos[-1];
        kPos[0] = (v15 * t0[0]) - (v16 * t0[1]);
        kPos[-1] = (v16 * t0[0]) + (v15 * t0[1]);
        t0 += advance;

        const float v17 = ePos[-2] - kPos[-2];
        const float v18 = ePos[-3] - kPos[-3];
        ePos[-2] = ePos[-2] + kPos[-2];
        ePos[-3] = ePos[-3] + kPos[-3];
        kPos[-2] = (v17 * t1[0]) - (v18 * t1[1]);
        kPos[-3] = (v18 * t1[0]) + (v17 * t1[1]);
        t1 += advance;

        const float v19 = ePos[-4] - kPos[-4];
        const float v20 = ePos[-5] - kPos[-5];
        ePos[-4] = ePos[-4] + kPos[-4];
        ePos[-5] = ePos[-5] + kPos[-5];
        kPos[-4] = (v19 * t2[0]) - (v20 * t2[1]);
        kPos[-5] = (v20 * t2[0]) + (v19 * t2[1]);
        t2 += advance;

        const float v21 = ePos[-6] - kPos[-6];
        const float v22 = ePos[-7] - kPos[-7];
        ePos[-6] = ePos[-6] + kPos[-6];
        ePos[-7] = ePos[-7] + kPos[-7];
        ePos -= 8;
        kPos[-6] = (v21 * t3[0]) - (v22 * t3[1]);
        kPos[-7] = (v22 * t3[0]) + (v21 * t3[1]);
        kPos -= 8;
        t3 += advance;
    }
}

// 0x876b34 _ZL7iter_54Pf
// Eight-point butterfly on the eight floats ending at z (Hex-Rays).
void iter_54(float* z) {
    const float v2 = z[0] - z[-4];
    const float v3 = z[0] + z[-4];
    const float v4 = z[-2] + z[-6];
    const float v5 = z[-2] - z[-6];
    z[0] = v3 + v4;
    const float v6 = z[-7];
    z[-2] = v3 - v4;
    const float v7 = z[-3] - v6;
    z[-4] = v2 + v7;
    const float v8 = z[-1];
    const float v9 = z[-5];
    z[-6] = v2 - v7;
    const float v10 = v8 - v9;
    const float v11 = v8 + v9;
    const float v12 = z[-3] + z[-7];
    z[-1] = v11 + v12;
    z[-3] = v11 - v12;
    z[-5] = v10 - v5;
    z[-7] = v10 + v5;
}

// 0x8784f4 _Z11dct_iv_slowPfi
// Direct O(n^2) DCT-IV, checked against the ARM listing and Hex-Rays: the prologue copies 4n bytes
// of the input to SP+0x10010, the table at SP+0x10 is table[i] = cos((double)i * pi/4 / (double)n)
// for i < 8n (the double constant 0x3FE921FB54442D18, __aeabi_dmul/__aeabi_ddiv/cos/__aeabi_d2f),
// and out[k] = sum_j in[j] * table[((2j+1)(2k+1)) & (8n-1)] is written over the input
// (__aeabi_fmul/__aeabi_fadd, k from 0 while 2k+1 != 2n+1).
// Partial, two named items, both on the storage only. (1) The listing's copy is an unbounded
// memcpy of 4n bytes into a fixed 8176-byte (0x1FF0) stack buffer; here it is a heap vector of n
// floats, so the original's overflow past n = 2044 is not reproduced (the values read are the
// same for every n the buffers hold). (2) The listing ends with VoxFree (0x310444, a tail call to
// CustomFree, which is free) on that stack address, on the n <= 0 path as well; the call is
// dropped because freeing a stack pointer aborts a host process. The table is likewise a fixed
// 16380-float stack array there and a vector here. Covered numerically by vorbis_util_test.
void dct_iv_slow(float* data, int n) {
    if (n <= 0) {
        return;
    }
    const int m = 8 * n;
    const std::vector<float> input(data, data + n);
    std::vector<float> table(static_cast<std::size_t>(m));
    for (int i = 0; i < m; ++i) {
        table[static_cast<std::size_t>(i)] =
            static_cast<float>(std::cos(static_cast<double>(i) * 0.785398163 / static_cast<double>(n)));
    }
    for (int k = 0; k < n; ++k) {
        const int step = 2 * k + 1;
        int index = step;
        float sum = 0.0f;
        for (int j = 0; j < n; ++j) {
            sum = sum + input[static_cast<std::size_t>(j)] * table[static_cast<std::size_t>(index & (m - 1))];
            index += 2 * step;
        }
        data[k] = sum;
    }
}
