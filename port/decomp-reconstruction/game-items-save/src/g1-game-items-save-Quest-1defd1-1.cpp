// Batch g1-game-items-save-Quest-1defd1-1 (owner Quest, part 2 of 3): the debug trace, SetOwnerToChildren, AssignPyData,
// the constructors and destructors, GetObjectiveDescription, SetState, ReinitStateAfterLoading, DBG_IncState and the
// per-state handlers from UpdatePreClosed to UpdateCompleted.
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the assembly (tools/decomp_asm.py).
// The layout is dh2/Quest.hpp. The pydata record is Structs::v2Quest (pydata-accessors/w7_structs_1.hpp); its members are
// named by offset there (m_w1 is +0x04, m_sub60 is +0x3c, ...), and this file uses those names.
//
// Shared conventions in this file:
//  * Singletons: dword_99F758 (PyDataConstants) is ApplicationGetPyDataConstants(), dword_99F760 (StringManager) is
//    ApplicationGetStringManager(), dword_99F76C (PlayerManager) is the extern pointer dword_99F76C, and dword_99F79C is
//    Application::m_lastTickTime (+0x70) of ApplicationGetInstance().
//  * A pydata text field holds a StrID. The value 1835016 (0x1c0008) marks an unset text; a negative id is unset too.
//  * m_state values are Quest::QuestStates. Script slots follow the trace names in dh2/Quest.hpp (0 OnActive ... 13 OnPreComplete).
//  * Objective vtable slots as the original calls them: 0x0c DBG_TraceDetailedObjectiveInformation, 0x10 InstallObjectiveMarker,
//    0x14 RemoveObjectiveMarker, 0x18 Register, 0x1c Unregister. The methods are called by name, so the dispatch is the same.
//  * MenuMessageManager<DialogMsg,1>::EnqueueMessage: SetState calls the clone 0x480b2c, which takes only the message
//    (it pushes it on the queue and invokes "StartDialog" when the queue then holds one). The clone has the flag folded in
//    as true (asm 0x480b2c: push_back, _M_subtract == 1, then the StartDialog callback with no flag test), so this port
//    passes queue 0 and flag TRUE. (Passing false never started the HUD dialog: no new-quest / quest-complete banner.)
//  * The trace writes through std::FILE* (reinterpret_cast of the header's __sFILE*), as the other trace functions do.
//  * The debug trace reads the name table Arrays::v2Quests::m_memberNames, bounded by Arrays::v2Quests::size.

#include "dh2/Quest.hpp"

#include <cstdint>
#include <cstdio>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/Objective.hpp"
#include "dh2/ObjectiveList.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/RewardList.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

namespace {

// The "unset" StrID that the pydata text fields and the trace compare against (0x1c0008 in the asm).
constexpr int kUnsetStringId = 1835016;

// A pydata text field is set when it holds a StrID that is not the sentinel and not negative.
bool IsSetStringId(int id) {
    return id != kUnsetStringId && id >= 0;
}

// v2QuestState constant by name (the Hex-Rays calls getConstant(dword_99F758, "v2QuestState", name)).
int QuestStateConstant(const char* name) {
    return ApplicationGetPyDataConstants()->getConstant("v2QuestState", name);
}

// The local player's Character: GetLocalPlayer(0, 1)->+0x660 in the original (PlayerInfo::unk_660 in dh2/PlayerInfo.hpp).
Character* LocalPlayerCharacter() {
    return dword_99F76C->GetLocalPlayer(0, true)->unk_660;
}

// Queues one dialog line. See the file comment for the queue and flag arguments.
void EnqueueDialog(const DialogMsg& message) {
    MenuMessageManager<DialogMsg, 1>::s_inst.EnqueueMessage(message, 0, true);
}

}  // namespace

