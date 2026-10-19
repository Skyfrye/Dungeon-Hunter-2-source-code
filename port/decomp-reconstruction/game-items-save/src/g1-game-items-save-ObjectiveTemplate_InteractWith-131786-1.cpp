// Batch g1-game-items-save-ObjectiveTemplate_InteractWith-131786-1 (owner ObjectiveTemplate_InteractWith, part 2 of 2).
// Covers the six Compile instances and the six handleEvent instances. Part 1 (-131786-0) holds the GetPositions, the
// destructors and all six DBG_TraceDetailedObjectiveInformation instances.
// Declarations and layout come from dh2/ObjectiveTemplate_InteractWith.hpp.
//
// The class is a template. Each body is a template definition in this file, followed by an explicit instantiation for
// each instance whose address is in the comment above it (the convention of part 1). The six instances of Compile and of
// handleEvent run the same code in the listing (the Hex-Rays pseudocode is identical per method, apart from casts), so
// one definition serves them all.
//
// Layout used (32-bit offsets, as the listing reads them):
//  * Objective (dh2/Objective.hpp): m_type +0x04, m_valid +0x08, m_pyData +0x0c (the row), m_completed +0x14.
//  * Objective_Qty::m_currentQty +0x20 (dh2/Objective_Qty.hpp), the quantity gathered so far.
//  * ObjectiveTemplate_InteractWith::m_objectId +0x24 (dh2/ObjectiveTemplate_InteractWith.hpp).
//  * Row, Structs::v2QuestObjectiveStub (pydata-accessors/structs_records.hpp): m_w1 +0x04 the v2QuestObjectiveType
//    constant, m_w8 +0x20 the object id, m_w9 +0x24 the level id (an Arrays::LevelList index), m_w10 +0x28 the required count.
//  * Event, QE_InteractWith (dh2/QE_InteractWith.hpp): m_flag0 +0x10, m_flag1 +0x11, m_value +0x14, m_matchId +0x18 (DataID).
//
// Notes:
//  * Compile copies the object id from the row (+0x20) into m_objectId (+0x24). An id of -1 stops there. Otherwise the
//    objective is valid (+0x08), and once m_currentQty reaches the row's required count it is completed:
//    Objective::SetIsCompleted() (a direct call), then Unregister() through the vtable (slot +0x1c). The return value of
//    the listing is the vtable call's, which is void here.
//  * handleEvent counts only an event whose DataID (+0x18) equals m_objectId. When flag1 (+0x11) is set, the event carries
//    an absolute count in value (+0x14), kept only if it is above m_currentQty. Otherwise the event counts one:
//    m_currentQty is incremented, flag0 is set to 1, and value receives the new count. The objective completes when the
//    count reaches the row's required count (row +0x28). Every path returns false (the listing returns 0).
//  * The listing reads and writes the event through the pointer it receives without a type check. The event is therefore
//    viewed as TEvent (each of the six QE_ classes derives from QE_InteractWith), and const is cast off for the two writes,
//    which the listing performs as well.

#include "dh2/ObjectiveTemplate_InteractWith.hpp"

#include <cstdint>
#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Objective.hpp"
#include "dh2/Objective_EventReceiver.hpp"
#include "dh2/QE_DestroyGameObject.hpp"
#include "dh2/QE_OpenGameObject.hpp"
#include "dh2/QE_PickedUpLiftable.hpp"
#include "dh2/QE_TalkToNPC.hpp"
#include "dh2/QE_TriggerOn.hpp"
#include "dh2/QE_TriggerPlate.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

// ---------------------------------------------------------------------------------------------------------------------
// Compile (slot 0x08). The six instances have the same code.

template <typename TStruct, typename TEvent>
void ObjectiveTemplate_InteractWith<TStruct, TEvent>::Compile() {
    const Structs::v2QuestObjectiveStub* row = m_pyData;  // +0x0c
    m_objectId = row->OID1;                               // row +0x20 copied to +0x24
    if (m_objectId == -1) {
        return;
    }
    m_valid = true;                                       // +0x08
    if (m_currentQty < row->Value) {                      // +0x20 below the row's required count (+0x28)
        return;
    }
    Objective::SetIsCompleted();                          // direct call in the listing
    Unregister();                                         // vtable slot +0x1c
}

// 0x47eb90 _ZN30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableE7CompileEv
template void ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::Compile();

