// Batch g1-game-app-global-f216b6-14 (<global>, part 15 of 22): the gameswf natives of the cursor, HUD, save-slot,
// dialog, tutorial and multiplayer info queries (ELF 0x44e270 .. 0x450b78), and the GetNewScriptCmdImplInstance<T>()
// factories of twelve script commands (ELF 0x457714 .. 0x457a2c). Declarations: dh2/global/native_get.hpp and
// dh2/global/GetNewScriptCmdImplInstance.hpp.
//
// Facts shared by the natives:
//   - gameswf calls each native as void(const fn_call&). From the pseudocode, fn_call +0x00 is the result
//     (as_value*), +0x0c the argument stack (12-byte as_value entries), +0x10 the argument count and +0x14 the
//     index of the first argument.
//   - Every native reads its arguments with call.arg(i) and writes call.result through the vendored gameswf API (vendor-gameswf/as_value.hpp,
//     dh2/global/native_object_helpers.hpp for objects and arrays).
//   - The dialog and quest queue is MenuMessageManager<DialogMsg,1> (dh2/MenuMessageManager.hpp).

// Facts shared by the factories:
//   - Each allocates 0x10 bytes (operator new(0x10u, 0) in the pseudocode). The 64 in the queue is the function body
//     size, not the allocation. The host allocates sizeof(T) and ignores the hint.
//   - The original stores m_args (+0x0c) = 0, unk_04 (+0x04) = 0 and m_cmdId (+0x08) = -1. The vtable (+0x00) is set by
//     the class constructor here.

#include "dh2/global/GetNewScriptCmdImplInstance.hpp"
#include "dh2/global/native_get.hpp"

#include <cstdint>
#include <cstdio>
#include <ctime>
#include <string>
#include <vector>

#include "core-platform/w7_global_rem.hpp"
#include "dh2/Application.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/Character.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/TutorialMsg.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/native_app_bindings.hpp"
#include "dh2/global/native_object_helpers.hpp"
#include "dh2/global/native_player_info_options.hpp"
#include "dh2/CRoomAttributes.hpp"
#include "dh2/global/net_singletons.hpp"
#include "gameswf/gameswf_environment.h"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/t_member_info.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"
#include "net-transport/tb/cnet_player_info.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_BlockSaveGame.hpp"
#include "dh2/Script_DoTutorial.hpp"
#include "dh2/Script_EnqueueCharMenuTutorialMessage.hpp"
#include "dh2/Script_EnqueueTutorialMessage.hpp"
#include "dh2/Script_FlushMessages.hpp"
#include "dh2/Script_LockTutorial.hpp"
#include "dh2/Script_SaveGame.hpp"
#include "dh2/Script_ShowTrophies.hpp"
#include "dh2/Script_SkipAllCharMenuTutorialMessages.hpp"
#include "dh2/Script_SkipAllTutorialMessages.hpp"
#include "dh2/Script_SkipCharMenuTutorialMessage.hpp"
#include "dh2/Script_SkipTutorialMessage.hpp"

// 0x44e270 NativeGetCursorState(gameswf::fn_call const&)
// With exactly one argument (the controller index, to_number): the controller record is RenderFX::GetController(index) of the HUD root
// (MenuManager::GetHUDRoot()); its cursor position (x, y) is converted with root::screen_to_logical and its pressed state (controller int at +0x0c) is
// kept. The four cursor objects (the gameswf array at +0x154 of the MenuManager's MultiMenuManager) are created, four plain objects, on first use
// (when the array is empty). The object of that index gets "x", "y" and "state" (numbers) and is the result. Any other argument count leaves the result
// null (set_as_object with null).
void NativeGetCursorState(const gameswf::fn_call& call) {
    gameswf::as_object* cursor = nullptr;
    if (call.nargs == 1) {
        const int index = static_cast<int>(call.arg(0).to_number());
        MenuManager* menus = MenuManager::GetInstance();
        const RenderFX::Cursor controllerCursor = menus->GetHUDRoot()->GetController(index)->m_cursor;
        auto& cursors = reinterpret_cast<::array<::smart_ptr<gameswf::as_object>>&>(menus->m_multiMenuManager->unk_154);
        if (cursors.size() == 0) {
            for (int i = 0; i < 4; ++i) {
                gameswf::as_object* created = nativeobj::NewObject(call);
                cursors.push_back(::smart_ptr<gameswf::as_object>(created));
            }
        }
        gameswf::point position;
        position.m_x = controllerCursor.x;
        position.m_y = controllerCursor.y;
        MenuManager::GetInstance()->GetHUDRoot()->GetRoot()->screen_to_logical(position);
        cursor = cursors[index].get_ptr();
        nativeobj::SetNumber(cursor, "x", static_cast<double>(position.m_x));
        nativeobj::SetNumber(cursor, "y", static_cast<double>(position.m_y));
        nativeobj::SetNumber(cursor, "state", static_cast<double>(controllerCursor.state));
    }
    call.result->set_as_object(cursor);
}

