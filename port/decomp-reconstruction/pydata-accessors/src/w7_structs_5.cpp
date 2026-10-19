// Structs::X destructors, finalize and read for slice structs_5 (hand-written from the pseudocode; see
// include/pydata-accessors/w7_structs_5.hpp). Layout comments give the original 32-bit offsets.
#include "pydata-accessors/w7_structs_5.hpp"

#include <cstddef>
#include <cstring>

#include "pydata-accessors/array_element.hpp"
#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/struct_strides.hpp"
#include "pydata-accessors/structs_records.hpp"

// Element tables (ItemPowerEntryList, AnimFXTpl, DialogStepList, ConditionalDialog, CharTemplate,
// StatAutoAssignTargetList, ClassFuncList, AnimTpl, AIFactions): every table is built, read and destroyed through
// pydata::NewElementTable / ReadElementTable / DeleteElementTable (element_table.hpp). The elements are host objects
// constructed in place, so the vptr is real and the pointer words that the listing zeroes after the vptr store
// (AnimFX +0x2c, DialogCondition +0xc) are the members' `= nullptr` defaults. The original 32-bit element stride is
// Structs::ListingStride::X (struct_strides.hpp), written to the stride word of the block only.

namespace {

// Original string read: free the old buffer, allocate length + 1 (hint 1), read `length` raw bytes,
// then NUL-terminate. The readStringEx 4th argument is 0 (the value the script_cmd string reads use).
void ReadBuffer(IStreamBase* stream, char*& buf, std::uint32_t length) {
    if (buf != nullptr) CustomFree(buf);
    buf = static_cast<char*>(::operator new[](static_cast<std::size_t>(length) + 1, kPydataBufferHint));
    StreamReader::readStringEx(stream, buf, length);
    buf[length] = '\0';
}

// Original int32 table read: free the old array, allocate 4 * count bytes, read count int32 words.
void ReadWords(IStreamBase* stream, void*& words, std::uint32_t count) {
    if (words != nullptr) CustomFree(words);
    words = ::operator new[](4 * static_cast<std::size_t>(count), kPydataBufferHint);
    auto* values = static_cast<std::int32_t*>(words);
    for (std::uint32_t i = 0; i < count; ++i) {
        values[i] = StreamReader::readAs<std::int32_t>(stream);
    }
}

}  // namespace

namespace Structs {

// 0x4d9abc _ZN7Structs18ItemPowerEntryListD1Ev
// 0x4d9b58 _ZN7Structs18ItemPowerEntryListD2Ev
ItemPowerEntryList::~ItemPowerEntryList() {
    pydata::DeleteElementTable<ItemPowerEntry>(list_entries);  // +0x8, listing stride 12
}

// 0x4d9b3c _ZN7Structs18ItemPowerEntryListD0Ev
void DeletingDestructor(ItemPowerEntryList* self) {
    self->ItemPowerEntryList::~ItemPowerEntryList();
    CustomFree(self);
}

// 0x4d9a54 _ZN7Structs18ItemPowerEntryList8finalizeEv
void ItemPowerEntryList::finalize() {
    if (list_entries != nullptr) {
        pydata::DeleteElementTable<ItemPowerEntry>(list_entries);
        list_entriesSize = 0;
        list_entries = nullptr;
    }
}

// 0x4dc8fc _ZN7Structs18ItemPowerEntryList4readEP11IStreamBase
void ItemPowerEntryList::read(IStreamBase* stream) {
    list_entriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    pydata::DeleteElementTable<ItemPowerEntry>(list_entries);
    list_entries = pydata::NewAndReadElementTable<ItemPowerEntry>(ListingStride::ItemPowerEntry, list_entriesSize, stream);  // +0x8
}

// 0x4d9c00 _ZN7Structs11TriggerTrapD1Ev
// 0x4d9c5c _ZN7Structs11TriggerTrapD2Ev
TriggerTrap::~TriggerTrap() {
    if (Script != nullptr) CustomFree(Script);  // +0x10
}

// 0x4d9c40 _ZN7Structs11TriggerTrapD0Ev
void DeletingDestructor(TriggerTrap* self) {
    self->TriggerTrap::~TriggerTrap();
    CustomFree(self);
}

// 0x4d9bd8 _ZN7Structs11TriggerTrap8finalizeEv
void TriggerTrap::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
}

