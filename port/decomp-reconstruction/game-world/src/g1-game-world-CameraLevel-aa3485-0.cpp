// Batch g1-game-world-CameraLevel-aa3485-0: CameraLevel (game-world), the gameplay camera.
// Layout and declarations: dh2/CameraLevel.hpp. Member offsets are kept as comments; the layout was checked against
// the constructor, the destructor and every method body of this batch.
//
// Partial bodies: none in this batch. HandleCentering's delta comes from CameraBase::GetWorldCoord (the
// Point2D<float> overload, now complete: the viewport size from the top render target and the view ray through the
// scene collision manager). Update uses the CameraTarget virtuals directly (getAbsolutePosition and setPosition);
// the seams are gone. Load now stores the rig root in m_node, because RootSceneNode derives through
// glitch::collada::CSceneNode from glitch::scene::ISceneNode.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/AnimSetController.hpp"
#include "dh2/AnimSetManager.hpp"
#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C, the PlayerManager instance
#include "dh2/global/ctrl_camera.hpp"        // Application& ApplicationGetInstance()
#include "glitch-core-io/core/reference_counted.hpp"  // glitch::IReferenceCounted (referenceCounter)
#include "glitch-scene-collada-gui/scene_nodes.hpp"    // ISceneNode, ICameraSceneNode, E_SCENE_NODE_TYPE
#include "pydata-accessors/structs_records.hpp"        // Structs::DesignSettings, Structs::CamAnimSet
#include "pydata-accessors/w7_arrays_02.hpp"           // Arrays::DesignSettingsTable, Arrays::CamAnimSetTable

// Global assert level (libDungeonHunter2.so gAssertLevel at 0x99f914). core-platform/memory.hpp declares it too, but
// that header's glitch stand-ins clash with the glitch scene headers this file needs, so it is declared here.
extern int gAssertLevel;

namespace {

// The source path the original's ASSERT messages print (CameraLevel.cpp in the Visual Studio project).
constexpr const char kCameraLevelSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Cameras\\CameraLevel.cpp";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash), level 1 prints
// the message and the function goes on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kCameraLevelSource, line);
    }
}

// Record 0 of Arrays::DesignSettingsTable. The original reads its float words at fixed byte offsets with no index
// (members + 72, + 76, + 168 and + 172, which are m_w18, m_w19, m_w42 and m_w43 of Structs::DesignSettings).
const Structs::DesignSettings& DesignSettingsRecord0() {
    return *reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);
}

// Row camTableIndex of Arrays::CamAnimSetTable (file stride 28, decoded into Structs::CamAnimSet elements).
const Structs::CamAnimSet& CamAnimSetRow(int row) {
    return reinterpret_cast<const Structs::CamAnimSet*>(Arrays::CamAnimSetTable::members)[row];
}

// Scene node type tag the original passes to getSceneNodeFromType in Load: the bytes "daec" (0x63656164). It is not
// named in glitch's scene_types.hpp (which names "daen" and "cam_" only), so the value is passed through unchanged.
constexpr std::uint32_t kCameraNodeTypeTag = 0x63656164u;

// 1/sqrt(2) as a float (bit pattern 0x3f3504f3). Update's cos45 and sin45 statics hold this value.
constexpr float kCos45 = 0.70710678f;
constexpr float kSin45 = 0.70710678f;

// The screen-to-world delta used by HandleCentering: the world point under the normalized screen point (screenX, 0)
// minus the world point under the normalized screen centre (0, 0), both on the plane at the position's height, added
// to the position. Both samples use the Point2D<float> overload (0x40f394), as the four BL sites of the original do:
// the centre pair is two zero words, so the centre is Point2D<float>{0, 0}. The Point2D<int> overload (0x40f2f0) takes
// pixels, where (0, 0) is the pixel origin, so it is not interchangeable here. Each call takes the z the original read
// (position.Z before any change).
void ApplyScreenDelta(Point3D<float>& position, float screenX) {
    Point3D<float> centre{0.0f, 0.0f, 0.0f};
    Point3D<float> shifted{0.0f, 0.0f, 0.0f};
    CameraBase::GetWorldCoord(Point2D<float>{0.0f, 0.0f}, centre, position.Z);
    CameraBase::GetWorldCoord(Point2D<float>{screenX, 0.0f}, shifted, position.Z);
    position.X += shifted.X - centre.X;
    position.Y += shifted.Y - centre.Y;
    position.Z += shifted.Z - centre.Z;
}

}  // namespace

