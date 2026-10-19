// Batch g1-game-world-Trigger-d3f06a-0 (part 1 of 2): the Trigger state methods (IsZonable, IsRemotelyUpdated,
// Activate, CanActivate, UpdateTimer), the replication hooks, Update, Serialize, DeclareProperties, the Trigger and
// NetStructTrigger constructors and destructors. Declarations come from dh2/Trigger.hpp.
//
// Layout facts used here (original 32-bit offsets, named in dh2/Trigger.hpp and its bases):
//   Trigger +0x3a8 m_triggerCount, +0x3ac m_triggerDelay, +0x3b0 m_resetOnHubChange, +0x3b4 m_numActivations,
//           +0x3b8 m_timer, +0x3bc unk_3bc, +0x3c0 unk_3c0, +0x3c8 m_netOut, +0x570 m_netIn
//   NetStructTrigger: NetStruct base +0x00..+0x12f; m_timer +0x130, m_numActivations +0x158, unk_180 +0x180.
//           The value of each NetStructInt<32> sits at member +0x20 (+0x150, +0x178, +0x1a0).
//   ObjectBase +0x28 unk_28, +0x8a m_enabled, +0xf8 unk_f8, +0x100 m_netStruct (NetStruct*), +0x110 m_netOwnerId,
//           +0x118 unk_118
//   GameObject +0x370 m_idleSoundId (int16, -1 = none)
//
// The replicated members use the NetStruct idiom of the original: a temporary member holds the new value and the member's SetValue (vtable +0x1c) takes it. The temporary's value word is read
// before it is stored, in a stack slot the original never initialises, and a mismatch there only advances NetStruct::s_changeCounter; the host temporary starts at zero and the member SetValue
// is called directly. The members of a freshly built NetStructTrigger likewise start at zero (the original reads each member's value word before it ever writes it).

#include "dh2/Trigger.hpp"

#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/global/ctrl_camera.hpp"  // ApplicationGetInstance(), the singleton accessor for Application

// 0x398768 Trigger::IsZonable() const
bool Trigger::IsZonable() const {
    return true;
}

// 0x398770 Trigger::IsRemotelyUpdated() const
// A trigger with unk_3bc set is never remotely updated. When the owner id (+0x110) is -1 the answer is the object's
// unk_118 byte; otherwise the object is remotely updated.
bool Trigger::IsRemotelyUpdated() const {
    if (unk_3bc) {
        return false;
    }
    if (m_netOwnerId == -1) {
        return unk_118 != 0;
    }
    return true;
}

// 0x398794 Trigger::Activate()
// Counts one activation and restarts the delay timer from m_triggerDelay.
void Trigger::Activate() {
    const int activations = m_numActivations + 1;  // +0x3b4
    m_timer = m_triggerDelay;                      // +0x3ac -> +0x3b8
    m_numActivations = activations;
}

// 0x3987ac Trigger::CanActivate() const
// False when the count is limited (m_triggerCount >= 0) and has been reached, or when the delay timer is still running
// (m_timer > 0). A negative m_triggerCount means unlimited. Otherwise the answer is the object's enabled flag
// (ObjectBase +0x8a).
bool Trigger::CanActivate() const {
    const int triggerCount = m_triggerCount;  // +0x3a8
    if ((triggerCount >= 0 && triggerCount <= m_numActivations) || m_timer > 0) {
        return false;
    }
    return m_enabled != 0;
}

// 0x3987dc Trigger::InterpretIncomingNetStruct(bool)
// Copies the three replicated values received in m_netIn into the trigger state. The bool argument is not read.
void Trigger::InterpretIncomingNetStruct(bool force) {
    (void)force;
    m_timer = m_netIn.m_timer.GetValue();                    // m_netIn member +0x130, value at +0x150
    m_numActivations = m_netIn.m_numActivations.GetValue();  // m_netIn member +0x158, value at +0x178
    unk_3c0 = m_netIn.unk_180.GetValue();                    // m_netIn member +0x180, value at +0x1a0
}

// 0x3987f8 Trigger::GetNumPlayerActivating() const
// Thunk: a tail branch to GameObject::GetNumPlayerTouching (0x38b6d4) with the same object.
int Trigger::GetNumPlayerActivating() const {
    return GameObject::GetNumPlayerTouching();
}

// 0x3987fc Trigger::UpdateTimer()
// While the delay timer is positive, subtracts the frame time (Application::GetDt, in ms). A timer at or below zero is
// left as it is.
void Trigger::UpdateTimer() {
    const int timer = m_timer;  // +0x3b8
    if (timer > 0) {
        m_timer = timer - ApplicationGetInstance().GetDt();
    }
}

// 0x398838 Trigger::Update()
// ZoneEx::Update (non-virtual), the delay timer, then the GameObject online-update request. The idle sound is updated
// when the object has an idle sound id (GameObject +0x370 >= 0). The original's int results are not used by the void
// override.
void Trigger::Update() {
    ZoneEx::Update();
    UpdateTimer();
    GameObject::RequireOnlineUpdate();
    if (m_idleSoundId >= 0) {
        GameObject::UpdateIdleSound();
    }
}

// 0x398874 Trigger::InitPost()
// Thunk: a tail branch to Zone::InitPost (0x39771c). ZoneEx has no InitPost of its own.
void Trigger::InitPost() {
    Zone::InitPost();
}

