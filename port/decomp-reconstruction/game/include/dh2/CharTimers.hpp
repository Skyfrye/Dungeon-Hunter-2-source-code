// CharTimers: per-character timer bank, embedded by value in Character at +0x3b4 (948).
// Original 32-bit size 0x14 (vtable, owner, std::vector<_Timer>).
#pragma once

#include <cstdint>
#include <vector>

class Character;

class CharTimers {
public:
    // Public view of a timer, handed to event handlers (CharProperties::BuffExpired takes a Timer*).
    class Timer {
    public:
        virtual unsigned int GetID() const = 0;  // slot 0
        virtual void* GetRef() const = 0;        // slot 1
    };

    // One timer slot, 32 bytes in the original. Slots are reused once m_active is cleared.
    class _Timer : public Timer {
    public:
        // Vtable (_ZTVN10CharTimers6_TimerE, 16 bytes): slot 0 GetID, slot 1 GetRef.
        unsigned int GetID() const override;     // 0x3db288 returns m_id
        void* GetRef() const override;           // 0x3db290 returns m_userData

        // _vptr                                 // +0x00
        uint32_t m_id;                           // +0x04 slot index, returned by TMR_Start
        int32_t m_repeat;                        // +0x08 remaining fires; <0 repeats forever, 0 stops after the next fire
        uint32_t m_interval;                     // +0x0c duration in ms
        uint32_t m_elapsed;                      // +0x10 ms accumulated towards m_interval
        bool m_active;                           // +0x14
        bool m_paused;                           // +0x15
        uint8_t pad_16[2];                       // +0x16
        int32_t m_eventId;                       // +0x18 Character event raised on fire (-1 raises event 41 instead)
        void* m_userData;                        // +0x1c passed to Character::RaiseEvent
    };

    CharTimers();                                // 0x3dbb58
    virtual ~CharTimers();                       // vtable slot 0 (0x3db3fc / 0x3db430 / 0x3db464)

    void SetCharacter(Character* c);             // 0x3db480
    void Update();                               // 0x3db640

    // Returns the slot id, or -1 when no slot could be obtained.
    int TMR_Start(unsigned int durationMs, int repeat, int eventId, void* userData);  // 0x3dbe24
    void TMR_Pause(unsigned int id);             // 0x3db298
    void TMR_Resume(unsigned int id);            // 0x3db2b8
    void TMR_Stop(unsigned int id);              // 0x3db2d8
    void TMR_StopAll();                          // 0x3db2f8
    bool TMR_TimeLeft(unsigned int id, unsigned int& elapsed, unsigned int& interval) const;  // 0x3db344

public:
    _Timer* _findTimerSlot();                    // 0x3dbd70

    // _vptr                                     // +0x00
    Character* m_character;                      // +0x04
    std::vector<_Timer> m_timers;                // +0x08 (begin/end/cap, 12 bytes in the original, reserved in the ctor)
};
