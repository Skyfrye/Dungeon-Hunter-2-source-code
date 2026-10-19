// Batch g1-game-world-CameraBase-b32e3c-0: CameraBase constructors, destructors, activation hooks, camera vector
// getters, SetData, world and screen projection, the center offset, and the static member s_activeCamera.
// Declarations come from dh2/CameraBase.hpp. A PARTIAL body names the callee or layout it waits on.

#include <cmath>
#include <cstdint>

#include "dh2/Application.hpp"                 // ApplicationGetInstance(), the device at Application +0x10
#include "dh2/CameraBase.hpp"
#include "dh2/global/screen_size.hpp"
#include "dh2/global/DeviceSceneManager.hpp"   // DeviceSceneManager(): the scene manager at device +0x1c
#include "dh2/global/Vec3f_K.hpp"              // Vec3f_K (0x99f878), the (0, 0, 1) up vector
#include "dh2/global/Vec3f_Origin.hpp"  // Vec3f_Origin (0x99f854), the zero Point3D<float> global
#include "glitch-core-io/core/matrix4_base.hpp"  // glitch::core::detail::setbyproduct_nocheck
#include "glitch-core-io/os/device.hpp"        // glitch::IDevice +0x10 driver, +0x1c scene manager
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/ISceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene_nodes.hpp"
#include "glitch-video/render_target.hpp"      // IRenderTarget m_width / m_height (+0x0c / +0x10)
#include "glitch-video/video_driver.hpp"

// Static member. ELF symbol _ZN10CameraBase14s_activeCameraE, 4 bytes in .bss.
CameraBase* CameraBase::s_activeCamera = nullptr;

// 0x40e718 CameraBase::Activated()
void CameraBase::Activated() {
}

// 0x40e71c CameraBase::Deactivated()
void CameraBase::Deactivated() {
}

// 0x40ea50 CameraBase::Update()
void CameraBase::Update() {
}

// 0x40e720 CameraBase::CameraBase()   (base-object constructor, C2)
// 0x40e750 CameraBase::CameraBase()   (complete-object constructor, C1; same body)
// The vptr word at +0x00 is written by the compiler.
CameraBase::CameraBase() : m_node(nullptr), m_camera(nullptr) {  // +0x04, +0x08
}

// 0x40e814 CameraBase::~CameraBase()   (complete-object destructor, D1)
// 0x40e780 CameraBase::~CameraBase()   (base-object destructor, D2; same body)
// The original drops m_node (+0x04) and m_camera (+0x08) through the IReferenceCounted virtual base of each glitch
// object, and nulls both words. ISceneNode derives from glitch::IReferenceCounted (scene/ISceneNode.hpp), so drop()
// is called on each node.
CameraBase::~CameraBase() {
    if (s_activeCamera == this) {
        s_activeCamera = nullptr;
    }
    if (m_node) {
        m_node->drop();
        m_node = nullptr;
    }
    if (m_camera) {
        m_camera->drop();
        m_camera = nullptr;
    }
}

// 0x40e8a8 CameraBase::GetCameraLookAtVec() const
Point3D<float> CameraBase::GetCameraLookAtVec() const {
    if (m_camera) {
        // Vtable call +0x38 on the camera node (ISceneNode::getAbsoluteTransformation; the camera vtable's listing
        // +0x44, not overridden by CCameraSceneNode), then words 4, 5 and 6 of the 4x4 matrix: row 1 of the absolute
        // transform.
        const float* m = m_camera->getAbsoluteTransformation().M;
        return Point3D<float>{m[4], m[5], m[6]};
    }
    return Vec3f_Origin;
}

// 0x40e928 CameraBase::GetCameraUpVec() const
Point3D<float> CameraBase::GetCameraUpVec() const {
    if (m_camera) {
        // Same call as GetCameraLookAtVec. Words 8, 9 and 10 of the matrix: row 2 of the absolute transform.
        const float* m = m_camera->getAbsoluteTransformation().M;
        return Point3D<float>{m[8], m[9], m[10]};
    }
    return Vec3f_Origin;
}

// 0x40e9a8 CameraBase::SetData(float,float,float,float,bool)
// With m_camera set, the original calls, in this order: the camera's vtable slot +0x13c with a2 (setFOV, listing
// +0x148), slot +0x138 with a3 (setAspectRatio, listing +0x144), slot +0x130 with a4 (setNearValue, listing +0x13c),
// slot +0x134 with a5 (setFarValue, listing +0x140), and slot +0x114 with the vector (0, 0, 1) (setUpVector, listing
// +0x120). The call offset is the listing offset minus the 0x0c vtable header (tools/decomp_vtable.py
// CCameraSceneNode). The bool argument is not read by the original.
void CameraBase::SetData(float fov, float aspect, float nearValue, float farValue, bool unused) {
    (void)unused;
    if (!m_camera) {
        return;
    }
    m_camera->setFOV(fov);
    m_camera->setAspectRatio(aspect);
    m_camera->setNearValue(nearValue);
    m_camera->setFarValue(farValue);
    m_camera->setUpVector(glitch::core::vector3d<float>{0.0f, 0.0f, 1.0f});
}