// 0x44e5cc NativeGetPlayerHUDInfos(gameswf::fn_call const&)
// Two or three arguments: the output object (0), the player index (1) and, with three, a flag for NativeGetPlayerChar (2). The
// object gets PlayerActive: true when the character exists, is not marked for deletion (ObjectBase +0x81) and is visible (+0x80),
// otherwise false (and nothing else). For an active character: LEVEL, HP_PCT (100 * the raw HP word / the raw Max_HP word), HP_LOWPCT
// (CharacterDesign LowHealthPercentage), MP_PCT, XP_PCT, SPELL_PCT (the spell script's info * 100, truncated), SPELL_MP (spell
// usable), SKILL1_PCT / SKILL1_MP, SKILL2_PCT / SKILL2_MP and SKILL3_PCT / SKILL3_MP for the skills in slots 0, 1 and 2 (a slot
// without a skill gives 0 percent and false), NB_POTIONS, AVAIL_POINTS (stat points left) and TouchToMove (the "DPad" option is 0).
// The result is the object.
void NativeGetPlayerHUDInfos(const gameswf::fn_call& call) {
    if (call.nargs != 2 && call.nargs != 3) {
        return;
    }
    gameswf::as_object* object = call.arg(0).is_object() ? call.arg(0).to_object() : nullptr;
    const int player = static_cast<int>(call.arg(1).to_number());
    const bool flag = call.nargs == 3 ? call.arg(2).to_bool() : false;
    Character* ch = NativeGetPlayerChar(player, flag);
    if (ch && ch->m_markedForDeletion == 0 && ch->m_visible) {
        float skillInfo[3] = {0.0f, 0.0f, 0.0f};
        bool skillUsable[3] = {false, false, false};
        for (int slot = 0; slot < 3; ++slot) {
            const int skill = ch->SG_GetSkillInSlot(slot);
            if (skill != -1) {
                skillUsable[slot] = ch->AI_IsSkillUsable(static_cast<unsigned int>(skill));
                ch->AI_SkillInfo(static_cast<unsigned int>(skill), static_cast<unsigned int>(ch->SG_GetSkillLevel(static_cast<unsigned int>(skill))),
                                 skillInfo[slot]);
            }
        }
        float spellInfo = 0.0f;
        ch->AI_SpellInfo(spellInfo);
        const Structs::CharacterProperties& sheet = ch->CharProperties::m_props;
        // The raw (24.8 fixed point) words of the sheet: HP m_w37 / m_w39, MP m_w42 / m_w44, XP m_w34 / m_w35. A zero maximum
        // divides by zero in the original; it gives 0 here.
        auto percent = [](int value, int maximum) { return maximum != 0 ? 100 * value / maximum : 0; };
        nativeobj::SetBool(object, "PlayerActive", true);
        nativeobj::SetNumber(object, "LEVEL", static_cast<double>(ch->PROPS_GetInt(19, false)));
        nativeobj::SetNumber(object, "HP_PCT", static_cast<double>(percent(sheet.HP, sheet.Max_HP)));
        nativeobj::SetNumber(object, "HP_LOWPCT",
                             static_cast<double>(ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "LowHealthPercentage")));
        nativeobj::SetNumber(object, "MP_PCT", static_cast<double>(percent(sheet.MP, sheet.Max_MP)));
        nativeobj::SetNumber(object, "XP_PCT", static_cast<double>(percent(sheet.XP, sheet.Max_XP)));
        nativeobj::SetNumber(object, "SPELL_PCT", static_cast<double>(static_cast<int>(spellInfo * 100.0f)));
        nativeobj::SetBool(object, "SPELL_MP", ch->AI_IsSpellUsable());
        nativeobj::SetNumber(object, "SKILL1_PCT", static_cast<double>(static_cast<int>(skillInfo[0] * 100.0f)));
        nativeobj::SetBool(object, "SKILL1_MP", skillUsable[0]);
        nativeobj::SetNumber(object, "SKILL2_PCT", static_cast<double>(static_cast<int>(skillInfo[1] * 100.0f)));
        nativeobj::SetBool(object, "SKILL2_MP", skillUsable[1]);
        nativeobj::SetNumber(object, "SKILL3_PCT", static_cast<double>(static_cast<int>(skillInfo[2] * 100.0f)));
        nativeobj::SetBool(object, "SKILL3_MP", skillUsable[2]);
        nativeobj::SetNumber(object, "NB_POTIONS", static_cast<double>(ch->ItemInventory::GetNumPotions()));
        nativeobj::SetBool(object, "AVAIL_POINTS", ch->PROPS_GetInt(148, false) != 0);
        nativeobj::SetBool(object, "TouchToMove", Singleton<Application>::s_inst.GetSavedOption("DPad") == 0);
    } else {
        nativeobj::SetBool(object, "PlayerActive", false);
    }
    call.result->set_as_object(object);
}

