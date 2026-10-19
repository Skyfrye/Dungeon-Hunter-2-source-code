// Bodies of glitch::scene::ISceneNodeAnimatorCameraMaya and glitch::scene::CSceneNodeAnimatorCameraMaya (canonical classes:
// scene/ISceneNodeAnimatorCameraMaya.hpp, scene/CSceneNodeAnimatorCameraMaya.hpp). This file replaces the stand-in members of
// src/scene_simple_accessors.cpp.
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCameraMaya.hpp"

#include <cmath>

#include "glitch-scene-collada-gui/gui/ICursorControl.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

// 0x6c9644 _ZN6glitch5scene28ISceneNodeAnimatorCameraMayaD1Ev
// 0x6ca608 _ZN6glitch5scene28ISceneNodeAnimatorCameraMayaD0Ev (deleting; skipped)
// 0x6ca290 _ZN6glitch5scene28ISceneNodeAnimatorCameraMayaC1Ev (the interface constructor: base object plus vtables)
ISceneNodeAnimatorCameraMaya::~ISceneNodeAnimatorCameraMaya() = default;

// 0x6ca338 _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaC1EPNS_3gui14ICursorControlEfff
// 0x6ca4cc _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaC2EPNS_3gui14ICursorControlEfff
CSceneNodeAnimatorCameraMaya::CSceneNodeAnimatorCameraMaya(gui::ICursorControl* cursor, float rotateSpeedIn, float zoomSpeedIn,
                                                           float translateSpeedIn)
    : cursorControl(cursor), zoomSpeed(zoomSpeedIn), rotateSpeed(rotateSpeedIn), translateSpeed(translateSpeedIn) {
    if (cursorControl != nullptr) {
        ++cursorControl->referenceCounter;
        mousePos = cursorControl->getRelativePosition();  // vptr+0x28
    }
    allKeysUp();
}

// 0x6c96b0 _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaD1Ev
// 0x6c9748 _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaD2Ev
// 0x6c9764 _ZN6glitch5scene28CSceneNodeAnimatorCameraMayaD0Ev (deleting; skipped)
CSceneNodeAnimatorCameraMaya::~CSceneNodeAnimatorCameraMaya() {
    if (cursorControl != nullptr) {
        cursorControl->drop();
    }
}

// 0x6c94d8 _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya22isEventReceiverEnabledEv
bool CSceneNodeAnimatorCameraMaya::isEventReceiverEnabled() const {
    return true;
}

// 0x6c94e0 _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE CSceneNodeAnimatorCameraMaya::getType() const {
    return ESNAT_CAMERA_MAYA;
}

// 0x6c94f0 _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya7onEventERKNS_6SEventE
bool CSceneNodeAnimatorCameraMaya::onEvent(const glitch::SEvent& event) {
    if (event.EventType != EET_MOUSE_INPUT_EVENT) {
        return false;
    }
    switch (event.MouseInput.Event) {
        case EMIE_LMOUSE_PRESSED_DOWN:
            mouseKeyDown[0] = true;
            return true;
        case EMIE_RMOUSE_PRESSED_DOWN:
            mouseKeyDown[2] = true;
            return true;
        case EMIE_MMOUSE_PRESSED_DOWN:
            mouseKeyDown[1] = true;
            return true;
        case EMIE_LMOUSE_LEFT_UP:
            mouseKeyDown[0] = false;
            return true;
        case EMIE_RMOUSE_LEFT_UP:
            mouseKeyDown[2] = false;
            return true;
        case EMIE_MMOUSE_LEFT_UP:
            mouseKeyDown[1] = false;
            return true;
        case EMIE_MOUSE_MOVED:
            mousePos = cursorControl->getRelativePosition();  // vptr+0x28
            return true;
        case EMIE_MOUSE_WHEEL:
        case 8:
            return false;
        default:
            return true;
    }
}

// 0x6c95cc _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya14isMouseKeyDownEi
bool CSceneNodeAnimatorCameraMaya::isMouseKeyDown(std::int32_t key) {
    return mouseKeyDown[key];
}

// 0x6c95d8 _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya9allKeysUpEv
void CSceneNodeAnimatorCameraMaya::allKeysUp() {
    mouseKeyDown[2] = false;
    mouseKeyDown[0] = false;
    mouseKeyDown[1] = false;
}

// 0x6c960c _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya12getMoveSpeedEv
float CSceneNodeAnimatorCameraMaya::getMoveSpeed() const {
    return translateSpeed;
}

// 0x6c95f4 _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya12setMoveSpeedEf
void CSceneNodeAnimatorCameraMaya::setMoveSpeed(float value) {
    translateSpeed = value;
}

