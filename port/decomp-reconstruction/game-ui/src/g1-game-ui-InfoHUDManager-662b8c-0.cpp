// InfoHUDManager bodies, batch g1-game-ui-InfoHUDManager-662b8c-0. Rebuilt from the Hex-Rays pseudocode of
// libDungeonHunter2.so. Offsets in comments are the original 32-bit ARM offsets; the members sit at those offsets in
// dh2/InfoHUDManager.hpp.
//
// Rebuilt in full: Draw, initCachedChars, Update, the constructors (C1 and C2) and GetInstance.
// Partial: the destructors (D1 and D2) and the other functions. The destructors have the original's body (Flush(), then
// the member destruction) but inherit the death-timer gap of Flush. Each partial function's comment says which part is
// left out.
//
// Facts used here:
//   - The C1 and C2 constructors, and the D1 and D2 destructors, have identical bodies. One definition carries both
//     addresses. The destructor's implicit member destruction runs in reverse declaration order, which is the order of
//     the original's calls (+0x54c, +0x51c, +0x4ec, +0x4bc, ... +0x0c), so it needs no body beyond Flush().
//   - Calls with the menu as receiver (menu->GotoFrame, menu->SetText, menu->SetPosition) are RenderFX members. The
//     declarations are missing from dh2/RenderFX.hpp (a placeholder), so every call of them is left out. The symbols are
//     RenderFX::GotoFrame(gameswf::character*, int, bool) (_ZN8RenderFX9GotoFrameEPN7gameswf9characterEib),
//     RenderFX::GotoFrame(gameswf::character*, char const*, bool) (_ZN8RenderFX9GotoFrameEPN7gameswf9characterEPKcb),
//     RenderFX::SetText(gameswf::character*, char const*, bool) (_ZN8RenderFX7SetTextEPN7gameswf9characterEPKcb) and
//     RenderFX::SetPosition(gameswf::character*, int, int) (_ZN8RenderFX11SetPositionEPN7gameswf9characterEii).
//   - The byte at +0x9b of gameswf::character (Hex-Rays +155) is written as character::m_visible. vendor-gameswf's
//     gameswf_scene_node reads that byte as the visibility flag.
//   - The AlliesBarDisplay argument array has six values: bool, string, level, HP percent, bar index, death seconds
//     (-1 when none). Flush passes (false, "", 0, 100, i, -1).
//   - The list buttons' get_member call (vtable +0x20, gameswf as_object::get_member) looks up the member "SlotId".
//     The name is not in the Hex-Rays text: it is the literal of the gameswf::tu_string constructor clone that
//     SlowUpdate and FastUpdate call (_ZN7gameswf9tu_stringC1EPKc.clone.1 holds "SlotId").

#include "core-platform/port_settings.hpp"
#include "dh2/global/screen_size.hpp"
#include "dh2/InfoHUDManager.hpp"

#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/global/scene_nodes.hpp"
#include "net-session-online/c_online.hpp"
#include <cstring>
#include <string>
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C, the PlayerManager instance
#include "gameswf/gameswf_character.h"       // gameswf::character (m_visible, get_member)
#include "vendor-gameswf/as_value.hpp"       // gameswf::as_value (DH2 layout)

// 0x41d56c _ZN14InfoHUDManager4DrawEv
void InfoHUDManager::Draw() {
}

// 0x41d570 _ZN14InfoHUDManager19HideLocalDeathTimerEv
// The HUD root "_root.menu_HUD_<HUDStyle>" is shown again unless a cut scene is on (ScriptManager byte 0x9a600c); the death timer
// plays its "Hide" label and is made invisible.
void InfoHUDManager::HideLocalDeathTimer() {
    char hudName[20];
    std::snprintf(hudName, sizeof hudName, "_root.menu_HUD_%d", Singleton<Application>::s_inst.GetSavedOption("HUDStyle"));
    gameswf::character* hudRoot = static_cast<gameswf::character*>(m_menu->Find(hudName));
    if (!ScriptManager::s_inst.m_inCutScene) {
        hudRoot->m_visible = true;
    }
    m_menu->GotoFrame(m_deathTimer.GetChar(), "Hide", true);
    m_deathTimer.GetChar()->m_visible = false;
}

