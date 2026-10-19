// CharProperties: per-character stat sheets and buffs, embedded by value in Character.
// Vtable (_ZTV14CharProperties, 16 bytes): slot 0/1 are the two destructors.
// Original 32-bit size 0xe34 (last member +0xe30). Four Structs::CharacterProperties sheets of 900 bytes
// (vptr + 224 int32 properties) sit at +0x8, +0x38c, +0x710, +0xa94.
#pragma once

#include <cstdint>
#include <deque>
#include <map>
#include <string>
#include <vector>

#include "pydata-accessors/structs_records.hpp"
#include "dh2/CharTimers.hpp"

class Character;
class AnimatedFX;

class CharProperties {
public:
    struct BuffDecl;

    // One live buff: a full property sheet plus bookkeeping. Allocated with operator new(916).
    struct BuffInst : public Structs::CharacterProperties {
        // Structs::CharacterProperties occupies +0x000..+0x383 (vptr off_96BBC0 shared with the base class)
        int m_level;                              // +0x384 (900) buff level/power; higher level replaces a lower one
        int m_timerId;                            // +0x388 (904) CharTimers slot, -1 when none
        CharProperties* m_owner;                  // +0x38c (908)
        BuffDecl* m_decl;                         // +0x390 (912)
    };

    // One buff kind keyed by class id in m_buffs. 0x48 bytes in the original.
    struct BuffDecl {
        BuffDecl();                               // 0x3e1a08
        BuffDecl(const BuffDecl& other);          // 0x3e19c0
        ~BuffDecl();                              // 0x3e0a68

        int m_id;                                 // +0x00 class id (-1 default)
        AnimatedFX* m_fx;                         // +0x04 grabbed through VisualFXManager::GrabAnimFX
        std::string m_name;                       // +0x08 (STLport string, 24 bytes)
        std::deque<BuffInst*> m_insts;            // +0x20 (STLport deque, 40 bytes)
    };

    CharProperties();                             // 0x3df084
    virtual ~CharProperties();                    // slot 0 (0x3e0c6c), slot 1 deleting (0x3e0e10); 0x3e0e2c is the base-object copy

    void SetCharacter(Character* c);              // 0x3dec0c

    // Sheet access. useTemp selects s_temp instead of the live sheet m_props.
    int PROPS_Get(int propId, bool useTemp) const;                       // 0x3af76c / 0x3bd130 (clones: read m_props only, useTemp unused)
    int PROPS_GetInt(int propId, bool useTemp) const;                    // 0x3df6e0 (value >> 8)
    int PROPS_GetIntWithBonus(int propId, bool useTemp) const;           // 0x3df980
    bool PROPS_IsBonus(int propId) const;                                // 0x3dfd18
    int PROPS_GetFromSheet(int propId, Structs::CharacterProperties* sheet) const;  // 0x3b55d4
    void PROPS_SetToSheet(int propId, int value, Structs::CharacterProperties* sheet);  // 0x3e0614
    void PROPS_ResetSheet(Structs::CharacterProperties* sheet);          // 0x3def84
    void PROPS_Add(int propId, int value);                               // 0x3e0708
    void PROPS_AddInt(int propId, int value);                            // 0x3e0798 (value << 8)
    void PROPS_Set(int propId, int value);                               // 0x3e07a0
    void PROPS_SetInt(int propId, int value);                            // 0x3e0808 (value << 8)

    int PROPS_GetWalkSpeed() const;               // 0x3de6c4
    int PROPS_GetRotationSpeed() const;           // 0x3de708
    int PROPS_GetAttackSpeed() const;             // 0x3de74c
    int PROPS_GetOpacity() const;                 // 0x3de790
    int PROPS_GetModifiedXP(int xp) const;        // 0x3de7ec
    int PROPS_GetModifiedPrice(int price) const;  // 0x3de814
    int PROPS_GetMagicDamageBonus() const;        // 0x3df718
    int PROPS_GetMagicToHit() const;              // 0x3df76c
    int PROPS_GetBonusCritRating(bool offHand) const;      // 0x3df7c4
    int PROPS_GetBonusAttackRating(bool offHand) const;    // 0x3df81c
    int PROPS_GetBonusDamage(bool offHand) const;          // 0x3df8ac

    void PROPS_ApplyClassToSheet(int classId, Structs::CharacterProperties* sheet);  // 0x3df314
    void PROPS_ApplyClass(int classId, bool useTemp);     // 0x3df3b8

    // Buffs and damage over time
    Structs::CharacterProperties* PROPS_AddBuff(int classId, unsigned int durationMs, int maxStacks, unsigned int level, int fxId, const char* name);  // 0x3e232c
    void PROPS_DelBuff(int classId, Structs::CharacterProperties* inst);  // 0x3e101c
    void PROPS_RemoveAllBuffs();                  // 0x3e0af8
    void BuffExpired(CharTimers::Timer* timer);   // 0x3e123c
    Structs::CharacterProperties* PROPS_AddDot(int durationMs, int damage, int element);  // 0x3e2720
    void PROPS_RemoveDot(int element);            // 0x3de83c (empty)
    void PROPS_DebuffSlow(unsigned int durationMs);  // 0x3e2a5c
    void HandleDots();                            // 0x3df3f0

