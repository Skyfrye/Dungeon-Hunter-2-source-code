// MenuBase bodies, batch g1-game-ui-MenuBase-8948cc-3 (part 4 of 5 of MenuBase): the FSCommand handlers FS_AssignPoint
// through FS_StopMusic, the destructor, SetVisible, the slide and dead-zone registration, ProcessLocalization, the hit
// test and the two event hooks PostOnEvent and OnEvent. Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so.
// Offsets in comments are the original 32-bit ARM offsets. Partial functions say in their comment which part is missing.
//
// Facts shared by the bodies:
//   - A handler is (command, args, menu). static_cast<MenuBase*>(menu)->m_menu (State +0x04) is the owning MenuFX.
//   - The Application singleton is ApplicationGetInstance() (dh2/global/ctrl_camera.hpp). The Hex-Rays globals are its
//     fields: dword_99F76C = m_playerManager (+0x40), dword_99F778 = m_savegameManager (+0x4c).
//   - PlayerManager::GetLocalPlayerCharacter() (0x330794) has the body GetLocalPlayer(this, 0, 1)->character_660, which
//     is the local Character every handler here reads. The handlers call it.
//   - The "isTracingMenuBase" switch is read at each trace point only for the DebugSwitches file load, since every
//     use drops the result. TraceMenuBaseSwitch below performs that load and lookup.
//   - The menu's context is a gameswf::weak_ptr<character> pair: a proxy at +0x48 (MenuFX::State::m_characterProxy, a
//     gameswf weak_proxy whose m_alive byte is at +0x04, base/weak_ptr.h) and the cached character at +0x4c (m_character).
//     The alive test is weak_proxy::is_alive. The release (count drop at +0x00, then free) is not reproduced, because the
//     count is private and the free is gameswf::free_internal; the functions that release it are PARTIAL.
//   - RenderFX::SetMember (dh2/RenderFX.hpp) publishes _root.retval. IsAnimOver, FindCharacters, SetContext,
//     GetSearchIndex, SearchIndex::Find, FormatHTML, the RenderFX::Event fields, VoxSoundManager and nativeOpenBrowser
//     are not declared in this tree. Their calls are left out and marked PARTIAL.
//   - LC_API_STRCMP_0 is strcmp (0 when equal), LC_API_ATOI_0 is atoi.
//   - The State base releases its two proxies (+0x50, then +0x48) after ~MenuBase. That is MenuFX::State::~State.
//   - The local Character (dh2/Character.hpp) and its ItemInventory and CharProperties bases compile together with
//     PlayerManager.hpp and the pydata structs. The character handlers use its members directly.

#include <array>
#include <cstdint>
#include <new>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "base/weak_ptr.h"
#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/SlideEventCharacter.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuCharacterSelect.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "gameswf/gameswf.h"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "vox-audio/vox/sound_manager.hpp"

// 0x532c48 (core-platform/tb/android_jni_platform.hpp conflicts with the vox-audio declarations, so it is declared here).
extern "C" void nativeOpenBrowser(const char* url);

namespace {

// The "isTracingMenuBase" switch. The original calls DebugSwitches::load on its singleton and then reads the switch at
// every trace point, dropping the result. GetInstance() returns the same singleton and loads the file on first use, so
// the first call here may load the file once more. The lookup has no other effect.
void TraceMenuBaseSwitch() {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    static_cast<void>(switches->GetSwitch("isTracingMenuBase"));
}

}  // namespace

// 0x4219b8 _ZN8MenuBase14FS_AssignPointEPKcS1_Pv
// Adds one point to the local Character's stat named by args: "Str" (IncStatStr), "Dex" (IncStatDex), "End"
// (IncStatEnd) or "Eng" (IncStatNrg). False without a local Character, and false for any other name.
bool MenuBase::FS_AssignPoint(const char*, const char* args, void*) {
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter();
    if (character == nullptr || args == nullptr) {
        return false;
    }
    if (std::strcmp(args, "Str") == 0) {
        character->IncStatStr();
    } else if (std::strcmp(args, "Dex") == 0) {
        character->IncStatDex();
    } else if (std::strcmp(args, "End") == 0) {
        character->IncStatEnd();
    } else if (std::strcmp(args, "Eng") == 0) {
        character->IncStatNrg();
    } else {
        return false;
    }
    return true;
}