// 0x4fd21c _ZN7Structs11TriggerTrap4readEP11IStreamBase
void TriggerTrap::read(IStreamBase* stream) {
    Damage = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    HurtChance = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    ReadBuffer(stream, Script, ScriptSize);  // +0x10, length +0xc
    Sound = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x18
}

// 0x4d9cc4 _ZN7Structs13TriggerObjectD1Ev
// 0x4d9d20 _ZN7Structs13TriggerObjectD2Ev
TriggerObject::~TriggerObject() {
    if (Script != nullptr) CustomFree(Script);  // +0xc
}

// 0x4d9d04 _ZN7Structs13TriggerObjectD0Ev
void DeletingDestructor(TriggerObject* self) {
    self->TriggerObject::~TriggerObject();
    CustomFree(self);
}

// 0x4d9c9c _ZN7Structs13TriggerObject8finalizeEv
void TriggerObject::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
}

// 0x4fd448 _ZN7Structs13TriggerObject4readEP11IStreamBase
void TriggerObject::read(IStreamBase* stream) {
    InteractionType = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    ReadBuffer(stream, Script, ScriptSize);  // +0xc, length +0x8
    Sound = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4d9d88 _ZN7Structs9TimerTrapD1Ev
// 0x4d9de4 _ZN7Structs9TimerTrapD2Ev
TimerTrap::~TimerTrap() {
    if (Script != nullptr) CustomFree(Script);  // +0x14
}

// 0x4d9dc8 _ZN7Structs9TimerTrapD0Ev
void DeletingDestructor(TimerTrap* self) {
    self->TimerTrap::~TimerTrap();
    CustomFree(self);
}

// 0x4d9d60 _ZN7Structs9TimerTrap8finalizeEv
void TimerTrap::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
}

// 0x4fd618 _ZN7Structs9TimerTrap4readEP11IStreamBase
void TimerTrap::read(IStreamBase* stream) {
    Damage = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Delay = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    HurtChance = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    ReadBuffer(stream, Script, ScriptSize);  // +0x14, length +0x10
    Sound = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
}

// 0x4d9e4c _ZN7Structs14ProjectileTrapD1Ev
// 0x4d9ea8 _ZN7Structs14ProjectileTrapD2Ev
ProjectileTrap::~ProjectileTrap() {
    if (Script != nullptr) CustomFree(Script);  // +0x1c
}

// 0x4d9e8c _ZN7Structs14ProjectileTrapD0Ev
void DeletingDestructor(ProjectileTrap* self) {
    self->ProjectileTrap::~ProjectileTrap();
    CustomFree(self);
}

// 0x4d9e24 _ZN7Structs14ProjectileTrap8finalizeEv
void ProjectileTrap::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
}

// 0x4fd8a0 _ZN7Structs14ProjectileTrap4readEP11IStreamBase
void ProjectileTrap::read(IStreamBase* stream) {
    Damage = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Delay = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    HurtChance = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    IsActive = StreamReader::readAs<bool>(stream);  // +0x10
    Projectile = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x18
    ReadBuffer(stream, Script, ScriptSize);  // +0x1c, length +0x18
    Sound = StreamReader::readAs<std::int32_t>(stream);  // +0x20
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x24
}

// 0x4d9f10 _ZN7Structs17OpenableContainerD1Ev
// 0x4d9f6c _ZN7Structs17OpenableContainerD2Ev
OpenableContainer::~OpenableContainer() {
    if (Script != nullptr) CustomFree(Script);  // +0x18
}

// 0x4d9f50 _ZN7Structs17OpenableContainerD0Ev
void DeletingDestructor(OpenableContainer* self) {
    self->OpenableContainer::~OpenableContainer();
    CustomFree(self);
}

// 0x4d9ee8 _ZN7Structs17OpenableContainer8finalizeEv
void OpenableContainer::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
}

// 0x4fdb90 _ZN7Structs17OpenableContainer4readEP11IStreamBase
void OpenableContainer::read(IStreamBase* stream) {
    Effect = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    InteractSound = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    KeepSolid = StreamReader::readAs<bool>(stream);  // +0xc
    Loot = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x14
    ReadBuffer(stream, Script, ScriptSize);  // +0x18, length +0x14
    TrapChance = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    TrapType = StreamReader::readAs<std::int32_t>(stream);  // +0x20
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x24
}

