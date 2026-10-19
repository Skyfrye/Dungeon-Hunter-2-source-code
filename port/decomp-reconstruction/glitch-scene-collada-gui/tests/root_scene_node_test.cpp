// glitch::collada::CRootSceneNode (canonical class, collada/CRootSceneNode.hpp): construction, the node accessors and the lists.
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"

#include <cstdio>

using namespace glitch::collada;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CColladaDatabase database;
    CRootSceneNode root(database);

    // 0x65b734: no record, empty lists, animation mode 1, automatic culling off.
    CHECK(root.getUID() == nullptr);
    CHECK(root.getMaterialCount() == 0);
    CHECK(!root.getMaterial(0));
    CHECK(root.getType() == glitch::scene::ESNT_DAE_ROOT);
    CHECK(root.animationMode == 1);
    CHECK(!root.skinsAttached);
    CHECK(root.automaticCulling == 0);
    CHECK(root.cameras.empty() && root.lights.empty() && root.morphingMeshes.empty() && root.particleSystems.empty());

    // The add functions append to their lists in order.
    int a = 1, b = 2;
    auto* cameraA = reinterpret_cast<CCameraSceneNode*>(&a);
    auto* cameraB = reinterpret_cast<CCameraSceneNode*>(&b);
    root.addCamera(cameraA);
    root.addCamera(cameraB);
    CHECK(root.cameras.size() == 2);
    CHECK(*root.cameras.begin() == cameraA);
    root.addLight(reinterpret_cast<CLightSceneNode*>(&a));
    CHECK(root.lights.size() == 1);
    auto* morph = reinterpret_cast<CMorphingMesh*>(&b);
    root.addMorphingMesh(morph);
    CHECK(root.morphingMeshes.size() == 1);
    root.addParticleSystem(reinterpret_cast<IParticleSystemSceneNode*>(&a));
    CHECK(root.particleSystems.size() == 1);

    // removeMorphingMesh unlinks the entry; a mesh that is not listed changes nothing.
    root.removeMorphingMesh(reinterpret_cast<CMorphingMesh*>(&a));
    CHECK(root.morphingMeshes.size() == 1);
    root.removeMorphingMesh(morph);
    CHECK(root.morphingMeshes.empty());

    // removeMaterial has an empty body.
    root.removeMaterial(boost::intrusive_ptr<glitch::video::CMaterial>());
    CHECK(root.getMaterialCount() == 0);

    // onAnimate remembers the time in every mode (mode 2 only updates the absolute position).
    root.animationMode = 2;
    root.onAnimate(77);
    CHECK(root.lastTime == 77);
    CHECK(root.onRegisterSceneNode() == 1);

    std::printf("%s\n", failures ? "root_scene_node: FAILED" : "root_scene_node: ok");
    return failures != 0;
}
