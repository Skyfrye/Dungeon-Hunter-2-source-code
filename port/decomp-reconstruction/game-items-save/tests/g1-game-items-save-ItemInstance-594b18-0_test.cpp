// Test for the ItemInstance batch (game-items-save/src/g1-game-items-save-ItemInstance-594b18-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is linked with stand-ins for what other batches and categories provide: the storage of the Arrays tables
// (ItemTable, ItemPowerTable, FontPalette), the PyDataConstants accessor and getConstant, the Character accessors, the
// CharacterTable name lookup, gAssertLevel and the ItemInstance constructor (another batch). The rows are zeroed storage that
// the checks fill field by field; no pydata object is constructed. The stand-ins are simple on purpose: the checks cover the
// batch source's bookkeeping, not the stand-ins.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/global/charai_ai.hpp"
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

constexpr int kRows = 8;
constexpr int kFontRows = 6;

// Zeroed row storage, host stride. The checks write the fields they read through the typed row pointers below.
alignas(16) unsigned char g_itemRows[kRows * sizeof(Structs::Item)];
alignas(16) unsigned char g_powerRows[kRows * sizeof(Structs::ItemPowerRef)];
alignas(16) unsigned char g_fontRows[kFontRows * sizeof(Structs::FontColorDef)];
alignas(16) unsigned char g_dummyConstants[64];

Structs::Item* ItemRow(int id) {
    return reinterpret_cast<Structs::Item*>(g_itemRows + id * sizeof(Structs::Item));
}

Structs::FontColorDef* FontRow(int index) {
    return reinterpret_cast<Structs::FontColorDef*>(g_fontRows + index * sizeof(Structs::FontColorDef));
}

ItemInstance::PowerInfo MakePower(int powerId, const char* desc) {
    ItemInstance::PowerInfo power;
    power.m_powerId = powerId;
    power.unk_04 = 0;
    power.m_desc = desc;
    return power;
}

}  // namespace

// Arrays table storage, the members the batch source reads (the others are not referenced here).
std::uint8_t* Arrays::ItemTable::members = g_itemRows;
std::uint8_t* Arrays::ItemPowerTable::members = g_powerRows;
std::uint8_t* Arrays::FontPalette::members = g_fontRows;

// Stand-in for the Application singleton's PyDataConstants (dword_99F758). getConstant only answers the ItemPowerColor
// names "zero" .. "four" with 0 .. 4; any other name gives -1.
PyDataConstants* ApplicationGetPyDataConstants() {
    return reinterpret_cast<PyDataConstants*>(g_dummyConstants);
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    static const char* const kNames[] = {"zero", "one", "two", "three", "four"};
    if (std::strcmp(className, "ItemPowerColor") != 0) {
        return -1;
    }
    for (int i = 0; i < 5; ++i) {
        if (std::strcmp(constantName, kNames[i]) == 0) {
            return i;
        }
    }
    return -1;
}

// Stand-ins for Character (its batch is not linked here): the class of the test character and the CharacterTable lookup.
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

// Stand-in for the constructor of ItemInstance (another batch): the id, the quantity and the pick-up override only.
ItemInstance::ItemInstance(int itemId, unsigned int qty) : m_itemId(itemId) {
    m_qty = static_cast<std::int16_t>(qty);
    m_value = 0;
    m_pickUpType = -1;
    unk_68 = true;
    unk_69 = false;
}

