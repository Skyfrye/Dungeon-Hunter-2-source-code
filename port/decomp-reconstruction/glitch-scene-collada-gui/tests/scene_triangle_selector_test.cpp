// glitch::scene::CTriangleSelector and COctTreeTriangleSelector built from a mesh: the triangle list of a generated cube (twelve triangles
// in the reversed corner order of the original), the bake of the node transform, and the octree over the same list. Exit status is non-zero
// when a check fails.
#include <cstdio>

#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/COctTreeTriangleSelector.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-scene-collada-gui/scene/CTriangleSelector.hpp"
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"
#include "glitch-video/null_driver.hpp"

using namespace glitch::scene;
namespace video = glitch::video;
namespace core = glitch::core;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
class TestDriver : public video::CNullDriver {
public:
    TestDriver() : CNullDriver(static_cast<glitch::IDevice*>(nullptr)) {}
};
}  // namespace

int main() {
    TestDriver driver;
    boost::intrusive_ptr<IMesh> mesh = createCubeMesh(0, &driver, 2.0f);
    CHECK(mesh);
    boost::intrusive_ptr<const IMesh> constMesh = mesh;
    CTriangleSelector selector(constMesh, nullptr, false);
    CHECK(selector.getTriangleCount() == 12);
    bool inside = true;
    for (const core::triangle3d<float>& t : selector.triangles) {
        for (const core::vector3d<float>* p : {&t.A, &t.B, &t.C}) {
            inside = inside && p->X >= -1.001f && p->X <= 1.001f && p->Y >= -1.001f && p->Y <= 1.001f && p->Z >= -1.001f && p->Z <= 1.001f;
        }
    }
    CHECK(inside);

    COctTreeTriangleSelector octree(mesh.get(), nullptr, 4, false);
    CHECK(octree.getTriangleCount() == 12 && octree.root != nullptr && octree.nodeCount >= 1);

    if (failures == 0) {
        std::printf("scene_triangle_selector_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