// 0x44f27c NativeGetSaveIDsList(gameswf::fn_call const&)
// Exactly three arguments: two numbers (a and b) and the output array (an object, the third). The save list is
// PlayerSavegame::SG_GetSavegameList(true); both numbers are clamped to [0, count] and the entries between them (the smaller one
// first, the larger one exclusive) are listed. Each entry is loaded (PlayerSavegame(slot, 1, false), the slot from
// SG_GetSlotFromFilename) and, when its class is a CharacterTable row, becomes an object bound to the call's player with SlotID, InUse
// (true), PlayerName, PlayerClass, PlayerLVL, StringClassLVL ("<class> <level word> <n>"), PlayerLocation ("invalid" without a level,
// else the LevelList row text of the level of the running difficulty), PlayerLastSave (localtime formatted by SaveSlotTimeFormat)
// and IsActive (a PlayerManager player uses that slot), pushed onto the array. The result is the array.
void NativeGetSaveIDsList(const gameswf::fn_call& call) {
    if (call.nargs != 3 || !call.arg(0).is_number() || !call.arg(1).is_number() || !call.arg(2).is_object()) {
        return;
    }
    const int a = call.arg(0).to_int();
    int b = call.arg(1).to_int();
    gameswf::as_array* array = gameswf::cast_to<gameswf::as_array>(call.arg(2).to_object());
    const std::vector<std::string> saves = PlayerSavegame::SG_GetSavegameList(true);
    const int count = static_cast<int>(saves.size());
    int upper = b >= count ? count : b;
    int lower = a < count ? a : count;
    upper = upper & ~(upper >> 31);
    lower = lower & ~(lower >> 31);
    int first = upper;
    int last = lower;
    if (first >= lower) {
        if (first <= lower) {
            call.result->set_as_object(array);
            return;
        }
        first = lower;
        last = upper;
    }
    StringManager* strings = ApplicationGetStringManager();
    PlayerManager* players = Singleton<Application>::s_inst.m_playerManager;
    for (int index = first; index < last; ++index) {
        const int slot = PlayerSavegame::SG_GetSlotFromFilename(saves[static_cast<std::size_t>(index)].c_str());
        PlayerSavegame save(static_cast<std::uint32_t>(slot), 1, false);
        if (save.m_playerClass >= 0 && static_cast<std::uint32_t>(save.m_playerClass) < Arrays::CharacterTable::size) {
            const Structs::CharacterProperties* rows = reinterpret_cast<const Structs::CharacterProperties*>(Arrays::CharacterTable::members);
            const std::string className = strings->getString(rows[save.m_playerClass].ClassString);
            char level[16];
            std::snprintf(level, sizeof level, "%d", save.m_playerLevel);
            std::string classLevel = className + " ";
            classLevel += strings->getString(ApplicationGetPyDataConstants()->getConstant("StrID", "GAMEPLAYMENUS_LEVEL"));
            classLevel += " ";
            classLevel += level;
            bool active = false;
            for (int p = 0; p < players->m_numCharacters; ++p) {
                if (slot == players->GetPlayer(p, true)->unk_664) {
                    active = true;
                    break;
                }
            }
            const std::time_t saveDate = static_cast<std::time_t>(static_cast<std::int32_t>(save.m_saveDate));
            const std::tm* local = std::localtime(&saveDate);
            char lastSave[80];
            std::strftime(lastSave, sizeof lastSave, SaveSlotTimeFormat(Singleton<Application>::s_inst.m_savegameManager->getLanguage()), local);
            gameswf::as_object* object = nativeobj::NewObject(call);
            nativeobj::SetNumber(object, "SlotID", static_cast<double>(slot));
            nativeobj::SetBool(object, "InUse", true);
            nativeobj::SetString(object, "PlayerName", save.m_name.c_str());
            nativeobj::SetString(object, "PlayerClass", className.c_str());
            nativeobj::SetNumber(object, "PlayerLVL", static_cast<double>(save.m_playerLevel));
            nativeobj::SetString(object, "StringClassLVL", classLevel.c_str());
            const int levelId = save.unk_50[PlayerSavegame::m_difficultyLevel];
            const char* location = "invalid";
            if (levelId != -1) {
                const Structs::LevelDeclaration* levels = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members);
                location = strings->getString(levels[levelId].LevelName);
            }
            nativeobj::SetString(object, "PlayerLocation", location);
            nativeobj::SetString(object, "PlayerLastSave", lastSave);
            nativeobj::SetBool(object, "IsActive", active);
            nativeobj::PushObject(array, object);
        }
    }
    call.result->set_as_object(array);
}

