// Track B batch e1-glitch-video-glitch_video_CImageLoaderPVR-0 (glitch::video::CImageLoaderPVR).
#include <cstdint>

#include "glitch-video/deps/os_logging.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/texture_loaders.hpp"

namespace glitch::video {
namespace {

// Flag bits of SPVRHeader::flags that loadTextureHeader tests.
constexpr uint32_t kPVRFlagTwiddled = 0x200;
constexpr uint32_t kPVRFlagMipMap = 0x100;
constexpr uint32_t kPVRFlagCubeMap = 0x1000;
constexpr uint32_t kPVRFlagVolume = 0x4000;
constexpr uint32_t kPVRFlagAltFormat = 0x8000;

// Size of the PVR header that follows the container tag.
constexpr uint32_t kPVRHeaderBytes = 52;

}  // namespace

// 0x605f80 _ZNK6glitch5video15CImageLoaderPVR9loadImageEPNS_2io9IReadFileE
// Reads the header, then the texture data (a short read logs "corrupt PVR file" with the file name); the low byte of the
// flags selects the pixel format (an unknown one logs "PVR loader" / "unsupported format"), with the 0x8000 flag choosing the
// alternate of the two formats 24 and 25. The data buffer is adopted by the image (copy = true, own = true), so the
// original's final free sees a null pointer on success.
boost::intrusive_ptr<CImage> CImageLoaderPVR::loadImage(io::IReadFile* file) const {
    SPVRHeader header;
    bool isBTEX = false;
    if (!readPVRHeader(file, header, isBTEX)) return boost::intrusive_ptr<CImage>();

    uint8_t* data = new uint8_t[header.textureDataSize];
    boost::intrusive_ptr<CImage> result;
    if (static_cast<uint32_t>(file->read(data, header.textureDataSize)) != header.textureDataSize) {
        os::Printer::log("corrupt PVR file", file->getFileName(), ELL_ERROR);
        delete[] data;
        return result;
    }
    E_PIXEL_FORMAT format;
    const bool alternate = (header.flags & kPVRFlagAltFormat) != 0;
    switch (static_cast<int8_t>(header.flags)) {
        case 1: format = 8; break;
        case 16: format = 7; break;
        case 17: format = 9; break;
        case 18: format = 14; break;
        case 19: format = 5; break;
        case 21: format = 10; break;
        case 22: format = 0; break;
        case 23: format = 4; break;
        case 24: format = alternate ? 25 : 24; break;
        case 25: format = alternate ? 27 : 26; break;
        case 96: format = 40; break;  // port (remaster): ETC2 RGB8
        case 97: format = 41; break;  // port (remaster): ETC2 RGBA8 EAC
        default:
            os::Printer::log("PVR loader", "unsupported format", ELL_ERROR);
            delete[] data;
            return result;
    }
    const core::dimension2d<int32_t> size{static_cast<int32_t>(header.width), static_cast<int32_t>(header.height)};
    result = boost::intrusive_ptr<CImage>(
        new CImage(format, size, data, header.textureDataSize, header.mipMapCount, true, true), true);
    return result;
}

// 0x605b10 _ZNK6glitch5video15CImageLoaderPVR17loadTextureHeaderEPNS_2io9IReadFileERNS0_12STextureDescE
// The header comes from readPVRHeader (glitch::video::readPVRHeader, 0x6058a4, exposed in
// texture_loaders.hpp); the file name in the log messages is IReadFile::getFileName (vtable +0x28). The
// format mapping follows the Hex-Rays switch; the pixel-format table (detail::PFDTable) is read for the
// twiddle check. The log calls go to Printer::logf, whose output glitch-core-io still drops (its own row).
bool CImageLoaderPVR::loadTextureHeader(io::IReadFile* file, STextureDesc& desc) const {
    SPVRHeader header;
    bool isBTEX = false;
    // The original returns this result unchanged: 0 when the header is rejected.
    if (!readPVRHeader(file, header, isBTEX)) {
        return false;
    }

    const uint32_t flags = header.flags;

    // +0x00: 2 for a cube map, 1 for a volume, 0 otherwise.
    if ((flags & kPVRFlagCubeMap) != 0) {
        desc.type = 2;
    } else {
        desc.type = (flags & kPVRFlagVolume) != 0 ? 1 : 0;
    }

    desc.height = header.height;                                      // +0x14
    desc.width = header.width;                                        // +0x10
    desc.unknown08 = 0;                                               // +0x08
    desc.depth = desc.type == 1 ? header.surfaceCount : 1;            // +0x18
    desc.flag = static_cast<uint8_t>((flags & kPVRFlagMipMap) != 0);  // +0x1c, bit 8 of the flags

    // The file must hold exactly the header (plus the 8-byte tag for BTEX) and the data for the
    // surface count (6 faces for a cube map). Compared in 32 bits as the original does.
    const uint32_t trailer = isBTEX ? 8u : 0u;
    const uint32_t multiplier = desc.type == 2 ? 6u : 1u;
    const uint32_t fileSize = static_cast<uint32_t>(file->getSize());
    if (fileSize - kPVRHeaderBytes - trailer != header.textureDataSize * multiplier) {
        os::Printer::logf(os::ELL_ERROR, "loading %s: file size mismatches header info", file->getFileName());
        return false;
    }

    // +0x04: glitch format id from the PowerVR pixel format in the low byte of the flags.
    uint32_t format = 0;
    switch (static_cast<uint8_t>(flags & 0xff)) {
        case 0: format = 6; break;
        case 1: format = 8; break;
        case 2:
        case 19: format = 5; break;
        case 4:
        case 21: format = 10; break;
        case 5:
        case 26: format = 13; break;
        case 7:
        case 22: format = 0; break;
        case 8:
        case 23: format = 4; break;
        case 12:
        case 24: format = (flags & kPVRFlagAltFormat) != 0 ? 25 : 24; break;
        case 13:
        case 25: format = (flags & kPVRFlagAltFormat) != 0 ? 27 : 26; break;
        case 16: format = 7; break;
        case 17: format = 9; break;
        case 18: format = 14; break;
        case 32: format = (flags & kPVRFlagAltFormat) != 0 ? 18 : 17; break;
        case 33:
        case 34: format = 19; break;
        case 35:
        case 36: format = 20; break;
        case 42: format = 16; break;
        case 57: format = 2; break;
        case 59: format = 1; break;
        case 80: format = 31; break;
        case 83: format = 30; break;
        case 86: format = 29; break;
        // Port codes (remaster, not in the binary): tools/trackb/textures.py packs the HD textures as ETC2 in this container.
        case 96: format = 40; break;  // ETC2 RGB8 (GL_COMPRESSED_RGB8_ETC2)
        case 97: format = 41; break;  // ETC2 RGBA8 EAC (GL_COMPRESSED_RGBA8_ETC2_EAC)
        default:
            // The original format string is "%0x02u": a hex conversion with the 0 flag, then "02u".
            os::Printer::logf(os::ELL_ERROR, "loading %s: pixel format %0x02u not supported", file->getFileName(),
                              static_cast<unsigned>(flags & 0xff));
            return false;
    }
    desc.format = format;

    // Twiddled data is only accepted when the table row for the format is marked as supported
    // (bit 8 of its first word). Rows past the end of the table are not read: all ids above are < 40.
    if ((flags & kPVRFlagTwiddled) == 0 || (pixel_format::detail::PFDTable[format].flags & 8u) != 0) {
        return true;
    }
    os::Printer::logf(os::ELL_ERROR, "loading %s: twiddled format not supported", file->getFileName());
    return false;
}

}  // namespace glitch::video
