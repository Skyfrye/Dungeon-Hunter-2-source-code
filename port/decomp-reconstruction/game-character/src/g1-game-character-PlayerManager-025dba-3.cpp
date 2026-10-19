// Batch g1-game-character-PlayerManager-025dba-3 (part 4 of 4 of PlayerManager): PlayerManager::Update, the per-frame
// entry point. Declarations and layout come from dh2/PlayerManager.hpp, dh2/PlayerInfo.hpp and dh2/Character.hpp.
// Offsets in comments are the original 32-bit offsets: inside PlayerManager for this, inside PlayerInfo for a record,
// and ObjectBase's +0x81 (m_markedForDeletion) for the character.
//
// The per-frame sequence, in the original's order:
//   1. Each player record in [0, GetNumPlayers()) is read with GetPlayer(index, false). When its character (+0x660) is
//      set and marked for deletion, the record's character pointer is cleared.
//   2. The PlayerManager flag at +0x71b is cleared when it is set and the local player's in-game flag (PlayerInfo
//      +0x4e5, m_ingame) is set. The local record is read only when the flag is set.
//   3. Six passes run in order: _CheckOnlineTransition, _CheckLocalControllers, _CheckRemoteControllers,
//      _ManageCharacters, _CheckLocalDeaths, _CheckGlobalDeaths. Their results are not used.
//   4. The function tail-calls PlayerStatManager::Update on Singleton<PlayerStatManager>::s_inst (B, not BL).

#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerStatManager.hpp"
#include "dh2/Singleton.hpp"

// 0x378fb4 _ZN13PlayerManager6UpdateEv PlayerManager::Update()
// PARTIAL. The body matches the pseudocode and the disassembly, but the function is partial on two counts.
//   (1) The return value. The original tail-calls PlayerStatManager::Update (0x3790d8, a bare BX LR), so it returns the
//       r0 it was given: the address of Singleton<PlayerStatManager>::s_inst. A 64-bit build cannot return that as an
//       int, so this returns 0. Some callers keep the value as a leftover: chunk_011.c:3496 passes it to
//       glitch::os::Timer::getRealTime, and chunk_002.c:9756 returns it. The integrator should check those two callers.
//       The same kind of leftover-r0 return is 0 in ReceiveQuestSync and _CheckLocalDeaths.
//   (2) The callees. Each of the six passes is partial in its own ledger row. GetNumPlayers is exact offline (the node
//       count of m_players), but its online branch waits on the NetGateOpen stub. _CheckLocalControllers (the
//       per-controller loop) and _ManageCharacters (the per-record synchronisation) are not fully written, so a frame
//       is not complete.
// Singleton<PlayerStatManager>::s_inst is declared extern in dh2/Singleton.hpp. game-app/src/Globals.cpp has no explicit
// instantiation for PlayerStatManager, so linking needs `template class Singleton<PlayerStatManager>;` there (integrator).
int PlayerManager::Update() {
    const int numPlayers = GetNumPlayers();
    for (int i = 0; i < numPlayers; ++i) {
        PlayerInfo* player = GetPlayer(i, false);
        Character* character = player->unk_660;
        if (character != nullptr && character->m_markedForDeletion != 0) {
            player->unk_660 = nullptr;
        }
    }

    // The local record is read only when unk_71b (+0x71b) is set, as the disassembly does.
    if (unk_71b && GetLocalPlayer(0, false)->m_ingame.GetValue()) {
        unk_71b = false;
    }

    _CheckOnlineTransition();
    _CheckLocalControllers();
    _CheckRemoteControllers();
    _ManageCharacters();
    _CheckLocalDeaths();
    _CheckGlobalDeaths();

    // PARTIAL: the original returns the r0 left by PlayerStatManager::Update (see above). 0 is returned instead.
    Singleton<PlayerStatManager>::s_inst.Update();
    return 0;
}
