// Checks the CharProperties logic of batch g1-game-character-CharProperties-53ed14-2 that runs without the engine:
// the sheet setters and adders, the type-driven recalculation (every bit branch), the gear and buff checks, the
// set-to-sheet path, the bonus lookups with the weapon damage, the load and reset call order, buff removal by
// class, timer-driven expiry, RemoveAllBuffs and the destructor.
// The engine pieces these reach are defined here, not linked from other batches: the type and default tables,
// the private sheet helpers (as decompiled in 0x3dedb4, 0x3deca0, 0x3df114 and 0x3df140), the load and reset
// routines, the inventory and item row, the timer bank, and the Structs::CharacterProperties virtuals.
// Test-only access to the private members goes through the same macro as the other CharProperties tests.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <deque>
#include <map>
#include <new>
#include <string>
#include <vector>

#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

#define private public
#include "dh2/CharTimers.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/Character.hpp"
#include "dh2/VisualFXManager.hpp"
#undef private

// Engine globals the unit uses.
int gAssertLevel = 0;

namespace {

constexpr int kCount = 224;

int g_type[kCount];            // what _GetType returns per property
int g_default[kCount];         // what _GetDefault returns per property
int g_sheetDtors = 0;          // counts every Structs::CharacterProperties destruction
std::vector<std::string> g_calls;       // load and reset calls, in order
std::vector<unsigned int> g_stopped;    // timer ids passed to TMR_Stop, in order
std::vector<AnimatedFX*> g_dropped;     // FX pointers passed to VisualFXManager::DropAnimatedFX, in order
int g_attackRating = 0;
bool g_twoHander = false;
bool g_dual = false;
ItemInstance* g_equipped[3] = {nullptr, nullptr, nullptr};

// Stand-in storage for a Structs::Item row and a Character. The unit only reads the named members (m_w37 of the
// item, m_charPropsId and the inventory and timer bases of the character), so zeroed storage of the full host size is
// enough. The host layout differs from the 32-bit original (pointers are 8 bytes), so offsets are not used here.
alignas(16) unsigned char g_itemRaw[sizeof(Structs::Item)];
alignas(16) unsigned char g_fakeChar[sizeof(Character)];
constexpr int kStoreSlots = 64;  // one slot per object the tests create (they are never reused)
alignas(CharProperties) unsigned char g_store[kStoreSlots][sizeof(CharProperties)];
int g_nextSlot = 0;

int failures = 0;
#define CHECK(c)                                                    \
    do {                                                            \
        if (!(c)) {                                                 \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); \
            ++failures;                                             \
        }                                                           \
    } while (0)

// Word of property id in a sheet (property i is m_w(i+1)).
int& W(Structs::CharacterProperties& s, int id) { return (&s.AIFaction)[id]; }

void ClearTables() {
    std::memset(g_type, 0, sizeof g_type);
    std::memset(g_default, 0, sizeof g_default);
    g_calls.clear();
    g_stopped.clear();
    g_dropped.clear();
    g_attackRating = 0;
    g_twoHander = false;
    g_dual = false;
    g_equipped[0] = g_equipped[1] = g_equipped[2] = nullptr;
}

// A fresh CharProperties in the next storage slot, with the fake character attached.
CharProperties& Fresh() {
    CharProperties* p = new (g_store[g_nextSlot++]) CharProperties();
    p->m_character = reinterpret_cast<Character*>(g_fakeChar);
    return *p;
}

// A live buff instance (malloc'd, because the unit frees it with CustomFree = free) with one property set.
CharProperties::BuffInst* NewInst(int timerId, int propId, int value) {
    void* mem = std::malloc(sizeof(CharProperties::BuffInst));
    CharProperties::BuffInst* inst = new (mem) CharProperties::BuffInst();
    inst->m_timerId = timerId;
    W(*inst, propId) = value;
    return inst;
}

