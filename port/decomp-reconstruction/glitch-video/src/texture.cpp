#include "glitch-video/texture.hpp"

#include <cstring>

#include "glitch-video/pixel_format.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {
// floor(log2(v)) with the original's -1 (as an unsigned word) for zero: the loop of 0x5fe404 counts shifts.
uint32_t floorLog2OrAllOnes(uint32_t v) {
    uint32_t n = 0xffffffffu;
    while (v != 0) {
        v >>= 1;
        ++n;
    }
    return n;
}
}  // namespace

// 0x5fe404 _ZN6glitch5video8ITextureC2EPKcPNS0_12IVideoDriverERKNS0_12STextureDescE
// 0x5fe6e0 _ZN6glitch5video8ITextureC1EPKcPNS0_12IVideoDriverERKNS0_12STextureDescE
ITexture::ITexture(const char* name, IVideoDriver* driver, const STextureDesc& desc)
    : m_name(name != nullptr ? name : ""),
      m_width(desc.width),
      m_height(desc.height),
      m_depth(desc.type == 1 ? desc.depth : 1u),
      m_driver(driver) {
    referenceCounter = 0;
    m_data = nullptr;
    m_levelSizes = nullptr;
    m_flags38 = 0;
    m_id = 0xffff;

    // Mip count: with a mip chain requested, floor(log2(max(width, height, depth))) + 1.
    uint32_t mipCount = 1;
    int32_t maxLod = static_cast<int32_t>(desc.flag);  // 0 when no chain is requested
    if (desc.flag != 0) {
        const uint32_t lw = floorLog2OrAllOnes(desc.width);
        const uint32_t lh = floorLog2OrAllOnes(desc.height);
        const uint32_t ld = floorLog2OrAllOnes(desc.depth);
        uint32_t widest = lw;
        if (lh > widest) widest = lh;
        if (ld > widest) widest = ld;
        mipCount = static_cast<uint8_t>(widest + 1);
        maxLod = static_cast<int32_t>(mipCount) - 1;
    }
    m_mipCount3e = static_cast<uint8_t>(mipCount);
    m_minLod = 0.0f;
    m_flags3f = desc.flag1d != 0 ? kFlagRenderTarget : 0;
    m_dirtyFlags40 = 8189;
    m_anisotropy = 1.0f;
    m_lodBias = 0.0f;
    m_lockFlags43 = 0;
    m_lockCount42 = 0;

    uint32_t flags = (desc.type & 3u) | (m_flags38 & 0xfffffffcu);
    flags = (flags & 0xfffffff3u) | (4u * (desc.unknown08 & 3u));
    flags = (flags & 0xfffff3ffu) | ((desc.unknown0c & 3u) << 10);
    flags = (flags & 0xfffffc0fu) | (16u * (desc.format & 0x3fu));
    uint32_t sampling = flags & 0xfffc0fffu;
    sampling |= desc.flag != 0 ? 0x3000u : 0x1000u;  // min filter: 3 with a mip chain, else 1
    flags = (sampling & 0xf0037fffu) | 0x8000u;      // mag filter 1, wrap and compare bits clear
    if ((flags & 0x70000000u) != 0) {
        flags &= 0x8fffffffu;
        maxLod = static_cast<int32_t>(mipCount) - 1;
    }
    m_flags38 = flags;
    m_maxLod = static_cast<float>(maxLod);

    // Level offsets followed by the dirty bitmap.
    const uint32_t faces = (flags & 3u) == 2 ? 6u : 1u;
    const uint32_t count = m_mipCount3e;
    m_levelSizes = new int32_t[count + 1 + ((count * faces + 31u) >> 5)];
    const bool layoutFlag = desc.unknown08 == 1;
    uint32_t offset = 0;
    for (uint32_t level = 0; level < count; ++level) {
        m_levelSizes[level] = static_cast<int32_t>(offset);
        offset += pixel_format::computeMipmapSizeInBytes(static_cast<E_PIXEL_FORMAT>(desc.format), desc.width,
                                                         desc.height, desc.depth, static_cast<uint8_t>(level),
                                                         layoutFlag);
    }
    m_levelSizes[count] = static_cast<int32_t>(offset);
    setDataDirty(true);
}

// 0x5fe310 _ZN6glitch5video8ITextureD1Ev / 0x5fe37c D2 / 0x5fe398 D0 (the deleting variant is operator delete here).
// setData(nullptr, true, false) frees an owned data block; the level table and the name follow.
ITexture::~ITexture() {
    setData(nullptr, true, false);
    delete[] m_levelSizes;
    m_levelSizes = nullptr;
}

