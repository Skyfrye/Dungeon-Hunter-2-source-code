// Batch g1-game-app-global-f216b6-13 (<global>, part 14 of 22): the gameswf natives of the player info, potion, stats,
// keyboard, options, save slot, buff, inventory, quest, tutorial, item details, invite and parsed-string menus,
// ELF 0x4466c4 .. 0x44f528. Declarations: dh2/global/native_player_info_options.hpp.
//
// What is reconstructed and what is not:
//   - (First wave, before the r3b-w1 redo.) Every native was PARTIAL; the redo completed the ones marked reconstructed in
//     their ledger rows, so the statuses here are historical. Each one reads its arguments and writes its result through gameswf: the fn_call
//     argument accessors (argument count, top index, value tags, to_number, to_int, to_bool, to_string, to_xstring,
//     is_number), the as_value setters (set_string, set_bool, set_double, set_as_object), the tu_string property
//     names, drop_refs, the as_array push and element get, and the as_object property setter (vtable slot 7, byte
//     offset +0x1c). None of that is in the tree, so the bodies are shells. Each comment gives the original steps so
//     the body can be filled in when the gameswf API lands.
//   - ResolveLanguageOption and SaveSlotTimeFormat (dh2/global/native_player_info_options.hpp) are the arithmetic of
//     NativeSetOptions for the 'Language' key and the strftime switch of NativeGetSaveSlotDetails. They are tested in
//     game-app/tests/g1-game-app-global-f216b6-13_test.cpp.
//   - The Hex-Rays signatures of NativeGetPossibleClassSpec, NativeGetBuffs, NativeInvGetItemsListForSlot and
//     NativeInvGetItemDetails are mis-typed (the fn_call shows as a Character*, an as_value** or an int, and one shows a
//     pointer return). The demangled symbols take const gameswf::fn_call& and return void, so the definitions use that.
//
// Facts shared by the comments:
//   - Argument layout. The arguments sit in the fn_call's argument array (its pointer at +0x0c). The argument count is at
//     +0x10 and the top index at +0x14. "top" is the last argument and "top-1" and "top-2" the ones below it. The natives
//     test the value tags: 2 is a number and 5 an object. The set calls write tag 1 for a bool (value in the byte at +4),
//     tag 2 for a double and tag 5 for an object; string values use set_string.
//   - NativeGetPlayerChar(int, bool) (0x43c388, _Z19NativeGetPlayerCharib) returns the player's Character or null. It is
//     not declared in the tree yet, so the comments name it and no body calls it.
//   - Application singleton: Singleton<Application>::s_inst (dword_99F72C). The PlayerManager is at +0x40 (dword_99F76C).
//     PlayerManager::GetLocalPlayer(id, flag) and GetRemotePlayer(id, flag) return a PlayerInfo*. PlayerInfo has no
//     header in the tree (only a forward declaration in dh2/PlayerManager.hpp). The asm gives +0x660 Character*
//     character_660 and +0x678 the player number.
//   - Globals: dword_99F760 StringManager (dh2/StringManager.hpp), dword_99F758 PyDataConstants
//     (pydata-accessors/w7_pydata12.hpp), dword_99F778 SavegameManager (dh2/SavegameManager.hpp), dword_99F764
//     ObjectManager (dh2/ObjectManager.hpp).
//   - Character offsets (the Character object is the player's character_660): +0x37c ItemInventory (dh2/Character.hpp),
//     +0x3b4 CharTimers, +0x560 CharProperties (Hex-Rays "+1376"), +0x39c int gold (asm), +0x3a8 byte (LDRB in the asm) of max
//     potions (Hex-Rays), +0x1378 buff list (sentinel) with the first node at +0x1380.
//   - Option state: isKOREAN_BUILD, lang_curr and lang_kor are the language globals. Their ELF names are not in the tree.

#include "dh2/global/native_player_info_options.hpp"

#include <cstdint>

#include "dh2/Application.hpp"
#include "dh2/CharMenuTutorialMsg.hpp"
#include "dh2/GSKeyboard.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Quest.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/native_app_bindings.hpp"
#include <cstdio>
#include <ctime>
#include <list>
#include <type_traits>
#include <string>
#include <vector>

#include "core-platform/w7_global_rem.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/VarArgs.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/native_object_helpers.hpp"
#include "dh2/global/net_singletons.hpp"
#include "gameswf/gameswf_as_classes/as_array.h"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/gl_friend_info.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "core-platform/stlport_sort.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/SortByEquipability.hpp"
#include "dh2/global/native_stats_inventory_merchant.hpp"
#include "gameswf/gameswf_environment.h"
#include "vendor-gameswf/as_value.hpp"

// 0x4466c4 NativeGetPlayerInfos(gameswf::fn_call const&)
// The top argument is the output object (tag 5). The one below it is the player index (to_number). With three arguments
// the one below that is the remote flag (to_bool), else false. The original calls NativeGetPlayerChar(index, remote). When
// that is null nothing is written. Otherwise the object gets PlayerName (Character::SG_GetPlayerName), PlayerClass
// (Character::GetClassName) and PlayerNumber (a double: PlayerInfo +0x678 (unk_678) of PlayerManager::GetRemotePlayer(index,
// false) when remote, else of GetLocalPlayer(index, false); the asm reads +0x678 on both paths). The object is then the
// return value, set_as_object, and this happens even when the player is null.
void NativeGetPlayerInfos(const gameswf::fn_call& call) {
    gameswf::as_object* obj = call.arg(0).to_object();
    const int player = static_cast<int>(call.arg(1).to_number());
    const bool remote = call.nargs == 3 ? call.arg(2).to_bool() : false;
    Character* ch = NativeGetPlayerChar(player, remote);
    if (ch != nullptr && obj != nullptr) {
        gameswf::as_value name;
        name.set_string(ch->SG_GetPlayerName());
        obj->set_member(tu_stringi("PlayerName"), name);
        gameswf::as_value className;
        className.set_string(ch->GetClassName());
        obj->set_member(tu_stringi("PlayerClass"), className);
        PlayerManager* players = ApplicationGetInstance().m_playerManager;
        PlayerInfo* info = remote ? players->GetRemotePlayer(player, false) : players->GetLocalPlayer(player, false);
        gameswf::as_value number;
        number.set_double(static_cast<double>(info->unk_678));
        obj->set_member(tu_stringi("PlayerNumber"), number);
    }
    call.result->set_as_object(obj);
}

