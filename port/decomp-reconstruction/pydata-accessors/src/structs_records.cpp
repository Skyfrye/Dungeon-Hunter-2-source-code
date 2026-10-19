// Structs::X destructors, finalize and read.
// HAND-MAINTAINED SOURCE (Track B decision 7). First produced by gen_structs.py, which is retired
// (Ghidra-era) and must not be rerun; edit this file directly.
#include "pydata-accessors/structs_records.hpp"

namespace Structs {

// 0x4c56a0 _ZN7Structs9AIFactionD2Ev
// 0x4c56a4 _ZN7Structs9AIFactionD1Ev
AIFaction::~AIFaction() {
}

// 0x4ceae4 _ZN7Structs9AIFactionD0Ev
void DeletingDestructor(AIFaction* self) {
    self->AIFaction::~AIFaction();
    CustomFree(self);
}

// 0x4c56a8 _ZN7Structs9AIFaction8finalizeEv
void AIFaction::finalize() {
}

// 0x4eb408 _ZN7Structs9AIFaction4readEP11IStreamBase
void AIFaction::read(IStreamBase* stream) {
    Id = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Value = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4db85c _ZN7Structs7AIPropsD2Ev
// 0x4db800 _ZN7Structs7AIPropsD1Ev
AIProps::~AIProps() {
    if (Script != nullptr) CustomFree(Script);  // +0x2c
}

// 0x4db840 _ZN7Structs7AIPropsD0Ev
void DeletingDestructor(AIProps* self) {
    self->AIProps::~AIProps();
    CustomFree(self);
}

// 0x4db7d8 _ZN7Structs7AIProps8finalizeEv
void AIProps::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);  // +0x2c
        ScriptSize = 0;  // +0x28
        Script = nullptr;
    }
}

// 0x4c6990 _ZN7Structs10SimpleAnimD2Ev
// 0x4c6994 _ZN7Structs10SimpleAnimD1Ev
SimpleAnim::~SimpleAnim() {
}

// 0x4ce438 _ZN7Structs10SimpleAnimD0Ev
void DeletingDestructor(SimpleAnim* self) {
    self->SimpleAnim::~SimpleAnim();
    CustomFree(self);
}

// 0x4c6998 _ZN7Structs10SimpleAnim8finalizeEv
void SimpleAnim::finalize() {
}

// 0x4dbd6c _ZN7Structs10SimpleAnim4readEP11IStreamBase
void SimpleAnim::read(IStreamBase* stream) {
    StreamReader::readAs<std::int16_t>(stream, &AnimID);  // +0x4
    StreamReader::readAs<std::int16_t>(stream, &ResID);  // +0x6
}

// 0x4c699c _ZN7Structs4AnimD2Ev
// 0x4c69d0 _ZN7Structs4AnimD1Ev
Anim::~Anim() {
}

// 0x4ce454 _ZN7Structs4AnimD0Ev
void DeletingDestructor(Anim* self) {
    self->Anim::~Anim();
    CustomFree(self);
}

// 0x4c6a04 _ZN7Structs4Anim8finalizeEv
// thunk: b 0x4c6998, forwards to SimpleAnim::finalize
void Anim::finalize() {
    SimpleAnim::finalize();
}

// 0x4dbe3c _ZN7Structs4Anim4readEP11IStreamBase
void Anim::read(IStreamBase* stream) {
    SimpleAnim::read(stream);
    StreamReader::readAs<std::int16_t>(stream, &OffsetX);  // +0x8
    StreamReader::readAs<std::int16_t>(stream, &OffsetY);  // +0xa
}

// 0x4db614 _ZN7Structs8AnimStepD2Ev
// 0x4db5b8 _ZN7Structs8AnimStepD1Ev
AnimStep::~AnimStep() {
    if (RandomCam != nullptr) CustomFree(RandomCam);  // +0x24
}

// 0x4db5f8 _ZN7Structs8AnimStepD0Ev
void DeletingDestructor(AnimStep* self) {
    self->AnimStep::~AnimStep();
    CustomFree(self);
}

// 0x4db590 _ZN7Structs8AnimStep8finalizeEv
void AnimStep::finalize() {
    if (RandomCam != nullptr) {
        CustomFree(RandomCam);  // +0x24
        RandomCamSize = 0;  // +0x20
        RandomCam = nullptr;
    }
}

// 0x4c573c _ZN7Structs19CharacterPropertiesD2Ev
// 0x4c5740 _ZN7Structs19CharacterPropertiesD1Ev
CharacterProperties::~CharacterProperties() {
}

// 0x4ce4c4 _ZN7Structs19CharacterPropertiesD0Ev
void DeletingDestructor(CharacterProperties* self) {
    self->CharacterProperties::~CharacterProperties();
    CustomFree(self);
}

// 0x4c5744 _ZN7Structs19CharacterProperties8finalizeEv
void CharacterProperties::finalize() {
}

