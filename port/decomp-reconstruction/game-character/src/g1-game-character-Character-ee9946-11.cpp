// Batch g1-game-character-Character-ee9946-11: twenty Lua static bindings of Character, registered by
// Character::createBindings (the Has*/IsMasterHostPlayer/TargetInMeleeRange queries, the timer Start/Stop/Pause/Resume
// calls, RegisterAnim, EnableSpotTargeting, SetLevel, RotateBy, SetKnockBackState, RegenHP, RegenMP and UseMana).
//
// Each binding has the Lua static signature (const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&,
// void* userData), and userData is the Character. The Hex-Rays listings name the first pointer `this`, the second `a2`
// and the third `a3`, and type them shifted by one. The assembly passes userData in the third register (r2), so the
// bodies use it as the Character. Offsets in comments are the original 32-bit ones.
//
// Redo pass (r2a-game-character-Character-ee9946-5): the Lua layer is declared (dh2/sfc/script/lua/). Argument reads go
// through ArgCount and ArgHasTag, which use Arguments::m_values (one Value per argument) and Value::m_type (the tag:
// 1 boolean, 3 number, 7 userdata). The CharAI members m_target and m_master and CharStateMachine::m_stateTime are
// public in their headers. _IsMasterHostPlayer is PARTIAL because PlayerManager::GetHostingPlayer (ledger 0x36e09c)
// is partial on its open gate. The other bodies in this file keep the status in their own comments.
//
// Redo pass (r2a-game-character-Character-ee9946-6): _SetLevel, _ResumeTimer, _PauseTimer, _StartTimer,
// _SetKnockBackState, _RotateBy, _RegenMP, _RegenHP and _UseMana are written from the Hex-Rays listings; _SetLevel and
// _RotateBy were also checked against the assembly. _SetLevel stores its level in the sheet word m_baseProps.m_w20 (CharProperties +0x58, the
// Character +0x5b8 word of the listing), which is declared in pydata-accessors/structs_records.hpp.

#include <cstddef>

#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// Number of arguments of a Lua call. The argument list holds one Value per argument (Arguments::m_values).
std::size_t ArgCount(const sfc::script::lua::Arguments& args) { return args.m_values->size(); }

// True when argument index exists and its tag (Value::m_type: 1 boolean, 3 number, 7 userdata) is tag.
bool ArgHasTag(const sfc::script::lua::Arguments& args, std::size_t index, int tag) {
    return ArgCount(args) > index && args[static_cast<unsigned int>(index)].m_type == tag;
}

}  // namespace

// 0x3b6f3c _ZN9Character10_HasMasterERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_HasMaster(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes whether the CharAI master is set: CharAI::m_master (+0x50, Character +0x418) is not null.
void Character::_HasMaster(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                           void* userData) {
    const Character* self = static_cast<Character*>(userData);
    ret.pushBoolean(self->CharAI::m_master != nullptr);
}

// 0x3b6f50 _ZN9Character10_HasTargetERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_HasTarget(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes whether the CharAI target is set: CharAI::m_target (+0x40, Character +0x408) is not null.
void Character::_HasTarget(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                           void* userData) {
    const Character* self = static_cast<Character*>(userData);
    ret.pushBoolean(self->CharAI::m_target != nullptr);
}

// 0x3b6f64 _ZN9Character17_CanAttackInMeleeERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_CanAttackInMelee(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes ItemInventory::CanMeleeAttack() on the ItemInventory base at +0x37c, as the listing calls it. No argument is read.
void Character::_CanAttackInMelee(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                                  void* userData) {
    Character* self = static_cast<Character*>(userData);
    ret.pushBoolean(self->ItemInventory::CanMeleeAttack());
}

// 0x3b6f84 _ZN9Character7_HasBowERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_HasBow(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes ItemInventory::HasBow() on the ItemInventory base at +0x37c.
void Character::_HasBow(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                        void* userData) {
    Character* self = static_cast<Character*>(userData);
    ret.pushBoolean(self->ItemInventory::HasBow());
}

// 0x3b6fa4 _ZN9Character10_HasShieldERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_HasShield(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes ItemInventory::HasShield() on the ItemInventory base at +0x37c.
void Character::_HasShield(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                           void* userData) {
    Character* self = static_cast<Character*>(userData);
    ret.pushBoolean(self->ItemInventory::HasShield());
}

// 0x3b6fc4 _ZN9Character19_IsMasterHostPlayerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_IsMasterHostPlayer(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Without a master (CharAI::m_master, +0x50, Character +0x418) false is pushed and the player manager is not read. Otherwise it pushes whether the hosting player's character
// (PlayerManager::GetHostingPlayer() on the PlayerManager global dword_99F76C, then PlayerInfo::unk_660) is the master.
void Character::_IsMasterHostPlayer(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                                    void* userData) {
    const Character* self = static_cast<Character*>(userData);
    bool isHost = false;
    if (self->CharAI::m_master != nullptr) {
        const PlayerInfo* hosting = dword_99F76C->GetHostingPlayer();
        isHost = hosting->unk_660 == self->CharAI::m_master;
    }
    ret.pushBoolean(isHost);
}

