// CameraBase: a camera driven by the game, wrapping a glitch scene node pair. Original size 0xc;
// CameraTarget (0x44) and CameraLevel/CameraOverview derive from it.
// Vtable (28 bytes): +0x00/+0x04 destructors, +0x08 Activated, +0x0c Deactivated, +0x10 Update.
#pragma once

#include "core-platform/deps/game_types.hpp"  // Point2D, Point3D

namespace glitch { namespace scene { class ISceneNode; class ICameraSceneNode; } }

class CameraBase {
public:
    CameraBase();                                      // 0x40e720 / 0x40e750
    virtual ~CameraBase();                             // +0x00 0x40e780 (D1), +0x04 0x40f6f8 (D0), 0x40e814
    virtual void Activated();                          // +0x08 0x40e718 empty; called by SetActive on the new camera
    virtual void Deactivated();                        // +0x0c 0x40e71c empty; called on the previous active camera
    virtual void Update();                             // +0x10 0x40ea50 empty

    void SetActive();                                  // 0x40f45c makes this the active camera and tells the scene manager
    // fov / aspect / nearValue / farValue go to setFOV, setAspectRatio, setNearValue and setFarValue on the camera node
    // (call offsets +0x13c, +0x138, +0x130, +0x134); the up vector is set to +Z (call +0x114).
    void SetData(float fov, float aspect, float nearValue, float farValue, bool unused);  // 0x40e9a8; also sets the up vector to +Z
    Point3D<float> GetCameraLookAtVec() const;             // 0x40e8a8 row 1 of the absolute transform, Vec3f_Origin without a camera node
    Point3D<float> GetCameraUpVec() const;                 // 0x40e928 row 2 of the absolute transform
    // The glitch camera this base wraps (+0x08). Callers outside the camera classes read it directly: the camera
    // block of Application::_Draw (asm 0x32b1ec `LDR R1,[R3,#8]` on the Level's CameraLevel) passes it to
    // CSceneManager::setActiveCamera. Null until Load/SetData has given the camera a node.
    glitch::scene::ICameraSceneNode* GetCameraNode() const { return m_camera; }
    // Screen position (pixels) to the point where the view ray crosses the horizontal plane at height z.
    static bool GetWorldCoord(const Point2D<int>& screen, Point3D<float>& world, float z);    // 0x40f2f0 static: uses no this
    static bool GetWorldCoord(const Point2D<float>& screen, Point3D<float>& world, float z);  // 0x40f394 screen in -1..1; static
    bool GetCenterOffset(Point3D<float>& offset, float z) const;  // 0x40f4dc false without a camera node
    static void GetScreenCoord(const Point3D<float>& world, Point2D<float>& screen);  // 0x40f714 static: uses no this projects with the video driver's view*projection

    static CameraBase* s_activeCamera;                 // reset to null by the destructor of the active camera

public:
    // +0x00 vptr
    glitch::scene::ISceneNode* m_node;                 // +0x04 positioned through slots +0xa0/+0xa4 (Update of CameraTarget); reference counted, dropped in ~CameraBase
    glitch::scene::ICameraSceneNode* m_camera;         // +0x08 the glitch camera; reference counted, dropped in ~CameraBase
};
