// Batch g1-game-world-Container-e6443a-1 (part 2 of 2): the Container and NetStructContainer constructors and
// destructors, the life-cycle functions InitPost and InitFinal, the net struct functions PopulateOutgoingNetStruct and
// InterpretIncomingNetStruct, DeclareProperties, DoOpen, Interact and the animation event callback. Part 1 (the getters,
// SetState, Spawn, __Callback, Serialize) is in g1-game-world-Container-e6443a-0.cpp. Declarations come from
// dh2/Container.hpp.
//

#include <cstdint>
#include <cstring>

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/Container.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PODecor.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "vox-audio/vox/sound_manager.hpp"

namespace {

// The pseudocode's (unsigned)(state - 3) <= 1, the ACTIVATE or OPENED state. Container::IsDead() (0x39f364) tests the
// same two states, but the original inlines the test in these bodies, so the test is repeated here rather than calling
// the virtual IsDead().
bool IsActivatedOrOpened(const Container& container) {
    return container.m_state == Container::STATE_ACTIVATE || container.m_state == Container::STATE_OPENED;
}

}  // namespace

// 0x39f910 _ZN9Container8InitPostEv
// For a container that passes the spawn probability test: the data id (GetDataId(), +0x374) and, when both the visual (GetVisual(), a GameObjectDict index) and the data id are set, the
// model name of that GameObjectDict row (row +0x08) as m_dae (+0x290). GameObject::InitPost, then, if MeetCondition holds, the animation callbacks (__Callback, __EventCallback, both with
// this) and the first of the "prespawn", "spawn" and "idle" clips that exists sets the matching state; the mesh box is applied. The sound (GetSound()) is loaded when the sound manager
// exists and the script (GetScript()) from data/scripts/objects/. A container whose condition fails is hidden and put in the OPENED state.
void Container::InitPost() {
    if (GameObject::CheckSpawnProbability() < m_spawnProb) {  // +0x274
        m_dataId = GetDataId();                                // +0x374
        const int visual = GetVisual();
        if (visual != -1 && m_dataId != -1) {
            m_dae = reinterpret_cast<const Structs::ColladaFile*>(Arrays::GameObjectDict::members)[visual].Name;
        }
        GameObject::InitPost();
        if (GameObject::MeetCondition()) {
            VisualObject* visualObject = m_visualObject;  // +0x2d8
            if (visualObject != nullptr) {
                AnimController* anim = visualObject->m_animController;  // VisualObject +0x38
                anim->SetCallbacks(&Container::__Callback, this, &Container::__EventCallback, this);
                // Each later PlayClip gets 0 as loop and unused: the original passes the previous return value,
                // which is 0 on every path that reaches the call.
                if (anim->PlayClip("prespawn", false, 0, 0)) {
                    SetState(STATE_PRESPAWN);
                } else if (anim->PlayClip("spawn", false, 0, 0)) {
                    SetState(STATE_SPAWN);
                } else if (anim->PlayClip("idle", false, 0, 0)) {
                    SetState(STATE_IDLE);
                }
                visualObject->ApplyMeshBox();
            }
            if (VoxSoundManager::s_instance != nullptr) {
                VoxSoundManager::s_instance->LoadSound(GetSound());
            }
            LoadExternalScript(GetScript(), "data/scripts/objects/");
        } else {
            // vtable +0x40. The original's r1 is the MeetCondition() result (SUBS R1, R0, #0 before the branch), which
            // is 0 on this path, so the argument is false.
            SetVisible(false);
            SetState(STATE_OPENED);
        }
    }
}

// 0x39fc98 _ZN9Container9InitFinalEv
// For a container that passes the spawn probability test: GameObject::InitFinal, an Update() (vtable +0x2c) unless the container is ACTIVATE or OPENED and, when MeetCondition holds,
// the physics body: a static PODecor (40 bytes) on the application's physical world (the original's dword_99F770, Application +0x44), owned by the container (SetPhysicalObject(body, false)).
void Container::InitFinal() {
    if (GameObject::CheckSpawnProbability() < m_spawnProb) {
        GameObject::InitFinal();
        if (!IsActivatedOrOpened(*this)) {
            Update();  // vtable +0x2c
        }
        if (GameObject::MeetCondition()) {
            PODecor* body = new PODecor(ApplicationGetInstance().m_physicalWorld, this, false);
            SetPhysicalObject(body, false);
        }
    }
}

