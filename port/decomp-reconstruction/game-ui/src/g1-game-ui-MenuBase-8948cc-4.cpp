// MenuBase bodies, batch g1-game-ui-MenuBase-8948cc-4 (part 5 of 5 of MenuBase): the constructor (both copies), the
// FSCommand registry (RegisterFSCommand, MyFSCommand), Show and Hide, the slide and drag-and-drop passes, and the
// FSCommand handlers FS_GotoFrame through FS_StopDialog. Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so.
// Offsets in comments are the original 32-bit ARM offsets. Partial functions say in their comment which part is missing.
//
// Facts shared by these bodies:
//   - Singleton<Application>::s_inst (0x99f72c) is reached through ApplicationGetInstance() (dh2/global/ctrl_camera.hpp).
//     Its fields used here are dword_99F760 = m_stringManager (+0x34), dword_99F76C = m_playerManager (+0x40) and
//     dword_99F778 = m_savegameManager (+0x4c). byte_99F818 is Application +0xec, which Application.hpp holds only as
//     pad_ec[0] (not named), so the stores to it are PARTIAL.
//   - Most bodies first run the trace read "isTracingMenuBase": DebugSwitches::load, then GetSwitch with the value
//     discarded. DebugSwitches::s_inst is private, so DebugSwitches::GetInstance() (0x330740) supplies the object.
//   - The original's a3[1] (State +0x04, the owning MenuFX) is m_menu. RenderFX.hpp is a placeholder: it declares none of
//     Find, FindCharacters, SetMember, FormatHTML, InvokeASCallback or PlayAnim, and RenderFX::Event is incomplete. Every
//     body that publishes to _root, looks up a character or calls those is PARTIAL.
//   - The weak_ptr proxies at State +0x48 (m_characterProxy) and the cached character at +0x4c are void* in MenuFX.hpp and
//     gameswf::weak_ptr is not declared, so the release the original makes before its callbacks is not made. The bodies
//     that do it (Show, Hide, RegisterDragAndDrops) are PARTIAL.
//   - Hide compares SavegameManager::getLanguage() as unsigned (> 7u), so -1 (the device language) also passes.
//   - The static members m_FSCommandMap, m_isRolloverEventEnabled and s_igmOpened are defined in this file, because the
//     constructor and RegisterFSCommand own the registry and no other batch defines them.

#include <cstdlib>
#include <cstring>
#include <map>
#include <string>

#include "gameswf/gameswf.h"  // gameswf::rect (the complete type; MenuBase.hpp forward-declares it)
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "gameswf/gameswf_as_classes/as_array.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_root.h"
#include "dh2/global/item_instance.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/VarArgs.hpp"
#include <vector>
#include <memory>
#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/SlideEventCharacter.hpp"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/GSInit.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/ctrl_camera.hpp"

// Static members. The definitions sit here because the constructor and RegisterFSCommand own m_FSCommandMap.
bool MenuBase::m_isRolloverEventEnabled = false;
bool MenuBase::s_igmOpened = false;
std::map<std::string, MenuBase::FSCommandFn> MenuBase::m_FSCommandMap;

namespace {

// DebugSwitches::load() then GetSwitch("isTracingMenuBase") on the switch singleton, with the value discarded. The
// original reads the switch on s_inst; GetInstance (0x330740) returns &s_inst and s_inst is private.
void ReadMenuBaseTraceSwitch() {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    (void)switches->GetSwitch("isTracingMenuBase");
}

// True when the menu name equals expected (strcmp == 0 in the original).
bool NameIs(const char* name, const char* expected) {
    return std::strcmp(name, expected) == 0;
}

}  // namespace

