// Batch g1-game-world-Door-478d47-1 (part 2 of 2): the Door constructor and destructors, the NetStructDoor
// constructor and destructors, PopulateOutgoingNetStruct, the two timeline/event callbacks and DeclareProperties.
// Declarations come from dh2/Door.hpp. A PARTIAL body names what it waits on.
//
// Destructors with no statements of their own (Door::~Door, NetStructDoor::~NetStructDoor): the original resets
// the vptrs, erases the NetStruct packet-history maps and frees the m_data string block, then calls the base
// destructor. In C++ those steps are the member and base destructors, run in the same order.

#include <string>

#include "dh2/DebugSwitches.hpp"
#include "dh2/Door.hpp"
#include <cstring>
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"

namespace {

// The "isTracingDoor" read at the start of both callbacks. The original calls load() on DebugSwitches::s_inst and
// GetSwitch(name) and drops the result. s_inst is private in the header, so the singleton comes from GetInstance(),
// which loads on first use; load() repeats that load. This is the same convention as the other game batches.
void TraceDoorSwitch() {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    (void)switches->GetSwitch(std::string("isTracingDoor"));
}

}  // namespace

// 0x3e8088 Door::PopulateOutgoingNetStruct(bool)
// When forced, the replicated open flag is OPENED or OPENING (DoorStates 1 or 3). NetStructMemberType<bool>::SetValue
// stores it only when it differs and then marks the member changed; the original does the same inline. Then the
// outgoing struct is resent.
void Door::PopulateOutgoingNetStruct(bool force) {
    if (force) {
        const bool open = (m_state == DOOR_OPENED) || (m_state == DOOR_OPENING);
        m_netOut.m_open.SetValue(open);  // NetStructDoor +0x130 (this +0x3b0 + 0x130 = +0x4e0)
        m_netOut.Resend();               // NetStruct::Resend() on m_netOut (0x3e8088 tail call)
    }
}

// 0x3e80d4 Door::NetStructDoor::NetStructDoor()
// PARTIAL: the three NetStructBool members are constructed as in the original (vptr, sizeBits 1, ack and sent masks -1,
// changed false, value false), and they are declared in the original order. The original does not initialise the
// value byte (+0x1d in each member). It reads the byte first and, when that old byte was non-zero, clears it and
// calls SetChanged on the member. The old byte is whatever the allocator left in the object, so the port cannot
// reproduce that branch. Only the changed flag of a re-used object can differ.
Door::NetStructDoor::NetStructDoor() : NetStruct() {
    DeclareMember(&m_open);   // +0x130 (value byte at +0x14d)
    DeclareMember(&unk_150);  // +0x150 (value byte at +0x16d)
    DeclareMember(&unk_170);  // +0x170 (value byte at +0x18d)
}

// 0x3e83d4 Door::NetStructDoor::~NetStructDoor()   (complete object destructor, D1)
// Nothing is done here. The original resets the three member vptrs to NetStructMember, erases the NetStruct packet
// history (std::map at +0x10c) and clears its header. The member destructors and NetStruct::~NetStruct (an empty
// body in net-transport, so the map member does the erase) do those steps.
Door::NetStructDoor::~NetStructDoor() {}

// 0x3e8798 Door::NetStructDoor::~NetStructDoor()   (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~NetStructDoor() followed by CustomFree(this)). A delete
// expression on a NetStructDoor does the same, so there is no separate body.

