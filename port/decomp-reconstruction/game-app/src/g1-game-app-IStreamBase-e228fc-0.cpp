// Batch g1-game-app-IStreamBase-e228fc-0 (IStreamBase, part 1 of 2).
// Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so. The assembly was checked for the vtable slots and the
// 64-bit transfer count (readAs<unsigned int>, 0x313b48), seekWrite (0x316408), the string writeAs (0x461668) and the
// deleting destructor (0x316798, skipped).
//
// Each typed helper is an explicit specialization with its own address, as in the other part of this class
// (g1-game-app-IStreamBase-e228fc-1.cpp). The primary templates in dh2/IStreamBase.hpp have no body.
//
// The original moves sizeof(T) bytes straight into the object. That is exact for the scalar types and for
// Door::DoorStates, whose host and file sizes match. Point3D<float> and std::bitset<128> are decoded field by field from
// their 32-bit file layout instead, so no host struct is copied (TRACK-B decision 2).
// Structs::CharacterProperties is the 900-byte sheet: the vptr word (not stored), then 224 int32 words, encoded and
// decoded one word at a time like the other records.
#include "dh2/IStreamBase.hpp"

#include <bitset>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/deps/game_types.hpp"
#include "dh2/Door.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::CharacterProperties

// Global assert level (libDungeonHunter2.so gAssertLevel). core-platform/memory.hpp declares it too, but that header is
// not included here, as in the other sources of this class.
extern int gAssertLevel;

namespace {

// The source path that the original passes to its IStream.h ASSERT.
constexpr const char* kIStreamSource = "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/IStream.h";

// The lines of the two ASSERTs in the template: 69 for a read, 77 for a write.
constexpr int kReadAssertLine = 69;
constexpr int kWriteAssertLine = 77;

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash). gAssertLevel 1
// prints the message to stderr, and execution continues. Any other level does nothing.
void ReportIStreamAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kIStreamSource, line);
    }
}

// File fields are little-endian. Each field is encoded and decoded on its own; no host struct is copied.
void PutU32(std::uint8_t* p, std::uint32_t v) {
    p[0] = static_cast<std::uint8_t>(v);
    p[1] = static_cast<std::uint8_t>(v >> 8);
    p[2] = static_cast<std::uint8_t>(v >> 16);
    p[3] = static_cast<std::uint8_t>(v >> 24);
}

std::uint32_t GetU32(const std::uint8_t* p) {
    return static_cast<std::uint32_t>(p[0]) | (static_cast<std::uint32_t>(p[1]) << 8) |
           (static_cast<std::uint32_t>(p[2]) << 16) | (static_cast<std::uint32_t>(p[3]) << 24);
}

// A float32 field is its IEEE bit pattern.
void PutFloat(std::uint8_t* p, float v) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &v, sizeof bits);
    PutU32(p, bits);
}

float GetFloat(const std::uint8_t* p) {
    const std::uint32_t bits = GetU32(p);
    float v = 0.0f;
    std::memcpy(&v, &bits, sizeof v);
    return v;
}

// Point3D<float>: X, Y and Z as float32 at +0x0, +0x4 and +0x8. 12 bytes.
constexpr std::size_t kPoint3DFileSize = 12;

void EncodePoint3D(const Point3D<float>& point, std::uint8_t* out) {
    PutFloat(out + 0, point.X);
    PutFloat(out + 4, point.Y);
    PutFloat(out + 8, point.Z);
}

void DecodePoint3D(const std::uint8_t* in, Point3D<float>& point) {
    point.X = GetFloat(in + 0);
    point.Y = GetFloat(in + 4);
    point.Z = GetFloat(in + 8);
}

// std::bitset<128>: 16 bytes. Bit i is bit i % 8 of byte i / 8. That is the order the original's raw copy gives on a
// little-endian target, whatever the width of the bitset's internal words.
constexpr std::size_t kBitsetFileSize = 16;
constexpr std::size_t kBitsetBits = 128;

void EncodeBits(const std::bitset<kBitsetBits>& bits, std::uint8_t* out) {
    for (std::size_t i = 0; i < kBitsetFileSize; ++i) {
        out[i] = 0;
    }
    for (std::size_t bit = 0; bit < kBitsetBits; ++bit) {
        if (bits[bit]) {
            out[bit / 8] = static_cast<std::uint8_t>(out[bit / 8] | (1u << (bit % 8)));
        }
    }
}

