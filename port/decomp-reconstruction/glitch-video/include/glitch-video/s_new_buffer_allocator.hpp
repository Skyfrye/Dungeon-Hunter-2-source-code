// glitch::video::detail::SNewBufferAllocator<Driver>: replaces the storage of a
// buffer with a fresh heap allocation. Only the single intrusive pointer that the
// original reads at +0x00 is modelled.
#pragma once

#include <cstdint>

#include "glitch-video/buffer.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::video {

class IVideoDriver;

namespace detail {

template <typename Driver>
struct SNewBufferAllocator {
    boost::intrusive_ptr<IBuffer> m_buffer;  // +0x00, the buffer whose storage is replaced

    // 0x5aa218 (SNewBufferAllocator<IVideoDriver>): keeps the given buffer, or asks the driver for an empty one
    // (createBuffer, vtable +0x78, with type 0, usage 4, size 0, no data and the flag set). Specialized in
    // src/ok2-SNewBufferAllocator.cpp.
    SNewBufferAllocator(Driver* driver, const boost::intrusive_ptr<IBuffer>& buffer);
    // Port conveniences (not in the original): the default state and wrapping an existing buffer.
    SNewBufferAllocator() = default;
    explicit SNewBufferAllocator(const boost::intrusive_ptr<IBuffer>& buffer) : m_buffer(buffer) {}

    // 0x5aa454 _ZNK6glitch5video6detail19SNewBufferAllocatorINS0_12IVideoDriverEE8allocateEj
    // Allocates size bytes, resets the buffer to them (owned), and returns a new reference.
    // The original does not test m_buffer for null before the reset call.
    boost::intrusive_ptr<IBuffer> allocate(uint32_t size) const;
};

// glitch::video::detail::SProcessBufferHeapBufferAllocator: the allocator of buffers whose storage is a process-buffer block. An
// empty class in the original (the instance is passed as `this` and not read).
struct SProcessBufferHeapBufferAllocator {
    boost::intrusive_ptr<IBuffer> m_buffer;  // +0x00, the buffer allocateProcessBuffer resets (empty for release only)
    // 0x5abaa8 _ZNK6glitch5video6detail31SProcessBufferHeapBufferAllocator7releaseERKN5boost13intrusive_ptrINS0_7IBufferEEE
    // Gives the buffer's process-buffer block back: the buffer is mapped for writing (that maps its block), the mapped pointer is
    // released (releaseProcessBuffer), the map is undone and the buffer is reset to no storage (size 0, no data, owned kept). The
    // original reads the buffer without a null test (an empty pointer is a null access there).
    void release(const boost::intrusive_ptr<IBuffer>& buffer) const;
};

// The allocator that hands out a buffer that already exists (allocateProcessBuffer<SReuseBufferAllocator>, 0x5abdd0).
struct SReuseBufferAllocator {
    boost::intrusive_ptr<IBuffer> m_buffer;  // +0x00
};

}  // namespace detail

// 0x5abd08 / 0x5abdd0 / 0x5abe9c: gives the vertices [first, last) of the streams in `mask` one buffer from the allocator and
// points the streams at it; `stride` receives the vertex size. Empty for an empty range or an empty mask.
template <typename Allocator>
boost::intrusive_ptr<IBuffer> allocateProcessBuffer(uint32_t first, uint32_t last, uint32_t mask,
                                                    const boost::intrusive_ptr<CVertexStreams>& streams, Allocator allocator,
                                                    uint16_t& stride);
// 0x5abc34 / 0x5abc9c: takes the buffer back off the streams of `mask` and gives it back to the allocator.
template <typename Allocator>
boost::intrusive_ptr<IBuffer> releaseProcessBuffer(uint32_t vertexCount, uint32_t mask,
                                                   const boost::intrusive_ptr<CVertexStreams>& streams, Allocator allocator);

}  // namespace glitch::video
