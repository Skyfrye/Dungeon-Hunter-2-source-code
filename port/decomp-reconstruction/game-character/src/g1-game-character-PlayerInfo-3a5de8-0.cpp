#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#include <dlfcn.h>
#include <unwind.h>
static _Unwind_Reason_Code dh2PiBt(struct _Unwind_Context* c, void*) { uintptr_t pc = _Unwind_GetIP(c); Dl_info i; if (dladdr((void*)pc, &i)) __android_log_print(ANDROID_LOG_INFO, "DH2PI", "  bt off 0x%lx", (unsigned long)(pc - (uintptr_t)i.dli_fbase)); return _URC_NO_REASON; }
#endif
// Batch g1-game-character-PlayerInfo-3a5de8-0: twenty PlayerInfo functions. The constructor (C1), the three destructor
// addresses, the factory Create, the player-table hook Delete, Reset, the setters, ClearLoadingInfo, UpdateReadyToRoll
// and SetCharacterName. Declarations are in dh2/PlayerInfo.hpp, which this batch does not change.
//
// Shared note for the PARTIAL rows. The original's setters, Reset, ClearLoadingInfo and the constructor pass each value
// through a stack temporary (a NetStructInt<16u>, NetStructInt<32u> or NetStructBool). The temporary's value word is
// never written, so the compiler leaves it uninitialised. The original compares the new value with that stale word, and
// when they differ it stores the value into the temporary and calls NetStructMember::SetChanged (0x814f84) on it.
// SetChanged advances NetStruct::s_changeCounter, so the counter depends on stale stack data and is not reproduced here
// (the same case is recorded as PARTIAL for Trigger::PopulateOutgoingNetStruct). The port calls the member's SetValue with
// the same value on every path. NetStructMemberType::SetValue marks the member changed exactly when it differs, so the
// member values and change flags match. Only the counter advance can differ.
//
// SetCharacterName (0x371ccc) is not in this set. Its temporary is a NetStructString<32u>, and its constructor sets the
// value from the name against an empty start, so the SetChanged it may make is decided by the name, not by stale stack
// data. That advance is deterministic and is reproduced (see the row below).
//
// No test: every body works on NetStruct members, the player manager or the online singletons, so none of the logic can
// run standalone.

#include <cstdint>
#include <cstring>
#include <string>

#include "dh2/PlayerInfo.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"
#include "net-transport/tb/net_struct_string.hpp"

// 0x37418c PlayerInfo::PlayerInfo(void)   (C1)
// (see the file note). The base constructor runs first, then each member is built in the header's order with its
// default: value zero, change bookkeeping clear. The stale-word branches of the original member constructors are not
// reproduced. The body then does what the original does after the members:
//   1. registers the factory once (the function-local static s_register stands for the original's guard variable);
//   2. declares the 25 replicated members with NetStruct::DeclareMember, in the order the original calls it. That order
//      is the member index order used on the wire, and it differs from the offset order in the header;
//   3. calls Reset().
PlayerInfo::PlayerInfo()
    : CNetPlayerInfo(),
      unk_288(),
      m_characterName(std::string()),
      unk_2e8(),
      m_characterLevel(),
      m_characterNumPotions(),
      m_characterClass(),
      m_characterDeathTimer(),
      unk_3b0(ByteArray()),
      unk_3d8(ByteArray()),
      unk_400(ByteArray()),
      m_characterXP(),
      unk_450(),
      m_characterGold(),
      unk_4a0(),
      m_ingame(),
      m_inCutscene(),
      m_doneLoading(),
      m_readyToRoll(),
      unk_548(),
      unk_570(),
      unk_598(),
      unk_5c0(),
      unk_5e8(),
      unk_610(),
      unk_638() {
    static const bool s_register = [] {
        // Factory hooks: Create (cast to the CNetPlayerInfo factory type) and Delete (void destroy hook).
        CNetPlayerManager::RegisterPlayerInfoFunctions(reinterpret_cast<CNetPlayerInfo* (*)()>(&PlayerInfo::Create),
                                                       &PlayerInfo::Delete);
        return true;
    }();
    (void)s_register;

    DeclareMember(&unk_288);             // +0x288
    DeclareMember(&m_characterLevel);    // +0x310
    DeclareMember(&m_characterNumPotions);  // +0x338
    DeclareMember(&m_characterClass);    // +0x360
    DeclareMember(&m_characterName);     // +0x2b0
    DeclareMember(&m_characterDeathTimer);  // +0x388
    DeclareMember(&unk_2e8);             // +0x2e8
    DeclareMember(&unk_3b0);             // +0x3b0
    DeclareMember(&unk_3d8);             // +0x3d8
    DeclareMember(&unk_400);             // +0x400
    DeclareMember(&m_characterXP);       // +0x428
    DeclareMember(&unk_450);             // +0x450
    DeclareMember(&m_characterGold);     // +0x478
    DeclareMember(&unk_4a0);             // +0x4a0
    DeclareMember(&m_ingame);            // +0x4c8
    DeclareMember(&m_inCutscene);        // +0x4e8
    DeclareMember(&m_doneLoading);       // +0x508
    DeclareMember(&m_readyToRoll);       // +0x528
    DeclareMember(&unk_548);             // +0x548
    DeclareMember(&unk_570);             // +0x570
    DeclareMember(&unk_598);             // +0x598
    DeclareMember(&unk_5c0);             // +0x5c0
    DeclareMember(&unk_5e8);             // +0x5e8
    DeclareMember(&unk_610);             // +0x610
    DeclareMember(&unk_638);             // +0x638

    Reset();
}