// 0x3e8274 Door::Door(ObjectBase::GO_IDS)   (complete object constructor, C1)
// 0x3e8324 Door::Door(ObjectBase::GO_IDS)   (base object constructor, C2; the same code)
// The second NetStruct pointer, ObjectBase +0x104, is &m_netIn (ObjectBase.hpp records that the derived constructors
// store their own member there). The two NetStructDoor members are built by 0x3e80d4, which is partial (see there).
Door::Door(ObjectBase::GO_IDS id) : Zone(id, false, true) {
    // m_data (+0x388) is default-constructed; m_netOut (+0x3b0) and m_netIn (+0x540) are default-constructed
    // NetStructDoor members. m_doorIndex (+0x3a0) is not set by the constructor.
    m_opened = false;          // +0x3a4
    m_doorCollision = true;    // +0x3a5
    m_state = DOOR_CLOSED;     // +0x3a8
    m_moving = false;          // +0x3ac
    unk_28 = 1;                // ObjectBase +0x28
    m_netStruct = &m_netOut;   // ObjectBase +0x100 (NetStruct*)
    unk_104 = &m_netIn;        // ObjectBase +0x104 (NetStruct*)
    unk_f8 = 3;                // ObjectBase +0xf8
}

// 0x3e8450 Door::__EventCallback(glitch::collada::STriggeredEvent const&, void*)
// Reads the isTracingDoor switch (the answer is not used). The animation event named "opened" settles the door open (Opened(true))
// and "closed" settles it closed (Closed(true)); other names do nothing.
void Door::__EventCallback(const glitch::collada::STriggeredEvent& event, void* user) {
    TraceDoorSwitch();  // the "isTracingDoor" read, result discarded
    Door* door = static_cast<Door*>(user);
    if (!std::strcmp(event.eventName, "opened")) {   // STriggeredEvent +0x04
        door->Opened(true);
    } else if (!std::strcmp(event.eventName, "closed")) {
        door->Closed(true);
    }
}

// 0x3e8568 Door::__Callback(glitch::scene::ITimelineController*, void*)
// The controller argument is not read. The user pointer is the Door. The animation is no longer moving, and the
// ObjectBase +0x85 byte is set. A door still closing is settled closed (Closed(false)), and one still opening is
// settled open (Opened(false)).
void Door::__Callback(glitch::scene::ITimelineController* controller, void* user) {
    (void)controller;
    TraceDoorSwitch();  // the "isTracingDoor" read, result discarded
    Door* door = static_cast<Door*>(user);
    door->unk_85 = 1;        // ObjectBase +0x85
    door->m_moving = false;  // +0x3ac
    if (door->m_state == DOOR_CLOSING) {
        door->Closed(false);
    } else if (door->m_state == DOOR_OPENING) {
        door->Opened(false);
    }
}

// 0x3e8658 Door::~Door()   (base object destructor, D2)
// 0x3e8824 Door::~Door()   (complete object destructor, D1; the same code)
// Nothing is done here. The original resets the vptrs, erases the packet-history maps of m_netIn (+0x64c) and m_netOut
// (+0x4bc), frees the m_data string block when it is not the inline buffer, and then calls Zone::~Zone. The compiler
// destroys the members in reverse declaration order (m_netIn, m_netOut, then m_data), then the Zone base.
Door::~Door() {}

// 0x3e896c Door::~Door()   (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~Door() followed by CustomFree(this)). A delete expression
// on a Door does the same, so there is no separate body.

// 0x3e8990 Door::DeclareProperties()
// Zone's properties first, then "data" (std::string, default empty) and the two bools "opened" and "door_collision".
// The original builds the "data" SimpleTypeProperty inline (operator new(0x38), offset 900 from the PropertyMap base at
// +0x04) and calls AddProperty(name, Property*), which is what AddProperty<std::string>(name, member) does. The two
// bool properties go through PropertyMap::AddProperty<bool>(name, member) at 0x3e7ffc, the GCC clone of the bool
// instance (0x33e4ac) with the default folded to a constant. The clone body is `MOV R2,#1; STRB R2,[R4,#0x20]`, so
// SimpleTypeProperty<bool> stores default byte 1 for both "opened" and "door_collision". The default is true, not
// false. The three-argument call below passes true to match that folded constant.
void Door::DeclareProperties() {
    Zone::DeclareProperties();
    AddProperty<std::string>("data", m_data);
    AddProperty<bool>("opened", m_opened, true);
    AddProperty<bool>("door_collision", m_doorCollision, true);
}
