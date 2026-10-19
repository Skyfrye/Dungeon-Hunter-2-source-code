#include "glitch-video/image.hpp"

#include <cmath>
#include <cstring>

#include "glitch-video/pixel_format.hpp"
#include "glitch-video/pixel_format_convert.hpp"

namespace glitch::video {

namespace {

// Halves a mip dimension, clamping at 1. Non-positive sizes are returned
// unchanged (the original tests the signed value before shifting).
uint32_t mipDimension(uint32_t size, uint32_t mipLevel) {
    if (static_cast<int32_t>(size) <= 0) {
        return size;
    }
    uint32_t shifted = size >> mipLevel;
    return shifted == 0 ? 1u : shifted;
}

// The "adopt the caller's block" paths of the data-taking constructors store 0x0badf00d into m_data before calling
// initData (0x60270c, 0x6023a4, 0x602868 on the ARM listing). initData allocates the pixel block only when that
// pointer is null, so the stored value is what makes it skip the allocation and leave the caller's block in place;
// the pointer is never dereferenced before it is overwritten (m_hasMipmaps is clear on those paths, which is the
// only thing initData tests the level-array pointer for).
uint8_t* const kAdoptedDataSentinel = reinterpret_cast<uint8_t*>(static_cast<uintptr_t>(0x0badf00d));

// The ARM's __aeabi_idiv truncates towards zero, which is C++'s rule too; the operands are wrapped to 32 bits by
// the clipping arithmetic before they get here.
int32_t signedDiv(int32_t numerator, int32_t denominator) {
    return numerator / denominator;
}

// ---------------------------------------------------------------------------------------------------------------
// The anonymous-namespace blit family (dispatcher 0x600948 and its twelve executors).
//
// SBlitJob is the record the dispatcher builds on its own frame and hands to the selected executor by pointer. Its
// layout was read off the dispatcher's listing (its base is SP+0x18, stored at 0x600b84..0x600ca4) and then
// confirmed field by field against every executor. The trailing comment on each member is its offset in that
// record. The port keeps a second 32-bit colour at +0x24: the original stores the 32-bit word at +0x20 and reads
// that same address as a halfword in the 16-bit executors, which one typed member cannot express; no offset any
// executor reads changes, and no executor reads across the two colour fields.
struct SBlitJob {
    uint32_t srcCount = 0;       // +0x00
    uint32_t dstCount = 0;       // +0x04
    uint32_t srcRows = 0;        // +0x08
    uint32_t dstRows = 0;        // +0x0c
    int32_t outerIndex = 0;      // +0x10
    int32_t left = 0;            // +0x14
    int32_t top = 0;             // +0x18
    int32_t right = 0;           // +0x1c, exclusive
    uint32_t color = 0;          // +0x20 packed 16-bit colour, source component order
    uint32_t color32 = 0;        // +0x24 packed 32-bit colour, source component order
    uint32_t packedColor16 = 0;  // +0x28 the same colour as an A1R5G5B5 halfword
    void* srcPtr = nullptr;      // +0x2c
    void* dstPtr = nullptr;      // +0x30
    uint32_t count = 0;          // +0x34 columns
    uint32_t rows = 0;           // +0x38 rows
    uint32_t srcPitch = 0;       // +0x3c
    uint32_t dstPitch = 0;       // +0x40
};

// The first argument of blit: the colour / blending mode the caller asks for. The listing subtracts one before its
// switch (SUB R0, R0, #1 at 0x600968), so the enum starts at zero.
enum eBlitter {
    EBT_COLOR = 0,
    EBT_COLORALPHA = 1,
    EBT_TEXTUREBLEND = 2,
    EBT_TEXTUREBLENDCOLOR = 3,
};

// 0x602b2c executeBlit_Color_16_to_16: fills the destination rows with the packed halfword, eight pixels (32 bits)
// per pass and then a tail of (dstPitch >> 2) & 7 words. Nothing on the source side is read.
void executeBlit_Color_16_to_16(const SBlitJob* job) {
    const uint32_t packed = static_cast<uint16_t>(job->color);
    const uint32_t wide = packed | (packed << 16);
    uint32_t* dst = static_cast<uint32_t*>(job->dstPtr);
    uint32_t row = 0;
    while (true) {
        uint32_t* next = dst;
        if (job->dstPitch >> 5) {
            uint32_t blocks = job->dstPitch >> 5;
            uint32_t* words = dst;
            do {
                --blocks;
                words[0] = wide;
                words[1] = wide;
                words[2] = wide;
                words[3] = wide;
                words[4] = wide;
                words[5] = wide;
                words[6] = wide;
                words[7] = wide;
                words += 8;
            } while (blocks);
            next = dst + 8u * (job->dstPitch >> 5);
        }
        uint32_t tail = (job->dstPitch >> 2) & 7u;
        if (tail != 0) {
            uint32_t index = 0;
            do {
                --tail;
                next[index++] = wide;
            } while (tail);
        }
        if (job->rows == ++row) {
            return;
        }
        dst = reinterpret_cast<uint32_t*>(reinterpret_cast<uint8_t*>(dst) + job->dstPitch);
    }
}

// 0x602a88 executeBlit_Color_32_to_32: the same fill with 32-bit words of the colour, dst-only.
void executeBlit_Color_32_to_32(const SBlitJob* job) {
    const uint32_t packed = job->color32;
    uint32_t* dst = static_cast<uint32_t*>(job->dstPtr);
    uint32_t row = 0;
    while (true) {
        uint32_t* next = dst;
        if (job->dstPitch >> 5) {
            uint32_t blocks = job->dstPitch >> 5;
            uint32_t* words = dst;
            do {
                --blocks;
                words[0] = packed;
                words[1] = packed;
                words[2] = packed;
                words[3] = packed;
                words[4] = packed;
                words[5] = packed;
                words[6] = packed;
                words[7] = packed;
                words += 8;
            } while (blocks);
            next = dst + 8u * (job->dstPitch >> 5);
        }
        uint32_t tail = (job->dstPitch >> 2) & 7u;
        if (tail != 0) {
            uint32_t index = 0;
            do {
                --tail;
                next[index++] = packed;
            } while (tail);
        }
        if (job->rows == ++row) {
            return;
        }
        dst = reinterpret_cast<uint32_t*>(reinterpret_cast<uint8_t*>(dst) + job->dstPitch);
    }
}

// 0x5ff358 executeBlit_TextureBlend_16_to_16. A 16-bit texel is copied when its own alpha bit is set and the
// destination is kept where it is clear - dst = (dst & ~alpha) | src - two texels at a time. The listing derives
// its whole-word count from the ROW count rather than the column count (v4 = (rows - 1) & -(rows != 0) and
// v5 = rows >> 1 at 0x5ff370/0x5ff374), so a row is (rows - 1) / 2 whole words plus one trailing halfword.
void executeBlit_TextureBlend_16_to_16(const SBlitJob* job) {
    const uint32_t rows = job->rows;
    const uint8_t* src = static_cast<const uint8_t*>(job->srcPtr);
    uint8_t* dst = static_cast<uint8_t*>(job->dstPtr);
    const uint32_t wholeWords = (rows - 1u) & (0u - static_cast<uint32_t>(rows != 0));
    if (wholeWords != 0) {
        if (rows == 0) {
            return;
        }
        uint32_t row = 0;
        while (true) {
            const uint32_t halfwords = rows >> 1;
            uint32_t offset = 0;
            for (uint32_t i = 0; i != halfwords; ++i) {
                uint32_t source;
                uint32_t under;
                std::memcpy(&source, src + offset, sizeof(source));
                std::memcpy(&under, dst + offset, sizeof(under));
                under = ((((source & 0x80008000u) >> 15) + 0x7FFF8000u) & under) | source;
                std::memcpy(dst + offset, &under, sizeof(under));
                offset += 4;
            }
            ++row;
            const uint32_t tailOffset = 2u * wholeWords;
            uint16_t source16;
            uint16_t under16;
            std::memcpy(&source16, src + tailOffset, sizeof(source16));
            std::memcpy(&under16, dst + tailOffset, sizeof(under16));
            under16 = static_cast<uint16_t>((((source16 >> 15) + 0x7FFFu) & under16) | source16);
            std::memcpy(dst + tailOffset, &under16, sizeof(under16));
            if (rows == row) {
                break;
            }
            src += job->srcPitch;
            dst += job->dstPitch;
        }
        return;
    }
    if (rows == 0) {
        return;
    }
    uint32_t row = 0;
    while (true) {
        const uint32_t halfwords = rows >> 1;
        uint32_t offset = 0;
        for (uint32_t i = 0; i != halfwords; ++i) {
            uint32_t source;
            uint32_t under;
            std::memcpy(&source, src + offset, sizeof(source));
            std::memcpy(&under, dst + offset, sizeof(under));
            under = ((((source & 0x80008000u) >> 15) + 0x7FFF8000u) & under) | source;
            std::memcpy(dst + offset, &under, sizeof(under));
            offset += 4;
        }
        ++row;
        uint16_t source16;
        uint16_t under16;
        std::memcpy(&source16, src, sizeof(source16));
        std::memcpy(&under16, dst, sizeof(under16));
        under16 = static_cast<uint16_t>((((source16 >> 15) + 0x7FFFu) & under16) | source16);
        std::memcpy(dst, &under16, sizeof(under16));
        if (rows == row) {
            return;
        }
        src += job->srcPitch;
        dst += job->dstPitch;
    }
}

// 0x5ff4a4 executeBlit_TextureBlendColor_16_to_16. The texel is scaled by the job colour lane by lane
// ((a * b) >> 5 for the 5-bit lanes, >> 10 for the 6-bit one), then copied over the destination where the scaled
// texel's own alpha bit is set. Both sides of the multiply sit in the destination's component order, so one lane
// scalar works for the whole row.
void executeBlit_TextureBlendColor_16_to_16(const SBlitJob* job) {
    const uint16_t* src = static_cast<const uint16_t*>(job->srcPtr);
    uint16_t* dst = static_cast<uint16_t*>(job->dstPtr);
    const uint32_t color = static_cast<uint16_t>(job->color);
    const uint32_t colorBlue = color & 0x1Fu;
    const uint32_t colorGreen = color & 0x3E0u;
    const uint32_t colorRed = color & 0x7C00u;
    const uint32_t colorAlpha = color & 0x8000u;
    uint32_t row = 0;
    while (true) {
        if (job->count != 0) {
            for (uint32_t column = 0; column != job->count; ++column) {
                const uint32_t source = src[column];
                const uint32_t scaled = ((((source & 0x1Fu) * colorBlue) >> 5) |
                                         ((((source & 0x3E0u) * colorGreen) & 0xF8000u) >> 10) |
                                         ((((source & 0x7C00u) * colorRed) & 0x3E000000u) >> 15) |
                                         (source & colorAlpha));
                const uint32_t under = dst[column];
                dst[column] = static_cast<uint16_t>((((scaled >> 15) + 0x7FFFu) & under) | scaled);
            }
        }
        if (job->rows == ++row) {
            return;
        }
        src += job->srcPitch >> 1;
        dst += job->dstPitch >> 1;
    }
}

// lanePack / laneUnpack: the 8-bit lanes of a 32-bit texel. Format 12 stores r,g,b,a at bytes 0..3, format 13
// stores a,r,g,b (one byte further round) and format 14 stores g,b,a,r. The 32-bit executors therefore rotate the
// source word left by one byte for 13 and 14 and rotate the result back by three; the pixel already in the
// destination is rotated the same way. That is the listing's ROR #8 followed by ROR #24, and no rotation for 12.
uint32_t lanePack(uint32_t word, bool rotate) {
    if (!rotate) {
        return word;
    }
    return (word << 24) | (word >> 8);
}

uint32_t laneUnpack(uint32_t word, bool rotate) {
    if (!rotate) {
        return word;
    }
    return (word >> 24) | (word << 8);
}

// The over-blend every 32-bit executor shares: dst + (src - dst) * alpha / 256 over the red/blue lanes and the
// green lane, alpha forced opaque. alpha is the listing's (a + a/128) value, i.e. 257 * a, which is why the ARM's
// LSR #8 is exactly this divide.
uint32_t blendOver(uint32_t source, uint32_t under, uint32_t alpha) {
    return (((under & 0xFF00FFu) + (((source & 0xFF00FFu) - (under & 0xFF00FFu)) * alpha >> 8)) & 0xFF00FFu) |
           (((under & 0xFF00u) + (((source & 0xFF00u) - (under & 0xFF00u)) * alpha >> 8)) & 0xFF00u) |
           0xFF000000u;
}

// The colour scale of the TextureBlendColor executors: (a * b) >> 8 for the low lanes and >> 16 for the high ones.
// Both sides share the source's component order, so this needs no rotation for 13 and 14.
uint32_t multiplyLanes(uint32_t source, uint32_t color) {
    return ((((source & 0xFF0000u) >> 12) * ((color & 0xFF0000u) >> 12)) & 0xFF0000u) |
           ((((source & 0xFF000000u) >> 16) * ((color & 0xFF000000u) >> 16)) & 0xFF000000u) |
           ((((source & 0xFF00u) * (color & 0xFF00u)) >> 16) & 0xFF00u) |
           (((source & 0xFFu) * (color & 0xFFu)) >> 8);
}

// 0x5ffb18 (kRotate true, dstFormat 12 with srcFormat 12) / 0x5ffbf8 (kRotate false, 13 and 14)
// executeBlit_TextureBlend_32_to_32. A completely transparent texel leaves the destination colour and forces the
// result's alpha opaque; a fully opaque one is copied; anything between is the over-blend.
template <bool kRotate>
void executeBlit_TextureBlend_32_to_32(const SBlitJob* job) {
    const uint32_t rows = job->rows;
    const uint32_t count = job->count;
    if (rows == 0) {
        return;
    }
    const uint8_t* src = static_cast<const uint8_t*>(job->srcPtr);
    uint8_t* dst = static_cast<uint8_t*>(job->dstPtr);
    uint32_t row = 0;
    while (true) {
        if (count != 0) {
            uint32_t offset = 0;
            for (uint32_t column = 0; column != count; ++column) {
                uint32_t source;
                uint32_t under;
                std::memcpy(&source, src + offset, sizeof(source));
                std::memcpy(&under, dst + offset, sizeof(under));
                source = lanePack(source, kRotate);
                under = lanePack(under, kRotate);
                const uint32_t alpha = source & 0xFF000000u;
                uint32_t result;
                if (alpha == 0) {
                    result = under | 0xFF000000u;
                } else if (alpha == 0xFF000000u) {
                    result = source;
                } else {
                    result = blendOver(source, under, (alpha >> 31) + (alpha >> 24));
                }
                result = laneUnpack(result, kRotate);
                std::memcpy(dst + offset, &result, sizeof(result));
                offset += 4;
            }
        }
        if (rows == ++row) {
            return;
        }
        src += job->srcPitch;
        dst += job->dstPitch;
    }
}

// 0x5ffcdc (kRotate true, dstFormat 12) / 0x5ffe38 (kRotate false, 13 and 14)
// executeBlit_TextureBlendColor_32_to_32: the texel is scaled by the job colour, then over-blended. The rotate
// here is a plain byte swap of both sides (its ROR #8), not the one-byte rotation of the plain texture blend.
template <bool kRotate>
void executeBlit_TextureBlendColor_32_to_32(const SBlitJob* job) {
    const uint32_t rows = job->rows;
    const uint32_t count = job->count;
    if (rows == 0) {
        return;
    }
    const uint8_t* src = static_cast<const uint8_t*>(job->srcPtr);
    uint8_t* dst = static_cast<uint8_t*>(job->dstPtr);
    const uint32_t color = job->color32;
    uint32_t row = 0;
    while (true) {
        if (count != 0) {
            uint32_t offset = 0;
            for (uint32_t column = 0; column != count; ++column) {
                uint32_t source;
                uint32_t under;
                std::memcpy(&source, src + offset, sizeof(source));
                std::memcpy(&under, dst + offset, sizeof(under));
                if (kRotate) {
                    source = (source << 24) | (source >> 8);
                    under = (under << 24) | (under >> 8);
                } else {
                    source = (source >> 24) | (source << 8);
                    under = (under >> 24) | (under << 8);
                }
                uint32_t scaled = multiplyLanes(source, color);
                const uint32_t alpha = scaled & 0xFF000000u;
                scaled = kRotate ? (scaled << 24) | (scaled >> 8) : (scaled >> 24) | (scaled << 8);
                uint32_t result;
                if (alpha == 0) {
                    result = under | 0xFF000000u;
                } else if (alpha == 0xFF000000u) {
                    result = scaled;
                } else {
                    result = blendOver(scaled, under, (alpha >> 31) + (alpha >> 24));
                }
                result = kRotate ? (result >> 24) | (result << 8) : (result << 24) | (result >> 8);
                std::memcpy(dst + offset, &result, sizeof(result));
                offset += 4;
            }
        }
        if (rows == ++row) {
            return;
        }
        src += job->srcPitch;
        dst += job->dstPitch;
    }
}

// 0x5ff57c executeBlit_ColorAlpha_16_to_16: dst += (job colour - dst) * (a + a/128) / 32 in the A1R5G5B5 lanes,
// the 16-bit counterpart of the 32-bit ColorAlpha executors. The division is the listing's LSR #5 per lane.
void executeBlit_ColorAlpha_16_to_16(const SBlitJob* job) {
    uint16_t* dst = static_cast<uint16_t*>(job->dstPtr);
    const uint32_t color = static_cast<uint16_t>(job->color);
    const uint32_t alpha = color >> 15;
    const uint32_t colorRed = color & 0x7C00u;
    const uint32_t colorGreen = color & 0x3E0u;
    uint32_t row = 0;
    while (true) {
        if (job->count != 0) {
            for (uint32_t column = 0; column != job->count; ++column) {
                const uint32_t under = dst[column];
                const uint32_t blended =
                    (((under & 0x7C1Fu) + ((alpha * (colorRed - (under & 0x7C1Fu))) >> 5)) & 0x7C1Fu) |
                    (((under & 0x3E0u) + ((alpha * (colorGreen - (under & 0x3E0u))) >> 5)) & 0x3E0u);
                dst[column] = static_cast<uint16_t>(blended);
            }
        }
        if (job->rows == ++row) {
            return;
        }
        dst = reinterpret_cast<uint16_t*>(reinterpret_cast<uint8_t*>(dst) + job->dstPitch);
    }
}

// 0x5fff90 (kRotate true, dstFormat 12) / 0x600050 (kRotate false, 13 and 14)
// executeBlit_ColorAlpha_32_to_32: dst += (job colour - dst) * a / 256 over the lanes, alpha forced opaque. The job
// colour arrives in the source's component order, so 12 rotates it left one byte and rotates the result back; the
// alpha lane is the same byte in all three formats.
template <bool kRotate>
void executeBlit_ColorAlpha_32_to_32(const SBlitJob* job) {
    uint32_t* dst = static_cast<uint32_t*>(job->dstPtr);
    const uint32_t alpha = job->color32 & 0xFFu;
    const uint32_t source = lanePack(job->color32, kRotate);
    uint32_t row = 0;
    while (true) {
        if (job->count != 0) {
            for (uint32_t column = 0; column != job->count; ++column) {
                const uint32_t blended = blendOver(source, lanePack(dst[column], kRotate), alpha);
                dst[column] = laneUnpack(blended, kRotate);
            }
        }
        if (job->rows == ++row) {
            return;
        }
        dst = reinterpret_cast<uint32_t*>(reinterpret_cast<uint8_t*>(dst) + job->dstPitch);
    }
}

// 0x600948 blit(eBlitter, CImage* dst, const rect* dstRect, const position* dstTopLeft, CImage* src,
//              const rect* srcRect, uint32_t color).
//
// The executor comes from (destination format, source format) alone; a pair the switch does not name returns 0 and
// draws nothing, which is how a caller tells "not supported" from "drawn". The region then comes from the
// destination rectangle (or the destination image's size), the destination's clip rectangle at +0x14..+0x1c with
// the source rectangle (or the source image's size) folded onto it, and the four-word position argument, whose X
// and Y are the placement:
//
//   * a4 == a6: both the destination rectangle and the position are the caller's rectangle, and the position
//     becomes (0,0). drawRectangle's shape.
//   * a4 only: the position gives the placement and its own width and height are the destination extent.
//   * a6 only: the source rectangle is the destination extent shifted by the position, and the position becomes
//     (0,0). copyTo's no-clip shape.
//   * neither: every region is empty.
//
// Two overlap tests reject a region that does not intersect the destination. The pointers then start at the
// transfer's top-left, each advanced by its own side's bytes per pixel (PFDTable row byte +0x15), and the job is
// handed to the executor. The colour is passed through the source-to-format-12 swizzle and packed into an A1R5G5B5
// halfword (0x600bc0..0x600c20), which is what the 16-bit executors write.
int blit(eBlitter blitter, CImage* dst, const core::rect<int32_t>* dstRect, const core::position2d<int32_t>* dstTopLeft,
         CImage* src, const core::rect<int32_t>* srcRect, uint32_t color) {
    const E_PIXEL_FORMAT srcFormat = src != nullptr ? src->m_format : static_cast<E_PIXEL_FORMAT>(39);
    const E_PIXEL_FORMAT dstFormat = dst != nullptr ? dst->m_format : static_cast<E_PIXEL_FORMAT>(39);

    void (*execute)(const SBlitJob*) = nullptr;
    switch (blitter) {
        case EBT_COLOR:
            if (dstFormat == 8) {
                execute = executeBlit_Color_16_to_16;
            } else if (dstFormat == 12 || dstFormat == 14) {
                execute = executeBlit_Color_32_to_32;
            } else {
                return 0;
            }
            break;
        case EBT_COLORALPHA:
            if (dstFormat == 8) {
                execute = executeBlit_ColorAlpha_16_to_16;
            } else if (dstFormat == 12) {
                execute = executeBlit_ColorAlpha_32_to_32<true>;
            } else if (dstFormat == 13 || dstFormat == 14) {
                execute = executeBlit_ColorAlpha_32_to_32<false>;
            } else {
                return 0;
            }
            break;
        case EBT_TEXTUREBLEND:
            if (dstFormat == 8 && srcFormat == 8) {
                execute = executeBlit_TextureBlend_16_to_16;
            } else if (dstFormat == 12 && srcFormat == 12) {
                execute = executeBlit_TextureBlend_32_to_32<true>;
            } else if ((dstFormat == 13 && srcFormat == 13) || (dstFormat == 14 && srcFormat == 14)) {
                execute = executeBlit_TextureBlend_32_to_32<false>;
            } else {
                return 0;
            }
            break;
        case EBT_TEXTUREBLENDCOLOR:
            if (dstFormat == 8 && srcFormat == 8) {
                execute = executeBlit_TextureBlendColor_16_to_16;
            } else if (dstFormat == 12 && srcFormat == 12) {
                execute = executeBlit_TextureBlendColor_32_to_32<true>;
            } else if ((dstFormat == 13 && srcFormat == 13) || (dstFormat == 14 && srcFormat == 14)) {
                execute = executeBlit_TextureBlendColor_32_to_32<false>;
            } else {
                return 0;
            }
            break;
        default:
            return 0;
    }

    // The four rectangles of the listing, in the order it reads them: the source rectangle a6 (0x600a78) or the
    // placement a4 (0x600d1c), the destination rectangle a3 (0x600aa8) or the destination image's size
    // (0x600cf0), the destination image's size (0x600cf8) when a3 was null, and the clip rectangle a4's own
    // coordinates (0x600a7c/0x600a8c/0x600a98/0x600aa0) or zero (0x600d28..0x600d34).
    int32_t areaLeft;
    int32_t areaTop;
    int32_t areaRight;
    int32_t areaBottom;
    int32_t sourceLeft;
    int32_t sourceTop;
    int32_t sourceRight;
    int32_t sourceBottom;
    int32_t clipLeft;
    int32_t clipTop;

    if (dstRect != nullptr) {
        areaLeft = dstRect->UpperLeftCorner.X;
        areaTop = dstRect->UpperLeftCorner.Y;
        areaRight = dstRect->LowerRightCorner.X;
        areaBottom = dstRect->LowerRightCorner.Y;
    } else if (dst != nullptr) {
        areaLeft = 0;
        areaTop = 0;
        areaRight = static_cast<int32_t>(dst->m_width);
        areaBottom = static_cast<int32_t>(dst->m_height);
    } else {
        areaLeft = 0;
        areaTop = 0;
        areaRight = 0;
        areaBottom = 0;
    }

    if (dstTopLeft != nullptr) {
        // a4 != null: the clip rectangle is the caller's, and the source rectangle when a6 is null uses a4's own
        // top-right words as the source's right and bottom (0x600cf4/0x600cfc/0x600d10).
        clipLeft = dstTopLeft->X;
        clipTop = dstTopLeft->Y;
    } else if (dstRect != nullptr) {
        // a4 == null with a3 given: the clip is the destination image's own rectangle at +0x14/+0x18 (0x600d20).
        clipLeft = dst != nullptr ? dst->m_clip.UpperLeftCorner.X : 0;
        clipTop = dst != nullptr ? dst->m_clip.UpperLeftCorner.Y : 0;
    } else {
        clipLeft = 0;
        clipTop = 0;
    }

    if (srcRect != nullptr) {
        sourceLeft = srcRect->UpperLeftCorner.X;
        sourceTop = srcRect->UpperLeftCorner.Y;
        sourceRight = srcRect->LowerRightCorner.X;
        sourceBottom = srcRect->LowerRightCorner.Y;
    } else if (src != nullptr) {
        if (dstTopLeft != nullptr) {
            // Back to the source image's own size, shifted by the clip origin.
            sourceLeft = clipLeft;
            sourceTop = clipTop;
            sourceRight = static_cast<int32_t>(src->m_width);
            sourceBottom = static_cast<int32_t>(src->m_height);
        } else {
            sourceLeft = areaLeft;
            sourceTop = areaTop;
            sourceRight = dst != nullptr ? static_cast<int32_t>(dst->m_width) : 0;
            sourceBottom = dst != nullptr ? static_cast<int32_t>(dst->m_height) : 0;
        }
    } else {
        sourceLeft = 0;
        sourceTop = 0;
        sourceRight = 0;
        sourceBottom = 0;
    }

    // The listing's two overlap tests. Its signed masks pair "max(source, clip)" against "min(limit, source)" on
    // each axis - the tests at 0x600b10 and 0x600b50 - where the limit is the clip rectangle's left or top plus
    // the destination extent, taken as zero when that sum is negative (the conditional-move masks short-circuit it
    // before the add). A region that comes out empty is dropped.
    const int32_t clipRight = clipLeft + areaRight;
    const int32_t clipBottom = clipTop + areaBottom;
    const int32_t boundedRight = clipRight < 0 ? 0 : clipRight;
    const int32_t boundedBottom = clipBottom < 0 ? 0 : clipBottom;
    const int32_t visibleLeft = (sourceLeft < clipLeft ? sourceLeft : clipLeft) | (sourceLeft < clipLeft ? 0 : clipLeft);
    const int32_t visibleRight = (boundedRight < sourceRight ? boundedRight : sourceRight) |
                                 (boundedRight < sourceRight ? 0 : boundedRight);
    if (visibleLeft >= visibleRight) {
        return 0;
    }
    const int32_t visibleTop = (sourceTop < clipTop ? sourceTop : clipTop) | (sourceTop < clipTop ? 0 : clipTop);
    const int32_t visibleBottom = (boundedBottom < sourceBottom ? boundedBottom : sourceBottom) |
                                  (boundedBottom < sourceBottom ? 0 : boundedBottom);
    if (visibleTop >= visibleBottom) {
        return 0;
    }

    const int32_t transferLeft = clipLeft + sourceLeft - areaLeft;
    const int32_t transferRight = clipLeft + clipRight - areaLeft;
    const int32_t transferTop = clipTop + sourceTop - areaTop;
    const int32_t transferBottom = transferTop + (visibleBottom - visibleTop);



    const uint32_t sourceStride = static_cast<uint32_t>(pixel_format::detail::PFDTable[srcFormat].bytesPerBlock);
    const uint32_t destinationStride = static_cast<uint32_t>(pixel_format::detail::PFDTable[dstFormat].bytesPerBlock);

    SBlitJob job;
    job.left = transferLeft;
    job.top = areaTop;
    job.right = transferRight;
    job.color = color & 0xFFFFu;
    job.color32 = color;
    job.srcPtr = src != nullptr
                     ? static_cast<void*>(src->m_data + transferTop * static_cast<int32_t>(src->m_pitch) +
                                          static_cast<int32_t>(sourceStride) * transferLeft)
                     : nullptr;
    job.dstPtr = dst != nullptr
                     ? static_cast<void*>(dst->m_data + transferTop * static_cast<int32_t>(dst->m_pitch) +
                                          static_cast<int32_t>(destinationStride) * transferLeft)
                     : nullptr;
    job.count = static_cast<uint32_t>(transferRight - transferLeft);
    job.rows = static_cast<uint32_t>(transferBottom - transferTop);
    job.srcRows = src != nullptr ? src->m_height : 0;
    job.dstRows = src != nullptr ? src->m_height : 0;
    job.srcPitch = src != nullptr ? src->m_pitch : 0;
    job.dstPitch = dst != nullptr ? dst->m_pitch : 0;

    uint8_t swizzle[8] = {};
    pixel_format::computeRelativeSwizzleTable(srcFormat, 12, swizzle);
    const uint8_t* bytes = reinterpret_cast<const uint8_t*>(&color);
    const uint32_t blue = bytes[swizzle[3]];
    const uint32_t alphaBit = bytes[swizzle[0]] & 0x80u;
    const uint32_t red = bytes[swizzle[1]] & 0xF8u;
    const uint32_t green = bytes[swizzle[2]] & 0xF8u;
    job.packedColor16 = (green << 7) | (alphaBit << 8) | (blue >> 3) | (red << 2);

    execute(&job);
    return 1;
}

}  // namespace

// 0x601804 _ZN6glitch5video6CImageD1Ev (D2 0x6018b8 is the same body; D0 0x60196c is the compiler's deleting form)
// Releases the pixel block and then the mip chain, both only when m_ownsData (+0x29) is set, and nulls each level
// pointer as it goes. Read off the binary: the block is freed first, then, when m_hasMipmaps (+0x28) is set and the
// level array exists, every level is freed until a null slot, and the array itself last.
//
// Deviation, deliberate: the original walks the level array with a do/while that stops at a null slot but does not
// bound the index, which only terminates because the array is fully initialised when it is built. This port stops
// at m_mipLevels as well, so a partially built chain cannot run the walk off the end.
//
// The m_ownsData guard really does cover the level array as well as the block (the LDRB at 0x601810 is followed by
// BNE 0x6018a8, which skips the array), and that guard has to stay: on the adopt path of 0x6021f8 the array is the
// caller's, so freeing it unconditionally would free memory the image never allocated. The price is that an image
// built through 0x6027e8 with own clear and a non-zero level count leaks the pointer array this port's own allocator
// made for it (and m_data too when that form also allocated it, i.e. its first bool clear), because nothing in the
// object records who allocated the array. Closing that would mean inventing a member the original does not have, so
// the leak is kept and named here and in the ledger row of 0x601804.
CImage::~CImage() {
    if (m_ownsData == 0) {
        return;
    }
    delete[] m_data;
    m_data = nullptr;
    if (m_mipData != nullptr) {
        if (m_hasMipmaps != 0) {
            for (uint32_t level = 0; level < m_mipLevels; ++level) {
                delete[] static_cast<uint8_t*>(m_mipData[level]);
                m_mipData[level] = nullptr;
            }
        }
        delete[] m_mipData;
        m_mipData = nullptr;
    }
}

// 0x601988 _ZN6glitch5video6CImage8initDataEb
// Computes the pitch and the data size, allocates the pixel data when there is none, and (with allocateMips)
// builds the mip chain: one allocation per level, with the level pointer array terminated by a null entry.
//
// Read field by field off the binary: the pitch is computePitch(m_format, m_width) (the two words it passes are
// +0x20 and +0x10), the size is pitch * m_height unless one was already supplied, and the data block is only
// allocated when m_data is still null - which is what lets a caller install its own buffer first and have
// initData skip the allocation.
//
// The level count is the number of halvings of (width, height) down to 1, and the array is sized 4 * (levels+1)
// bytes; the original picks 4 for a 1x1 image. Each level is allocated as height * bytesPerBlock * width (the
// PFDTable byte at +0x15, not the pitch) and zeroed with a byte that advances by 15 per level; that fill byte is
// cosmetic and the port zeroes instead.
void CImage::initData(bool allocateMips) {
    const uint32_t pitch = pixel_format::computePitch(m_format, m_width);
    m_pitch = pitch;
    if (m_dataSize == 0) {
        m_dataSize = pitch * m_height;
    }
    if (m_data == nullptr) {
        m_data = new uint8_t[m_dataSize];
    }
    if (!allocateMips || m_hasMipmaps == 0 || m_mipData != nullptr) {
        return;
    }

    uint32_t width = m_width;
    uint32_t height = m_height;
    const bool singleLevel = width == 1 && height == 1;
    if (!singleLevel) {
        uint32_t count = 1;
        uint32_t probeW = width;
        uint32_t probeH = height;
        while (true) {
            if (probeW > 1) probeW >>= 1;
            if (probeH > 1) probeH >>= 1;
            ++count;
            if (probeW == 1 && probeH == 1) break;
        }
        m_mipLevels = count - 1;
    }
    const uint32_t slots = singleLevel ? 1 : m_mipLevels + 1;
    m_mipData = new void*[slots];

    if (singleLevel) {
        m_mipData[0] = nullptr;
        return;
    }
    uint32_t index = 0;
    while (true) {
        if (width > 1) width >>= 1;
        if (height > 1) height >>= 1;
        const uint32_t bytes = height * static_cast<uint32_t>(pixel_format::detail::PFDTable[m_format].bytesPerBlock) * width;
        uint8_t* level = new uint8_t[bytes];
        std::memset(level, 0, bytes);
        m_mipData[index] = level;
        ++index;
        if (width == 1 && height == 1) break;
    }
    m_mipData[index] = nullptr;
}

// 0x601b10 _ZN6glitch5video6CImageC1ERKN5boost13intrusive_ptrIS1_EERKNS_4core10position2dIiEERKNS7_11dimension2dIiEE
// (C2 0x601c24 has the same body.) The sub-image form. Every field is cleared first and the format starts at 39, the
// table's "no row matched" value; m_ownsData is 1. With a source image the format, the requested size and the source's
// mip flag are taken over, initData allocates (and builds a level chain when the source has one), and then
// pixel_format::convert copies the sub-rectangle out of the source.
//
// Read off the listing: the call's source pointer is source->m_data + position.Y * source->m_pitch +
// position.X * PFDTable[m_format].bytesPerBlock (the table byte at +0x15), where m_format is the source's own format,
// and both the source and the destination format arguments are that same m_format. The call's result is ignored.
// The pixel transfer goes through pixel_format::convert's srcFormat == dstFormat "copy()" branch (0x5ee40c, now
// reconstructed in glitch-video/src/pixel_format_convert.cpp), so a same-format sub-image copy moves real bytes.
CImage::CImage(const boost::intrusive_ptr<CImage>& source, const core::position2d<int32_t>& position,
               const core::dimension2d<int32_t>& size) {
    referenceCounter = 0;
    m_format = 39;
    m_data = nullptr;
    m_mipData = nullptr;
    m_width = 0;
    m_height = 0;
    m_pitch = 0;
    m_dataSize = 0;
    m_mipLevels = 0;
    m_hasMipmaps = 0;
    m_ownsData = 1;

    CImage* const sourceImage = source.get();
    if (sourceImage == nullptr) {
        return;
    }
    m_format = sourceImage->m_format;
    m_width = static_cast<uint32_t>(size.Width);
    m_height = static_cast<uint32_t>(size.Height);
    m_hasMipmaps = sourceImage->m_hasMipmaps;
    initData(true);

    const uint32_t sourceOffset =
        static_cast<uint32_t>(position.Y) * sourceImage->m_pitch +
        static_cast<uint32_t>(position.X) *
            static_cast<uint32_t>(pixel_format::detail::PFDTable[m_format].bytesPerBlock);
    pixel_format::convert(m_format, sourceImage->m_data + sourceOffset, sourceImage->m_pitch, m_format, m_data, m_pitch,
                          m_width, m_height, false);
}

// 0x601d38 _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKN5boost13intrusive_ptrIS1_EE
// (C2 0x601eb0 has the same body.) The format-conversion form: the requested format is stored first, the rest of the
// fields are cleared (m_ownsData 1), and with a source image the source's width, height and mip flag are taken over,
// initData allocates (and builds a level chain when the source has one), and pixel_format::convert runs the source
// format into the requested format over the whole image.
//
// The failure path at 0x601dfc (convert returned 0) is reproduced as the listing has it: the format becomes 39, the
// pixel block is freed and cleared, the level chain is freed level by level until a null slot and then the level
// array itself, and the image is left empty - dataSize 0, ownsData 0, height 0, width 0. Two of the original's
// details are kept: the level-array pointer at +0x0c is NOT cleared after the free (the destructor then skips it
// because ownsData is 0), and m_mipLevels and m_hasMipmaps keep their values.
//
// Which format pairs succeed is pixel_format::convert's business, not this constructor's; the port's convert models a
// subset of the original's arms (its own ledger row), so a pair it refuses takes this failure path here just as an
// unsupported pair does in the original. The constructor's own body is the listing's.
CImage::CImage(E_PIXEL_FORMAT format, const boost::intrusive_ptr<CImage>& source) {
    referenceCounter = 0;
    m_format = format;
    m_data = nullptr;
    m_mipData = nullptr;
    m_width = 0;
    m_height = 0;
    m_pitch = 0;
    m_dataSize = 0;
    m_mipLevels = 0;
    m_hasMipmaps = 0;
    m_ownsData = 1;

    CImage* const sourceImage = source.get();
    if (sourceImage == nullptr) {
        return;
    }
    m_width = sourceImage->m_width;
    m_height = sourceImage->m_height;
    m_hasMipmaps = sourceImage->m_hasMipmaps;
    initData(true);

    if (pixel_format::convert(sourceImage->m_format, sourceImage->m_data, sourceImage->m_pitch, m_format, m_data,
                              m_pitch, m_width, m_height, false) != 0) {
        return;
    }
    m_format = 39;
    delete[] m_data;
    m_data = nullptr;
    if (m_mipData != nullptr) {
        if (m_hasMipmaps != 0) {
            for (uint32_t level = 0; m_mipData[level] != nullptr; ++level) {
                delete[] static_cast<uint8_t*>(m_mipData[level]);
                m_mipData[level] = nullptr;
            }
        }
        delete[] m_mipData;
    }
    m_dataSize = 0;
    m_ownsData = 0;
    m_height = 0;
    m_width = 0;
}

// 0x602028 _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEb
// (format, size, hasMipmaps): the size and format are stored, m_hasMipmaps takes the argument, m_ownsData is 1
// and initData allocates. The reference count is stored as 0, not left at the base's default of 1.
CImage::CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, bool hasMipmaps) {
    referenceCounter = 0;
    m_data = nullptr;
    m_mipData = nullptr;
    m_width = static_cast<uint32_t>(size.Width);
    m_height = static_cast<uint32_t>(size.Height);
    m_pitch = 0;
    m_dataSize = 0;
    m_format = format;
    m_mipLevels = 0;
    m_hasMipmaps = hasMipmaps ? 1 : 0;
    m_ownsData = 1;
    initData(true);
}

