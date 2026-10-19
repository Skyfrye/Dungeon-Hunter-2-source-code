// Quest predicates of the <global> quest helpers: IsNonDebugQuest, its two state predicates and the IsDebugQuest
// thunk (batch g1-game-app-global-f216b6-9). Definitions: game-app/src/g1-game-app-global-f216b6-9.cpp, except
// IsNonDebugQuest, which belongs to the batch that covers 0x43b4dc (game-app/src/g1-game-app-global-f216b6-8.cpp).
//
// The predicates return bool, as dh2/global/native_stats_inventory_merchant.hpp requires: the quest predicate
// table (GetQuestFunctor) takes their addresses as QuestPredicate. Hex-Rays prints the first three as int.
// Quest::m_state is the first int of the Quest (+0x00). See dh2/Quest.hpp for the QuestStates values.
#pragma once

class Quest;

// 0x43b4dc IsNonDebugQuest(Quest const*). Hex-Rays: return (unsigned __int8)Quest::IsDebug(q) ^ 1.
// Declared here because the state predicates below call it.
bool IsNonDebugQuest(const Quest* quest);

// 0x43b4f0 IsNonDebugQuestClosedQuest(Quest const*): a non-debug quest in a state above QUEST_CLOSED.
bool IsNonDebugQuestClosedQuest(const Quest* quest);

// 0x43b514 IsNonDebugQuestActiveButNotClosedQuest(Quest const*): a non-debug quest in a state from
// QUEST_ACTIVE to QUEST_CLOSED.
bool IsNonDebugQuestActiveButNotClosedQuest(const Quest* quest);

// 0x43b53c IsDebugQuest(Quest const*): thunk, forwards to Quest::IsDebug.
bool IsDebugQuest(const Quest* quest);
