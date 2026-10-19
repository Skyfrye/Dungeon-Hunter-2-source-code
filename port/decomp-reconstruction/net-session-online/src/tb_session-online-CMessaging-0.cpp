// Track B batch e1-net-session-online-CMessaging-0 (redo r1n-net-session-online-CMessaging-7b9dc9-0): the
// CMessaging queue printers, message receive path, packet read callbacks and the sequence bookkeeping.
// Offsets of the original 32-bit layout are given as comments. CMessage fields are read through its accessors.
#include <cstdint>
#include <cstdio>
#include <list>

#include "net-session-online/c_messaging.hpp"
#include "net-session-online/deps/matching.hpp"

namespace {

// Shared body of PrintRecvQueue and PrintSendQueue. Each non-null entry prints as
// "[sender:serial|A:ack|D:dest] " (CMessage header +0x0c and +0x04, ackMask_ at +0x40, destMask +0x08).
void PrintQueueContents(const char* tag, std::list<CMessage*>& queue, CNetMutex& mutex) {
    if (queue.empty()) {
        return;
    }
    mutex.Lock();
    std::printf("%s", tag);
    for (CMessage* message : queue) {
        if (message != nullptr) {
            std::printf("[%i:%i|A:0x%X|D:0x%X] ", static_cast<int>(message->Sender()),
                        static_cast<int>(message->Serial()), message->AckMask(), message->DestMask());
        }
    }
    std::putchar('\n');
    mutex.Unlock();
}

}  // namespace

// 0x80a784 _ZN10CMessaging14PrintRecvQueueEv
void CMessaging::PrintRecvQueue() {
    PrintQueueContents("RQ> ", recvQueue_, recvMutex_);
}

// 0x80a82c _ZN10CMessaging14PrintSendQueueEv
// Same as PrintRecvQueue, for the send queue (sendMutex_ at +0x0c, sendQueue_ at +0x24).
void CMessaging::PrintSendQueue() {
    PrintQueueContents("SQ> ", sendQueue_, sendMutex_);
}

// 0x80d058 _ZN10CMessaging22ProcessMissingMessagesEP8CMessage
// Takes ackMutex_ and runs the sequence bookkeeping for the message's sender (+0x0c) and serial (+0x04).
void CMessaging::ProcessMissingMessages(CMessage* message) {
    ackMutex_.Lock();
    ProcessMissingSequence(message->Sender(), static_cast<int>(message->Serial()),
                           static_cast<std::uint16_t>(message->GetHash()));
    ackMutex_.Unlock();
}

// 0x80d67c _ZN10CMessaging20HasMessageBeenQueuedEP8CMessage
// Returns false for a local message. Otherwise it is queued when the sequence bookkeeping says so.
bool CMessaging::HasMessageBeenQueued(CMessage* message) {
    ackMutex_.Lock();
    bool queued = false;
    if (!message->IsLocal()) {
        queued = HasQueuedSequence(message->Sender(), static_cast<int>(message->Serial()),
                                   static_cast<std::uint16_t>(message->GetHash()));
    }
    ackMutex_.Unlock();
    return queued;
}

// 0x80d8a0 _ZN10CMessaging16ProcessSendQueueEv
// A server-sent message that is for this member and not yet queued is duplicated into the receive
// queue, and then acknowledged for its sender (+0x0c). Each message that is not an unacknowledged
// reliable message is marked finished (+0x3c). Finished messages are then purged. The original unlocks
// twice; one unlock is made here, followed by PurgeMessagesFromQueue.
void CMessaging::ProcessSendQueue() {
    if (!initialized_) {
        return;
    }
    sendMutex_.Lock();
    for (CMessage* message : sendQueue_) {
        if (message == nullptr) {
            continue;
        }
        if (message->IsFromServer() && message->IsFromMe() && message->IsForMe() &&
            !HasMessageBeenQueued(message)) {
            AddToRecvQueue(message->Duplicate());
            AcknowledgeMessage(message->Sender(), message);
        }
        if (message->IsReliable() && !message->IsAcknowledged()) {
            continue;
        }
        message->SetFinished();
    }
    sendMutex_.Unlock();
    PurgeMessagesFromQueue(&sendQueue_, &sendMutex_);
}

