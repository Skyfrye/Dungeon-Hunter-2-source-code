// pixel_format::convert (0x5f95ac) and the helpers of its anonymous namespace.
//
// Evidence (libDungeonHunter2.so, ARM, Hex-Rays pseudocode and listing):
//   convert            0x5f95ac  pitch defaults, copy / in-place checks, destination and source compression tests, then the
//                                luminance arm (destination flag 4), the channel-swizzle arm (same packed type) or the packed arms
//   convertPacked      0x5f4fe8  switch on getPackedType(dst) | 4 * getPackedType(src); keys 0, 5 and 10 call convertPackedImpl
//                                <uchar,uchar> 0x5f2fdc / <ushort,ushort> 0x5f0f60 / <uint,uint> 0x5eeef4, keys 1, 2, 4, 6, 8, 9 inline
//                                the same code for the mixed widths (the dispatch trees of all nine were compared: they are the same)
//   converters         0x5ee5e8 SPackedConverter<0,2>, 0x5ee790 SRGBIndexedPackedConverter, 0x5ee958 SPackedConverter<1,0>,
//                                0x5eeae4 SAlphaIndexedPackedConverter (operator() 0x5ededc), 0x5eed1c SAlphaUpscalePackedConverter
//                                (operator() 0x5edfd4), SPackedConverter plain = the loop the dispatch inlines
//   decompress         0x5fd894  PVRTC through PVRTCDecompress (game-app, 0x69f768)
//   copy               0x5ee40c  the same-format transfer
//   LUT tables         0x8e3694 (1-bit), 0x8e3698 (2-bit), 0x8e36a0 (4-bit)
#include "glitch-video/pixel_format_convert.hpp"
#include "core-platform/frame_prof.hpp"

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <vector>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-video/deps/os_logging.hpp"
#include "glitch-video/video_names.hpp"

// 0x69f768 PVRTCDecompress(void const*, int, int, int, unsigned char*): game-app (game/include/dh2/global/pvrtc_decompress.hpp).
int PVRTCDecompress(const void* compressed, int do2bitMode, int xDim, int yDim, std::uint8_t* result);

