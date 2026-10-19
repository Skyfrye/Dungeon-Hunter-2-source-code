// COnline: the online session object (the singleton COnline::s_Online, created as a COnlineImpl).
// It tracks whether the session is an online game and whether the clock is synced with the server,
// and it owns the disconnect event queue, the packet loop and the clock sync. The matching layer
// (CMatching, net-session-online) answers the member questions when the game is online.
//
// Layout (original 32-bit offsets, kept as comments). The object is 0x40 bytes; COnlineImpl adds its
// last-check timeval at +0x40, which gives the 0x48-byte allocation in GetInstance.
//   +0x00 vptr. Slot 0 GetAbsoluteTime (pure here), slot 1 DetectDisconnect, slots 2 and 3 the
//         destructors, slot 6 IsAgeRestricted.
//   +0x04 initialized flag (byte). Terminate clears it.
//   +0x05 online-game flag (byte).
//   +0x08 event queue, CEventQueue<COnline::EVENTS,0>: a CEventQueueBase, 0x14 bytes (+0x08..+0x1c).
//   +0x1c elapsed time since the start time (ReceivePackets).
//   +0x20 start time, int64 (the GetAbsoluteTime value stored by Initialize).
//   +0x28 receive counter (ReceivePackets).
//   +0x2c elapsed time of the last sync request (SendSyncTime).
//   +0x30 time-synced flag (byte). The constructor sets it to 1.
//   +0x34 sync mutex (CNetMutex, guards the time-sync list).
//   +0x38 time-sync list, std::list<tTimeSyncMsg> (list head, 8 bytes).
//
// The class is abstract because slot 0 is pure in COnline; COnlineImpl supplies GetAbsoluteTime.
#pragma once

#include <cstdint>
#include <list>

#include "net-session-online/c_event_queue_base.hpp"  // +0x08: CEventQueue<COnline::EVENTS,0>, a CEventQueueBase
#include "net-transport/sync.hpp"                     // CNetMutex

class COnline {
public:
    // One time-sync sample: the 12-byte sync packet (sendElapsed, serverElapsed, receiveElapsed). In the
    // original each list node is 20 bytes: next, prev, then these three words.
    struct tTimeSyncMsg {
        std::int32_t sendElapsed = 0;     // packet word 0: the client's elapsed time when it sent
        std::int32_t serverElapsed = 0;   // packet word 1: the server's elapsed time when it echoed
        std::int32_t receiveElapsed = 0;  // packet word 2: the client's elapsed time on receipt
    };

    // 0x7fd798 _ZN7COnlineC1Ev and 0x7fd838 _ZN7COnlineC2Ev: the constructor's stores (flags, queue,
    // counter, list and mutex sentinels, time-synced = 1) are the member initialisers. The original
    // leaves +0x20 (start time) and +0x2c (sync time) unset. They are zero here, and each is written
    // before the code reads it.
    COnline() = default;
    // 0x7fda38 _ZN7COnlineD2Ev and 0x7fda98 _ZN7COnlineD1Ev: the implicit destructor destroys the members
    // in reverse order (time-sync list, sync mutex, then the queue's list and mutex), as the original does.
    virtual ~COnline() = default;

    // Slot 0 of the vtable, pure here. The implementation is COnlineImpl::GetAbsoluteTime (0x824ed4):
    // the clock in milliseconds, 64 bits as in the original. 32-bit callers use the low word.
    virtual std::int64_t GetAbsoluteTime() const = 0;
    // 0x7fd508 _ZN7COnline16DetectDisconnectEv: no-op. Slot 1; the update loop calls it through the vtable.
    virtual void DetectDisconnect() {}
    // 0x7fd50c _ZN7COnline15SetIsOnlineGameEb
    void SetIsOnlineGame(bool value) { isOnlineGame_ = value; }
    // The online-game flag at +0x05 (no symbol; roomLobbyUpdate, lobbyUpdate and OnlineGameState::Update read it).
    bool IsOnlineGame() const { return isOnlineGame_; }
    // The word at +0x1c: the time since the start time, stored by ReceivePackets. NetStructMember::GetFrameTime
    // (0x8150a0) reads it as GetOnline()->+0x1c.
    std::int32_t GetElapsedTime() const { return elapsed_; }
    // The word at +0x28: the receive counter ReceivePackets bumps. CMessage::CMessage (0x80a61c) reads it as
    // `LDR R3,[GetOnline(),#0x28]` and stores it in the message's lifetime_ word at +0x4c, and
    // CMessage::IsExpired (0x80a128) compares `timestamp_ + lifetime_` against it.
    std::uint32_t GetCounter() const { return counter_; }
    // NOT an original member function: a test seam for the counter, which is protected and which the binary only
    // ever moves through ReceivePackets. Tests that used to drive the expiry check through the OnlineNowMs()
    // stand-in must set this instead - CMessage::IsExpired reads THIS word, not the clock (it was changed to the
    // counter this session because the listing reads COnline +0x28). No symbol is involved (inline, not virtual).
    void SetCounterForTest(std::uint32_t value) { counter_ = value; }
    // 0x7fd514 _ZN7COnline15IsAgeRestrictedEv: returns 0. Slot 6 of the vtable.
    virtual std::int32_t IsAgeRestricted() const { return 0; }
    // 0x7fd588 _ZN7COnline16GetLocalMemberIdEv: 1 when offline, else the matching local id.
    std::int32_t GetLocalMemberId() const;
    // 0x7fd5b4 _ZN7COnline8IsServerEv: 1 when offline, else the matching server flag.
    bool IsServer() const;
    // 0x7fd5d8 _ZN7COnline12IsTimeSyncedEv: 1 on the server, else the synced flag.
    bool IsTimeSynced() const;

