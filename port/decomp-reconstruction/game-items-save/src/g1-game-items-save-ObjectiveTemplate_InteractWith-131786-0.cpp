// Batch g1-game-items-save-ObjectiveTemplate_InteractWith-131786-0 (owner ObjectiveTemplate_InteractWith, part 1 of 2).
// Covers the six GetPositions instances (empty), the six complete-object destructors (D1), the six deleting destructors
// (D0, compiler generated: see the ledger), and the DBG_TraceDetailedObjectiveInformation instances for
// v2QuestDestroyGameObject and v2QuestTriggerOn, and the other four DBG instances (v2QuestPickedUpLiftable, v2QuestOpenGameObject,
// v2QuestTalkToNPC and v2QuestTriggerPlate; link-1: part 2 held a second, partial body of the same template, removed so that the
// symbol has one definition). Part 2 holds Compile and handleEvent.
// Declarations and layout come from dh2/ObjectiveTemplate_InteractWith.hpp.
//
// The class is a template. Each body is a template definition in this file, followed by an explicit instantiation for
// the instance whose address is in the comment above it (the same convention as PropertyMap in
// g1-game-items-save-PropertyMap-ab4ea6-0.cpp). The template definitions are not visible to other translation units.
//
// Notes:
//  * m_pyData is the row, Structs::v2QuestObjectiveStub (pydata-accessors/structs_records.hpp). The listing reads
//    row +0x04 (m_w1, the objective type), +0x20 (m_w8, the object id) and +0x24 (m_w9, the level id).
//  * DBG_TraceDetailedObjectiveInformation (both instances) prints two pydata names. The type 5 object name is
//    Arrays::CharacterTable::m_memberNames[row +0x20], and the level name is Arrays::LevelList::m_memberNames[row +0x24].
//    Both tables are declared in pydata-accessors/member_names.hpp, which is included here with Character.hpp in one
//    translation unit. TableName() is the listing's lookup: "na" for an index below 0 or at or above the table size,
//    otherwise names[index].
//  * Type 5 is the literal the listing compares against (the v2QuestObjectiveType constant it names is not recovered).
//    For that type the object id is matched against Character::SafeGetCharPropsId() over ObjectManager::m_characters
//    (+0x60, reached through the Application singleton's m_objectManager at +0x38), in list order. The first match
//    prints the character's name, which the listing reads at Character +0x44. That word is ObjectBase::m_name.c_str()
//    (the same mapping as g1-game-world-GameObject-5d2019-3.cpp). No match prints "??".
//  * __sFILE is the libc FILE on the target. The stream is converted to std::FILE* with reinterpret_cast before the
//    stdio calls, as in g1-game-items-save-Objective-50c892-0.cpp.

#include "dh2/ObjectiveTemplate_InteractWith.hpp"

#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Objective_EventReceiver.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// The template arguments are only named here. GetObjectiveImplInstance.hpp forward-declares the same way.
namespace Structs {
class v2QuestPickedUpLiftable;
class v2QuestTriggerOn;
class v2QuestOpenGameObject;
class v2QuestDestroyGameObject;
class v2QuestTriggerPlate;
class v2QuestTalkToNPC;
}  // namespace Structs
class QE_PickedUpLiftable;
class QE_TriggerOn;
class QE_OpenGameObject;
class QE_DestroyGameObject;
class QE_TriggerPlate;
class QE_TalkToNPC;

namespace {

// The DBG listing's pydata name lookup (Arrays::X::m_memberNames, a pydata::NameTable). An index below 0, or at or above
// the table's element count (Arrays::X::size), prints "na". Otherwise the name at that index is printed.
const char* TableName(const pydata::NameTable& table, std::uint32_t count, int index) {
    return (index < 0 || static_cast<std::uint32_t>(index) >= count) ? "na" : table.names[index];
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// GetPositions (slot 0x20). The listing is a bare return (asm BX LR) for all six instances: nothing is added.

template <typename TStruct, typename TEvent>
void ObjectiveTemplate_InteractWith<TStruct, TEvent>::GetPositions(Vector3DFList& /*positions*/) const {}

// 0x47a898 _ZNK30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::GetPositions(
    Vector3DFList&) const;

// 0x47a89c _ZNK30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::GetPositions(Vector3DFList&) const;

// 0x47a8a0 _ZNK30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::GetPositions(
    Vector3DFList&) const;

// 0x47a8a4 _ZNK30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::GetPositions(
    Vector3DFList&) const;

// 0x47a8a8 _ZNK30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::GetPositions(Vector3DFList&) const;

// 0x47a8ac _ZNK30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::GetPositions(Vector3DFList&) const;

