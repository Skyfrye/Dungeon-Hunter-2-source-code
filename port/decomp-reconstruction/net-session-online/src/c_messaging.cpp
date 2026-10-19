#include "net-session-online/c_messaging.hpp"
#include "dh2/global/net_singletons.hpp"

#include <cstdint>

#include "net-session-online/deps/matching.hpp"
#include "net-transport/packet_manager.hpp"

CMessaging* CMessaging::s_messaging = nullptr;

namespace {

// The original reads the wire type id at message+0x10 with LDRSB (a signed byte) and compares it with
// FindTypeId's int. An unregistered name gives -1; the CMessage constructor stores that as 0xFF, which
// reads back as -1 and matches it. Ids 128..255 read back negative and never match a positive id.
int SignedWireTypeId(const CMessage* message) {
    return static_cast<int>(static_cast<std::int8_t>(message->WireTypeId()));
}

}  // namespace

// 0x80a710 _ZN10CMessaging13IsInitializedEv
std::uint32_t CMessaging::IsInitialized() {
    CMessaging* instance = s_messaging;
    if (instance == nullptr) {
        return 0;
    }
    return instance->initialized_ ? 1u : 0u;
}

// 0x80a738 _ZN10CMessaging9TerminateEv
void CMessaging::Terminate() {
    CMessaging* instance = s_messaging;
    if (instance != nullptr) {
        delete instance;
        s_messaging = nullptr;
    }
}

// 0x80a77c _ZN10CMessaging6UpdateEv
int CMessaging::Update() { return 0; }

// 0x80b114 _ZN10CMessaging10InitializeEv
int CMessaging::Initialize() {
    if (s_messaging != nullptr) {
        return 0;
    }
    s_messaging = new CMessaging();
    return s_messaging != nullptr ? 0 : -1;
}

// 0x80b16c _ZN10CMessaging11GetInstanceEv
CMessaging* CMessaging::GetInstance() {
    if (s_messaging == nullptr) {
        s_messaging = new CMessaging();
    }
    return s_messaging;
}

// 0x80afe4 _ZN10CMessagingC1Ev
// Registers packet slot 1 with the packet manager: sWritePacketData, sReadPacketData,
// sProcessAcknowledgedPacket and sProcessLostPacket. The packet manager's write callback
// returns bool and its read callback returns void; the static callbacks here return int.
// The lambdas keep the same behaviour: a nonzero int is a true write result, and the read
// result is discarded.
CMessaging::CMessaging() {
    initialized_ = false;
    ResetQueues(true);
    CPacketManager::RegisterPacketSlot(
        1,
        [](int outerKey, int innerKey, NetBitStream& stream) -> bool {
            return sWritePacketData(outerKey, innerKey, stream) != 0;
        },
        [](int outerKey, int innerKey, NetBitStream& stream) {
            (void)sReadPacketData(outerKey, innerKey, stream);
        },
        &sProcessAcknowledgedPacket, &sProcessLostPacket);
    initialized_ = true;
}

// 0x80b438 _ZN10CMessagingD1Ev
CMessaging::~CMessaging() {
    initialized_ = false;
    CPacketManager::UnregisterPacketSlot(1);
    ResetQueues(true);
}

// 0x80a8d4 _ZN10CMessaging18ResendLostMessagesEiRSt3setItSt4lessItESaItEE
// Every send-queue message whose hash is in the set is marked unsent for memberId.
void CMessaging::ResendLostMessages(int memberId, std::set<std::uint16_t>& hashes) {
    sendMutex_.Lock();
    for (CMessage* message : sendQueue_) {
        const auto hash = static_cast<std::uint16_t>(message->GetHash());
        if (hashes.find(hash) != hashes.end()) {
            message->SetSentFlag(memberId, false);
        }
    }
    sendMutex_.Unlock();
}

// 0x80a98c _ZN10CMessaging18AcknowledgeMessageEiP8CMessage
void CMessaging::AcknowledgeMessage(int memberId, CMessage* message) {
    message->AcknowledgeMember(memberId);
}

