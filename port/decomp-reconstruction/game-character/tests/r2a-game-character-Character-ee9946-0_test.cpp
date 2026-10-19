// Test for the REDO pass of batch r2a-game-character-Character-ee9946-0 (the Character getters of addresses
// 0x3a2e24 .. 0x3a346c: focus object, update flags, FX scale, loot, sound and FX rows, AI attack delay and combo).
//
// It links the three sources that hold the batch bodies:
//   g1-game-character-Character-ee9946-0.cpp   focus, update flags, FX scale, loot
//   g1-game-character-Character-ee9946-1.cpp   HasLoot, the AI and animation rows
//   g1-game-character-Character-ee9946-2.cpp   sound and FX rows, AI attack delay, combo attack
// Those files reference engine code that is not linked into this test (pydata table storage, the CharProperties
// sheet getter, GameObject, CharAI, CharStateMachine). The test defines the table storage and the small stand-ins
// below. Only CharProperties::PROPS_Get is on a path under test; it returns the sheet words m_w1..m_w4 as the
// ids, which is what the batch's id getters read (the real getter is in CharProperties-53ed14-0).
//
// No Character is constructed. Its storage is zero-filled and only qualified (non-virtual) calls are made, so no
// vtable is read. The table elements are zero-filled buffers and are never constructed (their vtables are not
// linked), so the functions read the named words the tests write.

#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <vector>

#include "dh2/Character.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// ---- definitions this test provides (owned by batches and pydata-accessors that are not linked) ----

std::map<int, unsigned int> Character::s_cachedCharOIDs;

std::uint8_t* Arrays::AITable::members = nullptr;
std::uint32_t Arrays::AITable::size = 0;
std::uint8_t* Arrays::AIFactionTable::members = nullptr;
std::uint32_t Arrays::AIFactionTable::size = 0;
std::uint8_t* Arrays::CharAnimTable::members = nullptr;
std::uint32_t Arrays::CharAnimTable::size = 0;
std::uint8_t* Arrays::AnimTable::members = nullptr;
std::uint32_t Arrays::AnimTable::size = 0;
std::uint8_t* Arrays::CharSoundsTable::members = nullptr;
std::uint32_t Arrays::CharSoundsTable::size = 0;
std::uint8_t* Arrays::CharEffectTable::members = nullptr;
std::uint32_t Arrays::CharEffectTable::size = 0;

// Stand-in for CharProperties::PROPS_Get (batch CharProperties-53ed14-0 is not linked). Property id i is sheet word
// m_w(i+1), the mapping the Character id getters are written against.
int CharProperties::PROPS_Get(int propId, bool /*useTemp*/) const {
    switch (propId) {
        case 0: return m_props.AIFaction;
        case 1: return m_props.AI;
        case 2: return m_props.AnimTable;
        case 3: return m_props.ModelFile;
        default: return 0;
    }
}

// Stand-ins for the engine calls the bodies of batch -2 make (not on any path under test).
void GameObject::SetRelativeAABB(const aabb<float>& /*box*/, bool /*update*/) {}
bool GameObject::MeetCondition() const { return true; }
void CharAI::UpdatePointers() {}
float CharAI::AI_GetMeleeRadius() const { return 0.0f; }
bool CharStateMachine::SM_IsMoving(bool /*strict*/) const { return false; }
int CharProperties::PROPS_GetOpacity() const { return 0; }
int CharProperties::PROPS_GetRotationSpeed() const { return 0; }
int Character::SG_GetNumQuests(int /*arg*/) { return 0; }

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

alignas(Character) unsigned char g_storage[sizeof(Character)];

Character* Obj() {
    return reinterpret_cast<Character*>(g_storage);
}

bool Near(float a, float b) {
    return std::fabs(a - b) < 1e-4f;
}

// Zero-filled storage for `count` host elements of type T (8-byte aligned). The elements are not constructed.
template <class T>
class RowBuffer {
public:
    explicit RowBuffer(std::size_t count) : m_words((sizeof(T) * count + 7) / 8, 0) {}
    std::uint8_t* data() { return reinterpret_cast<std::uint8_t*>(m_words.data()); }
    T* rows() { return reinterpret_cast<T*>(m_words.data()); }

private:
    std::vector<std::uint64_t> m_words;
};

// ---- flags at Character +0x520 (CharStateMachine::m_stateFlags) ----

struct FlagExpect {
    bool path;
    bool posVisual;
    bool posPhysics;
    bool rotVisual;
    bool rotPhysics;
    bool visualRotation;
    int floorValid;
};