// 0x44fce0 NativeGetNextQuestMessage(gameswf::fn_call const&)
// Exactly two arguments: an object (0) and a number (1, read and not used). The next message of the DialogMsg queue is taken
// (MenuMessageManager<DialogMsg, 1>::GetNextEnqueuedMessage into an empty DialogMsg: title, text) and the object gets QuestTitle (the
// title) and QuestMessage (the text). The result is whether a message was available; the object is set either way.
void NativeGetNextQuestMessage(const gameswf::fn_call& call) {
    if (call.nargs != 2 || !call.arg(0).is_object() || !call.arg(1).is_number()) {
        return;
    }
    call.arg(1).to_number();
    gameswf::as_object* object = call.arg(0).to_object();
    DialogMsg message(std::string(), std::string(), -1, -1);
    const bool available = MenuMessageManager<DialogMsg, 1>::s_inst.GetNextEnqueuedMessage(message, 0);
    nativeobj::SetString(object, "QuestTitle", static_cast<const std::string&>(message).c_str());
    nativeobj::SetString(object, "QuestMessage", message.m_text.c_str());
    call.result->set_bool(available);
}

// 0x44ff14 NativeGetNextDialogMessage(gameswf::fn_call const&)
// One object argument. The next message of the DialogMsg queue is taken into an empty DialogMsg and the object gets DialogTitle,
// DialogMessage, DialogStyle (the style id as a number), DialogStyleStr (PyDataConstants::getConstantName("DialogStyles", style)) and
// DialogActorStr (the actor name). The result is whether a message was available.
void NativeGetNextDialogMessage(const gameswf::fn_call& call) {
    if (call.nargs != 1 || !call.arg(0).is_object()) {
        return;
    }
    gameswf::as_object* object = call.arg(0).to_object();
    DialogMsg message(std::string(), std::string(), -1, -1);
    const bool available = MenuMessageManager<DialogMsg, 1>::s_inst.GetNextEnqueuedMessage(message, 0);
    nativeobj::SetString(object, "DialogTitle", static_cast<const std::string&>(message).c_str());
    nativeobj::SetString(object, "DialogMessage", message.m_text.c_str());
    nativeobj::SetNumber(object, "DialogStyle", static_cast<double>(message.m_style));
    nativeobj::SetString(object, "DialogStyleStr", ApplicationGetPyDataConstants()->getConstantName("DialogStyles", message.m_style));
    nativeobj::SetString(object, "DialogActorStr", message.m_actorName.c_str());
    call.result->set_bool(available);
}

