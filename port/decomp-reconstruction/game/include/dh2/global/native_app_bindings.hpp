// gameswf natives of the app bindings (batch g1-game-app-global-f216b6-9, ELF 0x43c098 .. 0x43d288), with
// NativeGetPlayerChar, a C++ lookup that the natives use. Definitions: game-app/src/g1-game-app-global-f216b6-9.cpp.
//
// gameswf calls a native with one const fn_call& (mangled _Z..RKN7gameswf7fn_callE). Natives return void, as in
// dh2/global/native_online_gc.hpp. Argument n (0 = first) of a call is read from the value at index
// *(fn_call +0x14) - n, with the value array base at **(fn_call +0x0c); fn_call +0x10 is the argument count.
// The as_value accessors are not in the tree, so a native that reads an argument or stores its result is PARTIAL.
// The asm (mangled names) fixes them as members: as_value::to_number() const, as_value::to_bool() const and
// as_value::set_double(double), called on the fn_call's result (+0x00) for set_double and on the argument for the
// reads. The helpers below hold the logic that does not depend on them and are tested.
#pragma once

#include <cstdint>

class Character;

namespace gameswf {
struct fn_call;
}  // namespace gameswf

// 0x43c388 NativeGetPlayerChar(int, bool). Returns the character of a player index, remote or local.
Character* NativeGetPlayerChar(int playerIndex, bool remote);

// 0x43c098 NativeConectionType
void NativeConectionType(const gameswf::fn_call& call);
// 0x43cabc NativeHUDSpell
void NativeHUDSpell(const gameswf::fn_call& call);
// 0x43cb24 NativeGetLoadingTipStrID
void NativeGetLoadingTipStrID(const gameswf::fn_call& call);
// 0x43cc00 NativeGetIPodPlaylistCount
void NativeGetIPodPlaylistCount(const gameswf::fn_call& call);
// 0x43cc40 NativeGetMonsterHUDHP
void NativeGetMonsterHUDHP(const gameswf::fn_call& call);
// 0x43ccc8 NativeFindFreeSaveSlot
void NativeFindFreeSaveSlot(const gameswf::fn_call& call);
// 0x43ccec NativeGetCreditMovement
void NativeGetCreditMovement(const gameswf::fn_call& call);
// 0x43cd68 NativeSetCurrentDifficulty
void NativeSetCurrentDifficulty(const gameswf::fn_call& call);
// 0x43cdac NativeChangeRolloverInputBehavior
void NativeChangeRolloverInputBehavior(const gameswf::fn_call& call);
// 0x43ce3c NativeOpenKeyboard
void NativeOpenKeyboard(const gameswf::fn_call& call);
// 0x43cf04 NativeIPodSetPlaylist
void NativeIPodSetPlaylist(const gameswf::fn_call& call);
// 0x43cf50 NativeAssignSaveSlotToPlayer
void NativeAssignSaveSlotToPlayer(const gameswf::fn_call& call);
// 0x43cfb4 NativeInvDropItem
void NativeInvDropItem(const gameswf::fn_call& call);
// 0x43d178 NativeSelectClassSpec
void NativeSelectClassSpec(const gameswf::fn_call& call);
// 0x43d220 NativeSetSaveSlotIDToMainMenu
void NativeSetSaveSlotIDToMainMenu(const gameswf::fn_call& call);
// 0x43d288 NativeEraseSaveSlot
void NativeEraseSaveSlot(const gameswf::fn_call& call);

// Helper of NativeGetLoadingTipStrID (the page pick of 0x43cb24, not a separate function). Advances the ordinary
// Random seed (Random::s_seed) and returns the byte offset of the chosen 12-byte Arrays::HintPages row, that is
// 12 * row, where row = seed % pageCount. An empty table (pageCount 0) returns 0 and leaves the seed alone. The
// seed update is (59051 * seed + 177149) % 0xDAF26B in 32-bit unsigned arithmetic. The caller increments
// Random::s_debugRandomCounters[0], as the original does.
std::uint32_t PickHintPageOffset(std::uint32_t& seed, std::uint32_t pageCount);

// Helper of NativeGetCreditMovement (the value computed by 0x43ccec). On an HTC device the value is 2.0. Otherwise
// it is (double)(int)(frameTimeMs / 25u + 1u), with unsigned division as in the original.
double CreditMovementValue(bool htcDevice, int frameTimeMs);
