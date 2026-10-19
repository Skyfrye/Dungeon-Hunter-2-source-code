// GameObject, part 8 of 8 (batch g1-game-world-GameObject-5d2019-7).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. Offsets in comments are the
// original 32-bit ones.

#include "dh2/GameObject.hpp"

// 0x394eb0 GameObject::LoadVisualObject()
//
// Assembly: LDR R2,[R0,#0x2BC]; LDR R1,[R0,#0x2A4]; MOV R3,#1; B GameObject::SetVisualObject(char const*,char const*,bool).
// The two loaded words are the character data pointers of the names held in the object: +0x2A4 is inside m_dae
// (std::string at +0x290, data pointer at string +0x14) and +0x2BC is inside m_xrefObject (std::string at +0x2A8,
// data pointer at string +0x14). The call passes force = true.
//
// The arguments alias m_dae and m_xrefObject, which SetVisualObject assigns back into. The callee has to tolerate
// that self-assignment, as the original does.
//
// The original is a tail call that returns SetVisualObject's int in r0. The owner header declares both overloads void,
// and the only caller (GameObject::InitPost, 0x38be5c) ignores the value, so the body returns nothing.
void GameObject::LoadVisualObject() {
    SetVisualObject(m_dae.c_str(), m_xrefObject.c_str(), true);
}