// 0x446978 NativeGetStringNumPotions(gameswf::fn_call const&)
// Argument 0 is the output object (an object, otherwise none), argument 1 the player index. For a player's character the object gets
// StrNumPotions: the GAMEPLAYMENUS_POTIONS string parsed with the character's potion count (StringManager::parse). No result is set.
// A missing output object is dereferenced by the original (not guarded here either).
void NativeGetStringNumPotions(const gameswf::fn_call& call) {
    gameswf::as_object* object = call.arg(0).is_object() ? call.arg(0).to_object() : nullptr;
    Character* ch = NativeGetPlayerChar(static_cast<int>(call.arg(1).to_number()), false);
    if (ch) {
        std::string text;
        StringManager* strings = ApplicationGetStringManager();
        const char* format = strings->getString(ApplicationGetPyDataConstants()->getConstant("StrID", "GAMEPLAYMENUS_POTIONS"));
        strings->parse(text, format, ch->ItemInventory::GetNumPotions());
        nativeobj::SetString(object, "StrNumPotions", text.c_str());
    }
}

// 0x446afc NativeGetPlayerStats(gameswf::fn_call const&)
// Argument 0 is the output object, argument 1 the player index. For a character the object gets 69 properties, in this order: Name
// (SG_GetPlayerName), Class (GetClassName), Icon (3 for the classes 290..292, 2 for 325..327, else 1), then numbers read with
// CharProperties::PROPS_GetInt(id, false) (the table below; Rating_Attack, Rating_Critical and the four main/off-hand damage bounds add
// the PROPS_GetBonus* value >> 8) and the four weapon booleans (IsWeaponTwoHanded, HasOffHandWeapon, HasStaff, HasBow) after the
// Damage_Earth entries. The object is the result, also when there is no character.
void NativeGetPlayerStats(const gameswf::fn_call& call) {
    gameswf::as_object* object = call.arg(0).is_object() ? call.arg(0).to_object() : nullptr;
    Character* ch = NativeGetPlayerChar(static_cast<int>(call.arg(1).to_number()), false);
    if (ch) {
        double icon;
        switch (ch->SG_GetPlayerClass()) {
            case 290:
            case 291:
            case 292:
                icon = 3.0;
                break;
            case 325:
            case 326:
            case 327:
                icon = 2.0;
                break;
            default:
                icon = 1.0;
                break;
        }
        CharProperties& props = *ch;
        const int damageMinMain = props.PROPS_GetInt(79, false) + (props.PROPS_GetBonusDamage(false) >> 8);
        const int damageMaxMain = props.PROPS_GetInt(80, false) + (props.PROPS_GetBonusDamage(false) >> 8);
        const int damageMinOff = props.PROPS_GetInt(81, false) + (props.PROPS_GetBonusDamage(true) >> 8);
        const int damageMaxOff = props.PROPS_GetInt(82, false) + (props.PROPS_GetBonusDamage(true) >> 8);
        const int ratingAttack = props.PROPS_GetInt(50, false) + (props.PROPS_GetBonusAttackRating(false) >> 8);
        nativeobj::SetString(object, "Name", ch->SG_GetPlayerName());
        nativeobj::SetString(object, "Class", ch->GetClassName());
        nativeobj::SetNumber(object, "Icon", icon);
        // One entry per property: the object's key and the CharProperties id, or -1 when the value was computed above.
        struct Entry {
            const char* key;
            int propId;
        };
        const int rating = 1000000;  // markers for the computed values, in the table below
        enum { kDamageMinMain = rating, kDamageMaxMain, kDamageMinOff, kDamageMaxOff, kRatingAttack, kRatingCritical };
        static const Entry kEntries[] = {
            {"Level", 19}, {"HP", 36}, {"HP_Bonus", 37}, {"Max_HP", 38}, {"MP", 41}, {"MP_Bonus", 42}, {"Max_MP", 43},
            {"XP", 33}, {"Max_XP", 34}, {"Stat_Strength", 149}, {"Stat_Dexterity", 150}, {"Stat_Endurance", 151},
            {"Stat_Energy", 152}, {"Stat_Points", 148}, {"Rating_Attack", kRatingAttack}, {"Rating_Critical", kRatingCritical},
            {"Rating_Defense", 59}, {"Rating_Dodge", 60}, {"Rating_Block", 61}, {"Resistance_Fire", 74},
            {"Resistance_Earth", 77}, {"Resistance_Water", 75}, {"Resistance_Air", 78}, {"Resistance_Lightning", 76},
            {"Damage_Min_Main_Hand", kDamageMinMain}, {"Damage_Max_Main_Hand", kDamageMaxMain},
            {"Damage_Elemental_Min_Main_Hand", 95}, {"Damage_Elemental_Max_Main_Hand", 96},
            {"Damage_Elemental_Type_Main_Hand", 97}, {"Damage_Min_Off_Hand", kDamageMinOff},
            {"Damage_Max_Off_Hand", kDamageMaxOff}, {"Damage_Elemental_Min_Off_Hand", 98},
            {"Damage_Elemental_Max_Off_Hand", 99}, {"Damage_Elemental_Type_Off_Hand", 100},
            {"Damage_Fire_Min_Main_Hand", 101}, {"Damage_Fire_Max_Main_Hand", 102}, {"Damage_Water_Min_Main_Hand", 105},
            {"Damage_Water_Max_Main_Hand", 106}, {"Damage_Lightning_Min_Main_Hand", 109},
            {"Damage_Lightning_Max_Main_Hand", 110}, {"Damage_Air_Min_Main_Hand", 117}, {"Damage_Air_Max_Main_Hand", 118},
            {"Damage_Earth_Min_Main_Hand", 113}, {"Damage_Earth_Max_Main_Hand", 114},
        };
        static const Entry kTail[] = {
            {"Menu_Average_Melee_To_Hit", 207}, {"Physical_Armor", 71}, {"Spell_Rating_Dodge", 164},
            {"Menu_Melee_Damage_Reduction", 209}, {"Spell_Rating_Critical", 165}, {"Menu_Average_Spell_To_Hit", 208},
            {"Spell_Damage_Bonus_Fire", 166}, {"Spell_Damage_Bonus_Earth", 169}, {"Spell_Damage_Bonus_Water", 167},
            {"Spell_Damage_Bonus_Air", 170}, {"Spell_Damage_Bonus_Lightning", 168}, {"Regen_HP", 39}, {"Regen_MP", 44},
            {"Leech_HP", 132}, {"Leech_MP", 133}, {"Special_Loot_Gold_Multiplier", 195}, {"Special_Loot_Magical_Chance", 196},
            {"Stun_Resist_Chance", 138},
        };
        auto value = [&](const Entry& entry) -> int {
            switch (entry.propId) {
                case kDamageMinMain:
                    return damageMinMain;
                case kDamageMaxMain:
                    return damageMaxMain;
                case kDamageMinOff:
                    return damageMinOff;
                case kDamageMaxOff:
                    return damageMaxOff;
                case kRatingAttack:
                    return ratingAttack;
                case kRatingCritical:
                    return props.PROPS_GetInt(63, false) + (props.PROPS_GetBonusCritRating(false) >> 8);
                default:
                    return props.PROPS_GetInt(entry.propId, false);
            }
        };
        for (const Entry& entry : kEntries) {
            nativeobj::SetNumber(object, entry.key, static_cast<double>(value(entry)));
        }
        ItemInventory& inventory = *ch;
        nativeobj::SetBool(object, "IsWeaponTwoHanded", inventory.HasTwoHander(false));
        nativeobj::SetBool(object, "HasOffHandWeapon", inventory.HasOffHandWeapon());
        nativeobj::SetBool(object, "HasStaff", inventory.HasStaff());
        nativeobj::SetBool(object, "HasBow", inventory.HasBow());
        for (const Entry& entry : kTail) {
            nativeobj::SetNumber(object, entry.key, static_cast<double>(value(entry)));
        }
    }
    call.result->set_as_object(object);
}