// 0x423d6c _ZNK8MenuBase15TestSlideEventsERN8RenderFX5EventE
// Runs SlideEventCharacter::Test(entry, event, m_menu) over every entry of m_slideEvents (+0x60 begin, +0x64 end), but
// only when the event type minus 4 is at most 1 (types 4 and 5, unsigned compare as in the original).
void MenuBase::TestSlideEvents(RenderFX::Event& event) const {
    const unsigned int type = static_cast<unsigned int>(static_cast<int>(event.type));
    if (type - 4u <= 1u) {
        for (SlideEventCharacter* entry : m_slideEvents) {
            entry->Test(event, m_menu);
        }
    }
}

// 0x423db8 _ZN8MenuBase20RegisterDragAndDropsEPFiPKN7gameswf9characterEE
// The previous m_dragAndDrop (+0x5c) is deleted. With a live menu context a new DragAndDrop is built: every "dragable" child of the
// context is added (with its "draglimits" child, found by name, as the zone) when the filter is null or accepts it, and every
// "drop" child is added as a dropable. The object is kept only when it has an entry. A dead context is released instead.
void MenuBase::RegisterDragAndDrops(int (*filter)(const gameswf::character*)) {
    ReadMenuBaseTraceSwitch();
    if (m_dragAndDrop != nullptr) {
        delete m_dragAndDrop;
        m_dragAndDrop = nullptr;
    }
    if (GetCurrentMenuContext() == nullptr) {
        return;
    }
    m_dragAndDrop = new DragAndDrop();
    // FindCharacters returns the shared result array (RenderFX::m_foundCharacters), so the dragables are copied out first.
    RenderFX::CharacterArray* found = m_menu->FindCharacters(GetCurrentMenuContext(), "dragable", 0);
    std::vector<gameswf::character*> dragables(found->data, found->data + found->count);
    for (gameswf::character* dragable : dragables) {
        RenderFX::CharacterArray* children = m_menu->FindCharacters(dragable, nullptr, 0);
        gameswf::character* limits = nullptr;
        for (int i = 0; i < children->count; ++i) {
            gameswf::character* child = children->data[i];
            if (std::strstr(child->get_name().c_str(), "draglimits") != nullptr) {
                limits = child;
                break;
            }
        }
        if (filter == nullptr || filter(dragable)) {
            m_dragAndDrop->AddDragable(m_menu, dragable, limits);
        }
    }
    RenderFX::CharacterArray* drops = m_menu->FindCharacters(GetCurrentMenuContext(), "drop", 0);
    for (int i = 0; i < drops->count; ++i) {
        m_dragAndDrop->AddDropable(m_menu, drops->data[i]);
    }
    if (m_dragAndDrop->m_dragables.empty() && m_dragAndDrop->m_dropables.empty()) {
        ReadMenuBaseTraceSwitch();
        delete m_dragAndDrop;
        m_dragAndDrop = nullptr;
    } else {
        ReadMenuBaseTraceSwitch();
        ReadMenuBaseTraceSwitch();
    }
}

// 0x424288 _ZN8MenuBase12FS_GotoFrameEPKcS1_Pv
// args is "name|label" (or "name|anim"). FindMenuCharacter looks the name up in the menu's RenderFX and then in the root of
// MenuManager, as the original does.
namespace {

gameswf::character* FindMenuCharacter(MenuFX* menu, const char* name) {
    gameswf::as_object* found = menu->Find(name);
    if (found == nullptr) {
        found = MenuManager::GetInstance()->GetRoot()->Find(name);
    }
    return reinterpret_cast<gameswf::character*>(found);
}

}  // namespace

// 0x424288 _ZN8MenuBase12FS_GotoFrameEPKcS1_Pv
// Without '|' the original returns 0. With '|' it finds the character and calls GameSWFUtils::GotoFrame(character, label),
// then returns true. A character that is not found returns false.
bool MenuBase::FS_GotoFrame(const char*, const char* args, void* menu) {
    const char* bar = (args != nullptr) ? std::strchr(args, '|') : nullptr;
    if (bar == nullptr) {
        return false;
    }
    const std::string name(args, bar);
    const std::string label(bar + 1);
    ReadMenuBaseTraceSwitch();
    gameswf::character* target = FindMenuCharacter(static_cast<MenuBase*>(menu)->m_menu, name.c_str());
    if (target == nullptr) {
        return false;
    }
    GameSWFUtils::GotoFrame(target, label.c_str());
    return true;
}