// 0x41d658 _ZN14InfoHUDManager19ShowLocalDeathTimerEv
// The HUD root is hidden, the death timer is made visible and plays its "Show" label.
void InfoHUDManager::ShowLocalDeathTimer() {
    char hudName[20];
    std::snprintf(hudName, sizeof hudName, "_root.menu_HUD_%d", Singleton<Application>::s_inst.GetSavedOption("HUDStyle"));
    static_cast<gameswf::character*>(m_menu->Find(hudName))->m_visible = false;
    m_deathTimer.GetChar()->m_visible = true;
    m_menu->GotoFrame(m_deathTimer.GetChar(), "Show", true);
}

// 0x41d728 _ZN14InfoHUDManager18applyOneTimeValuesEv
// The joystick follows the DPad option; with a local character the HUD character image goes to the frame of its class (classes
// 290..292 give 2, 325..327 give 1, any other class 0). The original returns the local Character; the header declares void.
void InfoHUDManager::applyOneTimeValues() {
    m_joystick.GetChar()->m_visible = Singleton<Application>::s_inst.GetSavedOption("DPad") != 0;

    Character* ch = dword_99F76C->GetLocalPlayer(0, false)->unk_660;
    if (ch == nullptr) {
        return;
    }
    int classFrame = 0;
    switch (ch->SG_GetPlayerClass()) {
        case 290:
        case 291:
        case 292:
            classFrame = 2;
            break;
        case 325:
        case 326:
        case 327:
            classFrame = 1;
            break;
        default:
            classFrame = 0;
            break;
    }
    m_menu->GotoFrame(m_charMenuHudChar.GetChar(), classFrame, false);
}