// 0x4497f4 NativeGetKeyboardLastString(gameswf::fn_call const&)
// The top argument is the output object (tag 5). When it is an object, the original sets opened (bool, the byte
// GSKeyboard::s_inst.m_querying, ELF 0x9a24d4) and string (GSKeyboard::GetLastString()). The object is then the result,
// set_as_object, even when the argument is not an object (then null is returned).
void NativeGetKeyboardLastString(const gameswf::fn_call& call) {
    gameswf::as_object* obj = call.arg(0).to_object();
    if (obj != nullptr) {
        gameswf::as_value opened;
        opened.set_bool(GSKeyboard::s_inst.m_querying);
        obj->set_member(tu_stringi("opened"), opened);
        gameswf::as_value text;
        text.set_string(GSKeyboard::GetLastString());
        obj->set_member(tu_stringi("string"), text);
    }
    call.result->set_as_object(obj);
}

// 0x44996c NativeGetNumPotions(gameswf::fn_call const&)
// The output object is the top argument (tag 5). The local player's Character is PlayerInfo +0x660 (unk_660). When it
// exists, the object gets NumPotions (ItemInventory::GetNumPotions) and MaxNumPotions (the unsigned byte of the inventory's
// m_maxPotions, Character +0x3a8). The original does not check the object before its setter, so a null object is skipped
// here.
void NativeGetNumPotions(const gameswf::fn_call& call) {
    gameswf::as_object* obj = call.arg(0).to_object();
    Character* ch = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    if (ch != nullptr && obj != nullptr) {
        gameswf::as_value numPotions;
        numPotions.set_double(static_cast<double>(ch->ItemInventory::GetNumPotions()));
        obj->set_member(tu_stringi("NumPotions"), numPotions);
        gameswf::as_value maxPotions;
        maxPotions.set_double(static_cast<double>(static_cast<std::uint8_t>(ch->ItemInventory::m_maxPotions)));
        obj->set_member(tu_stringi("MaxNumPotions"), maxPotions);
    }
}

// 0x449b10 NativeGetPossibleClassSpec(gameswf::fn_call const&)
// Argument 0 is the output object. The local player's character (PlayerManager::GetLocalPlayer(0, true), PlayerInfo +0x660) names
// its class by Character::SG_GetPlayerClass(); the CharacterTable rows after it give the two classes it can specialise into: the
// next row's Class1Name (row m_w6) and Class1Desc (m_w7), the row after that Class2Name and Class2Desc, all StringManager text ids
// (900-byte rows in the file). The object gets Class1Name, Class1Desc, Class2Name and Class2Desc and is the result. Without an
// object nothing is set.
void NativeGetPossibleClassSpec(const gameswf::fn_call& call) {
    gameswf::as_object* object = call.arg(0).is_object() ? call.arg(0).to_object() : nullptr;
    Character* local = Singleton<Application>::s_inst.m_playerManager->GetLocalPlayer(0, true)->unk_660;
    if (object) {
        StringManager* strings = ApplicationGetStringManager();
        const Structs::CharacterProperties* rows = reinterpret_cast<const Structs::CharacterProperties*>(Arrays::CharacterTable::members);
        const int playerClass = local->SG_GetPlayerClass();
        nativeobj::SetString(object, "Class1Name", strings->getString(rows[playerClass + 1].ClassString));
        nativeobj::SetString(object, "Class1Desc", strings->getString(rows[playerClass + 1].ClassDescString));
        nativeobj::SetString(object, "Class2Name", strings->getString(rows[playerClass + 2].ClassString));
        nativeobj::SetString(object, "Class2Desc", strings->getString(rows[playerClass + 2].ClassDescString));
        call.result->set_as_object(object);
    }
}

// 0x449e70 NativeSetOptions(gameswf::fn_call const&)
// Arguments: the option key (0), the output object (1) and the value (2). For the key "Language" the value passes through
// ResolveLanguageOption(value, isKOREAN_BUILD, lang_kor, lang_curr) and becomes lang_curr. SavegameManager::setOption(key, value),
// UpdateSavedValues(); "VolumeFX" (channel 1) or "VolumeMusic" (channel 2) also set the sound volume of VoxSoundManager::s_instance
// (when it exists) to the saved option as a float; "Language" resets the menu fonts. The object (when present) gets CurrentOption (the
// stored option) and OptionString (its string, empty when the option string index minus the option is -1) and is the result.
void NativeSetOptions(const gameswf::fn_call& call) {
    const char* key = call.arg(0).to_string();
    gameswf::as_object* object = call.arg(1).is_object() ? call.arg(1).to_object() : nullptr;
    int value = static_cast<int>(call.arg(2).to_number());
    const bool isLanguage = std::strcmp("Language", key) == 0;
    if (isLanguage) {
        value = ResolveLanguageOption(value, isKOREAN_BUILD, lang_kor, lang_curr);
        lang_curr = value;
    }
    SavegameManager* savegames = Singleton<Application>::s_inst.m_savegameManager;
    savegames->setOption(key, value);
    UpdateSavedValues();
    if (std::strcmp(key, "VolumeFX") == 0) {
        if (VoxSoundManager::s_instance) {
            VoxSoundManager::s_instance->SetSoundVolume(1, static_cast<float>(Singleton<Application>::s_inst.GetSavedOption("VolumeFX")));
        }
    } else if (std::strcmp(key, "VolumeMusic") == 0 && VoxSoundManager::s_instance) {
        VoxSoundManager::s_instance->SetSoundVolume(2, static_cast<float>(Singleton<Application>::s_inst.GetSavedOption("VolumeMusic")));
    }
    const int option = savegames->getOption(key);
    const int optionString = savegames->getOptionString(key);
    const char* text = optionString - option == -1 ? "" : ApplicationGetStringManager()->getString(optionString);
    if (isLanguage) {
        MenuManager::GetInstance()->ResetFonts();
    }
    if (object) {
        nativeobj::SetNumber(object, "CurrentOption", static_cast<double>(option));
        nativeobj::SetString(object, "OptionString", text);
        call.result->set_as_object(object);
    }
}