// Adds an instance to the class classId, creating the class entry when needed.
void AddInst(CharProperties& o, int classId, CharProperties::BuffInst* inst) {
    auto it = o.m_buffs.find(classId);
    if (it == o.m_buffs.end()) {
        CharProperties::BuffDecl decl;
        decl.m_id = classId;
        it = o.m_buffs.emplace(classId, decl).first;
    }
    it->second.m_insts.push_back(inst);
    inst->m_decl = &it->second;
    inst->m_owner = &o;
}

struct FakeTimer : CharTimers::Timer {
    unsigned int id = 0;
    void* ref = nullptr;
    unsigned int GetID() const override { return id; }
    void* GetRef() const override { return ref; }
};

}  // namespace

// ---- engine pieces the unit reaches, defined for the test ----

namespace Structs {
CharacterProperties::~CharacterProperties() { ++g_sheetDtors; }
void CharacterProperties::finalize() {}
void CharacterProperties::read(IStreamBase*) {}
}  // namespace Structs

Structs::CharacterProperties CharProperties::s_temp;

int CharProperties::_GetType(int propId) const { return g_type[propId]; }
int CharProperties::_GetDefault(int propId) const { return g_default[propId]; }
int CharProperties::_GetProperty(const Structs::CharacterProperties& sheet, int propId) const {
    return (&sheet.AIFaction)[propId];
}
void CharProperties::_SetProperty(Structs::CharacterProperties& sheet, int propId, int value) {
    (&sheet.AIFaction)[propId] = value;
}
bool CharProperties::_IsPropertySet(const Structs::CharacterProperties& sheet, int propId) const {
    return _GetProperty(sheet, propId) != _GetDefault(propId);
}
// As decompiled at 0x3df140: a set value is added to, an unset one is replaced.
void CharProperties::_AddProperty(Structs::CharacterProperties& sheet, int propId, int value) {
    if (_IsPropertySet(sheet, propId)) {
        _SetProperty(sheet, propId, _GetProperty(sheet, propId) + value);
    } else {
        _SetProperty(sheet, propId, value);
    }
}
void CharProperties::_LoadClass(Structs::CharacterProperties&, int classId, bool) {
    g_calls.push_back("LoadClass:" + std::to_string(classId));
}
void CharProperties::LoadBaseProperties(int charTableId) {
    g_calls.push_back("LoadBase:" + std::to_string(charTableId));
}
void CharProperties::LoadGearsProperties() { g_calls.push_back("LoadGears"); }
void CharProperties::ResetBaseProperties() { g_calls.push_back("ResetBase"); }
void CharProperties::ResetGearsProperties() { g_calls.push_back("ResetGears"); }
int CharProperties::PROPS_GetBonusAttackRating(bool) const { return g_attackRating; }

CharProperties::CharProperties() {}
CharProperties::BuffDecl::BuffDecl() : m_id(-1), m_fx(nullptr) {}
CharProperties::BuffDecl::BuffDecl(const BuffDecl& other)
    : m_id(other.m_id), m_fx(other.m_fx), m_name(other.m_name), m_insts(other.m_insts) {}

void CharTimers::TMR_Stop(unsigned int id) { g_stopped.push_back(id); }

// The effect manager pieces the unit reaches. DropAnimatedFX only records the instance and clears the caller's pointer.
VisualFXManager::VisualFXManager() {}
VisualFXManager::~VisualFXManager() {}
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() {}
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static VisualFXManager g_testInstance_1{};
VisualFXManager& VisualFXManager::s_inst = g_testInstance_1;
void VisualFXManager::DropAnimatedFX(AnimatedFX*& instance) {
    g_dropped.push_back(instance);
    instance = nullptr;
}
ItemInstance* ItemInventory::GetEquippedItem(unsigned int slot) { return g_equipped[slot]; }
bool ItemInventory::HasTwoHander(bool) const { return g_twoHander; }
bool ItemInventory::IsDualWielding() const { return g_dual; }
const Structs::Item* ItemInstance::GetItem() const { return reinterpret_cast<const Structs::Item*>(g_itemRaw); }

// ---- tests ----

