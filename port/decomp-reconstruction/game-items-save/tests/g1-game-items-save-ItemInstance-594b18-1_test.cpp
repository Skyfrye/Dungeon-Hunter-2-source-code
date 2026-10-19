// Test for the ItemInstance batch 2 (game-items-save/src/g1-game-items-save-ItemInstance-594b18-1.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <part 1 source> <batch 2 source>
//   (part 1: game-items-save/src/g1-game-items-save-ItemInstance-594b18-0.cpp; batch 2: ...-594b18-1.cpp)
// Returns non-zero when a check fails.
//
// Part 1 (accessors, the defaulted destructor) is linked for real. The stand-ins are what other categories provide: the
// Arrays tables (zeroed host-stride storage the checks fill field by field), the PyDataConstants and StringManager
// singletons (a small StrID table and a %d/%s formatter for StringManager::parse), the Character class and the
// CharacterTable name lookup used by part 1. The stand-ins are simple on purpose: the checks cover this batch's bookkeeping.

#include <cstdarg>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"

int gAssertLevel = 0;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            ++g_failures;                                                        \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);                  \
        }                                                                        \
    } while (0)

constexpr int kRows = 12;
constexpr int kCharacterRowsNeeded = 266;  // the class row 265 is the highest used

// Zeroed row storage at host stride. The checks write the fields through the typed row pointers below.
alignas(16) unsigned char g_itemRows[kRows * sizeof(Structs::Item)];
alignas(16) unsigned char g_powerRows[kRows * sizeof(Structs::ItemPowerRef)];
alignas(16) unsigned char g_fontRows[6 * sizeof(Structs::FontColorDef)];
alignas(16) unsigned char g_characterRows[kCharacterRowsNeeded * sizeof(Structs::CharacterProperties)];
alignas(16) unsigned char g_dummyConstants[64];
alignas(16) unsigned char g_dummyStrings[64];

Structs::Item* ItemRow(int id) {
    return reinterpret_cast<Structs::Item*>(g_itemRows + id * sizeof(Structs::Item));
}

Structs::ItemPowerRef* PowerRow(int id) {
    return reinterpret_cast<Structs::ItemPowerRef*>(g_powerRows + id * sizeof(Structs::ItemPowerRef));
}

Structs::CharacterProperties* CharacterRow(int id) {
    return reinterpret_cast<Structs::CharacterProperties*>(g_characterRows + id * sizeof(Structs::CharacterProperties));
}

// StrID keys (getConstant returns the index) and the texts for the ids the batch asks for.
const char* const kKeys[] = {
    "INGAME_REQUIREMENTS",        // 0
    "GLOBAL_LIST_SEPERATOR",      // 1
    "INGAME_REQUIRES_LEVEL",      // 2
    "INGAME_REQUIRES_STRENGTH",   // 3
    "INGAME_REQUIRES_DEXTERITY",  // 4
    "INGAME_REQUIRES_ENDURANCE",  // 5
    "INGAME_REQUIRES_ENERGY",     // 6
    "INGAME_REQUIRES_CLASS",      // 7
    "GAMEPLAYMENUS_ARMOR_RATING", // 8
    "GAMEPLAYMENUS_BLOCK_RATING", // 9
    "GAMEPLAYMENUS_DAMAGE_DESC",  // 10
};

const char* TextFor(int id) {
    switch (id) {
        case 0: return "Requires: ";
        case 1: return ", ";
        case 2: return "Level %d";
        case 3: return "Str %d";
        case 4: return "Dex %d";
        case 5: return "End %d";
        case 6: return "Ene %d";
        case 7: return "Class %s";
        case 8: return "Armor %d";
        case 9: return "Block %d";
        case 10: return "Dmg %d-%d";
        case 42: return "Paladin";      // CharacterTable row 265 display name
        case 77: return "Power desc";   // ItemPowerRef description
        case 200: return "Gem%d";       // item name, no gender tag
        case 202: return "Gem[s]%d";    // name with the male plural tag
        case 203: return "Gem[f]%d";    // name with the female tag
        case 300: return "AA#BB#CC[a]DD";  // second text: '#' splits, [a] marks the isAfter tag
        case 301: return "AA#BB";          // second text with no isAfter tag: the segment goes before the name
        default: return "";
    }
}

}  // namespace

// Arrays table storage: the members and sizes the batch reads.
std::uint8_t* Arrays::ItemTable::members = g_itemRows;
std::uint32_t Arrays::ItemTable::size = kRows;
std::uint8_t* Arrays::ItemPowerTable::members = g_powerRows;
std::uint32_t Arrays::ItemPowerTable::size = kRows;
std::uint8_t* Arrays::CharacterTable::members = g_characterRows;
std::uint32_t Arrays::CharacterTable::size = kCharacterRowsNeeded;
std::uint8_t* Arrays::FontPalette::members = g_fontRows;

