// Test for batch g1-game-world-AssetManager-cbdbfa-0.
//
// Covers the logic that runs without the engine: the singleton, the scene-node drop by joined name, the flags walks of
// clearSceneNode and clearTexture, the reference-count branch of dropTexture (count above one), the asset walk with
// textures before scene nodes, and the null-scene-node branches. Entries here hold no scene node and plain
// glitch::IReferenceCounted objects as textures, so no device or scene manager is reached. The device-dependent
// bodies (ToggleWireFrame, loadSceneNode, preloadSceneNode, the load path of loadTexture) are PARTIAL and not tested.

#include <cstdio>
#include <string>

#include "dh2/AssetManager.hpp"
#include "glitch-core-io/core/reference_counted.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// A plain reference-counted object with the given count. It is concrete, so it can stand in for a texture.
glitch::IReferenceCounted* MakeCounted(int count) {
    glitch::IReferenceCounted* object = new glitch::IReferenceCounted();
    object->referenceCounter = count;
    return object;
}

void TestSingleton() {
    AssetManager* first = AssetManager::GetAssetManager();
    AssetManager* second = AssetManager::GetAssetManager();
    EXPECT(first != nullptr);
    EXPECT(first == second);
    EXPECT(first->m_sceneNodes.empty());
    EXPECT(first->m_textures.empty());
    EXPECT(first->m_loadedScenes.empty());
}

void TestDropSceneNodeByJoinedName() {
    AssetManager am;
    (void)am.m_sceneNodes["scene#node"];
    (void)am.m_sceneNodes["scene#other"];

    am.dropSceneNode("scene", "node");  // "scene" + '#' + "node": the entry holds no scene node, so it is erased
    EXPECT(am.m_sceneNodes.count("scene#node") == 0);
    EXPECT(am.m_sceneNodes.count("scene#other") == 1);

    am.dropSceneNode("absent", "x");  // absent name: the lookup inserts an entry and the erase takes it out again
    EXPECT(am.m_sceneNodes.count("absent#x") == 0);
    EXPECT(am.m_sceneNodes.size() == 1);
}

void TestClearSceneNodeByFlags() {
    AssetManager am;
    am.m_sceneNodes["a"].unk_04 = 1;
    am.m_sceneNodes["b"].unk_04 = 2;
    am.m_sceneNodes["c"].unk_04 = 3;

    am.clearSceneNode(2);  // an entry is dropped when the argument is at most its flags level
    EXPECT(am.m_sceneNodes.count("a") == 1);
    EXPECT(am.m_sceneNodes.count("b") == 0);
    EXPECT(am.m_sceneNodes.count("c") == 0);
}

void TestClearTextureKeepsSharedTexture() {
    AssetManager am;
    glitch::IReferenceCounted* shared = MakeCounted(2);
    am.m_textures["shared"].m_texture = shared;
    am.m_textures["shared"].unk_04 = 5;
    am.m_textures["kept"].unk_04 = 0;  // no texture: the drop does nothing

    am.clearTexture(0);  // "shared" is dropped by name: its count goes 2 -> 3 -> 2 and the entry stays
    EXPECT(am.m_textures.count("shared") == 1);
    EXPECT(shared->referenceCounter == 2);
    EXPECT(am.m_textures.count("kept") == 1);

    am.m_textures["shared"].unk_04 = 5;
    am.clearTexture(9);  // 9 is above the flags level 5, so nothing is dropped
    EXPECT(shared->referenceCounter == 2);

    shared->referenceCounter = 1;  // the map is now the only owner; its destructor frees the object
}

void TestDropTextureByName() {
    AssetManager am;

    am.dropTexture("missing");  // the lookup inserts an empty entry and nothing else happens
    EXPECT(am.m_textures.count("missing") == 1);
    EXPECT(am.m_textures["missing"].m_texture == nullptr);

    glitch::IReferenceCounted* held = MakeCounted(1);  // held by the map only: the count after the lookup's use is 2
    am.m_textures["held"].m_texture = held;
    am.dropTexture("held");
    EXPECT(am.m_textures.count("held") == 1);
    EXPECT(held->referenceCounter == 1);
}

void TestAssetWalk() {
    AssetManager am;
    std::string name;

    EXPECT(am.getFirstAsset(name) == 0);  // no textures and no walk position among the scene nodes: nothing to report

    (void)am.m_textures["a"];
    (void)am.m_textures["b"];
    (void)am.m_sceneNodes["x"];

    EXPECT(am.getFirstAsset(name) == 1);
    EXPECT(name == "Texture: a");
    EXPECT(am.getNextAsset(name) == 1);
    EXPECT(name == "Texture: b");
    EXPECT(am.getNextAsset(name) == 1);  // the texture walk has ended, so the scene-node walk starts
    EXPECT(name == "Scene node: x");
    EXPECT(am.getNextAsset(name) == 0);
}

}  // namespace

int main() {
    TestSingleton();
    TestDropSceneNodeByJoinedName();
    TestClearSceneNodeByFlags();
    TestClearTextureKeepsSharedTexture();
    TestDropTextureByName();
    TestAssetWalk();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("AssetManager batch checks passed\n");
    return 0;
}
