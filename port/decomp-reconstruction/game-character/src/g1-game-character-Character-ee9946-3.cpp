// Batch g1-game-character-Character-ee9946-3: part 4 of the Character functions (state FX, spot target, interaction
// queries, inventory transmute and requirements, equipment, ranged attack, respawn, update gating, animation stance).
// Declarations come from dh2/Character.hpp.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/AnimatedFX.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/QE_TalkToNPC.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/ctrl_camera.hpp"          // ApplicationGetInstance
#include "dh2/global/net_singletons.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "gameswf/gameswf_value.h"
#include "pydata-accessors/w7_arrays_02.hpp"   // Arrays::DesignSettingsTable
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/structs_records.hpp"

namespace {

// CharProperties::PROPS_GetWalkSpeed (and the other float getters) return the bit pattern of a float. The bits are
// reinterpreted here, not converted.
float FloatFromBits(int bits) {
    float value = 0.0f;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// The original does 32-bit wrapping integer arithmetic on these values. The helpers wrap the same way without signed
// overflow in C++.
std::int32_t WrapMul(std::int32_t a, std::int32_t b) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(a) * static_cast<std::uint32_t>(b));
}

std::int32_t WrapShl(std::int32_t a, unsigned int n) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(a) << n);
}

std::int32_t WrapAdd(std::int32_t a, std::int32_t b) {
    return static_cast<std::int32_t>(static_cast<std::uint32_t>(a) + static_cast<std::uint32_t>(b));
}

// COnline::isOnlineGame_ (+0x05).
bool OnlineGameFlag() {
    return GetOnlineGameFlag();
}

// The id of a trophy by name (the first match in Arrays::TrophyTable's names, -1 when absent).
int TrophyId(const char* name) {
    return pydata::FindMemberName(Arrays::TrophyTable::m_memberNames, static_cast<int>(Arrays::TrophyTable::size), name);
}

// Copies a position into the offset words of an AnimatedFX (+0x34, +0x38, +0x3c hold the floats' bit patterns).
void SetFxOffset(AnimatedFX* fx, const Point3D<float>& position) {
    std::memcpy(&fx->unk_34, &position.X, sizeof(float));
    std::memcpy(&fx->unk_38, &position.Y, sizeof(float));
    std::memcpy(&fx->unk_3c, &position.Z, sizeof(float));
}

// The original ends several FX set-ups with two virtual calls on the FX's animator: getTimelineCtrl, then setLoop(true) on it.
void StartFxLooping(AnimatedFX* fx) {
    glitch::collada::ISceneNodeAnimator* animator = fx->GetAnimator();
    if (animator != nullptr && animator->getTimelineCtrl() != nullptr) {
        fx->GetAnimator()->getTimelineCtrl()->setLoop(true);
    }
}

}  // namespace

// 0x3a4470 _ZN9Character13UpdateStateFXEv
// A dead character keeps its state. The state category (m_stateFXId, +0x1490: 0 none, 1 slowed, 3 scared, 4 stunned) is chosen in that priority: stunned with
// state flag 0x800 gives 4 (FX DesignSettings +0x80), scared with flag 0x400 gives 3 (FX +0x74), a walk speed below 1.0 gives 1 (FX +0x7c); a category already above
// the candidate keeps none, and a candidate without an FX (-1) is category 0. When the category changes the old state FX is dropped and, for an FX, the new one is
// grabbed, owned by this character, placed at the origin offset, shown and set looping.
void Character::UpdateStateFX() {
    const int previous = m_stateFXId;
    if (IsDead()) {
        return;
    }
    const auto* design = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);
    int category = 0;
    int fxId = -1;
    if (previous > 4) {
        category = 0;
        fxId = -1;
    } else if (CharStateMachine::SM_IsStunned(true) && (CharStateMachine::m_stateFlags & 0x800u) != 0) {
        category = 4;
        fxId = design->StateStunned;
    } else if (previous > 3) {
        category = 0;
        fxId = -1;
    } else if (CharStateMachine::SM_IsScared(true) && (CharStateMachine::m_stateFlags & 0x400u) != 0) {
        category = 3;
        fxId = design->StateFeared;
    } else if (previous > 1 || !(FloatFromBits(CharProperties::PROPS_GetWalkSpeed()) < 1.0f)) {
        category = 0;
        fxId = -1;
    } else {
        category = 1;
        fxId = design->StateSlowed;
    }
    if (fxId == -1) {
        category = 0;
    }
    if (m_stateFXId != category) {
        m_stateFXId = category;
        if (fxId == -1) {
            VisualFXManager::s_inst.DropAnimatedFX(m_stateFX);
        } else {
            if (m_stateFX != nullptr) {
                VisualFXManager::s_inst.DropAnimatedFX(m_stateFX);
            }
            m_stateFX = VisualFXManager::s_inst.GrabAnimFX(fxId, nullptr);
            if (m_stateFX != nullptr) {
                m_stateFX->unk_28 = this;
                m_stateFX->SyncIrrData(true);
                SetFxOffset(m_stateFX, Vec3f_Origin);
                m_stateFX->SyncIrrData(false);
                m_stateFX->SetVisible(true);
                StartFxLooping(m_stateFX);
            }
        }
    }
}