// 0x4d9fd4 _ZN7Structs13ExplosiveTrapD1Ev
// 0x4da030 _ZN7Structs13ExplosiveTrapD2Ev
ExplosiveTrap::~ExplosiveTrap() {
    if (Script != nullptr) CustomFree(Script);  // +0x10
}

// 0x4da014 _ZN7Structs13ExplosiveTrapD0Ev
void DeletingDestructor(ExplosiveTrap* self) {
    self->ExplosiveTrap::~ExplosiveTrap();
    CustomFree(self);
}

// 0x4d9fac _ZN7Structs13ExplosiveTrap8finalizeEv
void ExplosiveTrap::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
}

// 0x4fde80 _ZN7Structs13ExplosiveTrap4readEP11IStreamBase
void ExplosiveTrap::read(IStreamBase* stream) {
    Damage = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    Effect = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    ReadBuffer(stream, Script, ScriptSize);  // +0x10, length +0xc
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4da098 _ZN7Structs4DoorD1Ev
// 0x4da0f4 _ZN7Structs4DoorD2Ev
Door::~Door() {
    if (Script != nullptr) CustomFree(Script);  // +0x8
}

// 0x4da0d8 _ZN7Structs4DoorD0Ev
void DeletingDestructor(Door* self) {
    self->Door::~Door();
    CustomFree(self);
}

// 0x4da070 _ZN7Structs4Door8finalizeEv
void Door::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
}

// 0x4fe050 _ZN7Structs4Door4readEP11IStreamBase
void Door::read(IStreamBase* stream) {
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    ReadBuffer(stream, Script, ScriptSize);  // +0x8, length +0x4
    SoundClose = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    SoundOpen = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4da15c _ZN7Structs21DestructibleContainerD1Ev
// 0x4da1b8 _ZN7Structs21DestructibleContainerD2Ev
DestructibleContainer::~DestructibleContainer() {
    if (Script != nullptr) CustomFree(Script);  // +0x30
}

// 0x4da19c _ZN7Structs21DestructibleContainerD0Ev
void DeletingDestructor(DestructibleContainer* self) {
    self->DestructibleContainer::~DestructibleContainer();
    CustomFree(self);
}

// 0x4da134 _ZN7Structs21DestructibleContainer8finalizeEv
void DestructibleContainer::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
}

// 0x4fe220 _ZN7Structs21DestructibleContainer4readEP11IStreamBase
void DestructibleContainer::read(IStreamBase* stream) {
    AirResist = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    DamageReduction = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    EarthResist = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Effect = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    FireResist = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    HitPoints = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    InteractSound = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    KeepSolid = StreamReader::readAs<bool>(stream);  // +0x20
    LightningResist = StreamReader::readAs<std::int32_t>(stream);  // +0x24
    Loot = StreamReader::readAs<std::int32_t>(stream);  // +0x28
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x2c
    ReadBuffer(stream, Script, ScriptSize);  // +0x30, length +0x2c
    TrapChance = StreamReader::readAs<std::int32_t>(stream);  // +0x34
    TrapType = StreamReader::readAs<std::int32_t>(stream);  // +0x38
    Visual = StreamReader::readAs<std::int32_t>(stream);  // +0x3c
    WaterResist = StreamReader::readAs<std::int32_t>(stream);  // +0x40
}

// 0x4da220 _ZN7Structs14FaerySpellListD1Ev
// 0x4da27c _ZN7Structs14FaerySpellListD2Ev
FaerySpellList::~FaerySpellList() {
    if (List != nullptr) CustomFree(List);  // +0x8
}

// 0x4da260 _ZN7Structs14FaerySpellListD0Ev
void DeletingDestructor(FaerySpellList* self) {
    self->FaerySpellList::~FaerySpellList();
    CustomFree(self);
}

// 0x4da1f8 _ZN7Structs14FaerySpellList8finalizeEv
void FaerySpellList::finalize() {
    if (List != nullptr) {
        CustomFree(List);
        ListSize = 0;
        List = nullptr;
    }
}