void DecodeBits(const std::uint8_t* in, std::bitset<kBitsetBits>& bits) {
    for (std::size_t bit = 0; bit < kBitsetBits; ++bit) {
        bits.set(bit, ((in[bit / 8] >> (bit % 8)) & 1u) != 0);
    }
}

// Structs::CharacterProperties: 900 bytes in the original. +0x00 is the vtable pointer, then the 224 int32 properties
// m_w1..m_w224 at +0x04 .. +0x383. The original copies the whole object, vptr included; a host vptr is not file data,
// so file bytes +0x00..+0x03 are written as zero and ignored on read, and each word is moved on its own.
constexpr std::size_t kSheetFileSize = 900;
constexpr std::size_t kSheetWords = 224;

using Sheet = Structs::CharacterProperties;
using SheetWord = std::int32_t Sheet::*;

// The words in file order: word i is at file offset 4 + 4 * i.
constexpr SheetWord kSheetWordMembers[kSheetWords] = {
    &Sheet::AIFaction, &Sheet::AI, &Sheet::AnimTable, &Sheet::ModelFile, &Sheet::ModularVisual, &Sheet::ClassString,
    &Sheet::ClassDescString, &Sheet::Effects, &Sheet::Sounds, &Sheet::Loot, &Sheet::Dialogs, &Sheet::RespawnTime,
    &Sheet::Scale_X, &Sheet::Scale_Y, &Sheet::Scale_Z, &Sheet::Melee_Scale, &Sheet::Collision_Scale, &Sheet::FX_Scale,
    &Sheet::Name, &Sheet::Level, &Sheet::LevelMax, &Sheet::LevelMin, &Sheet::LevelOffset, &Sheet::KillCount,
    &Sheet::MPLevelKillCount, &Sheet::DeathCount, &Sheet::ClassID, &Sheet::StatAutoAssignScheme, &Sheet::SkillTree, &Sheet::FaeryList,
    &Sheet::RangeMinDistance, &Sheet::RangeMaxDistance, &Sheet::RangeProjectileID, &Sheet::XP, &Sheet::Max_XP, &Sheet::Value_XP,
    &Sheet::HP, &Sheet::HP_Bonus, &Sheet::Max_HP, &Sheet::Regen_HP, &Sheet::CombatRegen_HP, &Sheet::MP,
    &Sheet::MP_Bonus, &Sheet::Max_MP, &Sheet::Regen_MP, &Sheet::CombatRegen_MP, &Sheet::Speed_Modifier_Walk, &Sheet::Speed_Modifier_Rotation,
    &Sheet::Speed_Modifier_Attack, &Sheet::Opacity_Modifier, &Sheet::Rating_Attack, &Sheet::Rating_Attack_Bonus_Sword, &Sheet::Rating_Attack_Bonus_Axe, &Sheet::Rating_Attack_Bonus_Mace,
    &Sheet::Rating_Attack_Bonus_Dagger, &Sheet::Rating_Attack_Bonus_Range, &Sheet::Rating_Attack_Bonus_Staff, &Sheet::Rating_Attack_Bonus_Wand, &Sheet::Rating_Attack_Bonus_Dual, &Sheet::Rating_Defense,
    &Sheet::Rating_Dodge, &Sheet::Rating_Block, &Sheet::Rating_Block_Bonus_Shield, &Sheet::Rating_Critical, &Sheet::Rating_Critical_Bonus_Sword, &Sheet::Rating_Critical_Bonus_Axe,
    &Sheet::Rating_Critical_Bonus_Mace, &Sheet::Rating_Critical_Bonus_Dagger, &Sheet::Rating_Critical_Bonus_Range, &Sheet::Rating_Critical_Bonus_Staff, &Sheet::Rating_Critical_Bonus_Wand, &Sheet::Physical_Armor,
    &Sheet::Physical_Armor_Bonus_Shield, &Sheet::Magical_Armor, &Sheet::Resistance_Fire, &Sheet::Resistance_Water, &Sheet::Resistance_Lightning, &Sheet::Resistance_Earth,
    &Sheet::Resistance_Air, &Sheet::Damage_Min_Main_Hand, &Sheet::Damage_Max_Main_Hand, &Sheet::Damage_Min_Off_Hand, &Sheet::Damage_Max_Off_Hand, &Sheet::Damage_Bonus_Sword,
    &Sheet::Damage_Bonus_Axe, &Sheet::Damage_Bonus_Mace, &Sheet::Damage_Bonus_Dagger, &Sheet::Damage_Bonus_Range, &Sheet::Damage_Bonus_Staff, &Sheet::Damage_Bonus_Wand,
    &Sheet::Damage_Bonus_Dual, &Sheet::Damage_Bonus_TwoHand, &Sheet::Damage_Bonus_Stunned, &Sheet::Damage_Bonus_Sneaking, &Sheet::Damage_Bonus_Combo, &Sheet::Damage_Elemental_Min_Main_Hand,
    &Sheet::Damage_Elemental_Max_Main_Hand, &Sheet::Damage_Elemental_Type_Main_Hand, &Sheet::Damage_Elemental_Min_Off_Hand, &Sheet::Damage_Elemental_Max_Off_Hand, &Sheet::Damage_Elemental_Type_Off_Hand, &Sheet::Damage_Fire_Min_Main_Hand,
    &Sheet::Damage_Fire_Max_Main_Hand, &Sheet::Damage_Fire_Min_Off_Hand, &Sheet::Damage_Fire_Max_Off_Hand, &Sheet::Damage_Water_Min_Main_Hand, &Sheet::Damage_Water_Max_Main_Hand, &Sheet::Damage_Water_Min_Off_Hand,
    &Sheet::Damage_Water_Max_Off_Hand, &Sheet::Damage_Lightning_Min_Main_Hand, &Sheet::Damage_Lightning_Max_Main_Hand, &Sheet::Damage_Lightning_Min_Off_Hand, &Sheet::Damage_Lightning_Max_Off_Hand, &Sheet::Damage_Earth_Min_Main_Hand,
    &Sheet::Damage_Earth_Max_Main_Hand, &Sheet::Damage_Earth_Min_Off_Hand, &Sheet::Damage_Earth_Max_Off_Hand, &Sheet::Damage_Air_Min_Main_Hand, &Sheet::Damage_Air_Max_Main_Hand, &Sheet::Damage_Air_Min_Off_Hand,
    &Sheet::Damage_Air_Max_Off_Hand, &Sheet::Damage_Block_Mitigation, &Sheet::Damage_Crit_Intensification, &Sheet::Dot_Min_Damage, &Sheet::Dot_Max_Damage, &Sheet::Dot_Duration,
    &Sheet::Dot_Tick_Damage_Normal, &Sheet::Dot_Tick_Damage_Fire, &Sheet::Dot_Tick_Damage_Water, &Sheet::Dot_Tick_Damage_Lightning, &Sheet::Dot_Tick_Damage_Earth, &Sheet::Dot_Tick_Damage_Air,
    &Sheet::Leech_HP, &Sheet::Leech_MP, &Sheet::Hurt_Resist_Chance, &Sheet::Hurt_Target_Chance, &Sheet::Push_Resist_Chance, &Sheet::Push_Target_Chance,
    &Sheet::Stun_Resist_Chance, &Sheet::Stun_Target_Chance, &Sheet::Stun_Duration, &Sheet::Fear_Resist_Chance, &Sheet::Fear_Target_Chance, &Sheet::Fear_Duration,
    &Sheet::Slow_Resist_Chance, &Sheet::Slow_Target_Chance, &Sheet::Slow_Duration, &Sheet::Diminishing_Return, &Sheet::Stat_Points, &Sheet::Stat_Strength,
    &Sheet::Stat_Dexterity, &Sheet::Stat_Endurance, &Sheet::Stat_Energy, &Sheet::Prereq_Strength, &Sheet::Prereq_Dexterity, &Sheet::Prereq_Endurance,
    &Sheet::Prereq_Energy, &Sheet::Skill_Points, &Sheet::Spell_Rating_Attack, &Sheet::Spell_Rating_Attack_Bonus_Fire, &Sheet::Spell_Rating_Attack_Bonus_Water, &Sheet::Spell_Rating_Attack_Bonus_Lightning,
    &Sheet::Spell_Rating_Attack_Bonus_Earth, &Sheet::Spell_Rating_Attack_Bonus_Air, &Sheet::Spell_Rating_Dodge, &Sheet::Spell_Rating_Critical, &Sheet::Spell_Damage_Bonus_Fire, &Sheet::Spell_Damage_Bonus_Water,
    &Sheet::Spell_Damage_Bonus_Lightning, &Sheet::Spell_Damage_Bonus_Earth, &Sheet::Spell_Damage_Bonus_Air, &Sheet::Spell_Damage_Crit_Intensification, &Sheet::SnS_Level, &Sheet::SnS_ManaCost,
    &Sheet::SnS_MinDamage, &Sheet::SnS_MaxDamage, &Sheet::SnS_Duration, &Sheet::SnS_Cooldown, &Sheet::SnS_Dot_Elemental_Type, &Sheet::SnS_Dot_Min_Damage,
    &Sheet::SnS_Dot_Max_Damage, &Sheet::SnS_Dot_Duration, &Sheet::SnS_Hurt_Target_Chance, &Sheet::SnS_Push_Target_Chance, &Sheet::SnS_Stun_Target_Chance, &Sheet::SnS_Stun_Duration,
    &Sheet::SnS_Fear_Target_Chance, &Sheet::SnS_Fear_Duration, &Sheet::SnS_Slow_Target_Chance, &Sheet::SnS_Slow_Duration, &Sheet::TempProp1, &Sheet::TempProp2,
    &Sheet::Potion_HP_Modifier, &Sheet::Potion_MP_Modifier, &Sheet::Special_Loot_Max_Potions, &Sheet::Special_Loot_Gold_Multiplier, &Sheet::Special_Loot_Magical_Chance, &Sheet::Special_Transmute_Efficiency,
    &Sheet::Special_Sneak, &Sheet::Special_Sneak_Detection, &Sheet::Special_Bonus_To_XP, &Sheet::Special_Merchant_Price, &Sheet::Special_Equip_Main_In_Offhand, &Sheet::Special_Equip_2H_In_One,
    &Sheet::Threat_PerDamage, &Sheet::Threat_PerHeal, &Sheet::Threat_PerDamageToFriendly, &Sheet::Menu_Average_Melee_To_Hit, &Sheet::Menu_Average_Spell_To_Hit, &Sheet::Menu_Melee_Damage_Reduction,
    &Sheet::Visual_AlphaFadeInSpawn, &Sheet::Visual_AlphaFadeOutDespawn, &Sheet::Visual_BlinkWhenHit, &Sheet::Achievement_Transmute_Count, &Sheet::Achievement_Block_Count, &Sheet::Achievement_Evade_Count,
    &Sheet::Achievement_SkillUse_Count, &Sheet::Achievement_Break_Count, &Sheet::Achievement_Chests_Count, &Sheet::Achievement_Potions_Count, &Sheet::Achievement_Sell_Count, &Sheet::Achievement_Spent_Count,
    &Sheet::Achievement_KnockedDown_Count, &Sheet::Achievement_PickUp_Count,
};

