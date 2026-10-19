// Bodies of glitch::collada::animation_track::CApplicatorInfo and CMaterialApplicatorInfo (canonical classes:
// collada/CApplicatorInfo.hpp). These replace the layout structs of layouts/animation_track.hpp and the stand-in bodies of
// src/recon/slice_22.cpp (CMaterialApplicatorInfo::clone, the destructors).
#include "glitch-scene-collada-gui/collada/CApplicatorInfo.hpp"

namespace glitch::collada::animation_track {

// 0x667c34 _ZN6glitch7collada15animation_track15CApplicatorInfoD1Ev (empty); D0 0x667cf0 frees the object (the deleting destructor)
CApplicatorInfo::~CApplicatorInfo() = default;

// 0x667ccc _ZN6glitch7collada15animation_track23CMaterialApplicatorInfoD1Ev (empty); D0 0x667d04
CMaterialApplicatorInfo::~CMaterialApplicatorInfo() = default;

// 0x667ed0 _ZNK6glitch7collada15animation_track23CMaterialApplicatorInfo5cloneEv
// operator new(0xc), the vtable, then the words at +0x04 and +0x08 copied.
CApplicatorInfo* CMaterialApplicatorInfo::clone() const {
    auto* copy = new CMaterialApplicatorInfo();
    copy->word_0x04 = word_0x04;
    copy->parameterId = parameterId;
    copy->pad_0x0a = pad_0x0a;
    return copy;
}

}  // namespace glitch::collada::animation_track
