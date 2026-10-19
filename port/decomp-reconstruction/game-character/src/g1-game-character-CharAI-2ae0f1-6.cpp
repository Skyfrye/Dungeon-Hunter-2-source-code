// Batch g1-game-character-CharAI-2ae0f1-6 (part 7 of 9 of CharAI): the aggro queries, the melee and sight radii, the
// distance tests, AI_SetMaster, the interaction range, the faction relations (AI_IsFriend, AI_IsEnemy, AI_IsNeutral),
// AI_PauseTargetSeeking and the target character queries. Declarations and layout come from dh2/CharAI.hpp.
//
// Offsets in comments are the original 32-bit offsets inside CharAI (this) unless a line says Character, GameObject,
// ObjectBase or a table row. The AI table row is the Structs::AIProps record of the character (Arrays::AITable, 68-byte
// listing stride). The faction row is Structs::AIFactions (Arrays::AIFactionTable, 12-byte listing stride), and its
// relation entries are Structs::AIFaction records.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace {

const char* const kQueriesCpp =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp";

// The original ASSERT(expr) macro, as in the other CharAI batches. Level 2 faults (std::abort here), level 1 prints the
// message to stderr and execution continues, level 0 is silent.
void AssertFailed(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// The Character behind a query target. The object's handle is resolved (ObjectBase::GetHandle const, then
// ObjectHandle::GetObject const with assertFound false), and the result counts as a Character only when its m_goId
// (+0xf4 of ObjectBase) is 0. Returns nullptr otherwise, which is the "!Object || Object->+0xf4" test of the original.
Character* ResolveQueryCharacter(const GameObject* obj) {
    const ObjectHandle handle = obj->GetHandle();
    ObjectBase* object = handle.GetObject(false);
    if (object == nullptr || object->m_goId != 0) {
        return nullptr;
    }
    return static_cast<Character*>(object);
}

// The four faction-id ASSERTs at the head of AI_IsFriend, AI_IsEnemy and AI_IsNeutral (CharAI_Queries.cpp). firstLine is
// the line of the first one; the other three follow on the next lines.
void CheckFactionIds(const Character* me, const Character* other, int firstLine) {
    const int tableSize = static_cast<int>(Arrays::AIFactionTable::size);
    if (other->GetCharAIFactionId() < 0) {
        AssertFailed("c->GetCharAIFactionId() >= 0", kQueriesCpp, firstLine);
    }
    if (other->GetCharAIFactionId() >= tableSize) {
        AssertFailed("c->GetCharAIFactionId() < (int)Arrays::AIFactionTable::size", kQueriesCpp, firstLine + 1);
    }
    if (me->GetCharAIFactionId() < 0) {
        AssertFailed("me->GetCharAIFactionId() >= 0", kQueriesCpp, firstLine + 2);
    }
    if (me->GetCharAIFactionId() >= tableSize) {
        AssertFailed("me->GetCharAIFactionId() < (int)Arrays::AIFactionTable::size", kQueriesCpp, firstLine + 3);
    }
}

// The relation entry of faction row `row` towards faction `factionId`, or nullptr when the row has none. Row layout:
// +0x4 m_w1 entry count, +0x8 m_w2 entries. Entry layout: +0x4 m_w1 faction id, +0x8 m_w2 relation value (> 0 friend,
// < 0 enemy, 0 neutral). The entries are indexed as host-sized Structs::AIFaction elements.
const Structs::AIFaction* FindFactionRelation(const Structs::AIFactions* row, int factionId) {
    const auto* entries = static_cast<const Structs::AIFaction*>(row->factions);
    for (std::uint32_t i = 0; i < row->factionsSize; ++i) {
        if (entries[i].Id == factionId) {
            return &entries[i];
        }
    }
    return nullptr;
}

}  // namespace

// 0x3d49f0 CharAI::AI_HasAggro() const
bool CharAI::AI_HasAggro() const {
    return !m_aggro.empty();  // +0x8c: count of m_aggro
}

// 0x3d4a00 CharAI::AI_IsAggroed() const
bool CharAI::AI_IsAggroed() const {
    return !m_aggroedBy.empty();  // +0xa4: count of m_aggroedBy
}

// 0x3d4a10 CharAI::AI_GetAggroCount() const
int CharAI::AI_GetAggroCount() const {
    return static_cast<int>(m_aggro.size());  // +0x8c
}

// 0x3d4a18 CharAI::AI_GetHighestAggro() const
// The original walks the m_aggro tree in key order (from its leftmost node). It keeps the key of the first entry whose
// value is above the running maximum, which starts at 0.0f, so nullptr is returned when no value is above 0.
Character* CharAI::AI_GetHighestAggro() const {
    Character* best = nullptr;
    float bestAggro = 0.0f;
    for (const auto& entry : m_aggro) {
        if (entry.second > bestAggro) {
            best = entry.first;
            bestAggro = entry.second;
        }
    }
    return best;
}

