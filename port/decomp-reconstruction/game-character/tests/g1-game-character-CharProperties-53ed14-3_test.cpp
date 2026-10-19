// Checks the CharProperties units of batch g1-game-character-CharProperties-53ed14-3 that run without the engine: the
// ClassFunc operations, the class walk (_LoadClass, _Group), the gear loaders, the property-name lookups and the BuffDecl
// constructors, the FX grab of PROPS_AddBuff (duration 0, so no timer is started), and the name lookups of PROPS_AddDot and
// PROPS_DebuffSlow (small name tables set up by the test).
// Link: this test is built with the batch 3 source (g1-game-character-CharProperties-53ed14-3.cpp) and the batch 0 and
// batch 1 sources. The definitions below are test doubles for the other classes' functions those sources call.
// Table rows are built with `new` for the classes that have default constructors. Item rows are raw test memory, and
// only their data members are read.
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
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

#include "dh2/AnimController.hpp"
#include "dh2/AnimatedFX.hpp"
#include "dh2/ItemInstance.hpp"

#define private public
#include "dh2/Character.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/VisualFXManager.hpp"
#undef private

// ---- Engine globals and out-of-line members that the test links against ----

int gAssertLevel = 0;

CharProperties::~CharProperties() {}
CharProperties::BuffDecl::~BuffDecl() {}

namespace Structs {
CharacterProperties::~CharacterProperties() {}
void CharacterProperties::finalize() {}
void CharacterProperties::read(IStreamBase*) {}
ClassFunc::~ClassFunc() {}
void ClassFunc::finalize() {}
void ClassFunc::read(IStreamBase*) {}
ClassFuncList::~ClassFuncList() {}
void ClassFuncList::finalize() {}
void ClassFuncList::read(IStreamBase*) {}
AttrBonusEntry::~AttrBonusEntry() {}
void AttrBonusEntry::finalize() {}
void AttrBonusEntry::read(IStreamBase*) {}
ItemPowerRef::~ItemPowerRef() {}
void ItemPowerRef::finalize() {}
void ItemPowerRef::read(IStreamBase*) {}
}  // namespace Structs

// Statics owned by other batches. The test defines them.
Structs::CharacterProperties CharProperties::s_temp;
std::vector<char*> CharProperties::s_propNames;

namespace Structs {
pydata::NameTable CharacterProperties::m_dataNames;  // batch 0's DBG_PROPS_GetName reads it
}  // namespace Structs

// Two zeroed character-table rows (row 0 default, row 1 type). The constructor resets its sheets from row 0, so the
// table must not be null.
static Structs::CharacterProperties g_charTableRows[2];
std::uint8_t* Arrays::CharacterTable::members = reinterpret_cast<std::uint8_t*>(g_charTableRows);
std::uint32_t Arrays::CharacterTable::size = 0;
std::uint8_t* Arrays::ClassTable::members = nullptr;
std::uint32_t Arrays::ClassTable::size = 0;
std::uint8_t* Arrays::ItemTable::members = nullptr;
std::uint32_t Arrays::ItemTable::size = 0;
std::uint8_t* Arrays::ItemPowerTable::members = nullptr;
std::uint32_t Arrays::ItemPowerTable::size = 0;

// Other batches' functions that this unit does not run. The stubs only satisfy the linker.
void ApplicationCloseStream(IStreamBase*) {}
void CharProperties::RecalcProperty(int) {}
void CharProperties::PROPS_DelBuff(int, Structs::CharacterProperties*) {}

int CharTimers::TMR_Start(unsigned int, int, int, void*) { return -1; }
void CharTimers::TMR_Stop(unsigned int) {}
bool CharTimers::TMR_TimeLeft(unsigned int, unsigned int&, unsigned int&) const { return false; }

bool Character::IsBoss() const { return false; }

// The stream reads of ReadPropNames (batch 3). The name file is never opened here, so the reads report an empty table.
template <>
unsigned int StreamReader::readAs<unsigned int>(IStreamBase*) {
    return 0;
}
bool StreamReader::readStringEx(IStreamBase*, char*, std::uint64_t) { return true; }

