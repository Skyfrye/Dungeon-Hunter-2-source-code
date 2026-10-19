// Test for batch g1-game-character-Character-ee9946-3.
//
// No Character or ItemInstance is constructed: the storage is zero-filled and only the non-virtual members of this
// batch are called on it. Virtual slots are not dispatched (a zero vptr is not a table). The callees the checks reach
// are defined here with controlled results. The stubs at the end satisfy the other symbols the batch object refers
// to; they abort if reached, and none of the checks below reaches them.

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_animTableId = 0;
int g_skillListId = 0;
int g_propInt = 0;          // CharProperties::PROPS_GetInt result
int g_propRaw = 0;          // CharProperties::PROPS_Get result
int g_lastPropId = -1;      // the last property id read
int g_multiplier = 0;       // CharacterDesign TransmuteMultiplier
int g_addGoldCalls = 0;
int g_lastGold = 0;
int g_removeCalls = 0;
int g_addQtyCalls = 0;
ItemInstance* g_item = nullptr;
bool g_ranged = false;

alignas(Character) unsigned char g_storage[sizeof(Character)];
alignas(ItemInstance) unsigned char g_itemStorage[sizeof(ItemInstance)];
alignas(PyDataConstants) unsigned char g_pyData[64];
alignas(PlayerManager) unsigned char g_playerManagerStorage[sizeof(PlayerManager)];

Character* Obj() {
    return reinterpret_cast<Character*>(g_storage);
}

ItemInstance* Item() {
    return reinterpret_cast<ItemInstance*>(g_itemStorage);
}

}  // namespace

// The PlayerManager singleton. dword_99F76C is the Application member (game-app/src/link1_ApplicationWords.cpp), which is
// null in this test unless it is defined here; INV_TransmuteItem asks it IsLocalPlayer for the trophy, so it needs a real
// object. The manager reports that the character is not local, which keeps the trophy path out of the test.
static PlayerManager* g_test_dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member

int PlayerManager::IsLocalPlayer(const Character*) {
    return 0;
}

// Callees the checks reach, defined with their header signatures.
int Character::GetCharAnimTableId() const { return g_animTableId; }
int Character::GetCharSkillListId() const { return g_skillListId; }
int CharProperties::PROPS_GetInt(int propId, bool useTemp) const {
    (void)useTemp;
    g_lastPropId = propId;
    return g_propInt;
}
int CharProperties::PROPS_Get(int propId, bool useTemp) const {
    (void)useTemp;
    g_lastPropId = propId;
    return g_propRaw;
}
void CharProperties::PROPS_AddInt(int propId, int value) {
    (void)propId;
    (void)value;
}
int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    (void)className;
    (void)constantName;
    return g_multiplier;
}
PyDataConstants* ApplicationGetPyDataConstants() {
    return reinterpret_cast<PyDataConstants*>(g_pyData);
}
ItemInstance* ItemInventory::GetItem(unsigned int idx) {
    (void)idx;
    return g_item;
}
int ItemInventory::GetItemIndex(const ItemInstance* item) const {
    (void)item;
    return 0;
}
void ItemInventory::RemoveItem(unsigned int idx) {
    (void)idx;
    ++g_removeCalls;
}
void ItemInventory::AddGold(int amount) {
    ++g_addGoldCalls;
    g_lastGold = amount;
}
void ItemInstance::AddQty(int delta) {
    (void)delta;
    ++g_addQtyCalls;
}
bool ItemInventory::CanRangeAttack() const {
    return g_ranged;
}
bool ItemInventory::CanRangeAttack(int& a, int& b, int& c) const {
    a = 1;
    b = 2;
    c = 3;
    return g_ranged;
}
int ItemInventory::AddItemInstance(ItemInstance* item, bool stack, bool convertGold) {
    (void)item;
    (void)stack;
    (void)convertGold;
    return 7;
}

