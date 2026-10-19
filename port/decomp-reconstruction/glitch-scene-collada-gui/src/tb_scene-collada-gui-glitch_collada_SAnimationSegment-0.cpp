// Track B batch e1-glitch-scene-collada-gui-glitch_collada_SAnimationSegment-0: glitch::collada::SAnimationSegment.
// Declaration is in glitch-scene-collada-gui/collada_database.hpp (SAnimationSegment::getData).

#include "glitch-scene-collada-gui/collada_database.hpp"

namespace glitch::collada {

// 0x60bee4 _ZN6glitch7collada17SAnimationSegment7getDataERNS_3res14onDemandReaderE
// partial: no body. Hex-Rays returns `this` on every path, so the result is a pointer to the
// receiver. The first word of `this` receives either the loaded SAnimationData pointer or the
// address of reader+0x08. The reader state word at +0x08 selects the path:
//   state 0: onDemand<SAnimationData>::get(&out, reader+0x08, a3, a4); the 8-byte records of
//            out->array (array base at +0x0c of the data) get their word at record+8 fixed up
//            (self-relative offset turned into an address), then `this` takes out with a
//            refcount increment, and the temporary's release frees its array when the count was 0.
//   state 1: sets state to 2. If reader+0x0c and reader+0x10 are both 0, the same fixup runs over
//            the record array at reader+0x14 (count word at its base), then reader+0x10 = 1.
//            `this` takes reader+0x08. The release block after that is dead in the original.
//   state >=2: `this` takes reader+0x08 and the state is incremented.
// Missing: the onDemandReader layout (+0x08 state, +0x0c, +0x10, +0x14 pointer), the SAnimationData
// layout (refcount, array pointer +0x0c), the signature of onDemand<SAnimationData>::get, and the
// types of a3 and a4 (passed through unchanged). The declaration carries int for a3 and a4 from
// Hex-Rays.

}  // namespace glitch::collada
