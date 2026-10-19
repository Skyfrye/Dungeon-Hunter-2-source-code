// Batch g1-game-items-save-Quest-1defd1-0 (Quest, part 1 of 3): state queries, pydata text and script accessors,
// the save and load pair, the state-transition save, the script run helpers, ReInit, GiveRewards, Compile and
// Synchronize. Rebuilt from the Hex-Rays pseudocode (recovered/native/hexrays-all, Quest.cpp) and checked against the
// assembly for IsVolatileState. The layout is in dh2/Quest.hpp. The pydata record is Structs::v2Quest
// (pydata-accessors/w7_structs_1.hpp); its script buffers are in Structs::v2QuestScripts (structs_records.hpp).
//
// Pydata offsets used below (original 32-bit): +0x04 m_w1 title, +0x08 m_w2 pre-description, +0x0c m_w3
// post-description, +0x9c m_w39 initial state, +0x114 m_w69 priority, +0xa0 m_sub160 (script buffers: slot k is the
// word at +0xa8 + 8k within the record, see kScriptNameFields).
#include "dh2/Quest.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/Objective.hpp"
#include "dh2/ObjectiveList.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/RewardList.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/quest_state_names.hpp"
#include "dh2/global/script_ids.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

// Global assert level (core-platform/memory.hpp declares it the same way).
extern int gAssertLevel;

namespace {

// The pydata string id the binary compares against for an unset title or description (1835016, 0x1c0008).
constexpr std::int32_t kUnsetStringId = 1835016;

// Source path of Quest.cpp and the assert format of the original, as printed to stderr.
constexpr const char kQuestCppPath[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Quest.cpp";

// CSWTCH_6217 (unsigned __int8[12], ida-asm chunk_018). IsVolatileState reads entry state - 2 for states 2..11.
const std::uint8_t kCSWTCH_6217[12] = {1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0};

// The 14 script buffers of Structs::v2QuestScripts in slot order. Slot k is the pydata word at +0xa8 + 8k, that is
// v2QuestScripts +0x08 + 8k (m_w2, m_w4, ..., m_w28).
using ScriptNameField = void* Structs::v2QuestScripts::*;
const ScriptNameField kScriptNameFields[14] = {
    &Structs::v2QuestScripts::OnActive,  &Structs::v2QuestScripts::OnAvailable,  &Structs::v2QuestScripts::OnClosed,
    &Structs::v2QuestScripts::OnComplete,  &Structs::v2QuestScripts::OnFailed, &Structs::v2QuestScripts::OnPostActive,
    &Structs::v2QuestScripts::OnPostAvailable, &Structs::v2QuestScripts::OnPostClosed, &Structs::v2QuestScripts::OnPostComplete,
    &Structs::v2QuestScripts::OnPostLocked, &Structs::v2QuestScripts::OnPreActive, &Structs::v2QuestScripts::OnPreAvailable,
    &Structs::v2QuestScripts::OnPreClosed, &Structs::v2QuestScripts::OnPreComplete,
};

// The original's ASSERT. Level 2 aborts (it writes to address 0 to force a crash), level 1 prints the message.
void ReportAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kQuestCppPath, line);
    }
}

// The pydata priority (+0x114) against one v2QuestPriority constant.
bool HasPriority(const Structs::v2Quest* pyData, const char* name) {
    return pyData->Priority == ApplicationGetPyDataConstants()->getConstant("v2QuestPriority", name);
}

// A title or description string id: the StringManager text, or "not specified" when the id is unset or negative.
const char* TextOrNotSpecified(std::int32_t id) {
    if (id != kUnsetStringId && id >= 0) {
        return ApplicationGetInstance().m_stringManager->getString(id);
    }
    return "not specified";
}

}  // namespace

// 0x47f700 Quest::UpdatePostClosed()
// The original body is empty. The post-closed state does nothing on each update.
void Quest::UpdatePostClosed() {}

// 0x47f704 Quest::DBG_GetCurrentStateName() const
const char* Quest::DBG_GetCurrentStateName() const {
    return DBG_GetStateNameFromID(m_state);
}

// 0x47f70c Quest::IsVolatileState(int) const
// States 2..11 read the table; every other state is not volatile.
bool Quest::IsVolatileState(int state) const {
    const std::uint32_t index = static_cast<std::uint32_t>(state) - 2u;
    if (index <= 9u) {
        return kCSWTCH_6217[index] != 0;
    }
    return false;
}

// 0x47f734 Quest::_saveQuestData(IStreamBase*)
// Writes the state, then the accept and end objectives' data, then the ObjectiveList data.
void Quest::_saveQuestData(IStreamBase* stream) {
    StreamReader::writeAs<int>(stream, m_state);
    m_acceptType->_saveData(stream);  // +0x18 vtable slot 0x2c
    m_endType->_saveData(stream);     // +0x1c vtable slot 0x2c
    m_objectives._saveData(stream);   // +0x2c
}