// 0x602110 _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEE
// As the hasMipmaps form with the flag clear, so no mip chain is built.
CImage::CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size) {
    referenceCounter = 0;
    m_data = nullptr;
    m_mipData = nullptr;
    m_width = static_cast<uint32_t>(size.Width);
    m_height = static_cast<uint32_t>(size.Height);
    m_pitch = 0;
    m_dataSize = 0;
    m_format = format;
    m_mipLevels = 0;
    m_hasMipmaps = 0;
    m_ownsData = 1;
    initData(true);
}

// 0x6021f8 _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvPS8_bb
// (C2 0x602434 has the same body.) The (format, size, data, mip data, copy, own) form.
//
// Read field by field off the listing: size -> +0x10/+0x14, format -> +0x20, m_hasMipmaps (+0x28) clears, the FIRST
// bool is the one tested at 0x60226c and the SECOND is stored into m_ownsData (+0x29). First bool set is the adopt
// path: +0x08 and +0x0c are set to 0x0badf00d, initData runs (and, since its data pointer is not null, allocates
// nothing), the caller's two pointers are stored over them, the level count restarts at 0, and the caller's level
// array is walked to recover the count (0x6023d0 - 0x602400). m_hasMipmaps is set only when that walk reaches a null
// entry with width and height both 1, so a short caller chain leaves it clear.
//
// First bool clear is the copy path. With mip data present m_hasMipmaps is set BEFORE initData, so initData allocates
// the block *and* a level chain; level 0 is copied in with the pitch * height byte count, then every caller level is
// copied into the level initData allocated for it, with the per-level size (height * PFDTable bitsPerPixel(+0x16) *
// width) >> 3 over the halved dimensions (0x6022e4 - 0x602338). Without mip data only the block is allocated and
// filled.
//
// Two things in the listing are not reproduced; both are unreachable, and they are named here rather than hidden:
//   - the cleanup at 0x60234c, which frees the levels initData built but the copy loop did not fill, is dead code. It
//     is reached only by falling out of the copy loop at 0x602338, and on that path m_mipLevels was cleared to 0
//     (0x6022ac) while the loop copied at least one level, so the BLS at 0x602348 always returns. (Its free loop at
//     0x60236c is an unconditional branch back to itself, so the original would spin in place there.) The port stores
//     the copied count and omits the dead block.
//   - neither the counting walk nor the copy loop bounds itself, so a caller chain shorter than the image's chain
//     makes the original read the next slot - which is not a level pointer - and memcpy from it. The port keeps that
//     shape: no caller in the original passes such a chain, and this constructor has no call sites at all (its only
//     cross-reference is the C2/C1 table entry at 0x7e258).
CImage::CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, void* data, void** mipData, bool copy,
               bool own) {
    referenceCounter = 0;
    m_data = nullptr;
    m_mipData = nullptr;
    m_width = static_cast<uint32_t>(size.Width);
    m_height = static_cast<uint32_t>(size.Height);
    m_ownsData = own ? 1 : 0;
    m_pitch = 0;
    m_dataSize = 0;
    m_format = format;
    m_mipLevels = 0;
    m_hasMipmaps = 0;

    if (copy) {
        // Adopt the caller's block and level array. The sentinel is the original's 0x0badf00d.
        m_mipData = reinterpret_cast<void**>(kAdoptedDataSentinel);
        m_data = kAdoptedDataSentinel;
        initData(true);
        m_data = static_cast<uint8_t*>(data);
        m_mipData = mipData;
        m_mipLevels = 0;
        if (mipData == nullptr) {
            return;
        }
        uint32_t width = m_width;
        uint32_t height = m_height;
        uint32_t index = 0;
        while (true) {
            void* const entry = mipData[index];
            if (entry == nullptr && width == 1) {
                if (height == 1) {
                    m_hasMipmaps = 1;
                    return;
                }
            } else if (width > 1) {
                width >>= 1;
            }
            if (height > 1) {
                height >>= 1;
            }
            ++index;
            ++m_mipLevels;
        }
    }

    if (mipData == nullptr) {
        initData(true);
        std::memcpy(m_data, data, m_pitch * m_height);
        return;
    }

    m_hasMipmaps = 1;
    initData(true);
    std::memcpy(m_data, data, m_pitch * m_height);

    const uint32_t bitsPerPixel = static_cast<uint32_t>(pixel_format::detail::PFDTable[m_format].bitsPerPixel);
    uint32_t width = m_width;
    uint32_t height = m_height;
    uint32_t index = 0;
    uint32_t copied = 0;
    const uint8_t* level = static_cast<const uint8_t*>(mipData[0]);
    // One register in the listing (r3/v19) gates both the width halving and the loop itself: it is true while the
    // walk has not reached a null entry with the width already down to 1.
    bool keepGoing = !(level == nullptr && width == 1);
    while (true) {
        if (keepGoing && width > 1) {
            width >>= 1;
        }
        if (height > 1) {
            height >>= 1;
        }
        ++copied;
        std::memcpy(m_mipData[index], level, (height * (bitsPerPixel * width)) >> 3);
        ++index;
        level = static_cast<const uint8_t*>(mipData[index]);
        keepGoing = !(level == nullptr && width == 1);
        if (keepGoing) {
            continue;
        }
        if (height == 1) {
            break;
        }
    }
    // The listing clears this counter after initData (0x6022ac) and stores the copied count here (0x602340).
    m_mipLevels = copied;
}

