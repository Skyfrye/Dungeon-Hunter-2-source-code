// Batch g1-game-character-AISPlayer-a14aa9-0 (all of AISPlayer): the AI for a player-controlled character.
// Declarations and layout come from dh2/AISPlayer.hpp, which already declares every method in this batch.
//
// Offsets in comments are the original 32-bit offsets. AISPlayer's own members are the vector at +0xc4 (unk_c4),
// the aggro count at +0xd0 (m_aggroCount) and the aggro-for-music value at +0xd4 (m_aggroForMusic). The callback
// mask at +0xb8 is CharAIScript::unk_b8. m_character (+0x98) is the owner, and its CharAI base (+0x3c8) holds
// m_targetSeeking (CharAI +0x4a, Character +0x412), so the owner's fields are reached through the named members.

#include <cstdint>
#include <cstdio>
#include <string>

#include "dh2/AISPlayer.hpp"

// AISPlayer::AISPlayer(bool)  (inlined into CharAI::SetScript<AISPlayer> at 0x3cd11c): AISDefault(skipBindings), an empty Character* vector at
// +0xc4, m_aggroCount (+0xd0) and m_aggroForMusic (+0xd4) zero.
AISPlayer::AISPlayer(bool skipBindings) : AISDefault(skipBindings), unk_c4(), m_aggroCount(0), m_aggroForMusic(0) {}
#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/v2Controller.hpp"

// 0x3dd7ec _ZN9AISPlayer8OnAttackEiib AISPlayer::OnAttack(int, int, bool)
// Thunk: the binary is a single branch to AISDefault::OnAttack. Forwarded, not reimplemented (TRACK-B decision 4).
// The Hex-Rays return type (CMessaging*) is the r0 residue of that branch; the hook is void in AISDefault.
void AISPlayer::OnAttack(int a, int b, bool flag) {
    AISDefault::OnAttack(a, b, flag);
}

// 0x3dd7f0 _ZN9AISPlayer20OnTargetInMeleeRangeEv AISPlayer::OnTargetInMeleeRange()
// The base hook runs only when the owner is not attacking and its target is still being sought. The owner's
// m_targetSeeking (+0x4a of CharAI) is cleared on both paths. The Hex-Rays return value is r0 residue: the hook
// is void, as the base AISDefault::OnTargetInMeleeRange is.
void AISPlayer::OnTargetInMeleeRange() {
    if (!m_character->CharStateMachine::SM_IsAttacking() && m_character->CharAI::AI_IsTargetSeeking()) {
        AISDefault::OnTargetInMeleeRange();
    }
    m_character->m_targetSeeking = false;
}

// 0x3dd84c _ZN9AISPlayer12OnTargetDiedEv AISPlayer::OnTargetDied()
// Stops the owner's controller, clears the target without forcing it, and syncs the last target. The original
// returns the AI_SyncLastTarget result as r0 residue; the hook is void, so the result is not returned.
void AISPlayer::OnTargetDied() {
    m_character->m_controller->Cmd_Stop();
    m_character->CharAI::AI_SetTarget(nullptr, false);
    m_character->CharAI::AI_SyncLastTarget();
}

// 0x3dd884 _ZN9AISPlayer7InitVCBEv AISPlayer::InitVCB()
// Runs the AISDefault mask setup, then ORs the OnKill bit (0x400) into the callback mask at +0xb8 when the script
// defines OnKill. The function returns that bit (the value of its last test), not the whole mask.
int AISPlayer::InitVCB() {
    AISDefault::InitVCB();
    const std::uint32_t mask = unk_b8;                              // +0xb8 callback mask
    const int onKillBit = IsInVFTable("OnKill") ? 0x400 : 0;
    unk_b8 = mask | static_cast<std::uint32_t>(onKillBit);
    return onKillBit;
}

// 0x3dd99c _ZN9AISPlayerD1Ev AISPlayer::~AISPlayer() (complete-object destructor)
// The original sets the AISPlayer vtable, frees the Character* vector at +0xc4, sets the AISDefault vtable and calls
// CharAIScript::~CharAIScript. A C++ destructor runs its member destructors (the vector, which frees the buffer)
// before the base destructors, which is the same order. The body is therefore empty. The original's node-allocator
// versus CustomFree split (blocks of 0x80 bytes or less) is an allocator detail the host std::vector does not repeat.
AISPlayer::~AISPlayer() {}

// 0x3dda18 _ZN9AISPlayerD0Ev AISPlayer::~AISPlayer() (deleting destructor)
// SKIPPED: compiler-generated. It calls the complete-object destructor above, then CustomFree(this); the C++ delete
// expression produces it.

// 0x3dda34 _ZN9AISPlayer14OnEnemySpottedEP9Character AISPlayer::OnEnemySpotted(Character*)
// Runs the AISDefault hook, then reads the AutomaticKill debug switch. When it is set, the spotted enemy's controller
// is told to kill with the owner as killer (Cmd_Kill(killer, silent = false)). The spotted character's controller is
// at its +0x378, the v2Controllable base's m_controller.
void AISPlayer::OnEnemySpotted(Character* c) {
    AISDefault::OnEnemySpotted(c);
    DebugSwitches::s_inst.load();
    const bool automaticKill = DebugSwitches::s_inst.GetSwitch("AutomaticKill");
    if (automaticKill) {
        c->m_controller->Cmd_Kill(m_character, false);
    }
}