// 0x4f2750 _ZN7Structs19CharacterProperties4readEP11IStreamBase
void CharacterProperties::read(IStreamBase* stream) {
    AIFaction = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    AI = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    AnimTable = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    ModelFile = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    ModularVisual = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    ClassString = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    ClassDescString = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    Effects = StreamReader::readAs<std::int32_t>(stream);  // +0x20
    Sounds = StreamReader::readAs<std::int32_t>(stream);  // +0x24
    Loot = StreamReader::readAs<std::int32_t>(stream);  // +0x28
    Dialogs = StreamReader::readAs<std::int32_t>(stream);  // +0x2c
    RespawnTime = StreamReader::readAs<std::int32_t>(stream);  // +0x30
    Scale_X = StreamReader::readAs<std::int32_t>(stream);  // +0x34
    Scale_Y = StreamReader::readAs<std::int32_t>(stream);  // +0x38
    Scale_Z = StreamReader::readAs<std::int32_t>(stream);  // +0x3c
    Melee_Scale = StreamReader::readAs<std::int32_t>(stream);  // +0x40
    Collision_Scale = StreamReader::readAs<std::int32_t>(stream);  // +0x44
    FX_Scale = StreamReader::readAs<std::int32_t>(stream);  // +0x48
    Name = StreamReader::readAs<std::int32_t>(stream);  // +0x4c
    Level = StreamReader::readAs<std::int32_t>(stream);  // +0x50
    LevelMax = StreamReader::readAs<std::int32_t>(stream);  // +0x54
    LevelMin = StreamReader::readAs<std::int32_t>(stream);  // +0x58
    LevelOffset = StreamReader::readAs<std::int32_t>(stream);  // +0x5c
    KillCount = StreamReader::readAs<std::int32_t>(stream);  // +0x60
    MPLevelKillCount = StreamReader::readAs<std::int32_t>(stream);  // +0x64
    DeathCount = StreamReader::readAs<std::int32_t>(stream);  // +0x68
    ClassID = StreamReader::readAs<std::int32_t>(stream);  // +0x6c
    StatAutoAssignScheme = StreamReader::readAs<std::int32_t>(stream);  // +0x70
    SkillTree = StreamReader::readAs<std::int32_t>(stream);  // +0x74
    FaeryList = StreamReader::readAs<std::int32_t>(stream);  // +0x78
    RangeMinDistance = StreamReader::readAs<std::int32_t>(stream);  // +0x7c
    RangeMaxDistance = StreamReader::readAs<std::int32_t>(stream);  // +0x80
    RangeProjectileID = StreamReader::readAs<std::int32_t>(stream);  // +0x84
    XP = StreamReader::readAs<std::int32_t>(stream);  // +0x88
    Max_XP = StreamReader::readAs<std::int32_t>(stream);  // +0x8c
    Value_XP = StreamReader::readAs<std::int32_t>(stream);  // +0x90
    HP = StreamReader::readAs<std::int32_t>(stream);  // +0x94
    HP_Bonus = StreamReader::readAs<std::int32_t>(stream);  // +0x98
    Max_HP = StreamReader::readAs<std::int32_t>(stream);  // +0x9c
    Regen_HP = StreamReader::readAs<std::int32_t>(stream);  // +0xa0
    CombatRegen_HP = StreamReader::readAs<std::int32_t>(stream);  // +0xa4
    MP = StreamReader::readAs<std::int32_t>(stream);  // +0xa8
    MP_Bonus = StreamReader::readAs<std::int32_t>(stream);  // +0xac
    Max_MP = StreamReader::readAs<std::int32_t>(stream);  // +0xb0
    Regen_MP = StreamReader::readAs<std::int32_t>(stream);  // +0xb4
    CombatRegen_MP = StreamReader::readAs<std::int32_t>(stream);  // +0xb8
    Speed_Modifier_Walk = StreamReader::readAs<std::int32_t>(stream);  // +0xbc
    Speed_Modifier_Rotation = StreamReader::readAs<std::int32_t>(stream);  // +0xc0
    Speed_Modifier_Attack = StreamReader::readAs<std::int32_t>(stream);  // +0xc4
    Opacity_Modifier = StreamReader::readAs<std::int32_t>(stream);  // +0xc8
    Rating_Attack = StreamReader::readAs<std::int32_t>(stream);  // +0xcc
    Rating_Attack_Bonus_Sword = StreamReader::readAs<std::int32_t>(stream);  // +0xd0
    Rating_Attack_Bonus_Axe = StreamReader::readAs<std::int32_t>(stream);  // +0xd4
    Rating_Attack_Bonus_Mace = StreamReader::readAs<std::int32_t>(stream);  // +0xd8
    Rating_Attack_Bonus_Dagger = StreamReader::readAs<std::int32_t>(stream);  // +0xdc
    Rating_Attack_Bonus_Range = StreamReader::readAs<std::int32_t>(stream);  // +0xe0
    Rating_Attack_Bonus_Staff = StreamReader::readAs<std::int32_t>(stream);  // +0xe4
    Rating_Attack_Bonus_Wand = StreamReader::readAs<std::int32_t>(stream);  // +0xe8
    Rating_Attack_Bonus_Dual = StreamReader::readAs<std::int32_t>(stream);  // +0xec
    Rating_Defense = StreamReader::readAs<std::int32_t>(stream);  // +0xf0
    Rating_Dodge = StreamReader::readAs<std::int32_t>(stream);  // +0xf4
    Rating_Block = StreamReader::readAs<std::int32_t>(stream);  // +0xf8
    Rating_Block_Bonus_Shield = StreamReader::readAs<std::int32_t>(stream);  // +0xfc
    Rating_Critical = StreamReader::readAs<std::int32_t>(stream);  // +0x100
    Rating_Critical_Bonus_Sword = StreamReader::readAs<std::int32_t>(stream);  // +0x104
    Rating_Critical_Bonus_Axe = StreamReader::readAs<std::int32_t>(stream);  // +0x108
    Rating_Critical_Bonus_Mace = StreamReader::readAs<std::int32_t>(stream);  // +0x10c
    Rating_Critical_Bonus_Dagger = StreamReader::readAs<std::int32_t>(stream);  // +0x110
    Rating_Critical_Bonus_Range = StreamReader::readAs<std::int32_t>(stream);  // +0x114
    Rating_Critical_Bonus_Staff = StreamReader::readAs<std::int32_t>(stream);  // +0x118
    Rating_Critical_Bonus_Wand = StreamReader::readAs<std::int32_t>(stream);  // +0x11c
    Physical_Armor = StreamReader::readAs<std::int32_t>(stream);  // +0x120
    Physical_Armor_Bonus_Shield = StreamReader::readAs<std::int32_t>(stream);  // +0x124
    Magical_Armor = StreamReader::readAs<std::int32_t>(stream);  // +0x128
    Resistance_Fire = StreamReader::readAs<std::int32_t>(stream);  // +0x12c
    Resistance_Water = StreamReader::readAs<std::int32_t>(stream);  // +0x130
    Resistance_Lightning = StreamReader::readAs<std::int32_t>(stream);  // +0x134
    Resistance_Earth = StreamReader::readAs<std::int32_t>(stream);  // +0x138
    Resistance_Air = StreamReader::readAs<std::int32_t>(stream);  // +0x13c
    Damage_Min_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x140
    Damage_Max_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x144
    Damage_Min_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x148
    Damage_Max_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x14c
    Damage_Bonus_Sword = StreamReader::readAs<std::int32_t>(stream);  // +0x150
    Damage_Bonus_Axe = StreamReader::readAs<std::int32_t>(stream);  // +0x154
    Damage_Bonus_Mace = StreamReader::readAs<std::int32_t>(stream);  // +0x158
    Damage_Bonus_Dagger = StreamReader::readAs<std::int32_t>(stream);  // +0x15c
    Damage_Bonus_Range = StreamReader::readAs<std::int32_t>(stream);  // +0x160
    Damage_Bonus_Staff = StreamReader::readAs<std::int32_t>(stream);  // +0x164
    Damage_Bonus_Wand = StreamReader::readAs<std::int32_t>(stream);  // +0x168
    Damage_Bonus_Dual = StreamReader::readAs<std::int32_t>(stream);  // +0x16c
    Damage_Bonus_TwoHand = StreamReader::readAs<std::int32_t>(stream);  // +0x170
    Damage_Bonus_Stunned = StreamReader::readAs<std::int32_t>(stream);  // +0x174
    Damage_Bonus_Sneaking = StreamReader::readAs<std::int32_t>(stream);  // +0x178
    Damage_Bonus_Combo = StreamReader::readAs<std::int32_t>(stream);  // +0x17c
    Damage_Elemental_Min_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x180
    Damage_Elemental_Max_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x184
    Damage_Elemental_Type_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x188
    Damage_Elemental_Min_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x18c
    Damage_Elemental_Max_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x190
    Damage_Elemental_Type_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x194
    Damage_Fire_Min_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x198
    Damage_Fire_Max_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x19c
    Damage_Fire_Min_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1a0
    Damage_Fire_Max_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1a4
    Damage_Water_Min_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1a8
    Damage_Water_Max_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1ac
    Damage_Water_Min_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1b0
    Damage_Water_Max_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1b4
    Damage_Lightning_Min_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1b8
    Damage_Lightning_Max_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1bc
    Damage_Lightning_Min_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1c0
    Damage_Lightning_Max_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1c4
    Damage_Earth_Min_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1c8
    Damage_Earth_Max_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1cc
    Damage_Earth_Min_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1d0
    Damage_Earth_Max_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1d4
    Damage_Air_Min_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1d8
    Damage_Air_Max_Main_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1dc
    Damage_Air_Min_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1e0
    Damage_Air_Max_Off_Hand = StreamReader::readAs<std::int32_t>(stream);  // +0x1e4
    Damage_Block_Mitigation = StreamReader::readAs<std::int32_t>(stream);  // +0x1e8
    Damage_Crit_Intensification = StreamReader::readAs<std::int32_t>(stream);  // +0x1ec
    Dot_Min_Damage = StreamReader::readAs<std::int32_t>(stream);  // +0x1f0
    Dot_Max_Damage = StreamReader::readAs<std::int32_t>(stream);  // +0x1f4
    Dot_Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x1f8
    Dot_Tick_Damage_Normal = StreamReader::readAs<std::int32_t>(stream);  // +0x1fc
    Dot_Tick_Damage_Fire = StreamReader::readAs<std::int32_t>(stream);  // +0x200
    Dot_Tick_Damage_Water = StreamReader::readAs<std::int32_t>(stream);  // +0x204
    Dot_Tick_Damage_Lightning = StreamReader::readAs<std::int32_t>(stream);  // +0x208
    Dot_Tick_Damage_Earth = StreamReader::readAs<std::int32_t>(stream);  // +0x20c
    Dot_Tick_Damage_Air = StreamReader::readAs<std::int32_t>(stream);  // +0x210
    Leech_HP = StreamReader::readAs<std::int32_t>(stream);  // +0x214
    Leech_MP = StreamReader::readAs<std::int32_t>(stream);  // +0x218
    Hurt_Resist_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x21c
    Hurt_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x220
    Push_Resist_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x224
    Push_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x228
    Stun_Resist_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x22c
    Stun_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x230
    Stun_Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x234
    Fear_Resist_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x238
    Fear_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x23c
    Fear_Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x240
    Slow_Resist_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x244
    Slow_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x248
    Slow_Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x24c
    Diminishing_Return = StreamReader::readAs<std::int32_t>(stream);  // +0x250
    Stat_Points = StreamReader::readAs<std::int32_t>(stream);  // +0x254
    Stat_Strength = StreamReader::readAs<std::int32_t>(stream);  // +0x258
    Stat_Dexterity = StreamReader::readAs<std::int32_t>(stream);  // +0x25c
    Stat_Endurance = StreamReader::readAs<std::int32_t>(stream);  // +0x260
    Stat_Energy = StreamReader::readAs<std::int32_t>(stream);  // +0x264
    Prereq_Strength = StreamReader::readAs<std::int32_t>(stream);  // +0x268
    Prereq_Dexterity = StreamReader::readAs<std::int32_t>(stream);  // +0x26c
    Prereq_Endurance = StreamReader::readAs<std::int32_t>(stream);  // +0x270
    Prereq_Energy = StreamReader::readAs<std::int32_t>(stream);  // +0x274
    Skill_Points = StreamReader::readAs<std::int32_t>(stream);  // +0x278
    Spell_Rating_Attack = StreamReader::readAs<std::int32_t>(stream);  // +0x27c
    Spell_Rating_Attack_Bonus_Fire = StreamReader::readAs<std::int32_t>(stream);  // +0x280
    Spell_Rating_Attack_Bonus_Water = StreamReader::readAs<std::int32_t>(stream);  // +0x284
    Spell_Rating_Attack_Bonus_Lightning = StreamReader::readAs<std::int32_t>(stream);  // +0x288
    Spell_Rating_Attack_Bonus_Earth = StreamReader::readAs<std::int32_t>(stream);  // +0x28c
    Spell_Rating_Attack_Bonus_Air = StreamReader::readAs<std::int32_t>(stream);  // +0x290
    Spell_Rating_Dodge = StreamReader::readAs<std::int32_t>(stream);  // +0x294
    Spell_Rating_Critical = StreamReader::readAs<std::int32_t>(stream);  // +0x298
    Spell_Damage_Bonus_Fire = StreamReader::readAs<std::int32_t>(stream);  // +0x29c
    Spell_Damage_Bonus_Water = StreamReader::readAs<std::int32_t>(stream);  // +0x2a0
    Spell_Damage_Bonus_Lightning = StreamReader::readAs<std::int32_t>(stream);  // +0x2a4
    Spell_Damage_Bonus_Earth = StreamReader::readAs<std::int32_t>(stream);  // +0x2a8
    Spell_Damage_Bonus_Air = StreamReader::readAs<std::int32_t>(stream);  // +0x2ac
    Spell_Damage_Crit_Intensification = StreamReader::readAs<std::int32_t>(stream);  // +0x2b0
    SnS_Level = StreamReader::readAs<std::int32_t>(stream);  // +0x2b4
    SnS_ManaCost = StreamReader::readAs<std::int32_t>(stream);  // +0x2b8
    SnS_MinDamage = StreamReader::readAs<std::int32_t>(stream);  // +0x2bc
    SnS_MaxDamage = StreamReader::readAs<std::int32_t>(stream);  // +0x2c0
    SnS_Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x2c4
    SnS_Cooldown = StreamReader::readAs<std::int32_t>(stream);  // +0x2c8
    SnS_Dot_Elemental_Type = StreamReader::readAs<std::int32_t>(stream);  // +0x2cc
    SnS_Dot_Min_Damage = StreamReader::readAs<std::int32_t>(stream);  // +0x2d0
    SnS_Dot_Max_Damage = StreamReader::readAs<std::int32_t>(stream);  // +0x2d4
    SnS_Dot_Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x2d8
    SnS_Hurt_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x2dc
    SnS_Push_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x2e0
    SnS_Stun_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x2e4
    SnS_Stun_Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x2e8
    SnS_Fear_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x2ec
    SnS_Fear_Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x2f0
    SnS_Slow_Target_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x2f4
    SnS_Slow_Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x2f8
    TempProp1 = StreamReader::readAs<std::int32_t>(stream);  // +0x2fc
    TempProp2 = StreamReader::readAs<std::int32_t>(stream);  // +0x300
    Potion_HP_Modifier = StreamReader::readAs<std::int32_t>(stream);  // +0x304
    Potion_MP_Modifier = StreamReader::readAs<std::int32_t>(stream);  // +0x308
    Special_Loot_Max_Potions = StreamReader::readAs<std::int32_t>(stream);  // +0x30c
    Special_Loot_Gold_Multiplier = StreamReader::readAs<std::int32_t>(stream);  // +0x310
    Special_Loot_Magical_Chance = StreamReader::readAs<std::int32_t>(stream);  // +0x314
    Special_Transmute_Efficiency = StreamReader::readAs<std::int32_t>(stream);  // +0x318
    Special_Sneak = StreamReader::readAs<std::int32_t>(stream);  // +0x31c
    Special_Sneak_Detection = StreamReader::readAs<std::int32_t>(stream);  // +0x320
    Special_Bonus_To_XP = StreamReader::readAs<std::int32_t>(stream);  // +0x324
    Special_Merchant_Price = StreamReader::readAs<std::int32_t>(stream);  // +0x328
    Special_Equip_Main_In_Offhand = StreamReader::readAs<std::int32_t>(stream);  // +0x32c
    Special_Equip_2H_In_One = StreamReader::readAs<std::int32_t>(stream);  // +0x330
    Threat_PerDamage = StreamReader::readAs<std::int32_t>(stream);  // +0x334
    Threat_PerHeal = StreamReader::readAs<std::int32_t>(stream);  // +0x338
    Threat_PerDamageToFriendly = StreamReader::readAs<std::int32_t>(stream);  // +0x33c
    Menu_Average_Melee_To_Hit = StreamReader::readAs<std::int32_t>(stream);  // +0x340
    Menu_Average_Spell_To_Hit = StreamReader::readAs<std::int32_t>(stream);  // +0x344
    Menu_Melee_Damage_Reduction = StreamReader::readAs<std::int32_t>(stream);  // +0x348
    Visual_AlphaFadeInSpawn = StreamReader::readAs<std::int32_t>(stream);  // +0x34c
    Visual_AlphaFadeOutDespawn = StreamReader::readAs<std::int32_t>(stream);  // +0x350
    Visual_BlinkWhenHit = StreamReader::readAs<std::int32_t>(stream);  // +0x354
    Achievement_Transmute_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x358
    Achievement_Block_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x35c
    Achievement_Evade_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x360
    Achievement_SkillUse_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x364
    Achievement_Break_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x368
    Achievement_Chests_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x36c
    Achievement_Potions_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x370
    Achievement_Sell_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x374
    Achievement_Spent_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x378
    Achievement_KnockedDown_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x37c
    Achievement_PickUp_Count = StreamReader::readAs<std::int32_t>(stream);  // +0x380
}

// 0x4c645c _ZN7Structs18AssassinPropertiesD2Ev
// 0x4c6490 _ZN7Structs18AssassinPropertiesD1Ev
AssassinProperties::~AssassinProperties() {
}

// 0x4ce614 _ZN7Structs18AssassinPropertiesD0Ev
void DeletingDestructor(AssassinProperties* self) {
    self->AssassinProperties::~AssassinProperties();
    CustomFree(self);
}

// 0x4c64c4 _ZN7Structs18AssassinProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void AssassinProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a98 _ZN7Structs18AssassinProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void AssassinProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6828 _ZN7Structs27AttackingFollowerPropertiesD2Ev
// 0x4c685c _ZN7Structs27AttackingFollowerPropertiesD1Ev
AttackingFollowerProperties::~AttackingFollowerProperties() {
}

// 0x4ce518 _ZN7Structs27AttackingFollowerPropertiesD0Ev
void DeletingDestructor(AttackingFollowerProperties* self) {
    self->AttackingFollowerProperties::~AttackingFollowerProperties();
    CustomFree(self);
}

// 0x4c6890 _ZN7Structs27AttackingFollowerProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void AttackingFollowerProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a74 _ZN7Structs27AttackingFollowerProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void AttackingFollowerProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6bf4 _ZN7Structs14AttrBonusEntryD2Ev
// 0x4c6bf8 _ZN7Structs14AttrBonusEntryD1Ev
AttrBonusEntry::~AttrBonusEntry() {
}

// 0x4ce240 _ZN7Structs14AttrBonusEntryD0Ev
void DeletingDestructor(AttrBonusEntry* self) {
    self->AttrBonusEntry::~AttrBonusEntry();
    CustomFree(self);
}

// 0x4c6bfc _ZN7Structs14AttrBonusEntry8finalizeEv
void AttrBonusEntry::finalize() {
}

