// Net structure pass: CNetPlayerManager after the event-queue subobjects (+0x04, +0x180) and the virtual Update(int).
// Checks the constructor and Initialize (slots, flags, packet slot 2), the destructor and Terminate, ProcessEvents,
// Update(int) and GetPlayerName(std::string, int).
#include <cstdio>
#include <string>

#define private public
#define protected public
#include "net-transport/tb/c_net_player_manager.hpp"
#undef protected
#undef private

#include "fake_matching.hpp"  // CMatching test double
#include "net-transport/packet_manager.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
constexpr int kActive = 9437184;      // 0x900000
constexpr int kLeft = 9437186;        // 0x900002
constexpr int kGone = 9437187;        // 0x900003
constexpr int kInternalActive = 3145728;
constexpr int kInternalLocal = 3145729;
constexpr int kInternalGone = 3145730;
constexpr int kInternalLeft = 3145731;
}  // namespace

int main() {
    CNetPlayerManager::UnregisterPlayerInfoFunctions();  // the default player factory

    // The constructor: the slot count, the fallback and one player per slot, the host id, the packet slot, the flag.
    {
        CNetPlayerManager m(3);
        CHECK(m.player_slot_count_ == 3);
        CHECK(m.players_.size() == 3);
        CHECK(m.fallback_player_ != nullptr);
        CHECK(m.last_host_id_ == -1);
        CHECK(m.initialized_);
        CHECK(CPacketManager::IsPacketSlotUsed(2));
        CHECK(m.players_[2]->member_id_.GetValue() == 2);
        CHECK(m.fallback_player_->member_id_.GetValue() == -64);
    }
    // The destructor unregisters the packet slot.
    CHECK(!CPacketManager::IsPacketSlotUsed(2));

    // Initialize creates the singleton once; Terminate deletes it.
    {
        CHECK(CNetPlayerManager::Initialize(2) == 0);
        CNetPlayerManager* first = CNetPlayerManager::GetInstance();
        CHECK(first != nullptr);
        CHECK(CNetPlayerManager::IsInitialized());
        CHECK(first->players_.size() == 2);
        CHECK(CNetPlayerManager::Initialize(5) == 0);  // already there: unchanged
        CHECK(CNetPlayerManager::GetInstance() == first);
        CHECK(first->player_slot_count_ == 2);
        CNetPlayerManager::Terminate();
        CHECK(CNetPlayerManager::GetInstance() == nullptr);
        CHECK(!CNetPlayerManager::IsInitialized());
        CHECK(!CPacketManager::IsPacketSlotUsed(2));
    }

    // ProcessEvents: 0x900000 becomes 0x300000 (and 0x300001 for a local player), 0x900002 becomes 0x300003 and
    // 0x900003 becomes 0x300002. The source events are consumed.
    {
        SetServerForTest(false);
        CNetPlayerManager m(3);
        m.players_[1]->matching_member_id_.SetValue(5);   // remote: not the local member id (0)
        CNetPlayerInfo* local = m.players_[2];            // local and active (GetPlayer returns active players)
        local->matching_member_id_.SetValue(0);
        local->gamepad_id_.SetValue(0);
        local->state_.SetValue(3u);
        m.players_[1]->gamepad_id_.SetValue(0);
        m.players_[1]->state_.SetValue(3u);
        int id = 1;
        m.events_.AddEvent(kActive, &id, 4);
        CHECK(m.ProcessEvents() == 0);
        CHECK(!m.events_.HasEvents());
        CHECK(m.internal_events_.HasEventOccured(kInternalActive, false));
        CHECK(!m.internal_events_.HasEventOccured(kInternalLocal, false));
        int got = -1;
        m.internal_events_.GetEventData(kInternalActive, &got, 4);
        CHECK(got == 1);
        m.internal_events_.Clear();

        id = 2;
        m.events_.AddEvent(kActive, &id, 4);
        m.ProcessEvents();
        CHECK(m.internal_events_.HasEventOccured(kInternalActive, false));
        CHECK(m.internal_events_.HasEventOccured(kInternalLocal, false));
        m.internal_events_.Clear();

        id = 7;
        m.events_.AddEvent(kLeft, &id, 4);
        m.events_.AddEvent(kGone, &id, 4);
        m.ProcessEvents();
        CHECK(m.internal_events_.HasEventOccured(kInternalLeft, false));
        CHECK(m.internal_events_.HasEventOccured(kInternalGone, false));
        CHECK(!m.internal_events_.HasEventOccured(kInternalActive, false));
        CHECK(!m.events_.HasEvents());
    }

    // Update(int): -1 before the manager is initialized, 0 after; the host change posts 0x300004.
    {
        SetServerForTest(false);
        CNetPlayerManager m;  // default: not initialized
        CHECK(m.Update(0) == -1);
        CNetPlayerManager n(2);
        CHECK(n.Update(16) == 0);
        CHECK(n.last_host_id_ == n.net_struct_.host_member_id_.GetValue());
        CHECK(!n.internal_events_.HasEventOccured(3145732, false));
        // The host change is only reported once a host id (>= 0) has been seen.
        n.net_struct_.host_member_id_.SetValue(0);
        CHECK(n.Update(16) == 0);
        CHECK(!n.internal_events_.HasEventOccured(3145732, false));
        CHECK(n.last_host_id_ == 0);
        const int host_before = n.net_struct_.host_member_id_.GetValue();
        n.net_struct_.host_member_id_.SetValue(host_before + 1);
        CHECK(n.Update(16) == 0);
        CHECK(n.internal_events_.HasEventOccured(3145732, false));
        int host = -1;
        n.internal_events_.GetEventData(3145732, &host, 4);
        CHECK(host == host_before + 1);
        CHECK(n.last_host_id_ == host_before + 1);
        // Through the vtable slot +0x08.
        CNetPlayerManager* base = &n;
        CHECK(base->Update(0) == 0);
    }

    // GetPlayerName: a name another active player already has gets " (digit)" appended.
    {
        CNetPlayerManager m(2);
        CHECK(m.GetPlayerName("Alice", 1) == "Alice");
        CNetPlayerInfo* p = m.players_[0];
        p->member_id_.SetValue(0);
        p->matching_member_id_.SetValue(0);
        p->gamepad_id_.SetValue(0);
        p->state_.SetValue(3u);   // active
        p->name_.SetValue(std::string("Alice"));
        CHECK(m.GetPlayerName("Alice", 1) == "Alice (1)");
        CHECK(m.GetPlayerName("Bob", 1) == "Bob");
    }

    std::printf(failures == 0 ? "OK\n" : "FAILED\n");
    return failures == 0 ? 0 : 1;
}
