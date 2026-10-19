// dh2_etc2: ETC2 / EAC block encoder and decoder for the remaster's GPU textures (port tool, not in the original; REMASTER.md).
//
//   dh2_etc2 encode <in.rgba> <width> <height> rgb|rgba <out.blocks>   raw RGBA8 in, blocks out; prints PSNR of the result
//   dh2_etc2 decode <in.blocks> <width> <height> rgb|rgba <out.rgba>   blocks in, raw RGBA8 out
//
// rgb  = GL_COMPRESSED_RGB8_ETC2       (8 bytes per 4x4 block)
// rgba = GL_COMPRESSED_RGBA8_ETC2_EAC  (16 bytes: the EAC alpha block, then the ETC2 colour block)
// Colour blocks use the ETC1-compatible modes (individual and differential, both subblock layouts, every intensity table) with the
// base colours searched around each subblock's mean; differential pairs stay inside 0..31 so no ETC2 T/H/planar mode is triggered.
// Alpha: a constant block is exact (table 13, modifier 0); otherwise every table with the multipliers around the block's range.
// Error is weighted (299, 587, 114) per channel. Blocks are spread over the hardware threads.
#include <algorithm>
#include <atomic>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <thread>
#include <vector>

namespace {

const int kEtcTable[8][2] = {{2, 8}, {5, 17}, {9, 29}, {13, 42}, {18, 60}, {24, 80}, {33, 106}, {47, 183}};
const int kEacTable[16][8] = {
    {-3, -6, -9, -15, 2, 5, 8, 14}, {-3, -7, -10, -13, 2, 6, 9, 12}, {-2, -5, -8, -13, 1, 4, 7, 12}, {-2, -4, -6, -13, 1, 3, 5, 12},
    {-3, -6, -8, -12, 2, 5, 7, 11}, {-3, -7, -9, -11, 2, 6, 8, 10}, {-4, -7, -8, -11, 3, 6, 7, 10}, {-3, -5, -8, -11, 2, 4, 7, 10},
    {-2, -6, -8, -10, 1, 5, 7, 9},  {-2, -5, -8, -10, 1, 4, 7, 9},  {-2, -4, -8, -10, 1, 3, 7, 9},  {-2, -5, -7, -10, 1, 4, 6, 9},
    {-3, -4, -7, -10, 2, 3, 6, 9},  {-1, -2, -3, -10, 0, 1, 2, 9},  {-4, -6, -8, -9, 3, 5, 7, 8},   {-3, -5, -7, -9, 2, 4, 6, 8}};
const int kW[3] = {299, 587, 114};
int g_radius = 1;  // base colours tried around the mean, per channel (quality: 1 fast, 2 better)

inline int clamp255(int v) { return v < 0 ? 0 : (v > 255 ? 255 : v); }
inline int expand4(int v) { return (v << 4) | v; }
inline int expand5(int v) { return (v << 3) | (v >> 2); }
// modifier of pixel index i (msb<<1 | lsb): 0 = +small, 1 = +large, 2 = -small, 3 = -large
inline int modifier(int table, int index) { return (index & 2) ? -kEtcTable[table][index & 1] : kEtcTable[table][index & 1]; }

struct Pixel { int c[3]; };

// Best table and indices for 8 pixels against one base colour; returns the weighted error.
long long fitSubblock(const Pixel* px, const int base[3], int& bestTable, int idx[8]) {
    long long best = -1;
    for (int t = 0; t < 8; ++t) {
        long long err = 0;
        int tmp[8];
        for (int p = 0; p < 8; ++p) {
            long long e = -1;
            for (int i = 0; i < 4; ++i) {
                const int m = modifier(t, i);
                long long d = 0;
                for (int ch = 0; ch < 3; ++ch) {
                    const int diff = clamp255(base[ch] + m) - px[p].c[ch];
                    d += static_cast<long long>(kW[ch]) * diff * diff;
                }
                if (e < 0 || d < e) { e = d; tmp[p] = i; }
            }
            err += e;
            if (best >= 0 && err >= best) break;
        }
        if (best < 0 || err < best) {
            best = err;
            bestTable = t;
            std::memcpy(idx, tmp, sizeof tmp);
        }
    }
    return best;
}

struct Candidate { int q[3]; long long err; int table; int idx[8]; };

// The quantised base colours around the mean of 8 pixels (bits = 4 or 5), each with its best table.
std::vector<Candidate> candidates(const Pixel* px, int bits, int radius) {
    double mean[3] = {0, 0, 0};
    for (int p = 0; p < 8; ++p)
        for (int ch = 0; ch < 3; ++ch) mean[ch] += px[p].c[ch] / 8.0;
    const int maxq = (1 << bits) - 1;
    int centre[3];
    for (int ch = 0; ch < 3; ++ch) centre[ch] = static_cast<int>(std::lround(mean[ch] * maxq / 255.0));
    std::vector<Candidate> out;
    for (int dr = -radius; dr <= radius; ++dr)
        for (int dg = -radius; dg <= radius; ++dg)
            for (int db = -radius; db <= radius; ++db) {
                Candidate c;
                c.q[0] = centre[0] + dr; c.q[1] = centre[1] + dg; c.q[2] = centre[2] + db;
                bool ok = true;
                for (int ch = 0; ch < 3; ++ch) ok = ok && c.q[ch] >= 0 && c.q[ch] <= maxq;
                if (!ok) continue;
                int base[3];
                for (int ch = 0; ch < 3; ++ch) base[ch] = bits == 4 ? expand4(c.q[ch]) : expand5(c.q[ch]);
                c.err = fitSubblock(px, base, c.table, c.idx);
                out.push_back(c);
            }
    return out;
}

// Pixel j of subblock s (0..7) in block coordinates for a flip value.
inline void subPixel(int flip, int s, int j, int& x, int& y) {
    if (!flip) { x = s * 2 + j / 4; y = j % 4; } else { x = j / 2; y = s * 2 + j % 2; }
}

uint64_t encodeColour(const Pixel block[16]) {  // block[x*4+y]
    long long bestErr = -1;
    uint64_t bestBits = 0;
    for (int flip = 0; flip < 2; ++flip) {
        Pixel sub[2][8];
        for (int s = 0; s < 2; ++s)
            for (int j = 0; j < 8; ++j) { int x, y; subPixel(flip, s, j, x, y); sub[s][j] = block[x * 4 + y]; }
        for (int diff = 0; diff < 2; ++diff) {
            const int bits = diff ? 5 : 4;
            std::vector<Candidate> c0 = candidates(sub[0], bits, g_radius), c1 = candidates(sub[1], bits, g_radius);
            long long err = -1;
            const Candidate *b0 = nullptr, *b1 = nullptr;
            for (const Candidate& a : c0)
                for (const Candidate& b : c1) {
                    if (diff) {
                        bool ok = true;
                        for (int ch = 0; ch < 3; ++ch) { const int d = b.q[ch] - a.q[ch]; ok = ok && d >= -4 && d <= 3; }
                        if (!ok) continue;
                    }
                    const long long e = a.err + b.err;
                    if (err < 0 || e < err) { err = e; b0 = &a; b1 = &b; }
                }
            if (b0 == nullptr || (bestErr >= 0 && err >= bestErr)) continue;
            bestErr = err;
            uint64_t v = 0;
            if (diff) {
                for (int ch = 0; ch < 3; ++ch) {
                    const int d = (b1->q[ch] - b0->q[ch]) & 7;
                    v |= static_cast<uint64_t>((b0->q[ch] << 3) | d) << (56 - ch * 8);
                }
            } else {
                for (int ch = 0; ch < 3; ++ch) v |= static_cast<uint64_t>((b0->q[ch] << 4) | b1->q[ch]) << (56 - ch * 8);
            }
            v |= static_cast<uint64_t>(b0->table) << 37;
            v |= static_cast<uint64_t>(b1->table) << 34;
            v |= static_cast<uint64_t>(diff) << 33;
            v |= static_cast<uint64_t>(flip) << 32;
            for (int s = 0; s < 2; ++s) {
                const Candidate* c = s ? b1 : b0;
                for (int j = 0; j < 8; ++j) {
                    int x, y;
                    subPixel(flip, s, j, x, y);
                    const int p = x * 4 + y;
                    v |= static_cast<uint64_t>(c->idx[j] & 1) << p;
                    v |= static_cast<uint64_t>((c->idx[j] >> 1) & 1) << (16 + p);
                }
            }
            bestBits = v;
        }
    }
    return bestBits;
}

void decodeColour(uint64_t v, int out[16][3]) {
    const int diff = (v >> 33) & 1, flip = (v >> 32) & 1;
    int base[2][3];
    for (int ch = 0; ch < 3; ++ch) {
        const int byte = (v >> (56 - ch * 8)) & 0xff;
        if (diff) {
            const int q0 = byte >> 3;
            int d = byte & 7;
            if (d >= 4) d -= 8;
            base[0][ch] = expand5(q0);
            base[1][ch] = expand5(q0 + d);
        } else {
            base[0][ch] = expand4(byte >> 4);
            base[1][ch] = expand4(byte & 15);
        }
    }
    const int table[2] = {static_cast<int>((v >> 37) & 7), static_cast<int>((v >> 34) & 7)};
    for (int x = 0; x < 4; ++x)
        for (int y = 0; y < 4; ++y) {
            const int p = x * 4 + y;
            const int s = flip ? (y >= 2) : (x >= 2);
            const int index = static_cast<int>(((v >> p) & 1) | (((v >> (16 + p)) & 1) << 1));
            for (int ch = 0; ch < 3; ++ch) out[p][ch] = clamp255(base[s][ch] + modifier(table[s], index));
        }
}

uint64_t encodeAlpha(const int a[16]) {  // a[x*4+y]
    int lo = 255, hi = 0;
    for (int i = 0; i < 16; ++i) { lo = std::min(lo, a[i]); hi = std::max(hi, a[i]); }
    if (lo == hi) {  // table 13 has a zero modifier at index 4
        uint64_t v = static_cast<uint64_t>(lo) << 56 | static_cast<uint64_t>(1) << 52 | static_cast<uint64_t>(13) << 48;
        for (int p = 0; p < 16; ++p) v |= static_cast<uint64_t>(4) << (45 - 3 * p);
        return v;
    }
    long long bestErr = -1;
    uint64_t best = 0;
    for (int t = 0; t < 16; ++t) {
        const int span = kEacTable[t][7] - kEacTable[t][3];
        const int m0 = std::max(1, (hi - lo) / span - 1), m1 = std::min(15, (hi - lo) / span + 2);
        for (int m = m0; m <= m1; ++m) {
            const int centre = (lo + hi) / 2 - (kEacTable[t][3] + kEacTable[t][7]) * m / 2;
            for (int b = centre - 3; b <= centre + 3; ++b) {
                if (b < 0 || b > 255) continue;
                long long err = 0;
                int idx[16];
                for (int p = 0; p < 16; ++p) {
                    int e = -1;
                    for (int i = 0; i < 8; ++i) {
                        const int d = clamp255(b + kEacTable[t][i] * m) - a[p];
                        if (e < 0 || d * d < e) { e = d * d; idx[p] = i; }
                    }
                    err += e;
                }
                if (bestErr < 0 || err < bestErr) {
                    bestErr = err;
                    uint64_t v = static_cast<uint64_t>(b) << 56 | static_cast<uint64_t>(m) << 52 | static_cast<uint64_t>(t) << 48;
                    for (int p = 0; p < 16; ++p) v |= static_cast<uint64_t>(idx[p]) << (45 - 3 * p);
                    best = v;
                }
            }
        }
    }
    return best;
}

void decodeAlpha(uint64_t v, int out[16]) {
    const int b = (v >> 56) & 0xff, m = (v >> 52) & 15, t = (v >> 48) & 15;
    for (int p = 0; p < 16; ++p) out[p] = clamp255(b + kEacTable[t][(v >> (45 - 3 * p)) & 7] * m);
}

void put64(uint8_t* dst, uint64_t v) {
    for (int i = 0; i < 8; ++i) dst[i] = static_cast<uint8_t>(v >> (56 - 8 * i));
}
uint64_t get64(const uint8_t* src) {
    uint64_t v = 0;
    for (int i = 0; i < 8; ++i) v = (v << 8) | src[i];
    return v;
}

bool readFile(const char* path, std::vector<uint8_t>& data) {
    FILE* f = std::fopen(path, "rb");
    if (!f) return false;
    std::fseek(f, 0, SEEK_END);
    data.resize(static_cast<size_t>(std::ftell(f)));
    std::fseek(f, 0, SEEK_SET);
    const bool ok = std::fread(data.data(), 1, data.size(), f) == data.size();
    std::fclose(f);
    return ok;
}
bool writeFile(const char* path, const std::vector<uint8_t>& data) {
    FILE* f = std::fopen(path, "wb");
    if (!f) return false;
    const bool ok = std::fwrite(data.data(), 1, data.size(), f) == data.size();
    std::fclose(f);
    return ok;
}

void decode(const std::vector<uint8_t>& blocks, int w, int h, bool alpha, std::vector<uint8_t>& rgba) {
    const int bw = (w + 3) / 4, bh = (h + 3) / 4, bytes = alpha ? 16 : 8;
    rgba.assign(static_cast<size_t>(w) * h * 4, 255);
    for (int by = 0; by < bh; ++by)
        for (int bx = 0; bx < bw; ++bx) {
            const uint8_t* src = blocks.data() + (static_cast<size_t>(by) * bw + bx) * bytes;
            int col[16][3], al[16];
            decodeColour(get64(src + (alpha ? 8 : 0)), col);
            if (alpha) decodeAlpha(get64(src), al);
            for (int x = 0; x < 4; ++x)
                for (int y = 0; y < 4; ++y) {
                    const int px = bx * 4 + x, py = by * 4 + y;
                    if (px >= w || py >= h) continue;
                    uint8_t* d = &rgba[(static_cast<size_t>(py) * w + px) * 4];
                    for (int ch = 0; ch < 3; ++ch) d[ch] = static_cast<uint8_t>(col[x * 4 + y][ch]);
                    d[3] = static_cast<uint8_t>(alpha ? al[x * 4 + y] : 255);
                }
        }
}

}  // namespace