// 0x47ebe0 _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnE7CompileEv
template void ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::Compile();

// 0x47ec30 _ZN30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectE7CompileEv
template void ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::Compile();

// 0x47ec80 _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCE7CompileEv
template void ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::Compile();

// 0x47ecd0 _ZN30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectE7CompileEv
template void ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::Compile();

// 0x47ed20 _ZN30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateE7CompileEv
template void ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::Compile();

// ---------------------------------------------------------------------------------------------------------------------
// handleEvent (slot 0x38). The six instances have the same code. Every path returns 0 (false) in the listing.

template <typename TStruct, typename TEvent>
bool ObjectiveTemplate_InteractWith<TStruct, TEvent>::handleEvent(const IEvent* event, const EventManager* /*manager*/) {
    const Structs::v2QuestObjectiveStub* row = m_pyData;  // +0x0c
    // The listing reads the QE_InteractWith fields of the event and writes flag0 and value back into it.
    TEvent* raised = const_cast<TEvent*>(static_cast<const TEvent*>(event));
    if (m_objectId != raised->m_matchId) {  // objective +0x24 against event +0x18 (DataID)
        return false;
    }
    int count = 0;
    if (raised->m_flag1 != 0) {  // event +0x11: the event carries an absolute count in value
        count = raised->m_value;  // event +0x14
        if (m_currentQty >= count) {
            return false;
        }
        m_currentQty = count;  // +0x20
    } else {
        ++m_currentQty;                   // +0x20
        raised->m_flag0 = 1;              // event +0x10
        raised->m_value = m_currentQty;   // event +0x14
        count = m_currentQty;
    }
    if (row->Value > count) {  // row +0x28, the required count
        return false;
    }
    Objective::SetIsCompleted();  // direct call in the listing
    Unregister();                 // vtable slot +0x1c
    return false;
}

// 0x47f194 _ZN30ObjectiveTemplate_InteractWithIN7Structs19v2QuestTriggerPlateE15QE_TriggerPlateE11handleEventEPK6IEventPK12EventManager
template bool ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>::handleEvent(const IEvent*,
                                                                                                        const EventManager*);

// 0x47f3e4 _ZN30ObjectiveTemplate_InteractWithIN7Structs24v2QuestDestroyGameObjectE20QE_DestroyGameObjectE11handleEventEPK6IEventPK12EventManager
template bool ObjectiveTemplate_InteractWith<Structs::v2QuestDestroyGameObject, QE_DestroyGameObject>::handleEvent(
    const IEvent*, const EventManager*);

// 0x47f478 _ZN30ObjectiveTemplate_InteractWithIN7Structs21v2QuestOpenGameObjectE17QE_OpenGameObjectE11handleEventEPK6IEventPK12EventManager
template bool ObjectiveTemplate_InteractWith<Structs::v2QuestOpenGameObject, QE_OpenGameObject>::handleEvent(const IEvent*,
                                                                                                             const EventManager*);

// 0x47f50c _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTalkToNPCE12QE_TalkToNPCE11handleEventEPK6IEventPK12EventManager
template bool ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC>::handleEvent(const IEvent*,
                                                                                                    const EventManager*);

// 0x47f5a0 _ZN30ObjectiveTemplate_InteractWithIN7Structs23v2QuestPickedUpLiftableE19QE_PickedUpLiftableE11handleEventEPK6IEventPK12EventManager
template bool ObjectiveTemplate_InteractWith<Structs::v2QuestPickedUpLiftable, QE_PickedUpLiftable>::handleEvent(const IEvent*,
                                                                                                                  const EventManager*);

// 0x47f634 _ZN30ObjectiveTemplate_InteractWithIN7Structs16v2QuestTriggerOnE12QE_TriggerOnE11handleEventEPK6IEventPK12EventManager
template bool ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerOn, QE_TriggerOn>::handleEvent(const IEvent*,
                                                                                                    const EventManager*);

// DBG_TraceDetailedObjectiveInformation (slot 0x0c) of the four instances at 0x47df64, 0x47e16c, 0x47e374 and 0x47e57c is in part 1
// (-131786-0), with the two other instances: one template body, read from the pydata name tables. (link-1: this file held a
// second, partial body with the names printed as "?"; two definitions of one symbol are not allowed.)