// 0x371294 PlayerInfo::~PlayerInfo(void)   (complete object destructor, D1; the base object destructor D2 at 0x37168c is the
// same code)
// The loading-info object at +0x680 (unk_680, a polymorphic object whose class is not recovered) is deleted through its virtual deleting
// destructor (vtable slot 1) and the pointer cleared. Everything else is the compiler's work, in the order the original's inline steps
// follow: the members are destroyed in reverse declaration order, the ByteArray members free their buffers, the name string is destroyed,
// and CNetPlayerInfo's destructor runs last.
PlayerInfo::~PlayerInfo() {
    if (unk_680 != nullptr) {
        delete unk_680;
        unk_680 = nullptr;
    }
}

// 0x36d258 PlayerInfo::Delete(CNetPlayerInfo*)
// A null pointer does nothing. Otherwise the original calls the object's virtual deleting destructor through vtable slot 1
// (+0x04). A delete expression on the CNetPlayerInfo pointer makes the same virtual call. The destroy hook registered by the
// constructor is void (*)(CNetPlayerInfo*), so the pointer that the original returns (its ARM destructor convention) is not
// kept.
void PlayerInfo::Delete(CNetPlayerInfo* info) {
    if (info != nullptr) {
        delete info;
    }
}

// 0x36d48c PlayerInfo::IsActive(void)
// True at once while the online-game flag (byte +0x05 of GetOnline()) is clear. Online: false when the member id, the matching member id
// or the gamepad id is negative, otherwise the replicated state (state_) is 3, the active state.
bool PlayerInfo::IsActive() const {
    if (!GetOnlineGameFlag()) {
        return true;
    }
    if (member_id_.GetValue() < 0 || matching_member_id_.GetValue() < 0 || gamepad_id_.GetValue() < 0) {
        return false;
    }
    return state_.GetValue() == 3;
}

// 0x36fcb0 PlayerInfo::SetCharacterNumPotions(int)
// PARTIAL (see the file note): the stale-temporary SetChanged is not reproduced. Writes m_characterNumPotions (+0x338).
void PlayerInfo::SetCharacterNumPotions(int count) {
    m_characterNumPotions.SetValue(count);
}

// 0x36fd58 PlayerInfo::SetCharacterXP(int)
// (see the file note). Writes m_characterXP (+0x428).
void PlayerInfo::SetCharacterXP(int xp) {
    m_characterXP.SetValue(xp);
}

// 0x36fe04 PlayerInfo::SetCharacterGold(int)
// (see the file note). Writes m_characterGold (+0x478).
void PlayerInfo::SetCharacterGold(int gold) {
    m_characterGold.SetValue(gold);
}

// 0x370908 PlayerInfo::SetReadyToRoll(bool)
// (see the file note). Writes m_readyToRoll (+0x528).
void PlayerInfo::SetReadyToRoll(bool readyToRoll) {
    m_readyToRoll.SetValue(readyToRoll);
}

// 0x3709b4 PlayerInfo::UpdateReadyToRoll(void)
// Only for a local, non-host record while the network gate is open (NetGateOpen). If m_doneLoading is clear the ready-to-roll flag is cleared
// (SetReadyToRoll(false)); otherwise, when PlayerManager m_questSyncBuffered (+0x710), m_initialSetupDone (+0x6d0) and ObjectManager unk_160 (+0x160)
// are all set, it becomes set (SetReadyToRoll(true)).
void PlayerInfo::UpdateReadyToRoll() {
    if (!NetGateOpen()) {
        return;
    }
    if (!IsLocal() || IsHost()) {
        return;
    }
    if (!m_doneLoading.GetValue()) {
        SetReadyToRoll(false);
        return;
    }
    if (dword_99F76C->m_questSyncBuffered && dword_99F76C->m_initialSetupDone && dword_99F764->unk_160) {
        SetReadyToRoll(true);
    }
}

// 0x370a9c PlayerInfo::SetIngame(bool)
// (see the file note). Writes m_ingame (+0x4c8).
void PlayerInfo::SetIngame(bool ingame) {
    m_ingame.SetValue(ingame);
}

// 0x370b48 PlayerInfo::SetDoneLoading(bool)
// (see the file note). Writes m_doneLoading (+0x508).
void PlayerInfo::SetDoneLoading(bool doneLoading) {
    m_doneLoading.SetValue(doneLoading);
}

// 0x370bf4 PlayerInfo::SetCharacterDeathTimer(int)
// (see the file note). Writes m_characterDeathTimer (+0x388).
void PlayerInfo::SetCharacterDeathTimer(int timer) {
    m_characterDeathTimer.SetValue(timer);
}