// 0x450298 NativeGetNextTutorialMessage(gameswf::fn_call const&)
// One object argument. The front message of the TutorialMsg queue is read (not removed): the object gets TutorialMessage
// (ParsePlayerName(StringManager::getString(string id))) and TutorialDuration, and the result is whether the queue was not empty.
// With an empty queue the original reads uninitialised registers for the id and the duration; here they are 0.
void NativeGetNextTutorialMessage(const gameswf::fn_call& call) {
    if (call.nargs != 1 || !call.arg(0).is_object()) {
        return;
    }
    gameswf::as_object* object = call.arg(0).to_object();
    const std::deque<TutorialMsg>& queue = MenuMessageManager<TutorialMsg, 1>::s_inst.m_queues[0];
    const bool available = !queue.empty();
    const int stringId = available ? queue.front().m_stringId : 0;
    const int duration = available ? queue.front().m_duration : 0;
    const std::string text = ParsePlayerName(std::string(ApplicationGetStringManager()->getString(stringId)));
    nativeobj::SetString(object, "TutorialMessage", text.c_str());
    nativeobj::SetNumber(object, "TutorialDuration", static_cast<double>(duration));
    call.result->set_bool(available);
}

// 0x4504a0 NativeGetMultiplayerQuestInfo(gameswf::fn_call const&)
// One object argument (not checked). A copy of the room attributes (CMatching::Get()->GetRoomAttributes(), vtable +0xa4) decides:
// when attributes 5 (the act) and 6 (the quest row) are both active, the resend counter is reset and the object gets act (the
// StrID MENU_ACT text parsed with the act), questName and questDesc (the v2Quests row's text ids +0x04 and +0x08; a negative row
// uses row 50, as the original's 284 * row computation does), or three empty strings when the act is 0 or below. When they are not
// active the object gets three empty strings and, every 30th call (a function-local counter), a CMsgAskResendAttributes is sent
// to ask for the attributes again. The result is the object.
void NativeGetMultiplayerQuestInfo(const gameswf::fn_call& call) {
    static int resendCount = 0;  // NativeGetMultiplayerQuestInfo::resendCnt
    CRoomAttributes attributes(*CMatching::Get()->GetRoomAttributes());
    gameswf::as_object* object = call.arg(0).is_object() ? call.arg(0).to_object() : nullptr;
    if (attributes.IsAttibuteActive(static_cast<tROOM_ATTRIBUTES_INT>(5)) && attributes.IsAttibuteActive(static_cast<tROOM_ATTRIBUTES_INT>(6))) {
        resendCount = 0;
        const int act = attributes.GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(5));
        const int questRow = attributes.GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(6));
        if (act <= 0) {
            nativeobj::SetString(object, "act", "");
            nativeobj::SetString(object, "questName", "");
            nativeobj::SetString(object, "questDesc", "");
        } else {
            StringManager* strings = ApplicationGetStringManager();
            std::string actText;
            strings->parse(actText, strings->getString(ApplicationGetPyDataConstants()->getConstant("StrID", "MENU_ACT")), act);
            const Structs::v2Quest* row = reinterpret_cast<const Structs::v2Quest*>(Arrays::v2Quests::members) + (questRow < 0 ? 50 : questRow);
            nativeobj::SetString(object, "act", actText.c_str());
            nativeobj::SetString(object, "questName", strings->getString(row->Name));
            nativeobj::SetString(object, "questDesc", strings->getString(row->Description));
        }
    } else {
        nativeobj::SetString(object, "act", "");
        nativeobj::SetString(object, "questName", "");
        nativeobj::SetString(object, "questDesc", "");
        if (resendCount-- <= 0) {
            resendCount = 30;
            CMessaging* messaging = GetMessaging();
            messaging->SendMsg(CMessage::CreateMessage("CMsgAskResendAttributes", true));
        }
    }
    call.result->set_as_object(object);
}

