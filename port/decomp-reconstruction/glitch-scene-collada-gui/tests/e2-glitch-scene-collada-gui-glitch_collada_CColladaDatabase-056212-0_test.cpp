// Test for the e2 batch of glitch::collada::CColladaDatabase (channel lookups, node lookups, default values).
// Returns non-zero on failure.
#include <cstdio>

#include "glitch-scene-collada-gui/collada_database.hpp"

using namespace glitch::collada;

namespace {

int failures = 0;

void check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

// An animation over one channel (SAnimation +0x10 is the channel array).
SAnimation makeAnimation(const char* name, SChannel* channel) {
    SAnimation animation;
    animation.name = name;
    animation.channels = channel;
    return animation;
}

// A database over a hand-built holder. The record and file data are the two levels the lookups reach.
struct Fixture {
    SDatabaseTables tables;
    SColladaFileData data;
    CResFile record;
    CColladaDatabase db;

    Fixture() {
        data.tables = &tables;
        record.data = &data;
        db.record = &record;
    }
};

// Kind value for SChannel::Type in the tests (the values are not named yet).
SChannel::Type kind(std::uint32_t v) { return static_cast<SChannel::Type>(v); }

void testAnimation() {
    Fixture f;
    SChannel walk{0, "walk", 1, 0};
    SChannel hop{0, "hop", 5, 0};
    SChannel spin{0, "spin", 9, 3};
    SAnimation a0 = makeAnimation("a0", &walk);
    SAnimation a1 = makeAnimation("a1", &hop);
    SAnimation a2 = makeAnimation("a2", &spin);
    f.tables.animations = {&a0, &a1, &a2};

    // Kind 1..4: channel type 1..4 by name.
    check(f.db.getAnimation("walk", kind(1), std::uint8_t{0}) == &a0, "kind 1 finds walk by name");
    check(f.db.getAnimation("walk", kind(2), std::uint8_t{0}) == &a0, "kind 2 accepts type 1 by name");
    check(f.db.getAnimation("walk", kind(4), std::uint8_t{0}) == &a0, "kind 4 accepts type 1 by name");
    check(f.db.getAnimation("hop", kind(1), std::uint8_t{0}) == nullptr, "kind 1 rejects type 5");

    // Kind 5: channel type 5 or 9 by name.
    check(f.db.getAnimation("hop", kind(5), std::uint8_t{0}) == &a1, "kind 5 finds type 5 by name");
    check(f.db.getAnimation("spin", kind(5), std::uint8_t{0}) == &a2, "kind 5 accepts type 9 by name");
    check(f.db.getAnimation("walk", kind(5), std::uint8_t{0}) == nullptr, "kind 5 rejects type 1");

    // Kind 9: same as kind 5 by name.
    check(f.db.getAnimation("spin", kind(9), std::uint8_t{0}) == &a2, "kind 9 accepts type 9 by name");

    // Kind 0 and kinds 6..8: type and flag must equal the arguments, then the name.
    check(f.db.getAnimation("spin", kind(9), std::uint8_t{3}) == &a2, "kind 9 with flag 3");
    check(f.db.getAnimation("walk", kind(0), std::uint8_t{0}) == nullptr, "kind 0 needs type 0");
    check(f.db.getAnimation("spin", kind(7), std::uint8_t{3}) == nullptr, "kind 7 needs type 7");

    // Kinds above 9 that are not named kinds: exact type and flag, then the name.
    SChannel exact{0, "exact", 10, 3};
    SAnimation a3 = makeAnimation("a3", &exact);
    f.tables.animations.push_back(&a3);
    check(f.db.getAnimation("exact", kind(10), std::uint8_t{3}) == &a3, "exact kind and flag match");
    check(f.db.getAnimation("exact", kind(10), std::uint8_t{2}) == nullptr, "flag mismatch gives null");

    // Blendable: channel by value.
    SChannel query{0, "hop", 5, 0};
    check(f.db.getBlendableAnimation(&query) == &a1, "getBlendableAnimation finds hop");
    check(f.db.getBlendableAnimation(static_cast<const SChannel*>(nullptr)) == nullptr, "getBlendableAnimation null channel");

    // Default value through a channel: null on the channel-level lookup for kind 0 (type 0 is absent).
    void* out = reinterpret_cast<void*>(1);
    SChannel none{0, "none", 0, 0};
    check(!f.db.getDefaultValue(&none, &out) && out == nullptr, "default value kind 0 gives null");
}

void testNodes() {
    Fixture f;
    SNode grandchild{};
    grandchild.id = "c";
    SNode child{};
    child.id = "b";
    child.childCount = 1;
    child.children = &grandchild;
    SNode other{};
    other.id = "e";
    SNode root{};
    root.id = "a";
    root.childCount = 1;
    root.children = &child;

    SVisualScene scene{"scene"};
    SNode topLevel[2] = {root, other};
    scene.nodeCount = 2;
    scene.nodes = topLevel;
    f.tables.visualScenes = {&scene};

    check(f.db.getNode("a") == &topLevel[0], "top-level node found");
    check(f.db.getNode("b") == &topLevel[0].children[0], "child found");
    check(f.db.getNode("c") == &topLevel[0].children[0].children[0], "grandchild found");
    check(f.db.getNode("e") == &topLevel[1], "second top-level node found");
    check(f.db.getNode("zz") == nullptr, "missing name gives null");

    SNode* direct = f.db.getNode("c", topLevel[0]);
    check(direct == &topLevel[0].children[0].children[0], "getNode(name, node) searches descendants");
    check(f.db.getNode("a", topLevel[0]) == &topLevel[0], "getNode(name, node) matches the node itself");

    // No visual scene: the top-level lookup is null.
    Fixture empty;
    check(empty.db.getNode("a") == nullptr, "no visual scene gives null");
}

void testDefaults() {
    Fixture f;
    SNode node{};
    node.id = "n";
    node.translation[0] = 1;
    node.rotation[0] = 2;
    node.scale[0] = 3;
    node.scale[1] = 4;
    node.scale[2] = 5;
    node.unk_34 = 1;
    SNode nodes[1] = {node};
    SVisualScene scene{"s"};
    scene.nodeCount = 1;
    scene.nodes = nodes;
    f.tables.visualScenes = {&scene};

    void* out = nullptr;
    check(f.db.getDefaultValue("n", kind(1), &out, nullptr) && out == static_cast<void*>(nodes[0].translation),
          "case 1 gives translation");
    out = nullptr;
    check(f.db.getDefaultValue("n", kind(5), &out, nullptr) && out == static_cast<void*>(nodes[0].rotation),
          "case 5 gives rotation");
    out = nullptr;
    check(f.db.getDefaultValue("n", kind(10), &out, nullptr) && out == static_cast<void*>(nodes[0].scale),
          "case 10 gives scale");
    out = nullptr;
    check(f.db.getDefaultValue("n", kind(12), &out, nullptr) && out == static_cast<void*>(&nodes[0].scale[1]),
          "case 12 gives scale y");
    out = nullptr;
    check(f.db.getDefaultValue("n", kind(13), &out, nullptr) && out == static_cast<void*>(&nodes[0].scale[2]),
          "case 13 gives scale z");
    out = nullptr;
    check(f.db.getDefaultValue("n", kind(20), &out, nullptr) && out == static_cast<void*>(&nodes[0].unk_34),
          "case 20 gives the bool word");

    // Missing node: null out and false.
    out = reinterpret_cast<void*>(7);
    check(!f.db.getDefaultValue("missing", kind(1), &out, nullptr) && out == nullptr, "missing node gives null");

    // Kinds that produce no value.
    out = reinterpret_cast<void*>(7);
    check(!f.db.getDefaultValue("n", kind(15), &out, nullptr) && out == nullptr, "kind 15 gives null");
    out = reinterpret_cast<void*>(7);
    check(!f.db.getDefaultValue("n", kind(100), &out, nullptr) && out == nullptr, "default kind gives null");

    // Channel-form forwarding: name, type and flag come from the channel.
    SChannel channel{0, "n", 12, 0};
    out = nullptr;
    check(f.db.getDefaultValue(&channel, &out) && out == static_cast<void*>(&nodes[0].scale[1]),
          "channel form forwards name and type");
}

}  // namespace

int main() {
    testAnimation();
    testNodes();
    testDefaults();
    if (failures != 0) {
        std::printf("%d failure(s)\n", failures);
        return 1;
    }
    std::printf("e2 CColladaDatabase tests passed\n");
    return 0;
}
