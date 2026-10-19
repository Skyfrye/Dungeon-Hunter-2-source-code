// Track B batch e1-glitch-video-glitch_video-0 (glitch::video, PVR header probe).
#include <algorithm>
#include <cstdint>
#include <cstring>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-video/deps/os_logging.hpp"
#include "glitch-video/texture_loaders.hpp"

namespace glitch::video {
namespace {

// Header size and the flag bits the PVR probe tests.
constexpr uint32_t kPVRHeaderSize = 52;
constexpr uint32_t kPVRFlagMipMap = 0x100;
constexpr uint32_t kPVRFlagCubeMap = 0x1000;
constexpr uint32_t kPVRFlagVolume = 0x4000;  // the surface-count word is the depth then

// SPVRHeader (52-byte PowerVR header) is declared in glitch-video/texture_loaders.hpp; each field is
// decoded from the 32-bit little-endian file layout, never cast from file bytes.
static_assert(kPVRHeaderSize == 52, "PVR header is 52 bytes");

uint32_t readLE32(const uint8_t* p) {
    return static_cast<uint32_t>(p[0]) | (static_cast<uint32_t>(p[1]) << 8) |
           (static_cast<uint32_t>(p[2]) << 16) | (static_cast<uint32_t>(p[3]) << 24);
}

void writeLE32(uint8_t* p, uint32_t v) {
    p[0] = static_cast<uint8_t>(v);
    p[1] = static_cast<uint8_t>(v >> 8);
    p[2] = static_cast<uint8_t>(v >> 16);
    p[3] = static_cast<uint8_t>(v >> 24);
}

// The header struct as the 52 file bytes it overlays in the original (the original reads straight into the
// caller's struct, so bytes a short read does not reach keep the caller's previous values).
void encodeHeader(const SPVRHeader& h, uint8_t* raw) {
    writeLE32(raw + 0x00, h.headerSize);
    writeLE32(raw + 0x04, h.height);
    writeLE32(raw + 0x08, h.width);
    writeLE32(raw + 0x0c, h.mipMapCount);
    writeLE32(raw + 0x10, h.flags);
    writeLE32(raw + 0x14, h.textureDataSize);
    writeLE32(raw + 0x18, h.bitsPerPixel);
    writeLE32(raw + 0x1c, h.redBitMask);
    writeLE32(raw + 0x20, h.greenBitMask);
    writeLE32(raw + 0x24, h.blueBitMask);
    writeLE32(raw + 0x28, h.alphaBitMask);
    std::memcpy(raw + 0x2c, h.pvrTag, 4);
    writeLE32(raw + 0x30, h.surfaceCount);
}

void decodeHeader(const uint8_t* raw, SPVRHeader& h) {
    h.headerSize = readLE32(raw + 0x00);
    h.height = readLE32(raw + 0x04);
    h.width = readLE32(raw + 0x08);
    h.mipMapCount = readLE32(raw + 0x0c);
    h.flags = readLE32(raw + 0x10);
    h.textureDataSize = readLE32(raw + 0x14);
    h.bitsPerPixel = readLE32(raw + 0x18);
    h.redBitMask = readLE32(raw + 0x1c);
    h.greenBitMask = readLE32(raw + 0x20);
    h.blueBitMask = readLE32(raw + 0x24);
    h.alphaBitMask = readLE32(raw + 0x28);
    std::memcpy(h.pvrTag, raw + 0x2c, 4);
    h.surfaceCount = readLE32(raw + 0x30);
}

// Index of the highest set bit, as the original's shift loop computes it. Zero gives
// 0xFFFFFFFF (the loop starts at -1). The original compares these unsigned, so the value
// stays unsigned here.
uint32_t highestBitIndex(uint32_t value) {
    uint32_t index = 0xFFFFFFFFu;
    if (value != 0) {
        do {
            value >>= 1;
            ++index;
        } while (value != 0);
    }
    return index;
}

}  // namespace

// 0x6058a4 _ZN6glitch5video12_GLOBAL__N_113readPVRHeaderEPNS_2io9IReadFileERNS1_10SPVRHeaderERb
// Reads the header. A plain header is the 8 bytes of size and height followed by 44 more,
// with "PVR!" at +0x2c. A "BTEXpvr" wrapper is 8 bytes followed by the 52-byte header.
// Returns false on a short read, a wrong tag or size, a bad flag combination, or a mip
// chain that does not match the dimensions. isBTEX is set once the wrapper tag is read.
// The original keeps this in an anonymous namespace; it is exposed here as glitch::video::readPVRHeader
// so CImageLoaderPVR::loadTextureHeader can call it.
bool readPVRHeader(io::IReadFile* file, SPVRHeader& header, bool& isBTEX) {
    file->seek(0, false);
    isBTEX = false;

    uint8_t first[8] = {};
    file->read(first, 8);

    // The original reads into the caller's struct in place; the raw image starts as the struct's current bytes.
    uint8_t raw[kPVRHeaderSize] = {};
    encodeHeader(header, raw);
    bool shortRead = false;
    if (std::memcmp(first, "BTEXpvr", 8) != 0) {
        std::memcpy(raw, first, 8);
        shortRead = file->read(raw + 8, 44) != 44;
    } else {
        const int32_t got = file->read(raw, kPVRHeaderSize);
        isBTEX = true;
        shortRead = got != static_cast<int32_t>(kPVRHeaderSize);
    }

    // Decode the fields from the file layout (never cast from file bytes). A short read still leaves what
    // was read in the struct, as the original does; the function then returns false.
    decodeHeader(raw, header);
    if (shortRead) {
        return false;
    }

    if (std::memcmp(header.pvrTag, "PVR!", 4) != 0) {
        return false;
    }
    if (header.headerSize != kPVRHeaderSize) {
        return false;
    }
    const uint32_t flags = header.flags;
    if ((flags & kPVRFlagMipMap) != 0 && header.mipMapCount == 0) {
        return false;
    }
    if ((flags & kPVRFlagCubeMap) != 0 && header.surfaceCount != 6) {
        return false;
    }
    if ((flags & kPVRFlagMipMap) == 0) {
        return true;
    }

    // Levels expected from the dimensions. The original picks the larger of the width and
    // height logs (ties go to width), then the larger of that and the volume depth log. Its
    // unsigned compares give the same result as std::max over the three values.
    const uint32_t widthLog = highestBitIndex(header.width);
    const uint32_t heightLog = highestBitIndex(header.height);
    const uint32_t depthLog = (flags & kPVRFlagVolume) != 0 ? highestBitIndex(header.surfaceCount)
                                                            : highestBitIndex(1);
    const uint32_t expectedLevels = std::max(std::max(widthLog, heightLog), depthLog);
    if (header.mipMapCount != expectedLevels) {
        const char* name = file->getFileName();
        os::Printer::logf(os::ELL_ERROR, "loading %s: incomplete mipmap chain not supported", name);
        return false;
    }
    return true;
}

}  // namespace glitch::video