// 0x47f78c Quest::_loadQuestData(IStreamBase*, bool)
// Reads what _saveQuestData wrote. The flag argument is not read by the body. A volatile loaded state sets
// m_needsReinit, and the return value is IsVolatileState of the loaded state.
int Quest::_loadQuestData(IStreamBase* stream, bool /*flag*/) {
    StreamReader::readAs<int>(stream, &m_state);
    m_acceptType->_loadData(stream);  // vtable slot 0x28
    m_endType->_loadData(stream);     // vtable slot 0x28
    m_objectives._loadData(stream);
    const int result = IsVolatileState(m_state);
    if (result != 0) {
        m_needsReinit = true;
    }
    return result;
}

// 0x47f7fc Quest::IsDialog() const
bool Quest::IsDialog() const {
    return HasPriority(m_pyData, "Dialog");
}

// 0x47f850 Quest::IsDebug() const
bool Quest::IsDebug() const {
    return HasPriority(m_pyData, "Debug");
}

// 0x47f8a4 Quest::IsSecondary() const
bool Quest::IsSecondary() const {
    return HasPriority(m_pyData, "Secondary");
}

// 0x47f8f8 Quest::IsPrimary() const
bool Quest::IsPrimary() const {
    return HasPriority(m_pyData, "Primary");
}

// 0x47f94c Quest::GetPostDescription() const
// "not specified" when the post-description id (+0x0c) is unset, otherwise an empty string.
const char* Quest::GetPostDescription() const {
    if (m_pyData->PostDescription == kUnsetStringId) {
        return "not specified";
    }
    return "";
}

// 0x47f984 Quest::GetPreDescription() const
const char* Quest::GetPreDescription() const {
    return TextOrNotSpecified(m_pyData->Description);
}

// 0x47f9dc Quest::GetTitle() const
const char* Quest::GetTitle() const {
    return TextOrNotSpecified(m_pyData->Name);
}

// 0x47fa80 Quest::GetScriptIDFromID(int) const
// Slots 0..13 map to their script buffer, resolved by TempHackScriptIDAreStrings. Any other slot gives -1 and does
// not read the pydata record.
int Quest::GetScriptIDFromID(int scriptSlot) const {
    if (scriptSlot < 0 || scriptSlot > 13) {
        return -1;
    }
    const Structs::v2QuestScripts& scripts = m_pyData->Scripts;  // +0xa0
    const void* name = scripts.*(kScriptNameFields[scriptSlot]);
    return TempHackScriptIDAreStrings(static_cast<const char*>(name));
}

// 0x47fb74 Quest::HandleSaveInStateTransitonIfNeeded(int)
// For a volatile state whose script ids are present, with m_needsReinit clear, quick-saves the level and saves the
// local player's character. The original's return value is register residue, so the function returns void.
void Quest::HandleSaveInStateTransitonIfNeeded(int state) {
    if (!IsVolatileState(state)) {
        ReportAssert("IsVolatileState(state)", 850);
    }
    if (m_needsReinit) {
        return;
    }

    // Each state needs one of two script slots to exist (a pair is "either exists") or a single slot.
    bool hasScripts = false;
    switch (state) {
        case QUEST_PRE_AVAILABLE: {
            const int slot11 = GetScriptIDFromID(11);
            const int slot1 = GetScriptIDFromID(1);
            hasScripts = slot11 >= 0 || slot1 >= 0;
            break;
        }
        case QUEST_POST_AVAILABLE:
            hasScripts = GetScriptIDFromID(6) >= 0;
            break;
        case QUEST_PRE_ACTIVE: {
            const int slot10 = GetScriptIDFromID(10);
            const int slot0 = GetScriptIDFromID(0);
            hasScripts = slot10 >= 0 || slot0 >= 0;
            break;
        }
        case QUEST_POST_ACTIVE:
            hasScripts = GetScriptIDFromID(5) >= 0;
            break;
        case QUEST_PRE_COMPLETED: {
            const int slot13 = GetScriptIDFromID(13);
            const int slot3 = GetScriptIDFromID(3);
            hasScripts = slot13 >= 0 || slot3 >= 0;
            break;
        }
        case QUEST_POST_COMPLETED:
            hasScripts = GetScriptIDFromID(8) >= 0;
            break;
        case QUEST_PRE_CLOSED: {
            const int slot12 = GetScriptIDFromID(12);
            const int slot2 = GetScriptIDFromID(2);
            hasScripts = slot12 >= 0 || slot2 >= 0;
            break;
        }
        case QUEST_POST_CLOSED:
            hasScripts = GetScriptIDFromID(7) >= 0;
            break;
        default:
            return;
    }
    if (!hasScripts) {
        return;
    }

    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr) {
        level->SG_BlockLevel(false);
        level->QuickSave(false);
    }
    PlayerInfo* localPlayer = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true);
    Character* character = localPlayer->unk_660;  // +0x660, the player's Character
    if (character != nullptr) {
        character->SG_Block(false);
        character->SG_Save();
    }
}