namespace glitch::video::pixel_format {

namespace {

using detail::PFDTable;
using detail::SFormatEntry;

// ARM register shifts by 32 or more give zero.
uint32_t shr(uint32_t value, unsigned shift) { return shift >= 32 ? 0 : value >> shift; }
uint32_t shl(uint32_t value, unsigned shift) { return shift >= 32 ? 0 : value << shift; }

// Pixels are little-endian words of 1 to 4 bytes (the ARM loads them as bytes, half words or words, or a half word and a byte).
uint32_t loadPixel(const uint8_t* p, unsigned bytes) {
    uint32_t v = 0;
    for (unsigned i = 0; i < bytes; ++i) v |= static_cast<uint32_t>(p[i]) << (8 * i);
    return v;
}

void storePixel(uint8_t* p, unsigned bytes, uint32_t v) {
    for (unsigned i = 0; i < bytes; ++i) p[i] = static_cast<uint8_t>(v >> (8 * i));
}

// 0x5ee40c _ZN6glitch5video12pixel_format12_GLOBAL__N_14copyENS0_14E_PIXEL_FORMATEPKvjPvjjjb
// The same-format transfer that convert returns for srcFormat == dstFormat (its copy() call at the top of
// 0x5f95ac). Reconstructed from the listing line by line:
//   * A compressed row (flags bit 8) with flip set logs "flipping compressed pixel format not supported"
//     (level 3) and returns 0 (0x5ee424..0x5ee440).
//   * The row count is the height divided by the row's block height (+0x25); the byte count per row is
//     computePitch(format, width) (0x5ee44c..0x5ee45c).
//   * src == dst: a different pitch logs "Bad conversion parameters" / "in-place conversion with different
//     pitch" and returns 0; an equal pitch without flip returns 1 without touching anything; with flip the
//     rows are swapped from the outside in through one row-sized block of the process buffer heap, with
//     the heap-excess flag saved, set and restored around the allocation (0x5ee468..0x5ee510).
//   * src != dst: flip writes the destination rows backwards (the destination pointer advances to the last
//     row and the step is -dstPitch); when the row pitch equals both pitches one memcpy covers the whole
//     block, otherwise one memcpy per row (0x5ee514..0x5ee5e8).
// Deviations (both host-necessitated, neither observable):
//   * A block height of 0 (only the "no row" entry, format 39) divides by zero in the listing; the ARM
//     runtime helper returns 0 there, so this port copies no rows instead of trapping.
//   * The listing adjusts the flip destination pointer by dstPitch * (rows - 1) before it tests the row
//     count; at rows == 0 that is a wrapped pointer the listing never dereferences, so this port skips the
//     adjustment and the (already skipped) loop.
//   * The in-place flip would memcpy through a null process-buffer block; this port restores the heap-excess
//     flag and returns 0 there instead of faulting.
int copy(E_PIXEL_FORMAT format, const void* src, uint32_t srcPitch, void* dst, uint32_t dstPitch, uint32_t width,
         uint32_t height, bool flip) {
    const SFormatEntry& row = PFDTable[format];
    if ((row.flags & 8) != 0 && flip) {
        os::Printer::log("flipping compressed pixel format not supported", os::ELL_ERROR);
        return 0;
    }

    const uint32_t pitch = computePitch(format, width);
    const uint32_t rows = row.blockHeight == 0 ? 0 : height / row.blockHeight;

    const auto* from = static_cast<const uint8_t*>(src);
    auto* to = static_cast<uint8_t*>(dst);

    if (from == to) {
        if (srcPitch != dstPitch) {
            os::Printer::log("Bad conversion parameters", "in-place conversion with different pitch", os::ELL_ERROR);
            return 0;
        }
        if (!flip) return 1;

        // Reverse the rows in place, one row at a time, through a single row-sized heap block.
        const bool previousExcess = core::isProcessBufferHeapExcessEnabled();
        core::setProcessBufferHeapExcessEnabled(true);
        uint8_t* temp = reinterpret_cast<uint8_t*>(core::allocProcessBuffer(static_cast<int>(pitch)));
        if (temp == nullptr) {
            core::setProcessBufferHeapExcessEnabled(previousExcess);
            return 0;
        }
        uint8_t* upper = to;
        if (rows != 0) {
            upper += static_cast<std::ptrdiff_t>(rows - 1) * srcPitch;
            uint8_t* lower = to;
            while (upper >= lower) {
                std::memcpy(temp, upper, pitch);
                std::memcpy(upper, lower, pitch);
                upper -= srcPitch;
                uint8_t* const first = lower;
                lower += srcPitch;
                std::memcpy(first, temp, pitch);
            }
        }
        core::releaseProcessBuffer(temp);
        core::setProcessBufferHeapExcessEnabled(previousExcess);
        return 1;
    }

    if (flip) {
        if (rows != 0) to += static_cast<std::ptrdiff_t>(rows - 1) * dstPitch;
        const std::ptrdiff_t step = -static_cast<std::ptrdiff_t>(dstPitch);
        for (uint32_t r = 0; r < rows; ++r) {
            std::memcpy(to, from, pitch);
            from += srcPitch;
            to += step;
        }
        return 1;
    }

    if (pitch == dstPitch && pitch == srcPitch) {
        std::memcpy(to, from, static_cast<size_t>(rows) * pitch);
        return 1;
    }
    for (uint32_t r = 0; r < rows; ++r) {
        std::memcpy(to, from, pitch);
        from += srcPitch;
        to += dstPitch;
    }
    return 1;
}

// 0x5edca4 _ZN6glitch5video12pixel_format12_GLOBAL__N_135SPackedRGBtoLuminanceAlphaConverterC1ENS0_14E_PIXEL_FORMATE
// The converter of the "destination wants luminance" arm of convert (0x5f9670..0x5f9950). Built from the
// SOURCE row: the three weights 0.3 / 0.59 / 0.11 divided by (key[i] >> shift[i]), the three channel masks
// and shifts, then the alpha mask +0x10, the alpha shift +0x1b, the scale 255 / (alphaMask >> alphaShift) at
// +0x20 and the OR value at +0x24, which is (alphaMask >> alphaShift) when the row has no alpha flag and 0
// when it has. Layout confirmed instruction by instruction against the constructor listing (the running
// +1 byte cursor at +0x18 reads the channel shifts, so the two byte arrays interleave).
struct SLuminanceConverter {
    float weight[3] = {};          // +0x00
    uint32_t channelMask[3] = {};  // +0x0c
    uint8_t channelShift[3] = {};  // +0x18
    uint8_t alphaShift = 0;        // +0x1b
    uint32_t alphaMask = 0;        // +0x1c
    float alphaScale = 0.0f;       // +0x20
    uint32_t alphaMaxBits = 0;     // +0x24

    explicit SLuminanceConverter(E_PIXEL_FORMAT src) {
        const SFormatEntry& row = PFDTable[src];
        static const float kWeights[3] = {0.3f, 0.59f, 0.11f};
        for (int i = 0; i < 3; ++i) {
            const uint32_t mask = row.key[i];
            const uint8_t shift = row.unknown18[4 + i];
            weight[i] = kWeights[i] / static_cast<float>(shr(mask, shift));
            channelMask[i] = mask;
            channelShift[i] = shift;
        }
        alphaMask = row.key[3];
        alphaShift = row.unknown18[7];
        const uint32_t maxAlpha = shr(alphaMask, alphaShift);
        alphaScale = 255.0f / static_cast<float>(maxAlpha);
        alphaMaxBits = (row.flags & 1) != 0 ? 0 : maxAlpha;
    }

    // The accumulated channel value as the listing's expression builds it: the (x & mask) >> shift terms are
    // summed as floats and the CALLER applies the destination scale and truncates once.
    float luminance(uint32_t pixel) const {
        float sum = 0.0f;
        for (int i = 0; i < 3; ++i) {
            sum += static_cast<float>(shr(pixel & channelMask[i], channelShift[i])) * weight[i];
        }
        return sum;
    }

