// Batch g1-game-character-Character-ee9946-10: twenty Character functions (part 11 of 20 of the class).
// createBindings and the Lua callbacks that the class binds in it: _ClearMaster, _LookAtTarget, _ClearTarget, _Stop,
// _GetMaster, _GetTarget, _GetSpotTarget, _GetHitCount, _GetPropHP, _GetCharID, _GetStateTime, _GetState,
// _GetCurrentEquippedFaeryId, _GetEquippedFaeryElement, _GetCurrentEquippedFaeryLevel, _GetCurrentSpellInfo,
// _GetCharAIFlags, _IsConnected and _CanAttackFromRange. Declarations are in dh2/Character.hpp, which this batch
// does not change (every function here is already declared there).
//
// Callback convention (as in the game-app LuaScript batch): the Hex-Rays first parameter is the argument list, a2 is
// the ReturnValues that the push calls take, and a3 is the Character. The header's static signature (args, ret, self)
// follows that use: self is the Character the binding was registered with.
//
// Redo pass (r2a-game-character-Character-ee9946-5): the Lua return side is declared (dh2/sfc/script/lua/), so the
// push calls are made. The batch's bodies are reconstructed except _GetEquippedFaeryElement, which is PARTIAL because
// GetCharFaery (ee9946-8) returns nullptr. The other bodies in this file keep the status in their own comments.

#include <cstdint>

#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "dh2/sfc/script/lua/Binder.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/v2Controller.hpp"

// 0x3b5678 Character::_ClearMaster(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Lua ClearMaster: CharAI::AI_SetMaster(nullptr) on the CharAI base (+0x3c8). The listing returns the call's int, but
// AI_SetMaster is void and a binding's result is not read, so the callback returns nothing.
void Character::_ClearMaster([[maybe_unused]] const sfc::script::lua::Arguments& args,
                             [[maybe_unused]] sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    character->CharAI::AI_SetMaster(nullptr);
}

// 0x3b5684 Character::_LookAtTarget(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Lua LookAtTarget: GameObject::LookAt(GameObject*) called on the Character itself, with the CharAI target (CharAI +0x40,
// Character +0x408). The listing returns the call's result, but LookAt is void, so the callback returns nothing.
void Character::_LookAtTarget([[maybe_unused]] const sfc::script::lua::Arguments& args,
                              [[maybe_unused]] sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    character->GameObject::LookAt(character->CharAI::m_target);
}
// 0x3b5690 Character::_ClearTarget(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Lua ClearTarget: CharAI::AI_SetTarget(nullptr, false) (the listing passes force as 0), then
// CharAI::AI_SyncLastTarget(), both on the CharAI base. The listing returns the sync's int; both calls are void, so
// the callback returns nothing.
void Character::_ClearTarget([[maybe_unused]] const sfc::script::lua::Arguments& args,
                             [[maybe_unused]] sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    character->CharAI::AI_SetTarget(nullptr, false);
    character->CharAI::AI_SyncLastTarget();
}

// 0x3b56b4 Character::_Stop(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Lua Stop: v2Controller::Cmd_Stop on the controller of the v2Controllable base (+0x374; m_controller is at +0x378).
// Cmd_Stop forwards to the controller's Ctrl_Stop slot.
void Character::_Stop([[maybe_unused]] const sfc::script::lua::Arguments& args,
                      [[maybe_unused]] sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    character->v2Controllable::m_controller->Cmd_Stop();
}

