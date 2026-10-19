// Batch e1-net-transport-CNetPlayerInfo-0: CNetPlayerInfo methods from libDungeonHunter2.so.
// Completed by the integrator decisions (decisions-1): CNetPlayerInfo derives from NetStruct and declares
// its NetStructMember blocks (include/net-transport/tb/cnet_player_info.hpp), so the stores below are the
// blocks' SetValue (compare, store, NetStructMember::SetChanged) and SetEnabled is the real NetStruct one.
//
// The copy constructors (0x377448, 0x4417d8) are the implicit member-wise copy (see the header); operator=
// (0x378708) is below.

#include "net-transport/tb/cnet_player_info.hpp"

#include <cstring>

#include "net-session-online/deps/matching.hpp"  // CMatching (one definition, net-session-online)
#include "net-transport/tb/c_net_player_manager.hpp"

// 0x378708 _ZN14CNetPlayerInfoaSERKS_
// memcpy of the NetStruct base's member pointer array (0x100 bytes at +0x04: the destination's pointers then
// address the source's blocks, as in the binary), the member count, the byte at +0x108, the packet history map
// (_Rb_tree::operator=), the enabled and post-load flags and the post-load argument; then SetValue (vtable +0x1c)
// of each of the eight blocks with the source's value, and the applied state word at +0x280. Returns this.
CNetPlayerInfo& CNetPlayerInfo::operator=(const CNetPlayerInfo& other) {
    std::memcpy(members_, other.members_, sizeof(members_));  // +0x04, 0x100 bytes
    member_count_ = other.member_count_;                      // +0x104
    unk_108_ = other.unk_108_;                                // +0x108
    packetHistory_ = other.packetHistory_;                    // +0x10c
    enabled_ = other.enabled_;                                // +0x124
    post_load_pending_ = other.post_load_pending_;            // +0x125
    post_load_arg_ = other.post_load_arg_;                    // +0x128
    unk_150.SetValue(other.unk_150.GetValue());               // +0x130
    member_id_.SetValue(other.member_id_.GetValue());         // +0x158
    matching_member_id_.SetValue(other.matching_member_id_.GetValue());  // +0x180
    gamepad_id_.SetValue(other.gamepad_id_.GetValue());       // +0x1a8
    state_.SetValue(other.state_.GetValue());                 // +0x1d0
    unk_218.SetValue(other.unk_218.GetValue());               // +0x1f8
    unk_240.SetValue(other.unk_240.GetValue());               // +0x220
    name_.SetValue(other.name_.GetValue());                   // +0x248
    applied_state_ = other.applied_state_;                    // +0x280
    return *this;
}

// 0x36d208 CNetPlayerInfo::IsActivating()
bool CNetPlayerInfo::IsActivating() const {
    if (member_id_.GetValue() < 0 || matching_member_id_.GetValue() < 0 || gamepad_id_.GetValue() < 0) {
        return false;
    }
    return state_.GetValue() == 1 || state_.GetValue() == 2;
}

// 0x80f124 CNetPlayerInfo::IsActive()
bool CNetPlayerInfo::IsActive() const {
    return member_id_.GetValue() >= 0 && matching_member_id_.GetValue() >= 0 && gamepad_id_.GetValue() >= 0 &&
           state_.GetValue() == 3;
}

// 0x80f164 CNetPlayerInfo::IsRemote()
bool CNetPlayerInfo::IsRemote() const {
    return !IsLocal();  // vtable +0x50 call
}

// 0x80f180 CNetPlayerInfo::IsInRoom()
// CMatching vtable +0x68 (IsInRoom(int)) with the connection index. CMatching is the
// net-session-online class (deps/matching.hpp).
bool CNetPlayerInfo::IsInRoom() const {
    return CMatching::Get()->IsInRoom(matching_member_id_.GetValue());
}

// 0x80f1a0 CNetPlayerInfo::IsLocalTo(int)
bool CNetPlayerInfo::IsLocalTo(int member_index) const {
    CMatching* matching = CMatching::Get();
    if (matching->ServerMemberId() != member_index) {  // vtable +0x74
        return matching_member_id_.GetValue() == member_index;
    }
    if (matching_member_id_.GetValue() >= 0) {
        return matching_member_id_.GetValue() == member_index;
    }
    return true;
}

// 0x80f1ec CNetPlayerInfo::IsLocal()
bool CNetPlayerInfo::IsLocal() const {
    const bool is_server = CMatching::Get()->IsServer();
    if (!is_server || matching_member_id_.GetValue() >= 0) {
        return matching_member_id_.GetValue() == CMatching::Get()->LocalMemberId();  // vtable +0x6c
    }
    return true;
}

// 0x80f23c CNetPlayerInfo::IsHost()
// The player's member id against the host member id the manager keeps (manager +0x170, the value of the
// NetStructPlayerManager block at +0x150). GetNetPlayerMgr() is CNetPlayerManager::GetInstance().
bool CNetPlayerInfo::IsHost() const {
    return member_id_.GetValue() == CNetPlayerManager::GetInstance()->net_struct_.host_member_id_.GetValue();
}