// 0x450b78 NativeGetMultiplayerRoomInfo(gameswf::fn_call const&)
// The room's player list for the lobby menu. Runs only in an online game (the COnline flag) with exactly one argument; the result is true. With an
// array as the argument, one object per player is pushed onto it (the result is set to false first and to true at the end).
// GLLive (the online state's mode +0x34 is 3): for each member id of CMatchingGLLive::GetGLLiveMemberIdList(), the member record
// (GetMemberByMemberId; a record whose id is -1 is skipped) gives the object: "name" (the record's name), "level" (the second number of the value text
// "%d %d", 1 when absent) and "Class" (the CharacterTable text of the first number, 0 when absent), "Invitation" from CMatchingGLLive::IsMyFriend(name)
// ("None" for -1 and 0, "Friend" for 1, "Idle" for 2 and anything else), "PlayerId" (the member id), "SlotStr" (empty), and:
//   the local member (CMatching::LocalMemberId(), vtable +0x6c): playerReady true, Kick false, Slot false;
//   another member: playerReady false; when the local member is the host (IsHost) Kick is true, else false; Slot false.
// Other modes: for each player id of a copy of CNetPlayerManager::GetPlayerIdList(), the record GetPlayer(id, false) gives the player's matching member id
// (+0x1a0) and its own id (+0x178), and PlayerManager::GetPlayerByInternalID(its own id) the PlayerInfo; a PlayerInfo whose stat player id (+0x670) is -1 is
// skipped. The object has "name" (the character name, formatForMulti), "level" (the character level) and, depending on the local player being the host
// (CNetPlayerInfo::IsHost) and on the local matching member id (taken from GetLocalPlayer(0) when the online state's byte +0x24 is set and the player
// manager is initialised, else -1):
//   local host: playerReady true when the player shares the local member id; for the host player itself (its own id equals the manager's host member id,
//     +0x170) playerReady true, Invitation "None", Kick false, Slot false; for other players playerReady false, Invitation "None", Kick false in the
//     online mode 2 and true otherwise, Slot false;
//   local client: playerReady true when the player shares the local member id; Invitation "None", Kick false, Slot false;
//   and always SlotStr "", "PlayerId" (the matching member id), "Class" (the CharacterTable text of the character class, empty for -1).
// The host player's object is pushed at once, the others after the loop, in order. A class number outside the character table gives an empty class text
// here; the original indexes the table unchecked.
void NativeGetMultiplayerRoomInfo(const gameswf::fn_call& call) {
    if (!GetOnlineGameFlag() || call.nargs != 1) {
        return;
    }
    GetNetPlayerMgr()->GetPlayerCount();
    const std::vector<int> playerIds = GetNetPlayerMgr()->GetPlayerIdList();
    call.result->set_bool(false);
    gameswf::as_array* array = call.arg(0).is_object() ? gameswf::cast_to<gameswf::as_array>(call.arg(0).to_object()) : nullptr;
    if (array != nullptr) {
        StringManager* strings = ApplicationGetStringManager();
        auto classText = [strings](int classIndex) -> const char* {
            if (classIndex < 0 || static_cast<std::uint32_t>(classIndex) >= Arrays::CharacterTable::size) {
                return "";
            }
            const Structs::CharacterProperties* rows = reinterpret_cast<const Structs::CharacterProperties*>(Arrays::CharacterTable::members);
            return strings->getString(rows[classIndex].ClassString);
        };
        if (OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3) {
            CMatchingGLLive* matching = static_cast<CMatchingGLLive*>(CMatching::Get());
            const std::vector<std::int32_t> memberIds = matching->GetGLLiveMemberIdList();
            const int localMemberId = CMatching::Get()->LocalMemberId();
            for (const std::int32_t memberId : memberIds) {
                tMemberInfo* member = static_cast<CMatchingGLLive*>(CMatching::Get())->GetMemberByMemberId(memberId);
                if (member == nullptr || member->memberId_ == -1) {
                    continue;
                }
                int classIndex = 0;
                int level = 1;
                std::sscanf(member->value_.c_str(), "%d %d", &classIndex, &level);
                gameswf::as_object* object = nativeobj::NewObject(call);
                nativeobj::SetString(object, "name", member->name_);
                nativeobj::SetNumber(object, "level", static_cast<double>(level));
                switch (static_cast<CMatchingGLLive*>(CMatching::Get())->IsMyFriend(member->name_)) {
                    case 1:
                        nativeobj::SetString(object, "Invitation", "Friend");
                        break;
                    case -1:
                    case 0:
                        nativeobj::SetString(object, "Invitation", "None");
                        break;
                    default:  // 2 and anything else
                        nativeobj::SetString(object, "Invitation", "Idle");
                        break;
                }
                if (localMemberId == member->memberId_) {
                    nativeobj::SetBool(object, "playerReady", true);
                    nativeobj::SetBool(object, "Kick", false);
                    nativeobj::SetBool(object, "Slot", false);
                } else {
                    nativeobj::SetBool(object, "playerReady", false);
                    nativeobj::SetBool(object, "Kick", static_cast<CMatchingGLLive*>(CMatching::Get())->IsHost());
                    nativeobj::SetBool(object, "Slot", false);
                }
                nativeobj::SetString(object, "SlotStr", "");
                nativeobj::SetNumber(object, "PlayerId", static_cast<double>(member->memberId_));
                nativeobj::SetString(object, "Class", classText(classIndex));
                nativeobj::PushObject(array, object);
            }
        } else {
            int hostMemberId = -1;
            int localMatchingId = -1;
            if (OnlineSingleton<OnlineGameState>::GetInstance()->flag24_ && CNetPlayerManager::IsInitialized()) {
                hostMemberId = GetNetPlayerMgr()->net_struct_.host_member_id_.GetValue();  // manager +0x170
                const CNetPlayerInfo* local = GetNetPlayerMgr()->GetLocalPlayer(0);
                localMatchingId = local != nullptr ? local->matching_member_id_.GetValue() : -1;
            }
            std::vector<gameswf::as_object*> deferred;
            for (const int playerId : playerIds) {
                const CNetPlayerInfo* netPlayer = GetNetPlayerMgr()->GetPlayer(playerId, false);
                if (netPlayer == nullptr) {
                    continue;
                }
                const int matchingId = netPlayer->matching_member_id_.GetValue();  // +0x1a0
                const int ownId = netPlayer->member_id_.GetValue();                // +0x178
                PlayerInfo* info = Singleton<Application>::s_inst.m_playerManager->GetPlayerByInternalID(ownId, false);
                if (info->unk_670 == -1) {
                    continue;
                }
                gameswf::as_object* object = nativeobj::NewObject(call);
                nativeobj::SetString(object, "name", StringManager::formatForMulti(info->m_characterName.GetValue(), false).c_str());
                nativeobj::SetNumber(object, "level", static_cast<double>(info->m_characterLevel.GetValue()));
                if (Singleton<Application>::s_inst.m_playerManager->GetLocalPlayer(0, false)->IsHost()) {
                    if (localMatchingId == matchingId) {
                        nativeobj::SetBool(object, "playerReady", true);
                    }
                    if (hostMemberId == ownId) {
                        nativeobj::SetBool(object, "playerReady", true);
                        nativeobj::SetString(object, "Invitation", "None");
                        nativeobj::SetBool(object, "Kick", false);
                        nativeobj::SetBool(object, "Slot", false);
                        nativeobj::SetString(object, "SlotStr", "");
                    } else {
                        nativeobj::SetBool(object, "playerReady", false);
                        nativeobj::SetString(object, "Invitation", "None");
                        nativeobj::SetBool(object, "Kick", OnlineSingleton<OnlineGameState>::GetInstance()->mode_ != 2);
                        nativeobj::SetBool(object, "Slot", false);
                        nativeobj::SetString(object, "SlotStr", "");
                    }
                } else {
                    nativeobj::SetBool(object, "playerReady", localMatchingId == matchingId);
                    nativeobj::SetString(object, "Invitation", "None");
                    nativeobj::SetBool(object, "Kick", false);
                    nativeobj::SetBool(object, "Slot", false);
                    nativeobj::SetString(object, "SlotStr", "");
                }
                nativeobj::SetNumber(object, "PlayerId", static_cast<double>(matchingId));
                const int classIndex = info->m_characterClass.GetValue();
                nativeobj::SetString(object, "Class", classIndex == -1 ? "" : classText(classIndex));
                if (hostMemberId == ownId) {
                    nativeobj::PushObject(array, object);
                } else {
                    deferred.push_back(object);
                }
            }
            for (gameswf::as_object* object : deferred) {
                nativeobj::PushObject(array, object);
            }
        }
    }
    call.result->set_bool(true);
}

