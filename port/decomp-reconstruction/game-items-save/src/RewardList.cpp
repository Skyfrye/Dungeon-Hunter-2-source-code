// Batch g1-game-items-save-RewardList-9d3d31-0 (owner RewardList, part 1 of 1): the constructors and destructors, SetOwner,
// Give, Compile, the debug trace, CreateRewardString, InvalidateCompile and AssignPyData. Rebuilt from the Hex-Rays
// pseudocode of libDungeonHunter2.so and checked against the layout in dh2/RewardList.hpp (+0x00 m_count, +0x04 m_rewards,
// +0x08 m_rewardString, +0x18 and +0x1c unk words, +0x20 m_pyData).
//
// Shared conventions (as in ObjectiveList):
//  * Pointer arrays are host-sized: the original's 4 * count bytes become sizeof(Reward*) * count (TRACK-B decision 2).
//  * The original's operator new[](4 * count, 0) is operator new[](size, MHS_UNRECOVERED). The array is released with
//    CustomFree, which pairs with that operator new[].
//  * Rewards are released with delete. That runs the virtual deleting destructor, which the original calls through
//    vtable slot 0x04.
//  * The pydata stub array is host-sized (TRACK-B decision 3). The original steps 16 bytes per stub (asm: ADD #0x10);
//    this port indexes the Structs::v2QuestRewardStub array.
//  * The Hex-Rays return values of SetOwner, Compile, the trace, InvalidateCompile and AssignPyData are whatever the last
//    call left in r0 (this, the last virtual result, the string). The header declares those methods void, and no caller
//    uses the value.

#include "dh2/RewardList.hpp"

#include <cstddef>
#include <cstring>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/Reward.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/GetRewardImplInstance.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/runtime_support.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// The stub type is the index into s_RewardImplDataMap. CreateRewardString names the two types it turns into text.
constexpr int kRewardTypeGold = 0;
constexpr int kRewardTypeExp = 1;

// s_RewardImplDataMap (.data.rel.ro at 0x969ac8, five words): the factory for each stub type. The R_ARM_RELATIVE addends
// name the factories in index order: 0x482ef0 Gold, 0x482e94 XP, 0x482e34 CharacterProps, 0x482dd8 Loot, 0x482d80
// ConsumeLoot. The original does not range-check the type, and neither does this table lookup.
Reward* (*const s_RewardImplDataMap[5])() = {
    &GetRewardImplInstance<Reward_Gold>,
    &GetRewardImplInstance<Reward_XP>,
    &GetRewardImplInstance<Reward_CharacterProps>,
    &GetRewardImplInstance<Reward_Loot>,
    &GetRewardImplInstance<Reward_ConsumeLoot>,
};

}  // namespace

// 0x4828f0 RewardList::SetOwner(Character*)
// Writes the owner into m_owner (Reward +0x10) of each reward, in order.
void RewardList::SetOwner(Character* owner) {
    for (int i = 0; i < m_count; ++i) {
        m_rewards[i]->m_owner = owner;
    }
}

// 0x482920 RewardList::Give()
// Gives each reward in order through its virtual slot 0x08. The first reward that returns false ends the list with false.
// An empty list gives true.
bool RewardList::Give() {
    for (int i = 0; i < m_count; ++i) {
        if (!m_rewards[i]->Give()) {
            return false;
        }
    }
    return true;
}

// 0x482978 RewardList::Compile()
// Compiles each reward in order through its virtual slot 0x0c (Reward::Compile).
void RewardList::Compile() {
    for (int i = 0; i < m_count; ++i) {
        m_rewards[i]->Compile();
    }
}

// 0x4829bc RewardList::DBG_TraceDetailedRewardListInformation(__sFILE*) const
// Traces each reward in order through its virtual slot 0x10 (DBG_TraceDetailedRewardInformation), with the same stream.
void RewardList::DBG_TraceDetailedRewardListInformation(__sFILE* s) const {
    for (int i = 0; i < m_count; ++i) {
        m_rewards[i]->DBG_TraceDetailedRewardInformation(s);
    }
}

// 0x482b0c RewardList::RewardList() (C1) and 0x482b4c RewardList::RewardList() (C2). The two bodies are identical, so one
// definition serves both addresses.
// Zeroes the count, the array pointer and the pydata pointer, and leaves the string empty. The original also stores the
// address of the string in the two words at +0x18 and +0x1c; the header names them unk_18 and unk_1c, and they are
// reproduced as stored. The host std::string keeps its own storage, so later string operations do not update these words.
RewardList::RewardList()
    : m_count(0),                // +0x00
      m_rewards(nullptr),        // +0x04
      m_rewardString(),          // +0x08, empty
      unk_18(&m_rewardString),   // +0x18, the string's address
      unk_1c(&m_rewardString),   // +0x1c, the string's address
      m_pyData(nullptr) {        // +0x20
}