// The effect manager. GrabAnimFX records each request and returns a stand-in address (never dereferenced here).
static std::vector<std::pair<int, const void*>> g_grabs;
VisualFXManager::VisualFXManager() {}
VisualFXManager::~VisualFXManager() {}
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() {}
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static VisualFXManager g_testInstance_1{};
VisualFXManager& VisualFXManager::s_inst = g_testInstance_1;
AnimatedFX* VisualFXManager::GrabAnimFX(int effectDictId, GameObject* object) {
    g_grabs.emplace_back(effectDictId, object);
    static int standIn = 0;
    return reinterpret_cast<AnimatedFX*>(&standIn);
}
// The FX animation: AnimatedFX::GetAnimController returns a fake controller (a vptr and the node word) whose virtual PlayClip(unsigned, ...) is
// slot 7 (two destructor slots, GetAnimationSet, GetNumAnim, GetNumClip, HasClip, GetClipDuration come first) and records the clip and loop flag.
static std::vector<std::pair<unsigned int, bool>> g_playClips;
static bool FakePlayClip(AnimController*, unsigned int clip, bool loop, int, unsigned int) {
    g_playClips.emplace_back(clip, loop);
    return true;
}
static void* g_fakeVtable[16];
static void* g_fakeController[2] = {g_fakeVtable, nullptr};
AnimController* AnimatedFX::GetAnimController() {
    g_fakeVtable[7] = reinterpret_cast<void*>(&FakePlayClip);
    return reinterpret_cast<AnimController*>(g_fakeController);
}
void Character::F_DotAttack(AttackResult&, Character*, Character*, int, int) {}
void Character::F_ApplyResult(const AttackResult&, Character*, Character*, bool) {}
int Character::SG_GetCurrentFaerieId(int) const { return -1; }
const void* Character::GetCharFaery(int) const { return nullptr; }

// Inventory of the fake character used by the gear walk. Slot k holds nothing here: the walk is not run.
int ItemInventory::GetNumEquipmentSlots() const { return 0; }
ItemInstance* ItemInventory::GetEquippedItem(unsigned int) { return nullptr; }
bool ItemInventory::IsEquipmentSlotLeftHand(unsigned int) const { return false; }
bool ItemInventory::IsDualWielding() const { return false; }
int ItemInstance::GetItemId() const { return 0; }
const Structs::Item* ItemInstance::GetItem() const { return nullptr; }
int ItemInstance::GetNumPowers() const { return 0; }
int ItemInstance::GetPowerId(unsigned int) const { return 0; }

// ---- Test helpers ----

static int failures = 0;

#define CHECK(cond)                                                          \
    do {                                                                     \
        if (!(cond)) {                                                       \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);     \
            ++failures;                                                      \
        }                                                                    \
    } while (0)

// A ClassFunc with the given fields (m_w1 = target property, m_w2 = type, m_w3..m_w5 = operands).
static Structs::ClassFunc MakeFn(int target, int type, int w3, int w4 = 0, int w5 = 0) {
    Structs::ClassFunc fn;
    fn.DestProp = target;
    fn.Formula = type;
    fn.Param1 = w3;
    fn.Param2 = w4;
    fn.Param3 = w5;
    return fn;
}

// Class table: classes are lists of ClassFunc entries. The rows and their entries stay alive for the whole test.
static Structs::ClassFuncList* g_classRows = nullptr;
static int g_classCount = 0;

static void SetClasses(const std::vector<std::vector<Structs::ClassFunc>>& classes) {
    g_classCount = static_cast<int>(classes.size());
    g_classRows = new Structs::ClassFuncList[classes.size()];
    for (std::size_t c = 0; c < classes.size(); ++c) {
        Structs::ClassFunc* entries = new Structs::ClassFunc[classes[c].size()];
        for (std::size_t i = 0; i < classes[c].size(); ++i) {
            entries[i] = classes[c][i];
        }
        g_classRows[c].list_entriesSize = static_cast<std::uint32_t>(classes[c].size());
        g_classRows[c].list_entries = entries;
    }
    Arrays::ClassTable::members = reinterpret_cast<std::uint8_t*>(g_classRows);
    Arrays::ClassTable::size = static_cast<std::uint32_t>(g_classCount);
}

