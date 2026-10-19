// glitch::scene::CCameraSceneNode: the engine camera (the game camera classes wrap one). Canonical header of the engine
// unification wave (u1-scene). It replaces the CCameraSceneNode in scene_nodes.hpp (members and the slot overrides, without
// the ISceneNode vtable), layouts/scene_evidence.hpp (evidence::CCameraSceneNode, a layout struct up to +0x167) and
// recon/slice_31.hpp (recon_31::CCameraSceneNode). The Collada camera is glitch::collada::CCameraSceneNode (derived, uid
// holder at +0x394).
//
// Layout (original 32-bit offsets; constructors 0x583734 / 0x583878, TRACK-B decision 6, class notes in NOTES.md):
//   +0x000 ICameraSceneNode (ISceneNode, the IEventReceiver sub-object at +0x130, the orthogonal byte at +0x134)
//   +0x138 target (3 floats), +0x144 up vector, +0x150 mag, +0x154 fov, +0x158 aspect ratio, +0x15c near, +0x160 far,
//   +0x164 far-to-infinity byte, +0x165 input-receiver byte
//   +0x168 SViewFrustum (0x21c bytes) up to +0x384: the frustum owns the camera's box (+0x1d4), view matrix (+0x1ec),
//          projection matrix (+0x274) and the view-projection matrix (+0x2b8) that recalculateViewArea reads
//   +0x384 glitch::IReferenceCounted virtual base (vbase offset 900); the complete object is 0x38c bytes
// Vtable: ICameraSceneNode's with the camera overrides, plus setMAG (vptr+0x154) and recalculateProjectionMatrix (+0x158).
#pragma once

#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"

namespace glitch::scene {

class CCameraSceneNode : public ICameraSceneNode {
public:
    // 0x583878 (C2, base object) and 0x583734 (C1, complete object; PARTIAL: it also writes the virtual-base words, which the
    // C++ virtual base does implicitly). The ICameraSceneNode base gets (id, position, rotation 0, scale 1).
    CCameraSceneNode(int id, const core::vector3d<float>& position, const core::vector3d<float>& target,
                     bool farToInfinityValue);
    // 0x582254 (D1), 0x35c318 and 0x6e51a0 (D0 of CCameraSceneNode and of the Collada camera): skipped.
    ~CCameraSceneNode() override;

    // K 0x00 / 0x04, 0x582160 and 0x582948. PARTIAL (attribute writers not ported).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // K 0x10, 0x583534: recalculates the matrices when the camera is the scene manager's active one.
    int onRegisterSceneNode() override;
    // K 0x1c, 0x5820e4. PARTIAL: the driver interface is not ported.
    void render(void* renderContext) override;
    // K 0x30, 0x582130: the frustum's box.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // K 0x68, 0x582290. PARTIAL: ISceneNode::remove plus the scene manager's active-camera check.
    void remove() override;
    // K 0xbc, 0x581f34: 'cam_'.
    E_SCENE_NODE_TYPE getType() const override;
    // K 0xf0, 0x582aa0. PARTIAL: reads the driver's render-target size.
    void onChangedSceneManager() override;

    // ICameraSceneNode's slots, in slot order.
    void setProjectionMatrix(const core::CMatrix4<float>& matrix, bool isOrthogonal) override;  // 0xf4, 0x5823ac
    const core::CMatrix4<float>& getProjectionMatrix() const override;                         // 0xf8, 0x581f50
    const core::CMatrix4<float>& getViewMatrix() const override;                               // 0xfc, 0x581f58
    bool onEvent(const glitch::SEvent& event) override;                                        // 0x100, 0x581f68
    void setTarget(const core::vector3d<float>& target) override;                              // 0x104, 0x581fe4
    const core::vector3d<float>& getTarget() const override;                                   // 0x108, 0x582000
    void setUpVector(const core::vector3d<float>& upVector) override;                          // 0x114, 0x582008
    const core::vector3d<float>& getUpVector() const override;                                 // 0x118, 0x582024
    float getNearValue() const override;                                                       // 0x11c, 0x58202c
    float getFarValue() const override;                                                        // 0x120, 0x582034
    float getAspectRatio() const override;                                                     // 0x124, 0x58203c
    float getFOV() const override;                                                             // 0x128, 0x582044
    bool getFarToInifinity() override;                                                         // 0x12c, 0x58204c
    void setNearValue(float value) override;                                                   // 0x130, 0x582054
    void setFarValue(float value) override;                                                    // 0x134, 0x58206c
    void setAspectRatio(float value) override;                                                 // 0x138, 0x582084
    void setFOV(float value) override;                                                         // 0x13c, 0x58209c
    void setFarToInifinity(bool value) override;                                               // 0x140, 0x5820cc
    const SViewFrustum* getViewFrustum() const override;                                       // 0x144, 0x582138
    void setInputReceiverEnabled(bool enabled) override;                                       // 0x148, 0x581f40
    bool isInputReceiverEnabled() const override;                                              // 0x14c, 0x581f48

    // The camera's own slots, after ICameraSceneNode's.
    virtual void setMAG(float value);                  // 0x154, 0x5820b4
    // 0x158, 0x58364c: rebuilds the projection matrix (orthographic from mag, perspective, or perspective with the far plane at
    // infinity) into the frustum and calls setTransformState(2) on it.
    virtual void recalculateProjectionMatrix();

    // Non-virtual helpers (direct calls in the original).
    // 0x583280: builds the look-at view matrix from the absolute position, the target and the up vector (nudging the up vector's x
    // by 0.5 when it is parallel to the view direction), stores it in the frustum, sets transform state 0 and recalculates the view area.
    bool recalculateMatrices();
    // 0x582904: stores the absolute position as the frustum apex and rebuilds the planes from the view-projection matrix.
    bool recalculateViewArea();

    // Members, in offset order.
    core::vector3d<float> target;               // +0x138
    core::vector3d<float> upVector;             // +0x144
    float mag = 0.0f;                           // +0x150 (half the orthographic height; the constructor does not write it)
    float fov = 0.0f;                           // +0x154
    float aspectRatio = 0.0f;                   // +0x158
    float nearValue = 0.0f;                     // +0x15c
    float farValue = 0.0f;                      // +0x160
    bool farToInfinity = false;                 // +0x164
    bool inputReceiverEnabled = false;          // +0x165
    SViewFrustum frustum;                       // +0x168 .. +0x384
};

}  // namespace glitch::scene
