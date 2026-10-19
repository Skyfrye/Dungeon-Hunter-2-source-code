// GameEventManager: owns one GameEvent per row of Arrays::v2Events, built by Load and indexed by id or name.
// Original 32-bit size 0x0c (12): operator new(12) in the game's manager setup. The container is an STLport
// 32-bit std::vector (three pointers); the offsets below are the original ones.
// Not polymorphic: no vtable.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x479cf4, dtor 0x479bec).
#pragma once

#include <vector>

class GameEvent;

class GameEventManager {
public:
    GameEventManager();                                                 // 0x479cf4 / 0x479d08
    ~GameEventManager();                                                // 0x479bec, 0x479f34

    void Load();                                                        // 0x479e5c creates one GameEvent per Arrays::v2Events row
    void Unload();                                                      // 0x479968 deletes every event and empties the list
    void ReInit();                                                      // 0x47992c
    void Update();                                                      // 0x4798c8 profiled GameEvent::Update loop
    void Compile();                                                     // 0x47977c

    GameEvent* GetEventByID(int id) const;                              // 0x4796f0 null when id is out of range
    GameEvent* GetEventByName(const char* name) const;                  // 0x479848 null when no row has that name
    void DBG_TraceDetailedInformation() const;                          // 0x479814

    // Calls a member function on every event in the list (0x479718 for non-const, 0x4797b0 for const).
    void LoopOnAllEvents(void (GameEvent::*method)());
    void LoopOnAllEvents(void (GameEvent::*method)() const) const;

    // +0x00 begin, +0x04 end, +0x08 capacity of the event pointer vector.
    std::vector<GameEvent*> m_events;                                   // +0x00
};