// 0x41d880 _ZN14InfoHUDManager15initCachedCharsEv
void InfoHUDManager::initCachedChars() {
    if (m_menu == nullptr) {
        return;
    }

    const int savedOption = Singleton<Application>::s_inst.GetSavedOption("HUDStyle");
    char hudName[20];
    std::snprintf(hudName, sizeof hudName, "_root.menu_HUD_%d", savedOption);
    // RenderFX::Find is declared as returning as_object*. The original casts the result to a character, and the path
    // names a movie clip, so the cast is kept.
    gameswf::character* hudRoot = static_cast<gameswf::character*>(m_menu->Find(hudName));

    m_playerHpBar.RefreshCache("HUDelements.HealthBars.player.bar_hp", m_menu, hudRoot);
    m_potionDistressGlow.RefreshCache("HUDelements.HealthBars.btn_potion.DistressGlow", m_menu, hudRoot);
    m_hurtCorners.RefreshCache("_root.HurtCorners", m_menu, nullptr);
    m_playerMpBar.RefreshCache("HUDelements.HealthBars.player.bar_mp", m_menu, hudRoot);
    m_playerXpBar.RefreshCache("HUDelements.HealthBars.player.bar_xp", m_menu, hudRoot);
    m_potionCount.RefreshCache("HUDelements.HealthBars.btn_potion.cnt.value", m_menu, hudRoot);
    m_spellCoolDown.RefreshCache("HUDelements.controls.controls.btn_spell.CoolDown", m_menu, hudRoot);
    m_spellGrey.RefreshCache("HUDelements.controls.controls.btn_spell.Grey", m_menu, hudRoot);

    if (savedOption <= 1) {
        // Skill branch: btn_skill1..3 (the skill numbers are 1-based in the path).
        for (int i = 0; i != 3; ++i) {
            char path[64];
            std::snprintf(path, sizeof path, "HUDelements.controls.controls.btn_skill%d.CoolDown", i + 1);
            m_skillCoolDown[i].RefreshCache(path, m_menu, hudRoot);
            std::snprintf(path, sizeof path, "HUDelements.controls.controls.btn_skill%d.Grey", i + 1);
            m_skillGrey[i].RefreshCache(path, m_menu, hudRoot);
        }
    } else {
        // List branch: the three list buttons. Their CoolDown and Grey children use the skill slots (see the header).
        m_listBtn0.RefreshCache("HUDelements.controls.controls.list.btn_0", m_menu, hudRoot);
        m_skillCoolDown[0].RefreshCache("HUDelements.controls.controls.list.btn_0.CoolDown", m_menu, hudRoot);
        m_skillGrey[0].RefreshCache("HUDelements.controls.controls.list.btn_0.Grey", m_menu, hudRoot);
        m_listBtnPre0.RefreshCache("HUDelements.controls.controls.list.btn_pre0", m_menu, hudRoot);
        m_skillCoolDown[1].RefreshCache("HUDelements.controls.controls.list.btn_pre0.CoolDown", m_menu, hudRoot);
        m_skillGrey[1].RefreshCache("HUDelements.controls.controls.list.btn_pre0.Grey", m_menu, hudRoot);
        m_listBtnPost0.RefreshCache("HUDelements.controls.controls.list.btn_post0", m_menu, hudRoot);
        m_skillCoolDown[2].RefreshCache("HUDelements.controls.controls.list.btn_post0.CoolDown", m_menu, hudRoot);
        m_skillGrey[2].RefreshCache("HUDelements.controls.controls.list.btn_post0.Grey", m_menu, hudRoot);
    }

    m_charMenuLevelUp.RefreshCache("HUDelements.btn_charactermenu.anim_levelup", m_menu, hudRoot);
    m_joystick.RefreshCache("HUDelements.controls.controls.Joystick", m_menu, hudRoot);
    m_enemy.RefreshCache("HUDelements.HealthBars.enemy", m_menu, hudRoot);
    m_enemyName.RefreshCache("HUDelements.HealthBars.enemy.enemy_name.text", m_menu, hudRoot);
    m_enemyLevel.RefreshCache("HUDelements.HealthBars.enemy.enemy_level.value", m_menu, hudRoot);
    m_enemyHpBar.RefreshCache("HUDelements.HealthBars.enemy.HpBar.bar_hp", m_menu, hudRoot);
    m_ally0.RefreshCache("HUDelements.HealthBars.Ally0", m_menu, hudRoot);
    m_ally1.RefreshCache("HUDelements.HealthBars.Ally1", m_menu, hudRoot);
    m_ally2.RefreshCache("HUDelements.HealthBars.Ally2", m_menu, hudRoot);
    m_charMenuHudChar.RefreshCache("HUDelements.btn_charactermenu.btimg.HudChar", m_menu, hudRoot);
    m_deathTimer.RefreshCache("_root.DeathTimer", m_menu, nullptr);
    m_deathTimerText.RefreshCache("_root.DeathTimer.DeathNumberTimeMc.TimerNumber_txt", m_menu, nullptr);

    m_cachesReady = true;  // *(this + 4) = 1
}

// 0x41de54 _ZN14InfoHUDManager10SlowUpdateEv
// A list button whose SlotId is below 0 would index the as_value padding in the original. That case is not reproduced: that
// button grey flag keeps its value. A SlotId above 2 is read as 0, as in the original.
void InfoHUDManager::SlowUpdate() {
    Character* ch = dword_99F76C->GetLocalPlayer(0, false)->unk_660;
    if (ch == nullptr) {
        return;
    }

    // Usability of the three skill slots (v16[12..14] in the original).
    bool skillUsable[3] = {false, false, false};
    for (int slot = 0; slot != 3; ++slot) {
        const int skill = ch->SG_GetSkillInSlot(slot);
        if (skill != -1) {
            skillUsable[slot] = ch->AI_IsSkillUsable(static_cast<unsigned int>(skill));
        }
    }

    // The spell grey overlay is visible while the spell is not usable.
    gameswf::character* spellGrey = m_spellGrey.GetChar();
    spellGrey->m_visible = !ch->AI_IsSpellUsable();

    if (Singleton<Application>::s_inst.GetSavedOption("HUDStyle") <= 1) {
        for (int j = 0; j != 3; ++j) {
            gameswf::character* grey = m_skillGrey[j].GetChar();
            if (grey != nullptr) {
                grey->m_visible = !skillUsable[j];
            }
        }
        return;
    }

    // List branch: each list button reads its "SlotId" member; grey overlay k follows skill slot SlotId.
    DebugCachedCharacter* listButtons[3] = {&m_listBtn0, &m_listBtnPre0, &m_listBtnPost0};
    for (int k = 0; k != 3; ++k) {
        gameswf::as_value slotId;
        listButtons[k]->GetChar()->get_member("SlotId", &slotId);
        int slot = static_cast<int>(slotId.to_number());
        if (slot > 2) {
            slot = 0;
        }
        if (slot < 0) {
            continue;  // see the comment above the function
        }
        gameswf::character* grey = m_skillGrey[k].GetChar();
        if (grey != nullptr) {
            grey->m_visible = !skillUsable[slot];
        }
    }
}


