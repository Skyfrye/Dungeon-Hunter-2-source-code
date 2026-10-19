// Forwarding header of the glitch::collada interfaces whose only reconstructed body was an empty base-object destructor. Every class
// that was defined here is now canonical in its own header (see the lines below); the header remains so the sources that include it
// keep one include for them.
#pragma once

#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/layouts/animation_track.hpp"

namespace glitch::collada {

// IEventsManager, CEventsManager, SEventEntry, SEventKeyTable, STriggeredEvent: canonical definitions in collada/CEventsManager.hpp.

// IAnimationTrackEx, CAnimationTrackEx: canonical definitions in collada/IAnimationTrackEx.hpp.
// IColladaSceneNodeSynchronizedAnimatorInterface: canonical definition in collada/ISceneNodeAnimator.hpp.

// CResFileReader and CResFactory: canonical definitions in collada/CColladaDatabase.hpp.

// SAnimationAccessor, animation_track::CApplicatorInfo and animation_track::CMaterialApplicatorInfo are
// declared in layouts/animation_track.hpp. They are included here so one translation unit can hold both this header and the accessor.

}  // namespace glitch::collada
