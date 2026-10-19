// Batch g1-game-character-AISExternal-528ac2-0 (part 1 of 2 of AISExternal): the AI hook forwarders that run
// the external Lua script of the same name. Declarations and layout come from dh2/AISExternal.hpp.
//
// Offsets in comments are the original 32-bit offsets inside AISExternal (this). The callback mask word is
// CharAIScript::unk_b8 at +0xb8. The range hooks run their Lua function only when their bit is set in that word;
// AISExternal::InitVCB (part 2 of the batch) sets the bits. The hooks without a bit call Lua every time.
// Each Lua call goes through the non-virtual LuaScript::Call(const char*), as in the original.

#include <cstdint>

#include "dh2/AISDefault.hpp"
#include "dh2/AISExternal.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/LuaScript.hpp"

namespace {

// Callback mask bits at +0xb8, one per gated hook. Each bit is named after the Lua hook it gates; the values
// are the TST immediates of the original hook bodies.
constexpr uint32_t kMaskUpdate = 0x001;               // OnUpdate
constexpr uint32_t kMaskTargetOutOfRange = 0x004;     // OnTargetOutOfRange
constexpr uint32_t kMaskTargetInRangedRange = 0x008;  // OnTargetInRangedRange
constexpr uint32_t kMaskTargetInCloseRange = 0x010;   // OnTargetInCloseRange
constexpr uint32_t kMaskTargetInMeleeRange = 0x020;   // OnTargetInMeleeRange
constexpr uint32_t kMaskMasterOutOfRange = 0x040;     // OnMasterOutOfRange
constexpr uint32_t kMaskMasterInRangedRange = 0x080;  // OnMasterInRangedRange
constexpr uint32_t kMaskMasterInCloseRange = 0x100;   // OnMasterInCloseRange
constexpr uint32_t kMaskMasterInMeleeRange = 0x200;   // OnMasterInMeleeRange

}  // namespace

// 0x3dccd0 _ZN11AISExternal11OnEndOfAnimEv
void AISExternal::OnEndOfAnim() {
    AISDefault::OnEndOfAnim();
    LuaScript::Call("OnEndOfAnim");
}

// 0x3dccf4 _ZN11AISExternal20OnMasterInMeleeRangeEv
void AISExternal::OnMasterInMeleeRange() {
    if ((unk_b8 & kMaskMasterInMeleeRange) != 0) {  // +0xb8
        LuaScript::Call("OnMasterInMeleeRange");
    }
}

// 0x3dcd10 _ZN11AISExternal20OnMasterInCloseRangeEv
void AISExternal::OnMasterInCloseRange() {
    if ((unk_b8 & kMaskMasterInCloseRange) != 0) {  // +0xb8
        LuaScript::Call("OnMasterInCloseRange");
    }
}

// 0x3dcd2c _ZN11AISExternal21OnMasterInRangedRangeEv
void AISExternal::OnMasterInRangedRange() {
    if ((unk_b8 & kMaskMasterInRangedRange) != 0) {  // +0xb8
        LuaScript::Call("OnMasterInRangedRange");
    }
}

// 0x3dcd48 _ZN11AISExternal18OnMasterOutOfRangeEv
void AISExternal::OnMasterOutOfRange() {
    if ((unk_b8 & kMaskMasterOutOfRange) != 0) {  // +0xb8
        LuaScript::Call("OnMasterOutOfRange");
    }
}

// 0x3dcd64 _ZN11AISExternal15OnMasterInSightEv
void AISExternal::OnMasterInSight() {
    LuaScript::Call("OnMasterInSight");
}

// 0x3dcd74 _ZN11AISExternal18OnMasterOutOfSightEv
void AISExternal::OnMasterOutOfSight() {
    LuaScript::Call("OnMasterOutOfSight");
}

// 0x3dcd84 _ZN11AISExternal12OnMasterDiedEv
void AISExternal::OnMasterDied() {
    LuaScript::Call("OnMasterDied");
}

// 0x3dcd94 _ZN11AISExternal20OnTargetInMeleeRangeEv
// Hex-Rays types this as returning LuaScript*: the tail call to LuaScript::Call leaves r0 as it found it, and
// the other path returns this. Every base declares the slot void, so no value is returned here.
void AISExternal::OnTargetInMeleeRange() {
    if ((unk_b8 & kMaskTargetInMeleeRange) != 0) {  // +0xb8
        LuaScript::Call("OnTargetInMeleeRange");
    }
}

// 0x3dcdb0 _ZN11AISExternal20OnTargetInCloseRangeEv
void AISExternal::OnTargetInCloseRange() {
    if ((unk_b8 & kMaskTargetInCloseRange) != 0) {  // +0xb8
        LuaScript::Call("OnTargetInCloseRange");
    }
}

// 0x3dcdcc _ZN11AISExternal21OnTargetInRangedRangeEv
void AISExternal::OnTargetInRangedRange() {
    if ((unk_b8 & kMaskTargetInRangedRange) != 0) {  // +0xb8
        LuaScript::Call("OnTargetInRangedRange");
    }
}

// 0x3dcde8 _ZN11AISExternal18OnTargetOutOfRangeEv
void AISExternal::OnTargetOutOfRange() {
    if ((unk_b8 & kMaskTargetOutOfRange) != 0) {  // +0xb8
        LuaScript::Call("OnTargetOutOfRange");
    }
}

// 0x3dce04 _ZN11AISExternal15OnTargetInSightEv
void AISExternal::OnTargetInSight() {
    LuaScript::Call("OnTargetInSight");
}

// 0x3dce14 _ZN11AISExternal18OnTargetOutOfSightEv
void AISExternal::OnTargetOutOfSight() {
    LuaScript::Call("OnTargetOutOfSight");
}

// 0x3dce24 _ZN11AISExternal12OnTargetDiedEv
void AISExternal::OnTargetDied() {
    LuaScript::Call("OnTargetDied");
}

// 0x3dce34 _ZN11AISExternal11OnTerminateEv
void AISExternal::OnTerminate() {
    LuaScript::Call("OnTerminate");
}

// 0x3dce44 _ZN11AISExternal11OnInitFinalEv
void AISExternal::OnInitFinal() {
    LuaScript::Call("OnInitFinal");
}

// 0x3dce54 _ZN11AISExternal10OnInitPostEv
void AISExternal::OnInitPost() {
    LuaScript::Call("OnInitPost");
}

// 0x3dce64 _ZN11AISExternal8OnUpdateEv
// Hex-Rays types this as int because the last call is a tail branch (B) to CharAIScript::CallStateConditions,
// which is void in the binary. The slot is void, so the reconstruction is void as well.
void AISExternal::OnUpdate() {
    AISDefault::OnUpdate();
    if ((unk_b8 & kMaskUpdate) != 0) {  // +0xb8
        LuaScript::Call("OnUpdate");
    }
    CharAIScript::CallStateUpdate();
    CharAIScript::CallStateConditions();
}

// 0x3dcea4 _ZN11AISExternal6OnInitEv
void AISExternal::OnInit() {
    AISDefault::OnInit();
    LuaScript::Call("OnInit");
}