// Item rows: raw test memory with only the used words set (m_w22 type, m_w25, m_w35, m_w36).
static Structs::Item* g_itemRows = nullptr;

static void SetItem(int id, int type, int w25, int w35, int w36) {
    Structs::Item& row = g_itemRows[id];
    row.Type = type;
    row.BaseElement = w25;
    row.Param1 = w35;
    row.Param2 = w36;
}

// Power rows: m_w3 effect count, m_w4 the effect elements (type m_w1, value m_w2).
static Structs::ItemPowerRef* g_powerRows = nullptr;

static void SetPower(int id, const std::vector<std::pair<int, int>>& effects) {
    Structs::AttrBonusEntry* elems = new Structs::AttrBonusEntry[effects.size()];
    for (std::size_t i = 0; i < effects.size(); ++i) {
        elems[i].Attr = effects[i].first;
        elems[i].Bonus = effects[i].second;
    }
    g_powerRows[id].AttrBonusListSize = static_cast<std::uint32_t>(effects.size());
    g_powerRows[id].AttrBonusList = elems;
}

static void TestClassFuncOperations() {
    CharProperties cp;
    Structs::CharacterProperties sheet;

    // _SetOID: property 5 becomes the operand.
    Structs::ClassFunc setOid = MakeFn(5, 9, 77);
    cp._SetOID(sheet, &setOid);
    CHECK(cp._GetProperty(sheet, 5) == 77);

    // _AddValue: property 5 gains the operand.
    cp._SetProperty(sheet, 5, 10);
    Structs::ClassFunc addValue = MakeFn(5, 7, 7);
    cp._AddValue(sheet, &addValue);
    CHECK(cp._GetProperty(sheet, 5) == 17);

    // _AddOtherProp: property 5 becomes its value plus property 6.
    cp._SetProperty(sheet, 5, 10);
    cp._SetProperty(sheet, 6, 3);
    Structs::ClassFunc addOther = MakeFn(5, 4, 6);
    cp._AddOtherProp(sheet, &addOther);
    CHECK(cp._GetProperty(sheet, 5) == 13);

    // _MinMax: clamps property 5 to [10, 20].
    Structs::ClassFunc minMax = MakeFn(5, 2, 10, 20);
    cp._SetProperty(sheet, 5, 4);
    cp._MinMax(sheet, &minMax);
    CHECK(cp._GetProperty(sheet, 5) == 10);
    cp._SetProperty(sheet, 5, 25);
    cp._MinMax(sheet, &minMax);
    CHECK(cp._GetProperty(sheet, 5) == 20);
    cp._SetProperty(sheet, 5, 15);
    cp._MinMax(sheet, &minMax);
    CHECK(cp._GetProperty(sheet, 5) == 15);

    // _ScaleWithPercentage: (percentage * value) >> 8, percentage = property 6 = 512, value = property 5 = 256.
    cp._SetProperty(sheet, 5, 256);
    cp._SetProperty(sheet, 6, 512);
    Structs::ClassFunc scale = MakeFn(5, 5, 6);
    cp._ScaleWithPercentage(sheet, &scale, false);
    CHECK(cp._GetProperty(sheet, 5) == 512);

    // _ScaleWithPercentageForBuff: the base is the sheet's property 5, or m_props' property 5 when useFinal is set.
    cp._SetProperty(sheet, 5, 256);
    cp._SetProperty(sheet, 6, 128);
    Structs::ClassFunc buffScale = MakeFn(5, 6, 6);
    cp._ScaleWithPercentageForBuff(sheet, &buffScale, false);
    CHECK(cp._GetProperty(sheet, 5) == 128);
    cp._SetProperty(sheet, 5, 256);
    cp._SetProperty(cp.m_props, 5, 512);
    cp._ScaleWithPercentageForBuff(sheet, &buffScale, true);
    CHECK(cp._GetProperty(sheet, 5) == 256);

    // _LinearWithPropPlusBaseValue on s_temp: base 100 + multiplier 2 * (property 6 >> 8) = 104.
    Structs::ClassFunc linear = MakeFn(5, 1, 100, 6, 2);
    cp._SetProperty(CharProperties::s_temp, 6, 512);
    cp._LinearWithPropPlusBaseValue(CharProperties::s_temp, &linear, false);
    CHECK(cp._GetProperty(CharProperties::s_temp, 5) == 104);

    // Base -666 means "the property's own value": 50 + 2 * (512 >> 8) = 54.
    Structs::ClassFunc linearSelf = MakeFn(5, 1, -666, 6, 2);
    cp._SetProperty(CharProperties::s_temp, 5, 50);
    cp._LinearWithPropPlusBaseValue(CharProperties::s_temp, &linearSelf, false);
    CHECK(cp._GetProperty(CharProperties::s_temp, 5) == 54);
}