// 0x6c9604 _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya14getRotateSpeedEv
float CSceneNodeAnimatorCameraMaya::getRotateSpeed() const {
    return rotateSpeed;
}

// 0x6c95ec _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya14setRotateSpeedEf
void CSceneNodeAnimatorCameraMaya::setRotateSpeed(float value) {
    rotateSpeed = value;
}

// 0x6c9614 _ZNK6glitch5scene28CSceneNodeAnimatorCameraMaya12getZoomSpeedEv
float CSceneNodeAnimatorCameraMaya::getZoomSpeed() const {
    return zoomSpeed;
}

// 0x6c95fc _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya12setZoomSpeedEf
void CSceneNodeAnimatorCameraMaya::setZoomSpeed(float value) {
    zoomSpeed = value;
}

// 0x6c97f4 _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya20updateAnimationStateEv
// rotX is the angle of (pos - target) in the xz plane; rotY is minus the angle in the xy plane after turning by rotX; currentZoom is the
// distance between pos and target.
void CSceneNodeAnimatorCameraMaya::updateAnimationState() {
    core::vector3d<float> offset;
    offset.X = pos.X - target.X;
    offset.Y = pos.Y - target.Y;
    offset.Z = pos.Z - target.Z;
    core::vector2d<float> plane{offset.X, offset.Z};
    rotX = plane.getAngle();
    const core::vector3d<float> origin{};
    offset.rotateXZBy(rotX, origin);
    plane.X = offset.X;
    plane.Y = offset.Y;
    rotY = -plane.getAngle();
    const float dy = pos.Y - target.Y;
    const float dz = pos.Z - target.Z;
    currentZoom = static_cast<float>(
        std::sqrt(static_cast<double>((((pos.X - target.X) * (pos.X - target.X)) + (dy * dy)) + (dz * dz))));
}

// 0x6ca48c _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya11createCloneEv
ISceneNodeAnimator* CSceneNodeAnimatorCameraMaya::createClone() {
    return new CSceneNodeAnimatorCameraMaya(cursorControl, rotateSpeed, zoomSpeed, translateSpeed);  // operator new(0x80)
}

