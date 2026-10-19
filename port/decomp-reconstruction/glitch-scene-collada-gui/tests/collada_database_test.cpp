#include "glitch-scene-collada-gui/collada_database.hpp"

#include <cstdio>

using namespace glitch::collada;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    SAnimationClip clipPair[2] = {{"walk", 0, 10}, {"run", 10, 20}};
    SAnimationClip& clipA = clipPair[0];
    SAnimationClip& clipB = clipPair[1];
    SImage image{"tex_a"};
    SEffect effect{"fx"};
    SMaterial material{"mat"};
    SGeometry geometry{"geo"};
    SController controller{0, "skin"};
    SVisualScene scene{"scene"};
    SAnimation anim{"idle"};

    SDatabaseTables t;
    t.animationClipLibrary.count = 2;
    t.animationClipLibrary.clips = clipPair;
    t.images = {&image};
    t.effects = {&effect};
    t.materials = {&material};
    t.geometries = {&geometry};
    t.controllers = {&controller};
    t.visualScenes = {&scene};
    t.animations = {&anim};

    CHECK(getAnimationClip(t, "run") == &clipB);
    CHECK(getAnimationClip(t, "jump") == nullptr);
    CHECK(getImage(t, "tex_a") == &image);
    CHECK(getEffect(t, "fx") == &effect);
    CHECK(getMaterial(t, "mat") == &material);
    CHECK(getGeometry(t, "geo") == &geometry);
    CHECK(getController(t, "skin") == &controller);
    CHECK(getVisualScene(t, "scene") == &scene);
    CHECK(getAnimation(t, "idle") == &anim);
    CHECK(getForce(t, "any") == nullptr);
    CHECK(getEmitter(t, "any") == nullptr);

    // find() walks the kinds in order and reports the one that matched.
    unsigned mask = kFindAnimationClip | kFindMaterial;
    CHECK(find(t, "run", mask) == &clipB);
    CHECK(mask == kFindAnimationClip);

    mask = kFindMaterial;
    CHECK(find(t, "run", mask) == nullptr);
    CHECK(mask == kFindMaterial);

    mask = 0xff;
    CHECK(find(t, "idle", mask) == &anim);
    CHECK(mask == kFindAnimation);

    // Segments: first [begin, end) hit; otherwise the last segment.
    SDatabaseTables s;
    CHECK(getAnimationSegment(s, 5) == nullptr);
    s.segments = {{0, 10, {}}, {10, 20, {}}};
    CHECK(getAnimationSegment(s, 15) == &s.segments[1]);
    CHECK(getAnimationSegment(s, 3) == &s.segments[0]);
    CHECK(getAnimationSegment(s, 99) == &s.segments[1]);

    // Instance-material list is LIFO through linkNext.
    SInstanceMaterial a, b;
    linkInstanceMaterial(s, &a);
    linkInstanceMaterial(s, &b);
    CHECK(s.instanceMaterials == &b);
    CHECK(b.linkNext == &a);
    CHECK(a.linkNext == nullptr);

    std::printf("%s\n", failures ? "collada_database: FAILED" : "collada_database: ok");
    return failures != 0;
}