// 0x5e80e8 _ZNK6glitch5video8ITexture14getSizeInBytesEv
// Cube textures (type bits == 2) use a multiplier of 5 on the 128-byte-aligned
// size of one face, as in the original.
uint32_t ITexture::getSizeInBytes() const {
    uint32_t multiplier = ((m_flags38 & 3) == 2) ? 5u : 0u;
    uint32_t size;
    if ((m_flags3f & 2) != 0) {
        size = static_cast<uint32_t>(m_levelSizes[1] - m_levelSizes[0]);
    } else {
        size = static_cast<uint32_t>(m_levelSizes[m_mipCount3e]);
    }
    uint32_t aligned = (size + 0x7fu) & 0xffffff80u;
    return aligned * multiplier + size;
}

// 0x5ea504 _ZNK6glitch5video8ITexture8getPitchEh
uint32_t ITexture::getPitch(uint8_t level) const {
    const uint32_t state = m_flags38;
    const E_PIXEL_FORMAT format = static_cast<E_PIXEL_FORMAT>((state >> 4) & 0x3f);
    if (((state >> 2) & 3u) == 1) {
        return pixel_format::computePitch(format, m_width);
    }
    int32_t width = static_cast<int32_t>(m_width) >> level;
    if (width < 1) width = 1;
    return pixel_format::computePitch(format, static_cast<uint32_t>(width));
}

// 0x5fdbf0 _ZNK6glitch5video8ITexture13getDriverTypeEv: driver vtable +0x5c.
E_DRIVER_TYPE ITexture::getDriverType() const { return m_driver->getDriverType(); }

// 0x5fe300 _ZN6glitch5video8ITexture4lockEb
uint8_t* ITexture::lock(bool) { return map(5, 0, 0); }

// 0x5fe0d4 _ZN6glitch5video8ITexture3mapENS0_19E_BUFFER_MAP_ACCESSENS0_24E_TEXTURE_CUBE_MAP_FACEEh
uint8_t* ITexture::map(E_BUFFER_MAP_ACCESS access, E_TEXTURE_CUBE_MAP_FACE face, uint8_t level) {
    const uint32_t mips = m_mipCount3e;
    auto offsetOf = [this, mips](E_TEXTURE_CUBE_MAP_FACE f, uint32_t l) -> uint32_t {
        if ((m_flags3f & kFlagRangeSizes) != 0) {
            return static_cast<uint32_t>(m_levelSizes[1] - m_levelSizes[0]) * static_cast<uint32_t>(f);
        }
        const uint32_t faceStride = (static_cast<uint32_t>(m_levelSizes[mips]) + 127u) & 0xffffff80u;
        return static_cast<uint32_t>(m_levelSizes[l]) + static_cast<uint32_t>(f) * faceStride;
    };

    if (m_lockCount42 != 0) {
        const uint32_t pair = m_lockFlags43;
        if (face == static_cast<int32_t>(pair & 7) && level == (pair >> 3)) {
            m_lockCount42 = static_cast<uint8_t>(((m_lockCount42 & 0x1f) + 1) | (m_lockCount42 & 0xe0));
            if ((m_flags3f & kFlagUnmapCallback) != 0) {
                return getMappedPtr();  // vtable +0x1c
            }
            return m_data + offsetOf(face, level);
        }
        return nullptr;
    }

    const uint8_t flags = m_flags3f;
    if ((flags & kFlagBound) != 0) {
        if (access <= 3 || m_data == nullptr) {
            return mapImpl(static_cast<uint8_t>((access & 1) | 2), face, level);  // vtable +0x14
        }
    } else if (m_data == nullptr) {
        // Allocate the CPU copy: one face plus five 128-byte-aligned faces for a cube map.
        const uint32_t extraFaces = (m_flags38 & kTypeMask) == 2 ? 5u : 0u;
        uint32_t size;
        if ((flags & kFlagRangeSizes) != 0) {
            size = static_cast<uint32_t>(m_levelSizes[1] - m_levelSizes[0]);
        } else {
            size = static_cast<uint32_t>(m_levelSizes[mips]);
        }
        uint8_t* block = new uint8_t[size + ((size + 127u) & 0xffffff80u) * extraFaces];
        setData(block, true, (m_flags3f >> 1) & 1);
        if (m_data == nullptr) return nullptr;
    }

    const bool firstLevel = level == 0 && face == 0;
    m_lockFlags43 = static_cast<uint8_t>(static_cast<uint32_t>(face) | (8u * level));
    if (firstLevel) m_flags3f = static_cast<uint8_t>(m_flags3f | kFlagLocked);
    m_lockCount42 = static_cast<uint8_t>((32u * static_cast<uint32_t>(access)) | 1u);
    m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | kDirtyData);
    const uint32_t bit = level + mips * static_cast<uint32_t>(face);
    reinterpret_cast<uint32_t*>(m_levelSizes)[mips + 1 + (bit >> 5)] |= 1u << (bit & 0x1f);
    return m_data + offsetOf(face, level);
}

