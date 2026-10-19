// Track B batch r1n-net-session-online-COnline-d15511-0 (redo of e1-net-session-online-COnline-0): COnline
// session loop. Disconnect event, ping, packets, clock sync, the singleton and the packet callback.
//
// The layout is declared in include/net-session-online/c_online.hpp (+0x04 flag, +0x08 event queue, +0x20 start
// time, +0x2c sync time, +0x34 sync mutex, +0x38 sample list). The constructor and destructor are defaulted there.
#include "net-session-online/c_online.hpp"

#include <cstring>

#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_online_impl.hpp"
#include "net-session-online/deps/matching.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)
#include "net-transport/net_log.hpp"             // CNetLog (real)
#include "net-transport/packet_manager.hpp"      // CPacketManager (real)

namespace {
// Event types from the immediates in ReportDisconnect.
constexpr std::int32_t kDisconnectCauseEvent = 5242882;   // 0x500002
constexpr std::int32_t kDisconnectDetailEvent = 5242883;  // 0x500003
// Size of the disconnect payload (one int).
constexpr std::int32_t kDisconnectPayloadSize = 4;
// Packet type of the clock sync (the 1 in Initialize, Terminate, SendSyncTime, PacketReceiverCallback).
constexpr int kSyncPacketType = 1;
// Size of the sync packet in bytes (12 in every call).
constexpr int kSyncPacketSize = 12;
// Samples held before the clock is adjusted. The original tests the count against 0x13 and sends another
// sync request below 20 samples.
constexpr std::size_t kSyncSampleCount = 20;
// A new sync request is sent when more than this many milliseconds have passed (the 0x3e8 test in Update).
constexpr std::uint32_t kSyncResendMs = 1000;

// The low 32 bits of the 64-bit clock. The original's elapsed-time arithmetic is 32-bit.
std::uint32_t LowWord(std::int64_t value) {
    return static_cast<std::uint32_t>(value);
}
}  // namespace

COnline* COnline::s_Online = nullptr;

// 0x7fd744 _ZN7COnline11GetInstanceEv
// Returns s_Online when set, else allocates the singleton as a COnlineImpl and stores it. The allocation
// size (0x48 in the original) is not carried over; the port sizes the object by its own layout.
COnline* COnline::GetInstance() {
    if (s_Online != nullptr) {
        return s_Online;
    }
    s_Online = new COnlineImpl();
    return s_Online;
}

// 0x7fd51c _ZN7COnline16ReportDisconnectENS_15tDisconnectCauseEi
// Posts 0x500003 with the detail when the cause is 0 or the detail is set, else 0x500002 with the cause.
// The event goes to the queue at +0x08 (CEventQueueBase::AddEvent, 4-byte payload). Returns AddEvent's result.
std::int32_t COnline::ReportDisconnect(tDisconnectCause cause, std::int32_t detail) {
    const auto causeValue = static_cast<std::int32_t>(cause);
    const bool useDetail = (causeValue == 0) || (detail != 0);
    const std::int32_t eventType = useDetail ? kDisconnectDetailEvent : kDisconnectCauseEvent;
    std::int32_t payload = useDetail ? detail : causeValue;
    return eventQueue_.AddEvent(eventType, &payload, kDisconnectPayloadSize);
}

// 0x7fd568 _ZN7COnline7GetPingEv
// Offline (+0x05 clear): 0. Online: CConnectionManager::GetServerPing(). That function is partial in its own
// row (it returns 0 for a connected client), so the online result is not yet the server's ping.
std::int32_t COnline::GetPing() const {
    if (!isOnlineGame_) {
        return 0;
    }
    return CConnectionManager::GetInstance()->GetServerPing();
}

// 0x7fd634 _ZN7COnline11SendPacketsEv
// CPacketManager::SendPackets when the packet manager is initialised, then CMessaging::ProcessSendQueue when the
// messaging instance exists. The original's tail returns the ProcessSendQueue result; the port's void method
// drops it.
void COnline::SendPackets() {
    if (CPacketManager::IsInitialized()) {
        CPacketManager::GetInstance()->SendPackets();
    }
    if (CMessaging::IsInitialized() != 0) {
        CMessaging::GetInstance()->ProcessSendQueue();
    }
}