// 0x44a298 NativeGetOptionParameters(gameswf::fn_call const&)
// Arguments: the option key (0) and the output object (1). Option = getOption(key), OptionMax = getOptionMax(key) and the string index
// getOptionString(key); the text is empty when that index minus the option is -1, else StringManager::getString(index). The object
// (when present) gets NumOptions (OptionMax, forced to 5 for "Language" in the Korean build), CurrentOption and OptionString and is
// the result. In the Korean build "Language" also stores the option in lang_kor, object or not.
void NativeGetOptionParameters(const gameswf::fn_call& call) {
    const char* key = call.arg(0).to_string();
    gameswf::as_object* object = call.arg(1).is_object() ? call.arg(1).to_object() : nullptr;
    SavegameManager* savegames = Singleton<Application>::s_inst.m_savegameManager;
    const int option = savegames->getOption(key);
    int optionMax = savegames->getOptionMax(key);
    const int optionString = savegames->getOptionString(key);
    const char* text = optionString - option == -1 ? "" : ApplicationGetStringManager()->getString(optionString);
    if (object) {
        if (isKOREAN_BUILD && std::strcmp("Language", key) == 0) {
            optionMax = 5;
        }
        nativeobj::SetNumber(object, "NumOptions", static_cast<double>(optionMax));
        nativeobj::SetNumber(object, "CurrentOption", static_cast<double>(option));
        nativeobj::SetString(object, "OptionString", text);
        call.result->set_as_object(object);
    }
    if (isKOREAN_BUILD && std::strcmp("Language", key) == 0) {
        lang_kor = option;
    }
}

// 0x44a5c4 NativeInvGetPlayerGold(gameswf::fn_call const&)
// Argument 0 is the player index. With two arguments the second is the output object; with three the third is a flag that goes to
// NativeGetPlayerChar. For a character, GoldString is StringManager::parse("^d", gold) with the character's gold (ItemInventory +0x20,
// Character +0x39c). With an object it gets Gold (a number) and GoldString and is the result; without one the result is the string.
void NativeInvGetPlayerGold(const gameswf::fn_call& call) {
    const int player = static_cast<int>(call.arg(0).to_number());
    gameswf::as_object* object = nullptr;
    bool flag = false;
    if (call.nargs == 2) {
        object = call.arg(1).is_object() ? call.arg(1).to_object() : nullptr;
    } else if (call.nargs == 3) {
        flag = call.arg(2).to_bool();
    }
    std::string goldText;
    Character* ch = NativeGetPlayerChar(player, flag);
    if (ch) {
        const int gold = ch->ItemInventory::m_gold;
        ApplicationGetStringManager()->parse(goldText, "^d", gold);
        if (object) {
            nativeobj::SetNumber(object, "Gold", static_cast<double>(gold));
            nativeobj::SetString(object, "GoldString", goldText.c_str());
            call.result->set_as_object(object);
        } else {
            call.result->set_string(goldText.c_str());
        }
    }
}

// 0x44a820 NativeHUDGetActiveFaery(gameswf::fn_call const&)
// The player index is to_number of the top argument, and the character is NativeGetPlayerChar(index, false). With two
// arguments and an object below the top, the object gets Id (SG_GetCurrentFaerieId(-1)) and Upgraded (SG_GetFaerieLevel(id,
// -1) > 0) and is the result (set_as_object). Otherwise the result is the Id as a number. No character: nothing is set.
void NativeHUDGetActiveFaery(const gameswf::fn_call& call) {
    const int player = static_cast<int>(call.arg(0).to_number());
    gameswf::as_object* obj = nullptr;
    if (call.nargs == 2 && call.arg(1).is_object()) {
        obj = call.arg(1).to_object();
    }
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch == nullptr) {
        return;
    }
    if (obj != nullptr) {
        gameswf::as_value id;
        id.set_double(static_cast<double>(ch->SG_GetCurrentFaerieId(-1)));
        obj->set_member(tu_stringi("Id"), id);
        gameswf::as_value upgraded;
        const int faerieId = ch->SG_GetCurrentFaerieId(-1);
        upgraded.set_bool(ch->SG_GetFaerieLevel(static_cast<unsigned int>(faerieId), -1) > 0);
        obj->set_member(tu_stringi("Upgraded"), upgraded);
        call.result->set_as_object(obj);
    } else {
        call.result->set_double(static_cast<double>(ch->SG_GetCurrentFaerieId(-1)));
    }
}

