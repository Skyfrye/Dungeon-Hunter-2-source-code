// ColBox: a GameObject that carries an authored "dimensions" box. The box scaled by the owner's scale becomes its
// relative AABB and gets a PhysicalObject. Drawn as a debug box while the isDisplayingColBox switch is on.
// Original 32-bit size 0x380 (896): GameObject (0x374) plus one Point3D<float>.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x340fe0 is inlined into GetNewInstance<ColBox>).
#pragma once

#include "core-platform/deps/game_types.hpp"

#include "dh2/GameObject.hpp"

class ColBox : public GameObject {
public:
    // No standalone constructor symbol: GetNewInstance<ColBox> (0x340fe0) runs GameObject(id), zeroes m_dimensions,
    // stores the primary and secondary vtables and sets m_static (ObjectBase +0x84) to 1.
    explicit ColBox(GO_IDS id);

    ~ColBox() override;                                                 // slot 0/1: 0x3884b8 (D1), 0x388e60 (D0)

    // Overrides of GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x389938 adds "dimensions", default 200 200 200
    void InitPost() override;                                           // slot 0x1c: 0x3884fc scales the box, sets m_relAabb, creates the PhysicalObject
    void Draw() const override;                                         // slot 0x30: 0x3896f0 debug box when the isDisplayingColBox switch is set
    bool IsUpdatable() const override;                                  // slot 0x38: 0x3883f4 false

    // GameObject occupies +0x00 .. +0x373.
    Point3D<float> m_dimensions;                                        // +0x374 property "dimensions"; the constructor zeroes it
};