void EncodeSheet(const Structs::CharacterProperties& sheet, std::uint8_t* out) {
    PutU32(out, 0);
    for (std::size_t i = 0; i < kSheetWords; ++i) {
        PutU32(out + 4 + 4 * i, static_cast<std::uint32_t>(sheet.*kSheetWordMembers[i]));
    }
}

void DecodeSheet(const std::uint8_t* in, Structs::CharacterProperties& sheet) {
    for (std::size_t i = 0; i < kSheetWords; ++i) {
        sheet.*kSheetWordMembers[i] = static_cast<std::int32_t>(GetU32(in + 4 + 4 * i));
    }
}

}  // namespace

// 0x313b48 void IStreamBase::readAs<unsigned int>(unsigned int&)
// read() is vtable +0x18 and returns a 64-bit count (r0:r1). The original checks both halves; comparing the whole
// count does the same.
template <>
void IStreamBase::readAs<unsigned int>(unsigned int& value) {
    const std::uint64_t got = read(&value, sizeof(unsigned int));
    if (got != sizeof(unsigned int)) {
        ReportIStreamAssert("bytesRead == sizeof(T)", kReadAssertLine);
    }
}

// 0x316404 IStreamBase::~IStreamBase() (D1, base-object destructor)
// The original body is empty (4 bytes). The compiler sets the vtable pointer.
IStreamBase::~IStreamBase() {}