// 0x6c9934 _ZN6glitch5scene28CSceneNodeAnimatorCameraMaya11animateNodeEPNS0_10ISceneNodeEj
// Zoom: left + right button, or the middle button, scales currentZoom by the horizontal mouse travel. Translate: the right button moves
// the orbit target along the camera's right and up axes. Rotate: the left button turns rotX / rotY. Each gesture keeps its start point
// and is committed (into the stored value) when the button comes up.
void CSceneNodeAnimatorCameraMaya::animateNode(ISceneNode* node, std::uint32_t /*timeMs*/) {
    if (node->getType() != ESNT_CAMERA) {  // vptr+0xbc: 'cam_' (1601003875)
        return;
    }
    ICameraSceneNode* camera = static_cast<ICameraSceneNode*>(node);
    if (oldCamera != node) {
        oldTarget = camera->getTarget();  // vptr+0x108
        oldCamera = node;
    }
    target = camera->getTarget();
    const SViewFrustum* frustum = camera->getViewFrustum();  // vptr+0x144
    float nextRotX = rotX;
    float nextRotY = rotY;
    float nextZoom = currentZoom;

    // ---- zoom
    if ((isMouseKeyDown(0) && isMouseKeyDown(2)) || isMouseKeyDown(1)) {
        if (zooming) {
            nextZoom = ((zoomStart.X - mousePos.X) * zoomSpeed) + currentZoom;
            if (nextZoom >= 0.1f) {
                if (nextZoom < 0.0f) {
                    nextZoom = currentZoom;
                }
            } else {
                nextZoom = 0.1f;
            }
        } else {
            zoomStart = mousePos;
            zooming = true;
            nextZoom = currentZoom;
        }
    } else {
        if (zooming) {
            const float previous = currentZoom;
            currentZoom = previous + ((zoomStart.X - mousePos.X) * zoomSpeed);
            nextZoom = currentZoom;
            if (currentZoom < 0.0f) {
                currentZoom = previous;
                nextZoom = previous;
            }
        }
        zooming = false;
    }

    // ---- translation: the camera's right axis (up x (pos - target)) and the screen's vertical axis
    core::vector3d<float> translate = oldTarget;
    const core::vector3d<float>& up = camera->getUpVector();  // vptr+0x118
    const float toCameraX = pos.X - target.X;
    const float toCameraY = pos.Y - target.Y;
    const float toCameraZ = pos.Z - target.Z;
    core::vector3d<float> axisX;
    axisX.X = (up.Z * (-toCameraY)) + (up.Y * toCameraZ);
    axisX.Y = (up.X * (-toCameraZ)) + (up.Z * toCameraX);
    axisX.Z = (up.Y * (-toCameraX)) + (up.X * toCameraY);
    axisX.normalize();
    const core::plane3d<float>& farPlane = frustum->planes[0];
    const core::plane3d<float>& leftPlane = frustum->planes[2];
    const core::plane3d<float>& rightPlane = frustum->planes[3];
    const core::plane3d<float>& bottomPlane = frustum->planes[4];
    core::vector3d<float> farLeftDown{};
    farPlane.getIntersectionWithPlanes(bottomPlane, leftPlane, farLeftDown);
    core::vector3d<float> farRightDown{};
    farPlane.getIntersectionWithPlanes(bottomPlane, rightPlane, farRightDown);
    const float edgeX = farLeftDown.X - farRightDown.X;
    const float edgeY = farLeftDown.Y - farRightDown.Y;
    const float edgeZ = farLeftDown.Z - farRightDown.Z;
    float depthX;
    float depthY;
    float depthZ;
    if (up.Y <= 0.0f) {
        depthX = target.X - pos.X;
        depthY = target.Y - pos.Y;
        depthZ = target.Z - pos.Z;
    } else {
        depthX = pos.X - target.X;
        depthY = pos.Y - target.Y;
        depthZ = pos.Z - target.Z;
    }
    core::vector3d<float> axisY;
    axisY.X = ((-edgeY) * depthZ) + (depthY * edgeZ);
    axisY.Y = (depthX * (-edgeZ)) + (edgeX * depthZ);
    axisY.Z = (depthY * (-edgeX)) + (depthX * edgeY);
    axisY.normalize();
    if (!isMouseKeyDown(2) || zooming) {
        if (translating) {
            const float dx = translateStart.X - mousePos.X;
            const float dy = translateStart.Y - mousePos.Y;
            const float speed = translateSpeed;
            translate.X = translate.X + ((speed * (dx * axisX.X)) + (speed * (dy * axisY.X)));
            translate.Y = translate.Y + ((speed * (dx * axisX.Y)) + (speed * (dy * axisY.Y)));
            translate.Z = translate.Z + ((speed * (dx * axisX.Z)) + (speed * (dy * axisY.Z)));
            oldTarget = translate;
        }
        translating = false;
    } else if (translating) {
        const float dx = translateStart.X - mousePos.X;
        const float dy = translateStart.Y - mousePos.Y;
        const float speed = translateSpeed;
        translate.X = translate.X + ((speed * (dx * axisX.X)) + (speed * (dy * axisY.X)));
        translate.Y = translate.Y + ((speed * (dx * axisX.Y)) + (speed * (dy * axisY.Y)));
        translate.Z = translate.Z + ((speed * (dx * axisX.Z)) + (speed * (dy * axisY.Z)));
    } else {
        translateStart = mousePos;
        translating = true;
    }

    // ---- rotation
    if (!isMouseKeyDown(0) || zooming) {
        if (rotating) {
            nextRotX = ((rotateStart.X - mousePos.X) * rotateSpeed) + rotX;
            rotX = nextRotX;
            const float speed = rotateSpeed;
            nextRotY = ((rotateStart.Y - mousePos.Y) * speed) + rotY;
            rotY = nextRotY;
        }
        rotating = false;
    } else if (rotating) {
        const float speed = rotateSpeed;
        nextRotX = nextRotX + ((rotateStart.X - mousePos.X) * speed);
        nextRotY = nextRotY + (speed * (rotateStart.Y - mousePos.Y));
    } else {
        rotateStart = mousePos;
        rotating = true;
        nextRotX = rotX;
        nextRotY = rotY;
    }

    // ---- place the camera
    target = translate;
    pos.X = nextZoom + translate.X;
    pos.Y = translate.Y;
    pos.Z = translate.Z;
    pos.rotateXYBy(nextRotY, target);
    pos.rotateXZBy(nextRotX, target);
    core::vector3d<float> upVector{0.0f, 1.0f, 0.0f};
    const core::vector3d<float> origin{};
    upVector.rotateXYBy(-nextRotY, origin);
    upVector.rotateXZBy(nextRotX + 180.0f, origin);
    node->setPosition(pos);               // vptr+0xa4
    camera->setTarget(target);            // vptr+0x104
    camera->setUpVector(upVector);        // vptr+0x114
}

}  // namespace glitch::scene