    // (int)((float)(alphaMaxBits | ((x & alphaMask) >> alphaShift)) * alphaScale), the second byte of the
    // luminance/alpha output form.
    uint32_t alpha(uint32_t pixel) const {
        const uint32_t combined = alphaMaxBits | shr(pixel & alphaMask, alphaShift);
        return static_cast<uint32_t>(static_cast<float>(combined) * alphaScale);
    }
};

// The one-, two- and four-bit tables of SPackedConverterBase (OneBitCvtTable 0x8e3694, TwoBitsCvtTable 0x8e3698, FourBitsCvtTable
// 0x8e36a0): entry i is the index scaled to 16 bits.
const uint16_t kOneBitCvtTable[2] = {0x0000, 0xffff};
const uint16_t kTwoBitsCvtTable[4] = {0x0000, 0x5555, 0xaaaa, 0xffff};
const uint16_t kFourBitsCvtTable[16] = {0x0000, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777,
                                        0x8888, 0x9999, 0xaaaa, 0xbbbb, 0xcccc, 0xdddd, 0xeeee, 0xffff};

// The table the ctors pick for a source channel of that many bits (null for any other width: the original stores a null pointer and
// would fault when the table is used; here a null table yields 0).
const uint16_t* cvtTableFor(unsigned bits) {
    switch (bits) {
        case 1: return kOneBitCvtTable;
        case 2: return kTwoBitsCvtTable;
        case 4: return kFourBitsCvtTable;
        default: return nullptr;
    }
}

uint32_t tableValue(const uint16_t* table, uint32_t index) { return table != nullptr ? table[index] : 0u; }

// The converter objects of the packed path (one per format pair, built by the same constructor loops as the binary's templates):
//   kPlain         the inline loop the dispatch runs when nothing widens: every channel is `dstMask & (x >> rs << ls)`.
//   kReplicate     SPackedConverter<1,0>  (0x5ee958): the colour channels also OR in a replicated copy of the source bits.
//   kRgbIndexed    SRGBIndexedPackedConverter<SPackedConverter<2,0>> (0x5ee790): the colour channels through the 1/2/4-bit table.
//   kAlphaIndexed0 SPackedConverter<0,2>  (0x5ee5e8): plain colour channels, the alpha channel through the table.
//   kAlphaUpscale  SAlphaUpscalePackedConverter<SPackedConverter<1,1>, ...> (ctor 0x5eed1c, operator() 0x5edfd4): replicated colour
//                  channels and a replicated alpha channel.
//   kAlphaIndexed  SAlphaIndexedPackedConverter<SPackedConverter<1,2>, ...> (ctor 0x5eeae4, operator() 0x5ededc): replicated colour
//                  channels and the alpha channel through the table.
// Layout of the binary (offsets in the comments): +0x00 destination mask per channel, +0x10 right shift per channel, +0x14 left
// shift per channel, +0x18 the OR value (the destination alpha mask when only the destination has alpha), then the per-kind
// members.
enum class EPackedConverter : uint8_t { kPlain, kReplicate, kRgbIndexed, kAlphaIndexed0, kAlphaUpscale, kAlphaIndexed };

struct SPackedConverter {
    EPackedConverter kind = EPackedConverter::kPlain;
    uint32_t dstMask[4] = {};                 // +0x00 .. +0x0c: the destination key words
    uint8_t rightShift[4] = {};               // +0x10 .. +0x13
    uint8_t leftShift[4] = {};                // +0x14 .. +0x17
    uint32_t orValue = 0;                     // +0x18
    // kReplicate / kAlphaUpscale / kAlphaIndexed, colour channels 0..2:
    uint32_t srcMask[3] = {};                 // +0x1c .. +0x24: the source key words
    uint32_t replicaMask[3] = {};             // +0x28 .. +0x30: srcMask & (srcMask << (2 * srcBits - dstBits))
    uint8_t replicaRightShift[3] = {};        // +0x34 .. +0x36: right shift + (2 * srcBits - dstBits)
    uint8_t replicaLeftShift[3] = {};         // +0x37 .. +0x39: the destination shift
    // kRgbIndexed: one table per colour channel.
    const uint16_t* rgbTable[3] = {};
    uint8_t rgbTableShift[3] = {};            // 16 - destination bits
    // The alpha lookup (kAlphaIndexed0, kAlphaIndexed) and the alpha replica (kAlphaUpscale).
    const uint16_t* alphaTable = nullptr;
    uint32_t alphaSrcMask = 0;
    uint8_t alphaTableShift = 0;              // 16 - destination alpha bits
    uint32_t alphaReplicaMask = 0;
    uint8_t alphaReplicaRightShift = 0;
    uint8_t alphaReplicaLeftShift = 0;