int main(int argc, char** argv) {
    if (argc == 8) g_radius = std::max(1, std::min(3, std::atoi(argv[7])));
    if (argc != 7 && argc != 8) {
        std::fprintf(stderr, "usage: dh2_etc2 encode|decode <in> <width> <height> rgb|rgba <out> [radius 1..3]\n");
        return 2;
    }
    const bool encodeMode = std::strcmp(argv[1], "encode") == 0;
    const int w = std::atoi(argv[3]), h = std::atoi(argv[4]);
    const bool alpha = std::strcmp(argv[5], "rgba") == 0;
    std::vector<uint8_t> in;
    if (!readFile(argv[2], in) || w <= 0 || h <= 0) {
        std::fprintf(stderr, "cannot read %s\n", argv[2]);
        return 1;
    }
    const int bw = (w + 3) / 4, bh = (h + 3) / 4, bytes = alpha ? 16 : 8;
    if (!encodeMode) {
        std::vector<uint8_t> rgba;
        decode(in, w, h, alpha, rgba);
        return writeFile(argv[6], rgba) ? 0 : 1;
    }
    if (in.size() < static_cast<size_t>(w) * h * 4) {
        std::fprintf(stderr, "%s: %zu bytes, %dx%d RGBA needs %d\n", argv[2], in.size(), w, h, w * h * 4);
        return 1;
    }
    std::vector<uint8_t> out(static_cast<size_t>(bw) * bh * bytes);
    std::atomic<int> nextRow{0};
    auto work = [&]() {
        for (int by = nextRow++; by < bh; by = nextRow++) {
            for (int bx = 0; bx < bw; ++bx) {
                Pixel block[16];
                int al[16];
                for (int x = 0; x < 4; ++x)
                    for (int y = 0; y < 4; ++y) {  // edge texels repeat into a partial block
                        const int px = std::min(bx * 4 + x, w - 1), py = std::min(by * 4 + y, h - 1);
                        const uint8_t* s = &in[(static_cast<size_t>(py) * w + px) * 4];
                        for (int ch = 0; ch < 3; ++ch) block[x * 4 + y].c[ch] = s[ch];
                        al[x * 4 + y] = s[3];
                    }
                uint8_t* dst = &out[(static_cast<size_t>(by) * bw + bx) * bytes];
                if (alpha) put64(dst, encodeAlpha(al));
                put64(dst + (alpha ? 8 : 0), encodeColour(block));
            }
        }
    };
    const unsigned n = std::max(1u, std::thread::hardware_concurrency());
    std::vector<std::thread> pool;
    for (unsigned i = 0; i < n; ++i) pool.emplace_back(work);
    for (std::thread& t : pool) t.join();
    // quality report: PSNR of the colour (and alpha) after a decode
    std::vector<uint8_t> back;
    decode(out, w, h, alpha, back);
    double se[4] = {0, 0, 0, 0};
    for (size_t i = 0; i < static_cast<size_t>(w) * h; ++i)
        for (int ch = 0; ch < 4; ++ch) { const double d = static_cast<double>(back[i * 4 + ch]) - in[i * 4 + ch]; se[ch] += d * d; }
    const double n_px = static_cast<double>(w) * h;
    const double rgbMse = (se[0] + se[1] + se[2]) / (3.0 * n_px), aMse = se[3] / n_px;
    std::printf("%dx%d %s rgb PSNR %.2f dB%s", w, h, alpha ? "rgba" : "rgb", rgbMse > 0 ? 10.0 * std::log10(255.0 * 255.0 / rgbMse) : 99.0,
                alpha ? "" : "\n");
    if (alpha) std::printf(", alpha PSNR %.2f dB\n", aMse > 0 ? 10.0 * std::log10(255.0 * 255.0 / aMse) : 99.0);
    return writeFile(argv[6], out) ? 0 : 1;
}