// 0x480328 Quest::DBG_TraceDetailedQuestInformation(__sFILE*) const
// The PyDataName line prints Arrays::v2Quests::m_memberNames[m_pyDataIndex] when the index is in range (below
// Arrays::v2Quests::size) and "na" when it is not.
// readNames checks the name count against that size, so the two are expected to match, but this is not evidenced by the body.
// Script IDs are read through GetScriptIDFromID(slot), which reads the same int at pydata +168 + 8 * slot.
int Quest::DBG_TraceDetailedQuestInformation(__sFILE* stream) const {
    std::FILE* out = reinterpret_cast<std::FILE*>(stream);
    std::fwrite("=====================================================================\n", 1, 0x46, out);
    std::fwrite("Quest Information : \n", 1, 0x15, out);

    const char* pyDataName = "na";
    if (m_pyDataIndex >= 0 && static_cast<std::uint32_t>(m_pyDataIndex) < Arrays::v2Quests::size) {
        pyDataName = Arrays::v2Quests::m_memberNames.names[m_pyDataIndex];
    }
    std::fprintf(out, "\tPyDataName : %s\n", pyDataName);

    const char* name = IsSetStringId(m_pyData->Name) ? ApplicationGetStringManager()->getString(m_pyData->Name)
                                                       : "not specified";
    std::fprintf(out, "\tName : %s\n", name);

    const char* description = IsSetStringId(m_pyData->Description)
                                  ? ApplicationGetStringManager()->getString(m_pyData->Description)
                                  : "not specified";
    std::fprintf(out, "\tDescription : %s\n", description);

    std::fwrite("\tPreReqs :\n", 1, 0xB, out);
    m_preReqs.DBG_TraceDetailedConditionListInformation(stream);

    std::fwrite("\tObjectives : \n", 1, 0xF, out);
    m_objectives.DBG_TraceDetailedObjectiveListInformation(stream);

    std::fwrite("\tRewards:\n", 1, 0xA, out);
    m_rewards.DBG_TraceDetailedRewardListInformation(stream);

    std::fwrite("\tAccept Type :\n", 1, 0xF, out);
    m_acceptType->DBG_TraceDetailedObjectiveInformation(stream);

    std::fwrite("\tEnd Type :\n", 1, 0xC, out);
    m_endType->DBG_TraceDetailedObjectiveInformation(stream);

    std::fprintf(out, "\tTargetLevel : %d\n", m_pyData->TargetLevel);
    std::fprintf(out, "\tRepeatable : %s\n", m_pyData->Repeatable ? "true" : "false");

    const char* stateName = ApplicationGetPyDataConstants()->getConstantName("v2QuestState", m_pyData->State);
    std::fprintf(out, "\tState : %s\n", stateName);

    const char* priorityName = ApplicationGetPyDataConstants()->getConstantName("v2QuestPriority", m_pyData->Priority);
    std::fprintf(out, "\tPriority : %s\n\n", priorityName);

    // Slot k is at pydata +168 + 8 * k; the labels follow the trace order.
    std::fprintf(out, "\tScripts OnActive: %d\n", GetScriptIDFromID(0));
    std::fprintf(out, "\tScripts OnAvailable: %d\n", GetScriptIDFromID(1));
    std::fprintf(out, "\tScripts OnClosed: %d\n", GetScriptIDFromID(2));
    std::fprintf(out, "\tScripts OnComplete: %d\n", GetScriptIDFromID(3));
    std::fprintf(out, "\tScripts OnFailed: %d\n", GetScriptIDFromID(4));
    std::fprintf(out, "\tScripts OnPostActive: %d\n", GetScriptIDFromID(5));
    std::fprintf(out, "\tScripts OnPostAvailable: %d\n", GetScriptIDFromID(6));
    std::fprintf(out, "\tScripts OnPostClosed: %d\n", GetScriptIDFromID(7));
    std::fprintf(out, "\tScripts OnPostComplete: %d\n", GetScriptIDFromID(8));
    std::fprintf(out, "\tScripts OnPostLocked: %d\n", GetScriptIDFromID(9));
    std::fprintf(out, "\tScripts OnPreActive: %d\n", GetScriptIDFromID(10));
    std::fprintf(out, "\tScripts OnPreAvailable: %d\n", GetScriptIDFromID(11));
    std::fprintf(out, "\tScripts OnPreClosed: %d\n", GetScriptIDFromID(12));
    std::fprintf(out, "\tScripts OnPreComplete: %d\n", GetScriptIDFromID(13));
    return std::fputc('\n', out);
}

// 0x4807d8 Quest::SetOwnerToChildren()
// Gives the owner to the objective list, the reward list and the accept and end objectives (Objective +0x10).
void Quest::SetOwnerToChildren() {
    m_objectives.SetOwner(m_owner);
    m_rewards.SetOwner(m_owner);
    if (m_acceptType != nullptr) {
        m_acceptType->m_owner = m_owner;
    }
    if (m_endType != nullptr) {
        m_endType->m_owner = m_owner;
    }
}