    // The shared constructor loop (all of 0x5ee5e8, 0x5ee790, 0x5ee958, 0x5eeae4, 0x5eed1c and the dispatch's inline plain loop):
    // the OR value is all ones when the destination has an alpha channel and the source has none, then masked to the destination
    // alpha mask; each channel starts with the source shift on the right and the destination shift on the left, a wider source is
    // reduced by shifting the surplus bits out (right shift + surplus), a destination up to twice as wide is aligned at the top
    // (left shift + growth).
    SPackedConverter(EPackedConverter converterKind, E_PIXEL_FORMAT srcFormat, E_PIXEL_FORMAT dstFormat) : kind(converterKind) {
        const SFormatEntry& s = PFDTable[srcFormat];
        const SFormatEntry& d = PFDTable[dstFormat];
        orValue = ((d.flags & 1) == 0 || (s.flags & 1) != 0) ? 0u : 0xffffffffu;
        for (int c = 0; c < 4; ++c) {
            const unsigned sourceBits = s.unknown18[c];
            const unsigned destinationBits = d.unknown18[c];
            const unsigned sourceShift = s.unknown18[4 + c];
            const unsigned destinationShift = d.unknown18[4 + c];
            dstMask[c] = d.key[c];
            rightShift[c] = static_cast<uint8_t>(sourceShift);
            leftShift[c] = static_cast<uint8_t>(destinationShift);
            if (sourceBits <= destinationBits) {
                if (destinationBits <= 2 * sourceBits) leftShift[c] = static_cast<uint8_t>(destinationBits + destinationShift - sourceBits);
            } else {
                rightShift[c] = static_cast<uint8_t>(sourceBits + sourceShift - destinationBits);
            }
        }
        orValue &= dstMask[3];

        const bool replicates = kind == EPackedConverter::kReplicate || kind == EPackedConverter::kAlphaUpscale ||
                                kind == EPackedConverter::kAlphaIndexed;
        if (replicates) {
            for (int c = 0; c < 3; ++c) {
                const uint32_t mask = s.key[c];
                const int8_t growth = static_cast<int8_t>(2 * s.unknown18[c] - d.unknown18[c]);
                srcMask[c] = mask;
                replicaMask[c] = mask & shl(mask, static_cast<uint8_t>(growth));
                replicaRightShift[c] = static_cast<uint8_t>(growth + rightShift[c]);
                replicaLeftShift[c] = d.unknown18[4 + c];
            }
        }
        if (kind == EPackedConverter::kRgbIndexed) {
            for (int c = 0; c < 3; ++c) {
                srcMask[c] = s.key[c];
                rgbTable[c] = cvtTableFor(s.unknown18[c]);
                rgbTableShift[c] = static_cast<uint8_t>(16 - d.unknown18[c]);
            }
        }
        if (kind == EPackedConverter::kAlphaIndexed0 || kind == EPackedConverter::kAlphaIndexed) {
            alphaTable = cvtTableFor(s.unknown18[3]);
            alphaSrcMask = s.key[3];
            alphaTableShift = static_cast<uint8_t>(16 - d.unknown18[3]);
        }
        if (kind == EPackedConverter::kAlphaUpscale) {
            const uint32_t mask = s.key[3];
            const int8_t growth = static_cast<int8_t>(2 * s.unknown18[3] - d.unknown18[3]);
            alphaSrcMask = mask;
            alphaReplicaMask = mask & shl(mask, static_cast<uint8_t>(growth));
            alphaReplicaRightShift = static_cast<uint8_t>(growth + rightShift[3]);
            alphaReplicaLeftShift = d.unknown18[7];
        }
    }