// Stand-in for the Application singletons (dword_99F758 and dword_99F760).
PyDataConstants* ApplicationGetPyDataConstants() {
    return reinterpret_cast<PyDataConstants*>(g_dummyConstants);
}

StringManager* ApplicationGetStringManager() {
    return reinterpret_cast<StringManager*>(g_dummyStrings);
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    if (std::strcmp(className, "StrID") != 0) {
        return -1;
    }
    for (int i = 0; i < static_cast<int>(sizeof kKeys / sizeof kKeys[0]); ++i) {
        if (std::strcmp(constantName, kKeys[i]) == 0) {
            return i;
        }
    }
    return -1;
}

const char* StringManager::getString(int id) const {
    return TextFor(id);
}

// A %d and %s formatter: the only conversions the batch's texts use.
int StringManager::parse(std::string& out, const char* format, ...) {
    va_list args;
    va_start(args, format);
    for (const char* p = format; *p != '\0'; ++p) {
        if (p[0] == '%' && p[1] == 'd') {
            out += std::to_string(va_arg(args, int));
            ++p;
        } else if (p[0] == '%' && p[1] == 's') {
            out += va_arg(args, const char*);
            ++p;
        } else {
            out += *p;
        }
    }
    va_end(args);
    return 0;
}

// Stand-ins for part 1's Character use: the class of the test character and the CharacterTable name lookup.
int Character::SG_GetPlayerClass() const {
    return 3;
}

namespace Arrays {
template <class T>
int GetMemberIDByString(const char* name);

template <>
int GetMemberIDByString<CharacterTable>(const char* name) {
    (void)name;
    return -1;
}
}  // namespace Arrays

