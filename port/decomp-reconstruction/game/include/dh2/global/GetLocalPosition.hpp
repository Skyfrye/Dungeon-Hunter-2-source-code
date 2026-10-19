// GetLocalPosition(gameswf::character*, float, float) (<global>, batch g1-game-app-global-f216b6-21). Maps a point, scaled by
// 20, from the character's world space into its local space through the inverse of its world matrix. Defined in
// game-app/src/g1-game-app-global-f216b6-21_gameswf.cpp.
#pragma once

// gameswf::point and gameswf::matrix are defined in gameswf.h (vendored gameswf r1714). gameswf_character.h is not
// included here: it pulls in gameswf_object.h, whose gc_ptr<as_object> does not compile while the DH2 ref_counted
// (vendor-gameswf/include/vendor-gameswf/ref_counted.hpp) has no gc_object base. That is a vendor-gameswf problem.
// This header only needs character as a pointer type. The definition in game-app needs the full character type.
#include "gameswf/gameswf.h"  // gameswf::point, gameswf::matrix

namespace gameswf {
struct character;  // defined in gameswf_character.h (struct character : public as_object)
}  // namespace gameswf

gameswf::point GetLocalPosition(gameswf::character* ch, float x, float y);  // 0x7aa2e0
