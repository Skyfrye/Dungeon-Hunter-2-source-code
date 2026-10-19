// glitch::collada::IEventsManager and CEventsManager: the named-event dispatcher an animator owns. Canonical header of the
// engine unification wave (u1-scene). It replaces the IEventsManager / CEventsManager / SEventEntry / SEventKeyTable /
// STriggeredEvent stand-ins in collada_empty_dtors.hpp (non-polymorphic, a hand-written reference count) and the forward
// declarations in collada_misc.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::collada::CEventsManager and IEventsManager,
// 32 bytes each, no virtual base):
//   Both derive from glitch::IReferenceCounted directly (vtable: +0x00 / +0x04 destructors, +0x08 onDelete) and add three slots:
//   +0x0c onUpdate(previous, current) (CEventsManager 0x60ecb4), +0x10 onUpdate(previous, current, loopStart, loopEnd)
//   (0x60ebe0) and +0x14 getEventTimeFromEventName (0x60feec); the interface declares them pure. ISceneNodeAnimator::updateTime
//   (0x667c48) calls the +0x10 slot with the controller's time, range start and range end.
//   CEventsManager members: +0x08 the event callback (non-null enables events), +0x0c its user-data word, +0x10 the entry index of
//   the last update (used to skip a repeated entry), +0x14 the key table.
//   Key table (SEventKeyTable): kind 1 = uint8 keys and 3 = uint16 keys (30 per second, converted with 33.333 ms), 4 = int32
//   keys in milliseconds.
#pragma once

#include <cstdint>

#include "glitch-core-io/core/reference_counted.hpp"

namespace glitch::collada {

// One key slot of the event table: the event names that fire at that key (an 8-byte record in the original).
struct SEventEntry {
    int nameCount;             // +0x00
    const char* const* names;  // +0x04 array of nameCount event names
};

// The event key table, held at CEventsManager +0x14.
struct SEventKeyTable {
    int keyKind;           // +0x00 1: uint8, 3: uint16, 4: int32 milliseconds
    int reserved04;        // +0x04 not read by the CEventsManager code
    int keyCount;          // +0x08 bound of findEntry
    const void* keys;      // +0x0c key array, element width given by keyKind
    int entryCount;        // +0x10 number of SEventEntry records
    SEventEntry* entries;  // +0x14
};

// The event passed to the callback (the original builds a 3-word stack array and passes its address; only the first two words are
// written). FxEchoNotHandledEvents (0x62fdec) logs the string at +0x04, the game's AnimController callbacks take it by reference.
struct STriggeredEvent {
    int timeOffset;            // +0x00 time since the key of the fired event
    const char* eventName;     // +0x04 event name from the entry
};

class IEventsManager : public glitch::IReferenceCounted {
public:
    // vptr+0x00 / +0x04: 0x60e028 (D1, empty); 0x60f4d0 (D0) is skipped.
    ~IEventsManager() override;

    virtual void onUpdate(int previousTime, int currentTime) = 0;                                     // vptr+0x0c
    virtual void onUpdate(int previousTime, int currentTime, int loopStart, int loopEnd) = 0;         // vptr+0x10
    virtual int getEventTimeFromEventName(const char* eventName) = 0;                                 // vptr+0x14
};

class CEventsManager : public IEventsManager {
public:
    // Event callback, called as callback(event, userData) (the original loads it from +0x08).
    using EventCallback = void (*)(const STriggeredEvent& event, void* userData);

    // 0x60edd0 (D1, empty); 0x60f4bc (D0) is skipped.
    ~CEventsManager() override;

    // 0x60e02c: the index of the last key not after `time` (a key table of the matching width).
    int findEntry(int time);
    // 0x60e934, 0x60ea08, 0x60eae4 dispatchEventsEx<Key, Scale>, specialised below.
    template <typename Key, int Scale>
    void dispatchEventsEx(int firstEntry, int lastEntry, int time);
    // 0x60ebb4: picks the key width from the table and dispatches.
    void dispatchEvents(int firstEntry, int lastEntry, int time);
    // vptr+0x10, 0x60ebe0.
    void onUpdate(int previousTime, int currentTime, int loopStart, int loopEnd) override;
    // vptr+0x0c, 0x60ecb4.
    void onUpdate(int previousTime, int currentTime) override;
    // 0x60fcf8, 0x60fd9c, 0x60fe48 getEventTimeFromEventNameEx<Key, Scale>, specialised below.
    template <typename Key, int Scale>
    int getEventTimeFromEventNameEx(const char* eventName);
    // vptr+0x14, 0x60feec.
    int getEventTimeFromEventName(const char* eventName) override;

    EventCallback callback = nullptr;      // +0x08 (non-null means events are enabled)
    void* callbackUserData = nullptr;      // +0x0c user data passed to the callback
    int lastEntry = 0;                     // +0x10 entry index of the last update, used to skip a repeated entry
    SEventKeyTable* keyTable = nullptr;    // +0x14 event key table
};

template <>
void CEventsManager::dispatchEventsEx<int, 1000>(int firstEntry, int lastEntry, int time);
template <>
void CEventsManager::dispatchEventsEx<unsigned short, 30>(int firstEntry, int lastEntry, int time);
template <>
void CEventsManager::dispatchEventsEx<unsigned char, 30>(int firstEntry, int lastEntry, int time);
template <>
int CEventsManager::getEventTimeFromEventNameEx<int, 1000>(const char* eventName);
template <>
int CEventsManager::getEventTimeFromEventNameEx<unsigned short, 30>(const char* eventName);
template <>
int CEventsManager::getEventTimeFromEventNameEx<unsigned char, 30>(const char* eventName);

}  // namespace glitch::collada
