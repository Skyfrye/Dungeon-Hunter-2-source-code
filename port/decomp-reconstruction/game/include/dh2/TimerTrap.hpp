// TimerTrap: a TriggerTrap that re-arms itself. Its delay comes from the Arrays::TimerTraps row (stride 32,
// delay at +8). SpecificUpdate counts m_timer down by the frame time; when it runs out the trap calls Activate
// and reloads the delay, and while the trap is active it transfers victims. Summoned through Create
// (the Lua binding is named SummonTimerTrap). Create spawns the object and checks its GO id against 16.
// Original 32-bit size 0x408 (1032): TriggerTrap (0x404) plus m_timer. No operator new size is recorded
// in class-facts, so the size is derived from the constructor and SpecificUpdate.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x39da54 / 0x39da9c, dtor 0x39d9b0 / 0x39d9f8 / 0x39da14).
#pragma once

#include <cstdint>

#include "dh2/TriggerTrap.hpp"

class GameObject;

class TimerTrap : public TriggerTrap {
public:
    explicit TimerTrap(ObjectBase::GO_IDS id);                          // 0x39da54 (C1) / 0x39da9c (C2); m_timer starts at 0
    ~TimerTrap() override;                                              // 0x39d9b0 (D1), 0x39d9f8 (D0), 0x39da14 (D2)

    // Overrides of TriggerTrap / ZoneEx / Zone / GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x39d9a4, a thunk to TriggerTrap::DeclareProperties
    void InitPost() override;                                           // slot 0x1c: 0x39d978, TriggerTrap::InitPost then m_timer = GetDelay()
    int GetDataId() const override;                                     // slot 0xd8: 0x39d904 index of "data" in Arrays::TimerTraps
    const char* GetScript() const override;                             // slot 0xdc: 0x39d524 script name of the data row
    int GetVisual() const override;                                     // slot 0xe0: 0x39d568 visual index of the data row
    int GetDamagerId() const override;                                  // slot 0xe4: 0x39d59c the data row's damager (+0x04), or m_dataIndex (-1) without a row; m_damagerIndex is not read
    int GetHurtChance() const override;                                 // slot 0xe8: 0x39d5d0 m_damagerIndex when set, else the data row's hurt chance (+0x0c)
    int GetSound() const override;                                      // slot 0xec: 0x39d61c sound index of the data row
    void SpecificUpdate() override;                                     // slot 0xf4: 0x39d688 counts m_timer down; reloads and Activates at zero, then TransferVictims while active

    // New virtual at vtable slot 0xf8 (not in TriggerTrap).
    virtual int GetDelay() const;                                       // slot 0xf8: 0x39d650 delay of the data row, 0 when m_dataIndex is -1

    // Creates a TimerTrap row owned by owner, with trapIndex into Arrays::TimerTraps and damagerIndex into Arrays::GameObjectDamager.
    static GameObject* Create(GameObject* owner, int trapIndex, int damagerIndex);  // 0x39d724

    // TriggerTrap occupies +0x000 .. +0x403.
    int m_timer;                                                        // +0x404 remaining time before the next activation, ms; SpecificUpdate subtracts the frame time
};