// 0x80d9c0 _ZN10CMessaging14ReceiveMessageEP8CMessage
// The message is queued for receive when it is for this member and not already queued, and forwarded
// to the send queue when this instance is the server and the message must be forwarded. The message
// is then destroyed through its virtual deleting destructor (vtable +0x1c, the D0 entry), so ownership
// passes to this function.
void CMessaging::ReceiveMessage(CMessage* message) {
    if (message->IsForMe() && !HasMessageBeenQueued(message)) {
        AddToRecvQueue(message->Duplicate());
    }
    if (CMatching::Get()->IsServer() && message->MustForward()) {
        AddToSendQueue(message->Duplicate());
    }
    delete message;
}

// 0x80da78 _ZN10CMessaging14UnpackMessagesER12NetBitStream
// Reads 1-bit flags. While each flag is set, the next message is unserialized and received. Returns
// the final flag value (0).
int CMessaging::UnpackMessages(NetBitStream& stream) {
    int flag = 0;
    while (true) {
        flag = stream.ReadByte(1);
        if (flag == 0) {
            break;
        }
        CMessage* message = CMessage::Unserialize(stream);
        ReceiveMessage(message);
    }
    return flag;
}

// 0x80dab4 _ZN10CMessaging14ReadPacketDataEiiR12NetBitStream
// The two keys are not used by the original. A set first flag bit starts UnpackMessages.
int CMessaging::ReadPacketData(int outerKey, int innerKey, NetBitStream& stream) {
    (void)outerKey;
    (void)innerKey;
    const int flag = stream.ReadByte(1);
    if (flag != 0) {
        return UnpackMessages(stream);
    }
    return flag;
}

// 0x80dae8 _ZN10CMessaging15sReadPacketDataEiiR12NetBitStream: packet-manager callback, forwards to the singleton.
int CMessaging::sReadPacketData(int outerKey, int innerKey, NetBitStream& stream) {
    return s_messaging->ReadPacketData(outerKey, innerKey, stream);
}

// Sequence bookkeeping that the original does inside HasMessageBeenQueued. A sender must already have
// an entry in seqMapA_ (+0x44), the hash must not be in hashSet_ (+0x2c), the stored A serial must be
// at least the message serial, and the stored B serial (+0x5c map) must be at most the message serial.
// The B lookup inserts a zero entry when absent, as the original does.
bool CMessaging::HasQueuedSequence(int sender, int serial, std::uint16_t hash) {
    const auto first = seqMapA_.find(sender);
    if (first == seqMapA_.end()) {
        return false;
    }
    // The set lookup compares 16-bit keys unsigned (LDRH), so every hash in 0..0xFFFF can be found.
    if (hashSet_.count(hash) != 0) {
        return false;
    }
    if (first->second < serial) {
        return false;
    }
    return seqMapB_[sender] <= serial;
}

// Sequence bookkeeping of ProcessMissingMessages. A sender's first serial goes into seqMapA_ (+0x44).
// B (+0x5c): when the stored value is above the new serial, the sequences between are added as missing
// and the value is lowered to the new serial. A: when the stored value is below the new serial, the
// sequences between are added as missing and the value is raised to the new serial. The message hash
// is then removed from hashSet_.
void CMessaging::ProcessMissingSequence(int sender, int serial, std::uint16_t hash) {
    if (seqMapA_.find(sender) == seqMapA_.end()) {
        // First message from this sender: both serial maps start at its serial.
        seqMapA_[sender] = serial;
        seqMapB_[sender] = serial;
    }

    int& received = seqMapB_[sender];
    if (received > serial) {
        AddMissingMessages(sender, serial, received);
        received = serial;
    }

    int& first = seqMapA_[sender];
    if (first < serial) {
        AddMissingMessages(sender, first, serial);
        first = serial;
    }

    hashSet_.erase(hash);
}
