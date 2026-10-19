// glitch::video::ITexture: the texture base class. Canonical definition (engine unification wave u1-video);
// the stand-ins in glitch-core-io (deps/glitch_core_objects.hpp, which kept only the slot type at +0x38) and the
// forward declarations in glitch-scene-collada-gui and game/ are replaced by this header.
//
// Layout of the original object (32-bit; constructor 0x5fe404 C2 / 0x5fe6e0 C1; size 0x54, derived textures add
// to it: CNullDriver::CTexture is 0x54 as well, the GL textures go up to +0x58):
//   +0x00  vptr (vtable 0x978218, nine slots, below)
//   +0x04  reference count; the constructor stores 0, so a new texture is wrapped with
//          boost::intrusive_ptr<ITexture>(p, true)
//   +0x08  std::string name (STLport, 0x18 bytes: inline buffer +0x08, finish +0x18, start +0x1c)
//   +0x20  width            +0x24  height          +0x28  depth (the descriptor's depth for type 1, else 1)
//   +0x2c  data pointer (null when the pixels are not held in memory)
//   +0x30  per-mip byte offsets: mipCount + 1 words, followed by the dirty bitmap (one bit per face and mip)
//   +0x34  IVideoDriver*
//   +0x38  packed state word, see the kBits* constants
//   +0x3c  id (SIDedCollection id in the texture manager, 0xffff when unmanaged)
//   +0x3e  mip count (byte)
//   +0x3f  flag byte, see kFlag3f* below
//   +0x40  dirty word (uint16, 8189 after construction), see kDirty*
//   +0x42  map state: low 5 bits = map count
//   +0x43  mapped (face, level) pair: face in bits 0-2, level in bits 3-7
//   +0x44  float Anisotropy (1.0)   +0x48  float LOD Bias (0)   +0x4c  float Min LOD (0)
//   +0x50  float Max LOD (mip count - 1 when the descriptor asks for a mip chain, else 0)
//
// Vtable (tools/decomp_vtable.py glitch::video::ITexture; the pure slots are named from the
// CNullDriver::CTexture overrides 0x5b8da4..0x5b8dd4):
//   +0x00 ~ITexture (D1 0x5fe310, D2 0x5fe37c; D0 0x5fe398)   +0x04 deleting destructor
//   +0x08 onDelete (IReferenceCounted)
//   +0x0c bindImpl(bool)   +0x10 unbindImpl()   +0x14 mapImpl(uchar, E_TEXTURE_CUBE_MAP_FACE, uchar)
//   +0x18 unmapImpl() const   +0x1c getMappedPtr() const   +0x20 generateMipmapsImpl()
//   All six are pure in the base, so ITexture is abstract (CNullDriver::CTexture and the GL texture classes derive).
#pragma once

#include <cstdint>
#include <string>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

class ITexture : public glitch::IReferenceCounted {
public:
    // Bit fields of the packed state word at +0x38.
    static constexpr uint32_t kTypeMask = 0x3;            // bits 0-1: texture type (2 = cube map, 6 faces)
    static constexpr uint32_t kLayoutShift = 2;           // bits 2-3: "Layout" attribute (STextureDesc +0x08)
    static constexpr uint32_t kFormatShift = 4;           // bits 4-9: E_PIXEL_FORMAT (index into the PFDTable)
    static constexpr uint32_t kUsageShift = 10;           // bits 10-11: "Usage" attribute (STextureDesc +0x0c)
    static constexpr uint32_t kMinFilterShift = 12;       // bits 12-14: min filter (3 with a mip chain, else 1)
    static constexpr uint32_t kMagFilterShift = 15;       // bits 15-17: mag filter (1 after construction)
    static constexpr uint32_t kWrapSShift = 18;           // bits 18-20
    static constexpr uint32_t kWrapTShift = 21;           // bits 21-23
    static constexpr uint32_t kWrapRShift = 24;           // bits 24-26 (deserializeAttributes writes them)
    static constexpr uint32_t kCompareRToTextureBit = 27; // bit 27
    static constexpr uint32_t kCompareModeShift = 28;     // bits 28-30

