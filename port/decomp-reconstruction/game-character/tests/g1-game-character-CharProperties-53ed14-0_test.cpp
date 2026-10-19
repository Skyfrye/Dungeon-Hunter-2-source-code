// Checks the CharProperties accessors that run without the engine: the word layout of the sheet, property
// reads and writes with their range guards, the speed and opacity getters (returned as float bit patterns),
// the XP and price modifiers, SetCharacter, the default and type reads from the character table, the default
// reset of a sheet and the property names.
// The test reaches the private members through the same macro as the net-transport tests; it is test-only.
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <deque>
#include <map>
#include <string>
#include <vector>

#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"

#define private public
#include "dh2/CharProperties.hpp"
#undef private

// Engine globals the reconstructed unit uses. core-platform/memory.hpp is not included by the unit.
int gAssertLevel = 0;

// Out-of-line virtuals of Structs::CharacterProperties. They are defined in pydata-accessors/src/structs_records.cpp,
// which the test does not link (it pulls in every Structs record). Only the vtable is needed here.
namespace Structs {
CharacterProperties::~CharacterProperties() {}
void CharacterProperties::finalize() {}
void CharacterProperties::read(IStreamBase*) {}
}  // namespace Structs

// Static sheet that PROPS_ResetSheet falls back to. It is defined in another batch; the test defines it.
Structs::CharacterProperties CharProperties::s_temp;

// The character table and the property name table. The PyData loader fills them in the game; the test points
// them at its own rows and names.
std::uint8_t* Arrays::CharacterTable::members = nullptr;
namespace Structs {
pydata::NameTable CharacterProperties::m_dataNames;
}  // namespace Structs

static int failures = 0;
#define CHECK(c)                                                              \
    do {                                                                      \
        if (!(c)) {                                                           \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);          \
            ++failures;                                                       \
        }                                                                     \
    } while (0)

// Storage for a CharProperties without running its constructor, which is defined in another batch. The
// tested members are non-virtual and read only the words they are given, so zeroed storage is enough.
alignas(CharProperties) static unsigned char g_storage[sizeof(CharProperties)];

static CharProperties& Fresh() {
    std::memset(g_storage, 0, sizeof g_storage);
    return *reinterpret_cast<CharProperties*>(g_storage);
}

static float AsFloat(int bits) {
    float f = 0.0f;
    std::memcpy(&f, &bits, sizeof f);
    return f;
}

static bool Near(float a, float b) { return std::fabs(a - b) < 1e-6f; }