// 0x4243e0 _ZN8MenuBase11FS_PlayAnimEPKcS1_Pv
// The same "name|anim" split and lookup as FS_GotoFrame. The original then calls RenderFX::PlayAnim(menu, character, anim, 0)
// and returns true.
bool MenuBase::FS_PlayAnim(const char*, const char* args, void* menu) {
    const char* bar = (args != nullptr) ? std::strchr(args, '|') : nullptr;
    if (bar == nullptr) {
        return false;
    }
    const std::string name(args, bar);
    const std::string anim(bar + 1);
    ReadMenuBaseTraceSwitch();
    MenuFX* owner = static_cast<MenuBase*>(menu)->m_menu;
    gameswf::character* target = FindMenuCharacter(owner, name.c_str());
    if (target == nullptr) {
        return false;
    }
    owner->PlayAnim(target, anim.c_str(), 0);
    return true;
}

// 0x424540 _ZN8MenuBase11FS_SetText2EPKcS1_Pv
// args is "name|symbol". Without '|' the original returns 0. Then it reads the trace switch and looks the symbol up with
// StringManager::getStringFromSymbol (declared). A null string returns 0. Otherwise the original finds the character by
// name (RenderFX::Find, then the root) and calls RenderFX::FormatHTML(menu, character, "%s", text); the result is true.
bool MenuBase::FS_SetText2(const char*, const char* args, void* menu) {
    const char* bar = (args != nullptr) ? std::strchr(args, '|') : nullptr;
    if (bar == nullptr) {
        return false;
    }
    const std::string name(args, bar);
    ReadMenuBaseTraceSwitch();
    const char* text = ApplicationGetInstance().m_stringManager->getStringFromSymbol(bar + 1);
    if (text == nullptr) {
        return false;
    }
    MenuFX* owner = static_cast<MenuBase*>(menu)->m_menu;
    gameswf::character* target = FindMenuCharacter(owner, name.c_str());
    if (target == nullptr) {
        return false;
    }
    owner->FormatHTML(target, "%s", text);
    return true;
}

// 0x424698 _ZN8MenuBase10FS_SetTextEPKcS1_Pv
// args is "name|id", the id parsed with atoi. Without '|' the original returns 0. It reads the trace switch, then the string
// StringManager::getString(id) (declared). A null string returns 0. Otherwise it calls RenderFX::FormatHTML(menu, name, "%s",
// text); the result is true.
bool MenuBase::FS_SetText(const char*, const char* args, void* menu) {
    const char* bar = (args != nullptr) ? std::strchr(args, '|') : nullptr;
    if (bar == nullptr) {
        return false;
    }
    const std::string name(args, bar);
    const int stringId = std::atoi(bar + 1);
    ReadMenuBaseTraceSwitch();
    const char* text = ApplicationGetInstance().m_stringManager->getString(stringId);
    if (text == nullptr) {
        return false;
    }
    static_cast<MenuBase*>(menu)->m_menu->FormatHTML(name.c_str(), "%s", text);
    return true;
}

// 0x4247c0 _ZN8MenuBase14FS_GetCharPropEPKcS1_Pv
// args is a property id (atoi). After the trace switch read, the local player Character (PlayerManager GetLocalPlayer(0, true)
// ->character_660) gives CharProperties::_GetProperty(its sheet at +0xff4, id), published as the decimal text _root.retval.
// Without a Character the result is false. The original formats with an unbounded sprintf into its 8-byte stack buffer
// (stack-protector canary right above); the snprintf here keeps the same 7 characters without overrunning (64-bit deviation).
bool MenuBase::FS_GetCharProp(const char*, const char* args, void* menu) {
    const int propId = (args != nullptr) ? std::atoi(args) : 0;
    ReadMenuBaseTraceSwitch();
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    if (character == nullptr) {
        return false;
    }
    char text[8];
    std::snprintf(text, sizeof text, "%d", character->_GetProperty(character->m_props, propId));
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", text);
    return true;
}

