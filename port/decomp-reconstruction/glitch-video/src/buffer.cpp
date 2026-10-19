#include "glitch-video/buffer.hpp"

#include <cstring>

namespace glitch::video {

// 0x5a1908 _ZN6glitch5video7IBufferC2ENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvh
// 0x5a197c _ZN6glitch5video7IBufferC1ENS0_13E_BUFFER_TYPEENS0_14E_BUFFER_USAGEEjPvh
// Usage value 4 is excluded from the "has data" flag; the repo does not name it.
IBuffer::IBuffer(E_BUFFER_TYPE type, E_BUFFER_USAGE usage, uint32_t size, void* data, uint8_t flags)
    : m_data(static_cast<uint8_t*>(data)),
      m_size(size),
      m_type(static_cast<uint8_t>(type)),
      m_usage(static_cast<uint8_t>(usage)),
      m_flags12(flags) {
    referenceCounter = 0;  // +0x04 is 0 after the constructor (the first intrusive_ptr adds the use)
    if (size != 0 && usage != 4 && data != nullptr) {
        m_flags12 = static_cast<uint8_t>(flags | kFlagHasData);
    }
}

// 0x5a1e1c _ZN6glitch5video7IBufferD1Ev / 0x5a1e5c D2 / 0x5a1e9c D0 (deleting: LC_API_FREE_0, here operator delete)
IBuffer::~IBuffer() { reset(0, nullptr, true); }

// 0x5a1c80 _ZNK6glitch5video7IBuffer5cloneEv
boost::intrusive_ptr<IBuffer> IBuffer::clone() const {
    boost::intrusive_ptr<IBuffer> result = cloneImpl();
    if ((m_flags12 & kFlagOwnsData) != 0 && result) {
        result->copy();
    }
    return result;
}

// 0x5a1c1c _ZN6glitch5video7IBuffer4copyEv
bool IBuffer::copy() {
    if ((m_flags12 & kFlagOwnsData) != 0 && m_data != nullptr) return false;
    if (m_size == 0) return false;
    const uint8_t* source = m_data;
    uint8_t* copyData = new uint8_t[m_size];
    m_data = copyData;
    if (source != nullptr) {
        std::memcpy(copyData, source, m_size);
    }
    m_flags12 = static_cast<uint8_t>(m_flags12 | kFlagOwnsData);
    return true;
}

// 0x5a1cb4 _ZN6glitch5video7IBuffer5resetEjPvb
void IBuffer::reset(uint32_t size, void* data, bool keepOwned) {
    uint8_t* newData = static_cast<uint8_t*>(data);
    if (size == 0) {
        // Release the data. Bit 1 is set on the way out only when the usage is not 4.
        if ((m_flags12 & kFlagOwnsData) != 0 && m_data != nullptr) {
            delete[] m_data;
            if (m_usage != 4) {
                m_flags12 = static_cast<uint8_t>(m_flags12 | kFlagHasData);
            }
        }
        m_flags12 = static_cast<uint8_t>((m_flags12 & 0xfa) | kFlagOwnsData);
        m_data = nullptr;
        m_size = 0;
        return;
    }

    if (newData != m_data) {
        if (m_data != nullptr && (m_flags12 & kFlagOwnsData) != 0) {
            delete[] m_data;
        }
        // Bit 1 records that the size changed when the new pointer is null (v12 in the original).
        const uint8_t sizeChanged = (size == m_size) ? 0 : kFlagHasData;
        m_data = newData;
        if (m_usage != 4) {
            uint8_t flags = m_flags12;
            flags = static_cast<uint8_t>(flags | (newData != nullptr ? kFlagHasData : sizeChanged));
            m_size = size;
            m_flags12 = flags;
            if (newData == nullptr) {
                m_flags12 = static_cast<uint8_t>((flags | kFlagOwnsData) & ~kFlagDirty);
                return;
            }
            m_flags12 = keepOwned ? static_cast<uint8_t>(flags | kFlagOwnsData)
                                  : static_cast<uint8_t>(flags & 0xfe);
            return;
        }
    }

    const uint8_t flags = m_flags12;
    m_size = size;
    if (newData == nullptr) {
        m_flags12 = static_cast<uint8_t>((flags | kFlagOwnsData) & ~kFlagDirty);
        return;
    }
    m_flags12 = keepOwned ? static_cast<uint8_t>(m_flags12 | kFlagOwnsData)
                          : static_cast<uint8_t>(flags & 0xfe);
}

// 0x637a68 _ZNK6glitch5video7IBuffer5unmapEv
void IBuffer::unmap() const {
    uint8_t count = m_mapCount13;
    if ((count & 0x1f) > 1) {
        m_mapCount13 = static_cast<uint8_t>(((count & 0x1f) - 1) | (count & 0xe0));
        return;
    }
    if ((m_flags12 & kFlagUnmapCallback) != 0) {
        unmapImpl();  // vtable +0x18
    }
    m_mapCount13 = 0;
}

// 0x5a19f0 _ZN6glitch5video7IBuffer3mapENS0_19E_BUFFER_MAP_ACCESSE
uint8_t* IBuffer::map(int32_t access) {
    if (m_mapCount13 != 0) {
        const uint8_t flags = m_flags12;
        m_mapCount13 = static_cast<uint8_t>(((m_mapCount13 & 0x1f) + 1) | (m_mapCount13 & 0xe0));
        if ((flags & kFlagUnmapCallback) != 0) {
            return getMappedPtr();  // vtable +0x1c
        }
        return m_data;
    }
    const uint8_t flags = m_flags12;
    uint8_t* result = m_data;
    if ((flags & kFlagDriverMapped) != 0) {
        if (access <= 3) {
            return mapImpl(static_cast<uint32_t>((access & 1) | 2));  // vtable +0x14
        }
        if (result == nullptr) {
            return mapImpl(static_cast<uint32_t>((access & 1) | 2));
        }
    } else if (result == nullptr) {
        return nullptr;
    }
    m_mapCount13 = static_cast<uint8_t>((static_cast<uint32_t>(access) << 5) | 1u);
    if (m_usage != 4) {
        m_flags12 = static_cast<uint8_t>(flags | kFlagHasData);
    }
    return result;
}

// 0x5a1adc _ZNK6glitch5video7IBuffer3mapENS0_24E_BUFFER_READ_MAP_ACCESSE
uint8_t* IBuffer::map(E_BUFFER_READ_MAP_ACCESS access) const {
    if (m_mapCount13 != 0) {
        const uint8_t count = m_mapCount13;
        m_mapCount13 = static_cast<uint8_t>(((count & 0x1f) + 1) | (count & 0xe0));
        if ((m_flags12 & kFlagUnmapCallback) != 0) {
            return getMappedPtr();  // vtable +0x1c
        }
        return m_data;
    }
    if (access == 1 && m_data != nullptr) {
        // Read-back: when the mapped copy is dirty, the driver's data (mapImpl with the map byte, which is 0
        // here) is copied into m_data, the dirty bit is cleared, and the temporary map is released.
        if ((m_flags12 & kFlagDirty) != 0) {
            const uint8_t* source = mapImpl(m_mapCount13);  // vtable +0x14
            std::memcpy(m_data, source, m_size);
            const uint8_t count = m_mapCount13;
            const uint8_t flags = m_flags12;
            m_flags12 = static_cast<uint8_t>(flags & 0xfb);
            if ((count & 0x1f) <= 1) {
                if ((flags & kFlagUnmapCallback) != 0) {
                    unmapImpl();  // vtable +0x18
                }
                m_mapCount13 = 0;
            } else {
                m_mapCount13 = static_cast<uint8_t>(((count & 0x1f) - 1) | (count & 0xe0));
            }
        }
        m_mapCount13 = 33;  // access 1 in bits 5-6, count 1
        return m_data;
    }
    if ((m_flags12 & kFlagHasData) == 0 && (m_flags12 & kFlagDriverMapped) != 0) {
        return mapImpl(m_flags12 & kFlagHasData);  // the original passes the masked flag byte (0 here)
    }
    uint8_t* result = m_data;
    if (result != nullptr) {
        m_mapCount13 = static_cast<uint8_t>((32 * access) | 1);
    }
    return result;
}

}  // namespace glitch::video
