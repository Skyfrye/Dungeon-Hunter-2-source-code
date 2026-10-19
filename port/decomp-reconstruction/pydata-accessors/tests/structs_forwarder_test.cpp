// Checks the read forwarders of the generated record classes. A forwarder (a thunk to
// CharacterProperties::read) owns no fields: its read goes through the base read, which
// stores the 224 words at +0x4 .. +0x380. For the same stream, a forwarder must leave every
// word the same as the base does.
#include "pydata-accessors/structs_records.hpp"
#include "read_bytes_stream.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Hands out a fixed byte sequence to StreamReader::readAs and reports how far it was read.
class ByteStream : public ReadBytesStream {
public:
    ByteStream(const unsigned char* data, std::size_t n) : data_(data), n_(n) {}
    bool ReadBytes(void* dst, std::size_t n) override {
        if (pos_ + n > n_) return false;
        std::memcpy(dst, data_ + pos_, n);
        pos_ += n;
        return true;
    }
    std::size_t pos() const { return pos_; }

private:
    const unsigned char* data_;
    std::size_t n_;
    std::size_t pos_ = 0;
};

// Word k (0-based) is the base's member at offset +0x4 * (k + 1).
using Word = std::int32_t Structs::CharacterProperties::*;
static const Word kWords[] = {
    &Structs::CharacterProperties::AIFaction, &Structs::CharacterProperties::AI, &Structs::CharacterProperties::AnimTable, &Structs::CharacterProperties::ModelFile, &Structs::CharacterProperties::ModularVisual, &Structs::CharacterProperties::ClassString,
    &Structs::CharacterProperties::ClassDescString, &Structs::CharacterProperties::Effects, &Structs::CharacterProperties::Sounds, &Structs::CharacterProperties::Loot, &Structs::CharacterProperties::Dialogs, &Structs::CharacterProperties::RespawnTime,
    &Structs::CharacterProperties::Scale_X, &Structs::CharacterProperties::Scale_Y, &Structs::CharacterProperties::Scale_Z, &Structs::CharacterProperties::Melee_Scale, &Structs::CharacterProperties::Collision_Scale, &Structs::CharacterProperties::FX_Scale,
    &Structs::CharacterProperties::Name, &Structs::CharacterProperties::Level, &Structs::CharacterProperties::LevelMax, &Structs::CharacterProperties::LevelMin, &Structs::CharacterProperties::LevelOffset, &Structs::CharacterProperties::KillCount,
    &Structs::CharacterProperties::MPLevelKillCount, &Structs::CharacterProperties::DeathCount, &Structs::CharacterProperties::ClassID, &Structs::CharacterProperties::StatAutoAssignScheme, &Structs::CharacterProperties::SkillTree, &Structs::CharacterProperties::FaeryList,
    &Structs::CharacterProperties::RangeMinDistance, &Structs::CharacterProperties::RangeMaxDistance, &Structs::CharacterProperties::RangeProjectileID, &Structs::CharacterProperties::XP, &Structs::CharacterProperties::Max_XP, &Structs::CharacterProperties::Value_XP,
    &Structs::CharacterProperties::HP, &Structs::CharacterProperties::HP_Bonus, &Structs::CharacterProperties::Max_HP, &Structs::CharacterProperties::Regen_HP, &Structs::CharacterProperties::CombatRegen_HP, &Structs::CharacterProperties::MP,
    &Structs::CharacterProperties::MP_Bonus, &Structs::CharacterProperties::Max_MP, &Structs::CharacterProperties::Regen_MP, &Structs::CharacterProperties::CombatRegen_MP, &Structs::CharacterProperties::Speed_Modifier_Walk, &Structs::CharacterProperties::Speed_Modifier_Rotation,
    &Structs::CharacterProperties::Speed_Modifier_Attack, &Structs::CharacterProperties::Opacity_Modifier, &Structs::CharacterProperties::Rating_Attack, &Structs::CharacterProperties::Rating_Attack_Bonus_Sword, &Structs::CharacterProperties::Rating_Attack_Bonus_Axe, &Structs::CharacterProperties::Rating_Attack_Bonus_Mace,
    &Structs::CharacterProperties::Rating_Attack_Bonus_Dagger, &Structs::CharacterProperties::Rating_Attack_Bonus_Range, &Structs::CharacterProperties::Rating_Attack_Bonus_Staff, &Structs::CharacterProperties::Rating_Attack_Bonus_Wand, &Structs::CharacterProperties::Rating_Attack_Bonus_Dual, &Structs::CharacterProperties::Rating_Defense,
    &Structs::CharacterProperties::Rating_Dodge, &Structs::CharacterProperties::Rating_Block, &Structs::CharacterProperties::Rating_Block_Bonus_Shield, &Structs::CharacterProperties::Rating_Critical, &Structs::CharacterProperties::Rating_Critical_Bonus_Sword, &Structs::CharacterProperties::Rating_Critical_Bonus_Axe,
    &Structs::CharacterProperties::Rating_Critical_Bonus_Mace, &Structs::CharacterProperties::Rating_Critical_Bonus_Dagger, &Structs::CharacterProperties::Rating_Critical_Bonus_Range, &Structs::CharacterProperties::Rating_Critical_Bonus_Staff, &Structs::CharacterProperties::Rating_Critical_Bonus_Wand, &Structs::CharacterProperties::Physical_Armor,
    &Structs::CharacterProperties::Physical_Armor_Bonus_Shield, &Structs::CharacterProperties::Magical_Armor, &Structs::CharacterProperties::Resistance_Fire, &Structs::CharacterProperties::Resistance_Water, &Structs::CharacterProperties::Resistance_Lightning, &Structs::CharacterProperties::Resistance_Earth,
    &Structs::CharacterProperties::Resistance_Air, &Structs::CharacterProperties::Damage_Min_Main_Hand, &Structs::CharacterProperties::Damage_Max_Main_Hand, &Structs::CharacterProperties::Damage_Min_Off_Hand, &Structs::CharacterProperties::Damage_Max_Off_Hand, &Structs::CharacterProperties::Damage_Bonus_Sword,
    &Structs::CharacterProperties::Damage_Bonus_Axe, &Structs::CharacterProperties::Damage_Bonus_Mace, &Structs::CharacterProperties::Damage_Bonus_Dagger, &Structs::CharacterProperties::Damage_Bonus_Range, &Structs::CharacterProperties::Damage_Bonus_Staff, &Structs::CharacterProperties::Damage_Bonus_Wand,
    &Structs::CharacterProperties::Damage_Bonus_Dual, &Structs::CharacterProperties::Damage_Bonus_TwoHand, &Structs::CharacterProperties::Damage_Bonus_Stunned, &Structs::CharacterProperties::Damage_Bonus_Sneaking, &Structs::CharacterProperties::Damage_Bonus_Combo, &Structs::CharacterProperties::Damage_Elemental_Min_Main_Hand,
    &Structs::CharacterProperties::Damage_Elemental_Max_Main_Hand, &Structs::CharacterProperties::Damage_Elemental_Type_Main_Hand, &Structs::CharacterProperties::Damage_Elemental_Min_Off_Hand, &Structs::CharacterProperties::Damage_Elemental_Max_Off_Hand, &Structs::CharacterProperties::Damage_Elemental_Type_Off_Hand, &Structs::CharacterProperties::Damage_Fire_Min_Main_Hand,
    &Structs::CharacterProperties::Damage_Fire_Max_Main_Hand, &Structs::CharacterProperties::Damage_Fire_Min_Off_Hand, &Structs::CharacterProperties::Damage_Fire_Max_Off_Hand, &Structs::CharacterProperties::Damage_Water_Min_Main_Hand, &Structs::CharacterProperties::Damage_Water_Max_Main_Hand, &Structs::CharacterProperties::Damage_Water_Min_Off_Hand,
    &Structs::CharacterProperties::Damage_Water_Max_Off_Hand, &Structs::CharacterProperties::Damage_Lightning_Min_Main_Hand, &Structs::CharacterProperties::Damage_Lightning_Max_Main_Hand, &Structs::CharacterProperties::Damage_Lightning_Min_Off_Hand, &Structs::CharacterProperties::Damage_Lightning_Max_Off_Hand, &Structs::CharacterProperties::Damage_Earth_Min_Main_Hand,
    &Structs::CharacterProperties::Damage_Earth_Max_Main_Hand, &Structs::CharacterProperties::Damage_Earth_Min_Off_Hand, &Structs::CharacterProperties::Damage_Earth_Max_Off_Hand, &Structs::CharacterProperties::Damage_Air_Min_Main_Hand, &Structs::CharacterProperties::Damage_Air_Max_Main_Hand, &Structs::CharacterProperties::Damage_Air_Min_Off_Hand,
    &Structs::CharacterProperties::Damage_Air_Max_Off_Hand, &Structs::CharacterProperties::Damage_Block_Mitigation, &Structs::CharacterProperties::Damage_Crit_Intensification, &Structs::CharacterProperties::Dot_Min_Damage, &Structs::CharacterProperties::Dot_Max_Damage, &Structs::CharacterProperties::Dot_Duration,
    &Structs::CharacterProperties::Dot_Tick_Damage_Normal, &Structs::CharacterProperties::Dot_Tick_Damage_Fire, &Structs::CharacterProperties::Dot_Tick_Damage_Water, &Structs::CharacterProperties::Dot_Tick_Damage_Lightning, &Structs::CharacterProperties::Dot_Tick_Damage_Earth, &Structs::CharacterProperties::Dot_Tick_Damage_Air,
    &Structs::CharacterProperties::Leech_HP, &Structs::CharacterProperties::Leech_MP, &Structs::CharacterProperties::Hurt_Resist_Chance, &Structs::CharacterProperties::Hurt_Target_Chance, &Structs::CharacterProperties::Push_Resist_Chance, &Structs::CharacterProperties::Push_Target_Chance,
    &Structs::CharacterProperties::Stun_Resist_Chance, &Structs::CharacterProperties::Stun_Target_Chance, &Structs::CharacterProperties::Stun_Duration, &Structs::CharacterProperties::Fear_Resist_Chance, &Structs::CharacterProperties::Fear_Target_Chance, &Structs::CharacterProperties::Fear_Duration,
    &Structs::CharacterProperties::Slow_Resist_Chance, &Structs::CharacterProperties::Slow_Target_Chance, &Structs::CharacterProperties::Slow_Duration, &Structs::CharacterProperties::Diminishing_Return, &Structs::CharacterProperties::Stat_Points, &Structs::CharacterProperties::Stat_Strength,
    &Structs::CharacterProperties::Stat_Dexterity, &Structs::CharacterProperties::Stat_Endurance, &Structs::CharacterProperties::Stat_Energy, &Structs::CharacterProperties::Prereq_Strength, &Structs::CharacterProperties::Prereq_Dexterity, &Structs::CharacterProperties::Prereq_Endurance,
    &Structs::CharacterProperties::Prereq_Energy, &Structs::CharacterProperties::Skill_Points, &Structs::CharacterProperties::Spell_Rating_Attack, &Structs::CharacterProperties::Spell_Rating_Attack_Bonus_Fire, &Structs::CharacterProperties::Spell_Rating_Attack_Bonus_Water, &Structs::CharacterProperties::Spell_Rating_Attack_Bonus_Lightning,
    &Structs::CharacterProperties::Spell_Rating_Attack_Bonus_Earth, &Structs::CharacterProperties::Spell_Rating_Attack_Bonus_Air, &Structs::CharacterProperties::Spell_Rating_Dodge, &Structs::CharacterProperties::Spell_Rating_Critical, &Structs::CharacterProperties::Spell_Damage_Bonus_Fire, &Structs::CharacterProperties::Spell_Damage_Bonus_Water,
    &Structs::CharacterProperties::Spell_Damage_Bonus_Lightning, &Structs::CharacterProperties::Spell_Damage_Bonus_Earth, &Structs::CharacterProperties::Spell_Damage_Bonus_Air, &Structs::CharacterProperties::Spell_Damage_Crit_Intensification, &Structs::CharacterProperties::SnS_Level, &Structs::CharacterProperties::SnS_ManaCost,
    &Structs::CharacterProperties::SnS_MinDamage, &Structs::CharacterProperties::SnS_MaxDamage, &Structs::CharacterProperties::SnS_Duration, &Structs::CharacterProperties::SnS_Cooldown, &Structs::CharacterProperties::SnS_Dot_Elemental_Type, &Structs::CharacterProperties::SnS_Dot_Min_Damage,
    &Structs::CharacterProperties::SnS_Dot_Max_Damage, &Structs::CharacterProperties::SnS_Dot_Duration, &Structs::CharacterProperties::SnS_Hurt_Target_Chance, &Structs::CharacterProperties::SnS_Push_Target_Chance, &Structs::CharacterProperties::SnS_Stun_Target_Chance, &Structs::CharacterProperties::SnS_Stun_Duration,
    &Structs::CharacterProperties::SnS_Fear_Target_Chance, &Structs::CharacterProperties::SnS_Fear_Duration, &Structs::CharacterProperties::SnS_Slow_Target_Chance, &Structs::CharacterProperties::SnS_Slow_Duration, &Structs::CharacterProperties::TempProp1, &Structs::CharacterProperties::TempProp2,
    &Structs::CharacterProperties::Potion_HP_Modifier, &Structs::CharacterProperties::Potion_MP_Modifier, &Structs::CharacterProperties::Special_Loot_Max_Potions, &Structs::CharacterProperties::Special_Loot_Gold_Multiplier, &Structs::CharacterProperties::Special_Loot_Magical_Chance, &Structs::CharacterProperties::Special_Transmute_Efficiency,
    &Structs::CharacterProperties::Special_Sneak, &Structs::CharacterProperties::Special_Sneak_Detection, &Structs::CharacterProperties::Special_Bonus_To_XP, &Structs::CharacterProperties::Special_Merchant_Price, &Structs::CharacterProperties::Special_Equip_Main_In_Offhand, &Structs::CharacterProperties::Special_Equip_2H_In_One,
    &Structs::CharacterProperties::Threat_PerDamage, &Structs::CharacterProperties::Threat_PerHeal, &Structs::CharacterProperties::Threat_PerDamageToFriendly, &Structs::CharacterProperties::Menu_Average_Melee_To_Hit, &Structs::CharacterProperties::Menu_Average_Spell_To_Hit, &Structs::CharacterProperties::Menu_Melee_Damage_Reduction,
    &Structs::CharacterProperties::Visual_AlphaFadeInSpawn, &Structs::CharacterProperties::Visual_AlphaFadeOutDespawn, &Structs::CharacterProperties::Visual_BlinkWhenHit, &Structs::CharacterProperties::Achievement_Transmute_Count, &Structs::CharacterProperties::Achievement_Block_Count, &Structs::CharacterProperties::Achievement_Evade_Count,
    &Structs::CharacterProperties::Achievement_SkillUse_Count, &Structs::CharacterProperties::Achievement_Break_Count, &Structs::CharacterProperties::Achievement_Chests_Count, &Structs::CharacterProperties::Achievement_Potions_Count, &Structs::CharacterProperties::Achievement_Sell_Count, &Structs::CharacterProperties::Achievement_Spent_Count,
    &Structs::CharacterProperties::Achievement_KnockedDown_Count, &Structs::CharacterProperties::Achievement_PickUp_Count,
};
static const std::size_t kWordCount = sizeof kWords / sizeof kWords[0];

