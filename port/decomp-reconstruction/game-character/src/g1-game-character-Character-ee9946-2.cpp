// Batch g1-game-character-Character-ee9946-2: part 3 of the Character functions (queries on the character
// tables, the combat and quest helpers, the multiplayer and FX helpers, and the AI pointer refresh).
// Declarations come from dh2/Character.hpp.
//
// The table getters GetCharSoundsId, GetCharSounds, GetFXFootprint, GetFXBloodDeath, GetFXBlood, GetAttackDelay and
// HasComboAttack read the table rows as host elements (the convention of GetCharAI in batch -1). The raw ids are
// CharProperties final-sheet words m_props.m_w8 and m_w9, and the AI id.

#include <cstdint>
#include <cstring>

#include "dh2/AnimatedFX.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// member_names.hpp (the name-table header that declares this template) conflicts with w7_arrays_02.hpp in one translation
// unit, so the declaration is repeated here as the game-app TU does (g1-game-app-global-f216b6-4.cpp).
namespace Arrays {
struct TrophyTable;
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

namespace {

// CharProperties::PROPS_GetOpacity and PROPS_GetRotationSpeed return the bit pattern of a float (the original
// returns LODWORD of its float result). The bits are reinterpreted here, not converted.
float FloatFromBits(int bits) {
    float value = 0.0f;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// The CharEffect row that the original selects with a row index word (Character +0x1014, m_props.m_w8): the row at
// the index when it is non-negative and below Arrays::CharEffectTable::size (compared unsigned), otherwise row 0.
const Structs::CharEffect* CharEffectRowFor(std::int32_t index) {
    const auto* rows = reinterpret_cast<const Structs::CharEffect*>(Arrays::CharEffectTable::members);
    if (index < 0 || static_cast<std::uint32_t>(index) >= Arrays::CharEffectTable::size) {
        return rows;
    }
    return rows + index;
}

}  // namespace

// 0x3a3294 _ZNK9Character15GetCharSoundsIdEv
int Character::GetCharSoundsId() const {
    // The raw id is the CharProperties final-sheet word m_props.m_w9 (Character +0x1018). A value below zero, or at or
    // past Arrays::CharSoundsTable::size (compared unsigned), gives the fallback 2.
    const std::int32_t id = m_props.Sounds;
    if (id < 0 || static_cast<std::uint32_t>(id) >= Arrays::CharSoundsTable::size) {
        return 2;
    }
    return id;
}

// 0x3a32d0 _ZNK9Character13GetCharSoundsEv
const Structs::CharSounds* Character::GetCharSounds() const {
    // Arrays::CharSoundsTable::members + 40 * GetCharSoundsId() in the original. The table is indexed as the host
    // Structs::CharSounds elements (the same convention as GetCharAI), so the 40-byte listing stride is not applied.
    return reinterpret_cast<const Structs::CharSounds*>(Arrays::CharSoundsTable::members) + GetCharSoundsId();
}

// 0x3a3300 _ZNK9Character14GetFXFootprintEv
// Word +0x0c of the CharEffect row (Structs::CharEffect m_w3), the row chosen by m_props.m_w8 (Character +0x1014).
int Character::GetFXFootprint() const {
    return CharEffectRowFor(m_props.Effects)->FootprintEffect;
}

// 0x3a3368 _ZNK9Character15GetFXBloodDeathEv
// Word +0x04 of the CharEffect row (Structs::CharEffect m_w1), the row chosen by m_props.m_w8.
int Character::GetFXBloodDeath() const {
    return CharEffectRowFor(m_props.Effects)->BloodDeathEffect;
}

// 0x3a33d0 _ZNK9Character10GetFXBloodEv
// Word +0x08 of the CharEffect row (Structs::CharEffect m_w2), the row chosen by m_props.m_w8.
int Character::GetFXBlood() const {
    return CharEffectRowFor(m_props.Effects)->BloodEffect;
}

// 0x3a3438 _ZNK9Character14GetAttackDelayEv
// Word +0x04 of the AI row for GetCharAIId() (Structs::AIProps m_w1). GetCharAI() is that row.
int Character::GetAttackDelay() const {
    return GetCharAI()->AttackDelay;
}

// 0x3a346c _ZNK9Character14HasComboAttackEv
// The CharAnim row (GetCharAnimTable) word +0x04 (Structs::CharAnim m_w1) is an Arrays::AnimTable index. It is used
// when it is non-negative and below Arrays::AnimTable::size (compared unsigned), and the AnimTable row word +0x10
// (Structs::AnimTpl m_w4) must then be 1.
bool Character::HasComboAttack() const {
    const std::int32_t animIndex = GetCharAnimTable()->Attack;
    if (animIndex < 0 || static_cast<std::uint32_t>(animIndex) >= Arrays::AnimTable::size) {
        return false;
    }
    const auto* animRows = reinterpret_cast<const Structs::AnimTpl*>(Arrays::AnimTable::members);
    return animRows[animIndex].Type == 1;
}

// 0x3a34f0 _ZNK9Character17GetNumComboAttackEv
// Same table chain as HasComboAttack. The AnimTable row word +0x08 (Structs::AnimTpl m_w2, the element count of the row)
// is returned when the row word +0x10 (m_w4) is 1; otherwise 0.
int Character::GetNumComboAttack() const {
    const std::int32_t animIndex = GetCharAnimTable()->Attack;
    if (animIndex < 0 || static_cast<std::uint32_t>(animIndex) >= Arrays::AnimTable::size) {
        return 0;
    }
    const auto* animRows = reinterpret_cast<const Structs::AnimTpl*>(Arrays::AnimTable::members);
    if (animRows[animIndex].Type != 1) {
        return 0;
    }
    return static_cast<int>(animRows[animIndex].StepsSize);
}

// 0x3a36e4 _ZNK9Character9IsZonableEv
bool Character::IsZonable() const {
    if (IsPlayer() || IsFaerie()) {
        return false;
    }
    return GameObject::MeetCondition();
}

// 0x3a3724 _ZNK9Character10GetOpacityEv
float Character::GetOpacity() const {
    return FloatFromBits(CharProperties::PROPS_GetOpacity());
}

// 0x3a372c _ZNK9Character16GetRotationSpeedEv
// The original returns -1.0f (bits 0xbf800000) when CharStateMachine m_stateFlags (+0x24, Character +0x520) has bit 0x20.
// Otherwise it returns the float bits of PROPS_GetRotationSpeed.
float Character::GetRotationSpeed() const {
    if ((CharStateMachine::m_stateFlags & 0x20u) != 0) {
        return -1.0f;
    }
    return FloatFromBits(CharProperties::PROPS_GetRotationSpeed());
}

// 0x3a374c _ZNK9Character20GetInteractionRadiusEv
float Character::GetInteractionRadius() const {
    return CharAI::AI_GetMeleeRadius();
}

// 0x3a3754 _ZNK9Character19IsAvoidingObstaclesEv
bool Character::IsAvoidingObstacles() const {
    return CharStateMachine::SM_IsMoving(false);
}

// 0x3a3fe4 _ZN9Character23CheckForAllQuestsTrophyEv
// Each quest of SG_GetQuestByID(i, -1) is tested by its first word (Quest m_state). When a quest has m_state <= 12 the
// function returns. When every quest passes (or there are none), trophy "quest_allcomplete" is unlocked through
// TrophyManager::s_instance. The original's loop counts up to SG_GetNumQuests(-1) and tests the quests in order.
void Character::CheckForAllQuestsTrophy() {
    const int numQuests = SG_GetNumQuests(-1);
    for (int i = 0; i < numQuests; ++i) {
        const Quest* quest = SG_GetQuestByID(i, -1);
        if (quest->m_state <= 12) {
            return;
        }
    }
    TrophyManager::s_instance->UnlockTrophy(Arrays::GetMemberIDByString<Arrays::TrophyTable>("quest_allcomplete"));
}

// 0x3a4068 _ZN9Character26RemoveMultiplayerHighlightEv
void Character::RemoveMultiplayerHighlight() {
    if (m_multiplayerHighlightFX != nullptr) {
        Singleton<VisualFXManager>::s_inst.DropAnimatedFX(m_multiplayerHighlightFX);
        m_multiplayerHighlightFX = nullptr;
    }
}

// 0x3a40b0 _ZN9Character13DisableSelfFXEv
void Character::DisableSelfFX() {
    if (m_selfFX != nullptr) {
        Singleton<VisualFXManager>::s_inst.DropAnimatedFX(m_selfFX);
    }
}

// 0x3a40e4 _ZN9Character14DisableStateFXEv
void Character::DisableStateFX() {
    if (m_stateFX != nullptr) {
        Singleton<VisualFXManager>::s_inst.DropAnimatedFX(m_stateFX);
    }
}

// 0x3a41a0 _ZN9Character23AddMultiplayerHighlightEv
// Without a highlight yet, the player's number (PlayerInfo +0x678, 0 to 3) picks the effect "multiplayer_player01_glow" plus that number in
// Arrays::AnimatedEffectTable. The effect is grabbed, placed at the origin offset, hidden, owned by this character and set looping.
void Character::AddMultiplayerHighlight() {
    if (m_multiplayerHighlightFX != nullptr) {
        return;
    }
    const std::int32_t slot = dword_99F76C->GetPlayerByCharacter(this, false)->unk_678;
    if (slot > 3) {
        return;
    }
    const int index = pydata::FindMemberName(Arrays::AnimatedEffectTable::m_memberNames, static_cast<int>(Arrays::AnimatedEffectTable::size),
                                             "multiplayer_player01_glow");
    if (index == -1) {
        return;
    }
    m_multiplayerHighlightFX = VisualFXManager::s_inst.GrabAnimFX(index + slot, nullptr);
    AnimatedFX* fx = m_multiplayerHighlightFX;
    if (fx == nullptr) {
        return;
    }
    std::memcpy(&fx->unk_34, &Vec3f_Origin.X, sizeof(float));
    std::memcpy(&fx->unk_38, &Vec3f_Origin.Y, sizeof(float));
    std::memcpy(&fx->unk_3c, &Vec3f_Origin.Z, sizeof(float));
    fx->SyncIrrData(false);
    fx->SetVisible(false);
    fx->unk_28 = this;
    fx->SyncIrrData(true);
    fx->GetAnimator()->getTimelineCtrl()->setLoop(true);
}

// 0x3a4344 _ZN9Character16UpdateAIPointersEv
void Character::UpdateAIPointers() {
    CharAI::UpdatePointers();
    if (m_objectOfInterest != nullptr && m_objectOfInterest->m_markedForDeletion != 0) {
        m_objectOfInterest = nullptr;
    }
    if (m_killer != nullptr && m_killer->m_markedForDeletion != 0) {
        m_killer = nullptr;
    }
}

// 0x3a4398 _ZN9Character15SetRelativeAABBERK4aabbIfEb
// The six floats of the box become m_relAabb (+0x144); unless update is set they are scaled by the character's size percent (m_props.m_w17, Character +0x1038)
// times 0.01. GameObject::SetRelativeAABB then runs on the character's own m_relAabb.
void Character::SetRelativeAABB(const aabb<float>& box, bool update) {
    float source[6];
    std::memcpy(source, &box, sizeof source);
    for (int i = 0; i < 6; ++i) {
        m_relAabb[i] = source[i];
    }
    if (!update) {
        const float scale = static_cast<float>(m_props.Collision_Scale) * 0.01f;
        for (int i = 0; i < 6; ++i) {
            m_relAabb[i] = scale * source[i];
        }
    }
    GameObject::SetRelativeAABB(reinterpret_cast<const aabb<float>&>(m_relAabb), update);
}
