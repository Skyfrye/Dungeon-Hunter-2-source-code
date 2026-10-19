// Batch g1-game-app-global-f216b6-1 (<global>, part 2 of 22).
// The subtitle and skip helpers, and the CMsg factories GetNewInstance<CMsgSpawnObject>(bool) and
// GetNewInstance<CMsgScriptCmd>(bool). The object factories GetNewInstance<T>() are in
// g1-game-app-global-f216b6-1_objects.cpp: those need the dh2 game headers, which clash with
// net-session-online's c_msg_fixed.hpp in one translation unit, so the two sets are built separately.
// The Hex-Rays listing drops the hint and GO_IDS arguments, so they were read from the asm where used.
// Declarations: dh2/global/message_factory.hpp and dh2/global/subtitles.hpp.
#include "dh2/global/message_factory.hpp"
#include "dh2/global/subtitles.hpp"

#include "core-platform/memory.hpp"
#include "core-platform/stlport_alloc.hpp"
#include "core-platform/w7_global_00.hpp"
#include "net-session-online/c_msg_fixed.hpp"

namespace {

// The subtitle deque holds 32-slot nodes (a 0x80-byte node of 4-byte pointers, as ClearSubtitles notes).
constexpr int kSubtitleNodeSlots = 32;

// The node size the original passes to __node_alloc::_M_deallocate (32 four-byte slots).
constexpr unsigned int kSubtitleNodeSize = 0x80;

int SubtitleStartTime(const SubtitleEntry* entry) {
    return entry->startTime;  // +0x00
}

int SubtitleEndTime(const SubtitleEntry* entry) {
    return entry->endTime;  // +0x04
}

// Text of an entry (+0x08 in the original), or null when the entry has none.
char* SubtitleText(const SubtitleEntry* entry) {
    return static_cast<char*>(entry->text_08);
}

// Frees an entry: its text buffer first (when present, and cleared), then the entry itself.
void FreeSubtitleEntry(SubtitleEntry* entry) {
    if (entry->text_08 != nullptr) {
        CustomFree(entry->text_08);
        entry->text_08 = nullptr;
    }
    CustomFree(entry);
}

}  // namespace

// 0x33931c GetSubtitleTimeInfo(char*, int&, int&)
// The original body is a single BX LR (asm checked). Nothing is read or written.
void GetSubtitleTimeInfo(char* /*text*/, int& /*startTime*/, int& /*endTime*/) {}

// 0x339320 GetSkipText()
// Asm: loads the address of g_skip through the GOT and returns it.
extern "C" int* GetSkipText() {
    return &g_skip;
}

// 0x33933c GetSubtitleTextToSet(int)
// The subtitle queue is a deque of SubtitleEntry*. With the queue empty or its front entry not yet due (start time after the current time), the
// current subtitle keeps showing until its end time, then it is freed and the answer is null. When the front entry is due, the current
// subtitle is freed, the front entry is popped (inlined deque pop_front: at the last slot of a node the node is released with
// __node_alloc::_M_deallocate(node, 0x80) and the deque moves to the next map slot), it becomes the current subtitle, and its text is returned.
extern "C" char* GetSubtitleTextToSet(int currentTime) {
    SubtitleDeque& q = g_SubtitlesQueue;  // start.cur, start.first, start.last, start.node, finish.cur

    // v2 in the original: the front entry, read only when the queue is not empty.
    SubtitleEntry* front = nullptr;
    if (q.cur != q.finish) {
        front = *q.cur;
    }

    if (q.cur == q.finish || SubtitleStartTime(front) > currentTime) {
        // Queue empty, or its next subtitle is not due yet. The current subtitle ends or keeps showing.
        SubtitleEntry* current = g_CurrentSubtitle;
        if (current == nullptr) {
            return nullptr;
        }
        if (currentTime >= SubtitleEndTime(current)) {
            FreeSubtitleEntry(current);
            g_CurrentSubtitle = nullptr;
            return nullptr;
        }
        return SubtitleText(current);
    }

    // The next subtitle is due. Drop the current one, then pop the front entry.
    SubtitleEntry* current = g_CurrentSubtitle;
    if (current != nullptr) {
        FreeSubtitleEntry(current);
        g_CurrentSubtitle = nullptr;
    }

    SubtitleEntry** pos = q.cur;  // v1 in the original
    if (pos == q.last - 1) {
        // Last slot of the node: release the node and move the deque map to the next node.
        if (q.first != nullptr) {
            std::__node_alloc::_M_deallocate(q.first, kSubtitleNodeSize);
        }
        ++q.node;
        q.cur = *q.node;
        q.first = q.cur;
        q.last = q.cur + kSubtitleNodeSlots;
    } else {
        ++q.cur;
    }
    g_CurrentSubtitle = front;
    return SubtitleText(front);
}

// 0x32a6e8 CMessage* GetNewInstance<CMsgSpawnObject>(bool)
// Asm: operator new(0x6c, hint 2), then CMsgSpawnObject::CMsgSpawnObject(bool), with the bool passed through.
template <>
CMessage* GetNewInstance<CMsgSpawnObject>(bool withSerial) {
    return new CMsgSpawnObject(withSerial);
}

// 0x32a710 CMessage* GetNewInstance<CMsgScriptCmd>(bool)
// Asm: operator new(0x5c, hint 2), then CMessage(name, bool), vptr, typeName_, sendMode_ = 1 (+0x2c),
// includeLocalMember_ = 1 (+0x33), flag32_ = 1 (+0x32) and reliable_ = 1 (+0x30). The explicit
// CMsgScriptCmd(bool) constructor makes the same stores.
template <>
CMessage* GetNewInstance<CMsgScriptCmd>(bool withSerial) {
    return new CMsgScriptCmd(withSerial);
}
