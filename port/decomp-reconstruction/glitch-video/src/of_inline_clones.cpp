// Out-of-line forms of two glitch::video functions that exist in the binary only as compiler clones (".clone.N" symbols
// with a constant argument folded in): IVideoDriver::draw with three arguments (0x57f308, 0x5aaebc, 0x7d4ebc) and the free
// setColorMask(material, r, g, b, a) (0x7d4f34, the clone passes a = true). Callers in the vendored gameswf renderer and in
// game-world call the generic spelling, which the binary never emits. The bodies below are the clones' bodies.
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"  // CMeshBuffer is complete for the empty intrusive_ptr
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch {
namespace video {

// 0x57f308 / 0x5aaebc / 0x7d4ebc IVideoDriver::draw(streams, primitives, binding) [clone]: the vtable slot +0x58 of the
// same object, called with the same arguments and no mesh buffer.
void IVideoDriver::draw(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                        CDriverBinding** binding) {
    draw(streams, primitives, binding, boost::intrusive_ptr<const scene::CMeshBuffer>());
}

// 0x7d4f34 setColorMask(material, r, g, b, a) [clone]: the colour mask goes to the video driver of the material's renderer
// (material +0x04, renderer +0x04), vtable slot +0xd4. The clone looks the technique up first (getTechnique) and ignores the
// result.
void setColorMask(const boost::intrusive_ptr<CMaterial>& material, bool r, bool g, bool b, bool a) {
    material->m_renderer->m_driver->setColorMask(r, g, b, a);
}

}  // namespace video
}  // namespace glitch