namespace {

// The shared body of the twelve 0x10-byte factories: the derived constructor writes the vtable, then the three
// ScriptCmdImpl fields that the original stores after the allocation.
template <class T>
ScriptCmdImpl* NewScriptCmd() {
    T* cmd = new T();
    cmd->m_args = nullptr;     // +0x0c
    cmd->unk_04 = false;       // +0x04
    cmd->m_cmdId = -1;         // +0x08
    return cmd;
}

}  // namespace

// 0x457714 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_FlushMessages>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_FlushMessages>() {
    return NewScriptCmd<Script_FlushMessages>();
}

// 0x45775c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DoTutorial>()
// Asm and Hex-Rays: operator new(0x10), vtable, +0x04 = 0, +0x08 = -1, +0x0c = 0. The class adds no fields that the
// factory writes. The header's 64-byte allocation note does not match the asm (layout request: Script_DoTutorial.hpp).
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DoTutorial>() {
    return NewScriptCmd<Script_DoTutorial>();
}

// 0x4577a4 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LockTutorial>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LockTutorial>() {
    return NewScriptCmd<Script_LockTutorial>();
}

// 0x4577ec ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipAllCharMenuTutorialMessages>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipAllCharMenuTutorialMessages>() {
    return NewScriptCmd<Script_SkipAllCharMenuTutorialMessages>();
}