// ---------------------------------------------------------------------------------------------------------------------
// ~ObjectiveTemplate_InteractWith, complete-object form (D1). The listing stores the two vtable pointers (the primary
// one and the IEventReceiver one at +0x18) and then calls Objective::~Objective (D2). The compiler emits the vptr stores
// and the base-class chain for an empty body, so the body is empty. The deleting form (D0) is compiler generated.
// Intermediate destructors (Objective_SavedQty D1 0x47a240 also calls Objective::~Objective directly) have no effect of
// their own, so the chain gives the same result.

template <typename TStruct, typename TEvent>
ObjectiveTemplate_InteractWith<TStruct, TEvent>::~ObjectiveTemplate_InteractWith() {}

// 0x47d384 _ZN30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableED1Ev
template ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::~ObjectiveTemplate_InteractWith();

// 0x47d3d4 _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnED1Ev
template ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::~ObjectiveTemplate_InteractWith();

// 0x47d424 _ZN30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectED1Ev
template ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::~ObjectiveTemplate_InteractWith();

// 0x47d4c4 _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCED1Ev
template ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::~ObjectiveTemplate_InteractWith();

// 0x47d514 _ZN30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectED1Ev
template ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::~ObjectiveTemplate_InteractWith();

// 0x47d564 _ZN30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateED1Ev
template ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::~ObjectiveTemplate_InteractWith();

// The deleting destructors 0x47d738, 0x47d790, 0x47d898, 0x47dc5c, 0x47dcb4 and 0x47dd0c (D0) are not written. Each runs
// the complete-object destructor above and then CustomFree(this); the C++ delete expression produces that form.

// ---------------------------------------------------------------------------------------------------------------------
// DBG_TraceDetailedObjectiveInformation (slot 0x0c). The listing prints the header line, the type name, the object and the
// level, then calls Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation for the base lines. The type 5 object
// name comes from Arrays::CharacterTable and the level name from Arrays::LevelList, both through TableName().

template <typename TStruct, typename TEvent>
int ObjectiveTemplate_InteractWith<TStruct, TEvent>::DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const {
    std::FILE* out = reinterpret_cast<std::FILE*>(stream);
    const Structs::v2QuestObjectiveStub* row = m_pyData;  // +0x0c the row this objective was built from

    static_cast<void>(std::fwrite("\t  Objective_InteractWith\n", 1, 0x1A, out));
    const char* constantName =
        ApplicationGetInstance().m_pyDataConstants->getConstantName("v2QuestObjectiveType", row->Type);  // row +0x04
    std::fprintf(out, "\t    Type        : %s\n", constantName);

    if (row->Type == 5) {  // type 5: the object is a character, matched by its property id
        const int objectId = row->OID1;  // row +0x20
        Character* matched = nullptr;
        for (Character* character : ApplicationGetInstance().m_objectManager->m_characters) {  // ObjectManager +0x60
            if (objectId == character->SafeGetCharPropsId()) {
                matched = character;
                break;
            }
        }
        // Arrays::CharacterTable::m_memberNames[objectId] (or "na") is printed first in both branches. The matched
        // character's name is read at Character +0x44, which is ObjectBase::m_name.c_str() (the string's data pointer
        // at +0x14 inside m_name at +0x30, from std::string::_M_assign at 0x3109e0).
        const char* tableObjectName = TableName(Arrays::CharacterTable::m_memberNames, Arrays::CharacterTable::size, objectId);
        if (matched == nullptr) {
            std::fprintf(out, "\t    Object      : %s(%d) => ??\n", tableObjectName, objectId);
        } else {
            std::fprintf(out, "\t    Object      : %s(%d) => %s\n", tableObjectName, objectId, matched->m_name.c_str());
        }
    } else {
        std::fprintf(out, "\t    Object      : %d\n", row->OID1);  // row +0x20
    }

    // Arrays::LevelList::m_memberNames[row->m_w9] (or "na").
    std::fprintf(out, "\t    Level (OID) : %s\n\n", TableName(Arrays::LevelList::m_memberNames, Arrays::LevelList::size, row->OID2));  // row +0x24
    return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(stream);
}

// 0x47c1cc _ZNK30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::
    DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const;

// 0x47dd5c _ZNK30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::DBG_TraceDetailedObjectiveInformation(
    __sFILE* stream) const;

// 0x47df64 _ZNK30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::
    DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const;

// 0x47e16c _ZNK30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::
    DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const;

// 0x47e374 _ZNK30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::DBG_TraceDetailedObjectiveInformation(
    __sFILE* stream) const;

// 0x47e57c _ZNK30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::
    DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const;
