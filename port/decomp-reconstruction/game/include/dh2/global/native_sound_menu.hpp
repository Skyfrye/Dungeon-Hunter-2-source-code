// gameswf natives of the sound and music menu, the menu stack and the settings save and load, plus
// IsNonDebugQuest (batch g1-game-app-global-f216b6-8, ELF 0x43acdc .. 0x43b4f0). Definitions:
// game-app/src/g1-game-app-global-f216b6-8.cpp.
//
// gameswf calls a native with one const fn_call& (mangled _Z..RKN7gameswf7fn_callE). The Hex-Rays return
// value is the leftover r0 of the last call, not part of the contract, so these return void.
//
// The three decision helpers at the end are not original symbols. Each is the pure part of one original
// branch (string compare, boolean formula), written so it can be tested without the gameswf argument API.
#pragma once

namespace gameswf {
struct fn_call;
}  // namespace gameswf

class Quest;

// 0x43acdc NativePauseAllSounds
void NativePauseAllSounds(const gameswf::fn_call& call);
// 0x43ad04 NativePauseMusic
void NativePauseMusic(const gameswf::fn_call& call);
// 0x43ad2c NativeStopMusic
void NativeStopMusic(const gameswf::fn_call& call);
// 0x43ad58 NativePlayPreviousMusic
void NativePlayPreviousMusic(const gameswf::fn_call& call);
// 0x43ad84 NativePlayMusic
void NativePlayMusic(const gameswf::fn_call& call);
// 0x43ae10 NativePlaySoundFX
void NativePlaySoundFX(const gameswf::fn_call& call);
// 0x43ae9c NativeGoToMainMenu
void NativeGoToMainMenu(const gameswf::fn_call& call);
// 0x43aebc NativePushState
void NativePushState(const gameswf::fn_call& call);
// 0x43afb8 NativeHUDInteract
void NativeHUDInteract(const gameswf::fn_call& call);
// 0x43b04c NativeIsMultiplayerLoadCompleted
void NativeIsMultiplayerLoadCompleted(const gameswf::fn_call& call);
// 0x43b0b8 NativeMustWaitForHost
void NativeMustWaitForHost(const gameswf::fn_call& call);
// 0x43b158 NativePopMenu
void NativePopMenu(const gameswf::fn_call& call);
// 0x43b1b4 NativePushMenu
void NativePushMenu(const gameswf::fn_call& call);
// 0x43b1e4 NativeReviveAllPlayers
void NativeReviveAllPlayers(const gameswf::fn_call& call);
// 0x43b278 NativeSaveSettings
void NativeSaveSettings(const gameswf::fn_call& call);
// 0x43b2d8 NativeLoadSettings
void NativeLoadSettings(const gameswf::fn_call& call);
// 0x43b390 NativeOptionMusic
void NativeOptionMusic(const gameswf::fn_call& call);
// 0x43b424 NativeOptionFX
void NativeOptionFX(const gameswf::fn_call& call);
// 0x43b4b8 NativeEnterOptionMenu
void NativeEnterOptionMenu(const gameswf::fn_call& call);

// 0x43b4dc IsNonDebugQuest(Quest const*). The original is !Quest::IsDebug(); asm: BL IsDebug, EOR #1.
bool IsNonDebugQuest(const Quest* quest);

// ---- decision helpers (not original symbols) ----

// NativeHUDInteract branch on the command string: "quit" sets InExitConfirmation to 1, "no" clears it to 0,
// any other command calls appDestroy (asm: tail call B appDestroy).
enum class HudInteractDecision { kSetExitConfirmation, kClearExitConfirmation, kAppDestroy };
HudInteractDecision DecideHudInteract(const char* command);

// NativeIsMultiplayerLoadCompleted result: true unless the online flag is set and either the loading or the
// ready-to-roll check of PlayerManager fails.
bool MultiplayerLoadCompleteFromFlags(bool online, bool allLoadingDone, bool allReadyToRoll);

// NativeMustWaitForHost result: online, not hosting locally, and (the hosting player's word at byte +0x1394
// is clear, or the flag at PlayerManager +0x71a is set and the hosting player's words at +0x1394 and +0x1414
// are both set).
bool MustWaitForHostFromFlags(bool online, bool localPlayerHosting, bool hostWord1394, bool hostWord1414,
                              bool localFlag71a);
