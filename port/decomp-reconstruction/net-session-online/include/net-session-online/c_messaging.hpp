// CMessaging: process-wide singleton that owns the receive and send queues and
// the acknowledgement bookkeeping. Offsets of the original 32-bit layout are
// given as comments. Reconstructed: the singleton accessors, the acknowledge and
// resend helpers, queue clearing, the lost/acknowledged packet callbacks, the
// queue printers, the receive and send paths, and the sequence bookkeeping.
// Partial: AddToSendQueue (the flag32 branch's CPacketManager store) and ResetQueues.
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <set>

#include "net-session-online/c_message.hpp"
#include "net-transport/sync.hpp"

class CMessaging {
public:
    // 0x80a710 _ZN10CMessaging13IsInitializedEv: 0 when no instance; otherwise the initialized flag at +0x04.
    static std::uint32_t IsInitialized();
    // 0x80a738 _ZN10CMessaging9TerminateEv: deletes the instance through its virtual destructor.
    static void Terminate();
    // 0x80a77c _ZN10CMessaging6UpdateEv: the original returns 0 with no work.
    static int Update();
    // 0x80b114 _ZN10CMessaging10InitializeEv: creates the singleton once. 0 on success, -1 on failure.
    static int Initialize();
    // 0x80b16c _ZN10CMessaging11GetInstanceEv: returns the singleton, creating it on first use.
    static CMessaging* GetInstance();

    // 0x80afe4 _ZN10CMessagingC1Ev: registers packet slot 1 with the four callbacks below.
    CMessaging();
    // 0x80b438 _ZN10CMessagingD1Ev: unregisters packet slot 1, then resets the queues.
    virtual ~CMessaging();

    // 0x80a8d4 _ZN10CMessaging18ResendLostMessagesEiRSt3setItSt4lessItESaItEE
    void ResendLostMessages(int memberId, std::set<std::uint16_t>& hashes);
    // 0x80a98c _ZN10CMessaging18AcknowledgeMessageEiP8CMessage
    void AcknowledgeMessage(int memberId, CMessage* message);
    // 0x80a994 _ZN10CMessaging22AcknowledgeSentMessagesEiRSt3setItSt4lessItESaItEE
    void AcknowledgeSentMessages(int memberId, std::set<std::uint16_t>& hashes);
    // 0x80ac34 _ZN10CMessaging18ClearMessageQueueEPSt4listIP8CMessageSaIS2_EEP9CNetMutex
    void ClearMessageQueue(std::list<CMessage*>* queue, CNetMutex* mutex);
    // 0x80ae90 _ZN10CMessaging11ResetQueuesEb (partial: no CMessage::m_messageSerial reset).
    void ResetQueues(bool resetMaps);
    // 0x80cbbc _ZN10CMessaging17ProcessLostPacketEii
    void ProcessLostPacket(int outerKey, int innerKey);
    // 0x80cd18 _ZN10CMessaging23ProcessAcknowledgedPacketEii
    void ProcessAcknowledgedPacket(int outerKey, int innerKey);
    // 0x80ccec _ZN10CMessaging18sProcessLostPacketEii: packet-manager callback, forwards to the singleton.
    static void sProcessLostPacket(int outerKey, int innerKey);
    // 0x80ce48 _ZN10CMessaging24sProcessAcknowledgedPacketEii: packet-manager callback, forwards to the singleton.
    static void sProcessAcknowledgedPacket(int outerKey, int innerKey);