// 0x4eaa78 _ZN7Structs14FaerySpellList4readEP11IStreamBase
void FaerySpellList::read(IStreamBase* stream) {
    ListSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    ReadWords(stream, List, ListSize);  // +0x8
}

// 0x4da4a4 _ZN7Structs14FootstepEffectD1Ev
// 0x4da520 _ZN7Structs14FootstepEffectD2Ev
FootstepEffect::~FootstepEffect() {
    if (Floortype != nullptr) CustomFree(Floortype);  // +0xc
    if (RunSound != nullptr) CustomFree(RunSound);  // +0x14
    if (WalkSound != nullptr) CustomFree(WalkSound);  // +0x1c
}

// 0x4da504 _ZN7Structs14FootstepEffectD0Ev
void DeletingDestructor(FootstepEffect* self) {
    self->FootstepEffect::~FootstepEffect();
    CustomFree(self);
}

// 0x4da444 _ZN7Structs14FootstepEffect8finalizeEv
void FootstepEffect::finalize() {
    if (Floortype != nullptr) {
        CustomFree(Floortype);
        FloortypeSize = 0;
        Floortype = nullptr;
    }
    if (RunSound != nullptr) {
        CustomFree(RunSound);
        RunSoundSize = 0;
        RunSound = nullptr;
    }
    if (WalkSound != nullptr) {
        CustomFree(WalkSound);
        WalkSoundSize = 0;
        WalkSound = nullptr;
    }
}

// 0x506660 _ZN7Structs14FootstepEffect4readEP11IStreamBase
void FootstepEffect::read(IStreamBase* stream) {
    Effect = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    FloortypeSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    ReadBuffer(stream, Floortype, FloortypeSize);  // +0xc, length +0x8
    RunSoundSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    ReadWords(stream, RunSound, RunSoundSize);  // +0x14
    WalkSoundSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x18
    ReadWords(stream, WalkSound, WalkSoundSize);  // +0x1c
}

// 0x4da72c _ZN7Structs6AnimFXD1Ev
// 0x4da788 _ZN7Structs6AnimFXD2Ev
AnimFX::~AnimFX() {
    if (SubObject != nullptr) CustomFree(SubObject);  // +0x2c
}

// 0x4da76c _ZN7Structs6AnimFXD0Ev
void DeletingDestructor(AnimFX* self) {
    self->AnimFX::~AnimFX();
    CustomFree(self);
}

// 0x4da704 _ZN7Structs6AnimFX8finalizeEv
void AnimFX::finalize() {
    if (SubObject != nullptr) {
        CustomFree(SubObject);
        SubObjectSize = 0;
        SubObject = nullptr;
    }
}

// 0x506990 _ZN7Structs6AnimFX4readEP11IStreamBase
void AnimFX::read(IStreamBase* stream) {
    File = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    ForceCancel = StreamReader::readAs<bool>(stream);  // +0x8
    Loop = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    OrientOnce = StreamReader::readAs<bool>(stream);  // +0x10
    OrientWithAnchor = StreamReader::readAs<bool>(stream);  // +0x11
    PlayTime = StreamReader::readAs<std::int32_t>(stream);  // +0x14
    PoolSize = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    Redir = StreamReader::readAs<std::int32_t>(stream);  // +0x1c
    ScaleWithAnchor = StreamReader::readAs<bool>(stream);  // +0x20
    SelfIllum = StreamReader::readAs<bool>(stream);  // +0x21
    StreamReader::readAs<float>(stream, &Speed);  // +0x24
    SubObjectSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x28
    ReadBuffer(stream, SubObject, SubObjectSize);  // +0x2c, length +0x28
}

// 0x4da5e8 _ZN7Structs9AnimFXTplD1Ev
// 0x4da684 _ZN7Structs9AnimFXTplD2Ev
AnimFXTpl::~AnimFXTpl() {
    pydata::DeleteElementTable<AnimFX>(Steps);  // +0x10, listing stride 48
}

// 0x4da668 _ZN7Structs9AnimFXTplD0Ev
void DeletingDestructor(AnimFXTpl* self) {
    self->AnimFXTpl::~AnimFXTpl();
    CustomFree(self);
}