static void TestClassWalk() {
    // Class 0: SetOID 10 = 3, AddValue 10 += 4, MinMax 10 in [0, 5].
    // Class 1: ApplyGroupOnlyIf (type 8) ends the walk, so the AddValue on property 11 is not applied.
    // Class 2: a group that loads class 0.
    SetClasses({
        {MakeFn(10, 9, 3), MakeFn(10, 7, 4), MakeFn(10, 2, 0, 5)},
        {MakeFn(0, 8, 0), MakeFn(11, 7, 1)},
        {MakeFn(0, 0, 0, -1, -1)},
    });

    CharProperties cp;
    Structs::CharacterProperties sheet;

    cp._LoadClass(sheet, 0, false);
    CHECK(cp._GetProperty(sheet, 10) == 5);  // 3 + 4 = 7, capped at 5

    cp._SetProperty(sheet, 11, 0);
    cp._LoadClass(sheet, 1, false);
    CHECK(cp._GetProperty(sheet, 11) == 0);  // the walk stopped at type 8

    cp._SetProperty(sheet, 10, 0);
    cp._LoadClass(sheet, 2, false);  // group: class 0 applied through the walk
    CHECK(cp._GetProperty(sheet, 10) == 5);

    // Out-of-range class ids do nothing.
    cp._SetProperty(sheet, 10, 9);
    cp._LoadClass(sheet, 7, false);
    cp._LoadClass(sheet, -1, false);
    CHECK(cp._GetProperty(sheet, 10) == 9);
}

static void TestGearStatsAndPowers() {
    // Items: 1 = main-hand weapon (type 1: 81 = 6, 82 = 7); 2 = two-hand type 0 off-hand side (79 = 8, 80 = 9);
    // 3 = type 4 (79 = 8, 80 = 9, 97 = 2 << 8).
    g_itemRows = static_cast<Structs::Item*>(std::calloc(4, sizeof(Structs::Item)));
    Arrays::ItemTable::members = reinterpret_cast<std::uint8_t*>(g_itemRows);
    Arrays::ItemTable::size = 4;
    SetItem(1, 1, 0, 6, 7);
    SetItem(2, 0, 0, 8, 9);
    SetItem(3, 4, 2, 8, 9);

    {
        CharProperties cp;
        cp._LoadGearStats(1, false);
        CHECK(cp._GetProperty(cp.m_gearProps, 81) == 6);
        CHECK(cp._GetProperty(cp.m_gearProps, 82) == 7);
    }
    {
        CharProperties cp;
        cp._LoadGearStats(2, false);  // type 0, off-hand: 79/80
        CHECK(cp._GetProperty(cp.m_gearProps, 79) == 8);
        CHECK(cp._GetProperty(cp.m_gearProps, 80) == 9);
    }
    {
        CharProperties cp;
        cp._LoadGearStats(2, true);  // type 0, main-hand: 81/82
        CHECK(cp._GetProperty(cp.m_gearProps, 81) == 8);
        CHECK(cp._GetProperty(cp.m_gearProps, 82) == 9);
    }
    {
        CharProperties cp;
        cp._LoadGearStats(3, false);  // type 4: 79, 80, and 97 = 2 << 8
        CHECK(cp._GetProperty(cp.m_gearProps, 79) == 8);
        CHECK(cp._GetProperty(cp.m_gearProps, 97) == 2 << 8);
    }

    // Powers: 0 = [type 1 value 5, type 9 value 7, type 7 value 3]; 1 = [type 0x29 value 2]; 2 = no effects.
    g_powerRows = new Structs::ItemPowerRef[3];
    SetPower(0, {{1, 5}, {9, 7}, {7, 3}});
    SetPower(1, {{0x29, 2}});
    SetPower(2, {});
    Arrays::ItemPowerTable::members = reinterpret_cast<std::uint8_t*>(g_powerRows);
    Arrays::ItemPowerTable::size = 3;

    {
        CharProperties cp;
        cp._LoadGearPower(0, true);
        CHECK(cp._GetProperty(cp.m_gearProps, 149) == 5);   // type 1
        CHECK(cp._GetProperty(cp.m_gearProps, 100) == 7);   // type 9, left hand: 100 is set, not added
        CHECK(cp._GetProperty(cp.m_gearProps, 98) == 3);    // type 7, left hand
    }
    {
        CharProperties cp;
        cp._LoadGearPower(1, false);  // type 0x29 adds to five properties
        CHECK(cp._GetProperty(cp.m_gearProps, 166) == 2);
        CHECK(cp._GetProperty(cp.m_gearProps, 167) == 2);
        CHECK(cp._GetProperty(cp.m_gearProps, 168) == 2);
        CHECK(cp._GetProperty(cp.m_gearProps, 169) == 2);
        CHECK(cp._GetProperty(cp.m_gearProps, 170) == 2);
    }
    {
        CharProperties cp;
        cp._LoadGearPower(0, false);  // type 7 and 9 use the main-hand ids 95 and 97 here
        CHECK(cp._GetProperty(cp.m_gearProps, 95) == 3);
        CHECK(cp._GetProperty(cp.m_gearProps, 97) == 7);
    }
}

