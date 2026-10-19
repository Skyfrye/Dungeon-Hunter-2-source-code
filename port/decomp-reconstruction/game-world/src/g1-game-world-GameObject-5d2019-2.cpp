// GameObject, part 3 of 8 (batch g1-game-world-GameObject-5d2019-2).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the
// original 32-bit ones. Functions that need a class header or a field that is not in the tree yet are
// marked partial in the ledger; the blocking dependency is named next to each of them.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/GameObject.hpp"
#include "dh2/Character.hpp"
#include "dh2/Application.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Random.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_online.hpp"
#include "core-platform/device.hpp"

// Engine-wide assert level (core-platform/memory.hpp).
extern int gAssertLevel;

namespace {

const char kGameObjectSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\GameObject.cpp";

// The original ASSERT(expression) at GameObject.cpp:line. Level 2 stops the process (the original
// writes to address 0); level 1 prints the message.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kGameObjectSource, line);
    }
}

// The single-precision constant the original builds from two 16-bit halves (movw/movt).
float FloatFromBits(std::uint32_t bits) {
    float value;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// GetOnline()->+0x05 is COnline::isOnlineGame_ (the online game flag).
bool OnlineGameFlagUnavailable() { return GetOnlineGameFlag(); }

// Tail shared by ZoneEntered, ZoneExited, EnableZoning and DisableZoning: vtable +0xc4 IsZonable(),
// then vtable +0x3c setUpdating(bool) with the zone state (or true when the object is not zonable).
void UpdateZoningVisibility(GameObject& object) {
    if (object.IsZonable() && object.m_zoningEnabled != 0) {
        object.setUpdating(object.m_inZone != 0);
    } else {
        object.setUpdating(true);
    }
}

}  // namespace

// 0x38c130 GameObject::GameObject(ObjectBase::GO_IDS)
// 0x38c398 GameObject::GameObject(ObjectBase::GO_IDS)
// Both constructor copies pass the id to ObjectBase(GO_IDS) and store the same fields. One definition
// serves both; the header declares it once.
GameObject::GameObject(GO_IDS id)
    : ObjectBase(id),
      m_targetList(nullptr, 1, 0, 1) {
    // +0x120 m_scale, +0x12c m_absAabb (zero until UpdateAbsoluteAABB), +0x144 m_relAabb (-100..100).
    m_scale = Point3D<float>{};
    for (float& value : m_absAabb) {
        value = 0.0f;
    }
    const float defaultRelAabb[6] = {-100.0f, -100.0f, -100.0f, 100.0f, 100.0f, 100.0f};
    for (int i = 0; i < 6; ++i) {
        m_relAabb[i] = defaultRelAabb[i];
    }
    m_skipCheckpoint = 0;                              // +0x15c
    m_position = Point3D<float>{};                     // +0x160
    m_rotation = Point3D<float>{};                     // +0x16c
    m_targetYaw = 0.0f;                                // +0x178
    // +0x17c m_turnPositive is not set by the constructor (as in the original).
    m_targetNode = nullptr;                            // +0x180
    m_targetNodePos = Point3D<float>{};                // +0x184
    m_prevPosition = Point3D<float>{};                 // +0x190
    m_prevRotation = Point3D<float>{};                 // +0x19c
    m_destination = Point3D<float>{};                  // +0x1a8
    m_moving = 0;                                      // +0x1b4
    m_hasHeading = 0;                                  // +0x1b5
    m_heading = Point3D<float>{};                      // +0x1b8
    m_validateDirection = 0;                           // +0x1c4
    // +0x1c8 m_pfObject: default-constructed (PFObject::PFObject).
    m_maxPath = 0;                                     // +0x26c
    m_spawnProbRolled = -1;                            // +0x270
    m_spawnProb = 100;                                 // +0x274
    // +0x278 m_lightSet, +0x290 m_dae, +0x2a8 m_xrefObject, +0x2c0 m_xrefMax, +0x2d0 and +0x2e8 are
    // std::string members; the constructor leaves them empty, as the default constructor does.
    m_visualObject = nullptr;                          // +0x2d8
    m_physicalObject = nullptr;                        // +0x2dc
    m_cameraAnchor = nullptr;                          // +0x2e0
    m_pendingInteractor = nullptr;                     // +0x2e4
    m_interactionSpotNode = nullptr;                   // +0x2e8
    m_interactionSpotCached = 0;                       // +0x2ec
    m_alwaysVisible = 0;                               // +0x2ed
    m_zoningEnabled = 1;                               // +0x2ee
    unk_2ef = 0;                                       // +0x2ef
    m_inZone = 0;                                      // +0x2f0
    m_roomZone = nullptr;                              // +0x2f4
    unk_2f8 = 0;                                       // +0x2f8
    m_zeroSizeAabb = 0;                                // +0x2f9
    unk_2fa = 0;                                       // +0x2fa
    unk_2fb = 1;                                       // +0x2fb
    unk_2fc = 0;                                       // +0x2fc
    m_script = nullptr;                                // +0x300
    // +0x304 m_targetList: constructed in the initializer list (TargetList(nullptr, 1, 0, 1)).
    // +0x358 m_idleSound: std::string, empty.
    m_idleSoundId = -1;                                // +0x370
    m_idleSoundPlaying = 0;                            // +0x372
    m_idleSoundMuted = 0;                              // +0x373

    UpdateAbsoluteAABB();
    m_targetList.SetRefObject(this);
}