// 0x4248dc _ZN8MenuBase17FS_IsMapLocLockedEPKcS1_Pv
// The original takes the current Level (Application::GetCurrentLevel). It returns false when there is no level, when args is
// null, or when args is empty. Otherwise it reads the trace switch, computes Level::SG_IsMapLocLocked(atoi(args)) and
// publishes the boolean as _root.retval through RenderFX::SetMember(as_value). The original then returns 1.
bool MenuBase::FS_IsMapLocLocked(const char*, const char* args, void* menu) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr || args == nullptr || *args == '\0') {
        return false;
    }
    const bool locked = level->SG_IsMapLocLocked(std::atoi(args));
    ReadMenuBaseTraceSwitch();
    gameswf::as_value retval;
    retval.set_bool(locked);
    static_cast<MenuBase*>(menu)->m_menu->SetMember("_root", "retval", retval);
    return true;
}

// 0x424af4 _ZN8MenuBase4HideEv
// Runs only when IsValidMenu (vtable +0x3c) is true. It reads the trace switch, resets the drag-and-drop positions, clears
// MenuManager::m_savedCamera (+0x60) for menu_CharacterMenu and menu_Merchant, resets the language to 0 and saves the settings when
// the language is above 7 as an unsigned value (menu_language), clears s_igmOpened for menu_Ingame, menu_playlist and
// menu_Merchant, clears byte_99F818 for menu_VerificationLoading, then hides the menu and unregisters it from MenuManager.
// The original then releases the cached character's weak proxy and calls RenderFX::InvokeASCallback(menu, character,
// "onPop", nullptr, 0), which are not made here.
void MenuBase::Hide() {
    if (!IsValidMenu()) {
        return;
    }
    ReadMenuBaseTraceSwitch();
    if (m_dragAndDrop != nullptr) {
        m_dragAndDrop->ResetPositions();
    }
    if (NameIs(m_name, "menu_CharacterMenu") || NameIs(m_name, "menu_Merchant")) {
        MenuManager::GetInstance()->m_savedCamera = nullptr;
    }
    if (NameIs(m_name, "menu_language")) {
        SavegameManager* savegame = ApplicationGetInstance().m_savegameManager;
        if (static_cast<unsigned int>(savegame->getLanguage()) > 7u) {
            savegame->setLanguage(0);
            savegame->saveSettings();
        }
    }
    if (NameIs(m_name, "menu_Ingame") || NameIs(m_name, "menu_playlist") || NameIs(m_name, "menu_Merchant")) {
        s_igmOpened = false;
    }
    if (NameIs(m_name, "menu_VerificationLoading")) {
        ApplicationGetInstance().unk_ec = false;  // byte_99F818 (Application +0xec)
    }
    SetVisible(false);
    MenuManager::GetInstance()->UnRegisterListener(this);
    m_menu->InvokeASCallback(GetCurrentMenuContext(), "onPop", nullptr, 0);
}