// 0x40f8f8 CameraLevel::__Callback(glitch::scene::ITimelineController*, void*)
// The timeline callback of the rig visual: the clip that PlayAnim started has finished. The user pointer is the camera.
void CameraLevel::__Callback(glitch::scene::ITimelineController* controller, void* user) {
    (void)controller;
    static_cast<CameraLevel*>(user)->m_zoomAnimActive = false;  // +0x84
}

// 0x40f904 CameraLevel::PlayAnim(int, int, bool)
// The rig's anim controller (VisualObject +0x38) is the AnimSetController that Load creates. controllerArg goes to its
// unk_0c and its unk_10 flag is cleared, then clip clipId plays (PlayClip with loop clear). When the clip starts, the
// zoom state is reset unless preserveZoom is set.
// On the path with no controller the original returns the visual pointer (non-zero); this port returns true.
bool CameraLevel::PlayAnim(int clipId, int controllerArg, bool preserveZoom) {
    AnimController* controller = m_visual->m_animController;  // VisualObject +0x38
    if (!controller) {
        return true;
    }
    AnimSetController* setController = static_cast<AnimSetController*>(controller);
    setController->unk_0c = controllerArg;  // controller +0x0c (the ctor stores 0; meaning not recovered)
    setController->unk_10 = false;          // controller +0x10
    const bool played = controller->PlayClip(static_cast<unsigned int>(clipId), false, 0, 0);  // vtable +0x1c
    if (played) {
        m_zoomAnimActive = true;  // +0x84
        if (!preserveZoom) {
            m_zoomCurrent = 0.0f;  // +0x88
            m_zoomTarget = 1.0f;   // +0x8c
        }
        m_preserveZoom = preserveZoom;  // +0xa4
    }
    return played;
}

// 0x40f980 CameraLevel::CanPlayShakeAnim(Character*) const
// True for a null requester after the ASSERT, for a non-player, and for a local player in a single-player game.
bool CameraLevel::CanPlayShakeAnim(Character* requester) const {
    if (requester) {
        if (!requester->IsPlayer()) {  // vtable +0x28
            return true;
        }
        if (dword_99F76C->GetNumLocalPlayers(false) == 1) {
            return dword_99F76C->IsLocalPlayer(requester) != 0;
        }
        return false;
    }
    ReportAssert("requester", 246);
    return true;
}

// 0x40fa68 CameraLevel::HandleCentering(Point3D<float>&)
// Multiplayer centring. The Hex-Rays signature returns the z component as a float (the position's z after the move,
// or an incidental register value on the other paths); this port keeps the void declaration of dh2/CameraLevel.hpp.
// The delta is ApplyScreenDelta, which uses CameraBase::GetWorldCoord (the Point2D<float> overload, 0x40f394, now
// complete). The flags are the four bytes of Level +0x190 (Level.hpp m_playerHudOpen).
void CameraLevel::HandleCentering(Point3D<float>& position) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    const int localPlayers = dword_99F76C->GetNumLocalPlayers(true);
    if (!level) {
        ReportAssert("level", 102);
        if (localPlayers >= 2) {
            // The original reads the level's centring flags through the null pointer next, and faults.
            std::abort();
        }
        return;
    }
    const auto& flags = level->m_playerHudOpen;  // Level +0x190 .. +0x193: CurrentLevel[400] .. [403] in the original
    if (localPlayers == 2) {
        // Two players: half a screen to the left or right, from the flags at [400] and [401].
        float screenX = 0.0f;  // v16
        if (flags[0]) {
            screenX = -0.5f;
        }
        if (flags[1]) {
            screenX = screenX + 0.5f;
        }
        if (screenX != 0.0f) {
            ApplyScreenDelta(position, screenX);
        }
    } else if (localPlayers > 2) {
        // Three or four players: quarter steps from the flags at [400] .. [402], and [403] for four players only.
        float screenX = 0.0f;  // v7
        if (flags[0]) {
            screenX = -0.25f;
        }
        if (flags[1]) {
            screenX = screenX + 0.25f;
        }
        if (flags[2]) {
            screenX = screenX - 0.25f;
        }
        if (localPlayers == 4 && flags[3]) {
            screenX = screenX + 0.25f;
        }
        if (screenX != 0.0f) {
            ApplyScreenDelta(position, screenX);
        }
    }
}

