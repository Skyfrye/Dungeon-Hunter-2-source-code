// Batch g1-game-items-save-Quest-1defd1-2 (Quest, part 3 of 3): UpdatePreActive, UpdateActive, UpdateAvailable,
// UpdateLocked and Update. Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the
// assembly (tools/decomp_asm.py) for every function. The layout is in dh2/Quest.hpp, which already declares all five.
//
// Shared conventions in this file:
//  * State constants. Every state test reads PyDataConstants::getConstant("v2QuestState", name) through
//    ApplicationGetPyDataConstants() (the dword_99F758 global, dh2/global/charai_ai.hpp). Update reads m_state again
//    before each test, as the original does, so a handler that moves the state on can run the next handler in the
//    same call.
//  * Online flag. The original reads the byte at +0x05 of GetOnline() (COnline::isOnlineGame_). That member is private
//    in net-session-online/c_online.hpp, so this file calls Application::IsOnlineGame (0x320668). Its body is exactly
//    *(GetOnline() + 5). The game-app definition is a stub that returns false (its row is partial), so online games
//    take the offline path until that stub is replaced.
//  * Quest::Update gate. The local player's Character is PlayerInfo +0x660 (unk_660), its PlayerSavegame is Character
//    +0x14e8 (m_savegame) and the quest sync flag is PlayerSavegame +0x14 (m_questSynced). The asm of the gate is in
//    QuestUpdateRuns below.

#include "dh2/Quest.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ConditionList.hpp"
#include "dh2/Objective.hpp"
#include "dh2/ObjectiveList.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/charai_ai.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "net-session-online/c_room_attributes.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// PyDataConstants::getConstant("v2QuestState", name): the pydata value of one quest state name. Every state test in
// this file is one of these lookups followed by a SetState or a comparison with m_state.
int QuestStateConstant(const char* name) {
    return ApplicationGetPyDataConstants()->getConstant("v2QuestState", name);
}

// The test at the top of Quest::Update (0x481818). It returns true when the state checks run.
//   no local character                           -> run (asm: the null test branches to the checks)
//   character without a save, or save not synced -> stop (asm: LDR #0x14E8, then LDRB #0x14)
//   offline (Application::IsOnlineGame clear)    -> run (asm: LDRB GetOnline() #5)
//   online: PlayerManager::IsLocalPlayerHosting() != 0, or the ObjectManager byte at +0x160 != 0 -> run; else stop.
bool QuestUpdateRuns(const Character* character) {
    if (character == nullptr) {
        return true;
    }
    const PlayerSavegame* savegame = character->m_savegame;
    if (savegame == nullptr || !savegame->m_questSynced) {
        return false;
    }
    if (!ApplicationGetInstance().IsOnlineGame()) {
        return true;
    }
    if (dword_99F76C->IsLocalPlayerHosting() != 0) {
        return true;
    }
    return dword_99F764->unk_160 != 0;
}

}  // namespace

// 0x4815d4 Quest::UpdatePreActive()
// Returns while script 10 runs; otherwise the state becomes Active. In an online game room attribute 6 receives the quest's
// pydata index (+0x08; CMatching vtable +0xa4 then the CRoomAttributes slot +0x08, SetAttributeInt), and when the OnlineGameState
// mode word (+0x34) is 3 or 4 the game parameters are sent (CMatchingGLLive::SendGameParameters).
void Quest::UpdatePreActive() {
    if (TestIsScriptRunning(10)) {
        return;
    }
    SetState(QuestStateConstant("Active"));
    if (!ApplicationGetInstance().IsOnlineGame()) {
        return;
    }
    CRoomAttributes* roomAttributes = CMatching::Get()->GetRoomAttributes();
    roomAttributes->SetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(6), m_pyDataIndex);
    if (static_cast<unsigned int>(OnlineSingleton<OnlineGameState>::GetInstance()->mode_ - 3) <= 1u) {
        static_cast<CMatchingGLLive*>(CMatching::Get())->SendGameParameters();
    }
}

// 0x481688 Quest::UpdateActive()
void Quest::UpdateActive() {
    if (m_objectives.Eval() && !TestIsScriptRunning(0)) {
        SetState(QuestStateConstant("PostActive"));
    }
}

// 0x481700 Quest::UpdateAvailable()
// The accept objective's completed flag is Objective +0x14 (m_completed), read only when the pointer at Quest +0x18
// (m_acceptType) is set. The script in slot 1 is tested only after that.
void Quest::UpdateAvailable() {
    if (!m_preReqs.Eval()) {
        SetState(QuestStateConstant("Locked"));
        return;
    }
    if (m_acceptType != nullptr && m_acceptType->m_completed && !TestIsScriptRunning(1)) {
        SetState(QuestStateConstant("PostAvailable"));
    }
}

// 0x4817b4 Quest::UpdateLocked()
void Quest::UpdateLocked() {
    if (m_preReqs.Eval()) {
        SetState(QuestStateConstant("PostLocked"));
    }
}

// 0x481818 Quest::Update()
// PARTIAL, through its callee only. Every line of the body is written. The online branch of the gate calls
// Application::IsOnlineGame, which game-app stubs to false, so an online session takes the offline path until that
// stub is replaced (see the file header).
void Quest::Update() {
    PlayerInfo* localPlayer = dword_99F76C->GetLocalPlayer(0, true);
    if (!QuestUpdateRuns(localPlayer->unk_660)) {
        return;
    }
    if (m_needsReinit) {
        ReinitStateAfterLoading();
        m_needsReinit = false;
    }
    // One test per state, in this order. Each one reads m_state again.
    if (m_state == QuestStateConstant("Locked")) {
        UpdateLocked();
    }
    if (m_state == QuestStateConstant("PostLocked")) {
        UpdatePostLocked();
    }
    if (m_state == QuestStateConstant("PreAvailable")) {
        UpdatePreAvailable();
    }
    if (m_state == QuestStateConstant("Available")) {
        UpdateAvailable();
    }
    if (m_state == QuestStateConstant("PostAvailable")) {
        UpdatePostAvailable();
    }
    if (m_state == QuestStateConstant("PreActive")) {
        UpdatePreActive();
    }
    if (m_state == QuestStateConstant("Active")) {
        UpdateActive();
    }
    if (m_state == QuestStateConstant("PostActive")) {
        UpdatePostActive();
    }
    if (m_state == QuestStateConstant("PreCompleted")) {
        UpdatePreCompleted();
    }
    if (m_state == QuestStateConstant("Completed")) {
        UpdateCompleted();
    }
    if (m_state == QuestStateConstant("PostCompleted")) {
        UpdatePostCompleted();
    }
    if (m_state == QuestStateConstant("PreClosed")) {
        UpdatePreClosed();
    }
    if (m_state == QuestStateConstant("Closed")) {
        UpdateClosed();
    }
    // The last test compares with "Closed" again, not with "PostClosed". The assembly loads the "Closed" string for this
    // check (CMP R4,R0; BNE; B Quest::UpdatePostClosed), so the port keeps it.
    if (m_state == QuestStateConstant("Closed")) {
        UpdatePostClosed();
    }
}