// 0x421aac _ZN8MenuBase16FS_GetNumPotionsEPKcS1_Pv
// Publishes the local Character's potion count (ItemInventory base, Character +0x37c) as the number _root.retval of the
// menu, and returns true. Without a local Character it returns false and publishes nothing.
bool MenuBase::FS_GetNumPotions(const char*, const char*, void* menu) {
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter();
    if (character == nullptr) {
        return false;
    }
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", character->ItemInventory::GetNumPotions());
    return true;
}

// 0x421b58 _ZN8MenuBase12FS_GetOptionEPKcS1_Pv
// Publishes the savegame option named args + 7 (the 7 leading characters are skipped; the original does not check the
// length of args) as the number _root.retval. A null args returns false. Otherwise returns true.
bool MenuBase::FS_GetOption(const char*, const char* args, void* menu) {
    if (args == nullptr) {
        return false;
    }
    const int value = ApplicationGetInstance().m_savegameManager->getOption(args + 7);
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", value);
    return true;
}

// 0x421ce0 _ZN8MenuBase11FS_IncSkillEPKcS1_Pv
// The original adds one level to the local Character's skill numbered atoi(args) (Character::IncSkill(skill, false)),
// then publishes that skill's new level as text in _root.retval. The text buffer is 12 bytes: the original's 4-byte
// sprintf buffer overflows for four-digit levels. A null or empty args returns false. Otherwise returns true, as the
// original does on every path.
bool MenuBase::FS_IncSkill(const char*, const char* args, void* menu) {
    if (args == nullptr || *args == '\0') {
        return false;
    }
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayerCharacter();
    if (character != nullptr) {
        const int skill = std::atoi(args);  // the original calls atoi(args) again for the level; atoi has no effect
        character->IncSkill(skill, false);
        const int level = character->SG_GetSkillLevel(static_cast<unsigned int>(skill));
        char text[12];
        std::snprintf(text, sizeof(text), "%d", level);
        static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", text);
    }
    return true;
}

// 0x421fe0 _ZN8MenuBase6UpdateEv
// Calls RenderFX::IsAnimOver(m_menu, context) on the current context and, when the animation is over, increments
// m_animOverCount (+0x78).
void MenuBase::Update() {
    gameswf::character* context = GetCurrentMenuContext();
    if (m_menu->IsAnimOver(context)) {
        ++m_animOverCount;
    }
}

// 0x42204c _ZNK8MenuBase21GetCurrentMenuContextEv
// Returns the cached context m_character while its proxy (+0x48) is alive. The alive test is weak_proxy::is_alive
// (base/weak_ptr.h). When the proxy is dead, the proxy is released (weak_proxy::drop_ref, which frees it at count zero),
// both members are cleared, and null is returned. The original writes through this (the header declares it const), so
// the members are written through a const_cast.
gameswf::character* MenuBase::GetCurrentMenuContext() const {
    if (m_character == nullptr) {
        return nullptr;
    }
    if (!static_cast<weak_proxy*>(m_characterProxy)->is_alive()) {
        MenuBase* self = const_cast<MenuBase*>(this);
        static_cast<weak_proxy*>(self->m_characterProxy)->drop_ref();
        self->m_characterProxy = nullptr;
        self->m_character = nullptr;
        return nullptr;
    }
    return m_character;
}

