// Reconstruction slice 07: kd-tree helpers (the glitch::scene mesh helpers are canonical in scene/mesh_functions.hpp), the animation streaming block and cache, billboard and scene
// node helpers, and the animation track value accessors in glitch::collada.
//
// Free functions live in glitch::collada::recon_07 so they do not collide with
// the owning classes, which are not reconstructed here. Bodies that depend on
// vtable dispatch, the mesh buffer and the streaming cache are partial stubs
// (see ledger notes). Stand-in layouts below only name the fields these bodies
// touch; offsets are the original 32-bit offsets.
#pragma once

#include <cstddef>
#include <cstdint>
#include <utility>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/deps/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/deps/video_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/SAnimatedMesh.hpp"

namespace glitch::core {
template <typename T>
struct vector2d;
template <typename T>
class CMatrix4;
}  // namespace glitch::core

namespace glitch::collada::recon_07 {

// Stand-in for glitch::collada::animation_track::SLightColor (the applicator
// object of CApplicator<SLightColor>). Channels are float at +0x14..+0x20.
struct SLightColorApplicator {
    std::uint8_t pad_0000[0x14] = {};  // +0x00..+0x13 (not mapped)
    float r = 0.0f;                    // +0x14
    float g = 0.0f;                    // +0x18
    float b = 0.0f;                    // +0x1c
    float a = 0.0f;                    // +0x20
};

// Result of the kd-tree bounding box pair used by lessThanPlane and distanceKdTree:
// std::pair<unsigned int, aabbox3d<float>> with the box at +0x04.
using KdEntry = std::pair<std::uint32_t, core::aabbox3d<float>>;

// --- kd-tree helpers ------------------------------------------------------
// 0x5a20d4 Reconstructed.
bool lessThanPlane(const KdEntry& entry, float plane, char axis);
// 0x5a2160 Reconstructed.
float distanceKdTree(const KdEntry& entry, const core::aabbox3d<float>& box);
// 0x5a2268 Reconstructed.
float distanceKdTree(const KdEntry& a, const KdEntry& b);
// 0x5a2370 Reconstructed.
float distanceKdTree(const KdEntry& entry, float plane, char axis);

// --- glitch::collada scene nodes -------------------------------------------
struct CSceneNode;
// 0x60ce44 Partial: base-class destructor chain (multiple inheritance) is not modelled.
void CSceneNode_D1(CSceneNode* self);

// --- glitch::collada::CColladaDatabase constructors (partial) --------------
// 0x60f25c / 0x60f2b0 Partial: CResFileManager::load is not in this category.
void CColladaDatabase_ctor_name(CColladaDatabase* self, const char* name, void* factory);
// 0x60f304 / 0x60f364 Partial: same as the name form, from an IReadFile with the bool flag.
void CColladaDatabase_ctor_file_flag(CColladaDatabase* self, void* file, bool flag, void* factory);
// 0x60f3c4 / 0x60f42c Partial: same as the name form, from an IReadFile without the flag.
void CColladaDatabase_ctor_file(CColladaDatabase* self, void* file, void* factory);

}  // namespace glitch::collada::recon_07