    // 0x80aa50 _ZN10CMessaging23AreMessagesAcknowledgedEPKc
    int AreMessagesAcknowledged(const char* typeName);
    // 0x80ab00 _ZN10CMessaging19GetMessageFromQueueEPKc
    CMessage* GetMessageFromQueue(const char* typeName);
    // 0x80ab80 _ZN10CMessaging17IsMessageReceivedEPKc
    bool IsMessageReceived(const char* typeName);
    // 0x80acb8 _ZN10CMessaging22PurgeMessagesFromQueueEPSt4listIP8CMessageSaIS2_EEP9CNetMutexPKc
    // Removes null and finished entries and deletes the messages. The char const* is unused.
    void PurgeMessagesFromQueue(std::list<CMessage*>* queue, CNetMutex* mutex);
    // 0x80ad54 _ZN10CMessaging16ProcessRecvQueueEv
    void ProcessRecvQueue();
    // 0x80b900 _ZN10CMessaging12PackMessagesEiR12NetBitStream
    std::set<std::uint16_t> PackMessages(int memberId, NetBitStream& stream);
    // 0x80ba78 _ZN10CMessaging18AddMissingMessagesEiii
    void AddMissingMessages(int memberId, int fromSequence, int toSequence);
    // 0x80cf1c _ZN10CMessaging15WritePacketDataEiiR12NetBitStream
    int WritePacketData(int outerKey, int innerKey, NetBitStream& stream);
    // 0x80cfdc _ZN10CMessaging16sWritePacketDataEiiR12NetBitStream: packet-manager callback, forwards to the singleton.
    static int sWritePacketData(int outerKey, int innerKey, NetBitStream& stream);
    // 0x80d624 _ZN10CMessaging14AddToRecvQueueEP8CMessage
    void AddToRecvQueue(CMessage* message);
    // 0x80db24 _ZN10CMessaging14AddToSendQueueEP8CMessage (partial: the flag32 branch's store to
    // CPacketManager::last_send_time_ is omitted, see the .cpp).
    void AddToSendQueue(CMessage* message);
    // 0x80e1e8 _ZN10CMessaging15SendMsgToServerEP8CMessage
    void SendMsgToServer(CMessage* message);
    // 0x80e23c _ZN10CMessaging9SendMsgToEP8CMessagei
    void SendMsgTo(CMessage* message, int memberId);
    // 0x80e2a4 _ZN10CMessaging7SendMsgEP8CMessage
    void SendMsg(CMessage* message);

    // 0x80a784 _ZN10CMessaging14PrintRecvQueueEv
    void PrintRecvQueue();
    // 0x80a82c _ZN10CMessaging14PrintSendQueueEv
    void PrintSendQueue();
    // 0x80d058 _ZN10CMessaging22ProcessMissingMessagesEP8CMessage
    void ProcessMissingMessages(CMessage* message);
    // 0x80d67c _ZN10CMessaging20HasMessageBeenQueuedEP8CMessage
    bool HasMessageBeenQueued(CMessage* message);
    // 0x80d8a0 _ZN10CMessaging16ProcessSendQueueEv
    void ProcessSendQueue();
    // 0x80d9c0 _ZN10CMessaging14ReceiveMessageEP8CMessage: takes ownership of the message and deletes it.
    void ReceiveMessage(CMessage* message);
    // 0x80da78 _ZN10CMessaging14UnpackMessagesER12NetBitStream
    int UnpackMessages(NetBitStream& stream);
    // 0x80dab4 _ZN10CMessaging14ReadPacketDataEiiR12NetBitStream
    int ReadPacketData(int outerKey, int innerKey, NetBitStream& stream);
    // 0x80dae8 _ZN10CMessaging15sReadPacketDataEiiR12NetBitStream: packet-manager callback, forwards to the singleton.
    static int sReadPacketData(int outerKey, int innerKey, NetBitStream& stream);

    // Test hook: installs an instance for IsInitialized/Terminate tests.
    static void SetInstanceForTest(CMessaging* instance, bool initialized);

private:
    static CMessaging* s_messaging;  // CMessaging::s_messaging

    // Bodies of the sequence bookkeeping in ProcessMissingMessages and HasMessageBeenQueued. They take the
    // sender (+0x0c), serial (+0x04) and hash that the original reads from the message. The hash is the
    // 16-bit value CMessage::CreateHash returns (UXTH), so it is always 0..0xFFFF. The original's set lookup
    // compares it unsigned (LDRH), so a hash of 0x8000 or more is found in the set like any other.
    // The caller holds ackMutex_.
    bool HasQueuedSequence(int sender, int serial, std::uint16_t hash);
    void ProcessMissingSequence(int sender, int serial, std::uint16_t hash);

    bool initialized_ = false;       // +0x04
    CNetMutex recvMutex_;            // +0x08 guards recvQueue_
    CNetMutex sendMutex_;            // +0x0c guards sendQueue_
    CNetMutex unusedMutex_;          // +0x10 not used by the reconstructed code
    CNetMutex ackMutex_;             // +0x14 taken by ResetQueues
    CNetMutex seqMutex_;             // +0x18 taken by ResetQueues
    std::list<CMessage*> recvQueue_;  // +0x1c
    std::list<CMessage*> sendQueue_;  // +0x24
    std::set<std::uint16_t> hashSet_;  // +0x2c message hashes; role inferred
    std::map<int, int> seqMapA_;     // +0x44; role inferred
    std::map<int, int> seqMapB_;     // +0x5c; role inferred
    // +0x74: packet id -> (sequence -> message hashes). Outer key first, then inner key.
    std::map<int, std::map<int, std::set<std::uint16_t>>> packetMap_;
};