// 0x602670 _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvbb
// (C2 0x60272c has the same body.) The (format, size, data, copy, own) form: size -> +0x10/+0x14, format -> +0x20,
// m_hasMipmaps (+0x28), m_pitch (+0x18), m_dataSize (+0x1c) and m_mipLevels (+0x24) all clear, and m_ownsData (+0x29)
// takes the SECOND bool. There is no level array in this form, so m_mipData stays null.
//
// CORRECTION to this row's earlier note: the branch at 0x6026d8 tests the FIRST bool (LDRB R6,[SP,#arg_0]; CMP R6,#0;
// BNE 0x602704), not m_ownsData, and the two paths are the opposite way round from what that note claimed. The first
// bool SET stores 0x0badf00d into +0x08 (0x60270c) - which is what makes initData, whose allocation test is "only
// when the data pointer is null", leave the buffer alone - and then stores the caller's pointer over it (0x602718).
// The first bool CLEAR lets initData allocate and memcpy's pitch * height bytes of the caller's block into it
// (0x6026f8). So that flag means "adopt the caller's block", and m_ownsData alone decides which side frees it. The
// earlier port branched on own instead, reproducing neither path; the JPG loader (0x604e6c) passes adopt 1 with own 1
// for the block it allocated for the decode, which is the case this form exists for.
CImage::CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, void* data, bool copy, bool own) {
    referenceCounter = 0;
    m_data = nullptr;
    m_mipData = nullptr;
    m_width = static_cast<uint32_t>(size.Width);
    m_height = static_cast<uint32_t>(size.Height);
    m_ownsData = own ? 1 : 0;
    m_format = format;
    m_hasMipmaps = 0;
    m_pitch = 0;
    m_dataSize = 0;
    m_mipLevels = 0;

    if (copy) {
        m_data = kAdoptedDataSentinel;
        initData(true);
        m_data = static_cast<uint8_t*>(data);
        return;
    }
    initData(true);
    // The original memcpy's without testing the argument; the port keeps the null guard it already had.
    if (data != nullptr && m_data != nullptr && m_dataSize != 0) {
        std::memcpy(m_data, data, m_pitch * m_height);
    }
}