// 0x39fd38 _ZN9Container26InterpretIncomingNetStructEb
// The incoming opened flag (m_netIn.m_opened, +0x150 of the container) and the incoming opener id (m_netIn.m_openerId) drive the state. Without a new "opened" (flag not 1, or already ACTIVATE or OPENED):
// only a forced update goes on, and when it finds an ACTIVATE or OPENED container with the flag clear it resets the container to IDLE with a fresh PODecor body and the "idle" clip; a forced
// update then copies m_netIn.unk_180 into unk_fc (ObjectBase +0xfc). With a new "opened": the opener is looked up by network id; an unforced update with a known opener calls Interact on it. Otherwise
// an idle container takes the opener (+0x398), becomes OPENED, drops its physics body unless KeepPhysics() and, with a visual, starts the "activate" clip (unforced) or the "idleactive" clip (forced).
void Container::InterpretIncomingNetStruct(bool force) {
    const std::uint32_t openedIn = m_netIn.m_opened.GetValue();  // m_netIn +0x130 member, value at +0x150
    if (openedIn != 1 || IsActivatedOrOpened(*this)) {
        if (!force) {
            return;
        }
        if (IsActivatedOrOpened(*this) && openedIn == 0) {
            SetState(STATE_IDLE);
            PODecor* body = new PODecor(ApplicationGetInstance().m_physicalWorld, this, false);
            SetPhysicalObject(body, false);
            SetState(STATE_IDLE);
            // The original calls this with no null check on the visual.
            m_visualObject->m_animController->PlayClip("idle", false, 0, 0);
        }
        unk_fc = static_cast<std::int32_t>(m_netIn.unk_180.GetValue());
        return;
    }
    ObjectHandle handle = dword_99F764->GetObjectHandleByNetworkId(m_netIn.m_openerId.GetValue());
    GameObject* opener = handle;  // ObjectHandle::operator GameObject*()
    if (opener != nullptr && !force) {
        Interact(opener);  // vtable +0x98
        return;
    }
    if (!IsActivatedOrOpened(*this)) {
        m_opener = opener;  // +0x398
        SetState(STATE_OPENED);
        if (!KeepPhysics()) {  // vtable +0xdc
            SetPhysicalObject(nullptr, false);
        }
        if (m_visualObject != nullptr) {
            if (!force) {
                SetState(STATE_ACTIVATE);
                m_visualObject->m_animController->PlayClip("activate", false, 0, 0);
                return;
            }
            SetState(STATE_OPENED);
            m_visualObject->m_animController->PlayClip("idleactive", false, 0, 0);
        }
    }
    if (force) {
        unk_fc = static_cast<std::int32_t>(m_netIn.unk_180.GetValue());
    }
}

// 0x3a0110 _ZN9Container25PopulateOutgoingNetStructEb
// Writes the three values of m_netOut in the original order: m_opened (1 when ACTIVATE or OPENED, else 0), m_openerId (the network id of m_opener) and, when forced, unk_180 (= unk_fc).
// The original sets each value through a stack NetStruct temporary (the NetStruct idiom): it compares the temporary's value word, which the temporary's constructor never writes, with the new
// value and, when they differ, stores the value and calls NetStructMember::SetChanged on the temporary. The conditional change flag depends on that uninitialised stack word, so the member's own
// SetValue (the stored value, and the change flag when it differs from the previous value) does the same work.
void Container::PopulateOutgoingNetStruct(bool force) {
    m_netOut.m_opened.SetValue(IsActivatedOrOpened(*this) ? 1u : 0u);                    // +0x130 of m_netOut
    m_netOut.m_openerId.SetValue(dword_99F764->GetNetworkIdByObjectBase(m_opener));       // +0x158 of m_netOut
    if (force) {
        m_netOut.unk_180.SetValue(static_cast<std::uint32_t>(unk_fc));                    // +0x180 of m_netOut
    }
}

// 0x39ff58 _ZN9Container18NetStructContainerC1Ev
// The NetStruct base and the three member declarations, m_opened (+0x130, 1 bit), m_openerId (+0x158, 16 bits) and unk_180 (+0x180, 32 bits); the sizes come from the members' own constructors.
// The original then reads each member's value word, zeroes it and calls NetStructMember::SetChanged when the old word was non-zero (the NetStruct idiom: the member constructor has just built
// the word, so the test depends on the storage the constructor ran on). The members here start at zero and unchanged.
Container::NetStructContainer::NetStructContainer() : NetStruct() {
    DeclareMember(&m_opened);
    DeclareMember(&m_openerId);
    DeclareMember(&unk_180);
}

// 0x3a0324 _ZN9Container18NetStructContainerD1Ev
// The pseudocode resets the vtable pointers and clears the NetStruct packet history (the std::map at +0x10c). In C++ the
// history is destroyed by ~NetStruct() and the members by their own destructors, so the body is empty.
Container::NetStructContainer::~NetStructContainer() {}