// 0x482ba8 RewardList::~RewardList() (D1) and 0x482c24 RewardList::~RewardList() (D2). The two bodies are identical.
// Deletes each non-null reward through its virtual deleting destructor and clears its slot, then releases the pointer array
// with CustomFree and clears it. Only the first m_count rewards are walked, as in the original, so rewards left behind by an
// earlier AssignPyData with a nonpositive count are not deleted. The string at +0x08 is destroyed by the member destructor.
RewardList::~RewardList() {
    if (m_count > 0) {
        for (int i = 0; i < m_count; ++i) {
            if (m_rewards[i] != nullptr) {
                delete m_rewards[i];
                m_rewards[i] = nullptr;
            }
        }
    }
    if (m_rewards != nullptr) {
        CustomFree(m_rewards);
        m_rewards = nullptr;
    }
}

// 0x4835a0 RewardList::CreateRewardString()
// Appends the text of each compiled reward to m_rewardString (a reward that is not compiled is skipped). Gold (type 0) and
// XP (type 1) each format their StrID text with the reward's parameter 1 (GetParam1). A newline comes before the text of
// every compiled reward except the first one. The first flag is cleared after each compiled reward, whatever its type, so
// a reward of another type still counts as the first one. Other types add no text. When no compiled reward was seen, the
// string becomes the MENU_AUTOTRANSMUTE_1 text. An empty list returns at once and leaves the string alone. The string is not
// cleared first; InvalidateCompile does that.
void RewardList::CreateRewardString() {
    if (m_count <= 0) {
        return;
    }
    bool first = true;  // v3: set until the first compiled reward has been written
    for (int i = 0; i < m_count; ++i) {
        Reward* reward = m_rewards[i];
        if (!reward->m_compiled) {  // +0x08
            continue;
        }
        std::string text;  // v19, empty until a text type fills it
        const int type = reward->m_type;  // +0x04
        if (type == kRewardTypeGold || type == kRewardTypeExp) {
            const char* key =
                (type == kRewardTypeGold) ? "GAMEPLAYMENUS_REWARD_DETAIL_GOLD" : "GAMEPLAYMENUS_REWARD_DETAIL_EXP";
            StringManager* strings = ApplicationGetStringManager();
            const int id = ApplicationGetPyDataConstants()->getConstant("StrID", key);
            const char* format = strings->getString(id);
            const int param1 = reward->GetParam1();
            strings->parse(text, format, param1);
            if (!first) {
                m_rewardString += "\n";
            }
        }
        m_rewardString += text;
        first = false;
    }
    if (first) {
        StringManager* strings = ApplicationGetStringManager();
        const int id = ApplicationGetPyDataConstants()->getConstant("StrID", "MENU_AUTOTRANSMUTE_1");
        const char* text = strings->getString(id);
        m_rewardString.assign(text, std::strlen(text));
    }
}

// 0x4838fc RewardList::InvalidateCompile()
// Clears m_rewardString and the compiled flag (Reward +0x08) of each reward.
void RewardList::InvalidateCompile() {
    m_rewardString.clear();
    for (int i = 0; i < m_count; ++i) {
        m_rewards[i]->m_compiled = false;
    }
}

// 0x483950 RewardList::AssignPyData(Structs::v2QuestRewardStub*, int)
// Stores the row array (+0x20) and the count (+0x00), and clears the text. A positive count allocates the pointer array
// (+0x04) and builds one reward per row, in row order: the factory for the row's type (s_RewardImplDataMap[type]()), then
// the row pointer (Reward +0x0c) and the type (Reward +0x04). A count of zero or less keeps the existing array, and the
// original does not delete the rewards already in it.
void RewardList::AssignPyData(Structs::v2QuestRewardStub* pyData, int count) {
    m_pyData = pyData;
    m_count = count;
    m_rewardString.clear();
    if (count > 0) {
        m_rewards = static_cast<Reward**>(
            ::operator new[](sizeof(Reward*) * static_cast<std::size_t>(count), MHS_UNRECOVERED));
        for (int i = 0; i < count; ++i) {
            m_rewards[i] = s_RewardImplDataMap[pyData[i].Type]();
            m_rewards[i]->m_pyData = &pyData[i];
            m_rewards[i]->m_type = pyData[i].Type;
        }
    }
}
