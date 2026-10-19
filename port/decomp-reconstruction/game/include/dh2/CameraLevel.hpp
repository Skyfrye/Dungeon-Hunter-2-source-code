// CameraLevel: the gameplay camera. A CameraTarget that follows the level's target object, owns the camera rig
// visual (loaded from a CamAnimSet row), plays camera clips and applies the zoom and pan state of ZoomHandler.
// Original 32-bit size 0xa8 (168). Vtable (28 bytes): CameraBase slots, +0x10 Update overridden.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x41002c, Update 0x410390, Load 0x41068c).
#pragma once

#include <cstdint>
#include <string>

#include "core-platform/deps/game_types.hpp"  // Point3D
#include "dh2/CameraTarget.hpp"

class VisualObject;
class Character;
namespace glitch {
namespace scene {
class ISceneNode;
class ITimelineController;
}  // namespace scene
}  // namespace glitch

class CameraLevel : public CameraTarget {
public:
    CameraLevel();                                                      // 0x40ff70 / 0x41002c
    ~CameraLevel() override;                                            // 0x40fe7c (D1), 0x40fee8 (D0), 0x40ff04 (D2)

    // ---- virtual, vtable slot order ----
    // +0x00/+0x04: the destructors above; +0x08 Activated and +0x0c Deactivated: CameraBase versions
    void Update() override;                                             // +0x10 0x410390

    // ---- non-virtual ----
    // Starts clip clipId on the rig visual. controllerArg is stored at the anim controller's +0x0c (meaning not
    // recovered). preserveZoom (a4) keeps the zoom state; when clear, the zoom is reset to current 0 and target 1.
    bool PlayAnim(int clipId, int controllerArg, bool preserveZoom);    // 0x40f904
    bool CanPlayShakeAnim(Character* requester) const;                  // 0x40f980 true for non-players and single-player games
    // Adds the multiplayer centering delta to position (the Hex-Rays signature also returns the z component).
    void HandleCentering(Point3D<float>& position);                     // 0x40fa68
    float CalculateDefaultTargetDistance();                             // 0x40fd18 stores and returns m_defaultTargetDistance
    void HandleZoom();                                                  // 0x410218 clamps m_zoomCurrent and m_zoomTarget, sets m_zoomEffective
    // Loads the camera visual dae, the camera node named cameraNode and the CamAnimSet row camTableIndex.
    void Load(const char* dae, int camTableIndex, const char* cameraNode);  // 0x41068c

    // Timeline callback of the rig visual: the playing clip is finished.
    static void __Callback(glitch::scene::ITimelineController* controller, void* user);  // 0x40f8f8

    // CameraTarget occupies +0x00 .. +0x43.
    VisualObject* m_visual;                                             // +0x44 rig visual created by Load (172-byte object), deleted in the destructor
    glitch::scene::ISceneNode* m_upVector;                              // +0x48 node "upvector" under the camera node (Load)
    std::string m_dae;                                                  // +0x4c Load's dae name, 24 bytes in the original
    std::string m_cameraNodeName;                                       // +0x64 Load's cameraNode name, the node that holds the camera
    int m_animSetId;                                                    // +0x7c AnimSetManager handle from Load, -1 until then
    int m_camTableIndex;                                                // +0x80 row of Arrays::CamAnimSetTable passed to Load
    bool m_zoomAnimActive;                                              // +0x84 set by a successful PlayAnim, cleared by __Callback
    bool m_useObjectPosition;                                           // +0x85 target the object's position (GameObject +0x160) instead of its camera anchor; the map camera sets it
                                                                        //       (the offset is then rotated 45 degrees)
                                                                        //       also the map-mode flag of v2Controllable::Ctrl_Zoom (0x404e98: step -0.25 when set,
                                                                        //       -0.03 when clear) and of Ctrl_TranslateMapCam (0x404fec: pans only when set)
    bool m_zoomLocked;                                                  // +0x86 HandleZoom skips the clamp while set (NativeSetLockZoom); Ctrl_Zoom and
                                                                        //       Ctrl_TranslateMapCam also return at once while it is set
    uint8_t pad_87[1];                                                  // +0x87
    float m_zoomCurrent;                                                // +0x88 zoom request, 0 initially; clamped to the design range by HandleZoom (ZoomHandler +136)
    float m_zoomTarget;                                                 // +0x8c zoom ceiling, 1 initially; reset to 1 by PlayAnim (ZoomHandler +140)
    float m_zoomEffective;                                              // +0x90 min(m_zoomCurrent, m_zoomTarget); Update moves the view by -m_zoomEffective * m_defaultTargetDistance
    float m_defaultTargetDistance;                                      // +0x94 distance from the camera node to the target camera node, set by CalculateDefaultTargetDistance
    Point3D<float> m_panOffset;                                         // +0x98 ZoomHandler pan (+152/+156/+160), added to the target position every update
    bool m_preserveZoom;                                                // +0xa4 PlayAnim's a4 for the clip being played; with m_zoomAnimActive set and this clear, Update decays m_zoomEffective instead of calling HandleZoom
    uint8_t pad_a5[3];                                                  // +0xa5
};
