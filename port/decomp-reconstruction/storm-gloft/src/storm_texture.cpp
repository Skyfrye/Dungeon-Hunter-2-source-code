// Texture decoders of libStormGLOFT.so (0x3b398..0x433a0). The original carries third-party code here (PowerVR SDK
// PVRTDecompressPVRTC/ETC, a DXT block decoder, an ATITC decoder, rg_etc1); this file holds functional equivalents written
// from the format specifications, NOT transcriptions (ledger status "partial"). PVRTC and ATITC are not implemented yet:
// they log and produce opaque magenta so a missing decoder is visible rather than silent.
#include "storm_gloft.hpp"
#include <android/log.h>
#include <cstring>

// output texel layout: little-endian RGBA bytes (R in the low byte), as GL_RGBA/GL_UNSIGNED_BYTE wants
static inline uint32_t rgba(unsigned r, unsigned g, unsigned b, unsigned a) { return r | (g << 8) | (b << 16) | (a << 24); }

static void colour565(unsigned c, unsigned& r, unsigned& g, unsigned& b) {
    r = (c >> 11) & 31; g = (c >> 5) & 63; b = c & 31;
    r = (r << 3) | (r >> 2); g = (g << 2) | (g >> 4); b = (b << 3) | (b >> 2);
}

// colour block shared by DXT1/3/5; `dxt1` enables the 3-colour + transparent mode
static void colourBlock(const unsigned char* s, uint32_t out[16], bool dxt1) {
    unsigned c0 = s[0] | (s[1] << 8), c1 = s[2] | (s[3] << 8);
    unsigned r[4], g[4], b[4], a[4] = {255, 255, 255, 255};
    colour565(c0, r[0], g[0], b[0]); colour565(c1, r[1], g[1], b[1]);
    if (c0 > c1 || !dxt1) {
        for (int k = 0; k < 3; ++k) {
            unsigned* p[3] = {r, g, b};
            p[k][2] = (2 * p[k][0] + p[k][1]) / 3; p[k][3] = (p[k][0] + 2 * p[k][1]) / 3;
        }
    } else {
        r[2] = (r[0] + r[1]) / 2; g[2] = (g[0] + g[1]) / 2; b[2] = (b[0] + b[1]) / 2;
        r[3] = g[3] = b[3] = 0; a[3] = 0;
    }
    unsigned bits = s[4] | (s[5] << 8) | (s[6] << 16) | ((unsigned)s[7] << 24);
    for (int i = 0; i < 16; ++i) { unsigned k = (bits >> (2 * i)) & 3; out[i] = rgba(r[k], g[k], b[k], a[k]); }
}

template <int BYTES, class F>
static void blocks(unsigned long w, unsigned long h, const unsigned char* src, uint32_t* dst, F decode) {
    unsigned long bw = (w + 3) / 4, bh = (h + 3) / 4;
    for (unsigned long by = 0; by < bh; ++by)
        for (unsigned long bx = 0; bx < bw; ++bx) {
            uint32_t t[16];
            decode(src + (by * bw + bx) * BYTES, t);
            for (int y = 0; y < 4 && by * 4 + y < h; ++y)
                for (int x = 0; x < 4 && bx * 4 + x < w; ++x) dst[(by * 4 + y) * w + bx * 4 + x] = t[y * 4 + x];
        }
}

