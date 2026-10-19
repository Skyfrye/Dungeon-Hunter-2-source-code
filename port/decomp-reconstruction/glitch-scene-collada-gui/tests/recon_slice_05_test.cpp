// Slice 05 test: checks the reconstructed billboard constructor and billboardSetSize. The scene manager, batch node,
// camera, empty node, mesh node and selector stubs this slice used to carry were removed with the canonical classes.
#include <cstdio>

#include "glitch-scene-collada-gui/recon/slice_05.hpp"
#include "glitch-video/null_driver.hpp"

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::fprintf(stderr, "FAIL: %s\n", what);
        ++failures;
    }
}

}  // namespace

int main() {
    using glitch::core::dimension2d;
    // The constructor attaches one vertex stream table over the node's four vertices, through the driver's
    // createBuffer (IVideoDriver vtable +0x78), so it needs a driver. CNullDriver stands in for the video driver,
    // as it does in the glitch-video tests; the buffer it hands back wraps the node's own vertex array.
    glitch::video::CNullDriver driver(static_cast<glitch::IDevice*>(nullptr));
    const glitch::video::SColor top{0xFF112233u};
    const glitch::video::SColor bottom{0xFF445566u};
    glitch::scene::CBillboardSceneNode node(&driver, 0, glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f},
                                            dimension2d<float>{1.0f, 1.0f}, top, bottom);

    // The constructor: the stream table (allocate(1, 0x60000) then setupStreams with the buffer), its count word
    // and the four corners' colours (0 and 2 the second colour, 1 and 3 the first) and texture coordinates.
    check(node.vertexStreams.get() != nullptr, "the vertex stream table is attached");
    check(node.vertexStreams->m_field08 == 4, "the stream table's count word is 4");
    check(node.vertices[0].color.color == bottom.color && node.vertices[2].color.color == bottom.color,
          "the second colour is on corners 0 and 2");
    check(node.vertices[1].color.color == top.color && node.vertices[3].color.color == top.color,
          "the first colour is on corners 1 and 3");
    check(node.vertices[0].texCoords.Width == 1.0f && node.vertices[0].texCoords.Height == 1.0f, "corner 0 texture (1, 1)");
    check(node.vertices[1].texCoords.Width == 1.0f && node.vertices[1].texCoords.Height == 0.0f, "corner 1 texture (1, 0)");
    check(node.vertices[2].texCoords.Width == 0.0f && node.vertices[2].texCoords.Height == 1.0f, "corner 2 texture (0, 1)");
    check(node.vertices[3].texCoords.Width == 0.0f && node.vertices[3].texCoords.Height == 0.0f, "corner 3 texture (0, 0)");

    // Zero size: the stored size becomes 1x1 and the half extent is 0.
    glitch::scene::recon_05::billboardSetSize(node, dimension2d<float>{0.0f, 0.0f});
    check(node.size.Width == 1.0f, "zero width becomes 1");
    check(node.size.Height == 1.0f, "zero height becomes 1");
    check(node.boundingBox.MinEdge.X == 0.0f && node.boundingBox.MaxEdge.Z == 0.0f, "zero extent");

    // (6, 12): half extent is (6 + 12) / 6 = 3, min is -3 and max is 3 on each axis.
    glitch::scene::recon_05::billboardSetSize(node, dimension2d<float>{6.0f, 12.0f});
    check(node.size.Width == 6.0f && node.size.Height == 12.0f, "size stored");
    check(node.boundingBox.MinEdge.X == -3.0f && node.boundingBox.MinEdge.Y == -3.0f &&
              node.boundingBox.MinEdge.Z == -3.0f,
          "min edge is -3");
    check(node.boundingBox.MaxEdge.X == 3.0f && node.boundingBox.MaxEdge.Y == 3.0f &&
              node.boundingBox.MaxEdge.Z == 3.0f,
          "max edge is 3");

    if (failures != 0) {
        std::fprintf(stderr, "%d failure(s)\n", failures);
        return 1;
    }
    std::puts("recon_slice_05_test: ok");
    return 0;
}
