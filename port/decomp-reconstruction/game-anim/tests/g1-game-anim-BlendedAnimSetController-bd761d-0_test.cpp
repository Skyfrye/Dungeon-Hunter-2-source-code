// Test for batch g1-game-anim-BlendedAnimSetController-bd761d-0. Covers the constant stubs, the constructor's field stores,
// the scaling gate of SetScale, the no-blender path of SetCallbacks and GetNumClip, and the destructor.
// AnimatorBlender.cpp is not linked (it needs the engine's CSceneNodeAnimatorBlender), so the three AnimatorBlender
// methods that this batch calls are test doubles defined below. Returns non-zero on failure.
#include <cstdio>

#include "dh2/AnimatorBlender.hpp"
#include "dh2/BlendedAnimSetController.hpp"
#include "dh2/RootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"

// Engine assert level (core-platform). AnimController's constructor reads it only on the null-node path.
int gAssertLevel = 0;

namespace {
int g_scaleCalls = 0;
int g_callbackCalls = 0;
}  // namespace

// Test doubles for the AnimatorBlender calls used by BlendedAnimSetController. The real bodies are in
// game-anim/src/g1-game-anim-AnimatorBlender-0caed3-0.cpp.
void AnimatorBlender::SetScale(float) {
    ++g_scaleCalls;
}

void AnimatorBlender::SetCallbacks(AnimatorBlender::AnimCallback, void*, AnimatorBlender::EventCallback, void*) {
    ++g_callbackCalls;
}

void AnimatorBlender::Blend(int) {}

int main() {
    int failures = 0;
    auto check = [&failures](bool ok, const char* what) {
        if (!ok) {
            std::printf("FAIL: %s\n", what);
            ++failures;
        }
    };

    // The base AnimController constructor takes a reference on the node, and the count lives in
    // glitch::IReferenceCounted, a VIRTUAL base of ISceneNode: the generated code reads the vbase offset out of the
    // node's vtable (`mov (%rdx),%r9; mov -0x18(%r9),%rax` at AnimController::AnimController+27..+30, the original's
    // read through the vtable at vptr-12) before it touches the count, so a stack address cannot stand in for it.
    // The node is a real RootSceneNode over the zeroed database block RootSceneNode's own test uses
    // (game-world/tests/g1-game-world-RootSceneNode-e402f1-1_test.cpp). It is built once, on first use.
    alignas(16) static unsigned char databaseBlock[64] = {};
    static RootSceneNode nodeStorage(*reinterpret_cast<const glitch::collada::CColladaDatabase*>(databaseBlock));
    RootSceneNode* node = &nodeStorage;

    {
        BlendedAnimSetController controller(node, 7);

        check(controller.m_node == node, "AnimController base keeps the node pointer");
        check(controller.m_animSetId == 7, "constructor stores the set id at +0x08");
        check(controller.unk_0c == 0, "constructor zeroes +0x0c");
        check(controller.unk_10 == true, "constructor sets +0x10 to 1");
        check(controller.unk_14 == 0, "constructor zeroes +0x14");

        // Constant stubs (reconstructed rows).
        check(!controller.HasClip("walk", 0), "HasClip is false");
        check(controller.GetClipDuration(0) == -1, "GetClipDuration is -1");
        check(!controller.PlayClip("walk", true, 0, 0), "PlayClip(name) is false");

        // No blender exists for this controller (the constructor's blender step is partial), so GetAnim returns null.
        check(controller.GetNumClip(0) == 0, "GetNumClip is 0 with no blender");

        // SetCallbacks with no blender makes no call.
        g_callbackCalls = 0;
        controller.SetCallbacks(&AnimController::_CBAnim_DoNothing, nullptr, &AnimController::_CBEvent_DoNothing,
                                nullptr);
        check(g_callbackCalls == 0, "SetCallbacks with no blender makes no call");

        // SetScale is gated by AnimController::s_scalingEnabled.
        g_scaleCalls = 0;
        AnimController::s_scalingEnabled = false;
        controller.SetScale(0.5f, 0);
        check(g_scaleCalls == 0, "SetScale does nothing while scaling is disabled");
        AnimController::s_scalingEnabled = true;
    }  // the destructor runs here (D1 and D2 share one body)

    if (failures == 0) {
        std::printf("BlendedAnimSetController part 1: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