void CheckFlags(std::uint32_t flags, const FlagExpect& e) {
    Character* ch = Obj();
    ch->CharStateMachine::m_stateFlags = flags;
    EXPECT(ch->Character::IsUpdatingPath() == e.path);
    EXPECT(ch->Character::IsUpdatingPositionFromVisual() == e.posVisual);
    EXPECT(ch->Character::IsUpdatingPositionFromPhysics() == e.posPhysics);
    EXPECT(ch->Character::IsUpdatingRotationFromVisual() == e.rotVisual);
    EXPECT(ch->Character::IsUpdatingRotationFromPhysics() == e.rotPhysics);
    EXPECT(ch->Character::IsUpdatingVisualWithRotation() == e.visualRotation);
    EXPECT(ch->Character::IsValidatingFloorPosition() == e.floorValid);
}

void TestUpdateFlags() {
    // Default: every update bit clear. The visual-rotation and floor-validation results are inverted bits.
    CheckFlags(0x0u, {false, false, false, false, false, true, 1});
    // One bit at a time.
    CheckFlags(0x80u, {true, false, false, false, false, true, 1});    // path
    CheckFlags(0x01u, {false, true, false, false, false, true, 1});    // position from visual
    CheckFlags(0x02u, {false, false, true, false, false, true, 1});    // position from physics
    CheckFlags(0x04u, {false, false, false, true, false, true, 1});    // rotation from visual
    CheckFlags(0x08u, {false, false, false, false, true, true, 1});    // rotation from physics
    CheckFlags(0x10u, {false, false, false, false, false, false, 1});  // visual-with-rotation bit set: result false
    CheckFlags(0x40u, {false, false, false, false, false, true, 0});   // floor bit set: result 0
    // Unrelated state bits (scare 0x400, stun 0x800) and all bits set.
    CheckFlags(0xC00u, {false, false, false, false, false, true, 1});
    CheckFlags(0xFFFFFFFFu, {true, true, true, true, true, false, 0});
}

// ---- focus object, FX scale and loot ----

void TestFocusScaleLoot() {
    Character* ch = Obj();

    GameObject* target = reinterpret_cast<GameObject*>(static_cast<std::uintptr_t>(0x1234u));
    ch->CharAI::m_target = target;
    EXPECT(ch->Character::GetFocusObject() == target);
    ch->CharAI::m_target = nullptr;
    EXPECT(ch->Character::GetFocusObject() == nullptr);

    // The FX scale is the base sheet word m_w18 times 0.01f, on all three components.
    ch->CharProperties::m_baseProps.FX_Scale = 250;
    const Point3D<float> scale = ch->Character::GetFXScale();
    EXPECT(Near(scale.X, 2.5f));
    EXPECT(Near(scale.Y, 2.5f));
    EXPECT(Near(scale.Z, 2.5f));
    EXPECT(ch->Character::GetFXScaleValue() == 250);
    ch->CharProperties::m_baseProps.FX_Scale = -100;
    const Point3D<float> negative = ch->Character::GetFXScale();
    EXPECT(Near(negative.X, -1.0f));
    EXPECT(ch->Character::GetFXScaleValue() == -100);
    ch->CharProperties::m_baseProps.FX_Scale = 0;
    EXPECT(Near(ch->Character::GetFXScale().Z, 0.0f));

    // Loot is the final sheet word m_w10; -1 means none.
    ch->CharProperties::m_props.Loot = 42;
    EXPECT(ch->Character::GetLoot() == 42);
    EXPECT(ch->Character::HasLoot());
    ch->CharProperties::m_props.Loot = -1;
    EXPECT(ch->Character::GetLoot() == -1);
    EXPECT(!ch->Character::HasLoot());
}

// ---- sound row, FX rows, AI attack delay, combo attack ----