// 0x457834 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipCharMenuTutorialMessage>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipCharMenuTutorialMessage>() {
    return NewScriptCmd<Script_SkipCharMenuTutorialMessage>();
}

// 0x45787c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnqueueCharMenuTutorialMessage>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnqueueCharMenuTutorialMessage>() {
    return NewScriptCmd<Script_EnqueueCharMenuTutorialMessage>();
}

// 0x4578c4 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipAllTutorialMessages>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipAllTutorialMessages>() {
    return NewScriptCmd<Script_SkipAllTutorialMessages>();
}

// 0x45790c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipTutorialMessage>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipTutorialMessage>() {
    return NewScriptCmd<Script_SkipTutorialMessage>();
}

// 0x457954 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnqueueTutorialMessage>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnqueueTutorialMessage>() {
    return NewScriptCmd<Script_EnqueueTutorialMessage>();
}

// 0x45799c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_BlockSaveGame>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_BlockSaveGame>() {
    return NewScriptCmd<Script_BlockSaveGame>();
}

// 0x4579e4 ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SaveGame>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SaveGame>() {
    return NewScriptCmd<Script_SaveGame>();
}

// 0x457a2c ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ShowTrophies>()
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ShowTrophies>() {
    return NewScriptCmd<Script_ShowTrophies>();
}
