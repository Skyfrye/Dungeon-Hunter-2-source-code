#pragma once

// Structs::ItemPowerRef and the 40 Structs::ItemPower* classes that derive from it (slice structs_4,
// pydata-accessors). Destructors only: D1/D2 is the destructor and D0 the deleting destructor
// (DeletingDestructor). The element array is the word at +0x10 (m_w4); its element stride is 16 and its
// block starts 8 bytes before the first element (see the .cpp). No other field is touched by these rows,
// so m_w1..m_w3 (+0x4..+0x8) are not declared. The element type is pydata::ArrayElement.
// ItemPowerRef is the same class as the name table in member_names.hpp (m_dataNames and kCount are members of it).
#include <cstdint>

#include "pydata-accessors/w7_structs_3.hpp"  // ItemPowerRef (superset layout)

namespace Structs {



// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerWandDamageBonus* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerStaffDamageBonus* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerRangeDamageBonus* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerDaggerDamageBonus* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerMaceDamageBonus* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerAxeDamageBonus* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerSwordDamageBonus* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerSpellToHit* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerSpellCritical* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerManaLeech* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerLifeLeech* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerResistAll* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerResistElectrical* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerResistAir* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerResistWater* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerResistEarth* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerResistFire* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerDR* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerAR* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerToHit* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerDamage* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerArmor* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerBlock* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerDodge* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerCritical* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerMPRegen* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerHPRegen* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerMP* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerHP* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerFireDotDamage* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerWaterDotDamage* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerEarthDotDamage* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerElectricalDamage* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerAirDamage* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerWaterDamage* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerEarthDamage* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerFireDamage* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerEnergy* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerEndurance* self);

// Derived from ItemPowerRef, no fields of its own.
void DeletingDestructor(ItemPowerDexterity* self);

}  // namespace Structs
