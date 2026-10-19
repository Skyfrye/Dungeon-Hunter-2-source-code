// Batch g1-game-character-Character-ee9946-9: twenty Character functions of the setup and combat-roll part of the class.
// The combat rolls are F_SpellAttack, F_SkillAttack and F_MeleeAttack. The setup chain is InitAll, InitPost, InitFinal,
// InitSpawned, InitCam, InitCoopCam, InitPhysicalObject, InitLightSetAndMaterial and RegisterCharacterFXTable. The
// equipment and skill setup is _InitEquipment, _InitHpMp, _InitSkillsSlots and _InitSounds. The rest are
// InitializePlayerSavegame, UpdateInventoryLocalization, SafeGetCharPropsId and SafeGetCharPropsTemplateId.
// Declarations come from dh2/Character.hpp, which this batch does not change (every member and method used here is
// already declared there).
//

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>

#include "dh2/Character.hpp"
#include "dh2/AnchorBase.hpp"
#include "dh2/AnchorForward.hpp"
#include "dh2/AnchorGroup.hpp"
#include "dh2/AnimatedFX.hpp"
#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/POCharacter.hpp"
#include "dh2/PODecor.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/POFaerie.hpp"
#include "dh2/POFollower.hpp"
#include "dh2/POMonster.hpp"
#include "dh2/POPlayer.hpp"
#include "dh2/POVillager.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/net_singletons.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/Random.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// gAssertLevel is defined by core-platform (memory.cpp) and declared in core-platform/memory.hpp. That header is not
// included here: it pulls core-platform's glitch_core stand-in, which clashes with the glitch-shared value types that
// dh2/AnchorGroup.hpp brings in. The declaration below is the same one.
extern int gAssertLevel;

namespace {

// Original file names of the ASSERT calls (copied verbatim from the listing's string literals).
constexpr const char* kFormulasFile =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp";
constexpr const char* kInitializationFile =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Initialization.cpp";

// ASSERT(expr) at file:line. gAssertLevel 1 prints the message to stderr (the third _iob entry of the original).
// gAssertLevel 2 stores 0 to address 0 in the original; that store is not reproduced (PARTIAL in each caller).
void ReportAssertLevel1(const char* expr, const char* file, int line) {
    if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// ASSERT(expr) on its failing branch, as the attack code uses it: gAssertLevel 2 stops the process (the original stores 0
// to address 0 there, a fatal fault; abort is the same outcome here), 1 prints as ReportAssertLevel1, 0 is silent.
void ReportAssertFailure(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    }
    ReportAssertLevel1(expr, file, line);
}

// abs32 of the original. The negation wraps for the most negative value, as the two's complement negation does.
int Abs32(int value) {
    return value < 0 ? static_cast<int>(0u - static_cast<unsigned int>(value)) : value;
}

// The isTracingChar_* debug switch read. Every caller in this batch drops the result, as the original does.
void TouchDebugSwitch(const char* name) {
    DebugSwitches::GetInstance()->load();
    (void)DebugSwitches::GetInstance()->GetSwitch(name);
}

}  // namespace