// 0x5fdf74 _ZN6glitch5video8ITexture7setDataEPvbb
// Flag names: owned = a3 (bit 0 of +0x3f, freed on replace), rangeSizes = a4 (bit 1 of +0x3f).
void ITexture::setData(void* data, bool owned, bool rangeSizes) {
    bool refreshDirty = false;  // original v10: the pointer changed to a non-null value
    bool noData = false;        // original jump to LABEL_19
    if (data == m_data) {
        noData = (data == nullptr);
    } else {
        if (m_data != nullptr && (m_flags3f & 1) != 0) {
            delete[] m_data;
        }
        m_data = static_cast<uint8_t*>(data);
        noData = (data == nullptr);
        refreshDirty = !noData;
    }

    if (noData) {
        // LABEL_19: no data. Bit 0 of +0x3f is always set here; the dirty word loses bit 0x2,
        // and bit 0x1 only when +0x3f bit 0x8 is set.
        const uint8_t flags = static_cast<uint8_t>(m_flags3f | 1);
        m_flags3f = flags;
        if ((flags & 8) != 0) {
            m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 & ~1u);
        }
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 & 0xfffdu);
        if (m_mipCount3e > 1 && rangeSizes) {
            m_flags3f = static_cast<uint8_t>(m_flags3f | 2);
        } else {
            m_flags3f = static_cast<uint8_t>(m_flags3f & ~2);
        }
        return;
    }

    // LABEL_7: a non-null pointer.
    uint8_t flags = owned ? static_cast<uint8_t>(m_flags3f | 1) : static_cast<uint8_t>(m_flags3f & 0xfe);
    const uint32_t mipCount = m_mipCount3e;
    if (mipCount > 1 && rangeSizes) {
        if ((flags & 2) == 0) {
            // The dirty bitmap follows the mipCount + 1 per-mip sizes.
            uint32_t* bitmap = reinterpret_cast<uint32_t*>(m_levelSizes) + mipCount + 1;
            std::memset(bitmap, 0, 4 * ((mipCount + 31) >> 5));
        }
        flags = static_cast<uint8_t>(flags | 2);
    } else {
        flags = static_cast<uint8_t>(flags & ~2);
    }
    m_flags3f = flags;
    if (refreshDirty) {
        setDataDirty(false);
    }
}

// 0x5fdc84 _ZN6glitch5video8ITexture6unlockEv: a 4-byte branch to unmap (0x5fdc0c).
void ITexture::unlock() { unmap(); }

// 0x7d3bb4 _ZN6glitch5video8ITexture7setWrapENS0_15E_TEXTURE_CLAMPE
// S axis: bits 18..20 of +0x38, flag 0x10. T axis: bits 21..23, flag 0x20.
// The R-axis branch is kept as in the original; with a valid clamp value
// the comparison it relies on is false, so only S and T are written in practice.
void ITexture::setWrap(E_TEXTURE_CLAMP clamp) {
    const uint32_t wrap = static_cast<uint32_t>(clamp);
    uint32_t v = m_flags38;
    if (wrap != ((v << 11) >> 29)) {
        v = (v & 0xffe3ffffu) | ((wrap & 7u) << 18);
        m_flags38 = v;
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | 0x10);
    }
    if (wrap != ((v << 8) >> 29)) {
        uint32_t t = (v & 0xff1fffffu) | ((wrap & 7u) << 21);
        uint16_t flags = m_dirtyFlags40;
        bool bVar5 = wrap != ((t << 8) >> 29);
        m_flags38 = t;
        if (bVar5) {
            t = (v & 0xf81fffffu) | ((wrap & 7u) << 21);
        }
        m_dirtyFlags40 = static_cast<uint16_t>(flags | 0x20);
        if (bVar5) {
            m_dirtyFlags40 = static_cast<uint16_t>(flags | 0x60);
            m_flags38 = t | ((wrap & 7u) << 24);
        }
    }
}

// 0x6ce46c _ZN6glitch5video8ITexture7setWrapENS0_15E_TEXTURE_CLAMPE.clone.1
void ITexture::setWrapClamp() {
    uint32_t v = m_flags38;
    if (((v << 11) >> 29) != 2) {
        v = (v & 0xffe3ffffu) | 0x80000u;
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | 0x10);
        m_flags38 = v;
    }
    if (((v << 8) >> 29) != 2) {
        m_flags38 = (v & 0xff1fffffu) | 0x400000u;
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | 0x20);
    }
}