namespace {

void TestUniqueAnimSetId() {
    g_skillListId = 5;
    g_animTableId = 3;
    EXPECT(Obj()->GetCharUniqueAnimSetId() == (5 | (3 << 8)));
    g_skillListId = 0;
    g_animTableId = 0;
    EXPECT(Obj()->GetCharUniqueAnimSetId() == 0);
    g_skillListId = 0x1ff;
    g_animTableId = 1;
    EXPECT(Obj()->GetCharUniqueAnimSetId() == 0x1ff);
}

void TestRespawnDelay() {
    Obj()->m_isSpawned = 1;
    g_propInt = 7;
    EXPECT(Obj()->GetRespawnDelay() == 0);
    Obj()->m_isSpawned = 0;
    EXPECT(Obj()->GetRespawnDelay() == 7000);
    EXPECT(g_lastPropId == 11);
    g_propInt = 0;
    EXPECT(Obj()->GetRespawnDelay() == 0);
}

void TestTransmute() {
    // value 100, property 0, multiplier 65536: scaled = ((100 << 8) * 256) >> 8 = 25600, gold = (65536 * 25600) >> 16.
    Item()->m_value = 100;
    Item()->m_qty = 3;
    g_multiplier = 65536;
    g_propRaw = 0;
    g_addGoldCalls = 0;
    g_addQtyCalls = 0;
    g_removeCalls = 0;
    EXPECT(Obj()->INV_TransmuteItem(Item(), false) == 25600);
    EXPECT(g_lastGold == 25600 && g_addGoldCalls == 1);
    EXPECT(g_addQtyCalls == 1 && g_removeCalls == 0);

    Item()->m_qty = 1;
    EXPECT(Obj()->INV_TransmuteItem(Item(), false) == 25600);
    EXPECT(g_removeCalls == 1);

    // The transmute-only path (a true) returns the value and makes no inventory change.
    g_addGoldCalls = 0;
    EXPECT(Obj()->INV_TransmuteItem(Item(), true) == 25600);
    EXPECT(g_addGoldCalls == 0);

    // A zero value gives 0 and is raised to 1.
    Item()->m_value = 0;
    EXPECT(Obj()->INV_TransmuteItem(Item(), true) == 1);

    EXPECT(Obj()->INV_TransmuteItem(static_cast<ItemInstance*>(nullptr), false) == 0);

    // The index overload fetches the item from the inventory first.
    Item()->m_value = 100;
    g_item = Item();
    EXPECT(Obj()->INV_TransmuteItem(static_cast<unsigned int>(0), true) == 25600);
    g_item = nullptr;
    EXPECT(Obj()->INV_TransmuteItem(static_cast<unsigned int>(0), true) == 0);
}

void TestRangedForwarding() {
    // Without a ranged override (m_props.m_w33 == -1) the ItemInventory query decides, and the three outputs come from it.
    Obj()->m_props.RangeProjectileID = -1;
    g_ranged = true;
    EXPECT(Obj()->Character::CanRangeAttack() == true);
    int a = 0;
    int b = 0;
    int c = 0;
    EXPECT(Obj()->Character::CanRangeAttack(a, b, c) == true);
    EXPECT(a == 1 && b == 2 && c == 3);
    g_ranged = false;
    EXPECT(Obj()->Character::CanRangeAttack() == false);

    // With an override word the answer is true whatever the inventory says, and a, b and c are the sheet words
    // (m_w31 >> 8, m_w32 >> 8, m_w33).
    Obj()->m_props.RangeMinDistance = 7 << 8;
    Obj()->m_props.RangeMaxDistance = 9 << 8;
    Obj()->m_props.RangeProjectileID = 4;
    g_ranged = false;
    EXPECT(Obj()->Character::CanRangeAttack() == true);
    EXPECT(Obj()->Character::CanRangeAttack(a, b, c) == true);
    EXPECT(a == 7 && b == 9 && c == 4);
}

}  // namespace

