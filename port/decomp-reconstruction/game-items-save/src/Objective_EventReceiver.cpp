// Batch g1-game-items-save-Objective_EventReceiver-4e7672-0 (owner Objective_EventReceiver, part 1 of 1).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. The layout and the method
// declarations are dh2/Objective_EventReceiver.hpp. The base Objective (dh2/Objective.hpp) is rebuilt by its own batch
// (g1-game-items-save-Objective-50c892-0.cpp).
//
// Notes:
//  * Register and Unregister attach and detach the IEventReceiver subobject (+0x18) under the objective's type constant
//    (Objective::m_type, +0x04) on the current level. Level derives from EventManager, so the level is used directly.
//  * The ASSERT paths follow the other batches of this category. gAssertLevel 2 aborts (the original stores to address 0),
//    level 1 prints the ASSERT line on stderr (the original's __sF + 0xa8, which is stderr) and the function goes on.
//    The source file name is the original project's Progression\Objective.cpp.
//  * HasEnemyOfTypeLoaded passes levelId in r1 to Character::HasCharOIDInCache(int), which reads r0 only. The level
//    argument therefore has no effect, and it is kept only as the declared parameter.
//  * CheckMustSendThroughNetwork (see its comment) is called by onEvent. onEvent's own control flow is complete
//    and sends the event through the network when the event asks for it.
//  * The scalar deleting destructor (0x47ccbc) is compiler-generated on the host and is not written here (see the ledger).

#include "dh2/Objective_EventReceiver.hpp"

#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/QE_InteractWith.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_raised_event.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/TestCharPropId.hpp"
#include "dh2/TestCharTemplate.hpp"

namespace {

// The source name of the original ASSERT, as the assert message prints it.
const char kObjectiveSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Objective.cpp";

// The original's ASSERT(expr) at Objective.cpp:line. gAssertLevel 2 aborts; level 1 prints the ASSERT line and the caller
// goes on; any other level is silent.
void ObjectiveAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kObjectiveSource, line);
    }
}

}  // namespace

// 0x47a330 _ZN23Objective_EventReceiverD1Ev (D1)
// The original stores the vtable pointers (+0x00 this class, +0x18 IEventReceiver) and then calls Objective::~Objective.
// The host emits the same sequence for the implicit destruction, so the body is empty.
Objective_EventReceiver::~Objective_EventReceiver() {}

// 0x47aab4 _ZNK23Objective_EventReceiver37DBG_TraceDetailedObjectiveInformationEP7__sFILE
// Prints two lines: isValid (+0x08) with the "cannot be completed in this level" note, and isRegistered (+0x1c). It does
// not print the base class lines. Returns the count of the last fprintf, as the original does.
int Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const {
    std::FILE* out = reinterpret_cast<std::FILE*>(stream);
    std::fprintf(out, "\t    isValid : %s(if false ==> means objective cannot be completed in this level.)\n",
                 m_valid ? "true" : "false");
    return std::fprintf(out, "\t    isRegistered : %s\n\n", m_registered ? "true" : "false");
}

// 0x47ac94 _ZN23Objective_EventReceiver27CheckMustSendThroughNetworkEPK6IEvent
// In an online game (GetOnline() +0x05), an event whose byte at +0x11 is zero and byte at +0x10 is set is sent to the other
// players: CMsgRaisedEvent::Create(QuestEvent*) (0x47ac58) builds the message, CMessaging::Get()->SendMsg sends it, and the
// byte at +0x10 is cleared so the event is sent once. The two bytes are the flags every QE_* event declares at +0x10 and
// +0x11 (m_flag0, m_flag1); the event is read as a QE_InteractWith, whose layout is the one all of them share up to +0x17.
void Objective_EventReceiver::CheckMustSendThroughNetwork(const IEvent* event) {
    if (!GetOnlineGameFlag()) {
        return;
    }
    QE_InteractWith* quest = const_cast<QE_InteractWith*>(static_cast<const QE_InteractWith*>(event));
    if (quest->m_flag1 == 0 && quest->m_flag0 != 0) {
        CMessage* message = CMsgRaisedEvent::Create(quest);
        GetMessaging()->SendMsg(message);
        quest->m_flag0 = 0;
    }
}

