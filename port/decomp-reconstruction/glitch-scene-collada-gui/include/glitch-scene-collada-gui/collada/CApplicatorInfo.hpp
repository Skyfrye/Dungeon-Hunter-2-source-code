// glitch::collada::animation_track::CApplicatorInfo and CMaterialApplicatorInfo: the per-target record that tells an animation
// track how to apply a value (which material parameter to write). Canonical header of the engine unification wave (u1-scene).
// It replaces the two layout structs in layouts/animation_track.hpp (a guest vtable word and plain members) and the forward
// declarations scattered over the animation_track headers.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py ...::CApplicatorInfo and ...::CMaterialApplicatorInfo,
// 20 bytes each, no virtual base):
//   CApplicatorInfo is abstract: +0x00 / +0x04 destructors (D1 0x667c34 empty; D0 0x667cf0 frees the object with LC_API_FREE) and
//   +0x08 clone (pure). CMaterialApplicatorInfo overrides the destructors (D1 0x667ccc empty, D0 0x667d04) and clone (0x667ed0:
//   operator new(0xc), the vtable, then the words at +0x04 and +0x08 copied). The object is three words:
//     +0x00 vptr, +0x04 a word (type not confirmed), +0x08 a word whose low 16 bits are the material parameter id (the
//     CTextureTransformEx / CVector3dEx / CVisibilityEx applicators read it as a uint16 at +0x08, e.g. 0x6e38c4).
//   CSceneNodeAnimator::setTarget (0x65d408) calls clone (vptr+0x08) on the applicator it is given and releases the old one
//   through the destructor slot (vptr+0x04).
// Port notes: the two words are kept in the base because the only subclass adds nothing and every reader sees them through a
// CApplicatorInfo pointer; the id and the two unread bytes are named separately.
#pragma once

#include <cstdint>

namespace glitch::collada::animation_track {

class CApplicatorInfo {
public:
    CApplicatorInfo() = default;
    CApplicatorInfo(const CApplicatorInfo&) = default;
    // vptr+0x00 / +0x04: 0x667c34 (D1, empty); 0x667cf0 (D0, frees the object) is the compiler's deleting destructor.
    virtual ~CApplicatorInfo();
    // vptr+0x08: a copy of the applicator on the heap (pure here).
    virtual CApplicatorInfo* clone() const = 0;

    std::uint32_t word_0x04 = 0;     // +0x04 type not confirmed; copied by clone
    std::uint16_t parameterId = 0;   // +0x08 the material parameter id (read as a uint16 by the applyValueEx bodies)
    std::uint16_t pad_0x0a = 0;      // +0x0a not read by the pseudocode; copied by clone with the id
};

class CMaterialApplicatorInfo : public CApplicatorInfo {
public:
    CMaterialApplicatorInfo() = default;
    CMaterialApplicatorInfo(const CMaterialApplicatorInfo&) = default;
    // vptr+0x00 / +0x04: 0x667ccc (D1, empty), 0x667d04 (D0).
    ~CMaterialApplicatorInfo() override;
    // vptr+0x08, 0x667ed0: a new CMaterialApplicatorInfo with the words at +0x04 and +0x08 copied.
    CApplicatorInfo* clone() const override;
};

}  // namespace glitch::collada::animation_track