// Little-endian value of the 4 bytes at p (the layout StreamReader::readAs decodes).
static std::int32_t le32(const unsigned char* p) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(p[0]) | (static_cast<std::uint32_t>(p[1]) << 8) |
                                     (static_cast<std::uint32_t>(p[2]) << 16) | (static_cast<std::uint32_t>(p[3]) << 24));
}

// True when every stored word of obj equals the base's word.
template <class Obj>
static bool sameWords(const Structs::CharacterProperties& base, const Obj& obj) {
    for (std::size_t k = 0; k < kWordCount; ++k) {
        if (base.*kWords[k] != obj.*kWords[k]) return false;
    }
    return true;
}

int main() {
    CHECK(kWordCount == 224);

    unsigned char bytes[4 * 224];
    for (std::size_t i = 0; i < sizeof bytes; ++i) bytes[i] = static_cast<unsigned char>(i * 37 + 11);

    // Base read of the whole buffer: every word decodes from its own four bytes.
    Structs::CharacterProperties base;
    ByteStream baseIn(bytes, sizeof bytes);
    base.read(&baseIn);
    CHECK(baseIn.pos() == sizeof bytes);
    for (std::size_t k = 0; k < kWordCount; ++k) {
        CHECK(base.*kWords[k] == le32(bytes + 4 * k));
    }

    // Forwarders read the same buffer through the base and leave the same words.
    {
        Structs::MadrukProperties madruk;
        ByteStream in(bytes, sizeof bytes);
        madruk.read(&in);
        CHECK(in.pos() == sizeof bytes);
        CHECK(sameWords(base, madruk));
    }
    {
        Structs::AssassinProperties assassin;
        ByteStream in(bytes, sizeof bytes);
        assassin.read(&in);
        CHECK(in.pos() == sizeof bytes);
        CHECK(sameWords(base, assassin));
    }
    {
        Structs::FriendlyNPCProperties npc;
        ByteStream in(bytes, sizeof bytes);
        npc.read(&in);
        CHECK(in.pos() == sizeof bytes);
        CHECK(sameWords(base, npc));
    }
    {
        Structs::SlimeProperties slime;
        ByteStream in(bytes, sizeof bytes);
        slime.read(&in);
        CHECK(in.pos() == sizeof bytes);
        CHECK(sameWords(base, slime));
    }

    // A short stream stops both reads at the same word; the words after it stay zero.
    {
        Structs::CharacterProperties shortBase;
        ByteStream shortIn(bytes, 10);
        shortBase.read(&shortIn);
        CHECK(shortIn.pos() == 8);
        CHECK(shortBase.*kWords[0] == le32(bytes));
        CHECK(shortBase.*kWords[2] == 0);

        Structs::PlayerProperties player;
        ByteStream playerIn(bytes, 10);
        player.read(&playerIn);
        CHECK(playerIn.pos() == 8);
        CHECK(sameWords(shortBase, player));
    }

    std::printf("%s\n", failures ? "structs_forwarder: FAILED" : "structs_forwarder: ok");
    return failures != 0;
}
