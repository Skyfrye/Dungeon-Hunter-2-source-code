// Test for the RootSceneNode constructors (0x35d824 C1, 0x35d910 C2). It checks the state that the constructor sets.
//
// The destructor and the four virtual overrides of RootSceneNode belong to other batches of this owner class. The vtable
// needs them to link, so this test defines them as empty stubs. The constructor never reads the database, so a zeroed
// block stands in for it. The test returns non-zero on failure.

#include <cstdint>
#include <cstdio>
#include <string>

#include "dh2/RootSceneNode.hpp"

// Stubs for the virtual slots that another batch defines (see the note above).
RootSceneNode::~RootSceneNode() {}
void RootSceneNode::onAnimate(std::uint32_t) {}
void RootSceneNode::onUpdateTime(std::uint32_t) {}
void RootSceneNode::setVisible(bool) {}
void RootSceneNode::updateAbsolutePosition(bool) {}

static int failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++failures;                                                          \
        }                                                                        \
    } while (0)

// The state that the constructor writes after the base call. The secondary vptr (+0x20c) is not checked: the batch
// does not store it.
static void checkFreshState(const RootSceneNode& node) {
    CHECK(node.m_fileName.empty());               // +0x1bc, default constructed
    CHECK(node.m_name.empty());                   // +0x1d4, default constructed
    CHECK(node.m_displacementEnabled == false);   // +0x1ec
    CHECK(node.m_animRoot == nullptr);            // +0x1f0
    CHECK(node.m_animRootAlt == nullptr);         // +0x1f4
    CHECK(node.m_displacementNode == nullptr);    // +0x1f8
    CHECK(node.m_lastAnimTime == 0);              // +0x1fc
    CHECK(node.m_cullBeforeUpdate == true);       // +0x200
    CHECK(node.m_object == nullptr);              // +0x204
    CHECK(node.unk_208 == true);                  // +0x208
    CHECK(node.m_visibleRequested == false);      // +0x209
    CHECK(node.unk_20a == false);                 // +0x20a
    CHECK(node.referenceCounter == 1);         // +0x210
}

int main() {
    alignas(16) static unsigned char databaseBlock[64] = {};
    const auto& database = *reinterpret_cast<const glitch::collada::CColladaDatabase*>(databaseBlock);

    // Automatic object: the constructor runs once and the state is as the original leaves it.
    {
        RootSceneNode node(database);
        checkFreshState(node);
    }

    // Heap object, as ColladaFactory::createScene builds it: the same state.
    {
        RootSceneNode* node = new RootSceneNode(database);
        checkFreshState(*node);
        delete node;
    }

    if (failures != 0) {
        std::printf("%d check(s) failed\n", failures);
        return 1;
    }
    std::printf("RootSceneNode constructor: all checks passed\n");
    return 0;
}