// 0x7fd66c _ZN7COnline7DestroyEv
// When the singleton exists: CMatching::Get()->Destroy() (0x7feb8c, which terminates and deletes the matching
// object), COnlineImpl::Terminate on the singleton, then, if it is still set, deletes it through the virtual
// destructor (vtable +0x0c) and clears the pointer.
void COnline::Destroy() {
    if (s_Online == nullptr) {
        return;
    }
    CMatching::Get()->Destroy();
    s_Online->Terminate();
    if (s_Online != nullptr) {
        delete s_Online;
        s_Online = nullptr;
    }
}

// 0x7fd6d0 _ZN7COnline9TerminateEv
// Clears the initialized flag (+0x04), unregisters packet type 1 and clears the event queue at +0x08. Returns
// the queue's Clear result (the unlock result, 0 on success).
std::int32_t COnline::Terminate() {
    initialized_ = false;
    CConnectionManager::UnregisterPacketType(kSyncPacketType);
    return eventQueue_.Clear();
}

// 0x7fd6f4 _ZN7COnline10InitializeEv
// When the initialized flag (+0x04) is clear: stores the clock (GetAbsoluteTime, 64 bits) at +0x20 and registers
// the sync callback. The protocol argument is the flag value the original read, which is 0 inside this branch.
// The flag itself is set by COnlineImpl::Initialize (see the layout request in the ledger notes).
std::int32_t COnline::Initialize() {
    if (!initialized_) {
        startTime_ = GetAbsoluteTime();
        CConnectionManager::RegisterPacketType(kSyncPacketType, 0, &COnline::sPacketReceiverCallback);
    }
    return 0;
}

// 0x7fd914 _ZN7COnline14ReceivePacketsEv
// Stores the elapsed time since the start time (+0x1c) and bumps the counter (+0x28). Then the messaging receive
// queue is processed when the messaging instance exists, and CPacketManager::ReceivePackets runs when the packet
// manager is initialised. Returns the packet manager's result, or 0.
std::int32_t COnline::ReceivePackets() {
    const std::uint32_t now = LowWord(GetAbsoluteTime());
    elapsed_ = static_cast<std::int32_t>(now - LowWord(startTime_));
    ++counter_;
    if (CMessaging::IsInitialized() != 0) {
        CMessaging::GetInstance()->ProcessRecvQueue();
    }
    if (CPacketManager::IsInitialized()) {
        return CPacketManager::GetInstance()->ReceivePackets();
    }
    return 0;
}

// 0x7fd974 _ZN7COnline12SendSyncTimeEv
// A client records its elapsed time (+0x2c) and sends it as the first word of a 12-byte sync packet (type 1) to
// the server member. The server does nothing. The original sends 12 bytes from a 4-byte local, so words 1 and 2
// of its packet are stack bytes. The server overwrites word 1 and the client overwrites word 2 on receipt, so the
// port sends zeros there.
void COnline::SendSyncTime() {
    if (IsServer()) {
        return;
    }
    syncElapsed_ = static_cast<std::int32_t>(LowWord(GetAbsoluteTime()) - LowWord(startTime_));
    std::int32_t packet[3] = {syncElapsed_, 0, 0};
    CConnectionManager* connections = CConnectionManager::GetInstance();
    const int serverMember = CMatching::Get()->ServerMemberId();
    connections->SendTo(kSyncPacketType, serverMember, packet, kSyncPacketSize);
}

// 0x7fd9ec _ZN7COnline8SyncTimeEv
// The server is synced at once. A client takes the sync mutex, clears the sample list, marks itself not synced,
// sends a sync request and releases the mutex.
void COnline::SyncTime() {
    if (IsServer()) {
        timeSynced_ = true;
        return;
    }
    syncMutex_.Lock();
    timeSyncList_.clear();
    timeSynced_ = false;
    SendSyncTime();
    syncMutex_.Unlock();
}