// 0x4da580 _ZN7Structs9AnimFXTpl8finalizeEv
void AnimFXTpl::finalize() {
    if (Steps != nullptr) {
        pydata::DeleteElementTable<AnimFX>(Steps);
        StepsSize = 0;
        Steps = nullptr;
    }
}

// 0x4ed73c _ZN7Structs9AnimFXTpl4readEP11IStreamBase
// The decompiler's readAs calls for m_w1 carry a third argument that is a register residue, not a
// readAs parameter; it is dropped here.
void AnimFXTpl::read(IStreamBase* stream) {
    ForceCache = StreamReader::readAs<bool>(stream);  // +0x4
    LoopAFX = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    StepsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    pydata::DeleteElementTable<AnimFX>(Steps);
    Steps = pydata::NewAndReadElementTable<AnimFX>(ListingStride::AnimFX, StepsSize, stream);  // +0x10, zeroes element +0x2c (m_w11)
    Type = StreamReader::readAs<std::int32_t>(stream);  // +0x14
}

// 0x4da830 _ZN7Structs14DialogStepListD1Ev
// 0x4da8cc _ZN7Structs14DialogStepListD2Ev
DialogStepList::~DialogStepList() {
    pydata::DeleteElementTable<DialogStep>(steps);  // +0x8, listing stride 20
}

// 0x4da8b0 _ZN7Structs14DialogStepListD0Ev
void DeletingDestructor(DialogStepList* self) {
    self->DialogStepList::~DialogStepList();
    CustomFree(self);
}

// 0x4da7c8 _ZN7Structs14DialogStepList8finalizeEv
void DialogStepList::finalize() {
    if (steps != nullptr) {
        pydata::DeleteElementTable<DialogStep>(steps);
        stepsSize = 0;
        steps = nullptr;
    }
}

// 0x4dca68 _ZN7Structs14DialogStepList4readEP11IStreamBase
void DialogStepList::read(IStreamBase* stream) {
    stepsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    pydata::DeleteElementTable<DialogStep>(steps);
    steps = pydata::NewAndReadElementTable<DialogStep>(ListingStride::DialogStep, stepsSize, stream);  // +0x8
}

// 0x4da9b0 _ZN7Structs17ConditionalDialogD1Ev
// 0x4daa48 _ZN7Structs17ConditionalDialogD2Ev
ConditionalDialog::~ConditionalDialog() {
    pydata::DeleteElementTable<DialogCondition>(List);  // +0x8, listing stride 16
}

// 0x4daa2c _ZN7Structs17ConditionalDialogD0Ev
void DeletingDestructor(ConditionalDialog* self) {
    self->ConditionalDialog::~ConditionalDialog();
    CustomFree(self);
}

// 0x4da94c _ZN7Structs17ConditionalDialog8finalizeEv
void ConditionalDialog::finalize() {
    if (List != nullptr) {
        pydata::DeleteElementTable<DialogCondition>(List);
        ListSize = 0;
        List = nullptr;
    }
}

// 0x4dcbd4 _ZN7Structs17ConditionalDialog4readEP11IStreamBase
void ConditionalDialog::read(IStreamBase* stream) {
    ListSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    pydata::DeleteElementTable<DialogCondition>(List);
    List = pydata::NewAndReadElementTable<DialogCondition>(ListingStride::DialogCondition, ListSize, stream);  // +0x8, zeroes element +0xc (m_w3)
}

// 0x4daaec _ZN7Structs15DialogConditionD1Ev
// 0x4dab48 _ZN7Structs15DialogConditionD2Ev
DialogCondition::~DialogCondition() {
    if (Script != nullptr) CustomFree(Script);  // +0xc
}

// 0x4dab2c _ZN7Structs15DialogConditionD0Ev
void DeletingDestructor(DialogCondition* self) {
    self->DialogCondition::~DialogCondition();
    CustomFree(self);
}

// 0x4daac4 _ZN7Structs15DialogCondition8finalizeEv
void DialogCondition::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);
        ScriptSize = 0;
        Script = nullptr;
    }
}

// 0x506cb0 _ZN7Structs15DialogCondition4readEP11IStreamBase
void DialogCondition::read(IStreamBase* stream) {
    Condition = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    ReadBuffer(stream, Script, ScriptSize);  // +0xc, length +0x8
}