// 0x3b7020 _ZN9Character19_TargetInMeleeRangeERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_TargetInMeleeRange(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes CharAI::AI_IsInMeleeRange(m_target) on the CharAI base (+0x3c8). The listing has no null test on the target.
void Character::_TargetInMeleeRange(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                                    void* userData) {
    Character* self = static_cast<Character*>(userData);
    ret.pushBoolean(self->CharAI::AI_IsInMeleeRange(self->CharAI::m_target));
}

// 0x3b7044 _ZN9Character9_HasAggroERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_HasAggro(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes CharAI::AI_HasAggro() on the CharAI base at +0x3c8.
void Character::_HasAggro(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                          void* userData) {
    Character* self = static_cast<Character*>(userData);
    ret.pushBoolean(self->CharAI::AI_HasAggro());
}

// 0x3b7064 _ZN9Character10_StopTimerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_StopTimer(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] is a number (tag 3). The timer id is getUInteger(args[0]), and the call is
// CharTimers::TMR_Stop(id) on the CharTimers base at +0x3b4. Nothing is pushed.
void Character::_StopTimer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                           void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 3)) {
        self->CharTimers::TMR_Stop(args[0].getUInteger());
    }
}

// 0x3b70d8 _ZN9Character13_RegisterAnimERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_RegisterAnim(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] is a number (tag 3). The animation dictionary id is (int)getNumber(args[0]),
// passed to CharAnimator::ANIM_AddAnimDictToSet on the CharAnimator base at +0x49c. Nothing is pushed.
void Character::_RegisterAnim(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                              void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 3)) {
        self->CharAnimator::ANIM_AddAnimDictToSet(static_cast<int>(args[0].getNumber()));
    }
}

// 0x3b7144 _ZN9Character20_EnableSpotTargetingERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_EnableSpotTargeting(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] is a boolean (tag 1); enable = getBool(args[0]). Otherwise nothing is written.
//  - !enable, or (count > 1, args[1] is a number and getUInteger(args[1]) < Arrays::AnimatedEffectTable::size):
//    !enable: m_spotTargetPending (+0x14c8) = 0 and m_spotTargetFXId (+0x14ca, int16) = -1.
//    enable: m_spotTargetPending = 1 and m_spotTargetFXId = (int16)getUInteger(args[1]). The target position is the
//    position of args[2] when count > 2 and args[2] is userdata (tag 7): its GameObject m_position (+0x160). Otherwise
//    it is this Character's m_position. m_spotTargetPos (+0x14b0) and m_spotTargetValidPos (+0x14bc) both take it.
//  - enable with the size test failing: nothing is written.
// The listing's int return value (5312, 5300 or the Arguments pointer) is not a Lua result; the callback is void.
void Character::_EnableSpotTargeting(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                                     void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, 1)) {
        return;
    }
    const bool enable = args[0].getBool();
    if (!enable || (ArgCount(args) > 1 && ArgHasTag(args, 1, 3) &&
                    args[1].getUInteger() < Arrays::AnimatedEffectTable::size)) {
        if (!enable) {
            self->m_spotTargetPending = 0;
            self->m_spotTargetFXId = -1;
        } else {
            self->m_spotTargetPending = 1;
            self->m_spotTargetFXId = static_cast<std::int16_t>(args[1].getUInteger());
            if (ArgCount(args) > 2 && ArgHasTag(args, 2, 7)) {
                const GameObject* source = static_cast<const GameObject*>(args[2].getUserData());
                self->m_spotTargetPos = source->m_position;
                self->m_spotTargetValidPos = source->m_position;
            } else {
                self->m_spotTargetPos = self->m_position;
                self->m_spotTargetValidPos = self->m_position;
            }
        }
    }
}

// 0x3b73a4 _ZN9Character9_SetLevelERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_SetLevel(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a number (tag 3). maxLevel = getConstant("CharacterDesign", "MaxLevelDVeryHard")
// << 8, read from ApplicationGetPyDataConstants() (dh2/global/charai_ai.hpp). The level is maxLevel when maxLevel is
// below (int)value, and (int)getNumber(args[0]) otherwise. The listing reads the constant twice on the clamped path;
// both reads return the same constant, so it is read once here.
// The level is stored at Character +0x5b8, which is CharProperties +0x58. That is the sheet word m_baseProps.m_w20
// (m_baseProps at CharProperties +0x08, Structs::CharacterProperties::m_w20 at sheet +0x50). Its meaning as the level
// is not confirmed by a reader in this tree. Then CharProperties::RecalcProperties(true) runs on the CharProperties base
// (+0x560), followed by RegenHP(-1) and RegenMP(-1). The listing returns RegenMP's result; the void binding drops it.
void Character::_SetLevel(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                          void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, 3)) {
        return;
    }
    const int maxLevel = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "MaxLevelDVeryHard") << 8;
    const int value = static_cast<int>(args[0].getNumber());
    const int level = (maxLevel < value) ? maxLevel : static_cast<int>(args[0].getNumber());
    self->CharProperties::m_baseProps.Level = level;
    self->CharProperties::RecalcProperties(true);
    self->RegenHP(-1);
    self->RegenMP(-1);
}

