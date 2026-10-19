// Batch g1-game-character-PlayerInfo-3a5de8-1: SetInCutscene, and the copy constructor and operator= (skipped, see below).
// The constructor (C2 0x374cc0 and its C1 twin 0x37418c) is one C++ constructor, defined in
// g1-game-character-PlayerInfo-3a5de8-0.cpp with the C1 row, so this file does not define it again.
// Declarations come from dh2/PlayerInfo.hpp. The ledger rows are in game-character/ledger.d/g1-game-character-PlayerInfo-3a5de8-1.csv.

#include "dh2/PlayerInfo.hpp"

// 0x374cc0 PlayerInfo::PlayerInfo()   (C2). Not defined here: the same code is the C1 constructor 0x37418c, which
// g1-game-character-PlayerInfo-3a5de8-0.cpp defines. That body builds the CNetPlayerInfo base, the 25 blocks, registers
// the factory and declares the blocks in the original order (+0x288, +0x310, +0x338, +0x360, +0x2b0, +0x388, +0x2e8,
// +0x3b0, +0x3d8, +0x400, +0x428, +0x450, +0x478, +0x4a0, +0x4c8, +0x4e8, +0x508, +0x528, then +0x548..+0x638), then calls
// Reset(). It is partial there (the stale-value SetChanged in the member constructors is not reproduced).

// 0x3777d0 PlayerInfo::PlayerInfo(PlayerInfo const&) and 0x378808 PlayerInfo::operator=(PlayerInfo const&): written in
// game-character/src/ok3-PlayerInfo.cpp, on top of the CNetPlayerInfo copy constructor (0x377448) and operator= (0x378708)
// that net-transport now has.

// 0x459900 PlayerInfo::SetInCutscene(bool)
// PARTIAL. Not reproduced: the stale-temporary SetChanged (NetStructBool temporary; counter advance).
// The Hex-Rays text builds a NetStructBool temporary on the stack. Its value byte (SP+0x1D) is never written, so the
// compare with the argument reads stale stack data. When they differ, the original stores the argument in the byte and
// calls NetStructMember::SetChanged (0x814f84) on the temporary. SetChanged copies the old NetStruct::s_changeCounter
// into the temporary's changeStamp_ (+8) and advances the global s_changeCounter. That global advance is the side effect
// this body omits, the same case as the PARTIAL setters in the part-0 file note.
// The temporary object is not used after that call. Only its value byte is passed on: the original calls the virtual
// SetValue of the +0x4e8 block (m_inCutscene, vtable slot +0x1c, R0 = this+0x4e8) with a pointer to that byte. The byte
// equals the argument on both paths (it is stored when they differ), so the port passes the argument by value.
// NetStructMemberType<bool>::SetValue marks the member changed exactly when its value changes, so the member value and
// its change flag match.
void PlayerInfo::SetInCutscene(bool inCutscene) {
    m_inCutscene.SetValue(inCutscene);
}
