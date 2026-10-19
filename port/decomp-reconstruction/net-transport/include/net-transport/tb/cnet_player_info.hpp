// CNetPlayerInfo: per-player record of the net player manager, from libDungeonHunter2.so.
//
// CNetPlayerInfo derives from NetStruct (the 0x130-byte replicated-struct base, vtable _ZTV14CNetPlayerInfo
// = the NetStruct slots +0x00..+0x44 followed by the class's own slots), then declares eight
// NetStructMember blocks, in this order (32-bit offsets; every block is 0x28 bytes with the value word at
// block +0x20). The constructors 0x80f7b4 / 0x80fc28 build them and declare them with
// NetStruct::DeclareMember in the same order.
//
//   +0x130  unk_150      NetStructInt<17u>   value at +0x150, name not recovered
//   +0x158  member_id_   NetStructInt<8u>    value at +0x178: the player's own id. CNetPlayerManager::AddPlayer
//                                            stores the free slot index there, IsHost compares it with the
//                                            manager's host id, and the manager events carry it. (The name is
//                                            the earlier pass's; the binary uses it as a player slot id.)
//   +0x180  matching_member_id_  NetStructInt<17u>   value at +0x1a0: the CMatching member id of the device the
//                                            player belongs to, -1 when none. IsLocal compares it with
//                                            CMatching::LocalMemberId (vtable +0x6c), IsInRoom passes it to
//                                            CMatching::IsInRoom(int) (vtable +0x68), IsLocalTo compares it with
//                                            a member id, ReassignPlayer stores its member argument here, and the
//                                            manager's two-key lookup matches it. (Renamed from conn_index_: the
//                                            'connection slot index' reading is not supported by the binary.)
//   +0x1a8  gamepad_id_      NetStructInt<16u>   value at +0x1c8: the local gamepad of the player, -1 when none.
//                                            CNetPlayerManager::SetPlayerGamepadId writes it and ReassignPlayer's
//                                            third argument is stored in it.
//   +0x1d0  state_       NetStructUInt<8u>   value at +0x1f0. Values seen: 1 and 2 are the activating
//                                            states (IsActivating), 3 is active (IsActive), 4 and 5 are the
//                                            disconnect states (4 on the server, 5 on a client), 6 is
//                                            removed (client side). 0 is the reset state (Reset, Remove on
//                                            the server).
//   +0x1f8  unk_218      NetStructUInt<8u>   value at +0x218, name not recovered
//   +0x220  unk_240      NetStructUInt<8u>   value at +0x240, written by SetState(char), name not recovered
//   +0x248  name_        NetStructString<32u> value at +0x268
//   +0x280  applied_state_  copy of state_ made by Update (the original's +0x280 word).
//   (object size 0x288, from CNetPlayerInfo::Create's operator new)
//
// Initial values after the constructor: every block starts at 0, then Reset() writes -1 to matching_member_id_ and
// gamepad_id_ and 0 to state_ (it does not touch member_id_, which therefore ends at 0); applied_state_ is 0.
//
// Virtual slots (tools/decomp_vtable.py): NetStruct's +0x00..+0x44, then +0x48 Update, +0x4c Reset,
// +0x50 IsLocal, +0x54 IsLocalTo, +0x58 IsInRoom, +0x5c IsActive, +0x60 IsActivating.
#pragma once

#include <cstdint>

#include "net-transport/net_struct.hpp"
#include "net-transport/tb/net_struct_int.hpp"
#include "net-transport/tb/net_struct_string.hpp"

class CNetPlayerInfo : public NetStruct {
public:
    CNetPlayerInfo();                        // 0x80fc28 (C2), 0x80f7b4 (C1)
    ~CNetPlayerInfo() override;              // 0x80f618 (D1), 0x80f6f4 (D2); the deleting form 0x80f6d8 is the compiler's
    // The copy constructor (0x377448 C2, 0x4417d8 C1) copies the NetStruct base's member pointer array with
    // memcpy (so the copy's pointers keep addressing the source's blocks, as in the binary) and then each block
    // field by field: the implicit member-wise copy does exactly that.
    CNetPlayerInfo(const CNetPlayerInfo&) = default;
    // operator= (0x378708): the same memcpy of the pointer array and base fields, then the eight blocks go through
    // their virtual SetValue (vtable +0x1c), so a changed value is marked changed.
    CNetPlayerInfo& operator=(const CNetPlayerInfo& other);
    static CNetPlayerInfo* Create();         // 0x8103d4
    static void Delete(CNetPlayerInfo* p);   // 0x81009c

    // Declared for the callers in the batch. Their bodies are not all written (see the ledger).
    void SetState(char state);  // 0x36f40c

    // Slots after NetStruct's.
    virtual void Update();                  // +0x48, 0x80f3d0 (posts to the manager's two event queues)
    virtual void Reset();                   // +0x4c, 0x80f27c
    virtual bool IsLocal() const;           // +0x50, 0x80f1ec
    virtual bool IsLocalTo(int member_index) const;  // +0x54, 0x80f1a0
    virtual bool IsInRoom() const;          // +0x58, 0x80f180, reconstructed (CMatching::IsInRoom(int) at +0x68)
    virtual bool IsActive() const;          // +0x5c, 0x80f124
    virtual bool IsActivating() const;      // +0x60, 0x36d208

    bool IsHost() const;                    // 0x80f23c
    bool IsRemote() const;                  // 0x80f164
    void Add();                             // 0x80f260
    void Remove();                          // 0x80f2e0
    void Disconnect();                      // 0x80f374

    // Replicated members, in the original order (32-bit offsets of the block in the comments).
    NetStructInt<17u> unk_150;              // +0x130
    NetStructInt<8u> member_id_;            // +0x158
    NetStructInt<17u> matching_member_id_;          // +0x180
    NetStructInt<16u> gamepad_id_;              // +0x1a8
    NetStructUInt<8u> state_;               // +0x1d0
    NetStructUInt<8u> unk_218;              // +0x1f8
    NetStructUInt<8u> unk_240;              // +0x220
    NetStructString<32u> name_;             // +0x248
    std::int32_t applied_state_ = 0;        // +0x280
};