// 0x40fd18 CameraLevel::CalculateDefaultTargetDistance()
// The distance from the camera's parent node to the camera's target node, from their positions (vtable +0xa0). The
// target is read through the const overload of getTargetNode (vtable +0x10c), as the original calls it.
float CameraLevel::CalculateDefaultTargetDistance() {
    if (!m_camera) {
        ReportAssert("targetCam", 84);
        // The original reads the camera's parent through the null pointer next, and faults.
        std::abort();
    }
    const glitch::scene::ISceneNode* parent = m_camera->getParent();
    const glitch::core::vector3d<float>& from = parent->getPosition();  // vtable +0xa0
    const glitch::scene::ISceneNode* target =
        static_cast<const glitch::scene::ICameraSceneNode*>(m_camera)->getTargetNode();  // vtable +0x10c
    if (!target) {
        // The original calls the target's position slot through the null pointer next, and faults.
        std::abort();
    }
    const glitch::core::vector3d<float>& to = target->getPosition();  // vtable +0xa0
    const float dx = to.X - from.X;
    const float dy = to.Y - from.Y;
    const float dz = to.Z - from.Z;
    const float distance = std::sqrt(dx * dx + dy * dy + dz * dz);
    m_defaultTargetDistance = distance;  // +0x94
    return distance;
}

// 0x40fe7c CameraLevel::~CameraLevel() (D1, complete object)
// 0x40ff04 CameraLevel::~CameraLevel() (D2, base object): the same body, covered by this definition.
// The rig visual is deleted through its virtual destructor. The two std::string members and the CameraTarget base are
// destroyed by the compiler in the original's order. 0x40fee8 (D0) is compiler-generated and has no definition here.
CameraLevel::~CameraLevel() {
    if (m_visual) {
        delete m_visual;  // +0x44 (vtable +0x04 in the original)
        m_visual = nullptr;
    }
}

// 0x40ff70 CameraLevel::CameraLevel() (C1, complete object)
// 0x41002c CameraLevel::CameraLevel() (C2, base object): the same body, covered by this definition.
// The members the constructor does not set (m_camTableIndex at +0x80, and the padding) keep the allocator's values, as
// in the original.
CameraLevel::CameraLevel() : CameraTarget() {
    m_visual = nullptr;                              // +0x44
    m_upVector = nullptr;                            // +0x48
    m_animSetId = -1;                                // +0x7c
    m_zoomAnimActive = false;                        // +0x84
    m_useObjectPosition = false;                     // +0x85
    m_zoomLocked = false;                            // +0x86
    m_zoomCurrent = 0.0f;                            // +0x88
    m_zoomTarget = 1.0f;                             // +0x8c (bit pattern 0x3f800000)
    m_zoomEffective = 0.0f;                          // +0x90
    m_defaultTargetDistance = 0.0f;                  // +0x94
    m_panOffset = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x98, +0x9c, +0xa0
    m_preserveZoom = false;                          // +0xa4
}