// 0x3a469c _ZN9Character16UpdateSpotTargetEv
// The spot FX (m_spotTargetFX, +0x14cc) marks the queued click position while casting. With an FX and no pending click it is dropped. Without an FX a pending click
// grabs the FX m_spotTargetFXId (int16). With an FX, the queued position (+0x14b0) is validated against the path-finding world: a failing position falls back to the
// last valid one (+0x14bc); a passing one becomes the valid one, moves the FX there (its offset words) and syncs it.
void Character::UpdateSpotTarget() {
    if (m_spotTargetFX != nullptr) {
        if (!m_spotTargetPending) {
            VisualFXManager::s_inst.DropAnimatedFX(m_spotTargetFX);
            return;
        }
    } else {
        if (!m_spotTargetPending) {
            return;
        }
        m_spotTargetFX = VisualFXManager::s_inst.GrabAnimFX(m_spotTargetFXId, nullptr);
        if (m_spotTargetFX == nullptr) {
            return;
        }
    }
    if (!PFWorld::s_inst.ValidatePosition(m_spotTargetPos, nullptr)) {
        m_spotTargetPos = m_spotTargetValidPos;
        return;
    }
    m_spotTargetValidPos = m_spotTargetPos;
    SetFxOffset(m_spotTargetFX, m_spotTargetPos);
    m_spotTargetFX->SyncIrrData(false);
}

// 0x3a47e8 _ZNK9Character18GetInteractionTypeEP10GameObject
int Character::GetInteractionType(GameObject* other) const {
    if (other != nullptr && CharAI::AI_IsEnemy(other) && !other->IsPlayer()) {
        return 8;
    }
    if (IsSummoned() || IsDead()) {
        return -1;
    }
    if (IsMonster()) {
        return 8;
    }
    return 3;
}

// 0x3a4870 _ZNK9Character13IsInteractiveEP10GameObject
bool Character::IsInteractive(GameObject* other) const {
    if (IsDead() && other != nullptr && CharAI::AI_IsFriend(other) && !IsMonster()) {
        return true;
    }
    if (m_markedForDeletion != 0 || m_enabled == 0 || IsFaerie() || IsSummoned() || IsDead() ||
        (CharStateMachine::m_stateFlags & 0x2000u) == 0) {
        return false;
    }
    return CharAI::unk_4d;
}

// 0x3a4930 _ZN9Character24INV_DoesMeetRequirementsEP12ItemInstance
// True for a remotely updated character of an online game, and for a null item. Otherwise the five requirement words of the item record (Structs::Item
// m_w29..m_w33, +0x74..+0x84) are compared with five words of this character's final sheet, each shifted right by 8: m_props.m_w20 (+0x1044) and
// m_props.m_w150..m_w153 (+0x124c..+0x1258).
bool Character::INV_DoesMeetRequirements(ItemInstance* item) {
    if ((OnlineGameFlag() && IsRemotelyUpdated()) || item == nullptr) {
        return true;
    }
    const Structs::Item* record = item->GetItem();
    return record->LevelRequirement <= (m_props.Level >> 8) && record->StrengthRequirement <= (m_props.Stat_Strength >> 8) &&
           record->DexterityRequirement <= (m_props.Stat_Dexterity >> 8) && record->EnduranceRequirement <= (m_props.Stat_Endurance >> 8) &&
           record->EnergyRequirement <= (m_props.Stat_Energy >> 8);
}

// 0x3a49f0 _ZNK9Character8IsPlayerEv
bool Character::IsPlayer() const {
    const int charType = GetCharType();
    if (charType != 0) {
        return charType == 1;
    }
    // The original reads the char* at +0x44, which is the data pointer of the std::string m_name (+0x30) in the STLport layout, and tests
    // strstr(name, "PlayerCharacter") == name.
    const char* name = m_name.c_str();
    return std::strstr(name, "PlayerCharacter") == name;
}