// 0x3b3004 _ZN9Character13F_SpellAttackERNS_12AttackResultEPS_S2_ii
// Character::F_SpellAttack(Character::AttackResult&, Character*, Character*, int, int)
// The two null checks (asserts 633 and 634, where gAssertLevel 2 stops the process as the original's store to address 0
// does), the isTracingChar_Attack switch read and the roll with flags b | 0x1005554A, weapon -1, element a, d = 0.
void Character::F_SpellAttack(AttackResult& result, Character* attacker, Character* target, int a, int b) {
    if (!attacker) {
        ReportAssertFailure("attacker", kFormulasFile, 633);
    }
    if (!target) {
        ReportAssertFailure("defender", kFormulasFile, 634);
    }
    TouchDebugSwitch("isTracingChar_Attack");
    _F_CalculateResult(result, attacker, target, b | 0x1005554A, -1, a, 0);
}
// 0x3b31a4 _ZN9Character13F_SkillAttackERNS_12AttackResultEPS_S2_ii
// Character::F_SkillAttack(Character::AttackResult&, Character*, Character*, int, int)
// The two null checks (asserts 613 and 614, as above), the switch read, the weapon slot (2 when flag 0x4000000 is set,
// else 1), the weapon word (Structs::Item m_w37, +0x94, or -1 with nothing equipped) and the roll with flags a | 0x8000000,
// element b, d = 0.
void Character::F_SkillAttack(AttackResult& result, Character* attacker, Character* target, int a, int b) {
    if (!attacker) {
        ReportAssertFailure("attacker", kFormulasFile, 613);
    }
    if (!target) {
        ReportAssertFailure("defender", kFormulasFile, 614);
    }
    const int flags = a | 0x8000000;
    TouchDebugSwitch("isTracingChar_Attack");
    const unsigned int slot = (flags & 0x4000000) != 0 ? 2u : 1u;
    int weapon = -1;
    if (ItemInstance* equipped = attacker->GetEquippedItem(slot)) {
        weapon = equipped->GetItem()->Param3;
    }
    _F_CalculateResult(result, attacker, target, flags, weapon, b, 0);
}
// 0x3b3368 _ZN9Character15F_MeleeAttackERNS_12AttackResultEPS_S2_bb
// Character::F_MeleeAttack(Character::AttackResult&, Character*, Character*, bool, bool)
// The two null checks (asserts 584 and 585), the isTracingChar_Attack switch read, and the weapon of the attacker (slot 2 for the off hand, a, else slot 1; its
// Structs::Item m_w37, or -1 with nothing equipped). The request word is 0x5554A when b is set and 0x22AAB5 when it is not (the listing builds the second as the
// address of a string literal; the value is the immediate it loads). With b set the attacker's class "SnS_CleanUp" is applied to its properties (a name search in
// Arrays::ClassTable, PROPS_ApplyClass(index, false)). The off hand adds flag 0x4000000. The roll runs with element -1, d = 0.
void Character::F_MeleeAttack(AttackResult& result, Character* attacker, Character* target, bool a, bool b) {
    if (!attacker) {
        ReportAssertFailure("attacker", kFormulasFile, 584);
    }
    if (!target) {
        ReportAssertFailure("defender", kFormulasFile, 585);
    }
    TouchDebugSwitch("isTracingChar_Attack");
    const unsigned int slot = a ? 2u : 1u;
    int flags = b ? 0x0005554A : 0x0022AAB5;
    int weapon = -1;
    if (ItemInstance* equipped = attacker->GetEquippedItem(slot)) {
        weapon = equipped->GetItem()->Param3;
    }
    const int cleanUp = pydata::FindMemberName(Arrays::ClassTable::m_memberNames, static_cast<int>(Arrays::ClassTable::size), "SnS_CleanUp");
    if (cleanUp != -1 && b) {
        attacker->CharProperties::PROPS_ApplyClass(cleanUp, false);
    }
    if (a) {
        flags |= 0x4000000;
    }
    _F_CalculateResult(result, attacker, target, flags, weapon, -1, 0);
}

// 0x3b35f0 _ZN9Character7InitAllEv
// Character::InitAll(void)
// Reproduced: InitPost (vtable slot +0x1c) then InitFinal (vtable slot +0x58), both as virtual calls.
void Character::InitAll() {
    InitPost();
    InitFinal();
}

// 0x3b36b0 _ZN9Character22InitializePlayerSavegameEv
// Character::InitializePlayerSavegame(void)
// Reproduced: the PlayerSavegame is created into m_savegame (+0x14e8), then SG_SetPlayer(this). The original allocates 408
// bytes with operator new(size, 0) and calls the constructor; the host object is sized by its own type.
void Character::InitializePlayerSavegame() {
    m_savegame = new PlayerSavegame();
    SG_SetPlayer(this);
}