    // Bits of m_flags3f (+0x3f).
    static constexpr uint8_t kFlagOwnsData = 0x01;        // setData frees the old pointer with delete[]
    static constexpr uint8_t kFlagRangeSizes = 0x02;      // "Has Only Client Level 0": the level table is a (begin, end) pair
    static constexpr uint8_t kFlagRenderTarget = 0x04;    // "Is Render Target" (STextureDesc +0x1d)
    static constexpr uint8_t kFlagBound = 0x08;           // bind status "bound"
    static constexpr uint8_t kFlagBindFailed = 0x10;      // bind status "failed"
    static constexpr uint8_t kFlagUnmapCallback = 0x20;   // unmap / getMappedPtr go through the virtual hooks
    static constexpr uint8_t kFlagLocked = 0x40;          // level 0 of face 0 is mapped

    // Bits of m_dirtyFlags40 (+0x40).
    static constexpr uint16_t kDirtyData = 0x001;
    static constexpr uint16_t kDirtyMipmaps = 0x002;
    static constexpr uint16_t kDirtyMinFilter = 0x004;
    static constexpr uint16_t kDirtyMagFilter = 0x008;
    static constexpr uint16_t kDirtyWrapS = 0x010;
    static constexpr uint16_t kDirtyWrapT = 0x020;
    static constexpr uint16_t kDirtyWrapR = 0x040;
    static constexpr uint16_t kDirtyAnisotropy = 0x080;
    static constexpr uint16_t kDirtyLodBias = 0x100;
    static constexpr uint16_t kDirtyMinLod = 0x200;
    static constexpr uint16_t kDirtyMaxLod = 0x400;

    // 0x5fe404 (C2) / 0x5fe6e0 (C1): copies the descriptor, allocates the level table and the dirty bitmap
    // and marks the data dirty. The name is copied; the driver is kept.
    ITexture(const char* name, IVideoDriver* driver, const STextureDesc& desc);
    // 0x5fe310 (D1) / 0x5fe37c (D2) / 0x5fe398 (D0): setData(nullptr, true, false), then frees the level table.
    ~ITexture() override;

    // ---- vtable slots after the IReferenceCounted ones ----
    virtual bool bindImpl(bool bind) = 0;                                         // +0x0c
    virtual void unbindImpl() = 0;                                                // +0x10
    virtual uint8_t* mapImpl(uint8_t access, E_TEXTURE_CUBE_MAP_FACE face, uint8_t level) = 0;  // +0x14
    virtual void unmapImpl() const = 0;                                           // +0x18
    virtual uint8_t* getMappedPtr() const = 0;                                    // +0x1c
    virtual void generateMipmapsImpl() = 0;                                       // +0x20

    // ---- non-virtual members ----
    // 0x5e80e8: bytes for the whole texture, including the cube-face multiplier.
    uint32_t getSizeInBytes() const;
    // 0x5ea504: bytes per row of a mip level (level 0 width for "layout" 1).
    uint32_t getPitch(uint8_t level) const;
    // 0x5fdbf0: the driver's type, driver vtable +0x5c.
    E_DRIVER_TYPE getDriverType() const;

    // 0x5fdc0c (const): releases one map reference; the last one calls unmapImpl() (+0x18) when kFlagUnmapCallback is
    // set, then clears the lock bits.
    void unmap() const;
    // 0x5fdc84: a 4-byte branch to unmap.
    void unlock();
    // 0x5fe300: map(5, 0, 0), the map call that locks level 0 of face 0.
    uint8_t* lock(bool);
    // 0x5fe0d4: maps one (face, level) for an access mode and returns its pointer, or nullptr. The first map of a
    // driver-bound texture goes to mapImpl(access & 1 | 2, face, level); otherwise the CPU copy is allocated on demand
    // (setData with an owned new[] block) and the face/level bit of the dirty bitmap is set.
    uint8_t* map(E_BUFFER_MAP_ACCESS access, E_TEXTURE_CUBE_MAP_FACE face, uint8_t level);