// 0x38b300 GameObject::IsNearby(GameObject const*,float) const
bool GameObject::IsNearby(const GameObject* other, float margin) const {
    if (other == nullptr) {
        ReportAssert("go", 395);
    }
    const float expand = margin * 100.0f;   // the original's v13
    const float shrink = margin * -100.0f;  // the original's v6
    const float* b = other->m_absAabb;
    return (m_absAabb[0] + shrink) <= b[3] && (m_absAabb[3] + expand) >= b[0] &&
           (m_absAabb[1] + shrink) <= b[4] && (m_absAabb[4] + expand) >= b[1] &&
           (m_absAabb[2] + shrink) <= b[5] && (m_absAabb[5] + expand) >= b[2];
}

// 0x38b48c GameObject::IsPlayerNearby(float) const
// True when the Character of any player (PlayerManager::GetPlayer(index, true) for index below m_numCharacters, +0x6c4; PlayerInfo +0x660) is within the margin of this object (IsNearby).
bool GameObject::IsPlayerNearby(float margin) const {
    for (int index = 0; index < dword_99F76C->m_numCharacters; ++index) {
        const Character* character = dword_99F76C->GetPlayer(index, true)->unk_660;
        if (character != nullptr && IsNearby(character, margin)) {
            return true;
        }
    }
    return false;
}

// 0x38b518 GameObject::IsTouching(GameObject const*) const
bool GameObject::IsTouching(const GameObject* other) const {
    if (other == nullptr) {
        ReportAssert("go", 379);
    }
    const float* b = other->m_absAabb;
    return m_absAabb[0] <= b[3] && m_absAabb[3] >= b[0] && m_absAabb[1] <= b[4] &&
           m_absAabb[4] >= b[1] && m_absAabb[2] <= b[5] && m_absAabb[5] >= b[2];
}

// 0x38b630 GameObject::IsHostTouching(void) const
// GetOnline() is called first. Offline the answer is true. Online it is true when the Character of the host player (CNetPlayerInfo::IsHost, over the PlayerManager players,
// count m_numCharacters, +0x6c4; PlayerInfo +0x660) touches this object.
bool GameObject::IsHostTouching() const {
    GetOnline();  // the original calls GetOnline() first; the call creates the COnline singleton on first use
    if (!OnlineGameFlagUnavailable()) {
        return true;
    }
    if (dword_99F76C->m_numCharacters <= 0) {
        return false;
    }
    int index = 0;
    for (;;) {
        PlayerInfo* player = dword_99F76C->GetPlayer(index++, true);
        if (player->IsHost()) {
            const Character* character = player->unk_660;
            if (character != nullptr && IsTouching(character)) {
                return true;
            }
        }
        if (index >= dword_99F76C->m_numCharacters) {
            return false;
        }
    }
}

