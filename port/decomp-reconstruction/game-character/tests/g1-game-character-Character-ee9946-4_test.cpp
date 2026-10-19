// Test for batch g1-game-character-Character-ee9946-4.
//
// Covers the logic that runs without the engine: ClearConcurrentAI (the static map), SetInitialPosition (the stored
// position), GetPreSetAIState (the state mapping, on a placement-constructed std::string), HasPotion, Disabled and Enabled
// (call order), DropLoot (argument forwarding to ItemObject::DropLootTable), and GetLeftFootPosition and GetRightFootPosition
// with no visual object (the target position). The engine symbols the batch references are defined below: a few record
// their arguments, and the rest are StubAbort stubs (generated at the end of this file). No Character is constructed: the
// storage is zero-filled, so only non-virtual members are called, qualified where the name is virtual.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <new>
#include <string>

#include "dh2/Character.hpp"
#include "dh2/ItemObject.hpp"

[[noreturn]] static void StubAbort(const char* name) {
    std::fprintf(stderr, "stub called: %s\n", name);
    std::abort();
}

std::map<int, Character*> Character::s_concurrentAI;

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

Point3D<float> g_target{1.0f, 2.0f, 3.0f};
int g_potions = 0;
int g_callOrder = 0;
int g_disabledOrder = 0;
int g_selfFXOrder = 0;
int g_enabledCalls = 0;
int g_dropLootCalls = 0;
int g_dropLootId = 0;
const GameObject* g_dropDropper = nullptr;
const GameObject* g_dropKiller = nullptr;
int g_dropFixedPowers = 0;
bool g_dropFlag = true;

// A zero-filled Character. The tests use its address and non-virtual members only.
alignas(Character) unsigned char g_storage[sizeof(Character)];
Character* const g_self = reinterpret_cast<Character*>(g_storage);
GameObject* const g_killer = reinterpret_cast<GameObject*>(g_storage + 64);

void TestClearConcurrentAI() {
    Character::s_concurrentAI.clear();
    Character::s_concurrentAI[1] = nullptr;
    Character::s_concurrentAI[2] = nullptr;
    g_self->ClearConcurrentAI();
    EXPECT(Character::s_concurrentAI.empty());
}

void TestSetInitialPosition() {
    const Point3D<float> pos{4.0f, 5.0f, 6.0f};
    g_self->SetInitialPosition(pos);
    EXPECT(g_self->m_initialPosition.X == 4.0f);
    EXPECT(g_self->m_initialPosition.Y == 5.0f);
    EXPECT(g_self->m_initialPosition.Z == 6.0f);
}

void TestPreSetAIState() {
    using StateString = std::string;
    struct Case {
        const char* text;
        int expected;
    };
    const Case cases[] = {{"Limbus", 0}, {"PreSpawn", 17}, {"Other", 3}, {"", 3}};
    for (const Case& c : cases) {
        new (&g_self->m_aiState) StateString(c.text);
        EXPECT(g_self->GetPreSetAIState() == c.expected);
        g_self->m_aiState.~StateString();
    }
}

void TestHasPotion() {
    g_potions = 0;
    EXPECT(!g_self->HasPotion());
    g_potions = 2;
    EXPECT(g_self->HasPotion());
    g_potions = 0;
}

void TestDisabledEnabled() {
    g_callOrder = 0;
    g_disabledOrder = 0;
    g_selfFXOrder = 0;
    g_enabledCalls = 0;
    g_self->Character::Disabled();
    EXPECT(g_disabledOrder == 1);
    EXPECT(g_selfFXOrder == 2);
    g_self->Character::Enabled();
    EXPECT(g_enabledCalls == 1);
}

void TestDropLoot() {
    g_dropLootCalls = 0;
    g_self->DropLoot(g_killer);
    EXPECT(g_dropLootCalls == 1);
    EXPECT(g_dropLootId == 7);
    EXPECT(g_dropDropper == g_self);
    EXPECT(g_dropKiller == g_killer);
    EXPECT(g_dropFixedPowers == -1);
    EXPECT(g_dropFlag == false);
}

void TestFootPositions() {
    g_target = Point3D<float>{4.0f, 5.0f, 6.0f};
    const Point3D<float> left = g_self->GetLeftFootPosition();
    const Point3D<float> right = g_self->GetRightFootPosition();
    EXPECT(left.X == 4.0f && left.Y == 5.0f && left.Z == 6.0f);
    EXPECT(right.X == 4.0f && right.Y == 5.0f && right.Z == 6.0f);
}

}  // namespace

// Recording definitions of the engine functions the batch calls.
const Point3D<float>& GameObject::GetTargetPosition() const {
    return g_target;
}

