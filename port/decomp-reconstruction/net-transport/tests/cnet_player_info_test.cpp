// Test for the CNetPlayerInfo methods completed by the integrator decisions: Add, Reset, Remove, Disconnect,
// SetState, IsHost, IsInRoom and Update. The player's state lives in NetStructMember blocks, so every store
// goes through the block's SetValue (compare, store, SetChanged). The CMatching test double supplies the server flag
// (SetServerForTest), the local member id (0) and the in-room flag (SetInRoomForTest).
#include <cstdio>

#define private public
#define protected public
#include "net-transport/tb/c_net_player_manager.hpp"
#undef protected
#undef private

#include "fake_matching.hpp"  // CMatching test double (net-session-online/deps/matching.hpp)

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


static void ClearChanged(CNetPlayerInfo& p) {
    p.unk_150.IsChanged(); p.member_id_.IsChanged(); p.matching_member_id_.IsChanged(); p.gamepad_id_.IsChanged();
    p.state_.IsChanged(); p.unk_218.IsChanged(); p.unk_240.IsChanged(); p.name_.IsChanged();
}

int main() {
    // Reset: the three fields go back to -1, -1, 0 and only the changed blocks are marked.
    {
        CNetPlayerInfo p;
        p.matching_member_id_.SetValue(3);
        p.gamepad_id_.SetValue(4);
        p.state_.SetValue(2);
        p.member_id_.SetValue(9);
        ClearChanged(p);
        p.Reset();
        CHECK(p.matching_member_id_.GetValue() == -1 && p.gamepad_id_.GetValue() == -1 && p.state_.GetValue() == 0);
        CHECK(p.member_id_.GetValue() == 9);                       // untouched
        CHECK(p.matching_member_id_.IsChanged() && p.gamepad_id_.IsChanged() && p.state_.IsChanged());
        CHECK(!p.member_id_.IsChanged());
        p.Reset();                                                  // already reset: nothing changes
        CHECK(!p.matching_member_id_.IsChanged());
    }

    // Add / Remove / Disconnect / SetState.
    {
        CNetPlayerInfo p;
        p.Add();
        CHECK(p.state_.GetValue() == 1);

        SetServerForTest(true);
        p.matching_member_id_.SetValue(2);
        p.gamepad_id_.SetValue(3);
        p.Disconnect();
        CHECK(p.state_.GetValue() == 4);                           // server: 4
        p.Remove();
        CHECK(p.state_.GetValue() == 0 && p.matching_member_id_.GetValue() == -1 && p.gamepad_id_.GetValue() == -1);

        SetServerForTest(false);
        p.Disconnect();
        CHECK(p.state_.GetValue() == 5);                           // client: 5
        p.Remove();
        CHECK(p.state_.GetValue() == 6);                           // client: removed state 6

        ClearChanged(p);
        p.SetState(static_cast<char>(7));
        CHECK(p.unk_240.GetValue() == 7 && p.unk_240.IsChanged());
        p.SetState(static_cast<char>(7));
        CHECK(!p.unk_240.IsChanged());
        SetServerForTest(false);
    }

    // IsInRoom (CMatching vtable +0x68 with the connection index) and IsHost (manager host member id).
    {
        CNetPlayerInfo p;
        SetInRoomForTest(false);
        CHECK(!p.IsInRoom());
        SetInRoomForTest(true);
        CHECK(p.IsInRoom());
        SetInRoomForTest(false);

        CNetPlayerManager mgr;
        CNetPlayerManager* saved = CNetPlayerManager::s_playerManager;
        CNetPlayerManager::s_playerManager = &mgr;
        CHECK(mgr.net_struct_.host_member_id_.GetValue() == -1);   // the constructor stores -1
        p.member_id_.SetValue(5);
        CHECK(!p.IsHost());
        mgr.net_struct_.host_member_id_.SetValue(5);
        CHECK(p.IsHost());
        CNetPlayerManager::s_playerManager = saved;
    }

    // Update on a local client player: state 1 becomes 2 (IsLocal), then 3, with the struct enabled on the
    // way; the applied state follows and the manager's caches are cleared.
    {
        CNetPlayerManager mgr;
        CNetPlayerManager* saved = CNetPlayerManager::s_playerManager;
        CNetPlayerManager::s_playerManager = &mgr;
        mgr.id_list_dirty_ = false;

        CNetPlayerInfo p;
        SetServerForTest(false);
        p.matching_member_id_.SetValue(0);          // the stand-in's local member id is 0
        p.gamepad_id_.SetValue(0);
        p.member_id_.SetValue(1);
        p.Add();                            // state 1
        CHECK(p.applied_state_ == 0);
        p.Update();
        CHECK(p.state_.GetValue() == 3);
        CHECK(p.applied_state_ == 3);
        CHECK(p.enabled_);                  // NetStruct::SetEnabled(true) ran for states 2 and 3
        CHECK(mgr.id_list_dirty_);          // ClearPlayerListCaches(matching_member_id_)
        CHECK(p.IsActive());

        // A second Update with an unchanged state does nothing to the applied state.
        p.Update();
        CHECK(p.applied_state_ == 3 && p.enabled_);

        // State 0 with the struct enabled: once the changes are acknowledged the struct is disabled. The
        // server's room mask is 0 in the stand-in, so a server acknowledges at once.
        SetServerForTest(true);
        p.state_.SetValue(0);
        p.Update();                         // applied 3 -> 0, Reset(), then the enabled/acknowledged tail
        CHECK(p.applied_state_ == 0);
        CHECK(!p.enabled_);
        SetServerForTest(false);
        CNetPlayerManager::s_playerManager = saved;
    }

    if (failures == 0) {
        std::printf("cnet_player_info_test: all checks passed\n");
        return 0;
    }
    std::printf("cnet_player_info_test: %d failure(s)\n", failures);
    return 1;
}
