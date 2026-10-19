// PFGInnerDirectEdge: an inner edge that stores its two endpoints as points, not as node pointers.
// It is embedded by value in PFObject (PFObject.hpp unk_4c holds its vptr, off_96C810). Its GetSource and
// GetDestination return those stored points.
// Base: PFGInnerEdge. This is inferred, not shown by the vtable: the original size 0x30 leaves exactly the
// two PFGInnerEdge fields (distance and clearance) at +0x10 .. +0x17 as the gap between the base and m_source.
// Original 32-bit size 0x30 (48): the object starts at PFObject +0x4c and ends before PFObject's
// path-smoothing index at +0x7c.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x5241ac and 0x524348, GetSource 0x5241b0,
// GetDestination 0x5241b8).
#pragma once

#include "core-platform/deps/game_types.hpp"
#include "dh2/PFGInnerEdge.hpp"

class PFGInnerDirectEdge : public PFGInnerEdge {
public:
    ~PFGInnerDirectEdge() override;                                 // slot 7: 0x5241ac (D1, empty), slot 8: 0x524348 (D0, frees)
    const Point3D<float>* GetSource() const override;               // slot 9: 0x5241b0, returns &m_source (+0x18)
    const Point3D<float>* GetDestination() const override;          // slot 10: 0x5241b8, returns &m_destination (+0x24)

    // PFGInnerEdge occupies +0x00 .. +0x17 (its distance and clearance are +0x10 and +0x14).
    Point3D<float> m_source;                                        // +0x18 source point of the edge
    Point3D<float> m_destination;                                   // +0x24 destination point of the edge
};
