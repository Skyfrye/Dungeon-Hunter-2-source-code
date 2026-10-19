// Batch g1-game-character-AISDefault-7ff887-0 (part 1 of 3 of AISDefault): the 20 AI event hooks that
// AISDefault overrides from CharAIScript, from OnInit through OnMasterOutOfSight. Declarations and layout
// come from dh2/AISDefault.hpp, which already declares every method in this batch.
//
// Each hook is a bare return in the binary: the disassembly of every address is a single ARM BX LR, and the
// queue lists a 4-byte body for each. The definitions are therefore empty. The parameters are left unnamed
// because the original never reads them. AISDefault has no members of its own, so there is no state to set.

#include "dh2/AISDefault.hpp"

// 0x3dbe78 AISDefault::OnInit(void)
void AISDefault::OnInit() {}

// 0x3dbe7c AISDefault::OnInitPost(void)
void AISDefault::OnInitPost() {}

// 0x3dbe80 AISDefault::OnInitFinal(void)
void AISDefault::OnInitFinal() {}

// 0x3dbe84 AISDefault::OnTerminate(void)
void AISDefault::OnTerminate() {}

// 0x3dbe88 AISDefault::OnMsg(int,void const*)
void AISDefault::OnMsg(int /*msg*/, const void* /*data*/) {}

// 0x3dbe8c AISDefault::OnStateChanged(int,int)
void AISDefault::OnStateChanged(int /*newState*/, int /*oldState*/) {}

// 0x3dbe90 AISDefault::OnDied(GameObject *)
void AISDefault::OnDied(GameObject* /*killer*/) {}

// 0x3dbe94 AISDefault::OnRevived(GameObject *)
void AISDefault::OnRevived(GameObject* /*reviver*/) {}

// 0x3dbe98 AISDefault::OnFriendSpotted(Character *)
void AISDefault::OnFriendSpotted(Character* /*c*/) {}

// 0x3dbe9c AISDefault::OnNeutralSpotted(Character *)
void AISDefault::OnNeutralSpotted(Character* /*c*/) {}

// 0x3dbea0 AISDefault::OnEnemySpotted(Character *)
void AISDefault::OnEnemySpotted(Character* /*c*/) {}

// 0x3dbea4 AISDefault::OnAggro(Character *)
void AISDefault::OnAggro(Character* /*c*/) {}

// 0x3dbea8 AISDefault::OnDeAggro(Character *)
void AISDefault::OnDeAggro(Character* /*c*/) {}

// 0x3dbeac AISDefault::OnTargetDied(void)
void AISDefault::OnTargetDied() {}

// 0x3dbeb0 AISDefault::OnTargetRevived(void)
void AISDefault::OnTargetRevived() {}

// 0x3dbeb4 AISDefault::OnTargetOutOfSight(void)
void AISDefault::OnTargetOutOfSight() {}

// 0x3dbeb8 AISDefault::OnTargetInSight(void)
void AISDefault::OnTargetInSight() {}

// 0x3dbebc AISDefault::OnMasterDied(void)
void AISDefault::OnMasterDied() {}

// 0x3dbec0 AISDefault::OnMasterRevived(void)
void AISDefault::OnMasterRevived() {}

// 0x3dbec4 AISDefault::OnMasterOutOfSight(void)
void AISDefault::OnMasterOutOfSight() {}