    // 0x5fdae8 (const): marks the data, or one bit per face and level, dirty by setting
    // bits in the bitmap that follows the per-mip sizes. The flag forces the dirty bits
    // even when no data pointer is set. 0x608048 is the clone with flag == 0.
    void setDataDirty(bool flag) const;
    // 0x5fdf74: replaces the data pointer. `owned` sets bit 0 of +0x3f, and the texture then
    // frees the previous data with delete[] when it replaces it (ITexture::map passes 1 for its
    // own new[] buffer). `rangeSizes` sets bit 1 of +0x3f when the texture has more than one mip.
    // When the pointer changes to a non-null value, or the dirty bitmap is touched, setDataDirty(false)
    // runs. The null-data path clears dirty word bit 0x2, and bit 0x1 only when +0x3f bit 0x8 is set.
    void setData(void* data, bool owned, bool rangeSizes);
    // 0x5ff26c: allocates a copy of the texture data, copies the old contents over it and sets the owned-data
    // flag, returning non-zero on success. Deviation: the original memcpys from the saved source pointer even
    // when it is null (undefined there); the port skips the copy in that case.
    uint32_t copy();

    // 0x5fdc88: copies anisotropy, LOD bias, min LOD, max LOD and the min/mag/wrap fields from another texture
    // and records which of them changed in the dirty word. Not reconstructed (declared).
    void copyParametersFrom(const boost::intrusive_ptr<ITexture>& other);
    // 0x5fde9c: binds the texture through the driver (IVideoDriver::forceCommitTexture 0x5acfd0). Not reconstructed.
    void bind(bool force);
    // 0x5fdf28: generates the mip chain when the driver allows it (driver +0x9c bit 2). Not reconstructed.
    bool generateMipmaps();
    // 0x5fea04 / 0x5fed6c: attribute (de)serializers; attribute names are "Name", "Id", "Type", "Layout", "Usage",
    // "Pixel Format", "Width", "Height", "Depth", "Size", "Pitch", "Slice Pitch", "Mipmap Count",
    // "Has Only Client Level 0", "Is Render Target", "Bind Status", then the "Sampling State" group with
    // "Min Filter", "Max Filter", "Wrap S", "Wrap T", "Wrap R", "Compare R To Texture", "Compare Mode",
    // "Anisotropy", "LOD Bias", "Min LOD", "Max LOD". Not reconstructed (the IAttributes vtable is core-io's).
    // The Wrap R rows are an original quirk: serialize prints bits 21-23 and deserialize compares bits 21-23 but
    // writes bits 24-26.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const;

    // 0x7d3bb4: sets the wrap mode for the S and T axes (and the R axis when the
    // T change is applied). E_TEXTURE_CLAMP values are passed as plain integers.
    void setWrap(E_TEXTURE_CLAMP wrap);
    // 0x6ce46c: the compiler clone of setWrap with the constant 2 (clamp).
    void setWrapClamp();

    // ---- data members (original 32-bit offsets; +0x04 is IReferenceCounted::referenceCounter) ----
    std::string m_name;                    // +0x08 (the std::string is 0x18 bytes in the original)
    uint32_t m_width = 0;                  // +0x20, mip 0 width
    uint32_t m_height = 0;                 // +0x24
    uint32_t m_depth = 1;                  // +0x28
    uint8_t* m_data = nullptr;             // +0x2c, texture data (or null when not held in memory)
    int32_t* m_levelSizes = nullptr;       // +0x30, per-mip offsets (or a two-entry range); the dirty bitmap follows them
    IVideoDriver* m_driver = nullptr;      // +0x34
    uint32_t m_flags38 = 0;                // +0x38, packed state, see kBits*
    uint16_t m_id = 0xffff;                // +0x3c
    uint8_t m_mipCount3e = 0;              // +0x3e, mip level count
    mutable uint8_t m_flags3f = 0;         // +0x3f, see kFlag*
    mutable uint16_t m_dirtyFlags40 = 0;   // +0x40, see kDirty*
    mutable uint8_t m_lockCount42 = 0;     // +0x42, low 5 bits = map count; bits 5-7 hold the access of the first map
    mutable uint8_t m_lockFlags43 = 0;     // +0x43, mapped (face, level) pair
    float m_anisotropy = 1.0f;             // +0x44
    float m_lodBias = 0.0f;                // +0x48
    float m_minLod = 0.0f;                 // +0x4c
    float m_maxLod = 0.0f;                 // +0x50
};

}  // namespace glitch::video
