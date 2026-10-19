// ProjectileTrap: a TimerTrap that spawns a projectile each time its timer runs out while it is active.
// Its data row (Arrays::ProjectileTraps, stride 40) gives Damage, Delay, HurtChance, IsActive, Projectile,
// Script, Sound and Visual. Script_ActivateProjectileTrap and Script_DeactivateProjectileTrap set m_active.
// Summoned through Create, which checks the GO id against 17.
// Original 32-bit size not recorded in class-facts. The members below are known through +0x40c.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x39d280 / 0x39d2c0, dtor 0x39d1dc / 0x39d224 / 0x39d240).
// The secondary vtable pointers at +0x04 and +0x24 belong to ObjectBase and are not declared here.
#pragma once

#include "dh2/TimerTrap.hpp"

class GameObject;
class Projectile;

class ProjectileTrap : public TimerTrap {
public:
    explicit ProjectileTrap(ObjectBase::GO_IDS id);                     // 0x39d280 (C1) / 0x39d2c0 (C2); the ctor only sets the vtable pointers
    ~ProjectileTrap() override;                                         // 0x39d1dc (D1), 0x39d224 (D0), 0x39d240 (D2)

    // Overrides of TimerTrap / TriggerTrap / ZoneEx / Zone / GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x39d1d0, a thunk to TimerTrap::DeclareProperties
    void InitPost() override;                                           // slot 0x1c: 0x39d16c TimerTrap::InitPost, then m_projectileId and m_active from the row
    int GetDataId() const override;                                     // slot 0xd8: 0x39d0f8 index of "data" in Arrays::ProjectileTraps, -1 when not found
    const char* GetScript() const override;                             // slot 0xdc: 0x39cb2c "" when m_dataIndex is -1, else the row's Script
    int GetVisual() const override;                                     // slot 0xe0: 0x39cb74 the row's Visual, -1 when m_dataIndex is -1
    int GetDamagerId() const override;                                  // slot 0xe4: 0x39cbac the row's Damage, -1 when m_dataIndex is -1
    int GetHurtChance() const override;                                 // slot 0xe8: 0x39cbe4 m_damagerIndex when set, else the row's HurtChance
    int GetSound() const override;                                      // slot 0xec: 0x39cc34 the row's Sound, -1 when m_dataIndex is -1
    void Activate() override;                                           // slot 0xf0: 0x39d430 with a visual at +0x2d8 sets m_activated and runs it, else clears m_victims; then plays GetSound() when m_dataIndex is set
    void SpecificUpdate() override;                                     // slot 0xf4: 0x39cdc4 does nothing while m_active is clear; otherwise counts m_timer down and spawns m_projectileId at zero, then TransferVictims while m_activated
    int GetDelay() const override;                                      // slot 0xf8: 0x39cc6c the row's Delay, 0 when m_dataIndex is -1

    // Creates a ProjectileTrap row owned by owner, with trapIndex into Arrays::ProjectileTraps and damagerIndex into Arrays::GameObjectDamager.
    static GameObject* Create(GameObject* owner, int trapIndex, int damagerIndex);  // 0x39cf18 spawns the object, checks GO id 17, sets m_owner, m_dataIndex, m_data and m_damagerIndex, then InitPost and InitFinal

    // Hit callback given to ProjectileManager::Spawn. Attacks the character hit by p through Character::F_GOAttack
    // and F_ApplyResult, using the owner trap's GetDamagerId and GetHurtChance. Returns 1 when there is no character.
    static int _HandleProjectile(Projectile* p, void* user);            // 0x39cca8; user is not read

    // TimerTrap occupies +0x000 .. +0x407.
    int m_projectileId;                                                 // +0x408 row Projectile, a row of Arrays::ProjectileTable; not set by the ctor; SpecificUpdate spawns it
    bool m_active;                                                      // +0x40c row IsActive at InitPost; Script_ActivateProjectileTrap sets it and Script_DeactivateProjectileTrap clears it
};
