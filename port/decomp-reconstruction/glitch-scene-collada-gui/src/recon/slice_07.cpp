#include "glitch-scene-collada-gui/recon/slice_07.hpp"

#include "glitch-video/material.hpp"

#include <cmath>
#include <cstring>

namespace glitch::collada::recon_07 {

namespace {

float squaredDistance(const core::vector3d<float>& a, const core::vector3d<float>& b) {
    const float dx = a.X - b.X;
    const float dy = a.Y - b.Y;
    const float dz = a.Z - b.Z;
    return dx * dx + dy * dy + dz * dz;
}

// Centre of the kd-tree box (min + max) / 2 per axis; the box is at +0x04 of the pair.
core::vector3d<float> kdCentre(const KdEntry& entry) {
    const core::aabbox3d<float>& box = entry.second;
    return core::vector3d<float>{(box.MinEdge.X + box.MaxEdge.X) * 0.5f,
                                 (box.MinEdge.Y + box.MaxEdge.Y) * 0.5f,
                                 (box.MinEdge.Z + box.MaxEdge.Z) * 0.5f};
}

float axisComponent(const core::vector3d<float>& v, char axis) {
    switch (axis) {
        case 0:
            return v.X;
        case 1:
            return v.Y;
        default:
            return v.Z;
    }
}

}  // namespace

// 0x5a20d4 _ZN6glitch13lessThanPlaneERKSt4pairIjNS_4core8aabbox3dIfEEEfc
bool lessThanPlane(const KdEntry& entry, float plane, char axis) {
    return axisComponent(kdCentre(entry), axis) < plane;
}

// 0x5a2160 _ZN6glitch13distanceKdTreeERKSt4pairIjNS_4core8aabbox3dIfEEEERKS5_
float distanceKdTree(const KdEntry& entry, const core::aabbox3d<float>& box) {
    const core::vector3d<float> other{(box.MinEdge.X + box.MaxEdge.X) * 0.5f,
                                      (box.MinEdge.Y + box.MaxEdge.Y) * 0.5f,
                                      (box.MinEdge.Z + box.MaxEdge.Z) * 0.5f};
    return squaredDistance(kdCentre(entry), other);
}

// 0x5a2268 _ZN6glitch13distanceKdTreeERKSt4pairIjNS_4core8aabbox3dIfEEEES7_
float distanceKdTree(const KdEntry& a, const KdEntry& b) {
    return squaredDistance(kdCentre(a), kdCentre(b));
}

// 0x5a2370 _ZN6glitch13distanceKdTreeERKSt4pairIjNS_4core8aabbox3dIfEEEEfc
float distanceKdTree(const KdEntry& entry, float plane, char axis) {
    const float d = axisComponent(kdCentre(entry), axis) - plane;
    return d * d;
}

// SAnimatedMesh (0x59a000 .. 0x59ae64) and createAnimatedMesh (0x59ae1c): canonical in src/scene/SAnimatedMesh.cpp.

// The COnDemandReader, CAnimationBlock and CAnimationStreamingManager stand-ins are retired: the classes are in src/collada/.



// 0x60ce44 _ZN6glitch7collada10CSceneNodeD2Ev
// Partial: the two base-class vtable resets and the ISceneNode destructor call are not modelled.
void CSceneNode_D1(CSceneNode* /*self*/) {}



// 0x60f25c / 0x60f2b0 _ZN6glitch7collada16CColladaDatabaseC2EPKcPNS0_15CColladaFactoryE
// Partial: CResFileManager::load is not in this category; the factory store and ref count are modelled as comments.
void CColladaDatabase_ctor_name(CColladaDatabase* /*self*/, const char* /*name*/, void* /*factory*/) {}

// 0x60f304 / 0x60f364 _ZN6glitch7collada16CColladaDatabaseC2EPN6glitch2io9IReadFileEbPNS0_15CColladaFactoryE
// Partial: CResFileManager::load (with the bool flag) is not in this category.
void CColladaDatabase_ctor_file_flag(CColladaDatabase* /*self*/, void* /*file*/, bool /*flag*/,
                                     void* /*factory*/) {}

// 0x60f3c4 / 0x60f42c _ZN6glitch7collada16CColladaDatabaseC2EPN6glitch2io9IReadFileEPNS0_15CColladaFactoryE
// Partial: CResFileManager::load (without the flag) is not in this category.
void CColladaDatabase_ctor_file(CColladaDatabase* /*self*/, void* /*file*/, void* /*factory*/) {}

}  // namespace glitch::collada::recon_07
