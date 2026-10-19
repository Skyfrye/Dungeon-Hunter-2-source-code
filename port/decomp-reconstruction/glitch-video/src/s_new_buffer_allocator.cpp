#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-video/s_new_buffer_allocator.hpp"

namespace glitch::video::detail {

// 0x5aa454 _ZNK6glitch5video6detail19SNewBufferAllocatorINS0_12IVideoDriverEE8allocateEj
template <typename Driver>
boost::intrusive_ptr<IBuffer> SNewBufferAllocator<Driver>::allocate(uint32_t size) const {
    IBuffer* buffer = m_buffer.get();
    uint8_t* data = new uint8_t[size];
    buffer->reset(size, data, true);

    // The original bumps the reference count of the buffer it returns, when there is one; the pointer built from the raw
    // address takes that use over.
    IBuffer* result = m_buffer.get();
    if (result != nullptr) {
        ++result->referenceCounter;
    }
    return boost::intrusive_ptr<IBuffer>(result);
}

// The only instance the original uses.
template struct SNewBufferAllocator<IVideoDriver>;

// 0x5abaa8 _ZNK6glitch5video6detail31SProcessBufferHeapBufferAllocator7releaseERKN5boost13intrusive_ptrINS0_7IBufferEEE
void SProcessBufferHeapBufferAllocator::release(const boost::intrusive_ptr<IBuffer>& buffer) const {
    boost::intrusive_ptr<IBuffer> held(buffer);
    uint8_t* block = buffer->map(static_cast<E_BUFFER_MAP_ACCESS>(4));
    glitch::core::releaseProcessBuffer(block);
    if (block != nullptr) held->unmap();
    held.reset();
    buffer->reset(0, nullptr, true);
}

}  // namespace glitch::video::detail
