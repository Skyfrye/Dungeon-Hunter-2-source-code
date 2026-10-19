// Test for batch g1-game-character-Character-ee9946-5.
//
// No Character is constructed (the constructor belongs to the object lifecycle, not to this check). The storage is
// zero-filled and only the static-map logic of UnLoadScriptProcess and AddCharOIDToCache is exercised. Character::
// UnLoadScriptProcess calls CharAI::AIUnLoadScriptProcess, which is stubbed here to record its flag. The statics and the
// CharacterTable size are defined here because the batches that own them are not linked into this test.
// Not covered: the constructor, the destructor, the equipment wrappers and the requirement check (they need the
// ItemInventory, CharProperties and v2Controller behaviour), and the partial bodies, whose placeholders are not behaviour.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>

#include "dh2/Character.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"  // Arrays::ModelDict
#include "pydata-accessors/w7_arrays27.hpp"

std::map<int, Character*> Character::s_concurrentAI;
std::map<int, unsigned int> Character::s_cachedCharOIDs;

// AddCharOIDToCache walks Arrays::CharacterTable's rows for the new id's model word: its `members` array is a real
// block here (w7_arrays27.cpp leaves it null until a table file has been read), so the body under test can run.
// The block must hold CharacterTable::size whole rows: AddCharOIDToCache indexes the array as a typed
// Structs::CharacterProperties* (the port indexes rows through the typed pointer, not through the 900-byte ARM32
// listing stride), so one row is sizeof(Structs::CharacterProperties) here. A 1000-element int32 block made the
// rows[999] read in TestCachedOIDRejectsOutOfTableIds run off the end of the allocation.
std::uint8_t g_charTableRows[1000 * sizeof(Structs::CharacterProperties)];
std::uint8_t* Arrays::CharacterTable::members = g_charTableRows;
std::uint32_t Arrays::CharacterTable::size = 1000;

namespace {

int g_failures = 0;
bool g_lastForce = false;
int g_unloadCalls = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// A zero-filled Character: the tests only compare its address and call non-virtual qualified functions on it.
alignas(Character) unsigned char g_storage[sizeof(Character)];
Character* const g_self = reinterpret_cast<Character*>(g_storage);
Character* const g_other = reinterpret_cast<Character*>(g_storage + 16);

void ResetMaps() {
    Character::s_concurrentAI.clear();
    Character::s_cachedCharOIDs.clear();
    g_unloadCalls = 0;
}

void TestUnLoadFindsSelfWhenIteratorIsEnd() {
    ResetMaps();
    Character::s_concurrentAI[1] = g_other;
    Character::s_concurrentAI[2] = g_self;
    Character::s_concurrentAI[3] = g_other;
    auto it = Character::s_concurrentAI.end();
    g_self->UnLoadScriptProcess(it, true);
    // The iterator is taken by value, so the caller's copy still holds end() after the call.
    EXPECT(it == Character::s_concurrentAI.end());
    EXPECT(Character::s_concurrentAI.size() == 2);
    EXPECT(Character::s_concurrentAI.count(2) == 0);
    EXPECT(Character::s_concurrentAI.count(1) == 1);
    EXPECT(Character::s_concurrentAI.count(3) == 1);
    EXPECT(g_unloadCalls == 1 && g_lastForce);
}

void TestUnLoadLeavesMapWhenSelfAbsent() {
    ResetMaps();
    Character::s_concurrentAI[5] = g_other;
    auto it = Character::s_concurrentAI.end();
    g_self->UnLoadScriptProcess(it, false);
    EXPECT(Character::s_concurrentAI.size() == 1);
    EXPECT(it == Character::s_concurrentAI.end());
    EXPECT(g_unloadCalls == 1 && !g_lastForce);
}

void TestUnLoadErasesGivenIterator() {
    ResetMaps();
    Character::s_concurrentAI[7] = g_other;
    Character::s_concurrentAI[8] = g_self;
    auto it = Character::s_concurrentAI.find(7);
    g_self->UnLoadScriptProcess(it, true);
    EXPECT(Character::s_concurrentAI.size() == 1);
    EXPECT(Character::s_concurrentAI.count(7) == 0);
    EXPECT(Character::s_concurrentAI.count(8) == 1);
}

void TestCachedOIDKeepsLargerFlags() {
    ResetMaps();
    Character::AddCharOIDToCache(5, 3u);
    EXPECT(Character::s_cachedCharOIDs.size() == 1);
    EXPECT(Character::s_cachedCharOIDs[5] == 3u);
    Character::AddCharOIDToCache(5, 2u);
    EXPECT(Character::s_cachedCharOIDs[5] == 3u);
    Character::AddCharOIDToCache(5, 9u);
    EXPECT(Character::s_cachedCharOIDs[5] == 9u);
    EXPECT(Character::s_cachedCharOIDs.size() == 1);
}

void TestCachedOIDRejectsOutOfTableIds() {
    ResetMaps();
    Character::AddCharOIDToCache(-1, 4u);
    Character::AddCharOIDToCache(1000, 4u);
    Character::AddCharOIDToCache(999, 6u);
    EXPECT(Character::s_cachedCharOIDs.size() == 1);
    EXPECT(Character::s_cachedCharOIDs.count(999) == 1);
    EXPECT(Character::s_cachedCharOIDs[999] == 6u);
}

}  // namespace

