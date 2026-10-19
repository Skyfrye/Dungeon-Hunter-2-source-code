// glitch::collada::CModularSkinnedMesh (canonical class, collada/CModularSkinnedMesh.hpp): the category and module tables, built over a
// hand-made SInstanceModularSkin.
#include "glitch-scene-collada-gui/collada/CModularSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"

#include <cstdio>
#include <cstring>

using namespace glitch::collada;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    SInstanceController head, torso, sword;
    head.name = "head";
    torso.name = "torso";
    sword.name = "sword";
    SModularModule bodyModules[2];
    bodyModules[0].controller = &head;
    bodyModules[1].controller = &torso;
    SModularModule weaponModules[1];
    weaponModules[0].controller = &sword;
    SModularCategory categories[2];
    categories[0].name = "body";
    categories[0].defaultModule = "none";  // no module of that name: the slot keeps -1 and no controller is built
    categories[0].moduleCount = 2;
    categories[0].modules = bodyModules;
    categories[1].name = "weapon";
    categories[1].defaultModule = "none";
    categories[1].moduleCount = 1;
    categories[1].modules = weaponModules;
    SInstanceModularSkin instance;
    instance.categoryCount = 2;
    instance.categories = categories;

    CColladaDatabase database;
    CRootSceneNode root(database);
    CModularSkinnedMesh mesh(database, &instance, &root, 0, false);

    CHECK(mesh.getType() == 3);
    CHECK(!mesh.clone());
    CHECK(mesh.getCategoryCount() == 2);
    CHECK(mesh.getCategoryModuleCount(0) == 2);
    CHECK(mesh.getCategoryModuleCount(1) == 1);
    CHECK(mesh.getCurrentModuleId(0) == -1);
    CHECK(mesh.getMeshBufferCount() == 0);

    // Names through the module records.
    CHECK(std::strcmp(mesh.getCategoryName(1), "weapon") == 0);
    CHECK(mesh.getCategoryName(2) == nullptr);
    CHECK(std::strcmp(mesh.getModuleName(0, 0), "head") == 0);
    CHECK(mesh.getModuleName(1, 1) == nullptr);
    CHECK(mesh.getCurrentModuleName(0) == nullptr);
    CHECK(mesh.getCategoryId("weapon") == 1);
    CHECK(mesh.getCategoryId("missing") == -1);
    CHECK(mesh.getModuleId("torso") == 1);
    CHECK(mesh.getModuleId("sword") == 0);
    CHECK(mesh.getModuleId("missing") == -1);

    // The skinning flag of ISkinnedMesh.
    CHECK(mesh.skinningEnabled);
    CHECK(mesh.getBoundingBox().MinEdge.X == -1.0f);

    std::printf("%s\n", failures ? "modular_skinned_mesh: FAILED" : "modular_skinned_mesh: ok");
    return failures != 0;
}