// 0x38b6d4 GameObject::GetNumPlayerTouching(void) const
// Counts the players whose Character (PlayerInfo +0x660) touches this object. The players come from the
// PlayerManager global (dword_99F76C), and the walk runs over its character count (m_numCharacters, +0x6c4).
int GameObject::GetNumPlayerTouching() const {
    if (dword_99F76C->m_numCharacters <= 0) {
        return 0;
    }
    int touching = 0;
    int index = 0;
    do {
        const Character* character = dword_99F76C->GetPlayer(index++, true)->unk_660;
        if (character != nullptr && IsTouching(character)) {
            ++touching;
        }
    } while (index < dword_99F76C->m_numCharacters);
    return touching;
}

// 0x38b8b8 GameObject::RequireOnlineUpdate(void)
// Online, an object with a net struct requests an update (m_netUpdateRequested, +0x119) when this device is the server or the object is not remotely updated. GetOnline() is called first.
void GameObject::RequireOnlineUpdate() {
    COnline* online = GetOnline();  // the original calls GetOnline() first
    if (!OnlineGameFlagUnavailable()) {
        return;
    }
    if (m_netStruct == nullptr) {
        return;
    }
    if (online->IsServer() || !IsRemotelyUpdated()) {
        m_netUpdateRequested = 1;
    }
}

// 0x38b91c GameObject::Deserialize(IStreamBase *)
void GameObject::Deserialize(IStreamBase* stream) {
    ObjectBase::Deserialize(stream);
    std::int32_t spawnProbRolled = 0;
    stream->readAs<std::int32_t>(spawnProbRolled);
    if (m_spawnProbRolled != spawnProbRolled) {
        ReportAssert("spawnProbRolled == m_spawnProbRolled", 286);
    }
    if (m_visualObject != nullptr) {
        m_visualObject->SyncVisibility();
    }
}

// 0x38b9e4 GameObject::Serialize(IStreamBase *)
void GameObject::Serialize(IStreamBase* stream) {
    ObjectBase::Serialize(stream);
    stream->writeAs<std::int32_t>(m_spawnProbRolled);
}

// 0x38ba04 GameObject::Disabled(void)
void GameObject::Disabled() {
    ObjectBase::Disabled();
    m_pfObject.m_flags &= ~std::uint32_t{8};  // the original's word at +0x1cc (PFObject flags, collisions bit)
    if (m_physicalObject != nullptr) {
        m_physicalObject->disableFilter();
    }
    m_idleSoundMuted = 1;                     // +0x373
}

// 0x38ba38 GameObject::Enabled(void)
void GameObject::Enabled() {
    ObjectBase::Enabled();
    m_pfObject.m_flags |= std::uint32_t{8};   // the original's word at +0x1cc (PFObject flags, collisions bit)
    if (m_physicalObject != nullptr) {
        m_physicalObject->enableFilter();
    }
    m_idleSoundMuted = 0;                     // +0x373
}

// 0x38ba6c GameObject::FlushTargetList(void)
void GameObject::FlushTargetList() {
    m_targetList.FlushBackupResults();
}

// 0x38bd64 GameObject::CheckSpawnProbability(void)
// A player Character (handle converted to Character*, IsPlayer) always spawns: the roll becomes -2. An object that has rolled keeps its roll. Otherwise the roll is
// Random::GetRandom(99, synced), the GCC clone .clone.2 with the range 0x63; the synchronized stream is used only online, when the network id (+0x108) is set and the recorded seed (+0xfc) is non-zero.
// A roll below the spawn probability (+0x274) becomes -2 (spawns); otherwise the object is hidden, deleted (delete mode cleared) and queued with ObjectManager::MarkForDeletion, and the roll is returned.
int GameObject::CheckSpawnProbability() {
    ObjectHandle handle = GetHandle();
    Character* character = handle.operator Character*();
    if (character != nullptr && character->IsPlayer()) {
        m_spawnProbRolled = -2;
        return -2;
    }
    if (m_spawnProbRolled != -1) {
        return m_spawnProbRolled;
    }
    bool synced = false;
    if (OnlineGameFlagUnavailable() && unk_108 != -1) {
        synced = unk_fc != 0;
    }
    m_spawnProbRolled = static_cast<std::int32_t>(Random::GetRandom(99, synced));
    if (m_spawnProbRolled < m_spawnProb) {
        m_spawnProbRolled = -2;
        return -2;
    }
    SetVisible(false);
    Delete();
    m_deleteMode = 0;
    dword_99F764->MarkForDeletion(this);
    return m_spawnProbRolled;
}

