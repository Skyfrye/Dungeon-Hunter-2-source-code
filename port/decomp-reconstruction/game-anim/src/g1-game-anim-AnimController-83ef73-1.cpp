// AnimController constructor, rebuilt from libDungeonHunter2.so (Hex-Rays and the 0x474e44 disassembly).
// The m_node store, the null-node assert, the reference on the node (through its IReferenceCounted virtual base), the node call
// for trackEvents (virtual at vptr+0x74, ISceneNode::removeAnimators) and the do-nothing callbacks when trackEvents is clear.
#include "dh2/AnimController.hpp"
#include "dh2/RootSceneNode.hpp"

#include <cstdio>
#include <cstdlib>

// Engine assert level, defined in core-platform/src/memory.cpp. Declared here rather than through
// core-platform/memory.hpp, which redefines glitch::core types that the game headers already provide.
extern int gAssertLevel;

// 0x474e44 _ZN14AnimControllerC2EP13RootSceneNodeb
// The complete-object constructor at 0x474d30 (C1) has the same body; it is defined once, here.
AnimController::AnimController(RootSceneNode* node, bool trackEvents) : m_node(node) {
    // +0x00 vptr: the original stores AnimController's vtable first (the compiler does this here).
    // +0x04 m_node: stored before the null check, as in the original.
    if (m_node == nullptr) {
        if (gAssertLevel == 2) {
            // The original writes to address 0 here to force a crash.
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "m_node",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\ObjectsSub\\Visual\\Animations"
                         "\\AnimController.cpp",
                         28);
        }
        // The original then reads the node's vtable through the null pointer and faults at every assert level.
        std::abort();
    }

    // The node reference: the count of the IReferenceCounted virtual base of the node (found through the vtable at vptr-12 in the
    // original) is incremented.
    ++m_node->referenceCounter;

    if (trackEvents) {
        // vptr+0x74 of the node is ISceneNode::removeAnimators (listing +0x80 of RootSceneNode, address point +0x0c).
        m_node->removeAnimators();
    } else {
        SetCallbacksOnAll(&AnimController::_CBAnim_DoNothing, this, &AnimController::_CBEvent_DoNothing, this);
    }
}