// Port option (UI7, TRACK-B.md decision 15; not in the original): the enemy bar follows the targeted enemy. The original keeps
// "HUDelements.HealthBars.enemy" at its authored HUD slot and only shows/hides it; with the port setting enemybar = 1 (default) the
// clip is moved every frame so that its bottom centre sits above the enemy's head (world position + 350, the offset the ally bars
// use), in the HUD movie's stage units through the movie's box (FlashBoxOffsetX/Y, GameSWFUtils::GetInvPixelScale). When the head
// is outside the rendered screen, or there is no enemy, or enemybar = 0, the clip is put back at its authored slot.
namespace {

gameswf::character* g_enemyBarChar = nullptr;
float g_enemyBarHomeX = 0.0f, g_enemyBarHomeY = 0.0f;  // the authored local translation (twips)
bool g_enemyBarMoved = false;

void EnemyBarRestore(MenuFX* menu, gameswf::character* bar) {
    if (bar != nullptr && g_enemyBarMoved && bar == g_enemyBarChar) {
        gameswf::matrix m = bar->get_matrix();
        m.m_[0][2] = g_enemyBarHomeX;
        m.m_[1][2] = g_enemyBarHomeY;
        bar->set_matrix(m);
        g_enemyBarMoved = false;
    }
    (void)menu;
}

void EnemyBarFollow(MenuFX* menu, gameswf::character* bar, Character* enemy) {
    if (bar == nullptr || menu == nullptr) {
        return;
    }
    if (bar != g_enemyBarChar) {  // a new HUD movie: remember where the bar is authored
        g_enemyBarChar = bar;
        const gameswf::matrix home = bar->get_matrix();
        g_enemyBarHomeX = home.m_[0][2];
        g_enemyBarHomeY = home.m_[1][2];
        g_enemyBarMoved = false;
    }
    if (dh2port::Get("enemybar", 1) == 0 || enemy == nullptr) {
        EnemyBarRestore(menu, bar);
        return;
    }
    glitch::core::vector3d<float> head{enemy->m_position.X, enemy->m_position.Y, enemy->m_position.Z + 350.0f};
    glitch::core::position2d<int> screen{0, 0};
    GetScreenPosFromWorldPos(head, screen);
    if (screen.X < 0 || screen.Y < 0 || screen.X >= Width_Screen || screen.Y >= Height_Screen) {
        EnemyBarRestore(menu, bar);  // head outside the rendered screen: the authored slot
        return;
    }
    gameswf::root* root = menu->GetRoot();
    if (root == nullptr) {
        return;
    }
    const float invX = GameSWFUtils::GetInvPixelScaleX(root);
    const float invY = GameSWFUtils::GetInvPixelScaleY(root);
    // Put the bar's bottom centre 12 px above the head: offsets from the clip's translation to its bound, measured at the home position.
    gameswf::matrix m = bar->get_matrix();
    const float curX = m.m_[0][2], curY = m.m_[1][2];
    m.m_[0][2] = g_enemyBarHomeX;
    m.m_[1][2] = g_enemyBarHomeY;
    bar->set_matrix(m);
    gameswf::rect bound;
    bar->get_bound(&bound);
    const float dx = (static_cast<float>(bound.m_x_min) + static_cast<float>(bound.m_x_max)) * 0.5f - g_enemyBarHomeX;
    const float dy = static_cast<float>(bound.m_y_max) - g_enemyBarHomeY;
    // Keep the whole bar on the screen: clamp the anchor point in surface pixels by the bar's size (stage twips -> pixels).
    const float barWpx = (static_cast<float>(bound.m_x_max) - static_cast<float>(bound.m_x_min)) / 20.0f / invX;
    const float barHpx = (static_cast<float>(bound.m_y_max) - static_cast<float>(bound.m_y_min)) / 20.0f / invY + 12.0f;
    float ax = static_cast<float>(screen.X), ay = static_cast<float>(screen.Y);
    if (ax < barWpx * 0.5f) ax = barWpx * 0.5f;
    if (ax > static_cast<float>(Width_Screen) - barWpx * 0.5f) ax = static_cast<float>(Width_Screen) - barWpx * 0.5f;
    if (ay < barHpx) ay = barHpx;
    if (ay > static_cast<float>(Height_Screen)) ay = static_cast<float>(Height_Screen);
    // Stage position of the anchor in twips (the movie's own box, not the menu fit).
    const float sx = invX * (ax - static_cast<float>(FlashBoxOffsetX(root))) * 20.0f;
    const float sy = invY * (ay - static_cast<float>(FlashBoxOffsetY(root))) * 20.0f;
    // The parent's scale (HealthBars is placed in HUDelements; both carry the authored scale): head in parent space.
    gameswf::character* parent = bar->get_parent();
    float px = sx, py = sy;
    if (parent != nullptr) {
        gameswf::point p;
        parent->get_world_matrix()->transform_by_inverse(&p, gameswf::point(sx, sy));
        px = p.m_x;
        py = p.m_y;
    }
    m.m_[0][2] = px - dx;
    m.m_[1][2] = py - dy - 12.0f * 20.0f;
    (void)curX;
    (void)curY;
    bar->set_matrix(m);
    g_enemyBarMoved = true;
}

}  // namespace
// 0x41e064 _ZN14InfoHUDManager10FastUpdateEv
// With a local character: the potion text, the HP, MP, XP, distress and hurt frames, the level-up icon, the skill cooldown frames
// (HUDStyle <= 1 uses the skill buttons, otherwise the list buttons by SlotId), the spell cooldown, the online ally bars (death
// timer text and up to three AlliesBarDisplay calls) and finally the enemy bar for the AI target or object of interest.
void InfoHUDManager::FastUpdate() {
    PlayerInfo* local = dword_99F76C->GetLocalPlayer(0, false);
    Character* ch = local->unk_660;
    if (ch == nullptr) {
        return;
    }

    char text[32];
    std::snprintf(text, sizeof text, "%d", ch->GetNumPotions());
    m_menu->SetText(m_potionCount.GetChar(), text, false);

    // Property sheet words: HP m_w37 / total m_w39, MP m_w42 / total m_w44, XP m_w34 / next m_w35 (Character +0x1088, +0x1090,
    // +0x109c, +0x10a4, +0x107c, +0x1080).
    const int hpFrameRaw = 100 * ch->m_props.HP / ch->m_props.Max_HP;
    int hpFrame = hpFrameRaw - 1;
    hpFrame = hpFrame & ~(hpFrame >> 31);
    int mpFrame = 100 * ch->m_props.MP / ch->m_props.Max_MP - 1;
    int xpFrame = 100 * ch->m_props.XP / ch->m_props.Max_XP;
    if (xpFrame >= 99) {
        xpFrame = 99;
    }
    if (hpFrame >= 99) {
        hpFrame = 99;
    }
    m_menu->GotoFrame(m_playerHpBar.GetChar(), hpFrame, false);
    if (mpFrame >= 99) {
        mpFrame = 99;
    }
    m_menu->GotoFrame(m_playerMpBar.GetChar(), mpFrame, false);
    m_menu->GotoFrame(m_playerXpBar.GetChar(), xpFrame, false);
    m_menu->GotoFrame(m_potionDistressGlow.GetChar(), hpFrame, false);
    m_menu->GotoFrame(m_hurtCorners.GetChar(), hpFrame, false);

    m_charMenuLevelUp.GetChar()->m_visible = ch->PROPS_GetInt(148, false) != 0;

    // Cooldown of the three skill slots as floats (0 for an empty slot or a missing script).
    float cooldown[3] = {0.0f, 0.0f, 0.0f};
    for (int slot = 0; slot != 3; ++slot) {
        const int skill = ch->SG_GetSkillInSlot(slot);
        if (skill != -1) {
            CharAISkillScript* script = ch->m_skillScripts[skill];  // CharAI +0xb4
            if (script != nullptr) {
                cooldown[slot] = script->GetCooldown();
            }
        }
    }
    auto cooldownFrame = [](float value) {
        const int frame = static_cast<int>(value * 100.0) - 1;
        return frame & ~(frame >> 31);
    };
    if (Singleton<Application>::s_inst.GetSavedOption("HUDStyle") <= 1) {
        for (int i = 0; i != 3; ++i) {
            m_menu->GotoFrame(m_skillCoolDown[i].GetChar(), cooldownFrame(cooldown[i]), false);
        }
    } else {
        DebugCachedCharacter* listButtons[3] = {&m_listBtn0, &m_listBtnPre0, &m_listBtnPost0};
        for (int k = 0; k != 3; ++k) {
            gameswf::as_value slotId;
            listButtons[k]->GetChar()->get_member("SlotId", &slotId);
            unsigned int slot = static_cast<unsigned int>(static_cast<int>(slotId.to_number()));
            if (slot > 2) {
                slot = 0;
            }
            m_menu->GotoFrame(m_skillCoolDown[k].GetChar(), cooldownFrame(cooldown[slot]), false);
        }
    }
    if (!ch->m_skillScripts.empty() && ch->m_skillScripts[0] != nullptr && !ch->m_spellScripts.empty()) {
        m_menu->GotoFrame(m_spellCoolDown.GetChar(), cooldownFrame(ch->m_spellScripts[0]->GetCooldown()), false);
    }

    if (GetOnline()->IsOnlineGame()) {
        PlayerManager* players = dword_99F76C;
        PlayerInfo* localPlayer = players->GetLocalPlayer(0, false);
        if (localPlayer->m_characterDeathTimer.GetValue() >= 0) {
            std::snprintf(text, sizeof text, "%d", localPlayer->m_characterDeathTimer.GetValue() / 1000);
            m_menu->SetText(m_deathTimerText.GetChar(), text, false);
        }
        DebugCachedCharacter* allies[3] = {&m_ally0, &m_ally1, &m_ally2};
        int allyIndex = 0;
        int playerCursor = 0;
        const int numPlayers = players->GetNumPlayers();
        while (true) {
            gameswf::character* allyChar = allies[allyIndex]->GetChar();
            std::string name;
            bool present = false;
            int level = 0;
            int frame = 0;
            int seconds = -1;
            bool skipSlot = false;
            if (playerCursor < numPlayers) {
                PlayerInfo* player = players->GetPlayer(playerCursor, false);
                if (player->IsLocal()) {
                    ++playerCursor;
                    skipSlot = true;
                } else {
                    Character* allyCharacter = player->unk_660;
                    if (allyCharacter != nullptr && player->m_ingame.GetValue()) {
                        level = player->m_characterLevel.GetValue();
                        name = player->m_characterName.GetValue();
                        int percent = static_cast<int>(allyCharacter->GetHPPercent() * 100.0) - 1;
                        if (percent >= 99) {
                            percent = 99;
                        }
                        frame = percent & ~(percent >> 31);
                        const int deathTimer = player->m_characterDeathTimer.GetValue();
                        seconds = deathTimer < 0 ? -1 : deathTimer / 1000;
                        ++playerCursor;
                        glitch::core::vector3d<float> world{allyCharacter->m_position.X, allyCharacter->m_position.Y,
                                                            allyCharacter->m_position.Z + 350.0f};
                        glitch::core::position2d<int> screen{0, 0};
                        GetScreenPosFromWorldPos(world, screen);
                        gameswf::root* swfRoot = m_menu->GetRoot();
                        const float invX = GameSWFUtils::GetInvPixelScaleX(swfRoot);
                        const float invY = GameSWFUtils::GetInvPixelScaleY(swfRoot);
                        m_menu->SetPosition(allyChar, static_cast<int>(invX * static_cast<float>(screen.X - FlashBoxOffsetX(swfRoot))),
                                            static_cast<int>(invY * static_cast<float>(screen.Y - FlashBoxOffsetY(swfRoot))));
                        present = true;
                    }
                }
            }
            if (!skipSlot) {
                gameswf::as_value args[6];
                args[0].set_bool(present);
                args[1].set_string(StringManager::formatForMulti(name, true).c_str());
                args[2].set_double(static_cast<double>(level));
                args[3].set_double(static_cast<double>(frame));
                args[4].set_double(static_cast<double>(allyIndex));
                args[5].set_double(static_cast<double>(seconds));
                m_menu->InvokeASCallback(m_menu->GetFlashRoot(), "AlliesBarDisplay", args, 6);
                ++allyIndex;
            }
            if (allyIndex > 2) {
                break;
            }
        }
    }

    // Enemy bar.
    bool monsterTarget = false;  // v38 in the original
    if (!ch->IsDead()) {
        GameObject* objectOfInterest = ch->m_objectOfInterest;
        if (objectOfInterest != nullptr && objectOfInterest->IsCharacter() &&
            static_cast<Character*>(objectOfInterest)->IsMonster()) {
            monsterTarget = true;
        }
    }

    Character* enemy = nullptr;  // v40 in the original
    Character* aiTarget = ch->AI_GetTargetAsCharacter();
    if (aiTarget != nullptr && aiTarget->IsMonster()) {
        enemy = aiTarget;
    } else if (monsterTarget) {
        enemy = static_cast<Character*>(ch->m_objectOfInterest);
    }

    if (enemy != nullptr) {
        if (enemy != m_lastEnemy) {
            m_lastEnemy = enemy;
            const char* nameText = ApplicationGetStringManager()->getString(enemy->m_props.Name);  // Character +0x1040
            char levelText[32];
            if (enemy->IsBoss() || enemy->GetLevel() == -1) {
                std::strcpy(levelText, "??");
            } else {
                std::snprintf(levelText, sizeof levelText, "%d", enemy->GetLevel());
            }
            m_enemy.GetChar()->m_visible = true;
            m_menu->GotoFrame(m_enemy.GetChar(), "Show", false);
            DebugSwitches::GetInstance()->load();
            if (DebugSwitches::GetInstance()->GetSwitch("ShowMonstersNamesAndNetID")) {
                std::snprintf(levelText, sizeof levelText, "%d", enemy->unk_108);
                m_menu->SetText(m_enemyName.GetChar(), enemy->m_name.c_str(), false);
                m_menu->SetText(m_enemyLevel.GetChar(), levelText, false);
            } else {
                m_menu->SetText(m_enemyName.GetChar(), nameText, false);
                m_menu->SetText(m_enemyLevel.GetChar(), levelText, false);
            }
        }

        // The enemy HP frame is the HP percent times 100 (as a float), capped at 100, minus one.
        int enemyFrame = static_cast<int>(enemy->GetHPPercent() * 100.0);
        if (enemyFrame >= 100) {
            enemyFrame = 100;
        }
        m_menu->GotoFrame(m_enemyHpBar.GetChar(), enemyFrame - 1, false);
        EnemyBarFollow(m_menu, m_enemy.GetChar(), enemy);  // UI7 port option
        return;
    }

    // No enemy: hide the bar once.
    if (m_lastEnemy != nullptr) {
        m_lastEnemy = nullptr;
        EnemyBarRestore(m_menu, m_enemy.GetChar());  // UI7
        m_enemy.GetChar()->m_visible = false;
        m_menu->GotoFrame(m_enemyHpBar.GetChar(), 0, false);
        m_menu->GotoFrame(m_enemy.GetChar(), "Hide", false);
    }
}