int main() {
    // Item rows: id 3 is the item under test, id 4 an item with a different row.
    ItemRow(3)->IconName = const_cast<char*>("sword_icon");  // icon name string buffer (+0x08)
    ItemRow(3)->PickUpType = 7;                               // pick-up type (+0x0c)
    ItemRow(3)->Stackable = true;                            // stackable (+0x1c)
    ItemRow(3)->EquipmentSlottingType = 5;                              // equipment category (+0x68)
    ItemRow(4)->Stackable = false;
    ItemRow(4)->EquipmentSlottingType = -1;

    // FontPalette rows 0..3 carry 100 + index in their colour word (+0x08).
    for (int i = 0; i < 4; ++i) {
        FontRow(i)->textcolor = 100 + i;
    }

    // ---- construction, sizes and rows ----
    ItemInstance a(3, 1);
    CHECK(a.GetItemId() == 3);
    CHECK(a.GetNumPowers() == 0);
    CHECK(a.GetItem() == ItemRow(3));
    CHECK(a.GetIconName() != nullptr && std::strcmp(a.GetIconName(), "sword_icon") == 0);
    CHECK(a.GetPickUpType() == 7);      // -1 override: the row's type
    CHECK(a.IsStackable());
    CHECK(a.IsEquippable());

    a.m_pickUpType = 4;                 // an explicit override wins over the row
    CHECK(a.GetPickUpType() == 4);
    a.m_pickUpType = -1;

    ItemInstance b(4, 1);
    CHECK(!b.IsStackable());
    CHECK(!b.IsEquippable());

    // ---- quantity ----
    a.SetQty(7);
    CHECK(a.m_qty == 7);
    a.AddQty(5);
    CHECK(a.m_qty == 12);
    a.AddQty(-20);
    CHECK(a.m_qty == -8);               // SetQty stores the signed result (the original asserts only in debug)
    a.SetQty(1);

    gAssertLevel = 0;
    a.SetQty(-1);                       // negative: stored as -1 with level 0 (no message)
    CHECK(a.m_qty == -1);
    a.SetQty(70000);                    // stored as its low 16 bits
    CHECK(a.m_qty == static_cast<std::int16_t>(70000));

    // ---- powers ----
    ItemInstance c(3, 1);
    c.m_powers.push_back(MakePower(2, "fire"));
    c.m_powers.push_back(MakePower(5, "ice"));
    CHECK(c.GetNumPowers() == 2);
    CHECK(c.GetPowerId(0) == 2);
    CHECK(c.GetPowerId(1) == 5);
    CHECK(std::strcmp(c.GetPowerDesc(0), "fire") == 0);
    CHECK(std::strcmp(c.GetPowerDesc(1), "ice") == 0);
    CHECK(c.GetPower(1) == reinterpret_cast<const std::uint8_t*>(
                               reinterpret_cast<const Structs::ItemPowerRef*>(g_powerRows) + 5));

    gAssertLevel = 0;
    CHECK(c.GetPower(9) == nullptr);    // out of range: defined results, the ASSERT is silent at level 0
    CHECK(std::strcmp(c.GetPowerDesc(9), "") == 0);
    CHECK(c.GetPowerId(9) == -1);

    // ---- equality ----
    ItemInstance d(3, 1);
    CHECK(!(a == b));                   // different item ids
    ItemInstance e(3, 1);
    CHECK(a == e);                      // same id, no powers
    CHECK(!(c == e));                   // different power counts
    ItemInstance f(3, 1);
    f.m_powers.push_back(MakePower(2, "other text"));
    f.m_powers.push_back(MakePower(5, "more text"));
    CHECK(c == f);                      // descriptions are not compared, only the power ids
    f.m_powers[1].m_powerId = 6;
    CHECK(!(c == f));                   // a differing power id
    CHECK(d == e);

    // ---- ordering ----
    ItemInstance p(3, 1);
    p.m_powers.push_back(MakePower(1, "x"));
    CHECK(p < e);                       // more powers sorts first: 1 > 0
    CHECK(!(e < p));
    ItemInstance x(3, 1), y(3, 1);
    x.m_name = "Axe";
    y.m_name = "Sword";
    CHECK(x < y);
    CHECK(!(y < x));
    CHECK(!(x < x));

    // ---- font and colour ----
    // GetFontDef(count): the ItemPowerColor constant for counts 0..4, 2 for any other count. Static.
    CHECK(ItemInstance::GetFontDef(0) == 0);
    CHECK(ItemInstance::GetFontDef(3) == 3);
    CHECK(ItemInstance::GetFontDef(4) == 4);
    CHECK(ItemInstance::GetFontDef(5) == 2);
    CHECK(ItemInstance::GetFontDef(-1) == 2);
    CHECK(c.GetFontDef() == 2);         // two powers
    CHECK(e.GetFontDef() == 0);         // no powers

    // GetColor(count): FontPalette row GetFontDef(count), its colour word.
    CHECK(ItemInstance::GetColor(2) == 102);
    CHECK(c.GetColor() == 102);         // two powers -> row 2
    CHECK(e.GetColor() == 100);         // no powers -> row 0

    // ---- equippability, null character ----
    gAssertLevel = 0;
    CHECK(!a.IsEquippableBy(nullptr));

    // The destructors of a..f, x, y and p run here (the implicit member destruction of the strings and power vectors).
    if (g_failures == 0) {
        std::printf("ItemInstance test: all checks passed\n");
        return 0;
    }
    std::printf("ItemInstance test: %d check(s) failed\n", g_failures);
    return 1;
}
