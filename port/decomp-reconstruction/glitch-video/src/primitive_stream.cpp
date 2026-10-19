#include "glitch-video/primitive_stream.hpp"

namespace glitch::video {

namespace {

// Signed (n - k) clamped at zero, the pattern the original uses for strips and loops.
uint32_t countMinus(uint32_t count, int32_t k) {
    int32_t value = static_cast<int32_t>(count) - k;
    return value < 0 ? 0u : static_cast<uint32_t>(value);
}

}  // namespace

// 0x5a0300 _ZNK6glitch5video16CPrimitiveStream17getPrimitiveCountEv
uint32_t CPrimitiveStream::getPrimitiveCount() const {
    switch (m_primitiveType) {
        case 1:  // line strip
            return countMinus(m_count, 1);
        case 3:  // lines
            return m_count >> 1;
        case 4:  // triangle strip
        case 5:  // triangle fan
            return countMinus(m_count, 2);
        case 6:  // triangles
            return m_count / 3;
        case 7:  // quad strip: (n - 2) / 2 with signed division, clamped at zero
            return countMinus(m_count, 2) / 2;
        case 8:  // quads
            return m_count >> 2;
        case 0:  // points: the count itself
        case 2:  // line loop: the count itself
            return m_count;
        default:
            return 0;
    }
}

}  // namespace glitch::video