// 0x44aa28 NativeGetSaveSlotDetails(gameswf::fn_call const&)
// Arguments: the slot position (0), the output object (1) and, with three arguments, a difficulty (2; otherwise -1). The four save
// slots 0..3 are split into those that exist (PlayerSavegame::SG_Exists) and those that do not. Position p of the existing slots is used
// when all four exist or p is within them; otherwise the first free slot is described as empty. The slot is loaded into a
// PlayerSavegame (load mode 17). A used slot has the class name (CharacterTable m_w6 text of the saved class), the level, the
// "<class> <GAMEPLAYMENUS_LEVEL> <level>" text, the last-save time formatted by the language (SaveSlotTimeFormat) and, for the chosen
// difficulty (the running one when none is given), the level location (LevelList row m_w9 text) and the quest act. The object gets
// SlotID, InUse, PlayerName, PlayerClass, PlayerLVL, StringClassLVL, PlayerLocation, PlayerLastSave, PlayerCurrentAct, Difficulty and
// DifficultyUnlocked (empty strings, -1 level, act 1 and 0 for an unused slot) and is the result. The original prints "INFO: <level
// id>" to stdout while filling the object.
void NativeGetSaveSlotDetails(const gameswf::fn_call& call) {
    const int position = static_cast<int>(call.arg(0).to_number());
    gameswf::as_object* object = call.arg(1).is_object() ? call.arg(1).to_object() : nullptr;
    int difficulty = call.nargs == 3 ? static_cast<int>(call.arg(2).to_number()) : -1;
    std::vector<int> usedSlots;
    std::vector<int> freeSlots;
    for (int slot = 0; slot <= 3; ++slot) {
        if (PlayerSavegame::SG_Exists(static_cast<std::uint32_t>(slot))) {
            usedSlots.push_back(slot);
        } else {
            freeSlots.push_back(slot);
        }
    }
    const int usedCount = static_cast<int>(usedSlots.size());
    StringManager* strings = ApplicationGetStringManager();
    int slotId;
    bool inUse;
    std::string className;
    // The original builds the PlayerSavegame in place (load mode 17) in both cases; the chosen slot is the first free one when the
    // position is beyond the used slots.
    if (usedCount == 4 || usedCount - 1 >= position) {
        slotId = usedSlots[static_cast<std::size_t>(position)];
        inUse = true;
    } else {
        slotId = freeSlots.front();
        inUse = false;
    }
    PlayerSavegame save(static_cast<std::uint32_t>(slotId), 17, false);
    if (inUse) {
        const Structs::CharacterProperties* rows = reinterpret_cast<const Structs::CharacterProperties*>(Arrays::CharacterTable::members);
        className = strings->getString(rows[save.m_playerClass].ClassString);
    }
    std::string classLevelText = className + " ";
    classLevelText += strings->getString(ApplicationGetPyDataConstants()->getConstant("StrID", "GAMEPLAYMENUS_LEVEL"));
    classLevelText += " ";
    char number[16];
    std::snprintf(number, sizeof number, "%d", inUse ? save.m_playerLevel : 1);
    classLevelText += number;
    char lastSave[80];
    lastSave[0] = '\0';
    if (inUse) {
        const std::time_t saveDate = static_cast<std::time_t>(static_cast<std::int32_t>(save.m_saveDate));
        const std::tm* local = std::localtime(&saveDate);
        std::strftime(lastSave, sizeof lastSave, SaveSlotTimeFormat(Singleton<Application>::s_inst.m_savegameManager->getLanguage()), local);
    }
    if (difficulty == -1 && inUse) {
        difficulty = PlayerSavegame::m_difficultyLevel;
    }
    if (object) {
        const int levelId = (difficulty >= 0 && difficulty < 3) ? save.unk_50[difficulty] : 0;
        nativeobj::SetNumber(object, "SlotID", static_cast<double>(slotId));
        nativeobj::SetBool(object, "InUse", inUse);
        nativeobj::SetString(object, "PlayerName", inUse ? save.m_name.c_str() : "");
        nativeobj::SetString(object, "PlayerClass", inUse ? className.c_str() : "");
        nativeobj::SetNumber(object, "PlayerLVL", static_cast<double>(inUse ? save.m_playerLevel : -1));
        nativeobj::SetString(object, "StringClassLVL", inUse ? classLevelText.c_str() : "");
        std::printf("INFO: %d\n", levelId);
        const char* location = "";
        if (inUse) {
            const Structs::LevelDeclaration* levels = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members);
            location = strings->getString(levels[levelId == -1 ? 0 : levelId].LevelName);
        }
        nativeobj::SetString(object, "PlayerLocation", location);
        nativeobj::SetString(object, "PlayerLastSave", inUse ? lastSave : "");
        nativeobj::SetNumber(object, "PlayerCurrentAct", static_cast<double>(inUse ? save.SG_GetQuestSG()->m_act[difficulty] : 1));
        nativeobj::SetNumber(object, "Difficulty", static_cast<double>(inUse ? difficulty : 0));
        nativeobj::SetNumber(object, "DifficultyUnlocked", static_cast<double>(inUse ? save.m_unlockedDifficulty : 0));
    }
    call.result->set_as_object(object);
}

// 0x44b604 NativeGetBuffs(gameswf::fn_call const&)
// Two or three arguments: the output array (0, an object), the player index (1, a number) and, with three, a flag (2, a boolean or
// undefined) for NativeGetPlayerChar. For a character, every buff kind that has live instances (CharProperties::m_buffs, in key
// order) becomes an object bound to the call's player with BuffCount (instances), BuffIcon (the kind's name), BuffTime and BuffTotalTime
// (CharTimers::TMR_TimeLeft of the single instance's timer when there is exactly one and its timer is set; otherwise 0), pushed onto the
// array. The result is the array (also when there are no buffs).
void NativeGetBuffs(const gameswf::fn_call& call) {
    if (call.nargs != 2 && call.nargs != 3) {
        return;
    }
    if (!call.arg(0).is_object() || !call.arg(1).is_number()) {
        return;
    }
    if (call.nargs == 3 && !call.arg(2).is_bool() && !call.arg(2).is_undefined()) {
        return;
    }
    gameswf::as_array* array = gameswf::cast_to<gameswf::as_array>(call.arg(0).to_object());
    const int player = static_cast<int>(call.arg(1).to_number());
    const bool flag = call.nargs == 3 ? call.arg(2).to_bool() : false;
    Character* ch = NativeGetPlayerChar(player, flag);
    if (!ch) {
        return;
    }
    for (const auto& entry : ch->CharProperties::m_buffs) {
        const CharProperties::BuffDecl& decl = entry.second;
        if (decl.m_insts.empty()) {
            continue;
        }
        gameswf::as_object* object = nativeobj::NewObject(call);
        unsigned int timeLeft = 0;
        unsigned int totalTime = 0;
        nativeobj::SetNumber(object, "BuffCount", static_cast<double>(decl.m_insts.size()));
        nativeobj::SetString(object, "BuffIcon", decl.m_name.c_str());
        if (decl.m_insts.size() == 1 && decl.m_insts.front()->m_timerId != -1) {
            ch->CharTimers::TMR_TimeLeft(static_cast<unsigned int>(decl.m_insts.front()->m_timerId), timeLeft, totalTime);
        }
        nativeobj::SetNumber(object, "BuffTime", static_cast<double>(static_cast<int>(timeLeft)));
        nativeobj::SetNumber(object, "BuffTotalTime", static_cast<double>(static_cast<int>(totalTime)));
        nativeobj::PushObject(array, object);
    }
    call.result->set_as_object(array);
}