// 0x3b36e4 _ZN9Character26UpdateInventoryLocalizationEv
// Character::UpdateInventoryLocalization(void)
// Reproduced: ItemInventory::UpdateLocalizationForItems on the ItemInventory base (+0x37c).
void Character::UpdateInventoryLocalization() {
    ItemInventory::UpdateLocalizationForItems();
}

// 0x3b36ec _ZN9Character26SafeGetCharPropsTemplateIdEv
// Character::SafeGetCharPropsTemplateId(void)
// Without a template name (m_charTemplate empty) the cached m_charPropsTemplateId (+0x13ca) is returned. Otherwise the name is searched in
// Arrays::Charater_Templates (the first match, or -1), cached and returned.
int Character::SafeGetCharPropsTemplateId() {
    if (m_charTemplate.empty()) {
        return m_charPropsTemplateId;
    }
    const int id = pydata::FindMemberName(Arrays::Charater_Templates::m_memberNames, static_cast<int>(Arrays::Charater_Templates::size),
                                          m_charTemplate.c_str());
    m_charPropsTemplateId = static_cast<std::int16_t>(id);
    return static_cast<std::int16_t>(id);
}

// 0x3b379c _ZN9Character11InitSpawnedEiRK7Point3DIfE
// Character::InitSpawned(int, Point3D<float> const&)
// Reproduced from the listing's call arguments (the Hex-Rays prototype of GameObject::SetPosition is one argument; the
// listing passes m_initialPosition and true). Sets the character property id (+0x13c8), m_isSpawned, m_inZone, the
// initial position, then runs InitPost, InitFinal, SetVisible(true) and CharStateMachine::SM_SetSpawnState(false, false).
void Character::InitSpawned(int charPropsId, const Point3D<float>& pos) {
    m_charPropsId = static_cast<std::int16_t>(charPropsId);
    m_isSpawned = 1;
    m_inZone = 1;
    SetInitialPosition(pos);
    SetPosition(m_initialPosition, true);
    InitPost();
    InitFinal();
    SetVisible(true);
    CharStateMachine::SM_SetSpawnState(false, false);
}

// 0x3b3928 _ZN9Character11InitCoopCamEv
// Character::InitCoopCam(void)
// Reproduced: a new AnchorGroup on this character (AnchorType 1, the value the listing passes) becomes the camera anchor.
// The original allocates 0x1c bytes with operator new(size, 0) before the constructor call.
void Character::InitCoopCam() {
    AnchorGroup* anchor = new AnchorGroup(this, static_cast<AnchorBase::AnchorType>(1));
    SetCameraAnchorObject(anchor);
}

// 0x3b395c _ZN9Character14_InitEquipmentEv
// Character::_InitEquipment(void)
// Offline, or for a player record whose flag byte (PlayerInfo +0x66c) is 1: a character that already has items, or gold, only refreshes its skins (INV_UpdateSkin).
// An empty one gets the loot of its starting loot table (property 9 of the final sheet) and equips every item that can be equipped, in order (EquipItemAuto).
void Character::_InitEquipment() {
    if (GetOnlineGameFlag() && dword_99F76C->GetPlayerByCharacter(this, false)->unk_66c != 1) {
        return;
    }
    if (ItemInventory::GetNumItems() != 0 || ItemInventory::m_gold != 0) {
        INV_UpdateSkin();
        return;
    }
    ItemInventory::AddLoot(CharProperties::_GetProperty(CharProperties::m_props, 9), 0, 0, -1, false);
    const unsigned int count = static_cast<unsigned int>(ItemInventory::GetNumItems());
    for (unsigned int i = 0; i < count; ++i) {
        if (ItemInventory::IsItemEquippable(i)) {
            EquipItemAuto(i);
        }
    }
}

// 0x3b3a70 _ZN9Character10_InitHpMpEv
// Character::_InitHpMp(void)
// Reproduced: RegenHP(-1), then RegenMP(-1).
void Character::_InitHpMp() {
    RegenHP(-1);
    RegenMP(-1);
}