// 0x4220a0 _ZN8MenuBase12FS_StartGameEPKcS1_Pv
// Unless args is "false", the original closes the menu stack (MenuFX::PopAll on m_menu). It then reads the last save slot
// (SavegameManager::m_lastSlot; -1 becomes 0 and is stored back), deletes an existing save in that slot, and builds a
// PlayerSavegame for it (load mode 1). The new save takes the menu's player name (the menu's string at +0x94 is the
// data pointer of m_playerName, the std::string at +0x80: a std::string keeps its data pointer at +0x14, as the
// PlayerSavegame name pointer at +0x2c does), the class id of MenuCharacterSelect (+0x164), player level 1 and the save
// date. For the current difficulty its entry point is 0 and its level id is 41 (the words at +0x40 and +0x50 + 4*difficulty
// of PlayerSavegame). The save is written. Unless args is "false", Application::LoadLevel then starts the level named by
// the Arrays::LevelList entry of that level id (the name pointer at +0x20 of the entry, LevelDeclaration::m_w8), with the
// save's slot, not resumed, and the spawn point in use. Returns true as in the original.
bool MenuBase::FS_StartGame(const char*, const char* args, void* menu) {
    MenuBase* self = static_cast<MenuBase*>(menu);
    const bool closeMenus = args == nullptr || std::strcmp(args, "false") != 0;
    if (closeMenus) {
        self->m_menu->PopAll();
    }
    SavegameManager* savegameManager = ApplicationGetInstance().m_savegameManager;
    if (savegameManager->m_lastSlot == -1) {
        savegameManager->m_lastSlot = 0;
    }
    const auto slot = static_cast<std::uint32_t>(savegameManager->m_lastSlot);
    if (PlayerSavegame::SG_Exists(slot)) {
        PlayerSavegame::SG_Delete(slot);
    }
    PlayerSavegame save(slot, 1, false);
    const int classMemberId = MenuCharacterSelect::GetInstance()->m_classMemberId;
    save.m_name.assign(self->m_playerName.c_str());
    save.m_playerLevel = 1;
    save.m_playerClass = classMemberId;
    save.SG_SetSaveDate();
    const int difficulty = PlayerSavegame::m_difficultyLevel;
    save.unk_50[difficulty] = 41;
    save.m_levelEntryPoint[difficulty] = 0;
    save.SG_Save();
    if (closeMenus) {
        const auto* levels =
            static_cast<const Structs::LevelDeclaration*>(static_cast<const void*>(Arrays::LevelList::members));
        const char* levelName = static_cast<const char*>(levels[save.unk_50[difficulty]].LevelFile);
        ApplicationGetInstance().LoadLevel(levelName, save.m_levelEntryPoint[difficulty], save.m_slot, false, true, 0,
                                           false, 0, 0);
    }
    return true;
}

// 0x422280 _ZN8MenuBase16FS_SetPlayerNameEPKcS1_Pv
// Sets the player name (m_playerName, +0x80). A null args sets "Bobb", a 4-character literal: the assembly passes its
// end pointer as aBobb+4. Returns true.
bool MenuBase::FS_SetPlayerName(const char*, const char* args, void* menu) {
    MenuBase* self = static_cast<MenuBase*>(menu);
    self->m_playerName.assign(args != nullptr ? args : "Bobb");
    return true;
}

// 0x4222d8 _ZN8MenuBase16FS_SetDifficultyEPKcS1_Pv
// Sets the difficulty name (m_difficultyName, +0x9c) to args. The original takes strlen(args) without a null test; a
// null args is treated as the empty string here. Returns true.
bool MenuBase::FS_SetDifficulty(const char*, const char* args, void* menu) {
    static_cast<MenuBase*>(menu)->m_difficultyName.assign(args != nullptr ? args : "");
    return true;
}

// 0x422304 _ZN8MenuBase12FS_StopMusicEPKcS1_Pv
// Stops the music unless the main menu's context is on the menu stack. The context is taken through
// GetCurrentMenuContext, so a dead proxy counts as no context, as in the original (which then stops the music).
// Returns false when the context is on the stack, true otherwise (after stopping the music).
bool MenuBase::FS_StopMusic(const char*, const char*, void*) {
    MenuBase* mainMenu = MenuManager::GetInstance()->GetMenuByName("menu_MainMenu");
    if (mainMenu != nullptr) {
        gameswf::character* context = mainMenu->GetCurrentMenuContext();
        if (context != nullptr) {
            MenuFX::State* handler = mainMenu->m_menu->GetStateHandler(context);
            if (handler != nullptr && mainMenu->m_menu->IsStateInStack(handler)) {
                return false;
            }
        }
    }
    VoxSoundManager::s_instance->StopMusic(0);
    return true;
}

// 0x4223bc _ZN8MenuBase10SetVisibleEb
// Sets the visible flag (m_visible, +0x74) when the menu is valid (virtual IsValidMenu, slot +0x3c). The original also
// writes the flag to byte +0x9b of the context character (the menu's movie clip). That write is made here when a
// context exists; with no context the original would write through a null pointer, so it is skipped.
void MenuBase::SetVisible(bool visible) {
    if (IsValidMenu()) {
        if (gameswf::character* context = GetCurrentMenuContext()) {
            context->m_visible = visible;  // byte +0x9b of the 32-bit layout (typed: the raw offset is wrong on the host object)
        }
        m_visible = visible;
    }
}