int main() {
    TestUniqueAnimSetId();
    TestRespawnDelay();
    TestTransmute();
    TestRangedForwarding();
    if (g_failures == 0) {
        std::printf("all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}

// Stubs for the remaining symbols the batch object refers to. None of the checks above reaches them.
extern "C" void batch_stub_1(void) asm("_ZN14CharProperties11BuffExpiredEPN10CharTimers5TimerE");
extern "C" void batch_stub_1(void) { std::abort(); }
extern "C" void batch_stub_2(void) asm("_ZN16CharStateMachine19SM_SetInteractStateEibPvb");
extern "C" void batch_stub_2(void) { std::abort(); }
extern "C" void batch_stub_3(void) asm("_ZN6CharAI12RaiseAIEventEiPv");
extern "C" void batch_stub_3(void) { std::abort(); }
extern "C" void batch_stub_4(void) asm("_ZNK13ItemInventory12HasTwoHanderEb");
extern "C" void batch_stub_4(void) { std::abort(); }
extern "C" void batch_stub_5(void) asm("_ZNK13ItemInventory14IsDualWieldingEv");
extern "C" void batch_stub_5(void) { std::abort(); }
extern "C" void batch_stub_6(void) asm("_ZNK13ItemInventory17HasMainHandWeaponEv");
extern "C" void batch_stub_6(void) { std::abort(); }
extern "C" void batch_stub_7(void) asm("_ZNK13ItemInventory20GetNumEquipmentSlotsEv");
extern "C" void batch_stub_7(void) { std::abort(); }
extern "C" void batch_stub_8(void) asm("_ZNK13ItemInventory20IsEquipmentSlotTakenEj");
extern "C" void batch_stub_8(void) { std::abort(); }
extern "C" void batch_stub_9(void) asm("_ZNK13ItemInventory6HasBowEv");
extern "C" void batch_stub_9(void) { std::abort(); }
extern "C" void batch_stub_10(void) asm("_ZNK13ItemInventory8HasStaffEv");
extern "C" void batch_stub_10(void) { std::abort(); }
extern "C" void batch_stub_11(void) asm("_ZNK14CharProperties18PROPS_GetWalkSpeedEv");
extern "C" void batch_stub_11(void) { std::abort(); }
extern "C" void batch_stub_12(void) asm("_ZNK16CharStateMachine11SM_IsScaredEb");
extern "C" void batch_stub_12(void) { std::abort(); }
extern "C" void batch_stub_13(void) asm("_ZNK16CharStateMachine12SM_IsStunnedEb");
extern "C" void batch_stub_13(void) { std::abort(); }
extern "C" void batch_stub_14(void) asm("_ZNK16CharStateMachine16SM_IsInteractingEv");
extern "C" void batch_stub_14(void) { std::abort(); }
extern "C" void batch_stub_15(void) asm("_ZNK6CharAI10AI_IsEnemyEPK10GameObject");
extern "C" void batch_stub_15(void) { std::abort(); }
extern "C" void batch_stub_16(void) asm("_ZNK6CharAI11AI_IsFriendEPK10GameObject");
extern "C" void batch_stub_16(void) { std::abort(); }
extern "C" void batch_stub_17(void) asm("_ZNK9Character10IsMerchantEv");
extern "C" void batch_stub_17(void) { std::abort(); }
extern "C" void batch_stub_18(void) asm("_ZNK9Character10IsSummonedEv");
extern "C" void batch_stub_18(void) { std::abort(); }
extern "C" void batch_stub_19(void) asm("_ZNK9Character11GetCharTypeEv");
extern "C" void batch_stub_19(void) { std::abort(); }
extern "C" void batch_stub_20(void) asm("_ZNK9Character7HasLootEv");
extern "C" void batch_stub_20(void) { std::abort(); }
extern "C" void batch_stub_21(void) asm("_ZNK9Character8IsFaerieEv");
extern "C" void batch_stub_21(void) { std::abort(); }
extern "C" void batch_stub_22(void) asm("_ZNK9Character9IsCleanerEv");
extern "C" void batch_stub_22(void) { std::abort(); }
extern "C" void batch_stub_23(void) asm("_ZNK9Character9IsMonsterEv");
extern "C" void batch_stub_23(void) { std::abort(); }