// 0x370cf8 PlayerInfo::ClearLoadingInfo(void)
// (see the file note). Acts only on the local player (IsLocal, vtable +0x50). It clears m_ingame, m_inCutscene,
// m_doneLoading and m_readyToRoll, and sets the death timer to -1. The value written to m_inCutscene is false on every path;
// the stale-temporary SetChanged in front of that write is not reproduced.
void PlayerInfo::ClearLoadingInfo() {
    if (!IsLocal()) {
        return;
    }
    SetIngame(false);
    m_inCutscene.SetValue(false);
    SetDoneLoading(false);
    SetReadyToRoll(false);
    SetCharacterDeathTimer(-1);
}

// 0x370e48 PlayerInfo::SetCharacterLevel(int)
// (see the file note). Writes m_characterLevel (+0x310).
void PlayerInfo::SetCharacterLevel(int level) {
    m_characterLevel.SetValue(level);
}

// 0x370ef0 PlayerInfo::SetCharacterClass(int)
// (see the file note). Writes m_characterClass (+0x360).
void PlayerInfo::SetCharacterClass(int characterClass) {
    m_characterClass.SetValue(characterClass);
}

// 0x37168c PlayerInfo::~PlayerInfo(void)   (base object destructor, D2)
// The same code as 0x371294 (D1). Its body is defined there, and this address is not defined again. It is PARTIAL for the
// same reason as the D1 row (the loading-info object at +0x680 is not deleted).
// Note: this row is not a definition; the destructor has one body, in the D1 row above.

// 0x371670 PlayerInfo::~PlayerInfo(void)   (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~PlayerInfo() at 0x371294 followed by CustomFree(this)). A delete
// expression on a PlayerInfo does the same, so there is no separate body.

// 0x371ccc PlayerInfo::SetCharacterName(std::string)
// The original copies the argument, builds a NetStructString<32u> temporary from the copy, and passes the temporary's
// value (its std::string at +0x20) to the virtual SetValue (vtable +0x1c) of m_characterName (+0x2b0). The temporary's
// constructor calls NetStructMemberType<std::string>::SetValue (0x36fc4c, non-virtual) on a value that starts empty. That
// SetValue calls NetStructMember::SetChanged (0x814f84) on the temporary exactly when the name is not empty, and SetChanged
// does ++NetStruct::s_changeCounter. The port builds the same temporary, so the counter advances the same way: once for
// the temporary when the name is not empty, and once more when m_characterName changes. The temporary's flags are
// discarded with it, and its destructor does nothing else.
void PlayerInfo::SetCharacterName(std::string name) {
    NetStructString<32u> tmp(name);
    m_characterName.SetValue(tmp.GetValue());
}

// 0x373bdc PlayerInfo::Reset(void)
// (see the file note). Every SetValue below stores the value the original stores, in the original's order. The
// stale-temporary SetChanged calls are not reproduced, and the setters called here carry the same note.
void PlayerInfo::Reset() {
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    __android_log_print(ANDROID_LOG_INFO, "DH2PI", "PlayerInfo::Reset %p slot was %d", (void*)this, unk_664);
    _Unwind_Backtrace(dh2PiBt, nullptr);
#endif
    CNetPlayerInfo::Reset();
    unk_66c = 1;
    unk_660 = nullptr;
    SetCharacterName(std::string());
    SetCharacterLevel(-1);
    SetCharacterNumPotions(-1);
    SetCharacterClass(-1);
    SetCharacterDeathTimer(-1);

    std::uint8_t allFF36[36];
    std::memset(allFF36, 0xff, sizeof allFF36);
    unk_3b0.SetBuffer(allFF36, sizeof allFF36);
    std::uint8_t allFF3[3];
    std::memset(allFF3, 0xff, sizeof allFF3);
    unk_3d8.SetBuffer(allFF3, sizeof allFF3);
    std::uint8_t allFF30[30];
    std::memset(allFF30, 0xff, sizeof allFF30);
    unk_400.SetBuffer(allFF30, sizeof allFF30);

    SetCharacterXP(0);
    SetCharacterGold(0);
    unk_548.SetValue(0);
    unk_570.SetValue(0);
    unk_598.SetValue(0);
    unk_5c0.SetValue(0);
    unk_5e8.SetValue(0);
    unk_610.SetValue(0);
    unk_638.SetValue(0);
    unk_678 = -1;
    unk_288.SetValue(0);
    unk_664 = -1;
    unk_668 = -1;
    unk_670 = -1;
    unk_674 = -1;
    unk_67c = -1;
    unk_4a0.SetValue(0);
    unk_684 = 0;
    unk_680 = nullptr;
    m_ingame.SetValue(false);
    m_inCutscene.SetValue(false);
    m_doneLoading.SetValue(false);
    m_readyToRoll.SetValue(false);
}

// 0x374ca0 PlayerInfo::Create(void)
// The original calls operator new with 0x688 bytes, runs the C1 constructor on the block and returns it. A new expression
// does the same. The allocation size is the host's, because the layout is 64-bit, so it is not spelled out.
PlayerInfo* PlayerInfo::Create() {
    return new PlayerInfo();
}