// 0x410218 CameraLevel::HandleZoom()
// With the InfiniteZoom debug switch the effective zoom is the current zoom. Otherwise, unless the zoom is locked, the
// current zoom and the target are clamped to the design range from record 0 of Arrays::DesignSettingsTable, and the
// effective zoom becomes the smaller of the two.
void CameraLevel::HandleZoom() {
    DebugSwitches::s_inst.load();
    if (DebugSwitches::s_inst.GetSwitch("InfiniteZoom")) {
        m_zoomEffective = m_zoomCurrent;  // +0x90 = +0x88
        return;
    }
    if (m_zoomLocked) {  // +0x86
        return;
    }
    const Structs::DesignSettings& design = DesignSettingsRecord0();
    // Minimum: word 172 (m_w43), or word 76 (m_w19) for the object-position camera. Maximum: word 168 (m_w42), or word 72
    // (m_w18) for the object-position camera. The words are file offsets of record 0, shown as the struct's members.
    const float minZoom = m_useObjectPosition ? design.MiniMapZoomMinLimit : design.ZoomMinLimit;
    const float maxZoom = m_useObjectPosition ? design.MiniMapZoomMaxLimit : design.ZoomMaxLimit;

    float zoomCurrent = m_zoomCurrent;  // +0x88
    if (zoomCurrent <= minZoom) {
        zoomCurrent = minZoom;
    }
    if (zoomCurrent >= maxZoom) {
        zoomCurrent = maxZoom;
    }
    m_zoomCurrent = zoomCurrent;

    float zoomTarget = m_zoomTarget;  // +0x8c
    if (zoomTarget <= minZoom) {
        zoomTarget = minZoom;
    }
    if (zoomTarget >= maxZoom) {
        zoomTarget = maxZoom;
    }
    m_zoomTarget = zoomTarget;

    if (zoomCurrent <= zoomTarget) {
        zoomTarget = zoomCurrent;
    }
    m_zoomEffective = zoomTarget;  // +0x90
}

// 0x410390 CameraLevel::Update()
// Runs only for the active camera with a target, a camera node and a rig node. Otherwise the base Update runs.
// HandleDamping (the node's absolute position) and HandleTransition (the node's setPosition) are complete, so the
// damped follow and the transition blend are active. The rest of the update is as the original.
void CameraLevel::Update() {
    if (this != CameraBase::s_activeCamera || !m_target || !m_camera || !m_node) {  // +0x0c, +0x08, +0x04
        CameraBase::Update();
        return;
    }
    if (HandleTransition()) {
        return;
    }
    // The point the camera follows: the object's own position (GameObject +0x160) or its camera anchor.
    Point3D<float> position = m_useObjectPosition ? m_target->m_position : GetTargetPosition();
    HandleOffset(position);
    HandleCentering(position);

    // The pan offset (+0x98, +0x9c, +0xa0). With m_useObjectPosition the x and y pair is turned by 45 degrees.
    const float panZ = m_panOffset.Z;  // +0xa0
    float panX = m_panOffset.X;        // +0x98
    float panY = m_panOffset.Y;        // +0x9c
    float offsetX = panX;
    if (m_useObjectPosition) {
        offsetX = kCos45 * panX - kSin45 * panY;
        panY = kCos45 * panY + kSin45 * panX;
    }
    position.X = position.X + offsetX;
    position.Y = position.Y + panY;
    position.Z = position.Z + panZ;

    // The zoom moves the camera node back along its z axis by the effective zoom times the default target distance.
    float zoomOffset;
    if (!m_zoomAnimActive || m_preserveZoom) {  // +0x84, +0xa4
        HandleZoom();
        zoomOffset = -m_zoomEffective;  // +0x90
    } else if (std::fabs(m_zoomEffective) >= 0.1) {
        m_zoomEffective = m_zoomEffective * 0.75f;  // decays while a zoom clip plays
        zoomOffset = -m_zoomEffective;
    } else {
        zoomOffset = -0.0f;
        m_zoomEffective = 0.0f;
    }
    const float cameraZ = zoomOffset * m_defaultTargetDistance;  // +0x94
    m_camera->setPosition(glitch::core::vector3d<float>{0.0f, 0.0f, cameraZ});  // vtable +0xa4

    HandleGhostCam(position);
    HandleDamping(position);
    m_node->setPosition(glitch::core::vector3d<float>{position.X, position.Y, position.Z});  // vtable +0xa4

    // A target that is being deleted is dropped (GameObject +0x81 is ObjectBase::m_markedForDeletion).
    if (m_target->m_markedForDeletion) {
        m_target = nullptr;
    }
    CameraBase::Update();
}

