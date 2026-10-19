// CDriverBinding::getProcessBuffer<IVideoDriver> (0x5abfa8).
#include "glitch-video/driver_binding.hpp"

#include "glitch-video/s_new_buffer_allocator.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

// 0x5abfa8 _ZN6glitch5video14CDriverBinding16getProcessBufferINS0_12IVideoDriverEEENS0_26E_DRIVER_ALLOCATION_RESULTEPT_jjjRKN5boost13intrusive_ptrINS0_14CVertexStreamsEEEb
// See the declaration for the contract. The "has storage" test of the original reads the buffer's data pointer (+0x08).
template <typename Driver>
E_DRIVER_ALLOCATION_RESULT CDriverBinding::getProcessBuffer(Driver* driver, uint32_t first, uint32_t last, uint32_t mask,
                                                            const boost::intrusive_ptr<CVertexStreams>& streams, bool create) {
    const CVertexStreams* const maskWord = reinterpret_cast<const CVertexStreams*>(static_cast<uintptr_t>(mask));
    bool sameRequest = first == m_lastVertexCount && last == m_lastIndexCount && maskWord == m_lastStreams;
    if (m_processBuffer.get() != nullptr && m_processBuffer->m_data != nullptr && sameRequest) {
        detail::SReuseBufferAllocator allocator;
        allocator.m_buffer = m_processBuffer;
        allocateProcessBuffer<detail::SReuseBufferAllocator>(first, last, mask, streams, allocator, m_lastAttributes);
        return 4;
    }
    E_DRIVER_ALLOCATION_RESULT result = 4;
    if (create) {
        detail::SNewBufferAllocator<Driver> allocator(driver, m_processBuffer);
        m_processBuffer = allocateProcessBuffer<detail::SNewBufferAllocator<Driver>>(first, last, mask, streams, allocator, m_lastAttributes);
        result = (m_processBuffer.get() != nullptr && m_processBuffer->m_data != nullptr) ? 4 : 8;
        m_lastStreams = maskWord;
        m_lastVertexCount = first;
        m_lastIndexCount = last;
        sameRequest = true;
    }
    if (m_processBuffer.get() == nullptr || m_processBuffer->m_data == nullptr) return 16;
    if (!sameRequest) return 9;
    return result;
}

template E_DRIVER_ALLOCATION_RESULT CDriverBinding::getProcessBuffer<IVideoDriver>(
    IVideoDriver*, uint32_t, uint32_t, uint32_t, const boost::intrusive_ptr<CVertexStreams>&, bool);

}  // namespace glitch::video
