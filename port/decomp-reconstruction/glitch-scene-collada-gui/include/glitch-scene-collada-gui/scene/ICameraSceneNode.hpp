// glitch::scene::ICameraSceneNode: the camera interface. Canonical header of the engine unification wave (u1-scene).
// It replaces the ICameraSceneNode in scene_nodes.hpp, which derived from a non-polymorphic ISceneNode and named the
// IEventReceiver slot forwardEvent; the camera layout notes of Track B decision 6 are kept here.
//
// Layout (original 32-bit offsets; constructor 0x582b18, vtable tools/decomp_vtable.py glitch::scene::ICameraSceneNode):
//   +0x000 ISceneNode (0x130 bytes)
//   +0x130 the glitch::IEventReceiver sub-object (its vptr; the vtable's secondary table, offset-to-top -0x130, holds the
//          destructor thunks and a non-virtual thunk to the primary onEvent)
//   +0x134 byte: orthogonal flag (the constructor clears it; setProjectionMatrix stores its second argument)
//   +0x138 glitch::IReferenceCounted virtual base (vbase offset 0x138 in this class; CCameraSceneNode places it at +0x384)
// The 25 camera slots follow ISceneNode's 61 (vptr+0xf4 .. +0x150); CCameraSceneNode appends setMAG (+0x154) and
// recalculateProjectionMatrix (+0x158). A Hex-Rays call offset is the decomp_vtable.py listing offset minus 0x0c, so the
// listing shows setProjectionMatrix at +0x100 and CCameraSceneNode::recalculateProjectionMatrix at +0x164.
#pragma once

#include "glitch-core-io/os/event_receiver.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"

namespace glitch::scene {

class ICameraSceneNode : public ISceneNode, public glitch::IEventReceiver {
public:
    // 0x582b18 (C2, base object; C1 is a second listing): builds the rotation quaternion from the three angles
    // (quaternion::set), forwards id, position, rotation and scale to the ISceneNode constructor, clears `orthogonal`.
    ICameraSceneNode(int id, const core::vector3d<float>& position, const core::vector3d<float>& rotation,
                     const core::vector3d<float>& scale);
    // 0x35c3c4 (D1) and 0x35dba8 (D0): skipped, compiler-generated.
    ~ICameraSceneNode() override;

    // vptr+0xf4 .. +0x150, in slot order. All pure but the two getTargetNode overloads and isOrthogonal.
    virtual void setProjectionMatrix(const core::CMatrix4<float>& projection, bool isOrthogonal) = 0;  // +0xf4
    virtual const core::CMatrix4<float>& getProjectionMatrix() const = 0;                              // +0xf8
    virtual const core::CMatrix4<float>& getViewMatrix() const = 0;                                    // +0xfc
    // +0x100: re-declares IEventReceiver::onEvent as pure so it takes a primary slot; the secondary vtable thunks to it.
    bool onEvent(const glitch::SEvent& event) override = 0;
    virtual void setTarget(const core::vector3d<float>& target) = 0;                                   // +0x104
    virtual const core::vector3d<float>& getTarget() const = 0;                                        // +0x108
    // +0x10c, 0x35beb0 and +0x110, 0x35beb8: both return null.
    virtual ISceneNode* getTargetNode() const;
    virtual ISceneNode* getTargetNode();
    virtual void setUpVector(const core::vector3d<float>& upVector) = 0;                               // +0x114
    virtual const core::vector3d<float>& getUpVector() const = 0;                                      // +0x118
    virtual float getNearValue() const = 0;                                                            // +0x11c
    virtual float getFarValue() const = 0;                                                             // +0x120
    virtual float getAspectRatio() const = 0;                                                          // +0x124
    virtual float getFOV() const = 0;                                                                  // +0x128
    virtual bool getFarToInifinity() = 0;                                                              // +0x12c (non-const in the symbol)
    virtual void setNearValue(float value) = 0;                                                        // +0x130
    virtual void setFarValue(float value) = 0;                                                         // +0x134
    virtual void setAspectRatio(float value) = 0;                                                      // +0x138
    virtual void setFOV(float value) = 0;                                                              // +0x13c
    virtual void setFarToInifinity(bool value) = 0;                                                    // +0x140
    virtual const SViewFrustum* getViewFrustum() const = 0;                                            // +0x144
    virtual void setInputReceiverEnabled(bool enabled) = 0;                                            // +0x148
    virtual bool isInputReceiverEnabled() const = 0;                                                   // +0x14c
    // +0x150, 0x35bec0: returns the flag byte at +0x134.
    virtual bool isOrthogonal() const;

    bool orthogonal = false;  // +0x134
};

}  // namespace glitch::scene