    // One pixel, the expressions of the operator() bodies and of the loops that inline them.
    uint32_t operator()(uint32_t x) const {
        uint32_t out = orValue;
        for (int c = 0; c < 3; ++c) {
            switch (kind) {
                case EPackedConverter::kPlain:
                case EPackedConverter::kAlphaIndexed0:
                    out |= dstMask[c] & shl(shr(x, rightShift[c]), leftShift[c]);
                    break;
                case EPackedConverter::kRgbIndexed:
                    out |= dstMask[c] & shl(tableValue(rgbTable[c], shr(x & srcMask[c], rightShift[c])) >> rgbTableShift[c], leftShift[c]);
                    break;
                default:  // the replicating converters
                    out |= (shl(shr(x & srcMask[c], rightShift[c]), leftShift[c]) |
                            shl(shr(x & replicaMask[c], replicaRightShift[c]), replicaLeftShift[c])) &
                           dstMask[c];
                    break;
            }
        }
        switch (kind) {
            case EPackedConverter::kAlphaIndexed0:
            case EPackedConverter::kAlphaIndexed:
                out |= dstMask[3] & shl(tableValue(alphaTable, shr(x & alphaSrcMask, rightShift[3])) >> alphaTableShift, leftShift[3]);
                break;
            case EPackedConverter::kAlphaUpscale:
                out |= (shl(shr(x & alphaSrcMask, rightShift[3]), leftShift[3]) |
                        shl(shr(x & alphaReplicaMask, alphaReplicaRightShift), alphaReplicaLeftShift)) &
                       dstMask[3];
                break;
            default:
                out |= dstMask[3] & shl(shr(x, rightShift[3]), leftShift[3]);
                break;
        }
        return out;
    }
};

// The converter the dispatch of convertPackedImpl (0x5eeef4 / 0x5f0f60 / 0x5f2fdc) and of the inline arms of convertPacked picks:
//   destination green wider than the source's (a source without green counts as equally wide):
//     more than twice as wide: the colour channels through the table (the alpha plain);
//     else, destination alpha wider than the source's: up to twice as wide, replicated alpha; wider, alpha through the table;
//     else replicated colour channels.
//   otherwise, destination alpha wider than the source's: alpha through the table (the listing's branch for the alpha being at
//   least twice the destination's, which would build the replicating converter inline, is unreachable: the test before it makes
//   the source narrower than the destination);
//   else the plain converter.
SPackedConverter makePackedConverter(E_PIXEL_FORMAT srcFormat, E_PIXEL_FORMAT dstFormat) {
    const SFormatEntry& s = PFDTable[srcFormat];
    const SFormatEntry& d = PFDTable[dstFormat];
    const unsigned dstGreen = d.unknown18[1];
    const unsigned srcGreen = s.unknown18[1] != 0 ? s.unknown18[1] : dstGreen;
    const unsigned dstAlpha = d.unknown18[3];
    const unsigned srcAlpha = s.unknown18[3] != 0 ? s.unknown18[3] : dstAlpha;
    if (dstGreen != 0 && srcGreen < dstGreen) {
        if (dstGreen > 2 * srcGreen) return SPackedConverter(EPackedConverter::kRgbIndexed, srcFormat, dstFormat);
        if (dstAlpha != 0 && srcAlpha < dstAlpha) {
            return SPackedConverter(dstAlpha <= 2 * srcAlpha ? EPackedConverter::kAlphaUpscale : EPackedConverter::kAlphaIndexed,
                                    srcFormat, dstFormat);
        }
        return SPackedConverter(EPackedConverter::kReplicate, srcFormat, dstFormat);
    }
    if (dstAlpha != 0 && srcAlpha < dstAlpha) return SPackedConverter(EPackedConverter::kAlphaIndexed0, srcFormat, dstFormat);
    return SPackedConverter(EPackedConverter::kPlain, srcFormat, dstFormat);
}

// The width of the element a packed class loads and stores: class 0 = unsigned char, 1 = unsigned short, 2 = unsigned int.
unsigned classBytes(int packedClass) { return packedClass == 0 ? 1u : packedClass == 1 ? 2u : 4u; }

// The row loop shared by convertPackedImpl<T, U> and the six inline arms of convertPacked (and the 24-bit arm of convert, whose
// source pixels are three bytes): each source pixel is loaded as `loadBytes` bytes (little endian) at the source row's pixel
// stride, converted and stored as `storeBytes`. In place the whole source is read before anything is written (the binary swaps
// the rows pairwise, which gives the same bytes); a flip writes the rows from the last one up.
void runPackedLoop(const SPackedConverter& converter, const uint8_t* src, uint32_t srcPitch, uint8_t* dst, uint32_t dstPitch,
                   uint32_t width, uint32_t height, bool flip, unsigned loadBytes, unsigned srcStride, unsigned storeBytes) {
    if (width == 0 || height == 0) return;
    std::vector<uint8_t> inPlace;
    if (src == dst) {
        const size_t bytes = static_cast<size_t>(height - 1) * srcPitch + static_cast<size_t>(width) * srcStride;
        inPlace.assign(src, src + bytes);
        src = inPlace.data();
    }
    for (uint32_t row = 0; row < height; ++row) {
        const uint8_t* from = src + static_cast<size_t>(row) * srcPitch;
        uint8_t* to = dst + static_cast<size_t>(flip ? height - 1 - row : row) * dstPitch;
        for (uint32_t i = 0; i < width; ++i) {
            storePixel(to + static_cast<size_t>(i) * storeBytes, storeBytes,
                       converter(loadPixel(from + static_cast<size_t>(i) * srcStride, loadBytes)));
        }
    }
}

// 0x5eeef4 convertPackedImpl<unsigned int, unsigned int> / 0x5f0f60 <unsigned short, unsigned short> / 0x5f2fdc <unsigned char,
// unsigned char> (_ZN6glitch5video12pixel_format12_GLOBAL__N_117convertPackedImplIjjEEbNS0_14E_PIXEL_FORMATEPKT_jS4_PT0_jjjb and its
// two siblings): the equal-width case of convertPacked. Each instance is the dispatch of makePackedConverter (the converter picked from
// the two formats' channel widths: plain, replicating, alpha through the table, alpha upscaling, colour through the table) and the
// row loop that loads T pixels, converts them and stores U pixels; the listings of the three are the same dispatch tree
// with different element types (each 50 KB of Hex-Rays because the converters are inlined per branch). Returns true.
template <class T, class U>
bool convertPackedImpl(E_PIXEL_FORMAT srcFormat, const T* src, uint32_t srcPitch, E_PIXEL_FORMAT dstFormat, U* dst, uint32_t dstPitch,
                       uint32_t width, uint32_t height, bool flip) {
    const SPackedConverter converter = makePackedConverter(srcFormat, dstFormat);
    runPackedLoop(converter, reinterpret_cast<const uint8_t*>(src), srcPitch, reinterpret_cast<uint8_t*>(dst), dstPitch, width, height,
                  flip, sizeof(T), PFDTable[srcFormat].bytesPerBlock, sizeof(U));
    return true;
}

// 0x5f4fe8 _ZN6glitch5video12pixel_format12_GLOBAL__N_113convertPackedENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb
// The key is the destination's packed class OR'd with four times the source's (getPackedType: 0 unsigned char, 1 unsigned short,
// 2 unsigned int, -1 none). Keys 0, 5 and 10 are convertPackedImpl<uchar, uchar> / <ushort, ushort> / <uint, uint>; keys 1, 2, 4,
// 6, 8 and 9 are the mixed-width cases inlined in the same function. All nine run the same dispatch (makePackedConverter); any
// other key gives 0. The source pixel stride is the source row's byte count (+0x15), the destination pixel the class width.
int convertPacked(E_PIXEL_FORMAT srcFormat, const void* src, uint32_t srcPitch, E_PIXEL_FORMAT dstFormat, void* dst,
                  uint32_t dstPitch, uint32_t width, uint32_t height, bool flip) {
    const int srcClass = getPackedType(srcFormat);
    const int dstClass = getPackedType(dstFormat);
    if (srcClass < 0 || srcClass > 2 || dstClass < 0 || dstClass > 2) return 0;
    if (srcClass == dstClass) {  // keys 0, 5 and 10: the three instances of convertPackedImpl
        if (srcClass == 0) {
            return convertPackedImpl<uint8_t, uint8_t>(srcFormat, static_cast<const uint8_t*>(src), srcPitch, dstFormat,
                                                        static_cast<uint8_t*>(dst), dstPitch, width, height, flip);
        }
        if (srcClass == 1) {
            return convertPackedImpl<uint16_t, uint16_t>(srcFormat, static_cast<const uint16_t*>(src), srcPitch, dstFormat,
                                                          static_cast<uint16_t*>(dst), dstPitch, width, height, flip);
        }
        return convertPackedImpl<uint32_t, uint32_t>(srcFormat, static_cast<const uint32_t*>(src), srcPitch, dstFormat,
                                                      static_cast<uint32_t*>(dst), dstPitch, width, height, flip);
    }
    const SPackedConverter converter = makePackedConverter(srcFormat, dstFormat);
    runPackedLoop(converter, static_cast<const uint8_t*>(src), srcPitch, static_cast<uint8_t*>(dst), dstPitch, width, height, flip,
                  classBytes(srcClass), PFDTable[srcFormat].bytesPerBlock, classBytes(dstClass));
    return 1;
}

// The 24-bit source arm of convert (0x5f9ebc, source formats 10 and 11): the destination class picks the store width (0, 1 or 2;
// any other gives 0) and the source pixel is read as a 16-bit word and a byte. The converter is the one the dispatch picks (for
// a source without alpha and a destination green up to 10 bits that is the replicating converter when the destination green is
// wider than 8 bits and the plain one otherwise).
int convert24Bit(E_PIXEL_FORMAT srcFormat, const void* src, uint32_t srcPitch, E_PIXEL_FORMAT dstFormat, void* dst, uint32_t dstPitch,
                 uint32_t width, uint32_t height, bool flip) {
    const int dstClass = getPackedType(dstFormat);
    if (dstClass < 0 || dstClass > 2) return 0;
    const SPackedConverter converter = makePackedConverter(srcFormat, dstFormat);
    runPackedLoop(converter, static_cast<const uint8_t*>(src), srcPitch, static_cast<uint8_t*>(dst), dstPitch, width, height, flip, 3u,
                  PFDTable[srcFormat].bytesPerBlock, classBytes(dstClass));
    return 1;
}

// 0x5fd894 _ZN6glitch5video12pixel_format12_GLOBAL__N_110decompressENS0_14E_PIXEL_FORMATEPKvjS3_Pvjjjb
// Compressed source. DXT (formats 17..20) and ATC (21..23) are refused with an error. A PVRTC source needs the natural pitch
// (error otherwise); into R8G8B8A8 at its natural pitch it decodes straight into the destination, anything else decodes into a
// temporary RGBA block (logged at warning level) and is converted from there. A flip of the direct decode is done by converting
// the destination onto itself.
int decompress(E_PIXEL_FORMAT srcFormat, const void* src, uint32_t srcPitch, E_PIXEL_FORMAT dstFormat, void* dst, uint32_t dstPitch,
               uint32_t width, uint32_t height, bool flip) {
    if (static_cast<unsigned>(srcFormat - 17) <= 3u) {
        os::Printer::log("decompression of DXT formats not implemented", os::ELL_ERROR);
        return 0;
    }
    if (computePitch(srcFormat, width) != srcPitch) {
        os::Printer::log("decompressing PVRTC formats with non \"natural\" pitch size not supported", os::ELL_ERROR);
        return 0;
    }
    if (static_cast<unsigned>(srcFormat - 21) <= 2u) {
        os::Printer::log("decompressing ATC formats not supported", os::ELL_ERROR);
        return 0;
    }
    const uint32_t naturalPitch = computePitch(dstFormat, width);
    const int twoBit = static_cast<unsigned>(srcFormat - 24) <= 1u;
    dh2prof::Scope prof(dh2prof::kTexDecode);  // Track B frame profiler
    if (dstFormat == 14 && naturalPitch == dstPitch) {
        PVRTCDecompress(src, twoBit, static_cast<int>(width), static_cast<int>(height), static_cast<uint8_t*>(dst));
        if (flip) return convert(14, dst, naturalPitch, dstFormat, dst, dstPitch, width, height, flip);
        return 1;
    }
    os::Printer::log("slow path decompression", "destination is not R8G8B8A8 or does not have the \"natural\" pitch of that format",
                     os::ELL_WARNING);
    uint8_t* block = new uint8_t[static_cast<size_t>(height) * 4u * width];
    PVRTCDecompress(src, twoBit, static_cast<int>(width), static_cast<int>(height), block);
    const int result = convert(14, block, naturalPitch, dstFormat, dst, dstPitch, width, height, flip);
    delete[] block;
    return result;
}

// The channel-swizzle arm of convert (0x5f95ac, the `switch` on the source's packed type): the formats have the same packed type,
// no packed or alpha-fill flags, and neither is format 2. Source type 0 moves bytes, types 1 and 3 half words, 2 and 4 words;
// the destination's channel count (+0x17) must be 3, 4 or 2 (anything else gives 0). Destination channel j takes the source
// channel computeRelativeSwizzleTable names for it; the source pixel stride is the source row's byte count (+0x15). In place the
// pixels are read before they are written (the binary copies each pixel, and swaps the rows pairwise for a flip).
int swizzleChannels(E_PIXEL_FORMAT srcFormat, const void* src, uint32_t srcPitch, E_PIXEL_FORMAT dstFormat, void* dst,
                    uint32_t dstPitch, uint32_t width, uint32_t height, bool flip) {
    const SFormatEntry& s = PFDTable[srcFormat];
    const SFormatEntry& d = PFDTable[dstFormat];
    unsigned channelBytes;
    switch (s.packedType) {
        case 0: channelBytes = 1; break;
        case 1:
        case 3: channelBytes = 2; break;
        case 2:
        case 4: channelBytes = 4; break;
        default: return 0;
    }
    const unsigned channels = d.field17;
    if (channels != 3 && channels != 4 && channels != 2) return 0;
    uint8_t table[4] = {0, 1, 2, 3};
    computeRelativeSwizzleTable(srcFormat, dstFormat, table);
    const unsigned srcStride = s.bytesPerBlock;
    const unsigned dstStride = channels * channelBytes;
    const uint8_t* in = static_cast<const uint8_t*>(src);
    uint8_t* out = static_cast<uint8_t*>(dst);
    std::vector<uint8_t> inPlace;
    if (in == out && width != 0 && height != 0) {
        inPlace.assign(in, in + static_cast<size_t>(height - 1) * srcPitch + static_cast<size_t>(width) * srcStride);
        in = inPlace.data();
    }
    for (uint32_t row = 0; row < height; ++row) {
        const uint8_t* from = in + static_cast<size_t>(row) * srcPitch;
        uint8_t* to = out + static_cast<size_t>(flip ? height - 1 - row : row) * dstPitch;
        for (uint32_t i = 0; i < width; ++i) {
            const uint8_t* pixel = from + static_cast<size_t>(i) * srcStride;
            uint8_t* result = to + static_cast<size_t>(i) * dstStride;
            for (unsigned j = 0; j < channels; ++j) std::memcpy(result + j * channelBytes, pixel + table[j] * channelBytes, channelBytes);
        }
    }
    return 1;
}

// The luminance arm of convert (0x5f95ac, the destination has the luminance flag and the source has not): the key is the
// destination's packed type OR'd with four times the source's class. 4 and 8 (destination one byte per channel, source 16- or
// 32-bit): the weighted sum of the source channels scaled by 255, and, when the destination has an alpha channel, the alpha
// scaled to 255 as the second byte. 5 and 9 (destination L16): the sum scaled by 65535 as a 16-bit value. Any other key logs
// "conversion to luminance from float format not implemented yet" and gives 0.
int convertToLuminance(E_PIXEL_FORMAT srcFormat, const void* src, uint32_t srcPitch, E_PIXEL_FORMAT dstFormat, void* dst,
                       uint32_t dstPitch, uint32_t width, uint32_t height, bool flip) {
    const SFormatEntry& s = PFDTable[srcFormat];
    const SFormatEntry& d = PFDTable[dstFormat];
    const int key = d.packedType | (4 * getPackedType(srcFormat));
    if (key != 4 && key != 5 && key != 8 && key != 9) {
        os::Printer::log("conversion to luminance from float format not implemented yet", os::ELL_ERROR);
        return 0;
    }
    const unsigned loadBytes = (key == 4 || key == 5) ? 2u : 4u;
    const bool wide = key == 5 || key == 9;
    const bool withAlpha = !wide && (d.flags & 1) != 0;
    const SLuminanceConverter lum(srcFormat);
    const unsigned dstStride = wide ? 2u : (withAlpha ? 2u : 1u);
    const uint8_t* in = static_cast<const uint8_t*>(src);
    uint8_t* out = static_cast<uint8_t*>(dst);
    std::vector<uint8_t> inPlace;
    if (in == out && width != 0 && height != 0) {
        inPlace.assign(in, in + static_cast<size_t>(height - 1) * srcPitch + static_cast<size_t>(width) * s.bytesPerBlock);
        in = inPlace.data();
    }
    for (uint32_t row = 0; row < height; ++row) {
        const uint8_t* from = in + static_cast<size_t>(row) * srcPitch;
        uint8_t* to = out + static_cast<size_t>(flip ? height - 1 - row : row) * dstPitch;
        for (uint32_t i = 0; i < width; ++i) {
            const uint32_t word = loadPixel(from + static_cast<size_t>(i) * s.bytesPerBlock, loadBytes);
            uint8_t* pixel = to + static_cast<size_t>(i) * dstStride;
            if (wide) {
                storePixel(pixel, 2, static_cast<uint32_t>(lum.luminance(word) * 65535.0f));
            } else {
                pixel[0] = static_cast<uint8_t>(static_cast<uint32_t>(lum.luminance(word) * 255.0f));
                if (withAlpha) pixel[1] = static_cast<uint8_t>(lum.alpha(word));
            }
        }
    }
    return 1;
}

}  // namespace

// 0x5f95ac _ZN6glitch5video12pixel_format7convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb
// The top-level pixel transfer. Pitches of 0 are the formats' natural ones. Equal formats are a copy. An in-place conversion needs
// equal pitches on both sides. A compressed destination is refused (error), a compressed source is decompressed. A destination
// with the luminance flag (4) built from a source without it takes the luminance arm. Otherwise the conversion is a channel swizzle
// when both formats have the same packed type and neither has the packed (0x40) or the alpha-fill (destination alpha, source
// none) flag and neither is format 2; every other pair goes through the packed converters (not for float formats, which log
// "handling floating point conversion ... not implemented yet"), the 24-bit sources (formats 10 and 11) through their own load
// arm.
int convert(E_PIXEL_FORMAT srcFormat, const void* src, uint32_t srcPitch, E_PIXEL_FORMAT dstFormat, void* dst, uint32_t dstPitch,
            uint32_t width, uint32_t height, bool flip) {
    if (srcPitch == 0) srcPitch = computePitch(srcFormat, width);
    if (dstPitch == 0) dstPitch = computePitch(dstFormat, width);
    if (srcFormat == dstFormat) return copy(srcFormat, src, srcPitch, dst, dstPitch, width, height, flip);
    if (src == dst) {
        if (computePitch(srcFormat, width) != computePitch(dstFormat, width) || srcPitch != dstPitch) {
            os::Printer::log("in place conversion with different format pitches not supported", os::ELL_ERROR);
            return 0;
        }
    }
    const SFormatEntry& d = PFDTable[dstFormat];
    const SFormatEntry& s = PFDTable[srcFormat];
    if ((d.flags & 8) != 0) {
        os::Printer::log("Compressed destination format not supported", pixelFormatName(dstFormat), os::ELL_ERROR);
        return 0;
    }
    if ((s.flags & 8) != 0) return decompress(srcFormat, src, srcPitch, dstFormat, dst, dstPitch, width, height, flip);
    if ((d.flags & 4) != 0 && (s.flags & 4) == 0) {
        return convertToLuminance(srcFormat, src, srcPitch, dstFormat, dst, dstPitch, width, height, flip);
    }
    const bool viaConverter = s.packedType != d.packedType || (s.flags & 0x40) != 0 || (d.flags & 0x40) != 0 ||
                              ((d.flags & 1) != 0 && (s.flags & 1) == 0) || dstFormat == 2 || srcFormat == 2;
    if (!viaConverter) return swizzleChannels(srcFormat, src, srcPitch, dstFormat, dst, dstPitch, width, height, flip);
    if (((s.flags | d.flags) & 2) == 0) {
        if (static_cast<unsigned>(srcFormat - 10) > 1u) {
            return convertPacked(srcFormat, src, srcPitch, dstFormat, dst, dstPitch, width, height, flip);
        }
        return convert24Bit(srcFormat, src, srcPitch, dstFormat, dst, dstPitch, width, height, flip);
    }
    os::Printer::log("handling floating point conversion (except swizzle from RGBA to RGB with same component type) not implemented yet",
                     os::ELL_ERROR);
    return 0;
}

}  // namespace glitch::video::pixel_format
