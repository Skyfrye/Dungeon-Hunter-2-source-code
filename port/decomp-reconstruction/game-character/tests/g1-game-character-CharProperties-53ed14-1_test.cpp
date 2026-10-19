// Checks the CharProperties units of batch g1-game-character-CharProperties-53ed14-1 that run without the engine:
// the sheet resets, the constructor, _AddProperty and _IsPropertySet, table loads, UnLoadPropNames, the class
// loaders, PROPS_GetInt and the gear walk. HandleDots and the bonus and magic getters need a live Character or
// Item and are not run here.
// Link: this test is built with the batch 0 source (g1-game-character-CharProperties-53ed14-0.cpp) and the batch 1
// source. The definitions below are test doubles for the other classes' functions that the batch 1 source calls but
// this test does not run (the loaders, the Character and ItemInventory/ItemInstance queries, the default-table statics).
// The test reaches the private members through the same macro as the other CharProperties tests; it is test-only.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <deque>
#include <map>
#include <string>
#include <vector>

#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

#include "dh2/ItemInstance.hpp"

#define private public
#include "dh2/Character.hpp"
#undef private

// ---- Engine globals and out-of-line members that the test links against ----

int gAssertLevel = 0;

// Vtable key function and the map element destructor that the constructor's cleanup path reaches.
CharProperties::~CharProperties() {}
CharProperties::BuffDecl::~BuffDecl() {}

namespace Structs {
CharacterProperties::~CharacterProperties() {}
void CharacterProperties::finalize() {}
void CharacterProperties::read(IStreamBase*) {}
}  // namespace Structs

// Statics owned by other batches. The test defines them.
Structs::CharacterProperties CharProperties::s_temp;
std::vector<char*> CharProperties::s_propNames;

// Zeroed character-table rows. The constructor resets its sheets from row 0 (batch 0's _GetDefault), so the table
// must not be null whenever a CharProperties is built.
static Structs::CharacterProperties g_defaultCharRows[2];
std::uint8_t* Arrays::CharacterTable::members = reinterpret_cast<std::uint8_t*>(g_defaultCharRows);
std::uint32_t Arrays::CharacterTable::size = 0;
// Batch 0's DBG_PROPS_GetName reads the property name table; the test never names a property here.
namespace Structs {
pydata::NameTable CharacterProperties::m_dataNames;
}  // namespace Structs

// Record of the calls the class loaders received.
struct LoadCall {
    int kind;  // 0 = _LoadClass, 1 = _LoadGearStats, 2 = _LoadGearPower
    const Structs::CharacterProperties* sheet;
    int id;
    bool flag;
};
static LoadCall g_calls[32];
static int g_callCount = 0;

static void Record(int kind, const Structs::CharacterProperties* sheet, int id, bool flag) {
    if (g_callCount < 32) g_calls[g_callCount] = LoadCall{kind, sheet, id, flag};
    ++g_callCount;
}

void CharProperties::_LoadClass(Structs::CharacterProperties& sheet, int classId, bool useTemp) {
    Record(0, &sheet, classId, useTemp);
}
void CharProperties::_LoadGearStats(int itemId, bool leftHand) { Record(1, nullptr, itemId, leftHand); }
void CharProperties::_LoadGearPower(int powerId, bool leftHand) { Record(2, nullptr, powerId, leftHand); }

// Character queries used by the magic getters. They are not run in this test.
void Character::F_DotAttack(AttackResult&, Character*, Character*, int, int) {}
void Character::F_ApplyResult(const AttackResult&, Character*, Character*, bool) {}
int Character::SG_GetCurrentFaerieId(int) const { return -1; }
const void* Character::GetCharFaery(int) const { return nullptr; }

// Inventory of the fake character used by LoadGearsProperties. Slot k holds g_slotItems[k].
static ItemInstance* g_slotItems[3];
static int g_numSlots = 3;
static bool g_leftHand[3] = {false, false, true};
static int g_itemIds[3] = {501, 0, 777};
static int g_powerCount[3] = {2, 0, 1};
static int g_powerIds[3][2] = {{11, 12}, {0, 0}, {33, 0}};

int ItemInventory::GetNumEquipmentSlots() const { return g_numSlots; }
ItemInstance* ItemInventory::GetEquippedItem(unsigned int slot) {
    return slot < 3 ? g_slotItems[slot] : nullptr;
}
bool ItemInventory::IsEquipmentSlotLeftHand(unsigned int slot) const { return slot < 3 && g_leftHand[slot]; }
bool ItemInventory::IsDualWielding() const { return false; }

static int SlotOf(const ItemInstance* item) {
    for (int k = 0; k < 3; ++k) {
        if (g_slotItems[k] == item) return k;
    }
    return -1;
}
int ItemInstance::GetItemId() const { return g_itemIds[SlotOf(this)]; }
const Structs::Item* ItemInstance::GetItem() const { return nullptr; }
int ItemInstance::GetNumPowers() const { return g_powerCount[SlotOf(this)]; }
int ItemInstance::GetPowerId(unsigned int idx) const { return g_powerIds[SlotOf(this)][idx]; }

