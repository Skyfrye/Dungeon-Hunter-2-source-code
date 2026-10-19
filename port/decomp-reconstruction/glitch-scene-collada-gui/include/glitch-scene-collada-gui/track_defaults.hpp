// Default (empty-bodied) virtual implementations in the glitch::collada
// animation-track interfaces, and a few constant-returning defaults.
// Each is a function template so one definition serves every overload
// signature; the address and symbol in the comment identify the original.
#pragma once

#include <cstddef>

namespace glitch::collada::track_defaults {

// The IAnimationTrackEx defaults and ISceneNodeAnimator::isTrackEnabled are members of the canonical classes
// (collada/IAnimationTrackEx.hpp, collada/ISceneNodeAnimator.hpp).

// CColladaFactory::createMaterialRenderer(...): returns 0 in the original.
// 0x3506a4 _ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPNS0_14CRootSceneNodeE
template <class... A> void* CColladaFactory_createMaterialRenderer_3506a4(A&&...) { return nullptr; }

// The CSceneNodeAnimatorSynchronizedSet overloads are members of the canonical class (collada/CSceneNodeAnimatorSynchronizedSet.hpp).

}  // namespace glitch::collada::track_defaults