// 0x3ddb10 _ZN9AISPlayer6OnKillEP9Character AISPlayer::OnKill(Character*)
// The AISDefault hook runs; then, when bit 0x400 of the callback mask at +0xb8 is set, the victim is pushed as userdata
// and the script's OnKill is called.
void AISPlayer::OnKill(Character* victim) {
    AISDefault::OnKill(victim);
    if ((unk_b8 & 0x400u) != 0) {
        sfc::script::lua::Arguments args;
        args.pushUserData(victim);
        LuaScript::Call("OnKill", args);
    }
}

// 0x3ddb70 _ZN9AISPlayer7OnAggroEP9Character AISPlayer::OnAggro(Character*)
// The AISDefault hook, the isTracingAggroCount pre-trace and the m_aggroCount increment run for every owner. Offline, or for the local
// player online (PlayerManager::IsLocalPlayer), the aggressor's aggro weight (Character::GetCharAI()->m_w5, AIProps +0x14) is added to
// m_aggroForMusic and, with a current level whose config allows combat music (LevelConfig::m_combatMusicEnabled, +0x1c8), the sound
// manager outside combat music (VoxSoundManager +0x31) and m_aggroForMusic at or above the design threshold (Structs::DesignSettings
// m_w5, +0x14 of row 0), the music switches to "combat" (+0x31 cleared). The post-trace line follows.
void AISPlayer::OnAggro(Character* c) {
    AISDefault::OnAggro(c);
    DebugSwitches::s_inst.load();
    const bool tracePre = DebugSwitches::s_inst.GetSwitch("isTracingAggroCount");
    if (tracePre) {
        std::fprintf(stderr, "OnAggro-Pre - AggroCount: %d\t AggroForMusic:%d\n", m_aggroCount, m_aggroForMusic);
    }
    m_aggroCount += 1;
    if (!GetOnlineGameFlag() || dword_99F76C->IsLocalPlayer(m_character)) {
        VoxSoundManager* sound = VoxSoundManager::s_instance;
        Level* level = ApplicationGetInstance().GetCurrentLevel();
        m_aggroForMusic += c->GetCharAI()->Flags;
        if (level) {
            LevelConfig* config = level->GetLevelConfig();
            const auto* design = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);
            if (config->m_combatMusicEnabled && sound->music_slot_ && m_aggroForMusic >= design->CombatMusicTrigger) {
                sound->SetMusicState("combat");
                sound->music_slot_ = false;
            }
        }
        DebugSwitches::s_inst.load();
        if (DebugSwitches::s_inst.GetSwitch("isTracingAggroCount")) {
            std::fprintf(stderr, "OnAggro-Post - AggroCount: %d\t AggroForMusic:%d\n", m_aggroCount, m_aggroForMusic);
        }
    }
}

// 0x3dde48 _ZN9AISPlayer9OnDeAggroEP9Character AISPlayer::OnDeAggro(Character*)
// The AISDefault hook, the pre-trace and the m_aggroCount decrement run for every owner. Offline, or for the local player online:
// m_aggroForMusic loses the aggressor's weight; when the sound manager is in combat music (+0x31 clear) and the value is 0, the music
// switches to "ambient" (+0x31 set) and, if it is in the safe-zone mode (+0x32), the level's ambient sound (Level::unk_120, when not
// negative) plays looped with a 2000 ms fade. When m_aggroCount is 0 and the safe-zone mode is off, unk_c4 is emptied. The post-trace
// line follows.
void AISPlayer::OnDeAggro(Character* c) {
    AISDefault::OnDeAggro(c);
    DebugSwitches::s_inst.load();
    const bool tracePre = DebugSwitches::s_inst.GetSwitch("isTracingAggroCount");
    if (tracePre) {
        std::fprintf(stderr, "OnDeAggro-Pre - AggroCount: %d\t AggroForMusic:%d\n", m_aggroCount, m_aggroForMusic);
    }
    m_aggroCount -= 1;
    if (!GetOnlineGameFlag() || dword_99F76C->IsLocalPlayer(m_character)) {
        VoxSoundManager* sound = VoxSoundManager::s_instance;
        ApplicationGetInstance().GetCurrentLevel();
        m_aggroForMusic -= c->GetCharAI()->Flags;
        if (!sound->music_slot_ && m_aggroForMusic == 0) {
            sound->SetMusicState("ambient");
            const bool inSafeZone = sound->in_safe_zone_;
            sound->music_slot_ = true;
            if (inSafeZone) {
                const int ambient = ApplicationGetInstance().GetCurrentLevel()->unk_120;
                if (ambient >= 0) {
                    sound->PlayMusic(ambient, true, false, 2000);
                }
            }
        }
        if (m_aggroCount == 0 && !sound->in_safe_zone_) {
            unk_c4.clear();
        }
        DebugSwitches::s_inst.load();
        if (DebugSwitches::s_inst.GetSwitch("isTracingAggroCount")) {
            std::fprintf(stderr, "OnDeAggro-Post - AggroCount: %d\t AggroForMusic:%d\n", m_aggroCount, m_aggroForMusic);
        }
    }
}

// 0x3de100 _ZN9AISPlayerD2Ev AISPlayer::~AISPlayer() (base-object copy)
// SKIPPED: a second copy of the destructor above (same vtable stores, same vector release, same CharAIScript call).
// One C++ destructor serves both forms, so the body is defined once at 0x3dd99c.
