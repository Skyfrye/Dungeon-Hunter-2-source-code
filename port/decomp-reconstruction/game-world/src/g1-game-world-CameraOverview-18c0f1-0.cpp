// Batch g1-game-world-CameraOverview-18c0f1-0: CameraOverview (game-world).
// Declarations come from dh2/CameraOverview.hpp, which is not edited by this batch.
//
// PARTIAL rows: none. The two constructors create the camera node through the scene manager's first node factory
// and run the whole camera setup; the old notes stopped at the missing glitch::IDevice +0x1c member, which the
// device header declares now (see the constructor below).
//
// Everything else follows the Hex-Rays pseudocode. The gamepad stick block of Update uses the declared
// Gamepad::Channel layout (m_axes[2] and m_axes[3] for the stick, m_buttons[7] for the threshold channel).

#include <cmath>

#include "dh2/CameraOverview.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/EvKeyboard.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/Gamepad.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"   // dword_99F76C, the PlayerManager instance
#include "dh2/global/MenuManagerGlobals.hpp"  // dword_99F740, the EventManager instance
#include "dh2/global/Vec3f_Origin.hpp"        // Vec3f_Origin (0x99f854), the zero Point3D<float>
#include "glitch-core-io/core/reference_counted.hpp"  // glitch::IReferenceCounted (the node's own count)
#include "glitch-core-io/os/device.hpp"               // glitch::IDevice +0x1c scene manager
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"  // sceneNodeFactories (+0xcc)
#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"  // ISceneNodeFactory::addSceneNode
#include "glitch-scene-collada-gui/scene_nodes.hpp"  // ISceneNode and ICameraSceneNode (the CameraBase members)

namespace CameraOverview_detail {

namespace {

// Point3D<float>::normalize (0x34d0b0): the vector is divided by its length, the square root of the sum of the squares.
// The same reproduction as NormalizeDirection in the items-save batch; the Point3D method has no body in the tree.
void NormalizeDirection(Point3D<float>& v) {
    const float length = std::sqrt(((v.X * v.X) + (v.Y * v.Y)) + (v.Z * v.Z));
    v.X = v.X / length;
    v.Y = v.Y / length;
    v.Z = v.Z / length;
}

}  // namespace

// The key state of onEvent (0x410930) without the event decode. offset is CameraOverview::unk_1c (x, y, z), keyCode is
// the EvKeyboard code, pressed the flag at +0x10. Returns true when the key is consumed.
//   Release: the keys A, D, E, Q, S, W and X (mask 0xc50019 over key - 'A') clear the z offset and are consumed.
//   Press:   A and D move x by -100 and +100, S and W move y by -100 and +100, E and Q set z to +100 and -100,
//            X clears all three components. Any other key is not consumed.
bool ApplyKey(Point3D<float>& offset, int keyCode, bool pressed) {
    if (!pressed) {
        const unsigned int bit = static_cast<unsigned int>(keyCode) - 65u;  // 'A' is 65
        if (bit <= 0x17u && ((1u << bit) & 0xc50019u) != 0) {
            offset.Z = 0.0f;  // +0x24
            return true;
        }
        return false;
    }
    switch (keyCode) {
        case 'A':
            offset.X = offset.X - 100.0f;  // +0x1c
            return true;
        case 'D':
            offset.X = offset.X + 100.0f;
            return true;
        case 'E':
            offset.Z = 100.0f;  // 1120403456, the bit pattern 0x42c80000
            return true;
        case 'Q':
            offset.Z = -100.0f;  // -1027080192, the bit pattern 0xc2c80000
            return true;
        case 'S':
            offset.Y = offset.Y - 100.0f;  // +0x20
            return true;
        case 'W':
            offset.Y = offset.Y + 100.0f;
            return true;
        case 'X':
            offset.Z = 0.0f;
            offset.X = 0.0f;
            offset.Y = 0.0f;
            return true;
        default:
            return false;
    }
}

// The stick part of Update (0x411234). The stick is (stickX, stickY) in -1..1. Below length 0.5 the direction is the
// zero vector. From 0.5 up to 1 it is the unit direction scaled by 2 * (length - 0.5), so it rises from 0 to 1. From 1
// on it is the unit direction. The result has z = 0.
Point3D<float> StickDirection(float stickX, float stickY) {
    const float length = std::sqrt((stickX * stickX) + (stickY * stickY) + 0.0f);
    if (length >= 0.5f) {
        Point3D<float> dir{stickX, stickY, 0.0f};
        NormalizeDirection(dir);
        if (length < 1.0f) {
            const float scale = (length - 0.5f) + (length - 0.5f);
            dir.X = scale * dir.X;
            dir.Y = scale * dir.Y;
            dir.Z = scale * dir.Z;
        }
        return dir;
    }
    return Vec3f_Origin;
}

// The original reads the key code (+0x0c) and the pressed flag (+0x10) of the event directly; onEvent has already
// checked that the event id is 0, which is EvKeyboard's id.
bool ReadKeyboardEvent(const IEvent* event, int& keyCode, bool& pressed) {
    const EvKeyboard* key = static_cast<const EvKeyboard*>(event);
    keyCode = key->key;
    pressed = key->pressed;
    return true;
}

}  // namespace CameraOverview_detail