// 0x38be5c GameObject::InitPost(void)
// ObjectBase::InitPost, then the spawn probability test. For an object that spawns: scale components below 1e-4 become 1.0, the rotation goes to radians (pi/180 constant 0x3C8EFA35) with
// the yaw target copied from Z, the position is set again, the local box follows the scale, and the visual is synced or loaded (not on a low-end device for a facultative object that has unk_10c).
// skip_checkpoint clears ObjectBase +0x28. A non-empty idle_sound sets the idle sound id to its index in Arrays::Sounds, or -1 when the name is not listed.
void GameObject::InitPost() {
    ObjectBase::InitPost();
    if (CheckSpawnProbability() >= m_spawnProb) {
        return;
    }
    m_physicalObject = nullptr;  // +0x2dc

    // A scale component below 1e-4 is reset to 1.0.
    const float minScale = FloatFromBits(0x38D1B717u);  // 1e-4f
    if (std::fabs(m_scale.X) < minScale) {
        m_scale.X = 1.0f;
    }
    if (std::fabs(m_scale.Y) < minScale) {
        m_scale.Y = 1.0f;
    }
    if (std::fabs(m_scale.Z) < minScale) {
        m_scale.Z = 1.0f;
    }

    // Degrees to radians for the three rotation components. The original multiplies each one by the same
    // movw/movt constant 0x3C8EFA35 (pi / 180 as a float). The yaw target copies the Z rotation.
    const float degToRad = FloatFromBits(0x3C8EFA35u);
    m_rotation.X *= degToRad;                    // +0x16c
    m_rotation.Y *= degToRad;                    // +0x170
    const float yaw = m_rotation.Z * degToRad;   // +0x174
    m_rotation.Z = yaw;
    m_targetYaw = yaw;                           // +0x178

    // Assembly: MOV R2,#1; ADD R1,R4,#0x160; BL GameObject::SetPosition(Point3D const&,bool), i.e.
    // SetPosition(m_position, true).
    SetPosition(m_position, true);

    // The relative AABB follows the scale: m_relAabb[i] *= scale component (X, Y, Z, X, Y, Z).
    m_relAabb[0] *= m_scale.X;
    m_relAabb[1] *= m_scale.Y;
    m_relAabb[2] *= m_scale.Z;
    m_relAabb[3] *= m_scale.X;
    m_relAabb[4] *= m_scale.Y;
    m_relAabb[5] *= m_scale.Z;
    UpdateAbsoluteAABB();

    if (m_visualObject != nullptr) {
        m_visualObject->Sync();
    } else if (!Device::IsHighPerformance() && m_facultative != 0 && unk_10c != 0) {
        // Low-end device and facultative object: no visual is built.
        m_visualObject = nullptr;
    } else {
        LoadVisualObject();
        if (m_visualObject != nullptr) {
            m_visualObject->Sync();
        }
    }

    if (m_skipCheckpoint != 0) {
        unk_28 = 0;
    }

    if (!m_idleSound.empty()) {
        m_idleSoundId = static_cast<std::int16_t>(
            pydata::FindMemberName(Arrays::Sounds::m_memberNames, static_cast<int>(Arrays::Sounds::size), m_idleSound.c_str()));
    }
}

// 0x38c600 GameObject::DisableZoning(void)
// The object leaves its RoomZone (m_roomZone, when set) and joins ObjectManager's no-room list
// (dword_99F764, AddNoRoomObject). Zoning is then off, and the visibility tail runs.
void GameObject::DisableZoning() {
    if (m_zoningEnabled != 0) {
        if (m_roomZone != nullptr) {
            m_roomZone->RemoveObject(this);
        }
        dword_99F764->AddNoRoomObject(this);
        m_zoningEnabled = 0;
    }
    UpdateZoningVisibility(*this);
}