// 0x41ec00 _ZN14InfoHUDManager6UpdateEv
void InfoHUDManager::Update() {
    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    if ((level != nullptr && !level->m_isInGameView) || m_menu == nullptr) {
        return;
    }

    if (!m_cachesReady) {
        initCachedChars();
        applyOneTimeValues();
        // The original stores the old m_cachesReady byte here, which is 0 on this path, into +0x00.
        m_lastEnemy = nullptr;
    }

    if (m_slowUpdateTimer >= 0) {
        m_slowUpdateTimer -= Singleton<Application>::s_inst.GetDt();
        FastUpdate();
        return;
    }

    m_slowUpdateTimer = 500;
    SlowUpdate();
    FastUpdate();
}

// 0x41ecb0 _ZN14InfoHUDManagerC1Ev and 0x41ee58 _ZN14InfoHUDManagerC2Ev
// The two constructors have identical bodies; this one stands for both. The DebugCachedCharacter members are
// default-constructed in declaration order, the same order as the original's calls (+0x0c .. +0x54c).
InfoHUDManager::InfoHUDManager() {
    m_lastEnemy = nullptr;   // +0x00: the original does not write it here; the port clears it
    m_slowUpdateTimer = -1;  // +0x08
    m_cachesReady = false;   // +0x04
    m_menu = nullptr;        // +0x57c
}