// 0x3d4ac8 CharAI::AI_GetAggro(Character*) const
// The value of c in m_aggro, or 0.0f when c has no entry. A null c fails the ASSERT (CharAI_Queries.cpp:553) and the
// lookup still runs.
float CharAI::AI_GetAggro(Character* c) const {
    if (c == nullptr) {
        AssertFailed("c", kQueriesCpp, 553);
    }
    const auto it = m_aggro.find(c);
    return it != m_aggro.end() ? it->second : 0.0f;
}

// 0x3d4bc4 CharAI::AI_IsInCombat() const
bool CharAI::AI_IsInCombat() const {
    return AI_HasAggro() || AI_IsAggroed() || m_character->CharStateMachine::SM_IsAttacking() ||
           m_character->CharStateMachine::SM_IsUsingSkill() || m_character->CharStateMachine::SM_IsCasting();
}

// 0x3d4c34 CharAI::AI_GetMeleeRadius() const
// The melee bonus that ItemInventory::CanMeleeAttack writes (the result of the call is not used), plus the base radius
// of the character's AI table row.
float CharAI::AI_GetMeleeRadius() const {
    int meleeBonus = 0;
    m_character->ItemInventory::CanMeleeAttack(meleeBonus);
    const Structs::AIProps* row = m_character->GetCharAI();
    return static_cast<float>(meleeBonus) + row->MeleeRadius;  // AITable row +0x20
}

// 0x3d4c9c CharAI::AI_GetMeleeRadiusSq() const
float CharAI::AI_GetMeleeRadiusSq() const {
    const float radius = AI_GetMeleeRadius();
    return radius * radius;
}

// 0x3d4cb0 CharAI::AI_IsCloserThan(float, GameObject const*) const
// dist is compared with the squared distance between the character and obj (m_target when obj is null).
bool CharAI::AI_IsCloserThan(float dist, const GameObject* obj) const {
    if (obj == nullptr) {
        obj = m_target;
        if (obj == nullptr) {
            return false;
        }
    }
    const Point3D<float>& mine = m_character->GetTargetPosition();
    const Point3D<float>& other = obj->GetTargetPosition();
    const float dx = mine.X - other.X;
    const float dy = mine.Y - other.Y;
    const float dz = mine.Z - other.Z;
    return dist > dx * dx + dy * dy + dz * dz;
}

// 0x3d4d80 CharAI::AI_SetMaster(Character*)
// A master sets two flags: m_masterAlive (not dead) and m_masterInSight (the sight range squared is above the squared
// distance from the character). A null master only clears m_master.
void CharAI::AI_SetMaster(Character* master) {
    m_master = master;
    if (master == nullptr) {
        return;
    }
    const Structs::AIProps* row = m_character->GetCharAI();
    m_masterAlive = !master->IsDead();
    const Point3D<float>& masterPos = master->GetTargetPosition();
    const Point3D<float>& myPos = m_character->GetTargetPosition();
    const float dx = masterPos.X - myPos.X;
    const float dy = masterPos.Y - myPos.Y;
    const float dz = masterPos.Z - myPos.Z;
    const float sightRange = row->ViewRadius;  // AITable row +0x3c
    m_masterInSight = sightRange * sightRange > dx * dx + dy * dy + dz * dz;
}

// 0x3d4ea0 CharAI::AI_IsInSight(float) const
// dist is a squared distance. The sight range (AITable row +0x3c) squared must be above it.
bool CharAI::AI_IsInSight(float dist) const {
    const float sightRange = m_character->GetCharAI()->ViewRadius;  // AITable row +0x3c
    return sightRange * sightRange > dist;
}

// 0x3d4ed8 CharAI::AI_IsInSight(GameObject const*) const
bool CharAI::AI_IsInSight(const GameObject* obj) const {
    if (obj == nullptr) {
        obj = m_target;
        if (obj == nullptr) {
            return false;
        }
    }
    const Point3D<float>& mine = m_character->GetTargetPosition();
    const Point3D<float>& other = obj->GetTargetPosition();
    const float dx = mine.X - other.X;
    const float dy = mine.Y - other.Y;
    const float dz = mine.Z - other.Z;
    return AI_IsInSight(dx * dx + dy * dy + dz * dz);
}

