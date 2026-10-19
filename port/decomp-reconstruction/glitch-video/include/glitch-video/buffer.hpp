// glitch::video::IBuffer: CPU-side vertex, index and generic buffer. Canonical definition (engine unification
// wave u1-video); the stand-ins in glitch-core-io (deps/glitch_core_objects.hpp) and glitch-scene-collada-gui
// (tb/glitch_scene.hpp) are replaced by this header.
//
// Layout of the original object (32-bit; ctor 0x5a1908 C2 / 0x5a197c C1, object size 0x14):
//   +0x00  vptr (vtable 0x9770d8, nine slots, below)
//   +0x04  reference count (IReferenceCounted); the constructor stores 0, so a new buffer is wrapped with
//          boost::intrusive_ptr<IBuffer>(p, true) (CNullDriver::createBuffer 0x5b92cc does ++count itself)
//   +0x08  data pointer
//   +0x0c  size in bytes
//   +0x10  E_BUFFER_TYPE (byte)
//   +0x11  E_BUFFER_USAGE (byte); usage 4 never gets kFlagHasData
//   +0x12  flag byte, kFlag* below
//   +0x13  map state: low 5 bits = map count, bits 5-6 = the access of the first map
//
// Vtable (tools/decomp_vtable.py glitch::video::IBuffer; the pure slots are named from the CNullDriver::CBuffer
// overrides 0x5b8d88..0x5b934c):
//   +0x00 ~IBuffer (D1 0x5a1e1c, D2 0x5a1e5c; D0 0x5a1e9c)   +0x04 deleting destructor
//   +0x08 onDelete (IReferenceCounted)
//   +0x0c bindImpl(bool)   +0x10 unbindImpl()   +0x14 mapImpl(uint) const   +0x18 unmapImpl() const
//   +0x1c getMappedPtr() const   +0x20 cloneImpl() const
//   The base class leaves all six pure, so IBuffer is abstract; CNullDriver::CBuffer and
//   CCommonGLDriverBase::CBufferBase (which implements only getMappedPtr) derive from it.
#pragma once

#include <cstddef>
#include <cstdint>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

class IBuffer : public glitch::IReferenceCounted {
public:
    // Flag bits of m_flags12 (+0x12).
    static constexpr uint8_t kFlagOwnsData = 0x01;      // data is a private copy, freed on replace and in the destructor
    static constexpr uint8_t kFlagHasData = 0x02;       // set when the buffer has a size, data and usage != 4
    static constexpr uint8_t kFlagDirty = 0x04;         // mapped copy must be read back before the next read map
    static constexpr uint8_t kFlagDriverMapped = 0x08;  // driver-side mapping (the mapImpl path)
    static constexpr uint8_t kFlagUnmapCallback = 0x20; // unmapImpl / getMappedPtr are called for counted maps

    // 0x5a1908 (C2) / 0x5a197c (C1): stores type, usage, size, data and the flag byte; the count is 0. Bit 1 of
    // the flag byte is set when the buffer has a size, data and a usage other than 4.
    IBuffer(E_BUFFER_TYPE type, E_BUFFER_USAGE usage, uint32_t size, void* data, uint8_t flags);
    // 0x5a1e1c (D1) / 0x5a1e5c (D2) / 0x5a1e9c (D0): reset(0, nullptr, true), which frees an owned copy.
    ~IBuffer() override;

    // ---- vtable slots after the IReferenceCounted ones ----
    virtual void bindImpl(bool bind) = 0;                       // +0x0c
    virtual void unbindImpl() = 0;                              // +0x10
    virtual uint8_t* mapImpl(uint32_t access) const = 0;        // +0x14, the driver's mapping for the access mode
    virtual void unmapImpl() const = 0;                         // +0x18, the unmap callback (kFlagUnmapCallback)
    virtual uint8_t* getMappedPtr() const = 0;                  // +0x1c, the pointer of a counted map with the callback flag
    virtual boost::intrusive_ptr<IBuffer> cloneImpl() const = 0;  // +0x20, same type, usage, size and data pointer

    // ---- non-virtual members ----
    // 0x5a1c1c: when the buffer has a size and no private copy of its data, copies the current
    // bytes into a new allocation and sets kFlagOwnsData. Returns false when nothing was copied.
    bool copy();
    // 0x5a1c80: cloneImpl(), then copy() on the clone when this buffer owns its data (flag 1).
    boost::intrusive_ptr<IBuffer> clone() const;
    // 0x5a1cb4: replaces the data pointer and size. Frees the old data when it is privately
    // owned and the pointer changes. keepOwned sets kFlagOwnsData on the new data.
    void reset(uint32_t size, void* data, bool keepOwned);
    // 0x637a68: releases one map reference; the last one calls unmapImpl() when kFlagUnmapCallback is set.
    void unmap() const;
    // 0x5a19f0: maps the buffer for an access mode and returns its pointer, or nullptr.
    uint8_t* map(E_BUFFER_MAP_ACCESS access);
    // 0x5a1adc: the read form (E_BUFFER_READ_MAP_ACCESS). With access 1 and a dirty mirror it first copies the
    // driver's data (mapImpl(map byte)) into m_data.
    uint8_t* map(E_BUFFER_READ_MAP_ACCESS access) const;

    // ---- data members (original 32-bit offsets) ----
    // +0x04 is IReferenceCounted::referenceCounter.
    uint8_t* m_data = nullptr;          // +0x08
    uint32_t m_size = 0;                // +0x0c
    uint8_t m_type = 0;                 // +0x10, E_BUFFER_TYPE
    uint8_t m_usage = 0;                // +0x11, E_BUFFER_USAGE
    mutable uint8_t m_flags12 = 0;      // +0x12, see kFlag* above (the const map clears kFlagDirty)
    mutable uint8_t m_mapCount13 = 0;   // +0x13, low 5 bits = map count, bits 5-6 = access
};

}  // namespace glitch::video