// 0x38c69c GameObject::ZoneExited(void)
void GameObject::ZoneExited() {
    const bool zoningEnabled = m_zoningEnabled != 0;
    m_inZone = 0;
    if (zoningEnabled && m_visualObject != nullptr) {
        m_visualObject->SyncVisibility();
    }
    UpdateZoningVisibility(*this);
}

// 0x38c710 GameObject::ZoneEntered(void)
void GameObject::ZoneEntered() {
    const bool zoningEnabled = m_zoningEnabled != 0;
    m_inZone = 1;
    if (zoningEnabled && m_visualObject != nullptr && m_visible != 0) {
        m_visualObject->SyncVisibility();
    }
    UpdateZoningVisibility(*this);
}

// 0x38c790 GameObject::EnableZoning(void)
// The object leaves ObjectManager's no-room list (dword_99F764, RemoveNoRoomObject). When m_roomZone is set it
// joins that zone (RoomZone::AddObject) and then calls ZoneEntered or ZoneExited, from the zone's active flag
// (RoomZone +0x389, m_active).
void GameObject::EnableZoning() {
    if (m_zoningEnabled == 0) {
        m_zoningEnabled = 1;
        dword_99F764->RemoveNoRoomObject(this);
        if (m_roomZone != nullptr) {
            m_roomZone->AddObject(this);
            if (m_roomZone->m_active) {
                ZoneEntered();
            } else {
                ZoneExited();
            }
        }
    }
    if (IsZonable() && m_visualObject != nullptr) {
        m_visualObject->SyncVisibility();
    }
    UpdateZoningVisibility(*this);
}

// 0x38c968 _ZNK10GameObject4DrawEv
// The visual and physical objects draw themselves; with the isDisplayingObstacles switch the path finding object draws its obstacle,
// with isDisplayingObstacleForces (and IsAvoidingObstacles) its forces; with isDisplayingBoundingBox the plain material (built-in
// renderer type 1) of the device's driver is set with its first technique and the driver draws (vtable +0x28, draw3DBox) the absolute
// AABB (+0x12c) in the colour 0xFFFF0000.
void GameObject::Draw() const {
    if (m_visualObject != nullptr) {
        m_visualObject->Draw();
    }
    if (m_physicalObject != nullptr) {
        m_physicalObject->Draw();
    }

    // The original reads DebugSwitches::s_inst, which is private in dh2/DebugSwitches.hpp. GetInstance()
    // returns the same object (it loads the file on first use; load() is called before each read).
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    if (switches->GetSwitch("isDisplayingObstacles")) {
        m_pfObject.DBG_DrawObstacle();
    }

    switches->load();
    if (switches->GetSwitch("isDisplayingObstacleForces") && IsAvoidingObstacles()) {
        m_pfObject.DBG_DrawObstacleForces();
    }

    switches->load();
    if (switches->GetSwitch("isDisplayingBoundingBox")) {
        glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;   // device +0x10
        glitch::video::CMaterialRendererManager* materials = driver->m_materialRendererManager;  // driver +0xdc
        const std::uint16_t renderer = materials->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
        boost::intrusive_ptr<glitch::video::CMaterial> material = materials->getMaterialInstance(renderer, true);
        const std::uint8_t technique = material ? static_cast<std::uint8_t>(material->getTechnique()) : 255;
        driver->setMaterial(material, technique, nullptr);
        glitch::core::aabbox3d<float> box;
        box.MinEdge.X = m_absAabb[0];
        box.MinEdge.Y = m_absAabb[1];
        box.MinEdge.Z = m_absAabb[2];
        box.MaxEdge.X = m_absAabb[3];
        box.MaxEdge.Y = m_absAabb[4];
        box.MaxEdge.Z = m_absAabb[5];
        glitch::video::SColor color;
        color.color = 0xFFFF0000u;
        driver->draw3DBox(box, color);
    }
}