// 0x6027e8 _ZN6glitch5video6CImageC1ENS0_14E_PIXEL_FORMATERKNS_4core11dimension2dIiEEPvjjbb
// (C2 0x602938 has the same body.) The (format, size, data, size in bytes, mip level count, copy, own) form: the
// fourth argument after the data pointer is stored at +0x1c (the data size) and the fifth at +0x24 (the number of mip
// levels below level 0), which is what the DDS, ATC and PVR loaders pass. Read off the listing:
//
//   * m_ownsData (+0x29) takes the second bool, m_hasMipmaps (+0x28) is cleared, and +0x18 (the pitch) is NOT stored
//     here - both paths call initData, which computes it.
//   * first bool set adopts the caller's single buffer (the 0x0badf00d store at 0x602868 makes initData skip its
//     allocation, then the pointer is stored over it); first bool clear makes initData allocate dataSize bytes and
//     memcpy's exactly that many bytes from the caller's buffer (0x6028a4).
//   * with a non-zero level count the constructor then allocates its own pointer array, new void*[levels + 1]
//     (0x6028b4), and fills it with pointers into the single buffer: the entry for level i + 1 is the buffer plus the
//     sum of computeMipmapSizeInBytes(format, width, height, 0 .. i), so each entry sits one level past the previous
//     one, and a null terminates the array (0x6028e8 - 0x602928).
//   * m_hasMipmaps is NOT set on this path, and that is the point of the level array: the levels live inside m_data,
//     so the destructor must free the block once and the array once, never the levels individually. Whether it frees
//     either is m_ownsData's business, as before.
CImage::CImage(E_PIXEL_FORMAT format, const core::dimension2d<int32_t>& size, void* data, uint32_t dataSize,
               uint32_t mipLevels, bool copy, bool own) {
    referenceCounter = 0;
    m_data = nullptr;
    m_mipData = nullptr;
    m_width = static_cast<uint32_t>(size.Width);
    m_height = static_cast<uint32_t>(size.Height);
    m_mipLevels = mipLevels;
    m_ownsData = own ? 1 : 0;
    m_dataSize = dataSize;
    m_format = format;
    m_hasMipmaps = 0;

    uint32_t levels;
    if (copy) {
        m_data = kAdoptedDataSentinel;
        initData(false);
        levels = m_mipLevels;
        m_data = static_cast<uint8_t*>(data);
    } else {
        initData(false);
        std::memcpy(m_data, data, dataSize);
        levels = m_mipLevels;
    }
    if (levels == 0) {
        return;
    }

    m_mipData = new void*[levels + 1];
    uint8_t* level = m_data;
    uint32_t index = 0;
    do {
        level += pixel_format::computeMipmapSizeInBytes(m_format, m_width, m_height, static_cast<uint8_t>(index), false);
        m_mipData[index] = level;
        ++index;
    } while (m_mipLevels > index);
    m_mipData[index] = nullptr;
}