// 0x4fef00 _ZN7Structs14AttrBonusEntry4readEP11IStreamBase
void AttrBonusEntry::read(IStreamBase* stream) {
    Attr = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Bonus = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Flags = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c5e74 _ZN7Structs16BanditPropertiesD2Ev
// 0x4c5ea8 _ZN7Structs16BanditPropertiesD1Ev
BanditProperties::~BanditProperties() {
}

// 0x4ce79c _ZN7Structs16BanditPropertiesD0Ev
void DeletingDestructor(BanditProperties* self) {
    self->BanditProperties::~BanditProperties();
    CustomFree(self);
}

// 0x4c5edc _ZN7Structs16BanditProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void BanditProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ad0 _ZN7Structs16BanditProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void BanditProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c58f8 _ZN7Structs22BigLizardManPropertiesD2Ev
// 0x4c592c _ZN7Structs22BigLizardManPropertiesD1Ev
BigLizardManProperties::~BigLizardManProperties() {
}

// 0x4ce908 _ZN7Structs22BigLizardManPropertiesD0Ev
void DeletingDestructor(BigLizardManProperties* self) {
    self->BigLizardManProperties::~BigLizardManProperties();
    CustomFree(self);
}

// 0x4c5960 _ZN7Structs22BigLizardManProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void BigLizardManProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7b04 _ZN7Structs22BigLizardManProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void BigLizardManProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c5f4c _ZN7Structs19BigSpiderPropertiesD2Ev
// 0x4c5f80 _ZN7Structs19BigSpiderPropertiesD1Ev
BigSpiderProperties::~BigSpiderProperties() {
}

// 0x4ce764 _ZN7Structs19BigSpiderPropertiesD0Ev
void DeletingDestructor(BigSpiderProperties* self) {
    self->BigSpiderProperties::~BigSpiderProperties();
    CustomFree(self);
}

// 0x4c5fb4 _ZN7Structs19BigSpiderProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void BigSpiderProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ac8 _ZN7Structs19BigSpiderProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void BigSpiderProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4db3cc _ZN7Structs10CamAnimSetD2Ev
// 0x4db370 _ZN7Structs10CamAnimSetD1Ev
CamAnimSet::~CamAnimSet() {
    if (CamAnims != nullptr) CustomFree(CamAnims);  // +0x8
}

// 0x4db3b0 _ZN7Structs10CamAnimSetD0Ev
void DeletingDestructor(CamAnimSet* self) {
    self->CamAnimSet::~CamAnimSet();
    CustomFree(self);
}

// 0x4db348 _ZN7Structs10CamAnimSet8finalizeEv
void CamAnimSet::finalize() {
    if (CamAnims != nullptr) {
        CustomFree(CamAnims);  // +0x8
        CamAnimsSize = 0;  // +0x4
        CamAnims = nullptr;
    }
}

// 0x4db2f8 _ZN7Structs8CharAnimD2Ev
// 0x4db28c _ZN7Structs8CharAnimD1Ev
CharAnim::~CharAnim() {
    if (Interact != nullptr) CustomFree(Interact);  // +0x44
    if (Spells != nullptr) CustomFree(Spells);  // +0x88
}

// 0x4db2dc _ZN7Structs8CharAnimD0Ev
void DeletingDestructor(CharAnim* self) {
    self->CharAnim::~CharAnim();
    CustomFree(self);
}

// 0x4db248 _ZN7Structs8CharAnim8finalizeEv
void CharAnim::finalize() {
    if (Interact != nullptr) {
        CustomFree(Interact);  // +0x44
        InteractSize = 0;  // +0x40
        Interact = nullptr;
    }
    if (Spells != nullptr) {
        CustomFree(Spells);  // +0x88
        SpellsSize = 0;  // +0x84
        Spells = nullptr;
    }
}

// 0x4c6b88 _ZN7Structs10CharEffectD2Ev
// 0x4c6b8c _ZN7Structs10CharEffectD1Ev
CharEffect::~CharEffect() {
}

// 0x4ce33c _ZN7Structs10CharEffectD0Ev
void DeletingDestructor(CharEffect* self) {
    self->CharEffect::~CharEffect();
    CustomFree(self);
}

// 0x4c6b90 _ZN7Structs10CharEffect8finalizeEv
void CharEffect::finalize() {
}

// 0x4ed5a8 _ZN7Structs10CharEffect4readEP11IStreamBase
void CharEffect::read(IStreamBase* stream) {
    BloodDeathEffect = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    BloodEffect = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    FootprintEffect = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    SwooshEffect = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    TriggerFloorFX = StreamReader::readAs<bool>(stream);  // +0x14
}

// 0x4c6978 _ZN7Structs12CharInfoNameD2Ev
// 0x4c697c _ZN7Structs12CharInfoNameD1Ev
CharInfoName::~CharInfoName() {
}

// 0x4ce48c _ZN7Structs12CharInfoNameD0Ev
void DeletingDestructor(CharInfoName* self) {
    self->CharInfoName::~CharInfoName();
    CustomFree(self);
}

// 0x4c6980 _ZN7Structs12CharInfoName8finalizeEv
void CharInfoName::finalize() {
}

// 0x4c56ac _ZN7Structs9ClassFuncD2Ev
// 0x4c56b0 _ZN7Structs9ClassFuncD1Ev
ClassFunc::~ClassFunc() {
}

// 0x4ceac8 _ZN7Structs9ClassFuncD0Ev
void DeletingDestructor(ClassFunc* self) {
    self->ClassFunc::~ClassFunc();
    CustomFree(self);
}

// 0x4c56b4 _ZN7Structs9ClassFunc8finalizeEv
void ClassFunc::finalize() {
}

// 0x4c570c _ZN7Structs16ClassFuncAddPropD2Ev
// 0x4c5710 _ZN7Structs16ClassFuncAddPropD1Ev
ClassFuncAddProp::~ClassFuncAddProp() {
}

// 0x4ce9e8 _ZN7Structs16ClassFuncAddPropD0Ev
void DeletingDestructor(ClassFuncAddProp* self) {
    self->ClassFuncAddProp::~ClassFuncAddProp();
    CustomFree(self);
}

// 0x4c5714 _ZN7Structs16ClassFuncAddProp8finalizeEv
void ClassFuncAddProp::finalize() {
}

// 0x4f0abc _ZN7Structs16ClassFuncAddProp4readEP11IStreamBase
void ClassFuncAddProp::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    PropToAdd = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    NotUsed = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    NotUsed2 = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c56dc _ZN7Structs17ClassFuncAddValueD2Ev
// 0x4c56e0 _ZN7Structs17ClassFuncAddValueD1Ev
ClassFuncAddValue::~ClassFuncAddValue() {
}

// 0x4cea58 _ZN7Structs17ClassFuncAddValueD0Ev
void DeletingDestructor(ClassFuncAddValue* self) {
    self->ClassFuncAddValue::~ClassFuncAddValue();
    CustomFree(self);
}

// 0x4c56e4 _ZN7Structs17ClassFuncAddValue8finalizeEv
void ClassFuncAddValue::finalize() {
}

// 0x4f124c _ZN7Structs17ClassFuncAddValue4readEP11IStreamBase
void ClassFuncAddValue::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Value = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    NotUsed1 = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    NotUsed2 = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c5730 _ZN7Structs25ClassFuncApplyGroupOnlyIfD2Ev
// 0x4c5734 _ZN7Structs25ClassFuncApplyGroupOnlyIfD1Ev
ClassFuncApplyGroupOnlyIf::~ClassFuncApplyGroupOnlyIf() {
}

// 0x4ce994 _ZN7Structs25ClassFuncApplyGroupOnlyIfD0Ev
void DeletingDestructor(ClassFuncApplyGroupOnlyIf* self) {
    self->ClassFuncApplyGroupOnlyIf::~ClassFuncApplyGroupOnlyIf();
    CustomFree(self);
}

// 0x4c5738 _ZN7Structs25ClassFuncApplyGroupOnlyIf8finalizeEv
void ClassFuncApplyGroupOnlyIf::finalize() {
}

// 0x4f0510 _ZN7Structs25ClassFuncApplyGroupOnlyIf4readEP11IStreamBase
void ClassFuncApplyGroupOnlyIf::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    IsSpecialAttack = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    IsSpecialAttackState = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    NotUsed1 = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c56e8 _ZN7Structs14ClassFuncGroupD2Ev
// 0x4c56ec _ZN7Structs14ClassFuncGroupD1Ev
ClassFuncGroup::~ClassFuncGroup() {
}

// 0x4cea3c _ZN7Structs14ClassFuncGroupD0Ev
void DeletingDestructor(ClassFuncGroup* self) {
    self->ClassFuncGroup::~ClassFuncGroup();
    CustomFree(self);
}

// 0x4c56f0 _ZN7Structs14ClassFuncGroup8finalizeEv
void ClassFuncGroup::finalize() {
}

// 0x4f1068 _ZN7Structs14ClassFuncGroup4readEP11IStreamBase
void ClassFuncGroup::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Stat1 = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Stat2 = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Stat3 = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c56b8 _ZN7Structs15ClassFuncLinearD2Ev
// 0x4c56bc _ZN7Structs15ClassFuncLinearD1Ev
ClassFuncLinear::~ClassFuncLinear() {
}

// 0x4ceaac _ZN7Structs15ClassFuncLinearD0Ev
void DeletingDestructor(ClassFuncLinear* self) {
    self->ClassFuncLinear::~ClassFuncLinear();
    CustomFree(self);
}

// 0x4c56c0 _ZN7Structs15ClassFuncLinear8finalizeEv
void ClassFuncLinear::finalize() {
}

// 0x4f17f8 _ZN7Structs15ClassFuncLinear4readEP11IStreamBase
void ClassFuncLinear::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Base = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    ScaleProp = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    PerProp = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c5700 _ZN7Structs20ClassFuncLinearLevelD2Ev
// 0x4c5704 _ZN7Structs20ClassFuncLinearLevelD1Ev
ClassFuncLinearLevel::~ClassFuncLinearLevel() {
}

// 0x4cea04 _ZN7Structs20ClassFuncLinearLevelD0Ev
void DeletingDestructor(ClassFuncLinearLevel* self) {
    self->ClassFuncLinearLevel::~ClassFuncLinearLevel();
    CustomFree(self);
}

// 0x4c5708 _ZN7Structs20ClassFuncLinearLevel8finalizeEv
void ClassFuncLinearLevel::finalize() {
}

// 0x4f0ca0 _ZN7Structs20ClassFuncLinearLevel4readEP11IStreamBase
void ClassFuncLinearLevel::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Base = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    ScaleProp = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    PerProp = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c56f4 _ZN7Structs15ClassFuncMinMaxD2Ev
// 0x4c56f8 _ZN7Structs15ClassFuncMinMaxD1Ev
ClassFuncMinMax::~ClassFuncMinMax() {
}

// 0x4cea20 _ZN7Structs15ClassFuncMinMaxD0Ev
void DeletingDestructor(ClassFuncMinMax* self) {
    self->ClassFuncMinMax::~ClassFuncMinMax();
    CustomFree(self);
}

// 0x4c56fc _ZN7Structs15ClassFuncMinMax8finalizeEv
void ClassFuncMinMax::finalize() {
}

// 0x4f0e84 _ZN7Structs15ClassFuncMinMax4readEP11IStreamBase
void ClassFuncMinMax::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Min = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Max = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    NotUsed = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c5718 _ZN7Structs28ClassFuncScaleWithPercentageD2Ev
// 0x4c571c _ZN7Structs28ClassFuncScaleWithPercentageD1Ev
ClassFuncScaleWithPercentage::~ClassFuncScaleWithPercentage() {
}

// 0x4ce9cc _ZN7Structs28ClassFuncScaleWithPercentageD0Ev
void DeletingDestructor(ClassFuncScaleWithPercentage* self) {
    self->ClassFuncScaleWithPercentage::~ClassFuncScaleWithPercentage();
    CustomFree(self);
}

// 0x4c5720 _ZN7Structs28ClassFuncScaleWithPercentage8finalizeEv
void ClassFuncScaleWithPercentage::finalize() {
}

// 0x4f08d8 _ZN7Structs28ClassFuncScaleWithPercentage4readEP11IStreamBase
void ClassFuncScaleWithPercentage::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    ScaleProp = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    NotUsed = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    NotUsed2 = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c5724 _ZN7Structs35ClassFuncScaleWithPercentageForBuffD2Ev
// 0x4c5728 _ZN7Structs35ClassFuncScaleWithPercentageForBuffD1Ev
ClassFuncScaleWithPercentageForBuff::~ClassFuncScaleWithPercentageForBuff() {
}

// 0x4ce9b0 _ZN7Structs35ClassFuncScaleWithPercentageForBuffD0Ev
void DeletingDestructor(ClassFuncScaleWithPercentageForBuff* self) {
    self->ClassFuncScaleWithPercentageForBuff::~ClassFuncScaleWithPercentageForBuff();
    CustomFree(self);
}

// 0x4c572c _ZN7Structs35ClassFuncScaleWithPercentageForBuff8finalizeEv
void ClassFuncScaleWithPercentageForBuff::finalize() {
}

// 0x4f06f4 _ZN7Structs35ClassFuncScaleWithPercentageForBuff4readEP11IStreamBase
void ClassFuncScaleWithPercentageForBuff::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    ScaleProp = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    NotUsed = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    NotUsed2 = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c56d0 _ZN7Structs15ClassFuncSetOIDD2Ev
// 0x4c56d4 _ZN7Structs15ClassFuncSetOIDD1Ev
ClassFuncSetOID::~ClassFuncSetOID() {
}

// 0x4cea74 _ZN7Structs15ClassFuncSetOIDD0Ev
void DeletingDestructor(ClassFuncSetOID* self) {
    self->ClassFuncSetOID::~ClassFuncSetOID();
    CustomFree(self);
}

// 0x4c56d8 _ZN7Structs15ClassFuncSetOID8finalizeEv
void ClassFuncSetOID::finalize() {
}

// 0x4f1430 _ZN7Structs15ClassFuncSetOID4readEP11IStreamBase
void ClassFuncSetOID::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Value = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    NotUsed1 = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    NotUsed2 = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c56c4 _ZN7Structs17ClassFuncSetValueD2Ev
// 0x4c56c8 _ZN7Structs17ClassFuncSetValueD1Ev
ClassFuncSetValue::~ClassFuncSetValue() {
}

// 0x4cea90 _ZN7Structs17ClassFuncSetValueD0Ev
void DeletingDestructor(ClassFuncSetValue* self) {
    self->ClassFuncSetValue::~ClassFuncSetValue();
    CustomFree(self);
}

// 0x4c56cc _ZN7Structs17ClassFuncSetValue8finalizeEv
void ClassFuncSetValue::finalize() {
}

// 0x4f1614 _ZN7Structs17ClassFuncSetValue4readEP11IStreamBase
void ClassFuncSetValue::read(IStreamBase* stream) {
    DestProp = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Formula = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Value = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    UNUSED0 = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    UNUSED1 = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c5d9c _ZN7Structs10Coward_DogD2Ev
// 0x4c5dd0 _ZN7Structs10Coward_DogD1Ev
Coward_Dog::~Coward_Dog() {
}

// 0x4ce7d4 _ZN7Structs10Coward_DogD0Ev
void DeletingDestructor(Coward_Dog* self) {
    self->Coward_Dog::~Coward_Dog();
    CustomFree(self);
}

// 0x4c5e04 _ZN7Structs10Coward_Dog8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void Coward_Dog::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ad8 _ZN7Structs10Coward_Dog4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void Coward_Dog::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6384 _ZN7Structs17CultistPropertiesD2Ev
// 0x4c63b8 _ZN7Structs17CultistPropertiesD1Ev
CultistProperties::~CultistProperties() {
}

// 0x4ce64c _ZN7Structs17CultistPropertiesD0Ev
void DeletingDestructor(CultistProperties* self) {
    self->CultistProperties::~CultistProperties();
    CustomFree(self);
}

// 0x4c63ec _ZN7Structs17CultistProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void CultistProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7aa0 _ZN7Structs17CultistProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void CultistProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c5fb8 _ZN7Structs12DKPropertiesD2Ev
// 0x4c5fec _ZN7Structs12DKPropertiesD1Ev
DKProperties::~DKProperties() {
}

// 0x4ce748 _ZN7Structs12DKPropertiesD0Ev
void DeletingDestructor(DKProperties* self) {
    self->DKProperties::~DKProperties();
    CustomFree(self);
}

// 0x4c6020 _ZN7Structs12DKProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void DKProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ac4 _ZN7Structs12DKProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void DKProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6a14 _ZN7Structs14DesignSettingsD2Ev
// 0x4c6a18 _ZN7Structs14DesignSettingsD1Ev
DesignSettings::~DesignSettings() {
}

// 0x4ce400 _ZN7Structs14DesignSettingsD0Ev
void DeletingDestructor(DesignSettings* self) {
    self->DesignSettings::~DesignSettings();
    CustomFree(self);
}

// 0x4c6a1c _ZN7Structs14DesignSettings8finalizeEv
void DesignSettings::finalize() {
}

// 0x4ee0d0 _ZN7Structs14DesignSettings4readEP11IStreamBase
void DesignSettings::read(IStreamBase* stream) {
    StreamReader::readAs<float>(stream, &AdditionalLeaderIconBonus);  // +0x4
    StreamReader::readAs<float>(stream, &AggroTargetSwitchPct);  // +0x8
    StreamReader::readAs<float>(stream, &AutoZoomRefPoint);  // +0xc
    StreamReader::readAs<float>(stream, &AutoZoomStep);  // +0x10
    CombatMusicTrigger = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    StreamReader::readAs<float>(stream, &CoopCamLimits_Bottom);  // +0x18
    StreamReader::readAs<float>(stream, &CoopCamLimits_Sides);  // +0x1c
    StreamReader::readAs<float>(stream, &CoopCamLimits_Top);  // +0x20
    DefaultLevelWhenInvalid = StreamReader::readAs<std::int32_t>(stream);  // +0x24
    DefaultOnlineMultiLevelHack = StreamReader::readAs<std::int32_t>(stream);  // +0x28
    StreamReader::readAs<float>(stream, &EnemyClickSensitivity);  // +0x2c
    StreamReader::readAs<float>(stream, &EnemySpottedAggro);  // +0x30
    StreamReader::readAs<float>(stream, &ExtraMonsterDamageMultiplyerPerPlayer);  // +0x34
    StreamReader::readAs<float>(stream, &ExtraMonsterHealthMultiplyerPerPlayer);  // +0x38
    StreamReader::readAs<float>(stream, &LeaderIconBonus2Players);  // +0x3c
    StreamReader::readAs<float>(stream, &LeaderIconBonus3Players);  // +0x40
    StreamReader::readAs<float>(stream, &LeaderIconBonus4Players);  // +0x44
    StreamReader::readAs<float>(stream, &MiniMapZoomMaxLimit);  // +0x48
    StreamReader::readAs<float>(stream, &MiniMapZoomMinLimit);  // +0x4c
    StreamReader::readAs<float>(stream, &NPCClickSensitivity);  // +0x50
    StreamReader::readAs<float>(stream, &ObjectClickSensitivity);  // +0x54
    StreamReader::readAs<float>(stream, &PlayerRotationSpeed);  // +0x58
    StreamReader::readAs<float>(stream, &PlayerRunToWalkPercent);  // +0x5c
    StreamReader::readAs<float>(stream, &PlayerWalkToRunPercent);  // +0x60
    QuestMarker = StreamReader::readAs<std::int32_t>(stream);  // +0x64
    QuestMarkerCompleted = StreamReader::readAs<std::int32_t>(stream);  // +0x68
    QuestMarkerSecondary = StreamReader::readAs<std::int32_t>(stream);  // +0x6c
    QuestMarkerSecondaryCompleted = StreamReader::readAs<std::int32_t>(stream);  // +0x70
    StateFeared = StreamReader::readAs<std::int32_t>(stream);  // +0x74
    StatePoisonned = StreamReader::readAs<std::int32_t>(stream);  // +0x78
    StateSlowed = StreamReader::readAs<std::int32_t>(stream);  // +0x7c
    StateStunned = StreamReader::readAs<std::int32_t>(stream);  // +0x80
    TargetAttack = StreamReader::readAs<std::int32_t>(stream);  // +0x84
    TargetMove = StreamReader::readAs<std::int32_t>(stream);  // +0x88
    StreamReader::readAs<float>(stream, &XP_LevelBonusScaleFactorPerLevelPct);  // +0x8c
    StreamReader::readAs<float>(stream, &XP_LevelMalusScaleFactorPerLevelPct);  // +0x90
    StreamReader::readAs<float>(stream, &XP_LevelScaleFactorMaxPct);  // +0x94
    StreamReader::readAs<float>(stream, &XP_LevelScaleFactorMinPct);  // +0x98
    StreamReader::readAs<float>(stream, &XP_LevelScaleMaxLevelDiff);  // +0x9c
    StreamReader::readAs<float>(stream, &XP_MaxDistanceToReceiveXP);  // +0xa0
    StreamReader::readAs<float>(stream, &XP_PerPlayerReductionPct);  // +0xa4
    StreamReader::readAs<float>(stream, &ZoomMaxLimit);  // +0xa8
    StreamReader::readAs<float>(stream, &ZoomMinLimit);  // +0xac
}

// 0x4c6b7c _ZN7Structs10DialogStepD2Ev
// 0x4c6b80 _ZN7Structs10DialogStepD1Ev
DialogStep::~DialogStep() {
}

// 0x4ce358 _ZN7Structs10DialogStepD0Ev
void DeletingDestructor(DialogStep* self) {
    self->DialogStep::~DialogStep();
    CustomFree(self);
}

// 0x4c6b84 _ZN7Structs10DialogStep8finalizeEv
void DialogStep::finalize() {
}

// 0x4f1fb4 _ZN7Structs10DialogStep4readEP11IStreamBase
void DialogStep::read(IStreamBase* stream) {
    Actor = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Style = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Text = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    TitleText = StreamReader::readAs<std::int32_t>(stream);  // +0x10
}

// 0x4c64c8 _ZN7Structs16DragonPropertiesD2Ev
// 0x4c64fc _ZN7Structs16DragonPropertiesD1Ev
DragonProperties::~DragonProperties() {
}

// 0x4ce5f8 _ZN7Structs16DragonPropertiesD0Ev
void DeletingDestructor(DragonProperties* self) {
    self->DragonProperties::~DragonProperties();
    CustomFree(self);
}

// 0x4c6530 _ZN7Structs16DragonProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void DragonProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a94 _ZN7Structs16DragonProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void DragonProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6894 _ZN7Structs23EquippedFaeryPropertiesD2Ev
// 0x4c68c8 _ZN7Structs23EquippedFaeryPropertiesD1Ev
EquippedFaeryProperties::~EquippedFaeryProperties() {
}

// 0x4ce4fc _ZN7Structs23EquippedFaeryPropertiesD0Ev
void DeletingDestructor(EquippedFaeryProperties* self) {
    self->EquippedFaeryProperties::~EquippedFaeryProperties();
    CustomFree(self);
}

// 0x4c68fc _ZN7Structs23EquippedFaeryProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void EquippedFaeryProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a70 _ZN7Structs23EquippedFaeryProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void EquippedFaeryProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4da404 _ZN7Structs5FaeryD2Ev
// 0x4da3a8 _ZN7Structs5FaeryD1Ev
Faery::~Faery() {
    if (SpellScript != nullptr) CustomFree(SpellScript);  // +0x18
}

// 0x4da3e8 _ZN7Structs5FaeryD0Ev
void DeletingDestructor(Faery* self) {
    self->Faery::~Faery();
    CustomFree(self);
}

// 0x4da380 _ZN7Structs5Faery8finalizeEv
void Faery::finalize() {
    if (SpellScript != nullptr) {
        CustomFree(SpellScript);  // +0x18
        SpellScriptSize = 0;  // +0x14
        SpellScript = nullptr;
    }
}

// 0x4da340 _ZN7Structs9FaeryListD2Ev
// 0x4da2e4 _ZN7Structs9FaeryListD1Ev
FaeryList::~FaeryList() {
    if (List != nullptr) CustomFree(List);  // +0x8
}

// 0x4da324 _ZN7Structs9FaeryListD0Ev
void DeletingDestructor(FaeryList* self) {
    self->FaeryList::~FaeryList();
    CustomFree(self);
}

// 0x4da2bc _ZN7Structs9FaeryList8finalizeEv
void FaeryList::finalize() {
    if (List != nullptr) {
        CustomFree(List);  // +0x8
        ListSize = 0;  // +0x4
        List = nullptr;
    }
}

// 0x4d5638 _ZN7Structs21FastTravelDestinationD2Ev
// 0x4d55dc _ZN7Structs21FastTravelDestinationD1Ev
FastTravelDestination::~FastTravelDestination() {
    if (LevelName != nullptr) CustomFree(LevelName);  // +0x10
}

// 0x4d561c _ZN7Structs21FastTravelDestinationD0Ev
void DeletingDestructor(FastTravelDestination* self) {
    self->FastTravelDestination::~FastTravelDestination();
    CustomFree(self);
}

// 0x4d55b4 _ZN7Structs21FastTravelDestination8finalizeEv
void FastTravelDestination::finalize() {
    if (LevelName != nullptr) {
        CustomFree(LevelName);  // +0x10
        LevelNameSize = 0;  // +0xc
        LevelName = nullptr;
    }
}

// 0x4c67bc _ZN7Structs18FollowerPropertiesD2Ev
// 0x4c67f0 _ZN7Structs18FollowerPropertiesD1Ev
FollowerProperties::~FollowerProperties() {
}

// 0x4ce534 _ZN7Structs18FollowerPropertiesD0Ev
void DeletingDestructor(FollowerProperties* self) {
    self->FollowerProperties::~FollowerProperties();
    CustomFree(self);
}

// 0x4c6824 _ZN7Structs18FollowerProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void FollowerProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a78 _ZN7Structs18FollowerProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void FollowerProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6b94 _ZN7Structs12FontColorDefD2Ev
// 0x4c6b98 _ZN7Structs12FontColorDefD1Ev
FontColorDef::~FontColorDef() {
}

// 0x4ce320 _ZN7Structs12FontColorDefD0Ev
void DeletingDestructor(FontColorDef* self) {
    self->FontColorDef::~FontColorDef();
    CustomFree(self);
}

// 0x4c6b9c _ZN7Structs12FontColorDef8finalizeEv
void FontColorDef::finalize() {
}

// 0x4f1d00 _ZN7Structs12FontColorDef4readEP11IStreamBase
void FontColorDef::read(IStreamBase* stream) {
    glowcolor = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    textcolor = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c6900 _ZN7Structs21FriendlyNPCPropertiesD2Ev
// 0x4c6934 _ZN7Structs21FriendlyNPCPropertiesD1Ev
FriendlyNPCProperties::~FriendlyNPCProperties() {
}

// 0x4ce4e0 _ZN7Structs21FriendlyNPCPropertiesD0Ev
void DeletingDestructor(FriendlyNPCProperties* self) {
    self->FriendlyNPCProperties::~FriendlyNPCProperties();
    CustomFree(self);
}

// 0x4c6968 _ZN7Structs21FriendlyNPCProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void FriendlyNPCProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a6c _ZN7Structs21FriendlyNPCProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void FriendlyNPCProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6a20 _ZN7Structs14GameDifficultyD2Ev
// 0x4c6a24 _ZN7Structs14GameDifficultyD1Ev
GameDifficulty::~GameDifficulty() {
}

// 0x4ce3e4 _ZN7Structs14GameDifficultyD0Ev
void DeletingDestructor(GameDifficulty* self) {
    self->GameDifficulty::~GameDifficulty();
    CustomFree(self);
}

// 0x4c6a28 _ZN7Structs14GameDifficulty8finalizeEv
void GameDifficulty::finalize() {
}

// 0x4f23e4 _ZN7Structs14GameDifficulty4readEP11IStreamBase
void GameDifficulty::read(IStreamBase* stream) {
    DamageInputModifier = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    DamageOutputModifier = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    MaxPotionModifier = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    RespawnTimeModifier = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    XPRewardModifier = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c6ba0 _ZN7Structs16GameObjectDamageD2Ev
// 0x4c6ba4 _ZN7Structs16GameObjectDamageD1Ev
GameObjectDamage::~GameObjectDamage() {
}

// 0x4ce304 _ZN7Structs16GameObjectDamageD0Ev
void DeletingDestructor(GameObjectDamage* self) {
    self->GameObjectDamage::~GameObjectDamage();
    CustomFree(self);
}

// 0x4c6ba8 _ZN7Structs16GameObjectDamage8finalizeEv
void GameObjectDamage::finalize() {
}

// 0x4f1dd0 _ZN7Structs16GameObjectDamage4readEP11IStreamBase
void GameObjectDamage::read(IStreamBase* stream) {
    Damage = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    ImmunityDelay = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Max = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Min = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4c6bac _ZN7Structs16GameObjectVisualD2Ev
// 0x4c6bb0 _ZN7Structs16GameObjectVisualD1Ev
GameObjectVisual::~GameObjectVisual() {
}

// 0x4ce2e8 _ZN7Structs16GameObjectVisualD0Ev
void DeletingDestructor(GameObjectVisual* self) {
    self->GameObjectVisual::~GameObjectVisual();
    CustomFree(self);
}

// 0x4c6bb4 _ZN7Structs16GameObjectVisual8finalizeEv
void GameObjectVisual::finalize() {
}

// 0x4ff23c _ZN7Structs16GameObjectVisual4readEP11IStreamBase
void GameObjectVisual::read(IStreamBase* stream) {
    AppearAnim = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    DisappearAnim = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    IdleActiveAnim = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    IdleAnim = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Palette = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    ResID = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    Sound = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
}

// 0x4c6a2c _ZN7Structs10GameOptionD2Ev
// 0x4c6a30 _ZN7Structs10GameOptionD1Ev
GameOption::~GameOption() {
}

// 0x4ce374 _ZN7Structs10GameOptionD0Ev
void DeletingDestructor(GameOption* self) {
    self->GameOption::~GameOption();
    CustomFree(self);
}

// 0x4c6a34 _ZN7Structs10GameOption8finalizeEv
void GameOption::finalize() {
}

// 0x4f213c _ZN7Structs10GameOption4readEP11IStreamBase
void GameOption::read(IStreamBase* stream) {
    Default = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Label = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Max = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Min = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Step = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    ValueStr = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
}

// 0x4c6a38 _ZN7Structs16GameOptionSelectD2Ev
// 0x4c6a6c _ZN7Structs16GameOptionSelectD1Ev
GameOptionSelect::~GameOptionSelect() {
}

// 0x4ce3c8 _ZN7Structs16GameOptionSelectD0Ev
void DeletingDestructor(GameOptionSelect* self) {
    self->GameOptionSelect::~GameOptionSelect();
    CustomFree(self);
}

// 0x4c6aa0 _ZN7Structs16GameOptionSelect8finalizeEv
// thunk: b 0x4c6a34, forwards to GameOption::finalize
void GameOptionSelect::finalize() {
    GameOption::finalize();
}

// 0x4f23e0 _ZN7Structs16GameOptionSelect4readEP11IStreamBase
// thunk: b 0x4f213c, forwards to GameOption::read
void GameOptionSelect::read(IStreamBase* stream) {
    GameOption::read(stream);
}

// 0x4c6aa4 _ZN7Structs16GameOptionSliderD2Ev
// 0x4c6ad8 _ZN7Structs16GameOptionSliderD1Ev
GameOptionSlider::~GameOptionSlider() {
}

// 0x4ce3ac _ZN7Structs16GameOptionSliderD0Ev
void DeletingDestructor(GameOptionSlider* self) {
    self->GameOptionSlider::~GameOptionSlider();
    CustomFree(self);
}

// 0x4c6b0c _ZN7Structs16GameOptionSlider8finalizeEv
// thunk: b 0x4c6a34, forwards to GameOption::finalize
void GameOptionSlider::finalize() {
    GameOption::finalize();
}

// 0x4f23dc _ZN7Structs16GameOptionSlider4readEP11IStreamBase
// thunk: b 0x4f213c, forwards to GameOption::read
void GameOptionSlider::read(IStreamBase* stream) {
    GameOption::read(stream);
}

// 0x4c6b10 _ZN7Structs16GameOptionToggleD2Ev
// 0x4c6b44 _ZN7Structs16GameOptionToggleD1Ev
GameOptionToggle::~GameOptionToggle() {
}

// 0x4ce390 _ZN7Structs16GameOptionToggleD0Ev
void DeletingDestructor(GameOptionToggle* self) {
    self->GameOptionToggle::~GameOptionToggle();
    CustomFree(self);
}

// 0x4c6b78 _ZN7Structs16GameOptionToggle8finalizeEv
// thunk: b 0x4c6a34, forwards to GameOption::finalize
void GameOptionToggle::finalize() {
    GameOption::finalize();
}

// 0x4f23d8 _ZN7Structs16GameOptionToggle4readEP11IStreamBase
// thunk: b 0x4f213c, forwards to GameOption::read
void GameOptionToggle::read(IStreamBase* stream) {
    GameOption::read(stream);
}

// 0x4c5e08 _ZN7Structs15GhostPropertiesD2Ev
// 0x4c5e3c _ZN7Structs15GhostPropertiesD1Ev
GhostProperties::~GhostProperties() {
}

// 0x4ce7b8 _ZN7Structs15GhostPropertiesD0Ev
void DeletingDestructor(GhostProperties* self) {
    self->GhostProperties::~GhostProperties();
    CustomFree(self);
}

// 0x4c5e70 _ZN7Structs15GhostProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void GhostProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ad4 _ZN7Structs15GhostProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void GhostProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c60fc _ZN7Structs21GoblinRoguePropertiesD2Ev
// 0x4c6130 _ZN7Structs21GoblinRoguePropertiesD1Ev
GoblinRogueProperties::~GoblinRogueProperties() {
}

// 0x4ce6f4 _ZN7Structs21GoblinRoguePropertiesD0Ev
void DeletingDestructor(GoblinRogueProperties* self) {
    self->GoblinRogueProperties::~GoblinRogueProperties();
    CustomFree(self);
}

// 0x4c6164 _ZN7Structs21GoblinRogueProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void GoblinRogueProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ab8 _ZN7Structs21GoblinRogueProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void GoblinRogueProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c61d4 _ZN7Structs22GoblinShamanPropertiesD2Ev
// 0x4c6208 _ZN7Structs22GoblinShamanPropertiesD1Ev
GoblinShamanProperties::~GoblinShamanProperties() {
}

// 0x4ce6bc _ZN7Structs22GoblinShamanPropertiesD0Ev
void DeletingDestructor(GoblinShamanProperties* self) {
    self->GoblinShamanProperties::~GoblinShamanProperties();
    CustomFree(self);
}

// 0x4c623c _ZN7Structs22GoblinShamanProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void GoblinShamanProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ab0 _ZN7Structs22GoblinShamanProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void GoblinShamanProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6168 _ZN7Structs23GoblinSlingerPropertiesD2Ev
// 0x4c619c _ZN7Structs23GoblinSlingerPropertiesD1Ev
GoblinSlingerProperties::~GoblinSlingerProperties() {
}

// 0x4ce6d8 _ZN7Structs23GoblinSlingerPropertiesD0Ev
void DeletingDestructor(GoblinSlingerProperties* self) {
    self->GoblinSlingerProperties::~GoblinSlingerProperties();
    CustomFree(self);
}

// 0x4c61d0 _ZN7Structs23GoblinSlingerProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void GoblinSlingerProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ab4 _ZN7Structs23GoblinSlingerProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void GoblinSlingerProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6318 _ZN7Structs15GuardPropertiesD2Ev
// 0x4c634c _ZN7Structs15GuardPropertiesD1Ev
GuardProperties::~GuardProperties() {
}

// 0x4ce668 _ZN7Structs15GuardPropertiesD0Ev
void DeletingDestructor(GuardProperties* self) {
    self->GuardProperties::~GuardProperties();
    CustomFree(self);
}

// 0x4c6380 _ZN7Structs15GuardProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void GuardProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7aa4 _ZN7Structs15GuardProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void GuardProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6bd0 _ZN7Structs8HelpPageD2Ev
// 0x4c6bd4 _ZN7Structs8HelpPageD1Ev
HelpPage::~HelpPage() {
}

// 0x4ce294 _ZN7Structs8HelpPageD0Ev
void DeletingDestructor(HelpPage* self) {
    self->HelpPage::~HelpPage();
    CustomFree(self);
}

// 0x4c6bd8 _ZN7Structs8HelpPage8finalizeEv
void HelpPage::finalize() {
}

// 0x4ff0fc _ZN7Structs8HelpPage4readEP11IStreamBase
void HelpPage::read(IStreamBase* stream) {
    HelpStringCategory = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    HelpStringText = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c6bdc _ZN7Structs8HintPageD2Ev
// 0x4c6be0 _ZN7Structs8HintPageD1Ev
HintPage::~HintPage() {
}

// 0x4ce278 _ZN7Structs8HintPageD0Ev
void DeletingDestructor(HintPage* self) {
    self->HintPage::~HintPage();
    CustomFree(self);
}

// 0x4c6be4 _ZN7Structs8HintPage8finalizeEv
void HintPage::finalize() {
}

// 0x4ff02c _ZN7Structs8HintPage4readEP11IStreamBase
void HintPage::read(IStreamBase* stream) {
    HintAvatarID = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    HintStringID = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c5820 _ZN7Structs18InfectedPropertiesD2Ev
// 0x4c5854 _ZN7Structs18InfectedPropertiesD1Ev
InfectedProperties::~InfectedProperties() {
}

// 0x4ce940 _ZN7Structs18InfectedPropertiesD0Ev
void DeletingDestructor(InfectedProperties* self) {
    self->InfectedProperties::~InfectedProperties();
    CustomFree(self);
}

// 0x4c5888 _ZN7Structs18InfectedProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void InfectedProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7b0c _ZN7Structs18InfectedProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void InfectedProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6c3c _ZN7Structs9InventoryD2Ev
// 0x4c6c40 _ZN7Structs9InventoryD1Ev
Inventory::~Inventory() {
}

// 0x4ce198 _ZN7Structs9InventoryD0Ev
void DeletingDestructor(Inventory* self) {
    self->Inventory::~Inventory();
    CustomFree(self);
}

// 0x4c6c44 _ZN7Structs9Inventory8finalizeEv
void Inventory::finalize() {
}

// 0x4d4954 _ZN7Structs8ItemBaseD2Ev
// 0x4d48f8 _ZN7Structs8ItemBaseD1Ev
ItemBase::~ItemBase() {
    if (IconName != nullptr) CustomFree(IconName);  // +0x8
}

// 0x4d4938 _ZN7Structs8ItemBaseD0Ev
void DeletingDestructor(ItemBase* self) {
    self->ItemBase::~ItemBase();
    CustomFree(self);
}

// 0x4d44f4 _ZN7Structs8ItemBase8finalizeEv
void ItemBase::finalize() {
    if (IconName != nullptr) {
        CustomFree(IconName);  // +0x8
        IconNameSize = 0;  // +0x4
        IconName = nullptr;
    }
}

// 0x4c6c0c _ZN7Structs13ItemListEntryD2Ev
// 0x4c6c10 _ZN7Structs13ItemListEntryD1Ev
ItemListEntry::~ItemListEntry() {
}

// 0x4ce208 _ZN7Structs13ItemListEntryD0Ev
void DeletingDestructor(ItemListEntry* self) {
    self->ItemListEntry::~ItemListEntry();
    CustomFree(self);
}

// 0x4c6c14 _ZN7Structs13ItemListEntry8finalizeEv
void ItemListEntry::finalize() {
}

// 0x4c6be8 _ZN7Structs14ItemPowerEntryD2Ev
// 0x4c6bec _ZN7Structs14ItemPowerEntryD1Ev
ItemPowerEntry::~ItemPowerEntry() {
}

// 0x4ce25c _ZN7Structs14ItemPowerEntryD0Ev
void DeletingDestructor(ItemPowerEntry* self) {
    self->ItemPowerEntry::~ItemPowerEntry();
    CustomFree(self);
}

// 0x4c6bf0 _ZN7Structs14ItemPowerEntry8finalizeEv
void ItemPowerEntry::finalize() {
}

// 0x4ed200 _ZN7Structs14ItemPowerEntry4readEP11IStreamBase
void ItemPowerEntry::read(IStreamBase* stream) {
    Power = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    StreamReader::readAs<std::int8_t>(stream, &Prob);  // +0x8
}

// 0x4c62ac _ZN7Structs20LargePlantPropertiesD2Ev
// 0x4c62e0 _ZN7Structs20LargePlantPropertiesD1Ev
LargePlantProperties::~LargePlantProperties() {
}

// 0x4ce684 _ZN7Structs20LargePlantPropertiesD0Ev
void DeletingDestructor(LargePlantProperties* self) {
    self->LargePlantProperties::~LargePlantProperties();
    CustomFree(self);
}

// 0x4c6314 _ZN7Structs20LargePlantProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void LargePlantProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7aa8 _ZN7Structs20LargePlantProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void LargePlantProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4d5564 _ZN7Structs16LevelDeclarationD2Ev
// 0x4d54f8 _ZN7Structs16LevelDeclarationD1Ev
LevelDeclaration::~LevelDeclaration() {
    if (DynamicBusRouting != nullptr) CustomFree(DynamicBusRouting);  // +0xc
    if (LevelFile != nullptr) CustomFree(LevelFile);  // +0x20
}

// 0x4d5548 _ZN7Structs16LevelDeclarationD0Ev
void DeletingDestructor(LevelDeclaration* self) {
    self->LevelDeclaration::~LevelDeclaration();
    CustomFree(self);
}

// 0x4d54b4 _ZN7Structs16LevelDeclaration8finalizeEv
void LevelDeclaration::finalize() {
    if (DynamicBusRouting != nullptr) {
        CustomFree(DynamicBusRouting);  // +0xc
        DynamicBusRoutingSize = 0;  // +0x8
        DynamicBusRouting = nullptr;
    }
    if (LevelFile != nullptr) {
        CustomFree(LevelFile);  // +0x20
        LevelFileSize = 0;  // +0x1c
        LevelFile = nullptr;
    }
}

// 0x4c6bb8 _ZN7Structs14LiftableObjectD2Ev
// 0x4c6bbc _ZN7Structs14LiftableObjectD1Ev
LiftableObject::~LiftableObject() {
}

// 0x4ce2cc _ZN7Structs14LiftableObjectD0Ev
void DeletingDestructor(LiftableObject* self) {
    self->LiftableObject::~LiftableObject();
    CustomFree(self);
}

// 0x4c6bc0 _ZN7Structs14LiftableObject8finalizeEv
void LiftableObject::finalize() {
}

// 0x4ff1cc _ZN7Structs14LiftableObject4readEP11IStreamBase
void LiftableObject::read(IStreamBase* stream) {
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x4
}

// 0x4c7c98 _ZN7Structs8ListenerD2Ev
// 0x4c7c9c _ZN7Structs8ListenerD1Ev
Listener::~Listener() {
}

// 0x4cdcac _ZN7Structs8ListenerD0Ev
void DeletingDestructor(Listener* self) {
    self->Listener::~Listener();
    CustomFree(self);
}

// 0x4c7ca0 _ZN7Structs8Listener8finalizeEv
void Listener::finalize() {
}

// 0x4ed978 _ZN7Structs8Listener4readEP11IStreamBase
void Listener::read(IStreamBase* stream) {
    Anchor = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    MaxDistance = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Orientation = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    RefDistance = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    StreamReader::readAs<float>(stream, &RolloffFactor);  // +0x14
    UpVector = StreamReader::readAs<std::int32_t>(stream);  // +0x18
}

// 0x4c7c8c _ZN7Structs14ListenerVectorD2Ev
// 0x4c7c90 _ZN7Structs14ListenerVectorD1Ev
ListenerVector::~ListenerVector() {
}

// 0x4cdcc8 _ZN7Structs14ListenerVectorD0Ev
void DeletingDestructor(ListenerVector* self) {
    self->ListenerVector::~ListenerVector();
    CustomFree(self);
}

// 0x4c7c94 _ZN7Structs14ListenerVector8finalizeEv
void ListenerVector::finalize() {
}

// 0x4dc180 _ZN7Structs14ListenerVector4readEP11IStreamBase
void ListenerVector::read(IStreamBase* stream) {
    StreamReader::readAs<float>(stream, &X);  // +0x4
    StreamReader::readAs<float>(stream, &Y);  // +0x8
    StreamReader::readAs<float>(stream, &Z);  // +0xc
}

// 0x4c588c _ZN7Structs19LizardManPropertiesD2Ev
// 0x4c58c0 _ZN7Structs19LizardManPropertiesD1Ev
LizardManProperties::~LizardManProperties() {
}

// 0x4ce924 _ZN7Structs19LizardManPropertiesD0Ev
void DeletingDestructor(LizardManProperties* self) {
    self->LizardManProperties::~LizardManProperties();
    CustomFree(self);
}

// 0x4c58f4 _ZN7Structs19LizardManProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void LizardManProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7b08 _ZN7Structs19LizardManProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void LizardManProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6c00 _ZN7Structs9LootEntryD2Ev
// 0x4c6c04 _ZN7Structs9LootEntryD1Ev
LootEntry::~LootEntry() {
}

// 0x4ce224 _ZN7Structs9LootEntryD0Ev
void DeletingDestructor(LootEntry* self) {
    self->LootEntry::~LootEntry();
    CustomFree(self);
}

// 0x4c6c08 _ZN7Structs9LootEntry8finalizeEv
void LootEntry::finalize() {
}

// 0x4c66e4 _ZN7Structs29MadrukEnergySpawnerPropertiesD2Ev
// 0x4c6718 _ZN7Structs29MadrukEnergySpawnerPropertiesD1Ev
MadrukEnergySpawnerProperties::~MadrukEnergySpawnerProperties() {
}

// 0x4ce56c _ZN7Structs29MadrukEnergySpawnerPropertiesD0Ev
void DeletingDestructor(MadrukEnergySpawnerProperties* self) {
    self->MadrukEnergySpawnerProperties::~MadrukEnergySpawnerProperties();
    CustomFree(self);
}

// 0x4c674c _ZN7Structs29MadrukEnergySpawnerProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void MadrukEnergySpawnerProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a80 _ZN7Structs29MadrukEnergySpawnerProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void MadrukEnergySpawnerProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6678 _ZN7Structs22MadrukMinionPropertiesD2Ev
// 0x4c66ac _ZN7Structs22MadrukMinionPropertiesD1Ev
MadrukMinionProperties::~MadrukMinionProperties() {
}

// 0x4ce588 _ZN7Structs22MadrukMinionPropertiesD0Ev
void DeletingDestructor(MadrukMinionProperties* self) {
    self->MadrukMinionProperties::~MadrukMinionProperties();
    CustomFree(self);
}

// 0x4c66e0 _ZN7Structs22MadrukMinionProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void MadrukMinionProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a84 _ZN7Structs22MadrukMinionProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void MadrukMinionProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c65a0 _ZN7Structs16MadrukPropertiesD2Ev
// 0x4c65d4 _ZN7Structs16MadrukPropertiesD1Ev
MadrukProperties::~MadrukProperties() {
}

// 0x4ce5c0 _ZN7Structs16MadrukPropertiesD0Ev
void DeletingDestructor(MadrukProperties* self) {
    self->MadrukProperties::~MadrukProperties();
    CustomFree(self);
}

// 0x4c6608 _ZN7Structs16MadrukProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void MadrukProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a8c _ZN7Structs16MadrukProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void MadrukProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c660c _ZN7Structs21MadrukTorsoPropertiesD2Ev
// 0x4c6640 _ZN7Structs21MadrukTorsoPropertiesD1Ev
MadrukTorsoProperties::~MadrukTorsoProperties() {
}

// 0x4ce5a4 _ZN7Structs21MadrukTorsoPropertiesD0Ev
void DeletingDestructor(MadrukTorsoProperties* self) {
    self->MadrukTorsoProperties::~MadrukTorsoProperties();
    CustomFree(self);
}

// 0x4c6674 _ZN7Structs21MadrukTorsoProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void MadrukTorsoProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a88 _ZN7Structs21MadrukTorsoProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void MadrukTorsoProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6c30 _ZN7Structs20MerchandiseListEntryD2Ev
// 0x4c6c34 _ZN7Structs20MerchandiseListEntryD1Ev
MerchandiseListEntry::~MerchandiseListEntry() {
}

// 0x4ce1b4 _ZN7Structs20MerchandiseListEntryD0Ev
void DeletingDestructor(MerchandiseListEntry* self) {
    self->MerchandiseListEntry::~MerchandiseListEntry();
    CustomFree(self);
}

// 0x4c6c38 _ZN7Structs20MerchandiseListEntry8finalizeEv
void MerchandiseListEntry::finalize() {
}

// 0x4f1bc0 _ZN7Structs20MerchandiseListEntry4readEP11IStreamBase
void MerchandiseListEntry::read(IStreamBase* stream) {
    ConditionId = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Merchandise = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c6750 _ZN7Structs18MerchantPropertiesD2Ev
// 0x4c6784 _ZN7Structs18MerchantPropertiesD1Ev
MerchantProperties::~MerchantProperties() {
}

// 0x4ce550 _ZN7Structs18MerchantPropertiesD0Ev
void DeletingDestructor(MerchantProperties* self) {
    self->MerchantProperties::~MerchantProperties();
    CustomFree(self);
}

// 0x4c67b8 _ZN7Structs18MerchantProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void MerchantProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a7c _ZN7Structs18MerchantProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void MerchantProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c59d0 _ZN7Structs20MothCocoonPropertiesD2Ev
// 0x4c5a04 _ZN7Structs20MothCocoonPropertiesD1Ev
MothCocoonProperties::~MothCocoonProperties() {
}

// 0x4ce8d0 _ZN7Structs20MothCocoonPropertiesD0Ev
void DeletingDestructor(MothCocoonProperties* self) {
    self->MothCocoonProperties::~MothCocoonProperties();
    CustomFree(self);
}

// 0x4c5a38 _ZN7Structs20MothCocoonProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void MothCocoonProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7afc _ZN7Structs20MothCocoonProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void MothCocoonProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c5964 _ZN7Structs14MothPropertiesD2Ev
// 0x4c5998 _ZN7Structs14MothPropertiesD1Ev
MothProperties::~MothProperties() {
}

// 0x4ce8ec _ZN7Structs14MothPropertiesD0Ev
void DeletingDestructor(MothProperties* self) {
    self->MothProperties::~MothProperties();
    CustomFree(self);
}

// 0x4c59cc _ZN7Structs14MothProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void MothProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7b00 _ZN7Structs14MothProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void MothProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6c18 _ZN7Structs7NumProbD2Ev
// 0x4c6c1c _ZN7Structs7NumProbD1Ev
NumProb::~NumProb() {
}

// 0x4ce1ec _ZN7Structs7NumProbD0Ev
void DeletingDestructor(NumProb* self) {
    self->NumProb::~NumProb();
    CustomFree(self);
}

// 0x4c6c20 _ZN7Structs7NumProb8finalizeEv
void NumProb::finalize() {
}

// 0x4dbc9c _ZN7Structs7NumProb4readEP11IStreamBase
void NumProb::read(IStreamBase* stream) {
    StreamReader::readAs<std::int16_t>(stream, &Num);  // +0x4
    StreamReader::readAs<std::int16_t>(stream, &Prob);  // +0x6
}

// 0x4c5748 _ZN7Structs16PlayerPropertiesD2Ev
// 0x4c577c _ZN7Structs16PlayerPropertiesD1Ev
PlayerProperties::~PlayerProperties() {
}

// 0x4ce978 _ZN7Structs16PlayerPropertiesD0Ev
void DeletingDestructor(PlayerProperties* self) {
    self->PlayerProperties::~PlayerProperties();
    CustomFree(self);
}

// 0x4c57b0 _ZN7Structs16PlayerProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void PlayerProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7b14 _ZN7Structs16PlayerProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void PlayerProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6c54 _ZN7Structs5Pos3DD2Ev
// 0x4c6c58 _ZN7Structs5Pos3DD1Ev
Pos3D::~Pos3D() {
}

// 0x4ce160 _ZN7Structs5Pos3DD0Ev
void DeletingDestructor(Pos3D* self) {
    self->Pos3D::~Pos3D();
    CustomFree(self);
}

// 0x4c6c5c _ZN7Structs5Pos3D8finalizeEv
void Pos3D::finalize() {
}

// 0x4ff4d8 _ZN7Structs5Pos3D4readEP11IStreamBase
void Pos3D::read(IStreamBase* stream) {
    x = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    y = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    z = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c6c48 _ZN7Structs10ProjectileD2Ev
// 0x4c6c4c _ZN7Structs10ProjectileD1Ev
Projectile::~Projectile() {
}

// 0x4ce17c _ZN7Structs10ProjectileD0Ev
void DeletingDestructor(Projectile* self) {
    self->Projectile::~Projectile();
    CustomFree(self);
}

// 0x4c6c50 _ZN7Structs10Projectile8finalizeEv
void Projectile::finalize() {
}

// 0x4edbb8 _ZN7Structs10Projectile4readEP11IStreamBase
void Projectile::read(IStreamBase* stream) {
    Dedicated = StreamReader::readAs<bool>(stream);  // +0x4
    DisappearOnHit = StreamReader::readAs<bool>(stream);  // +0x5
    ExpireFX = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    ExpireSFX = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    FriendlyFire = StreamReader::readAs<bool>(stream);  // +0x10
    ImpactFX = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    ImpactSFX = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    IsLaser = StreamReader::readAs<bool>(stream);  // +0x1c
    IsMagic = StreamReader::readAs<bool>(stream);  // +0x1d
    StreamReader::readAs<float>(stream, &MaxDistance);  // +0x20
    StreamReader::readAs<float>(stream, &MaxRotation);  // +0x24
    Model = StreamReader::readAs<std::int32_t>(stream);  // +0x28
    ObjectImpactFX = StreamReader::readAs<std::int32_t>(stream);  // +0x2c
    ObjectImpactSFX = StreamReader::readAs<std::int32_t>(stream);  // +0x30
    StayOnFloor = StreamReader::readAs<bool>(stream);  // +0x34
    TargetLock = StreamReader::readAs<bool>(stream);  // +0x35
    TimeBetweenHit = StreamReader::readAs<std::int32_t>(stream);  // +0x38
    Timer = StreamReader::readAs<std::int32_t>(stream);  // +0x3c
    StreamReader::readAs<float>(stream, &Velocity);  // +0x40
    StreamReader::readAs<float>(stream, &VelocityDamping);  // +0x44
}

// 0x4c6a08 _ZN7Structs4RectD2Ev
// 0x4c6a0c _ZN7Structs4RectD1Ev
Rect::~Rect() {
}

// 0x4ce41c _ZN7Structs4RectD0Ev
void DeletingDestructor(Rect* self) {
    self->Rect::~Rect();
    CustomFree(self);
}

// 0x4c6a10 _ZN7Structs4Rect8finalizeEv
void Rect::finalize() {
}

// 0x4f25c8 _ZN7Structs4Rect4readEP11IStreamBase
void Rect::read(IStreamBase* stream) {
    Height = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    PosX = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    PosY = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Width = StreamReader::readAs<std::int32_t>(stream);  // +0x10
}

// 0x4c6984 _ZN7Structs16RepeatableSpriteD2Ev
// 0x4c6988 _ZN7Structs16RepeatableSpriteD1Ev
RepeatableSprite::~RepeatableSprite() {
}

// 0x4ce470 _ZN7Structs16RepeatableSpriteD0Ev
void DeletingDestructor(RepeatableSprite* self) {
    self->RepeatableSprite::~RepeatableSprite();
    CustomFree(self);
}

// 0x4c698c _ZN7Structs16RepeatableSprite8finalizeEv
void RepeatableSprite::finalize() {
}

// 0x4dbf10 _ZN7Structs16RepeatableSprite4readEP11IStreamBase
void RepeatableSprite::read(IStreamBase* stream) {
    StreamReader::readAs<std::int16_t>(stream, &AnimID);  // +0x4
    Clip = StreamReader::readAs<bool>(stream);  // +0x6
    StreamReader::readAs<std::int16_t>(stream, &Height);  // +0x8
    LeftAlign = StreamReader::readAs<bool>(stream);  // +0xa
    StreamReader::readAs<std::int16_t>(stream, &PosX);  // +0xc
    StreamReader::readAs<std::int16_t>(stream, &PosY);  // +0xe
    Repeat = StreamReader::readAs<bool>(stream);  // +0x10
    StreamReader::readAs<std::int16_t>(stream, &ResID);  // +0x12
    TopAlign = StreamReader::readAs<bool>(stream);  // +0x14
    StreamReader::readAs<std::int16_t>(stream, &Width);  // +0x16
}

// 0x4c6534 _ZN7Structs25ResurrectingGodPropertiesD2Ev
// 0x4c6568 _ZN7Structs25ResurrectingGodPropertiesD1Ev
ResurrectingGodProperties::~ResurrectingGodProperties() {
}

// 0x4ce5dc _ZN7Structs25ResurrectingGodPropertiesD0Ev
void DeletingDestructor(ResurrectingGodProperties* self) {
    self->ResurrectingGodProperties::~ResurrectingGodProperties();
    CustomFree(self);
}

// 0x4c659c _ZN7Structs25ResurrectingGodProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void ResurrectingGodProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a90 _ZN7Structs25ResurrectingGodProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void ResurrectingGodProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c63f0 _ZN7Structs19RootTrollPropertiesD2Ev
// 0x4c6424 _ZN7Structs19RootTrollPropertiesD1Ev
RootTrollProperties::~RootTrollProperties() {
}

// 0x4ce630 _ZN7Structs19RootTrollPropertiesD0Ev
void DeletingDestructor(RootTrollProperties* self) {
    self->RootTrollProperties::~RootTrollProperties();
    CustomFree(self);
}

// 0x4c6458 _ZN7Structs19RootTrollProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void RootTrollProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7a9c _ZN7Structs19RootTrollProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void RootTrollProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c5aa8 _ZN7Structs18SandWormPropertiesD2Ev
// 0x4c5adc _ZN7Structs18SandWormPropertiesD1Ev
SandWormProperties::~SandWormProperties() {
}

// 0x4ce898 _ZN7Structs18SandWormPropertiesD0Ev
void DeletingDestructor(SandWormProperties* self) {
    self->SandWormProperties::~SandWormProperties();
    CustomFree(self);
}

// 0x4c5b10 _ZN7Structs18SandWormProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void SandWormProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7af4 _ZN7Structs18SandWormProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void SandWormProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c57b4 _ZN7Structs18SkeletonPropertiesD2Ev
// 0x4c57e8 _ZN7Structs18SkeletonPropertiesD1Ev
SkeletonProperties::~SkeletonProperties() {
}

// 0x4ce95c _ZN7Structs18SkeletonPropertiesD0Ev
void DeletingDestructor(SkeletonProperties* self) {
    self->SkeletonProperties::~SkeletonProperties();
    CustomFree(self);
}

// 0x4c581c _ZN7Structs18SkeletonProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void SkeletonProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7b10 _ZN7Structs18SkeletonProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void SkeletonProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4d1080 _ZN7Structs5SkillD2Ev
// 0x4d1004 _ZN7Structs5SkillD1Ev
Skill::~Skill() {
    if (DisplayProps != nullptr) CustomFree(DisplayProps);  // +0x10
    if (Script != nullptr) CustomFree(Script);  // +0x28
    if (SkillIcon != nullptr) CustomFree(SkillIcon);  // +0x3c
}

// 0x4d1064 _ZN7Structs5SkillD0Ev
void DeletingDestructor(Skill* self) {
    self->Skill::~Skill();
    CustomFree(self);
}

// 0x4d0fa4 _ZN7Structs5Skill8finalizeEv
void Skill::finalize() {
    if (DisplayProps != nullptr) {
        CustomFree(DisplayProps);  // +0x10
        DisplayPropsSize = 0;  // +0xc
        DisplayProps = nullptr;
    }
    if (Script != nullptr) {
        CustomFree(Script);  // +0x28
        ScriptSize = 0;  // +0x24
        Script = nullptr;
    }
    if (SkillIcon != nullptr) {
        CustomFree(SkillIcon);  // +0x3c
        SkillIconSize = 0;  // +0x38
        SkillIcon = nullptr;
    }
}

// 0x4d1164 _ZN7Structs9SkillListD2Ev
// 0x4d1108 _ZN7Structs9SkillListD1Ev
SkillList::~SkillList() {
    if (List != nullptr) CustomFree(List);  // +0x8
}

// 0x4d1148 _ZN7Structs9SkillListD0Ev
void DeletingDestructor(SkillList* self) {
    self->SkillList::~SkillList();
    CustomFree(self);
}

// 0x4d10e0 _ZN7Structs9SkillList8finalizeEv
void SkillList::finalize() {
    if (List != nullptr) {
        CustomFree(List);  // +0x8
        ListSize = 0;  // +0x4
        List = nullptr;
    }
}

// 0x4c5c58 _ZN7Structs15SlimePropertiesD2Ev
// 0x4c5c8c _ZN7Structs15SlimePropertiesD1Ev
SlimeProperties::~SlimeProperties() {
}

// 0x4ce828 _ZN7Structs15SlimePropertiesD0Ev
void DeletingDestructor(SlimeProperties* self) {
    self->SlimeProperties::~SlimeProperties();
    CustomFree(self);
}

// 0x4c5cc0 _ZN7Structs15SlimeProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void SlimeProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ae4 _ZN7Structs15SlimeProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void SlimeProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6240 _ZN7Structs20SmallPlantPropertiesD2Ev
// 0x4c6274 _ZN7Structs20SmallPlantPropertiesD1Ev
SmallPlantProperties::~SmallPlantProperties() {
}

// 0x4ce6a0 _ZN7Structs20SmallPlantPropertiesD0Ev
void DeletingDestructor(SmallPlantProperties* self) {
    self->SmallPlantProperties::~SmallPlantProperties();
    CustomFree(self);
}

// 0x4c62a8 _ZN7Structs20SmallPlantProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void SmallPlantProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7aac _ZN7Structs20SmallPlantProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void SmallPlantProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6090 _ZN7Structs18SnowWolfPropertiesD2Ev
// 0x4c60c4 _ZN7Structs18SnowWolfPropertiesD1Ev
SnowWolfProperties::~SnowWolfProperties() {
}

// 0x4ce710 _ZN7Structs18SnowWolfPropertiesD0Ev
void DeletingDestructor(SnowWolfProperties* self) {
    self->SnowWolfProperties::~SnowWolfProperties();
    CustomFree(self);
}

// 0x4c60f8 _ZN7Structs18SnowWolfProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void SnowWolfProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7abc _ZN7Structs18SnowWolfProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void SnowWolfProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c7c14 _ZN7Structs12SoundAutoGenD2Ev
// 0x4c7c18 _ZN7Structs12SoundAutoGenD1Ev
SoundAutoGen::~SoundAutoGen() {
}

// 0x4cdce4 _ZN7Structs12SoundAutoGenD0Ev
void DeletingDestructor(SoundAutoGen* self) {
    self->SoundAutoGen::~SoundAutoGen();
    CustomFree(self);
}

// 0x4c7c1c _ZN7Structs12SoundAutoGen8finalizeEv
void SoundAutoGen::finalize() {
}

// 0x502af4 _ZN7Structs12SoundAutoGen4readEP11IStreamBase
void SoundAutoGen::read(IStreamBase* stream) {
    Id = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c7c08 _ZN7Structs9SoundBankD2Ev
// 0x4c7c0c _ZN7Structs9SoundBankD1Ev
SoundBank::~SoundBank() {
}

// 0x4cdd1c _ZN7Structs9SoundBankD0Ev
void DeletingDestructor(SoundBank* self) {
    self->SoundBank::~SoundBank();
    CustomFree(self);
}

// 0x4c7c10 _ZN7Structs9SoundBank8finalizeEv
void SoundBank::finalize() {
}

// 0x502bc8 _ZN7Structs9SoundBank4readEP11IStreamBase
void SoundBank::read(IStreamBase* stream) {
    MaxPlayback = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    MaxPlaybackBehavior = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c7c20 _ZN7Structs17SoundEventAutoGenD2Ev
// 0x4c7c54 _ZN7Structs17SoundEventAutoGenD1Ev
SoundEventAutoGen::~SoundEventAutoGen() {
}

// 0x4cdd00 _ZN7Structs17SoundEventAutoGenD0Ev
void DeletingDestructor(SoundEventAutoGen* self) {
    self->SoundEventAutoGen::~SoundEventAutoGen();
    CustomFree(self);
}

// 0x4c7c88 _ZN7Structs17SoundEventAutoGen8finalizeEv
// thunk: b 0x4c7c1c, forwards to SoundAutoGen::finalize
void SoundEventAutoGen::finalize() {
    SoundAutoGen::finalize();
}

// 0x502bc4 _ZN7Structs17SoundEventAutoGen4readEP11IStreamBase
// thunk: b 0x502af4, forwards to SoundAutoGen::read
void SoundEventAutoGen::read(IStreamBase* stream) {
    SoundAutoGen::read(stream);
}

// 0x4c7ca4 _ZN7Structs9SpawnInfoD2Ev
// 0x4c7ca8 _ZN7Structs9SpawnInfoD1Ev
SpawnInfo::~SpawnInfo() {
}

// 0x4cdc90 _ZN7Structs9SpawnInfoD0Ev
void DeletingDestructor(SpawnInfo* self) {
    self->SpawnInfo::~SpawnInfo();
    CustomFree(self);
}

// 0x4c7cac _ZN7Structs9SpawnInfo8finalizeEv
void SpawnInfo::finalize() {
}

// 0x502c98 _ZN7Structs9SpawnInfo4readEP11IStreamBase
void SpawnInfo::read(IStreamBase* stream) {
    Char = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Prob = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Qty = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c5ee0 _ZN7Structs16SpiderPropertiesD2Ev
// 0x4c5f14 _ZN7Structs16SpiderPropertiesD1Ev
SpiderProperties::~SpiderProperties() {
}

// 0x4ce780 _ZN7Structs16SpiderPropertiesD0Ev
void DeletingDestructor(SpiderProperties* self) {
    self->SpiderProperties::~SpiderProperties();
    CustomFree(self);
}

// 0x4c5f48 _ZN7Structs16SpiderProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void SpiderProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7acc _ZN7Structs16SpiderProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void SpiderProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c696c _ZN7Structs20StatAutoAssignTargetD2Ev
// 0x4c6970 _ZN7Structs20StatAutoAssignTargetD1Ev
StatAutoAssignTarget::~StatAutoAssignTarget() {
}

// 0x4ce4a8 _ZN7Structs20StatAutoAssignTargetD0Ev
void DeletingDestructor(StatAutoAssignTarget* self) {
    self->StatAutoAssignTarget::~StatAutoAssignTarget();
    CustomFree(self);
}

// 0x4c6974 _ZN7Structs20StatAutoAssignTarget8finalizeEv
void StatAutoAssignTarget::finalize() {
}

// 0x4ef520 _ZN7Structs20StatAutoAssignTarget4readEP11IStreamBase
void StatAutoAssignTarget::read(IStreamBase* stream) {
    AssignToStat = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    TargetStats = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    TargetWeight = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c5a3c _ZN7Structs19SwampKingPropertiesD2Ev
// 0x4c5a70 _ZN7Structs19SwampKingPropertiesD1Ev
SwampKingProperties::~SwampKingProperties() {
}

// 0x4ce8b4 _ZN7Structs19SwampKingPropertiesD0Ev
void DeletingDestructor(SwampKingProperties* self) {
    self->SwampKingProperties::~SwampKingProperties();
    CustomFree(self);
}

// 0x4c5aa4 _ZN7Structs19SwampKingProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void SwampKingProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7af8 _ZN7Structs19SwampKingProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void SwampKingProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c6c24 _ZN7Structs10TileOffsetD2Ev
// 0x4c6c28 _ZN7Structs10TileOffsetD1Ev
TileOffset::~TileOffset() {
}

// 0x4ce1d0 _ZN7Structs10TileOffsetD0Ev
void DeletingDestructor(TileOffset* self) {
    self->TileOffset::~TileOffset();
    CustomFree(self);
}

// 0x4c6c2c _ZN7Structs10TileOffset8finalizeEv
void TileOffset::finalize() {
}

// 0x4dbbcc _ZN7Structs10TileOffset4readEP11IStreamBase
void TileOffset::read(IStreamBase* stream) {
    StreamReader::readAs<std::int16_t>(stream, &X);  // +0x4
    StreamReader::readAs<std::int16_t>(stream, &Y);  // +0x6
}

// 0x4c6bc4 _ZN7Structs12TriggerPlateD2Ev
// 0x4c6bc8 _ZN7Structs12TriggerPlateD1Ev
TriggerPlate::~TriggerPlate() {
}

// 0x4ce2b0 _ZN7Structs12TriggerPlateD0Ev
void DeletingDestructor(TriggerPlate* self) {
    self->TriggerPlate::~TriggerPlate();
    CustomFree(self);
}

// 0x4c6bcc _ZN7Structs12TriggerPlate8finalizeEv
void TriggerPlate::finalize() {
}

// 0x4ed35c _ZN7Structs12TriggerPlate4readEP11IStreamBase
void TriggerPlate::read(IStreamBase* stream) {
    Behavior = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    IsActive = StreamReader::readAs<bool>(stream);  // +0x8
    SoundOff = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    SoundOn = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    SpecificObject = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    TriggerType = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
}

// 0x4c5b80 _ZN7Structs19TrollKingPropertiesD2Ev
// 0x4c5bb4 _ZN7Structs19TrollKingPropertiesD1Ev
TrollKingProperties::~TrollKingProperties() {
}

// 0x4ce860 _ZN7Structs19TrollKingPropertiesD0Ev
void DeletingDestructor(TrollKingProperties* self) {
    self->TrollKingProperties::~TrollKingProperties();
    CustomFree(self);
}

// 0x4c5be8 _ZN7Structs19TrollKingProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void TrollKingProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7aec _ZN7Structs19TrollKingProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void TrollKingProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c5b14 _ZN7Structs15TrollPropertiesD2Ev
// 0x4c5b48 _ZN7Structs15TrollPropertiesD1Ev
TrollProperties::~TrollProperties() {
}

// 0x4ce87c _ZN7Structs15TrollPropertiesD0Ev
void DeletingDestructor(TrollProperties* self) {
    self->TrollProperties::~TrollProperties();
    CustomFree(self);
}

// 0x4c5b7c _ZN7Structs15TrollProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void TrollProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7af0 _ZN7Structs15TrollProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void TrollProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c7cb0 _ZN7Structs6TrophyD2Ev
// 0x4c7cb4 _ZN7Structs6TrophyD1Ev
Trophy::~Trophy() {
}

// 0x4cdc74 _ZN7Structs6TrophyD0Ev
void DeletingDestructor(Trophy* self) {
    self->Trophy::~Trophy();
    CustomFree(self);
}

// 0x4c7cb8 _ZN7Structs6Trophy8finalizeEv
void Trophy::finalize() {
}

// 0x5060e0 _ZN7Structs6Trophy4readEP11IStreamBase
void Trophy::read(IStreamBase* stream) {
    Desc = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    GLIndex = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    GLLive = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Grade = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Label = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    Name = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
}

// 0x4c5cc4 _ZN7Structs18Ugly_DogPropertiesD2Ev
// 0x4c5cf8 _ZN7Structs18Ugly_DogPropertiesD1Ev
Ugly_DogProperties::~Ugly_DogProperties() {
}

// 0x4ce80c _ZN7Structs18Ugly_DogPropertiesD0Ev
void DeletingDestructor(Ugly_DogProperties* self) {
    self->Ugly_DogProperties::~Ugly_DogProperties();
    CustomFree(self);
}

// 0x4c5d2c _ZN7Structs18Ugly_DogProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void Ugly_DogProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ae0 _ZN7Structs18Ugly_DogProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void Ugly_DogProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c5d30 _ZN7Structs22Ugly_Dog_BigPropertiesD2Ev
// 0x4c5d64 _ZN7Structs22Ugly_Dog_BigPropertiesD1Ev
Ugly_Dog_BigProperties::~Ugly_Dog_BigProperties() {
}

// 0x4ce7f0 _ZN7Structs22Ugly_Dog_BigPropertiesD0Ev
void DeletingDestructor(Ugly_Dog_BigProperties* self) {
    self->Ugly_Dog_BigProperties::~Ugly_Dog_BigProperties();
    CustomFree(self);
}

// 0x4c5d98 _ZN7Structs22Ugly_Dog_BigProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void Ugly_Dog_BigProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7adc _ZN7Structs22Ugly_Dog_BigProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void Ugly_Dog_BigProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c5bec _ZN7Structs15WitchPropertiesD2Ev
// 0x4c5c20 _ZN7Structs15WitchPropertiesD1Ev
WitchProperties::~WitchProperties() {
}

// 0x4ce844 _ZN7Structs15WitchPropertiesD0Ev
void DeletingDestructor(WitchProperties* self) {
    self->WitchProperties::~WitchProperties();
    CustomFree(self);
}

// 0x4c5c54 _ZN7Structs15WitchProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void WitchProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ae8 _ZN7Structs15WitchProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void WitchProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4cee08 _ZN7Structs14WldMapLocationD2Ev
// 0x4cedac _ZN7Structs14WldMapLocationD1Ev
WldMapLocation::~WldMapLocation() {
    if (LocationLevels != nullptr) CustomFree(LocationLevels);  // +0x10
}

// 0x4cedec _ZN7Structs14WldMapLocationD0Ev
void DeletingDestructor(WldMapLocation* self) {
    self->WldMapLocation::~WldMapLocation();
    CustomFree(self);
}

// 0x4ced84 _ZN7Structs14WldMapLocation8finalizeEv
void WldMapLocation::finalize() {
    if (LocationLevels != nullptr) {
        CustomFree(LocationLevels);  // +0x10
        LocationLevelsSize = 0;  // +0xc
        LocationLevels = nullptr;
    }
}

// 0x4c8ba4 _ZN7Structs14WorldMapLockerD2Ev
// 0x4c8ba8 _ZN7Structs14WorldMapLockerD1Ev
WorldMapLocker::~WorldMapLocker() {
}

// 0x4cd830 _ZN7Structs14WorldMapLockerD0Ev
void DeletingDestructor(WorldMapLocker* self) {
    self->WorldMapLocker::~WorldMapLocker();
    CustomFree(self);
}

// 0x4c8bac _ZN7Structs14WorldMapLocker8finalizeEv
void WorldMapLocker::finalize() {
}

// 0x4c6024 _ZN7Structs14YetiPropertiesD2Ev
// 0x4c6058 _ZN7Structs14YetiPropertiesD1Ev
YetiProperties::~YetiProperties() {
}

// 0x4ce72c _ZN7Structs14YetiPropertiesD0Ev
void DeletingDestructor(YetiProperties* self) {
    self->YetiProperties::~YetiProperties();
    CustomFree(self);
}

// 0x4c608c _ZN7Structs14YetiProperties8finalizeEv
// thunk: b 0x4c5744, forwards to CharacterProperties::finalize
void YetiProperties::finalize() {
    CharacterProperties::finalize();
}

// 0x4f7ac0 _ZN7Structs14YetiProperties4readEP11IStreamBase
// thunk: b 0x4f2750, forwards to CharacterProperties::read
void YetiProperties::read(IStreamBase* stream) {
    CharacterProperties::read(stream);
}

// 0x4c7cbc _ZN7Structs11v2ConditionD2Ev
// 0x4c7cc0 _ZN7Structs11v2ConditionD1Ev
v2Condition::~v2Condition() {
}

// 0x4cd980 _ZN7Structs11v2ConditionD0Ev
void DeletingDestructor(v2Condition* self) {
    self->v2Condition::~v2Condition();
    CustomFree(self);
}

// 0x4c7cc4 _ZN7Structs11v2Condition8finalizeEv
void v2Condition::finalize() {
}

// 0x4c7cc8 _ZN7Structs15v2ConditionStubD2Ev
// 0x4c7cfc _ZN7Structs15v2ConditionStubD1Ev
v2ConditionStub::~v2ConditionStub() {
}

// 0x4cdc58 _ZN7Structs15v2ConditionStubD0Ev
void DeletingDestructor(v2ConditionStub* self) {
    self->v2ConditionStub::~v2ConditionStub();
    CustomFree(self);
}

// 0x4c7d30 _ZN7Structs15v2ConditionStub8finalizeEv
// thunk: b 0x4c7cc4, forwards to v2Condition::finalize
void v2ConditionStub::finalize() {
    v2Condition::finalize();
}

// 0x4c8838 _ZN7Structs16v2QuestObjectiveD2Ev
// 0x4c883c _ZN7Structs16v2QuestObjectiveD1Ev
v2QuestObjective::~v2QuestObjective() {
}

// 0x4cd84c _ZN7Structs16v2QuestObjectiveD0Ev
void DeletingDestructor(v2QuestObjective* self) {
    self->v2QuestObjective::~v2QuestObjective();
    CustomFree(self);
}

// 0x4c8840 _ZN7Structs16v2QuestObjective8finalizeEv
void v2QuestObjective::finalize() {
}

// 0x4d0114 _ZN7Structs20v2QuestObjectiveStubD2Ev
// 0x4d00a0 _ZN7Structs20v2QuestObjectiveStubD1Ev
v2QuestObjectiveStub::~v2QuestObjectiveStub() {
    if (Str1 != nullptr) CustomFree(Str1);  // +0x14
    if (Str2 != nullptr) CustomFree(Str2);  // +0x1c
}

// 0x4d00f8 _ZN7Structs20v2QuestObjectiveStubD0Ev
void DeletingDestructor(v2QuestObjectiveStub* self) {
    self->v2QuestObjectiveStub::~v2QuestObjectiveStub();
    CustomFree(self);
}

// 0x4d0008 _ZN7Structs20v2QuestObjectiveStub8finalizeEv
void v2QuestObjectiveStub::finalize() {
    if (Str1 != nullptr) {
        CustomFree(Str1);  // +0x14
        Str1Size = 0;  // +0x10
        Str1 = nullptr;
    }
    if (Str2 != nullptr) {
        CustomFree(Str2);  // +0x1c
        Str2Size = 0;  // +0x18
        Str2 = nullptr;
    }
    v2QuestObjective::finalize();
}

// 0x4c87c0 _ZN7Structs13v2QuestRewardD2Ev
// 0x4c87c4 _ZN7Structs13v2QuestRewardD1Ev
v2QuestReward::~v2QuestReward() {
}

// 0x4cd868 _ZN7Structs13v2QuestRewardD0Ev
void DeletingDestructor(v2QuestReward* self) {
    self->v2QuestReward::~v2QuestReward();
    CustomFree(self);
}

// 0x4c87c8 _ZN7Structs13v2QuestReward8finalizeEv
void v2QuestReward::finalize() {
}

// 0x4c87cc _ZN7Structs17v2QuestRewardStubD2Ev
// 0x4c8800 _ZN7Structs17v2QuestRewardStubD1Ev
v2QuestRewardStub::~v2QuestRewardStub() {
}

// 0x4cd964 _ZN7Structs17v2QuestRewardStubD0Ev
void DeletingDestructor(v2QuestRewardStub* self) {
    self->v2QuestRewardStub::~v2QuestRewardStub();
    CustomFree(self);
}

// 0x4c8834 _ZN7Structs17v2QuestRewardStub8finalizeEv
// thunk: b 0x4c87c8, forwards to v2QuestReward::finalize
void v2QuestRewardStub::finalize() {
    v2QuestReward::finalize();
}

// 0x4d08a4 _ZN7Structs14v2QuestScriptsD2Ev
// 0x4d03cc _ZN7Structs14v2QuestScriptsD1Ev
v2QuestScripts::~v2QuestScripts() {
    if (OnActive != nullptr) CustomFree(OnActive);  // +0x8
    if (OnAvailable != nullptr) CustomFree(OnAvailable);  // +0x10
    if (OnClosed != nullptr) CustomFree(OnClosed);  // +0x18
    if (OnComplete != nullptr) CustomFree(OnComplete);  // +0x20
    if (OnFailed != nullptr) CustomFree(OnFailed);  // +0x28
    if (OnPostActive != nullptr) CustomFree(OnPostActive);  // +0x30
    if (OnPostAvailable != nullptr) CustomFree(OnPostAvailable);  // +0x38
    if (OnPostClosed != nullptr) CustomFree(OnPostClosed);  // +0x40
    if (OnPostComplete != nullptr) CustomFree(OnPostComplete);  // +0x48
    if (OnPostLocked != nullptr) CustomFree(OnPostLocked);  // +0x50
    if (OnPreActive != nullptr) CustomFree(OnPreActive);  // +0x58
    if (OnPreAvailable != nullptr) CustomFree(OnPreAvailable);  // +0x60
    if (OnPreClosed != nullptr) CustomFree(OnPreClosed);  // +0x68
    if (OnPreComplete != nullptr) CustomFree(OnPreComplete);  // +0x70
}

// 0x4d0888 _ZN7Structs14v2QuestScriptsD0Ev
void DeletingDestructor(v2QuestScripts* self) {
    self->v2QuestScripts::~v2QuestScripts();
    CustomFree(self);
}

// 0x4d0238 _ZN7Structs14v2QuestScripts8finalizeEv
void v2QuestScripts::finalize() {
    if (OnActive != nullptr) {
        CustomFree(OnActive);  // +0x8
        OnActiveSize = 0;  // +0x4
        OnActive = nullptr;
    }
    if (OnAvailable != nullptr) {
        CustomFree(OnAvailable);  // +0x10
        OnAvailableSize = 0;  // +0xc
        OnAvailable = nullptr;
    }
    if (OnClosed != nullptr) {
        CustomFree(OnClosed);  // +0x18
        OnClosedSize = 0;  // +0x14
        OnClosed = nullptr;
    }
    if (OnComplete != nullptr) {
        CustomFree(OnComplete);  // +0x20
        OnCompleteSize = 0;  // +0x1c
        OnComplete = nullptr;
    }
    if (OnFailed != nullptr) {
        CustomFree(OnFailed);  // +0x28
        OnFailedSize = 0;  // +0x24
        OnFailed = nullptr;
    }
    if (OnPostActive != nullptr) {
        CustomFree(OnPostActive);  // +0x30
        OnPostActiveSize = 0;  // +0x2c
        OnPostActive = nullptr;
    }
    if (OnPostAvailable != nullptr) {
        CustomFree(OnPostAvailable);  // +0x38
        OnPostAvailableSize = 0;  // +0x34
        OnPostAvailable = nullptr;
    }
    if (OnPostClosed != nullptr) {
        CustomFree(OnPostClosed);  // +0x40
        OnPostClosedSize = 0;  // +0x3c
        OnPostClosed = nullptr;
    }
    if (OnPostComplete != nullptr) {
        CustomFree(OnPostComplete);  // +0x48
        OnPostCompleteSize = 0;  // +0x44
        OnPostComplete = nullptr;
    }
    if (OnPostLocked != nullptr) {
        CustomFree(OnPostLocked);  // +0x50
        OnPostLockedSize = 0;  // +0x4c
        OnPostLocked = nullptr;
    }
    if (OnPreActive != nullptr) {
        CustomFree(OnPreActive);  // +0x58
        OnPreActiveSize = 0;  // +0x54
        OnPreActive = nullptr;
    }
    if (OnPreAvailable != nullptr) {
        CustomFree(OnPreAvailable);  // +0x60
        OnPreAvailableSize = 0;  // +0x5c
        OnPreAvailable = nullptr;
    }
    if (OnPreClosed != nullptr) {
        CustomFree(OnPreClosed);  // +0x68
        OnPreClosedSize = 0;  // +0x64
        OnPreClosed = nullptr;
    }
    if (OnPreComplete != nullptr) {
        CustomFree(OnPreComplete);  // +0x70
        OnPreCompleteSize = 0;  // +0x6c
        OnPreComplete = nullptr;
    }
}

}  // namespace Structs
