// Owner K2: the image and texture-container readers and the image writers that were stopped by detail::unreconstructed():
// ATC, DDS and PVR texture data, the JPG, PNG and TGA image loaders with their libjpeg / libpng callbacks, and the JPG, PNG and TGA
// writers.
//
// libjpeg: the vendored 6b header is included by relative path (JPEG_LIB_VERSION 62, as the binary). libpng: the binary calls the
// 1.2.32 API (png_set_gray_1_2_4_to_8, the jump buffer at the start of png_struct); the functions are declared here without the
// library header, with the opaque struct types of the original symbols.
#include <csetjmp>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/pixel_format_convert.hpp"
#include "glitch-video/texture_loaders.hpp"

#include <stddef.h>
#include <stdio.h>
extern "C" {
#include "../../tinyxml-and-c-libs/upstream/libjpeg-6b/jpeglib.h"
}

struct png_struct_def;  // opaque
struct png_info_def;    // opaque
extern "C" {
typedef png_struct_def* png_structp;
typedef png_info_def* png_infop;
png_structp png_create_read_struct(const char* version, void* error, void (*errorFn)(png_structp, const char*),
                                   void (*warnFn)(png_structp, const char*));
png_structp png_create_write_struct(const char* version, void* error, void (*errorFn)(png_structp, const char*),
                                    void (*warnFn)(png_structp, const char*));
png_infop png_create_info_struct(png_structp png);
void png_destroy_read_struct(png_structp* png, png_infop* info, png_infop* endInfo);
void png_destroy_write_struct(png_structp* png, png_infop* info);
int png_sig_cmp(const unsigned char* sig, size_t start, size_t count);
void png_set_read_fn(png_structp png, void* ioPtr, void (*readFn)(png_structp, unsigned char*, unsigned int));
void png_set_write_fn(png_structp png, void* ioPtr, void (*writeFn)(png_structp, unsigned char*, unsigned int),
                      void (*flushFn)(png_structp));
void* png_get_io_ptr(png_structp png);
void png_set_sig_bytes(png_structp png, int bytes);
void png_read_info(png_structp png, png_infop info);
unsigned int png_get_IHDR(png_structp png, png_infop info, unsigned int* width, unsigned int* height, int* bitDepth,
                          int* colorType, int* interlace, int* compression, int* filter);
void png_set_IHDR(png_structp png, png_infop info, unsigned int width, unsigned int height, int bitDepth, int colorType,
                  int interlace, int compression, int filter);
void png_set_palette_to_rgb(png_structp png);
void png_set_gray_1_2_4_to_8(png_structp png);
void png_set_packing(png_structp png);
unsigned int png_get_valid(png_structp png, png_infop info, unsigned int flag);
void png_set_tRNS_to_alpha(png_structp png);
void png_set_strip_16(png_structp png);
void png_set_gray_to_rgb(png_structp png);
void png_read_update_info(png_structp png, png_infop info);
void png_read_image(png_structp png, unsigned char** rows);
void png_read_end(png_structp png, png_infop info);
void png_set_rows(png_structp png, png_infop info, unsigned char** rows);
void png_write_png(png_structp png, png_infop info, int transforms, void* params);
void png_error(png_structp png, const char* message);
}

