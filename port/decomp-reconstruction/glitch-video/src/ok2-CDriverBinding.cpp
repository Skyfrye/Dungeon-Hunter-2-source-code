// Owner K2: the destructor of CDriverBinding. onDelete (0x6dc684) is empty and stays inline in the header.
#include "glitch-video/driver_binding.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

// 0x6dc71c _ZN6glitch5video14CDriverBindingD1Ev
CDriverBinding::~CDriverBinding() {
    if (m_processBuffer.get() != nullptr) {  // +0x04
        const boost::intrusive_ptr<CVertexStreams> noStreams;
        m_driver->releaseProcessBuffer(1, noStreams, 0, 0, this);  // driver +0x20 -> vtable +0x1f4
    }
}

}  // namespace glitch::video
