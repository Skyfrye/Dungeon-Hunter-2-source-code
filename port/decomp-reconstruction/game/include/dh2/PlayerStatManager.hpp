// PlayerStatManager: the singleton that receives player stat changes. In this build it owns no state. Its constructor
// only installs the vtable, IncreaseStat is an empty body that IncrementStat forwards to, and the ranking, invoke and
// bonus methods read PlayerManager's players. Its only virtual is the destructor.
// Original 32-bit size 4 (the vptr only).
// Reconstructed from libDungeonHunter2.so pseudocode: ctors 0x379084 (C2) and 0x3790a8 (C1), dtors 0x3790cc (D2),
// 0x3790d0 (D1), 0x3795ac (D0). The enumerators of EStatType are the seven GetStatStr cases (0..6).
#pragma once

#include <cstdint>
#include <string>

// Stat kinds, in GetStatStr order (0x3795c8: "killer", "striker", "controller", "defender", "looter", "support", "xp").
// Underlying type not yet confirmed. The enumerator names are derived from those strings.
enum EStatType : std::uint32_t {
    STAT_KILLER = 0,
    STAT_STRIKER = 1,
    STAT_CONTROLLER = 2,
    STAT_DEFENDER = 3,
    STAT_LOOTER = 4,
    STAT_SUPPORT = 5,
    STAT_XP = 6,
};

class PlayerStatManager {
public:
    PlayerStatManager();                                                // 0x379084 (C2), 0x3790a8 (C1)
    virtual ~PlayerStatManager();                                       // 0x3790cc (D2), 0x3790d0 (D1), 0x3795ac (D0)

    void Reset();                                                       // 0x3790d4 empty
    void Update();                                                      // 0x3790d8 empty
    void ApplyPlayersBonus();                                           // 0x3790dc empty
    void IncreaseStat(EStatType stat, int amount, int playerId);        // 0x3790e0 empty (the body is BX LR)
    void DecreaseStat(EStatType stat, int amount, int playerId);        // 0x3790e4 forwards to IncreaseStat
    void IncrementStat(EStatType stat, int playerId);                   // 0x3790ec forwards to IncreaseStat(stat, 1, playerId)
    void DecrementStat(EStatType stat, int playerId);                   // 0x3790f8 forwards to IncreaseStat
    void SetStatValue(EStatType stat, int value, int playerId, bool flag);  // 0x379104 empty
    void ResetStatValue(EStatType stat, int playerId);                  // 0x379108 forwards to SetStatValue
    void ResetAllStatValues(int playerId);                              // 0x37912c resets stats 0..6 for playerId (Hex-Rays returns the leftover R0; no callers)
    int GetStatValue(EStatType stat, int playerId) const;               // 0x379824 PlayerManager's player record at stat * 40 + 1384
    static std::string GetStatStr(EStatType stat);                      // 0x3795c8 "killer", "striker", ..., "xp", or ""; static: no this (asm: stat in R1, sret in R0)
    int Invoke(EStatType stat, int playerId, int rankIndex) const;      // 0x3796c4 onRankChange callback into the HUD; playerId is the internal id (GetPlayerByInternalID), rankIndex the 4th callback argument
    int Invoke(const std::string& name) const;                          // 0x379568 InvokeASCallback on the HUD root
    int* GetRanking(EStatType stat, bool sort) const;                   // 0x379ac4 (value, player index) pairs in one static buffer shared by all stats; sorted when sort is set, else the last result
    int UpdateRanking(EStatType stat) const;                            // 0x379d18 Invokes the HUD for each player
    int GetLeader(EStatType stat) const;                                // 0x379dfc
    int GetNumLeadingStats(int playerId) const;                         // 0x379e10

    // Singleton<PlayerStatManager>::s_inst: the call sites pass &Singleton<PlayerStatManager>::s_inst as this
    // (Character::F_ApplyResult overload at 0x3b10b4, IncrementStat and IncreaseStat calls). This name is a reference to that
    // object, defined with the instantiation in game-app/src/singleton_PlayerStatManager.cpp (link-1).
    static PlayerStatManager& s_inst;

    // No data members: the vptr at +0x00 is the whole object.
};