static void TestPropertyNames() {
    CharProperties::UnLoadPropNames();
    auto dup = [](const char* s) {
        char* p = static_cast<char*>(std::malloc(std::strlen(s) + 1));
        std::strcpy(p, s);
        return p;
    };
    CharProperties::s_propNames.push_back(dup("Alpha"));
    CharProperties::s_propNames.push_back(dup("beta"));
    CharProperties::s_propNames.push_back(dup("GAMMA"));

    CHECK(std::strcmp(CharProperties::GetNameFromPropID(1), "beta") == 0);
    CHECK(CharProperties::GetNameFromPropID(3) == nullptr);
    CHECK(CharProperties::GetNameFromPropID(-1) == nullptr);

    CHECK(CharProperties::GetPropIDFromName("gamma") == 2);
    CHECK(CharProperties::GetPropIDFromName("ALPHA") == 0);
    CHECK(CharProperties::GetPropIDFromName("delta") == -1);
    CHECK(CharProperties::GetPropIDFromName(nullptr) == -1);

    CharProperties::UnLoadPropNames();
    CHECK(CharProperties::GetPropIDFromName("alpha") == -1);  // the stub loader leaves the table empty
}

static void TestBuffDeclConstructors() {
    CharProperties::BuffDecl blank;
    CHECK(blank.m_id == -1);
    CHECK(blank.m_fx == nullptr);
    CHECK(blank.m_name.empty());
    CHECK(blank.m_insts.empty());

    CharProperties::BuffDecl src;
    src.m_id = 7;
    src.m_name = "fire";
    static int sentinel = 0;
    // A stand-in instance address: the copy only copies the pointer, never dereferences it.
    auto* fake = reinterpret_cast<CharProperties::BuffInst*>(&sentinel);
    src.m_insts.push_back(fake);
    CharProperties::BuffDecl copy(src);
    CHECK(copy.m_id == 7);
    CHECK(copy.m_name == "fire");
    CHECK(copy.m_insts.size() == 1);
    CHECK(copy.m_insts.front() == fake);
    CHECK(src.m_name == "fire");  // the source is unchanged
}