// 0x5ff638 _ZNK6glitch5video6CImage12getDimensionEj
core::dimension2d<uint32_t> CImage::getDimension(uint32_t mipLevel) const {
    core::dimension2d<uint32_t> result;
    result.Width = mipDimension(m_width, mipLevel);
    result.Height = mipDimension(m_height, mipLevel);
    return result;
}

// 0x5ff808 _ZNK6glitch5video6CImage8getPixelEjj
// Outside the image, and for a format other than 2, 5, 8, 10, 12 and 13, the answer is 0. The data is read row by row (width is the
// row length in pixels). Format 2 (8-bit): the byte becomes the top byte of the colour. Formats 5 (16-bit 5-6-5) and 8 (1-5-5-5) widen
// the channels by replicating the high bits; format 10 (24-bit) reads three bytes and sets the top byte to 255; format 12 (32-bit) rotates
// the word by one byte; format 13 (32-bit) swaps its first and third bytes and keeps the others.
SColor CImage::getPixel(uint32_t x, uint32_t y) const {
    SColor result;
    if (m_width <= x || m_height <= y) {
        return result;
    }
    uint32_t b0 = 0;  // v6 (colour byte 0)
    uint32_t b1 = 0;  // v5
    uint32_t b2 = 0;  // v4
    uint32_t b3 = 0;  // a3
    switch (m_format) {
        case 2:
            b3 = m_data[m_width * y + x];
            break;
        case 5:
        case 8: {
            uint32_t value = *reinterpret_cast<const uint16_t*>(m_data + 2 * (x + m_width * y));
            uint32_t low;
            uint32_t green;
            if (m_format == 5) {
                low = (static_cast<uint8_t>((value >> 13) | (static_cast<uint16_t>(value & 0xF800u) >> 8)) << 8) | 0xFFu;
                green = (static_cast<int32_t>(value & 0x7E0u) >> 2) | (static_cast<uint16_t>(value & 0x7E0u) >> 8);
            } else {
                const uint32_t alpha = (value & 0x8000u) != 0 ? 0xFFu : 0u;
                low = alpha | (((static_cast<int32_t>(value & 0x7C00u) >> 7) | (static_cast<uint16_t>(value & 0x7C00u) >> 12)) << 8);
                green = (static_cast<int32_t>(value & 0x3E0u) >> 2) | (static_cast<uint16_t>(value & 0x3E0u) >> 8);
            }
            const uint32_t packed = (low & 0xFFFFu) | ((static_cast<uint8_t>(green) << 16) & 0xFFFFFFu) |
                                    ((((value >> 2) & 7u) | static_cast<uint8_t>(8u * value)) << 24);
            b2 = packed >> 24;
            b3 = packed & 0xFFu;
            b0 = (packed >> 8) & 0xFFu;
            b1 = (packed >> 16) & 0xFFu;
            break;
        }
        case 10: {
            const uint8_t* pixel = m_data + 3 * (x + m_width * y);
            b3 = 0xFF;
            b0 = pixel[0];
            b1 = pixel[1];
            b2 = pixel[2];
            break;
        }
        case 12: {
            const uint32_t value = *reinterpret_cast<const uint32_t*>(m_data + 4 * (x + m_width * y));
            b2 = value >> 24;
            b3 = value & 0xFFu;
            b0 = (value >> 8) & 0xFFu;
            b1 = (value >> 16) & 0xFFu;
            break;
        }
        case 13: {
            const uint32_t value = *reinterpret_cast<const uint32_t*>(m_data + 4 * (x + m_width * y));
            b2 = value & 0xFFu;
            b3 = value >> 24;
            b0 = (value >> 16) & 0xFFu;
            b1 = (value >> 8) & 0xFFu;
            break;
        }
        default:
            break;
    }
    result.color = (b0 & 0xFFu) | ((b1 & 0xFFu) << 8) | (((b2 & 0xFFu) << 16) & 0xFFFFFFu) | ((b3 & 0xFFu) << 24);
    return result;
}