// 0x41edd0 _ZN14InfoHUDManager11GetInstanceEv
InfoHUDManager* InfoHUDManager::GetInstance() {
    static InfoHUDManager s_singleton;
    return &s_singleton;
}

// 0x41ef78 _ZN14InfoHUDManager5FlushEv
// With a loaded level: the three ally bars are cleared (AlliesBarDisplay with false, "", 0, 100, i, -1), the enemy bar hidden, and
// the death timer: a cached character with a live proxy plays "Hide" and is made invisible, a cached character with a dead proxy
// releases the proxy and clears the cache.
void InfoHUDManager::Flush() {
    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    if (level == nullptr || !level->m_isLoaded) {
        return;
    }

    // Three AlliesBarDisplay calls that clear the ally slots: (false, "", 0, 100, i, -1).
    for (int i = 0; i != 3; ++i) {
        gameswf::as_value args[6];
        args[0].set_bool(false);
        args[1].set_string("");
        args[2].set_double(0.0);
        args[3].set_double(100.0);
        args[4].set_double(i);
        args[5].set_double(-1.0);
        m_menu->InvokeASCallback(m_menu->GetFlashRoot(), "AlliesBarDisplay", args, 6);
    }

    m_enemy.GetChar()->m_visible = false;
    if (m_deathTimer.m_character != nullptr) {  // +0x2c
        if (m_deathTimer.m_characterProxy.get_proxy()->is_alive()) {
            m_menu->GotoFrame(m_deathTimer.GetChar(), "Hide", true);
            m_deathTimer.GetChar()->m_visible = false;
        } else {
            m_deathTimer.m_characterProxy = nullptr;
            m_deathTimer.m_character = nullptr;
        }
    }
}

// 0x41f16c _ZN14InfoHUDManagerD1Ev and 0x41f29c _ZN14InfoHUDManagerD2Ev
// The two destructors have identical bodies; this one stands for both. The original calls Flush(this) first, then destroys the 29
// DebugCachedCharacter members in reverse offset order (+0x54c .. +0x0c). The implicit member destruction below runs in reverse
// declaration order, which is that same order. The original also tests this + offset against the constants -12, -684, -540 and
// -396 before four member groups; for a live object those tests always pass, so they are not written.
InfoHUDManager::~InfoHUDManager() {
    Flush();
}