// 0x3b56bc Character::createBindings(sfc::script::lua::Binder&)
// Binds the Lua names of the class in the listing's order: GameObject::createBindings first, then for each name
// bindFunction (user data this; SetProjectileTarget gets nullptr and no bindMethod) and bindMethod (no user data).
void Character::createBindings(sfc::script::lua::Binder& binder) {
    GameObject::createBindings(binder);
    binder.bindFunction("SetActorPosition", &GameObject::_SetPosition, this);
    binder.bindMethod("SetActorPosition", &GameObject::_SetPosition);
    binder.bindFunction("RotateBy", &Character::_RotateBy, this);
    binder.bindMethod("RotateBy", &Character::_RotateBy);
    binder.bindFunction("LookAt", &Character::_LookAt, this);
    binder.bindMethod("LookAt", &Character::_LookAt);
    binder.bindFunction("Stop", &Character::_Stop, this);
    binder.bindMethod("Stop", &Character::_Stop);
    binder.bindFunction("HeadTo", &Character::_HeadTo, this);
    binder.bindMethod("HeadTo", &Character::_HeadTo);
    binder.bindFunction("MoveTo", &Character::_MoveTo, this);
    binder.bindMethod("MoveTo", &Character::_MoveTo);
    binder.bindFunction("WarpTo", &Character::_WarpTo, this);
    binder.bindMethod("WarpTo", &Character::_WarpTo);
    binder.bindFunction("WarpBehind", &Character::_WarpBehind, this);
    binder.bindMethod("WarpBehind", &Character::_WarpBehind);
    binder.bindFunction("Flee", &Character::_Flee, this);
    binder.bindMethod("Flee", &Character::_Flee);
    binder.bindFunction("Attack", &Character::_Attack, this);
    binder.bindMethod("Attack", &Character::_Attack);
    binder.bindFunction("DoSkill", &Character::_DoSkill, this);
    binder.bindMethod("DoSkill", &Character::_DoSkill);
    binder.bindFunction("BeginSkill", &Character::_BeginSkill, this);
    binder.bindMethod("BeginSkill", &Character::_BeginSkill);
    binder.bindFunction("EndSkill", &Character::_EndSkill, this);
    binder.bindMethod("EndSkill", &Character::_EndSkill);
    binder.bindFunction("Kill", &Character::_Kill, this);
    binder.bindMethod("Kill", &Character::_Kill);
    binder.bindFunction("GetCharAIFlags", &Character::_GetCharAIFlags, this);
    binder.bindMethod("GetCharAIFlags", &Character::_GetCharAIFlags);
    binder.bindFunction("HasAggro", &Character::_HasAggro, this);
    binder.bindMethod("HasAggro", &Character::_HasAggro);
    binder.bindFunction("AddAggro", &Character::_AddAggro, this);
    binder.bindMethod("AddAggro", &Character::_AddAggro);
    binder.bindFunction("ClearAggro", &Character::_ClearAggro, this);
    binder.bindMethod("ClearAggro", &Character::_ClearAggro);
    binder.bindFunction("HasTarget", &Character::_HasTarget, this);
    binder.bindMethod("HasTarget", &Character::_HasTarget);
    binder.bindFunction("GetTarget", &Character::_GetTarget, this);
    binder.bindMethod("GetTarget", &Character::_GetTarget);
    binder.bindFunction("SetTarget", &Character::_SetTarget, this);
    binder.bindMethod("SetTarget", &Character::_SetTarget);
    binder.bindFunction("ClearTarget", &Character::_ClearTarget, this);
    binder.bindMethod("ClearTarget", &Character::_ClearTarget);
    binder.bindFunction("SetIsActorTargetable", &Character::_SetIsTargetable, this);
    binder.bindMethod("SetIsActorTargetable", &Character::_SetIsTargetable);
    binder.bindFunction("SetIsTargetable", &Character::_SetIsTargetable, this);
    binder.bindMethod("SetIsTargetable", &Character::_SetIsTargetable);
    binder.bindFunction("LookAtTarget", &Character::_LookAtTarget, this);
    binder.bindMethod("LookAtTarget", &Character::_LookAtTarget);
    binder.bindFunction("TargetInMeleeRange", &Character::_TargetInMeleeRange, this);
    binder.bindMethod("TargetInMeleeRange", &Character::_TargetInMeleeRange);
    binder.bindFunction("HasMaster", &Character::_HasMaster, this);
    binder.bindMethod("HasMaster", &Character::_HasMaster);
    binder.bindFunction("IsMasterHostPlayer", &Character::_IsMasterHostPlayer, this);
    binder.bindMethod("IsMasterHostPlayer", &Character::_IsMasterHostPlayer);
    binder.bindFunction("GetMaster", &Character::_GetMaster, this);
    binder.bindMethod("GetMaster", &Character::_GetMaster);
    binder.bindFunction("SetMaster", &Character::_SetMaster, this);
    binder.bindMethod("SetMaster", &Character::_SetMaster);
    binder.bindFunction("ClearMaster", &Character::_ClearMaster, this);
    binder.bindMethod("ClearMaster", &Character::_ClearMaster);
    binder.bindFunction("GetSkillIDFromOID", &Character::_GetSkillIDFromOID, this);
    binder.bindMethod("GetSkillIDFromOID", &Character::_GetSkillIDFromOID);
    binder.bindFunction("GetCurrentSkillInfo__", &Character::_GetCurrentSkillInfo, this);
    binder.bindMethod("GetCurrentSkillInfo__", &Character::_GetCurrentSkillInfo);
    binder.bindFunction("GetCurrentSpellInfo", &Character::_GetCurrentSpellInfo, this);
    binder.bindMethod("GetCurrentSpellInfo", &Character::_GetCurrentSpellInfo);
    binder.bindFunction("GetCurrentEquippedFaeryId", &Character::_GetCurrentEquippedFaeryId, this);
    binder.bindMethod("GetCurrentEquippedFaeryId", &Character::_GetCurrentEquippedFaeryId);
    binder.bindFunction("GetCurrentEquippedFaeryLevel", &Character::_GetCurrentEquippedFaeryLevel, this);
    binder.bindMethod("GetCurrentEquippedFaeryLevel", &Character::_GetCurrentEquippedFaeryLevel);
    binder.bindFunction("GetEquippedFaeryElement", &Character::_GetEquippedFaeryElement, this);
    binder.bindMethod("GetEquippedFaeryElement", &Character::_GetEquippedFaeryElement);
    binder.bindFunction("SpawnSkillProjectile__", &Character::_SpawnSkillProjectile, this);
    binder.bindMethod("SpawnSkillProjectile__", &Character::_SpawnSkillProjectile);
    binder.bindFunction("SetProjectileTarget", &Character::_SetProjectileTarget, nullptr);
    binder.bindFunction("EnableSpotTargeting", &Character::_EnableSpotTargeting, this);
    binder.bindMethod("EnableSpotTargeting", &Character::_EnableSpotTargeting);
    binder.bindFunction("GetSpotTarget", &Character::_GetSpotTarget, this);
    binder.bindMethod("GetSpotTarget", &Character::_GetSpotTarget);
    binder.bindFunction("StopSkill__", &Character::_StopSkill, this);
    binder.bindMethod("StopSkill__", &Character::_StopSkill);
    binder.bindFunction("SkillCombatRoll__", &Character::_SkillCombatRoll, this);
    binder.bindMethod("SkillCombatRoll__", &Character::_SkillCombatRoll);
    binder.bindFunction("SpellCombatRoll", &Character::_SpellCombatRoll, this);
    binder.bindMethod("SpellCombatRoll", &Character::_SpellCombatRoll);
    binder.bindFunction("RegisterActorAnim", &Character::_RegisterAnim, this);
    binder.bindMethod("RegisterActorAnim", &Character::_RegisterAnim);
    binder.bindFunction("RegisterAnim", &Character::_RegisterAnim, this);
    binder.bindMethod("RegisterAnim", &Character::_RegisterAnim);
    binder.bindFunction("PlayActorAnim", &Character::_PlayAnim, this);
    binder.bindMethod("PlayActorAnim", &Character::_PlayAnim);
    binder.bindFunction("PlayAnim", &Character::_PlayAnim, this);
    binder.bindMethod("PlayAnim", &Character::_PlayAnim);
    binder.bindFunction("GetState", &Character::_GetState, this);
    binder.bindMethod("GetState", &Character::_GetState);
    binder.bindFunction("GetStateTime", &Character::_GetStateTime, this);
    binder.bindMethod("GetStateTime", &Character::_GetStateTime);
    binder.bindFunction("SetScareState", &Character::_SetScareState, this);
    binder.bindMethod("SetScareState", &Character::_SetScareState);
    binder.bindFunction("SetStunState", &Character::_SetStunState, this);
    binder.bindMethod("SetStunState", &Character::_SetStunState);
    binder.bindFunction("SetKnockBackState", &Character::_SetKnockBackState, this);
    binder.bindMethod("SetKnockBackState", &Character::_SetKnockBackState);
    binder.bindFunction("AllowCharacterRotDuringSkill", &Character::_AllowRotation, this);
    binder.bindMethod("AllowCharacterRotDuringSkill", &Character::_AllowRotation);
    binder.bindFunction("AllowRotation", &Character::_AllowRotation, this);
    binder.bindMethod("AllowRotation", &Character::_AllowRotation);
    binder.bindFunction("AllowSkillBreak", &Character::_AllowSkillBreak, this);
    binder.bindMethod("AllowSkillBreak", &Character::_AllowSkillBreak);
    binder.bindFunction("StartTimer", &Character::_StartTimer, this);
    binder.bindMethod("StartTimer", &Character::_StartTimer);
    binder.bindFunction("PauseTimer", &Character::_PauseTimer, this);
    binder.bindMethod("PauseTimer", &Character::_PauseTimer);
    binder.bindFunction("ResumeTimer", &Character::_ResumeTimer, this);
    binder.bindMethod("ResumeTimer", &Character::_ResumeTimer);
    binder.bindFunction("StopTimer", &Character::_StopTimer, this);
    binder.bindMethod("StopTimer", &Character::_StopTimer);
    binder.bindFunction("GetCharID", &Character::_GetCharID, this);
    binder.bindMethod("GetCharID", &Character::_GetCharID);
    binder.bindFunction("DBG_DumpProps", &Character::_DBG_DumpProps, this);
    binder.bindMethod("DBG_DumpProps", &Character::_DBG_DumpProps);
    binder.bindFunction("SetLevel", &Character::_SetLevel, this);
    binder.bindMethod("SetLevel", &Character::_SetLevel);
    binder.bindFunction("SetProp", &Character::_SetProp, this);
    binder.bindMethod("SetProp", &Character::_SetProp);
    binder.bindFunction("GetProp", &Character::_GetProp, this);
    binder.bindMethod("GetProp", &Character::_GetProp);
    binder.bindFunction("ApplyPropClass", &Character::_ApplyPropClass, this);
    binder.bindMethod("ApplyPropClass", &Character::_ApplyPropClass);
    binder.bindFunction("ClearProps", &Character::_ClearProps, this);
    binder.bindMethod("ClearProps", &Character::_ClearProps);
    binder.bindFunction("CreateBuff", &Character::_CreateBuff, this);
    binder.bindMethod("CreateBuff", &Character::_CreateBuff);
    binder.bindFunction("RemoveBuff", &Character::_RemoveBuff, this);
    binder.bindMethod("RemoveBuff", &Character::_RemoveBuff);
    binder.bindFunction("SetBuffProp", &Character::_SetProp, this);
    binder.bindMethod("SetBuffProp", &Character::_SetProp);
    binder.bindFunction("GetBuffProp", &Character::_GetProp, this);
    binder.bindMethod("GetBuffProp", &Character::_GetProp);
    binder.bindFunction("ApplyBuff", &Character::_ApplyPropClass, this);
    binder.bindMethod("ApplyBuff", &Character::_ApplyPropClass);
    binder.bindFunction("GetPropHP", &Character::_GetPropHP, this);
    binder.bindMethod("GetPropHP", &Character::_GetPropHP);
    binder.bindFunction("GetHP", &Character::_GetPropHP, this);
    binder.bindMethod("GetHP", &Character::_GetPropHP);
    binder.bindFunction("GetAttackRatingBonus", &Character::_GetPropBonusAttackRating, this);
    binder.bindMethod("GetAttackRatingBonus", &Character::_GetPropBonusAttackRating);
    binder.bindFunction("GetCritRatingBonus", &Character::_GetPropBonusCritRating, this);
    binder.bindMethod("GetCritRatingBonus", &Character::_GetPropBonusCritRating);
    binder.bindFunction("GetDamageBonus", &Character::_GetPropBonusDamage, this);
    binder.bindMethod("GetDamageBonus", &Character::_GetPropBonusDamage);
    binder.bindFunction("HasMana", &Character::_HasMana, this);
    binder.bindMethod("HasMana", &Character::_HasMana);
    binder.bindFunction("UseMana", &Character::_UseMana, this);
    binder.bindMethod("UseMana", &Character::_UseMana);
    binder.bindFunction("RegenHP", &Character::_RegenHP, this);
    binder.bindMethod("RegenHP", &Character::_RegenHP);
    binder.bindFunction("RegenMP", &Character::_RegenMP, this);
    binder.bindMethod("RegenMP", &Character::_RegenMP);
    binder.bindFunction("RemoveDots", &Character::_RemoveDots, this);
    binder.bindMethod("RemoveDots", &Character::_RemoveDots);
    binder.bindFunction("HasShield", &Character::_HasShield, this);
    binder.bindMethod("HasShield", &Character::_HasShield);
    binder.bindFunction("HasBow", &Character::_HasBow, this);
    binder.bindMethod("HasBow", &Character::_HasBow);
    binder.bindFunction("CanAttackInMelee", &Character::_CanAttackInMelee, this);
    binder.bindMethod("CanAttackInMelee", &Character::_CanAttackInMelee);
    binder.bindFunction("CanAttackFromRange", &Character::_CanAttackFromRange, this);
    binder.bindMethod("CanAttackFromRange", &Character::_CanAttackFromRange);
    binder.bindFunction("GetHitCount", &Character::_GetHitCount, this);
    binder.bindMethod("GetHitCount", &Character::_GetHitCount);
    binder.bindFunction("IsConnected", &Character::_IsConnected, this);
    binder.bindMethod("IsConnected", &Character::_IsConnected);
    binder.bindFunction("SetSkillCooldownTimerId__", &Character::_SetSkillCooldownTimerId, this);
    binder.bindMethod("SetSkillCooldownTimerId__", &Character::_SetSkillCooldownTimerId);
    binder.bindFunction("SetSpellCooldownTimerId__", &Character::_SetSpellCooldownTimerId, this);
    binder.bindMethod("SetSpellCooldownTimerId__", &Character::_SetSpellCooldownTimerId);
}
// 0x3b6c70 Character::_GetMaster(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Lua GetMaster: pushes the CharAI master (CharAI +0x50, Character +0x418) as user data.
void Character::_GetMaster([[maybe_unused]] const sfc::script::lua::Arguments& args,
                           sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushUserData(character->CharAI::m_master);
}
// 0x3b6c7c Character::_GetTarget(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Lua GetTarget: pushes the CharAI target (CharAI +0x40, Character +0x408) as user data.
void Character::_GetTarget([[maybe_unused]] const sfc::script::lua::Arguments& args,
                           sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushUserData(character->CharAI::m_target);
}
// 0x3b6c88 Character::_GetSpotTarget(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Lua GetSpotTarget: pushes the X, Y and Z of m_spotTargetValidPos (Character +0x14bc, +0x14c0, +0x14c4), the position
// validated against the physics world that drives the spot FX, as three numbers.
void Character::_GetSpotTarget([[maybe_unused]] const sfc::script::lua::Arguments& args,
                               sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushNumber(character->m_spotTargetValidPos.X);
    ret.pushNumber(character->m_spotTargetValidPos.Y);
    ret.pushNumber(character->m_spotTargetValidPos.Z);
}
// 0x3b6cc8 Character::_GetHitCount(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Lua GetHitCount: pushes the unsigned 16-bit word at Character +0x14d0 (unk_14d0, the attacker's hit counter that
// F_ApplyResult restarts on a hit). The Lua name is the binding's; the member keeps its unk_ name.
void Character::_GetHitCount([[maybe_unused]] const sfc::script::lua::Arguments& args,
                             sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushInteger(static_cast<int>(character->unk_14d0));
}
// 0x3b6cd8 Character::_GetPropHP(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Lua GetPropHP / GetHP: the current and maximum HP are the raw
// words of the final property sheet, property ids 36
// (sheet word m_w37, Character +0x1088) and 38 (sheet word m_w39, Character +0x1090), read through PROPS_Get. Both are
// fixed point (>> 8 for display). Pushes current >> 8, maximum >> 8 and (100 * current / (maximum >> 8)) >> 8, or three
// zeros when the raw maximum is 0. A maximum below 256 (whole part 0) has no divisor here; the percentage is then 0,
// which is the port's defined result for the original's __aeabi_idiv by zero (a runtime trap or an arbitrary value there; no game data reaches it).
void Character::_GetPropHP([[maybe_unused]] const sfc::script::lua::Arguments& args,
                           sfc::script::lua::ReturnValues& ret, void* self) {
    constexpr int kPropHP = 36;       // current HP, sheet word m_w37
    constexpr int kPropTotalHP = 38;  // maximum HP, sheet word m_w39
    Character* character = static_cast<Character*>(self);
    const int current = character->PROPS_Get(kPropHP, false);
    const int maximum = character->PROPS_Get(kPropTotalHP, false);
    if (maximum != 0) {
        const int maximumWhole = maximum >> 8;
        // 100 * current in 32-bit wrapping arithmetic, as the original's int multiply.
        const std::int32_t scaled = static_cast<std::int32_t>(100u * static_cast<std::uint32_t>(current));
        const std::int32_t percent = maximumWhole != 0 ? scaled / maximumWhole : 0;
        ret.pushInteger(current >> 8);
        ret.pushInteger(maximumWhole);
        ret.pushInteger(percent >> 8);
    } else {
        ret.pushInteger(0);
        ret.pushInteger(0);
        ret.pushInteger(0);
    }
}
// 0x3b6d5c Character::_GetCharID(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes the signed 16-bit word at Character +0x13c8, which is m_charPropsId (the row of Arrays::CharacterTable, -1
// when unresolved). The raw word is read, not the resolved SafeGetCharPropsId value.
void Character::_GetCharID([[maybe_unused]] const sfc::script::lua::Arguments& args,
                           sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushInteger(static_cast<int>(character->m_charPropsId));
}

