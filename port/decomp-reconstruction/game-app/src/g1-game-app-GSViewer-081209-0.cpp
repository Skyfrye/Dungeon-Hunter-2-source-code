// Batch g1-game-app-GSViewer-081209-0 (GSViewer, 9 entries: the C2 and C1 constructors, the D2 and D1 destructors,
// the D0 deleting destructor, Dtor, Update, Draw and Ctor).
//
// Scene manager. The Hex-Rays word dword_99F73C is Application's m_device (the IDevice* at Application +0x10): the asm
// loads it from the singleton's s_inst base with LDR R3,[R3,#(dword_99F73C - 0x99F72C)]. The scene manager pointer is
// the word at IDevice +0x1c (Hex-Rays dword_99F73C + 28; the asm reads it with LDR R4,[R3,#0x1C]), which
// glitch::IDevice now declares as sceneManager and DeviceSceneManager() (dh2/global/DeviceSceneManager.hpp) returns as
// the game's SceneManager. The earlier "IDevice does not declare that word" and "the manager is not typed" notes are
// stale: the engine unification wave (u1-scene) replaced the scene_nodes.hpp stand-ins with scene/CSceneManager.hpp,
// which declares update, drawAll, clear, setActiveCamera and setAmbientLight, and ISceneNode gained its virtual
// addChild, drop() (virtual IReferenceCounted base) and getAbsolutePosition. The four rows below are therefore
// reconstructed in full.
//
// Scene manager vtable calls. Hex-Rays prints these offsets in decimal (+ 60 is 0x3c); the notes below use hex. The
// listing of tools/decomp_vtable.py for CSceneManager has its address point at +0x0c, so a listing offset is the
// Hex-Rays offset plus 0x0c (the vbase offset is read at vptr-12, as the drop() calls show, and CSceneManager.hpp
// documents the same rule). The calls in this batch, all now written:
//   Draw   Hex +0x3c  = listing +0x48  drawAll(ISceneNode*), called on the manager with (0)
//   Update Hex +0x60  = listing +0x6c  update(float, bool), called on the manager with (float dt, false)
//   Dtor   Hex +0x68  = listing +0x74  clear(), called on the manager with no arguments
//   Ctor   Hex +0x5c  = listing +0x68  ISceneNode::addChild(ISceneNode*), called on the scene root node (the word at
//                                      manager +0x04) once for each of the camera, the target and the light
//   Ctor   Hex +0x104 = listing +0x110 setTarget(vector3d const&), called on the camera (confirmed by the
//                                      CCameraSceneNode listing; setTarget is declared at that slot in CCameraSceneNode.hpp)
#include "dh2/GSViewer.hpp"

#include "dh2/SceneManager.hpp"                  // SceneManager : glitch::scene::CSceneManager (clear/update/drawAll/setActiveCamera)
#include "dh2/global/DeviceSceneManager.hpp"     // DeviceSceneManager(): Application::m_device +0x1c
#include "glitch-scene-collada-gui/scene_nodes.hpp"
#include "glitch-video/light.hpp"                // video::CLight (+0x58 m_type)

namespace {

// The game's scene manager, the object the original reaches through Application::m_device (+0x10) +0x1c.
inline SceneManager* Scene() {
    return DeviceSceneManager();
}

}  // namespace

// 0x387158 GSViewer::GSViewer()  (C2, complete-object constructor)
// 0x38718c GSViewer::GSViewer()  (C1, same body)
// Asm and Hex-Rays: the node words at +0x0c, +0x04 and +0x08 are cleared. The vptr store at +0x00 is done by the
// compiler, so the initialiser list only names the three words.
GSViewer::GSViewer() : m_camera(nullptr), m_target(nullptr), m_light(nullptr) {}

// 0x3871c0 GSViewer::~GSViewer()  (D2, complete-object destructor)
// 0x3871c4 GSViewer::~GSViewer()  (D1, base-object destructor, same body)
// Both are a single BX LR (checked with decomp_asm.py). The node words are released in Dtor, not here.
GSViewer::~GSViewer() {}

// 0x3871c8 GSViewer::Dtor(StateMachine const*)
// The words at +0x04, +0x08 and +0x0c are released in that order and then cleared. Each release is drop() on the
// node's IReferenceCounted virtual base: the asm loads the vptr, reads the virtual-base offset at vptr-12, adds it to
// the object and calls _ZNK6glitch17IReferenceCounted4dropEv (0x3871e4..0x3871f0 for the camera, 0x387208 for the
// target, 0x38722c for the light; each is guarded by a null test). The port's scene node classes derive from
// glitch::IReferenceCounted, so the implicit virtual-base upcast in the drop() call performs the same adjustment.
// The tail (0x387244..0x387260) then calls the scene manager's vtable +0x68 = clear() (CSceneManager::clear, 0x589888)
// on the object at Application::m_device (+0x10) +0x1c.
void GSViewer::Dtor(const StateMachine* machine) {
    (void)machine;
    if (m_camera != nullptr) {
        m_camera->drop();
        m_camera = nullptr;
    }
    if (m_target != nullptr) {
        m_target->drop();
        m_target = nullptr;
    }
    if (m_light != nullptr) {
        m_light->drop();
        m_light = nullptr;
    }
    Scene()->clear();
}

