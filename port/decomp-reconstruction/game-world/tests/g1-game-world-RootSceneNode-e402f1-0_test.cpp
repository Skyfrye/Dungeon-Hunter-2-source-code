// Test for batch g1-game-world-RootSceneNode-e402f1-0 (part 1 of 2 of RootSceneNode).
//
// Covers ResetDebugCounters, the only body here that runs without the engine: it clears three plain statics. The other
// bodies need a RootSceneNode object (the constructors are in part 2, and the scene-node base is not declared yet) or the
// engine's scene graph, so they are compiled and linked but not run here.
//
// The batch source reads DebugSwitches::s_inst in IsVisibleFastTest, so it links against DebugSwitches. The test supplies
// empty definitions of those symbols. The owner's real definitions live in another batch.
//
// The test returns non-zero on failure.

#include <cstdint>
#include <cstdio>
#include <string>

#include "dh2/DebugSwitches.hpp"
#include "dh2/RootSceneNode.hpp"

// Link stubs for DebugSwitches (the batch source needs them at link time only).
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) { return false; }
DebugSwitches DebugSwitches::s_inst;

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

void TestResetDebugCountersClearsAll() {
    RootSceneNode::s_dbgNumUpdateAbsolutePosition = 5;
    RootSceneNode::s_dbgAnimatedNodeCount = 6;
    RootSceneNode::s_dbgUpdateTimeNodeCount = 7;

    RootSceneNode::ResetDebugCounters();

    EXPECT(RootSceneNode::s_dbgNumUpdateAbsolutePosition == 0);
    EXPECT(RootSceneNode::s_dbgAnimatedNodeCount == 0);
    EXPECT(RootSceneNode::s_dbgUpdateTimeNodeCount == 0);
}

void TestResetDebugCountersIsIdempotent() {
    RootSceneNode::ResetDebugCounters();
    RootSceneNode::ResetDebugCounters();

    EXPECT(RootSceneNode::s_dbgNumUpdateAbsolutePosition == 0);
    EXPECT(RootSceneNode::s_dbgAnimatedNodeCount == 0);
    EXPECT(RootSceneNode::s_dbgUpdateTimeNodeCount == 0);
}

void TestCountersStartAtZero() {
    EXPECT(RootSceneNode::s_dbgNumUpdateAbsolutePosition == 0);
    EXPECT(RootSceneNode::s_dbgAnimatedNodeCount == 0);
    EXPECT(RootSceneNode::s_dbgUpdateTimeNodeCount == 0);
}

}  // namespace

int main() {
    TestCountersStartAtZero();
    TestResetDebugCountersClearsAll();
    TestResetDebugCountersIsIdempotent();

    if (g_failures == 0) {
        std::printf("RootSceneNode-e402f1-0 test: all checks passed\n");
        return 0;
    }
    std::printf("RootSceneNode-e402f1-0 test: %d check(s) failed\n", g_failures);
    return 1;
}