void BlockDecompressImageDXT1(unsigned long w, unsigned long h, const unsigned char* s, uint32_t* d) {
    blocks<8>(w, h, s, d, [](const unsigned char* p, uint32_t* t) { colourBlock(p, t, true); });
}
void BlockDecompressImageDXT3(unsigned long w, unsigned long h, const unsigned char* s, uint32_t* d) {
    blocks<16>(w, h, s, d, [](const unsigned char* p, uint32_t* t) {
        colourBlock(p + 8, t, false);
        for (int i = 0; i < 16; ++i) { unsigned a = (p[i / 2] >> (4 * (i & 1))) & 15; t[i] = (t[i] & 0x00FFFFFFu) | ((a * 17) << 24); }
    });
}
void BlockDecompressImageDXT5(unsigned long w, unsigned long h, const unsigned char* s, uint32_t* d) {
    blocks<16>(w, h, s, d, [](const unsigned char* p, uint32_t* t) {
        colourBlock(p + 8, t, false);
        unsigned a[8] = {p[0], p[1]};
        if (a[0] > a[1]) for (int i = 1; i < 7; ++i) a[1 + i] = ((7 - i) * a[0] + i * a[1]) / 7;
        else { for (int i = 1; i < 5; ++i) a[1 + i] = ((5 - i) * a[0] + i * a[1]) / 5; a[6] = 0; a[7] = 255; }
        uint64_t bits = 0;
        for (int i = 0; i < 6; ++i) bits |= (uint64_t)p[2 + i] << (8 * i);
        for (int i = 0; i < 16; ++i) t[i] = (t[i] & 0x00FFFFFFu) | (a[(bits >> (3 * i)) & 7] << 24);
    });
}

// ETC1 (4x4 blocks, 8 bytes, big-endian fields), written to RGBA8888.
void DecompressETC1(unsigned char* src, unsigned char* dst, int w, int h) {
    static const int mod[8][2] = {{2, 8}, {5, 17}, {9, 29}, {13, 42}, {18, 60}, {24, 80}, {33, 106}, {47, 183}};
    auto clamp = [](int v) { return (unsigned)(v < 0 ? 0 : v > 255 ? 255 : v); };
    int bw = (w + 3) / 4, bh = (h + 3) / 4;
    for (int by = 0; by < bh; ++by)
        for (int bx = 0; bx < bw; ++bx) {
            const unsigned char* b = src + (by * bw + bx) * 8;
            bool diff = b[3] & 2, flip = b[3] & 1;
            int cw1 = (b[3] >> 5) & 7, cw2 = (b[3] >> 2) & 7;
            int base[2][3];
            if (diff) {
                for (int c = 0; c < 3; ++c) {
                    int a = b[c] >> 3, d = b[c] & 7; if (d > 3) d -= 8;
                    int e = a + d; if (e < 0) e = 0; if (e > 31) e = 31;
                    base[0][c] = (a << 3) | (a >> 2); base[1][c] = (e << 3) | (e >> 2);
                }
            } else {
                for (int c = 0; c < 3; ++c) {
                    int a = b[c] >> 4, e = b[c] & 15;
                    base[0][c] = a * 17; base[1][c] = e * 17;
                }
            }
            unsigned msb = (b[4] << 8) | b[5], lsb = (b[6] << 8) | b[7];
            for (int i = 0; i < 16; ++i) {   // i = x*4+y (column major)
                int x = i >> 2, y = i & 3;
                int sub = flip ? (y >= 2) : (x >= 2);
                int cw = sub ? cw2 : cw1;
                int idx = ((msb >> i) & 1) << 1 | ((lsb >> i) & 1);
                static const int sgn[4] = {1, 1, -1, -1}, mag[4] = {0, 1, 0, 1};
                int m = sgn[idx] * mod[cw][mag[idx]];
                int px = bx * 4 + x, py = by * 4 + y;
                if (px >= w || py >= h) continue;
                unsigned char* o = dst + (py * w + px) * 4;
                for (int c = 0; c < 3; ++c) o[c] = (unsigned char)clamp(base[sub][c] + m);
                o[3] = 255;
            }
        }
}

static void missing(const char* what, unsigned char* out, int n) {
    __android_log_print(ANDROID_LOG_WARN, "StormGLOFT", "%s decoder not reconstructed", what);
    for (int i = 0; i < n; ++i) { out[4 * i] = 255; out[4 * i + 1] = 0; out[4 * i + 2] = 255; out[4 * i + 3] = 255; }
}
void PVRTDecompressPVRTC(const void*, int, int w, int h, unsigned char* dst) { missing("PVRTC", dst, w * h); }
void DecompressATITC(const unsigned char*, uint32_t* dst, unsigned long w, unsigned long h, unsigned int) {
    missing("ATITC", (unsigned char*)dst, (int)(w * h));
}
