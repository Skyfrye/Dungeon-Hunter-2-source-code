// glitch::scene::CTriangleSelector: the triangle-list collision selector (ITriangleSelector over a std::vector of
// triangles). Canonical header of the engine unification wave (u1-scene); it replaces
// tb/glitch_scene_CTriangleSelector.hpp (the full class without a vptr) and the CTriangleSelector pad stand-in
// that tb/glitch_scene_COctTreeTriangleSelector.hpp carried.
//
// Layout (original 32-bit offsets, from the constructors 0x5919a0 / 0x591a60 / 0x596598, which agree):
//   +0x00 vptr (off_9767F0)            +0x04 reference count (IReferenceCounted, starts at 1)
//   +0x08 ISceneNode const* node       +0x0c .. +0x17 triangle vector (begin, end, capacity), 36-byte elements
//   +0x18 bool bakeNodeTransform       +0x1c line3d segment (0 .. 1 per axis from the constructors), +0x34 squared
//                                      length (not written), +0x38 segment direction (zeroed)
//   +0x44 aabbox3d box (-1..1)         +0x5c CMatrix4 (identity), its flag byte at +0x9c
//   +0xa0 result triangle buffer, +0xa4 capacity, +0xa8 count (written by getTriangles; the constructors do not)
// The vtable (tools/decomp_vtable.py glitch::scene::CTriangleSelector, 36 bytes) fills the four ITriangleSelector
// slots +0x0c .. +0x18; +0x14 and +0x18 are overridden by COctTreeTriangleSelector.
// The node matrix every body needs is ISceneNode vtable +0x38, which is getAbsoluteTransformation (the
// ISceneNode vtable is declared now, so the helpers that returned null in the earlier batch are real calls).
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector / stringc (STLPORT-DECISION.md section 6)

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/ITriangleSelector.hpp"

namespace glitch::scene {

class CTriangleSelector : public ITriangleSelector {
public:
    // 0x5919a0 (C1) and 0x591b24 (C2): selector over a single box; node and flag are stored, the triangle list stays empty.
    CTriangleSelector(const core::aabbox3d<float>& box, const ISceneNode* node, bool bakeNodeTransform);
    // 0x591a60 (C1) and 0x591be4 (C2): the same without the box argument.
    CTriangleSelector(const ISceneNode* node, bool bakeNodeTransform);
    // 0x595ec8 and 0x596598 (the two listings of one constructor): triangles of every buffer of the mesh.
    CTriangleSelector(const boost::intrusive_ptr<const IMesh>& mesh, const ISceneNode* node, bool bakeNodeTransform);

    // 0x590f70 (D1), 0x5913fc (D0, skipped in the ledger): releases the triangle vector.
    ~CTriangleSelector() override;

    // +0x0c, 0x590f20: the triangle count (vector byte size / 36).
    int getTriangleCount() const override;
    // +0x10, 0x591464: copies up to maxCount triangles, transformed by source (times the node matrix unless baked).
    void getTriangles(core::triangle3d<float>* triangles, int arraySize, int& outTriangleCount,
                      const core::CMatrix4<float>* transform) const override;
    // +0x14, 0x591ca8: Setup(transform), Setup(box), TestWithBox over the whole list.
    void getTriangles(core::triangle3d<float>* triangles, int arraySize, int& outTriangleCount,
                      const core::aabbox3d<float>& box, const core::CMatrix4<float>* transform) const override;
    // +0x18, 0x591cf0: Setup(transform), Setup(line), TestWithLine over the whole list.
    void getTriangles(core::triangle3d<float>* triangles, int arraySize, int& outTriangleCount,
                      const core::line3d<float>& line, const core::CMatrix4<float>* transform) const override;

    // 0x586a34: resets the stored matrix to identity, copies `source`, and (unless baked) multiplies by the node matrix.
    void Setup(const core::CMatrix4<float>* source) const;
    // 0x587604: stores the box and (unless baked) transforms it by the inverse of the node matrix.
    void Setup(const core::aabbox3d<float>& box) const;
    // 0x588984: stores the segment (start +0x1c, end +0x28) and its squared length (+0x34); transformed like the box.
    void Setup(const core::line3d<float>& line) const;
    // 0x586acc: appends to the result buffer; true when it is full.
    bool AddResult(const core::triangle3d<float>& triangle) const;
    // 0x586ec8: keeps the candidates that overlap the box. The Hex-Rays float return is a register leftover.
    void TestWithBox(core::svector<core::triangle3d<float>>& candidates) const;
    // 0x5871c8: keeps the candidates that the stored segment hits (getIntersectionWithLineSegment). The Hex-Rays
    // bool return is the last test's register; the callers discard it.
    void TestWithLine(core::svector<core::triangle3d<float>>& candidates) const;

    const ISceneNode* node = nullptr;                  // +0x08 the node whose absolute transform the selector uses
    core::svector<core::triangle3d<float>> triangles;    // +0x0c (begin), +0x10 (end), +0x14 (capacity)
    bool bakeNodeTransform = false;                    // +0x18 (ctor argument; name from behaviour: set when the node matrix is baked in)
    // +0x1c .. +0x43: the segment of the last getTriangles(line) query, written by Setup(line3d) (0x588984) and read by
    // TestWithLine (0x5871c8): start, end, squared length and normalized direction. The constructors write the
    // defaults below (start 0, end 1 per axis, direction 0; the length word is not written).
    mutable core::line3d<float> segment{{0.0f, 0.0f, 0.0f}, {1.0f, 1.0f, 1.0f}};  // +0x1c start, +0x28 end
    mutable float segmentLengthSquared = 0.0f;                                  // +0x34
    mutable core::vector3d<float> segmentDirection{0.0f, 0.0f, 0.0f};          // +0x38
    mutable core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x44 .. +0x5b
    mutable core::CMatrix4<float> transform{core::CMatrix4<float>::EM4CONST_IDENTITY};     // +0x5c .. +0x9c (flag)
    mutable core::triangle3d<float>* resultTriangles = nullptr;  // +0xa0
    mutable std::uint32_t resultCapacity = 0;                    // +0xa4
    mutable std::uint32_t resultCount = 0;                       // +0xa8
};

}  // namespace glitch::scene