// 0x422620 _ZN8MenuBase18RegisterSlideEventEv
// Clears the slide events, then, for each character RenderFX::FindCharacters(m_menu, context, "slide_", 0) returns,
// appends a new SlideEventCharacter (44 bytes, from CustomAlloc like the original) to m_slideEvents. Nothing is added
// when there is no live context.
void MenuBase::RegisterSlideEvent() {
    ClearSlideEvents();
    gameswf::character* context = GetCurrentMenuContext();
    if (context == nullptr) {
        return;
    }
    RenderFX::CharacterArray* found = m_menu->FindCharacters(context, "slide_", 0);
    for (int i = 0; i < found->count; ++i) {
        void* memory = CustomAlloc(0x2C);
        m_slideEvents.push_back(new (memory) SlideEventCharacter(found->data[i]));
    }
}

// 0x422824 _ZN8MenuBaseD1Ev
// Complete-object destructor. Clears the slide events, then destroys the DragAndDrop (its destructor, then CustomFree).
// The members that follow are released implicitly in reverse declaration order, as in the original: m_deadZones (+0xb8),
// m_difficultyName (+0x9c), m_playerName (+0x80), the list at +0x6c, and the m_slideEvents storage at +0x60.
// The original releases the two weak_ptr proxies of MenuFX::State inside this destructor, before the State base runs:
// the saved-focus proxy (+0x50) first, then the character proxy (+0x48). Each release is weak_proxy::drop_ref. The State
// destructor in MenuFX batch 0 releases nothing, so the releases are not repeated there.
MenuBase::~MenuBase() {
    ClearSlideEvents();
    if (m_dragAndDrop != nullptr) {
        m_dragAndDrop->~DragAndDrop();
        CustomFree(m_dragAndDrop);
        m_dragAndDrop = nullptr;
    }
    // Host-found double release (guard-page heap run of the new-game path): the C++ State base destructor (~State, MenuFX batch 0) runs after this body
    // and releases the same two weak_ptr<character> members again (operator=(nullptr) drops the proxy a member still holds), so the proxy count went
    // below zero and the proxy was freed while other weak_ptrs still pointed at it. The members are cleared after the release, as the binary's inlined
    // copy of ~State leaves them, so the base destructor finds nothing left to release.
    if (m_savedFocusProxy != nullptr) {
        static_cast<weak_proxy*>(m_savedFocusProxy)->drop_ref();
        m_savedFocusProxy = nullptr;
        m_savedFocus = nullptr;
    }
    if (m_characterProxy != nullptr) {
        static_cast<weak_proxy*>(m_characterProxy)->drop_ref();
        m_characterProxy = nullptr;
        m_character = nullptr;
    }
}

// 0x422958 _ZN8MenuBaseD0Ev
// Compiler-generated deleting destructor: runs ~MenuBase and frees the object with CustomFree. The C++ delete expression
// produces it, so it is not written here.

// 0x422974 _ZN8MenuBaseD2Ev
// Second emitted copy of the 0x422824 body (identical bytes, the base-object variant). One C++ destructor covers both.
// Same omission as 0x422824: the proxy releases in MenuFX::State::~State. Not a separate function in C++.

// 0x422d10 _ZN8MenuBase19ProcessLocalizationEv
// With a live menu context: for the string sheets 19, 20 and 28, the context is set on m_menu and each localized string of the
// symbol pack is looked up under the menu name in three forms: "<name>.btn_<str>.text", "<name>.<str>.text" and "<name>.<str>".
// Every found character that is a text field (character virtual is(32)) gets RenderFX::FormatHTML(character, "%s", string,
// true). m_isLocalised (+0x75) is set at the end. A dead context is released instead.
void MenuBase::ProcessLocalization() {
    if (GetCurrentMenuContext() == nullptr) {
        return;
    }
    TraceMenuBaseSwitch();
    StringManager* strings = ApplicationGetStringManager();
    for (int sheet = 0; sheet != 37; ++sheet) {
        if (!(sheet == 28 || sheet == 20 || sheet == 19)) {
            continue;
        }
        (void)strings->getStringIdx(sheet, 0, static_cast<unsigned int>(strings->getSymbolPack()));
        m_menu->SetContext(GetCurrentMenuContext());
        RenderFX::SearchIndex* index = m_menu->GetSearchIndex();
        for (int i = 0;; ++i) {
            const int pack = strings->getSymbolPack();
            if (i >= strings->getNumberOfStrings(sheet, pack)) {
                break;
            }
            const char* key = strings->getStringIdx(sheet, i, static_cast<unsigned int>(strings->getSymbolPack()));
            char path[512];
            std::snprintf(path, sizeof path, "%s.btn_%s.%s", m_name, key, "text");
            gameswf::character* found = index->Find(path);
            if (found == nullptr) {
                std::snprintf(path, sizeof path, "%s.%s.%s", m_name, key, "text");
                found = index->Find(path);
            }
            if (found == nullptr) {
                std::snprintf(path, sizeof path, "%s.%s", m_name, key);
                found = index->Find(path);
            }
            if (found != nullptr) {
                if (found->is(32)) {
                    TraceMenuBaseSwitch();
                    m_menu->FormatHTML(found, "%s", strings->getStringIdx(sheet, i), 1);
                }
            }
        }
    }
    m_isLocalised = true;  // +0x75
}