// 0x3b6d6c Character::_GetStateTime(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes the time in the current state (ms): CharStateMachine::m_stateTime, the int at CharStateMachine +0x60
// (Character +0x55c, with the CharStateMachine base at +0x4fc).
void Character::_GetStateTime([[maybe_unused]] const sfc::script::lua::Arguments& args,
                              sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushInteger(character->CharStateMachine::m_stateTime);
}

// 0x3b6d78 Character::_GetState(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes CharStateMachine::SM_GetState() (-1 when there is no current state), read through the CharStateMachine base
// at +0x4fc.
void Character::_GetState([[maybe_unused]] const sfc::script::lua::Arguments& args,
                          sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushInteger(character->CharStateMachine::SM_GetState());
}

// 0x3b6da0 Character::_GetCurrentEquippedFaeryId(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes SG_GetCurrentFaerieId(-1).
void Character::_GetCurrentEquippedFaeryId([[maybe_unused]] const sfc::script::lua::Arguments& args,
                                           sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushInteger(character->SG_GetCurrentFaerieId(-1));
}

// 0x3b6dc4 Character::_GetEquippedFaeryElement(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The current faery id (SG_GetCurrentFaerieId(-1)) selects its Faery row (GetCharFaery); the word at row +0x8 (Structs::Faery m_w2, the element)
// is pushed as an integer.
void Character::_GetEquippedFaeryElement([[maybe_unused]] const sfc::script::lua::Arguments& args,
                                         sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    const int faeryId = character->SG_GetCurrentFaerieId(-1);
    ret.pushInteger(static_cast<const Structs::Faery*>(character->GetCharFaery(faeryId))->Elemental);
}