// 0x5ff680 _ZN6glitch5video6CImage8setPixelEjjRKNS_6SColorE
// The write side of getPixel, and deliberately NOT a call to it: the whole body is a switch on m_format (+0x20)
// whose cases address m_data (+0x08) at m_pitch (+0x18) * y with a byte, a halfword or a word per pixel. The listing
// calls nothing at all, which is why the packing is written out per case. A coordinate outside the image is dropped
// silently, and a format outside the six writes nothing.
//
// The byte order of the 32-bit cases is the format's component order, the same one fill and getPixel use: format 12
// stores r,g,b,a at bytes 0..3 and 14 stores g,b,a,r, with byte 3 the alpha in both. The 16-bit cases are R5G6B5 (5)
// and A1R5G5B5 (8), the latter also carrying the source's alpha bit.
void CImage::setPixel(uint32_t x, uint32_t y, const SColor& color) {
    if (m_width <= x || m_height <= y) {
        return;
    }
    const uint8_t c0 = color.component(0);
    const uint8_t c1 = color.component(1);
    const uint8_t c2 = color.component(2);
    const uint8_t c3 = color.component(3);
    switch (m_format) {
        case 2:
            m_data[m_pitch * y + x] = c3;
            break;
        case 5: {  // R5G6B5 from components 0, 1 and 2
            const uint16_t packed = static_cast<uint16_t>((static_cast<uint32_t>(c0 & 0xF8u) << 8) |
                                                          (static_cast<uint32_t>(c1 & 0xFCu) << 3) |
                                                          (static_cast<uint32_t>(c2) >> 3));
            *reinterpret_cast<uint16_t*>(m_data + m_pitch * y + 2u * x) = packed;
            break;
        }
        case 8: {  // A1R5G5B5 from components 3, 0, 1 and 2
            const uint16_t packed = static_cast<uint16_t>((static_cast<uint32_t>(c3 & 0x80u) << 8) |
                                                          (static_cast<uint32_t>(c0 & 0xF8u) << 7) |
                                                          (static_cast<uint32_t>(c1 & 0xF8u) << 2) |
                                                          (static_cast<uint32_t>(c2) >> 3));
            *reinterpret_cast<uint16_t*>(m_data + m_pitch * y + 2u * x) = packed;
            break;
        }
        case 10: {  // three bytes, no alpha
            uint8_t* pixel = m_data + m_pitch * y + 3u * x;
            pixel[0] = c0;
            pixel[1] = c1;
            pixel[2] = c2;
            break;
        }
        case 12:  // byte order r, g, b, a
            *reinterpret_cast<uint32_t*>(m_data + m_pitch * y + 4u * x) =
                static_cast<uint32_t>(c3) | (static_cast<uint32_t>(c0) << 8) | (static_cast<uint32_t>(c1) << 16) |
                (static_cast<uint32_t>(c2) << 24);
            break;
        case 14:  // byte order g, b, a, r
            *reinterpret_cast<uint32_t*>(m_data + m_pitch * y + 4u * x) =
                static_cast<uint32_t>(c1) | (static_cast<uint32_t>(c2) << 8) | (static_cast<uint32_t>(c3) << 16) |
                (static_cast<uint32_t>(c0) << 24);
            break;
        default:
            break;
    }
}

// 0x600104 _ZN6glitch5video6CImage8drawLineERKNS_4core10position2dIiEES6_RKNS0_6SColorE
//
// A self-contained clipped Bresenham line: the only call in the body is __aeabi_idiv, and every pixel is packed and
// stored here rather than through setPixel. Read off the listing:
//
//   * The endpoints are clipped to the image first, with four-bit codes (4 = left, 8 = right, 2 = above, 1 = below)
//     and the intersection taken on whichever edge the outside endpoint crosses (0x6001b8 for the bottom, 0x6001e8
//     for the top, 0x600300 for the left and 0x600310 for the right). A line outside on the same side is dropped.
//   * The format is then re-read (0x6002dc): anything other than 8 (R5G6B5) or 12 (r,g,b,a) returns at 0x6002f4
//     without writing.
//   * The alpha byte picks the mode, together with the format. For 16-bit it is the "aLess == 256" test of
//     0x6002e4/0x6002e8/0x600330 (alpha == 128) and for 32-bit the equality at 0x600428; in both, the branch on
//     equal blends and the fall-through writes the colour flat, so alpha 128 blends and every other alpha does not.
//   * The 32-bit blend rotates the colour one byte into r,g,b,a order (0x600414/0x60041c), blends the lanes against
//     the pixel already there and rotates the result back (0x6004d0, 0x60050c). The 16-bit blend does the same in
//     the A1R5G5B5 lanes with an LSR #5 per lane (0x600658..0x6006a0).
void CImage::drawLine(const core::position2d<int32_t>& from, const core::position2d<int32_t>& to, const SColor& color) {
    int32_t x0 = from.X;
    int32_t y0 = from.Y;
    int32_t x1 = to.X;
    int32_t y1 = to.Y;
    const int32_t maxX = static_cast<int32_t>(m_width) - 1;
    const int32_t maxY = static_cast<int32_t>(m_height) - 1;

    while (true) {
        const int32_t out0 = (x0 < 0 ? 4 : (x0 > maxX ? 8 : 0)) | (y0 < 0 ? 2 : (y0 > maxY ? 1 : 0));
        const int32_t out1 = (x1 < 0 ? 4 : (x1 > maxX ? 8 : 0)) | (y1 < 0 ? 2 : (y1 > maxY ? 1 : 0));
        if ((out0 | out1) == 0) {
            break;
        }
        if ((out0 & out1) != 0) {
            return;
        }
        const int32_t out = out0 != 0 ? out0 : out1;
        int32_t x;
        int32_t y;
        if ((out & 1) != 0) {  // below the image: cross the bottom edge
            x = signedDiv(static_cast<int32_t>(static_cast<uint32_t>(x1 - x0) * static_cast<uint32_t>(maxY - y0)),
                          y1 - y0) +
                x0;
            y = maxY;
        } else if ((out & 2) != 0) {  // above the image: cross the top edge
            x = signedDiv(static_cast<int32_t>(static_cast<uint32_t>(x1 - x0) * static_cast<uint32_t>(0 - y0)),
                          y1 - y0) +
                x0;
            y = 0;
        } else if ((out & 8) != 0) {  // right of the image
            x = maxX;
            y = signedDiv(static_cast<int32_t>(static_cast<uint32_t>(y1 - y0) * static_cast<uint32_t>(maxX - x0)),
                          x1 - x0) +
                y0;
        } else {  // left of the image
            x = 0;
            y = signedDiv(static_cast<int32_t>(static_cast<uint32_t>(y1 - y0) * static_cast<uint32_t>(0 - x0)),
                          x1 - x0) +
                y0;
        }
        if (out == out0) {
            x0 = x;
            y0 = y;
        } else {
            x1 = x;
            y1 = y;
        }
    }

    const uint8_t c0 = color.component(0);
    const uint8_t c1 = color.component(1);
    const uint8_t c2 = color.component(2);
    const uint8_t c3 = color.component(3);
    const uint32_t alpha = static_cast<uint32_t>(c3) + (static_cast<uint32_t>(c3) >> 7);

    const int32_t runX = x1 - x0 < 0 ? x0 - x1 : x1 - x0;
    const int32_t runY = y1 - y0 < 0 ? y0 - y1 : y1 - y0;
    const int32_t pitch = static_cast<int32_t>(m_pitch);
    const int32_t stepX2 = x1 - x0 < 0 ? -2 : 2;
    const int32_t stepY = y1 - y0 < 0 ? -pitch : pitch;
    const int32_t stepX4 = x1 - x0 < 0 ? -4 : 4;

    // The Bresenham setup of 0x600398..0x6003c4 / 0x600568..0x600590: the larger of the two runs becomes the step
    // count, the other the error accumulator, and the two steps swap when the line is steep.
    const bool steep = runY > runX;
    const int32_t major = steep ? runY : runX;
    const int32_t minor = steep ? runX : runY;
    const int32_t step2 = steep ? stepX2 : 2;
    const int32_t cross2 = steep ? 2 : stepY;
    const int32_t step4 = steep ? stepX4 : 4;
    const int32_t cross4 = steep ? 4 : stepY;
    if (major == 0) {
        return;
    }

    if (m_format == 8) {
        const uint16_t packed = static_cast<uint16_t>((static_cast<uint32_t>(c0 & 0xF8u) << 7) |
                                                      (static_cast<uint32_t>(c3 & 0x80u) << 8) |
                                                      (static_cast<uint32_t>(c1 & 0xF8u) << 2) |
                                                      (static_cast<uint32_t>(c2) >> 3));
        if (alpha != 256) {
            // Flat 16-bit write (the 0x600330 arm).
            uint8_t* pixel = m_data + pitch * y0 + 2 * x0;
            int32_t error = 0;
            int32_t left = major;
            do {
                error += 2 * minor;
                std::memcpy(pixel, &packed, sizeof(packed));
                pixel += step2;
                if (error > major) {
                    pixel += cross2;
                    error -= 2 * major;
                }
                --left;
            } while (left);
            return;
        }
        // Blended 16-bit write (the 0x6005c8 arm): the colour is weighted against the pixel already there, one
        // LSR #5 per lane.
        const uint32_t colourRed = static_cast<uint32_t>(packed) & 0x7C00u;
        const uint32_t colourGreen = static_cast<uint32_t>(packed) & 0x3E0u;
        const uint32_t colourBlue = static_cast<uint32_t>(packed) & 0x1Fu;
        uint8_t* pixel = m_data + pitch * y0 + 2 * x0;
        int32_t error = 0;
        int32_t left = major;
        do {
            error += 2 * minor;
            uint16_t under;
            std::memcpy(&under, pixel, sizeof(under));
            const uint32_t blended =
                (((under & 0x7C00u) + ((alpha * (colourRed - (under & 0x7C00u))) >> 5)) & 0x7C00u) |
                (((under & 0x3E0u) + ((alpha * (colourGreen - (under & 0x3E0u))) >> 5)) & 0x3E0u) |
                (((under & 0x1Fu) + ((alpha * (colourBlue - (under & 0x1Fu))) >> 5)) & 0x1Fu);
            const uint16_t stored = static_cast<uint16_t>(blended);
            std::memcpy(pixel, &stored, sizeof(stored));
            pixel += step2;
            if (error > major) {
                pixel += cross2;
                error -= 2 * major;
            }
            --left;
        } while (left);
        return;
    }

    if (m_format != 12) {
        return;
    }
    // The colour in r,g,b,a byte order, which is what format 12's four lanes are.
    const uint32_t reference = static_cast<uint32_t>(c3) | (static_cast<uint32_t>(c0) << 8) |
                               (static_cast<uint32_t>(c1) << 16) | (static_cast<uint32_t>(c2) << 24);
    if (alpha == 256) {
        // Flat 32-bit write (the 0x600530 arm).
        uint8_t* pixel = m_data + pitch * y0 + 4 * x0;
        int32_t error = 0;
        int32_t left = major;
        do {
            error += 2 * minor;
            std::memcpy(pixel, &reference, sizeof(reference));
            pixel += step4;
            if (error > major) {
                pixel += cross4;
                error -= 2 * major;
            }
            --left;
        } while (left);
        return;
    }
    // Blended 32-bit write (the 0x600408 arm): the pixel already there is rotated into r,g,b,a, blended against
    // the colour's two lane words, and rotated back.
    const uint32_t redBlueWeight = reference & 0xFF00FFu;
    const uint32_t greenWeight = reference & 0xFF00u;
    uint8_t* pixel = m_data + pitch * y0 + 4 * x0;
    int32_t error = 0;
    int32_t left = major;
    do {
        error += 2 * minor;
        uint32_t under;
        std::memcpy(&under, pixel, sizeof(under));
        under = (under << 24) | (under >> 8);
        const uint32_t blended =
            (((under & 0xFF00FFu) + ((alpha * (redBlueWeight - (under & 0xFF00FFu))) >> 8)) & 0xFF00FFu) |
            (((under & 0xFF00u) + ((alpha * (greenWeight - (under & 0xFF00u))) >> 8)) & 0xFF00u) |
            0xFF000000u;
        const uint32_t stored = (blended >> 24) | (blended << 8);
        std::memcpy(pixel, &stored, sizeof(stored));
        pixel += step4;
        if (error > major) {
            pixel += cross4;
            error -= 2 * major;
        }
        --left;
    } while (left);
}