// 0x3d4f98 CharAI::AI_IsInInteractionRange(GameObject const*) const
// The distance from the character to the interaction spot of obj, less the melee radius and the interaction radius of
// obj, is compared with the AI table row threshold (+0x18). A relation type of 8 uses a threshold of 0 instead. An
// object whose interaction_position node is already cached (+0x2e8) has no radius terms and a threshold of 80.
bool CharAI::AI_IsInInteractionRange(const GameObject* obj) const {
    if (obj == nullptr) {
        obj = m_target;
        if (obj == nullptr) {
            return false;
        }
    }
    const Point3D<float>& mine = m_character->GetTargetPosition();
    const Point3D<float> spot = obj->GetInteractionSpot();
    const float dx = mine.X - spot.X;
    const float dy = mine.Y - spot.Y;
    const float dz = mine.Z - spot.Z;
    const float dist = std::sqrt(dx * dx + dy * dy + dz * dz);

    float meleeRadius = 0.0f;
    float interactRadius = 0.0f;
    float threshold = 80.0f;
    if (obj->m_interactionSpotNode == nullptr) {
        meleeRadius = AI_GetMeleeRadius();
        interactRadius = obj->GetInteractionRadius();
        threshold = m_character->GetCharAI()->InteractRadius;  // AITable row +0x18
    }
    const float remaining = (dist - meleeRadius) - interactRadius;
    if (obj->GetInteractionType(m_character) == 8) {
        return !(remaining > 0.0f);
    }
    return !(remaining > threshold);
}

// 0x3d511c CharAI::AI_IsFriend(GameObject const*) const
// A friend is an object resolved to a Character whose faction has a relation entry with a positive value.
bool CharAI::AI_IsFriend(const GameObject* obj) const {
    if (obj == nullptr) {
        obj = m_target;
        if (obj == nullptr) {
            return false;
        }
    }
    Character* other = ResolveQueryCharacter(obj);
    if (other == nullptr) {
        return false;
    }
    CheckFactionIds(m_character, other, 196);
    const Structs::AIFaction* relation =
        FindFactionRelation(m_character->GetCharAIFaction(), other->GetCharAIFactionId());
    return relation != nullptr && relation->Value > 0;
}

// 0x3d53ec CharAI::AI_PauseTargetSeeking(unsigned int)
// Stops target seeking and arms the CharTimers slot with event 50, which re-enables it. Returns the timer slot.
int CharAI::AI_PauseTargetSeeking(unsigned int ms) {
    m_targetSeeking = false;
    return m_character->CharTimers::TMR_Start(ms, 0, 50, nullptr);
}

// 0x3d541c CharAI::AI_GetTargetAsCharacter() const
Character* CharAI::AI_GetTargetAsCharacter() const {
    if (m_target == nullptr) {
        return nullptr;
    }
    ObjectHandle handle = m_target->GetHandle();
    return handle;
}

// 0x3d5450 CharAI::AI_GetTargetAsCharacter()
// Same body as the const overload at 0x3d541c (the original has two copies of the code).
Character* CharAI::AI_GetTargetAsCharacter() {
    if (m_target == nullptr) {
        return nullptr;
    }
    ObjectHandle handle = m_target->GetHandle();
    return handle;
}

// 0x3d5484 CharAI::AI_IsTargetACharacter() const
bool CharAI::AI_IsTargetACharacter() const {
    if (m_target == nullptr) {
        return false;
    }
    ObjectHandle handle = m_target->GetHandle();
    Character* other = handle;
    return other != nullptr;
}

// 0x3d574c CharAI::AI_IsEnemy(GameObject const*) const
// An object that is not a Character counts as an enemy when it is interactive towards this character with relation type
// 8. Two players are never enemies. Otherwise an enemy is a faction relation with a negative value.
bool CharAI::AI_IsEnemy(const GameObject* obj) const {
    if (obj == nullptr) {
        obj = m_target;
        if (obj == nullptr) {
            return false;
        }
    }
    Character* other = ResolveQueryCharacter(obj);
    if (other == nullptr) {
        if (obj->IsInteractive(m_character)) {
            return obj->GetInteractionType(m_character) == 8;
        }
        return false;
    }
    CheckFactionIds(m_character, other, 263);
    if (m_character->IsPlayer() && other->IsPlayer()) {
        return false;
    }
    const Structs::AIFaction* relation =
        FindFactionRelation(m_character->GetCharAIFaction(), other->GetCharAIFactionId());
    return relation != nullptr && relation->Value < 0;  // the sign bit of the relation value
}

// 0x3d5a98 CharAI::AI_IsNeutral(GameObject const*) const
// A neutral object is one that is not a Character, or whose faction has no relation entry, or whose relation value is 0.
bool CharAI::AI_IsNeutral(const GameObject* obj) const {
    if (obj == nullptr) {
        obj = m_target;
        if (obj == nullptr) {
            return true;
        }
    }
    Character* other = ResolveQueryCharacter(obj);
    if (other == nullptr) {
        return true;
    }
    CheckFactionIds(m_character, other, 226);
    const Structs::AIFaction* relation =
        FindFactionRelation(m_character->GetCharAIFaction(), other->GetCharAIFactionId());
    if (relation == nullptr) {
        return true;
    }
    return relation->Value == 0;
}