// 0x47fde4 Quest::TestIsScriptRunning(int)
// A slot outside 0..13 fails the ASSERT and then resolves to no script, so the result is false.
bool Quest::TestIsScriptRunning(int scriptSlot) {
    if (scriptSlot < 0) {
        ReportAssert("scriptID >= 0", 743);
    } else if (scriptSlot > 13) {
        ReportAssert("scriptID < Structs::v2QuestScripts::kSize", 744);
    }
    const int scriptId = GetScriptIDFromID(scriptSlot);
    if (scriptId >= 0) {
        return ScriptManager::s_inst.IsScriptRunning(scriptId);
    }
    return false;
}

// 0x47ff20 Quest::ExecScript(int)
// Starts the slot's script with module -1 and fromRemote true (the original passes 1). An unresolved slot does nothing.
void Quest::ExecScript(int scriptSlot) {
    if (scriptSlot < 0) {
        ReportAssert("scriptID >= 0", 729);
    } else if (scriptSlot > 13) {
        ReportAssert("scriptID < Structs::v2QuestScripts::kSize", 730);
    }
    const int scriptId = GetScriptIDFromID(scriptSlot);
    if (scriptId >= 0) {
        ScriptManager::s_inst.StartScript(scriptId, -1, true);
    }
}

// 0x480060 Quest::ReInit()
// Undoes the markers and registrations of the current state, then sets m_state to the record's initial state
// (pydata +0x9c, m_w39). States 2 and 3 are the accept objective, 5 and 6 the objective list, 8 and 9 the end.
void Quest::ReInit() {
    switch (m_state) {
        case QUEST_PRE_AVAILABLE:
            m_acceptType->RemoveObjectiveMarker();  // vtable slot 0x14
            break;
        case QUEST_AVAILABLE:
            m_acceptType->Unregister();  // vtable slot 0x1c
            break;
        case QUEST_PRE_ACTIVE:
            m_objectives.RemoveObjectiveMarkers();
            break;
        case QUEST_ACTIVE:
            m_objectives.Unregister();
            break;
        case QUEST_PRE_COMPLETED:
            m_endType->RemoveObjectiveMarker();
            break;
        case QUEST_COMPLETED:
            m_endType->Unregister();
            break;
        default:
            break;
    }
    m_state = m_pyData->State;
}

// 0x48015c Quest::GiveRewards()
// Gives the rewards, then clears m_rewardsPending. Returns RewardList::Give's result.
int Quest::GiveRewards() {
    const bool given = m_rewards.Give();
    m_rewardsPending = false;
    return given ? 1 : 0;
}

// 0x480178 Quest::Compile()
// Invalidates and recompiles the accept objective, the objective list, the end objective and the rewards. The
// pending rewards compile only while m_rewardsPending is set. Then, in Active, the objectives register and install
// their markers; in Completed the end objective does, and in Available the accept objective does.
void Quest::Compile() {
    // The valid and completed flags of the accept and end objectives are cleared inline (Objective::InvalidateCompile).
    m_acceptType->m_valid = false;      // +0x08
    m_acceptType->m_completed = false;  // +0x14
    m_objectives.InvalidateCompile();
    m_endType->m_valid = false;
    m_endType->m_completed = false;
    m_rewards.InvalidateCompile();

    m_acceptType->Compile();  // vtable slot 0x08
    m_objectives.Compile();
    m_endType->Compile();  // vtable slot 0x08
    if (m_rewardsPending) {
        m_rewards.Compile();
    }

    // The pydata priority (+0x114) is read only on the branches that use it, as in the original.
    if (m_state == QUEST_ACTIVE) {
        m_objectives.Register();
        m_objectives.InstallObjectiveMarkers(m_pyData->Priority, m_state);
        return;
    }
    if (m_state == QUEST_COMPLETED) {
        m_endType->Register();                                                // vtable slot 0x18
        m_endType->InstallObjectiveMarker(m_pyData->Priority, m_state);          // vtable slot 0x10
    } else if (m_state == QUEST_AVAILABLE) {
        m_acceptType->Register();
        m_acceptType->InstallObjectiveMarker(m_pyData->Priority, m_state);
    }
}

// 0x4802b4 Quest::Synchronize(Quest const*, bool)
// primaryOnly: only a primary quest takes the source's state when that state is above PreClosed. It then re-inits
// itself and compiles. Otherwise the source's state, stamp and m_needsReinit are copied.
void Quest::Synchronize(const Quest* source, bool primaryOnly) {
    if (primaryOnly) {
        if (IsPrimary() && source->m_state > QUEST_PRE_CLOSED) {
            ReInit();
            m_state = source->m_state;
            m_stateStamp = source->m_stateStamp;
            m_needsReinit = source->m_needsReinit;
            Compile();
        }
    } else {
        m_state = source->m_state;
        m_stateStamp = source->m_stateStamp;
        m_needsReinit = source->m_needsReinit;
    }
}
