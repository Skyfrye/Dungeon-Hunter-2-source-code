// Structs::ItemPowerRef and Structs::ItemPower*  destructors, slice structs_4 (written for the decomp
// wave, see NOTES.md "Structs records" and "Arrays element ABI"). Hand-maintained source (Track B
// decision 7); no generator for this slice is in the tree. Each class's D1 and D2 are one C++
// destructor; both addresses are in the comment. D0 is DeletingDestructor (self->X::~X(), then CustomFree).
#include <cstddef>
#include <cstdint>

#include "pydata-accessors/array_element.hpp"
#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/w7_structs_4.hpp"

namespace {

// Element loop of the ItemPowerRef destructor (listing: the vtable slot +0x0 of each AttrBonusEntry element runs
// from the last element back to the first, then CustomFree(members - 8); the listing stride is 16, kept in the
// stride word of the block, and the host elements are walked through the typed pointer). members is the word at
// +0x10 and is never cleared by the original, so a second call on the same pointer reads freed memory (a double
// free in the original, kept as listed).
void DestroyElementArray(void* members_value) {
    pydata::DeleteElementTable<Structs::AttrBonusEntry>(members_value);
}

}  // namespace

namespace Structs {

// 0x4d6958 _ZN7Structs12ItemPowerRefD1Ev
// 0x4d69f0 _ZN7Structs12ItemPowerRefD2Ev
ItemPowerRef::~ItemPowerRef() {
    DestroyElementArray(AttrBonusList);
}

// 0x4d69d4 _ZN7Structs12ItemPowerRefD0Ev
void DeletingDestructor(ItemPowerRef* self) {
    self->ItemPowerRef::~ItemPowerRef();
    CustomFree(self);
}

// 0x4d6a6c _ZN7Structs24ItemPowerWandDamageBonusD1Ev
// 0x4d6b0c _ZN7Structs24ItemPowerWandDamageBonusD2Ev
ItemPowerWandDamageBonus::~ItemPowerWandDamageBonus() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d6af0 _ZN7Structs24ItemPowerWandDamageBonusD0Ev
void DeletingDestructor(ItemPowerWandDamageBonus* self) {
    self->ItemPowerWandDamageBonus::~ItemPowerWandDamageBonus();
    CustomFree(self);
}

// 0x4d6b90 _ZN7Structs25ItemPowerStaffDamageBonusD1Ev
// 0x4d6c30 _ZN7Structs25ItemPowerStaffDamageBonusD2Ev
ItemPowerStaffDamageBonus::~ItemPowerStaffDamageBonus() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d6c14 _ZN7Structs25ItemPowerStaffDamageBonusD0Ev
void DeletingDestructor(ItemPowerStaffDamageBonus* self) {
    self->ItemPowerStaffDamageBonus::~ItemPowerStaffDamageBonus();
    CustomFree(self);
}

// 0x4d6cb4 _ZN7Structs25ItemPowerRangeDamageBonusD1Ev
// 0x4d6d54 _ZN7Structs25ItemPowerRangeDamageBonusD2Ev
ItemPowerRangeDamageBonus::~ItemPowerRangeDamageBonus() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d6d38 _ZN7Structs25ItemPowerRangeDamageBonusD0Ev
void DeletingDestructor(ItemPowerRangeDamageBonus* self) {
    self->ItemPowerRangeDamageBonus::~ItemPowerRangeDamageBonus();
    CustomFree(self);
}

// 0x4d6dd8 _ZN7Structs26ItemPowerDaggerDamageBonusD1Ev
// 0x4d6e78 _ZN7Structs26ItemPowerDaggerDamageBonusD2Ev
ItemPowerDaggerDamageBonus::~ItemPowerDaggerDamageBonus() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d6e5c _ZN7Structs26ItemPowerDaggerDamageBonusD0Ev
void DeletingDestructor(ItemPowerDaggerDamageBonus* self) {
    self->ItemPowerDaggerDamageBonus::~ItemPowerDaggerDamageBonus();
    CustomFree(self);
}

// 0x4d6efc _ZN7Structs24ItemPowerMaceDamageBonusD1Ev
// 0x4d6f9c _ZN7Structs24ItemPowerMaceDamageBonusD2Ev
ItemPowerMaceDamageBonus::~ItemPowerMaceDamageBonus() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d6f80 _ZN7Structs24ItemPowerMaceDamageBonusD0Ev
void DeletingDestructor(ItemPowerMaceDamageBonus* self) {
    self->ItemPowerMaceDamageBonus::~ItemPowerMaceDamageBonus();
    CustomFree(self);
}

// 0x4d7020 _ZN7Structs23ItemPowerAxeDamageBonusD1Ev
// 0x4d70c0 _ZN7Structs23ItemPowerAxeDamageBonusD2Ev
ItemPowerAxeDamageBonus::~ItemPowerAxeDamageBonus() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d70a4 _ZN7Structs23ItemPowerAxeDamageBonusD0Ev
void DeletingDestructor(ItemPowerAxeDamageBonus* self) {
    self->ItemPowerAxeDamageBonus::~ItemPowerAxeDamageBonus();
    CustomFree(self);
}

// 0x4d7144 _ZN7Structs25ItemPowerSwordDamageBonusD1Ev
// 0x4d71e4 _ZN7Structs25ItemPowerSwordDamageBonusD2Ev
ItemPowerSwordDamageBonus::~ItemPowerSwordDamageBonus() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d71c8 _ZN7Structs25ItemPowerSwordDamageBonusD0Ev
void DeletingDestructor(ItemPowerSwordDamageBonus* self) {
    self->ItemPowerSwordDamageBonus::~ItemPowerSwordDamageBonus();
    CustomFree(self);
}

// 0x4d7268 _ZN7Structs19ItemPowerSpellToHitD1Ev
// 0x4d7308 _ZN7Structs19ItemPowerSpellToHitD2Ev
ItemPowerSpellToHit::~ItemPowerSpellToHit() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d72ec _ZN7Structs19ItemPowerSpellToHitD0Ev
void DeletingDestructor(ItemPowerSpellToHit* self) {
    self->ItemPowerSpellToHit::~ItemPowerSpellToHit();
    CustomFree(self);
}

// 0x4d738c _ZN7Structs22ItemPowerSpellCriticalD1Ev
// 0x4d742c _ZN7Structs22ItemPowerSpellCriticalD2Ev
ItemPowerSpellCritical::~ItemPowerSpellCritical() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d7410 _ZN7Structs22ItemPowerSpellCriticalD0Ev
void DeletingDestructor(ItemPowerSpellCritical* self) {
    self->ItemPowerSpellCritical::~ItemPowerSpellCritical();
    CustomFree(self);
}

// 0x4d74b0 _ZN7Structs18ItemPowerManaLeechD1Ev
// 0x4d7550 _ZN7Structs18ItemPowerManaLeechD2Ev
ItemPowerManaLeech::~ItemPowerManaLeech() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d7534 _ZN7Structs18ItemPowerManaLeechD0Ev
void DeletingDestructor(ItemPowerManaLeech* self) {
    self->ItemPowerManaLeech::~ItemPowerManaLeech();
    CustomFree(self);
}

// 0x4d75d4 _ZN7Structs18ItemPowerLifeLeechD1Ev
// 0x4d7674 _ZN7Structs18ItemPowerLifeLeechD2Ev
ItemPowerLifeLeech::~ItemPowerLifeLeech() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d7658 _ZN7Structs18ItemPowerLifeLeechD0Ev
void DeletingDestructor(ItemPowerLifeLeech* self) {
    self->ItemPowerLifeLeech::~ItemPowerLifeLeech();
    CustomFree(self);
}

// 0x4d76f8 _ZN7Structs18ItemPowerResistAllD1Ev
// 0x4d7798 _ZN7Structs18ItemPowerResistAllD2Ev
ItemPowerResistAll::~ItemPowerResistAll() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d777c _ZN7Structs18ItemPowerResistAllD0Ev
void DeletingDestructor(ItemPowerResistAll* self) {
    self->ItemPowerResistAll::~ItemPowerResistAll();
    CustomFree(self);
}

// 0x4d781c _ZN7Structs25ItemPowerResistElectricalD1Ev
// 0x4d78bc _ZN7Structs25ItemPowerResistElectricalD2Ev
ItemPowerResistElectrical::~ItemPowerResistElectrical() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d78a0 _ZN7Structs25ItemPowerResistElectricalD0Ev
void DeletingDestructor(ItemPowerResistElectrical* self) {
    self->ItemPowerResistElectrical::~ItemPowerResistElectrical();
    CustomFree(self);
}

// 0x4d7940 _ZN7Structs18ItemPowerResistAirD1Ev
// 0x4d79e0 _ZN7Structs18ItemPowerResistAirD2Ev
ItemPowerResistAir::~ItemPowerResistAir() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d79c4 _ZN7Structs18ItemPowerResistAirD0Ev
void DeletingDestructor(ItemPowerResistAir* self) {
    self->ItemPowerResistAir::~ItemPowerResistAir();
    CustomFree(self);
}

// 0x4d7a64 _ZN7Structs20ItemPowerResistWaterD1Ev
// 0x4d7b04 _ZN7Structs20ItemPowerResistWaterD2Ev
ItemPowerResistWater::~ItemPowerResistWater() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d7ae8 _ZN7Structs20ItemPowerResistWaterD0Ev
void DeletingDestructor(ItemPowerResistWater* self) {
    self->ItemPowerResistWater::~ItemPowerResistWater();
    CustomFree(self);
}

// 0x4d7b88 _ZN7Structs20ItemPowerResistEarthD1Ev
// 0x4d7c28 _ZN7Structs20ItemPowerResistEarthD2Ev
ItemPowerResistEarth::~ItemPowerResistEarth() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d7c0c _ZN7Structs20ItemPowerResistEarthD0Ev
void DeletingDestructor(ItemPowerResistEarth* self) {
    self->ItemPowerResistEarth::~ItemPowerResistEarth();
    CustomFree(self);
}

// 0x4d7cac _ZN7Structs19ItemPowerResistFireD1Ev
// 0x4d7d4c _ZN7Structs19ItemPowerResistFireD2Ev
ItemPowerResistFire::~ItemPowerResistFire() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d7d30 _ZN7Structs19ItemPowerResistFireD0Ev
void DeletingDestructor(ItemPowerResistFire* self) {
    self->ItemPowerResistFire::~ItemPowerResistFire();
    CustomFree(self);
}

// 0x4d7dd0 _ZN7Structs11ItemPowerDRD1Ev
// 0x4d7e70 _ZN7Structs11ItemPowerDRD2Ev
ItemPowerDR::~ItemPowerDR() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d7e54 _ZN7Structs11ItemPowerDRD0Ev
void DeletingDestructor(ItemPowerDR* self) {
    self->ItemPowerDR::~ItemPowerDR();
    CustomFree(self);
}

// 0x4d7ef4 _ZN7Structs11ItemPowerARD1Ev
// 0x4d7f94 _ZN7Structs11ItemPowerARD2Ev
ItemPowerAR::~ItemPowerAR() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d7f78 _ZN7Structs11ItemPowerARD0Ev
void DeletingDestructor(ItemPowerAR* self) {
    self->ItemPowerAR::~ItemPowerAR();
    CustomFree(self);
}

// 0x4d8018 _ZN7Structs14ItemPowerToHitD1Ev
// 0x4d80b8 _ZN7Structs14ItemPowerToHitD2Ev
ItemPowerToHit::~ItemPowerToHit() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d809c _ZN7Structs14ItemPowerToHitD0Ev
void DeletingDestructor(ItemPowerToHit* self) {
    self->ItemPowerToHit::~ItemPowerToHit();
    CustomFree(self);
}

// 0x4d813c _ZN7Structs15ItemPowerDamageD1Ev
// 0x4d81dc _ZN7Structs15ItemPowerDamageD2Ev
ItemPowerDamage::~ItemPowerDamage() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d81c0 _ZN7Structs15ItemPowerDamageD0Ev
void DeletingDestructor(ItemPowerDamage* self) {
    self->ItemPowerDamage::~ItemPowerDamage();
    CustomFree(self);
}

// 0x4d8260 _ZN7Structs14ItemPowerArmorD1Ev
// 0x4d8300 _ZN7Structs14ItemPowerArmorD2Ev
ItemPowerArmor::~ItemPowerArmor() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d82e4 _ZN7Structs14ItemPowerArmorD0Ev
void DeletingDestructor(ItemPowerArmor* self) {
    self->ItemPowerArmor::~ItemPowerArmor();
    CustomFree(self);
}

// 0x4d8384 _ZN7Structs14ItemPowerBlockD1Ev
// 0x4d8424 _ZN7Structs14ItemPowerBlockD2Ev
ItemPowerBlock::~ItemPowerBlock() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d8408 _ZN7Structs14ItemPowerBlockD0Ev
void DeletingDestructor(ItemPowerBlock* self) {
    self->ItemPowerBlock::~ItemPowerBlock();
    CustomFree(self);
}

// 0x4d84a8 _ZN7Structs14ItemPowerDodgeD1Ev
// 0x4d8548 _ZN7Structs14ItemPowerDodgeD2Ev
ItemPowerDodge::~ItemPowerDodge() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d852c _ZN7Structs14ItemPowerDodgeD0Ev
void DeletingDestructor(ItemPowerDodge* self) {
    self->ItemPowerDodge::~ItemPowerDodge();
    CustomFree(self);
}

// 0x4d85cc _ZN7Structs17ItemPowerCriticalD1Ev
// 0x4d866c _ZN7Structs17ItemPowerCriticalD2Ev
ItemPowerCritical::~ItemPowerCritical() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d8650 _ZN7Structs17ItemPowerCriticalD0Ev
void DeletingDestructor(ItemPowerCritical* self) {
    self->ItemPowerCritical::~ItemPowerCritical();
    CustomFree(self);
}

// 0x4d86f0 _ZN7Structs16ItemPowerMPRegenD1Ev
// 0x4d8790 _ZN7Structs16ItemPowerMPRegenD2Ev
ItemPowerMPRegen::~ItemPowerMPRegen() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d8774 _ZN7Structs16ItemPowerMPRegenD0Ev
void DeletingDestructor(ItemPowerMPRegen* self) {
    self->ItemPowerMPRegen::~ItemPowerMPRegen();
    CustomFree(self);
}

// 0x4d8814 _ZN7Structs16ItemPowerHPRegenD1Ev
// 0x4d88b4 _ZN7Structs16ItemPowerHPRegenD2Ev
ItemPowerHPRegen::~ItemPowerHPRegen() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d8898 _ZN7Structs16ItemPowerHPRegenD0Ev
void DeletingDestructor(ItemPowerHPRegen* self) {
    self->ItemPowerHPRegen::~ItemPowerHPRegen();
    CustomFree(self);
}

// 0x4d8938 _ZN7Structs11ItemPowerMPD1Ev
// 0x4d89d8 _ZN7Structs11ItemPowerMPD2Ev
ItemPowerMP::~ItemPowerMP() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d89bc _ZN7Structs11ItemPowerMPD0Ev
void DeletingDestructor(ItemPowerMP* self) {
    self->ItemPowerMP::~ItemPowerMP();
    CustomFree(self);
}

// 0x4d8a5c _ZN7Structs11ItemPowerHPD1Ev
// 0x4d8afc _ZN7Structs11ItemPowerHPD2Ev
ItemPowerHP::~ItemPowerHP() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d8ae0 _ZN7Structs11ItemPowerHPD0Ev
void DeletingDestructor(ItemPowerHP* self) {
    self->ItemPowerHP::~ItemPowerHP();
    CustomFree(self);
}

// 0x4d8b80 _ZN7Structs22ItemPowerFireDotDamageD1Ev
// 0x4d8c20 _ZN7Structs22ItemPowerFireDotDamageD2Ev
ItemPowerFireDotDamage::~ItemPowerFireDotDamage() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d8c04 _ZN7Structs22ItemPowerFireDotDamageD0Ev
void DeletingDestructor(ItemPowerFireDotDamage* self) {
    self->ItemPowerFireDotDamage::~ItemPowerFireDotDamage();
    CustomFree(self);
}

// 0x4d8ca4 _ZN7Structs23ItemPowerWaterDotDamageD1Ev
// 0x4d8d44 _ZN7Structs23ItemPowerWaterDotDamageD2Ev
ItemPowerWaterDotDamage::~ItemPowerWaterDotDamage() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d8d28 _ZN7Structs23ItemPowerWaterDotDamageD0Ev
void DeletingDestructor(ItemPowerWaterDotDamage* self) {
    self->ItemPowerWaterDotDamage::~ItemPowerWaterDotDamage();
    CustomFree(self);
}

// 0x4d8dc8 _ZN7Structs23ItemPowerEarthDotDamageD1Ev
// 0x4d8e68 _ZN7Structs23ItemPowerEarthDotDamageD2Ev
ItemPowerEarthDotDamage::~ItemPowerEarthDotDamage() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d8e4c _ZN7Structs23ItemPowerEarthDotDamageD0Ev
void DeletingDestructor(ItemPowerEarthDotDamage* self) {
    self->ItemPowerEarthDotDamage::~ItemPowerEarthDotDamage();
    CustomFree(self);
}

// 0x4d8eec _ZN7Structs25ItemPowerElectricalDamageD1Ev
// 0x4d8f8c _ZN7Structs25ItemPowerElectricalDamageD2Ev
ItemPowerElectricalDamage::~ItemPowerElectricalDamage() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d8f70 _ZN7Structs25ItemPowerElectricalDamageD0Ev
void DeletingDestructor(ItemPowerElectricalDamage* self) {
    self->ItemPowerElectricalDamage::~ItemPowerElectricalDamage();
    CustomFree(self);
}

// 0x4d9010 _ZN7Structs18ItemPowerAirDamageD1Ev
// 0x4d90b0 _ZN7Structs18ItemPowerAirDamageD2Ev
ItemPowerAirDamage::~ItemPowerAirDamage() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d9094 _ZN7Structs18ItemPowerAirDamageD0Ev
void DeletingDestructor(ItemPowerAirDamage* self) {
    self->ItemPowerAirDamage::~ItemPowerAirDamage();
    CustomFree(self);
}

// 0x4d9134 _ZN7Structs20ItemPowerWaterDamageD1Ev
// 0x4d91d4 _ZN7Structs20ItemPowerWaterDamageD2Ev
ItemPowerWaterDamage::~ItemPowerWaterDamage() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d91b8 _ZN7Structs20ItemPowerWaterDamageD0Ev
void DeletingDestructor(ItemPowerWaterDamage* self) {
    self->ItemPowerWaterDamage::~ItemPowerWaterDamage();
    CustomFree(self);
}

// 0x4d9258 _ZN7Structs20ItemPowerEarthDamageD1Ev
// 0x4d92f8 _ZN7Structs20ItemPowerEarthDamageD2Ev
ItemPowerEarthDamage::~ItemPowerEarthDamage() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d92dc _ZN7Structs20ItemPowerEarthDamageD0Ev
void DeletingDestructor(ItemPowerEarthDamage* self) {
    self->ItemPowerEarthDamage::~ItemPowerEarthDamage();
    CustomFree(self);
}

// 0x4d937c _ZN7Structs19ItemPowerFireDamageD1Ev
// 0x4d941c _ZN7Structs19ItemPowerFireDamageD2Ev
ItemPowerFireDamage::~ItemPowerFireDamage() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d9400 _ZN7Structs19ItemPowerFireDamageD0Ev
void DeletingDestructor(ItemPowerFireDamage* self) {
    self->ItemPowerFireDamage::~ItemPowerFireDamage();
    CustomFree(self);
}

// 0x4d94a0 _ZN7Structs15ItemPowerEnergyD1Ev
// 0x4d9540 _ZN7Structs15ItemPowerEnergyD2Ev
ItemPowerEnergy::~ItemPowerEnergy() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d9524 _ZN7Structs15ItemPowerEnergyD0Ev
void DeletingDestructor(ItemPowerEnergy* self) {
    self->ItemPowerEnergy::~ItemPowerEnergy();
    CustomFree(self);
}

// 0x4d95c4 _ZN7Structs18ItemPowerEnduranceD1Ev
// 0x4d9664 _ZN7Structs18ItemPowerEnduranceD2Ev
ItemPowerEndurance::~ItemPowerEndurance() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d9648 _ZN7Structs18ItemPowerEnduranceD0Ev
void DeletingDestructor(ItemPowerEndurance* self) {
    self->ItemPowerEndurance::~ItemPowerEndurance();
    CustomFree(self);
}

// 0x4d96e8 _ZN7Structs18ItemPowerDexterityD1Ev
// 0x4d9788 _ZN7Structs18ItemPowerDexterityD2Ev
ItemPowerDexterity::~ItemPowerDexterity() {
    DestroyElementArray(AttrBonusList);
    // The base destructor (ItemPowerRef, listing) runs after this body and repeats the loop on the same m_w4.
}

// 0x4d976c _ZN7Structs18ItemPowerDexterityD0Ev
void DeletingDestructor(ItemPowerDexterity* self) {
    self->ItemPowerDexterity::~ItemPowerDexterity();
    CustomFree(self);
}

// 0x4d980c _ZN7Structs17ItemPowerStrengthD1Ev
// 0x4d98ac _ZN7Structs17ItemPowerStrengthD2Ev
// Listing 0x4d980c: LDR r1,[this+0x10]; store the class vtable; when r1 is set, walk its 16-byte elements from
// the last back to the first through vtable slot +0x0, then CustomFree(members - 8); then
// Structs::ItemPowerRef::~ItemPowerRef (BL 0x4d69f0) repeats the loop. DestroyElementArray does the walk and
// the free, and the base destructor runs after this body, so the double free the listing has is kept.
ItemPowerStrength::~ItemPowerStrength() {
    DestroyElementArray(AttrBonusList);
}

// 0x4d9890 _ZN7Structs17ItemPowerStrengthD0Ev
void DeletingDestructor(ItemPowerStrength* self) {
    self->ItemPowerStrength::~ItemPowerStrength();
    CustomFree(self);
}

// 0x4d9930 _ZN7Structs17ItemPowerAllStatsD1Ev
// 0x4d99d0 _ZN7Structs17ItemPowerAllStatsD2Ev
// Same body as ItemPowerStrength's destructor at 0x4d980c (the only difference is the stored vtable,
// off_96B338 against off_96B320); ItemPowerRef::~ItemPowerRef runs after it here too.
ItemPowerAllStats::~ItemPowerAllStats() {
    DestroyElementArray(AttrBonusList);
}

// 0x4d99b4 _ZN7Structs17ItemPowerAllStatsD0Ev
void DeletingDestructor(ItemPowerAllStats* self) {
    self->ItemPowerAllStats::~ItemPowerAllStats();
    CustomFree(self);
}

}  // namespace Structs
