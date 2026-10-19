// InfoHUDManager: singleton that drives the status HUD on the HUD SWF: the health, mana and experience bars,
// the potion count, the skill cooldown and grey overlays, the enemy bar, the ally bars and the death timer.
// Every element is a DebugCachedCharacter, found by path once the weak pointer dies. No vtable and no base.
// Original 32-bit size at least 0x580 (1408): the last member recovered here ends at that offset.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x41ecb0 / 0x41ee58, initCachedChars 0x41d880,
// Update 0x41ec00, FastUpdate 0x41e064, SlowUpdate 0x41de54).
#pragma once

#include <cstdint>

#include "dh2/DebugCachedCharacter.hpp"

class Character;
class MenuFX;

class InfoHUDManager {
public:
    InfoHUDManager();                                                   // 0x41ecb0 (C1), 0x41ee58 (C2)
    ~InfoHUDManager();                                                  // 0x41f16c (D1), 0x41f29c (D2)

    static InfoHUDManager* GetInstance();                               // 0x41edd0

    void Draw();                                                        // 0x41d56c, empty
    void Flush();                                                       // 0x41ef78
    void Update();                                                      // 0x41ec00
    void SlowUpdate();                                                  // 0x41de54
    void FastUpdate();                                                  // 0x41e064
    void ShowLocalDeathTimer();                                         // 0x41d658
    void HideLocalDeathTimer();                                         // 0x41d570
    void applyOneTimeValues();                                          // 0x41d728
    void initCachedChars();                                             // 0x41d880

    Character* m_lastEnemy;                                             // +0x00 the enemy shown on the enemy bar: FastUpdate compares and stores it, Update clears it on a cache rebuild
    bool m_cachesReady;                                                 // +0x04 set at the end of initCachedChars
    uint8_t pad_05[3];                                                  // +0x05 .. +0x07
    std::int32_t m_slowUpdateTimer;                                     // +0x08 ms until the next SlowUpdate, -1 at construction
    // Cached HUD elements, 48 bytes each from +0x0c. Paths are the originals (see initCachedChars).
    DebugCachedCharacter m_playerHpBar;                                 // +0x0c "HUDelements.HealthBars.player.bar_hp"
    DebugCachedCharacter m_potionDistressGlow;                          // +0x3c "HUDelements.HealthBars.btn_potion.DistressGlow"
    DebugCachedCharacter m_hurtCorners;                                 // +0x6c "_root.HurtCorners"
    DebugCachedCharacter m_playerMpBar;                                 // +0x9c "HUDelements.HealthBars.player.bar_mp"
    DebugCachedCharacter m_playerXpBar;                                 // +0xcc "HUDelements.HealthBars.player.bar_xp"
    DebugCachedCharacter m_potionCount;                                 // +0xfc "HUDelements.HealthBars.btn_potion.cnt.value"
    DebugCachedCharacter m_spellCoolDown;                               // +0x12c "HUDelements.controls.controls.btn_spell.CoolDown"
    DebugCachedCharacter m_spellGrey;                                   // +0x15c "HUDelements.controls.controls.btn_spell.Grey"
    DebugCachedCharacter m_listBtn0;                                    // +0x18c "HUDelements.controls.controls.list.btn_0" (list branch)
    DebugCachedCharacter m_listBtnPre0;                                 // +0x1bc "HUDelements.controls.controls.list.btn_pre0" (list branch)
    DebugCachedCharacter m_listBtnPost0;                                // +0x1ec "HUDelements.controls.controls.list.btn_post0" (list branch)
    // +0x21c .. +0x2ab: btn_skill1..3.CoolDown (skill branch, HUDStyle <= 1). The list branch uses the same slots
    // for list.btn_0, list.btn_pre0 and list.btn_post0 .CoolDown.
    DebugCachedCharacter m_skillCoolDown[3];                            // +0x21c
    // +0x2ac .. +0x33b: btn_skill1..3.Grey (skill branch). The list branch uses the same slots for the .Grey of the list buttons.
    DebugCachedCharacter m_skillGrey[3];                                // +0x2ac
    DebugCachedCharacter m_charMenuLevelUp;                             // +0x33c "HUDelements.btn_charactermenu.anim_levelup"
    DebugCachedCharacter m_joystick;                                    // +0x36c "HUDelements.controls.controls.Joystick"
    DebugCachedCharacter m_enemy;                                       // +0x39c "HUDelements.HealthBars.enemy"
    DebugCachedCharacter m_enemyName;                                   // +0x3cc "HUDelements.HealthBars.enemy.enemy_name.text"
    DebugCachedCharacter m_enemyLevel;                                  // +0x3fc "HUDelements.HealthBars.enemy.enemy_level.value"
    DebugCachedCharacter m_enemyHpBar;                                  // +0x42c "HUDelements.HealthBars.enemy.HpBar.bar_hp"
    DebugCachedCharacter m_charMenuHudChar;                             // +0x45c "HUDelements.btn_charactermenu.btimg.HudChar"
    DebugCachedCharacter m_deathTimer;                                  // +0x48c "_root.DeathTimer"
    DebugCachedCharacter m_deathTimerText;                              // +0x4bc "_root.DeathTimer.DeathNumberTimeMc.TimerNumber_txt"
    DebugCachedCharacter m_ally0;                                       // +0x4ec "HUDelements.HealthBars.Ally0"
    DebugCachedCharacter m_ally1;                                       // +0x51c "HUDelements.HealthBars.Ally1"
    DebugCachedCharacter m_ally2;                                       // +0x54c "HUDelements.HealthBars.Ally2"
    // The HUD MenuFX. Update does nothing while it is null (the ctor clears it). Passed to every RefreshCache and RenderFX call.
    MenuFX* m_menu;                                                     // +0x57c
};