// 0x3b3a90 _ZN9Character16_InitSkillsSlotsEv
// Character::_InitSkillsSlots(void)
// Reproduced: when SG_HasSkillSlots is false, clear slot 0 and swap the equipment set, clear slot 0 again and swap back,
// then add skill 0 (IncSkill(0, false)) when its level is 0.
void Character::_InitSkillsSlots() {
    if (SG_HasSkillSlots()) {
        return;
    }
    SG_SetSkillInSlot(0, 0);
    ItemInventory::SwapEquipmentSet();
    SG_SetSkillInSlot(0, 0);
    ItemInventory::SwapEquipmentSet();
    if (SG_GetSkillLevel(0) == 0) {
        IncSkill(0, false);
    }
}

// 0x3b3b00 _ZN9Character11_InitSoundsEv
// Character::_InitSounds(void)
// With a sound manager, the sounds of the character's Structs::CharSounds row are loaded in the order injured (m_w3/m_w4), death (m_w1/m_w2), hit (m_w5/m_w6) and
// m_w7/m_w8 (VoxSoundManager::LoadSound for each id). The original returns the manager or the register LoadSound leaves; the header is void.
void Character::_InitSounds() {
    const Structs::CharSounds* sounds = GetCharSounds();
    if (VoxSoundManager::s_instance == nullptr) {
        return;
    }
    auto loadAll = [](std::uint32_t count, const void* ids) {
        for (std::uint32_t i = 0; i < count; ++i) {
            VoxSoundManager::s_instance->LoadSound(static_cast<const std::int32_t*>(ids)[i]);
        }
    };
    loadAll(sounds->HurtSize, sounds->Hurt);
    loadAll(sounds->DieSize, sounds->Die);
    loadAll(sounds->ImpactVsFleshSize, sounds->ImpactVsFlesh);
    loadAll(sounds->ImpactVsMetalSize, sounds->ImpactVsMetal);
}

// 0x3b3d38 _ZN9Character17SafeGetCharPropsIdEv
// Character::SafeGetCharPropsId(void)
// A resolved id (+0x13c8, not -1) is returned. A player loads its savegame class (SG_Load(1), SG_GetPlayerClass); a class of -1 becomes the row "KnightPlayerBase" of
// Arrays::CharacterTable (-1 if absent) and is stored back with SG_SetPlayerClass. A character without a template name looks m_charPropsName up in
// Arrays::CharacterTable (an empty name keeps the id). A character with a template draws a random entry of the template's Structs::CharInfoName list (the ordinary random
// stream, LCG 59051 / 177149 mod 0xdaf26b, debug counter [0]) and takes its id; a template id below 0 or an empty list keeps the id. The assert at
// Character_Initialization.cpp:756 checks the draw is inside the list.
int Character::SafeGetCharPropsId() {
    if (m_charPropsId != -1) {
        return m_charPropsId;
    }
    if (IsPlayer()) {
        SG_Load(1);
        int playerClass = SG_GetPlayerClass();
        m_charPropsId = static_cast<std::int16_t>(playerClass);
        if (playerClass == -1) {
            playerClass = pydata::FindMemberName(Arrays::CharacterTable::m_memberNames, static_cast<int>(Arrays::CharacterTable::size), "KnightPlayerBase");
            m_charPropsId = static_cast<std::int16_t>(playerClass);
        }
        SG_SetPlayerClass(playerClass);
        return m_charPropsId;
    }
    if (m_charTemplate.empty()) {
        if (m_charPropsName.empty()) {
            return m_charPropsId;
        }
        const int id = pydata::FindMemberName(Arrays::CharacterTable::m_memberNames, static_cast<int>(Arrays::CharacterTable::size),
                                              m_charPropsName.c_str());
        m_charPropsId = static_cast<std::int16_t>(id);
        return static_cast<std::int16_t>(id);
    }
    const int templateId = SafeGetCharPropsTemplateId();
    if (templateId < 0) {
        return m_charPropsId;
    }
    const auto* row = reinterpret_cast<const Structs::CharTemplate*>(Arrays::Charater_Templates::members) + templateId;
    const std::uint32_t count = row->CharInfoSize;
    if (count == 0) {
        return m_charPropsId;
    }
    Random::s_seed = (59051u * Random::s_seed + 177149u) % 0xDAF26Bu;
    const int index = Abs32(static_cast<int>(Random::s_seed % count));
    ++Random::s_debugRandomCounters[0];
    if (count <= static_cast<std::uint32_t>(index)) {
        ReportAssertFailure("random >= 0 && random < (int)charTemplate.CharInfoSize", kInitializationFile, 756);
    }
    const auto* infos = reinterpret_cast<const Structs::CharInfoName*>(row->CharInfo);
    m_charPropsId = static_cast<std::int16_t>(infos[index].Name);
    return m_charPropsId;
}

