// Batch g1-game-world-GameObject-5d2019-3 (GameObject, part 4 of 8).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Layout and declarations: dh2/GameObject.hpp.
// Offsets in comments are the original 32-bit ones.
//
// The Lua statics take (const Arguments&, ReturnValues&, void* self). The Hex-Rays listings name the self pointer
// a3 and the return values a2 (the argument types are shifted by one). The assembly passes the object in the third
// register, so the bodies use that.
//
// dh2/SimpleTypeProperty.hpp is not included: its glitch header (core-platform/deps) conflicts with the one that
// AnchorBase.hpp and VisualObject.hpp need in this translation unit. "spawn_prob" is registered through the typed
// PropertyMap::AddProperty<int>, which builds the same SimpleTypeProperty<int>.

#include <cstddef>
#include <cstdint>
#include <string>

#include "dh2/GameObject.hpp"
#include "dh2/AnchorBase.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/Binder.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "vox-audio/vox/sound_manager.hpp"

// The profiling markers are declared in dh2/global/runtime_support.hpp (0x3136b4, 0x3136b8). That header is not
// included here: it pulls in core-platform/memory.hpp, whose deps/glitch_core.hpp conflicts with the
// glitch-shared/glitch_core.hpp that AnchorBase.hpp and VisualObject.hpp need in the same translation unit.
void PushProfilingContext(const char* name);  // 0x3136b4
void PopProfilingContext(const char* name);   // 0x3136b8

// 0x38cbe8 GameObject::Update()
void GameObject::Update() {
    PushProfilingContext("GameObject::Update");
    // The original calls load() and GetSwitch() on DebugSwitches::s_inst, which is private here. GetInstance()
    // returns the same object (it loads the file on first use, and load() repeats the read as in the original).
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    (void)switches->GetSwitch("TraceUpdateGameObjectOnce");  // the original discards the result
    ++dword_99F764->unk_58;                                    // ObjectManager +0x58 counter (assembly: ldr/add/str)
    if (m_pendingInteractor != nullptr) {                      // +0x2e4
        Interact(m_pendingInteractor);                         // vtable +0x98 with the interactor in r1
        m_pendingInteractor = nullptr;
    }
    m_prevPosition = m_position;                               // +0x160..+0x168 copied to +0x190..+0x198
    m_prevRotation = m_rotation;                               // +0x16c..+0x174 copied to +0x19c..+0x1a4
    UpdatePath();
    UpdateRotation();
    UpdateSubObjects();
    UpdateTargetPosition();
    RequireOnlineUpdate();
    if (m_idleSoundId >= 0) {                                  // +0x370 (int16); negative means no idle sound
        UpdateIdleSound();
    }
    PopProfilingContext("GameObject::Update");
}

// 0x38cd48 GameObject::InitFinal()
// Runs when the spawn probability test passes (CheckSpawnProbability() < m_spawnProb) and the object is not marked for deletion (+0x81). An always-visible object is shown. The
// object is registered with the path-finding world (PFWorld::InitObject: its PFObject, the static flag, the position and a radius that is the larger of the X and Y extents of the
// local box, and this object as owner); the debug name of the PFObject takes the object's name; the visual is synced, takes the light set id of m_lightSet (the device
// scene manager's LightSetManager::GetLightSetIdFromName, stored at VisualObject +0x40) and the object's m_targetNode becomes the "target_node" child of the visual's root node.
// Last UpdatePFObject runs.
void GameObject::InitFinal() {
    if (!(CheckSpawnProbability() < m_spawnProb && m_markedForDeletion == 0)) {
        return;
    }
    if (m_alwaysVisible) {
        SetVisible(true);
    }
    float radius = m_relAabb[3] - m_relAabb[0];
    const float extentY = m_relAabb[4] - m_relAabb[1];
    if (radius < extentY) {
        radius = extentY;
    }
    PFWorld::s_inst.InitObject(m_pfObject, m_static, m_position, radius, this);

    // The original reads the character pointer of the object name (+0x44, inside m_name at +0x30) and assigns it to
    // PFObject::m_debugName (+0x8c). That is m_name.c_str().
    m_pfObject.m_debugName.assign(m_name.c_str());

    if (m_visualObject != nullptr) {                         // +0x2d8
        m_visualObject->Sync();
        if (SceneManager* sceneManager = DeviceSceneManager()) {  // the original has no device test; a device always exists in the game
            m_visualObject->unk_40 = sceneManager->m_lightSetManager.GetLightSetIdFromName(m_lightSet);
        }
        if (m_visualObject->m_node != nullptr) {
            m_targetNode = m_visualObject->m_node->getSceneNodeFromName("target_node");
        }
    }
    UpdatePFObject();
}