void GameObject::Disabled() {
    g_disabledOrder = ++g_callOrder;
}

void GameObject::Enabled() {
    ++g_enabledCalls;
}

void Character::DisableSelfFX() {
    g_selfFXOrder = ++g_callOrder;
}

int ItemInventory::GetNumPotions() const {
    return g_potions;
}

int Character::GetLoot() const {
    return 7;
}

void ItemObject::DropLootTable(int lootTableId, const GameObject* dropper, const GameObject* killer, int fixedNumPowers,
                               bool unk_flag) {
    ++g_dropLootCalls;
    g_dropLootId = lootTableId;
    g_dropDropper = dropper;
    g_dropKiller = killer;
    g_dropFixedPowers = fixedNumPowers;
    g_dropFlag = unk_flag;
}

int main() {
    TestClearConcurrentAI();
    TestSetInitialPosition();
    TestPreSetAIState();
    TestHasPotion();
    TestDisabledEnabled();
    TestDropLoot();
    TestFootPositions();
    if (g_failures == 0) {
        std::printf("g1-game-character-Character-ee9946-4 tests passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}

// Abort stubs for engine symbols the batch references but the tests never reach (generated from the object's undefined
// symbols). Each stub calls StubAbort with its symbol name. The vtable placeholders that used to sit here
// (_ZTV13NetStructBool, _ZTV15NetStructMember, _ZTV19NetStructMemberTypeIbE as 256 zero bytes each) are gone: the link
// stubs in this file are dead, but a vtable is DATA, and no name comparison can see that its contents are zero. The test
// object precedes the archives, so the zero vtables won and every NetStructBool a library object in this executable
// constructs got a null vtable (a virtual call would have jumped to 0). The real vtables come from
// libdh2_net_transport.a(net_struct.cpp.obj) and libdh2_net_transport.a(e2-net-transport-NetStructMemberType-b42f13-0.cpp.obj),
// both of which are already in this executable's link closure.
extern "C" void stub_1() __asm__("_ZN10GameObject11DeserializeEP11IStreamBase");
extern "C" void stub_1() { StubAbort("_ZN10GameObject11DeserializeEP11IStreamBase"); }
extern "C" void stub_2() __asm__("_ZN10GameObject9SerializeEP11IStreamBase");
extern "C" void stub_2() { StubAbort("_ZN10GameObject9SerializeEP11IStreamBase"); }
extern "C" void stub_3() __asm__("_ZN12NetStructIntILj16EE4ReadER12NetBitStream");
extern "C" void stub_3() { StubAbort("_ZN12NetStructIntILj16EE4ReadER12NetBitStream"); }
extern "C" void stub_4() __asm__("_ZN12NetStructIntILj32EE4ReadER12NetBitStream");
extern "C" void stub_4() { StubAbort("_ZN12NetStructIntILj32EE4ReadER12NetBitStream"); }
extern "C" void stub_5() __asm__("_ZN14CharProperties12PROPS_AddIntEii");
extern "C" void stub_5() { StubAbort("_ZN14CharProperties12PROPS_AddIntEii"); }
extern "C" void stub_6() __asm__("_ZN14CharProperties20PROPS_RemoveAllBuffsEv");
extern "C" void stub_6() { StubAbort("_ZN14CharProperties20PROPS_RemoveAllBuffsEv"); }
extern "C" void stub_7() __asm__("_ZN14CharProperties9PROPS_SetEii");
extern "C" void stub_7() { StubAbort("_ZN14CharProperties9PROPS_SetEii"); }
extern "C" void stub_8() __asm__("_ZN15NetStructMember8PostLoadEj");
extern "C" void stub_8() { StubAbort("_ZN15NetStructMember8PostLoadEj"); }
extern "C" void stub_9() __asm__("_ZN15NetStructMemberD2Ev");
extern "C" void stub_9() { StubAbort("_ZN15NetStructMemberD2Ev"); }
extern "C" void stub_10() __asm__("_ZN19NetStructMemberTypeIfE5EraseER12NetBitStream");
extern "C" void stub_10() { StubAbort("_ZN19NetStructMemberTypeIfE5EraseER12NetBitStream"); }
extern "C" void stub_11() __asm__("_ZN19NetStructMemberTypeIfE8SetValueERKf");
extern "C" void stub_11() { StubAbort("_ZN19NetStructMemberTypeIfE8SetValueERKf"); }
extern "C" void stub_12() __asm__("_ZN19NetStructMemberTypeIiE5EraseER12NetBitStream");
extern "C" void stub_12() { StubAbort("_ZN19NetStructMemberTypeIiE5EraseER12NetBitStream"); }
extern "C" void stub_13() __asm__("_ZN19NetStructMemberTypeIiE8SetValueERKi");
extern "C" void stub_13() { StubAbort("_ZN19NetStructMemberTypeIiE8SetValueERKi"); }
extern "C" void stub_14() __asm__("_ZN20NetStructRangedFloatILj16ELin1ELi1EE4ReadER12NetBitStream");
extern "C" void stub_14() { StubAbort("_ZN20NetStructRangedFloatILj16ELin1ELi1EE4ReadER12NetBitStream"); }
extern "C" void stub_15() __asm__("_ZN6CharAI15UpdateAllSkillsEv");
extern "C" void stub_15() { StubAbort("_ZN6CharAI15UpdateAllSkillsEv"); }
extern "C" void stub_16() __asm__("_ZN6Device17IsHighPerformanceEv");
extern "C" void stub_16() { StubAbort("_ZN6Device17IsHighPerformanceEv"); }
extern "C" void stub_17() __asm__("_ZN9Character10RaiseEventEiPv");
extern "C" void stub_17() { StubAbort("_ZN9Character10RaiseEventEiPv"); }
extern "C" void stub_18() __asm__("_ZN9Character18InitPhysicalObjectEv");
extern "C" void stub_18() { StubAbort("_ZN9Character18InitPhysicalObjectEv"); }
extern "C" void stub_19() __asm__("_ZN9Character26RemoveMultiplayerHighlightEv");
extern "C" void stub_19() { StubAbort("_ZN9Character26RemoveMultiplayerHighlightEv"); }
extern "C" void stub_20() __asm__("_ZN9Character9_InitHpMpEv");
extern "C" void stub_20() { StubAbort("_ZN9Character9_InitHpMpEv"); }
extern "C" void stub_21() __asm__("_ZN9NetStruct10SetAckedByEi");
extern "C" void stub_21() { StubAbort("_ZN9NetStruct10SetAckedByEi"); }
extern "C" void stub_22() __asm__("_ZN9NetStruct11GetSizeBitsEv");
extern "C" void stub_22() { StubAbort("_ZN9NetStruct11GetSizeBitsEv"); }
extern "C" void stub_23() __asm__("_ZN9NetStruct12GetSizeBytesEv");
extern "C" void stub_23() { StubAbort("_ZN9NetStruct12GetSizeBytesEv"); }
extern "C" void stub_24() __asm__("_ZN9NetStruct13HasDataToSendEi");
extern "C" void stub_24() { StubAbort("_ZN9NetStruct13HasDataToSendEi"); }
extern "C" void stub_25() __asm__("_ZN9NetStruct15ConditionalLoadEbR12NetBitStreamij");
extern "C" void stub_25() { StubAbort("_ZN9NetStruct15ConditionalLoadEbR12NetBitStreamij"); }
extern "C" void stub_26() __asm__("_ZN9NetStruct16GetChangedBitMapEv");
extern "C" void stub_26() { StubAbort("_ZN9NetStruct16GetChangedBitMapEv"); }
extern "C" void stub_27() __asm__("_ZN9NetStruct17ProcessLostPacketEii");
extern "C" void stub_27() { StubAbort("_ZN9NetStruct17ProcessLostPacketEii"); }
extern "C" void stub_28() __asm__("_ZN9NetStruct17SerializeDisabledER12NetBitStream");
extern "C" void stub_28() { StubAbort("_ZN9NetStruct17SerializeDisabledER12NetBitStream"); }
extern "C" void stub_29() __asm__("_ZN9NetStruct20ConditionalSerializeEbR12NetBitStreamii");
extern "C" void stub_29() { StubAbort("_ZN9NetStruct20ConditionalSerializeEbR12NetBitStreamii"); }
extern "C" void stub_30() __asm__("_ZN9NetStruct22AreChangesAcknowledgedEv");
extern "C" void stub_30() { StubAbort("_ZN9NetStruct22AreChangesAcknowledgedEv"); }
extern "C" void stub_31() __asm__("_ZN9NetStruct24AreChangesAcknowledgedByEi");
extern "C" void stub_31() { StubAbort("_ZN9NetStruct24AreChangesAcknowledgedByEi"); }
extern "C" void stub_32() __asm__("_ZN9NetStruct25ProcessAcknowledgedPacketEii");
extern "C" void stub_32() { StubAbort("_ZN9NetStruct25ProcessAcknowledgedPacketEii"); }
extern "C" void stub_33() __asm__("_ZN9NetStruct4LoadER12NetBitStreamij");
extern "C" void stub_33() { StubAbort("_ZN9NetStruct4LoadER12NetBitStreamij"); }
extern "C" void stub_34() __asm__("_ZN9NetStruct5EraseER12NetBitStream");
extern "C" void stub_34() { StubAbort("_ZN9NetStruct5EraseER12NetBitStream"); }
extern "C" void stub_35() __asm__("_ZN9NetStruct9IsChangedEv");
extern "C" void stub_35() { StubAbort("_ZN9NetStruct9IsChangedEv"); }
extern "C" void stub_36() __asm__("_ZN9NetStruct9SerializeER12NetBitStreamii");
extern "C" void stub_36() { StubAbort("_ZN9NetStruct9SerializeER12NetBitStreamii"); }
extern "C" void stub_37() __asm__("_ZN9NetStructC2Ev");
extern "C" void stub_37() { StubAbort("_ZN9NetStructC2Ev"); }
extern "C" void stub_38() __asm__("_ZN9NetStructD2Ev");
extern "C" void stub_38() { StubAbort("_ZN9NetStructD2Ev"); }
extern "C" void stub_39() __asm__("_ZNK12NetStructIntILj16EE5WriteER12NetBitStream");
extern "C" void stub_39() { StubAbort("_ZNK12NetStructIntILj16EE5WriteER12NetBitStream"); }
extern "C" void stub_40() __asm__("_ZNK12NetStructIntILj16EE9TestValueERKi");
extern "C" void stub_40() { StubAbort("_ZNK12NetStructIntILj16EE9TestValueERKi"); }
extern "C" void stub_41() __asm__("_ZNK12NetStructIntILj32EE5WriteER12NetBitStream");
extern "C" void stub_41() { StubAbort("_ZNK12NetStructIntILj32EE5WriteER12NetBitStream"); }
extern "C" void stub_42() __asm__("_ZNK12NetStructIntILj32EE9TestValueERKi");
extern "C" void stub_42() { StubAbort("_ZNK12NetStructIntILj32EE9TestValueERKi"); }
extern "C" void stub_43() __asm__("_ZNK12VisualObject15GetSpecificNodeEPKc");
extern "C" void stub_43() { StubAbort("_ZNK12VisualObject15GetSpecificNodeEPKc"); }
extern "C" void stub_44() __asm__("_ZNK15NetStructMember11GetSizeBitsEv");
extern "C" void stub_44() { StubAbort("_ZNK15NetStructMember11GetSizeBitsEv"); }
extern "C" void stub_45() __asm__("_ZNK19NetStructMemberTypeIfE8GetValueEv");
extern "C" void stub_45() { StubAbort("_ZNK19NetStructMemberTypeIfE8GetValueEv"); }
extern "C" void stub_46() __asm__("_ZNK19NetStructMemberTypeIiE8GetValueEv");
extern "C" void stub_46() { StubAbort("_ZNK19NetStructMemberTypeIiE8GetValueEv"); }
extern "C" void stub_47() __asm__("_ZNK20NetStructRangedFloatILj16ELin1ELi1EE5WriteER12NetBitStream");
extern "C" void stub_47() { StubAbort("_ZNK20NetStructRangedFloatILj16ELin1ELi1EE5WriteER12NetBitStream"); }
extern "C" void stub_48() __asm__("_ZNK20NetStructRangedFloatILj16ELin1ELi1EE9TestValueERKf");
extern "C" void stub_48() { StubAbort("_ZNK20NetStructRangedFloatILj16ELin1ELi1EE9TestValueERKf"); }
extern "C" void stub_49() __asm__("_ZNK6CharAI16AI_GetAggroCountEv");
extern "C" void stub_49() { StubAbort("_ZNK6CharAI16AI_GetAggroCountEv"); }
extern "C" void stub_50() __asm__("_ZNK6CharAI16AI_GetAggroEntryEiRP9CharacterRf");
extern "C" void stub_50() { StubAbort("_ZNK6CharAI16AI_GetAggroEntryEiRP9CharacterRf"); }
extern "C" void stub_51() __asm__("_ZNK6glitch5scene10ISceneNode19getAbsolutePositionEv");
extern "C" void stub_51() { StubAbort("_ZNK6glitch5scene10ISceneNode19getAbsolutePositionEv"); }
extern "C" void stub_52() __asm__("_ZNK9Character14GetCharModelIdEv");
extern "C" void stub_52() { StubAbort("_ZNK9Character14GetCharModelIdEv"); }
extern "C" void stub_53() __asm__("_ZNK9Character17SG_GetPlayerClassEv");
extern "C" void stub_53() { StubAbort("_ZNK9Character17SG_GetPlayerClassEv"); }
extern "C" void stub_54() __asm__("_ZNK9Character8IsFaerieEv");
extern "C" void stub_54() { StubAbort("_ZNK9Character8IsFaerieEv"); }