// 0x4dabb0 _ZN7Structs11DialogActorD1Ev
// 0x4dac0c _ZN7Structs11DialogActorD2Ev
DialogActor::~DialogActor() {
    if (FrameLabel != nullptr) CustomFree(FrameLabel);  // +0xc
}

// 0x4dabf0 _ZN7Structs11DialogActorD0Ev
void DeletingDestructor(DialogActor* self) {
    self->DialogActor::~DialogActor();
    CustomFree(self);
}

// 0x4dab88 _ZN7Structs11DialogActor8finalizeEv
void DialogActor::finalize() {
    if (FrameLabel != nullptr) {
        CustomFree(FrameLabel);
        FrameLabelSize = 0;
        FrameLabel = nullptr;
    }
}

// 0x506dc8 _ZN7Structs11DialogActor4readEP11IStreamBase
void DialogActor::read(IStreamBase* stream) {
    FrameID = StreamReader::readAs<std::int32_t>(stream);  // +0x4
    FrameLabelSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    ReadBuffer(stream, FrameLabel, FrameLabelSize);  // +0xc, length +0x8
    Name = StreamReader::readAs<std::int32_t>(stream);  // +0x10
}

// 0x4dac74 _ZN7Structs11ColladaFileD1Ev
// 0x4dacd0 _ZN7Structs11ColladaFileD2Ev
ColladaFile::~ColladaFile() {
    if (Name != nullptr) CustomFree(Name);  // +0x8
}

// 0x4dacb4 _ZN7Structs11ColladaFileD0Ev
void DeletingDestructor(ColladaFile* self) {
    self->ColladaFile::~ColladaFile();
    CustomFree(self);
}

// 0x4dac4c _ZN7Structs11ColladaFile8finalizeEv
void ColladaFile::finalize() {
    if (Name != nullptr) {
        CustomFree(Name);
        NameSize = 0;
        Name = nullptr;
    }
}

// 0x4dc424 _ZN7Structs11ColladaFile4readEP11IStreamBase
// partial: the original returns the bool result of readStringEx. The read here is void and the readStringEx
// stub returns void, so that result is not modelled.
void ColladaFile::read(IStreamBase* stream) {
    NameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    ReadBuffer(stream, Name, NameSize);  // +0x8, length +0x4
}

// 0x4dad74 _ZN7Structs12CharTemplateD1Ev
// 0x4dae0c _ZN7Structs12CharTemplateD2Ev
CharTemplate::~CharTemplate() {
    pydata::DeleteElementTable<CharInfoName>(CharInfo);  // +0x8, stride 8
}

// 0x4dadf0 _ZN7Structs12CharTemplateD0Ev
void DeletingDestructor(CharTemplate* self) {
    self->CharTemplate::~CharTemplate();
    CustomFree(self);
}

// 0x4dad10 _ZN7Structs12CharTemplate8finalizeEv
void CharTemplate::finalize() {
    if (CharInfo != nullptr) {
        pydata::DeleteElementTable<CharInfoName>(CharInfo);
        CharInfoSize = 0;
        CharInfo = nullptr;
    }
}

// 0x4daeb0 _ZN7Structs12StatListListD1Ev
// 0x4daf0c _ZN7Structs12StatListListD2Ev
StatListList::~StatListList() {
    if (list_entries != nullptr) CustomFree(list_entries);  // +0x8
}

// 0x4daef0 _ZN7Structs12StatListListD0Ev
void DeletingDestructor(StatListList* self) {
    self->StatListList::~StatListList();
    CustomFree(self);
}

// 0x4dae88 _ZN7Structs12StatListList8finalizeEv
void StatListList::finalize() {
    if (list_entries != nullptr) {
        CustomFree(list_entries);
        list_entriesSize = 0;
        list_entries = nullptr;
    }
}

// 0x4eacc0 _ZN7Structs12StatListList4readEP11IStreamBase
void StatListList::read(IStreamBase* stream) {
    list_entriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    ReadWords(stream, list_entries, list_entriesSize);  // +0x8
}

