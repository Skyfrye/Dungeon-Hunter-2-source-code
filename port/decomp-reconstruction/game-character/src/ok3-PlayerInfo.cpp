// PlayerInfo copy constructor and assignment (owner K3, 2026-10-16). The net-transport owner reconstructed CNetPlayerInfo's copy
// (0x377448, the NetStruct base's member pointer array copied with memcpy, then the blocks member by member) and operator=
// (0x378708), so the PlayerInfo ones that start with them can be written.

#include "dh2/PlayerInfo.hpp"

// 0x3777d0 _ZN10PlayerInfoC1ERKS_
// CNetPlayerInfo's copy constructor, then the 25 replicated blocks copied field by field (vptr, change stamp, the three masks, the
// changed byte, the value; the byte arrays copy their buffer through ByteArray::SetBuffer) and the ten plain fields +0x660 .. +0x687 (the
// listing copies the words and the byte at +0x66c).
// DEVIATION (host-necessitated): the three byte-array blocks are built from the source's value (a deep copy through the block's
// ByteArray constructor, as SetBuffer does) and therefore start with the constructor's masks; the listing also copies the source's change
// stamp and masks, which are protected in NetStructMember and the ByteArray value has no copy of its own, so a member-wise copy would share
// the buffer and free it twice.
PlayerInfo::PlayerInfo(const PlayerInfo& other)
    : CNetPlayerInfo(other),
      unk_288(other.unk_288),
      m_characterName(other.m_characterName),
      unk_2e8(other.unk_2e8),
      m_characterLevel(other.m_characterLevel),
      m_characterNumPotions(other.m_characterNumPotions),
      m_characterClass(other.m_characterClass),
      m_characterDeathTimer(other.m_characterDeathTimer),
      unk_3b0(other.unk_3b0.GetValue()),
      unk_3d8(other.unk_3d8.GetValue()),
      unk_400(other.unk_400.GetValue()),
      m_characterXP(other.m_characterXP),
      unk_450(other.unk_450),
      m_characterGold(other.m_characterGold),
      unk_4a0(other.unk_4a0),
      m_ingame(other.m_ingame),
      m_inCutscene(other.m_inCutscene),
      m_doneLoading(other.m_doneLoading),
      m_readyToRoll(other.m_readyToRoll),
      unk_548(other.unk_548),
      unk_570(other.unk_570),
      unk_598(other.unk_598),
      unk_5c0(other.unk_5c0),
      unk_5e8(other.unk_5e8),
      unk_610(other.unk_610),
      unk_638(other.unk_638),
      unk_660(other.unk_660),
      unk_664(other.unk_664),
      unk_668(other.unk_668),
      unk_66c(other.unk_66c),
      unk_670(other.unk_670),
      unk_674(other.unk_674),
      unk_678(other.unk_678),
      unk_67c(other.unk_67c),
      unk_680(other.unk_680),
      unk_684(other.unk_684) {}

// 0x378808 _ZN10PlayerInfoaSERKS_
// CNetPlayerInfo::operator= (0x378708), then SetValue (vtable +0x1c) of each replicated block with the source's value (blocks +0x288 ..
// +0x638 in order: the 14 scalar/array/name blocks, the 4 bools and the 7 trailing ints), then the plain fields +0x660 .. +0x684 copied.
PlayerInfo& PlayerInfo::operator=(const PlayerInfo& other) {
    CNetPlayerInfo::operator=(other);
    unk_288.SetValue(other.unk_288.GetValue());                         // +0x288
    m_characterName.SetValue(other.m_characterName.GetValue());         // +0x2b0
    unk_2e8.SetValue(other.unk_2e8.GetValue());                         // +0x2e8
    m_characterLevel.SetValue(other.m_characterLevel.GetValue());       // +0x310
    m_characterNumPotions.SetValue(other.m_characterNumPotions.GetValue());  // +0x338
    m_characterClass.SetValue(other.m_characterClass.GetValue());       // +0x360
    m_characterDeathTimer.SetValue(other.m_characterDeathTimer.GetValue());  // +0x388
    unk_3b0.SetValue(other.unk_3b0.GetValue());                         // +0x3b0
    unk_3d8.SetValue(other.unk_3d8.GetValue());                         // +0x3d8
    unk_400.SetValue(other.unk_400.GetValue());                         // +0x400
    m_characterXP.SetValue(other.m_characterXP.GetValue());             // +0x428
    unk_450.SetValue(other.unk_450.GetValue());                         // +0x450
    m_characterGold.SetValue(other.m_characterGold.GetValue());         // +0x478
    unk_4a0.SetValue(other.unk_4a0.GetValue());                         // +0x4a0
    m_ingame.SetValue(other.m_ingame.GetValue());                       // +0x4c8
    m_inCutscene.SetValue(other.m_inCutscene.GetValue());               // +0x4e8
    m_doneLoading.SetValue(other.m_doneLoading.GetValue());             // +0x508
    m_readyToRoll.SetValue(other.m_readyToRoll.GetValue());             // +0x528
    unk_548.SetValue(other.unk_548.GetValue());                         // +0x548
    unk_570.SetValue(other.unk_570.GetValue());                         // +0x570
    unk_598.SetValue(other.unk_598.GetValue());                         // +0x598
    unk_5c0.SetValue(other.unk_5c0.GetValue());                         // +0x5c0
    unk_5e8.SetValue(other.unk_5e8.GetValue());                         // +0x5e8
    unk_610.SetValue(other.unk_610.GetValue());                         // +0x610
    unk_638.SetValue(other.unk_638.GetValue());                         // +0x638
    unk_660 = other.unk_660;                                            // +0x660
    unk_664 = other.unk_664;                                            // +0x664
    unk_668 = other.unk_668;                                            // +0x668
    unk_66c = other.unk_66c;                                            // +0x66c (byte)
    unk_670 = other.unk_670;                                            // +0x670
    unk_674 = other.unk_674;                                            // +0x674
    unk_678 = other.unk_678;                                            // +0x678
    unk_67c = other.unk_67c;                                            // +0x67c
    unk_680 = other.unk_680;                                            // +0x680
    unk_684 = other.unk_684;                                            // +0x684
    return *this;
}
