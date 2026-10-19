// Test for batch g1-game-world-CameraLevel-aa3485-0 (CameraLevel).
//
// Covers the logic that runs without the engine: the constructor's initial state, the destructor with no visual,
// __Callback, PlayAnim's controller path (the controller is a real AnimSetController object whose PlayClip is a
// recording stub), HandleZoom (the InfiniteZoom switch, the design-range clamps, the object-position limits and the
// zoom lock), HandleCentering (the two-, three- and four-player screen steps and the null-level path), and the null
// branch of CanPlayShakeAnim.
//
// Not covered: Update, Load and CalculateDefaultTargetDistance need scene nodes, VisualObject internals or the
// CameraTarget seams. Their bodies are compiled and linked, but not exercised here.
//
// The batch source needs many engine symbols at link time. They are supplied below as stubs: CameraBase and
// CameraTarget with trivial bodies, the scene-node and visual accessors as no-ops, and the singletons as test-owned
// objects. The world-coordinate stub maps a screen point (x, y) at height z to (10x, 10y, z), a linear stand-in for
// CameraBase::GetWorldCoord (which is partial in the tree).

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>

// Same include order as the batch source. Character.hpp renames net-transport's CustomFree before PlayerManager.hpp
// pulls that header in, so Character.hpp must come first, and the pydata headers come last (their stream_reader.hpp
// defines CustomFree inline as well).
#include "dh2/AnimController.hpp"
#include "dh2/AnimSetController.hpp"
#include "dh2/AnimSetManager.hpp"
#include "dh2/AnimationSet.hpp"
#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C
#include "dh2/global/ctrl_camera.hpp"        // ApplicationGetInstance
#include "glitch-scene-collada-gui/scene_nodes.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::DesignSettings
#include "pydata-accessors/w7_arrays_02.hpp"     // Arrays::DesignSettingsTable, Arrays::CamAnimSetTable

// ---- globals the batch reads (the test owns them) ----
int gAssertLevel = 0;

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

// Test state the stubs read and write.
bool g_infiniteZoom = false;
std::string g_lastSwitch;
int g_localPlayers = 1;
const Character* g_localCharacter = nullptr;
Level* g_currentLevel = nullptr;

struct WorldCall {
    bool fromInt;
    float screenX;
    float screenY;
    float z;
};
WorldCall g_worldCalls[8];
int g_worldCallCount = 0;

unsigned int g_lastClip = 0;
bool g_lastLoop = true;
int g_playClipCalls = 0;
bool g_playClipResult = true;

// Storage for the engine objects the batch reaches through references. Never constructed; the stubs only read them.
alignas(16) unsigned char g_appBuf[sizeof(Application)];
alignas(16) unsigned char g_levelBuf[sizeof(Level)];
alignas(16) unsigned char g_playerBuf[sizeof(PlayerManager)];
alignas(16) unsigned char g_designBuf[sizeof(Structs::DesignSettings)];
alignas(16) unsigned char g_visualBuf[sizeof(VisualObject)];
alignas(16) unsigned char g_cameraBuf[sizeof(CameraLevel)];

Level* TestLevel() {
    return reinterpret_cast<Level*>(g_levelBuf);
}

Structs::DesignSettings* TestDesign() {
    return reinterpret_cast<Structs::DesignSettings*>(g_designBuf);
}

}  // namespace

// ---- CameraBase and CameraTarget (the trivial bodies of the link set) ----
CameraBase* CameraBase::s_activeCamera = nullptr;
CameraBase::CameraBase() {}
CameraBase::~CameraBase() {}
void CameraBase::Activated() {}
void CameraBase::Deactivated() {}
void CameraBase::Update() {}

bool CameraBase::GetWorldCoord(const Point2D<int>& screen, Point3D<float>& world, float z) {
    g_worldCalls[g_worldCallCount++] = WorldCall{true, static_cast<float>(screen.X), static_cast<float>(screen.Y), z};
    world = Point3D<float>{static_cast<float>(screen.X) * 10.0f, static_cast<float>(screen.Y) * 10.0f, z};
    return true;
}

bool CameraBase::GetWorldCoord(const Point2D<float>& screen, Point3D<float>& world, float z) {
    g_worldCalls[g_worldCallCount++] = WorldCall{false, screen.X, screen.Y, z};
    world = Point3D<float>{screen.X * 10.0f, screen.Y * 10.0f, z};
    return true;
}