// ---- Test helpers ----

static int failures = 0;
#define CHECK(c)                                                              \
    do {                                                                      \
        if (!(c)) {                                                           \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);          \
            ++failures;                                                       \
        }                                                                     \
    } while (0)

// The default value of a property id, as the sheet reset writes it.
static int DefaultOf(const CharProperties& cp, int propId) { return cp._GetDefault(propId); }

// Word of a property id (id i is m_w(i+1)).
static std::int32_t& Word(Structs::CharacterProperties& sheet, int propId) { return (&sheet.AIFaction)[propId]; }

static bool SheetMatchesDefaults(const CharProperties& cp, const Structs::CharacterProperties& sheet) {
    for (int i = 0; i < 224; ++i) {
        if ((&sheet.AIFaction)[i] != DefaultOf(cp, i)) return false;
    }
    return true;
}

static void TestConstructor() {
    CharProperties cp;
    CHECK(cp.m_character == nullptr);
    CHECK(cp.unk_e30 == 0);
    CHECK(SheetMatchesDefaults(cp, cp.m_baseProps));
    CHECK(SheetMatchesDefaults(cp, cp.m_savedProps));
    CHECK(SheetMatchesDefaults(cp, cp.m_gearProps));
    CHECK(SheetMatchesDefaults(cp, cp.m_props));
    CHECK(SheetMatchesDefaults(cp, CharProperties::s_temp));
    CHECK(cp.m_buffs.empty());
}

static void TestResetThunksTargetTheirOwnSheet() {
    CharProperties cp;
    const int d = DefaultOf(cp, 9);
    const int other = (d == 42) ? 43 : 42;

    // Each thunk resets exactly its own sheet and leaves the others alone. Property 9 is the word that is checked.
    Word(cp.m_props, 9) = other;
    Word(cp.m_baseProps, 9) = other;
    Word(cp.m_savedProps, 9) = other;
    Word(cp.m_gearProps, 9) = other;

    cp.ResetGearsProperties();
    CHECK(SheetMatchesDefaults(cp, cp.m_gearProps));
    CHECK(Word(cp.m_baseProps, 9) == other);
    CHECK(Word(cp.m_savedProps, 9) == other);
    CHECK(Word(cp.m_props, 9) == other);

    cp.ResetSavedProperties();
    CHECK(SheetMatchesDefaults(cp, cp.m_savedProps));
    CHECK(Word(cp.m_baseProps, 9) == other);
    CHECK(Word(cp.m_props, 9) == other);

    cp.ResetBaseProperties();
    CHECK(SheetMatchesDefaults(cp, cp.m_baseProps));
    CHECK(Word(cp.m_props, 9) == other);

    // ResetAll resets the final sheet as well as the three above.
    Word(cp.m_baseProps, 9) = other;
    Word(cp.m_savedProps, 9) = other;
    Word(cp.m_gearProps, 9) = other;
    cp.ResetAllProperties();
    CHECK(SheetMatchesDefaults(cp, cp.m_baseProps));
    CHECK(SheetMatchesDefaults(cp, cp.m_savedProps));
    CHECK(SheetMatchesDefaults(cp, cp.m_gearProps));
    CHECK(SheetMatchesDefaults(cp, cp.m_props));
}

static void TestIsPropertySetAndAddProperty() {
    CharProperties cp;
    Structs::CharacterProperties sheet;
    const int d = DefaultOf(cp, 7);

    // Holding the default: not set.
    Word(sheet, 7) = d;
    CHECK(!cp._IsPropertySet(sheet, 7));
    const int inc = (d == 1000) ? 1001 : 1000;
    cp._AddProperty(sheet, 7, inc);
    CHECK(Word(sheet, 7) == inc);

    // Holding a value other than the default: set, so the increment is added to it.
    const int other = (d == 5) ? 6 : 5;
    Word(sheet, 7) = other;
    CHECK(cp._IsPropertySet(sheet, 7));
    cp._AddProperty(sheet, 7, 5);
    CHECK(Word(sheet, 7) == other + 5);
}

static void TestLoadFromCharTable() {
    CharProperties cp;
    Structs::CharacterProperties* table = new Structs::CharacterProperties[3];
    for (int r = 0; r < 3; ++r) {
        for (int i = 0; i < 224; ++i) Word(table[r], i) = 1000 * r + i;
    }
    Arrays::CharacterTable::members = reinterpret_cast<std::uint8_t*>(table);
    Arrays::CharacterTable::size = 3;

    // Row 1 is copied word for word (m_w1..m_w224).
    Word(cp.m_baseProps, 0) = -7;
    cp.LoadBaseProperties(1);
    bool same = true;
    for (int i = 0; i < 224; ++i) same = same && Word(cp.m_baseProps, i) == 1000 + i;
    CHECK(same);

    // Rows outside [0, size) leave the sheet unchanged.
    Word(cp.m_baseProps, 0) = -7;
    cp.LoadBaseProperties(3);
    CHECK(Word(cp.m_baseProps, 0) == -7);
    cp.LoadBaseProperties(-1);
    CHECK(Word(cp.m_baseProps, 0) == -7);

    Arrays::CharacterTable::members = reinterpret_cast<std::uint8_t*>(g_defaultCharRows);
    Arrays::CharacterTable::size = 0;
    delete[] table;
}