// Stub for the CharAI call made by UnLoadScriptProcess. It records the flag only.
void CharAI::AIUnLoadScriptProcess(bool force) {
    ++g_unloadCalls;
    g_lastForce = force;
}

int main() {
    TestUnLoadFindsSelfWhenIteratorIsEnd();
    TestUnLoadLeavesMapWhenSelfAbsent();
    TestUnLoadErasesGivenIterator();
    TestCachedOIDKeepsLargerFlags();
    TestCachedOIDRejectsOutOfTableIds();
    ResetMaps();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("all checks passed\n");
    return 0;
}

// Link stubs for the cross-batch symbols the batch source references (vtables, base constructors and destructors,
// thunks and globals of other classes). None of them is reached by the checks above; each aborts if it is called.
#define BATCH_STUB(n, name) extern "C" void batch_stub_##n(void) asm(name); extern "C" void batch_stub_##n(void) { std::abort(); }
BATCH_STUB(1, "_ZN10CharTimers12SetCharacterEP9Character")
BATCH_STUB(2, "_ZN10CharTimersC2Ev")
BATCH_STUB(3, "_ZN10CharTimersD2Ev")
BATCH_STUB(4, "_ZN10GameObject10SetVisibleEb")
BATCH_STUB(5, "_ZN10GameObject17DeclarePropertiesEv")
BATCH_STUB(6, "_ZN10GameObjectC2EN10ObjectBase6GO_IDSE")
BATCH_STUB(7, "_ZN10GameObjectD2Ev")
BATCH_STUB(8, "_ZN10ObjectBase11setUpdatingEb")
BATCH_STUB(9, "_ZN11PropertyMap11AddPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcRT_")
BATCH_STUB(10, "_ZN12CharAnimator12SetCharacterEP9Character")
BATCH_STUB(11, "_ZN12CharAnimatorC2Ev")
BATCH_STUB(12, "_ZN12CharAnimatorD2Ev")
BATCH_STUB(13, "_ZN12v2ControllerC1EP14v2Controllable")
BATCH_STUB(14, "_ZN13DebugSwitches11GetInstanceEv")
BATCH_STUB(15, "_ZN13DebugSwitches4loadEv")
BATCH_STUB(16, "_ZN13DebugSwitches9GetSwitchERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
BATCH_STUB(17, "_ZN13ItemInventory13EquipItemAutoEj")
BATCH_STUB(18, "_ZN13ItemInventory13EquipSlotAutoEjP9Character")
BATCH_STUB(19, "_ZN13ItemInventory15EquipItemToSlotEjj")
BATCH_STUB(20, "_ZN13ItemInventory15GetEquippedItemEj")
BATCH_STUB(21, "_ZN13ItemInventory15UnEquipItemAutoEj")
BATCH_STUB(22, "_ZN13ItemInventory19UnEquipItemFromSlotEji")
BATCH_STUB(23, "_ZN13ItemInventoryC2Ev")
BATCH_STUB(24, "_ZN13ItemInventoryD2Ev")
BATCH_STUB(25, "_ZN14CharProperties12SetCharacterEP9Character")
BATCH_STUB(26, "_ZN14CharProperties16RecalcPropertiesEb")
BATCH_STUB(27, "_ZN14CharProperties20PROPS_RemoveAllBuffsEv")
BATCH_STUB(28, "_ZN14CharProperties21UpdateGearsPropertiesEv")
BATCH_STUB(29, "_ZN14CharPropertiesC2Ev")
BATCH_STUB(30, "_ZN14CharPropertiesD2Ev")
BATCH_STUB(31, "_ZN14ObjectSearcher10TargetList12SetRefObjectEP10GameObject")
BATCH_STUB(32, "_ZN14v2Controllable13SetControllerEP12v2Controller")
BATCH_STUB(33, "_ZN14v2Controllable14Ctrl_ResetZoomEv")
BATCH_STUB(34, "_ZN14v2Controllable20Ctrl_TranslateMapCamEff")
BATCH_STUB(35, "_ZN14v2Controllable9Ctrl_ZoomEf")
BATCH_STUB(36, "_ZN14v2ControllableC2Ev")
BATCH_STUB(37, "_ZN14v2ControllableD2Ev")
BATCH_STUB(38, "_ZN16CharStateMachine12SetCharacterEP9Character")
BATCH_STUB(39, "_ZN16CharStateMachine13RegisterStateEi")
BATCH_STUB(40, "_ZN16CharStateMachineC2Ev")
BATCH_STUB(41, "_ZN16CharStateMachineD2Ev")
BATCH_STUB(42, "_ZN6CharAI10OnInitPostEv")
BATCH_STUB(43, "_ZN6CharAI10OnInteractEv")
BATCH_STUB(44, "_ZN6CharAI11OnAnimEventEPKc")
BATCH_STUB(45, "_ZN6CharAI11OnEndOfAnimEv")
BATCH_STUB(46, "_ZN6CharAI11OnInitFinalEv")
BATCH_STUB(47, "_ZN6CharAI11OnPreAttackEi")
BATCH_STUB(48, "_ZN6CharAI11OnTerminateEv")
BATCH_STUB(49, "_ZN6CharAI12OnMasterDiedEv")
BATCH_STUB(50, "_ZN6CharAI12OnTargetDiedEv")
BATCH_STUB(51, "_ZN6CharAI12SetCharacterEP9Character")
BATCH_STUB(52, "_ZN6CharAI13OnFearExpiredEv")
BATCH_STUB(53, "_ZN6CharAI13OnPreInteractEv")
BATCH_STUB(54, "_ZN6CharAI13OnScriptTimerEj")
BATCH_STUB(55, "_ZN6CharAI13OnStunExpiredEv")
BATCH_STUB(56, "_ZN6CharAI14OnCollisionEndEP10GameObjectb")
BATCH_STUB(57, "_ZN6CharAI14OnEnemySpottedEP9Character")
BATCH_STUB(58, "_ZN6CharAI14OnStateChangedEii")
BATCH_STUB(59, "_ZN6CharAI15AI_ReloadSkillsEv")
BATCH_STUB(60, "_ZN6CharAI15OnCombatResultsEP10GameObjectPv")
BATCH_STUB(61, "_ZN6CharAI15OnCombatResultsEP9CharacterS1_Pv")
BATCH_STUB(62, "_ZN6CharAI15OnFriendSpottedEP9Character")
BATCH_STUB(63, "_ZN6CharAI15OnMasterInSightEv")
BATCH_STUB(64, "_ZN6CharAI15OnMasterRevivedEv")
BATCH_STUB(65, "_ZN6CharAI15OnProjectileHitEP10GameObject")
BATCH_STUB(66, "_ZN6CharAI15OnTargetInSightEv")
BATCH_STUB(67, "_ZN6CharAI15OnTargetRevivedEv")
BATCH_STUB(68, "_ZN6CharAI15UpdateAllSkillsEv")
BATCH_STUB(69, "_ZN6CharAI16OnCollisionBeginEP10GameObjectb")
BATCH_STUB(70, "_ZN6CharAI16OnNeutralSpottedEP9Character")
BATCH_STUB(71, "_ZN6CharAI17OnCollisionResultEP10GameObjectb")
BATCH_STUB(72, "_ZN6CharAI18OnCollisionPersistEP10GameObjectb")
BATCH_STUB(73, "_ZN6CharAI18OnMasterOutOfRangeEv")
BATCH_STUB(74, "_ZN6CharAI18OnMasterOutOfSightEv")
BATCH_STUB(75, "_ZN6CharAI18OnTargetOutOfRangeEv")
BATCH_STUB(76, "_ZN6CharAI18OnTargetOutOfSightEv")
BATCH_STUB(77, "_ZN6CharAI20OnAttackDelayExpiredEv")
BATCH_STUB(78, "_ZN6CharAI20OnMasterInCloseRangeEv")
BATCH_STUB(79, "_ZN6CharAI20OnMasterInMeleeRangeEv")
BATCH_STUB(80, "_ZN6CharAI20OnTargetInCloseRangeEv")
BATCH_STUB(81, "_ZN6CharAI20OnTargetInMeleeRangeEv")
BATCH_STUB(82, "_ZN6CharAI21OnMasterInRangedRangeEv")
BATCH_STUB(83, "_ZN6CharAI21OnTargetInRangedRangeEv")
BATCH_STUB(84, "_ZN6CharAI5OnMsgEiPKv")
BATCH_STUB(85, "_ZN6CharAI6OnDiedEP10GameObject")
BATCH_STUB(86, "_ZN6CharAI6OnInitEv")
BATCH_STUB(87, "_ZN6CharAI6OnKillEP9Character")
BATCH_STUB(88, "_ZN6CharAI7OnAggroEP9Character")
BATCH_STUB(89, "_ZN6CharAI7OnTimerEPv")
BATCH_STUB(90, "_ZN6CharAI8OnAttackEiib")
BATCH_STUB(91, "_ZN6CharAI8OnUpdateEv")
BATCH_STUB(92, "_ZN6CharAI9OnDeAggroEP9Character")
BATCH_STUB(93, "_ZN6CharAI9OnRevivedEP10GameObject")
BATCH_STUB(94, "_ZN6CharAIC2Ev")
BATCH_STUB(95, "_ZN6CharAID2Ev")
BATCH_STUB(96, "_ZN9Character10Ctrl_ClickERK7Point3DIfEb")
BATCH_STUB(97, "_ZN9Character11Ctrl_AttackEP10GameObject")
BATCH_STUB(98, "_ZN9Character11Ctrl_HeadToEP10GameObject")
BATCH_STUB(99, "_ZN9Character11Ctrl_HeadToERK7Point3DIfE")
BATCH_STUB(100, "_ZN9Character11Ctrl_LookAtEP10GameObject")
BATCH_STUB(101, "_ZN9Character11Ctrl_LookAtERK7Point3DIfE")
BATCH_STUB(102, "_ZN9Character11Ctrl_MoveToEP10GameObject")
BATCH_STUB(103, "_ZN9Character11Ctrl_MoveToERK7Point3DIfE")
BATCH_STUB(104, "_ZN9Character11Ctrl_UseOOIEP10GameObject")
BATCH_STUB(105, "_ZN9Character11Ctrl_WarpToERK7Point3DIfE")
BATCH_STUB(106, "_ZN9Character11DeserializeEP11IStreamBase")
BATCH_STUB(107, "_ZN9Character12Ctrl_EndCastEb")
BATCH_STUB(108, "_ZN9Character12Ctrl_OpenIGMEv")
BATCH_STUB(109, "_ZN9Character12ValidateHPMPEv")
BATCH_STUB(110, "_ZN9Character13Ctrl_EndSkillEj")
BATCH_STUB(111, "_ZN9Character13Ctrl_RotateByEf")
BATCH_STUB(112, "_ZN9Character14Ctrl_BeginCastEb")
BATCH_STUB(113, "_ZN9Character14Ctrl_UsePotionEv")
BATCH_STUB(114, "_ZN9Character14createBindingsERN3sfc6script3lua6BinderE")
BATCH_STUB(115, "_ZN9Character15AddItemInstanceEP12ItemInstancebb")
BATCH_STUB(116, "_ZN9Character15Ctrl_BeginSkillEj")
BATCH_STUB(117, "_ZN9Character15Ctrl_DropObjectEv")
BATCH_STUB(118, "_ZN9Character15SetRelativeAABBERK4aabbIfEb")
BATCH_STUB(119, "_ZN9Character16Ctrl_HeadTowardsEP10GameObject")
BATCH_STUB(120, "_ZN9Character16Ctrl_HeadTowardsERK7Point3DIfE")
BATCH_STUB(121, "_ZN9Character17EquipAllSlotsAutoEv")
BATCH_STUB(122, "_ZN9Character17SG_GetPlayerLevelEv")
BATCH_STUB(123, "_ZN9Character18NetStructCharacterC1Ev")
BATCH_STUB(124, "_ZN9Character18NetStructCharacterD1Ev")
BATCH_STUB(125, "_ZN9Character23InitLightSetAndMaterialEv")
BATCH_STUB(126, "_ZN9Character24INV_DoesMeetRequirementsEP12ItemInstance")
BATCH_STUB(127, "_ZN9Character25PopulateOutgoingNetStructEb")
BATCH_STUB(128, "_ZN9Character5CleanEv")
BATCH_STUB(129, "_ZN9Character6UpdateEv")
BATCH_STUB(130, "_ZN9Character7EnabledEv")
BATCH_STUB(131, "_ZN9Character7SG_LoadEi")
BATCH_STUB(132, "_ZN9Character8DisabledEv")
BATCH_STUB(133, "_ZN9Character8InitPostEv")
BATCH_STUB(134, "_ZN9Character8InteractEP10GameObject")
BATCH_STUB(135, "_ZN9Character9CanUpdateEv")
BATCH_STUB(136, "_ZN9Character9Ctrl_KillEP10GameObjectb")
BATCH_STUB(137, "_ZN9Character9Ctrl_StopEv")
BATCH_STUB(138, "_ZN9Character9InitFinalEv")
BATCH_STUB(139, "_ZN9Character9SerializeEP11IStreamBase")
BATCH_STUB(140, "_ZNK10GameObject11IsUpdatableEv")
BATCH_STUB(141, "_ZNK10GameObject12IsGameObjectEv")
BATCH_STUB(142, "_ZNK10GameObject15IsInteractiveExEPS_")
BATCH_STUB(143, "_ZNK10GameObject4DrawEv")
BATCH_STUB(144, "_ZNK10GameObject5IsHitEv")
BATCH_STUB(145, "_ZNK10GameObject8GetSpeedEv")
BATCH_STUB(146, "_ZNK10ObjectBase17IsRemotelyUpdatedEv")
BATCH_STUB(147, "_ZNK13ItemInventory20GetNumEquipmentSlotsEv")
BATCH_STUB(148, "_ZNK9Character10GetFXScaleEv")
BATCH_STUB(149, "_ZNK9Character10GetOpacityEv")
BATCH_STUB(150, "_ZNK9Character10IsAnimatedEv")
BATCH_STUB(151, "_ZNK9Character10IsObstacleEv")
BATCH_STUB(152, "_ZNK9Character11IsCharacterEv")
BATCH_STUB(153, "_ZNK9Character13IsInteractiveEP10GameObject")
BATCH_STUB(154, "_ZNK9Character13getUDTypeNameEv")
BATCH_STUB(155, "_ZNK9Character14CanRangeAttackERiS0_S0_")
BATCH_STUB(156, "_ZNK9Character14CanRangeAttackEv")
BATCH_STUB(157, "_ZNK9Character14GetFocusObjectEv")
BATCH_STUB(158, "_ZNK9Character14IsUpdatingPathEv")
BATCH_STUB(159, "_ZNK9Character15GetFXScaleValueEv")
BATCH_STUB(160, "_ZNK9Character16GetRotationSpeedEv")
BATCH_STUB(161, "_ZNK9Character17GetObstacleRadiusEv")
BATCH_STUB(162, "_ZNK9Character17SG_GetPlayerClassEv")
BATCH_STUB(163, "_ZNK9Character18GetInteractionTypeEP10GameObject")
BATCH_STUB(164, "_ZNK9Character19GetObstacleStrengthEv")
BATCH_STUB(165, "_ZNK9Character19IsAvoidingObstaclesEv")
BATCH_STUB(166, "_ZNK9Character20GetInteractionRadiusEv")
BATCH_STUB(167, "_ZNK9Character24IsValidatingCameraLimitsEv")
BATCH_STUB(168, "_ZNK9Character25IsValidatingFloorPositionEv")
BATCH_STUB(169, "_ZNK9Character28IsUpdatingPositionFromVisualEv")
BATCH_STUB(170, "_ZNK9Character28IsUpdatingRotationFromVisualEv")
BATCH_STUB(171, "_ZNK9Character28IsUpdatingVisualWithRotationEv")
BATCH_STUB(172, "_ZNK9Character29IsUpdatingPositionFromPhysicsEv")
BATCH_STUB(173, "_ZNK9Character29IsUpdatingRotationFromPhysicsEv")
BATCH_STUB(174, "_ZNK9Character6IsDeadEv")
BATCH_STUB(175, "_ZNK9Character8IsPlayerEv")
BATCH_STUB(176, "_ZNK9Character9IsMonsterEv")
BATCH_STUB(177, "_ZNK9Character9IsZonableEv")
BATCH_STUB(178, "_ZTVN10__cxxabiv117__class_type_infoE")
BATCH_STUB(179, "_ZTVN10__cxxabiv120__si_class_type_infoE")
BATCH_STUB(180, "_ZTVN10__cxxabiv121__vmi_class_type_infoE")
BATCH_STUB(181, "_ZThn1248_N9Character10Ctrl_ClickERK7Point3DIfEb")
BATCH_STUB(182, "_ZThn1248_N9Character11Ctrl_AttackEP10GameObject")
BATCH_STUB(183, "_ZThn1248_N9Character11Ctrl_HeadToEP10GameObject")
BATCH_STUB(184, "_ZThn1248_N9Character11Ctrl_HeadToERK7Point3DIfE")
BATCH_STUB(185, "_ZThn1248_N9Character11Ctrl_LookAtEP10GameObject")
BATCH_STUB(186, "_ZThn1248_N9Character11Ctrl_LookAtERK7Point3DIfE")
BATCH_STUB(187, "_ZThn1248_N9Character11Ctrl_MoveToEP10GameObject")
BATCH_STUB(188, "_ZThn1248_N9Character11Ctrl_MoveToERK7Point3DIfE")
BATCH_STUB(189, "_ZThn1248_N9Character11Ctrl_UseOOIEP10GameObject")
BATCH_STUB(190, "_ZThn1248_N9Character11Ctrl_WarpToERK7Point3DIfE")
BATCH_STUB(191, "_ZThn1248_N9Character12Ctrl_EndCastEb")
BATCH_STUB(192, "_ZThn1248_N9Character12Ctrl_OpenIGMEv")
BATCH_STUB(193, "_ZThn1248_N9Character13Ctrl_EndSkillEj")
BATCH_STUB(194, "_ZThn1248_N9Character13Ctrl_RotateByEf")
BATCH_STUB(195, "_ZThn1248_N9Character14Ctrl_BeginCastEb")
BATCH_STUB(196, "_ZThn1248_N9Character14Ctrl_UsePotionEv")
BATCH_STUB(197, "_ZThn1248_N9Character15Ctrl_BeginSkillEj")
BATCH_STUB(198, "_ZThn1248_N9Character15Ctrl_DropObjectEv")
BATCH_STUB(199, "_ZThn1248_N9Character16Ctrl_HeadTowardsEP10GameObject")
BATCH_STUB(200, "_ZThn1248_N9Character16Ctrl_HeadTowardsERK7Point3DIfE")
BATCH_STUB(201, "_ZThn1248_N9Character9Ctrl_KillEP10GameObjectb")
BATCH_STUB(202, "_ZThn1248_N9Character9Ctrl_StopEv")
BATCH_STUB(203, "_ZThn1264_NK9Character14CanRangeAttackERiS0_S0_")
BATCH_STUB(204, "_ZThn1264_NK9Character14CanRangeAttackEv")
BATCH_STUB(205, "_ZThn56_N9Character11DeserializeEP11IStreamBase")
BATCH_STUB(206, "_ZThn56_N9Character9SerializeEP11IStreamBase")