// 0x410930 CameraOverview::onEvent(IEvent const*,EventManager const*)
// The event id test (getEventID() must be 0, else return 0), then the key state (ApplyKey) on the EvKeyboard fields.
bool CameraOverview::onEvent(const IEvent* event, const EventManager* manager) {
    (void)manager;
    if (event->getEventID() != 0) {
        return false;
    }
    int keyCode = 0;
    bool pressed = false;
    if (!CameraOverview_detail::ReadKeyboardEvent(event, keyCode, pressed)) {
        return false;
    }
    return CameraOverview_detail::ApplyKey(unk_1c, keyCode, pressed);
}

// 0x410ac4 CameraOverview::Deactivated(void)
// The original returns the Detach result. The CameraBase slot is void, and no caller reads it.
void CameraOverview::Deactivated() {
    dword_99F740->Detach(0, this);
}

// 0x410aec CameraOverview::Activated(void)
// The original returns the Attach result. The CameraBase slot is void, and SetActive ignores it.
// The target is the local player's position at the mid height zMid of the PFWorld bounds. The near and far planes lie
// 15000 and 25000 above zMid, and the node sits 20000 above it.
void CameraOverview::Activated() {
    Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;  // PlayerInfo +0x660
    unk_1c = Point3D<float>{0.0f, 0.0f, 0.0f};                                // +0x1c, +0x20, +0x24
    if (character != nullptr) {
        unk_10 = character->m_position;                                       // +0x10 .. +0x18 from +0x160 .. +0x168
    } else {
        unk_10 = Point3D<float>{0.0f, 0.0f, 0.0f};
    }
    if (m_camera != nullptr) {
        // The original tests &Singleton<PFWorld>::s_inst, which is never null, so the branch always runs.
        // m_boundsMin.Z is the PFWorld s_inst +0x1c, m_boundsMax.Z is +0x28.
        const float zMid = ((Singleton<PFWorld>::s_inst.m_boundsMax.Z - Singleton<PFWorld>::s_inst.m_boundsMin.Z) * 0.5f) +
                           Singleton<PFWorld>::s_inst.m_boundsMin.Z;
        m_camera->setNearValue((zMid + 20000.0f) - 5000.0f);
        m_camera->setFarValue((zMid + 20000.0f) + 5000.0f);
        m_camera->setTarget(glitch::core::vector3d<float>{unk_10.X, unk_10.Y, zMid});
        m_node->setPosition(unk_10.X, unk_10.Y, zMid + 20000.0f);
    }
    dword_99F740->Attach(0, this, 0x7FFFFFFF);
}

// 0x410c64 CameraOverview::~CameraOverview()   (D1, complete-object destructor)
// 0x410cd0 CameraOverview::~CameraOverview()   (D1 duplicate with the same body; covered by this definition)
// The original writes the two vptrs and calls CameraBase::~CameraBase, which the compiler emits for this body.
CameraOverview::~CameraOverview() {}

// 0x410cb4 CameraOverview::~CameraOverview()   (D0) is compiler-generated: `delete` runs the destructor above and then
// CustomFree(this). No body is written, so the row is skipped.

