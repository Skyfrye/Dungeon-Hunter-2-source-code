// GSInit: boot state. Runs the loading sequence one step per Update (sound, settings, PyData, intro
// movie, splash background, strings, trophies, menus, random seed, native DRM check). Draws the splash
// texture and a spinner while loading. Static instance: GSInit::s_inst.
// Original 32-bit size not recovered (no operator new size in class-facts); members end at +0x14.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3847fc, 0x384834).
#pragma once

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "dh2/StateBase.hpp"

class StateMachine;

namespace glitch {
namespace video {
class ITexture;
}  // namespace video
}  // namespace glitch

class GSInit : public StateBase {
public:
    GSInit();                                                       // 0x3847fc / 0x384834
    ~GSInit() override;                                             // 0x384db8, 0x384e58 (D2/D1), 0x384e98 (D0)

    // Overrides of StateBase slots, in vtable order. Slots +0x10 .. +0x28 (Pause, Resume, Draw2D,
    // Sleep, WakeUp) are inherited unchanged.
    void Ctor(const StateMachine* machine) override;                // slot 0x08: 0x384e30 resets the step state
    void Dtor(const StateMachine* machine) override;                // slot 0x0c: 0x38486c empty
    void Update(StateMachine* machine, double dt) override;         // slot 0x18: 0x3850c8
    void Draw(const StateMachine* machine) override;                // slot 0x1c: 0x384a4c

    void ClearLoadingScreen();                                      // 0x384ef0 removes and releases the splash texture
    void SwitchBackground();                                        // 0x384f64 loads the splash texture for the language

    static GSInit s_inst;                                           // GSInit::s_inst

    // StateBase occupies +0x00 .. +0x03 (vptr).
    int m_step;                                                     // +0x04 loading step; Update advances it once per call
    int unk_08;                                                     // +0x08 -1 while the spinner runs; the ctor and ClearLoadingScreen set -1
    int unk_0c;                                                     // +0x0c never accessed (the constructor does not store it)
    boost::intrusive_ptr<glitch::video::ITexture> m_splashTexture;  // +0x10 splash background; drawn only while set
};