// 0x5fdc0c _ZNK6glitch5video8ITexture5unmapEv
void ITexture::unmap() const {
    const uint8_t count = m_lockCount42;
    if ((count & 0x1f) > 1) {
        m_lockCount42 = static_cast<uint8_t>(((count & 0x1f) - 1) | (count & 0xe0));
        return;
    }
    if ((m_flags3f & kFlagUnmapCallback) != 0) {
        unmapImpl();  // vtable +0x18
    }
    m_lockCount42 = 0;
    m_flags3f = static_cast<uint8_t>(m_flags3f & 0xbf);
    m_lockFlags43 = 0;
}

// 0x5fdae8 _ZNK6glitch5video8ITexture12setDataDirtyEb
// The bitmap is the word array that follows the per-mip sizes: index mip + 1 onwards.
void ITexture::setDataDirty(bool flag) const {
    const uint32_t mipCount = m_mipCount3e;
    const uint32_t faces = (m_flags38 & 3) == 2 ? 6u : 1u;
    uint32_t* bitmap = reinterpret_cast<uint32_t*>(m_levelSizes) + mipCount + 1;
    if ((m_flags3f & 2) == 0) {
        if (m_data != nullptr || flag) {
            uint32_t words = (mipCount * faces + 0x1fu) >> 5;
            m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | 1);
            for (uint32_t i = 0; i < words; ++i) {
                bitmap[i] = 0xffffffffu;
            }
        }
        return;
    }
    if (m_data != nullptr || flag) {
        m_dirtyFlags40 = static_cast<uint16_t>(m_dirtyFlags40 | 1);
        uint32_t position = 0;
        for (uint32_t face = 0; face < faces; ++face) {
            bitmap[position >> 5] |= 1u << (position & 0x1fu);
            position += mipCount;
        }
    }
}

// 0x5ff26c _ZN6glitch5video8ITexture4copyEv
// Verified against the listing: refuse (return 0) when bit 0 of +0x3f (the owned-data flag) is set AND the data
// pointer at +0x2c is non-null; otherwise allocate the byte count getSizeInBytes computes (v4 + 128-byte-aligned
// v4 * the cube multiplier 5 when (m_flags38 & 3) == 2, exactly the expression getSizeInBytes is the port's
// spelling of), store the new pointer at +0x2c, copy the old contents over it and set bit 0 of +0x3f, then
// return 1. Deviations: the original tail-calls memcpy with the saved source pointer even when that source is
// null (undefined there), so the port skips the copy in that case; and the block comes from new[] where the
// original uses operator new[] with the glitch memory hint (same released-by-delete[] ownership).
uint32_t ITexture::copy() {
    // Bit 0 of +0x3f means the data is owned (freed by setData), as in the asm at 0x5ff26c
    // (TST R3,#1 then the non-zero check that returns 0). A copy is refused only when owned data exists.
    const bool ownsData = (m_flags3f & 1) != 0;
    if (ownsData && m_data != nullptr) {
        return 0;
    }
    const uint8_t* source = m_data;
    const uint32_t total = getSizeInBytes();
    uint8_t* dest = new uint8_t[total];
    m_data = dest;
    if (source != nullptr) {
        std::memcpy(dest, source, total);
    }
    // 0x5ff31c: STRB with the old flag word ORed with 1 -- the copy is owned from here on (setData frees it).
    m_flags3f = static_cast<uint8_t>(m_flags3f | 1u);
    return 1;
}

// 0x5fde9c _ZN6glitch5video8ITexture4bindEb
// Binds the texture when it is not bound yet or its data is dirty: bindImpl (vtable +0x0c, handed the same flag), and, when that
// succeeded and the driver's capability word has bit 24 and its state word has neither of bits 1 and 2 (no screen set, not
// pushing a target), the driver renders the texture through its default material so it gets uploaded (forceCommitTexture).
void ITexture::bind(bool force) {
    if ((m_flags3f & kFlagBound) != 0 && (m_dirtyFlags40 & kDirtyData) == 0) return;
    if (!bindImpl(force)) return;
    IVideoDriver* driver = m_driver;
    if ((driver->m_capabilities & 0x1000000u) != 0 && (driver->m_stateFlags & 6u) == 0) {
        driver->forceCommitTexture(boost::intrusive_ptr<ITexture>(this, true));
    }
}

// 0x5fdf28 _ZN6glitch5video8ITexture15generateMipmapsEv
// With more than one mip level and the driver's mipmap-generation capability (bit 2): binds the texture without forcing and runs
// generateMipmapsImpl (vtable +0x20). False otherwise.
bool ITexture::generateMipmaps() {
    if (m_mipCount3e <= 1 || (m_driver->m_capabilities & 4u) == 0) return false;
    bind(false);
    generateMipmapsImpl();
    return true;
}

}  // namespace glitch::video