// 0x387270 GSViewer::Update(StateMachine*, double)
// Converts dt to float (__aeabi_d2f) and tail-calls the scene manager's vtable +0x60 = update(float, bool) with
// (float dt, false) (asm 0x38729c..0x3872ac: MOV R1,R0; MOV R2,#0; MOV R0,R4; LDR PC,[R3,#0x60], where R4 is the
// object at Application::m_device +0x1c). CSceneManager::update(float, bool) is virtual at that slot
// (CSceneManager.hpp: 0x58b9f0), and SceneManager does not override it. The void return follows the StateBase slot.
void GSViewer::Update(StateMachine* machine, double dt) {
    (void)machine;
    Scene()->update(static_cast<float>(dt), false);
}

// 0x3872bc GSViewer::Draw(StateMachine const*)
// Tail-calls the scene manager's vtable +0x3c = drawAll(ISceneNode*) with a null node (asm 0x3872d0..0x3872e8:
// MOV R1,#0; ... LDR PC,[R3,#0x3C]). That is the `virtual void drawAll(ISceneNode*)` slot of CSceneManager
// (CSceneManager.hpp) and the `virtual void drawAll(glitch::scene::ISceneNode*)` override of the game SceneManager
// (slot 0x48 in its listing, which is the same slot; scene_nodes.hpp documents listing = Hex-Rays + 0x0c).
void GSViewer::Draw(const StateMachine* machine) {
    (void)machine;
    Scene()->drawAll(static_cast<glitch::scene::ISceneNode*>(nullptr));
}

// 0x3872f8 GSViewer::Ctor(StateMachine const*)
// The whole body, in the original order (asm 0x3872f8, 100 instructions):
//   0x387324  R7 = scene manager (Application::m_device +0x1c), R5 = its root node (+0x04)
//   0x387358  new CCameraSceneNode(-1, (0,-500,0), (0,0,100), false); the two vectors are the stack pairs that hold
//             -500.0f (0xC3FA0000) and 100.0f (0x42C80000). The original allocates 0x38C bytes with the memory hint.
//   0x387374  m_camera = the new node, 0x387388 root->addChild(m_camera) (vtable +0x5c), then drop() on the node's
//             IReferenceCounted base (0x387394..0x38739c)
//   0x3873a8  scene->setActiveCamera(m_camera)
//   0x3873b0  new CEmptySceneNode(-1) (0x150 bytes) -> m_target, addChild (0x3873d8), drop (0x3873e4)
//   0x3873f4  new CLightSceneNode(true) (0x15C bytes) -> m_light, addChild (0x38741c), drop (0x387428)
//   0x387434  ASSERT(m_camera && m_target && m_light), GSViewer.cpp line 65; the three null tests jump to the exit
//             (0x387514). The assert body is not evaluated: it would write to address 0 at assert level 2.
//   0x387458  camera->setTarget(m_target->getAbsolutePosition()) (vtable +0x104, the target's absolute position into
//             a stack vector); 0x387480 setActiveCamera(m_camera) again
//   0x387484  m_light->light (+0x134, the intrusive pointer's stored pointer) -> R4; R4->m_type (+0x58) = 2
//             (STRH R2,[R4,#0x58] with R2 = 2); when R4 is non-null the count at R4+0x00 is incremented (LDRNE
//             R3,[R4]; ADDNE R3,R3,#1; STRNE R3,[R4]) and decremented again after the call at 0x3874c4..0x3874d0,
//             which is what the light's own intrusive_ptr add_ref/release do (light.hpp: CLight keeps the count at
//             +0x00, not in IReferenceCounted)
//   0x3874ac  setAmbientLight(SColorf(1,1,1,1)): the four 0x3F800000 words at SP+0x44-0x38..-0x2C
void GSViewer::Ctor(const StateMachine* machine) {
    (void)machine;
    SceneManager* const scene = DeviceSceneManager();
    glitch::scene::ISceneNode* const root = scene->rootNode;  // CSceneManager +0x04

    const glitch::core::vector3d<float> cameraPosition{0.0f, -500.0f, 0.0f};
    const glitch::core::vector3d<float> cameraTarget{0.0f, 0.0f, 100.0f};
    m_camera = new glitch::scene::CCameraSceneNode(-1, cameraPosition, cameraTarget, false);
    root->addChild(m_camera);  // virtual, ISceneNode vtable +0x5c
    m_camera->drop();
    scene->setActiveCamera(m_camera);

    m_target = new glitch::scene::CEmptySceneNode(-1);
    root->addChild(m_target);
    m_target->drop();

    m_light = new glitch::scene::CLightSceneNode(true);
    root->addChild(m_light);
    m_light->drop();

    // ASSERT(m_camera && m_target && m_light) at GSViewer.cpp:65. All three are non-null here, so the assert never
    // fires and its body is not reproduced.

    m_camera->setTarget(m_target->getAbsolutePosition());
    scene->setActiveCamera(m_camera);

    // The light's own reference count is taken around the store and the call, as the inlined intrusive_ptr does
    // (asm: LDRNE/ADDNE/STRNE before, SUB/CMP/STR after). The original stores +0x58 unconditionally, so a null light
    // pointer would fault there; the port keeps the store inside the null test.
    glitch::video::CLight* const light = m_light->light.get();
    if (light != nullptr) {
        ++light->m_refCount;
        light->m_type = 2;  // CLight +0x58
        scene->setAmbientLight(glitch::video::SColorf{1.0f, 1.0f, 1.0f, 1.0f});
        if (light->m_refCount-- == 1) {
            delete light;
        }
    }
}

// 0x3875a4 GSViewer::~GSViewer()  (D0, scalar deleting destructor)
// Not written: compiler-generated from the virtual destructor. Asm: BL D1 (0x3871c4), then CustomFree(this).
// C++ delete covers it.