// 0x3b4088 _ZN9Character18InitPhysicalObjectEv
// Character::InitPhysicalObject(void)
// The leaves run in the original's order. Each builds its physics body on the physics world (Application +0x44, the original's dword_99F770) and hands it to
// GameObject::SetPhysicalObject with pin set: an invisible man a POFaerie (group 0, category 256), a static character a PODecor, an NPC a POVillager (-4, 1024, 0xD1F), a
// player a POPlayer (-1, 4, 0xD7F, bullet), a follower or summoned character a POFollower (-2, 8, 0xD3B), a faerie a POFaerie, a monster a POMonster (2, 16, 0xD3F). Anything
// else gets no physics object (SetPhysicalObject(nullptr, false)).
void Character::InitPhysicalObject() {
    PhysicalWorld* world = Singleton<Application>::s_inst.m_physicalWorld;
    if (IsInvisibleMan()) {
        SetPhysicalObject(new POFaerie(world, this, 0, 256, 0, false, false), true);
        return;
    }
    if (m_static) {
        SetPhysicalObject(new PODecor(world, this, true), true);
        return;
    }
    if (IsNPC()) {
        SetPhysicalObject(new POVillager(world, this, -4, 1024, 0xD1F, false, false), true);
        return;
    }
    if (IsPlayer()) {
        SetPhysicalObject(new POPlayer(world, this, -1, 4, 0xD7F, true, false), true);
        return;
    }
    if (IsFollower() || IsSummoned()) {
        SetPhysicalObject(new POFollower(world, this, -2, 8, 0xD3B, false, false), true);
        return;
    }
    if (IsFaerie()) {
        SetPhysicalObject(new POFaerie(world, this, 0, 256, 0, false, false), true);
        return;
    }
    if (!IsMonster()) {
        SetPhysicalObject(nullptr, false);
        return;
    }
    SetPhysicalObject(new POMonster(world, this, 2, 16, 0xD3F, false, false), true);
}