CameraTarget::CameraTarget() {}
CameraTarget::~CameraTarget() {}
void CameraTarget::Update() {}
bool CameraTarget::HandleTransition() { return false; }
bool CameraTarget::HandleOffset(Point3D<float>&) { return false; }
bool CameraTarget::HandleGhostCam(Point3D<float>&) { return true; }
bool CameraTarget::HandleDamping(Point3D<float>&) { return false; }
const Point3D<float>& CameraTarget::GetTargetPosition() {
    static Point3D<float> origin{0.0f, 0.0f, 0.0f};
    return origin;
}

// ---- singletons and globals ----
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string& name) {
    g_lastSwitch = name;
    return name == "InfiniteZoom" && g_infiniteZoom;
}

std::uint8_t* Arrays::DesignSettingsTable::members = nullptr;
std::uint8_t* Arrays::CamAnimSetTable::members = nullptr;

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appBuf);
}
Level* Application::GetCurrentLevel() const {
    return g_currentLevel;
}

// AnimSetManager::s_inst holds an empty std::map<int, AnimationSet>, whose destructor instantiates the value's destructor
// (and AnimationSet's map holds Animation values).
AnimationSet::~AnimationSet() {}
Animation::~Animation() {}

static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
int PlayerManager::GetNumLocalPlayers(bool) {
    return g_localPlayers;
}
int PlayerManager::IsLocalPlayer(const Character* character) {
    return character == g_localCharacter ? 1 : 0;
}

// ---- VisualObject (the test never reaches Load's visual path) ----
VisualObject::VisualObject(GameObject*, const std::string&, const std::string&) {}
VisualObject::~VisualObject() {}
void VisualObject::Update() {}
void VisualObject::Draw() const {}
glitch::scene::ISceneNode* VisualObject::GetSpecificNode(const char*) const {
    return nullptr;
}
void VisualObject::SetAnimController(AnimController*) {}

// ---- AnimSetManager, AnimController and AnimSetController ----
AnimSetManager::AnimSetManager() {}
AnimSetManager::~AnimSetManager() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static AnimSetManager g_testInstance_1{};
AnimSetManager& AnimSetManager::s_inst = g_testInstance_1;
int AnimSetManager::Create() { return 0; }
void AnimSetManager::AddTemplateAnim(int, int) {}
void AnimSetManager::AddAnim(int, int) {}

AnimController::AnimController(RootSceneNode*, bool) {}
AnimController::~AnimController() {}
// GetAnimationSet is never reached by this test. The stubs abort rather than return, so the intrusive_ptr return value is
// never built.
boost::intrusive_ptr<AnimationSet> AnimController::GetAnimationSet() {
    std::abort();
}
int AnimController::GetNumAnim() const { return 0; }
int AnimController::GetNumClip(unsigned int) const { return 0; }
bool AnimController::HasClip(const char*, unsigned int) const { return false; }
int AnimController::GetClipDuration(unsigned int) const { return -1; }
bool AnimController::PlayClip(unsigned int, bool, int, unsigned int) { return false; }
bool AnimController::PlayClip(const char*, bool, int, unsigned int) { return false; }
void AnimController::StopClip(bool, unsigned int) {}
void AnimController::SetScale(float, unsigned int) {}
void AnimController::SetCallbacks(AnimCallback, void*, EventCallback, void*) {}

AnimSetController::AnimSetController(RootSceneNode* node, int animSetId) : AnimController(node, false) {
    m_animSetId = animSetId;
}
AnimSetController::~AnimSetController() {}
boost::intrusive_ptr<AnimationSet> AnimSetController::GetAnimationSet() {
    std::abort();
}
int AnimSetController::GetNumClip(unsigned int) const { return 0; }
bool AnimSetController::HasClip(const char*, unsigned int) const { return false; }
int AnimSetController::GetClipDuration(unsigned int) const { return -1; }
bool AnimSetController::PlayClip(unsigned int clip, bool loop, int, unsigned int) {
    ++g_playClipCalls;
    g_lastClip = clip;
    g_lastLoop = loop;
    return g_playClipResult;
}
bool AnimSetController::PlayClip(const char*, bool, int, unsigned int) { return false; }
void AnimSetController::SetCallbacks(AnimCallback, void*, EventCallback, void*) {}