// 0x80a994 _ZN10CMessaging22AcknowledgeSentMessagesEiRSt3setItSt4lessItESaItEE
// Every send-queue message whose hash is in the set is acknowledged for memberId.
void CMessaging::AcknowledgeSentMessages(int memberId, std::set<std::uint16_t>& hashes) {
    sendMutex_.Lock();
    for (CMessage* message : sendQueue_) {
        const auto hash = static_cast<std::uint16_t>(message->GetHash());
        if (hashes.find(hash) != hashes.end()) {
            AcknowledgeMessage(memberId, message);
        }
    }
    sendMutex_.Unlock();
}

// 0x80ac34 _ZN10CMessaging18ClearMessageQueueEPSt4listIP8CMessageSaIS2_EEP9CNetMutex
// The original unlocks the mutex twice; a std::mutex must be unlocked once, so
// only one unlock is made here.
void CMessaging::ClearMessageQueue(std::list<CMessage*>* queue, CNetMutex* mutex) {
    mutex->Lock();
    for (CMessage* message : *queue) {
        delete message;
    }
    queue->clear();
    mutex->Unlock();
}

// 0x80ae90 _ZN10CMessaging11ResetQueuesEb
void CMessaging::ResetQueues(bool resetMaps) {
    ClearMessageQueue(&sendQueue_, &sendMutex_);
    ClearMessageQueue(&recvQueue_, &recvMutex_);
    hashSet_.clear();

    ackMutex_.Lock();
    seqMutex_.Lock();
    packetMap_.clear();
    if (resetMaps) {
        seqMapA_.clear();
        seqMapB_.clear();
        CMessage::ResetSerial();  // CMessage::m_messageSerial = 0 in the original
    }
    seqMutex_.Unlock();
    ackMutex_.Unlock();
}

// 0x80cbbc _ZN10CMessaging17ProcessLostPacketEii
// If packetMap_[outerKey] has innerKey, resend the hashes stored under it and
// remove that entry. Looking up outerKey inserts it when absent, as the original does.
void CMessaging::ProcessLostPacket(int outerKey, int innerKey) {
    if (packetMap_.empty()) {
        return;
    }
    auto& inner = packetMap_[outerKey];
    if (inner.find(innerKey) == inner.end()) {
        return;
    }
    ResendLostMessages(outerKey, inner[innerKey]);
    auto& again = packetMap_[outerKey];
    auto it = again.find(innerKey);
    if (it != again.end()) {
        again.erase(it);
    }
}

// 0x80cd18 _ZN10CMessaging23ProcessAcknowledgedPacketEii
// Same walk as ProcessLostPacket, but the stored hashes are acknowledged.
void CMessaging::ProcessAcknowledgedPacket(int outerKey, int innerKey) {
    if (packetMap_.empty()) {
        return;
    }
    auto& inner = packetMap_[outerKey];
    if (inner.find(innerKey) == inner.end()) {
        return;
    }
    AcknowledgeSentMessages(outerKey, inner[innerKey]);
    auto& again = packetMap_[outerKey];
    auto it = again.find(innerKey);
    if (it != again.end()) {
        again.erase(it);
    }
}

// 0x80ccec _ZN10CMessaging18sProcessLostPacketEii
void CMessaging::sProcessLostPacket(int outerKey, int innerKey) {
    s_messaging->ProcessLostPacket(outerKey, innerKey);
}

// 0x80ce48 _ZN10CMessaging24sProcessAcknowledgedPacketEii
void CMessaging::sProcessAcknowledgedPacket(int outerKey, int innerKey) {
    s_messaging->ProcessAcknowledgedPacket(outerKey, innerKey);
}

// 0x80aa50 _ZN10CMessaging23AreMessagesAcknowledgedEPKc
// With no name: 0 when the send queue is empty, otherwise 1. With a name: 0 when an unfinished
// send-queue message has that wire type id, otherwise 1 (an empty queue also gives 1). The wire
// type id is read as a signed byte (LDRSB, see SignedWireTypeId), so an unregistered name (-1) matches
// a stored 0xFF, and ids 128..255 never match.
int CMessaging::AreMessagesAcknowledged(const char* typeName) {
    if (typeName == nullptr) {
        return sendQueue_.empty() ? 0 : 1;
    }
    const int typeId = CMessage::FindTypeId(typeName);
    sendMutex_.Lock();
    bool pending = false;
    for (CMessage* message : sendQueue_) {
        if (message != nullptr && !message->IsFinished() &&
            SignedWireTypeId(message) == typeId) {
            pending = true;
            break;
        }
    }
    sendMutex_.Unlock();
    return pending ? 0 : 1;
}

