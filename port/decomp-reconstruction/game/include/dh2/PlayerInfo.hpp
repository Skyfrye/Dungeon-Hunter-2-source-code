// PlayerInfo: the replicated record of one player character in the net player manager. It derives from
// CNetPlayerInfo (the 0x288-byte NetStruct base) and adds 25 NetStructMember blocks from +0x288 to +0x65f, then
// ten plain fields from +0x660 to +0x687. The character's level, potions, class, death timer, name, XP and gold
// are replicated members; the in-game, in-cutscene, done-loading and ready-to-roll flags are NetStructBool members.
// Original 32-bit size 0x688 (1672), from PlayerInfo::Create's operator new(0x688).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors C1 0x37418c / C2 0x374cc0, copy ctor 0x3777d0,
// dtors 0x371294 / 0x371670 / 0x37168c, Reset 0x373bdc, Create 0x374ca0, Delete 0x36d258). The member offsets
// follow the NetStruct::DeclareMember calls at the end of the constructor. The blocks are contiguous: 0x28 bytes
// for scalars and byte arrays, 0x38 for the name string, 0x20 for the bools.
// Vtable (108 bytes, 25 slots): CNetPlayerInfo's slots, with the destructors at slots 0 and 1, Reset at slot 19
// (+0x4c) and IsActive at slot 23 (+0x5c) overridden.
#pragma once

#include <cstdint>
#include <string>

#include "net-transport/tb/cnet_player_info.hpp"
#include "net-transport/tb/net_struct_byte_array.hpp"
#include "net-transport/tb/net_struct_int.hpp"
#include "net-transport/tb/net_struct_string.hpp"

class Character;

// The loading-info object at PlayerInfo +0x680 is only ever deleted through its virtual deleting destructor; its class is not recovered.
class PolymorphicObject {
public:
    virtual ~PolymorphicObject() = default;
};

class PlayerInfo : public CNetPlayerInfo {
public:
    PlayerInfo();                                                       // 0x37418c (C1), 0x374cc0 (C2)
    ~PlayerInfo() override;                                             // slot 0: 0x371294 (D1); slot 1: 0x371670 (D0, deleting); 0x37168c (D2)
    // Copy constructor 0x3777d0: CNetPlayerInfo's copy (0x377448), then every block copied field by field (the byte arrays
    // through ByteArray::SetBuffer), then the plain fields. operator= 0x378808: CNetPlayerInfo::operator= (0x378708), then
    // every block through its SetValue (vtable +0x1c) with the source's value, then the plain fields (shallow, the Character
    // and the loading-info pointers included). Both in game-character/src/ok3-PlayerInfo.cpp. As in the binary, the copy keeps
    // the base's member pointer array, so its registry still addresses the source's blocks (cnet_player_info.hpp).
    PlayerInfo(const PlayerInfo& other);                                // 0x3777d0 (C1)
    PlayerInfo& operator=(const PlayerInfo& other);                     // 0x378808

    // Factory: operator new(0x688), then the C1 constructor. Delete calls the object's virtual deleting destructor.
    static PlayerInfo* Create();                                        // 0x374ca0
    static void Delete(CNetPlayerInfo* info);                           // 0x36d258

    // Overrides of CNetPlayerInfo slots, in vtable order.
    void Reset() override;                                              // slot 19 (+0x4c): 0x373bdc, CNetPlayerInfo::Reset, then every member to its default
    bool IsActive() const override;                                     // slot 23 (+0x5c): 0x36d48c, true when offline; else false when member_id_, conn_index_ or unk_1c8 is negative, else state_ == 3

    // Setters. Each writes its member through the NetStruct setter, so a change marks the member changed.
    void SetCharacterName(std::string name);                            // 0x371ccc, by value; writes m_characterName
    void SetCharacterLevel(int level);                                  // 0x370e48
    void SetCharacterNumPotions(int count);                             // 0x36fcb0
    void SetCharacterClass(int characterClass);                         // 0x370ef0
    void SetCharacterDeathTimer(int timer);                             // 0x370bf4
    void SetCharacterXP(int xp);                                        // 0x36fd58
    void SetCharacterGold(int gold);                                    // 0x36fe04
    void SetIngame(bool ingame);                                        // 0x370a9c
    void SetInCutscene(bool inCutscene);                                // 0x459900
    void SetDoneLoading(bool doneLoading);                              // 0x370b48
    void SetReadyToRoll(bool readyToRoll);                              // 0x370908

    // Local-state helpers. UpdateReadyToRoll works on the local record only, when online, initialized and not the
    // host: it clears m_readyToRoll while m_doneLoading is clear, and sets it once m_doneLoading is set and a global
    // check passes (0x3709b4). ClearLoadingInfo also works on the local record only: it clears m_ingame,
    // m_inCutscene, m_doneLoading and m_readyToRoll and sets the death timer to -1 (0x370cf8).
    void UpdateReadyToRoll();                                           // 0x3709b4
    void ClearLoadingInfo();                                            // 0x370cf8