// 0x3a4a3c _ZN9Character17INV_TransmuteItemEP12ItemInstanceb
int Character::INV_TransmuteItem(ItemInstance* item, bool a) {
    if (item == nullptr) {
        return 0;
    }
    // Word 197 is read from the final sheet. PROPS_Get(id, false) reads m_props, which is the word _GetProperty(m_props,
    // id) returns in the original.
    const std::int32_t property = CharProperties::PROPS_Get(197, false);
    const std::int32_t multiplier =
        ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "TransmuteMultiplier");
    // ItemInstance +0x54 is m_value.
    const std::int32_t scaled = WrapMul(WrapShl(item->m_value, 8), WrapAdd(property, 256)) >> 8;
    std::int32_t gold = WrapMul(multiplier, scaled) >> 16;
    if (gold < 1) {
        gold = 1;
    }
    if (!a) {
        // ItemInstance +0x50 is m_qty.
        if (item->m_qty <= 1) {
            ItemInventory::RemoveItem(static_cast<unsigned int>(ItemInventory::GetItemIndex(item)));
        } else {
            item->AddQty(-1);
        }
        ItemInventory::AddGold(gold);
        CharProperties::PROPS_AddInt(213, 1);
        // The local player unlocks the "gear_transmute" trophy at 300 transmuted items.
        if (dword_99F76C->IsLocalPlayer(this)) {
            TrophyManager* trophies = TrophyManager::s_instance;
            if (CharProperties::PROPS_GetInt(213, false) >= 300 && IsPlayer()) {
                trophies->UnlockTrophy(TrophyId("gear_transmute"));
            }
        }
    }
    return gold;
}

// 0x3a4bac _ZNK9Character15GetRespawnDelayEv
int Character::GetRespawnDelay() const {
    // PROPS_GetInt(11, false) is the final-sheet word 11 shifted right by 8, as _GetProperty(m_props, 11) >> 8 is.
    if (m_isSpawned != 0) {
        return 0;
    }
    return 1000 * CharProperties::PROPS_GetInt(11, false);
}

// 0x3a4bec _ZN9Character17INV_TransmuteItemEjb
int Character::INV_TransmuteItem(unsigned int item, bool a) {
    ItemInstance* instance = ItemInventory::GetItem(item);
    return INV_TransmuteItem(instance, a);
}

// 0x3a4c14 _ZN9Character17EquipAllSlotsAutoEv
int Character::EquipAllSlotsAuto() {
    const int numSlots = ItemInventory::GetNumEquipmentSlots();
    // The original keeps its r0 in one register: the last call result. Its value is the result of the slot 0 step
    // (the last one), or the slot count when there are no slots.
    int result = numSlots;
    if (numSlots > 0) {
        for (int slot = 0; slot < numSlots; ++slot) {
            result = UnEquipItemFromSlot(static_cast<unsigned int>(slot));
        }
        for (int slot = numSlots - 1; slot >= 0; --slot) {
            EquipSlotAuto(static_cast<unsigned int>(slot));
        }
        for (int slot = numSlots - 1; slot >= 0; --slot) {
            const bool taken = ItemInventory::IsEquipmentSlotTaken(static_cast<unsigned int>(slot));
            result = static_cast<int>(taken);
            // The original leaves r0 as the object pointer for slots 1 and 2 when they are free. That value is always
            // overwritten by the slot 0 step, so the integer stays here.
            if (!taken && slot != 1 && slot != 2) {
                result = EquipSlotAuto(static_cast<unsigned int>(slot));
            }
        }
    }
    return result;
}

// 0x3a4cc0 _ZN9Character15AddItemInstanceEP12ItemInstancebb
int Character::AddItemInstance(ItemInstance* item, bool a, bool b) {
    return ItemInventory::AddItemInstance(item, a, b);
}

// 0x3a4cd0 _ZNK9Character14CanRangeAttackERiS0_S0_
// The ranged override is the final-sheet word m_props.m_w33 (+0x1078, -1 = none). Without an override the ItemInventory
// query runs. With one, a and b take m_props.m_w31 and m_w32 (+0x1070, +0x1074) shifted right by 8, c takes m_w33, and the
// result is true.
bool Character::CanRangeAttack(int& a, int& b, int& c) const {
    if (m_props.RangeProjectileID == -1) {
        return ItemInventory::CanRangeAttack(a, b, c);
    }
    a = m_props.RangeMinDistance >> 8;
    b = m_props.RangeMaxDistance >> 8;
    c = m_props.RangeProjectileID;
    return true;
}