// 0x3b74a8 _ZN9Character12_ResumeTimerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_ResumeTimer(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a number (tag 3). CharTimers::TMR_Resume(getUInteger(args[0])) on the CharTimers
// base (+0x3b4, 0x3db2b8). Nothing is pushed.
void Character::_ResumeTimer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                             void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 3)) {
        self->CharTimers::TMR_Resume(args[0].getUInteger());
    }
}

// 0x3b751c _ZN9Character11_PauseTimerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_PauseTimer(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a number (tag 3). CharTimers::TMR_Pause(getUInteger(args[0])) on the CharTimers
// base (+0x3b4, 0x3db298). Nothing is pushed.
void Character::_PauseTimer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                            void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 3)) {
        self->CharTimers::TMR_Pause(args[0].getUInteger());
    }
}

// 0x3b7590 _ZN9Character11_StartTimerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_StartTimer(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a number (tag 3). repeat is -1 when the argument count is above 1 and getBool(args[1])
// holds (args[1] is not type-checked), and 0 otherwise. id = CharTimers::TMR_Start(getUInteger(args[0]), repeat, 53, nullptr)
// on the CharTimers base (0x3dbe24). When id is not -1 it is pushed with ret.pushInteger.
void Character::_StartTimer(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                            void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (!ArgHasTag(args, 0, 3)) {
        return;
    }
    const int repeat = (ArgCount(args) > 1 && args[1].getBool()) ? -1 : 0;
    const int id = self->CharTimers::TMR_Start(args[0].getUInteger(), repeat, 53, nullptr);
    if (id != -1) {
        ret.pushInteger(id);
    }
}

// 0x3b7680 _ZN9Character18_SetKnockBackStateERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_SetKnockBackState(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The flag is true when the argument count is 0 or args[0] is not a boolean (tag 1), and getBool(args[0]) otherwise.
// CharStateMachine::SM_SetKnockBackState(flag, nullptr, false) on the CharStateMachine base (+0x4fc, 0x3c5ea0). The
// listing's int result is dropped by the void binding.
void Character::_SetKnockBackState(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                                   void* userData) {
    Character* self = static_cast<Character*>(userData);
    bool strong = true;
    if (ArgHasTag(args, 0, 1)) {
        strong = args[0].getBool();
    }
    self->CharStateMachine::SM_SetKnockBackState(strong, nullptr, false);
}

// 0x3b7704 _ZN9Character9_RotateByERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_RotateBy(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a number (tag 3). The angle is getNumber(args[0]) times kCharAIRadPerDegree
// (float 0x3c8efa35, pi/180; checked in the assembly at 0x3b7704). v2Controller::Cmd_RotateBy(angle) runs on the
// controller at v2Controllable::m_controller (+0x378, 0x405204).
void Character::_RotateBy(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                          void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 3)) {
        self->v2Controllable::m_controller->Cmd_RotateBy(args[0].getNumber() * kCharAIRadPerDegree);
    }
}

// 0x3b7774 _ZN9Character8_RegenMPERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_RegenMP(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a number (tag 3). Character::RegenMP((int)getNumber(args[0])) (0x3bdbb8).
void Character::_RegenMP(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                         void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 3)) {
        self->RegenMP(static_cast<int>(args[0].getNumber()));
    }
}

// 0x3b77ec _ZN9Character8_RegenHPERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_RegenHP(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a number (tag 3). Character::RegenHP((int)getNumber(args[0])) (0x3bdca4).
void Character::_RegenHP(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                         void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 3)) {
        self->RegenHP(static_cast<int>(args[0].getNumber()));
    }
}

// 0x3b7864 _ZN9Character8_UseManaERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Character::_UseMana(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Gate: argument count != 0 and args[0] a number (tag 3). used = Character::UseMana((int)getNumber(args[0])) (0x3bdef4),
// pushed with ret.pushBoolean. Nothing is pushed when the gate fails.
void Character::_UseMana(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* userData) {
    Character* self = static_cast<Character*>(userData);
    if (ArgHasTag(args, 0, 3)) {
        ret.pushBoolean(self->UseMana(static_cast<int>(args[0].getNumber())));
    }
}