// 0x44bb94 NativeInvGetItemsListForSlot(gameswf::fn_call const&)
// Exactly three arguments: the equipment slot (a number), the output array (an object) and the player index (a number). For a
// character the original lists the items for the slot (ItemInventory::GetValuableItems when the slot is the EquipmentSlots "Count"
// constant, else GetItemListForSlot), sorts the list with SortByEquipability(character, slot) (STLport introsort) and then, per
// entry that has an item (listing 0x44be5c..0x44c1a8; the Hex-Rays text dropped this loop), pushes an object onto the array with
// ItemName ("<font color='#%000000X'>name</font>", the item's GetColor), ItemIndex (the entry's index), ItemEquippable (count mode
// or IsEquippableBy the character), ItemEquipped (not count mode and the item is the character's equipped item for the slot),
// ItemEquippedOtherHand (not count mode: for a hand slot the item is the equipped item of the other hand, for a ring-finger slot
// the equipped item of the other finger) and ItemQuantity (the stack size in decimal in count mode, a space otherwise).
// The result is the array.
void NativeInvGetItemsListForSlot(const gameswf::fn_call& call) {
    if (call.nargs != 3 || !call.arg(0).is_number() || !call.arg(1).is_object() || !call.arg(2).is_number()) {
        return;
    }
    const int slot = call.arg(0).to_int();
    gameswf::as_array* array = gameswf::cast_to<gameswf::as_array>(call.arg(1).to_object());
    Character* ch = NativeGetPlayerChar(call.arg(2).to_int(), false);
    if (ch) {
        std::vector<ItemInventory::Item> items;
        ItemInventory& inventory = *ch;
        const bool countMode = slot == ApplicationGetPyDataConstants()->getConstant("EquipmentSlots", "Count");
        if (countMode) {
            inventory.GetValuableItems(&items);
        } else {
            inventory.GetItemListForSlot(static_cast<unsigned int>(slot), &items);
        }
        SortByEquipability comparator;
        comparator.m_character = ch;
        comparator.m_equipSlot = slot;
        stlport::Sort(items.begin(), items.end(), comparator);

        // The "other" slot of a pair: LeftHand<->RightHand and LeftHandRingFinger<->RightHandRingFinger (the original evaluates the
        // four constants for every slot).
        PyDataConstants* constants = ApplicationGetPyDataConstants();
        const int leftHand = constants->getConstant("EquipmentSlots", "LeftHand");
        const int rightHand = constants->getConstant("EquipmentSlots", "RightHand");
        const int leftRing = constants->getConstant("EquipmentSlots", "LeftHandRingFinger");
        const int rightRing = constants->getConstant("EquipmentSlots", "RightHandRingFinger");
        const bool pairedSlot = slot == leftHand || slot == rightHand || slot == leftRing || slot == rightRing;
        int otherSlot = 0;
        if (slot == leftHand || slot == rightHand) {
            otherSlot = slot == leftHand ? rightHand : leftHand;
        } else if (slot == leftRing || slot == rightRing) {
            otherSlot = slot == leftRing ? rightRing : leftRing;
        }

        for (const ItemInventory::Item& entry : items) {
            ItemInstance* item = entry.m_item;
            if (!item) {
                continue;
            }
            char text[1024];
            std::snprintf(text, sizeof text, "<font color='#%000000X'>%s</font>", static_cast<unsigned int>(item->GetColor()),
                          item->m_name.c_str());
            gameswf::as_object* object = nativeobj::NewObject(call);
            nativeobj::SetString(object, "ItemName", text);
            nativeobj::SetNumber(object, "ItemIndex", static_cast<double>(static_cast<int>(entry.m_index)));
            nativeobj::SetBool(object, "ItemEquippable", countMode || item->IsEquippableBy(ch));
            nativeobj::SetBool(object, "ItemEquipped", !countMode && item == inventory.GetEquippedItem(static_cast<unsigned int>(slot)));
            nativeobj::SetBool(object, "ItemEquippedOtherHand",
                               !countMode && pairedSlot && item == inventory.GetEquippedItem(static_cast<unsigned int>(otherSlot)));
            char quantity[16];
            if (countMode) {
                std::snprintf(quantity, sizeof quantity, "%d", static_cast<int>(item->m_qty));
            } else {
                quantity[0] = ' ';
                quantity[1] = '\0';
            }
            nativeobj::SetString(object, "ItemQuantity", quantity);
            nativeobj::PushObject(array, object);
        }
        call.result->set_as_object(array);
    }
}

// 0x44c444 NativeGetQuestDetails(gameswf::fn_call const&)
// The output object is the top argument, the player index is the argument below it and the quest index the third from the
// top. The quest index must satisfy 0 <= index < SG_GetNumQuests(-1) of the player's character (NativeGetPlayerChar(player,
// false)); then the object gets Title, PreDescription, ObjectiveDescription, PostDescription (strings) and IsPrimary (bool)
// from Character::SG_GetQuestByID(index, -1). The native returns nothing.
void NativeGetQuestDetails(const gameswf::fn_call& call) {
    gameswf::as_object* obj = call.arg(0).to_object();
    const int player = static_cast<int>(call.arg(1).to_number());
    const int index = static_cast<int>(call.arg(2).to_number());
    Character* ch = NativeGetPlayerChar(player, false);
    if (ch == nullptr || obj == nullptr) {
        return;
    }
    if (index < 0 || index >= ch->SG_GetNumQuests(-1)) {
        return;
    }
    Quest* quest = ch->SG_GetQuestByID(index, -1);
    gameswf::as_value title;
    title.set_string(quest->GetTitle());
    obj->set_member(tu_stringi("Title"), title);
    gameswf::as_value pre;
    pre.set_string(quest->GetPreDescription());
    obj->set_member(tu_stringi("PreDescription"), pre);
    gameswf::as_value objective;
    objective.set_string(quest->GetObjectiveDescription().c_str());
    obj->set_member(tu_stringi("ObjectiveDescription"), objective);
    gameswf::as_value post;
    post.set_string(quest->GetPostDescription());
    obj->set_member(tu_stringi("PostDescription"), post);
    gameswf::as_value primary;
    primary.set_bool(quest->IsPrimary());
    obj->set_member(tu_stringi("IsPrimary"), primary);
}