// 0x39890c Trigger::Deserialize(IStreamBase*)
// GameObject::Deserialize, then, unless the current level came from another level while m_resetOnHubChange (+0x3b0) is set, m_timer (+0x3b8) and m_numActivations (+0x3b4) as ints, in that order.
void Trigger::Deserialize(IStreamBase* stream) {
    GameObject::Deserialize(stream);
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (!level->m_cameFromOtherLevel || !m_resetOnHubChange) {
        stream->readAs<int>(m_timer);
        stream->readAs<int>(m_numActivations);
    }
}

// 0x398978 Trigger::Serialize(IStreamBase*)
// GameObject::Serialize, then m_timer (+0x3b8) and m_numActivations (+0x3b4) as ints.
void Trigger::Serialize(IStreamBase* stream) {
    GameObject::Serialize(stream);
    stream->writeAs<int>(m_timer);
    stream->writeAs<int>(m_numActivations);
}

// 0x398a88 Trigger::DeclareProperties()
// Zone's properties first, then "triggercount" (default 1, +0x3a8), "triggerdelay" (default 0, +0x3ac) and the bool
// "resetonhubchange" (default false, +0x3b0). The original builds the bool SimpleTypeProperty inline (asm 0x398a88:
// the member address is this +0x3b0, and Property::m_offset is measured from the PropertyMap base at +0x04, so it
// stores 0x3b0 - 4 = 940). AddProperty<bool> with the member and a false default is the same registration, as
// Door::DeclareProperties relies on.
void Trigger::DeclareProperties() {
    Zone::DeclareProperties();
    AddProperty<int>("triggercount", m_triggerCount, 1);
    AddProperty<int>("triggerdelay", m_triggerDelay, 0);
    AddProperty<bool>("resetonhubchange", m_resetOnHubChange, false);
}

// 0x398b5c Trigger::NetStructTrigger::~NetStructTrigger()   (complete object destructor, D1)
// Nothing is done here. The original resets the vptrs of the NetStruct and of its three members and erases the
// packet-history map (std::map at NetStruct +0x10c). The member destructors and the NetStruct base destructor do those
// steps in the same order.
Trigger::NetStructTrigger::~NetStructTrigger() {}

// 0x399064 Trigger::NetStructTrigger::~NetStructTrigger()   (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~NetStructTrigger() followed by CustomFree(this)). A delete
// expression on a NetStructTrigger does the same, so there is no separate body.

// 0x398bd8 Trigger::PopulateOutgoingNetStruct(bool)
// m_netOut's m_timer gets m_timer, its m_numActivations gets m_numActivations and its unk_180 gets unk_3c0, each through the member's SetValue (0x36d9f0), which stores the value and marks the
// member changed only when it differs. The bool argument is not read.
void Trigger::PopulateOutgoingNetStruct(bool force) {
    (void)force;
    m_netOut.m_timer.SetValue(m_timer);
    m_netOut.m_numActivations.SetValue(m_numActivations);
    m_netOut.unk_180.SetValue(unk_3c0);
}

// 0x398da4 Trigger::NetStructTrigger::NetStructTrigger()
// The NetStruct base is constructed, the three NetStructInt<32> members (sizeBits 32, ack and sent masks -1, not changed) start at zero, and each is declared to the NetStruct in the original order.
Trigger::NetStructTrigger::NetStructTrigger() : NetStruct() {
    DeclareMember(&m_timer);           // +0x130 (value at +0x150)
    DeclareMember(&m_numActivations);  // +0x158 (value at +0x178)
    DeclareMember(&unk_180);           // +0x180 (value at +0x1a0)
}

// 0x398f44 Trigger::Trigger(ObjectBase::GO_IDS, bool, bool)   (complete object constructor, C1)
// 0x398fd4 Trigger::Trigger(ObjectBase::GO_IDS, bool, bool)   (base object constructor, C2; the same code)
// ZoneEx(id, hasPhysics, playerOnly) with its arguments untouched, then the stores below; unk_104 = &m_netIn (ObjectBase +0x104, declared NetStruct*). The two NetStructTrigger members are default-constructed.
Trigger::Trigger(ObjectBase::GO_IDS id, bool hasPhysics, bool playerOnly) : ZoneEx(id, hasPhysics, playerOnly) {
    m_triggerCount = 1;            // +0x3a8
    m_triggerDelay = 0;            // +0x3ac
    m_resetOnHubChange = false;    // +0x3b0
    m_numActivations = 0;          // +0x3b4
    m_timer = 0;                   // +0x3b8
    unk_3bc = false;               // +0x3bc
    unk_3c0 = 0;                   // +0x3c0
    // m_netOut (+0x3c8) and m_netIn (+0x570) are default-constructed NetStructTrigger members.
    unk_28 = 1;                    // ObjectBase +0x28
    m_netStruct = &m_netOut;       // ObjectBase +0x100 (NetStruct*)
    unk_104 = &m_netIn;            // ObjectBase +0x104 (NetStruct*, the incoming net struct)
    unk_f8 = 4;                    // ObjectBase +0xf8
}

// 0x3990f0 Trigger::~Trigger()   (complete object destructor, D1)
// Same code as the base object destructor 0x399214. A C++ destructor has one body, and that body is defined once, in
// game-world/src/g1-game-world-Trigger-d3f06a-1.cpp (batch g1-game-world-Trigger-d3f06a-1). It is not repeated here.
// Its empty body is correct: the members are destroyed in reverse declaration order (m_netIn, then m_netOut), then
// ZoneEx, which is the order the original uses.

// 0x3991f8 Trigger::~Trigger()   (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~Trigger() followed by CustomFree(this)). A delete expression
// on a Trigger does the same, so there is no separate body.