int main() {
    // Item rows. Row 3 is stackable and carries no name, stats or requirements.
    ItemRow(3)->Stackable = 1;
    ItemRow(3)->Name = -1;
    ItemRow(3)->Material = -1;
    ItemRow(3)->Type = 11;  // item type 11: no stats line

    // Row 4: armour and block rating (type 6) and a non-stackable item.
    ItemRow(4)->Name = -1;
    ItemRow(4)->Material = -1;
    ItemRow(4)->Type = 6;
    ItemRow(4)->Param1 = 5 << 8;
    ItemRow(4)->Param2 = 3 << 8;

    // Row 5: damage description (type 2).
    ItemRow(5)->Name = -1;
    ItemRow(5)->Material = -1;
    ItemRow(5)->Type = 2;
    ItemRow(5)->Param1 = 2 << 8;
    ItemRow(5)->Param2 = 7 << 8;

    // Row 7: requirements level 10, dexterity 4 and class 3 (CharacterTable row 265).
    ItemRow(7)->Name = -1;
    ItemRow(7)->Material = -1;
    ItemRow(7)->Type = 1;
    ItemRow(7)->LevelRequirement = 10;
    ItemRow(7)->DexterityRequirement = 4;
    ItemRow(7)->ClassRequirement = 3;
    CharacterRow(265)->ClassString = 42;

    // Names: 8 plain, 9 female tag with a second text, 10 male plural tag with a second text.
    for (int id : {8, 9, 10}) {
        ItemRow(id)->Type = 11;
    }
    ItemRow(8)->Name = 200;
    ItemRow(8)->Material = -1;
    ItemRow(9)->Name = 203;
    ItemRow(9)->Material = 300;
    ItemRow(10)->Name = 202;
    ItemRow(10)->Material = 300;

    // Row 11: plain name with a second text that has no isAfter tag (the segment goes before the name).
    ItemRow(11)->Name = 200;
    ItemRow(11)->Material = 301;
    ItemRow(11)->Type = 11;

    // Power rows: value 30 (id 2) and 10 (id 1), both without values, description 77.
    PowerRow(2)->SortingOrder = 30;
    PowerRow(2)->AttrBonusListSize = 0;
    PowerRow(2)->Description = 77;
    PowerRow(1)->SortingOrder = 10;
    PowerRow(1)->AttrBonusListSize = 0;
    PowerRow(1)->Description = 77;

    // ---- PowerInfo::swap: ids and descriptions swap, the value stays in place ----
    {
        ItemInstance::PowerInfo p1;
        p1.m_powerId = 1;
        p1.unk_04 = 10;
        p1.m_desc = "a";
        ItemInstance::PowerInfo p2;
        p2.m_powerId = 2;
        p2.unk_04 = 30;
        p2.m_desc = "b";
        p1.swap(p2);
        CHECK(p1.m_powerId == 2 && p1.m_desc == "b" && p1.unk_04 == 10);
        CHECK(p2.m_powerId == 1 && p2.m_desc == "a" && p2.unk_04 == 30);
    }

    // ---- construction fields ----
    {
        ItemInstance a(3, 5);
        CHECK(a.m_itemId == 3);
        CHECK(a.m_qty == 5);
        CHECK(a.m_value == 0);
        CHECK(a.m_pickUpType == -1);
        CHECK(a.unk_68 == true);
        CHECK(a.unk_69 == false);
        CHECK(a.m_powers.empty());
        CHECK(a.m_name.empty() && a.m_stats.empty() && a.m_requirements.empty());

        // Split: the new instance takes the quantity, the value and the flag; this one keeps the rest.
        ItemInstance* b = a.Split(2);
        CHECK(b != nullptr);
        if (b != nullptr) {
            CHECK(a.m_qty == 3);
            CHECK(b->m_qty == 2);
            CHECK(b->m_itemId == 3);
            CHECK(b->m_value == a.m_value);
            CHECK(b->unk_68 == a.unk_68);
            delete b;
        }
        CHECK(a.Split(0) == nullptr);
        CHECK(a.Split(3) == nullptr);  // not less than the quantity

        ItemInstance nonStack(4, 3);
        CHECK(nonStack.Split(1) == nullptr);  // row 4 is not stackable
    }

    // ---- _UpdateStats through the constructor ----
    {
        ItemInstance s6(4, 1);
        CHECK(s6.m_stats == "Armor 5 Block 3");
        ItemInstance s2(5, 1);
        CHECK(s2.m_stats == "Dmg 2-7");
        ItemInstance s11(3, 1);
        CHECK(s11.m_stats.empty());
    }

    // ---- _UpdateReqs through the constructor ----
    {
        ItemInstance r(7, 1);
        CHECK(r.m_requirements == "Requires: Level 10, Dex 4, Class Paladin");
        ItemInstance none(3, 1);
        CHECK(none.m_requirements.empty());
    }

    // ---- _UpdateName: plain, female tag with an isAfter text, male plural tag with an undivided text ----
    {
        ItemInstance plain(8, 1);
        plain.SetValue(7);
        CHECK(plain.m_name == "Gem7");

        ItemInstance female(9, 1);  // template "Gem[f]%d", value 0; segment 1 gives "BB", joined with one space
        CHECK(female.m_name == "Gem BB");

        ItemInstance male(10, 1);   // template "Gem[s]%d"; segment 2 with no delimiter after the first gives the whole text
        CHECK(male.m_name == "Gem AA#BB#CC");

        ItemInstance noName(3, 1);
        CHECK(noName.m_name.empty());

        // No isAfter tag: suffix + " " + prefix. The segment before the first '#' is "AA", the name is "Gem0" then "Gem7".
        ItemInstance joined(11, 1);
        CHECK(joined.m_name == "AA Gem0");
        joined.SetValue(7);
        CHECK(joined.m_name == "AA Gem7");
    }

    // ---- AddPower ordering and UpdateLocalization ----
    {
        ItemInstance d(3, 1);
        d.AddPower(2, -1);
        CHECK(d.GetNumPowers() == 1);
        CHECK(d.m_powers[0].unk_04 == 30);
        CHECK(d.m_powers[0].m_desc == "Power desc");
        d.AddPower(1, -1);
        // The insertion step swaps ids and descriptions by position while the values stay at their positions.
        CHECK(d.GetNumPowers() == 2);
        CHECK(d.GetPowerId(0) == 1);
        CHECK(d.GetPowerId(1) == 2);
        CHECK(d.m_powers[0].unk_04 == 30);
        CHECK(d.m_powers[1].unk_04 == 10);

        d.UpdateLocalization();
        CHECK(d.GetNumPowers() == 2);
        CHECK(d.GetPowerId(0) == 1);
        CHECK(d.GetPowerId(1) == 2);
        CHECK(d.m_powers[0].unk_04 == 10);
        CHECK(d.m_powers[1].unk_04 == 30);
    }

    // ---- SetValue refreshes the name ----
    {
        ItemInstance v(8, 1);
        v.SetValue(9);
        CHECK(v.m_value == 9);
        CHECK(v.m_name == "Gem9");
    }

    if (g_failures == 0) {
        std::printf("all ItemInstance batch 2 checks passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