// 0x316408 void IStreamBase::seekWrite(unsigned long long) (virtual, vtable +0x2c)
// Forwards the 64-bit position to seek() (vtable +0x20), a tail call in the original. The original also passes the
// object's vtable pointer as a second argument, a register left over for the 64-bit position. seek() takes no such
// argument, so it is not passed here.
void IStreamBase::seekWrite(std::uint64_t pos) {
    seek(pos);
}

// 0x31641c std::uint64_t IStreamBase::tellWrite() const (virtual, vtable +0x30)
// Returns tell() (vtable +0x24), a tail call in the original. The 64-bit result passes through in r0:r1.
std::uint64_t IStreamBase::tellWrite() const {
    return tell();
}

// 0x316798 IStreamBase::~IStreamBase() (D0, deleting destructor)
// Skipped: compiler-generated. It is the deleting form of the virtual destructor declared in dh2/IStreamBase.hpp. The
// original stores the class vtable pointer (_ZTV11IStreamBase + 8) and calls CustomFree on the object (asm checked).

// 0x33e040 void IStreamBase::readAs<bool>(bool&)
template <>
void IStreamBase::readAs<bool>(bool& value) {
    const std::uint64_t got = read(&value, sizeof(bool));
    if (got != sizeof(bool)) {
        ReportIStreamAssert("bytesRead == sizeof(T)", kReadAssertLine);
    }
}