// 0x424ef0 _ZN8MenuBase19FS_GetParsedString2EPKcS1_Pv
// A gameswf-called native (the first argument is not read, the second is the string symbol, the third is the calling MenuBase
// as a void*; Hex-Rays shows the first as `this`). The symbol is looked up in the string manager. The root movie's
// ParsedStringArgs array is read: element i is fetched by its number as a key and, when present, becomes a VarArgs variant
// (the number as a float and as an int, the string as the text). The string is formatted with StringManager::parseEx and
// published as _root.retval. A null symbol returns false, anything else true.
bool MenuBase::FS_GetParsedString2(const char*, const char* args, void* context) {
    if (args == nullptr) {
        return false;
    }
    StringManager* strings = ApplicationGetStringManager();  // dword_99F760
    const char* format = strings->getStringFromSymbol(args);
    std::string text;
    MenuBase* menu = static_cast<MenuBase*>(context);
    gameswf::character* rootMovie = menu->m_menu->GetRoot()->get_root_movie();
    gameswf::as_value parsedArgs;
    rootMovie->get_member("ParsedStringArgs", &parsedArgs);
    gameswf::as_object* list = parsedArgs.is_object() ? parsedArgs.to_object() : nullptr;
    VarArgs varArgs;
    std::vector<std::unique_ptr<gameswf::as_value>> values;  // kept alive until parseEx has read the text pointers
    if (list != nullptr) {
        const int count = static_cast<gameswf::as_array*>(list)->size();  // +0x50
        for (int i = 0; i < count; ++i) {
            values.push_back(std::make_unique<gameswf::as_value>());
            gameswf::as_value* element = values.back().get();
            const gameswf::as_value key(static_cast<double>(i));
            if (list->get_member(key.to_tu_string(), element)) {
                VarArgs::Variant variant;
                variant.number = static_cast<float>(element->to_number());
                variant.integer = static_cast<int>(element->to_number());
                variant.text = element->to_string();
                varArgs.m_variants.push_back(variant);
            }
        }
    }
    strings->parseEx(text, format, varArgs);
    menu->m_menu->SetMember("_root", "retval", text.c_str());
    return true;
}

// 0x425450 _ZN8MenuBase4ShowEv
// Runs only when IsValidMenu (vtable +0x3c) is true. It reads the trace switch, sets m_isRolloverEventEnabled, runs
// ProcessLocalization (vtable +0x40) when the menu is not localised yet, and shows it with SetVisible(true). It then resets
// m_animOverCount (+0x78). For menu_language and menu_splash it clears the GSInit loading screen. For menu_Ingame,
// menu_playlist and menu_Merchant it sets s_igmOpened. For menu_Options it makes a DebugCachedCharacter for "option_Custom"
// under the current menu context and keeps its character. Last it registers the dead zones.
// PARTIAL: the original releases the cached character's weak proxy and calls RenderFX::InvokeASCallback(menu, character,
// "onPush", nullptr, 0) (not declared). It also sets byte_99F818 (Application +0xec, unnamed) to whether the name is
// menu_VerificationLoading, and stores Application::IsLevelRunning() into the character at +0x9b, which the gameswf
// character layout does not declare.
void MenuBase::Show() {
    if (!IsValidMenu()) {
        return;
    }
    ReadMenuBaseTraceSwitch();
    m_isRolloverEventEnabled = true;
    if (!m_isLocalised) {
        ProcessLocalization();
    }
    SetVisible(true);
    m_menu->InvokeASCallback(GetCurrentMenuContext(), "onPush", nullptr, 0);
    m_animOverCount = 0;
    ApplicationGetInstance().unk_ec = NameIs(m_name, "menu_VerificationLoading");  // byte_99F818 (Application +0xec)
    if (NameIs(m_name, "menu_language") || NameIs(m_name, "menu_splash")) {
        GSInit::s_inst.ClearLoadingScreen();
    }
    if (NameIs(m_name, "menu_Ingame") || NameIs(m_name, "menu_playlist") || NameIs(m_name, "menu_Merchant")) {
        s_igmOpened = true;
    }
    if (NameIs(m_name, "menu_Options")) {
        DebugCachedCharacter cache;
        cache.RefreshCache("option_Custom", m_menu, GetCurrentMenuContext());
        gameswf::character* optionCharacter = cache.GetChar();
        optionCharacter->m_visible = ApplicationGetInstance().IsLevelRunning();  // byte +0x9b of the 32-bit layout (typed)
    }
    RegisterDeadZones();
}

// 0x426980 _ZN8MenuBase17RegisterFSCommandEPKcPFbS1_S1_PvE
// The original looks name up in m_FSCommandMap and returns 0 when it is already there. Otherwise it stores fn under name and
// returns 1.
bool MenuBase::RegisterFSCommand(const char* name, FSCommandFn fn) {
    if (m_FSCommandMap.find(name) != m_FSCommandMap.end()) {
        return false;
    }
    m_FSCommandMap[name] = fn;
    return true;
}