    // Replicated members, in the original order. Offsets are the 32-bit block offsets (the value of a scalar
    // sits at block +0x20, a bool at block +0x1d).
    NetStructInt<8u> unk_288;                                           // +0x288 block 0x28; Reset zeroes it
    NetStructString<32u> m_characterName;                               // +0x2b0 block 0x38; SetCharacterName; empty after Reset
    NetStructInt<16u> unk_2e8;                                          // +0x2e8 block 0x28; not written by Reset
    NetStructInt<16u> m_characterLevel;                                 // +0x310 SetCharacterLevel; -1 after Reset
    NetStructInt<16u> m_characterNumPotions;                            // +0x338 SetCharacterNumPotions; -1 after Reset
    NetStructInt<16u> m_characterClass;                                 // +0x360 SetCharacterClass; -1 after Reset
    NetStructInt<16u> m_characterDeathTimer;                            // +0x388 SetCharacterDeathTimer; -1 after Reset
    NetStructByteArray<36u> unk_3b0;                                    // +0x3b0 block 0x28; 36 bytes, all 0xff after Reset
    NetStructByteArray<3u> unk_3d8;                                     // +0x3d8 block 0x28; 3 bytes, all 0xff after Reset
    NetStructByteArray<30u> unk_400;                                    // +0x400 block 0x28; 30 bytes, all 0xff after Reset
    NetStructInt<32u> m_characterXP;                                    // +0x428 SetCharacterXP; 0 after Reset
    NetStructInt<32u> unk_450;                                          // +0x450 block 0x28; not written by Reset
    NetStructInt<32u> m_characterGold;                                  // +0x478 SetCharacterGold; 0 after Reset
    NetStructInt<32u> unk_4a0;                                          // +0x4a0 block 0x28; Reset writes it through its setter (value from a stack temporary)
    NetStructBool m_ingame;                                             // +0x4c8 block 0x20, value at +0x4e5; SetIngame
    NetStructBool m_inCutscene;                                         // +0x4e8 block 0x20, value at +0x505; SetInCutscene
    NetStructBool m_doneLoading;                                        // +0x508 block 0x20, value at +0x525; SetDoneLoading, read by UpdateReadyToRoll
    NetStructBool m_readyToRoll;                                        // +0x528 block 0x20, value at +0x545; SetReadyToRoll
    NetStructInt<16u> unk_548;                                          // +0x548 block 0x28; zeroed by Reset (this and the six below)
    NetStructInt<16u> unk_570;                                          // +0x570 block 0x28
    NetStructInt<16u> unk_598;                                          // +0x598 block 0x28
    NetStructInt<16u> unk_5c0;                                          // +0x5c0 block 0x28
    NetStructInt<16u> unk_5e8;                                          // +0x5e8 block 0x28
    NetStructInt<16u> unk_610;                                          // +0x610 block 0x28
    NetStructInt<16u> unk_638;                                          // +0x638 block 0x28; ends at +0x660

    // Plain fields after the members. The values are the ones Reset writes.
    // Names below are evidence-based suggestions; the member names are kept because sources use them.
    Character* unk_660;                                                 // +0x660 the player's Character, Reset writes 0. name: character_660 (PlayerManager::GetLocalPlayerCharacter 0x330794 returns ->character_660)
    std::int32_t unk_664;                                               // +0x664 Reset writes -1. name: m_saveSlot (candidate; NativeStartGame reads the save slot here)
    std::int32_t unk_668;                                               // +0x668 Reset writes -1. name: m_playerId (candidate; PlayerIdForCharacter reads the id from the record)
    std::uint8_t unk_66c;                                               // +0x66c Reset writes 1. name not recovered: v2NetController::Update returns early unless this byte is 1
    std::uint8_t pad_66d[3];                                            // +0x66d
    std::int32_t unk_670;                                               // +0x670 Reset writes -1. name: m_statPlayerId (candidate; _GiveXP passes it as the playerId of PlayerStatManager::IncreaseStat)
    std::int32_t unk_674;                                               // +0x674 Reset writes -1
    std::int32_t unk_678;                                               // +0x678 Reset writes -1. name: m_playerNumber (candidate; NativeGetPlayerInfos and the multiplayer highlight read it)
    std::int32_t unk_67c;                                               // +0x67c Reset writes -1
    PolymorphicObject* unk_680;                                                      // +0x680 loading info object: Reset writes 0; ~PlayerInfo calls its virtual deleting destructor (vtable slot 1)
    std::uint32_t unk_684;                                              // +0x684 Reset writes 0
};
