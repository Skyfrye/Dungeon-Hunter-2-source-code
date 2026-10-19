// GS_InterruptLoading: the splash-screen state pushed while the game loads. It shows a splash texture chosen by
// screen width and the language, plays a progress bar, and pops itself when the loading state below is done.
// It is also an IEventReceiver, but onEvent consumes nothing.
// Two vptrs: IEventReceiver at +0x00 (primary, with the final overriders), StateBase at +0x04 (secondary,
// thunks at vtable +0x24). The class has no instance data: the state lives in globals (firstframe, InterLoad,
// accumulatedTime, currentProgress, m_loadBackground). The original 32-bit size was not recovered; the two
// vptrs need 8 bytes.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x417720 / 0x417768, dtor 0x417800 / 0x4177b8 / 0x417850).
#pragma once

#include "dh2/IEventReceiver.hpp"
#include "dh2/StateBase.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"

class StateMachine;

namespace glitch {
namespace video {
class ITexture;
}  // namespace video
}  // namespace glitch

class GS_InterruptLoading : public IEventReceiver, public StateBase {
public:
    GS_InterruptLoading();                                              // 0x417768 (C2), 0x417720 (C1)
    ~GS_InterruptLoading() override;                                    // 0x417800 (D2), 0x4177b8 (D1), 0x417850 (D0)

    // Overrides in vtable order (primary vtable first, then the StateBase slots of the secondary table).
    bool onEvent(const IEvent* event, const EventManager* manager) override;  // slot 0x08: 0x417424, always false
    void Ctor(const StateMachine* machine) override;                    // slot 0x0c: 0x4176d4, resets firstframe, sets InterLoad
    void Dtor(const StateMachine* machine) override;                    // slot 0x10: 0x417fe8
    void Update(StateMachine* machine, double dt) override;             // slot 0x14: 0x4179c8, texture load, then the progress wait
    void Draw(const StateMachine* machine) override;                    // slot 0x18: 0x417454, draws the splash and the progress bar
};

// Globals of this class, defined in game-app/src/g1-game-app-GS_InterruptLoading-ae96f8-0.cpp (ELF symbols).
// InterLoad is 1 byte in the original: set by the constructor, cleared by the destructor. Application::_Draw (0x32ade8)
// tests it and calls StateMachine::Draw while it is set. m_loadBackground is the splash texture;
// the original's static initializer makes it a global intrusive_ptr with an atexit destructor, as declared here.
extern bool InterLoad;
extern boost::intrusive_ptr<glitch::video::ITexture> m_loadBackground;
