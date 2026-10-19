// GSEndGame: end-of-game state. Shows the "menu_About" page, then tears down the online session
// and hands over to GSFlashMenu with "menu_MainMenu" as the target.
// Original 32-bit size not recovered (no operator new size in class-facts). Members: vptr +0x00, m_phase +0x04.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x38358c, 0x3835b8).
#pragma once

#include "dh2/StateBase.hpp"

class StateMachine;

class GSEndGame : public StateBase {
public:
    GSEndGame();                                                    // 0x38358c / 0x3835b8
    ~GSEndGame() override;                                          // 0x3835e4, 0x3835e8 (D2/D1), 0x3835fc (D0)

    // Overrides of StateBase slots, in vtable order. Slots +0x10 .. +0x28 (Pause, Resume, Draw2D,
    // Sleep, WakeUp) are inherited unchanged.
    void Ctor(const StateMachine* machine) override;                // slot 0x08: 0x3835ec sets m_phase to 0
    void Dtor(const StateMachine* machine) override;                // slot 0x0c: 0x3835f8 empty
    void Update(StateMachine* machine, double dt) override;         // slot 0x18: 0x383fbc
    void Draw(const StateMachine* machine) override;                // slot 0x1c: 0x383618 MenuManager::Draw(0)

    int m_phase;                                                    // +0x04 step counter: 0 shows menu_About, 1 waits for it to close, 2 switches state

    static GSEndGame s_inst;                                        // GSEndGame::s_inst (ELF 0x9a245c, 8 bytes), the object Script_EndGame switches to
};
