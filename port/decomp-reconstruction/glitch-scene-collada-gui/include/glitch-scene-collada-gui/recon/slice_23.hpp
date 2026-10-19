// Slice 23 reconstruction: SAnimationAccessor, the COLLADA skin techniques
// (matrix, quaternion, texture, software) and the glitch::ps shape domains.
// Free functions only. Nothing here edits an existing header. Types whose layout is
// not in a layout header are forward declared as stand-ins in this namespace and are
// never dereferenced. Each function keeps the pseudocode signature shape.
#pragma once

#include <cmath>
#include <cstdint>

#include "glitch-scene-collada-gui/layouts/animation_track.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/ps_types.hpp"

namespace glitch::collada::recon_23 {

// Stand-ins for types without a layout in any layout header. Incomplete on purpose.
struct SkinStandIn;
struct SkinBufferStandIn;
struct SkinCacheStandIn;
struct MeshBufferStandIn;
struct VideoDriverStandIn;
struct STechniqueStandIn;
template <typename T>
struct ResVectorStandIn;

// glitch::collada::SAnimationAccessor: canonical class in collada/SAnimationAccessor.hpp (src/collada/SAnimationAccessor.cpp).

// ---------------------------------------------------------------------------
// glitch::collada::detail skin techniques. Each family keeps its own opaque
// technique stand-in. Constructors C1 and C2 share one body.
// ---------------------------------------------------------------------------
namespace matrix_skin {
struct Technique;
void construct(Technique& self, SkinStandIn& skin, SkinCacheStandIn& cache, bool flag);
void destroy(Technique& self);  // D1
bool checkAvailabilityStatic(const STechniqueStandIn& technique);
bool checkAvailability(const Technique& self, const STechniqueStandIn& technique);
void skin(Technique& self, SkinBufferStandIn& buffer, MeshBufferStandIn* mesh);
void preparePtrCache(Technique& self);
int init(Technique& self, SkinBufferStandIn& buffer, MeshBufferStandIn* mesh,
         VideoDriverStandIn* driver, bool flag);
void prepareCache(Technique& self);
}  // namespace matrix_skin

namespace quat_skin {
struct Technique;
void construct(Technique& self, SkinStandIn& skin, SkinCacheStandIn& cache, bool flag);
void destroy(Technique& self);  // D1
bool checkAvailabilityStatic(const STechniqueStandIn& technique);
bool checkAvailability(const Technique& self, const STechniqueStandIn& technique);
void skin(Technique& self, SkinBufferStandIn& buffer, MeshBufferStandIn* mesh);
void preparePtrCache(Technique& self);
int init(Technique& self, SkinBufferStandIn& buffer, MeshBufferStandIn* mesh,
         VideoDriverStandIn* driver, bool flag);
void prepareCache(Technique& self);
}  // namespace quat_skin

namespace texture_skin {
struct Technique;
void construct(Technique& self, SkinStandIn& skin, SkinCacheStandIn& cache, bool flag);
void destroy(Technique& self);  // D1
bool checkAvailabilityStatic(const STechniqueStandIn& technique);
bool checkAvailability(const Technique& self, const STechniqueStandIn& technique);
void skin(Technique& self, SkinBufferStandIn& buffer, MeshBufferStandIn* mesh);
void preparePtrCache(Technique& self);
int init(Technique& self, SkinBufferStandIn& buffer, MeshBufferStandIn* mesh,
         VideoDriverStandIn* driver, bool flag);
void prepareCache(Technique& self);
}  // namespace texture_skin

namespace software_skin {
struct Technique;
void construct(Technique& self, SkinStandIn& skin, SkinCacheStandIn& cache, bool flag);
void destroy(Technique& self);  // D1
}  // namespace software_skin

// glitch::collada::detail::IColladaSkinTechnique base destructor (D1 and D2 share a body).
namespace skin_technique {
struct Interface;
void destroyBase(Interface& self);
}  // namespace skin_technique

// The glitch::ps shape domains and PSRandom are the canonical classes of ps/PDomain.hpp.

// glitch::gui::ICursorControl: the canonical class in gui/ICursorControl.hpp.

}  // namespace glitch::collada::recon_23
