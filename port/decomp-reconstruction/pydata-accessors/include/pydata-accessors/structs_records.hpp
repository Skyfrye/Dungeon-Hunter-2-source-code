#pragma once

// HAND-MAINTAINED SOURCE (Track B decision 7). This file was first produced by gen_structs.py, which is
// retired (Ghidra-era) and must not be rerun; edit this file directly.
//
// Structs::X record classes. Each class holds the words its read and finalize store
// and the pointers they free; names are m_wN (word N) or m_offN for unaligned offsets.
#include <cstdint>

#include "pydata-accessors/deps/stream_reader.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/script_cmd.hpp"

namespace Structs {

class AIFaction {
public:
    virtual ~AIFaction();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Id = 0;  // +0x4
    std::int32_t Value = 0;  // +0x8
};

class AIProps {
public:
    static constexpr int kCount = 15;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~AIProps();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t AttackDelay = 0;  // +0x4
    std::int32_t CombatBeat = 0;  // +0x8
    std::int32_t CombatMusic = 0;  // +0xc
    bool DelayedLoad = false;  // +0x10, one byte (readAs<bool>)
    std::int32_t Flags = 0;  // +0x14
    float InteractRadius = 0.0f;  // +0x18
    float LeashDistance = 0.0f;  // +0x1c
    float MeleeRadius = 0.0f;  // +0x20
    std::int32_t OnAggroSFX = 0;  // +0x24
    std::uint32_t ScriptSize = 0;  // +0x28, length of Script
    void* Script = nullptr;  // +0x2c
    std::int32_t SelfFX = 0;  // +0x30
    std::int32_t Trophy = 0;  // +0x34
    std::int32_t Type = 0;  // +0x38
    float ViewRadius = 0.0f;  // +0x3c
    float ViewRadiusNoAggro = 0.0f;  // +0x40
};

class SimpleAnim {
public:
    virtual ~SimpleAnim();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int16_t AnimID = 0;  // +0x4
    std::int16_t ResID = 0;  // +0x6
};

class Anim : public SimpleAnim {
public:
    ~Anim() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
    std::int16_t OffsetX = 0;  // +0x8
    std::int16_t OffsetY = 0;  // +0xa
};

class AnimStep {
public:
    virtual ~AnimStep();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    bool AnchorFX = false;  // +0x4
    std::int32_t Anim = 0;  // +0x8
    std::int32_t BlendOut = 0;  // +0xc
    std::int32_t Cam = 0;  // +0x10
    bool CamDir = false;  // +0x14
    std::int32_t FX = 0;  // +0x18
    bool MoveGO = false;  // +0x1c
    std::uint32_t RandomCamSize = 0;  // +0x20, count of RandomCam
    void* RandomCam = nullptr;  // +0x24, int32 array
    std::int32_t Redir = 0;  // +0x28
    std::int32_t Sound = 0;  // +0x2c
    float Speed = 0.0f;  // +0x30
    bool Swoosh = false;  // +0x34
};

class CharacterProperties {
public:
    static constexpr int kCount = 224;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~CharacterProperties();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t AIFaction = 0;  // +0x4
    std::int32_t AI = 0;  // +0x8
    std::int32_t AnimTable = 0;  // +0xc
    std::int32_t ModelFile = 0;  // +0x10
    std::int32_t ModularVisual = 0;  // +0x14
    std::int32_t ClassString = 0;  // +0x18
    std::int32_t ClassDescString = 0;  // +0x1c
    std::int32_t Effects = 0;  // +0x20
    std::int32_t Sounds = 0;  // +0x24
    std::int32_t Loot = 0;  // +0x28
    std::int32_t Dialogs = 0;  // +0x2c
    std::int32_t RespawnTime = 0;  // +0x30
    std::int32_t Scale_X = 0;  // +0x34
    std::int32_t Scale_Y = 0;  // +0x38
    std::int32_t Scale_Z = 0;  // +0x3c
    std::int32_t Melee_Scale = 0;  // +0x40
    std::int32_t Collision_Scale = 0;  // +0x44
    std::int32_t FX_Scale = 0;  // +0x48
    std::int32_t Name = 0;  // +0x4c
    std::int32_t Level = 0;  // +0x50
    std::int32_t LevelMax = 0;  // +0x54
    std::int32_t LevelMin = 0;  // +0x58
    std::int32_t LevelOffset = 0;  // +0x5c
    std::int32_t KillCount = 0;  // +0x60
    std::int32_t MPLevelKillCount = 0;  // +0x64
    std::int32_t DeathCount = 0;  // +0x68
    std::int32_t ClassID = 0;  // +0x6c
    std::int32_t StatAutoAssignScheme = 0;  // +0x70
    std::int32_t SkillTree = 0;  // +0x74
    std::int32_t FaeryList = 0;  // +0x78
    std::int32_t RangeMinDistance = 0;  // +0x7c
    std::int32_t RangeMaxDistance = 0;  // +0x80
    std::int32_t RangeProjectileID = 0;  // +0x84
    std::int32_t XP = 0;  // +0x88
    std::int32_t Max_XP = 0;  // +0x8c
    std::int32_t Value_XP = 0;  // +0x90
    std::int32_t HP = 0;  // +0x94
    std::int32_t HP_Bonus = 0;  // +0x98
    std::int32_t Max_HP = 0;  // +0x9c
    std::int32_t Regen_HP = 0;  // +0xa0
    std::int32_t CombatRegen_HP = 0;  // +0xa4
    std::int32_t MP = 0;  // +0xa8
    std::int32_t MP_Bonus = 0;  // +0xac
    std::int32_t Max_MP = 0;  // +0xb0
    std::int32_t Regen_MP = 0;  // +0xb4
    std::int32_t CombatRegen_MP = 0;  // +0xb8
    std::int32_t Speed_Modifier_Walk = 0;  // +0xbc
    std::int32_t Speed_Modifier_Rotation = 0;  // +0xc0
    std::int32_t Speed_Modifier_Attack = 0;  // +0xc4
    std::int32_t Opacity_Modifier = 0;  // +0xc8
    std::int32_t Rating_Attack = 0;  // +0xcc
    std::int32_t Rating_Attack_Bonus_Sword = 0;  // +0xd0
    std::int32_t Rating_Attack_Bonus_Axe = 0;  // +0xd4
    std::int32_t Rating_Attack_Bonus_Mace = 0;  // +0xd8
    std::int32_t Rating_Attack_Bonus_Dagger = 0;  // +0xdc
    std::int32_t Rating_Attack_Bonus_Range = 0;  // +0xe0
    std::int32_t Rating_Attack_Bonus_Staff = 0;  // +0xe4
    std::int32_t Rating_Attack_Bonus_Wand = 0;  // +0xe8
    std::int32_t Rating_Attack_Bonus_Dual = 0;  // +0xec
    std::int32_t Rating_Defense = 0;  // +0xf0
    std::int32_t Rating_Dodge = 0;  // +0xf4
    std::int32_t Rating_Block = 0;  // +0xf8
    std::int32_t Rating_Block_Bonus_Shield = 0;  // +0xfc
    std::int32_t Rating_Critical = 0;  // +0x100
    std::int32_t Rating_Critical_Bonus_Sword = 0;  // +0x104
    std::int32_t Rating_Critical_Bonus_Axe = 0;  // +0x108
    std::int32_t Rating_Critical_Bonus_Mace = 0;  // +0x10c
    std::int32_t Rating_Critical_Bonus_Dagger = 0;  // +0x110
    std::int32_t Rating_Critical_Bonus_Range = 0;  // +0x114
    std::int32_t Rating_Critical_Bonus_Staff = 0;  // +0x118
    std::int32_t Rating_Critical_Bonus_Wand = 0;  // +0x11c
    std::int32_t Physical_Armor = 0;  // +0x120
    std::int32_t Physical_Armor_Bonus_Shield = 0;  // +0x124
    std::int32_t Magical_Armor = 0;  // +0x128
    std::int32_t Resistance_Fire = 0;  // +0x12c
    std::int32_t Resistance_Water = 0;  // +0x130
    std::int32_t Resistance_Lightning = 0;  // +0x134
    std::int32_t Resistance_Earth = 0;  // +0x138
    std::int32_t Resistance_Air = 0;  // +0x13c
    std::int32_t Damage_Min_Main_Hand = 0;  // +0x140
    std::int32_t Damage_Max_Main_Hand = 0;  // +0x144
    std::int32_t Damage_Min_Off_Hand = 0;  // +0x148
    std::int32_t Damage_Max_Off_Hand = 0;  // +0x14c
    std::int32_t Damage_Bonus_Sword = 0;  // +0x150
    std::int32_t Damage_Bonus_Axe = 0;  // +0x154
    std::int32_t Damage_Bonus_Mace = 0;  // +0x158
    std::int32_t Damage_Bonus_Dagger = 0;  // +0x15c
    std::int32_t Damage_Bonus_Range = 0;  // +0x160
    std::int32_t Damage_Bonus_Staff = 0;  // +0x164
    std::int32_t Damage_Bonus_Wand = 0;  // +0x168
    std::int32_t Damage_Bonus_Dual = 0;  // +0x16c
    std::int32_t Damage_Bonus_TwoHand = 0;  // +0x170
    std::int32_t Damage_Bonus_Stunned = 0;  // +0x174
    std::int32_t Damage_Bonus_Sneaking = 0;  // +0x178
    std::int32_t Damage_Bonus_Combo = 0;  // +0x17c
    std::int32_t Damage_Elemental_Min_Main_Hand = 0;  // +0x180
    std::int32_t Damage_Elemental_Max_Main_Hand = 0;  // +0x184
    std::int32_t Damage_Elemental_Type_Main_Hand = 0;  // +0x188
    std::int32_t Damage_Elemental_Min_Off_Hand = 0;  // +0x18c
    std::int32_t Damage_Elemental_Max_Off_Hand = 0;  // +0x190
    std::int32_t Damage_Elemental_Type_Off_Hand = 0;  // +0x194
    std::int32_t Damage_Fire_Min_Main_Hand = 0;  // +0x198
    std::int32_t Damage_Fire_Max_Main_Hand = 0;  // +0x19c
    std::int32_t Damage_Fire_Min_Off_Hand = 0;  // +0x1a0
    std::int32_t Damage_Fire_Max_Off_Hand = 0;  // +0x1a4
    std::int32_t Damage_Water_Min_Main_Hand = 0;  // +0x1a8
    std::int32_t Damage_Water_Max_Main_Hand = 0;  // +0x1ac
    std::int32_t Damage_Water_Min_Off_Hand = 0;  // +0x1b0
    std::int32_t Damage_Water_Max_Off_Hand = 0;  // +0x1b4
    std::int32_t Damage_Lightning_Min_Main_Hand = 0;  // +0x1b8
    std::int32_t Damage_Lightning_Max_Main_Hand = 0;  // +0x1bc
    std::int32_t Damage_Lightning_Min_Off_Hand = 0;  // +0x1c0
    std::int32_t Damage_Lightning_Max_Off_Hand = 0;  // +0x1c4
    std::int32_t Damage_Earth_Min_Main_Hand = 0;  // +0x1c8
    std::int32_t Damage_Earth_Max_Main_Hand = 0;  // +0x1cc
    std::int32_t Damage_Earth_Min_Off_Hand = 0;  // +0x1d0
    std::int32_t Damage_Earth_Max_Off_Hand = 0;  // +0x1d4
    std::int32_t Damage_Air_Min_Main_Hand = 0;  // +0x1d8
    std::int32_t Damage_Air_Max_Main_Hand = 0;  // +0x1dc
    std::int32_t Damage_Air_Min_Off_Hand = 0;  // +0x1e0
    std::int32_t Damage_Air_Max_Off_Hand = 0;  // +0x1e4
    std::int32_t Damage_Block_Mitigation = 0;  // +0x1e8
    std::int32_t Damage_Crit_Intensification = 0;  // +0x1ec
    std::int32_t Dot_Min_Damage = 0;  // +0x1f0
    std::int32_t Dot_Max_Damage = 0;  // +0x1f4
    std::int32_t Dot_Duration = 0;  // +0x1f8
    std::int32_t Dot_Tick_Damage_Normal = 0;  // +0x1fc
    std::int32_t Dot_Tick_Damage_Fire = 0;  // +0x200
    std::int32_t Dot_Tick_Damage_Water = 0;  // +0x204
    std::int32_t Dot_Tick_Damage_Lightning = 0;  // +0x208
    std::int32_t Dot_Tick_Damage_Earth = 0;  // +0x20c
    std::int32_t Dot_Tick_Damage_Air = 0;  // +0x210
    std::int32_t Leech_HP = 0;  // +0x214
    std::int32_t Leech_MP = 0;  // +0x218
    std::int32_t Hurt_Resist_Chance = 0;  // +0x21c
    std::int32_t Hurt_Target_Chance = 0;  // +0x220
    std::int32_t Push_Resist_Chance = 0;  // +0x224
    std::int32_t Push_Target_Chance = 0;  // +0x228
    std::int32_t Stun_Resist_Chance = 0;  // +0x22c
    std::int32_t Stun_Target_Chance = 0;  // +0x230
    std::int32_t Stun_Duration = 0;  // +0x234
    std::int32_t Fear_Resist_Chance = 0;  // +0x238
    std::int32_t Fear_Target_Chance = 0;  // +0x23c
    std::int32_t Fear_Duration = 0;  // +0x240
    std::int32_t Slow_Resist_Chance = 0;  // +0x244
    std::int32_t Slow_Target_Chance = 0;  // +0x248
    std::int32_t Slow_Duration = 0;  // +0x24c
    std::int32_t Diminishing_Return = 0;  // +0x250
    std::int32_t Stat_Points = 0;  // +0x254
    std::int32_t Stat_Strength = 0;  // +0x258
    std::int32_t Stat_Dexterity = 0;  // +0x25c
    std::int32_t Stat_Endurance = 0;  // +0x260
    std::int32_t Stat_Energy = 0;  // +0x264
    std::int32_t Prereq_Strength = 0;  // +0x268
    std::int32_t Prereq_Dexterity = 0;  // +0x26c
    std::int32_t Prereq_Endurance = 0;  // +0x270
    std::int32_t Prereq_Energy = 0;  // +0x274
    std::int32_t Skill_Points = 0;  // +0x278
    std::int32_t Spell_Rating_Attack = 0;  // +0x27c
    std::int32_t Spell_Rating_Attack_Bonus_Fire = 0;  // +0x280
    std::int32_t Spell_Rating_Attack_Bonus_Water = 0;  // +0x284
    std::int32_t Spell_Rating_Attack_Bonus_Lightning = 0;  // +0x288
    std::int32_t Spell_Rating_Attack_Bonus_Earth = 0;  // +0x28c
    std::int32_t Spell_Rating_Attack_Bonus_Air = 0;  // +0x290
    std::int32_t Spell_Rating_Dodge = 0;  // +0x294
    std::int32_t Spell_Rating_Critical = 0;  // +0x298
    std::int32_t Spell_Damage_Bonus_Fire = 0;  // +0x29c
    std::int32_t Spell_Damage_Bonus_Water = 0;  // +0x2a0
    std::int32_t Spell_Damage_Bonus_Lightning = 0;  // +0x2a4
    std::int32_t Spell_Damage_Bonus_Earth = 0;  // +0x2a8
    std::int32_t Spell_Damage_Bonus_Air = 0;  // +0x2ac
    std::int32_t Spell_Damage_Crit_Intensification = 0;  // +0x2b0
    std::int32_t SnS_Level = 0;  // +0x2b4
    std::int32_t SnS_ManaCost = 0;  // +0x2b8
    std::int32_t SnS_MinDamage = 0;  // +0x2bc
    std::int32_t SnS_MaxDamage = 0;  // +0x2c0
    std::int32_t SnS_Duration = 0;  // +0x2c4
    std::int32_t SnS_Cooldown = 0;  // +0x2c8
    std::int32_t SnS_Dot_Elemental_Type = 0;  // +0x2cc
    std::int32_t SnS_Dot_Min_Damage = 0;  // +0x2d0
    std::int32_t SnS_Dot_Max_Damage = 0;  // +0x2d4
    std::int32_t SnS_Dot_Duration = 0;  // +0x2d8
    std::int32_t SnS_Hurt_Target_Chance = 0;  // +0x2dc
    std::int32_t SnS_Push_Target_Chance = 0;  // +0x2e0
    std::int32_t SnS_Stun_Target_Chance = 0;  // +0x2e4
    std::int32_t SnS_Stun_Duration = 0;  // +0x2e8
    std::int32_t SnS_Fear_Target_Chance = 0;  // +0x2ec
    std::int32_t SnS_Fear_Duration = 0;  // +0x2f0
    std::int32_t SnS_Slow_Target_Chance = 0;  // +0x2f4
    std::int32_t SnS_Slow_Duration = 0;  // +0x2f8
    std::int32_t TempProp1 = 0;  // +0x2fc
    std::int32_t TempProp2 = 0;  // +0x300
    std::int32_t Potion_HP_Modifier = 0;  // +0x304
    std::int32_t Potion_MP_Modifier = 0;  // +0x308
    std::int32_t Special_Loot_Max_Potions = 0;  // +0x30c
    std::int32_t Special_Loot_Gold_Multiplier = 0;  // +0x310
    std::int32_t Special_Loot_Magical_Chance = 0;  // +0x314
    std::int32_t Special_Transmute_Efficiency = 0;  // +0x318
    std::int32_t Special_Sneak = 0;  // +0x31c
    std::int32_t Special_Sneak_Detection = 0;  // +0x320
    std::int32_t Special_Bonus_To_XP = 0;  // +0x324
    std::int32_t Special_Merchant_Price = 0;  // +0x328
    std::int32_t Special_Equip_Main_In_Offhand = 0;  // +0x32c
    std::int32_t Special_Equip_2H_In_One = 0;  // +0x330
    std::int32_t Threat_PerDamage = 0;  // +0x334
    std::int32_t Threat_PerHeal = 0;  // +0x338
    std::int32_t Threat_PerDamageToFriendly = 0;  // +0x33c
    std::int32_t Menu_Average_Melee_To_Hit = 0;  // +0x340
    std::int32_t Menu_Average_Spell_To_Hit = 0;  // +0x344
    std::int32_t Menu_Melee_Damage_Reduction = 0;  // +0x348
    std::int32_t Visual_AlphaFadeInSpawn = 0;  // +0x34c
    std::int32_t Visual_AlphaFadeOutDespawn = 0;  // +0x350
    std::int32_t Visual_BlinkWhenHit = 0;  // +0x354
    std::int32_t Achievement_Transmute_Count = 0;  // +0x358
    std::int32_t Achievement_Block_Count = 0;  // +0x35c
    std::int32_t Achievement_Evade_Count = 0;  // +0x360
    std::int32_t Achievement_SkillUse_Count = 0;  // +0x364
    std::int32_t Achievement_Break_Count = 0;  // +0x368
    std::int32_t Achievement_Chests_Count = 0;  // +0x36c
    std::int32_t Achievement_Potions_Count = 0;  // +0x370
    std::int32_t Achievement_Sell_Count = 0;  // +0x374
    std::int32_t Achievement_Spent_Count = 0;  // +0x378
    std::int32_t Achievement_KnockedDown_Count = 0;  // +0x37c
    std::int32_t Achievement_PickUp_Count = 0;  // +0x380
};

class AssassinProperties : public CharacterProperties {
public:
    ~AssassinProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class AttackingFollowerProperties : public CharacterProperties {
public:
    ~AttackingFollowerProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class AttrBonusEntry {
public:
    virtual ~AttrBonusEntry();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Attr = 0;  // +0x4
    std::int32_t Bonus = 0;  // +0x8
    std::int32_t Flags = 0;  // +0xc
};

class BanditProperties : public CharacterProperties {
public:
    ~BanditProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class BigLizardManProperties : public CharacterProperties {
public:
    ~BigLizardManProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class BigSpiderProperties : public CharacterProperties {
public:
    ~BigSpiderProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class CamAnimSet {
public:
    static constexpr int kCount = 5;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~CamAnimSet();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t CamAnimsSize = 0;  // +0x4, count of CamAnims
    void* CamAnims = nullptr;  // +0x8, int32 array
    std::int32_t Crit = 0;  // +0xc
    std::int32_t Idle = 0;  // +0x10
    std::int32_t Shake = 0;  // +0x14
    std::int32_t Template = 0;  // +0x18
};

class CharAnim {
public:
    static constexpr int kCount = 37;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~CharAnim();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Attack = 0;  // +0x4
    std::int32_t AttackStatic = 0;  // +0x8
    std::int32_t Blocking = 0;  // +0xc
    std::int32_t DeadlyGreatKB = 0;  // +0x10
    std::int32_t Despawn = 0;  // +0x14
    std::int32_t DespawnGreatKB = 0;  // +0x18
    std::int32_t Died = 0;  // +0x1c
    std::int32_t Dodging = 0;  // +0x20
    std::int32_t GreatKnockedBack = 0;  // +0x24
    std::int32_t Idle = 0;  // +0x28
    std::int32_t IdleFromOOC = 0;  // +0x2c
    std::int32_t IdleOOC = 0;  // +0x30
    std::int32_t IdleSneak = 0;  // +0x34
    std::int32_t IdleToOOC = 0;  // +0x38
    std::int32_t Injured = 0;  // +0x3c
    std::uint32_t InteractSize = 0;  // +0x40, count of Interact
    void* Interact = nullptr;  // +0x44, int32 array
    std::int32_t KnockedBack = 0;  // +0x48
    std::int32_t LiftDrop = 0;  // +0x4c
    std::int32_t LiftIdle = 0;  // +0x50
    std::int32_t LiftMove = 0;  // +0x54
    std::int32_t Limbus = 0;  // +0x58
    std::int32_t MenuIdle = 0;  // +0x5c
    std::int32_t MenuOnSelect = 0;  // +0x60
    std::int32_t PreSpawn = 0;  // +0x64
    std::int32_t Revived = 0;  // +0x68
    std::int32_t Reviving = 0;  // +0x6c
    std::int32_t Run = 0;  // +0x70
    std::int32_t Run180 = 0;  // +0x74
    std::int32_t RunSneak = 0;  // +0x78
    std::int32_t Scared = 0;  // +0x7c
    std::int32_t Spawn = 0;  // +0x80
    std::uint32_t SpellsSize = 0;  // +0x84, count of Spells
    void* Spells = nullptr;  // +0x88, int32 array
    std::int32_t Stunned = 0;  // +0x8c
    std::int32_t Template = 0;  // +0x90
    std::int32_t Walk = 0;  // +0x94
    std::int32_t Walk180 = 0;  // +0x98
    std::int32_t WalkSneak = 0;  // +0x9c
};

class CharEffect {
public:
    static constexpr int kCount = 5;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~CharEffect();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t BloodDeathEffect = 0;  // +0x4
    std::int32_t BloodEffect = 0;  // +0x8
    std::int32_t FootprintEffect = 0;  // +0xc
    std::int32_t SwooshEffect = 0;  // +0x10
    bool TriggerFloorFX = false;  // +0x14
};

class CharInfoName {
public:
    virtual ~CharInfoName();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Name = 0;  // +0x4
};

class ClassFunc {
public:
    virtual ~ClassFunc();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t Param1 = 0;  // +0xc
    std::int32_t Param2 = 0;  // +0x10
    std::int32_t Param3 = 0;  // +0x14
};

class ClassFuncAddProp {
public:
    virtual ~ClassFuncAddProp();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t PropToAdd = 0;  // +0xc
    std::int32_t NotUsed = 0;  // +0x10
    std::int32_t NotUsed2 = 0;  // +0x14
};

class ClassFuncAddValue {
public:
    virtual ~ClassFuncAddValue();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t Value = 0;  // +0xc
    std::int32_t NotUsed1 = 0;  // +0x10
    std::int32_t NotUsed2 = 0;  // +0x14
};

class ClassFuncApplyGroupOnlyIf {
public:
    virtual ~ClassFuncApplyGroupOnlyIf();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t IsSpecialAttack = 0;  // +0xc
    std::int32_t IsSpecialAttackState = 0;  // +0x10
    std::int32_t NotUsed1 = 0;  // +0x14
};

class ClassFuncGroup {
public:
    virtual ~ClassFuncGroup();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t Stat1 = 0;  // +0xc
    std::int32_t Stat2 = 0;  // +0x10
    std::int32_t Stat3 = 0;  // +0x14
};

class ClassFuncLinear {
public:
    virtual ~ClassFuncLinear();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t Base = 0;  // +0xc
    std::int32_t ScaleProp = 0;  // +0x10
    std::int32_t PerProp = 0;  // +0x14
};

class ClassFuncLinearLevel {
public:
    virtual ~ClassFuncLinearLevel();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t Base = 0;  // +0xc
    std::int32_t ScaleProp = 0;  // +0x10
    std::int32_t PerProp = 0;  // +0x14
};

class ClassFuncMinMax {
public:
    virtual ~ClassFuncMinMax();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t Min = 0;  // +0xc
    std::int32_t Max = 0;  // +0x10
    std::int32_t NotUsed = 0;  // +0x14
};

class ClassFuncScaleWithPercentage {
public:
    virtual ~ClassFuncScaleWithPercentage();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t ScaleProp = 0;  // +0xc
    std::int32_t NotUsed = 0;  // +0x10
    std::int32_t NotUsed2 = 0;  // +0x14
};

class ClassFuncScaleWithPercentageForBuff {
public:
    virtual ~ClassFuncScaleWithPercentageForBuff();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t ScaleProp = 0;  // +0xc
    std::int32_t NotUsed = 0;  // +0x10
    std::int32_t NotUsed2 = 0;  // +0x14
};

class ClassFuncSetOID {
public:
    virtual ~ClassFuncSetOID();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t Value = 0;  // +0xc
    std::int32_t NotUsed1 = 0;  // +0x10
    std::int32_t NotUsed2 = 0;  // +0x14
};

class ClassFuncSetValue {
public:
    virtual ~ClassFuncSetValue();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DestProp = 0;  // +0x4
    std::int32_t Formula = 0;  // +0x8
    std::int32_t Value = 0;  // +0xc
    std::int32_t UNUSED0 = 0;  // +0x10
    std::int32_t UNUSED1 = 0;  // +0x14
};

class Coward_Dog : public CharacterProperties {
public:
    ~Coward_Dog() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class CultistProperties : public CharacterProperties {
public:
    ~CultistProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class DKProperties : public CharacterProperties {
public:
    ~DKProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class DesignSettings {
public:
    static constexpr int kCount = 43;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~DesignSettings();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    float AdditionalLeaderIconBonus = 0.0f;  // +0x4
    float AggroTargetSwitchPct = 0.0f;  // +0x8
    float AutoZoomRefPoint = 0.0f;  // +0xc
    float AutoZoomStep = 0.0f;  // +0x10
    std::int32_t CombatMusicTrigger = 0;  // +0x14
    float CoopCamLimits_Bottom = 0.0f;  // +0x18
    float CoopCamLimits_Sides = 0.0f;  // +0x1c
    float CoopCamLimits_Top = 0.0f;  // +0x20
    std::int32_t DefaultLevelWhenInvalid = 0;  // +0x24
    std::int32_t DefaultOnlineMultiLevelHack = 0;  // +0x28
    float EnemyClickSensitivity = 0.0f;  // +0x2c
    float EnemySpottedAggro = 0.0f;  // +0x30
    float ExtraMonsterDamageMultiplyerPerPlayer = 0.0f;  // +0x34
    float ExtraMonsterHealthMultiplyerPerPlayer = 0.0f;  // +0x38
    float LeaderIconBonus2Players = 0.0f;  // +0x3c
    float LeaderIconBonus3Players = 0.0f;  // +0x40
    float LeaderIconBonus4Players = 0.0f;  // +0x44
    float MiniMapZoomMaxLimit = 0.0f;  // +0x48
    float MiniMapZoomMinLimit = 0.0f;  // +0x4c
    float NPCClickSensitivity = 0.0f;  // +0x50
    float ObjectClickSensitivity = 0.0f;  // +0x54
    float PlayerRotationSpeed = 0.0f;  // +0x58
    float PlayerRunToWalkPercent = 0.0f;  // +0x5c
    float PlayerWalkToRunPercent = 0.0f;  // +0x60
    std::int32_t QuestMarker = 0;  // +0x64
    std::int32_t QuestMarkerCompleted = 0;  // +0x68
    std::int32_t QuestMarkerSecondary = 0;  // +0x6c
    std::int32_t QuestMarkerSecondaryCompleted = 0;  // +0x70
    std::int32_t StateFeared = 0;  // +0x74
    std::int32_t StatePoisonned = 0;  // +0x78
    std::int32_t StateSlowed = 0;  // +0x7c
    std::int32_t StateStunned = 0;  // +0x80
    std::int32_t TargetAttack = 0;  // +0x84
    std::int32_t TargetMove = 0;  // +0x88
    float XP_LevelBonusScaleFactorPerLevelPct = 0.0f;  // +0x8c
    float XP_LevelMalusScaleFactorPerLevelPct = 0.0f;  // +0x90
    float XP_LevelScaleFactorMaxPct = 0.0f;  // +0x94
    float XP_LevelScaleFactorMinPct = 0.0f;  // +0x98
    float XP_LevelScaleMaxLevelDiff = 0.0f;  // +0x9c
    float XP_MaxDistanceToReceiveXP = 0.0f;  // +0xa0
    float XP_PerPlayerReductionPct = 0.0f;  // +0xa4
    float ZoomMaxLimit = 0.0f;  // +0xa8
    float ZoomMinLimit = 0.0f;  // +0xac
};

class DialogStep {
public:
    virtual ~DialogStep();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Actor = 0;  // +0x4
    std::int32_t Style = 0;  // +0x8
    std::int32_t Text = 0;  // +0xc
    std::int32_t TitleText = 0;  // +0x10
};

class DragonProperties : public CharacterProperties {
public:
    ~DragonProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class EquippedFaeryProperties : public CharacterProperties {
public:
    ~EquippedFaeryProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class Faery {
public:
    static constexpr int kCount = 7;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Faery();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Description = 0;  // +0x4
    std::int32_t Elemental = 0;  // +0x8
    std::int32_t ModelFile = 0;  // +0xc
    std::int32_t Name = 0;  // +0x10
    std::uint32_t SpellScriptSize = 0;  // +0x14, length of SpellScript
    void* SpellScript = nullptr;  // +0x18
    std::int32_t SpellType = 0;  // +0x1c
    std::int32_t Type = 0;  // +0x20
};

class FaeryList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~FaeryList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t ListSize = 0;  // +0x4, count of List
    void* List = nullptr;  // +0x8, int32 array
};

class FastTravelDestination {
public:
    static constexpr int kCount = 5;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~FastTravelDestination();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DescriptionId = 0;  // +0x4
    std::int32_t EntryPointId = 0;  // +0x8
    std::uint32_t LevelNameSize = 0;  // +0xc, length of LevelName
    void* LevelName = nullptr;  // +0x10
    std::int32_t LocationType = 0;  // +0x14
    std::int32_t StringId = 0;  // +0x18
};

class FollowerProperties : public CharacterProperties {
public:
    ~FollowerProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class FontColorDef {
public:
    static constexpr int kCount = 2;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~FontColorDef();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t glowcolor = 0;  // +0x4
    std::int32_t textcolor = 0;  // +0x8
};

class FriendlyNPCProperties : public CharacterProperties {
public:
    ~FriendlyNPCProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class GameDifficulty {
public:
    static constexpr int kCount = 5;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~GameDifficulty();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t DamageInputModifier = 0;  // +0x4
    std::int32_t DamageOutputModifier = 0;  // +0x8
    std::int32_t MaxPotionModifier = 0;  // +0xc
    std::int32_t RespawnTimeModifier = 0;  // +0x10
    std::int32_t XPRewardModifier = 0;  // +0x14
};

class GameObjectDamage {
public:
    static constexpr int kCount = 5;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~GameObjectDamage();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Damage = 0;  // +0x4
    std::int32_t ImmunityDelay = 0;  // +0x8
    std::int32_t Max = 0;  // +0xc
    std::int32_t Min = 0;  // +0x10
    std::int32_t Type = 0;  // +0x14
};

class GameObjectVisual {
public:
    virtual ~GameObjectVisual();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t AppearAnim = 0;  // +0x4
    std::int32_t DisappearAnim = 0;  // +0x8
    std::int32_t IdleActiveAnim = 0;  // +0xc
    std::int32_t IdleAnim = 0;  // +0x10
    std::int32_t Palette = 0;  // +0x14
    std::int32_t ResID = 0;  // +0x18
    std::int32_t Sound = 0;  // +0x1c
};

class GameOption {
public:
    static constexpr int kCount = 7;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~GameOption();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Default = 0;  // +0x4
    std::int32_t Label = 0;  // +0x8
    std::int32_t Max = 0;  // +0xc
    std::int32_t Min = 0;  // +0x10
    std::int32_t Step = 0;  // +0x14
    std::int32_t Type = 0;  // +0x18
    std::int32_t ValueStr = 0;  // +0x1c
};

class GameOptionSelect : public GameOption {
public:
    ~GameOptionSelect() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class GameOptionSlider : public GameOption {
public:
    ~GameOptionSlider() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class GameOptionToggle : public GameOption {
public:
    ~GameOptionToggle() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class GhostProperties : public CharacterProperties {
public:
    ~GhostProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class GoblinRogueProperties : public CharacterProperties {
public:
    ~GoblinRogueProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class GoblinShamanProperties : public CharacterProperties {
public:
    ~GoblinShamanProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class GoblinSlingerProperties : public CharacterProperties {
public:
    ~GoblinSlingerProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class GuardProperties : public CharacterProperties {
public:
    ~GuardProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class HelpPage {
public:
    static constexpr int kCount = 2;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~HelpPage();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t HelpStringCategory = 0;  // +0x4
    std::int32_t HelpStringText = 0;  // +0x8
};

class HintPage {
public:
    static constexpr int kCount = 2;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~HintPage();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t HintAvatarID = 0;  // +0x4
    std::int32_t HintStringID = 0;  // +0x8
};

class InfectedProperties : public CharacterProperties {
public:
    ~InfectedProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class Inventory {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Inventory();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int16_t MaxItems = 0;  // +0x4
};

class ItemBase {
public:
    virtual ~ItemBase();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t IconNameSize = 0;  // +0x4, string length
    void* IconName = nullptr;  // +0x8, string buffer (len + 1 bytes)
    std::int32_t PickUpType = 0;  // +0xc
    std::int32_t DistType = 0;  // +0x10
    std::int32_t SwooshSoundFX = 0;  // +0x14
    std::int32_t SwooshFX = 0;  // +0x18
    bool Stackable = false;  // +0x1c
    float WarriorEquipValue = 0.0f;  // +0x20
    float MageEquipValue = 0.0f;  // +0x24
    float RogueEquipValue = 0.0f;  // +0x28
    float PaladdinEquipValue = 0.0f;  // +0x2c
    float BerserkerEquipValue = 0.0f;  // +0x30
    float AssassinEquipValue = 0.0f;  // +0x34
    float ArcherEquipValue = 0.0f;  // +0x38
    float NecromancerEquipValue = 0.0f;  // +0x3c
    float IllusionistEquipValue = 0.0f;  // +0x40
};

class ItemListEntry {
public:
    virtual ~ItemListEntry();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t ItemID = 0;  // +0x4
    std::int16_t Prob = 0;  // +0x8
    std::int8_t Qty = 0;  // +0xa
};

class ItemPowerEntry {
public:
    virtual ~ItemPowerEntry();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Power = 0;  // +0x4
    std::int8_t Prob = 0;  // +0x8
};

class LargePlantProperties : public CharacterProperties {
public:
    ~LargePlantProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class LevelDeclaration {
public:
    static constexpr int kCount = 15;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~LevelDeclaration();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    bool Dbg_IsStable = false;  // +0x4
    std::uint32_t DynamicBusRoutingSize = 0;  // +0x8, length of DynamicBusRouting
    void* DynamicBusRouting = nullptr;  // +0xc, string buffer (len + 1 bytes)
    std::int32_t Hub = 0;  // +0x10
    bool IsRandom = false;  // +0x14
    std::int32_t LevelDescription = 0;  // +0x18
    std::uint32_t LevelFileSize = 0;  // +0x1c, length of LevelFile
    void* LevelFile = nullptr;  // +0x20, string buffer (len + 1 bytes)
    std::int32_t LevelName = 0;  // +0x24
    std::int32_t LevelState = 0;  // +0x28
    std::int32_t MapName = 0;  // +0x2c
    std::int32_t MonsterLvlMax = 0;  // +0x30
    std::int32_t MonsterLvlMaxHard = 0;  // +0x34
    std::int32_t MonsterLvlMaxNightmare = 0;  // +0x38
    std::int32_t MonsterLvlMin = 0;  // +0x3c
    std::int32_t MonsterLvlMinHard = 0;  // +0x40
    std::int32_t MonsterLvlMinNightmare = 0;  // +0x44
};

class LiftableObject {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~LiftableObject();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Visual = 0;  // +0x4
};

class Listener {
public:
    static constexpr int kCount = 6;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Listener();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Anchor = 0;  // +0x4
    std::int32_t MaxDistance = 0;  // +0x8
    std::int32_t Orientation = 0;  // +0xc
    std::int32_t RefDistance = 0;  // +0x10
    float RolloffFactor = 0.0f;  // +0x14
    std::int32_t UpVector = 0;  // +0x18
};

class ListenerVector {
public:
    virtual ~ListenerVector();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    float X = 0.0f;  // +0x4
    float Y = 0.0f;  // +0x8
    float Z = 0.0f;  // +0xc
};

class LizardManProperties : public CharacterProperties {
public:
    ~LizardManProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class LootEntry {
public:
    virtual ~LootEntry();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t ItemListID = 0;  // +0x4
    std::int32_t ItemPowerList = 0;  // +0x8
    std::int32_t MProb = 0;  // +0xc
    std::int32_t NumPowerProbs = 0;  // +0x10
    std::int32_t Pct = 0;  // +0x14
    std::int32_t Prob = 0;  // +0x18
    std::int32_t RProb = 0;  // +0x1c
    std::int32_t WProb = 0;  // +0x20
};

class MadrukEnergySpawnerProperties : public CharacterProperties {
public:
    ~MadrukEnergySpawnerProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class MadrukMinionProperties : public CharacterProperties {
public:
    ~MadrukMinionProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class MadrukProperties : public CharacterProperties {
public:
    ~MadrukProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class MadrukTorsoProperties : public CharacterProperties {
public:
    ~MadrukTorsoProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class MerchandiseListEntry {
public:
    virtual ~MerchandiseListEntry();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t ConditionId = 0;  // +0x4
    std::int32_t Merchandise = 0;  // +0x8
};

class MerchantProperties : public CharacterProperties {
public:
    ~MerchantProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class MothCocoonProperties : public CharacterProperties {
public:
    ~MothCocoonProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class MothProperties : public CharacterProperties {
public:
    ~MothProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class NumProb {
public:
    virtual ~NumProb();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int16_t Num = 0;  // +0x4
    std::int16_t Prob = 0;  // +0x6
};

class PlayerProperties : public CharacterProperties {
public:
    ~PlayerProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

// Pos3D is defined in pydata-accessors/script_cmd.hpp (Structs::PlayEffect embeds one).

class Projectile {
public:
    static constexpr int kCount = 20;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Projectile();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    bool Dedicated = false;  // +0x4
    bool DisappearOnHit = false;  // +0x5
    std::int32_t ExpireFX = 0;  // +0x8
    std::int32_t ExpireSFX = 0;  // +0xc
    bool FriendlyFire = false;  // +0x10
    std::int32_t ImpactFX = 0;  // +0x14
    std::int32_t ImpactSFX = 0;  // +0x18
    bool IsLaser = false;  // +0x1c
    bool IsMagic = false;  // +0x1d
    float MaxDistance = 0.0f;  // +0x20
    float MaxRotation = 0.0f;  // +0x24
    std::int32_t Model = 0;  // +0x28
    std::int32_t ObjectImpactFX = 0;  // +0x2c
    std::int32_t ObjectImpactSFX = 0;  // +0x30
    bool StayOnFloor = false;  // +0x34
    bool TargetLock = false;  // +0x35
    std::int32_t TimeBetweenHit = 0;  // +0x38
    std::int32_t Timer = 0;  // +0x3c
    float Velocity = 0.0f;  // +0x40
    float VelocityDamping = 0.0f;  // +0x44
};

class Rect {
public:
    static constexpr int kCount = 4;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Rect();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Height = 0;  // +0x4
    std::int32_t PosX = 0;  // +0x8
    std::int32_t PosY = 0;  // +0xc
    std::int32_t Width = 0;  // +0x10
};

class RepeatableSprite {
public:
    virtual ~RepeatableSprite();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int16_t AnimID = 0;  // +0x4
    bool Clip = false;  // +0x6
    std::int16_t Height = 0;  // +0x8
    bool LeftAlign = false;  // +0xa
    std::int16_t PosX = 0;  // +0xc
    std::int16_t PosY = 0;  // +0xe
    bool Repeat = false;  // +0x10
    std::int16_t ResID = 0;  // +0x12
    bool TopAlign = false;  // +0x14
    std::int16_t Width = 0;  // +0x16
};

class ResurrectingGodProperties : public CharacterProperties {
public:
    ~ResurrectingGodProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class RootTrollProperties : public CharacterProperties {
public:
    ~RootTrollProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class SandWormProperties : public CharacterProperties {
public:
    ~SandWormProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class SkeletonProperties : public CharacterProperties {
public:
    ~SkeletonProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class Skill {
public:
    static constexpr int kCount = 15;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Skill();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Anim = 0;  // +0x4
    bool AnimIsMoving = false;  // +0x8
    std::uint32_t DisplayPropsSize = 0;  // +0xc, count of DisplayProps
    void* DisplayProps = nullptr;  // +0x10, int32 array
    std::int32_t ElementalType = 0;  // +0x14
    bool FairieDependantText = false;  // +0x18
    std::int32_t Flags = 0;  // +0x1c
    std::int32_t Level = 0;  // +0x20
    std::uint32_t ScriptSize = 0;  // +0x24, length of Script
    void* Script = nullptr;  // +0x28, string buffer (len + 1 bytes)
    bool SkillAssignable = false;  // +0x2c
    std::int32_t SkillCurrLevel = 0;  // +0x30
    std::int32_t SkillDescription = 0;  // +0x34
    std::uint32_t SkillIconSize = 0;  // +0x38, length of SkillIcon
    void* SkillIcon = nullptr;  // +0x3c, string buffer (len + 1 bytes)
    std::int32_t SkillName = 0;  // +0x40
    std::int32_t SkillNextLevel = 0;  // +0x44
    std::int32_t Type = 0;  // +0x48
};

class SkillList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~SkillList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t ListSize = 0;  // +0x4, count of List
    void* List = nullptr;  // +0x8, int32 array
};

class SlimeProperties : public CharacterProperties {
public:
    ~SlimeProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class SmallPlantProperties : public CharacterProperties {
public:
    ~SmallPlantProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class SnowWolfProperties : public CharacterProperties {
public:
    ~SnowWolfProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class SoundAutoGen {
public:
    static constexpr int kCount = 2;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~SoundAutoGen();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Id = 0;  // +0x4
    std::int32_t Type = 0;  // +0x8
};

class SoundBank {
public:
    static constexpr int kCount = 2;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~SoundBank();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t MaxPlayback = 0;  // +0x4
    std::int32_t MaxPlaybackBehavior = 0;  // +0x8
};

class SoundEventAutoGen : public SoundAutoGen {
public:
    ~SoundEventAutoGen() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class SpawnInfo {
public:
    virtual ~SpawnInfo();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Char = 0;  // +0x4
    std::int32_t Prob = 0;  // +0x8
    std::int32_t Qty = 0;  // +0xc
};

class SpiderProperties : public CharacterProperties {
public:
    ~SpiderProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class StatAutoAssignTarget {
public:
    virtual ~StatAutoAssignTarget();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t AssignToStat = 0;  // +0x4
    std::int32_t TargetStats = 0;  // +0x8
    std::int32_t TargetWeight = 0;  // +0xc
};

class SwampKingProperties : public CharacterProperties {
public:
    ~SwampKingProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class TileOffset {
public:
    virtual ~TileOffset();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int16_t X = 0;  // +0x4
    std::int16_t Y = 0;  // +0x6
};

class TriggerPlate {
public:
    static constexpr int kCount = 7;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~TriggerPlate();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Behavior = 0;  // +0x4
    bool IsActive = false;  // +0x8
    std::int32_t SoundOff = 0;  // +0xc
    std::int32_t SoundOn = 0;  // +0x10
    std::int32_t SpecificObject = 0;  // +0x14
    std::int32_t TriggerType = 0;  // +0x18
    std::int32_t Visual = 0;  // +0x1c
};

class TrollKingProperties : public CharacterProperties {
public:
    ~TrollKingProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class TrollProperties : public CharacterProperties {
public:
    ~TrollProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class Trophy {
public:
    static constexpr int kCount = 7;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Trophy();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Desc = 0;  // +0x4
    std::int32_t GLIndex = 0;  // +0x8
    std::int32_t GLLive = 0;  // +0xc
    std::int32_t Grade = 0;  // +0x10
    std::int32_t Label = 0;  // +0x14
    std::int32_t Name = 0;  // +0x18
    std::int32_t Type = 0;  // +0x1c
};

class Ugly_DogProperties : public CharacterProperties {
public:
    ~Ugly_DogProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class Ugly_Dog_BigProperties : public CharacterProperties {
public:
    ~Ugly_Dog_BigProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class WitchProperties : public CharacterProperties {
public:
    ~WitchProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class WldMapLocation {
public:
    static constexpr int kCount = 3;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~WldMapLocation();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Name = 0;  // +0x4
    std::int32_t State = 0;  // +0x8
    std::uint32_t LocationLevelsSize = 0;  // +0xc, count of LocationLevels
    void* LocationLevels = nullptr;  // +0x10, int32 array
};

class WorldMapLocker {
public:
    static constexpr int kCount = 2;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~WorldMapLocker();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t OnState = 0;  // +0x4
    std::int32_t QuestID = 0;  // +0x8
};

class YetiProperties : public CharacterProperties {
public:
    ~YetiProperties() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
};

class v2Condition {
public:
    virtual ~v2Condition();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Op = 0;  // +0x4
};

class v2ConditionStub : public v2Condition {
public:
    ~v2ConditionStub() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
    std::int32_t Op1 = 0;  // +0x8
    std::int32_t Op2 = 0;  // +0xc
};

class v2QuestObjective {
public:
    virtual ~v2QuestObjective();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Type = 0;  // +0x4
    std::int32_t Desc = 0;  // +0x8
    std::int32_t OnComplete = 0;  // +0xc
};

class v2QuestObjectiveStub : public v2QuestObjective {
public:
    ~v2QuestObjectiveStub() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
    std::uint32_t Str1Size = 0;  // +0x10, length of Str1
    void* Str1 = nullptr;  // +0x14
    std::uint32_t Str2Size = 0;  // +0x18, length of Str2
    void* Str2 = nullptr;  // +0x1c
    std::int32_t OID1 = 0;  // +0x20
    std::int32_t OID2 = 0;  // +0x24
    std::int32_t Value = 0;  // +0x28
};

class v2QuestReward {
public:
    virtual ~v2QuestReward();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Type = 0;  // +0x4
};

class v2QuestRewardStub : public v2QuestReward {
public:
    ~v2QuestRewardStub() override;
    void finalize() override;
    void read(IStreamBase* stream) override;
    std::int32_t Param1 = 0;  // +0x8
    std::int32_t Param2 = 0;  // +0xc
};

class v2QuestScripts {
public:
    virtual ~v2QuestScripts();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    // Fourteen length-prefixed strings: length word (+0x4 + 8*i), then buffer (+0x8 + 8*i, len + 1 bytes).
    std::uint32_t OnActiveSize = 0;  // +0x4, length of OnActive
    void* OnActive = nullptr;  // +0x8
    std::uint32_t OnAvailableSize = 0;  // +0xc, length of OnAvailable
    void* OnAvailable = nullptr;  // +0x10
    std::uint32_t OnClosedSize = 0;  // +0x14, length of OnClosed
    void* OnClosed = nullptr;  // +0x18
    std::uint32_t OnCompleteSize = 0;  // +0x1c, length of OnComplete
    void* OnComplete = nullptr;  // +0x20
    std::uint32_t OnFailedSize = 0;  // +0x24, length of OnFailed
    void* OnFailed = nullptr;  // +0x28
    std::uint32_t OnPostActiveSize = 0;  // +0x2c, length of OnPostActive
    void* OnPostActive = nullptr;  // +0x30
    std::uint32_t OnPostAvailableSize = 0;  // +0x34, length of OnPostAvailable
    void* OnPostAvailable = nullptr;  // +0x38
    std::uint32_t OnPostClosedSize = 0;  // +0x3c, length of OnPostClosed
    void* OnPostClosed = nullptr;  // +0x40
    std::uint32_t OnPostCompleteSize = 0;  // +0x44, length of OnPostComplete
    void* OnPostComplete = nullptr;  // +0x48
    std::uint32_t OnPostLockedSize = 0;  // +0x4c, length of OnPostLocked
    void* OnPostLocked = nullptr;  // +0x50
    std::uint32_t OnPreActiveSize = 0;  // +0x54, length of OnPreActive
    void* OnPreActive = nullptr;  // +0x58
    std::uint32_t OnPreAvailableSize = 0;  // +0x5c, length of OnPreAvailable
    void* OnPreAvailable = nullptr;  // +0x60
    std::uint32_t OnPreClosedSize = 0;  // +0x64, length of OnPreClosed
    void* OnPreClosed = nullptr;  // +0x68
    std::uint32_t OnPreCompleteSize = 0;  // +0x6c, length of OnPreComplete
    void* OnPreComplete = nullptr;  // +0x70
};

// Deleting destructors (D0) of the classes above.
void DeletingDestructor(AIFaction* self);
void DeletingDestructor(AIProps* self);
void DeletingDestructor(SimpleAnim* self);
void DeletingDestructor(Anim* self);
void DeletingDestructor(AnimStep* self);
void DeletingDestructor(CharacterProperties* self);
void DeletingDestructor(AssassinProperties* self);
void DeletingDestructor(AttackingFollowerProperties* self);
void DeletingDestructor(AttrBonusEntry* self);
void DeletingDestructor(BanditProperties* self);
void DeletingDestructor(BigLizardManProperties* self);
void DeletingDestructor(BigSpiderProperties* self);
void DeletingDestructor(CamAnimSet* self);
void DeletingDestructor(CharAnim* self);
void DeletingDestructor(CharEffect* self);
void DeletingDestructor(CharInfoName* self);
void DeletingDestructor(ClassFunc* self);
void DeletingDestructor(ClassFuncAddProp* self);
void DeletingDestructor(ClassFuncAddValue* self);
void DeletingDestructor(ClassFuncApplyGroupOnlyIf* self);
void DeletingDestructor(ClassFuncGroup* self);
void DeletingDestructor(ClassFuncLinear* self);
void DeletingDestructor(ClassFuncLinearLevel* self);
void DeletingDestructor(ClassFuncMinMax* self);
void DeletingDestructor(ClassFuncScaleWithPercentage* self);
void DeletingDestructor(ClassFuncScaleWithPercentageForBuff* self);
void DeletingDestructor(ClassFuncSetOID* self);
void DeletingDestructor(ClassFuncSetValue* self);
void DeletingDestructor(Coward_Dog* self);
void DeletingDestructor(CultistProperties* self);
void DeletingDestructor(DKProperties* self);
void DeletingDestructor(DesignSettings* self);
void DeletingDestructor(DialogStep* self);
void DeletingDestructor(DragonProperties* self);
void DeletingDestructor(EquippedFaeryProperties* self);
void DeletingDestructor(Faery* self);
void DeletingDestructor(FaeryList* self);
void DeletingDestructor(FastTravelDestination* self);
void DeletingDestructor(FollowerProperties* self);
void DeletingDestructor(FontColorDef* self);
void DeletingDestructor(FriendlyNPCProperties* self);
void DeletingDestructor(GameDifficulty* self);
void DeletingDestructor(GameObjectDamage* self);
void DeletingDestructor(GameObjectVisual* self);
void DeletingDestructor(GameOption* self);
void DeletingDestructor(GameOptionSelect* self);
void DeletingDestructor(GameOptionSlider* self);
void DeletingDestructor(GameOptionToggle* self);
void DeletingDestructor(GhostProperties* self);
void DeletingDestructor(GoblinRogueProperties* self);
void DeletingDestructor(GoblinShamanProperties* self);
void DeletingDestructor(GoblinSlingerProperties* self);
void DeletingDestructor(GuardProperties* self);
void DeletingDestructor(HelpPage* self);
void DeletingDestructor(HintPage* self);
void DeletingDestructor(InfectedProperties* self);
void DeletingDestructor(Inventory* self);
void DeletingDestructor(ItemBase* self);
void DeletingDestructor(ItemListEntry* self);
void DeletingDestructor(ItemPowerEntry* self);
void DeletingDestructor(LargePlantProperties* self);
void DeletingDestructor(LevelDeclaration* self);
void DeletingDestructor(LiftableObject* self);
void DeletingDestructor(Listener* self);
void DeletingDestructor(ListenerVector* self);
void DeletingDestructor(LizardManProperties* self);
void DeletingDestructor(LootEntry* self);
void DeletingDestructor(MadrukEnergySpawnerProperties* self);
void DeletingDestructor(MadrukMinionProperties* self);
void DeletingDestructor(MadrukProperties* self);
void DeletingDestructor(MadrukTorsoProperties* self);
void DeletingDestructor(MerchandiseListEntry* self);
void DeletingDestructor(MerchantProperties* self);
void DeletingDestructor(MothCocoonProperties* self);
void DeletingDestructor(MothProperties* self);
void DeletingDestructor(NumProb* self);
void DeletingDestructor(PlayerProperties* self);
void DeletingDestructor(Pos3D* self);
void DeletingDestructor(Projectile* self);
void DeletingDestructor(Rect* self);
void DeletingDestructor(RepeatableSprite* self);
void DeletingDestructor(ResurrectingGodProperties* self);
void DeletingDestructor(RootTrollProperties* self);
void DeletingDestructor(SandWormProperties* self);
void DeletingDestructor(SkeletonProperties* self);
void DeletingDestructor(Skill* self);
void DeletingDestructor(SkillList* self);
void DeletingDestructor(SlimeProperties* self);
void DeletingDestructor(SmallPlantProperties* self);
void DeletingDestructor(SnowWolfProperties* self);
void DeletingDestructor(SoundAutoGen* self);
void DeletingDestructor(SoundBank* self);
void DeletingDestructor(SoundEventAutoGen* self);
void DeletingDestructor(SpawnInfo* self);
void DeletingDestructor(SpiderProperties* self);
void DeletingDestructor(StatAutoAssignTarget* self);
void DeletingDestructor(SwampKingProperties* self);
void DeletingDestructor(TileOffset* self);
void DeletingDestructor(TriggerPlate* self);
void DeletingDestructor(TrollKingProperties* self);
void DeletingDestructor(TrollProperties* self);
void DeletingDestructor(Trophy* self);
void DeletingDestructor(Ugly_DogProperties* self);
void DeletingDestructor(Ugly_Dog_BigProperties* self);
void DeletingDestructor(WitchProperties* self);
void DeletingDestructor(WldMapLocation* self);
void DeletingDestructor(WorldMapLocker* self);
void DeletingDestructor(YetiProperties* self);
void DeletingDestructor(v2Condition* self);
void DeletingDestructor(v2ConditionStub* self);
void DeletingDestructor(v2QuestObjective* self);
void DeletingDestructor(v2QuestObjectiveStub* self);
void DeletingDestructor(v2QuestReward* self);
void DeletingDestructor(v2QuestRewardStub* self);
void DeletingDestructor(v2QuestScripts* self);

}  // namespace Structs
