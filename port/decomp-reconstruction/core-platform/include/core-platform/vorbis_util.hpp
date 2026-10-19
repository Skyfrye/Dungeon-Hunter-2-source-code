// Helpers from the Ogg Vorbis decoder that the original embeds (stb_vorbis-style
// names). They are file-local in the original; here they have external linkage.
#pragma once

// 0x876364 bit_reverse: reverses the 32 bits of n.
unsigned int bit_reverse(unsigned int n);

// 0x8763e0 ilog: number of significant bits of n; 0 when n has its top bit set.
int ilog(unsigned int n);

// 0x8764d8 uint32_compare / 0x8764f8 point_compare: qsort-style three-way compare.
// Returns 0xffffffff when a < b, 1 when a > b, 0 when equal.
unsigned int uint32_compare(const void* a, const void* b);
unsigned int point_compare(const void* a, const void* b);

// 0x876518 imdct_step3_iter0_loop: butterfly pass over n/4 groups of eight floats.
void imdct_step3_iter0_loop(int n, float* e, int iOffset, int kOffset, float* a);

// 0x8767cc imdct_step3_inner_r_loop: the same butterfly with four twiddle pointers
// that advance by `stride` groups of four floats.
void imdct_step3_inner_r_loop(int n, float* e, int iOffset, int kOffset, float* a, int stride);

// 0x876b34 iter_54: eight-point butterfly ending at z.
void iter_54(float* z);

// 0x8784f4 dct_iv_slow: O(n^2) DCT-IV over n floats, in place. Partial: the VoxFree
// call on the stack copy at the end of the listing is not reproduced.
void dct_iv_slow(float* data, int n);
