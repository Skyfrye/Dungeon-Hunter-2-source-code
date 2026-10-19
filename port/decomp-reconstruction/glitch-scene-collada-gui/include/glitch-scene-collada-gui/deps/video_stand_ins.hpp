// Forward declarations of glitch::video, glitch::res and boost types that the
// collada database and factory pass by pointer or reference. Only pointers and
// references are used by this category, so no layout is given here; the owning
// subsystems (video driver, materials, res::vector) are not reconstructed in
// this category yet.
#pragma once

#include "glitch-scene-collada-gui/deps/intrusive_ptr.hpp"

namespace glitch::video {
class IVideoDriver;
class CMaterial;
class CMaterialRenderer;
}  // namespace glitch::video

namespace glitch::res {
class String;
template <typename T>
class vector;
}  // namespace glitch::res