// 0x38cee8 GameObject::DeclareProperties()
// The registrations are made in the original's order. "spawn_prob" (+0x274, default 100) is the SimpleTypeProperty<int>
// the original builds by hand. AddProperty<int> builds the same one: the offset is the member's address minus the
// PropertyMap sub-object at +0x04, the name is copied and the default is 100.
void GameObject::DeclareProperties() {
    ObjectBase::DeclareProperties();
    AddProperty<Point3D<float>>("position", m_position, Vec3f_Origin);                // +0x160
    AddProperty<Point3D<float>>("rotation", m_rotation, Vec3f_Origin);                // +0x16c
    AddProperty<std::string>("dae", m_dae);                                           // +0x290
    AddProperty<std::string>("xrefobject", m_xrefObject);                             // +0x2a8
    AddProperty<std::string>("xrefmax", m_xrefMax);                                   // +0x2c0
    AddProperty<Point3D<float>>("scale", m_scale, Point3D<float>{1.0f, 1.0f, 1.0f});  // +0x120 (1.0f words)
    AddProperty<bool>("alwaysVisible", m_alwaysVisible, false);                       // +0x2ed
    AddProperty<bool>("skip_checkpoint", m_skipCheckpoint, false);                    // +0x15c
    AddProperty<int>("spawn_prob", m_spawnProb, 100);                                 // +0x274
    AddProperty<std::string>("lightset", m_lightSet, std::string("PlayerLight"));     // +0x278
    AddProperty<std::string>("idle_sound", m_idleSound);                              // +0x358
    AddProperty<bool>("facultative", m_facultative, true);                            // +0x60 (ObjectBase)
}

// 0x38d228 GameObject::~GameObject()   (D1, complete object destructor)
// 0x38d378 GameObject::~GameObject()   (D2, base object destructor; the same body as D1)
// The vtable pointers are written by the compiler. The members (m_idleSound, m_targetList, m_xrefMax, m_xrefObject,
// m_dae, m_lightSet, m_pfObject) and then ObjectBase are destroyed after this body, in the original's order.
// The visual object, physical object, camera anchor and script are deleted and cleared, and the idle sound is stopped (VoxSoundManager::Stop(m_idleSoundId, 0)).
GameObject::~GameObject() {
    if (m_visualObject != nullptr) {                         // +0x2d8, deleted through its virtual destructor
        delete m_visualObject;
        m_visualObject = nullptr;
    }
    if (m_physicalObject != nullptr) {                       // +0x2dc
        delete m_physicalObject;
        m_physicalObject = nullptr;
    }
    if (m_cameraAnchor != nullptr) {                         // +0x2e0
        delete m_cameraAnchor;
        m_cameraAnchor = nullptr;
    }
    if (m_script != nullptr) {                               // +0x300
        delete m_script;
        m_script = nullptr;
    }
    if (VoxSoundManager::s_instance != nullptr) {            // the original calls Stop unconditionally on the global manager
        VoxSoundManager::s_instance->Stop(m_idleSoundId, 0);
    }
}

// 0x38d35c GameObject::~GameObject()   (D0, deleting destructor)
// Skipped: the compiler generates the deleting destructor for `delete`. The original calls the D1 body and then
// CustomFree(this), which is operator delete in this tree.