    // Loading and recalculation
    void LoadBaseProperties(int charTableId);     // 0x3df2a4
    void LoadGearsProperties();                   // 0x3df480
    void LoadPropertiesForClassSelect(int classId);  // 0x3e0854
    void UpdateBaseProperties(int charTableId);   // 0x3e087c
    void UpdateGearsProperties();                 // 0x3e08a8
    void RecalcProperty(int propId);              // 0x3dfe60
    void RecalcProperties(bool reloadClass);      // 0x3e0810
    void ResetGearsProperties();                  // 0x3defac
    void ResetSavedProperties();                  // 0x3defb4
    void ResetBaseProperties();                   // 0x3defbc
    void ResetAllProperties();                    // 0x3defc4

    // Property name table (static s_propNames, loaded from a stream)
    static void LoadPropNames(const char* path);  // 0x3e1374
    static void UnLoadPropNames();                // 0x3df2b0
    static const char* GetNameFromPropID(int propId);   // 0x3e16e0
    static int GetPropIDFromName(const char* name);     // 0x3e1758

    void DBG_PROPS_DumpToFile(const char* path, bool flag) const;  // 0x3de840 (empty in the shipped build)
    void DBG_PROPS_Print(int a, int b) const;     // 0x3de844 (empty)
    const char* DBG_PROPS_GetName(int propId) const;  // 0x3de848

    static Structs::CharacterProperties s_temp;
    static std::vector<char*> s_propNames;

public:
    // Per-sheet helpers. Property storage is at sheet + Structs::CharacterProperties::m_dataOffsets[id] + 4.
    int _GetProperty(const Structs::CharacterProperties& sheet, int propId) const;        // 0x3dedb4
    void _SetProperty(Structs::CharacterProperties& sheet, int propId, int value);        // 0x3deca0
    void _AddProperty(Structs::CharacterProperties& sheet, int propId, int value);        // 0x3df140
    bool _IsPropertySet(const Structs::CharacterProperties& sheet, int propId) const;     // 0x3df114
    int _GetType(int propId) const;               // 0x3deed8 (bit 0x20 saved, bit 0x08 final)
    int _GetDefault(int propId) const;            // 0x3def10
    void _ResetProperties(Structs::CharacterProperties& sheet);                           // 0x3def34
    void _LoadFromCharTable(Structs::CharacterProperties& sheet, int charTableId);        // 0x3df250
    void _LoadClass(Structs::CharacterProperties& sheet, int classId, bool useTemp);      // 0x3e2e20
    void _LoadGearStats(int itemId, bool leftHand);   // 0x3e3154
    void _LoadGearPower(int powerId, bool leftHand);  // 0x3e32b4

    // ClassFunc handlers
    void _ApplyGroupOnlyIf(Structs::CharacterProperties& sheet, Structs::ClassFunc* fn);  // 0x3e2bcc
    void _SetOID(Structs::CharacterProperties& sheet, Structs::ClassFunc* fn);            // 0x3e2bd0
    void _AddValue(Structs::CharacterProperties& sheet, Structs::ClassFunc* fn);          // 0x3e2bdc
    void _ScaleWithPercentageForBuff(Structs::CharacterProperties& sheet, Structs::ClassFunc* fn, bool useFinal);  // 0x3e2c10
    void _ScaleWithPercentage(Structs::CharacterProperties& sheet, Structs::ClassFunc* fn, bool useFinal);         // 0x3e2c78
    void _AddOtherProp(Structs::CharacterProperties& sheet, Structs::ClassFunc* fn);      // 0x3e2cc0
    void _MinMax(Structs::CharacterProperties& sheet, Structs::ClassFunc* fn);            // 0x3e2d04
    void _LinearWithPropPlusBaseValue(Structs::CharacterProperties& sheet, Structs::ClassFunc* fn, bool useFinal);  // 0x3e2d4c
    void _Group(Structs::CharacterProperties& sheet, Structs::ClassFunc* fn, bool useFinal);                        // 0x3e3014

    // _vptr                                      // +0x000
    Character* m_character;                       // +0x004
    Structs::CharacterProperties m_baseProps;     // +0x008 loaded from the character table / class (ResetBaseProperties)
    Structs::CharacterProperties m_savedProps;    // +0x38c properties with type bit 0x20 (PROPS_Add/Set write here)
    Structs::CharacterProperties m_gearProps;     // +0x710 equipment contribution (ResetGearsProperties)
    Structs::CharacterProperties m_props;         // +0xa94 final computed sheet (what PROPS_Get reads)
    // Named sheet words, read by the layers above as sheet members (a member cannot overlap a sheet). Sheet word m_wN
    // sits at sheet offset +4N (m_baseProps starts at CharProperties +0x08, m_props at +0xa94):
    //   m_baseProps.m_w13..m_w15 (+0x3c..+0x44): GameObject scale inputs (Character::InitPost)
    //   m_baseProps.m_w18 (+0x50): GetFXScale and GetFXScaleValue
    //   m_props.m_w8 (+0xab4): CharEffectTable row; m_w9 (+0xab8): CharSoundsTable row; m_w10 (+0xabc): GetLoot
    //   m_props.m_w17 (+0xad8): SetRelativeAABB percent; m_w30 (+0xb0c): faery list index
    //   m_props.m_w203 (+0xdc0), m_props.m_w204 (+0xdc4): equip flags read by ItemInventory::IsItemEquippable
    std::map<int, BuffDecl> m_buffs;              // +0xe18 keyed by class id (STLport map: header 0xe18..0xe27, count +0xe28)
    uint8_t pad_e2c[4];                           // +0xe2c untouched
    uint32_t unk_e30;                             // +0xe30 ctor 0
};