// 0x3b4738 _ZN9Character23RegisterCharacterFXTableEv
// Character::RegisterCharacterFXTable(void)
// The footprint, blood and blood death effect ids are read, the isTracingChar_Init switch is read, and each id that is not
// negative is registered with VisualFXManager::RegisterFXSetToLoad on Singleton<VisualFXManager>::s_inst.
void Character::RegisterCharacterFXTable() {
    const int fxFootprint = GetFXFootprint();
    const int fxBlood = GetFXBlood();
    const int fxBloodDeath = GetFXBloodDeath();
    TouchDebugSwitch("isTracingChar_Init");
    if (fxFootprint >= 0) {
        Singleton<VisualFXManager>::s_inst.RegisterFXSetToLoad(fxFootprint);
    }
    if (fxBlood >= 0) {
        Singleton<VisualFXManager>::s_inst.RegisterFXSetToLoad(fxBlood);
    }
    if (fxBloodDeath >= 0) {
        Singleton<VisualFXManager>::s_inst.RegisterFXSetToLoad(fxBloodDeath);
    }
}
// 0x3b4834 _ZN9Character20InitLightSetAndMaterialEv
// Character::InitLightSetAndMaterial(void)
// With a visual object: a light filter with every light on (LightSetManager::InitLightFilter(filter, true) on the device scene manager's light set manager) is built, the
// visual's light set id (VisualObject +0x40) becomes the id of "MonsterLight" and its filter (+0x44) the new one; the light set and the material, base parameter, shadow and
// x-ray materials are applied, in that order.
void Character::InitLightSetAndMaterial() {
    VisualObject* visual = m_visualObject;
    if (visual == nullptr) {
        return;
    }
    if (SceneManager* sceneManager = DeviceSceneManager()) {  // the original has no device test; a device always exists in the game
        std::vector<bool> filter;
        sceneManager->m_lightSetManager.InitLightFilter(filter, true);
        visual->unk_40 = sceneManager->m_lightSetManager.GetLightSetIdFromName(std::string("MonsterLight"));
        visual->m_lightFilter = filter;
    }
    visual->ApplyLightSet();
    visual->ApplyMaterial();
    visual->ApplyMaterialBaseParam();
    visual->ApplyShadowMaterial();
    visual->ApplyXrayMaterial();
}

// 0x3b4978 _ZN9Character9InitFinalEv
// Character::InitFinal(void)
// The one-time guard (+0x1395) and the spawn probability test against GameObject::m_spawnProb; GameObject::InitFinal. A faerie or follower is placed next to the local player (the
// player's look vector plus its target position, SetPosition(point, true)). The visual's light set id becomes "SceneLight" for a player and "MonsterLight" otherwise. The AI is told
// OnInitFinal (CharAI vtable slot +0x10). The local player then updates its skills, recalculates its properties, sets the potion cap from property 194 and saves.
void Character::InitFinal() {
    if (m_initFinalDone != 0) {
        return;
    }
    m_initFinalDone = 1;
    if (!(CheckSpawnProbability() < m_spawnProb)) {
        return;
    }
    GameObject::InitFinal();
    if (IsFaerie() || IsFollower()) {
        GameObject* localPlayer = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
        Point3D<float> offset{0.0f, 0.0f, 0.0f};
        if (localPlayer != nullptr) {
            localPlayer->GetLookAtVec(offset);
            const Point3D<float>& position = localPlayer->GetTargetPosition();
            offset.X += position.X;
            offset.Y += position.Y;
            offset.Z += position.Z;
            GameObject::SetPosition(offset, true);
        }
    }
    if (m_visualObject != nullptr) {
        if (SceneManager* sceneManager = DeviceSceneManager()) {  // the original has no device test; a device always exists in the game
            m_visualObject->unk_40 = sceneManager->m_lightSetManager.GetLightSetIdFromName(std::string(IsPlayer() ? "SceneLight" : "MonsterLight"));
        }
    }
    OnInitFinal();
    if (IsPlayer() && dword_99F76C->IsLocalPlayer(this)) {
        CharAI::UpdateAllSkills();
        CharProperties::RecalcProperties(true);
        const int potionCap = PROPS_GetInt(194, false);
        ItemInventory::m_maxPotions = static_cast<std::int8_t>(potionCap > 0 ? potionCap : 0);
        SG_Save();
    }
}

// 0x3b4bc4 _ZN9Character7InitCamEv
// Character::InitCam(void)
// The UseStaticCamera debug switch gives a plain camera anchor on this character (AnchorBase, type 0). Otherwise a forward-looking anchor is built from the CharacterDesign
// constants ForwardCamera_Max_Distance, ForwardCamera_Distance_PerSec and ForwardCamera_Threshold (the last scaled by 0.01), type 2. The anchor becomes the camera anchor object.
void Character::InitCam() {
    DebugSwitches::GetInstance()->load();
    const bool useStaticCamera = DebugSwitches::GetInstance()->GetSwitch("UseStaticCamera");
    AnchorBase* anchor;
    if (useStaticCamera) {
        anchor = new AnchorBase(this, static_cast<AnchorBase::AnchorType>(0));
    } else {
        PyDataConstants* constants = ApplicationGetPyDataConstants();
        const int maxDistance = constants->getConstant("CharacterDesign", "ForwardCamera_Max_Distance");
        const int distPerSec = constants->getConstant("CharacterDesign", "ForwardCamera_Distance_PerSec");
        const int threshold = constants->getConstant("CharacterDesign", "ForwardCamera_Threshold");
        anchor = new AnchorForward(this, static_cast<float>(maxDistance), static_cast<float>(distPerSec), static_cast<float>(threshold) * 0.01f,
                                   static_cast<AnchorBase::AnchorType>(2));
    }
    SetCameraAnchorObject(anchor);
}