namespace glitch::video {

// ===== ATC =====

// 0x602fe4 _ZNK6glitch5video15CImageLoaderATC9loadImageEPNS_2io9IReadFileE
// Header (little endian): width, height, magic (0x8c92: ATC RGB = format 21, 0x8c93: ATC RGBA = format 22), one unused halfword and the
// data size; the data follows. The image takes the block (copy flag: it adopts it) with the number of mip levels below level 0
// found by halving the size until both sides are 1.
boost::intrusive_ptr<CImage> CImageLoaderATC::loadImage(io::IReadFile* file) const {
    boost::intrusive_ptr<CImage> result;
    file->seek(0, false);
    uint8_t bytes[4] = {};
    file->read(bytes, 2);
    const int32_t width = bytes[0] | (bytes[1] << 8);
    file->read(bytes, 2);
    const int32_t height = bytes[0] | (bytes[1] << 8);
    file->read(bytes, 2);
    const int32_t magic = bytes[0] | (bytes[1] << 8);
    file->read(bytes, 2);
    file->read(bytes, 4);
    const size_t size = static_cast<size_t>(bytes[2] << 16) | static_cast<size_t>(bytes[1] << 8) | bytes[0] |
                        (static_cast<size_t>(bytes[3]) << 24);
    uint8_t* data = new uint8_t[size];
    if (size == static_cast<size_t>(file->read(data, static_cast<uint32_t>(size)))) {
        int32_t format;
        if (magic == 35986) {
            format = 21;
        } else if (magic == 35987) {
            format = 22;
        } else {
            os::Printer::log("Unsupported ATC format", file->getFileName(), ELL_ERROR);
            delete[] data;
            return result;
        }
        int32_t levels = 0;
        if (!(height <= 1 && width <= 1)) {
            int32_t w = width;
            int32_t h = height;
            do {
                w >>= 1;
                h >>= 1;
                ++levels;
            } while (!(w <= 1 && h <= 1));
        }
        core::dimension2d<int32_t> size2d;
        size2d.Width = width;
        size2d.Height = height;
        result = boost::intrusive_ptr<CImage>(new CImage(format, size2d, data, static_cast<uint32_t>(size), levels, true, true), true);
        return result;
    }
    os::Printer::log("corrupt ATC file", file->getFileName(), ELL_ERROR);
    delete[] data;
    return result;
}

// 0x6032dc _ZNK6glitch5video15CImageLoaderATC15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
// The data after the 12 byte header goes into the texture; the data info holds the descriptor and the data size.
bool CImageLoaderATC::loadTextureData(io::IReadFile* file, const boost::intrusive_ptr<ITexture>& texture,
                                      const STextureDesc& desc) const {
    CDataInfo info(static_cast<int32_t>(file->getSize()) - 12);  // +0x0c
    info.m_unk08 = 0;                                            // +0x08 holds the descriptor in the original
    file->seek(12, false);
    return loadData(file, info, desc, texture);
}

// ===== DDS =====

// 0x604398 _ZNK6glitch5video15CImageLoaderDDS17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
// Reads the DDS header and fills the descriptor: cube map (all six faces required) or volume or 2D, size, depth, the mip flag
// (the chain must be complete), and the pixel format: from the channel masks for an uncompressed file, from the FourCC for a
// compressed one (DXT1 = 18, DXT2 / DXT3 = 19, DXT4 / DXT5 = 20, PTC2 = 25, PTC4 = 27). Unknown formats are logged.
bool CImageLoaderDDS::loadTextureHeader(io::IReadFile* file, STextureDesc& desc) const {
    SDDSSurfaceFormatHeader header;
    if (!readDDSHeader(file, header)) return false;
    const uint32_t caps1 = header.caps[0];
    const uint32_t caps2 = header.caps[1];
    const uint32_t pixelFlags = header.pixelFormat[0];
    const uint32_t fourCC = header.pixelFormat[1];
    if ((caps2 & 0x200u) != 0) {
        if ((caps2 & 0xfc00u) != 0xfc00u) {
            os::Printer::logf(ELL_ERROR, "loading %s: partial cube map not supported", file->getFileName());
            return false;
        }
        desc.type = 2;
    } else {
        desc.type = (caps2 & 0x200000u) != 0;
    }
    desc.height = header.height;
    desc.unknown08 = 0;
    desc.width = header.width;
    desc.depth = (header.flags & 0x800000u) == 0 ? 1u : header.depth;
    desc.flag = (caps1 & 0x400000u) != 0;
    if ((caps1 & 0x400000u) != 0) {
        auto floorLog2 = [](uint32_t v) {
            uint32_t n = static_cast<uint32_t>(-1);
            while (v != 0) {
                v >>= 1;
                ++n;
            }
            return n;
        };
        const uint32_t widthLog = floorLog2(desc.width);
        const uint32_t heightLog = floorLog2(desc.height);
        const uint32_t depthLog = floorLog2(desc.depth);
        uint32_t largest = widthLog;
        if (heightLog > widthLog) largest = heightLog;
        if (largest < depthLog) largest = depthLog;
        const int32_t expected = static_cast<int32_t>(largest + 1);
        if (expected != static_cast<int32_t>(header.mipMapCount)) {
            os::Printer::logf(ELL_ERROR, "loading %s: only complete mipmap chains are supported; expected %u, got %u",
                              file->getFileName(), static_cast<uint32_t>(expected), header.mipMapCount);
            return false;
        }
    }
    if ((pixelFlags & 4u) == 0) {
        uint32_t red = 0;
        uint32_t green = 0;
        uint32_t blue = 0;
        if ((pixelFlags & 0x20040u) != 0) {
            red = header.pixelFormat[3];
            if ((pixelFlags & 0x20000u) != 0) {
                green = red;
                blue = red;
            } else {
                green = header.pixelFormat[4];
                blue = header.pixelFormat[5];
            }
        }
        uint32_t alpha = 0;
        if ((pixelFlags & 3u) != 0) alpha = header.pixelFormat[6];
        desc.format = static_cast<uint32_t>(pixel_format::getFormat(red, green, blue, alpha));
        if (desc.format != 39) return true;
        os::Printer::logf(ELL_ERROR, "loading %s: unknown pixel format (0x%08x, 0x%08x, 0x%08x, 0x%08x)", file->getFileName(), red,
                          green, blue, alpha);
        return false;
    }
    switch (fourCC) {
        case 0x31545844u:  // DXT1
            desc.format = 18;
            return true;
        case 0x32545844u:  // DXT2
        case 0x33545844u:  // DXT3
            desc.format = 19;
            return true;
        case 0x34545844u:  // DXT4
        case 0x35545844u:  // DXT5
            desc.format = 20;
            return true;
        case 0x32435450u:  // PTC2
            desc.format = 25;
            return true;
        case 0x34435450u:  // PTC4
            desc.format = 27;
            return true;
        default:
            desc.format = 39;
            os::Printer::logf(ELL_ERROR, "loading %s: unknown FourCC -- %c%c%c%c", file->getFileName(), static_cast<char>(fourCC),
                              static_cast<char>(fourCC >> 8), static_cast<char>(fourCC >> 16), static_cast<char>(fourCC >> 24));
            return false;
    }
}

// 0x6046f4 _ZNK6glitch5video15CImageLoaderDDS9loadImageEPNS_2io9IReadFileE
// Only DXT1 / DXT3 / DXT5 files with the size, height and linear-size flags are accepted (a volume is refused); the image is
// built from the data after the header, with the mip count below level 0.
boost::intrusive_ptr<CImage> CImageLoaderDDS::loadImage(io::IReadFile* file) const {
    boost::intrusive_ptr<CImage> result;
    SDDSSurfaceFormatHeader header;
    if (!readDDSHeader(file, header) || header.size != 124 || (header.flags & 0x1001u) != 0x1001u) return result;
    if (header.depth != 0 && (header.flags & 0x800000u) != 0) {
        os::Printer::log("UNSUPORTED DDS FORMAT TEXTURE", ELL_ERROR);
        return result;
    }
    header.depth = 1;
    if ((header.pixelFormat[0] & 4u) == 0) {
        os::Printer::log("UNKNOWN DDS FORMAT TEXTURE", ELL_ERROR);
        return result;
    }
    const uint32_t fourCC = header.pixelFormat[1];
    int32_t format;
    if (fourCC == 0x33545844u || fourCC == 0x32545844u) {  // DXT3, DXT2
        format = 19;
        os::Printer::log("DDS : EPF_DXT3 format", ELL_INFORMATION);
    } else if (fourCC == 0x35545844u || fourCC == 0x34545844u) {  // DXT5, DXT4
        format = 20;
        os::Printer::log("DDS : EPF_DXT5 format", ELL_INFORMATION);
    } else if (fourCC == 0x31545844u) {  // DXT1
        format = 18;
        os::Printer::log("DDS : EPF_DXT1 format", ELL_INFORMATION);
    } else {
        return result;
    }
    const uint32_t size = pixel_format::computeSizeInBytes(format, header.width, header.height, header.mipMapCount);
    uint8_t* data = new uint8_t[size];
    file->read(data, size);
    core::dimension2d<int32_t> size2d;
    size2d.Width = static_cast<int32_t>(header.width);
    size2d.Height = static_cast<int32_t>(header.height);
    result = boost::intrusive_ptr<CImage>(
        new CImage(format, size2d, data, size, header.mipMapCount != 0 ? header.mipMapCount - 1 : 0, true, true), true);
    return result;
}

// 0x60496c _ZNK6glitch5video15CImageLoaderDDS15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
// A file with a linear size whose format is the texture's must have the texture's level 0 size; the data after the 128 byte
// header (the data info holds the header, the descriptor and the data size) goes into the texture.
bool CImageLoaderDDS::loadTextureData(io::IReadFile* file, const boost::intrusive_ptr<ITexture>& texture,
                                      const STextureDesc& desc) const {
    SDDSSurfaceFormatHeader header;
    if (!readDDSHeader(file, header)) return false;
    if ((header.flags & 0x80000u) != 0 && desc.format == ((texture->m_flags38 >> 4) & 0x3fu) &&
        header.pitchOrLinearSize != static_cast<uint32_t>(texture->m_levelSizes[1] - texture->m_levelSizes[0])) {
        os::Printer::logf(ELL_ERROR, "loading %s: level 0 size mismatch", file->getFileName());
        return false;
    }
    const int32_t dataSize = static_cast<int32_t>(file->getSize()) - 128;
    CDataInfo info(reinterpret_cast<const uint32_t*>(&header), dataSize);
    return loadData(file, info, desc, texture);
}

// ===== PVR =====

// 0x60623c _ZNK6glitch5video15CImageLoaderPVR15loadTextureDataEPNS_2io9IReadFileERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS0_12STextureDescE
// Reads the header again (a plain 52 byte header, or the "BTEXpvr" wrapper plus 8 more bytes), and gives the rest of the file to the
// texture as the data.
bool CImageLoaderPVR::loadTextureData(io::IReadFile* file, const boost::intrusive_ptr<ITexture>& texture,
                                      const STextureDesc& desc) const {
    SPVRHeader header;
    bool wrapped = false;
    if (!readPVRHeader(file, header, wrapped)) return false;
    const int32_t dataSize = static_cast<int32_t>(file->getSize()) - 52 - (wrapped ? 8 : 0);
    CDataInfo info(dataSize);
    return loadData(file, info, desc, texture);
}

// ===== JPG =====

namespace {

// The libjpeg error manager with the jump buffer of the loader (error_exit jumps to it from +132 of the manager).
struct SJpegErrorManager {
    jpeg_error_mgr pub;      // +0x00
    jmp_buf jumpBuffer;      // +0x84
};

boolean jpegFillInputBuffer(j_decompress_ptr cinfo) { return CImageLoaderJPG::fill_input_buffer(cinfo) ? TRUE : FALSE; }

}  // namespace

// 0x604ae8 _ZN6glitch5video15CImageLoaderJPG15skip_input_dataEP22jpeg_decompress_structl
void CImageLoaderJPG::skip_input_data(jpeg_decompress_struct* cinfo, long numBytes) {
    jpeg_source_mgr* source = cinfo->src;  // +0x18
    if (numBytes > 0) {
        source->next_input_byte += numBytes;
        source->bytes_in_buffer -= static_cast<size_t>(numBytes);
    }
}

// 0x604ed8 _ZN6glitch5video15CImageLoaderJPG14output_messageEP18jpeg_common_struct
// The message of the error (format_message, err slot +0x0c) is logged as "JPEG FATAL ERROR" with the text as the hint.
void CImageLoaderJPG::output_message(jpeg_common_struct* cinfo) {
    char buffer[200];
    (*cinfo->err->format_message)(cinfo, buffer);
    os::Printer::log("JPEG FATAL ERROR", buffer, ELL_ERROR);
}

// 0x604f48 _ZN6glitch5video15CImageLoaderJPG10error_exitEP18jpeg_common_struct
// Reports through the error manager (slot +0x08, output_message) and jumps back to the loader.
void CImageLoaderJPG::error_exit(jpeg_common_struct* cinfo) {
    (*cinfo->err->output_message)(cinfo);
    std::longjmp(reinterpret_cast<SJpegErrorManager*>(cinfo->err)->jumpBuffer, 1);
}

// 0x604be0 _ZNK6glitch5video15CImageLoaderJPG9loadImageEPNS_2io9IReadFileE
// The whole file is read into memory and decoded with libjpeg to RGB (no fancy upsampling) into one block that becomes an
// R8G8B8 image (format 10); the row pointers are a temporary array. A libjpeg error jumps back, destroys the decoder and
// gives no image.
boost::intrusive_ptr<CImage> CImageLoaderJPG::loadImage(io::IReadFile* file) const {
    boost::intrusive_ptr<CImage> result;
    const size_t size = static_cast<size_t>(file->getSize());
    uint8_t* const input = new uint8_t[size];
    file->read(input, static_cast<uint32_t>(file->getSize()));
    jpeg_decompress_struct cinfo;
    SJpegErrorManager errorManager;
    cinfo.err = jpeg_std_error(&errorManager.pub);
    errorManager.pub.error_exit = reinterpret_cast<void (*)(j_common_ptr)>(&CImageLoaderJPG::error_exit);
    errorManager.pub.output_message = reinterpret_cast<void (*)(j_common_ptr)>(&CImageLoaderJPG::output_message);
    JSAMPROW* rows = nullptr;
    if (setjmp(errorManager.jumpBuffer) != 0) {
        jpeg_destroy_decompress(&cinfo);
        rows = nullptr;
    } else {
        jpeg_create_decompress(&cinfo);
        jpeg_source_mgr source;
        source.next_input_byte = input;
        source.bytes_in_buffer = static_cast<size_t>(file->getSize());
        source.init_source = reinterpret_cast<void (*)(j_decompress_ptr)>(&CImageLoaderJPG::init_source);
        source.fill_input_buffer = &jpegFillInputBuffer;
        source.skip_input_data = reinterpret_cast<void (*)(j_decompress_ptr, long)>(&CImageLoaderJPG::skip_input_data);
        source.resync_to_restart = jpeg_resync_to_restart;
        source.term_source = reinterpret_cast<void (*)(j_decompress_ptr)>(&CImageLoaderJPG::term_source);
        cinfo.src = &source;
        jpeg_read_header(&cinfo, TRUE);
        cinfo.out_color_space = JCS_RGB;
        cinfo.out_color_components = 3;
        cinfo.do_fancy_upsampling = FALSE;
        jpeg_start_decompress(&cinfo);
        const uint32_t width = cinfo.image_width;
        const uint32_t height = cinfo.image_height;
        const uint16_t rowBytes = static_cast<uint16_t>(width * static_cast<uint32_t>(cinfo.out_color_components));
        uint8_t* const pixels = new uint8_t[static_cast<size_t>(height) * rowBytes];
        rows = new JSAMPROW[height];
        for (uint32_t i = 0; i < height; ++i) rows[i] = pixels + static_cast<size_t>(i) * rowBytes;
        uint32_t done = 0;
        while (cinfo.output_scanline < cinfo.output_height) {
            done += jpeg_read_scanlines(&cinfo, &rows[done], cinfo.output_height - done);
        }
        jpeg_finish_decompress(&cinfo);
        jpeg_destroy_decompress(&cinfo);
        core::dimension2d<int32_t> size2d;
        size2d.Width = static_cast<int32_t>(width);
        size2d.Height = static_cast<int32_t>(height);
        result = boost::intrusive_ptr<CImage>(new CImage(10, size2d, pixels, true, true), true);
    }
    delete[] input;
    delete[] rows;
    return result;
}

// ===== PNG =====

namespace {

// 0x60564c _ZN6glitch5video12_GLOBAL__N_118png_cpexcept_errorEP14png_struct_defPKc
// libpng's error callback: logs "PNG FATAL ERROR" with the message and jumps to the jump buffer at the start of png_struct.
void png_cpexcept_error(png_struct_def* png, const char* message) {
    os::Printer::log("PNG FATAL ERROR", message, ELL_ERROR);
    std::longjmp(*reinterpret_cast<std::jmp_buf*>(png), 1);
}

}  // namespace

// 0x6056d4 _ZN6glitch5video18user_read_data_fcnEP14png_struct_defPhj
// libpng read callback: the data comes from the IReadFile in the I/O pointer; a short read is a libpng error.
void user_read_data_fcn(png_struct_def* png, unsigned char* data, unsigned int length) {
    io::IReadFile* file = static_cast<io::IReadFile*>(png_get_io_ptr(png));
    if (static_cast<unsigned int>(file->read(data, length)) != length) png_error(png, "Read Error");
}

// 0x60727c _ZN6glitch5video19user_write_data_fcnEP14png_struct_defPhj
void user_write_data_fcn(png_struct_def* png, unsigned char* data, unsigned int length) {
    io::IWriteFile* file = static_cast<io::IWriteFile*>(png_get_io_ptr(png));
    if (static_cast<unsigned int>(file->write(data, length)) != length) png_error(png, "Write Error");
}

// 0x6050dc _ZNK6glitch5video15CImageLoaderPng9loadImageEPNS_2io9IReadFileE
// The 8 signature bytes are checked, then libpng decodes with the expansions to 8 bit channels (palette to RGB, low bit depth
// gray expanded, tRNS to alpha, 16 bit stripped, gray to RGB) into an R8G8B8 (format 10) or R8G8B8A8 (14, colour type 6)
// image whose rows libpng fills directly. Every failure logs "LOAD PNG: ..." at error level and gives no image.
boost::intrusive_ptr<CImage> CImageLoaderPng::loadImage(io::IReadFile* file) const {
    boost::intrusive_ptr<CImage> result;
    if (file == nullptr) return result;
    unsigned char signature[8];
    if (file->read(signature, 8) != 8) {
        os::Printer::log("LOAD PNG: can't read file\n", file->getFileName(), ELL_ERROR);
        return result;
    }
    if (png_sig_cmp(signature, 0, 8) != 0) {
        os::Printer::log("LOAD PNG: not really a png\n", file->getFileName(), ELL_ERROR);
        return result;
    }
    png_structp png = png_create_read_struct("1.2.32", nullptr, png_cpexcept_error, nullptr);
    if (png == nullptr) {
        os::Printer::log("LOAD PNG: Internal PNG create read struct failure\n", file->getFileName(), ELL_ERROR);
        return result;
    }
    png_infop info = png_create_info_struct(png);
    if (info == nullptr) {
        os::Printer::log("LOAD PNG: Internal PNG create info struct failure\n", file->getFileName(), ELL_ERROR);
        png_destroy_read_struct(&png, nullptr, nullptr);
        return result;
    }
    if (setjmp(*reinterpret_cast<std::jmp_buf*>(png)) != 0) {
        png_destroy_read_struct(&png, &info, nullptr);
        return result;
    }
    png_set_read_fn(png, file, user_read_data_fcn);
    png_set_sig_bytes(png, 8);
    png_read_info(png, info);
    unsigned int width = 0;
    unsigned int height = 0;
    int bitDepth = 0;
    int colorType = 0;
    png_get_IHDR(png, info, &width, &height, &bitDepth, &colorType, nullptr, nullptr, nullptr);
    if (colorType == 3) png_set_palette_to_rgb(png);
    if (bitDepth <= 7) {
        if (colorType == 0 || colorType == 4) {
            png_set_gray_1_2_4_to_8(png);
        } else {
            png_set_packing(png);
        }
    }
    if (png_get_valid(png, info, 0x10) != 0) png_set_tRNS_to_alpha(png);
    if (bitDepth == 16) png_set_strip_16(png);
    if (colorType == 0 || colorType == 4) png_set_gray_to_rgb(png);
    png_read_update_info(png, info);
    png_get_IHDR(png, info, &width, &height, &bitDepth, &colorType, nullptr, nullptr, nullptr);
    const int32_t format = colorType == 6 ? 14 : 10;
    png_get_IHDR(png, info, &width, &height, &bitDepth, &colorType, nullptr, nullptr, nullptr);
    core::dimension2d<int32_t> size2d;
    size2d.Width = static_cast<int32_t>(width);
    size2d.Height = static_cast<int32_t>(height);
    boost::intrusive_ptr<CImage> image(new CImage(format, size2d), true);
    if (image.get() == nullptr) {
        os::Printer::log("LOAD PNG: Internal PNG create image struct failure\n", file->getFileName(), ELL_ERROR);
        png_destroy_read_struct(&png, nullptr, nullptr);
        return result;
    }
    unsigned char** rows = new (std::nothrow) unsigned char*[height];
    if (rows == nullptr) {
        os::Printer::log("LOAD PNG: Internal PNG create row pointers failure\n", file->getFileName(), ELL_ERROR);
        png_destroy_read_struct(&png, nullptr, nullptr);
        return result;
    }
    unsigned char* row = image->m_data;  // +0x08
    for (unsigned int i = 0; i < height; ++i) {
        rows[i] = row;
        row += image->m_pitch;  // +0x18
    }
    if (setjmp(*reinterpret_cast<std::jmp_buf*>(png)) != 0) {
        png_destroy_read_struct(&png, &info, nullptr);
    } else {
        png_read_image(png, rows);
        png_read_end(png, nullptr);
        png_destroy_read_struct(&png, &info, nullptr);
        result = image;
    }
    delete[] rows;
    return result;
}

// 0x606dc0 _ZNK6glitch5video15CImageWriterPNG10writeImageEPNS_2io10IWriteFileERKN5boost13intrusive_ptrINS0_6CImageEEEj
// Writes the image with libpng. Compressed / palette / unsupported formats are refused (flag bits 0x3a); a packed format (flag
// 0x40) is converted to R8G8B8 / R8G8B8A8 first. The colour type comes from the format flags (alpha 0x01, gray 0x04), the bit
// depth is 16 for format 1 only. Formats 12 and 13 get the swap-alpha / BGR transform (CSWTCH.4342: 0x100, 0x80).
bool CImageWriterPNG::writeImage(io::IWriteFile* file, const boost::intrusive_ptr<CImage>& image, uint32_t /*flags*/) const {
    if (file == nullptr || image.get() == nullptr) return false;
    const CImage* source = image.get();
    int32_t format = source->m_format;
    uint32_t formatFlags = pixel_format::detail::PFDTable[format].flags;
    if ((formatFlags & 0x3au) != 0) {
        os::Printer::log("PGNWriter: can only handle fixed bit width RGB/L+A formats", ELL_ERROR);
        return false;
    }
    png_structp png = png_create_write_struct("1.2.32", nullptr, png_cpexcept_error, nullptr);
    if (png == nullptr) {
        os::Printer::log("PNGWriter: Internal PNG create write struct failure\n", file->getFileName(), ELL_ERROR);
        return false;
    }
    png_infop info = png_create_info_struct(png);
    if (info == nullptr) {
        os::Printer::log("PNGWriter: Internal PNG create info struct failure\n", file->getFileName(), ELL_ERROR);
        png_destroy_write_struct(&png, nullptr);
        return false;
    }
    if (setjmp(*reinterpret_cast<std::jmp_buf*>(png)) != 0) {
        png_destroy_write_struct(&png, &info);
        return false;
    }
    png_set_write_fn(png, file, user_write_data_fcn, nullptr);
    const uint8_t* data = source->m_data;
    uint32_t pitch = source->m_pitch;
    uint8_t* converted = nullptr;
    if ((formatFlags & 0x40u) != 0) {
        int32_t destinationFormat;
        size_t size;
        if ((formatFlags & 1u) != 0) {
            destinationFormat = 14;
            size = 4u * source->m_height * source->m_width;
        } else {
            destinationFormat = 10;
            size = 3u * source->m_height * source->m_width;
        }
        converted = new (std::nothrow) uint8_t[size];
        if (converted == nullptr) {
            os::Printer::log("PNGWriter: Internal PNG create image failure\n", file->getFileName(), ELL_ERROR);
            png_destroy_write_struct(&png, &info);
            return false;
        }
        format = destinationFormat;
        pitch = pixel_format::computePitch(destinationFormat, source->m_width);
        pixel_format::convert(source->m_format, source->m_data, source->m_pitch, destinationFormat, converted, pitch, source->m_width,
                              source->m_height, false);
        data = converted;
        formatFlags = pixel_format::detail::PFDTable[destinationFormat].flags;
    }
    int colorType;
    if ((formatFlags & 1u) != 0) {
        colorType = (formatFlags & 4u) != 0 ? 4 : 6;
    } else {
        colorType = (formatFlags & 4u) == 0 ? 2 : 0;
    }
    png_set_IHDR(png, info, source->m_width, source->m_height, format == 1 ? 16 : 8, colorType, 0, 0, 0);
    bool written = false;
    unsigned char** rows = new (std::nothrow) unsigned char*[source->m_height];
    if (rows != nullptr) {
        for (uint32_t i = 0; i < source->m_height; ++i) {
            rows[i] = const_cast<unsigned char*>(data);
            data += pitch;
        }
        if (setjmp(*reinterpret_cast<std::jmp_buf*>(png)) != 0) {
            png_destroy_write_struct(&png, &info);
            written = false;
        } else {
            png_set_rows(png, info, rows);
            static const int kTransforms[2] = {0x100, 0x80};  // CSWTCH.4342, ELF 0x8e4ac8, for formats 12 and 13
            const int transforms = static_cast<uint32_t>(format - 12) <= 1u ? kTransforms[format - 12] : 0;
            png_write_png(png, info, transforms, nullptr);
            png_destroy_write_struct(&png, &info);
            written = true;
        }
        delete[] rows;
    } else {
        os::Printer::log("PNGWriter: Internal PNG create row pointers failure\n", file->getFileName(), ELL_ERROR);
        png_destroy_write_struct(&png, &info);
    }
    delete[] converted;
    return written;
}

// ===== TGA =====

// 0x606368 _ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE
// The 18 byte header is read (the image id is skipped and a colour map, if there is one, is read and dropped); depth 24 gives an
// R8G8B8 image (file order B8G8R8, 11), 32 an A8R8G8B8-like one (13 both ways), 16 an A1R5G5B5 one (8); image types 2
// (uncompressed) and 10 (run length encoded) are supported. The pixel data is converted to the image, flipped when the origin bit
// of the descriptor says the file is stored bottom up.
boost::intrusive_ptr<CImage> CImageLoaderTGA::loadImage(io::IReadFile* file) const {
    boost::intrusive_ptr<CImage> result;
    uint8_t header[18];
    file->read(header, 18);
    const uint8_t idLength = header[0];
    const uint8_t colorMapType = header[1];
    const uint8_t imageType = header[2];
    const uint32_t colorMapLength = header[5] | (header[6] << 8);
    const uint8_t colorMapEntrySize = header[7];
    const uint16_t width = static_cast<uint16_t>(header[12] | (header[13] << 8));
    const uint16_t height = static_cast<uint16_t>(header[14] | (header[15] << 8));
    const uint8_t pixelDepth = header[16];
    const uint8_t descriptor = header[17];
    if (idLength != 0) file->seek(idLength, true);
    uint8_t* colorMap = nullptr;
    if (colorMapType != 0) {
        const size_t colorMapBytes = static_cast<size_t>(colorMapLength) * (colorMapEntrySize >> 3);
        colorMap = new uint8_t[colorMapBytes];
        file->read(colorMap, static_cast<uint32_t>(colorMapBytes));
    }
    int32_t destinationFormat;
    int32_t sourceFormat;
    if (pixelDepth == 24) {
        destinationFormat = 10;
        sourceFormat = 11;
    } else if (pixelDepth == 32) {
        destinationFormat = 13;
        sourceFormat = 13;
    } else if (pixelDepth == 16) {
        destinationFormat = 8;
        sourceFormat = 8;
    } else {
        os::Printer::log("Unsupported TGA format", file->getFileName(), ELL_ERROR);
        delete[] colorMap;
        return result;
    }
    if (imageType != 10 && imageType != 2) {
        os::Printer::log("Unsupported TGA file type", file->getFileName(), ELL_ERROR);
        delete[] colorMap;
        return result;
    }
    core::dimension2d<int32_t> size2d;
    size2d.Width = width;
    size2d.Height = height;
    boost::intrusive_ptr<CImage> image(new CImage(destinationFormat, size2d), true);
    uint8_t* data = image->m_data;  // +0x08
    const bool flip = ((descriptor ^ 0x20u) & 0x20u) != 0;
    if (imageType == 2) {
        file->read(data, static_cast<uint32_t>(pixelDepth) * height * width / 8);
        pixel_format::convert(sourceFormat, data, 0, destinationFormat, data, 0, width, height, flip);
    } else {
        const int32_t bytesPerPixel = pixelDepth >> 3;
        const int32_t total = bytesPerPixel * height * width;
        uint8_t* buffer = new uint8_t[total];
        int32_t offset = 0;
        while (total > offset) {
            uint8_t packet = 0;
            file->read(&packet, 1);
            if ((packet & 0x80u) == 0) {
                const int32_t count = static_cast<uint8_t>(packet + 1);
                file->read(buffer + offset, bytesPerPixel * count);
                offset += count * bytesPerPixel;
            } else {
                const int32_t count = packet - 127;
                file->read(buffer + offset, bytesPerPixel);
                const int32_t first = offset;
                offset += bytesPerPixel;
                for (int32_t repeat = 1; repeat < count; ++repeat) {
                    for (int32_t i = 0; i < bytesPerPixel; ++i) buffer[offset + i] = buffer[first + i];
                    offset += bytesPerPixel;
                }
            }
        }
        pixel_format::convert(sourceFormat, buffer, 0, destinationFormat, data, 0, width, height, flip);
        delete[] buffer;
    }
    result = image;
    delete[] colorMap;
    return result;
}

// 0x607370 _ZNK6glitch5video15CImageWriterTGA10writeImageEPNS_2io10IWriteFileERKN5boost13intrusive_ptrINS0_6CImageEEEj
// An uncompressed true colour TGA (type 2): 16 bit formats are written as format 8 (descriptor 33: one alpha bit), 24 bit ones as
// B8G8R8 (11), everything else as 32 bit format 12; the rows are converted one at a time through a process buffer block. The
// file ends with the 26 byte footer "TRUEVISION-XFILE.". True when the footer was written after all the rows.
// Deviation: the pixel depth byte is not stored by the binary in the 32 bit case (it stays uninitialised); 32 is written here.
// As in the binary the result compares the height with the number of rows written the wrong way round (height < rows), which is
// never true: the function writes the whole file and still answers false.
bool CImageWriterTGA::writeImage(io::IWriteFile* file, const boost::intrusive_ptr<CImage>& image, uint32_t /*flags*/) const {
    const CImage* source = image.get();
    uint8_t header[18] = {};
    header[2] = 2;  // image type: uncompressed true colour
    const uint16_t width = static_cast<uint16_t>(source->m_width);
    const uint16_t height = static_cast<uint16_t>(source->m_height);
    header[12] = static_cast<uint8_t>(width);
    header[13] = static_cast<uint8_t>(width >> 8);
    header[14] = static_cast<uint8_t>(height);
    header[15] = static_cast<uint8_t>(height >> 8);
    header[16] = 32;
    header[17] = 32;
    const int32_t sourceFormat = source->m_format;
    const uint8_t bits = pixel_format::detail::PFDTable[sourceFormat].bitsPerPixel;
    int32_t destinationFormat;
    if (bits == 16) {
        header[16] = 16;
        header[17] = 33;
        destinationFormat = 8;
    } else if (bits == 24) {
        header[16] = 24;
        destinationFormat = 11;
    } else {
        destinationFormat = 12;
    }
    if (file->write(header, 18) != 18) return false;
    const uint8_t* row = source->m_data;
    if (row == nullptr) return false;
    const uint32_t sourcePitch = source->m_pitch;
    const uint32_t rowBytes = pixel_format::computePitch(destinationFormat, width);
    const bool excess = glitch::core::isProcessBufferHeapExcessEnabled();
    glitch::core::setProcessBufferHeapExcessEnabled(true);
    uint8_t* scratch = reinterpret_cast<uint8_t*>(glitch::core::allocProcessBuffer(static_cast<int>(rowBytes)));
    uint32_t written = height;
    if (height != 0) {
        for (written = 0; written < height; ++written) {
            pixel_format::convert(sourceFormat, row, sourcePitch, destinationFormat, scratch, rowBytes, width, 1, false);
            if (rowBytes != file->write(scratch, rowBytes)) break;
            row += sourcePitch;
        }
    }
    bool ok = false;
    uint8_t footer[26] = {};
    std::memcpy(footer + 8, "TRUEVISION-XFILE.", 17);
    if (file->write(footer, 26) > 25) ok = height < written;
    if (scratch != nullptr) glitch::core::releaseProcessBuffer(scratch);
    glitch::core::setProcessBufferHeapExcessEnabled(excess);
    return ok;
}

// ===== JPG writer =====

namespace {

// The libjpeg destination manager of the writer: the manager, the file (+0x14) and a 4096 byte buffer (+0x18).
struct SJpegDestination {
    jpeg_destination_mgr pub;
    io::IWriteFile* file;
    uint8_t buffer[4096];
};

// 0x6068b8 _ZN6glitch5video12_GLOBAL__N_121jpeg_init_destinationEP20jpeg_compress_struct
void jpeg_init_destination(jpeg_compress_struct* cinfo) {
    SJpegDestination* destination = reinterpret_cast<SJpegDestination*>(cinfo->dest);  // +0x18
    destination->pub.free_in_buffer = 4096;
    destination->pub.next_output_byte = destination->buffer;
}

// 0x6068d0 _ZN6glitch5video12_GLOBAL__N_124jpeg_empty_output_bufferEP20jpeg_compress_struct
// Writes the full buffer to the file (a short write is the libjpeg error 37, JERR_FILE_WRITE) and starts over.
boolean jpeg_empty_output_buffer(jpeg_compress_struct* cinfo) {
    SJpegDestination* destination = reinterpret_cast<SJpegDestination*>(cinfo->dest);
    if (destination->file->write(destination->buffer, 4096) != 4096) {
        cinfo->err->msg_code = 37;
        (*cinfo->err->error_exit)(reinterpret_cast<j_common_ptr>(cinfo));
    }
    destination->pub.free_in_buffer = 4096;
    destination->pub.next_output_byte = destination->buffer;
    return TRUE;
}

// 0x606934 _ZN6glitch5video12_GLOBAL__N_121jpeg_term_destinationEP20jpeg_compress_struct
// Writes what the buffer holds.
void jpeg_term_destination(jpeg_compress_struct* cinfo) {
    SJpegDestination* destination = reinterpret_cast<SJpegDestination*>(cinfo->dest);
    const size_t pending = 4096 - destination->pub.free_in_buffer;
    if (destination->file->write(destination->buffer, static_cast<unsigned int>(pending)) != pending) {
        cinfo->err->msg_code = 37;
        (*cinfo->err->error_exit)(reinterpret_cast<j_common_ptr>(cinfo));
    }
}

}  // namespace

// 0x606a34 _ZNK6glitch5video15CImageWriterJPG10writeImageEPNS_2io10IWriteFileERKN5boost13intrusive_ptrINS0_6CImageEEEj
// Compressed formats are refused. The image is written as RGB through a one-row process buffer block (each row converted to R8G8B8
// first), with quality `flags` (75 when 0). False when the row block cannot be had.
bool CImageWriterJPG::writeImage(io::IWriteFile* file, const boost::intrusive_ptr<CImage>& image, uint32_t flags) const {
    const CImage* source = image.get();
    const int32_t format = source->m_format;
    if ((pixel_format::detail::PFDTable[format].flags & 8u) != 0) return false;
    jpeg_compress_struct cinfo;
    jpeg_error_mgr errorManager;
    cinfo.err = jpeg_std_error(&errorManager);
    jpeg_create_compress(&cinfo);
    if (cinfo.dest == nullptr) {
        cinfo.dest = reinterpret_cast<jpeg_destination_mgr*>(
            (*cinfo.mem->alloc_small)(reinterpret_cast<j_common_ptr>(&cinfo), JPOOL_PERMANENT, sizeof(SJpegDestination)));
    }
    SJpegDestination* destination = reinterpret_cast<SJpegDestination*>(cinfo.dest);
    destination->pub.init_destination = &jpeg_init_destination;
    destination->pub.empty_output_buffer = &jpeg_empty_output_buffer;
    destination->file = file;
    destination->pub.term_destination = &jpeg_term_destination;
    cinfo.image_width = source->m_width;
    cinfo.image_height = source->m_height;
    cinfo.input_components = 3;
    cinfo.in_color_space = JCS_RGB;
    jpeg_set_defaults(&cinfo);
    jpeg_set_quality(&cinfo, flags != 0 ? static_cast<int>(flags) : 75, TRUE);
    jpeg_start_compress(&cinfo, TRUE);
    const uint32_t rowBytes = 3u * source->m_width;
    const bool excess = glitch::core::isProcessBufferHeapExcessEnabled();
    glitch::core::setProcessBufferHeapExcessEnabled(true);
    uint8_t* row = reinterpret_cast<uint8_t*>(glitch::core::allocProcessBuffer(static_cast<int>(rowBytes)));
    bool written = false;
    if (row != nullptr) {
        JSAMPROW rowPointer = row;
        const uint32_t pitch = source->m_pitch;
        for (const uint8_t* line = source->m_data; cinfo.next_scanline < cinfo.image_height; line += pitch) {
            pixel_format::convert(format, line, pitch, 10, row, rowBytes, source->m_width, 1, false);
            jpeg_write_scanlines(&cinfo, &rowPointer, 1);
        }
        jpeg_finish_compress(&cinfo);
        jpeg_destroy_compress(&cinfo);
        glitch::core::releaseProcessBuffer(row);
        written = true;
    } else {
        jpeg_destroy_compress(&cinfo);
    }
    glitch::core::setProcessBufferHeapExcessEnabled(excess);
    return written;
}

}  // namespace glitch::video
