// NetStructArray<T, N>: a counted array of up to N replicated elements that share one
// wire flag. Reconstructed from libDungeonHunter2.so pseudocode. The two instantiations in
// the original are NetStructArray<CMatching::MemberInfoNetStruct, 32> and
// NetStructArray<CMatchingLocal::ServerBackupNetStruct, 32>. Those element types live in
// other categories, so this header takes any T with the element methods below.
//
// Original layout (32-bit offsets, kept as comments):
//   +0x00 vptr (HasDataToSend is virtual slot 0)
//   +0x04 count
//   +0x08 elements, sizeof(T) each (432 bytes for MemberInfoNetStruct, 344 for ServerBackupNetStruct)
//
// Element methods used (the original calls them through the element vtable):
//   HasDataToSend(int) +40, Serialize(NetBitStream&, int, int) +8, Load(...) +20,
//   Erase(NetBitStream&) +28, ProcessAcknowledgedPacket(int, int) +64, ProcessLostPacket(int, int) +68.
#pragma once

#include <cstddef>

#include "net-transport/net_bit_stream.hpp"

template <typename T, std::size_t N>
class NetStructArray {
public:
    virtual ~NetStructArray() = default;

    // Vtable slot 0. True when any element has data for the given peer.
    // 0x7fe7e8 (MemberInfoNetStruct), 0x8056c0 (ServerBackupNetStruct)
    virtual bool HasDataToSend(int peer) {
        if (count_ <= 0) {
            return false;
        }
        for (int i = 0; i < count_; ++i) {
            if (elements_[i].HasDataToSend(peer)) {
                return true;
            }
        }
        return false;
    }

    // 0x7fe894 (MemberInfoNetStruct), 0x8058c8 (ServerBackupNetStruct)
    // Writes a presence bit, then serialises elements until one reports data. Elements after
    // the first one that reports data are not called, as in the original.
    bool Serialize(NetBitStream& stream, int a3, int a4) {
        if (HasDataToSend(a3)) {
            stream.WriteBit(1);
            if (count_ <= 0) {
                return false;
            }
            bool found = false;
            for (int i = 0; i < count_; ++i) {
                if (found) {
                    break;
                }
                found = elements_[i].Serialize(stream, a3, a4);
            }
            return found;
        }
        stream.WriteBit(0);
        return false;
    }

    // 0x7fe964 (MemberInfoNetStruct), 0x805a64 (ServerBackupNetStruct)
    bool Load(NetBitStream& stream, int a3, int a4) {
        if (stream.ReadBit() == 0) {
            return false;
        }
        if (count_ <= 0) {
            return false;
        }
        bool found = false;
        for (int i = 0; i < count_; ++i) {
            if (found) {
                break;
            }
            found = elements_[i].Load(stream, a3, a4);
        }
        return found;
    }

    // 0x7fea58 (MemberInfoNetStruct), 0x8059f8 (ServerBackupNetStruct)
    // Erases every element when the presence bit is set. Returns 0, as in the original.
    int Erase(NetBitStream& stream) {
        if (stream.ReadBit() != 0 && count_ > 0) {
            for (int i = 0; i < count_; ++i) {
                elements_[i].Erase(stream);
            }
        }
        return 0;
    }

    // 0x7fe728 (MemberInfoNetStruct), 0x805730 (ServerBackupNetStruct)
    // Calls every element. Returns void: the pseudocode's int is the last element's leftover R0
    // (NetStruct::ProcessAcknowledgedPacket is void) or the array pointer when empty. The only
    // callers reach this through a void vtable slot (xrefs to 0x7fe728 and 0x805730 are data
    // references in vtables), so nothing reads it.
    void ProcessAcknowledgedPacket(int a2, int a3) {
        for (int i = 0; i < count_; ++i) {
            elements_[i].ProcessAcknowledgedPacket(a2, a3);
        }
    }

    // 0x7fe788 (MemberInfoNetStruct), 0x805790 (ServerBackupNetStruct)
    // Same as ProcessAcknowledgedPacket: void, the int result is a leftover (xrefs are vtable slots).
    void ProcessLostPacket(int a2, int a3) {
        for (int i = 0; i < count_; ++i) {
            elements_[i].ProcessLostPacket(a2, a3);
        }
    }

protected:
    int count_ = 0;                  // +0x04
    T elements_[N];                  // +0x08
};