// ---- scene nodes (only Load reaches these) ----
namespace glitch {
namespace scene {
ISceneNode* ISceneNode::getParent() const { return nullptr; }
ISceneNode* ISceneNode::getSceneNodeFromName(const char*) { return nullptr; }
ISceneNode* ISceneNode::getSceneNodeFromType(E_SCENE_NODE_TYPE) { return nullptr; }
}  // namespace scene
}  // namespace glitch

// ---- the test ----
namespace {

// Resets the zoom fields of the camera to a known state.
void SetZoom(CameraLevel& cam, float current, float target, float effective, bool useObjectPosition, bool locked) {
    cam.m_zoomCurrent = current;
    cam.m_zoomTarget = target;
    cam.m_zoomEffective = effective;
    cam.m_useObjectPosition = useObjectPosition;
    cam.m_zoomLocked = locked;
}

void SetFlags(const unsigned char (&flags)[4]) {
    Level* level = TestLevel();
    for (int i = 0; i < 4; ++i) {
        level->m_playerHudOpen[i] = flags[i];
    }
}

void TestConstructor(CameraLevel& cam) {
    EXPECT(cam.m_visual == nullptr);
    EXPECT(cam.m_upVector == nullptr);
    EXPECT(cam.m_animSetId == -1);
    EXPECT(cam.m_zoomAnimActive == false);
    EXPECT(cam.m_useObjectPosition == false);
    EXPECT(cam.m_zoomLocked == false);
    EXPECT(cam.m_zoomCurrent == 0.0f);
    EXPECT(cam.m_zoomTarget == 1.0f);
    EXPECT(cam.m_zoomEffective == 0.0f);
    EXPECT(cam.m_defaultTargetDistance == 0.0f);
    EXPECT(cam.m_panOffset.X == 0.0f && cam.m_panOffset.Y == 0.0f && cam.m_panOffset.Z == 0.0f);
    EXPECT(cam.m_preserveZoom == false);
}

void TestCallback(CameraLevel& cam) {
    cam.m_zoomAnimActive = true;
    CameraLevel::__Callback(nullptr, &cam);
    EXPECT(cam.m_zoomAnimActive == false);
}

void TestPlayAnim(CameraLevel& cam) {
    // No controller: the visual exists but has no anim controller, so the call reports success without a clip.
    VisualObject* visual = reinterpret_cast<VisualObject*>(g_visualBuf);
    cam.m_visual = visual;
    visual->m_animController = nullptr;
    EXPECT(cam.PlayAnim(5, 7, false) == true);
    EXPECT(cam.m_zoomAnimActive == false);
    EXPECT(g_playClipCalls == 0);

    // A real AnimSetController: the argument goes to unk_0c and the clip plays with loop clear.
    AnimSetController controller(nullptr, 0);
    visual->m_animController = &controller;
    g_playClipResult = true;
    cam.m_zoomCurrent = 0.4f;
    cam.m_zoomTarget = 0.6f;
    EXPECT(cam.PlayAnim(5, 7, false) == true);
    EXPECT(controller.unk_0c == 7);
    EXPECT(controller.unk_10 == false);
    EXPECT(g_lastClip == 5u);
    EXPECT(g_lastLoop == false);
    EXPECT(cam.m_zoomAnimActive == true);
    EXPECT(cam.m_zoomCurrent == 0.0f);  // reset because preserveZoom is clear
    EXPECT(cam.m_zoomTarget == 1.0f);
    EXPECT(cam.m_preserveZoom == false);

    // preserveZoom keeps the zoom state.
    cam.m_zoomCurrent = 0.4f;
    cam.m_zoomTarget = 0.6f;
    EXPECT(cam.PlayAnim(6, 8, true) == true);
    EXPECT(controller.unk_0c == 8);
    EXPECT(cam.m_zoomCurrent == 0.4f);
    EXPECT(cam.m_zoomTarget == 0.6f);
    EXPECT(cam.m_preserveZoom == true);

    // A clip that does not start: the argument is still stored, and no state changes.
    g_playClipResult = false;
    cam.m_zoomAnimActive = false;
    cam.m_preserveZoom = false;
    EXPECT(cam.PlayAnim(9, 1, false) == false);
    EXPECT(controller.unk_0c == 1);
    EXPECT(cam.m_zoomAnimActive == false);
    EXPECT(cam.m_preserveZoom == false);
    EXPECT(cam.m_zoomCurrent == 0.4f);

    visual->m_animController = nullptr;
    cam.m_visual = nullptr;  // the buffer is not a heap object, so the destructor must not see it
}

void TestCanPlayShakeAnimNull(const CameraLevel& cam) {
    EXPECT(cam.CanPlayShakeAnim(nullptr) == true);
}

void TestHandleZoom(CameraLevel& cam) {
    // The four limit words are floats in Structs::DesignSettings (m_w18, m_w19, m_w42 and m_w43).
    Structs::DesignSettings* design = TestDesign();
    design->ZoomMinLimit = 0.2f;  // minimum, object position off (word 172)
    design->ZoomMaxLimit = 1.5f;  // maximum, object position off (word 168)
    design->MiniMapZoomMinLimit = 0.3f;  // minimum, object position on (word 76)
    design->MiniMapZoomMaxLimit = 1.2f;  // maximum, object position on (word 72)
    Arrays::DesignSettingsTable::members = g_designBuf;

    // InfiniteZoom: the effective zoom is the current zoom and nothing is clamped.
    g_infiniteZoom = true;
    SetZoom(cam, 0.7f, 9.0f, 0.0f, false, false);
    cam.HandleZoom();
    EXPECT(cam.m_zoomEffective == 0.7f);
    EXPECT(cam.m_zoomCurrent == 0.7f);
    EXPECT(cam.m_zoomTarget == 9.0f);
    EXPECT(g_lastSwitch == "InfiniteZoom");
    g_infiniteZoom = false;

    // In range: nothing moves and the effective zoom is the smaller of current and target.
    SetZoom(cam, 0.5f, 1.0f, 0.0f, false, false);
    cam.HandleZoom();
    EXPECT(cam.m_zoomCurrent == 0.5f);
    EXPECT(cam.m_zoomTarget == 1.0f);
    EXPECT(cam.m_zoomEffective == 0.5f);

    // Below the minimum and above the maximum: both clamp, and the effective zoom is the smaller of the two.
    SetZoom(cam, 0.0f, 5.0f, 0.0f, false, false);
    cam.HandleZoom();
    EXPECT(cam.m_zoomCurrent == 0.2f);
    EXPECT(cam.m_zoomTarget == 1.5f);
    EXPECT(cam.m_zoomEffective == 0.2f);

    // Current above the target: the target clamps to the minimum and becomes the effective zoom.
    SetZoom(cam, 1.4f, 0.1f, 0.0f, false, false);
    cam.HandleZoom();
    EXPECT(cam.m_zoomCurrent == 1.4f);
    EXPECT(cam.m_zoomTarget == 0.2f);
    EXPECT(cam.m_zoomEffective == 0.2f);

    // The object-position camera uses the other pair of limits.
    SetZoom(cam, 0.0f, 5.0f, 0.0f, true, false);
    cam.HandleZoom();
    EXPECT(cam.m_zoomCurrent == 0.3f);
    EXPECT(cam.m_zoomTarget == 1.2f);
    EXPECT(cam.m_zoomEffective == 0.3f);

    // A locked zoom skips the clamp and the effective zoom keeps its value.
    SetZoom(cam, 0.0f, 5.0f, 9.0f, false, true);
    cam.HandleZoom();
    EXPECT(cam.m_zoomCurrent == 0.0f);
    EXPECT(cam.m_zoomTarget == 5.0f);
    EXPECT(cam.m_zoomEffective == 9.0f);

    Arrays::DesignSettingsTable::members = nullptr;
}

void TestHandleCentering(CameraLevel& cam) {
    // Level +0x190 .. +0x193 are the centring flags (m_playerHudOpen in dh2/Level.hpp).
    Level* level = TestLevel();
    g_currentLevel = level;
    const unsigned char none[4] = {0, 0, 0, 0};
    const unsigned char left[4] = {1, 0, 0, 0};
    const unsigned char both2[4] = {1, 1, 0, 0};
    const unsigned char right[4] = {0, 1, 0, 0};
    const unsigned char three[4] = {1, 0, 1, 0};
    const unsigned char four[4] = {0, 0, 0, 1};
    const unsigned char fourBoth[4] = {0, 0, 1, 1};
    const unsigned char threeFour[4] = {0, 0, 0, 1};  // [403] counts only with four players
    (void)level;

    // One local player: no centring and no world lookups.
    SetFlags(left);
    g_localPlayers = 1;
    g_worldCallCount = 0;
    Point3D<float> p{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(p.X == 1.0f && p.Y == 2.0f && p.Z == 3.0f);
    EXPECT(g_worldCallCount == 0);

    // Two players, left flag: the screen step is -0.5, the shift is -5 (10 times the step) on x.
    g_localPlayers = 2;
    g_worldCallCount = 0;
    p = Point3D<float>{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(g_worldCallCount == 2);
    EXPECT(!g_worldCalls[0].fromInt && g_worldCalls[0].screenX == 0.0f && g_worldCalls[0].screenY == 0.0f &&
           g_worldCalls[0].z == 3.0f);
    EXPECT(!g_worldCalls[1].fromInt && g_worldCalls[1].screenX == -0.5f && g_worldCalls[1].z == 3.0f);
    EXPECT(p.X == -4.0f && p.Y == 2.0f && p.Z == 3.0f);

    // Two players, both flags: the steps cancel and nothing is looked up.
    SetFlags(both2);
    g_worldCallCount = 0;
    p = Point3D<float>{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(g_worldCallCount == 0);
    EXPECT(p.X == 1.0f);

    // Two players, right flag: +0.5, a shift of +5.
    SetFlags(right);
    p = Point3D<float>{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(p.X == 6.0f && p.Y == 2.0f && p.Z == 3.0f);

    // Three players: [400] and [402] each take a quarter step; the pair above gives -0.5 and a shift of -5.
    g_localPlayers = 3;
    SetFlags(three);
    g_worldCallCount = 0;
    p = Point3D<float>{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(g_worldCallCount == 2);
    EXPECT(!g_worldCalls[0].fromInt && g_worldCalls[0].screenX == 0.0f && g_worldCalls[0].screenY == 0.0f);
    EXPECT(!g_worldCalls[1].fromInt && g_worldCalls[1].screenX == -0.5f && g_worldCalls[1].screenY == 0.0f);
    EXPECT(p.X == -4.0f);

    // Three players: [403] is not read, so a flag there alone does nothing.
    SetFlags(threeFour);
    g_worldCallCount = 0;
    p = Point3D<float>{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(g_worldCallCount == 0);
    EXPECT(p.X == 1.0f);

    // Four players: [403] adds a quarter step, so the flag at [403] alone gives +0.25, a shift of +2.5.
    g_localPlayers = 4;
    SetFlags(four);
    g_worldCallCount = 0;
    p = Point3D<float>{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(g_worldCallCount == 2);
    EXPECT(!g_worldCalls[0].fromInt && g_worldCalls[0].screenX == 0.0f && g_worldCalls[0].screenY == 0.0f);
    EXPECT(!g_worldCalls[1].fromInt && g_worldCalls[1].screenX == 0.25f && g_worldCalls[1].screenY == 0.0f);
    EXPECT(p.X == 3.5f);

    // Four players: [402] and [403] cancel.
    SetFlags(fourBoth);
    g_worldCallCount = 0;
    p = Point3D<float>{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(g_worldCallCount == 0);
    EXPECT(p.X == 1.0f);

    // No flags at all: nothing moves.
    SetFlags(none);
    p = Point3D<float>{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(p.X == 1.0f && p.Y == 2.0f && p.Z == 3.0f);

    // A null level with one player returns without touching the position (the original asserts, then returns).
    g_currentLevel = nullptr;
    g_localPlayers = 1;
    p = Point3D<float>{1.0f, 2.0f, 3.0f};
    cam.HandleCentering(p);
    EXPECT(p.X == 1.0f);
    g_currentLevel = level;
    g_localPlayers = 1;
}

}  // namespace

int main() {
    // The camera is built in place in a buffer, and the destructor runs at the end, after m_visual is cleared.
    CameraLevel* cam = new (g_cameraBuf) CameraLevel();
    TestConstructor(*cam);
    TestCallback(*cam);
    TestCanPlayShakeAnimNull(*cam);
    TestPlayAnim(*cam);
    TestHandleZoom(*cam);
    TestHandleCentering(*cam);
    cam->m_visual = nullptr;
    cam->~CameraLevel();

    if (g_failures == 0) {
        std::printf("g1-game-world-CameraLevel-aa3485-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-world-CameraLevel-aa3485-0 test: %d check(s) failed\n", g_failures);
    return 1;
}