// 0x4dafb0 _ZN7Structs24StatAutoAssignTargetListD1Ev
// 0x4db048 _ZN7Structs24StatAutoAssignTargetListD2Ev
StatAutoAssignTargetList::~StatAutoAssignTargetList() {
    pydata::DeleteElementTable<StatAutoAssignTarget>(list_entries);  // +0x8, listing stride 16
}

// 0x4db02c _ZN7Structs24StatAutoAssignTargetListD0Ev
void DeletingDestructor(StatAutoAssignTargetList* self) {
    self->StatAutoAssignTargetList::~StatAutoAssignTargetList();
    CustomFree(self);
}

// 0x4daf4c _ZN7Structs24StatAutoAssignTargetList8finalizeEv
void StatAutoAssignTargetList::finalize() {
    if (list_entries != nullptr) {
        pydata::DeleteElementTable<StatAutoAssignTarget>(list_entries);
        list_entriesSize = 0;
        list_entries = nullptr;
    }
}

// 0x4dce90 _ZN7Structs24StatAutoAssignTargetList4readEP11IStreamBase
// Element stride is sizeof(StatAutoAssignTarget) (listing stride 16). StatAutoAssignTarget::read is defined in
// structs_records.cpp.
void StatAutoAssignTargetList::read(IStreamBase* stream) {
    list_entriesSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    pydata::DeleteElementTable<StatAutoAssignTarget>(list_entries);
    list_entries = pydata::NewAndReadElementTable<StatAutoAssignTarget>(ListingStride::StatAutoAssignTarget, list_entriesSize, stream);  // +0x8
}

// 0x4db12c _ZN7Structs13ClassFuncListD1Ev
// 0x4db1c8 _ZN7Structs13ClassFuncListD2Ev
ClassFuncList::~ClassFuncList() {
    pydata::DeleteElementTable<ClassFunc>(list_entries);  // +0x8, stride 24
}

// 0x4db1ac _ZN7Structs13ClassFuncListD0Ev
void DeletingDestructor(ClassFuncList* self) {
    self->ClassFuncList::~ClassFuncList();
    CustomFree(self);
}

// 0x4db0c4 _ZN7Structs13ClassFuncList8finalizeEv
void ClassFuncList::finalize() {
    if (list_entries != nullptr) {
        pydata::DeleteElementTable<ClassFunc>(list_entries);
        list_entriesSize = 0;
        list_entries = nullptr;
    }
}

// 0x4db474 _ZN7Structs7AnimTplD1Ev
// 0x4db510 _ZN7Structs7AnimTplD2Ev
AnimTpl::~AnimTpl() {
    pydata::DeleteElementTable<AnimStep>(Steps);  // +0xc, stride 56
}

// 0x4db4f4 _ZN7Structs7AnimTplD0Ev
void DeletingDestructor(AnimTpl* self) {
    self->AnimTpl::~AnimTpl();
    CustomFree(self);
}

// 0x4db40c _ZN7Structs7AnimTpl8finalizeEv
void AnimTpl::finalize() {
    if (Steps != nullptr) {
        pydata::DeleteElementTable<AnimStep>(Steps);
        StepsSize = 0;
        Steps = nullptr;
    }
}

// 0x4db6bc _ZN7Structs10AIFactionsD1Ev
// 0x4db758 _ZN7Structs10AIFactionsD2Ev
AIFactions::~AIFactions() {
    pydata::DeleteElementTable<AIFaction>(factions);  // +0x8, listing stride 12
}

// 0x4db73c _ZN7Structs10AIFactionsD0Ev
void DeletingDestructor(AIFactions* self) {
    self->AIFactions::~AIFactions();
    CustomFree(self);
}

// 0x4db654 _ZN7Structs10AIFactions8finalizeEv
void AIFactions::finalize() {
    if (factions != nullptr) {
        pydata::DeleteElementTable<AIFaction>(factions);
        factionsSize = 0;
        factions = nullptr;
    }
}

// 0x4dd158 _ZN7Structs10AIFactions4readEP11IStreamBase
void AIFactions::read(IStreamBase* stream) {
    factionsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x4
    pydata::DeleteElementTable<AIFaction>(factions);
    factions = pydata::NewAndReadElementTable<AIFaction>(ListingStride::AIFaction, factionsSize, stream);  // +0x8
}

}  // namespace Structs
