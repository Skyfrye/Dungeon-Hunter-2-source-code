// gameswf natives that act on a player's character: potion, quest, stats, skills, equipment, HUD skill,
// lock and unlock, save, and the start-game family (batch g1-game-app-global-f216b6-10, ELF 0x43d2c8 ..
// 0x43eac0). Definitions: game-app/src/g1-game-app-global-f216b6-10.cpp.
//
// gameswf calls a native with one const fn_call& (mangled _Z..RKN7gameswf7fn_callE). The Hex-Rays return
// value is the leftover r0 of the last call, so these return void.
//
// Every native is PARTIAL: the gameswf argument and result accessors are not in the tree, so a native does
// not read its arguments. The *OfPlayer / *OnCharacter helpers below hold the body that acts on the decoded
// values. A native calls its helper once the accessors exist.
#pragma once

namespace gameswf {
struct fn_call;
}  // namespace gameswf

class Character;

// Declared for the natives. Defined by their own batches: NativeGetPlayerChar at 0x43c388, NativeSetLockZoom at
// 0x439c68. Identical declarations elsewhere are harmless.
Character* NativeGetPlayerChar(int player, bool flag);  // 0x43c388 (player index, flag)
void NativeSetLockZoom(bool locked);                    // 0x439c68

// Natives (gameswf callbacks).
void NativeUsePotion(const gameswf::fn_call& call);            // 0x43d2c8
void NativeSetCurrentQuest(const gameswf::fn_call& call);      // 0x43d3b4
void NativeStatsRemoveAssign(const gameswf::fn_call& call);    // 0x43d43c
void NativeSkillsTrainSkill(const gameswf::fn_call& call);     // 0x43d548
void NativeEquipSkill(const gameswf::fn_call& call);           // 0x43d63c
void NativePinchZoom(const gameswf::fn_call& call);            // 0x43d6f8
void NativeInvGetEquipedItem(const gameswf::fn_call& call);    // 0x43d790
void NativeInvAutoEquipSlot(const gameswf::fn_call& call);     // 0x43da2c
void NativeOnHUDOpenEvent(const gameswf::fn_call& call);       // 0x43dafc
void NativeReloadSkills(const gameswf::fn_call& call);         // 0x43dbb8
void NativeSaveGame(const gameswf::fn_call& call);             // 0x43dc08
void NativeStartFromGCInvite(const gameswf::fn_call& call);    // 0x43de30
void NativeStartGame(const gameswf::fn_call& call);            // 0x43e0d0
void NativeStartMultiplayerGame(const gameswf::fn_call& call); // 0x43e308
void NativeStatsReset(const gameswf::fn_call& call);           // 0x43e494
void NativeInvEquipItem(const gameswf::fn_call& call);         // 0x43e600
void NativeHUDSkill(const gameswf::fn_call& call);             // 0x43e734
void NativeMoveCharacter(const gameswf::fn_call& call);        // 0x43e830
void NativeUnlockCharacter(const gameswf::fn_call& call);      // 0x43ea0c
void NativeLockCharacter(const gameswf::fn_call& call);        // 0x43eac0

// Bodies on decoded arguments (not original symbols). Each native calls one of these once it reads its arguments.
void UsePotionOnPlayer(int player);                                             // NativeUsePotion
void SetCurrentQuestOfPlayer(int player, int quest);                            // NativeSetCurrentQuest
void ResetStatsChangeOfPlayer(int player, int a, int b, int c, int d);          // NativeStatsRemoveAssign
bool TrainSkillOfPlayer(int player, int skill, bool flag);                      // NativeSkillsTrainSkill (returns IncSkill's bool)
void EquipSkillInSlotOfPlayer(int player, int slot, int skill);                 // NativeEquipSkill
void PinchZoomBy(int amount);                                                   // NativePinchZoom
bool GetEquippedItemInfo(int player, int slot, int* color, int* index, int* numPowers);  // NativeInvGetEquipedItem
void AutoEquipSlotOfPlayer(int player, int slot);                               // NativeInvAutoEquipSlot
void ReloadSkillsOfPlayer(int player);                                          // NativeReloadSkills
void SaveGameOfPlayer(int player);                                              // NativeSaveGame
bool ResetStatsOfPlayer(int player, bool quoteOnly, int* costOut);              // NativeStatsReset
void EquipItemInSlotOfPlayer(int player, int item, int slot);                   // NativeInvEquipItem
void HudSkillOnCharacter(Character* ch, int slot);                              // NativeHUDSkill
bool UnlockCharacterControl(int player);                                        // NativeUnlockCharacter
bool LockCharacterControl(int player);                                          // NativeLockCharacter

// Pure parts of the bodies, testable without the engine (game-app/tests/g1-game-app-global-f216b6-10_test.cpp).
enum class AutoEquipAction { kNone, kEquipAll, kUnequipThenEquip };

// Equipment slot in range: 0 <= slot < numSlots (the original's test for NativeInvGetEquipedItem and
// NativeInvAutoEquipSlot).
inline bool IsEquipmentSlotInRange(int slot, int numSlots) {
    return slot >= 0 && slot < numSlots;
}

// NativeInvAutoEquipSlot dispatch. In range: unequip the slot, then equip it automatically. Out of range: slot -1
// equips all slots automatically, any other value does nothing.
inline AutoEquipAction ClassifyAutoEquipSlot(int slot, int numSlots) {
    if (IsEquipmentSlotInRange(slot, numSlots)) {
        return AutoEquipAction::kUnequipThenEquip;
    }
    return slot == -1 ? AutoEquipAction::kEquipAll : AutoEquipAction::kNone;
}

// NativePinchZoom camera write (PinchZoomBy, 0x43d6f8): the zoom request grows by the amount times the zoom
// sensitivity, in float arithmetic as the binary does it. PinchZoomBy writes it only when the camera's m_zoomLocked
// (+0x86) is clear.
inline float PinchZoomStep(float zoomCurrent, int amount, float sensitivity) {
    const float step = static_cast<float>(amount) * sensitivity;
    return step + zoomCurrent;
}

// NativeStartMultiplayerGame (0x43e308), after OnlineGameState +0x14 is set to 300. Mode 3 is GLLive. Any other mode
// starts the game through NativeStartGame. In mode 3 the live game starts once: when the started byte (+0x28) is set
// the native returns, and otherwise it calls CMatchingGLLive::StartGame and sets the byte.
enum class MultiplayerStartAction { kStartGame, kNothing, kStartLiveGame };

inline MultiplayerStartAction ClassifyMultiplayerStart(int mode, bool liveStarted) {
    if (mode != 3) {
        return MultiplayerStartAction::kStartGame;
    }
    return liveStarted ? MultiplayerStartAction::kNothing : MultiplayerStartAction::kStartLiveGame;
}

// Body of NativeHUDSkill (0x43e734) on the local player: the character is PlayerInfo +0x660 (PlayerInfo::unk_660).
void HudSkillForLocalPlayer(int slot);
