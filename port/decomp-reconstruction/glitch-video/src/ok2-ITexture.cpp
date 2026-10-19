// Owner K2: ITexture attribute (de)serialization.
#include <string>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_names.hpp"

namespace glitch::video {

namespace {

// The choice lists of the getStringsInternal accessors the serializers use, read from the binary (each accessor returns the address
// of its function-local static table; the E_* types are int aliases here, so the accessors cannot be overloaded).
const char* const kTextureTypeNames[] = {"2D", "3D", "Cube Map", "Rectangle", nullptr};  // 0x5fda68, ELF 0x99b788
const char* const kTextureLayoutNames[] = {"Linear", "Linear Uniform Pitch", "Tiled 32", "Swizzled", nullptr};  // 0x5fda78, 0x99b79c
const char* const kTextureFilterNames[] = {"Nearest",
                                           "Linear",
                                           "Nearest Mipmap Nearest",
                                           "Linear Mipmap Nearest",
                                           "Nearest Mipmap Linear",
                                           "Linear Mipmap Linear",
                                           nullptr};  // 0x5fdaa0, 0x99b7cc
const char* const kTextureClampNames[] = {"Repeat", "Clamp", "Clamp to Edge", "Clamp to Border", "Mirror", nullptr};  // 0x5fdab4, 0x99b7e8
const char* const kBufferUsageNames[] = {"Static", "Dynamic", "Stream", "System", nullptr};  // 0x6db0fc, ELF 0x99d988
const char* const kPixelFormatNames[] = {"L8",
                                         "L16",
                                         "A8",
                                         "A8L8",
                                         "L8A8",
                                         "R5G6B5",
                                         "A4R4G4B4",
                                         "R4G4B4A4",
                                         "A1R5G5B5",
                                         "R5G5B5A1",
                                         "R8G8B8",
                                         "B8G8R8",
                                         "A8R8G8B8",
                                         "B8G8R8A8",
                                         "R8G8B8A8",
                                         "A8B8G8R8",
                                         "A2B10G10R10",
                                         "COMPRESSED_RGB_S3TC_DXT1",
                                         "COMPRESSED_RGBA_S3TC_DXT1",
                                         "COMPRESSED_RGBA_S3TC_DXT3",
                                         "COMPRESSED_RGBA_S3TC_DXT5",
                                         "COMPRESSED_ATC_RGB",
                                         "COMPRESSED_ATC_RGBA",
                                         "COMPRESSED_ATC_ALPHA_INTERP",
                                         "COMPRESSED_RGB_PVRTC_2BPP",
                                         "COMPRESSED_RGBA_PVRTC_2BPP",
                                         "COMPRESSED_RGB_PVRTC_4BPP",
                                         "COMPRESSED_RGBA_PVRTC_4BPP",
                                         "RGB16F",
                                         "RGBA16F",
                                         "RGB32F",
                                         "RGBA32F",
                                         "DEPTH16",
                                         "DEPTH24",
                                         "DEPTH32",
                                         "DEPTH24_STENCIL8",
                                         "STENCIL1",
                                         "STENCIL4",
                                         "STENCIL8",
                                         "UNKNOWN",                    // port: id 39 is the "unknown" format
                                         "COMPRESSED_RGB8_ETC2",       // port rows 40, 41 (remaster)
                                         "COMPRESSED_RGBA8_ETC2_EAC",
                                         nullptr};  // 0x5ed944, ELF 0x957470

}  // namespace

// 0x5fea04 _ZN6glitch5video8ITexture21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Enters the "Sampling State" group and reads the sampling state back: a value that differs from the packed one replaces its
// field of the state word (+0x38) and sets its dirty bit (+0x40): min filter (bits 12-14; a texture with one mip level only
// accepts nearest / linear), max filter (15-17), wrap S (18-20), wrap T (21-23), wrap R (written to bits 24-26 but compared
// with bits 21-23, as the binary does), compare R to texture (bit 27), compare mode (28-30, no dirty bit), then anisotropy
// (at least 1), LOD bias, min LOD and max LOD. Slots: push +0x30, getEnum(name, choices) +0x100, getBool +0xe4, getFloat +0x70, pop +0x3c.
void ITexture::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    attributes->push("Sampling State");
    int32_t value = attributes->getEnum("Min Filter", kTextureFilterNames);
    if (value != static_cast<int32_t>((m_flags38 >> 12) & 7u) && (m_mipCount3e > 1 || value <= 1)) {
        m_flags38 = (m_flags38 & 0xffff8fffu) | (static_cast<uint32_t>(value & 7) << 12);
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyMinFilter);
    }
    value = attributes->getEnum("Max Filter", kTextureFilterNames);
    if (value != static_cast<int32_t>((m_flags38 >> 15) & 7u)) {
        m_flags38 = (m_flags38 & 0xfffc7fffu) | (static_cast<uint32_t>(value & 7) << 15);
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyMagFilter);
    }
    value = attributes->getEnum("Wrap S", kTextureClampNames);
    if (value != static_cast<int32_t>((m_flags38 >> 18) & 7u)) {
        m_flags38 = (m_flags38 & 0xffe3ffffu) | (static_cast<uint32_t>(value & 7) << 18);
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyWrapS);
    }
    value = attributes->getEnum("Wrap T", kTextureClampNames);
    if (value != static_cast<int32_t>((m_flags38 >> 21) & 7u)) {
        m_flags38 = (m_flags38 & 0xff1fffffu) | (static_cast<uint32_t>(value & 7) << 21);
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyWrapT);
    }
    value = attributes->getEnum("Wrap R", kTextureClampNames);
    if (value != static_cast<int32_t>((m_flags38 >> 21) & 7u)) {
        m_flags38 = (m_flags38 & 0xf8ffffffu) | (static_cast<uint32_t>(value & 7) << 24);
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyWrapR);
    }
    const int32_t compareToTexture = attributes->getBool("Compare R To Texture") ? 1 : 0;
    if (compareToTexture != static_cast<int32_t>((m_flags38 >> 27) & 1u)) {
        m_flags38 = (m_flags38 & 0xf7ffffffu) | (static_cast<uint32_t>(compareToTexture) << 27);
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | 0x800u);
    }
    const int32_t compareMode = attributes->getEnum("Compare Mode", compareFuncNames());
    if (static_cast<int32_t>((m_flags38 >> 28) & 7u) != compareMode) {
        m_flags38 = (m_flags38 & 0x8fffffffu) | (static_cast<uint32_t>(compareMode & 7) << 28);
    }
    float anisotropy = attributes->getFloat("Anisotropy");
    if (anisotropy < 1.0f) anisotropy = 1.0f;
    if (m_anisotropy != anisotropy) {
        m_anisotropy = anisotropy;
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyAnisotropy);
    }
    float parameter = attributes->getFloat("LOD Bias");
    if (parameter != m_lodBias) {
        m_lodBias = parameter;
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyLodBias);
    }
    parameter = attributes->getFloat("Min LOD");
    if (parameter != m_minLod) {
        m_minLod = parameter;
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyMinLod);
    }
    parameter = attributes->getFloat("Max LOD");
    if (parameter != m_maxLod) {
        m_maxLod = parameter;
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyMaxLod);
    }
    attributes->pop();
}