// 0x80ab00 _ZN10CMessaging19GetMessageFromQueueEPKc
// Returns the first unfinished receive-queue message whose wire type id matches FindTypeId(typeName),
// or nullptr. The id is compared as a signed byte (LDRSB), as in AreMessagesAcknowledged.
CMessage* CMessaging::GetMessageFromQueue(const char* typeName) {
    const int typeId = CMessage::FindTypeId(typeName);
    recvMutex_.Lock();
    CMessage* found = nullptr;
    for (CMessage* message : recvQueue_) {
        if (message != nullptr && !message->IsFinished() &&
            SignedWireTypeId(message) == typeId) {
            found = message;
            break;
        }
    }
    recvMutex_.Unlock();
    return found;
}

// 0x80ab80 _ZN10CMessaging17IsMessageReceivedEPKc
bool CMessaging::IsMessageReceived(const char* typeName) {
    return GetMessageFromQueue(typeName) != nullptr;
}

// 0x80acb8 _ZN10CMessaging22PurgeMessagesFromQueueEPSt4listIP8CMessageSaIS2_EEP9CNetMutexPKc
// Removes each null or finished entry and deletes the message (delete of nullptr does nothing).
// The original unlocks twice; one unlock is made here, as in ClearMessageQueue.
void CMessaging::PurgeMessagesFromQueue(std::list<CMessage*>* queue, CNetMutex* mutex) {
    mutex->Lock();
    for (auto it = queue->begin(); it != queue->end();) {
        CMessage* message = *it;
        if (message == nullptr || message->IsFinished()) {
            it = queue->erase(it);
            delete message;
        } else {
            ++it;
        }
    }
    mutex->Unlock();
}

// 0x80ad54 _ZN10CMessaging16ProcessRecvQueueEv
// Sets the finished flag of each expired receive-queue message, then purges the queue.
void CMessaging::ProcessRecvQueue() {
    recvMutex_.Lock();
    for (CMessage* message : recvQueue_) {
        if (message != nullptr && message->IsExpired()) {
            message->SetFinished();
        }
    }
    recvMutex_.Unlock();
    PurgeMessagesFromQueue(&recvQueue_, &recvMutex_);
}

// 0x80b900 _ZN10CMessaging12PackMessagesEiR12NetBitStream
// Writes each eligible send-queue message as a 1 bit followed by its serialized form, then
// a 0 bit. Returns the hashes of the written messages. Finished messages are skipped. A message
// whose data plus the 16-byte header does not fit in the rest of the stream is skipped (the
// stream size is in bytes; the free space is counted as the original does, one byte short when
// the write position is not byte aligned).
std::set<std::uint16_t> CMessaging::PackMessages(int memberId, NetBitStream& stream) {
    std::set<std::uint16_t> hashes;
    sendMutex_.Lock();
    for (CMessage* message : sendQueue_) {
        if (message == nullptr || message->IsFinished() || message->IsAcknowledgedBy(memberId) ||
            message->HasBeenSentTo(memberId)) {
            continue;
        }
        if (!message->IsFor(memberId) && CMatching::Get()->IsServer()) {
            continue;
        }
        const std::uint32_t writePos = stream.WritePosition();
        const std::uint32_t partialByte = (writePos & 7u) != 0 ? 1u : 0u;
        const std::uint32_t freeBytes = stream.Size() - 1u - (writePos >> 3) - partialByte;
        if (freeBytes < message->GetDataSize() + 16u) {
            continue;
        }
        stream.WriteByte(1, 1);
        message->Serialize(stream);
        hashes.insert(static_cast<std::uint16_t>(message->GetHash()));
        message->SetSentFlag(memberId, true);
    }
    stream.WriteByte(0, 1);
    sendMutex_.Unlock();
    return hashes;
}

