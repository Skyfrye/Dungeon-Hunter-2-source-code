// glitch::ps::IParticleContext<P>: the out-of-line bodies of the canonical particle context (the file
// include/glitch-scene-collada-gui/ps/IParticleSystem.hpp line 2 promises), plus the explicit instantiations of
// its member templates and of the nine model hooks that have bodies.
//
// What the original emits out of line, and what this file therefore instantiates:
//   hashString     0x63b44c (GNPSParticle) / 0x64d0bc (SParticle)   -- a real function in the binary
//   lockAxis       0x630a34 (GNPSParticle) / 0x6309ac (SParticle)   -- inlined at every call site, no symbol here
//   setParameter   0x63ed2c .. 0x63f124 (GNPS), 0x64fcbc .. 0x650574 (SParticle): the instantiations the
//                  original linked out of line. The bodies are the same for every value type.
//   registerParameter  no symbol in the binary: the four "TargetSize"/"SizeVariation"/"SizeScale"/
//                  "SizeScaleOverLife" pairs are emitted inline in GNPSSizeModel::GNPSSizeModel (0x641f70).
//
// The definitions live in the header (they are member templates and one small member function of a template
// class); instantiating them here is what puts the symbols in the library. Only instantiations whose body has
// been checked against a listing are listed -- see the note at the bottom for the ones that are not.
#include "glitch-scene-collada-gui/ps/IParticleSystem.hpp"

#include "glitch-scene-collada-gui/collada/SAnimation.hpp"
#include "glitch-scene-collada-gui/collada/SAnimationAccessor.hpp"

namespace glitch::ps {

// ---- IParticleContext<GNPSParticle> ---------------------------------------------------------------------------------

// 0x63b560 _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEEC2Ev
template IParticleContext<GNPSParticle>::IParticleContext();

// 0x63a1f8 _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEED2Ev (D1 at 0x63a51c is the same body)
template IParticleContext<GNPSParticle>::~IParticleContext();

// 0x63b44c _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE10hashStringEPKc
template std::uint32_t IParticleContext<GNPSParticle>::hashString(const char* text);

// 0x630a34 _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE8lockAxisEjNS_4core8vector3dIfEE
template void IParticleContext<GNPSParticle>::lockAxis(unsigned int index, core::vector3d<float> direction);

// 0x63edd0 _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE12setParameterIiEEvPKcT_
template void IParticleContext<GNPSParticle>::setParameter<int>(const char* name, int value);

// 0x63ee74 ...setParameterINS_4core8vector3dIfEEEEvPKcT_ (the 12-byte value copied as three words)
template void IParticleContext<GNPSParticle>::setParameter<core::vector3d<float>>(const char* name,
                                                                                 core::vector3d<float> value);

// ---- IParticleContext<SParticle> ------------------------------------------------------------------------------------

// 0x64d1d0 _ZN6glitch2ps16IParticleContextINS0_9SParticleEEC2Ev
template IParticleContext<SParticle>::IParticleContext();

// 0x64d298 _ZN6glitch2ps16IParticleContextINS0_9SParticleEED2Ev (D1 at 0x64d5bc is the same body)
template IParticleContext<SParticle>::~IParticleContext();

// 0x64d0bc _ZN6glitch2ps16IParticleContextINS0_9SParticleEE10hashStringEPKc
template std::uint32_t IParticleContext<SParticle>::hashString(const char* text);

// 0x6309ac _ZN6glitch2ps16IParticleContextINS0_9SParticleEE8lockAxisEjNS_4core8vector3dIfEE
template void IParticleContext<SParticle>::lockAxis(unsigned int index, core::vector3d<float> direction);

// 0x64fcbc ...setParameterIPNS_7collada10SAnimationEEEvPKcT_ (a bare pointer word)
template void IParticleContext<SParticle>::setParameter<collada::SAnimation*>(const char* name,
                                                                              collada::SAnimation* value);

// 0x6501d4 ...setParameterIiEEvPKcT_
template void IParticleContext<SParticle>::setParameter<int>(const char* name, int value);

// 0x650278 ...setParameterINS_3res9SFixedVecIfLj3EEEEEvPKcT_ (the 12-byte value passed in three registers and
// stored as three words; the same three-word store as the vector3d instance)
template void IParticleContext<SParticle>::setParameter<res::SFixedVec<float, 3>>(const char* name,
                                                                                 res::SFixedVec<float, 3> value);

// 0x650340 ...setParameterINS_4core8vector3dIfEEEEvPKcT_
template void IParticleContext<SParticle>::setParameter<core::vector3d<float>>(const char* name,
                                                                              core::vector3d<float> value);

// 0x650400 ...setParameterIfEEvPKcT_
template void IParticleContext<SParticle>::setParameter<float>(const char* name, float value);

// Not instantiated here, with the reason:
//   0x63efd8 setParameter<unsigned char> (GNPS) and 0x63efdc..0x63f124: the same map-lookup body with a
//     one-byte store; queued as separate rows and left for the batch that checks each one.
//   0x6504a4 setParameter<boost::intrusive_ptr<IBuffer>> (.clone.7): the listing at that address is the
//     reference-counting overload `intrusive_ptr& operator=(const intrusive_ptr&)` inside the setter
//     (`if (src) ++src->count; old = slot; slot = src; if (old) IReferenceCounted::drop(old);`), not the
//     `(char const*, intrusive_ptr)` form it is queued under, so its symbol cannot be reproduced by
//     instantiating this template. Worth a decision (see the report).
//   0x650574 setParameter<scene::CMeshBuffer*> (.clone.8): same shape as the SAnimation* instance, but it is a
//     `.clone` symbol, so an instantiation would produce the plain-name symbol instead.
//   0x63ed2c setParameter<SAnimation*> (GNPS): the SParticle twin is instantiated above; this one is not, so
//     that the SParticle instantiations the SParticle slice rows name are all in one place. Both are the same
//     body and adding it is a one-line change once the GNPS rows are taken.
//   IParticleSystem<P>::init / update / bindForce and every model body: the model bodies are not written, so the
//     dispatch those three call into does not exist yet. See the ledger rows.

}  // namespace glitch::ps