// 0x600708 _ZN6glitch5video6CImage6copyToERKN5boost13intrusive_ptrIS1_EERKNS_4core10position2dIiEERKNS7_4rectIiEEPSE_j
//
// The full-form blit in the direction the listing actually has it: the intrusive_ptr argument (r1/a2) is the
// DESTINATION and `this` (r0/r7) is the pixel SOURCE. The mangled name settles the direction on its own: the
// convert call that ends the body is _ZN...convertENS0_14E_PIXEL_FORMATEPKvjS2_Pvjjjb, whose 2nd parameter is
// void const* (read) and whose 5th is void* (written), and that call passes this image's format/data/pitch
// (r7 = r0 = this: LDR R0,[R7,#0x20], LDR R12,[R7,#8], LDR R2,[R7,#0x18] at 0x6007f8/0x600804/0x600808) as
// parameters 1-3 and the argument image's data/pitch (+0x08/+0x18, or the mip level) as parameters 4-6.
//
// Everything the argument image supplies is destination-shaped: the mip-level guard compares the flags argument
// with its +0x24 (LDR R12,[R1,#0x24] at 0x60071c), the default clip rectangle is its getDimension(flags)
// (0x6008e8), and the level pitch is computePitch of its format (0x600848/0x600868).
//
// Read off the listing, the region:
//   * Position culling first: position.X > clipRight or position.Y > clipBottom returns (0x600750..0x60076c).
//   * The read rectangle is the third argument, and it is culled against the clip as well: its left/top above
//     clipRight/clipBottom returns (0x600754/0x600768).
//   * The placement is clipped to the clip rectangle's left/top: when position.X < clipLeft the X placement
//     becomes position.X + (clipLeft - position.X) (RSB R10,R8,R12 then ADD R10,R10,R12 at 0x600790/0x60079c;
//     the same shape for Y at 0x6007a4..0x6007b4). The read rectangle's left/top are clipped the same way.
//   * Its right/bottom are clamped to clipRight/clipBottom (0x6007b8..0x6007dc) and the transfer is dropped
//     unless both extents come out positive (0x6007e8).
//   * The read pointer is THIS image's level-0 block (or its mip level, when flags and a chain are present) at
//     the read rectangle's origin; the write pointer is the ARGUMENT image's level-0 block at the clipped
//     placement (m_data + pitch * destY + stride * destX; 0x600818/0x600828), each advancing by its own
//     format's bytes per pixel (PFDTable +0x15).
//   * The transfer is pixel_format::convert from this image's format to the argument image's, and a same-format
//     pair takes convert's copy branch (0x5ee40c, reconstructed).
void CImage::copyTo(const boost::intrusive_ptr<CImage>& target, const core::position2d<int32_t>& position,
                    const core::rect<int32_t>& source, const core::rect<int32_t>* clip, uint32_t flags) {
    CImage* const destination = target.get();
    if (destination == nullptr || flags > destination->m_mipLevels) {
        // The listing dereferences the handle without this guard; it is kept so a null target cannot fault.
        return;
    }
    int32_t clipLeft;
    int32_t clipTop;
    int32_t clipRight;
    int32_t clipBottom;
    if (clip != nullptr) {
        // var_18/var_1C hold the clip's left/top, var_24/var_20 its right/bottom, and the culling below pairs
        // the CLIP's right/bottom (R2/R1 at 0x600748/0x600744) with the POSITION and the READ rectangle.
        clipLeft = clip->UpperLeftCorner.X;
        clipTop = clip->UpperLeftCorner.Y;
        clipRight = clip->LowerRightCorner.X;
        clipBottom = clip->LowerRightCorner.Y;
    } else {
        const core::dimension2d<uint32_t> extent = destination->getDimension(flags);
        clipLeft = 0;
        clipTop = 0;
        clipRight = static_cast<int32_t>(extent.Width);
        clipBottom = static_cast<int32_t>(extent.Height);
    }

    // The read rectangle (the third argument is the SOURCE side; var_20/var_24 hold its left/top).
    int32_t sourceLeft = source.UpperLeftCorner.X;
    int32_t sourceTop = source.UpperLeftCorner.Y;
    int32_t sourceRight = source.LowerRightCorner.X;
    int32_t sourceBottom = source.LowerRightCorner.Y;

    // 0x600750..0x60076c: the placement and then the read rectangle are culled against the clip.
    const int32_t positionX = position.X;
    const int32_t positionY = position.Y;
    if (positionX > clipRight || positionY > clipBottom) {
        return;
    }
    if (sourceLeft > clipRight || sourceTop > clipBottom) {
        return;
    }

    // 0x600790..0x6007b4: both the placement and the read rectangle slide right/up by the amount the
    // placement lies past the clip's left/top. The two X updates are RSB R10,R8,R12 (shift = clipLeft -
    // positionX) then ADD R10,R10,R12 (destX = positionX + shift), and the Y pair has the same shape.
    int32_t destX = positionX;
    int32_t destY = positionY;
    if (positionX < clipLeft) {
        const int32_t shift = clipLeft - positionX;
        destX = positionX + shift;
    }
    if (positionY < clipTop) {
        const int32_t shift = clipTop - positionY;
        destY = positionY + shift;
    }
    if (sourceLeft < clipLeft) {
        sourceLeft -= clipLeft - sourceLeft;
    }
    if (sourceTop < clipTop) {
        sourceTop -= clipTop - sourceTop;
    }
    if (sourceRight > clipRight) {
        sourceRight = clipRight;
    }
    if (sourceBottom > clipBottom) {
        sourceBottom = clipBottom;
    }
    const int32_t width = sourceRight - sourceLeft;
    const int32_t height = sourceBottom - sourceTop;
    if (width <= 0 || height <= 0) {
        return;
    }

    const E_PIXEL_FORMAT levelFormat = m_format;
    const uint8_t* sourcePtr = m_data;
    uint32_t sourcePitch = m_pitch;
    if (flags != 0 && m_mipData != nullptr) {
        sourcePtr = static_cast<const uint8_t*>(m_mipData[flags - 1]);
        sourcePitch = pixel_format::computePitch(levelFormat, destination->getDimension(flags).Width);
    }
    const int32_t sourceStride = static_cast<int32_t>(pixel_format::detail::PFDTable[levelFormat].bytesPerBlock);
    sourcePtr += static_cast<int32_t>(sourcePitch) * sourceTop + sourceStride * sourceLeft;

    const int32_t destinationStride = static_cast<int32_t>(pixel_format::detail::PFDTable[m_format].bytesPerBlock);
    uint8_t* destinationPtr = destination->m_data + static_cast<int32_t>(destination->m_pitch) * destY +
                              destinationStride * destX;
    pixel_format::convert(levelFormat, sourcePtr, sourcePitch, destination->m_format, destinationPtr,
                          destination->m_pitch, static_cast<uint32_t>(width), static_cast<uint32_t>(height), false);
}

// 0x60090c _ZN6glitch5video6CImage6copyToERKN5boost13intrusive_ptrIS1_EERKNS_4core10position2dIiEEj
// A fifteen-instruction wrapper: the read rectangle is built from THIS image's own width and height (LDR LR,
// [R0,#0x14] and LDR R4,[R0,#0x10] at 0x600910/0x600914, stored into the local rect's right/bottom at
// 0x600928/0x60092c) with a zero top-left, and the full form is called with no clip rectangle. This image is the
// pixel source, so the rectangle is this image's extent, not the destination's.
void CImage::copyTo(const boost::intrusive_ptr<CImage>& target, const core::position2d<int32_t>& position,
                    uint32_t flags) {
    core::rect<int32_t> source;
    source.UpperLeftCorner.X = 0;
    source.UpperLeftCorner.Y = 0;
    source.LowerRightCorner.X = static_cast<int32_t>(m_width);
    source.LowerRightCorner.Y = static_cast<int32_t>(m_height);
    copyTo(target, position, source, nullptr, flags);
}

// 0x600e1c _ZN6glitch5video6CImage12drawRectangleERKNS_4core4rectIiEERKNS_6SColorE
//
// Fills the rectangle with one colour through the dispatcher. The colour is first permuted into the destination's
// component order (0x600e34..0x600e6c: format 12 turns (a,r,g,b) into (r,g,b,a), 13 and 14 use the word as it
// stands) and the alpha byte of the RAW source word then picks the executor: 0xff takes the plain colour fill,
// anything else the ColourAlpha blend (0x600e7c). Both are called with no source image, no destination rectangle
// and the rectangle passed as the position argument, which is the dispatcher's "a4 == a6" shape.
void CImage::drawRectangle(const core::rect<int32_t>& rect, const SColor& color) {
    const uint32_t raw = color.color;
    const uint32_t packed = (m_format == 12) ? ((raw << 24) | (raw >> 8)) : raw;
    const eBlitter mode = (raw >> 24) == 0xFFu ? EBT_COLOR : EBT_COLORALPHA;
    // The listing passes the caller's rectangle in both the destination-rectangle and the position argument (the
    // same register, r6, at 0x600e98 and 0x600e9c), which is the dispatcher's "a4 -> width and height from a2"
    // branch: the placement is (0,0) and the rectangle's size is the destination extent.
    const core::position2d<int32_t>* placement = reinterpret_cast<const core::position2d<int32_t>*>(&rect);
    blit(mode, this, nullptr, placement, nullptr, &rect, packed);
}

// 0x600ed0 _ZN6glitch5video6CImage14copyToWithAlphaERKN5boost13intrusive_ptrIS1_EERKNS_4core10position2dIiEERKNS7_4rectIiEERKNS_6SColorEPKSE_
//
// Copies a region of this image over the destination with the given alpha colour. The listing permutes the colour
// bytes into the destination image's component order (0x600ef4..0x600f24) - the same permutation fill and
// drawRectangle use - and then tests the four components of the raw word against 0xff at 0x600f30..0x600f68, so
// "fully opaque" is the whole word being 0xffffffff; that takes the plain texture blend and anything else the
// colour-scaled one. The dispatcher is called as
// blit(mode, destinationImage, clip, position, this, sourceRect, packedColour).
void CImage::copyToWithAlpha(const boost::intrusive_ptr<CImage>& target, const core::position2d<int32_t>& position,
                             const core::rect<int32_t>& source, const SColor& color,
                             const core::rect<int32_t>* clip) {
    CImage* const destination = target.get();
    const uint32_t raw = color.color;
    const bool opaque = raw == 0xFFFFFFFFu;
    const eBlitter mode = opaque ? EBT_TEXTUREBLEND : EBT_TEXTUREBLENDCOLOR;
    blit(mode, destination, clip, &position, this, &source, raw);
}

