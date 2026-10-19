// Checks for glitch::scene::CMeshCache (scene/CMeshCache.hpp): adding, lookup by name / index / mesh, renaming with re-sorting, removal,
// clearing the unused meshes and the generator front ends that return the cached mesh or nothing. Exit status is non-zero when a check
// fails.
#include <cstdio>
#include <cstring>

#include "glitch-scene-collada-gui/scene/CMeshCache.hpp"
#include "glitch-scene-collada-gui/scene/SAnimatedMesh.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/null_driver.hpp"

using namespace glitch::scene;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    glitch::video::CNullDriver driver(static_cast<glitch::IDevice*>(nullptr));
    CMeshCache* cache = new CMeshCache(&driver);
    CHECK(cache->referenceCounter == 1 && cache->getMeshCount() == 0);
    CHECK(cache->getMeshFilename(0u) == nullptr && cache->getMeshByIndex(0).get() == nullptr);

    boost::intrusive_ptr<IAnimatedMesh> meshA(new SAnimatedMesh(boost::intrusive_ptr<IMesh>(), 0), true);  // SAnimatedMesh starts at count 0
    boost::intrusive_ptr<IAnimatedMesh> meshB(new SAnimatedMesh(boost::intrusive_ptr<IMesh>(), 0), true);  // SAnimatedMesh starts at count 0
    boost::intrusive_ptr<IAnimatedMesh> meshC(new SAnimatedMesh(boost::intrusive_ptr<IMesh>(), 0), true);  // SAnimatedMesh starts at count 0
    cache->addMesh("B.X", meshB);  // the names are lower-cased on the way in
    cache->addMesh("a.x", meshA);
    CHECK(cache->getMeshCount() == 2 && meshA->referenceCounter == 2);
    CHECK(std::strcmp(cache->getMeshFilename(0u), "b.x") == 0);  // addMesh does not sort
    CHECK(cache->getMeshIndex(boost::intrusive_ptr<const IAnimatedMesh>(meshA)) == 1);
    CHECK(cache->getMeshIndex(boost::intrusive_ptr<const IAnimatedMesh>(meshC)) == -1);
    CHECK(std::strcmp(cache->getMeshFilename(boost::intrusive_ptr<const IAnimatedMesh>(meshA)), "a.x") == 0);
    CHECK(cache->getMeshFilename(boost::intrusive_ptr<const IAnimatedMesh>(meshC)) == nullptr);
    CHECK(cache->getMeshByIndex(1).get() == meshA.get() && cache->getMeshByIndex(2).get() == nullptr);

    // setMeshFilename re-sorts, which makes the binary search of getMeshByFilename valid
    CHECK(cache->setMeshFilename(0u, "z.x"));
    CHECK(std::strcmp(cache->getMeshFilename(0u), "a.x") == 0 && std::strcmp(cache->getMeshFilename(1u), "z.x") == 0);
    CHECK(!cache->setMeshFilename(5u, "q.x"));
    CHECK(cache->getMeshByFilename("A.X").get() == meshA.get());  // the lookup lower-cases too
    CHECK(cache->getMeshByFilename("z.x").get() == meshB.get());
    CHECK(cache->getMeshByFilename("m.x").get() == nullptr);
    CHECK(cache->isMeshLoaded("a.x") && !cache->isMeshLoaded("nope.x"));
    CHECK(cache->setMeshFilename(boost::intrusive_ptr<const IAnimatedMesh>(meshB), "c.x"));
    CHECK(cache->getMeshIndex(boost::intrusive_ptr<const IAnimatedMesh>(meshB)) == 1);
    CHECK(!cache->setMeshFilename(boost::intrusive_ptr<const IAnimatedMesh>(meshC), "d.x"));

    // the generator front ends: a cached name returns the cached mesh, a null name nothing, a failing generator nothing
    CHECK(cache->addSphereMesh(0, "a.x", 1.0f, 8, 8).get() == meshA.get());
    CHECK(cache->addSphereMesh(0, nullptr, 1.0f, 8, 8).get() == nullptr);
    {
        // The sphere generator is real: it builds a mesh over the driver and the cache keeps it.
        boost::intrusive_ptr<IAnimatedMesh> sphere = cache->addSphereMesh(0x3u, "sphere", 1.0f, 8, 8);
        CHECK(sphere.get() != nullptr && cache->getMeshCount() == 3);
        CHECK(cache->addSphereMesh(0x3u, "sphere", 1.0f, 8, 8).get() == sphere.get());  // a cached name returns the cached mesh
        cache->removeMesh(boost::intrusive_ptr<const IAnimatedMesh>(sphere));
        CHECK(cache->getMeshCount() == 2);
    }
    CHECK(cache->addTerrainMesh("terrain", boost::intrusive_ptr<glitch::video::CImage>(),
                                boost::intrusive_ptr<glitch::video::CImage>(), glitch::core::dimension2d<float>{1.0f, 1.0f}, 1.0f,
                                glitch::core::dimension2d<std::int32_t>{8, 8})
              .get() == nullptr);

    // removal and clearing
    cache->addMesh("c2.x", meshC);
    CHECK(cache->getMeshCount() == 3 && meshC->referenceCounter == 2);
    cache->clearUnusedMeshes();  // meshC is still held by the test, meshA and meshB too: nothing goes
    CHECK(cache->getMeshCount() == 3);
    meshC.reset();
    cache->clearUnusedMeshes();  // now nobody else holds the third mesh
    CHECK(cache->getMeshCount() == 2);
    cache->removeMesh(boost::intrusive_ptr<const IAnimatedMesh>(meshA));
    CHECK(cache->getMeshCount() == 1 && meshA->referenceCounter == 1);
    cache->removeMesh(boost::intrusive_ptr<const IAnimatedMesh>(meshA));  // absent: nothing happens
    CHECK(cache->getMeshCount() == 1);
    cache->clear();
    CHECK(cache->getMeshCount() == 0 && meshB->referenceCounter == 1);

    cache->drop();
    std::printf("%s\n", failures ? "scene_mesh_cache: FAILED" : "scene_mesh_cache: ok");
    return failures != 0;
}
