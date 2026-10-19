// glitch::video::CDriverBinding: the per-draw-source slot a driver keeps for process buffers (IVideoDriver::ensureBinding
// creates one through createBinding, vtable +0x1f8, and getProcessBuffer reuses its buffer when the request repeats).
// Canonical definition (engine unification wave u1-video); the forward declarations elsewhere are replaced by this
// header.
//
// Layout of the original object (32-bit, 0x24 bytes; IVideoDriver::createBinding 0x5aa2e0, getProcessBuffer<IVideoDriver>
// 0x5abfa8):
//   +0x00  vptr (vtable 0x98ae50: ~CDriverBinding D1 0x6dc71c, D0 0x6dc7a4, and an onDelete override 0x6dc684 that is empty)
//   +0x04  intrusive_ptr<IBuffer> process buffer (zero after construction)
//   +0x08  last request: first vertex      +0x0c  last request: last vertex (end of the range)
//   +0x10  last request: the stream mask   +0x14  uint16, the vertex stride the last allocation produced
//   +0x18  zero after construction         +0x1c  zero after construction
//   +0x20  IVideoDriver*
// The reference count is not the first member: CDriverBinding is IReferenceCounted-shaped (vptr, onDelete) but keeps
// the process buffer at +0x04, so it does NOT derive from glitch::IReferenceCounted; a binding is owned by the
// stream table that created it and destroyed through its virtual destructor.
#pragma once

#include <cstdint>

#include "glitch-video/buffer.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

class CDriverBinding {
public:
    explicit CDriverBinding(IVideoDriver* driver) : m_driver(driver) {}
    // 0x6dc71c (D1) / 0x6dc7c0 (D2) / 0x6dc7a4 (D0): a binding that still holds a process buffer gives it back to the driver
    // (releaseProcessBuffer, driver vtable +0x1f4, type 1, no streams, no vertices) before the buffer handle goes.
    virtual ~CDriverBinding();  // src/ok2-CDriverBinding.cpp
    virtual void onDelete() {}            // +0x08, 0x6dc684 (empty)

    // 0x5abfa8 getProcessBuffer<IVideoDriver>(IVideoDriver*, first, last, mask, intrusive_ptr<CVertexStreams> const&, bool create):
    // when the binding holds a buffer with storage and the request (first, last, mask) repeats, the streams are pointed at that
    // buffer again (allocateProcessBuffer<SReuseBufferAllocator>) and 4 is returned; otherwise, with `create`, a new buffer is
    // made (allocateProcessBuffer<SNewBufferAllocator<IVideoDriver>>, which keeps the old buffer object when there is one) and
    // the request is remembered: 4 when it has storage, 8 when it has not. Without `create` the answer is 4 and the request is not
    // remembered. Then 16 when there is still no buffer with storage, 9 when the request is not the remembered one, else the answer.
    // Emitted under the original symbol (the return type is part of a template's mangled name).
    template <typename Driver>
    E_DRIVER_ALLOCATION_RESULT getProcessBuffer(Driver* driver, uint32_t first, uint32_t last, uint32_t mask,
                                                const boost::intrusive_ptr<CVertexStreams>& streams, bool create)
        asm("_ZN6glitch5video14CDriverBinding16getProcessBufferINS0_12IVideoDriverEEENS0_26E_DRIVER_ALLOCATION_RESULTEPT_jjjRKN5boost13intrusive_ptrINS0_14CVertexStreamsEEEb");

    boost::intrusive_ptr<IBuffer> m_processBuffer;  // +0x04
    // The last request, as getProcessBuffer (0x5abfa8) reads it: +0x08 the first vertex, +0x0c the end of the range, +0x10 the stream
    // mask (a 32-bit word the earlier header typed as a CVertexStreams pointer; it is kept as that pointer type and the mask is
    // stored in it as an integer), +0x14 the vertex stride the last allocation produced. The names are the earlier ones.
    uint32_t m_lastVertexCount = 0;                  // +0x08
    uint32_t m_lastIndexCount = 0;                   // +0x0c
    const CVertexStreams* m_lastStreams = nullptr;   // +0x10
    uint16_t m_lastAttributes = 0;                   // +0x14
    const void* unk_18 = nullptr;                    // +0x18 (host pointer: the CBatchMesh that owns the buffer as a segment source, set by CBatchMesh::sort)
    uint32_t unk_1c = 0;                             // +0x1c
    IVideoDriver* m_driver = nullptr;                // +0x20
};

}  // namespace glitch::video
