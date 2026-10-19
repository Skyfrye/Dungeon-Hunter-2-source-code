// CPacketManager: packet slots, sequence numbers and the incoming packet queue.
// Reconstructed from libDungeonHunter2.so pseudocode (CPacketManager.cpp).
//
// Slot registry, sequence arithmetic, header (de)serialisation, the incoming queue, the
// per-member state, the acknowledgement and loss bookkeeping, and the send and receive paths.
// The send and receive paths use the CConnectionManager stand-in surface and CMatching from
// net-session-online/deps/matching.hpp.
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <vector>

#include "net-transport/c_data_stats.hpp"  // CDataStats<int> members (the four at +0x88..+0xf4)
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/sync.hpp"

// PACKET_SLOTS: slot index 0..7, names not recovered (kept numeric).
using PACKET_SLOTS = int;

// One registered packet type. Original stride 92 bytes (32-bit build), fields:
//   +0x00 used flag, +0x04 write callback, +0x08 read callback, +0x0c ack callback, +0x10 lost callback.
struct tPacketSlot {
    bool used = false;                                    // +0x00
    bool (*write)(int, int, NetBitStream&) = nullptr;     // +0x04
    void (*read)(int, int, NetBitStream&) = nullptr;      // +0x08
    void (*ack)(int, int) = nullptr;                      // +0x0c
    void (*lost)(int, int) = nullptr;                     // +0x10
};

class CPacketManager {
public:
    // Packet header, written in this order: sequence (16 bits), ack (16), ack_bits (32),
    // matching_id (16), connection_id (16), slot_mask (8). The original ReadHeader and
    // WriteHeader use the same order.
    struct tPacketMgrHeader {
        std::uint32_t sequence = 0;        // +0x00
        std::uint32_t ack = 0;             // +0x04
        std::uint32_t ack_bits = 0;        // +0x08
        std::uint32_t connection_id = 0;   // +0x0c
        std::uint32_t matching_id = 0;     // +0x10
        std::uint8_t slot_mask = 0;        // +0x14
    };

    // Per-member state (value of the member map, key = member id). Offsets from the original node.
    struct tPacketMemberInfo {
        std::uint32_t last_sent_sequence = 0;  // +0x00 sequence of the last packet sent to the member
        std::uint32_t last_recv_sequence = 0;  // +0x04 newest sequence received from the member
        std::uint32_t ack_bits = 0;            // +0x08 received bit field (kept to 16 bits)
        std::uint8_t slot_mask = 0;            // +0x0c slots the member has registered
        std::uint8_t valid_flag = 0;           // +0x0d mark-and-sweep flag used by SendPackets
    };

    // Queued packet for SendWaitingPackets. Only member, data and the bit count are recovered;
    // the original's other fields (+0x04, +0x0c, +0x10) are not used by SendWaitingPackets.
    struct tSendPacket {
        int member = 0;                  // +0x00
        std::vector<char> data;          // +0x08 (the original keeps a pointer)
        std::uint32_t bits = 0;          // +0x14 bit count of the packet
    };

    CPacketManager();                                             // 0x8162a4 C1, 0x816540 C2
    virtual ~CPacketManager();                                    // 0x816ab8 D2, 0x81704c D1
    CPacketManager(const CPacketManager&) = delete;
    CPacketManager& operator=(const CPacketManager&) = delete;

    static CPacketManager* GetInstance();                         // 0x8151c8 _ZN14CPacketManager11GetInstanceEv
    static bool IsInitialized();                                  // 0x8151ec _ZN14CPacketManager13IsInitializedEv
    static int Initialize();                                      // 0x8164e8 _ZN14CPacketManager10InitializeEv (partial)
    static int Terminate();                                       // 0x815214 _ZN14CPacketManager9TerminateEv

    static int RegisterPacketSlot(PACKET_SLOTS slot, bool (*write)(int, int, NetBitStream&),
                                  void (*read)(int, int, NetBitStream&),
                                  void (*ack)(int, int), void (*lost)(int, int));  // 0x815258 _ZN14CPacketManager18RegisterPacketSlotE12PACKET_SLOTSPFbiiR12NetBitStreamEPFviiS2_EPFviiES8_
    static int UnregisterPacketSlot(PACKET_SLOTS slot);           // 0x8152c0 _ZN14CPacketManager20UnregisterPacketSlotE12PACKET_SLOTS
    static bool IsPacketSlotUsed(PACKET_SLOTS slot);              // 0x815324 _ZN14CPacketManager16IsPacketSlotUsedE12PACKET_SLOTS

    int GetPacketCount() const;                                   // 0x81534c _ZN14CPacketManager14GetPacketCountEv
    bool ArePacketsAvailable() const;                             // 0x815378 _ZN14CPacketManager19ArePacketsAvailableEv

    // Sequence arithmetic on 16-bit sequence numbers (wrap-around at 0x8000).
    static bool SequenceMoreRecent(std::uint32_t a, std::uint32_t b);   // 0x8153a8 _ZN14CPacketManager18SequenceMoreRecentEjj
    static int GetSequenceOffset(std::uint32_t a, std::uint32_t b);     // 0x8153e0 _ZN14CPacketManager17GetSequenceOffsetEjj

