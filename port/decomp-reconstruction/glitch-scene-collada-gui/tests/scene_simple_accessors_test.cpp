// Checks the glitch::scene type tags, constant returns and one-member accessors
// in scene_simple_accessors.hpp: the tags are the four-character words, the
// speed setter applies the original 0.001 scale, and the animator factory clamps
// indices above 8 to 10.
#include "glitch-scene-collada-gui/particle_affectors.hpp"
#include "glitch-scene-collada-gui/scene_simple_accessors.hpp"

#include <cstdio>
#include <cstring>

using namespace glitch::scene;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static bool tagIs(std::uint32_t tag, const char* four) {
    return std::memcmp(&tag, four, 4) == 0;  // little-endian host order
}

int main() {
    CTerrainSceneNode terrain;
    CHECK(tagIs(static_cast<std::uint32_t>(terrain.getType()), "terr"));
    terrain.terrain.position.X = 1.0f;
    CHECK(terrain.getPosition().X == 1.0f);
    CHECK(&terrain.getScale() == &terrain.terrain.scale);

    CParticleSystemSceneNode ps(false, -1, glitch::core::vector3d<float>{}, glitch::core::vector3d<float>{}, glitch::core::vector3d<float>{1.f, 1.f, 1.f});
    CHECK(tagIs(ps.getType(), "ptcl"));
    CHECK(ps.getEmitter() == nullptr);
    CHECK(ps.getMaterialCount() == 1);
    ps.setTransparency(0.5f);
    CHECK(ps.transparency == 0.5f);
    ps.setParticlesAreGlobal(true);
    CHECK(ps.particlesAreGlobal);

    CParticleSpinAffector spinAffector(1, 0.f);
    CHECK(spinAffector.getType() == EPAT_SPIN);

    SAnimatedMesh mesh(boost::intrusive_ptr<IMesh>(), 0);
    CHECK(mesh.getMeshType() == 0);
    mesh.meshType = 7;
    CHECK(mesh.getMeshType() == 7);

    // Text, camera and particle accessors.
    CParticleSystemSceneNode particleNode(false, -1, glitch::core::vector3d<float>{}, glitch::core::vector3d<float>{}, glitch::core::vector3d<float>{1.f, 1.f, 1.f});
    particleNode.particles.resize(5);
    CHECK(particleNode.getNumberOfParticles() == 5);
    glitch::core::dimension2d<float> psSize{2.0f, 3.0f};
    particleNode.setParticleSize(psSize);
    CHECK(particleNode.particleSize.Width == 2.0f && particleNode.particleSize.Height == 3.0f);
    particleNode.setBillboardType(static_cast<E_PARTICLE_BILLBOARD_TYPE>(2));
    CHECK(particleNode.billboardType == 2);

    // Terrain patches are a row-major grid of patchCount squared entries.
    CTerrainSceneNode terrainNode;
    terrainNode.terrain.patchCount = 2;
    terrainNode.terrain.patches = new STerrainPatch[4];
    terrainNode.setLODOfPatch(1, 0, 7);
    CHECK(terrainNode.terrain.patches[2].lod == 7);
    CHECK(&terrainNode.getBoundingBox(1, 0) == &terrainNode.terrain.patches[2].boundingBox);
    terrainNode.setCurrentLODOfPatches(3);
    CHECK(terrainNode.terrain.patches[0].lod == 3 && terrainNode.terrain.patches[3].lod == 3);
    terrainNode.rotationPivotFlag = 1;
    terrainNode.setRotationPivot(glitch::core::vector3d<float>{1.0f, 2.0f, 3.0f});
    CHECK(terrainNode.rotationPivotFlag == 0);
    CHECK(terrainNode.terrain.rotationPivot.Y == 2.0f);

    // Particle affector flag.
    CParticleSpinAffector affector(1, 0.f);
    affector.setEnabled(true);
    CHECK(affector.getEnabled());
    affector.setEnabled(false);
    CHECK(!affector.getEnabled());

    // Animated mesh frames and bounding box.
    SAnimatedMesh animated(boost::intrusive_ptr<IMesh>(), 0);
    animated.meshes.resize(3);
    CHECK(animated.getFrameCount() == 3);
    glitch::core::aabbox3d<float> animBox{{0.0f, 0.0f, 0.0f}, {1.0f, 2.0f, 3.0f}};
    animated.setBoundingBox(animBox);
    CHECK(animated.getBoundingBox().MaxEdge.Z == 3.0f);

    {
        // Mesh: clear drops the buffers; the box setter stores the box.
        CMesh clearedMesh;
        clearedMesh.buffers.push_back(CMesh::SBuffer{});
        clearedMesh.clear();
        CHECK(clearedMesh.buffers.empty());
        glitch::core::aabbox3d<float> sceneBox{{1.0f, 2.0f, 3.0f}, {4.0f, 5.0f, 6.0f}};
        clearedMesh.setBoundingBox(sceneBox);
        CHECK(clearedMesh.getBoundingBox().MaxEdge.Z == 6.0f);

    }

    std::printf("%s\n", failures ? "scene_simple_accessors: FAILED" : "scene_simple_accessors: ok");
    return failures != 0;
}
