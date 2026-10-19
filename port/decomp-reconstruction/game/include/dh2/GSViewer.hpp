// GSViewer: the model viewer game state. Owns its own camera, an empty target node placed at the target's
// absolute position, and a light, and makes the camera the active one of the scene manager while it runs.
// Original 32-bit size 0x10 (16) inferred from the last member (+0x0c); no operator new site was recovered.
// The StateBase part is only its vptr, so the members start at +0x04.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x387158, Ctor 0x3872f8, Dtor 0x3871c8).
#pragma once

#include "dh2/StateBase.hpp"  // StateBase (vptr only, 0x4 bytes)

namespace glitch {
namespace scene {
class CCameraSceneNode;
class CEmptySceneNode;
class CLightSceneNode;
}  // namespace scene
}  // namespace glitch

class StateMachine;

class GSViewer : public StateBase {
public:
    GSViewer();                                                         // 0x38718c (C1), 0x387158 (C2)
    ~GSViewer() override;                                               // 0x3871c4 (D1), 0x3871c0 (D2), 0x3875a4 (D0)

    // Overrides of StateBase slots, in vtable order. Pause, Resume, Draw2D, Sleep and WakeUp are inherited.
    void Ctor(const StateMachine* machine) override;                    // slot 0x08: 0x3872f8, builds the nodes and makes the camera active
    void Dtor(const StateMachine* machine) override;                    // slot 0x0c: 0x3871c8, drops the nodes
    void Update(StateMachine* machine, double dt) override;             // slot 0x18: 0x387270, forwards to the scene's update
    void Draw(const StateMachine* machine) override;                    // slot 0x1c: 0x3872bc, forwards to the scene's draw

    // +0x00 vptr (StateBase)
    glitch::scene::CCameraSceneNode* m_camera;                          // +0x04 created in the ctor, reference counted, set active in Ctor
    glitch::scene::CEmptySceneNode* m_target;                           // +0x08 target node; the camera looks at its absolute position
    glitch::scene::CLightSceneNode* m_light;                            // +0x0c ambient light set to white in Ctor
};