// 0x5fed6c _ZNK6glitch5video8ITexture19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Writes the read-only description of the texture (Name, Id, Type, Layout, Usage, Pixel Format, Width, Height, Depth, Size = the
// first level or the whole chain plus five 128-aligned copies for a cube map, Pitch, Slice Pitch, Mipmap Count, Has Only Client
// Level 0, Is Render Target, Bind Status), then the "Sampling State" group (min / max filter, wrap S / T / R -- wrap R prints bits
// 21-23 like wrap T, compare R to texture, compare mode, anisotropy, LOD bias, min LOD, max LOD; the sampling entries are
// writable, flag 0). Slots: addString +0x7c, addInt +0x4c, addEnum +0xf4, addBool +0xd8, addFloat +0x64, push +0x30, pop +0x3c.
void ITexture::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) const {
    attributes->addString("Name", m_name.c_str(), true);
    attributes->addInt("Id", m_id, true);
    attributes->addEnum("Type", static_cast<int>(m_flags38 & 3u), kTextureTypeNames, true);
    attributes->addEnum("Layout", static_cast<int>((m_flags38 >> 2) & 3u), kTextureLayoutNames, true);
    attributes->addEnum("Usage", static_cast<int>((m_flags38 >> 10) & 3u), kBufferUsageNames, true);
    attributes->addEnum("Pixel Format", static_cast<int>((m_flags38 >> 4) & 0x3fu), kPixelFormatNames, true);
    attributes->addInt("Width", static_cast<int>(m_width), true);
    attributes->addInt("Height", static_cast<int>(m_height), true);
    attributes->addInt("Depth", static_cast<int>(m_depth), true);
    const uint32_t faces = (m_flags38 & 3u) == 2u ? 5u : 0u;
    uint32_t level;
    if ((m_flags3f & kFlagRangeSizes) != 0) {
        level = static_cast<uint32_t>(m_levelSizes[1] - m_levelSizes[0]);
    } else {
        level = static_cast<uint32_t>(m_levelSizes[m_mipCount3e]);
    }
    attributes->addInt("Size", static_cast<int>(level + ((level + 127u) & 0xffffff80u) * faces), true);
    const E_PIXEL_FORMAT format = static_cast<E_PIXEL_FORMAT>((m_flags38 >> 4) & 0x3fu);
    attributes->addInt("Pitch", static_cast<int>(pixel_format::computePitch(format, m_width)), true);
    attributes->addInt("Slice Pitch", static_cast<int>(m_height * pixel_format::computePitch(format, m_width)), true);
    attributes->addInt("Mipmap Count", m_mipCount3e, true);
    attributes->addBool("Has Only Client Level 0", ((m_flags3f >> 1) & 1u) != 0, true);
    attributes->addBool("Is Render Target", ((m_flags3f >> 2) & 1u) != 0, true);
    const char* status;
    if ((m_flags3f & kFlagBound) != 0) {
        status = "bound";
    } else if ((m_flags3f & kFlagBindFailed) != 0) {
        status = "failed";
    } else {
        status = "not bound";
    }
    attributes->addString("Bind Status", status, true);
    attributes->push("Sampling State");
    attributes->addEnum("Min Filter", static_cast<int>((m_flags38 >> 12) & 7u), kTextureFilterNames, false);
    attributes->addEnum("Max Filter", static_cast<int>((m_flags38 >> 15) & 7u), kTextureFilterNames, false);
    attributes->addEnum("Wrap S", static_cast<int>((m_flags38 >> 18) & 7u), kTextureClampNames, false);
    attributes->addEnum("Wrap T", static_cast<int>((m_flags38 >> 21) & 7u), kTextureClampNames, false);
    attributes->addEnum("Wrap R", static_cast<int>((m_flags38 >> 21) & 7u), kTextureClampNames, false);
    attributes->addBool("Compare R To Texture", ((m_flags38 >> 27) & 1u) != 0, false);
    attributes->addEnum("Compare Mode", static_cast<int>((m_flags38 >> 28) & 7u), compareFuncNames(), false);
    attributes->addFloat("Anisotropy", m_anisotropy, false);
    attributes->addFloat("LOD Bias", m_lodBias, false);
    attributes->addFloat("Min LOD", m_minLod, false);
    attributes->addFloat("Max LOD", m_maxLod, false);
    attributes->pop();
}

}  // namespace glitch::video