int main() {
    // 1. Setters and adders on a type 0x08 property write m_props directly. The *Int variants scale by 256.
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[10] = 0x08;
        o.PROPS_Set(10, 7);
        CHECK(W(o.m_props, 10) == 7);
        o.PROPS_Add(10, 5);
        CHECK(W(o.m_props, 10) == 12);
        o.PROPS_SetInt(10, 3);
        CHECK(W(o.m_props, 10) == 768);
        o.PROPS_AddInt(10, 1);
        CHECK(W(o.m_props, 10) == 1024);
        // Type 0 is neither bit, so nothing is written.
        o.PROPS_Set(11, 9);
        o.PROPS_Add(11, 9);
        CHECK(W(o.m_props, 11) == 0);
    }

    // 2. Type 0x20 writes the saved sheet and recalculates: base, then saved added.
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[12] = 0x20;
        o.PROPS_Set(12, 4);
        CHECK(W(o.m_savedProps, 12) == 4);
        CHECK(W(o.m_props, 12) == 4);
        o.PROPS_Add(12, 3);
        CHECK(W(o.m_savedProps, 12) == 7);
        CHECK(W(o.m_props, 12) == 7);
        W(o.m_baseProps, 12) = 2;  // base set, so the saved value is added to it
        o.RecalcProperty(12);
        CHECK(W(o.m_props, 12) == 9);
    }

    // 3. Type 0x04: default, then base, saved and gear added, then every buff value added.
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[13] = 0x04;
        W(o.m_baseProps, 13) = 10;
        W(o.m_gearProps, 13) = 5;
        AddInst(o, 20, NewInst(1, 13, 3));
        o.RecalcProperty(13);
        CHECK(W(o.m_props, 13) == 18);  // 0 -> 10 (assign) -> 15 -> 18
    }

    // 4. Type 0x02: base wins; else saved; else (gear, or the first buff class by ascending key, last value).
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[14] = 0x02;
        W(o.m_baseProps, 14) = 10;
        W(o.m_savedProps, 14) = 4;
        W(o.m_props, 14) = 99;
        o.RecalcProperty(14);
        CHECK(W(o.m_props, 14) == 10);
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[14] = 0x02;
        W(o.m_savedProps, 14) = 4;
        W(o.m_gearProps, 14) = 9;
        AddInst(o, 5, NewInst(1, 14, 7));
        o.RecalcProperty(14);
        CHECK(W(o.m_props, 14) == 4);
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[14] = 0x02;
        W(o.m_gearProps, 14) = 9;
        AddInst(o, 5, NewInst(1, 14, 7));
        o.RecalcProperty(14);
        CHECK(W(o.m_props, 14) == 9);  // gear is taken before the buffs are searched
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[14] = 0x02;
        AddInst(o, 9, NewInst(2, 14, 11));
        AddInst(o, 5, NewInst(1, 14, 7));
        o.RecalcProperty(14);
        CHECK(W(o.m_props, 14) == 7);  // ascending keys: class 5 first
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[14] = 0x02;
        AddInst(o, 5, NewInst(1, 14, 7));
        AddInst(o, 5, NewInst(2, 14, 8));
        o.RecalcProperty(14);
        CHECK(W(o.m_props, 14) == 8);  // within the class, the last set instance wins
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[14] = 0x02;
        AddInst(o, 5, NewInst(1, 14, 0));  // unset (equals the default)
        W(o.m_props, 14) = 99;
        o.RecalcProperty(14);
        CHECK(W(o.m_props, 14) == 0);  // nothing set: the default
    }

    // 5. Type 0x01: buffs from the largest key down; then gear, saved, base, default.
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[15] = 0x01;
        AddInst(o, 5, NewInst(1, 15, 7));
        AddInst(o, 9, NewInst(2, 15, 11));
        o.RecalcProperty(15);
        CHECK(W(o.m_props, 15) == 11);  // class 9 first
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[15] = 0x01;
        W(o.m_gearProps, 15) = 3;
        W(o.m_baseProps, 15) = 4;
        o.RecalcProperty(15);
        CHECK(W(o.m_props, 15) == 3);
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[15] = 0x01;
        W(o.m_savedProps, 15) = 6;
        W(o.m_baseProps, 15) = 4;
        o.RecalcProperty(15);
        CHECK(W(o.m_props, 15) == 6);
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[15] = 0x01;
        W(o.m_baseProps, 15) = 4;
        o.RecalcProperty(15);
        CHECK(W(o.m_props, 15) == 4);
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[15] = 0x01;
        W(o.m_props, 15) = 55;
        o.RecalcProperty(15);
        CHECK(W(o.m_props, 15) == 0);
    }

    // 6. Type 0x10 alone takes base. Type 0 leaves m_props alone.
    {
        ClearTables();
        CharProperties& o = Fresh();
        g_type[16] = 0x10;
        W(o.m_baseProps, 16) = 9;
        o.RecalcProperty(16);
        CHECK(W(o.m_props, 16) == 9);
        g_type[17] = 0;
        W(o.m_props, 17) = 33;
        o.RecalcProperty(17);
        CHECK(W(o.m_props, 17) == 33);
    }

    // 7. PROPS_IsBonus: a gear or buff value that differs from the default.
    {
        ClearTables();
        CharProperties& o = Fresh();
        CHECK(!o.PROPS_IsBonus(18));
        W(o.m_gearProps, 18) = 5;
        CHECK(o.PROPS_IsBonus(18));
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        AddInst(o, 4, NewInst(1, 18, 2));
        CHECK(o.PROPS_IsBonus(18));
    }
    {
        ClearTables();
        CharProperties& o = Fresh();
        AddInst(o, 4, NewInst(1, 18, 0));
        CHECK(!o.PROPS_IsBonus(18));
    }

    // 8. PROPS_SetToSheet: type 0x04 writes the given sheet and recalculates; 0x08 writes m_props; else nothing.
    {
        ClearTables();
        CharProperties& o = Fresh();
        Structs::CharacterProperties s;
        g_type[19] = 0x04;
        o.PROPS_SetToSheet(19, 9, &s);
        CHECK(W(s, 19) == 9);
        CHECK(W(o.m_props, 19) == 0);
        g_type[20] = 0x08;
        o.PROPS_SetToSheet(20, 6, &s);
        CHECK(W(o.m_props, 20) == 6);
        CHECK(W(s, 20) == 0);
        g_type[21] = 0;
        o.PROPS_SetToSheet(21, 4, &s);
        CHECK(W(s, 21) == 0 && W(o.m_props, 21) == 0);
        o.PROPS_SetToSheet(22, 1, nullptr);  // no assert at level 0, nothing written
        CHECK(W(o.m_props, 22) == 0);
    }

    // 9. GetIntWithBonus: the sheet word >> 8, plus the attack rating or the weapon damage for ids 50, 79-82.
    {
        ClearTables();
        CharProperties& o = Fresh();
        W(o.m_props, 50) = 1024;
        g_attackRating = 512;
        CHECK(o.PROPS_GetIntWithBonus(50, false) == 4 + 2);
        W(o.m_props, 60) = 2560;
        CHECK(o.PROPS_GetIntWithBonus(60, false) == 10);
        W(CharProperties::s_temp, 60) = 512;
        CHECK(o.PROPS_GetIntWithBonus(60, true) == 2);
        W(o.m_props, 79) = 768;
        CHECK(o.PROPS_GetIntWithBonus(79, false) == 3);  // no weapon equipped: no bonus
    }

    // 10. GetBonusDamage: the weapon base (m_w37 + 83), plus 91 for a two-hander, plus 90 when dual wielding.
    {
        ClearTables();
        CharProperties& o = Fresh();
        Structs::Item* item = reinterpret_cast<Structs::Item*>(g_itemRaw);
        item->Param3 = 0;                // property base 0, so property 83 is the weapon's
        g_equipped[1] = reinterpret_cast<ItemInstance*>(g_itemRaw);
        W(o.m_props, 83) = 100;
        CHECK(o.PROPS_GetBonusDamage(false) == 100);
        g_twoHander = true;
        W(o.m_props, 91) = 20;
        CHECK(o.PROPS_GetBonusDamage(false) == 120);
        g_dual = true;
        W(o.m_props, 90) = 3;
        CHECK(o.PROPS_GetBonusDamage(false) == 123);
        item->Param3 = -1;               // no property base: no bonus
        CHECK(o.PROPS_GetBonusDamage(false) == 0);
        item->Param3 = 0;
        g_equipped[2] = nullptr;        // the off hand is empty
        CHECK(o.PROPS_GetBonusDamage(true) == 0);
    }

    // 11. Load and reset order: RecalcProperties(true) loads the class from base word m_w27, then recalculates.
    {
        ClearTables();
        CharProperties& o = Fresh();  // reuse slot 0 (object is re-created)
        o.m_baseProps.ClassID = 42;
        o.RecalcProperties(false);
        CHECK(g_calls.empty());
        o.RecalcProperties(true);
        CHECK(g_calls.size() == 1 && g_calls[0] == "LoadClass:42");
        g_calls.clear();
        o.LoadPropertiesForClassSelect(77);
        CHECK(reinterpret_cast<Character*>(g_fakeChar)->m_charPropsId == 77);
        CHECK(g_calls.size() == 2 && g_calls[0] == "LoadBase:77" && g_calls[1] == "LoadClass:42");
        g_calls.clear();
        o.UpdateBaseProperties(5);
        CHECK(g_calls.size() == 3 && g_calls[0] == "ResetBase" && g_calls[1] == "LoadBase:5" &&
              g_calls[2] == "LoadClass:42");
        g_calls.clear();
        o.UpdateGearsProperties();
        CHECK(g_calls.size() == 3 && g_calls[0] == "ResetGears" && g_calls[1] == "LoadGears" &&
              g_calls[2] == "LoadClass:42");
    }

    // 12. Set to sheet with a sheet of type 0x04 also works through RecalcProperty (checked in section 8).

    // 13. DelBuff: one instance of a class is removed by its pointer; the last instance goes with the class entry.
    {
        ClearTables();
        CharProperties& o = Fresh();
        CharProperties::BuffInst* a = NewInst(1, 30, 0);
        CharProperties::BuffInst* b = NewInst(2, 30, 0);
        AddInst(o, 5, a);
        AddInst(o, 5, b);
        const int before = g_sheetDtors;
        o.PROPS_DelBuff(5, b);
        CHECK(g_stopped.size() == 1 && g_stopped[0] == 2);
        CHECK(o.m_buffs.count(5) == 1 && o.m_buffs.find(5)->second.m_insts.size() == 1);
        CHECK(o.m_buffs.find(5)->second.m_insts.front() == a);
        CHECK(g_sheetDtors - before == 1);
        CHECK(!g_calls.empty() && g_calls.back() == "LoadClass:0");
        g_calls.clear();
        o.PROPS_DelBuff(5, nullptr);    // the last instance: the whole class goes, whatever inst is
        CHECK(g_stopped.size() == 2 && g_stopped[1] == 1);
        CHECK(o.m_buffs.count(5) == 0);
        // A class that is absent, and an instance that is not in the class, change nothing.
        AddInst(o, 7, NewInst(5, 30, 0));
        AddInst(o, 7, NewInst(6, 30, 0));
        o.PROPS_DelBuff(99, nullptr);
        CHECK(g_stopped.size() == 2);
        CharProperties::BuffInst* stranger = NewInst(9, 30, 0);
        o.PROPS_DelBuff(7, stranger);
        CHECK(g_stopped.size() == 2 && o.m_buffs.find(7)->second.m_insts.size() == 2);
    }

    // 14. BuffExpired: the timer's user data is the instance; it is removed through DelBuff by its class.
    {
        ClearTables();
        CharProperties& o = Fresh();
        CharProperties::BuffInst* x = NewInst(3, 31, 0);
        CharProperties::BuffInst* y = NewInst(4, 31, 0);
        AddInst(o, 6, x);
        AddInst(o, 6, y);
        FakeTimer t;
        t.id = 4;
        t.ref = y;
        o.BuffExpired(&t);
        CHECK(g_stopped.size() == 1 && g_stopped[0] == 4);
        CHECK(o.m_buffs.find(6)->second.m_insts.size() == 1);
        CHECK(o.m_buffs.find(6)->second.m_insts.front() == x);
        o.BuffExpired(nullptr);         // level 0: no output, returns without touching anything
        CHECK(g_stopped.size() == 1);
    }

    // 15. RemoveAllBuffs stops every live instance in ascending class order, clears the map and recalculates.
    {
        ClearTables();
        CharProperties& o = Fresh();
        AddInst(o, 5, NewInst(1, 32, 0));
        AddInst(o, 5, NewInst(2, 32, 0));
        AddInst(o, 9, NewInst(3, 32, 0));
        o.m_baseProps.ClassID = 42;
        o.PROPS_RemoveAllBuffs();
        CHECK(g_stopped.size() == 3 && g_stopped[0] == 1 && g_stopped[1] == 2 && g_stopped[2] == 3);
        CHECK(o.m_buffs.empty());
        CHECK(!g_calls.empty() && g_calls.back() == "LoadClass:42");
    }

    // 16. The destructor destroys each live instance (each counted), clears the map, then the four sheets.
    {
        ClearTables();
        CharProperties& o = Fresh();
        AddInst(o, 5, NewInst(1, 33, 0));
        AddInst(o, 6, NewInst(2, 33, 0));
        const int before = g_sheetDtors;
        o.~CharProperties();
        CHECK(g_sheetDtors - before == 2 + 4);
    }

    // 17. The FX of a class is released: by DelBuff when it removes the class's only instance (not when it removes one
    // of several), by RemoveAllBuffs for every class in key order, and by the destructor for each class with an FX.
    {
        AnimatedFX* fxSingle = reinterpret_cast<AnimatedFX*>(0x1000);
        AnimatedFX* fxMulti = reinterpret_cast<AnimatedFX*>(0x2000);

        // The only instance of a class goes: its FX is dropped before the class is erased.
        ClearTables();
        CharProperties& a = Fresh();
        AddInst(a, 8, NewInst(1, 34, 0));
        a.m_buffs.find(8)->second.m_fx = fxSingle;
        a.PROPS_DelBuff(8, nullptr);
        CHECK(g_dropped.size() == 1 && g_dropped[0] == fxSingle);
        CHECK(a.m_buffs.count(8) == 0);

        // One of several instances goes: the class keeps its FX.
        ClearTables();
        CharProperties& b = Fresh();
        AddInst(b, 5, NewInst(2, 34, 0));
        AddInst(b, 5, NewInst(3, 34, 0));
        b.m_buffs.find(5)->second.m_fx = fxMulti;
        b.PROPS_DelBuff(5, b.m_buffs.find(5)->second.m_insts.front());
        CHECK(g_dropped.empty());
        CHECK(b.m_buffs.find(5)->second.m_fx == fxMulti);

        // RemoveAllBuffs drops every class's FX in ascending key order.
        ClearTables();
        CharProperties& c = Fresh();
        AddInst(c, 4, NewInst(4, 34, 0));
        AddInst(c, 6, NewInst(5, 34, 0));
        c.m_buffs.find(4)->second.m_fx = fxMulti;
        c.m_buffs.find(6)->second.m_fx = fxSingle;
        c.PROPS_RemoveAllBuffs();
        CHECK(g_dropped.size() == 2 && g_dropped[0] == fxMulti && g_dropped[1] == fxSingle);
        CHECK(c.m_buffs.empty());

        // The destructor drops the FX of each class that has one (the null FX of class 9 is not dropped).
        ClearTables();
        CharProperties& d = Fresh();
        AddInst(d, 7, NewInst(6, 34, 0));
        AddInst(d, 9, NewInst(7, 34, 0));
        d.m_buffs.find(7)->second.m_fx = fxSingle;
        d.~CharProperties();
        CHECK(g_dropped.size() == 1 && g_dropped[0] == fxSingle);
    }

    std::printf("%s (%d failures)\n", failures == 0 ? "PASS" : "FAIL", failures);
    return failures == 0 ? 0 : 1;
}