// 0x3b4d60 _ZN9Character8InitPostEv
// Character::InitPost(void)
// In the original's order: the one-time guard (+0x1394) and the spawn probability test; the starting waypoint move (Cmd_MoveTo to the object named by
// m_startingWaypoint); SafeGetCharPropsId and LoadBaseProperties/RecalcProperties; the model name (GameObject m_dae); the scale from three base-sheet words (x and y 0.009 each, z 0.01);
// GameObject::InitPost; a character that fails its condition is hidden and deleted. Otherwise SG_Load(2); the AI script process loads at once unless it is staged (a non-player whose
// AITable row flag +0x10 is set, or a player that is not local, is staged: CharAI m_stagedLoad); the self FX (m_selfFXBaseId plus the AITable row's +0x30); the character FX table;
// the animation set; the sounds. A player: automatic culling off on its node, SG_Load(4), the savegame difficulty from the current level, for the local player the equipment, gear
// properties and quest sync, then the base and gear properties and the recalculation, the skill slots (local), the maximum gold 999999999 and the potion cap (property 194), and,
// when the FX library is built, nine ground-circle FX (target_circle_00_chest + i; hidden, looping), the local player's cursor FX (DesignSettings +0x88) and the multiplayer
// highlight. Last: properties 210 and 211, the initial position and rotation, the mesh box, Revive(nullptr, true), _InitHpMp, the staged AI script start and the group add.
void Character::InitPost() {
    if (m_initPostDone != 0) {
        return;
    }
    m_initPostDone = 1;
    if (!(GameObject::CheckSpawnProbability() < m_spawnProb)) {
        return;
    }
    TouchDebugSwitch("isTracingChar_Init");
    if (!m_startingWaypoint.empty()) {
        ObjectHandle waypoint = dword_99F764->GetObjectByName(m_startingWaypoint.c_str(), unk_64, false, nullptr);
        if (waypoint.GetObject(false) != nullptr) {
            GameObject* target = waypoint;
            if (target != nullptr) {
                m_controller->Cmd_MoveTo(target);
            }
        }
    }
    SafeGetCharPropsId();
    int loadId = -1;
    if (m_charPropsId != -1) {
        TouchDebugSwitch("isTracingChar_Init");
        loadId = m_charPropsId;
    }
    CharProperties::LoadBaseProperties(loadId);
    CharProperties::RecalcProperties(true);
    if (const char* modelName = GetCharModelName()) {
        m_dae.assign(modelName);
    }
    TouchDebugSwitch("isTracingChar_Init");
    m_scale.X = static_cast<float>(CharProperties::m_baseProps.Scale_X) * 0.009f;
    m_scale.Y = static_cast<float>(CharProperties::m_baseProps.Scale_Y) * 0.009f;
    m_scale.Z = static_cast<float>(CharProperties::m_baseProps.Scale_Z) * 0.01f;
    GameObject::InitPost();
    if (!MeetCondition()) {
        SetVisible(false);
        ObjectBase::Delete();
        return;
    }
    SG_Load(2);
    const Structs::AIProps* aiRow = GetCharAI();
    if ((IsPlayer() || !aiRow->DelayedLoad) && (!IsPlayer() || dword_99F76C->IsLocalPlayer(this))) {
        CharAI::LoadScriptProcess();
    } else {
        CharAI::m_stagedLoad = true;
    }
    m_selfFX = VisualFXManager::s_inst.GrabAnimFX(m_selfFXBaseId + aiRow->SelfFX, this);
    RegisterCharacterFXTable();
    TouchDebugSwitch("isTracingChar_Init");
    CharAnimator::SetAnimationSet();
    TouchDebugSwitch("isTracingChar_Init");
    _InitSounds();
    TouchDebugSwitch("isTracingChar_Init");
    if (IsPlayer()) {
        if (m_visualObject != nullptr) {
            m_visualObject->m_node->setAutomaticCulling(0);
        }
        SG_Load(4);
        if (Level* level = ApplicationGetInstance().GetCurrentLevel()) {
            SG_SetGameDifficulty(level->m_difficulty);
        }
        if (dword_99F76C->IsLocalPlayer(this)) {
            _InitEquipment();
            CharProperties::ResetGearsProperties();
            if (m_savegame != nullptr) {
                m_savegame->SG_TryQuestSync();
            }
        }
        CharProperties::LoadBaseProperties(m_charPropsId);
        CharProperties::LoadGearsProperties();
        CharProperties::RecalcProperties(true);
        if (dword_99F76C->IsLocalPlayer(this)) {
            _InitSkillsSlots();
        }
        ItemInventory::m_maxGold = 999999999;
        const int potionCap = PROPS_GetInt(194, false);
        ItemInventory::m_maxPotions = static_cast<std::int8_t>(potionCap > 0 ? potionCap : 0);
        if (!VisualFXManager::s_inst.m_animatedFXPools.empty()) {
            m_targetCircleFX = new AnimatedFX*[9];
            const int circle = pydata::FindMemberName(Arrays::AnimatedEffectTable::m_memberNames, static_cast<int>(Arrays::AnimatedEffectTable::size),
                                                      "target_circle_00_chest");
            for (int i = 0; i < 9; ++i) {
                AnimatedFX* fx = VisualFXManager::s_inst.GrabAnimFX(circle + i, nullptr);
                m_targetCircleFX[i] = fx;
                if (fx != nullptr) {
                    std::memcpy(&fx->unk_34, &Vec3f_Origin.X, sizeof(float));
                    std::memcpy(&fx->unk_38, &Vec3f_Origin.Y, sizeof(float));
                    std::memcpy(&fx->unk_3c, &Vec3f_Origin.Z, sizeof(float));
                    fx->SyncIrrData(false);
                    fx->SetVisible(false);
                    fx->GetAnimator()->getTimelineCtrl()->setLoop(true);
                }
            }
            if (dword_99F76C->IsLocalPlayer(this)) {
                const auto* design = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);
                m_cursorFX = VisualFXManager::s_inst.GrabAnimFX(design->TargetMove, nullptr);
                if (AnimatedFX* fx = m_cursorFX) {
                    fx->unk_3c = 0;
                    fx->unk_34 = 0;
                    fx->unk_38 = 0;
                    fx->SyncIrrData(false);
                    fx->SetVisible(false);
                    fx->GetAnimator()->getTimelineCtrl()->setLoop(true);
                }
            }
            AddMultiplayerHighlight();
        }
    }
    unk_1440 = static_cast<float>(CharProperties::_GetProperty(CharProperties::m_props, 210));
    unk_1444 = static_cast<float>(CharProperties::_GetProperty(CharProperties::m_props, 211));
    SetInitialPosition(m_position);
    SetPosition(m_initialPosition, true);
    m_initialRotation = m_rotation;
    if (m_visualObject != nullptr) {
        m_visualObject->ApplyMeshBox();
    }
    Revive(nullptr, true);
    _InitHpMp();
    if (!CharAI::m_stagedLoad) {
        CharAI::InitScriptProcess(false);
    }
    CharAI::AddToGroup(this);
    TouchDebugSwitch("isTracingChar_Init");
}