// 0x33e138 void IStreamBase::writeAs<bool>(bool const&)
// write() is vtable +0x1c.
template <>
void IStreamBase::writeAs<bool>(const bool& value) {
    const std::uint64_t written = write(&value, sizeof(bool));
    if (written != sizeof(bool)) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", kWriteAssertLine);
    }
}

// 0x37fb38 void IStreamBase::writeAs<std::bitset<128u> >(std::bitset<128u> const&)
// The 16-byte file layout comes from EncodeBits, not from a copy of the bitset's words.
template <>
void IStreamBase::writeAs<std::bitset<128u>>(const std::bitset<128u>& value) {
    std::uint8_t file[kBitsetFileSize];
    EncodeBits(value, file);
    const std::uint64_t written = write(file, kBitsetFileSize);
    if (written != kBitsetFileSize) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", kWriteAssertLine);
    }
}

// 0x37fbe8 void IStreamBase::readAs<std::bitset<128u> >(std::bitset<128u>&)
// The bits start from the bitset's current values, so bytes a short read does not reach keep them, as the original's
// direct read does. The 16 bytes are then decoded bit by bit.
template <>
void IStreamBase::readAs<std::bitset<128u>>(std::bitset<128u>& value) {
    std::uint8_t file[kBitsetFileSize];
    EncodeBits(value, file);
    const std::uint64_t got = read(file, kBitsetFileSize);
    if (got != kBitsetFileSize) {
        ReportIStreamAssert("bytesRead == sizeof(T)", kReadAssertLine);
    }
    DecodeBits(file, value);
}

// 0x38b758 void IStreamBase::readAs<int>(int&)
// Also called by readAs(std::string&) for the length, in the other part of this class.
template <>
void IStreamBase::readAs<int>(int& value) {
    const std::uint64_t got = read(&value, sizeof(int));
    if (got != sizeof(int)) {
        ReportIStreamAssert("bytesRead == sizeof(T)", kReadAssertLine);
    }
}

// 0x38b808 void IStreamBase::writeAs<int>(int const&)
// Also called by writeAs(std::string const&) for the length.
template <>
void IStreamBase::writeAs<int>(const int& value) {
    const std::uint64_t written = write(&value, sizeof(int));
    if (written != sizeof(int)) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", kWriteAssertLine);
    }
}

// 0x39f638 void IStreamBase::readAs<unsigned char>(unsigned char&)
template <>
void IStreamBase::readAs<unsigned char>(unsigned char& value) {
    const std::uint64_t got = read(&value, sizeof(unsigned char));
    if (got != sizeof(unsigned char)) {
        ReportIStreamAssert("bytesRead == sizeof(T)", kReadAssertLine);
    }
}

// 0x39f828 void IStreamBase::writeAs<unsigned char>(unsigned char const&)
template <>
void IStreamBase::writeAs<unsigned char>(const unsigned char& value) {
    const std::uint64_t written = write(&value, sizeof(unsigned char));
    if (written != sizeof(unsigned char)) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", kWriteAssertLine);
    }
}