// 0x80f260 CNetPlayerInfo::Add()
// state_ = 1 (compare, store and SetChanged are the block's SetValue). The original returns SetChanged's
// leftover R0; void here.
void CNetPlayerInfo::Add() {
    state_.SetValue(1);
}

// 0x80f27c CNetPlayerInfo::Reset()
// Virtual slot +0x4c. connection index -1, then the +0x1a8 block -1, then the state 0, each only when it
// differs (SetValue). member_id_ is left alone.
void CNetPlayerInfo::Reset() {
    matching_member_id_.SetValue(-1);
    gamepad_id_.SetValue(-1);
    state_.SetValue(0);
}

// 0x80f2e0 CNetPlayerInfo::Remove()
// Server: clears the state and both indices. Client: sets the removed state (6). The original returns
// the last SetChanged's leftover R0; void here.
void CNetPlayerInfo::Remove() {
    if (CMatching::Get()->IsServer()) {
        state_.SetValue(0);
        matching_member_id_.SetValue(-1);
        gamepad_id_.SetValue(-1);
    } else {
        state_.SetValue(6);
    }
}

// 0x80f374 CNetPlayerInfo::Disconnect()
// Server: state 4. Client: state 5. The original returns SetChanged's leftover R0; void here.
void CNetPlayerInfo::Disconnect() {
    if (CMatching::Get()->IsServer()) {
        state_.SetValue(4);
    } else {
        state_.SetValue(5);
    }
}

// 0x36f40c CNetPlayerInfo::SetState(char)
// The Hex-Rays text builds a temporary NetStructUInt<8u> on the stack (the compare against its uninitialised
// value word only decides whether the temporary is marked changed, which nothing reads) and passes its value to
// the +0x220 block's SetValue (vtable +0x1c). The effect is unk_240.SetValue(state), with the char widened
// to int as the store does.
void CNetPlayerInfo::SetState(char state) {
    unk_240.SetValue(static_cast<std::uint32_t>(static_cast<int>(state)));
}

// 0x80f3d0 CNetPlayerInfo::Update()
// Virtual slot +0x48. When the state differs from the applied one: a server turns state 5 (client disconnect) into
// the disconnected state and state 6 into a removal; state 1 becomes 2 for a local player; state 2 posts 9437185 to
// the manager's events_ queue (+0x04), enables the struct and moves to 3; state 3 posts 9437184 and enables the
// struct; state 4 posts 3145730 to the manager's internal queue (+0x180); state 0 posts 3145730 (unless the
// applied state was 4) and 3145731 there and resets the player. Each event carries the player id (member_id_).
// The applied state is then stored and the manager's id-list caches are cleared for this player's member.
// Last, an enabled struct in state 0 is disabled once its changes are acknowledged.
void CNetPlayerInfo::Update() {
    if (applied_state_ != static_cast<int>(state_.GetValue())) {
        CMatching* matching = CMatching::Get();
        if (matching->IsServer() && state_.GetValue() == 5) {
            Disconnect();
        }

        matching = CMatching::Get();
        if (matching->IsServer() && state_.GetValue() == 6) {
            Remove();
        }

        std::uint32_t s = state_.GetValue();
        if (s == 1) {
            if (IsLocal()) {  // vtable +0x50
                state_.SetValue(2);
            }
            s = state_.GetValue();
        }
        if (s == 2) {
            std::int32_t player_id = member_id_.GetValue();
            CNetPlayerManager::GetInstance()->events_.AddEvent(9437185, &player_id, 4);
            SetEnabled(true);  // NetStruct::SetEnabled (0x81366c)
            state_.SetValue(3);
            s = state_.GetValue();
        }
        if (s == 3) {
            std::int32_t player_id = member_id_.GetValue();
            CNetPlayerManager::GetInstance()->events_.AddEvent(9437184, &player_id, 4);
            SetEnabled(true);
            s = state_.GetValue();
        }
        if (s == 4) {
            std::int32_t player_id = member_id_.GetValue();
            CNetPlayerManager::GetInstance()->internal_events_.AddEvent(3145730, &player_id, 4);
            s = state_.GetValue();
        }
        if (s == 0) {
            const int previous = applied_state_;
            std::int32_t player_id = member_id_.GetValue();
            if (previous != 4) {
                CNetPlayerManager::GetInstance()->internal_events_.AddEvent(3145730, &player_id, 4);
            }
            CNetPlayerManager::GetInstance()->internal_events_.AddEvent(3145731, &player_id, 4);
            Reset();  // vtable +0x4c
            s = state_.GetValue();
        }

        applied_state_ = static_cast<int>(s);
        CNetPlayerManager::GetInstance()->ClearPlayerListCaches(matching_member_id_.GetValue());
    }

    if (enabled_ && state_.GetValue() == 0) {  // LABEL_19: +0x124, +0x1f0
        if (AreChangesAcknowledged()) {        // vtable +0x2c
            SetEnabled(false);
        }
    }
}