void TestSoundAndEffectRows() {
    Character* ch = Obj();

    // CharSounds rows: the id is m_w9, 2 when it is negative or at or past the table size.
    RowBuffer<Structs::CharSounds> sounds(4);
    Arrays::CharSoundsTable::members = sounds.data();
    Arrays::CharSoundsTable::size = 3;
    ch->CharProperties::m_props.Sounds = 1;
    EXPECT(ch->Character::GetCharSoundsId() == 1);
    EXPECT(ch->Character::GetCharSounds() == sounds.rows() + 1);
    ch->CharProperties::m_props.Sounds = 0;
    EXPECT(ch->Character::GetCharSoundsId() == 0);
    EXPECT(ch->Character::GetCharSounds() == sounds.rows());
    ch->CharProperties::m_props.Sounds = 3;
    EXPECT(ch->Character::GetCharSoundsId() == 2);
    EXPECT(ch->Character::GetCharSounds() == sounds.rows() + 2);
    ch->CharProperties::m_props.Sounds = -1;
    EXPECT(ch->Character::GetCharSoundsId() == 2);

    // CharEffect rows: the index is m_w8. Row 0 when it is negative or at or past the table size.
    RowBuffer<Structs::CharEffect> effects(3);
    Arrays::CharEffectTable::members = effects.data();
    Arrays::CharEffectTable::size = 3;
    for (int i = 0; i < 3; ++i) {
        effects.rows()[i].BloodDeathEffect = 10 + i;  // blood death (+0x04)
        effects.rows()[i].BloodEffect = 20 + i;  // blood (+0x08)
        effects.rows()[i].FootprintEffect = 30 + i;  // footprint (+0x0c)
    }
    ch->CharProperties::m_props.Effects = 1;
    EXPECT(ch->Character::GetFXBloodDeath() == 11);
    EXPECT(ch->Character::GetFXBlood() == 21);
    EXPECT(ch->Character::GetFXFootprint() == 31);
    ch->CharProperties::m_props.Effects = 2;
    EXPECT(ch->Character::GetFXBloodDeath() == 12);
    EXPECT(ch->Character::GetFXBlood() == 22);
    EXPECT(ch->Character::GetFXFootprint() == 32);
    ch->CharProperties::m_props.Effects = 3;  // at the size: row 0
    EXPECT(ch->Character::GetFXBloodDeath() == 10);
    EXPECT(ch->Character::GetFXBlood() == 20);
    EXPECT(ch->Character::GetFXFootprint() == 30);
    ch->CharProperties::m_props.Effects = -1;  // negative: row 0
    EXPECT(ch->Character::GetFXFootprint() == 30);
}

void TestAIAndAnimRows() {
    Character* ch = Obj();

    // AI rows: the id is m_w2 (PROPS_Get(1)); 8 when it is negative or at or past the table size.
    RowBuffer<Structs::AIProps> ai(9);
    Arrays::AITable::members = ai.data();
    Arrays::AITable::size = 9;
    ai.rows()[2].AttackDelay = 15;
    ai.rows()[0].AttackDelay = 7;
    ai.rows()[8].AttackDelay = 99;
    ch->CharProperties::m_props.AI = 2;
    EXPECT(ch->Character::GetCharAIId() == 2);
    EXPECT(ch->Character::GetAttackDelay() == 15);
    ch->CharProperties::m_props.AI = 0;
    EXPECT(ch->Character::GetAttackDelay() == 7);
    ch->CharProperties::m_props.AI = 9;  // at the size: fallback row 8
    EXPECT(ch->Character::GetCharAIId() == 8);
    EXPECT(ch->Character::GetAttackDelay() == 99);
    ch->CharProperties::m_props.AI = -1;
    EXPECT(ch->Character::GetAttackDelay() == 99);

    // Animation rows: the id is m_w3 (PROPS_Get(2)). The CharAnim row word m_w1 indexes AnimTable, whose row word
    // m_w4 must be 1 for a combo attack.
    RowBuffer<Structs::CharAnim> anim(2);
    Arrays::CharAnimTable::members = anim.data();
    Arrays::CharAnimTable::size = 2;
    RowBuffer<Structs::AnimTpl> animTable(2);
    Arrays::AnimTable::members = animTable.data();
    Arrays::AnimTable::size = 2;

    ch->CharProperties::m_props.AnimTable = 1;
    EXPECT(ch->Character::GetCharAnimTableId() == 1);
    anim.rows()[1].Attack = 0;
    animTable.rows()[0].Type = 1;
    EXPECT(ch->Character::HasComboAttack() == true);
    animTable.rows()[0].Type = 0;
    EXPECT(ch->Character::HasComboAttack() == false);
    anim.rows()[1].Attack = 1;
    animTable.rows()[1].Type = 1;
    EXPECT(ch->Character::HasComboAttack() == true);
    anim.rows()[1].Attack = 2;  // at the AnimTable size: no combo
    EXPECT(ch->Character::HasComboAttack() == false);
    anim.rows()[1].Attack = -1;  // negative: no combo
    EXPECT(ch->Character::HasComboAttack() == false);
}

}  // namespace

int main() {
    std::memset(g_storage, 0, sizeof g_storage);

    TestUpdateFlags();
    TestFocusScaleLoot();
    TestSoundAndEffectRows();
    TestAIAndAnimRows();

    if (g_failures == 0) {
        std::printf("r2a-game-character-Character-ee9946-0: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-character-Character-ee9946-0: %d failure(s)\n", g_failures);
    return 1;
}