// 0x410ea4 CameraOverview::CameraOverview()    (C2, base-object constructor)
// 0x41106c CameraOverview::CameraOverview()    (C1, complete-object constructor; the same stores)
// The camera node is created through the scene manager's first node factory: the device (dword_99F73C) holds the
// scene manager at +0x1c, its factory vector is the pair at +0xcc/+0xd0, the factory is its first entry and its
// vtable +0x0c (ISceneNodeFactory::addSceneNode(E_SCENE_NODE_TYPE, parent)) is called with the type 1601003875
// ('caem') and a null parent. The node becomes m_node and m_camera with one extra reference, then:
//   rootNode->addChild(node) (scene manager +0x04, vtable +0x5c),
//   CameraBase::SetData(0.42963, 1.7778, 15000, 25000, true),
//   setUpVector(0, 1, 0) (vtable +0x114),
//   setTarget(0, 0, 0) (vtable +0x104),
//   setRotation(quaternion::fromAngleAxis(0, (0, 1, 0))) (vtable +0x9c = ISceneNode::setRotation),
//   setPosition(0, 0, 20000).
// The old layout request (glitch::IDevice +0x1c) is STALE: the device declares sceneManager there.
CameraOverview::CameraOverview() : CameraBase() {
    unk_10 = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x10 .. +0x18
    unk_1c = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x1c .. +0x24

    Application& application = ApplicationGetInstance();
    glitch::scene::CSceneManager* sceneManager =
            application.m_device != nullptr
                    ? reinterpret_cast<glitch::scene::CSceneManager*>(application.m_device->sceneManager)
                    : nullptr;
    if (sceneManager == nullptr || sceneManager->sceneNodeFactories.empty()) {
        return;   // host-necessitated guard: the original dereferences the first factory unconditionally
    }
    glitch::scene::ISceneNodeFactory* factory = sceneManager->sceneNodeFactories.front();
    if (factory == nullptr) {
        return;   // host-necessitated guard
    }
    glitch::scene::ISceneNode* node =
            factory->addSceneNode(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(1601003875), nullptr);  // vtable +0x0c
    m_camera = static_cast<glitch::scene::ICameraSceneNode*>(node);   // +0x08
    m_node = node;                                                    // +0x04
    if (node != nullptr) {
        ++static_cast<glitch::IReferenceCounted*>(node)->referenceCounter;   // the object's own count, as the listing does
        // The node is attached to the scene root at once (the scene manager's rootNode +0x04, vtable +0x5c addChild), before SetData.
        sceneManager->rootNode->addChild(m_node);
        SetData(0.42963f, 1.7778f, 15000.0f, 25000.0f, true);
        m_camera->setUpVector(glitch::core::vector3d<float>{0.0f, 1.0f, 0.0f});  // vtable +0x114, stored before the target
        m_camera->setTarget(glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f});
        const glitch::core::quaternion rotation = glitch::core::quaternion::fromAngleAxis(
                0.0f, glitch::core::vector3d<float>{0.0f, 1.0f, 0.0f});
        m_node->setRotation(rotation);
        m_node->setPosition(0.0f, 0.0f, 20000.0f);
    }
}

// 0x411234 CameraOverview::Update(void)
// The offset unk_1c moves with the keys (onEvent) and the first gamepad's stick and trigger. The node sits at unk_10 + unk_1c
// in x and y, and its z is its own z plus unk_1c.z. The camera target moves the same way, with the target's own z plus
// unk_1c.z. With no offset, unk_10 is copied from the local player's position first.
void CameraOverview::Update() {
    CameraBase::Update();
    if (m_node == nullptr) {
        return;
    }

    // InputManager::GetInstance() comes first, as in the original. It creates the manager on first use.
    Gamepad* pad = InputManager::GetInstance()->GetFirstConnectedGamepad();
    if (pad != nullptr) {
        // The stick is the pair of channels m_axes[2] (+0x5ec, x) and m_axes[3] (+0x60c, y). The y axis is negated.
        const Gamepad::Channel& stickX = pad->m_axes[2];
        const Gamepad::Channel& stickY = pad->m_axes[3];
        const float x = (stickX.value + stickX.value) / (stickX.maximum - stickX.minimum);
        const float y = -((stickY.value + stickY.value) / (stickY.maximum - stickY.minimum));
        const Point3D<float> dir = CameraOverview_detail::StickDirection(x, y);

        // The trigger channel m_buttons[7] (+0xec): the value is below its threshold (max + min + 1) * 0.5 when the
        // trigger is not held. Its id is not recovered, so it is named by index.
        const Gamepad::Channel& trigger = pad->m_buttons[7];
        if (trigger.value < (((trigger.maximum + trigger.minimum) + 1.0f) * 0.5f)) {
            unk_1c.X = (dir.X * 100.0f) + unk_1c.X;  // +0x1c
            unk_1c.Y = (dir.Y * 100.0f) + unk_1c.Y;  // +0x20
            // The previous value (+0x0c of the channel) at or above its own threshold clears the z offset.
            if (trigger.previous >= (((trigger.previous_maximum + trigger.previous_minimum) + 1.0f) * 0.5f)) {
                unk_1c.Z = 0.0f;  // +0x24, stored as a null pointer word in the original
            }
        } else {
            unk_1c.Z = dir.Y * -100.0f;  // +0x24
        }
    }

    // A zero offset in x and y copies the local player's position into unk_10. Any other offset keeps unk_10.
    if ((unk_1c.X + unk_1c.Y) == 0.0f) {
        const Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;  // PlayerInfo +0x660
        if (character != nullptr) {
            unk_10 = character->m_position;  // +0x160 .. +0x168 of the character
        }
    }

    // The node (position) and the camera target. The original reads each current z before writing it.
    const float nodeZ = m_node->getPosition().Z;
    m_node->setPosition(unk_10.X + unk_1c.X, unk_10.Y + unk_1c.Y, nodeZ + unk_1c.Z);
    const float targetZ = m_camera->getTarget().Z;
    m_camera->setTarget(glitch::core::vector3d<float>{unk_10.X + unk_1c.X, unk_10.Y + unk_1c.Y, targetZ + unk_1c.Z});
}