// 0x38d5f8 GameObject::_Lock(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The Lua LOCK method increments the ObjectBase lock counter (+0x29).
void GameObject::_Lock(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& /*ret*/,
                       void* self) {
    ++static_cast<GameObject*>(self)->m_lockCount;
}

// 0x38d7a8 GameObject::_Unlock(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The Lua UNLOCK method decrements the lock counter (+0x29) when it is not zero.
void GameObject::_Unlock(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& /*ret*/,
                         void* self) {
    GameObject* object = static_cast<GameObject*>(self);
    if (object->m_lockCount != 0) {
        --object->m_lockCount;
    }
}

// 0x38d7ec GameObject::createBindings(sfc::script::lua::Binder&)
// Registers the Lua methods and functions in the original's order. bindFunction binds a function that receives this
// object as its user pointer (F), or nullptr where the original passes nullptr (F0). bindMethod binds the same
// callback as a method (M). PlaySound3D is only bound as a function.
void GameObject::createBindings(sfc::script::lua::Binder& binder) {
    binder.bindMethod("LOCK", &GameObject::_Lock);
    binder.bindMethod("UNLOCK", &GameObject::_Unlock);
    binder.bindFunction("GetID", &GameObject::_GetID, this);
    binder.bindMethod("GetID", &GameObject::_GetID);
    binder.bindFunction("GetName", &GameObject::_GetName, this);
    binder.bindMethod("GetName", &GameObject::_GetName);
    binder.bindFunction("GetSelf", &GameObject::_GetSelf, this);
    binder.bindFunction("GetObjectByName", &GameObject::_GetObjectByName, this);
    binder.bindFunction("IsDead", &GameObject::_IsDead, this);
    binder.bindMethod("IsDead", &GameObject::_IsDead);
    binder.bindFunction("IsCharacter", &GameObject::_IsCharacter, this);
    binder.bindMethod("IsCharacter", &GameObject::_IsCharacter);
    binder.bindFunction("IsPlayer", &GameObject::_IsPlayer, this);
    binder.bindMethod("IsPlayer", &GameObject::_IsPlayer);
    binder.bindFunction("IsDoor", &GameObject::_IsDoor, this);
    binder.bindMethod("IsDoor", &GameObject::_IsDoor);
    binder.bindFunction("IsDecor", &GameObject::_IsDecor, this);
    binder.bindMethod("IsDecor", &GameObject::_IsDecor);
    binder.bindFunction("GetPosition", &GameObject::_GetPosition, this);
    binder.bindMethod("GetPosition", &GameObject::_GetPosition);
    binder.bindFunction("SetPosition", &GameObject::_SetPosition, this);
    binder.bindMethod("SetPosition", &GameObject::_SetPosition);
    binder.bindFunction("GetDistanceFrom", &GameObject::_GetDistanceFrom, this);
    binder.bindMethod("GetDistanceFrom", &GameObject::_GetDistanceFrom);
    binder.bindFunction("GetDistanceBetween", &GameObject::_GetDistanceBetween, nullptr);
    binder.bindFunction("IsInRange", &GameObject::_IsInRange, this);
    binder.bindMethod("IsInRange", &GameObject::_IsInRange);
    binder.bindFunction("IsOverAHole", &GameObject::_IsOverAHole, this);
    binder.bindMethod("IsOverAHole", &GameObject::_IsOverAHole);
    binder.bindFunction("IsInWater", &GameObject::_IsInWater, this);
    binder.bindMethod("IsInWater", &GameObject::_IsInWater);
    binder.bindFunction("IsFlying", &GameObject::_IsFlying, this);
    binder.bindMethod("IsFlying", &GameObject::_IsFlying);
    binder.bindFunction("MarkAsFlying", &GameObject::_MarkAsFlying, this);
    binder.bindMethod("MarkAsFlying", &GameObject::_MarkAsFlying);
    binder.bindFunction("IsSwimming", &GameObject::_IsSwimming, this);
    binder.bindMethod("IsSwimming", &GameObject::_IsSwimming);
    binder.bindFunction("MarkAsSwimming", &GameObject::_MarkAsSwimming, this);
    binder.bindMethod("MarkAsSwimming", &GameObject::_MarkAsSwimming);
    binder.bindFunction("HasPath", &GameObject::_HasPath, this);
    binder.bindMethod("HasPath", &GameObject::_HasPath);
    binder.bindFunction("SetTargetListCharacterFilter", &GameObject::_SetTargetListCharacterFilter, this);
    binder.bindMethod("SetTargetListCharacterFilter", &GameObject::_SetTargetListCharacterFilter);
    binder.bindFunction("SetTargetListObjectFilter", &GameObject::_SetTargetListObjectFilter, this);
    binder.bindMethod("SetTargetListObjectFilter", &GameObject::_SetTargetListObjectFilter);
    binder.bindFunction("SetTargetListSorting", &GameObject::_SetTargetListSorting, this);
    binder.bindMethod("SetTargetListSorting", &GameObject::_SetTargetListSorting);
    binder.bindFunction("TargetListSearch", &GameObject::_TargetListSearch, this);
    binder.bindMethod("TargetListSearch", &GameObject::_TargetListSearch);
    binder.bindFunction("TargetListSearchRect", &GameObject::_TargetListSearchRect, this);
    binder.bindMethod("TargetListSearchRect", &GameObject::_TargetListSearchRect);
    binder.bindFunction("TargetListResort", &GameObject::_TargetListResort, this);
    binder.bindMethod("TargetListResort", &GameObject::_TargetListResort);
    binder.bindFunction("TargetListBackup", &GameObject::_TargetListBackup, this);
    binder.bindMethod("TargetListBackup", &GameObject::_TargetListBackup);
    binder.bindFunction("IsTargetListEmpty", &GameObject::_IsTargetListEmpty, this);
    binder.bindMethod("IsTargetListEmpty", &GameObject::_IsTargetListEmpty);
    binder.bindFunction("GetTargetListSize", &GameObject::_GetTargetListSize, this);
    binder.bindMethod("GetTargetListSize", &GameObject::_GetTargetListSize);
    binder.bindFunction("GetTargetListTop", &GameObject::_GetTargetListTop, this);
    binder.bindMethod("GetTargetListTop", &GameObject::_GetTargetListTop);
    binder.bindFunction("PopTargetList", &GameObject::_PopTargetList, this);
    binder.bindMethod("PopTargetList", &GameObject::_PopTargetList);
    binder.bindFunction("PlayFX", &GameObject::_PlayFX, this);
    binder.bindMethod("PlayFX", &GameObject::_PlayFX);
    binder.bindFunction("GrabFX", &GameObject::_GrabFX, this);
    binder.bindMethod("GrabFX", &GameObject::_GrabFX);
    binder.bindFunction("DropFX", &GameObject::_DropFX, this);
    binder.bindMethod("DropFX", &GameObject::_DropFX);
    binder.bindFunction("SetFXEndPoint", &GameObject::_SetFXEndPoint, nullptr);
    binder.bindFunction("PlaySound3D", &GameObject::_PlaySound3D, this);
    binder.bindFunction("Summon", &GameObject::_Summon, this);
    binder.bindMethod("Summon", &GameObject::_Summon);
    binder.bindFunction("RegisterSummon", &GameObject::_RegisterSummon, nullptr);
    binder.bindFunction("SummonTriggerTrap", &GameObject::_SummonTriggerTrap, this);
    binder.bindMethod("SummonTriggerTrap", &GameObject::_SummonTriggerTrap);
    binder.bindFunction("SummonTimerTrap", &GameObject::_SummonTimerTrap, this);
    binder.bindMethod("SummonTimerTrap", &GameObject::_SummonTimerTrap);
    binder.bindFunction("GetRand", &GameObject::_Rand, this);
    binder.bindMethod("GetRand", &GameObject::_Rand);
    binder.bindFunction("EnableCollisions", &GameObject::_EnableCollisions, this);
    binder.bindMethod("EnableCollisions", &GameObject::_EnableCollisions);
    binder.bindFunction("DealDamages", &GameObject::_DealDamages, this);
    binder.bindMethod("DealDamages", &GameObject::_DealDamages);
    binder.bindFunction("SetMaxPath", &GameObject::_SetMaxPath, this);
    binder.bindMethod("SetMaxPath", &GameObject::_SetMaxPath);
}