// 0x3b6df8 Character::_GetCurrentEquippedFaeryLevel(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes SG_GetFaerieLevel(current faery id, -1).
void Character::_GetCurrentEquippedFaeryLevel([[maybe_unused]] const sfc::script::lua::Arguments& args,
                                              sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    const unsigned int faeryId = static_cast<unsigned int>(character->SG_GetCurrentFaerieId(-1));
    ret.pushInteger(character->SG_GetFaerieLevel(faeryId, -1));
}

// 0x3b6e30 Character::_GetCurrentSpellInfo(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Looks up the current faery row with GetCharFaery (the row is discarded, as in the listing), reads the current faery
// id again and pushes SG_GetFaerieLevel of that id. The pushed value does not depend on the row, so the partial
// GetCharFaery does not change it; its ASSERTs on the faery count run as in the listing.
void Character::_GetCurrentSpellInfo([[maybe_unused]] const sfc::script::lua::Arguments& args,
                                     sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    const int rowId = character->SG_GetCurrentFaerieId(-1);
    static_cast<void>(character->GetCharFaery(rowId));
    const unsigned int faeryId = static_cast<unsigned int>(character->SG_GetCurrentFaerieId(-1));
    ret.pushInteger(character->SG_GetFaerieLevel(faeryId, -1));
}