// 0x47acf0 _ZN23Objective_EventReceiver7onEventEPK6IEventPK12EventManager
// A valid objective that is not completed forwards the event to handleEvent (vtable slot 0x38), then calls
// CheckMustSendThroughNetwork, and returns the consumed flag of handleEvent. An invalid objective fails ASSERT(false) at
// line 213 and returns false.
bool Objective_EventReceiver::onEvent(const IEvent* event, const EventManager* manager) {
    if (!m_valid) {  // +0x08
        ObjectiveAssert("false", 213);
        return false;
    }
    if (m_completed) {  // +0x14
        return false;
    }
    const bool consumed = handleEvent(event, manager);
    CheckMustSendThroughNetwork(event);
    return consumed;
}

// 0x47adbc _ZN23Objective_EventReceiver10UnregisterEv
// Detaches the receiver from the current level (DelayedDetach, the objective's type and the IEventReceiver subobject), then
// clears m_registered. With no level, ASSERT(level) at line 366 and m_registered is left as it is.
void Objective_EventReceiver::Unregister() {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr) {
        level->DelayedDetach(m_type, static_cast<IEventReceiver*>(this));  // +0x04, +0x18
        m_registered = false;                                              // +0x1c
    } else {
        ObjectiveAssert("level", 366);
    }
}

// 0x47ae70 _ZN23Objective_EventReceiver8RegisterEv
// Only a valid objective registers. It attaches the IEventReceiver subobject to the current level under its type with
// priority 0, then sets m_registered. With no level, ASSERT(level) at line 354.
void Objective_EventReceiver::Register() {
    if (!m_valid) {  // +0x08
        return;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr) {
        level->Attach(m_type, static_cast<IEventReceiver*>(this), 0);  // +0x04, +0x18, priority 0
        m_registered = true;                                           // +0x1c
    } else {
        ObjectiveAssert("level", 354);
    }
}

// 0x47c7f4 int Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(int, int)
// 0x47cc20 int Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(int, int)
// One template, with two explicit instantiations below. The loop walks ObjectManager::m_characters (ObjectManager at
// Application +0x38, the list at +0x60) and counts the characters for which TTest::Compare(id, character) holds. The
// Compare functions include the null check that the original makes before the id test.
// When nothing matches, the TestCharPropId instantiation falls back to Character::HasCharOIDInCache(id). The
// TestCharTemplate instantiation falls back only when TestCharTemplate::Compare and TestCharPropId::Compare are the same
// address, which they are not, so it returns the count (0) as it is.
template <typename TTest>
int Objective_EventReceiver::HasEnemyOfTypeLoaded(int enemyId, int levelId) {
    int count = 0;
    for (Character* character : ApplicationGetInstance().m_objectManager->m_characters) {
        if (TTest::Compare(enemyId, character)) {
            ++count;
        }
    }
    if (count != 0 || TTest::Compare != TestCharPropId::Compare) {
        return count;
    }
    // The original also passes levelId in r1. HasCharOIDInCache reads only r0, so levelId has no effect here.
    static_cast<void>(levelId);
    return Character::HasCharOIDInCache(enemyId);
}

template int Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharPropId>(int enemyId, int levelId);
template int Objective_EventReceiver::HasEnemyOfTypeLoaded<TestCharTemplate>(int enemyId, int levelId);

// 0x47ccbc _ZN23Objective_EventReceiverD0Ev (D0). Skipped in the ledger: the scalar deleting destructor is compiler-generated
// on the host. delete on the objective runs ~Objective_EventReceiver and then frees the object, which the original does
// with CustomFree(this). No body is written here.