    // Session loop. The bodies are in src/tb_session-online-COnline-0.cpp.
    enum tDisconnectCause : std::int32_t {};
    // 0x7fd744 _ZN7COnline11GetInstanceEv: the singleton, created on first use as a COnlineImpl.
    static COnline* GetInstance();
    // 0x7fd51c _ZN7COnline16ReportDisconnectENS_15tDisconnectCauseEi: posts 0x500003 with the detail when the
    // cause is 0 or the detail is set, else 0x500002 with the cause. Returns the AddEvent result.
    std::int32_t ReportDisconnect(tDisconnectCause cause, std::int32_t detail);
    // 0x7fd568 _ZN7COnline7GetPingEv: 0 when offline. Online, CConnectionManager::GetServerPing (partial there).
    std::int32_t GetPing() const;
    // 0x7fd634 _ZN7COnline11SendPacketsEv: CPacketManager::SendPackets when initialised, then
    // CMessaging::ProcessSendQueue when the messaging instance exists.
    void SendPackets();
    // 0x7fd66c _ZN7COnline7DestroyEv. First calls CMatching::Get()->Destroy() (0x7feb8c), as the original does,
    // then terminates the singleton and deletes it through the virtual destructor.
    static void Destroy();
    // 0x7fd6d0 _ZN7COnline9TerminateEv: clears the initialized flag, unregisters packet type 1 and clears the
    // event queue. Returns the queue's Clear result.
    std::int32_t Terminate();
    // 0x7fd6f4 _ZN7COnline10InitializeEv: when not initialised, stores GetAbsoluteTime() at +0x20 and registers
    // packet type 1. Returns 0.
    std::int32_t Initialize();
    // 0x7fd914 _ZN7COnline14ReceivePacketsEv: elapsed time and counter, CMessaging::ProcessRecvQueue when the
    // messaging instance exists, then CPacketManager::ReceivePackets when the packet manager exists.
    std::int32_t ReceivePackets();
    // 0x7fd974 _ZN7COnline12SendSyncTimeEv: a client sends its elapsed time (12-byte packet, type 1) to the
    // server member. The server does nothing.
    void SendSyncTime();
    // 0x7fd9ec _ZN7COnline8SyncTimeEv: the server is synced. A client clears the sample list under the sync
    // mutex, marks itself not synced and asks for a sync.
    void SyncTime();
    // 0x7fdb58 _ZN7COnline6UpdateEf: when initialised, runs the matching and net-log updates and
    // DetectDisconnect, then asks for a new sync when not synced and more than 1000 ms have passed.
    void Update(float dt);
    // 0x7fdbe4 _ZN7COnline22PacketReceiverCallbackEiPci: a connected member sending 12 bytes. The server echoes
    // the packet with its elapsed time. A client that is not synced collects samples and, after 20, adjusts
    // the start time by the averaged round trip.
    void PacketReceiverCallback(std::int32_t memberId, char* data, std::int32_t size);
    // 0x7fdde8 _ZN7COnline23sPacketReceiverCallbackEiPci: forwards to the singleton.
    static void sPacketReceiverCallback(std::int32_t memberId, char* data, std::int32_t size);

    // The singleton (COnline::s_Online). Defined in the batch source.
    static COnline* s_Online;

    // Test seams. Not in the original.
    void SetTimeSyncedForTest(bool value) { timeSynced_ = value; }
    void SetInitializedForTest(bool value) { initialized_ = value; }
    CEventQueueBase& EventsForTest() { return eventQueue_; }
    // The event queue at +0x08 (read inline by OnlineGameState::processEvents for the disconnect event 0x500003).
    CEventQueueBase& EventQueue() { return eventQueue_; }
    std::int64_t StartTimeForTest() const { return startTime_; }

protected:
    // Declared in offset order (the layout above). Protected so that COnlineImpl can use them once its
    // own copies of +0x04 and +0x08 are removed (layout request, see the ledger notes).
    bool initialized_ = false;               // +0x04
    bool isOnlineGame_ = false;              // +0x05
    CEventQueueBase eventQueue_;             // +0x08
    std::int32_t elapsed_ = 0;               // +0x1c
    std::int64_t startTime_ = 0;             // +0x20
    std::uint32_t counter_ = 0;              // +0x28
    std::int32_t syncElapsed_ = 0;           // +0x2c
    bool timeSynced_ = true;                 // +0x30 (the constructor sets 1)
    CNetMutex syncMutex_;                    // +0x34
    std::list<tTimeSyncMsg> timeSyncList_;   // +0x38
};