// 0x38e700 GameObject::_GetPosition(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Pushes the position X, Y and Z (+0x160..+0x168) as three numbers, in that order.
void GameObject::_GetPosition(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                              void* self) {
    const Point3D<float>& position = static_cast<GameObject*>(self)->m_position;
    ret.pushNumber(position.X);
    ret.pushNumber(position.Y);
    ret.pushNumber(position.Z);
}

// 0x38e930 GameObject::_GetTargetListSize(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The original takes the deque distance from the begin iterator (+0x304) to the end iterator (+0x314), which is the
// size of m_targetList.m_results.
void GameObject::_GetTargetListSize(const sfc::script::lua::Arguments& /*args*/,
                                    sfc::script::lua::ReturnValues& ret, void* self) {
    const std::size_t count = static_cast<GameObject*>(self)->m_targetList.m_results.size();
    ret.pushInteger(static_cast<int>(count));
}

// 0x38e970 GameObject::_IsTargetListEmpty(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The original compares the begin and end iterators of the target deque, which is m_results.empty().
void GameObject::_IsTargetListEmpty(const sfc::script::lua::Arguments& /*args*/,
                                    sfc::script::lua::ReturnValues& ret, void* self) {
    ret.pushBoolean(static_cast<GameObject*>(self)->m_targetList.m_results.empty());
}