// 0x600fcc _ZN6glitch5video6CImage13copyToScalingEPvjjNS0_14E_PIXEL_FORMATEji
//
// Scales this image into the caller's buffer with a box filter. Read off the listing:
//   * A null target, a zero width or height, or a zero flags argument returns immediately (0x600fd8..0x601000).
//     A zero pitch is replaced by computePitch(format, width) (0x6014c4).
//   * When the destination width equals this image's width and (flags == 0 or the heights are equal) the image is
//     converted straight into the caller's buffer and the function returns (0x60101c..0x60176c). The flags argument
//     has already been rejected when it is zero, so that term is now only "the heights are equal".
//   * Otherwise either side is moved into the 32-bit format 14 when its PFDTable row has the 0x40 flag set or is
//     not 32 bits per pixel (0x601058 and 0x6010f8), a temporary buffer is allocated for the side that needs one,
//     and the box filter runs from the (possibly converted) source into the (possibly converted) destination.
//     pixel_format::computeRelativeSwizzleTable maps the four source lanes onto the destination's lane order for
//     the four stores at 0x601620..0x6016b8.
//   * The filter is an area average: for each destination pixel the source rectangle it covers is walked, a fully
//     covered source pixel counts 1.0 and an edge pixel its covered fraction, the four channel sums are accumulated
//     and each is divided by the total covered fraction. The listing keeps the four sums in one vector (v53..v56)
//     and indexes it with the swizzle table; it adds the raw integer flags value to each average (0x601620), which
//     is the bias this port writes as static_cast<float>(flags).
//   * The filtered rows are then converted from format 14 into the requested format (0x601448) and both temporaries
//     are released (0x601490, 0x6014a4).
void CImage::copyToScaling(void* target, uint32_t width, uint32_t height, E_PIXEL_FORMAT format, uint32_t pitch,
                           int32_t flags) {
    if (target == nullptr || width == 0 || height == 0 || flags == 0) {
        return;
    }
    if (pitch == 0) {
        pitch = pixel_format::computePitch(format, width);
    }
    if (m_width == width && m_height == height) {
        pixel_format::convert(m_format, m_data, m_pitch, format, target, pitch, width, height, false);
        return;
    }

    const E_PIXEL_FORMAT intermediate = 14;
    E_PIXEL_FORMAT sourceFormat = m_format;
    uint32_t sourcePitch = m_pitch;
    uint8_t* convertedSource = nullptr;
    if ((pixel_format::detail::PFDTable[m_format].flags & 0x40u) != 0 ||
        pixel_format::detail::PFDTable[m_format].bitsPerPixel != 32) {
        sourcePitch = pixel_format::computePitch(intermediate, m_width);
        sourceFormat = intermediate;
        convertedSource = new uint8_t[static_cast<size_t>(m_height) * sourcePitch];
        pixel_format::convert(m_format, m_data, m_pitch, intermediate, convertedSource, sourcePitch, m_width, m_height,
                              false);
    }
    const uint8_t* source = convertedSource != nullptr ? convertedSource : m_data;

    uint32_t destinationPitch = pitch;
    uint8_t* convertedDestination = nullptr;
    uint8_t* destination = static_cast<uint8_t*>(target);
    uint8_t swizzle[8] = {};
    if ((pixel_format::detail::PFDTable[format].flags & 0x40u) == 0 &&
        pixel_format::detail::PFDTable[format].bitsPerPixel == 32) {
        pixel_format::computeRelativeSwizzleTable(sourceFormat, format, swizzle);
    } else {
        destinationPitch = pixel_format::computePitch(intermediate, width);
        convertedDestination = new uint8_t[static_cast<size_t>(height) * destinationPitch];
        destination = convertedDestination;
        pixel_format::computeRelativeSwizzleTable(sourceFormat, intermediate, swizzle);
    }

    const float scaleX = static_cast<float>(m_width) / static_cast<float>(width);
    const float scaleY = static_cast<float>(m_height) / static_cast<float>(height);
    const float bias = static_cast<float>(flags);

    uint8_t* destinationRow = destination;
    float previousRowBound = 0.0f;
    uint32_t rowIndex = 0;
    while (true) {
        const float rowBound = static_cast<float>(++rowIndex) * scaleY;
        const float firstRow = std::floor(previousRowBound + 0.0001f);
        uint8_t* destinationPixel = destinationRow;
        float previousColumnBound = 0.0f;
        uint32_t columnIndex = 0;
        while (true) {
            const float columnBound = static_cast<float>(++columnIndex) * scaleX;
            const float firstColumn = std::floor(previousColumnBound + 0.0001f);
            float sum0 = 0.0f;
            float sum1 = 0.0f;
            float sum2 = 0.0f;
            float sum3 = 0.0f;
            float covered = 0.0f;
            if (rowBound > firstRow) {
                const uint8_t* sourcePixel =
                    source + 4 * static_cast<int32_t>(firstColumn) + sourcePitch * static_cast<int32_t>(firstRow);
                float rowTop = firstRow;
                while (true) {
                    const float rowCoverage = rowBound <= rowTop + 1.0f ? rowBound - rowTop : 1.0f;
                    if (columnBound > firstColumn) {
                        float columnLeft = firstColumn;
                        while (columnLeft >= previousColumnBound) {
                            const float weight = columnBound <= columnLeft + 1.0f
                                                     ? rowCoverage * (columnBound - columnLeft)
                                                     : rowCoverage;
                            sum0 += weight * static_cast<float>(sourcePixel[0]);
                            sum1 += weight * static_cast<float>(sourcePixel[1]);
                            sum2 += weight * static_cast<float>(sourcePixel[2]);
                            sum3 += weight * static_cast<float>(sourcePixel[3]);
                            covered += weight;
                            if (columnBound <= columnLeft + 1.0f) {
                                break;
                            }
                            sourcePixel += 4;
                            columnLeft += 1.0f;
                        }
                    }
                    if (rowBound <= rowTop + 1.0f) {
                        break;
                    }
                    rowTop += 1.0f;
                    sourcePixel += sourcePitch;
                }
            }
            const float lanes[4] = {sum0, sum1, sum2, sum3};
            for (uint32_t lane = 0; lane < 4; ++lane) {
                destinationPixel[lane] = static_cast<uint8_t>(
                    static_cast<uint32_t>((bias + lanes[swizzle[lane]]) / (covered == 0.0f ? 1.0f : covered)));
            }
            destinationPixel += 4;
            if (columnIndex != width) {
                previousColumnBound = static_cast<float>(columnIndex) * scaleX;
                continue;
            }
            break;
        }
        if (rowIndex != height) {
            destinationRow += destinationPitch;
            previousRowBound = static_cast<float>(rowIndex) * scaleY;
            continue;
        }
        break;
    }

    if (convertedDestination != nullptr) {
        pixel_format::convert(intermediate, destination, destinationPitch, format, target, pitch, width, height, false);
    }
    delete[] convertedDestination;
    delete[] convertedSource;
}

// 0x60177c _ZN6glitch5video6CImage13copyToScalingERKN5boost13intrusive_ptrIS1_EEi
// A thin wrapper. Read off the listing: with a non-null target it compares the target's width and height (+0x10,
// +0x14) with this image's; when both match it builds a zero position and delegates to copyTo(target, position,
// flags) at 0x60090c, otherwise it scales into the target's own data pointer with the target's format and pitch.
void CImage::copyToScaling(const boost::intrusive_ptr<CImage>& target, int32_t flags) {
    CImage* const destination = target.get();
    if (destination == nullptr) {
        return;
    }
    if (destination->m_width == m_width && destination->m_height == m_height) {
        const core::position2d<int32_t> position{0, 0};
        copyTo(target, position, static_cast<uint32_t>(flags));
        return;
    }
    copyToScaling(destination->m_data, destination->m_width, destination->m_height, destination->m_format,
                  destination->m_pitch, flags);
}

// 0x601800 _ZN6glitch5video6CImage22copyToScalingBoxFilterERKN5boost13intrusive_ptrIS1_EEi
// A one-instruction tail branch to 0x60177c: the box-filter named entry is the scaling entry byte for byte. The
// port follows it as a forward, so a caller of this name gets exactly what copyToScaling gives.
void CImage::copyToScalingBoxFilter(const boost::intrusive_ptr<CImage>& target, int32_t flags) {
    copyToScaling(target, flags);
}

// 0x5ff9b4 _ZN6glitch5video6CImage4fillERKNS_6SColorE
// Packs the colour for the format and writes the resulting word over the whole data block, eight words at a
// time and then the remaining (m_dataSize >> 2) & 7 words - the loop shape the original has (it walks the block
// as int* and advances by 8 words per pass). A format outside 5, 8, 12, 13 and 14 writes nothing.
//
// The two 16-bit cases replicate their packed halfword into both halves of the word: R5G6B5 (PFDTable row 5,
// masks 0xf800/0x07e0/0x001f, shifts 11/5/0) for 5, and A1R5G5B5 (row 8, 0x7c00/0x03e0/0x001f plus 0x8000,
// shifts 10/5/0/15) for 8. The three 32-bit cases feed four 8-bit channels in the byte order each row stores;
// the names are the row masks, so 12 is 0x0000ff00/0x00ff0000/0xff000000/0x000000ff.
void CImage::fill(const SColor& color) {
    const uint8_t c0 = color.component(0);
    const uint8_t c1 = color.component(1);
    const uint8_t c2 = color.component(2);
    const uint8_t c3 = color.component(3);

    uint32_t packed = 0;
    switch (m_format) {
        case 5: {  // R5G6B5: halfword (R5 << 11) | (G6 << 5) | B5, replicated
            const uint32_t half = (static_cast<uint32_t>(c0 >> 3) << 11) |
                                  (static_cast<uint32_t>(c1 >> 2) << 5) |
                                  static_cast<uint32_t>(c2 >> 3);
            packed = half | (half << 16);
            break;
        }
        case 8: {  // A1R5G5B5: halfword (A1 << 15) | (R5 << 10) | (G5 << 5) | B5, replicated
            const uint32_t half = (static_cast<uint32_t>(c3 >> 7) << 15) |
                                  (static_cast<uint32_t>(c0 >> 3) << 10) |
                                  (static_cast<uint32_t>(c1 >> 3) << 5) |
                                  static_cast<uint32_t>(c2 >> 3);
            packed = half | (half << 16);
            break;
        }
        case 12:  // byte order r, g, b, a
            packed = static_cast<uint32_t>(c3) | (static_cast<uint32_t>(c0) << 8) |
                     (static_cast<uint32_t>(c1) << 16) | (static_cast<uint32_t>(c2) << 24);
            break;
        case 13:  // byte order a, r, g, b
            packed = static_cast<uint32_t>(c2) | (static_cast<uint32_t>(c3) << 8) |
                     (static_cast<uint32_t>(c0) << 16) | (static_cast<uint32_t>(c1) << 24);
            break;
        case 14:  // byte order g, b, a, r
            packed = static_cast<uint32_t>(c1) | (static_cast<uint32_t>(c2) << 8) |
                     (static_cast<uint32_t>(c3) << 16) | (static_cast<uint32_t>(c0) << 24);
            break;
        default:
            return;
    }

    uint32_t* words = reinterpret_cast<uint32_t*>(m_data);
    const uint32_t wholeBlocks = m_dataSize >> 5;  // (m_dataSize >> 2) / 8
    for (uint32_t block = 0; block < wholeBlocks; ++block) {
        for (int i = 0; i < 8; ++i) {
            words[i] = packed;
        }
        words += 8;
    }
    const uint32_t tail = (m_dataSize >> 2) & 7u;
    for (uint32_t i = 0; i < tail; ++i) {
        words[i] = packed;
    }
}

}  // namespace glitch::video