// 0x41068c CameraLevel::Load(char const*, int, char const*)
// Loads the camera visual dae, finds the camera node cameraNode under it (its "upvector" child is kept), takes the
// camera as a reference, computes the default target distance, and builds the animation set of the CamAnimSetTable
// row camTableIndex, with an AnimSetController as the rig's anim controller. The timeline callback is registered last.
// The original returns the visual or the callback registration result; the void declaration of dh2/CameraLevel.hpp is
// kept. Every step of the original is made, including the store of the rig root in m_node.
void CameraLevel::Load(const char* dae, int camTableIndex, const char* cameraNode) {
    m_dae = dae;                       // +0x4c
    m_camTableIndex = camTableIndex;   // +0x80
    m_cameraNodeName = cameraNode;     // +0x64
    const std::string variant;         // the empty variant name (the original passes an empty string)
    m_visual = new VisualObject(nullptr, m_dae, variant);  // operator new(172) and the VisualObject constructor
    if (!m_visual || !m_visual->m_node) {  // visual +0x08
        return;
    }

    glitch::scene::ISceneNode* specificNode = m_visual->GetSpecificNode(cameraNode);
    glitch::scene::ISceneNode* upVector = specificNode;
    if (specificNode) {
        glitch::scene::ISceneNode* camera = specificNode->getSceneNodeFromType(
            static_cast<glitch::scene::E_SCENE_NODE_TYPE>(kCameraNodeTypeTag));
        m_camera = static_cast<glitch::scene::ICameraSceneNode*>(camera);  // +0x08
        if (m_camera) {
            ++static_cast<glitch::IReferenceCounted*>(m_camera)->referenceCounter;  // one reference for the camera
            CalculateDefaultTargetDistance();
        }
        upVector = specificNode->getSceneNodeFromName("upvector");
    } else {
        m_camera = nullptr;
    }
    m_upVector = upVector;  // +0x48
    // m_node (+0x04) takes the rig's root node (VisualObject +0x08) with one reference. RootSceneNode derives from
    // glitch::collada::CRootSceneNode -> collada::CSceneNode -> scene::CEmptySceneNode -> scene::ISceneNode, so the
    // store is an ordinary upcast.
    m_node = m_visual->m_node;
    if (m_node) {
        ++static_cast<glitch::IReferenceCounted*>(m_node)->referenceCounter;
    }

    m_animSetId = AnimSetManager::s_inst.Create();  // +0x7c
    const Structs::CamAnimSet& row = CamAnimSetRow(m_camTableIndex);
    AnimSetManager::s_inst.AddTemplateAnim(m_animSetId, row.Template);
    AnimSetManager::s_inst.AddAnim(m_animSetId, row.Idle);
    AnimSetManager::s_inst.AddAnim(m_animSetId, row.Shake);
    AnimSetManager::s_inst.AddAnim(m_animSetId, row.Crit);
    if (row.CamAnimsSize != 0) {
        const std::int32_t* clips = static_cast<const std::int32_t*>(row.CamAnims);
        for (std::uint32_t i = 0; i < row.CamAnimsSize; ++i) {
            AnimSetManager::s_inst.AddAnim(m_animSetId, clips[i]);
        }
    }

    RootSceneNode* root = m_visual->m_node;
    AnimSetController* controller = new AnimSetController(root, m_animSetId);  // operator new(20) in the original
    m_visual->SetAnimController(controller);
    m_visual->m_animController->SetCallbacks(&CameraLevel::__Callback, this, nullptr, nullptr);  // vtable +0x2c
}