// 0x3a0598 _ZN9ContainerD2Ev (base-object destructor)
// 0x3a0430 _ZN9ContainerD1Ev (complete-object destructor)
// Both addresses hold the same body. The pseudocode resets the vtables, clears the packet histories of m_netIn and
// m_netOut, frees the m_dataDesc buffer when it is not the inline one, and calls ~GameObject(). In C++ each of those is a
// member or base destructor, so the body is empty.
Container::~Container() {}

// 0x3a06dc _ZN9ContainerC1EN10ObjectBase6GO_IDSE
// 0x3a0788 _ZN9ContainerC2EN10ObjectBase6GO_IDSE
// The GameObject base constructor with the same id (the id register is passed through unchanged), the ObjectBase fields that the original sets (+0x28 = 1, +0x84 m_static = 0, +0xf8 = 2),
// m_netStruct = &m_netOut (+0x100), unk_104 = &m_netIn (+0x104, declared NetStruct* by ObjectBase.hpp), m_deathReset = false, m_state = STATE_IDLE and m_opener = nullptr. The data string and
// the vtables are built by C++; the two NetStructContainer members by NetStructContainer::NetStructContainer (0x39ff58).
Container::Container(ObjectBase::GO_IDS id) : GameObject(id) {
    unk_28 = 1;
    m_static = 0;
    unk_f8 = 2;
    m_netStruct = &m_netOut;
    unk_104 = &m_netIn;
    m_deathReset = false;
    m_state = STATE_IDLE;
    m_opener = nullptr;
}

// 0x3a083c _ZN9Container17DeclarePropertiesEv
// Declares "data" (int, default -1, m_dataId), "data_desc" (string, default "", m_dataDesc) and "death_reset" (bool,
// default false, m_deathReset) after the GameObject properties, in the original order. The typed AddProperty templates
// are the ones the original's inline Property objects match.
void Container::DeclareProperties() {
    GameObject::DeclareProperties();
    AddProperty("data", m_dataId, -1);
    AddProperty("data_desc", m_dataDesc);
    AddProperty("death_reset", m_deathReset, false);
}

// 0x3a0a98 _ZN9Container6DoOpenEv
// Drops the container's loot: ItemObject::DropLootTable(GetLoot(), this as the dropper, m_opener as the killer, GetLootFixedNumPowers(), 0). The original passes a sixth argument word that is an
// unset stack local; the five-argument callee never reads it. With a script (m_script, +0x300), "OnOpen" is called with the opener (+0x398) as its argument when one is set.
void Container::DoOpen() {
    ItemObject::DropLootTable(GetLoot(), this, m_opener, GetLootFixedNumPowers(), false);
    if (m_script != nullptr) {  // +0x300
        sfc::script::lua::Arguments args;
        if (m_opener != nullptr) {  // +0x398
            args.pushUserData(m_opener);
        }
        m_script->Call("OnOpen", args);
    }
}

// 0x3a0b38 _ZN9Container8InteractEP10GameObject
// Does nothing once the container is ACTIVATE or OPENED. Otherwise: the opener is stored (+0x398), the state is set to OPENED, the physics body is released unless KeepPhysics() (vtable +0xdc),
// and with a visual the state becomes ACTIVATE and the "activate" clip plays (DoOpen then runs from the "opened" animation event), without one DoOpen runs at once. The container's sound
// (GetSound()) plays in 3D at its position (no check on the sound manager), and Update() (vtable +0x2c) runs. The original's int return is not part of the void declaration.
void Container::Interact(GameObject* by) {
    if (IsActivatedOrOpened(*this)) {
        return;
    }
    m_opener = by;  // +0x398
    SetState(STATE_OPENED);
    if (!KeepPhysics()) {  // vtable +0xdc
        SetPhysicalObject(nullptr, false);
    }
    if (m_visualObject != nullptr) {
        SetState(STATE_ACTIVATE);
        m_visualObject->m_animController->PlayClip("activate", false, 0, 0);
    } else {
        DoOpen();
    }
    const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
    VoxSoundManager::s_instance->Play3D(GetSound(), at, false, 1, -1.0f, -1.0f);
    Update();  // vtable +0x2c
}

// 0x3a0c64 _ZN9Container15__EventCallbackERKN6glitch7collada15STriggeredEventEPv
// The animation event callback (user is the Container). The event "opened" runs DoOpen(); any other event name is passed to the script's "OnAnimEvent" function, when the container has a script.
void Container::__EventCallback(const glitch::collada::STriggeredEvent& event, void* user) {
    Container* container = static_cast<Container*>(user);
    if (std::strcmp(event.eventName, "opened") != 0) {
        if (container->m_script != nullptr) {
            sfc::script::lua::Arguments args;
            args.pushString(event.eventName);
            container->m_script->Call("OnAnimEvent", args);
        }
    } else {
        container->DoOpen();
    }
}
