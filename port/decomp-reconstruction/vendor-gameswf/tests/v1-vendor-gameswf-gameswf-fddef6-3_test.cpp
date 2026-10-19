// Test for batch v1-vendor-gameswf-gameswf-fddef6-3: the SWF ADPCM decoder that
// gameswf::define_sound_loader (0x77d0d0) runs inline. The decoder is in
// vendor-gameswf/adpcm_dh2.hpp, so it runs without the gameswf core headers.
//
// The batch .cpp is not linked here: it needs the gameswf core, and this test needs only the header.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//   (no other source is linked)

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <vector>

#include "vendor-gameswf/adpcm_dh2.hpp"

namespace {

int g_failures = 0;

#define EXPECT_EQ(actual, expected)                                                        \
    do {                                                                                   \
        long long a_ = static_cast<long long>(actual);                                     \
        long long e_ = static_cast<long long>(expected);                                   \
        if (a_ != e_) {                                                                    \
            std::printf("FAIL %s:%d: %s = %lld, expected %lld\n", __FILE__, __LINE__,     \
                        #actual, a_, e_);                                                  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// MSB-first bit writer, the SWF bit order.
class BitWriter {
public:
    void put(std::uint32_t value, int bits) {
        for (int i = bits - 1; i >= 0; --i) {
            if (used_ == 0) {
                bytes_.push_back(0);
            }
            if ((value >> i) & 1u) {
                bytes_.back() = static_cast<std::uint8_t>(bytes_.back() | (0x80u >> used_));
            }
            used_ = (used_ + 1) % 8;
        }
    }
    void put_signed16(int value) { put(static_cast<std::uint32_t>(value) & 0xFFFFu, 16); }
    const std::vector<std::uint8_t>& bytes() const { return bytes_; }

private:
    std::vector<std::uint8_t> bytes_;
    int used_ = 0;
};

// Reader with the same two methods as gameswf::stream, reading MSB first.
class BitReader {
public:
    explicit BitReader(const std::vector<std::uint8_t>& data) : data_(data) {}

    int read_uint(int bits) {
        std::uint32_t v = 0;
        for (int i = 0; i < bits; ++i) {
            std::size_t byte = pos_ >> 3;
            std::uint32_t bit = 0;
            if (byte < data_.size()) {
                bit = (data_[byte] >> (7 - (pos_ & 7))) & 1u;
            }
            v = (v << 1) | bit;
            ++pos_;
        }
        return static_cast<int>(v);
    }

    int read_sint(int bits) {
        int v = read_uint(bits);
        if (bits > 0 && (v & (1 << (bits - 1)))) {
            v -= (1 << bits);
        }
        return v;
    }

private:
    const std::vector<std::uint8_t>& data_;
    std::size_t pos_ = 0;
};

// Mono, 2-bit codes, one block of three frames.
//   predictor 0, index 0. Frame 1: code 01 (m=1, +): delta (7 + 14) >> 1 = 10, index 0 + 2 = 2.
//   Frame 2: code 10 (m=0, -): step at index 2 is 9, delta -(9 >> 1) = -4, index 2 - 1 = 1.
void test_mono_two_bit() {
    BitWriter w;
    w.put(0, 2);          // code size: 2 bits
    w.put_signed16(0);    // block predictor
    w.put(0, 6);          // block index
    w.put(1, 2);          // frame 1
    w.put(2, 2);          // frame 2

    std::vector<std::int16_t> out(3, 0x7777);
    BitReader r(w.bytes());
    gameswf::dh2::adpcm_expand(r, out.data(), 3, false);
    EXPECT_EQ(out[0], 0);
    EXPECT_EQ(out[1], 10);
    EXPECT_EQ(out[2], 6);
}

// Stereo, 2-bit codes, two frames.
//   Left: predictor 0, index 0; code 00 (+3). Right: predictor 100, index 0; code 10 (-3).
void test_stereo_two_bit() {
    BitWriter w;
    w.put(0, 2);
    w.put_signed16(0);    // left predictor
    w.put(0, 6);          // left index
    w.put_signed16(100);  // right predictor
    w.put(0, 6);          // right index
    w.put(0, 2);          // frame 1 left code: m=0, +
    w.put(2, 2);          // frame 1 right code: m=0, -

    std::vector<std::int16_t> out(4, 0x7777);
    BitReader r(w.bytes());
    gameswf::dh2::adpcm_expand(r, out.data(), 2, true);
    EXPECT_EQ(out[0], 0);    // frame 0 left
    EXPECT_EQ(out[1], 100);  // frame 0 right
    EXPECT_EQ(out[2], 3);    // frame 1 left: 0 + (7 >> 1)
    EXPECT_EQ(out[3], 97);   // frame 1 right: 100 - (7 >> 1)
}

// Clamping, one block of two frames each. Step at index 60 is 2272.
//   Predictor 32000, code 01 (m=1, +): delta (2272 + 4544) >> 1 = 3408, 35408 clamps to 32767.
//   Predictor -32000, code 11 (m=1, -): delta -3408, -35408 clamps to -32768.
void test_clamp() {
    {
        BitWriter w;
        w.put(0, 2);
        w.put_signed16(32000);
        w.put(60, 6);
        w.put(1, 2);
        std::vector<std::int16_t> out(2, 0x7777);
        BitReader r(w.bytes());
        gameswf::dh2::adpcm_expand(r, out.data(), 2, false);
        EXPECT_EQ(out[0], 32000);
        EXPECT_EQ(out[1], 32767);
    }
    {
        BitWriter w;
        w.put(0, 2);
        w.put_signed16(-32000);
        w.put(60, 6);
        w.put(3, 2);
        std::vector<std::int16_t> out(2, 0x7777);
        BitReader r(w.bytes());
        gameswf::dh2::adpcm_expand(r, out.data(), 2, false);
        EXPECT_EQ(out[0], -32000);
        EXPECT_EQ(out[1], -32768);
    }
}

// Block boundary. 4098 mono frames: block 1 is 4096 frames (predictor 0, every code 00, so the
// predictor rises by 3 per frame), block 2 starts with predictor 1000 and its first frame is 1000.
void test_block_boundary() {
    BitWriter w;
    w.put(0, 2);
    w.put_signed16(0);
    w.put(0, 6);
    for (int i = 0; i < 4095; ++i) {
        w.put(0, 2);      // code 00: +3 at index 0 (index stays 0)
    }
    w.put_signed16(1000);
    w.put(0, 6);
    w.put(0, 2);          // frame 4097: 1000 + 3

    std::vector<std::int16_t> out(4098, 0x7777);
    BitReader r(w.bytes());
    gameswf::dh2::adpcm_expand(r, out.data(), 4098, false);
    EXPECT_EQ(out[0], 0);
    EXPECT_EQ(out[1], 3);
    EXPECT_EQ(out[4095], 3 * 4095);
    EXPECT_EQ(out[4096], 1000);
    EXPECT_EQ(out[4097], 1003);
}

// Zero frames read only the 2-bit code size and produce no output.
void test_zero_frames() {
    BitWriter w;
    w.put(3, 2);
    std::vector<std::int16_t> out(1, 0x7777);
    BitReader r(w.bytes());
    gameswf::dh2::adpcm_expand(r, out.data(), 0, true);
    EXPECT_EQ(out[0], 0x7777);
}

}  // namespace

int main() {
    test_mono_two_bit();
    test_stereo_two_bit();
    test_clamp();
    test_block_boundary();
    test_zero_frames();
    if (g_failures == 0) {
        std::printf("adpcm_dh2 tests passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