// 0x3a3970 void IStreamBase::readAs<Structs::CharacterProperties>(Structs::CharacterProperties&)
// read() is vtable +0x18 and gets (object, 900, 0). ASSERT bytesRead == sizeof(T) at line 69. The words start from the
// sheet's current values, so a short read keeps them, as the original's direct read does. Then the 224 words are
// decoded. The vptr word of the file image is skipped (see kSheetFileSize).
template <>
void IStreamBase::readAs<Structs::CharacterProperties>(Structs::CharacterProperties& value) {
    std::uint8_t file[kSheetFileSize];
    EncodeSheet(value, file);
    const std::uint64_t got = read(file, kSheetFileSize);
    if (got != kSheetFileSize) {
        ReportIStreamAssert("bytesRead == sizeof(T)", kReadAssertLine);
    }
    DecodeSheet(file, value);
}

// 0x3a3ad0 void IStreamBase::writeAs<Structs::CharacterProperties>(Structs::CharacterProperties const&)
// write() is vtable +0x1c and gets (object, 900, 0). ASSERT bytesWritten == sizeof(T) at line 77. The file image is
// the vptr word (zero here) followed by the 224 words.
template <>
void IStreamBase::writeAs<Structs::CharacterProperties>(const Structs::CharacterProperties& value) {
    std::uint8_t file[kSheetFileSize];
    EncodeSheet(value, file);
    const std::uint64_t written = write(file, kSheetFileSize);
    if (written != kSheetFileSize) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", kWriteAssertLine);
    }
}

// 0x3a3a20 void IStreamBase::readAs<Point3D<float> >(Point3D<float>&)
// The 12 bytes start from the current values, so a short read keeps them, as the original's direct read does. Then X,
// Y and Z are decoded.
template <>
void IStreamBase::readAs<Point3D<float>>(Point3D<float>& value) {
    std::uint8_t file[kPoint3DFileSize];
    EncodePoint3D(value, file);
    const std::uint64_t got = read(file, kPoint3DFileSize);
    if (got != kPoint3DFileSize) {
        ReportIStreamAssert("bytesRead == sizeof(T)", kReadAssertLine);
    }
    DecodePoint3D(file, value);
}

// 0x3a3b80 void IStreamBase::writeAs<Point3D<float> >(Point3D<float> const&)
template <>
void IStreamBase::writeAs<Point3D<float>>(const Point3D<float>& value) {
    std::uint8_t file[kPoint3DFileSize];
    EncodePoint3D(value, file);
    const std::uint64_t written = write(file, kPoint3DFileSize);
    if (written != kPoint3DFileSize) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", kWriteAssertLine);
    }
}

// 0x3e79b4 void IStreamBase::readAs<Door::DoorStates>(Door::DoorStates&)
// A 4-byte enum: the host and file sizes match, so the raw read is the original's read.
template <>
void IStreamBase::readAs<Door::DoorStates>(Door::DoorStates& value) {
    const std::uint64_t got = read(&value, sizeof(Door::DoorStates));
    if (got != sizeof(Door::DoorStates)) {
        ReportIStreamAssert("bytesRead == sizeof(T)", kReadAssertLine);
    }
}

// 0x3e7abc void IStreamBase::writeAs<Door::DoorStates>(Door::DoorStates const&)
template <>
void IStreamBase::writeAs<Door::DoorStates>(const Door::DoorStates& value) {
    const std::uint64_t written = write(&value, sizeof(Door::DoorStates));
    if (written != sizeof(Door::DoorStates)) {
        ReportIStreamAssert("bytesWritten == sizeof(T)", kWriteAssertLine);
    }
}

// 0x461668 void IStreamBase::writeAs(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
// The length written first is size + 1, the terminating NUL included, as an int32 through writeAs<int>. Then size + 1
// bytes from the character buffer go through write(), so the NUL is written too. The original takes that count from its
// end and begin pointers; std::string gives the same count from size(). The count is sign-extended to 64 bits, as the
// original does (asm: MOV R3, R2, ASR #31). The result of write() is dropped: the original tail-calls it, and the
// header declares void.
void IStreamBase::writeAs(const std::string& value) {
    const int length = static_cast<int>(value.size()) + 1;
    writeAs<int>(length);
    write(value.c_str(), static_cast<std::uint64_t>(length));
}