// 0x7fdb58 _ZN7COnline6UpdateEf
// When initialised: CMatching::Update (vtable +0x30), CNetLog::Update (vtable +0x08, empty in the original), then
// DetectDisconnect (vtable +0x04). When the clock is not synced and more than 1000 ms have passed since the last
// request (clock minus the start time minus +0x2c, as unsigned 32-bit), a new sync request is sent.
void COnline::Update(float /*dt*/) {
    if (!initialized_) {
        return;
    }
    CMatching::Get()->Update();
    CNetLog::GetInstance()->Update();
    DetectDisconnect();
    if (IsTimeSynced()) {
        return;
    }
    const std::uint32_t since =
        LowWord(GetAbsoluteTime()) - LowWord(startTime_) - static_cast<std::uint32_t>(syncElapsed_);
    if (since > kSyncResendMs) {
        SendSyncTime();
    }
}

// 0x7fdbe4 _ZN7COnline22PacketReceiverCallbackEiPci
// Only a connected member sending a 12-byte packet is handled.
//  Server: copies the packet, sets word 1 to the server's elapsed time and sends it back to the member (type 1).
//  Client, not synced: copies the packet, sets word 2 to the receive time and appends it to the sample list under
//    the sync mutex. Below 20 samples a new sync request is sent. At 20, the start time moves by
//    (server time of the newest sample - its receive time + half the mean round trip), where the round trip of a
//    sample is receive time - send time. The clock is then synced and the list is cleared.
//  Client, synced: nothing.
void COnline::PacketReceiverCallback(std::int32_t memberId, char* data, std::int32_t size) {
    CConnectionManager* connections = CConnectionManager::GetInstance();
    if (!connections->IsConnected(memberId) || size != kSyncPacketSize) {
        return;
    }
    std::int32_t packet[3];
    if (CMatching::Get()->IsServer()) {
        std::memcpy(packet, data, sizeof(packet));
        packet[1] = static_cast<std::int32_t>(LowWord(GetAbsoluteTime()) - LowWord(startTime_));
        connections->SendTo(kSyncPacketType, memberId, packet, kSyncPacketSize);
        return;
    }
    if (timeSynced_) {
        return;
    }
    syncMutex_.Lock();
    std::memcpy(packet, data, sizeof(packet));
    packet[2] = static_cast<std::int32_t>(LowWord(GetAbsoluteTime()) - LowWord(startTime_));
    timeSyncList_.push_back(tTimeSyncMsg{packet[0], packet[1], packet[2]});
    const std::size_t count = timeSyncList_.size();
    if (count < kSyncSampleCount) {
        SendSyncTime();
    } else {
        std::uint64_t sum = 0;
        for (const tTimeSyncMsg& sample : timeSyncList_) {
            sum += static_cast<std::uint32_t>(sample.receiveElapsed) - static_cast<std::uint32_t>(sample.sendElapsed);
        }
        const std::uint64_t meanRoundTrip = sum / static_cast<std::uint64_t>(count);
        // The original reads the clock once more here and discards the result.
        static_cast<void>(GetAbsoluteTime());
        const tTimeSyncMsg& newest = timeSyncList_.back();
        const std::uint32_t offset = static_cast<std::uint32_t>(newest.serverElapsed) -
                                     static_cast<std::uint32_t>(newest.receiveElapsed) +
                                     (static_cast<std::uint32_t>(meanRoundTrip) >> 1);
        // The original adjusts the singleton (GetOnline), which is this object when it is the singleton.
        COnline* online = GetInstance();
        online->startTime_ -= static_cast<std::int64_t>(offset);
        timeSynced_ = true;
        timeSyncList_.clear();
    }
    syncMutex_.Unlock();
}

// 0x7fdde8 _ZN7COnline23sPacketReceiverCallbackEiPci
// The registered callback. Forwards to the singleton, as in the original.
void COnline::sPacketReceiverCallback(std::int32_t memberId, char* data, std::int32_t size) {
    COnline* instance = GetInstance();
    instance->PacketReceiverCallback(memberId, data, size);
}