// 0x44c7a0 NativeGetCharMenuTutorialMessage(gameswf::fn_call const&)
// The original builds a temporary CharMenuTutorialMsg (id -1, two empty strings) and destroys it at once; nothing reads it,
// so it is not written. The front of the CharMenuTutorialMsg queue (Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>,
// queue 0) is read, not popped. When the queue is non-empty, the object gets TutorialMessage (StringManager::getString of
// the message id), TutorialFrame (m_frame) and TutorialMenu (m_menu), and the result is true. Otherwise the result is false.
void NativeGetCharMenuTutorialMessage(const gameswf::fn_call& call) {
    gameswf::as_object* obj = call.arg(0).to_object();
    const auto& queue = Singleton<MenuMessageManager<CharMenuTutorialMsg, 1>>::s_inst.m_queues[0];
    bool found = false;
    if (!queue.empty()) {
        const CharMenuTutorialMsg& front = queue.front();
        if (obj != nullptr) {
            gameswf::as_value message;
            message.set_string(ApplicationGetInstance().m_stringManager->getString(front.m_stringId));
            obj->set_member(tu_stringi("TutorialMessage"), message);
            gameswf::as_value frame;
            frame.set_string(front.m_frame.c_str());
            obj->set_member(tu_stringi("TutorialFrame"), frame);
            gameswf::as_value menu;
            menu.set_string(front.m_menu.c_str());
            obj->set_member(tu_stringi("TutorialMenu"), menu);
        }
        found = true;
    }
    call.result->set_bool(found);
}

// 0x44ca5c NativeInvGetItemDetails(gameswf::fn_call const&)
// Arguments: the item index (0, a number), the output object (1, an object), the player index (2, a number) and, only with six
// arguments, a merchant lookup (3 a boolean "from the merchant", 4 the merchant object's name, 5 the lookup flags). The item is the
// merchant's (when the lookup found an object with IsMerchant and the flag is set) or the player's item at the index. The merchant row
// gives the sell percentage (MerchantTable +0x04) and the buy percentage (+0x08), both /100 as floats. The values: ItemValue is the
// item value (ItemInstance +0x54); ItemBuyValue is value * buy percentage and ItemSellValue value * sell percentage (swapped for a
// buy-back item shown by a merchant), each raised to at least 1; ItemTransmuteValue is (TransmuteMultiplier * ((value << 8) *
// (property 197 + 256) >> 8)) >> 16, at least 1. Each also has a "...String" text (StringManager::parse "^d"). The object also gets
// ItemEquippable (IsEquippableBy the player), ItemReqsDesc, ItemStatsDesc, ItemMagics (power count), ItemIcon, IsStackable and
// ItemPowers<i>Desc for every power, and is the result. Without an item nothing is set.
void NativeInvGetItemDetails(const gameswf::fn_call& call) {
    if (!call.arg(0).is_number() || !call.arg(1).is_object() || !call.arg(2).is_number()) {
        return;
    }
    const int itemIndex = static_cast<int>(call.arg(0).to_number());
    gameswf::as_object* object = call.arg(1).to_object();
    const int player = static_cast<int>(call.arg(2).to_number());
    Character* merchant = nullptr;
    bool fromMerchant = false;
    if (call.nargs == 6 && call.arg(3).is_bool() && call.arg(4).is_string() && call.arg(5).is_number()) {
        fromMerchant = call.arg(3).to_bool();
        const char* merchantName = call.arg(4).to_string();
        const int flags = static_cast<int>(call.arg(5).to_number());
        ObjectHandle handle = Singleton<Application>::s_inst.m_objectManager->GetObjectByName(merchantName, flags, false, nullptr);
        merchant = handle.operator Character*();
        if (!merchant || !merchant->IsMerchant()) {
            merchant = nullptr;
        }
    }
    Character* ch = NativeGetPlayerChar(player, false);
    if (!ch) {
        return;
    }
    float sellPercent = 0.0f;
    float buyPercent = 0.0f;
    if (merchant && merchant->IsMerchant()) {
        const Structs::Merchant* row = reinterpret_cast<const Structs::Merchant*>(Arrays::MerchantTable::members) + merchant->GetLoot();
        sellPercent = static_cast<float>(row->BuyMultiplier) / 100.0f;
        buyPercent = static_cast<float>(row->SellMultiplier) / 100.0f;
    }
    ItemInstance* item = (fromMerchant && merchant) ? static_cast<ItemInventory&>(*merchant).GetItem(static_cast<unsigned int>(itemIndex))
                                                   : static_cast<ItemInventory&>(*ch).GetItem(static_cast<unsigned int>(itemIndex));
    if (!item) {
        return;
    }
    StringManager* strings = ApplicationGetStringManager();
    const std::int32_t shiftedValue = static_cast<std::int32_t>(static_cast<std::uint32_t>(item->m_value) << 8);
    const std::int32_t bonus = ch->CharProperties::_GetProperty(ch->CharProperties::m_props, 197) + 256;
    const std::int32_t product = static_cast<std::int32_t>(static_cast<std::uint32_t>(shiftedValue) * static_cast<std::uint32_t>(bonus));
    const std::int32_t transmuteProduct = static_cast<std::int32_t>(
        static_cast<std::uint32_t>(ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "TransmuteMultiplier")) *
        static_cast<std::uint32_t>(product >> 8));
    int transmuteValue = transmuteProduct >> 16;
    const float value = static_cast<float>(item->m_value);
    const int sellFromSellPercent = static_cast<int>(value * sellPercent);
    int sellValue = static_cast<int>(buyPercent * value);
    int buyValue;
    if (item->unk_69 && fromMerchant) {
        buyValue = sellFromSellPercent;
    } else {
        buyValue = static_cast<int>(buyPercent * value);
        sellValue = sellFromSellPercent;
    }
    if (sellValue < 1) {
        sellValue = 1;
    }
    if (buyValue < 1) {
        buyValue = 1;
    }
    if (transmuteValue < 1) {
        transmuteValue = 1;
    }
    std::string valueText;
    std::string buyText;
    std::string sellText;
    std::string transmuteText;
    strings->parse(valueText, "^d", item->m_value);
    strings->parse(buyText, "^d", buyValue);
    strings->parse(sellText, "^d", sellValue);
    strings->parse(transmuteText, "^d", transmuteValue);
    nativeobj::SetNumber(object, "ItemValue", static_cast<double>(item->m_value));
    nativeobj::SetNumber(object, "ItemBuyValue", static_cast<double>(buyValue));
    nativeobj::SetNumber(object, "ItemSellValue", static_cast<double>(sellValue));
    nativeobj::SetNumber(object, "ItemTransmuteValue", static_cast<double>(transmuteValue));
    nativeobj::SetString(object, "ItemValueString", valueText.c_str());
    nativeobj::SetString(object, "ItemBuyValueString", buyText.c_str());
    nativeobj::SetString(object, "ItemSellValueString", sellText.c_str());
    nativeobj::SetString(object, "ItemTransmuteValueString", transmuteText.c_str());
    nativeobj::SetBool(object, "ItemEquippable", item->IsEquippableBy(ch));
    nativeobj::SetString(object, "ItemReqsDesc", item->m_requirements.c_str());
    nativeobj::SetString(object, "ItemStatsDesc", item->m_stats.c_str());
    nativeobj::SetNumber(object, "ItemMagics", static_cast<double>(item->GetNumPowers()));
    nativeobj::SetString(object, "ItemIcon", item->GetIconName());
    nativeobj::SetBool(object, "IsStackable", item->IsStackable());
    for (int i = 0; i < item->GetNumPowers(); ++i) {
        char name[32];
        std::snprintf(name, sizeof name, "ItemPowers%dDesc", i);
        nativeobj::SetString(object, name, item->GetPowerDesc(static_cast<unsigned int>(i)));
    }
    call.result->set_as_object(object);
}