// 0x4269dc _ZN8MenuBaseC1EPKc (complete-object constructor)
// 0x427200 _ZN8MenuBaseC2EPKc (base-object constructor): the same body at a second address in the binary.
// The MenuFX::State base takes the name. The original then zeroes the scalar members (+0x5c, +0x74 .. +0x7d, +0xb4 and the
// vector and list heads, which the standard containers construct by default), reads the trace switch, sets
// m_isRolloverEventEnabled and registers the 63 FSCommand handlers. +0x98 is not written by the constructor.
MenuBase::MenuBase(const char* name) : MenuFX::State(name) {
    m_dragAndDrop = nullptr;             // +0x5c
    m_visible = false;                   // +0x74
    m_isLocalised = false;               // +0x75
    m_animOverCount = 0;                 // +0x78
    m_registered = false;                // +0x7c
    m_deleteOnUnload = false;            // +0x7d
    m_deadZonesRegistered = false;       // +0xb4
    ReadMenuBaseTraceSwitch();
    m_isRolloverEventEnabled = true;
    RegisterFSCommand("PushMenu", FS_PushMenu);
    RegisterFSCommand("PopMenu", FS_PopMenu);
    RegisterFSCommand("PopAllAbove", FS_PopAllAbove);
    RegisterFSCommand("PopAllMenu", FS_PopAllMenu);
    RegisterFSCommand("SwitchMenu", FS_SwitchMenu);
    RegisterFSCommand("PushState", FS_PushState);
    RegisterFSCommand("SetFocus", FS_SetFocus);
    RegisterFSCommand("PlaySoundFX", FS_PlaySoundFX);
    RegisterFSCommand("PlayMusic", FS_PlayMusic);
    RegisterFSCommand("StopMusic", FS_StopMusic);
    RegisterFSCommand("StartGame", FS_StartGame);
    RegisterFSCommand("ReturnToGame", FS_ReturnToGame);
    RegisterFSCommand("ContinueGame", FS_ContinueGame);
    RegisterFSCommand("SetSaveSlot", FS_SetSaveSlot);
    RegisterFSCommand("SetPlayerClass", FS_SetPlayerClass);
    RegisterFSCommand("SetDifficulty", FS_SetDifficulty);
    RegisterFSCommand("SetPlayerName", FS_SetPlayerName);
    RegisterFSCommand("IsSaveSlotValid", FS_IsSaveSlotValid);
    RegisterFSCommand("GetSaveSlot", FS_GetSaveSlot);
    RegisterFSCommand("ResetSaveFile", FS_ResetSaveFile);
    RegisterFSCommand("SkipScript", FS_SkipScript);
    RegisterFSCommand("GoToMainMenu", FS_GoToMainMenu);
    RegisterFSCommand("LoadLevel", FS_LoadLevel);
    RegisterFSCommand("LoadLevel2", FS_LoadLevel2);
    RegisterFSCommand("EndLoading", FS_EndLoading);
    RegisterFSCommand("LoadWorldMap", FS_LoadWorldMap);
    RegisterFSCommand("IsMapLocLocked", FS_IsMapLocLocked);
    RegisterFSCommand("ExitGame", FS_ExitGame);
    RegisterFSCommand("SetBtnImage", FS_SetBtnImage);
    RegisterFSCommand("GetCharProperty", FS_GetCharProperty);
    RegisterFSCommand("GetCharProp", FS_GetCharProp);
    RegisterFSCommand("SetText", FS_SetText);
    RegisterFSCommand("SetText2", FS_SetText2);
    RegisterFSCommand("GetString", FS_GetString);
    RegisterFSCommand("GetString2", FS_GetString2);
    RegisterFSCommand("GetParsedString2", FS_GetParsedString2);
    RegisterFSCommand("GetPlayerName", FS_GetPlayerName);
    RegisterFSCommand("GetPlayerClass", FS_GetPlayerClass);
    RegisterFSCommand("GetPlayerClass2", FS_GetPlayerClass2);
    RegisterFSCommand("GetHasTwoHandWeapon", FS_GetHasTwoHandWeapon);
    RegisterFSCommand("GetHasMainHandWeapon", FS_GetHasMainHandWeapon);
    RegisterFSCommand("GetHasOffHandWeapon", FS_GetHasOffHandWeapon);
    RegisterFSCommand("GetNumPotions", FS_GetNumPotions);
    RegisterFSCommand("AssignPoint", FS_AssignPoint);
    RegisterFSCommand("AutoEquipSlot", FS_AutoEquipSlot);
    RegisterFSCommand("IncSkill", FS_IncSkill);
    RegisterFSCommand("ResetDraggablePosition", FS_ResetDraggablePosition);
    RegisterFSCommand("IncOption", FS_IncOption);
    RegisterFSCommand("DecOption", FS_DecOption);
    RegisterFSCommand("ToggleOption", FS_ToggleOption);
    RegisterFSCommand("SetOption", FS_SetOption);
    RegisterFSCommand("GetOption", FS_GetOption);
    RegisterFSCommand("SetLanguage", FS_SetLanguage);
    RegisterFSCommand("SaveOptions", FS_SaveOptions);
    RegisterFSCommand("LoadOptions", FS_LoadOptions);
    RegisterFSCommand("PlayAnim", FS_PlayAnim);
    RegisterFSCommand("GotoFrame", FS_GotoFrame);
    RegisterFSCommand("LockCharacter", FS_LockCharacter);
    RegisterFSCommand("UnlockCharacter", FS_UnlockCharacter);
    RegisterFSCommand("PauseGameplay", FS_PauseGameplay);
    RegisterFSCommand("ResumeGameplay", FS_ResumeGameplay);
    RegisterFSCommand("StopDialog", FS_StopDialog);
    RegisterFSCommand("LaunchTwitter", FS_LaunchTwitter);
}

