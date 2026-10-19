#pragma once

// Structs::X record classes of slice structs_5 (23 classes; ItemPowerStrength and ItemPowerAllStats are
// skipped, see the ledger). Hand-written from the pseudocode with the conventions of structs_records.hpp:
// m_wN is word N (offset 4*N), m_offN an unaligned offset, and the original 32-bit offset is in each comment.
// Freed pointers are void*; string buffers are char*. Element tables hold polymorphic records (NOTES.md,
// "Arrays element ABI"). Each read is void: the original's return value is not modelled.
#include <cstdint>

#include "pydata-accessors/deps/stream_reader.hpp"
#include "pydata-accessors/name_table.hpp"

namespace Structs {

class ItemPowerEntryList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~ItemPowerEntryList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t list_entriesSize = 0;  // +0x4, element count
    void* list_entries = nullptr;    // +0x8, members (stride 12, ItemPowerEntry)
};
void DeletingDestructor(ItemPowerEntryList* self);

class TriggerTrap {
public:
    static constexpr int kCount = 5;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~TriggerTrap();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Damage = 0;  // +0x4
    std::int32_t HurtChance = 0;  // +0x8
    std::uint32_t ScriptSize = 0;  // +0xc, string length
    char* Script = nullptr;  // +0x10, string buffer
    std::int32_t Sound = 0;  // +0x14
    std::int32_t Visual = 0;  // +0x18
};
void DeletingDestructor(TriggerTrap* self);

class TriggerObject {
public:
    static constexpr int kCount = 4;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~TriggerObject();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t InteractionType = 0;  // +0x4
    std::uint32_t ScriptSize = 0;  // +0x8, string length
    char* Script = nullptr;  // +0xc, string buffer
    std::int32_t Sound = 0;  // +0x10
    std::int32_t Visual = 0;  // +0x14
};
void DeletingDestructor(TriggerObject* self);

class TimerTrap {
public:
    static constexpr int kCount = 6;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~TimerTrap();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Damage = 0;  // +0x4
    std::int32_t Delay = 0;  // +0x8
    std::int32_t HurtChance = 0;  // +0xc
    std::uint32_t ScriptSize = 0;  // +0x10, string length
    char* Script = nullptr;  // +0x14, string buffer
    std::int32_t Sound = 0;  // +0x18
    std::int32_t Visual = 0;  // +0x1c
};
void DeletingDestructor(TimerTrap* self);

class ProjectileTrap {
public:
    static constexpr int kCount = 8;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~ProjectileTrap();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Damage = 0;  // +0x4
    std::int32_t Delay = 0;  // +0x8
    std::int32_t HurtChance = 0;  // +0xc
    bool IsActive = false;  // +0x10
    std::int32_t Projectile = 0;  // +0x14
    std::uint32_t ScriptSize = 0;  // +0x18, string length
    char* Script = nullptr;  // +0x1c, string buffer
    std::int32_t Sound = 0;  // +0x20
    std::int32_t Visual = 0;  // +0x24
};
void DeletingDestructor(ProjectileTrap* self);

class OpenableContainer {
public:
    static constexpr int kCount = 8;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~OpenableContainer();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Effect = 0;  // +0x4
    std::int32_t InteractSound = 0;  // +0x8
    bool KeepSolid = false;  // +0xc
    std::int32_t Loot = 0;  // +0x10
    std::uint32_t ScriptSize = 0;  // +0x14, string length
    char* Script = nullptr;  // +0x18, string buffer
    std::int32_t TrapChance = 0;  // +0x1c
    std::int32_t TrapType = 0;  // +0x20
    std::int32_t Visual = 0;  // +0x24
};
void DeletingDestructor(OpenableContainer* self);

class ExplosiveTrap {
public:
    static constexpr int kCount = 4;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~ExplosiveTrap();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Damage = 0;  // +0x4
    std::int32_t Effect = 0;  // +0x8
    std::uint32_t ScriptSize = 0;  // +0xc, string length
    char* Script = nullptr;  // +0x10, string buffer
    std::int32_t Visual = 0;  // +0x14
};
void DeletingDestructor(ExplosiveTrap* self);

class Door {
public:
    static constexpr int kCount = 4;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~Door();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t ScriptSize = 0;  // +0x4, string length
    char* Script = nullptr;  // +0x8, string buffer
    std::int32_t SoundClose = 0;  // +0xc
    std::int32_t SoundOpen = 0;  // +0x10
    std::int32_t Visual = 0;  // +0x14
};
void DeletingDestructor(Door* self);

class DestructibleContainer {
public:
    static constexpr int kCount = 15;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~DestructibleContainer();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t AirResist = 0;  // +0x4
    std::int32_t DamageReduction = 0;  // +0x8
    std::int32_t EarthResist = 0;  // +0xc
    std::int32_t Effect = 0;  // +0x10
    std::int32_t FireResist = 0;  // +0x14
    std::int32_t HitPoints = 0;  // +0x18
    std::int32_t InteractSound = 0;  // +0x1c
    bool KeepSolid = false;  // +0x20
    std::int32_t LightningResist = 0;  // +0x24
    std::int32_t Loot = 0;  // +0x28
    std::uint32_t ScriptSize = 0;  // +0x2c, string length
    char* Script = nullptr;  // +0x30, string buffer
    std::int32_t TrapChance = 0;  // +0x34
    std::int32_t TrapType = 0;  // +0x38
    std::int32_t Visual = 0;  // +0x3c
    std::int32_t WaterResist = 0;  // +0x40
};
void DeletingDestructor(DestructibleContainer* self);