namespace {

// The text of a friend number as GetGLFriendsNumber hands it out: the original returns the pointer of a number string that the caller copies with strdup;
// the host declaration returns the number itself (GLXPlayerUserFriend::GetUserNumber), which is written in decimal.
template <typename T>
std::string FriendNumberText(T number) {
    if constexpr (std::is_pointer_v<T>) {
        return number != nullptr ? std::string(number) : std::string();
    } else {
        return std::to_string(number);
    }
}

}  // namespace

// 0x44d770 NativeInvitePlayer(gameswf::fn_call const&)
// Does nothing unless this is an online game (COnline flag at +5) and the online state's mode (+0x34) is 3 (GLLive). The top argument, when there
// is one, is the output array (an object cast to as_array). Two paths on CMatchingGLLive::GLFriendsListLoaded():
//   Loaded: every entry of the game friend list (a copy of GetGLFriendsList()) is pushed onto the array as an object {name, id (the friend's number),
//   sent (the invited flag), online}.
//   Not loaded: for each index below GetGLFriendsCount() the name and the number are copied (strdup in the original, which hands the copies to the
//   list entry; std::string copies here) and the state is read. With an array, an object {name, id, sent = false, online = (state == 2)} is
//   pushed and the entry (number, name, online, not invited) is added to the game friend list (AddFriendInGameList). After the loop
//   GLFriendsListLoaded(true) is set.
void NativeInvitePlayer(const gameswf::fn_call& call) {
    if (!GetOnlineGameFlag()) {
        return;
    }
    if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ != 3) {
        return;
    }
    CMatchingGLLive* matching = static_cast<CMatchingGLLive*>(CMatching::Get());
    auto outputArray = [&call]() -> gameswf::as_array* {
        if (call.nargs > 0 && call.arg(0).is_object()) {
            return gameswf::cast_to<gameswf::as_array>(call.arg(0).to_object());
        }
        return nullptr;
    };
    auto pushFriend = [&call](gameswf::as_array* array, const char* name, const char* number, bool sent, bool online) {
        gameswf::as_object* object = nativeobj::NewObject(call);
        nativeobj::SetString(object, "name", name);
        nativeobj::SetString(object, "id", number);
        nativeobj::SetBool(object, "sent", sent);
        nativeobj::SetBool(object, "online", online);
        nativeobj::PushObject(array, object);
    };
    if (matching->GLFriendsListLoaded()) {
        const std::list<GLFriendInfo> friends = static_cast<CMatchingGLLive*>(CMatching::Get())->GetGLFriendsList();
        for (const GLFriendInfo& entry : friends) {
            if (gameswf::as_array* array = outputArray()) {
                pushFriend(array, entry.name.c_str(), entry.number.c_str(), entry.invited, entry.online);
            }
        }
    } else {
        const int count = static_cast<CMatchingGLLive*>(CMatching::Get())->GetGLFriendsCount();
        for (int index = 0; index < count; ++index) {
            const char* nameText = matching->GetGLFriendsName(index);
            std::string name = nameText != nullptr ? nameText : "";
            std::string number = FriendNumberText(matching->GetGLFriendsNumber(index));
            const int state = matching->GetGLFriendState(index);
            if (gameswf::as_array* array = outputArray()) {
                pushFriend(array, name.c_str(), number.c_str(), false, state == 2);
                GLFriendInfo info;
                info.number = number;
                info.name = name;
                info.online = state == 2;
                info.invited = false;
                static_cast<CMatchingGLLive*>(CMatching::Get())->AddFriendInGameList(info);
            }
        }
        static_cast<CMatchingGLLive*>(CMatching::Get())->GLFriendsListLoaded(true);
    }
}

// 0x44de4c NativeGetParsedString(gameswf::fn_call const&)
// Two arguments: the string symbol (0, a string) and an array of values (1, an object). The format is
// StringManager::getStringFromSymbol(symbol); every array element becomes a VarArgs variant: a string gives its text, a number gives
// number (as float), integer (truncated) and the text of the number; other values stay empty. StringManager::parseEx fills the
// result string. The original points the variant text of a number at a stack tu_string that dies at the end of the loop step; here the
// texts are kept alive until parseEx has run.
void NativeGetParsedString(const gameswf::fn_call& call) {
    if (call.nargs != 2) {
        return;
    }
    if (!call.arg(0).is_string() || !call.arg(1).is_object()) {
        return;
    }
    const char* symbol = call.arg(0).to_xstring();
    gameswf::as_array* array = gameswf::cast_to<gameswf::as_array>(call.arg(1).to_object());
    if (symbol) {
        StringManager* strings = ApplicationGetStringManager();
        const char* format = strings->getStringFromSymbol(symbol);
        std::string text;
        VarArgs args;
        const int count = array->size();
        std::vector<std::string> numberTexts(static_cast<std::size_t>(count > 0 ? count : 0));
        for (int i = 0; i < count; ++i) {
            gameswf::as_value element;
            array->get_member(i, &element);
            VarArgs::Variant variant;
            if (element.is_string()) {
                numberTexts[static_cast<std::size_t>(i)] = element.to_xstring();  // owned copy: the element dies with this iteration
                variant.text = numberTexts[static_cast<std::size_t>(i)].c_str();
            } else if (element.is_number()) {
                variant.integer = static_cast<int>(element.to_number());
                variant.number = static_cast<float>(element.to_number());
                numberTexts[static_cast<std::size_t>(i)] = element.to_string();
                variant.text = numberTexts[static_cast<std::size_t>(i)].c_str();
            }
            args.m_variants.push_back(variant);
        }
        strings->parseEx(text, format, args);
        call.result->set_string(text.c_str());
    }
}