// 0x40f2f0 CameraBase::GetWorldCoord(Point2D<int> const&,Point3D<float>&,float)
// The screen point becomes the world ray through the scene manager's collision manager and the ray is intersected with
// the horizontal plane at height z: normal (0, 0, 1), D = -z (the listing stores z + 0.0 with the sign bit set).
// The collision manager's ray-from-screen call is vtable slot +0x14 with a null camera. Static: the original passes no this.
bool CameraBase::GetWorldCoord(const Point2D<int>& screen, Point3D<float>& world, float z) {
    Application& application = ApplicationGetInstance();
    if (application.m_device == nullptr || application.m_device->sceneManager == nullptr) {
        return false;   // host-necessitated guard
    }
    glitch::scene::CSceneManager* sceneManager =
            reinterpret_cast<glitch::scene::CSceneManager*>(application.m_device->sceneManager);
    glitch::scene::ISceneCollisionManager* collisions = sceneManager->collisionManager;   // +0x2c
    if (collisions == nullptr) {
        return false;   // host-necessitated guard
    }
    const glitch::core::line3d<float> ray = collisions->getRayFromScreenCoordinates(
            glitch::core::position2d<std::int32_t>{screen.X, screen.Y}, nullptr);
    const glitch::core::plane3d<float> plane{glitch::core::vector3d<float>{0.0f, 0.0f, 1.0f}, -z};
    glitch::core::vector3d<float> hit;
    if (!plane.getIntersectionWithLimitedLine(ray.start, ray.end, hit)) {
        return false;
    }
    world.X = hit.X;
    world.Y = hit.Y;
    world.Z = hit.Z;
    return true;
}

// 0x40f394 CameraBase::GetWorldCoord(Point2D<float> const&,Point3D<float>&,float)
// The screen point (each component in -1..1) is mapped to the pixel size of the render target on top of the driver's
// stack (driver +0xcc is m_renderTargets, so *(driver +0xcc) - 4 is the last target; its width is +0x0c and its height
// +0x10), truncated toward zero, and the Point2D<int> overload does the ray work. Static: the original passes no this.
bool CameraBase::GetWorldCoord(const Point2D<float>& screen, Point3D<float>& world, float z) {
    Application& application = ApplicationGetInstance();
    if (application.m_device == nullptr) {
        return false;   // host-necessitated guard: the original dereferences the device unconditionally
    }
    glitch::video::IVideoDriver* driver = application.m_device->videoDriver;   // device +0x10
    if (driver == nullptr || driver->m_renderTargets.empty()) {
        return false;   // host-necessitated guard: the original dereferences the last target unconditionally
    }
    const glitch::video::IRenderTarget* target = driver->m_renderTargets.back().get();
    if (target == nullptr) {
        return false;   // host-necessitated guard
    }
    Point2D<int> pixel;
    pixel.X = static_cast<int>(((screen.X + 1.0f) * 0.5f) * static_cast<float>(target->m_width));    // +0x0c
    pixel.Y = static_cast<int>(((screen.Y + 1.0f) * 0.5f) * static_cast<float>(target->m_height));   // +0x10
    return GetWorldCoord(pixel, world, z);
}

// 0x40f45c CameraBase::SetActive()
// The previous active camera is deactivated, this becomes s_activeCamera, the scene manager's active camera is set to
// m_camera and Activated runs on the new one. The scene manager is the one the device holds at +0x1c
// (dword_99F73C +0x1c); ApplicationGetInstance().m_device is dword_99F73C.
void CameraBase::SetActive() {
    if (s_activeCamera != this) {
        if (s_activeCamera) {
            s_activeCamera->Deactivated();
        }
        s_activeCamera = this;
        // The listing passes the scene manager's word at device +0x1c straight to the non-virtual
        // CSceneManager::setActiveCamera(const ICameraSceneNode*) method.
        Application& application = ApplicationGetInstance();
        glitch::scene::CSceneManager* sceneManager =
                application.m_device != nullptr
                        ? reinterpret_cast<glitch::scene::CSceneManager*>(application.m_device->sceneManager)
                        : nullptr;
        if (sceneManager != nullptr) {
            sceneManager->setActiveCamera(m_camera);
        }
        s_activeCamera->Activated();
    }
}