class FaerySpellList {
public:
    virtual ~FaerySpellList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t ListSize = 0;  // +0x4, count of int32 words
    void* List = nullptr;    // +0x8, int32 array
};
void DeletingDestructor(FaerySpellList* self);

class FootstepEffect {
public:
    static constexpr int kCount = 4;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~FootstepEffect();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Effect = 0;  // +0x4
    std::uint32_t FloortypeSize = 0;  // +0x8, string length
    char* Floortype = nullptr;  // +0xc, string buffer
    std::uint32_t RunSoundSize = 0;  // +0x10, count of m_w5
    void* RunSound = nullptr;  // +0x14, int32 array
    std::uint32_t WalkSoundSize = 0;  // +0x18, count of m_w7
    void* WalkSound = nullptr;  // +0x1c, int32 array
};
void DeletingDestructor(FootstepEffect* self);

class AnimFX {
public:
    virtual ~AnimFX();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t File = 0;  // +0x4
    bool ForceCancel = false;  // +0x8
    std::int32_t Loop = 0;  // +0xc
    bool OrientOnce = false;  // +0x10
    bool OrientWithAnchor = false;  // +0x11
    std::int32_t PlayTime = 0;  // +0x14
    std::int32_t PoolSize = 0;  // +0x18
    std::int32_t Redir = 0;  // +0x1c
    bool ScaleWithAnchor = false;  // +0x20
    bool SelfIllum = false;  // +0x21
    float Speed = 0.0f;  // +0x24
    std::uint32_t SubObjectSize = 0;  // +0x28, string length
    char* SubObject = nullptr;  // +0x2c, string buffer
};
void DeletingDestructor(AnimFX* self);

class AnimFXTpl {
public:
    static constexpr int kCount = 4;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~AnimFXTpl();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    bool ForceCache = false;  // +0x4
    std::int32_t LoopAFX = 0;  // +0x8
    std::uint32_t StepsSize = 0;  // +0xc, element count
    void* Steps = nullptr;  // +0x10, members (stride 48, AnimFX)
    std::int32_t Type = 0;  // +0x14
};
void DeletingDestructor(AnimFXTpl* self);

class DialogStepList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~DialogStepList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t stepsSize = 0;  // +0x4, element count
    void* steps = nullptr;    // +0x8, members (stride 20, DialogStep)
};
void DeletingDestructor(DialogStepList* self);

class ConditionalDialog {
public:
    virtual ~ConditionalDialog();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t ListSize = 0;  // +0x4, element count
    void* List = nullptr;    // +0x8, members (stride 16, DialogCondition)
};
void DeletingDestructor(ConditionalDialog* self);

class DialogCondition {
public:
    virtual ~DialogCondition();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Condition = 0;  // +0x4
    std::uint32_t ScriptSize = 0;  // +0x8, string length
    char* Script = nullptr;  // +0xc, string buffer
};
void DeletingDestructor(DialogCondition* self);

class DialogActor {
public:
    static constexpr int kCount = 3;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~DialogActor();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t FrameID = 0;  // +0x4
    std::uint32_t FrameLabelSize = 0;  // +0x8, string length
    char* FrameLabel = nullptr;  // +0xc, string buffer
    std::int32_t Name = 0;  // +0x10
};
void DeletingDestructor(DialogActor* self);

class ColladaFile {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~ColladaFile();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t NameSize = 0;  // +0x4, string length
    char* Name = nullptr;    // +0x8, string buffer
};
void DeletingDestructor(ColladaFile* self);

class CharTemplate {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~CharTemplate();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t CharInfoSize = 0;  // +0x4, element count
    void* CharInfo = nullptr;    // +0x8, members (stride 8)
};
void DeletingDestructor(CharTemplate* self);

class StatListList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~StatListList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t list_entriesSize = 0;  // +0x4, count of int32 words
    void* list_entries = nullptr;    // +0x8, int32 array
};
void DeletingDestructor(StatListList* self);

class StatAutoAssignTargetList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~StatAutoAssignTargetList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t list_entriesSize = 0;  // +0x4, element count
    void* list_entries = nullptr;    // +0x8, members (stride 16, StatAutoAssignTarget)
};
void DeletingDestructor(StatAutoAssignTargetList* self);

class ClassFuncList {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~ClassFuncList();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t list_entriesSize = 0;  // +0x4, element count
    void* list_entries = nullptr;    // +0x8, members (stride 24)
};
void DeletingDestructor(ClassFuncList* self);

class AnimTpl {
public:
    static constexpr int kCount = 3;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~AnimTpl();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::int32_t Loop = 0;  // +0x4
    std::uint32_t StepsSize = 0;  // +0x8, element count
    void* Steps = nullptr;    // +0xc, members (AnimStep, stride 56)
    std::int32_t Type = 0;  // +0x10
};
void DeletingDestructor(AnimTpl* self);

class AIFactions {
public:
    static constexpr int kCount = 1;  // member names: the PyData name table of the class (member_names.hpp)
    static pydata::NameTable m_dataNames;
    virtual ~AIFactions();
    virtual void finalize();
    virtual void read(IStreamBase* stream);
    std::uint32_t factionsSize = 0;  // +0x4, element count
    void* factions = nullptr;    // +0x8, members (stride 12, AIFaction)
};
void DeletingDestructor(AIFactions* self);

}  // namespace Structs