int main() {
    // Word layout: m_w1..m_w224 are consecutive int32 members, so property id i is word m_w(i+1).
    Structs::CharacterProperties sheet;
    CHECK(sizeof(std::int32_t) == 4);
    CHECK(reinterpret_cast<char*>(&sheet.Achievement_PickUp_Count) - reinterpret_cast<char*>(&sheet.AIFaction) == 223 * 4);
    CHECK(reinterpret_cast<char*>(&sheet.Speed_Modifier_Walk) - reinterpret_cast<char*>(&sheet.AIFaction) == 46 * 4);

    // Sheet reads and writes by property id, with the range guards at level 0 (no output, no crash).
    sheet.AIFaction = 11;     // id 0
    sheet.Speed_Modifier_Walk = 256;   // id 46
    sheet.Achievement_PickUp_Count = 22;   // id 223
    CharProperties& s = Fresh();
    CHECK(s.PROPS_GetFromSheet(0, &sheet) == 11);
    CHECK(s.PROPS_GetFromSheet(46, &sheet) == 256);
    CHECK(s.PROPS_GetFromSheet(223, &sheet) == 22);
    CHECK(s.PROPS_GetFromSheet(-1, &sheet) == -1);
    CHECK(s.PROPS_GetFromSheet(224, &sheet) == -1);
    CHECK(s.PROPS_GetFromSheet(0, nullptr) == -1);

    s._SetProperty(sheet, 5, 99);
    CHECK(sheet.ClassString == 99);
    CHECK(s._GetProperty(sheet, 5) == 99);
    s._SetProperty(sheet, 224, 1);   // out of range: nothing stored
    s._SetProperty(sheet, -1, 1);    // out of range: nothing stored
    CHECK(sheet.Achievement_PickUp_Count == 22);
    CHECK(sheet.AIFaction == 11);

    // PROPS_Get reads m_props (the clones ignore the bool).
    CharProperties& m = Fresh();
    m.m_props.Loot = 77;   // id 9
    CHECK(m.PROPS_Get(9, false) == 77);

    // Speed and opacity getters: a zero raw value gives 1.0 (0 / 256 * 0.01 + 1), as a float bit pattern.
    CharProperties& w = Fresh();
    CHECK(w.PROPS_GetWalkSpeed() == 0x3F800000);
    CHECK(w.PROPS_GetRotationSpeed() == 0x3F800000);
    CHECK(w.PROPS_GetAttackSpeed() == 0x3F800000);
    CHECK(w.PROPS_GetOpacity() == 0x3F800000);

    // raw 256: 1.0 * 0.01 + 1.0 = 1.01 for the three speeds (words m_w47, m_w48, m_w49).
    w.m_props.Speed_Modifier_Walk = 256;
    w.m_props.Speed_Modifier_Rotation = 256;
    w.m_props.Speed_Modifier_Attack = 256;
    CHECK(Near(AsFloat(w.PROPS_GetWalkSpeed()), 1.01f));
    CHECK(Near(AsFloat(w.PROPS_GetRotationSpeed()), 1.01f));
    CHECK(Near(AsFloat(w.PROPS_GetAttackSpeed()), 1.01f));

    // Negative enough to go below zero: clamped to 0.
    w.m_props.Speed_Modifier_Walk = -100000;   // -390.625 * 0.01 + 1 = -2.90625
    CHECK(AsFloat(w.PROPS_GetWalkSpeed()) == 0.0f);

    // Opacity: raw -5000 gives 0.8046875; raw -51200 gives -1 (clamped to 0); raw 100000 gives >= 1 (clamped to 1).
    w.m_props.Opacity_Modifier = -5000;
    CHECK(Near(AsFloat(w.PROPS_GetOpacity()), 0.8046875f));
    w.m_props.Opacity_Modifier = -51200;
    CHECK(AsFloat(w.PROPS_GetOpacity()) == 0.0f);
    w.m_props.Opacity_Modifier = 100000;
    CHECK(AsFloat(w.PROPS_GetOpacity()) == 1.0f);

    // XP and price modifiers: ((bonus + 25600) / 100 * amount) >> 8. Bonus 0 returns the amount.
    CharProperties& x = Fresh();
    CHECK(x.PROPS_GetModifiedXP(100) == 100);
    CHECK(x.PROPS_GetModifiedPrice(50) == 50);
    x.m_props.Special_Bonus_To_XP = 1000;     // (26600 / 100) * 100 = 26600, >> 8 = 103
    CHECK(x.PROPS_GetModifiedXP(100) == 103);
    CHECK(x.PROPS_GetModifiedPrice(100) == 100);   // price word m_w202 is still 0
    x.m_props.Special_Merchant_Price = 1000;
    CHECK(x.PROPS_GetModifiedPrice(100) == 103);
    x.m_props.Special_Bonus_To_XP = -25700;   // (-100 / 100) * 100 = -100, >> 8 = -1 (arithmetic shift)
    CHECK(x.PROPS_GetModifiedXP(100) == -1);

    // SetCharacter stores the pointer at m_character (the null case has no assert output at level 0).
    CharProperties& c = Fresh();
    Character* ch = reinterpret_cast<Character*>(&sheet);
    c.SetCharacter(ch);
    CHECK(c.m_character == ch);
    c.SetCharacter(nullptr);
    CHECK(c.m_character == nullptr);

    // Default and type reads: row 0 and row 1 of the character table, word id+1 of each record.
    {
        Structs::CharacterProperties rows[2];
        rows[0].AnimTable = 9;       // default of id 2
        rows[0].ClassString = 40;      // default of id 5
        rows[1].ClassString = 2;       // type of id 5
        Arrays::CharacterTable::members = reinterpret_cast<std::uint8_t*>(rows);
        CharProperties& d = Fresh();
        CHECK(d._GetDefault(2) == 9);
        CHECK(d._GetDefault(5) == 40);
        CHECK(d._GetDefault(223) == 0);
        CHECK(d._GetDefault(224) == -1);   // out of range: _GetProperty gives -1
        CHECK(d._GetType(5) == 2);
        CHECK(d._GetType(224) == 16);      // the -1 of an unresolved lookup becomes 16

        // _ResetProperties copies every default into the sheet; PROPS_ResetSheet with a null sheet resets s_temp.
        Structs::CharacterProperties sheet;
        sheet.ClassString = 77;
        d._ResetProperties(sheet);
        CHECK(sheet.AnimTable == 9 && sheet.ClassString == 40 && sheet.Achievement_PickUp_Count == 0);
        sheet.AnimTable = 1;
        d.PROPS_ResetSheet(&sheet);
        CHECK(sheet.AnimTable == 9);
        CharProperties::s_temp.AnimTable = 5;
        d.PROPS_ResetSheet(nullptr);
        CHECK(CharProperties::s_temp.AnimTable == 9);
        Arrays::CharacterTable::members = nullptr;
    }

    // Property names come from the record name table, in record order.
    {
        char alpha[] = "alpha";
        char beta[] = "beta";
        char* names[2] = {alpha, beta};
        pydata::NameTable& table = Structs::CharacterProperties::m_dataNames;
        table.names = names;
        table.size = 2;
        CharProperties& n = Fresh();
        CHECK(std::strcmp(n.DBG_PROPS_GetName(0), "alpha") == 0);
        CHECK(std::strcmp(n.DBG_PROPS_GetName(1), "beta") == 0);
        CHECK(n.DBG_PROPS_GetName(2) == nullptr);
        CHECK(n.DBG_PROPS_GetName(-1) == nullptr);
        table.names = nullptr;
        table.size = 0;
        CHECK(n.DBG_PROPS_GetName(0) == nullptr);
    }

    // Debug no-ops: they must not touch anything.
    c.PROPS_RemoveDot(3);
    c.DBG_PROPS_Print(1, 2);
    c.DBG_PROPS_DumpToFile("unused", true);

    if (failures == 0) {
        std::printf("g1-game-character-CharProperties-53ed14-0 test: all checks passed\n");
    }
    return failures != 0;
}