    void PrintStatistics() const;                                 // 0x8153fc _ZN14CPacketManager15PrintStatisticsEv (empty in the original)

    // The +0x2c send-time word. The original writes it inline from two other batches (CMessaging::AddToSendQueue
    // when flag32 is set, and the forced resend in PlayerManager::_ManageCharacters), where the field is private in
    // this port. The accessor carries those stores; it is not a separate original function.
    void ClearLastSendTime() { last_send_time_ = 0; }

    static tPacketMgrHeader ReadHeader(NetBitStream& stream);     // 0x815400
    static void WriteHeader(const tPacketMgrHeader& header, NetBitStream& stream);  // 0x815474 _ZN14CPacketManager11WriteHeaderERNS_16tPacketMgrHeaderER12NetBitStream

    NetBitStream GetNextPacket();                                 // 0x816c68 (caller checks ArePacketsAvailable)
    int PacketReceiverCallback(int source, char* data, int size); // 0x817c9c

    void ProcessAcknowledgedPackets();                            // 0x815504 _ZN14CPacketManager26ProcessAcknowledgedPacketsEv
    void AcknowledgePacket(tPacketMgrHeader& header);             // 0x815cac _ZN14CPacketManager17AcknowledgePacketERNS_16tPacketMgrHeaderE
    bool IsPacketValid(const tPacketMgrHeader& header);           // 0x815d80 _ZN14CPacketManager13IsPacketValidERNS_16tPacketMgrHeaderE
    std::uint32_t PreparePacketHeader(int member, NetBitStream& stream);  // 0x815e10 _ZN14CPacketManager19PreparePacketHeaderEiR12NetBitStream (returns the sequence)
    void PreparePacketData(int member, std::uint32_t sequence, NetBitStream& stream);  // 0x815ec8 _ZN14CPacketManager17PreparePacketDataEijR12NetBitStream
    void SendWaitingPackets();                                    // 0x81684c _ZN14CPacketManager18SendWaitingPacketsEv
    void ProcessLostPackets();                                    // 0x8168fc _ZN14CPacketManager18ProcessLostPacketsEv
    void ProcessPacketAcknowledgements(const tPacketMgrHeader& header);  // 0x816ca8 _ZN14CPacketManager29ProcessPacketAcknowledgementsERNS_16tPacketMgrHeaderE
    int ReceivePackets();                                         // 0x816eac _ZN14CPacketManager14ReceivePacketsEv
    int SendPacket(int member);                                   // 0x817814 _ZN14CPacketManager10SendPacketEi
    int SendPackets();                                            // 0x8179d0 _ZN14CPacketManager11SendPacketsEv
    static int sPacketReceiverCallback(int member, char* data, int size);  // 0x817d1c _ZN14CPacketManager23sPacketReceiverCallbackEiPci

    static constexpr int kPacketSlotCount = 8;                    // 8 * 92 bytes = 736 (0x2e0) in the original

    static CPacketManager* s_packetManager;                       // _ZN14CPacketManager15s_packetManagerE
    static tPacketSlot s_PacketSlots[kPacketSlotCount];           // _ZN14CPacketManager13s_PacketSlotsE
    static std::uint8_t s_packetSlotBitMap;                       // _ZN14CPacketManager18s_packetSlotBitMapE

private:
    bool initialized_ = false;                                    // +0x04 (set true by the constructor)
    CNetMutex mutex_;                                             // +0x08
    std::list<NetBitStream> packets_;                             // +0x24 incoming packets, in arrival order
    std::multimap<std::uint32_t, tSendPacket> waiting_;           // +0x0c packets queued for SendWaitingPackets
    std::map<int, tPacketMemberInfo> member_info_;                // +0x34 per-member state, key = member id
    std::uint32_t last_send_time_ = 0;                            // +0x2c ms of the last send round
    bool force_send_ = false;                                     // +0x30 send on the next SendPackets call
    std::map<std::uint32_t, std::uint32_t> sent_times_;           // +0x4c key = (member << 16) + sequence, value = send time (ms)
    std::vector<std::uint32_t> acked_;                            // +0x64 acknowledged keys, drained by ProcessAcknowledgedPackets

    // Members after acked_ (original +0x70..+0xf8). Their use is not recovered: the constructor
    // builds them and the destructor clears or tears them down, and no other batch uses them.
    // The original builds the four CDataStats<int> at +0x88, +0xac, +0xd0 and +0xf4 (36 bytes each)
    // and tears them down in reverse order, which the reverse declaration order here reproduces.
    std::map<int, std::uint32_t> unk_70_;                         // +0x70 tree header, key int, value uint
    CDataStats<int> unk_88_;                                      // +0x88
    CDataStats<int> unk_ac_;                                      // +0xac
    CDataStats<int> unk_d0_;                                      // +0xd0
    CDataStats<int> unk_f4_;                                      // +0xf4
};