// 0x427a24 _ZN8MenuBase11MyFSCommandEPKcS1_
// A null command returns true. The trace switch is read. The command is looked up in m_FSCommandMap: when it is absent the
// result is false, otherwise the registered handler is called with (command, args, this) and its result is returned.
bool MenuBase::MyFSCommand(const char* command, const char* args) {
    if (command == nullptr) {
        return true;
    }
    ReadMenuBaseTraceSwitch();
    const auto found = m_FSCommandMap.find(command);
    if (found == m_FSCommandMap.end()) {
        return false;
    }
    return found->second(command, args, this);
}

// 0x427b08 _ZN8MenuBase13FS_StopDialogEPKcS1_Pv
// The original pops the front DialogMsg of queue 0 of MenuMessageManager<DialogMsg,1>::s_inst (0x99fb88) when that queue
// is not empty (begin and finish cursors differ, which is deque::empty). It then invokes the skip function
// DialogMsg::s_SkipFuncName when one is set, and if messages remain it invokes the start function
// DialogMsg::s_StartFuncName[0]. Invoke's clone reads neither the queue argument nor this, so the queue argument is 0.
// The original returns 1 on every path, so the return here is true.
bool MenuBase::FS_StopDialog(const char*, const char*, void*) {
    MenuMessageManager<DialogMsg, 1>& messages = MenuMessageManager<DialogMsg, 1>::s_inst;
    if (!messages.m_queues[0].empty()) {
        messages.m_queues[0].pop_front();
        if (DialogMsg::s_SkipFuncName != nullptr) {
            messages.Invoke(DialogMsg::s_SkipFuncName, 0);
        }
        if (!messages.m_queues[0].empty()) {
            messages.Invoke(DialogMsg::s_StartFuncName[0], 0);
        }
    }
    return true;
}