// 0x3a4d3c _ZNK9Character14CanRangeAttackEv
bool Character::CanRangeAttack() const {
    if (m_props.RangeProjectileID == -1) {
        return ItemInventory::CanRangeAttack();
    }
    return true;
}

// 0x3a4d5c _ZN9Character10RaiseEventEiPv
// Event 54 (a buff timer ran out) goes to CharProperties::BuffExpired; every other event goes to CharAI::RaiseAIEvent. The original returns what those
// calls return; BuffExpired ends with a tail call to PROPS_DelBuff, so its result is the stale register of a void call (0 here).
int Character::RaiseEvent(int eventId, void* data) {
    if (eventId == 54) {
        CharProperties::BuffExpired(static_cast<CharTimers::Timer*>(data));
        return 0;
    }
    return CharAI::RaiseAIEvent(eventId, data);
}

// 0x3a4d78 _ZN9Character8InteractEP10GameObject
// A character that is not already interacting first raises the TalkToNPC quest event on the current level (a missing level asserts, Character.cpp:1851): the PyData
// "v2QuestObjectiveType"/"TalkToNPC" id, the interacting object, this character's unk_64 as the target id, value -1 and its character row id (m_charPropsId) as the
// match id. The interact state is then entered. Unless unk_2fa is set, event 5 is raised on this character and then: a merchant with loot, interacted with by a
// Character, fills its inventory from the Arrays::MerchantTable row when it is empty and tells the HUD to open the merchant menu (the interacting player's number) and
// to show the merchant's name and id; a cleaner tells the HUD to open the cleaner menu for the interacting player.
void Character::Interact(GameObject* other) {
    if (!CharStateMachine::SM_IsInteracting()) {
        Level* level = ApplicationGetInstance().GetCurrentLevel();
        if (level == nullptr) {
            if (gAssertLevel == 2) {
                std::abort();
            } else if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "level",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character.cpp", 1851);
            }
        }
        QE_TalkToNPC event;
        event.eventId_ = static_cast<std::uint32_t>(ApplicationGetPyDataConstants()->getConstant("v2QuestObjectiveType", "TalkToNPC"));
        event.m_character = other;
        event.m_targetId = unk_64;
        event.m_flag0 = 0;
        event.m_flag1 = 0;
        event.m_value = -1;
        event.m_matchId = m_charPropsId;
        level->RaiseAsync(event);
    }
    CharStateMachine::SM_SetInteractState(3, true, other, false);
    if (unk_2fa != 0) {
        return;
    }
    RaiseEvent(5, other);
    if (IsMerchant()) {
        if (HasLoot() && other != nullptr) {
            ObjectHandle handle = other->GetHandle();
            Character* player = handle;
            if (player != nullptr) {
                const auto* row = reinterpret_cast<const Structs::Merchant*>(Arrays::MerchantTable::members) + GetLoot();
                if (ItemInventory::GetNumItems() == 0) {
                    const auto* entries = static_cast<const Structs::MerchandiseListEntry*>(row->MerchandiseList);
                    for (std::uint32_t i = 0; i < row->MerchandiseListSize; ++i) {
                        ItemInventory::AddLoot(entries[i].Merchandise, 0, 0, -1, false);
                    }
                }
                gameswf::as_value openArgument;
                openArgument.set_double(static_cast<double>(dword_99F76C->GetPlayerByCharacter(player, false)->unk_678));
                MenuManager::GetInstance()->GetHUDRoot()->InvokeASCallback("_root", "openMerchantMenu", &openArgument, 1);
                gameswf::as_value infoArguments[2];
                infoArguments[0].set_string(m_name.c_str());
                infoArguments[1].set_double(static_cast<double>(unk_64));
                MenuManager::GetInstance()->m_multiMenuManager->m_menuFX[1]->InvokeASCallback("_root", "AdditionnalInfosForMerchant", infoArguments, 2);
            }
        }
    } else if (IsCleaner()) {
        if (other != nullptr) {
            ObjectHandle handle = other->GetHandle();
            Character* player = handle;
            if (player != nullptr) {
                gameswf::as_value argument;
                argument.set_double(static_cast<double>(dword_99F76C->GetPlayerByCharacter(player, false)->unk_678));
                MenuManager::GetInstance()->GetHUDRoot()->InvokeASCallback("_root", "openCleanerMenu", &argument, 1);
            }
        }
    }
}

