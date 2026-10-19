// Test for batch g1-game-app-pack11-61230f-0. Checks that the nine script commands of the batch report IsBlocking() == false,
// as their Hex-Rays bodies return 0, and that each one can be constructed as a ScriptCmdImpl. The Execute and Init bodies are
// PARTIAL shells and are not exercised. Exit status 0 means every check passed.
//
// This test links only the batch source, so the ScriptCmdImpl slots that the vtables reference and that another batch defines
// (Init and Update, 0x455628 and 0x45562c, both empty in the original) are stubbed below. The objects are not deleted: the
// command destructors are defined in another batch.
#include <cstddef>
#include <cstdio>

#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_SkipAllTutorialMessages.hpp"
#include "dh2/Script_SkipCharMenuTutorialMessage.hpp"
#include "dh2/Script_SkipTutorialMessage.hpp"
#include "dh2/Script_SpawnCharacter.hpp"
#include "dh2/Script_SpawnContainer.hpp"
#include "dh2/Script_StartDialog.hpp"
#include "dh2/Script_StartDialogID.hpp"
#include "dh2/Script_StopActor.hpp"
#include "dh2/Script_StopEffect.hpp"
#include "dh2/VisualFXManager.hpp"

// Test-only link stubs for slots defined in other batches. The test never calls them.
void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}

// The FX singleton and its DropAnimatedFXSetByID, which Script_StopEffect::Execute references. The test never runs Execute.
VisualFXManager::VisualFXManager() {}
VisualFXManager::~VisualFXManager() {}
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() {}
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static VisualFXManager g_testInstance_1{};
VisualFXManager& VisualFXManager::s_inst = g_testInstance_1;
void VisualFXManager::DropAnimatedFXSetByID(int /*effectTableId*/) {}

namespace {

int g_failures = 0;

void Check(bool passed, const char* what) {
    if (!passed) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    // The objects are created with new and kept: the destructors are not linked into this test.
    const ScriptCmdImpl* cmds[] = {
        new Script_SkipAllTutorialMessages(),
        new Script_SkipCharMenuTutorialMessage(),
        new Script_SkipTutorialMessage(),
        new Script_SpawnCharacter(),
        new Script_SpawnContainer(),
        new Script_StartDialog(),
        new Script_StartDialogID(),
        new Script_StopActor(),
        new Script_StopEffect(),
    };
    const char* names[] = {
        "Script_SkipAllTutorialMessages::IsBlocking() const",
        "Script_SkipCharMenuTutorialMessage::IsBlocking() const",
        "Script_SkipTutorialMessage::IsBlocking() const",
        "Script_SpawnCharacter::IsBlocking() const",
        "Script_SpawnContainer::IsBlocking() const",
        "Script_StartDialog::IsBlocking() const",
        "Script_StartDialogID::IsBlocking() const",
        "Script_StopActor::IsBlocking() const",
        "Script_StopEffect::IsBlocking() const",
    };

    for (std::size_t i = 0; i < sizeof(cmds) / sizeof(cmds[0]); ++i) {
        Check(cmds[i] != nullptr, "command constructed");
        if (cmds[i] != nullptr) {
            Check(!cmds[i]->IsBlocking(), names[i]);
        }
    }

    if (g_failures == 0) {
        std::printf("g1-game-app-pack11-61230f-0: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