static void TestUnLoadPropNames() {
    char* a = static_cast<char*>(std::malloc(4));
    char* b = static_cast<char*>(std::malloc(4));
    std::strcpy(a, "A");
    std::strcpy(b, "B");
    CharProperties::s_propNames.clear();
    CharProperties::s_propNames.push_back(a);
    CharProperties::s_propNames.push_back(nullptr);
    CharProperties::s_propNames.push_back(b);
    CharProperties::UnLoadPropNames();
    CHECK(CharProperties::s_propNames.empty());

    // Unloading an empty list does nothing.
    CharProperties::UnLoadPropNames();
    CHECK(CharProperties::s_propNames.empty());
}

static void TestClassLoaders() {
    CharProperties cp;
    Structs::CharacterProperties sheet;

    g_callCount = 0;
    cp.PROPS_ApplyClass(7, false);
    CHECK(g_callCount == 1);
    CHECK(g_calls[0].kind == 0 && g_calls[0].sheet == &cp.m_props && g_calls[0].id == 7 && !g_calls[0].flag);

    g_callCount = 0;
    cp.PROPS_ApplyClass(9, true);
    CHECK(g_callCount == 1);
    CHECK(g_calls[0].kind == 0 && g_calls[0].sheet == &CharProperties::s_temp && g_calls[0].id == 9 &&
          g_calls[0].flag);

    g_callCount = 0;
    cp.PROPS_ApplyClassToSheet(3, &sheet);
    CHECK(g_callCount == 1);
    CHECK(g_calls[0].kind == 0 && g_calls[0].sheet == &sheet && g_calls[0].id == 3 && g_calls[0].flag);

    // No sheet: nothing is loaded, and with gAssertLevel 0 nothing is reported or aborted.
    g_callCount = 0;
    gAssertLevel = 0;
    cp.PROPS_ApplyClassToSheet(3, nullptr);
    CHECK(g_callCount == 0);
}

static void TestGetInt() {
    CharProperties cp;
    Word(cp.m_props, 9) = 0x1234;
    CharProperties::s_temp.Loot = 0x5600;
    CHECK(cp.PROPS_GetInt(9, false) == 0x12);
    CHECK(cp.PROPS_GetInt(9, true) == 0x56);
}

static void TestLoadGearsProperties() {
    CharProperties cp;
    // The fake character is only used for its ItemInventory base address, which the stubs never dereference.
    alignas(16) static unsigned char fakeCharacter[4096];
    cp.m_character = reinterpret_cast<Character*>(fakeCharacter);

    alignas(ItemInstance) static unsigned char storage[3][sizeof(ItemInstance)];
    g_slotItems[0] = reinterpret_cast<ItemInstance*>(storage[0]);
    g_slotItems[1] = nullptr;  // empty slot
    g_slotItems[2] = reinterpret_cast<ItemInstance*>(storage[2]);
    g_numSlots = 3;

    g_callCount = 0;
    cp.LoadGearsProperties();

    // Slot 0: stats of item 501 (right hand), then its two powers. Slot 1 is empty. Slot 2: stats of item 777
    // (left hand), then its one power.
    CHECK(g_callCount == 5);
    if (g_callCount == 5) {
        CHECK(g_calls[0].kind == 1 && g_calls[0].id == 501 && !g_calls[0].flag);
        CHECK(g_calls[1].kind == 2 && g_calls[1].id == 11 && !g_calls[1].flag);
        CHECK(g_calls[2].kind == 2 && g_calls[2].id == 12 && !g_calls[2].flag);
        CHECK(g_calls[3].kind == 1 && g_calls[3].id == 777 && g_calls[3].flag);
        CHECK(g_calls[4].kind == 2 && g_calls[4].id == 33 && g_calls[4].flag);
    }

    // No equipment slots: nothing is loaded.
    g_numSlots = 0;
    g_callCount = 0;
    cp.LoadGearsProperties();
    CHECK(g_callCount == 0);
    g_numSlots = 3;

    g_slotItems[0] = nullptr;
    g_slotItems[2] = nullptr;
    cp.m_character = nullptr;
}

static void TestAssertLevelOneDoesNotAbort() {
    CharProperties cp;
    gAssertLevel = 1;
    cp.PROPS_ApplyClassToSheet(3, nullptr);  // prints the ASSERT line to stderr
    gAssertLevel = 0;
}

int main() {
    TestConstructor();
    TestResetThunksTargetTheirOwnSheet();
    TestIsPropertySetAndAddProperty();
    TestLoadFromCharTable();
    TestUnLoadPropNames();
    TestClassLoaders();
    TestGetInt();
    TestLoadGearsProperties();
    TestAssertLevelOneDoesNotAbort();
    if (failures == 0) std::printf("g1-game-character-CharProperties-53ed14-1 tests passed\n");
    return failures == 0 ? 0 : 1;
}
