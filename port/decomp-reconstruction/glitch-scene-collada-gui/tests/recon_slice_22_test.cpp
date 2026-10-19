// Slice 22 test: the material applicator clone (now the canonical member, collada/CApplicatorInfo.hpp) copies the words it owns.
#include "glitch-scene-collada-gui/collada/CApplicatorInfo.hpp"
#include "glitch-scene-collada-gui/recon/slice_22.hpp"

int main() {
    using glitch::collada::animation_track::CApplicatorInfo;
    using glitch::collada::animation_track::CMaterialApplicatorInfo;
    CMaterialApplicatorInfo source;
    source.word_0x04 = 7;
    source.parameterId = 9;
    source.pad_0x0a = 3;

    const CApplicatorInfo* base = &source;
    CApplicatorInfo* copy = base->clone();  // the virtual slot (+0x08)
    int failures = 0;
    if (copy == nullptr || copy == base || copy->word_0x04 != 7 || copy->parameterId != 9 || copy->pad_0x0a != 3) {
        failures++;
    }
    if (dynamic_cast<CMaterialApplicatorInfo*>(copy) == nullptr) {
        failures++;
    }
    delete copy;  // through the virtual destructor (+0x04)
    return failures == 0 ? 0 : 1;
}