// 0x48081c Quest::AssignPyData(Structs::v2Quest*)
// Binds the record, then the pre-requisite conditions (stubs +0x18, count +0x14), the objectives (stubs +0x20, count +0x1c),
// the reward stub pair picked by m_listIndex (0: +0x28/+0x24, 1: +0x30/+0x2c, 2: +0x38/+0x34), the accept objective (+0x3c)
// and the end objective (+0x68), the owner, and m_act (+0x118).
void Quest::AssignPyData(Structs::v2Quest* pyData) {
    m_pyData = pyData;
    m_preReqs.AssignPyData(static_cast<Structs::v2ConditionStub*>(pyData->PreReqs), static_cast<int>(pyData->PreReqsSize));
    m_objectives.AssignPyData(static_cast<Structs::v2QuestObjectiveStub*>(pyData->Objectives), static_cast<int>(pyData->ObjectivesSize));
    switch (m_listIndex) {
        case 1:
            m_rewards.AssignPyData(static_cast<Structs::v2QuestRewardStub*>(pyData->RewardsHard), static_cast<int>(pyData->RewardsHardSize));
            break;
        case 2:
            m_rewards.AssignPyData(static_cast<Structs::v2QuestRewardStub*>(pyData->RewardsVeryHard), static_cast<int>(pyData->RewardsVeryHardSize));
            break;
        case 0:
            m_rewards.AssignPyData(static_cast<Structs::v2QuestRewardStub*>(pyData->Rewards), static_cast<int>(pyData->RewardsSize));
            break;
        default:
            break;
    }
    m_acceptType = ObjectiveList::CreateObjectiveWithPyData(&pyData->AcceptType);
    m_endType = ObjectiveList::CreateObjectiveWithPyData(&pyData->EndType);
    SetOwnerToChildren();
    m_act = pyData->Act;
}

// 0x4808e4 Quest::Quest(int) (C1), 0x480944 Quest::Quest(int) (C2)
// The two constructors have the same body. The member lists are built by their own default constructors, before this body.
Quest::Quest(int listIndex) {
    m_listIndex = listIndex;
    m_pyDataIndex = -1;
    m_state = -1;
    m_stateStamp = 0;
    m_act = 1;
    m_name = nullptr;
    m_acceptType = nullptr;
    m_endType = nullptr;
    m_rewardsPending = true;
    m_pyData = nullptr;
    m_closed = false;
    m_needsReinit = false;
}

// 0x4809a4 Quest::~Quest() (D1), 0x480a14 Quest::~Quest() (D2)
// Deletes the accept and end objectives through their virtual deleting destructors (vtable slot 0x04, as the asm does) and
// clears them. The lists are destroyed after this body by the member destructors, in the original order: rewards, objectives,
// then pre-requisite conditions.
Quest::~Quest() {
    if (m_acceptType != nullptr) {
        delete m_acceptType;
        m_acceptType = nullptr;
    }
    if (m_endType != nullptr) {
        delete m_endType;
        m_endType = nullptr;
    }
}

// 0x480a84 Quest::GetObjectiveDescription() const
// The objective text. The pydata field +0x10 is a StrID; the unset sentinel gives the joined description of the objective list
// (ObjectiveList::GetDesc with the list at this +0x2c), and a negative id gives "not specified".
std::string Quest::GetObjectiveDescription() const {
    const int id = m_pyData->StaticObjective;
    if (id == kUnsetStringId) {
        return m_objectives.GetDesc();
    }
    if (id >= 0) {
        return std::string(ApplicationGetStringManager()->getString(id));
    }
    return std::string("not specified");
}

