#include "glitch-video/image_loaders.hpp"

#include <cmath>
#include <cstdint>
#include <cstring>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/pixel_format_convert.hpp"
#include "glitch-video/scoped_process_array.hpp"

namespace {
// PNG file signature (the bytes checked by the original through png_sig_cmp).
const unsigned char kPngSignature[8] = {0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a};
}  // namespace

namespace glitch::video {

namespace {

bool hasExtension(const char* name, const char* lower, const char* upper) {
    return std::strstr(name, lower) != nullptr || std::strstr(name, upper) != nullptr;
}

}  // namespace

// 0x603380 _ZN6glitch5video15CImageLoaderBMPC2Ev
// 0x6033ac _ZN6glitch5video15CImageLoaderBMPC1Ev
CImageLoaderBMP::CImageLoaderBMP() = default;

namespace {

// The 54 bytes the loader reads first (BITMAPFILEHEADER and BITMAPINFOHEADER), little-endian, as the original's stack words.
struct SBMPHeader {
    uint16_t signature = 0;     // +0x00, 0x4d42
    uint32_t offBits = 0;       // +0x0a
    uint32_t width = 0;         // +0x12
    uint32_t height = 0;        // +0x16
    uint16_t bitCount = 0;      // +0x1c
    uint32_t compression = 0;   // +0x1e
    uint32_t imageSize = 0;     // +0x22
};

template <typename T>
T readLE(const uint8_t* bytes, size_t offset) {
    T value;
    std::memcpy(&value, bytes + offset, sizeof(T));
    return value;
}

// The 8-bit run-length decoder of the loader (the first arm of the original, 0x603c0c..0x603d2c). Returns the decoded rows.
// Deviation: the output is zero-initialised and the runs are clamped to its end (the original leaves it uninitialised and lets
// a run write past it), and the source is bounded (the original's loop test compares the size with the negated distance and is
// always true, so it only ends on an end-of-bitmap code or a full output).
uint8_t* decodeRLE8(const uint8_t* data, uint32_t dataSize, uint32_t stride, uint32_t height) {
    const uint32_t total = stride * height;
    uint8_t* out = new uint8_t[(total + 3u) & ~3u]();
    uint8_t* cursor = out;
    uint8_t* end = out + total;
    uint32_t row = 0;
    const uint8_t* p = data;
    const uint8_t* dataEnd = data + dataSize;
    while (end > cursor && p + 1 < dataEnd) {
        const uint32_t count = p[0];
        if (count != 0) {
            const uint8_t color = p[1];
            for (uint32_t i = 0; i < count; ++i) {
                if (cursor + i < end) cursor[i] = color;
            }
            cursor += count;
            p += 2;
            continue;
        }
        const uint32_t code = p[1];
        if (code == 1) break;
        if (code == 0) {
            ++row;
            cursor = out + static_cast<size_t>(stride) * row;
            p += 2;
        } else if (code == 2) {
            if (p + 3 >= dataEnd) break;
            cursor += p[2] + static_cast<size_t>(stride) * p[3];
            p += 4;
        } else {
            for (uint32_t i = 0; i < code; ++i) {
                if (cursor + i < end && p + 2 + i < dataEnd) cursor[i] = p[2 + i];
            }
            cursor += code;
            p += 2 + code + (code & 1u);
        }
    }
    return out;
}

// The 4-bit run-length decoder (0x603d48..0x603f84). Pixels go into the high nibble first (`shift` 4), then the low one. The
// absolute run keeps the source bug of the original: it reads the nibbles of the byte at the run's start and, instead of moving
// to the next byte, adds one to that byte in the buffer (so a run longer than two pixels does not step through the data).
uint8_t* decodeRLE4(uint8_t* data, uint32_t dataSize, uint32_t stride, uint32_t height) {
    const uint32_t total = stride * height;
    uint8_t* out = new uint8_t[(total + 3u) & ~3u]();
    uint8_t* cursor = out;
    uint8_t* end = out + total;
    uint32_t row = 0;
    uint32_t shift = 4;
    uint8_t* p = data;
    uint8_t* dataEnd = data + dataSize;
    auto store = [&](uint32_t nibble) {
        const uint8_t mask = static_cast<uint8_t>(15u << shift);
        if (cursor >= out && cursor < end) *cursor = static_cast<uint8_t>((*cursor & ~mask) | (mask & (nibble << shift)));
        if (shift == 0) {
            shift = 4;
            ++cursor;
        } else {
            shift = 0;
        }
    };
    while (end > cursor && p + 1 < dataEnd) {
        const uint32_t count = p[0];
        if (count != 0) {
            const uint32_t value = p[1];
            p += 2;
            const uint32_t high = value >> 4;
            const uint32_t low = value & 0xf;
            for (uint32_t i = 0; i < count; ++i) store((i & 1u) == 0 ? high : low);
            continue;
        }
        const uint32_t code = p[1];
        if (code == 1) break;
        if (code == 0) {
            ++row;
            cursor = out + static_cast<size_t>(stride) * row;
            p += 2;
            shift = 4;
        } else if (code == 2) {
            if (p + 3 >= dataEnd) break;
            const uint32_t x = p[2];
            cursor += (x >> 1) + static_cast<size_t>(stride) * p[3];
            shift = (x & 1u) != 0 ? 0 : 4;
            p += 4;
        } else {
            p += 2;
            uint32_t readShift = 0;
            uint32_t nibble = p[0] >> 4;
            for (uint32_t i = 0;;) {
                store(nibble);
                if (code <= ++i) break;
                uint32_t byte = *p;
                nibble = (byte >> readShift) & 0xf;
                if (readShift != 4) {
                    *p = static_cast<uint8_t>(byte + 1);
                    readShift = 4;
                } else {
                    readShift = 0;
                }
            }
            p += code & 1u;
        }
    }
    return out;
}

}  // namespace

// 0x6034ec _ZNK6glitch5video15CImageLoaderBMP9loadImageEPNS_2io9IReadFileE
// Reads the 54-byte header (not a 'BM' file, or a compression value above 3, gives null; the latter logs "Compression mode not
// supported."), the palette or bit masks between the header and the pixel data (one word each; process-buffer block, with
// process-buffer heap excess enabled for the whole decode), then the pixel data rounded up to a multiple of four. Compression 1
// and 2 are decoded as 8 and 4 bit run-length data. The pixels are then converted into a new image: 1, 4 and 8 bits per pixel
// through the palette (a 16-bit palette, format 9; 1 bit is the fixed black/white pair), 24 bits as format 11 into 10, 32 bits
// from the format the masks give (13 when there are none; "BMP format not supported" when no format has them), 16 bits likewise
// (A1R5G5B5 into 9 when there are no masks). An alpha mask is OR-ed into the 16 and 32 bit pixels when the masks do not give the
// pixel one. Any other bits per pixel gives null.
boost::intrusive_ptr<CImage> CImageLoaderBMP::loadImage(io::IReadFile* file) const {
    uint8_t raw[54];
    file->read(raw, 54);
    SBMPHeader h;
    h.signature = readLE<uint16_t>(raw, 0);
    h.offBits = readLE<uint32_t>(raw, 10);
    h.width = readLE<uint32_t>(raw, 18);
    h.height = readLE<uint32_t>(raw, 22);
    h.bitCount = readLE<uint16_t>(raw, 28);
    h.compression = readLE<uint32_t>(raw, 30);
    h.imageSize = readLE<uint32_t>(raw, 34);
    if (h.signature != 0x4d42) return boost::intrusive_ptr<CImage>();
    if (h.compression > 3) {
        os::Printer::log("Compression mode not supported.", ELL_ERROR);
        return boost::intrusive_ptr<CImage>();
    }
    h.imageSize += (0u - h.imageSize) & 3u;

    const uint32_t paletteCount = (h.offBits - static_cast<uint32_t>(file->getPos())) >> 2;
    struct SHeapExcess {
        bool previous = glitch::core::isProcessBufferHeapExcessEnabled();
        SHeapExcess() { glitch::core::setProcessBufferHeapExcessEnabled(true); }
        ~SHeapExcess() { glitch::core::setProcessBufferHeapExcessEnabled(previous); }
    } heapExcess;
    glitch::core::SScopedProcessArray<uint32_t> palette;
    if (paletteCount != 0) {
        uint32_t* block = reinterpret_cast<uint32_t*>(glitch::core::allocProcessBuffer(static_cast<int>(4 * paletteCount)));
        file->read(block, 4 * paletteCount);
        palette.reset(block);
    }
    if (h.imageSize == 0) h.imageSize = static_cast<uint32_t>(file->getSize()) - h.offBits;
    file->seek(static_cast<long>(h.offBits), false);

    // Bytes per row, rounded up: the float product of the width and the bytes per pixel, rounded up, as the original does.
    const float rowFloat = static_cast<float>(h.width) * (static_cast<float>(h.bitCount) * 0.125f);
    int32_t rowBytes = static_cast<int32_t>(rowFloat);
    if (rowFloat - static_cast<float>(rowBytes) != 0.0f) ++rowBytes;
    const int32_t padding = (4 - rowBytes % 4) % 4;
    const uint32_t pitch = static_cast<uint32_t>(rowBytes + padding);

    uint8_t* data = new uint8_t[(h.imageSize + 3u) & ~3u];
    file->read(data, h.imageSize);
    if (h.compression == 1) {
        uint8_t* decoded = decodeRLE8(data, h.imageSize, static_cast<uint32_t>(padding) + h.width, h.height);
        delete[] data;
        data = decoded;
    } else if (h.compression == 2) {
        uint8_t* decoded = decodeRLE4(data, h.imageSize, static_cast<uint32_t>(padding) + (h.width + 1u) / 2u, h.height);
        delete[] data;
        data = decoded;
    }

    const core::dimension2d<int32_t> size{static_cast<int32_t>(h.width), static_cast<int32_t>(h.height)};
    const uint32_t* masks = palette.get();
    boost::intrusive_ptr<CImage> image;
    auto finish = [&](E_PIXEL_FORMAT sourceFormat, E_PIXEL_FORMAT imageFormat) {
        image = boost::intrusive_ptr<CImage>(new CImage(imageFormat, size), true);
        pixel_format::convert(sourceFormat, data, pitch, image->m_format, image->m_data, image->m_pitch, h.width, h.height, true);
    };
    auto orIntoRows16 = [&](uint16_t value) {
        for (uint32_t y = 0; y < h.height; ++y) {
            uint8_t* row = data + static_cast<size_t>(y) * pitch;
            for (uint32_t x = 0; x < h.width; ++x) {
                uint16_t pixel;
                std::memcpy(&pixel, row + 2 * x, 2);
                pixel = static_cast<uint16_t>(pixel | value);
                std::memcpy(row + 2 * x, &pixel, 2);
            }
        }
    };
    auto orIntoRows32 = [&](uint32_t value) {
        for (uint32_t y = 0; y < h.height; ++y) {
            uint8_t* row = data + static_cast<size_t>(y) * pitch;
            for (uint32_t x = 0; x < h.width; ++x) {
                uint32_t pixel;
                std::memcpy(&pixel, row + 4 * x, 4);
                pixel |= value;
                std::memcpy(row + 4 * x, &pixel, 4);
            }
        }
    };

    switch (h.bitCount) {
        case 1:
        case 4:
        case 8: {
            image = boost::intrusive_ptr<CImage>(new CImage(9, size), true);
            const uint32_t count = paletteCount != 0 ? paletteCount : 2u;
            uint16_t* palette16 = reinterpret_cast<uint16_t*>(glitch::core::allocProcessBuffer(static_cast<int>(2 * count)));
            if (h.bitCount == 1) {
                palette16[1] = 0xffff;
                palette16[0] = 1;
            } else {
                uint32_t* entries = palette.get();
                for (uint32_t i = 0; i < paletteCount; ++i) entries[i] |= 0xff000000u;
                pixel_format::convert(13, entries, 4 * paletteCount, 9, palette16, 2 * paletteCount, paletteCount, 1, false);
            }
            pixel_format::unpackPalettized(data, (h.width * h.bitCount + 7u) >> 3, static_cast<uint8_t>(h.bitCount), 9, palette16,
                                           image->m_data, pixel_format::computePitch(9, h.width), h.width, h.height, true);
            glitch::core::releaseProcessBuffer(palette16);
            break;
        }
        case 16: {
            E_PIXEL_FORMAT sourceFormat = 8;
            E_PIXEL_FORMAT imageFormat = 9;
            uint16_t alpha = 0x8000;
            bool fixAlpha = true;
            if (h.compression == 3) {
                alpha = static_cast<uint16_t>(~(masks[1] | masks[2] | masks[0]));
                const bool alphaMissing = paletteCount <= 3 || masks[3] != alpha;
                sourceFormat = pixel_format::getFormat(masks[0], masks[1], masks[2], alpha);
                if (sourceFormat == 39) {
                    os::Printer::log("BMP format not supported", ELL_ERROR);
                    break;
                }
                imageFormat = sourceFormat == 8 ? 9 : (sourceFormat == 6 ? 7 : sourceFormat);
                fixAlpha = alphaMissing && alpha != 0;
            }
            if (fixAlpha && data != data + static_cast<size_t>(h.height) * pitch) orIntoRows16(alpha);
            finish(sourceFormat, imageFormat);
            break;
        }
        case 24:
            image = boost::intrusive_ptr<CImage>(new CImage(10, size), true);
            pixel_format::convert(11, data, pitch, image->m_format, image->m_data, image->m_pitch, h.width, h.height, true);
            break;
        case 32: {
            E_PIXEL_FORMAT format = 13;
            if (h.compression == 3) {
                const uint32_t alpha = ~(masks[1] | masks[2] | masks[0]);
                const bool alphaMissing = paletteCount > 3 && masks[3] != alpha;
                format = pixel_format::getFormat(masks[0], masks[1], masks[2], alpha);
                if (format == 39) {
                    os::Printer::log("BMP format not supported", ELL_ERROR);
                    break;
                }
                if (alphaMissing && alpha != 0) orIntoRows32(alpha);
            }
            finish(format, format);
            break;
        }
        default:
            break;
    }
    delete[] data;
    return image;
}

// 0x6033d8 _ZNK6glitch5video15CImageLoaderBMP21isALoadableFileFormatEPNS_2io9IReadFileE
// The original compares the 16-bit value 0x4d42 read in little-endian order,
// which is bytes 'B' then 'M'. The byte compare below is endian independent.
bool CImageLoaderBMP::isALoadableFileFormat(io::IReadFile* file) const {
    unsigned char magic[2] = {0, 0};
    file->read(magic, 2);
    return magic[0] == 'B' && magic[1] == 'M';
}

// 0x6034a0 _ZNK6glitch5video15CImageLoaderBMP24isALoadableFileExtensionEPKc
bool CImageLoaderBMP::isALoadableFileExtension(const char* filename) const {
    return hasExtension(filename, ".bmp", ".BMP");
}

// 0x605048 _ZNK6glitch5video15CImageLoaderPng21isALoadableFileFormatEPNS_2io9IReadFileE
// Reads the 8-byte signature and compares it with the PNG signature. A short read fails.
bool CImageLoaderPng::isALoadableFileFormat(io::IReadFile* file) const {
    if (file == nullptr) return false;
    unsigned char header[8] = {};
    if (file->read(header, 8) != 8) return false;
    return std::memcmp(header, kPngSignature, 8) == 0;
}

// 0x605674 _ZNK6glitch5video15CImageLoaderPng24isALoadableFileExtensionEPKc
// Only the text after the last dot is compared, so "a.png.bak" is rejected.
bool CImageLoaderPng::isALoadableFileExtension(const char* filename) const {
    const char* dot = std::strrchr(filename, '.');
    if (dot == nullptr) return false;
    return std::strcmp(dot, ".PNG") == 0 || std::strcmp(dot, ".png") == 0;
}

// 0x6062f4 _ZN6glitch5video15CImageLoaderTGAD1Ev
// 0x606318 _ZN6glitch5video15CImageLoaderTGAD0Ev is the compiler generated deleting variant.

// 0x606778 _ZNK6glitch5video15CImageLoaderTGA21isALoadableFileFormatEPNS_2io9IReadFileE
// The original reads the file size, seeks to size - 0x1a and reads the 26-byte footer.
// The signature is compared at footer offset 8 with "TRUEVISION-XFILE.".
bool CImageLoaderTGA::isALoadableFileFormat(io::IReadFile* file) const {
    if (file == nullptr || file->getSize() < 0x1a) {
        return false;
    }
    file->seek(static_cast<int32_t>(file->getSize()) - 0x1a, false);
    unsigned char footer[0x1a] = {};
    file->read(footer, 0x1a);
    return std::strcmp(reinterpret_cast<const char*>(footer + 8), "TRUEVISION-XFILE.") == 0;
}

// 0x60686c _ZNK6glitch5video15CImageLoaderTGA24isALoadableFileExtensionEPKc
bool CImageLoaderTGA::isALoadableFileExtension(const char* filename) const {
    return hasExtension(filename, ".tga", ".TGA");
}

// 0x6072e0 _ZN6glitch5video15CImageWriterTGAC2Ev
// 0x60730c _ZN6glitch5video15CImageWriterTGAC1Ev
CImageWriterTGA::CImageWriterTGA() = default;

// 0x6075e0 _ZNK6glitch5video15CImageWriterTGA25isAWriteableFileExtensionEPKc
bool CImageWriterTGA::isAWriteableFileExtension(const char* filename) const {
    return hasExtension(filename, ".tga", ".TGA");
}

// 0x606c78 _ZNK6glitch5video15CImageWriterJPG25isAWriteableFileExtensionEPKc
// Matches the text after the last dot exactly against .jpg, .jpeg, .JPG and .JPEG.
bool CImageWriterJPG::isAWriteableFileExtension(const char* filename) const {
    const char* dot = std::strrchr(filename, '.');
    if (dot == nullptr) return false;
    return std::strcmp(dot, ".jpg") == 0 || std::strcmp(dot, ".jpeg") == 0 ||
           std::strcmp(dot, ".JPG") == 0 || std::strcmp(dot, ".JPEG") == 0;
}

// 0x607230 _ZNK6glitch5video15CImageWriterPNG25isAWriteableFileExtensionEPKc
// Substring match: ".png" or ".PNG" anywhere in the name.
bool CImageWriterPNG::isAWriteableFileExtension(const char* filename) const {
    return std::strstr(filename, ".png") != nullptr || std::strstr(filename, ".PNG") != nullptr;
}

}  // namespace glitch::video