// PROPS_AddDot and PROPS_DebuffSlow find their class and FX ids by name in the PyData name tables. The tables here hold a few names; the
// stub TMR_Start fails, so each buff is removed again (nothing is returned), but the ids and the buff name can be read from the FX grab and the
// class declaration the call leaves behind.
static char g_className0[] = "None";
static char g_className1[] = "AUTO_DOT_01_FIRE";
static char g_className2[] = "AUTO_DOT_02_WATER";
static char g_className3[] = "Debuff_Slow";
static char* g_classNames[] = {g_className0, g_className1, g_className2, g_className3};
static char g_fxName0[] = "fx0";
static char g_fxName1[] = "fx1";
static char g_fxName2[] = "AUTO_DOT_01_FIRE";
static char g_fxName3[] = "AUTO_DOT_02_WATER";
static char g_fxName4[] = "AUTO_DEBUFF_SLOW";
static char* g_fxNames[] = {g_fxName0, g_fxName1, g_fxName2, g_fxName3, g_fxName4};

static void TestDotAndSlow() {
    Arrays::ClassTable::m_memberNames.names = g_classNames;
    Arrays::ClassTable::m_memberNames.size = 4;
    Arrays::ClassTable::size = 4;
    Arrays::AnimatedEffectTable::m_memberNames.names = g_fxNames;
    Arrays::AnimatedEffectTable::m_memberNames.size = 5;
    Arrays::AnimatedEffectTable::size = 5;

    static char characterStorage[64];
    CharProperties cp;
    cp.m_character = reinterpret_cast<Character*>(characterStorage);
    g_grabs.clear();

    // Water dot: class AUTO_DOT_01_FIRE (1) + element 1 = 2, FX AUTO_DOT_01_FIRE (2) + 1 = 3, named dot_water.
    CHECK(cp.PROPS_AddDot(1000, 5, 1) == nullptr);
    CHECK(g_grabs.size() == 1 && g_grabs[0].first == 3);
    CHECK(cp.m_buffs.find(2) != cp.m_buffs.end() && cp.m_buffs.find(2)->second.m_name == "dot_water");

    // The slow debuff: class Debuff_Slow (3), FX AUTO_DEBUFF_SLOW (4), named debuff_slow. A zero duration does nothing.
    cp.PROPS_DebuffSlow(0);
    CHECK(g_grabs.size() == 1 && cp.m_buffs.find(3) == cp.m_buffs.end());
    cp.PROPS_DebuffSlow(500);
    CHECK(g_grabs.size() == 2 && g_grabs[1].first == 4);
    CHECK(cp.m_buffs.find(3) != cp.m_buffs.end() && cp.m_buffs.find(3)->second.m_name == "debuff_slow");
}

// PROPS_AddBuff takes the class's FX once: a new class declaration with an FX id grabs it, a later instance of the
// class does not grab it again, and a declaration with id -1 grabs nothing. The duration is 0, so no timer is started.
static void TestBuffFxGrab() {
    static char characterStorage[64];  // stand-in for the owning Character; the grab only passes it on
    CharProperties cp;
    cp.m_character = reinterpret_cast<Character*>(characterStorage);
    g_grabs.clear();
    g_playClips.clear();

    CHECK(cp.PROPS_AddBuff(20, 0, 2, 1, 42, "fire") != nullptr);
    CHECK(g_grabs.size() == 1 && g_grabs[0].first == 42 && g_grabs[0].second == characterStorage);
    CHECK(cp.m_buffs.find(20)->second.m_fx != nullptr);
    CHECK(cp.PROPS_AddBuff(20, 0, 2, 1, 42, "fire") != nullptr);
    CHECK(g_grabs.size() == 1);
    // The second instance of a class with an FX advances the FX animation to its last clip (instances - 1), looping.
    CHECK(g_playClips.size() == 1 && g_playClips[0].first == 1 && g_playClips[0].second);
    CHECK(cp.PROPS_AddBuff(21, 0, 2, 1, -1, "slow") != nullptr);
    CHECK(g_grabs.size() == 1 && cp.m_buffs.find(21)->second.m_fx == nullptr);
}

int main() {
    TestClassFuncOperations();
    TestClassWalk();
    TestGearStatsAndPowers();
    TestPropertyNames();
    TestBuffDeclConstructors();
    TestDotAndSlow();
    TestBuffFxGrab();
    if (failures != 0) {
        std::printf("%d check(s) failed\n", failures);
        return 1;
    }
    std::printf("all checks passed\n");
    return 0;
}