// 0x480c78 Quest::SetState(int)
// Ignores states above 13 (unsigned compare in the original). Entering a state that is not the current one, or the current
// one with m_needsReinit set, stamps the state and leaves the old state's objectives: Active unregisters the objective list,
// Completed unregisters the end objective, Available unregisters the accept objective. Volatile states save first. Then the
// entry actions of the new state run; their script slots are in the comments. The Closed entry (12) builds the dialog body
// from the reward list's text, m_rewards.m_rewardString (RewardList +0x08), which CreateRewardString has just built. The
// original reads that text through the RewardList +0x1c and +0x18 words (see that case); those words are the string's
// _M_start_of_storage and _M_finish, which dh2/RewardList.hpp does not declare yet (layout request).
void Quest::SetState(int state) {
    if (state < 0 || state > 13) {
        return;
    }
    const int oldState = m_state;
    m_state = state;
    if (oldState == state && !m_needsReinit) {
        return;
    }
    m_stateStamp = ApplicationGetInstance().m_lastTickTime;  // dword_99F79C
    if (oldState == QUEST_ACTIVE) {
        m_objectives.Unregister();
    } else if (oldState == QUEST_COMPLETED) {
        m_endType->Unregister();  // vtable slot 0x1c
    } else if (oldState == QUEST_AVAILABLE) {
        m_acceptType->Unregister();
    }
    if (IsVolatileState(state)) {
        HandleSaveInStateTransitonIfNeeded(state);
    }

    switch (m_state) {
        case QUEST_POST_LOCKED:  // 1
            ExecScript(9);       // OnPostLocked
            break;

        case QUEST_PRE_AVAILABLE:  // 2
            m_acceptType->InstallObjectiveMarker(m_pyData->Priority, 2);
            ExecScript(11);  // OnPreAvailable
            break;

        case QUEST_AVAILABLE:  // 3
            m_acceptType->Register();
            ExecScript(oldState == QUEST_ACTIVE ? 4 : 1);  // OnFailed (4) when the quest comes back from Active, else OnAvailable (1)
            break;

        case QUEST_POST_AVAILABLE:  // 4
            m_acceptType->RemoveObjectiveMarker();
            ExecScript(6);  // OnPostAvailable
            break;

        case QUEST_PRE_ACTIVE:  // 5
            m_objectives.InstallObjectiveMarkers(m_pyData->Priority, 5);
            ExecScript(10);  // OnPreActive
            break;

        case QUEST_ACTIVE: {  // 6
            ExecScript(0);    // OnActive
            m_objectives.Register();
            {
                const int titleId = ApplicationGetPyDataConstants()->getConstant("StrID", "GLOBAL_QUEST_NEW");
                const int textId = m_pyData->Description;
                const int style = ApplicationGetPyDataConstants()->getConstant("DialogStyles", "QuestMsgDialog");
                const DialogMsg message(titleId, textId, style, -1);
                EnqueueDialog(message);
            }
            LocalPlayerCharacter()->SG_SetCurrentQuest(m_pyDataIndex, -1);
            if (IsPrimary()) {
                LocalPlayerCharacter()->SG_SetCurrentPrimaryQuest(m_pyDataIndex, -1);
            }
            break;
        }

        case QUEST_POST_ACTIVE:  // 7
            LocalPlayerCharacter()->SG_SetCurrentQuest(-1, -1);
            ExecScript(5);  // OnPostActive
            break;

        case QUEST_PRE_COMPLETED:  // 8
            m_endType->InstallObjectiveMarker(m_pyData->Priority, 8);
            ExecScript(13);  // OnPreComplete
            break;

        case QUEST_COMPLETED:  // 9
            m_endType->Register();
            m_objectives.RemoveObjectiveMarkers();
            ExecScript(3);  // OnComplete
            LocalPlayerCharacter()->SG_SetCurrentAct(m_act, -1);
            break;

        case QUEST_POST_COMPLETED:  // 10
            m_endType->RemoveObjectiveMarker();
            ExecScript(8);  // OnPostComplete
            break;

        case QUEST_PRE_CLOSED:  // 11
            ExecScript(12);     // OnPreClosed
            break;

        case QUEST_CLOSED: {  // 12
            ExecScript(2);    // OnClosed
            m_rewards.CreateRewardString();
            const std::string title(ApplicationGetStringManager()->getString(m_pyData->Description));
            // The original copies the range from the reward list's +0x1c word (begin) to its +0x18 word (end), as the asm
            // loads them (LDR +0x54, LDR +0x50), and builds the body from the copy's first NUL. Those two words are the live
            // _M_start_of_storage and _M_finish of the reward string at +0x08 (layout request), so the range is that string's
            // text. The port takes the text from the host string directly, copied up to its first NUL.
            // RewardList::unk_18 and unk_1c are not read here: the host std::string keeps its own storage, so the words do not
            // follow CreateRewardString, and a range read through them would always be empty.
            const std::string text(m_rewards.m_rewardString.c_str());
            const int style = ApplicationGetPyDataConstants()->getConstant("DialogStyles", "QuestCompletedMsgDialog");
            const DialogMsg message(title, text, style, 1);
            EnqueueDialog(message);
            break;
        }

        case QUEST_POST_CLOSED:  // 13
            ExecScript(7);       // OnPostClosed
            break;

        default:
            break;
    }
}