// 0x40f4dc CameraBase::GetCenterOffset(Point3D<float>&,float) const
// False without a camera. Otherwise offset = (m[4], m[5], 0) from the camera's absolute transform, and when
// m[4]^2 + m[5]^2 is at least 0.0001 the offset is normalised and scaled by the factor the listing builds:
//   dz = camera absolute Z - z
//   angle = |(m[4], m[5], m[6]).angle(-K)|,  -K = (0, 0, -1) (the listing negates Vec3f_K with the sign bit)
//   half = 0.5 * getFOV() (the camera's vtable slot +0x128; the listing reads it twice)
//   scale = 0.5 * ((dz * (tan(angle + half) - tan(angle))) + (dz * (tan(angle) - tan(angle - half)))) - (dz * (tan(angle) - tan(angle - half)))
// The angle is taken with the sign bit cleared (fabs), as the listing's `& 0x7FFFFFFF` does.
bool CameraBase::GetCenterOffset(Point3D<float>& offset, float z) const {
    if (!m_camera) {
        return false;
    }
    const float* m = m_camera->getAbsoluteTransformation().M;
    offset.X = m[4];
    offset.Y = m[5];
    offset.Z = 0.0f;
    if (std::fabs(m[4] * m[4] + m[5] * m[5]) >= 0.0001f) {
        const float dz = m_camera->getAbsolutePosition().Z - z;
        Point3D<float> view{m[4], m[5], m[6]};
        const Point3D<float> minusK{-Vec3f_K.X, -Vec3f_K.Y, -Vec3f_K.Z};
        const float angle = std::fabs(view.angle(minusK));
        const float halfFov = m_camera->getFOV() * 0.5f;
        const float tangent = std::tan(angle);
        const float upper = std::tan(angle + halfFov);
        const float lower = std::tan(angle - halfFov);
        const float first = (tangent - lower) * dz;
        const float scale = ((first + ((upper - tangent) * dz)) * 0.5f) - first;
        offset.normalize();
        offset.X = offset.X * scale;
        offset.Y = offset.Y * scale;
        offset.Z = offset.Z * scale;
    }
    return true;
}

// 0x40f714 CameraBase::GetScreenCoord(Point3D<float> const&,Point2D<float>&)
// The world point is projected by the composition the listing builds: setbyproduct_nocheck(out, viewProjectionProd,
// view) with viewProduct = the driver's state 0 and view = the driver's state 2, i.e. out = state2 * state0 (the
// camera's view-projection product, as in CCameraSceneNode::setTransformState), then the row (x, y, z, 1) is
// multiplied by it in place and divided by the resulting w. Static: the original passes no this.
void CameraBase::GetScreenCoord(const Point3D<float>& world, Point2D<float>& screen) {
    Application& application = ApplicationGetInstance();
    if (application.m_device == nullptr || application.m_device->videoDriver == nullptr) {
        screen = Point2D<float>{0.0f, 0.0f};   // host-necessitated guard: the original dereferences the driver
        return;
    }
    glitch::video::IVideoDriver* driver = application.m_device->videoDriver;   // device +0x10
    const glitch::core::CMatrix4<float>& state0 = driver->getTransform(0);     // vtable +0x70
    const glitch::core::CMatrix4<float>& state2 = driver->getTransform(2);
    glitch::core::CMatrix4<float> product;
    glitch::core::detail::setbyproduct_nocheck(product, state2, state0);
    float row[4] = {world.X, world.Y, world.Z, 1.0f};
    const float w = product.multiplyWith1x4Matrix(row);
    const float inverseW = 1.0f / w;
    screen.X = inverseW * row[0];
    screen.Y = inverseW * row[1];
}

// 0x40f6f8 CameraBase::~CameraBase()   (deleting destructor, D0): not defined here. The compiler emits it for
// `delete` on a CameraBase*; its body is D1 followed by CustomFree(this).

// Port addition (UI3, TRACK-B.md decision 15): the surface changed size after the cameras were set up (fold/unfold). The 3D cameras take their
// aspect from the screen once, at creation (Level::_LoadCamera, the menu avatar camera), so the active one is rescaled by the ratio of the new
// aspect scale to the old one; the others get a correct aspect when they are next created.
void ScreenAspectRescaleActiveCamera(float oldScale) {
    if (oldScale <= 0.0f) {
        return;
    }
    glitch::IDevice* device = ApplicationGetInstance().m_device;
    if (device == nullptr || device->sceneManager == nullptr) {
        return;
    }
    glitch::scene::ICameraSceneNode* camera = reinterpret_cast<glitch::scene::CSceneManager*>(device->sceneManager)->activeCamera;
    if (camera != nullptr) {
        camera->setAspectRatio(camera->getAspectRatio() * ScreenAspectScale() / oldScale);
    }
}