// 0x38e98c GameObject::_HasPath(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The path is the PFObject list m_pfObject.m_path (object +0x200, the list sentinel). The original walks it and
// reports true when it has any node, which is !empty().
void GameObject::_HasPath(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                          void* self) {
    ret.pushBoolean(!static_cast<GameObject*>(self)->m_pfObject.m_path.empty());
}

// 0x38e9c0 GameObject::_IsDecor(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The test is m_goId == 21 (the GO_IDS value the binary compares against; the enum has no named value for it).
void GameObject::_IsDecor(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                          void* self) {
    ret.pushBoolean(static_cast<std::int32_t>(static_cast<GameObject*>(self)->m_goId) == 21);
}

// 0x38e9d8 GameObject::_IsDoor(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The test is m_goId == 2, which is ObjectBase::GO_DOOR.
void GameObject::_IsDoor(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                         void* self) {
    ret.pushBoolean(static_cast<std::int32_t>(static_cast<GameObject*>(self)->m_goId) == 2);
}

// 0x38e9f0 GameObject::_IsPlayer(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The value is the virtual IsPlayer() (vtable +0x28).
void GameObject::_IsPlayer(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                           void* self) {
    ret.pushBoolean(static_cast<GameObject*>(self)->IsPlayer());
}

// 0x38ea1c GameObject::_IsCharacter(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The value is the virtual IsCharacter() (vtable +0x24).
void GameObject::_IsCharacter(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                              void* self) {
    ret.pushBoolean(static_cast<GameObject*>(self)->IsCharacter());
}

// 0x38ea48 GameObject::_IsDead(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The value is the virtual IsDead() (vtable +0x34).
void GameObject::_IsDead(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                         void* self) {
    ret.pushBoolean(static_cast<GameObject*>(self)->IsDead());
}

// 0x38ea74 GameObject::_IsSwimming(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The value is PFObject::IsSwimming() on the embedded PFObject (+0x1c8).
void GameObject::_IsSwimming(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                             void* self) {
    ret.pushBoolean(static_cast<GameObject*>(self)->m_pfObject.IsSwimming());
}

// 0x38ea94 GameObject::_IsFlying(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The value is PFObject::IsFlying() on the embedded PFObject (+0x1c8), pushed as a boolean.
void GameObject::_IsFlying(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret,
                           void* self) {
    ret.pushBoolean(static_cast<GameObject*>(self)->m_pfObject.IsFlying());
}