// 0x3a5184 _ZN9Character16GetImmunityTimerEi
// The immunity timers are a table of TimerUtil pointers indexed by damage type, starting at +0x14e0 (m_timerUtil is its first entry). The original reports the
// assertion "damageType > 0 && damageType < Constants::DamageType::count" unconditionally (the compiler folded the condition: the damage type count is 1, so the
// test can never hold). The entry is created on first use. Only damage type 0 has a table entry; any other index would run into the members that follow the table, so
// the port uses the first entry for it.
TimerUtil* Character::GetImmunityTimer(int damageType) {
    (void)damageType;
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "damageType > 0 && damageType < Constants::DamageType::count",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character.cpp", 1430);
    }
    if (m_timerUtil == nullptr) {
        // operator new(8, hint) in the original (Clean releases it with CustomFree).
        m_timerUtil = new (CustomAlloc(static_cast<unsigned int>(sizeof(TimerUtil)))) TimerUtil();
    }
    return m_timerUtil;
}

// 0x3a5248 _ZNK9Character10CanRespawnEv
bool Character::CanRespawn() const {
    if (m_isSpawned != 0 || PROPS_Get(11, false) <= 0) {
        return false;
    }
    if (CharAI::m_group != nullptr) {
        return CharAI::m_group->CanRespawn(CharAI::m_character);
    }
    return true;
}

// 0x3a52a4 _ZN9Character9CanUpdateEv
// The root node of the visual object (VisualObject m_node, +0x08) carries the cull-before-update flag (node +0x200); it is cleared first and set again at the end when
// the character is visible. Unless the game is online and this character remotely updated: a character with a visual that is not the master of the local player (CharAI
// m_master against the local player's PlayerInfo +0x660), whose node has its automatic culling mode (+0x118) set or whose unk_2fc is set, and that fails the cull test
// (ObjectBase::TestCullingBeforeUpdate on the world box +0x12c) and is not a dummy, does not update (0). A dead character that is hidden and cannot respawn does not
// update either.
int Character::CanUpdate() {
    RootSceneNode* root = (m_visualObject != nullptr) ? m_visualObject->m_node : nullptr;
    if (root != nullptr) {
        root->m_cullBeforeUpdate = false;
    }
    if (!OnlineGameFlag() || !IsRemotelyUpdated()) {
        if (m_visualObject != nullptr) {
            Character* localCharacter = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
            if (CharAI::m_master != localCharacter &&
                (m_visualObject->m_node->automaticCulling != 0 || unk_2fc != 0) &&
                !TestCullingBeforeUpdate(reinterpret_cast<const aabb<float>&>(m_absAabb)) && m_isDummy == 0) {
                return 0;
            }
        }
        if (IsDead() && !m_visible && !CanRespawn()) {
            return 0;
        }
    }
    if (root == nullptr || !m_visible) {
        return 1;
    }
    root->m_cullBeforeUpdate = true;
    return 1;
}

// 0x3a53e0 _ZNK9Character13GetAnimStanceEv
int Character::GetAnimStance() const {
    // Stance ids: 3 staff, 4 bow, 2 dual wield, 1 two-hander, 5 no main-hand weapon, 0 none (null in the original).
    int stance = 0;
    if (IsPlayer()) {
        const ItemInventory& inventory = *this;
        if (inventory.HasStaff()) {
            stance = 3;
        } else if (inventory.HasBow()) {
            stance = 4;
        } else if (inventory.IsDualWielding()) {
            stance = 2;
        } else if (inventory.HasTwoHander(false)) {
            stance = 1;
        } else if (!inventory.HasMainHandWeapon()) {
            stance = 5;
        } else {
            stance = 0;
        }
    }
    const int count = ApplicationGetPyDataConstants()->getConstant("AnimStances", "COUNT_IPHONE");
    if (stance >= count) {
        return 0;
    }
    return stance;
}

// 0x3a54b4 _ZNK9Character22GetCharUniqueAnimSetIdEv
int Character::GetCharUniqueAnimSetId() const {
    const int animTableId = GetCharAnimTableId();
    return GetCharSkillListId() | static_cast<int>(static_cast<std::uint32_t>(animTableId) << 8);
}
