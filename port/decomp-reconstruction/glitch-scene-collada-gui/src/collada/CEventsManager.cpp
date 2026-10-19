// Bodies of glitch::collada::IEventsManager and CEventsManager (canonical classes: collada/CEventsManager.hpp). Moved from
// src/tb_scene-collada-gui-glitch_collada_CEventsManager-0.cpp when the classes became polymorphic and reference counted.
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"

#include <cstring>

namespace glitch::collada {

// 0x60e028 _ZN6glitch7collada14IEventsManagerD1Ev (empty; D0 0x60f4d0 is skipped)
IEventsManager::~IEventsManager() = default;

// 0x60edd0 _ZN6glitch7collada14CEventsManagerD1Ev (empty; D0 0x60f4bc is skipped)
CEventsManager::~CEventsManager() = default;

namespace {

// SEventKeyTable::keyKind values.
constexpr int kKeysUint8 = 1;
constexpr int kKeysUint16 = 3;
constexpr int kKeysInt32 = 4;

// findEntry core for one key width. The keys are sorted; the result is the index of the last key
// that is not after t, -1 when t is before the first key, or count - 1 when the table is empty.
template <typename K>
int findEntryIn(const SEventKeyTable& table, float t) {
    const int count = table.keyCount;
    if (count <= 0) return count - 1;
    const K* keys = static_cast<const K*>(table.keys);
    if (t < static_cast<float>(keys[0])) return -1;
    for (int i = 1; i != count; ++i) {
        if (t < static_cast<float>(keys[i])) return i - 1;
    }
    return count - 1;
}

// Walks entries firstEntry..lastEntry in order and fires every name of each entry. Each fired
// event gets offsetOf(key) as its time offset. The table pointer is reloaded after every callback,
// as the original does, because a callback can replace the key table.
template <typename K, typename OffsetFn>
void dispatchEntries(CEventsManager& self, int firstEntry, int lastEntry, OffsetFn offsetOf) {
    if (firstEntry > lastEntry) return;
    const SEventKeyTable* table = self.keyTable;
    int index = firstEntry;
    do {
        if (table->entries[index].nameCount > 0) {
            int nameIndex = 0;
            do {
                STriggeredEvent args{};
                args.timeOffset = offsetOf(static_cast<const K*>(table->keys)[index]);
                args.eventName = table->entries[index].names[nameIndex];
                ++nameIndex;
                self.callback(args, self.callbackUserData);
                table = self.keyTable;
            } while (nameIndex < table->entries[index].nameCount);
        }
        ++index;
    } while (lastEntry >= index);
}

// Looks eventName up in every entry and returns the converted key of the last matching entry, or
// -1 when nothing matches (or the table is empty).
template <typename K, typename Convert>
int lookupEventTime(const SEventKeyTable& table, const char* eventName, Convert convert) {
    const int entryCount = table.entryCount;
    if (entryCount <= 0) return -1;
    const K* keys = static_cast<const K*>(table.keys);
    int result = -1;
    for (int i = 0; i != entryCount; ++i) {
        const SEventEntry& entry = table.entries[i];
        for (int n = 0; n < entry.nameCount; ++n) {
            if (std::strcmp(eventName, entry.names[n]) == 0) result = convert(keys[i]);
        }
    }
    return result;
}

}  // namespace

// 0x60e02c _ZN6glitch7collada14CEventsManager9findEntryEi
int CEventsManager::findEntry(int time) {
    const SEventKeyTable& table = *keyTable;
    switch (table.keyKind) {
        case kKeysUint16:
            return findEntryIn<unsigned short>(table, static_cast<float>(time) / 33.333f);
        case kKeysInt32:
            return findEntryIn<int>(table, static_cast<float>(time));
        case kKeysUint8:
            return findEntryIn<unsigned char>(table, static_cast<float>(time) / 33.333f);
        default:
            return 0;
    }
}

// 0x60e934 _ZN6glitch7collada14CEventsManager16dispatchEventsExIiLi1000EEEviii
// Keys are int32 milliseconds: offset = time - key.
template <>
void CEventsManager::dispatchEventsEx<int, 1000>(int firstEntry, int lastEntry, int time) {
    const float now = static_cast<float>(time);
    dispatchEntries<int>(*this, firstEntry, lastEntry, [now](int key) {
        return static_cast<int>(now - static_cast<float>(key));
    });
}

// 0x60ea08 _ZN6glitch7collada14CEventsManager16dispatchEventsExItLi30EEEviii
// Keys are uint16 frames at 30 per second: offset = time + key * -33.333.
template <>
void CEventsManager::dispatchEventsEx<unsigned short, 30>(int firstEntry, int lastEntry, int time) {
    const float now = static_cast<float>(time);
    dispatchEntries<unsigned short>(*this, firstEntry, lastEntry, [now](unsigned short key) {
        return static_cast<int>(now + static_cast<float>(key) * -33.333f);
    });
}

// 0x60eae4 _ZN6glitch7collada14CEventsManager16dispatchEventsExIhLi30EEEviii
// Keys are uint8 frames at 30 per second: offset = time + key * -33.333.
template <>
void CEventsManager::dispatchEventsEx<unsigned char, 30>(int firstEntry, int lastEntry, int time) {
    const float now = static_cast<float>(time);
    dispatchEntries<unsigned char>(*this, firstEntry, lastEntry, [now](unsigned char key) {
        return static_cast<int>(now + static_cast<float>(key) * -33.333f);
    });
}

// 0x60ebb4 _ZN6glitch7collada14CEventsManager14dispatchEventsEiii
void CEventsManager::dispatchEvents(int firstEntry, int lastEntry, int time) {
    switch (keyTable->keyKind) {
        case kKeysUint16:
            dispatchEventsEx<unsigned short, 30>(firstEntry, lastEntry, time);
            return;
        case kKeysInt32:
            dispatchEventsEx<int, 1000>(firstEntry, lastEntry, time);
            return;
        case kKeysUint8:
            dispatchEventsEx<unsigned char, 30>(firstEntry, lastEntry, time);
            return;
        default:
            return;
    }
}

// 0x60ebe0 _ZN6glitch7collada14CEventsManager8onUpdateEiiii
// The decompiler names the arguments a2..a5; loopStart and loopEnd are the names used here.
// The reference count is grabbed (++ at +0x04) and dropped around the dispatch. The drop is
// IReferenceCounted::drop (0x31d584) with the delete branch left out: the count was raised by the
// grab just before, so it cannot reach zero here.
void CEventsManager::onUpdate(int previousTime, int currentTime, int loopStart, int loopEnd) {
    if (previousTime == currentTime || callback == nullptr) return;

    int firstEntry = findEntry(previousTime - 1) + 1;
    const int entry = findEntry(currentTime);
    if (lastEntry == firstEntry) ++firstEntry;

    ++referenceCounter;
    if (previousTime <= currentTime) {
        dispatchEvents(firstEntry, entry, currentTime);
    } else {
        // Time wrapped inside the loop: finish the loop tail, then the loop head from loopStart.
        const int endEntry = findEntry(loopEnd);
        dispatchEvents(firstEntry, endEntry, loopEnd - loopStart + currentTime);
        const int startEntry = findEntry(loopStart - 1);
        dispatchEvents(startEntry + 1, entry, currentTime);
    }
    --referenceCounter;  // IReferenceCounted::drop, delete branch unreachable here (see above)
    lastEntry = entry;
}

// 0x60ecb4 _ZN6glitch7collada14CEventsManager8onUpdateEii
void CEventsManager::onUpdate(int previousTime, int currentTime) {
    if (callback == nullptr) return;

    ++referenceCounter;
    const int startEntry = findEntry(previousTime);
    const int endEntry = findEntry(currentTime);
    dispatchEvents(startEntry + 1, endEntry, currentTime);
    --referenceCounter;  // IReferenceCounted::drop, delete branch unreachable here
}

// 0x60fcf8 _ZN6glitch7collada14CEventsManager27getEventTimeFromEventNameExIiLi1000EEEiPKc
// Key is int32 milliseconds, returned as is (through float, as in the original).
template <>
int CEventsManager::getEventTimeFromEventNameEx<int, 1000>(const char* eventName) {
    return lookupEventTime<int>(*keyTable, eventName, [](int key) {
        return static_cast<int>(static_cast<float>(key));
    });
}

// 0x60fd9c _ZN6glitch7collada14CEventsManager27getEventTimeFromEventNameExItLi30EEEiPKc
// Key is a uint16 frame at 30 per second: time = key * 33.333.
template <>
int CEventsManager::getEventTimeFromEventNameEx<unsigned short, 30>(const char* eventName) {
    return lookupEventTime<unsigned short>(*keyTable, eventName, [](unsigned short key) {
        return static_cast<int>(static_cast<float>(key) * 33.333f);
    });
}

// 0x60fe48 _ZN6glitch7collada14CEventsManager27getEventTimeFromEventNameExIhLi30EEEiPKc
// Key is a uint8 frame at 30 per second: time = key * 33.333.
template <>
int CEventsManager::getEventTimeFromEventNameEx<unsigned char, 30>(const char* eventName) {
    return lookupEventTime<unsigned char>(*keyTable, eventName, [](unsigned char key) {
        return static_cast<int>(static_cast<float>(key) * 33.333f);
    });
}

// 0x60feec _ZN6glitch7collada14CEventsManager25getEventTimeFromEventNameEPKc
int CEventsManager::getEventTimeFromEventName(const char* eventName) {
    switch (keyTable->keyKind) {
        case kKeysUint16:
            return getEventTimeFromEventNameEx<unsigned short, 30>(eventName);
        case kKeysInt32:
            return getEventTimeFromEventNameEx<int, 1000>(eventName);
        case kKeysUint8:
            return getEventTimeFromEventNameEx<unsigned char, 30>(eventName);
        default:
            return 0;
    }
}

}  // namespace glitch::collada