// 0x80ba78 _ZN10CMessaging18AddMissingMessagesEiii
// Adds the hashes of the sequence numbers strictly between fromSequence and toSequence.
// The Hex-Rays third argument of CMessage::CreateHash is a leftover; CreateHash takes two.
void CMessaging::AddMissingMessages(int memberId, int fromSequence, int toSequence) {
    for (int sequence = fromSequence + 1; sequence < toSequence; ++sequence) {
        hashSet_.insert(static_cast<std::uint16_t>(CMessage::CreateHash(memberId, sequence)));
    }
}

// 0x80cf1c _ZN10CMessaging15WritePacketDataEiiR12NetBitStream
// Writes a 0 bit when the send queue is empty (returns 0). Otherwise writes a 1 bit, packs
// the messages into packetMap_[outerKey][innerKey] and returns 1. Inherits the partial
// PackMessages.
int CMessaging::WritePacketData(int outerKey, int innerKey, NetBitStream& stream) {
    if (sendQueue_.empty()) {
        stream.WriteByte(0, 1);
        return 0;
    }
    stream.WriteByte(1, 1);
    auto& packed = packetMap_[outerKey][innerKey];
    packed = PackMessages(outerKey, stream);
    return 1;
}

// 0x80cfdc _ZN10CMessaging16sWritePacketDataEiiR12NetBitStream: packet-manager callback, forwards to the singleton.
int CMessaging::sWritePacketData(int outerKey, int innerKey, NetBitStream& stream) {
    return s_messaging->WritePacketData(outerKey, innerKey, stream);
}

// 0x80d624 _ZN10CMessaging14AddToRecvQueueEP8CMessage
// The original runs ProcessMissingMessages on the message before taking the lock.
void CMessaging::AddToRecvQueue(CMessage* message) {
    ProcessMissingMessages(message);
    recvMutex_.Lock();
    recvQueue_.push_back(message);
    recvMutex_.Unlock();
}

// 0x80db24 _ZN10CMessaging14AddToSendQueueEP8CMessage
// A local message goes to ReceiveMessage, which takes ownership, and is not queued. Otherwise the
// message is acknowledged for the local member, appended to the send queue, and the queue is sorted
// by send priority (the Hex-Rays body is an inlined std::list::sort on CMessage::CompareMsgSendPriority).
// When the message's flag32 (+0x32) is set, the original also builds and destroys a temporary copy of the type name (no
// effect) and stores 0 at CPacketManager::last_send_time_ (+0x2c, via GetPacketManager()), so that the next packet round
// sends at once (ClearLastSendTime). The inlined list sort is a stable merge sort in both runtimes.
void CMessaging::AddToSendQueue(CMessage* message) {
    if (message->IsLocal()) {
        ReceiveMessage(message);
        return;
    }
    sendMutex_.Lock();
    message->AcknowledgeMember(CMatching::Get()->LocalMemberId());
    sendQueue_.push_back(message);
    sendQueue_.sort(&CMessage::CompareMsgSendPriority);
    if (message->Flag32()) {
        GetPacketManager()->ClearLastSendTime();
    }
    sendMutex_.Unlock();
}

// 0x80e1e8 _ZN10CMessaging15SendMsgToServerEP8CMessage
void CMessaging::SendMsgToServer(CMessage* message) {
    CMatching* matching = CMatching::Get();
    message->SetDestinationMask(matching->MemberBit(matching->ServerMemberId()));
    AddToSendQueue(message);
}

// 0x80e23c _ZN10CMessaging9SendMsgToEP8CMessagei
void CMessaging::SendMsgTo(CMessage* message, int memberId) {
    if (CMatching::Get()->LocalMemberId() == memberId) {
        AddToRecvQueue(message);
        return;
    }
    message->SetDestinationMask(CMatching::Get()->MemberBit(memberId));
    AddToSendQueue(message);
}

// 0x80e2a4 _ZN10CMessaging7SendMsgEP8CMessage
void CMessaging::SendMsg(CMessage* message) {
    message->SetDestinationMask(0xFFFFFFFFu);
    AddToSendQueue(message);
}

void CMessaging::SetInstanceForTest(CMessaging* instance, bool initialized) {
    s_messaging = instance;
    if (instance != nullptr) {
        instance->initialized_ = initialized;
    }
}