// 0x423098 _ZNK8MenuBase14HasHitDeadZoneEii
// True when the point (x, y) lies inside a dead zone (xmin <= x <= xmax and ymin <= y <= ymax, the rect's float order).
// The trace point runs only on a hit.
bool MenuBase::HasHitDeadZone(int x, int y) const {
    const float fx = static_cast<float>(x);
    const float fy = static_cast<float>(y);
    for (const gameswf::rect& zone : m_deadZones) {
        if (fx < zone.m_x_min || fx > zone.m_x_max || fy < zone.m_y_min || fy > zone.m_y_max) {
            continue;
        }
        TraceMenuBaseSwitch();
        return true;
    }
    return false;
}

// 0x4231b4 _ZN8MenuBase11PostOnEventERN8RenderFX5EventE
// Consumes the current event when it lies on a dead zone. Nothing happens while no event is being handled
// (MenuManager::m_currentEvent, +0xb4, is null). The raw event position comes from MenuManager.
void MenuBase::PostOnEvent(RenderFX::Event&) {
    MenuManager* manager = MenuManager::GetInstance();
    if (manager->m_currentEvent == nullptr) {
        return;
    }
    int x = 0;
    int y = 0;
    manager->GetRawCurrentEventPosition(x, y);
    if (HasHitDeadZone(x, y)) {
        MenuManager::GetInstance()->consumeEvent();
    }
}

// 0x423214 _ZN8MenuBase7OnEventERN8RenderFX5EventE
// The drag-and-drop table gets the event first. With rollover events enabled, a roll-over of a character whose event name starts
// with "btn" and that is enabled moves the focus to it (RenderFX::SetFocus by character path). A release event whose name
// contains "btn_MENU_TWITTER" opens the Twitter page. Every path then ends with PostOnEvent.
void MenuBase::OnEvent(RenderFX::Event& e) {
    if (m_dragAndDrop != nullptr) {
        m_dragAndDrop->OnEvent(e);
    }
    if (m_isRolloverEventEnabled && e.type == RenderFX::EVENT_ROLL_OVER) {
        if (std::strstr(e.name, "btn") == e.name && e.target->is_enabled()) {  // character vtable +0x170
            m_menu->SetFocus(e.GetCharacterPath(), 0);
        }
    }
    if (e.type == RenderFX::EVENT_RELEASE) {
        if (std::strstr(e.name, "btn_MENU_TWITTER") != nullptr) {
            nativeOpenBrowser("http://ingameads.gameloft.com/redir/?from=D2HP&op=TBFV&game=D2HP&t=twitter");
        }
    }
    PostOnEvent(e);
}

// 0x42331c _ZN8MenuBase17RegisterDeadZonesEv
// Registers the dead zones of the menu once. Its flag (+0xb4) is set before the zones are read, as in the original.
// Takes RenderFX::FindCharacters(m_menu, context, "deadzone_", 0) and, for each character it returns, appends
// GameSWFUtils::GetAbsoluteBoundingRect(character) (in the order xmin, xmax, ymin, ymax) to m_deadZones. The flag is set
// only when a live context exists, as in the original.
void MenuBase::RegisterDeadZones() {
    if (m_deadZonesRegistered) {
        return;
    }
    gameswf::character* context = GetCurrentMenuContext();
    if (context == nullptr) {
        return;
    }
    m_deadZonesRegistered = true;
    RenderFX::CharacterArray* found = m_menu->FindCharacters(context, "deadzone_", 0);
    for (int i = 0; i < found->count; ++i) {
        const std::array<float, 4> bounds = GameSWFUtils::GetAbsoluteBoundingRect(found->data[i]);
        gameswf::rect zone;
        zone.m_x_min = bounds[0];
        zone.m_x_max = bounds[1];
        zone.m_y_min = bounds[2];
        zone.m_y_max = bounds[3];
        m_deadZones.push_back(zone);
    }
}
