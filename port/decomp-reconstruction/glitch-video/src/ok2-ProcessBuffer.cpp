// Owner K2: the process buffer allocation templates (allocateProcessBuffer / releaseProcessBuffer for the three allocators)
// and the SNewBufferAllocator<IVideoDriver> constructor.
#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-video/s_new_buffer_allocator.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace detail {

// 0x5aa218 _ZN6glitch5video6detail19SNewBufferAllocatorINS0_12IVideoDriverEEC1EPS3_RKN5boost13intrusive_ptrINS0_7IBufferEEE
// Keeps the buffer it is given (one use added); without one the driver makes an empty buffer through createBuffer (vtable
// +0x78: type 0, usage 4, size 0, no data, flag true).
template <>
SNewBufferAllocator<IVideoDriver>::SNewBufferAllocator(IVideoDriver* driver, const boost::intrusive_ptr<IBuffer>& buffer) {
    if (buffer.get() != nullptr) {
        m_buffer = buffer;
    } else {
        m_buffer = driver->createBuffer(0, 4, 0, nullptr, true);
    }
}

}  // namespace detail

namespace {
// True for an empty request: no vertices, or no stream in the mask.
bool emptyRequest(uint32_t first, uint32_t last, uint32_t mask) { return last == first || mask == 0; }
}  // namespace

// 0x5abd08 _ZN6glitch5video21allocateProcessBufferINS0_6detail19SNewBufferAllocatorINS0_12IVideoDriverEEEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjjRKNS5_INS0_14CVertexStreamsEEET_Rt
// A new storage block of (last - first) vertices is made with the allocator's buffer (SNewBufferAllocator::allocate), and the
// streams of the mask are pointed at it with the offsets moved back by first * stride.
template <>
boost::intrusive_ptr<IBuffer> allocateProcessBuffer<detail::SNewBufferAllocator<IVideoDriver>>(
    uint32_t first, uint32_t last, uint32_t mask, const boost::intrusive_ptr<CVertexStreams>& streams,
    detail::SNewBufferAllocator<IVideoDriver> allocator, uint16_t& stride) {
    if (emptyRequest(first, last, mask)) return boost::intrusive_ptr<IBuffer>();
    stride = static_cast<uint16_t>(detail::getStrides(mask, streams));
    boost::intrusive_ptr<IBuffer> buffer = allocator.allocate((last - first) * stride);
    if (buffer.get() == nullptr) return boost::intrusive_ptr<IBuffer>();
    detail::assignBuffer(buffer, stride, -static_cast<int32_t>(first * stride), mask, streams);
    return buffer;
}

// 0x5abdd0 _ZN6glitch5video21allocateProcessBufferINS0_6detail21SReuseBufferAllocatorEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjjRKNS5_INS0_14CVertexStreamsEEET_Rt
// The buffer the allocator holds is reused as it is.
template <>
boost::intrusive_ptr<IBuffer> allocateProcessBuffer<detail::SReuseBufferAllocator>(
    uint32_t first, uint32_t last, uint32_t mask, const boost::intrusive_ptr<CVertexStreams>& streams,
    detail::SReuseBufferAllocator allocator, uint16_t& stride) {
    if (emptyRequest(first, last, mask)) return boost::intrusive_ptr<IBuffer>();
    stride = static_cast<uint16_t>(detail::getStrides(mask, streams));
    boost::intrusive_ptr<IBuffer> buffer = allocator.m_buffer;
    if (buffer.get() == nullptr) return boost::intrusive_ptr<IBuffer>();
    detail::assignBuffer(buffer, stride, -static_cast<int32_t>(first * stride), mask, streams);
    return buffer;
}

// 0x5abe9c _ZN6glitch5video21allocateProcessBufferINS0_6detail33SProcessBufferHeapBufferAllocatorEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjjRKNS5_INS0_14CVertexStreamsEEET_Rt
// The allocator's buffer is reset to a block from the process buffer heap (not owned: the flag is false) and used for the streams.
template <>
boost::intrusive_ptr<IBuffer> allocateProcessBuffer<detail::SProcessBufferHeapBufferAllocator>(
    uint32_t first, uint32_t last, uint32_t mask, const boost::intrusive_ptr<CVertexStreams>& streams,
    detail::SProcessBufferHeapBufferAllocator allocator, uint16_t& stride) {
    if (emptyRequest(first, last, mask)) return boost::intrusive_ptr<IBuffer>();
    stride = static_cast<uint16_t>(detail::getStrides(mask, streams));
    const uint32_t size = (last - first) * stride;
    IBuffer* raw = allocator.m_buffer.get();
    void* block = glitch::core::allocProcessBuffer(static_cast<int>(size));
    raw->reset(size, block, false);
    boost::intrusive_ptr<IBuffer> buffer = allocator.m_buffer;
    if (buffer.get() == nullptr) return boost::intrusive_ptr<IBuffer>();
    detail::assignBuffer(buffer, stride, -static_cast<int32_t>(first * stride), mask, streams);
    return buffer;
}

// 0x5abc34 _ZN6glitch5video20releaseProcessBufferINS0_6detail33SProcessBufferHeapBufferAllocatorEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjRKNS5_INS0_14CVertexStreamsEEET_
// Takes the buffer off the streams of the mask and gives its block back to the heap.
template <>
boost::intrusive_ptr<IBuffer> releaseProcessBuffer<detail::SProcessBufferHeapBufferAllocator>(
    uint32_t vertexCount, uint32_t mask, const boost::intrusive_ptr<CVertexStreams>& streams,
    detail::SProcessBufferHeapBufferAllocator allocator) {
    if (mask == 0) return boost::intrusive_ptr<IBuffer>();
    boost::intrusive_ptr<IBuffer> buffer = detail::clearBuffer(vertexCount, mask, streams);
    allocator.release(buffer);
    return buffer;
}

// 0x5abc9c _ZN6glitch5video20releaseProcessBufferINS0_6detail19SNewBufferAllocatorINS0_12IVideoDriverEEEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjRKNS7_INS0_14CVertexStreamsEEET_
// The new-buffer allocator has no release of its own: the buffer's storage is reset to nothing (size 0, no data, owned).
template <>
boost::intrusive_ptr<IBuffer> releaseProcessBuffer<detail::SNewBufferAllocator<IVideoDriver>>(
    uint32_t vertexCount, uint32_t mask, const boost::intrusive_ptr<CVertexStreams>& streams,
    detail::SNewBufferAllocator<IVideoDriver> /*allocator*/) {
    if (mask == 0) return boost::intrusive_ptr<IBuffer>();
    boost::intrusive_ptr<IBuffer> buffer = detail::clearBuffer(vertexCount, mask, streams);
    buffer->reset(0, nullptr, true);
    return buffer;
}

}  // namespace glitch::video