// 0x3b6e80 Character::_GetCharAIFlags(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes the flag word of the AI row, Structs::AIProps m_w5 (+0x14 of the row at Arrays::AITable::members + 68 *
// GetCharAIId()). GetCharAI() is that row, and the flag-bit helpers in game-character/src/g1-game-character-Character-ee9946-1.cpp
// read the same word.
void Character::_GetCharAIFlags([[maybe_unused]] const sfc::script::lua::Arguments& args,
                                sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushInteger(static_cast<int>(character->GetCharAI()->Flags));
}

// 0x3b6ec4 Character::_IsConnected(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The PlayerInfo of this character (PlayerManager::GetPlayerByCharacter(this, false) on dword_99F76C) is asked IsActive (vtable slot 23, +0x5c) and the
// bool is pushed.
void Character::_IsConnected([[maybe_unused]] const sfc::script::lua::Arguments& args,
                             sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushBoolean(dword_99F76C->GetPlayerByCharacter(character, false)->IsActive());
}

// 0x3b6f10 Character::_CanAttackFromRange(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Calls the virtual CanRangeAttack() through the primary vtable (+0x124) and pushes the bool.
void Character::_CanAttackFromRange([[maybe_unused]] const sfc::script::lua::Arguments& args,
                                    sfc::script::lua::ReturnValues& ret, void* self) {
    Character* character = static_cast<Character*>(self);
    ret.pushBoolean(character->CanRangeAttack());
}
