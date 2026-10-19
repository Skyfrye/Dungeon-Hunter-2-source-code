// Structs::ScriptCmd and the ScriptCmd command classes: destructors, finalize and read.
// HAND-MAINTAINED SOURCE (Track B decision 7). First produced by gen_script_cmd.py, which is retired
// (Ghidra-era) and must not be rerun; edit this file directly.
#include "pydata-accessors/script_cmd.hpp"

namespace Structs {

// 0x4c6c60 _ZN7Structs9ScriptCmdD2Ev
// 0x4c6c64 _ZN7Structs9ScriptCmdD1Ev
ScriptCmd::~ScriptCmd() {
}

// 0x4cdd38 _ZN7Structs9ScriptCmdD0Ev
void DeletingDestructor(ScriptCmd* self) {
    self->ScriptCmd::~ScriptCmd();
    CustomFree(self);
}

// 0x4c6c68 _ZN7Structs9ScriptCmd8finalizeEv
void ScriptCmd::finalize() {
}

// 0x4ff828 _ZN7Structs9ScriptCmd4readEP11IStreamBase
void ScriptCmd::read(IStreamBase* stream) {
    ID = StreamReader::readAs<std::int32_t>(stream);  // +0x4
}

// 0x4d2a60 _ZN7Structs14AIChangeScriptD2Ev
// 0x4d29ec _ZN7Structs14AIChangeScriptD1Ev
AIChangeScript::~AIChangeScript() {
    if (Script != nullptr) CustomFree(Script);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x14
}

// 0x4d2a44 _ZN7Structs14AIChangeScriptD0Ev
void DeletingDestructor(AIChangeScript* self) {
    self->AIChangeScript::~AIChangeScript();
    CustomFree(self);
}

// 0x4d29a0 _ZN7Structs14AIChangeScript8finalizeEv
void AIChangeScript::finalize() {
    if (Script != nullptr) {
        CustomFree(Script);  // +0xc
        ScriptSize = 0;  // +0x8
        Script = nullptr;
    }
    if (Target != nullptr) {
        CustomFree(Target);  // +0x14
        TargetSize = 0;  // +0x10
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501974 _ZN7Structs14AIChangeScript4readEP11IStreamBase
void AIChangeScript::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    ScriptSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Script != nullptr) CustomFree(Script);  // +0xc
    Script = static_cast<char*>(::operator new[](static_cast<std::size_t>(ScriptSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Script, ScriptSize);
    Script[ScriptSize] = '\0';
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    if (Target != nullptr) CustomFree(Target);  // +0x14
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x14, length +0x10
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d2b4c _ZN7Structs9AIDoSkillD2Ev
// 0x4d2ae8 _ZN7Structs9AIDoSkillD1Ev
AIDoSkill::~AIDoSkill() {
    if (Target != nullptr) CustomFree(Target);  // +0x10
}

// 0x4d2b30 _ZN7Structs9AIDoSkillD0Ev
void DeletingDestructor(AIDoSkill* self) {
    self->AIDoSkill::~AIDoSkill();
    CustomFree(self);
}

// 0x4d2ab8 _ZN7Structs9AIDoSkill8finalizeEv
void AIDoSkill::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0x10
        TargetSize = 0;  // +0xc
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501ad8 _ZN7Structs9AIDoSkill4readEP11IStreamBase
void AIDoSkill::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Skill = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x10
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4c7404 _ZN7Structs13AIEnableTimerD2Ev
// 0x4c7438 _ZN7Structs13AIEnableTimerD1Ev
AIEnableTimer::~AIEnableTimer() {
}

// 0x4cdf4c _ZN7Structs13AIEnableTimerD0Ev
void DeletingDestructor(AIEnableTimer* self) {
    self->AIEnableTimer::~AIEnableTimer();
    CustomFree(self);
}

// 0x4c746c _ZN7Structs13AIEnableTimer8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void AIEnableTimer::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff9b4 _ZN7Structs13AIEnableTimer4readEP11IStreamBase
void AIEnableTimer::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Enable = StreamReader::readAs<bool>(stream);  // +0x8
}

// 0x4c7470 _ZN7Structs12AIResetTimerD2Ev
// 0x4c74a4 _ZN7Structs12AIResetTimerD1Ev
AIResetTimer::~AIResetTimer() {
}

// 0x4cdf30 _ZN7Structs12AIResetTimerD0Ev
void DeletingDestructor(AIResetTimer* self) {
    self->AIResetTimer::~AIResetTimer();
    CustomFree(self);
}

// 0x4c74d8 _ZN7Structs12AIResetTimer8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void AIResetTimer::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8c4 _ZN7Structs12AIResetTimer4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void AIResetTimer::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c74dc _ZN7Structs7AISetHPD2Ev
// 0x4c7510 _ZN7Structs7AISetHPD1Ev
AISetHP::~AISetHP() {
}

// 0x4cdf14 _ZN7Structs7AISetHPD0Ev
void DeletingDestructor(AISetHP* self) {
    self->AISetHP::~AISetHP();
    CustomFree(self);
}

// 0x4c7544 _ZN7Structs7AISetHP8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void AISetHP::finalize() {
    ScriptCmd::finalize();
}

// 0x5030b8 _ZN7Structs7AISetHP4readEP11IStreamBase
void AISetHP::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Percent = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4d2948 _ZN7Structs8AISetIntD2Ev
// 0x4d28d4 _ZN7Structs8AISetIntD1Ev
AISetInt::~AISetInt() {
    if (Name != nullptr) CustomFree(Name);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x14
}

// 0x4d292c _ZN7Structs8AISetIntD0Ev
void DeletingDestructor(AISetInt* self) {
    self->AISetInt::~AISetInt();
    CustomFree(self);
}

// 0x4d2888 _ZN7Structs8AISetInt8finalizeEv
void AISetInt::finalize() {
    if (Name != nullptr) {
        CustomFree(Name);  // +0xc
        NameSize = 0;  // +0x8
        Name = nullptr;
    }
    if (Target != nullptr) {
        CustomFree(Target);  // +0x14
        TargetSize = 0;  // +0x10
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5017b4 _ZN7Structs8AISetInt4readEP11IStreamBase
void AISetInt::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    NameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Name != nullptr) CustomFree(Name);  // +0xc
    Name = static_cast<char*>(::operator new[](static_cast<std::size_t>(NameSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Name, NameSize);
    Name[NameSize] = '\0';
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    if (Target != nullptr) CustomFree(Target);  // +0x14
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x14, length +0x10
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
    Value = StreamReader::readAs<std::int32_t>(stream);  // +0x18
}

// 0x4d1878 _ZN7Structs22ActivateProjectileTrapD2Ev
// 0x4d1814 _ZN7Structs22ActivateProjectileTrapD1Ev
ActivateProjectileTrap::~ActivateProjectileTrap() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d185c _ZN7Structs22ActivateProjectileTrapD0Ev
void DeletingDestructor(ActivateProjectileTrap* self) {
    self->ActivateProjectileTrap::~ActivateProjectileTrap();
    CustomFree(self);
}

// 0x4d17e4 _ZN7Structs22ActivateProjectileTrap8finalizeEv
void ActivateProjectileTrap::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500530 _ZN7Structs22ActivateProjectileTrap4readEP11IStreamBase
void ActivateProjectileTrap::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d16c0 _ZN7Structs20ActivateTriggerPlateD2Ev
// 0x4d165c _ZN7Structs20ActivateTriggerPlateD1Ev
ActivateTriggerPlate::~ActivateTriggerPlate() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d16a4 _ZN7Structs20ActivateTriggerPlateD0Ev
void DeletingDestructor(ActivateTriggerPlate* self) {
    self->ActivateTriggerPlate::~ActivateTriggerPlate();
    CustomFree(self);
}

// 0x4d162c _ZN7Structs20ActivateTriggerPlate8finalizeEv
void ActivateTriggerPlate::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5003b0 _ZN7Structs20ActivateTriggerPlate4readEP11IStreamBase
void ActivateTriggerPlate::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d1e7c _ZN7Structs9AutoEquipD2Ev
// 0x4d1e18 _ZN7Structs9AutoEquipD1Ev
AutoEquip::~AutoEquip() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d1e60 _ZN7Structs9AutoEquipD0Ev
void DeletingDestructor(AutoEquip* self) {
    self->AutoEquip::~AutoEquip();
    CustomFree(self);
}

// 0x4d1de8 _ZN7Structs9AutoEquip8finalizeEv
void AutoEquip::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500af0 _ZN7Structs9AutoEquip4readEP11IStreamBase
void AutoEquip::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4c7764 _ZN7Structs20AwardEndGameTrophiesD2Ev
// 0x4c7798 _ZN7Structs20AwardEndGameTrophiesD1Ev
AwardEndGameTrophies::~AwardEndGameTrophies() {
}

// 0x4cde6c _ZN7Structs20AwardEndGameTrophiesD0Ev
void DeletingDestructor(AwardEndGameTrophies* self) {
    self->AwardEndGameTrophies::~AwardEndGameTrophies();
    CustomFree(self);
}

// 0x4c77cc _ZN7Structs20AwardEndGameTrophies8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void AwardEndGameTrophies::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8b8 _ZN7Structs20AwardEndGameTrophies4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void AwardEndGameTrophies::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c76f8 _ZN7Structs11AwardTrophyD2Ev
// 0x4c772c _ZN7Structs11AwardTrophyD1Ev
AwardTrophy::~AwardTrophy() {
}

// 0x4cde88 _ZN7Structs11AwardTrophyD0Ev
void DeletingDestructor(AwardTrophy* self) {
    self->AwardTrophy::~AwardTrophy();
    CustomFree(self);
}

// 0x4c7760 _ZN7Structs11AwardTrophy8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void AwardTrophy::finalize() {
    ScriptCmd::finalize();
}

// 0x502e98 _ZN7Structs11AwardTrophy4readEP11IStreamBase
void AwardTrophy::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Trophy = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c78a8 _ZN7Structs13BlockSaveGameD2Ev
// 0x4c78dc _ZN7Structs13BlockSaveGameD1Ev
BlockSaveGame::~BlockSaveGame() {
}

// 0x4cde18 _ZN7Structs13BlockSaveGameD0Ev
void DeletingDestructor(BlockSaveGame* self) {
    self->BlockSaveGame::~BlockSaveGame();
    CustomFree(self);
}

// 0x4c7910 _ZN7Structs13BlockSaveGame8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void BlockSaveGame::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8ac _ZN7Structs13BlockSaveGame4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void BlockSaveGame::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4d3994 _ZN7Structs7CONSOLED2Ev
// 0x4d3930 _ZN7Structs7CONSOLED1Ev
CONSOLE::~CONSOLE() {
    if (Text != nullptr) CustomFree(Text);  // +0xc
}

// 0x4d3978 _ZN7Structs7CONSOLED0Ev
void DeletingDestructor(CONSOLE* self) {
    self->CONSOLE::~CONSOLE();
    CustomFree(self);
}

// 0x4d3900 _ZN7Structs7CONSOLE8finalizeEv
void CONSOLE::finalize() {
    if (Text != nullptr) {
        CustomFree(Text);  // +0xc
        TextSize = 0;  // +0x8
        Text = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5029bc _ZN7Structs7CONSOLE4readEP11IStreamBase
void CONSOLE::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TextSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Text != nullptr) CustomFree(Text);  // +0xc
    Text = static_cast<char*>(::operator new[](static_cast<std::size_t>(TextSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Text, TextSize);
    Text[TextSize] = '\0';
}

// 0x4d142c _ZN7Structs11ChangeLevelD2Ev
// 0x4d13c8 _ZN7Structs11ChangeLevelD1Ev
ChangeLevel::~ChangeLevel() {
    if (Level != nullptr) CustomFree(Level);  // +0x10
}

// 0x4d1410 _ZN7Structs11ChangeLevelD0Ev
void DeletingDestructor(ChangeLevel* self) {
    self->ChangeLevel::~ChangeLevel();
    CustomFree(self);
}

// 0x4d1398 _ZN7Structs11ChangeLevel8finalizeEv
void ChangeLevel::finalize() {
    if (Level != nullptr) {
        CustomFree(Level);  // +0x10
        LevelSize = 0;  // +0xc
        Level = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500114 _ZN7Structs11ChangeLevel4readEP11IStreamBase
void ChangeLevel::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Entrypoint = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    LevelSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Level != nullptr) CustomFree(Level);  // +0x10
    Level = static_cast<char*>(::operator new[](static_cast<std::size_t>(LevelSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Level, LevelSize);
    Level[LevelSize] = '\0';
}

// 0x4d1954 _ZN7Structs9CloseDoorD2Ev
// 0x4d18f0 _ZN7Structs9CloseDoorD1Ev
CloseDoor::~CloseDoor() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d1938 _ZN7Structs9CloseDoorD0Ev
void DeletingDestructor(CloseDoor* self) {
    self->CloseDoor::~CloseDoor();
    CustomFree(self);
}

// 0x4d18c0 _ZN7Structs9CloseDoor8finalizeEv
void CloseDoor::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5005f0 _ZN7Structs9CloseDoor4readEP11IStreamBase
void CloseDoor::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
    Wait = StreamReader::readAs<bool>(stream);  // +0x10
}

// 0x4d179c _ZN7Structs24DeactivateProjectileTrapD2Ev
// 0x4d1738 _ZN7Structs24DeactivateProjectileTrapD1Ev
DeactivateProjectileTrap::~DeactivateProjectileTrap() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d1780 _ZN7Structs24DeactivateProjectileTrapD0Ev
void DeletingDestructor(DeactivateProjectileTrap* self) {
    self->DeactivateProjectileTrap::~DeactivateProjectileTrap();
    CustomFree(self);
}

// 0x4d1708 _ZN7Structs24DeactivateProjectileTrap8finalizeEv
void DeactivateProjectileTrap::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500470 _ZN7Structs24DeactivateProjectileTrap4readEP11IStreamBase
void DeactivateProjectileTrap::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d15e4 _ZN7Structs22DeactivateTriggerPlateD2Ev
// 0x4d1580 _ZN7Structs22DeactivateTriggerPlateD1Ev
DeactivateTriggerPlate::~DeactivateTriggerPlate() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d15c8 _ZN7Structs22DeactivateTriggerPlateD0Ev
void DeletingDestructor(DeactivateTriggerPlate* self) {
    self->DeactivateTriggerPlate::~DeactivateTriggerPlate();
    CustomFree(self);
}

// 0x4d1550 _ZN7Structs22DeactivateTriggerPlate8finalizeEv
void DeactivateTriggerPlate::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5002f0 _ZN7Structs22DeactivateTriggerPlate4readEP11IStreamBase
void DeactivateTriggerPlate::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d1238 _ZN7Structs10DoTutorialD2Ev
// 0x4d11d4 _ZN7Structs10DoTutorialD1Ev
DoTutorial::~DoTutorial() {
    if (ScriptName != nullptr) CustomFree(ScriptName);  // +0xc
}

// 0x4d121c _ZN7Structs10DoTutorialD0Ev
void DeletingDestructor(DoTutorial* self) {
    self->DoTutorial::~DoTutorial();
    CustomFree(self);
}

// 0x4d11a4 _ZN7Structs10DoTutorial8finalizeEv
void DoTutorial::finalize() {
    if (ScriptName != nullptr) {
        CustomFree(ScriptName);  // +0xc
        ScriptNameSize = 0;  // +0x8
        ScriptName = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x4ffe38 _ZN7Structs10DoTutorial4readEP11IStreamBase
void DoTutorial::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    ScriptNameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (ScriptName != nullptr) CustomFree(ScriptName);  // +0xc
    ScriptName = static_cast<char*>(::operator new[](static_cast<std::size_t>(ScriptNameSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, ScriptName, ScriptNameSize);
    ScriptName[ScriptNameSize] = '\0';
    Tutorial = StreamReader::readAs<std::int32_t>(stream);  // +0x10
}

// 0x4d1f84 _ZN7Structs8DropLootD2Ev
// 0x4d1f10 _ZN7Structs8DropLootD1Ev
DropLoot::~DropLoot() {
    if (From != nullptr) CustomFree(From);  // +0xc
    if (To != nullptr) CustomFree(To);  // +0x14
}

// 0x4d1f68 _ZN7Structs8DropLootD0Ev
void DeletingDestructor(DropLoot* self) {
    self->DropLoot::~DropLoot();
    CustomFree(self);
}

// 0x4d1ec4 _ZN7Structs8DropLoot8finalizeEv
void DropLoot::finalize() {
    if (From != nullptr) {
        CustomFree(From);  // +0xc
        FromSize = 0;  // +0x8
        From = nullptr;
    }
    if (To != nullptr) {
        CustomFree(To);  // +0x14
        ToSize = 0;  // +0x10
        To = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500bb0 _ZN7Structs8DropLoot4readEP11IStreamBase
void DropLoot::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    FromSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (From != nullptr) CustomFree(From);  // +0xc
    From = static_cast<char*>(::operator new[](static_cast<std::size_t>(FromSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, From, FromSize);
    From[FromSize] = '\0';
    ToSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    if (To != nullptr) CustomFree(To);  // +0x14
    To = static_cast<char*>(::operator new[](static_cast<std::size_t>(ToSize) + 1, kPydataBufferHint));  // +0x14, length +0x10
    StreamReader::readStringEx(stream, To, ToSize);
    To[ToSize] = '\0';
}

// 0x4c768c _ZN7Structs7EndGameD2Ev
// 0x4c76c0 _ZN7Structs7EndGameD1Ev
EndGame::~EndGame() {
}

// 0x4cdea4 _ZN7Structs7EndGameD0Ev
void DeletingDestructor(EndGame* self) {
    self->EndGame::~EndGame();
    CustomFree(self);
}

// 0x4c76f4 _ZN7Structs7EndGame8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void EndGame::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8bc _ZN7Structs7EndGame4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void EndGame::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4d1340 _ZN7Structs30EnqueueCharMenuTutorialMessageD2Ev
// 0x4d12cc _ZN7Structs30EnqueueCharMenuTutorialMessageD1Ev
EnqueueCharMenuTutorialMessage::~EnqueueCharMenuTutorialMessage() {
    if (Frame != nullptr) CustomFree(Frame);  // +0xc
    if (Menu != nullptr) CustomFree(Menu);  // +0x14
}

// 0x4d1324 _ZN7Structs30EnqueueCharMenuTutorialMessageD0Ev
void DeletingDestructor(EnqueueCharMenuTutorialMessage* self) {
    self->EnqueueCharMenuTutorialMessage::~EnqueueCharMenuTutorialMessage();
    CustomFree(self);
}

// 0x4d1280 _ZN7Structs30EnqueueCharMenuTutorialMessage8finalizeEv
void EnqueueCharMenuTutorialMessage::finalize() {
    if (Frame != nullptr) {
        CustomFree(Frame);  // +0xc
        FrameSize = 0;  // +0x8
        Frame = nullptr;
    }
    if (Menu != nullptr) {
        CustomFree(Menu);  // +0x14
        MenuSize = 0;  // +0x10
        Menu = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x4fff54 _ZN7Structs30EnqueueCharMenuTutorialMessage4readEP11IStreamBase
void EnqueueCharMenuTutorialMessage::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    FrameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Frame != nullptr) CustomFree(Frame);  // +0xc
    Frame = static_cast<char*>(::operator new[](static_cast<std::size_t>(FrameSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Frame, FrameSize);
    Frame[FrameSize] = '\0';
    MenuSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    if (Menu != nullptr) CustomFree(Menu);  // +0x14
    Menu = static_cast<char*>(::operator new[](static_cast<std::size_t>(MenuSize) + 1, kPydataBufferHint));  // +0x14, length +0x10
    StreamReader::readStringEx(stream, Menu, MenuSize);
    Menu[MenuSize] = '\0';
    Text = StreamReader::readAs<std::int32_t>(stream);  // +0x18
}

// 0x4c7914 _ZN7Structs22EnqueueTutorialMessageD2Ev
// 0x4c7948 _ZN7Structs22EnqueueTutorialMessageD1Ev
EnqueueTutorialMessage::~EnqueueTutorialMessage() {
}

// 0x4cddfc _ZN7Structs22EnqueueTutorialMessageD0Ev
void DeletingDestructor(EnqueueTutorialMessage* self) {
    self->EnqueueTutorialMessage::~EnqueueTutorialMessage();
    CustomFree(self);
}

// 0x4c797c _ZN7Structs22EnqueueTutorialMessage8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void EnqueueTutorialMessage::finalize() {
    ScriptCmd::finalize();
}

// 0x502dc4 _ZN7Structs22EnqueueTutorialMessage4readEP11IStreamBase
void EnqueueTutorialMessage::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Duration = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Text = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c6c6c _ZN7Structs17EnterCutSceneModeD2Ev
// 0x4c6ca0 _ZN7Structs17EnterCutSceneModeD1Ev
EnterCutSceneMode::~EnterCutSceneMode() {
}

// 0x4ce144 _ZN7Structs17EnterCutSceneModeD0Ev
void DeletingDestructor(EnterCutSceneMode* self) {
    self->EnterCutSceneMode::~EnterCutSceneMode();
    CustomFree(self);
}

// 0x4c6cd4 _ZN7Structs17EnterCutSceneMode8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void EnterCutSceneMode::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff9b0 _ZN7Structs17EnterCutSceneMode4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void EnterCutSceneMode::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c717c _ZN7Structs13EnterSafeZoneD2Ev
// 0x4c71b0 _ZN7Structs13EnterSafeZoneD1Ev
EnterSafeZone::~EnterSafeZone() {
}

// 0x4cdff4 _ZN7Structs13EnterSafeZoneD0Ev
void DeletingDestructor(EnterSafeZone* self) {
    self->EnterSafeZone::~EnterSafeZone();
    CustomFree(self);
}

// 0x4c71e4 _ZN7Structs13EnterSafeZone8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void EnterSafeZone::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8cc _ZN7Structs13EnterSafeZone4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void EnterSafeZone::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c6cd8 _ZN7Structs16ExitCutSceneModeD2Ev
// 0x4c6d0c _ZN7Structs16ExitCutSceneModeD1Ev
ExitCutSceneMode::~ExitCutSceneMode() {
}

// 0x4ce128 _ZN7Structs16ExitCutSceneModeD0Ev
void DeletingDestructor(ExitCutSceneMode* self) {
    self->ExitCutSceneMode::~ExitCutSceneMode();
    CustomFree(self);
}

// 0x4c6d40 _ZN7Structs16ExitCutSceneMode8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void ExitCutSceneMode::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff9ac _ZN7Structs16ExitCutSceneMode4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void ExitCutSceneMode::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c7b9c _ZN7Structs13FlushMessagesD2Ev
// 0x4c7bd0 _ZN7Structs13FlushMessagesD1Ev
FlushMessages::~FlushMessages() {
}

// 0x4cdd54 _ZN7Structs13FlushMessagesD0Ev
void DeletingDestructor(FlushMessages* self) {
    self->FlushMessages::~FlushMessages();
    CustomFree(self);
}

// 0x4c7c04 _ZN7Structs13FlushMessages8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void FlushMessages::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff898 _ZN7Structs13FlushMessages4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void FlushMessages::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4d2458 _ZN7Structs9HideActorD2Ev
// 0x4d23f4 _ZN7Structs9HideActorD1Ev
HideActor::~HideActor() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d243c _ZN7Structs9HideActorD0Ev
void DeletingDestructor(HideActor* self) {
    self->HideActor::~HideActor();
    CustomFree(self);
}

// 0x4d23c4 _ZN7Structs9HideActor8finalizeEv
void HideActor::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501294 _ZN7Structs9HideActor4readEP11IStreamBase
void HideActor::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d3180 _ZN7Structs9HideFlashD2Ev
// 0x4d311c _ZN7Structs9HideFlashD1Ev
HideFlash::~HideFlash() {
    if (Name != nullptr) CustomFree(Name);  // +0x10
}

// 0x4d3164 _ZN7Structs9HideFlashD0Ev
void DeletingDestructor(HideFlash* self) {
    self->HideFlash::~HideFlash();
    CustomFree(self);
}

// 0x4d30bc _ZN7Structs9HideFlash8finalizeEv
void HideFlash::finalize() {
    if (Name != nullptr) {
        CustomFree(Name);  // +0x10
        NameSize = 0;  // +0xc
        Name = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x50208c _ZN7Structs9HideFlash4readEP11IStreamBase
void HideFlash::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Loop = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    NameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Name != nullptr) CustomFree(Name);  // +0x10
    Name = static_cast<char*>(::operator new[](static_cast<std::size_t>(NameSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Name, NameSize);
    Name[NameSize] = '\0';
    Wait = StreamReader::readAs<bool>(stream);  // +0x14
}

// 0x4c7398 _ZN7Structs13IncFaeryLevelD2Ev
// 0x4c73cc _ZN7Structs13IncFaeryLevelD1Ev
IncFaeryLevel::~IncFaeryLevel() {
}

// 0x4cdf68 _ZN7Structs13IncFaeryLevelD0Ev
void DeletingDestructor(IncFaeryLevel* self) {
    self->IncFaeryLevel::~IncFaeryLevel();
    CustomFree(self);
}

// 0x4c7400 _ZN7Structs13IncFaeryLevel8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void IncFaeryLevel::finalize() {
    ScriptCmd::finalize();
}

// 0x503130 _ZN7Structs13IncFaeryLevel4readEP11IStreamBase
void IncFaeryLevel::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Faery = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4d237c _ZN7Structs9KillActorD2Ev
// 0x4d2318 _ZN7Structs9KillActorD1Ev
KillActor::~KillActor() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d2360 _ZN7Structs9KillActorD0Ev
void DeletingDestructor(KillActor* self) {
    self->KillActor::~KillActor();
    CustomFree(self);
}

// 0x4d22e8 _ZN7Structs9KillActor8finalizeEv
void KillActor::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5011d4 _ZN7Structs9KillActor4readEP11IStreamBase
void KillActor::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4c71e8 _ZN7Structs13LeaveSafeZoneD2Ev
// 0x4c721c _ZN7Structs13LeaveSafeZoneD1Ev
LeaveSafeZone::~LeaveSafeZone() {
}

// 0x4cdfd8 _ZN7Structs13LeaveSafeZoneD0Ev
void DeletingDestructor(LeaveSafeZone* self) {
    self->LeaveSafeZone::~LeaveSafeZone();
    CustomFree(self);
}

// 0x4c7250 _ZN7Structs13LeaveSafeZone8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void LeaveSafeZone::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8c8 _ZN7Structs13LeaveSafeZone4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void LeaveSafeZone::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4d3074 _ZN7Structs13LockCharacterD2Ev
// 0x4d3010 _ZN7Structs13LockCharacterD1Ev
LockCharacter::~LockCharacter() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d3058 _ZN7Structs13LockCharacterD0Ev
void DeletingDestructor(LockCharacter* self) {
    self->LockCharacter::~LockCharacter();
    CustomFree(self);
}

// 0x4d2fe0 _ZN7Structs13LockCharacter8finalizeEv
void LockCharacter::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501fcc _ZN7Structs13LockCharacter4readEP11IStreamBase
void LockCharacter::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4c7b30 _ZN7Structs12LockTutorialD2Ev
// 0x4c7b64 _ZN7Structs12LockTutorialD1Ev
LockTutorial::~LockTutorial() {
}

// 0x4cdd70 _ZN7Structs12LockTutorialD0Ev
void DeletingDestructor(LockTutorial* self) {
    self->LockTutorial::~LockTutorial();
    CustomFree(self);
}

// 0x4c7b98 _ZN7Structs12LockTutorial8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void LockTutorial::finalize() {
    ScriptCmd::finalize();
}

// 0x502a7c _ZN7Structs12LockTutorial4readEP11IStreamBase
void LockTutorial::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Tutorial = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4d263c _ZN7Structs9LookActorD2Ev
// 0x4d25c8 _ZN7Structs9LookActorD1Ev
LookActor::~LookActor() {
    if (Object != nullptr) CustomFree(Object);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x14
}

// 0x4d2620 _ZN7Structs9LookActorD0Ev
void DeletingDestructor(LookActor* self) {
    self->LookActor::~LookActor();
    CustomFree(self);
}

// 0x4d257c _ZN7Structs9LookActor8finalizeEv
void LookActor::finalize() {
    if (Object != nullptr) {
        CustomFree(Object);  // +0xc
        ObjectSize = 0;  // +0x8
        Object = nullptr;
    }
    if (Target != nullptr) {
        CustomFree(Target);  // +0x14
        TargetSize = 0;  // +0x10
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501414 _ZN7Structs9LookActor4readEP11IStreamBase
void LookActor::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    ObjectSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Object != nullptr) CustomFree(Object);  // +0xc
    Object = static_cast<char*>(::operator new[](static_cast<std::size_t>(ObjectSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Object, ObjectSize);
    Object[ObjectSize] = '\0';
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    if (Target != nullptr) CustomFree(Target);  // +0x14
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x14, length +0x10
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d2c28 _ZN7Structs23MarkCharacterAsScriptedD2Ev
// 0x4d2bc4 _ZN7Structs23MarkCharacterAsScriptedD1Ev
MarkCharacterAsScripted::~MarkCharacterAsScripted() {
    if (Target != nullptr) CustomFree(Target);  // +0x10
}

// 0x4d2c0c _ZN7Structs23MarkCharacterAsScriptedD0Ev
void DeletingDestructor(MarkCharacterAsScripted* self) {
    self->MarkCharacterAsScripted::~MarkCharacterAsScripted();
    CustomFree(self);
}

// 0x4d2b94 _ZN7Structs23MarkCharacterAsScripted8finalizeEv
void MarkCharacterAsScripted::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0x10
        TargetSize = 0;  // +0xc
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501bf4 _ZN7Structs23MarkCharacterAsScripted4readEP11IStreamBase
void MarkCharacterAsScripted::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Enable = StreamReader::readAs<bool>(stream);  // +0x8
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x10
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d2754 _ZN7Structs9MoveActorD2Ev
// 0x4d26e0 _ZN7Structs9MoveActorD1Ev
MoveActor::~MoveActor() {
    if (Destination != nullptr) CustomFree(Destination);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x18
}

// 0x4d2738 _ZN7Structs9MoveActorD0Ev
void DeletingDestructor(MoveActor* self) {
    self->MoveActor::~MoveActor();
    CustomFree(self);
}

// 0x4d2694 _ZN7Structs9MoveActor8finalizeEv
void MoveActor::finalize() {
    if (Destination != nullptr) {
        CustomFree(Destination);  // +0xc
        DestinationSize = 0;  // +0x8
        Destination = nullptr;
    }
    if (Target != nullptr) {
        CustomFree(Target);  // +0x18
        TargetSize = 0;  // +0x14
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501578 _ZN7Structs9MoveActor4readEP11IStreamBase
void MoveActor::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    DestinationSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Destination != nullptr) CustomFree(Destination);  // +0xc
    Destination = static_cast<char*>(::operator new[](static_cast<std::size_t>(DestinationSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Destination, DestinationSize);
    Destination[DestinationSize] = '\0';
    Forced = StreamReader::readAs<bool>(stream);  // +0x10
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x14
    if (Target != nullptr) CustomFree(Target);  // +0x18
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x18, length +0x14
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
    Wait = StreamReader::readAs<bool>(stream);  // +0x1c
}

// 0x4c6e88 _ZN7Structs6NilCmdD2Ev
// 0x4c6ebc _ZN7Structs6NilCmdD1Ev
NilCmd::~NilCmd() {
}

// 0x4ce0b8 _ZN7Structs6NilCmdD0Ev
void DeletingDestructor(NilCmd* self) {
    self->NilCmd::~NilCmd();
    CustomFree(self);
}

// 0x4c6ef0 _ZN7Structs6NilCmd8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void NilCmd::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8d4 _ZN7Structs6NilCmd4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void NilCmd::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4d1a30 _ZN7Structs8OpenDoorD2Ev
// 0x4d19cc _ZN7Structs8OpenDoorD1Ev
OpenDoor::~OpenDoor() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d1a14 _ZN7Structs8OpenDoorD0Ev
void DeletingDestructor(OpenDoor* self) {
    self->OpenDoor::~OpenDoor();
    CustomFree(self);
}

// 0x4d199c _ZN7Structs8OpenDoor8finalizeEv
void OpenDoor::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5006bc _ZN7Structs8OpenDoor4readEP11IStreamBase
void OpenDoor::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
    Wait = StreamReader::readAs<bool>(stream);  // +0x10
}

// 0x4d22a0 _ZN7Structs13PlayActorAnimD2Ev
// 0x4d223c _ZN7Structs13PlayActorAnimD1Ev
PlayActorAnim::~PlayActorAnim() {
    if (Target != nullptr) CustomFree(Target);  // +0x18
}

// 0x4d2284 _ZN7Structs13PlayActorAnimD0Ev
void DeletingDestructor(PlayActorAnim* self) {
    self->PlayActorAnim::~PlayActorAnim();
    CustomFree(self);
}

// 0x4d220c _ZN7Structs13PlayActorAnim8finalizeEv
void PlayActorAnim::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0x18
        TargetSize = 0;  // +0x14
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500ff4 _ZN7Structs13PlayActorAnim4readEP11IStreamBase
void PlayActorAnim::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Anim = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Next = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Slot = StreamReader::readAs<std::int32_t>(stream);  // +0x10
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x14
    if (Target != nullptr) CustomFree(Target);  // +0x18
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x18, length +0x14
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
    Wait = StreamReader::readAs<bool>(stream);  // +0x1c
}

// 0x4d36c4 _ZN7Structs12PlayAnimByIdD2Ev
// 0x4d3660 _ZN7Structs12PlayAnimByIdD1Ev
PlayAnimById::~PlayAnimById() {
    if (Target != nullptr) CustomFree(Target);  // +0x14
}

// 0x4d36a8 _ZN7Structs12PlayAnimByIdD0Ev
void DeletingDestructor(PlayAnimById* self) {
    self->PlayAnimById::~PlayAnimById();
    CustomFree(self);
}

// 0x4d3630 _ZN7Structs12PlayAnimById8finalizeEv
void PlayAnimById::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0x14
        TargetSize = 0;  // +0x10
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x502594 _ZN7Structs12PlayAnimById4readEP11IStreamBase
void PlayAnimById::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    AnimID = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Loop = StreamReader::readAs<bool>(stream);  // +0xc
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    if (Target != nullptr) CustomFree(Target);  // +0x14
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x14, length +0x10
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
    Wait = StreamReader::readAs<bool>(stream);  // +0x18
}

// 0x4d35d8 _ZN7Structs14PlayAnimByNameD2Ev
// 0x4d3564 _ZN7Structs14PlayAnimByNameD1Ev
PlayAnimByName::~PlayAnimByName() {
    if (AnimName != nullptr) CustomFree(AnimName);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x18
}

// 0x4d35bc _ZN7Structs14PlayAnimByNameD0Ev
void DeletingDestructor(PlayAnimByName* self) {
    self->PlayAnimByName::~PlayAnimByName();
    CustomFree(self);
}

// 0x4d3518 _ZN7Structs14PlayAnimByName8finalizeEv
void PlayAnimByName::finalize() {
    if (AnimName != nullptr) {
        CustomFree(AnimName);  // +0xc
        AnimNameSize = 0;  // +0x8
        AnimName = nullptr;
    }
    if (Target != nullptr) {
        CustomFree(Target);  // +0x18
        TargetSize = 0;  // +0x14
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x502418 _ZN7Structs14PlayAnimByName4readEP11IStreamBase
void PlayAnimByName::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    AnimNameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (AnimName != nullptr) CustomFree(AnimName);  // +0xc
    AnimName = static_cast<char*>(::operator new[](static_cast<std::size_t>(AnimNameSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, AnimName, AnimNameSize);
    AnimName[AnimNameSize] = '\0';
    Loop = StreamReader::readAs<bool>(stream);  // +0x10
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x14
    if (Target != nullptr) CustomFree(Target);  // +0x18
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x18, length +0x14
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
    Wait = StreamReader::readAs<bool>(stream);  // +0x1c
}

// 0x4c6d44 _ZN7Structs10PlayCameraD2Ev
// 0x4c6d78 _ZN7Structs10PlayCameraD1Ev
PlayCamera::~PlayCamera() {
}

// 0x4ce10c _ZN7Structs10PlayCameraD0Ev
void DeletingDestructor(PlayCamera* self) {
    self->PlayCamera::~PlayCamera();
    CustomFree(self);
}

// 0x4c6dac _ZN7Structs10PlayCamera8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void PlayCamera::finalize() {
    ScriptCmd::finalize();
}

// 0x4ffba0 _ZN7Structs10PlayCamera4readEP11IStreamBase
void PlayCamera::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Anim = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Wait = StreamReader::readAs<bool>(stream);  // +0xc
}

// 0x4c7110 _ZN7Structs14PlayLevelMusicD2Ev
// 0x4c7144 _ZN7Structs14PlayLevelMusicD1Ev
PlayLevelMusic::~PlayLevelMusic() {
}

// 0x4ce010 _ZN7Structs14PlayLevelMusicD0Ev
void DeletingDestructor(PlayLevelMusic* self) {
    self->PlayLevelMusic::~PlayLevelMusic();
    CustomFree(self);
}

// 0x4c7178 _ZN7Structs14PlayLevelMusic8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void PlayLevelMusic::finalize() {
    ScriptCmd::finalize();
}

// 0x50336c _ZN7Structs14PlayLevelMusic4readEP11IStreamBase
void PlayLevelMusic::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    FadeoutTime = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c7038 _ZN7Structs9PlaySoundD2Ev
// 0x4c706c _ZN7Structs9PlaySoundD1Ev
PlaySound::~PlaySound() {
}

// 0x4ce048 _ZN7Structs9PlaySoundD0Ev
void DeletingDestructor(PlaySound* self) {
    self->PlaySound::~PlaySound();
    CustomFree(self);
}

// 0x4c70a0 _ZN7Structs9PlaySound8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void PlaySound::finalize() {
    ScriptCmd::finalize();
}

// 0x4ffab4 _ZN7Structs9PlaySound4readEP11IStreamBase
void PlaySound::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    FadeoutTime = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    IsMusic = StreamReader::readAs<bool>(stream);  // +0xc
    Loop = StreamReader::readAs<bool>(stream);  // +0xd
    SoundID = StreamReader::readAs<std::int32_t>(stream);  // +0x10
}

// 0x4d2d04 _ZN7Structs18PutCharacterInIdleD2Ev
// 0x4d2ca0 _ZN7Structs18PutCharacterInIdleD1Ev
PutCharacterInIdle::~PutCharacterInIdle() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d2ce8 _ZN7Structs18PutCharacterInIdleD0Ev
void DeletingDestructor(PutCharacterInIdle* self) {
    self->PutCharacterInIdle::~PutCharacterInIdle();
    CustomFree(self);
}

// 0x4d2c70 _ZN7Structs18PutCharacterInIdle8finalizeEv
void PutCharacterInIdle::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501cc0 _ZN7Structs18PutCharacterInIdle4readEP11IStreamBase
void PutCharacterInIdle::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d2ebc _ZN7Structs20PutCharacterInLimbusD2Ev
// 0x4d2e58 _ZN7Structs20PutCharacterInLimbusD1Ev
PutCharacterInLimbus::~PutCharacterInLimbus() {
    if (Target != nullptr) CustomFree(Target);  // +0x10
}

// 0x4d2ea0 _ZN7Structs20PutCharacterInLimbusD0Ev
void DeletingDestructor(PutCharacterInLimbus* self) {
    self->PutCharacterInLimbus::~PutCharacterInLimbus();
    CustomFree(self);
}

// 0x4d2e28 _ZN7Structs20PutCharacterInLimbus8finalizeEv
void PutCharacterInLimbus::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0x10
        TargetSize = 0;  // +0xc
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501e40 _ZN7Structs20PutCharacterInLimbus4readEP11IStreamBase
void PutCharacterInLimbus::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    AutoSpawn = StreamReader::readAs<bool>(stream);  // +0x8
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x10
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d1be8 _ZN7Structs12ReEquipHandsD2Ev
// 0x4d1b84 _ZN7Structs12ReEquipHandsD1Ev
ReEquipHands::~ReEquipHands() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d1bcc _ZN7Structs12ReEquipHandsD0Ev
void DeletingDestructor(ReEquipHands* self) {
    self->ReEquipHands::~ReEquipHands();
    CustomFree(self);
}

// 0x4d1b54 _ZN7Structs12ReEquipHands8finalizeEv
void ReEquipHands::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500854 _ZN7Structs12ReEquipHands4readEP11IStreamBase
void ReEquipHands::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4c7620 _ZN7Structs12RestartLevelD2Ev
// 0x4c7654 _ZN7Structs12RestartLevelD1Ev
RestartLevel::~RestartLevel() {
}

// 0x4cdec0 _ZN7Structs12RestartLevelD0Ev
void DeletingDestructor(RestartLevel* self) {
    self->RestartLevel::~RestartLevel();
    CustomFree(self);
}

// 0x4c7688 _ZN7Structs12RestartLevel8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void RestartLevel::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8c0 _ZN7Structs12RestartLevel4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void RestartLevel::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c783c _ZN7Structs8SaveGameD2Ev
// 0x4c7870 _ZN7Structs8SaveGameD1Ev
SaveGame::~SaveGame() {
}

// 0x4cde34 _ZN7Structs8SaveGameD0Ev
void DeletingDestructor(SaveGame* self) {
    self->SaveGame::~SaveGame();
    CustomFree(self);
}

// 0x4c78a4 _ZN7Structs8SaveGame8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void SaveGame::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8b0 _ZN7Structs8SaveGame4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void SaveGame::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4d209c _ZN7Structs14SetActorMasterD2Ev
// 0x4d2028 _ZN7Structs14SetActorMasterD1Ev
SetActorMaster::~SetActorMaster() {
    if (Master != nullptr) CustomFree(Master);  // +0x10
    if (Target != nullptr) CustomFree(Target);  // +0x1c
}

// 0x4d2080 _ZN7Structs14SetActorMasterD0Ev
void DeletingDestructor(SetActorMaster* self) {
    self->SetActorMaster::~SetActorMaster();
    CustomFree(self);
}

// 0x4d1fdc _ZN7Structs14SetActorMaster8finalizeEv
void SetActorMaster::finalize() {
    if (Master != nullptr) {
        CustomFree(Master);  // +0x10
        MasterSize = 0;  // +0xc
        Master = nullptr;
    }
    if (Target != nullptr) {
        CustomFree(Target);  // +0x1c
        TargetSize = 0;  // +0x18
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500d14 _ZN7Structs14SetActorMaster4readEP11IStreamBase
void SetActorMaster::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    DieWithHim = StreamReader::readAs<bool>(stream);  // +0x8
    MasterSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Master != nullptr) CustomFree(Master);  // +0x10
    Master = static_cast<char*>(::operator new[](static_cast<std::size_t>(MasterSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Master, MasterSize);
    Master[MasterSize] = '\0';
    StopRespawn = StreamReader::readAs<bool>(stream);  // +0x14
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x18
    if (Target != nullptr) CustomFree(Target);  // +0x1c
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x1c, length +0x18
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d21b4 _ZN7Structs16SetActorPositionD2Ev
// 0x4d2140 _ZN7Structs16SetActorPositionD1Ev
SetActorPosition::~SetActorPosition() {
    if (Position != nullptr) CustomFree(Position);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x14
}

// 0x4d2198 _ZN7Structs16SetActorPositionD0Ev
void DeletingDestructor(SetActorPosition* self) {
    self->SetActorPosition::~SetActorPosition();
    CustomFree(self);
}

// 0x4d20f4 _ZN7Structs16SetActorPosition8finalizeEv
void SetActorPosition::finalize() {
    if (Position != nullptr) {
        CustomFree(Position);  // +0xc
        PositionSize = 0;  // +0x8
        Position = nullptr;
    }
    if (Target != nullptr) {
        CustomFree(Target);  // +0x14
        TargetSize = 0;  // +0x10
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500e90 _ZN7Structs16SetActorPosition4readEP11IStreamBase
void SetActorPosition::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    PositionSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Position != nullptr) CustomFree(Position);  // +0xc
    Position = static_cast<char*>(::operator new[](static_cast<std::size_t>(PositionSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Position, PositionSize);
    Position[PositionSize] = '\0';
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    if (Target != nullptr) CustomFree(Target);  // +0x14
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x14, length +0x10
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d38a8 _ZN7Structs9SetCameraD2Ev
// 0x4d3834 _ZN7Structs9SetCameraD1Ev
SetCamera::~SetCamera() {
    if (Camera != nullptr) CustomFree(Camera);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x14
}

// 0x4d388c _ZN7Structs9SetCameraD0Ev
void DeletingDestructor(SetCamera* self) {
    self->SetCamera::~SetCamera();
    CustomFree(self);
}

// 0x4d37e8 _ZN7Structs9SetCamera8finalizeEv
void SetCamera::finalize() {
    if (Camera != nullptr) {
        CustomFree(Camera);  // +0xc
        CameraSize = 0;  // +0x8
        Camera = nullptr;
    }
    if (Target != nullptr) {
        CustomFree(Target);  // +0x14
        TargetSize = 0;  // +0x10
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5027f0 _ZN7Structs9SetCamera4readEP11IStreamBase
void SetCamera::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    CameraSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Camera != nullptr) CustomFree(Camera);  // +0xc
    Camera = static_cast<char*>(::operator new[](static_cast<std::size_t>(CameraSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Camera, CameraSize);
    Camera[CameraSize] = '\0';
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    if (Target != nullptr) CustomFree(Target);  // +0x14
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x14, length +0x10
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
    Time = StreamReader::readAs<std::int32_t>(stream);  // +0x18
    Wait = StreamReader::readAs<bool>(stream);  // +0x1c
}

// 0x4c6db0 _ZN7Structs13SetCameraClipD2Ev
// 0x4c6de4 _ZN7Structs13SetCameraClipD1Ev
SetCameraClip::~SetCameraClip() {
}

// 0x4ce0f0 _ZN7Structs13SetCameraClipD0Ev
void DeletingDestructor(SetCameraClip* self) {
    self->SetCameraClip::~SetCameraClip();
    CustomFree(self);
}

// 0x4c6e18 _ZN7Structs13SetCameraClip8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void SetCameraClip::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8d8 _ZN7Structs13SetCameraClip4readEP11IStreamBase
void SetCameraClip::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Far = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Near = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4d37a0 _ZN7Structs15SetCameraTargetD2Ev
// 0x4d373c _ZN7Structs15SetCameraTargetD1Ev
SetCameraTarget::~SetCameraTarget() {
    if (Target != nullptr) CustomFree(Target);  // +0x10
}

// 0x4d3784 _ZN7Structs15SetCameraTargetD0Ev
void DeletingDestructor(SetCameraTarget* self) {
    self->SetCameraTarget::~SetCameraTarget();
    CustomFree(self);
}

// 0x4d370c _ZN7Structs15SetCameraTarget8finalizeEv
void SetCameraTarget::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0x10
        TargetSize = 0;  // +0xc
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5026c8 _ZN7Structs15SetCameraTarget4readEP11IStreamBase
void SetCameraTarget::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Delay = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x10
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
    Wait = StreamReader::readAs<bool>(stream);  // +0x14
}

// 0x4c732c _ZN7Structs13SetFaeryStateD2Ev
// 0x4c7360 _ZN7Structs13SetFaeryStateD1Ev
SetFaeryState::~SetFaeryState() {
}

// 0x4cdf84 _ZN7Structs13SetFaeryStateD0Ev
void DeletingDestructor(SetFaeryState* self) {
    self->SetFaeryState::~SetFaeryState();
    CustomFree(self);
}

// 0x4c7394 _ZN7Structs13SetFaeryState8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void SetFaeryState::finalize() {
    ScriptCmd::finalize();
}

// 0x5031a8 _ZN7Structs13SetFaeryState4readEP11IStreamBase
void SetFaeryState::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Faery = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    State = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4c7548 _ZN7Structs13SetLevelStateD2Ev
// 0x4c757c _ZN7Structs13SetLevelStateD1Ev
SetLevelState::~SetLevelState() {
}

// 0x4cdef8 _ZN7Structs13SetLevelStateD0Ev
void DeletingDestructor(SetLevelState* self) {
    self->SetLevelState::~SetLevelState();
    CustomFree(self);
}

// 0x4c75b0 _ZN7Structs13SetLevelState8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void SetLevelState::finalize() {
    ScriptCmd::finalize();
}

// 0x502fe4 _ZN7Structs13SetLevelState4readEP11IStreamBase
void SetLevelState::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Level = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    State = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4d1b0c _ZN7Structs9SetStaticD2Ev
// 0x4d1aa8 _ZN7Structs9SetStaticD1Ev
SetStatic::~SetStatic() {
    if (Target != nullptr) CustomFree(Target);  // +0x10
}

// 0x4d1af0 _ZN7Structs9SetStaticD0Ev
void DeletingDestructor(SetStatic* self) {
    self->SetStatic::~SetStatic();
    CustomFree(self);
}

// 0x4d1a78 _ZN7Structs9SetStatic8finalizeEv
void SetStatic::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0x10
        TargetSize = 0;  // +0xc
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500788 _ZN7Structs9SetStatic4readEP11IStreamBase
void SetStatic::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Static = StreamReader::readAs<bool>(stream);  // +0x8
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x10
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4c75b4 _ZN7Structs24SetWorldMapLocationStateD2Ev
// 0x4c75e8 _ZN7Structs24SetWorldMapLocationStateD1Ev
SetWorldMapLocationState::~SetWorldMapLocationState() {
}

// 0x4cdedc _ZN7Structs24SetWorldMapLocationStateD0Ev
void DeletingDestructor(SetWorldMapLocationState* self) {
    self->SetWorldMapLocationState::~SetWorldMapLocationState();
    CustomFree(self);
}

// 0x4c761c _ZN7Structs24SetWorldMapLocationState8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void SetWorldMapLocationState::finalize() {
    ScriptCmd::finalize();
}

// 0x502f10 _ZN7Structs24SetWorldMapLocationState4readEP11IStreamBase
void SetWorldMapLocationState::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    MapLoc = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    State = StreamReader::readAs<std::int32_t>(stream);  // +0xc
}

// 0x4d2534 _ZN7Structs9ShowActorD2Ev
// 0x4d24d0 _ZN7Structs9ShowActorD1Ev
ShowActor::~ShowActor() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d2518 _ZN7Structs9ShowActorD0Ev
void DeletingDestructor(ShowActor* self) {
    self->ShowActor::~ShowActor();
    CustomFree(self);
}

// 0x4d24a0 _ZN7Structs9ShowActor8finalizeEv
void ShowActor::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501354 _ZN7Structs9ShowActor4readEP11IStreamBase
void ShowActor::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d3338 _ZN7Structs9ShowFlashD2Ev
// 0x4d32d4 _ZN7Structs9ShowFlashD1Ev
ShowFlash::~ShowFlash() {
    if (Name != nullptr) CustomFree(Name);  // +0x10
}

// 0x4d331c _ZN7Structs9ShowFlashD0Ev
void DeletingDestructor(ShowFlash* self) {
    self->ShowFlash::~ShowFlash();
    CustomFree(self);
}

// 0x4d3274 _ZN7Structs9ShowFlash8finalizeEv
void ShowFlash::finalize() {
    if (Name != nullptr) {
        CustomFree(Name);  // +0x10
        NameSize = 0;  // +0xc
        Name = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5021b8 _ZN7Structs9ShowFlash4readEP11IStreamBase
void ShowFlash::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Loop = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    NameSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Name != nullptr) CustomFree(Name);  // +0x10
    Name = static_cast<char*>(::operator new[](static_cast<std::size_t>(NameSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Name, NameSize);
    Name[NameSize] = '\0';
    Wait = StreamReader::readAs<bool>(stream);  // +0x14
}

// 0x4c77d0 _ZN7Structs12ShowTrophiesD2Ev
// 0x4c7804 _ZN7Structs12ShowTrophiesD1Ev
ShowTrophies::~ShowTrophies() {
}

// 0x4cde50 _ZN7Structs12ShowTrophiesD0Ev
void DeletingDestructor(ShowTrophies* self) {
    self->ShowTrophies::~ShowTrophies();
    CustomFree(self);
}

// 0x4c7838 _ZN7Structs12ShowTrophies8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void ShowTrophies::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8b4 _ZN7Structs12ShowTrophies4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void ShowTrophies::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c7ac4 _ZN7Structs31SkipAllCharMenuTutorialMessagesD2Ev
// 0x4c7af8 _ZN7Structs31SkipAllCharMenuTutorialMessagesD1Ev
SkipAllCharMenuTutorialMessages::~SkipAllCharMenuTutorialMessages() {
}

// 0x4cdd8c _ZN7Structs31SkipAllCharMenuTutorialMessagesD0Ev
void DeletingDestructor(SkipAllCharMenuTutorialMessages* self) {
    self->SkipAllCharMenuTutorialMessages::~SkipAllCharMenuTutorialMessages();
    CustomFree(self);
}

// 0x4c7b2c _ZN7Structs31SkipAllCharMenuTutorialMessages8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void SkipAllCharMenuTutorialMessages::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff89c _ZN7Structs31SkipAllCharMenuTutorialMessages4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void SkipAllCharMenuTutorialMessages::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c79ec _ZN7Structs23SkipAllTutorialMessagesD2Ev
// 0x4c7a20 _ZN7Structs23SkipAllTutorialMessagesD1Ev
SkipAllTutorialMessages::~SkipAllTutorialMessages() {
}

// 0x4cddc4 _ZN7Structs23SkipAllTutorialMessagesD0Ev
void DeletingDestructor(SkipAllTutorialMessages* self) {
    self->SkipAllTutorialMessages::~SkipAllTutorialMessages();
    CustomFree(self);
}

// 0x4c7a54 _ZN7Structs23SkipAllTutorialMessages8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void SkipAllTutorialMessages::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8a4 _ZN7Structs23SkipAllTutorialMessages4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void SkipAllTutorialMessages::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c7a58 _ZN7Structs27SkipCharMenuTutorialMessageD2Ev
// 0x4c7a8c _ZN7Structs27SkipCharMenuTutorialMessageD1Ev
SkipCharMenuTutorialMessage::~SkipCharMenuTutorialMessage() {
}

// 0x4cdda8 _ZN7Structs27SkipCharMenuTutorialMessageD0Ev
void DeletingDestructor(SkipCharMenuTutorialMessage* self) {
    self->SkipCharMenuTutorialMessage::~SkipCharMenuTutorialMessage();
    CustomFree(self);
}

// 0x4c7ac0 _ZN7Structs27SkipCharMenuTutorialMessage8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void SkipCharMenuTutorialMessage::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8a0 _ZN7Structs27SkipCharMenuTutorialMessage4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void SkipCharMenuTutorialMessage::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4c7980 _ZN7Structs19SkipTutorialMessageD2Ev
// 0x4c79b4 _ZN7Structs19SkipTutorialMessageD1Ev
SkipTutorialMessage::~SkipTutorialMessage() {
}

// 0x4cdde0 _ZN7Structs19SkipTutorialMessageD0Ev
void DeletingDestructor(SkipTutorialMessage* self) {
    self->SkipTutorialMessage::~SkipTutorialMessage();
    CustomFree(self);
}

// 0x4c79e8 _ZN7Structs19SkipTutorialMessage8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void SkipTutorialMessage::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8a8 _ZN7Structs19SkipTutorialMessage4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void SkipTutorialMessage::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4d2de0 _ZN7Structs14SpawnCharacterD2Ev
// 0x4d2d7c _ZN7Structs14SpawnCharacterD1Ev
SpawnCharacter::~SpawnCharacter() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d2dc4 _ZN7Structs14SpawnCharacterD0Ev
void DeletingDestructor(SpawnCharacter* self) {
    self->SpawnCharacter::~SpawnCharacter();
    CustomFree(self);
}

// 0x4d2d4c _ZN7Structs14SpawnCharacter8finalizeEv
void SpawnCharacter::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501d80 _ZN7Structs14SpawnCharacter4readEP11IStreamBase
void SpawnCharacter::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d1508 _ZN7Structs14SpawnContainerD2Ev
// 0x4d14a4 _ZN7Structs14SpawnContainerD1Ev
SpawnContainer::~SpawnContainer() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d14ec _ZN7Structs14SpawnContainerD0Ev
void DeletingDestructor(SpawnContainer* self) {
    self->SpawnContainer::~SpawnContainer();
    CustomFree(self);
}

// 0x4d1474 _ZN7Structs14SpawnContainer8finalizeEv
void SpawnContainer::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500230 _ZN7Structs14SpawnContainer4readEP11IStreamBase
void SpawnContainer::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4c6ef4 _ZN7Structs11StartDialogD2Ev
// 0x4c6f28 _ZN7Structs11StartDialogD1Ev
StartDialog::~StartDialog() {
}

// 0x4ce09c _ZN7Structs11StartDialogD0Ev
void DeletingDestructor(StartDialog* self) {
    self->StartDialog::~StartDialog();
    CustomFree(self);
}

// 0x4c6f5c _ZN7Structs11StartDialog8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void StartDialog::finalize() {
    ScriptCmd::finalize();
}

// 0x50345c _ZN7Structs11StartDialog4readEP11IStreamBase
void StartDialog::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Actor = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Style = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    Text = StreamReader::readAs<std::int32_t>(stream);  // +0x10
}

// 0x4c6f60 _ZN7Structs13StartDialogIDD2Ev
// 0x4c6f94 _ZN7Structs13StartDialogIDD1Ev
StartDialogID::~StartDialogID() {
}

// 0x4ce080 _ZN7Structs13StartDialogIDD0Ev
void DeletingDestructor(StartDialogID* self) {
    self->StartDialogID::~StartDialogID();
    CustomFree(self);
}

// 0x4c6fc8 _ZN7Structs13StartDialogID8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void StartDialogID::finalize() {
    ScriptCmd::finalize();
}

// 0x5033e4 _ZN7Structs13StartDialogID4readEP11IStreamBase
void StartDialogID::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    DialogID = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4d2840 _ZN7Structs9StopActorD2Ev
// 0x4d27dc _ZN7Structs9StopActorD1Ev
StopActor::~StopActor() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d2824 _ZN7Structs9StopActorD0Ev
void DeletingDestructor(StopActor* self) {
    self->StopActor::~StopActor();
    CustomFree(self);
}

// 0x4d27ac _ZN7Structs9StopActor8finalizeEv
void StopActor::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5016f4 _ZN7Structs9StopActor4readEP11IStreamBase
void StopActor::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4c7254 _ZN7Structs10StopEffectD2Ev
// 0x4c7288 _ZN7Structs10StopEffectD1Ev
StopEffect::~StopEffect() {
}

// 0x4cdfbc _ZN7Structs10StopEffectD0Ev
void DeletingDestructor(StopEffect* self) {
    self->StopEffect::~StopEffect();
    CustomFree(self);
}

// 0x4c72bc _ZN7Structs10StopEffect8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void StopEffect::finalize() {
    ScriptCmd::finalize();
}

// 0x5032f4 _ZN7Structs10StopEffect4readEP11IStreamBase
void StopEffect::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Effect = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c70a4 _ZN7Structs9StopSoundD2Ev
// 0x4c70d8 _ZN7Structs9StopSoundD1Ev
StopSound::~StopSound() {
}

// 0x4ce02c _ZN7Structs9StopSoundD0Ev
void DeletingDestructor(StopSound* self) {
    self->StopSound::~StopSound();
    CustomFree(self);
}

// 0x4c710c _ZN7Structs9StopSound8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void StopSound::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff9d4 _ZN7Structs9StopSound4readEP11IStreamBase
void StopSound::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    FadeoutTime = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    IsMusic = StreamReader::readAs<bool>(stream);  // +0xc
    SoundID = StreamReader::readAs<std::int32_t>(stream);  // +0x10
}

// 0x4d1cc4 _ZN7Structs12UnEquipHandsD2Ev
// 0x4d1c60 _ZN7Structs12UnEquipHandsD1Ev
UnEquipHands::~UnEquipHands() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d1ca8 _ZN7Structs12UnEquipHandsD0Ev
void DeletingDestructor(UnEquipHands* self) {
    self->UnEquipHands::~UnEquipHands();
    CustomFree(self);
}

// 0x4d1c30 _ZN7Structs12UnEquipHands8finalizeEv
void UnEquipHands::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x500914 _ZN7Structs12UnEquipHands4readEP11IStreamBase
void UnEquipHands::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d1da0 _ZN7Structs19UnEquipItemFromSlotD2Ev
// 0x4d1d3c _ZN7Structs19UnEquipItemFromSlotD1Ev
UnEquipItemFromSlot::~UnEquipItemFromSlot() {
    if (Target != nullptr) CustomFree(Target);  // +0x10
}

// 0x4d1d84 _ZN7Structs19UnEquipItemFromSlotD0Ev
void DeletingDestructor(UnEquipItemFromSlot* self) {
    self->UnEquipItemFromSlot::~UnEquipItemFromSlot();
    CustomFree(self);
}

// 0x4d1d0c _ZN7Structs19UnEquipItemFromSlot8finalizeEv
void UnEquipItemFromSlot::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0x10
        TargetSize = 0;  // +0xc
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5009d4 _ZN7Structs19UnEquipItemFromSlot4readEP11IStreamBase
void UnEquipItemFromSlot::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    SlotID = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0xc
    if (Target != nullptr) CustomFree(Target);  // +0x10
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x10, length +0xc
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4d2f98 _ZN7Structs15UnlockCharacterD2Ev
// 0x4d2f34 _ZN7Structs15UnlockCharacterD1Ev
UnlockCharacter::~UnlockCharacter() {
    if (Target != nullptr) CustomFree(Target);  // +0xc
}

// 0x4d2f7c _ZN7Structs15UnlockCharacterD0Ev
void DeletingDestructor(UnlockCharacter* self) {
    self->UnlockCharacter::~UnlockCharacter();
    CustomFree(self);
}

// 0x4d2f04 _ZN7Structs15UnlockCharacter8finalizeEv
void UnlockCharacter::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0xc
        TargetSize = 0;  // +0x8
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x501f0c _ZN7Structs15UnlockCharacter4readEP11IStreamBase
void UnlockCharacter::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x8
    if (Target != nullptr) CustomFree(Target);  // +0xc
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0xc, length +0x8
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = '\0';
}

// 0x4c72c0 _ZN7Structs4WaitD2Ev
// 0x4c72f4 _ZN7Structs4WaitD1Ev
Wait::~Wait() {
}

// 0x4cdfa0 _ZN7Structs4WaitD0Ev
void DeletingDestructor(Wait* self) {
    self->Wait::~Wait();
    CustomFree(self);
}

// 0x4c7328 _ZN7Structs4Wait8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void Wait::finalize() {
    ScriptCmd::finalize();
}

// 0x50327c _ZN7Structs4Wait4readEP11IStreamBase
void Wait::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Time = StreamReader::readAs<std::int32_t>(stream);  // +0x8
}

// 0x4c6e1c _ZN7Structs10WaitCameraD2Ev
// 0x4c6e50 _ZN7Structs10WaitCameraD1Ev
WaitCamera::~WaitCamera() {
}

// 0x4ce0d4 _ZN7Structs10WaitCameraD0Ev
void DeletingDestructor(WaitCamera* self) {
    self->WaitCamera::~WaitCamera();
    CustomFree(self);
}

// 0x4c6e84 _ZN7Structs10WaitCamera8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void WaitCamera::finalize() {
    ScriptCmd::finalize();
}

// 0x4ffdc0 _ZN7Structs10WaitCamera4readEP11IStreamBase
void WaitCamera::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    StreamReader::readAs<float>(stream, &Speed);  // +0x8
}

// 0x4c6fcc _ZN7Structs10WaitDialogD2Ev
// 0x4c7000 _ZN7Structs10WaitDialogD1Ev
WaitDialog::~WaitDialog() {
}

// 0x4ce064 _ZN7Structs10WaitDialogD0Ev
void DeletingDestructor(WaitDialog* self) {
    self->WaitDialog::~WaitDialog();
    CustomFree(self);
}

// 0x4c7034 _ZN7Structs10WaitDialog8finalizeEv
// thunk: b 0x4c6c68, forwards to ScriptCmd::finalize
void WaitDialog::finalize() {
    ScriptCmd::finalize();
}

// 0x4ff8d0 _ZN7Structs10WaitDialog4readEP11IStreamBase
// thunk: b 0x4ff828, forwards to ScriptCmd::read
void WaitDialog::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
}

// 0x4d3a0c _ZN7Structs10ExecScriptD2Ev
// 0x4d3a70 _ZN7Structs10ExecScriptD1Ev
ExecScript::~ExecScript() {
    if (ScriptAlts != nullptr) CustomFree(ScriptAlts);  // +0x14
}

// 0x4d3a54 _ZN7Structs10ExecScriptD0Ev
void DeletingDestructor(ExecScript* self) {
    self->ExecScript::~ExecScript();
    CustomFree(self);
}

// 0x4d39dc _ZN7Structs10ExecScript8finalizeEv
void ExecScript::finalize() {
    if (ScriptAlts != nullptr) {
        CustomFree(ScriptAlts);  // +0x14
        ScriptAltsSize = 0;  // +0x10
        ScriptAlts = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x4ffc24 _ZN7Structs10ExecScript4readEP11IStreamBase
void ExecScript::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    IsGlobal = StreamReader::readAs<bool>(stream);  // +0x8
    Script = StreamReader::readAs<std::int32_t>(stream);  // +0xc
    ScriptAltsSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x10
    if (ScriptAlts != nullptr) CustomFree(ScriptAlts);  // +0x14
    ScriptAlts = static_cast<std::int32_t*>(::operator new[](std::size_t{4} * ScriptAltsSize, kPydataBufferHint));
    for (std::uint32_t i = 0; i < ScriptAltsSize; ++i) {
        ScriptAlts[i] = StreamReader::readAs<std::int32_t>(stream);
    }
    Wait = StreamReader::readAs<bool>(stream);  // +0x18
}

// 0x4d345c _ZN7Structs10PlayEffectD1Ev
// 0x4d34c8 _ZN7Structs10PlayEffectD2Ev
PlayEffect::~PlayEffect() {
    if (Target != nullptr) CustomFree(Target);  // +0x20
}

// 0x4d34ac _ZN7Structs10PlayEffectD0Ev
void DeletingDestructor(PlayEffect* self) {
    self->PlayEffect::~PlayEffect();
    CustomFree(self);
}

// 0x4d342c _ZN7Structs10PlayEffect8finalizeEv
void PlayEffect::finalize() {
    if (Target != nullptr) {
        CustomFree(Target);  // +0x20
        TargetSize = 0;  // +0x1c
        Target = nullptr;
    }
    ScriptCmd::finalize();
}

// 0x5022e4 _ZN7Structs10PlayEffect4readEP11IStreamBase
void PlayEffect::read(IStreamBase* stream) {
    ScriptCmd::read(stream);
    Effect = StreamReader::readAs<std::int32_t>(stream);  // +0x8
    Offset.read(stream);  // +0xc
    TargetSize = StreamReader::readAs<std::uint32_t>(stream);  // +0x1c
    if (Target != nullptr) CustomFree(Target);  // +0x20
    Target = static_cast<char*>(::operator new[](static_cast<std::size_t>(TargetSize) + 1, kPydataBufferHint));  // +0x20, length +0x1c
    StreamReader::readStringEx(stream, Target, TargetSize);
    Target[TargetSize] = ' ';
    Wait = StreamReader::readAs<bool>(stream);  // +0x24
}

}  // namespace Structs