// 0x481150 Quest::ReinitStateAfterLoading()
void Quest::ReinitStateAfterLoading() {
    SetState(m_state);
}

// 0x481158 Quest::DBG_IncState()
void Quest::DBG_IncState() {
    SetState((m_state + 1) % 14);
}

// 0x481184 Quest::UpdatePreClosed()
// Sets m_closed, then moves on to Closed unless script 12 (OnPreClosed) is running.
void Quest::UpdatePreClosed() {
    if (!TestIsScriptRunning(12)) {
        m_closed = true;
        SetState(QuestStateConstant("Closed"));
    }
}

// 0x4811f0 Quest::UpdatePostCompleted()
// Moves on to PreClosed unless script 8 (OnPostComplete) is running.
void Quest::UpdatePostCompleted() {
    if (!TestIsScriptRunning(8)) {
        SetState(QuestStateConstant("PreClosed"));
    }
}

// 0x481254 Quest::UpdatePreCompleted()
// Moves on to Completed unless script 13 (OnPreComplete) is running.
void Quest::UpdatePreCompleted() {
    if (!TestIsScriptRunning(13)) {
        SetState(QuestStateConstant("Completed"));
    }
}

// 0x4812b8 Quest::UpdatePostActive()
// Moves on to PreCompleted unless script 8 is running (the original checks slot 8 here, as the header notes).
void Quest::UpdatePostActive() {
    if (!TestIsScriptRunning(8)) {
        SetState(QuestStateConstant("PreCompleted"));
    }
}

// 0x48131c Quest::UpdatePostAvailable()
// Moves on to PreActive unless script 6 (OnPostAvailable) is running.
void Quest::UpdatePostAvailable() {
    if (!TestIsScriptRunning(6)) {
        SetState(QuestStateConstant("PreActive"));
    }
}

// 0x481380 Quest::UpdatePreAvailable()
// Moves on to Available unless script 11 (OnPreAvailable) is running.
void Quest::UpdatePreAvailable() {
    if (!TestIsScriptRunning(11)) {
        SetState(QuestStateConstant("Available"));
    }
}

// 0x4813e4 Quest::UpdatePostLocked()
// Moves on to PreAvailable unless script 9 (OnPostLocked) is running.
void Quest::UpdatePostLocked() {
    if (!TestIsScriptRunning(9)) {
        SetState(QuestStateConstant("PreAvailable"));
    }
}

// 0x481448 Quest::UpdateClosed()
// Moves on to PostClosed unless script 2 (OnClosed) is running. Then sets m_closed and, when the owner is the local player,
// checks the quest trophies. The owner is read after SetState, as the original does.
void Quest::UpdateClosed() {
    if (!TestIsScriptRunning(2)) {
        SetState(QuestStateConstant("PostClosed"));
        Character* owner = m_owner;
        m_closed = true;
        if (owner != nullptr && dword_99F76C->IsLocalPlayer(owner) != 0) {
            owner->CheckForAllQuestsTrophy();
        }
    }
}

// 0x4814d8 Quest::UpdateCompleted()
// When the end objective is completed and script 3 (OnComplete) is not running: the rewards are given. In an online game the
// room's attribute 5 (the highest act) is raised to the quest's act when that is higher, and when the OnlineGameState mode word
// (+0x34) is 3 or 4 the game parameters are sent (CMatchingGLLive::SendGameParameters). Then the state becomes PostCompleted.
void Quest::UpdateCompleted() {
    if (m_endType != nullptr && m_endType->m_completed && !TestIsScriptRunning(3)) {
        GiveRewards();
        if (GetOnlineGameFlag()) {
            const int act = m_act;
            if (act > CMatching::Get()->GetRoomAttributes()->GetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(5))) {
                CMatching::Get()->GetRoomAttributes()->SetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(5), m_act);
                if (static_cast<unsigned int>(OnlineSingleton<OnlineGameState>::GetInstance()->mode_ - 3) <= 1u) {
                    static_cast<CMatchingGLLive*>(CMatching::Get())->SendGameParameters();
                }
            }
        }
        SetState(QuestStateConstant("PostCompleted"));
    }
}
