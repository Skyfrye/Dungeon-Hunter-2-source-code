// Checks for the wave-7 accessors: the point shape,
// the mesh box defaults, the software skin attach hook and the mesh-node no-op
// setter.
#include "glitch-scene-collada-gui/collada_misc.hpp"
#include "glitch-scene-collada-gui/irr_alloc.hpp"
#include "glitch-scene-collada-gui/ps_types.hpp"
#include "glitch-scene-collada-gui/scene_nodes.hpp"
#include "glitch-scene-collada-gui/scene_simple_accessors.hpp"

#include <cstdint>
#include <cstdio>
#include <utility>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // PDPoint: the copy constructor, the exact-match test and the generator.
    {
        glitch::core::vector3d<float> p{1.0f, 2.0f, 3.0f};
        glitch::ps::PDPoint shape(p);
        CHECK(shape.point.X == 1.0f && shape.point.Y == 2.0f && shape.point.Z == 3.0f);
        CHECK(shape.within(p));
        glitch::core::vector3d<float> other{1.0f, 2.0f, 4.0f};
        CHECK(!shape.within(other));
        CHECK(shape.getType() == 3u);
    }

    // CMesh: the default box is (-1,-1,-1)-(1,1,1) and the buffer list is empty.
    {
        glitch::scene::CMesh mesh;
        CHECK(mesh.getBoundingBox().MinEdge.X == -1.0f);
        CHECK(mesh.getBoundingBox().MaxEdge.Z == 1.0f);
        CHECK(mesh.buffers.empty());
    }

    // Software skin technique: attach stores the node at +0x14.
    {
        glitch::collada::SSkin skin;
        glitch::collada::SSkinCache cache;
        glitch::collada::detail::CColladaSoftwareSkinTechnique technique(skin, cache, true);
        int marker = 0;
        auto* node = reinterpret_cast<glitch::scene::ISceneNode*>(&marker);
        technique.attach(node);
        CHECK(technique.attachedNode == node);
    }

    // CBatchSceneNode::setMesh is empty: calling it leaves the node's type tag unchanged.
    {
        auto* batch = new glitch::scene::CBatchSceneNode(1);
        batch->setMesh(boost::intrusive_ptr<glitch::scene::IMesh>());
        CHECK(batch->getType() == glitch::scene::ESNT_BATCH);  // 'basn' = 0x6e736162
        CHECK(batch->mesh.get() != nullptr);                   // the empty setMesh keeps the mesh
        batch->drop();
    }

    // Pair equality compares the index only.
    {
        glitch::core::aabbox3d<float> a{}, b{};
        b.MaxEdge.X = 5.0f;
        std::pair<std::uint32_t, glitch::core::aabbox3d<float>> left{7u, a};
        std::pair<std::uint32_t, glitch::core::aabbox3d<float>> right{7u, b};
        CHECK(glitch::operator==(left, right));
        right.first = 8u;
        CHECK(!glitch::operator==(left, right));
    }

    // irr_malloc and irr_free round-trip a block.
    {
        void* block = irr_malloc(64);
        CHECK(block != nullptr);
        irr_free(block);
    }

    std::printf("%s\n", failures ? "wave7_accessors: FAILED" : "wave7_accessors: ok");
    return failures != 0;
}
