// CCommonGLDriver<CProgrammableGLDriver<CGLSLShaderHandler>, detail::CProgrammableGLFunctionPointerSet>::CBuffer: the GL buffer
// object (vtable 0x977890; bindImpl +0x0c .. cloneImpl +0x20). Owner K1b. Bodies transcribed from Hex-Rays and the ARM listings
// (the GL calls hide their arguments in the decompiler). The class is the port's non-template CCommonGLDriver::CBuffer.
//
// Layout (CBufferBase over IBuffer): +0x08 data, +0x0c size, +0x10 type, +0x11 usage, +0x12 flags, +0x13 map state, +0x14 driver,
// +0x18 GL buffer name, +0x1c mapped pointer. The driver's bound-buffer-per-target cache is its common shadow state (+0x254, one
// word per buffer type).
#include <cstdint>
#include <cstring>

#include "glitch-video/ccommon_gl_driver.hpp"
#include "glitch-video/deps/gl_function_table.hpp"

namespace glitch::video {

namespace {

deps::GLFunctionTable& gl() { return deps::activeGLFunctionTable(); }

// BufferTypeMap (ELF 0x8e014c): the GL target of an E_BUFFER_TYPE; zero for the types GL has no buffer object for.
constexpr uint32_t kBufferTypeMap[5] = {0x8892, 0x8893, 0, 0, 0};
// BufferUsageMap (0x8e0178): the GL usage of an E_BUFFER_USAGE (static, dynamic, stream draw).
constexpr uint32_t kBufferUsageMap[5] = {0x88e4, 0x88e8, 0x88e0, 0, 0};
// The map-access table the binary reads at BlendFactorMap + 73 words (0x8e0160): write-only and read-write are the accesses the
// GL buffer could map. An access past the table reads zero here (the binary reads on into the next table).
uint32_t mapAccessGL(uint32_t access) {
    static const uint32_t table[5] = {0, 0, 0x88b9, 0x88ba, 0};
    return access < 5 ? table[access] : 0;
}

// SMapBufferBase<E_BUFFER_READ_MAP_ACCESS, 1> (the scoped read map of cloneImpl): holds a use of the buffer and unmaps it, then
// drops the use, when it goes away.
struct ScopedReadMap {
    explicit ScopedReadMap(const IBuffer* buffer) : m_buffer(buffer) {
        buffer->referenceCounter += 2;  // the copy of the buffer pointer, and the use the map takes
    }
    ~ScopedReadMap() {
        m_buffer->unmap();
        m_buffer->drop();
    }
    const IBuffer* m_buffer;
};

}  // namespace

// 0x5b67b0 CBuffer::bindImpl(bool)
// A buffer without a GL name gets one (a type with no GL target gets nothing), is bound and, when it has data, uploaded and
// registered with the driver's buffer map; a failed upload deletes the name and turns the buffer into a client-memory (usage 4) one.
// A buffer that already has a name is brought up to date, and with `release` set its client copy is dropped.
void CCommonGLDriver::CBuffer::bindImpl(bool release) {
    CCommonGLDriverBase* driver = m_driver;
    if (m_glName == 0) {
        const uint32_t target = kBufferTypeMap[m_type];
        if (target == 0) return;
        if (gl().genBuffers) gl().genBuffers(1, &m_glName);
        const uint32_t name = m_glName;
        if (name == 0) return;
        uint8_t flags;
        if (m_size != 0) {
            uint32_t& bound = driver->m_common.m_words[m_type];
            if (name != bound) {
                if (gl().bindBuffer) gl().bindBuffer(target, name);
                bound = name;
            }
            if (gl().getError) gl().getError();
            if (gl().bufferData) gl().bufferData(target, static_cast<int32_t>(m_size), m_data, kBufferUsageMap[m_usage]);
            driver->registerBufferMap(m_glName, target, kBufferUsageMap[m_usage], m_size, m_data);  // driver slot +0x48
            if ((gl().getError ? gl().getError() : 0u) != 0) {
                if (gl().deleteBuffers) gl().deleteBuffers(1, &m_glName);
                m_glName = 0;
                if (m_usage != 4) {
                    m_flags12 = static_cast<uint8_t>(m_flags12 | (m_data != nullptr ? 0x12u : 0x10u));
                    if ((m_flags12 & kFlagDriverMapped) != 0) unbindImpl();  // slot +0x10
                    m_usage = 4;
                }
                return;
            }
            if (release) reset(m_size, nullptr, true);
            m_flags12 = static_cast<uint8_t>(m_flags12 & 0xfdu);
            flags = m_flags12;
        } else {
            flags = m_flags12;
        }
        m_flags12 = static_cast<uint8_t>(flags | kFlagDriverMapped);
        return;
    }
    if ((m_flags12 & kFlagHasData) != 0) {
        update();
    }
    if (!release) return;
    if (m_data != nullptr) {
        reset(m_size, nullptr, true);
        m_flags12 = static_cast<uint8_t>(m_flags12 & ~kFlagHasData);
    }
}

// 0x5b051c CBuffer::unbindImpl()
// The target's bound name is cleared when it is this buffer's, the GL buffer is deleted and unregistered from the driver's buffer
// map (driver slot +0x50), and the buffer goes back to the client-memory state: the flags lose the driver-mapped bit and the
// upload bit, and a buffer with a size is marked as having data again.
void CCommonGLDriver::CBuffer::unbindImpl() {
    CCommonGLDriverBase* driver = m_driver;
    uint32_t& bound = driver->m_common.m_words[m_type];
    if (bound == m_glName) bound = 0;
    if (gl().deleteBuffers) gl().deleteBuffers(1, &m_glName);
    driver->unregisterBufferMap(m_glName);  // driver slot +0x50
    uint8_t flags = static_cast<uint8_t>(m_flags12 & 0xe7u);
    m_flags12 = flags;
    if (m_size != 0) {
        flags = static_cast<uint8_t>((flags | kFlagHasData) & ~kFlagDirty);
    }
    m_glName = 0;
    if (m_size != 0) m_flags12 = flags;
}

// 0x5b6374 CBuffer::update()
// Binds the buffer and uploads it: the whole store when it is flagged as having data (a GL error deletes the name and turns the buffer
// into a client-memory one), else a sub-range of the same size. The upload flag is cleared.
void CCommonGLDriver::CBuffer::update() {
    CCommonGLDriverBase* driver = m_driver;
    const uint32_t name = m_glName;
    uint32_t& bound = driver->m_common.m_words[m_type];
    const uint32_t target = kBufferTypeMap[m_type];
    if (name != bound) {
        if (gl().bindBuffer) gl().bindBuffer(target, name);
        bound = name;
    }
    if ((m_flags12 & kFlagHasData) != 0) {
        if (gl().getError) gl().getError();
        if (gl().bufferData) gl().bufferData(target, static_cast<int32_t>(m_size), m_data, kBufferUsageMap[m_usage]);
        if ((gl().getError ? gl().getError() : 0u) != 0) {
            if (gl().deleteBuffers) gl().deleteBuffers(1, &m_glName);
            m_glName = 0;
            if (m_usage != 4) {
                m_flags12 = static_cast<uint8_t>(m_flags12 | (m_data != nullptr ? 0x12u : 0x10u));
                if ((m_flags12 & kFlagDriverMapped) != 0) unbindImpl();  // slot +0x10
                m_usage = 4;
            }
        }
    } else {
        if (gl().bufferSubData) gl().bufferSubData(target, 0, static_cast<int32_t>(m_size), m_data);
    }
    m_flags12 = static_cast<uint8_t>(m_flags12 & ~kFlagHasData);
}

// 0x5b3a1c CBuffer::mapImpl(unsigned int) const
// The GL buffer is only made current (for a write or read-write access the GL could map); the mapping itself is the client copy
// the buffer holds. With no client copy the result is null. An access of 0..2 records the map state 0x21; a write access (3 or 4)
// with a client copy marks the buffer as having data (unless it is a client-memory buffer) and records the access in the map state.
uint8_t* CCommonGLDriver::CBuffer::mapImpl(uint32_t access) const {
    CCommonGLDriverBase* driver = m_driver;
    bool tryDirect = false;
    if (kBufferTypeMap[m_type] != 0 && mapAccessGL(access) != 0) {
        if (access > 2 && access <= 4 && m_data != nullptr) {
            tryDirect = true;
        } else {
            uint32_t& bound = driver->m_common.m_words[m_type];
            if (m_glName != bound) {
                if (gl().bindBuffer) gl().bindBuffer(kBufferTypeMap[m_type], m_glName);
                bound = m_glName;
            }
        }
    }
    uint8_t* data = m_data;
    if (data == nullptr) return data;
    if (!tryDirect && access <= 2) {
        m_mapCount13 = 0x21;
        return data;
    }
    if (m_usage != 4) m_flags12 = static_cast<uint8_t>(m_flags12 | kFlagHasData);
    m_mapCount13 = access == 3 ? 0xa1 : static_cast<uint8_t>((access << 5) | 1u);
    return data;
}

// 0x5b2468 CBuffer::unmapImpl() const
// The buffer is made current again, the mapped pointer is cleared and the unmap-callback flag is dropped.
void CCommonGLDriver::CBuffer::unmapImpl() const {
    CCommonGLDriverBase* driver = m_driver;
    uint32_t& bound = driver->m_common.m_words[m_type];
    const uint32_t name = m_glName;
    if (name != bound) {
        if (gl().bindBuffer) gl().bindBuffer(kBufferTypeMap[m_type], name);
        bound = name;
    }
    const_cast<CBuffer*>(this)->m_mappedPtr = nullptr;
    m_flags12 = static_cast<uint8_t>(m_flags12 & ~kFlagUnmapCallback);
}

// 0x5b1480 CBuffer::cloneImpl() const
// A buffer with client memory is cloned over the same memory (the clone does not own it unless this one does). A buffer whose data
// lives only in the GL store is read back through a scoped read map into a new block that the clone owns.
boost::intrusive_ptr<IBuffer> CCommonGLDriver::CBuffer::cloneImpl() const {
    boost::intrusive_ptr<IBuffer> result;
    if (m_data != nullptr) {
        auto* clone = new CBuffer(m_driver, m_type, m_usage, m_size, m_data, (m_flags12 & kFlagOwnsData) != 0);
        result = boost::intrusive_ptr<IBuffer>(clone, true);  // a new buffer has count 0
        return result;
    }
    ScopedReadMap scope(this);
    const uint8_t* mapped = map(0);
    this->drop();  // the extra use taken by the scope
    uint8_t* copy = new uint8_t[m_size];
    std::memcpy(copy, mapped, m_size);
    auto* clone = new CBuffer(m_driver, m_type, m_usage, m_size, copy, true);
    result = boost::intrusive_ptr<IBuffer>(clone, true);
    return result;
}

}  // namespace glitch::video
