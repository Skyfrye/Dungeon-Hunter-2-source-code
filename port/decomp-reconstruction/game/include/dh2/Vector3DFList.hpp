// Vector3DFList: a fixed-capacity list of 3D points, each with a squared distance. Objectives fill it
// in GetPositions with the positions they want shown. setCharacterPosition sets the reference point that
// addClosest measures from, and it also copies that point into the embedded PFObject (m_pos at +0x3c).
// No vtable. Original 32-bit size not recorded (no operator new site in class-facts). PFObject (0xa4
// bytes) at +0x24 is the last member, so the object ends at +0xc8 in the original.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x47c154 / 0x47c05c, dtor 0x47bfcc,
// methods 0x479f88, 0x479f98, 0x479fa0, 0x479fc8, 0x47a178, 0x47a9b4).
#pragma once

#include <cstdint>

#include "glitch-shared/glitch_core.hpp"

#include "dh2/PFObject.hpp"

class Vector3DFList {
public:
    // Ctor with no capacity: all arrays are null and the capacity is 0. Ctor 0x47c154 (C1), 0x47c190 (C2).
    Vector3DFList();
    // Ctor that allocates capacity points and capacity squared distances. 0x47c05c (C1), 0x47c0d8 (C2).
    explicit Vector3DFList(int capacity);
    // Frees both arrays, then destroys the embedded PFObject. 0x47bfcc (D1), 0x47c014 (D2).
    ~Vector3DFList();

    // Returns a reference to the point at index. 0x479f88 (the original returns the element address).
    glitch::core::vector3d<float>& operator[](int index);
    // Number of points stored. 0x479f98.
    int getCount() const;
    // Sets m_characterPosition and the embedded PFObject m_pos. 0x479fa0.
    void setCharacterPosition(const glitch::core::vector3d<float>& position);
    // Stores the point while there is room. When the list is full it replaces the point with the largest
    // squared distance if the new one is closer. Distance is measured from m_characterPosition. 0x479fc8.
    void addClosest(const glitch::core::vector3d<float>& position);
    // Stores the point while there is room, with squared distance 0. 0x47a178.
    void add(const glitch::core::vector3d<float>& position);
    // Frees both arrays, sets the capacity to capacity, clears the count and allocates new arrays. 0x47a9b4.
    void setNew(int capacity);

    glitch::core::vector3d<float>* m_points;                            // +0x00 capacity points, 12 bytes each
    float* m_distSq;                                                    // +0x04 one squared distance per point
    int m_capacity;                                                     // +0x08 set by the ctor and setNew
    int m_count;                                                        // +0x0c returned by getCount
    uint8_t pad_10[4];                                                  // +0x10 never written by the ctors or the methods above
    glitch::core::vector3d<float> m_characterPosition;                  // +0x14 setCharacterPosition; addClosest measures from here
    uint8_t pad_20[4];                                                  // +0x20 never written by the ctors or the methods above
    PFObject unk_24;                                                    // +0x24 constructed in place; its m_pos (+0x3c) is the character position
};
