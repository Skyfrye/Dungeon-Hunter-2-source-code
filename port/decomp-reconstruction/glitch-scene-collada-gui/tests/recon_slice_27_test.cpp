// Layout check for recon slice 27, rebased on the canonical glitch::scene::CMeshBuffer (scene/CMeshBuffer.hpp). The CMeshBuffer
// constructor rows (0x6d11d4, 0x6d5ed4) are listings of the canonical constructor 0x6b88a8, so the test pins the members they
// write and their defaults. (The byte offsets of the original are comments in the header: the host layout is wider, so they
// cannot be asserted with offsetof.)
#include "glitch-scene-collada-gui/recon/slice_27.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"

int main() {
    glitch::scene::CMeshBuffer buffer;
    if (buffer.vertexStreams) return 1;                           // +0x14
    if (buffer.primitiveStream.m_indexBuffer) return 1;           // +0x18
    if (buffer.primitiveStream.m_vertexStart != 0) return 1;      // +0x24
    if (buffer.primitiveStream.m_vertexEnd != 0) return 1;        // +0x28
    if (buffer.primitiveStream.m_indexType != 0xff) return 1;     // +0x2c (no index buffer)
    if (buffer.owner != nullptr) return 1;                        // +0x30
    if (buffer.flag_34 != 1) return 1;                            // +0x34 (the constructors set it to 1)
    if (buffer.referenceCounter != 0) return 1;                   // the constructors store a count of 0
    return 0;
}
