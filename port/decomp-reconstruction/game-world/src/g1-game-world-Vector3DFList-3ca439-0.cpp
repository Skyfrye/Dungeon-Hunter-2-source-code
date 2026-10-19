// Batch g1-game-world-Vector3DFList-3ca439-0: the Vector3DFList point list. The two constructors, the two destructors,
// operator[], getCount, setCharacterPosition, addClosest, add and setNew. Declarations come from dh2/Vector3DFList.hpp.
//
// Layout facts used here (original 32-bit offsets, named in the header):
//   m_points +0x00 (points, 12 bytes each)   m_distSq +0x04 (one float per point)   m_capacity +0x08
//   m_count +0x0c   m_characterPosition +0x14 (the reference point for addClosest)  unk_24 (PFObject) +0x24,
//   whose m_pos is at +0x3c (PFObject +0x18).
//
// Return values: add, addClosest and setNew are declared void in the header. The listings leave a value in r0 (this,
// a comparison bit, or the new array pointer), but every caller in the listings ignores it, so it is not returned here.
//
// The two copies of each constructor and destructor (C1/C2, D1/D2) have identical bodies, so one definition serves both.

#include "dh2/Vector3DFList.hpp"

// Engine allocator. core-platform/memory.hpp is not included: its glitch_core stand-in clashes with the glitch-shared
// types used by this header (PFFloor declares them the same way).
void* CustomAlloc(unsigned int size);  // 0x310454
void CustomFree(void* p);              // 0x310440

namespace {

// Byte sizes of the two arrays. The original computes 12 * capacity and 4 * capacity in 32-bit unsigned arithmetic, and
// so does this.
unsigned int PointBytes(int capacity) {
    return static_cast<unsigned int>(capacity) * static_cast<unsigned int>(sizeof(glitch::core::vector3d<float>));
}

unsigned int DistBytes(int capacity) {
    return static_cast<unsigned int>(capacity) * static_cast<unsigned int>(sizeof(float));
}

}  // namespace

// 0x479f88 Vector3DFList::operator[](int)
glitch::core::vector3d<float>& Vector3DFList::operator[](int index) {
    return m_points[index];
}

// 0x479f98 Vector3DFList::getCount() const
int Vector3DFList::getCount() const {
    return m_count;  // +0x0c
}

// 0x479fa0 Vector3DFList::setCharacterPosition(glitch::core::vector3d<float> const&)
void Vector3DFList::setCharacterPosition(const glitch::core::vector3d<float>& position) {
    const glitch::core::vector3d<float> p = position;  // read first, as the listing does
    m_characterPosition = p;                           // +0x14, +0x18, +0x1c
    unk_24.m_pos.X = p.X;                              // PFObject +0x18 = this +0x3c
    unk_24.m_pos.Y = p.Y;                              // this +0x40
    unk_24.m_pos.Z = p.Z;                              // this +0x44
}

// 0x479fc8 Vector3DFList::addClosest(glitch::core::vector3d<float> const&)
void Vector3DFList::addClosest(const glitch::core::vector3d<float>& position) {
    const glitch::core::vector3d<float> p = position;
    const float dx = p.X - m_characterPosition.X;
    const float dy = p.Y - m_characterPosition.Y;
    const float dz = p.Z - m_characterPosition.Z;
    const float distSq = (dx * dx + dy * dy) + dz * dz;

    if (m_count < m_capacity) {
        // Room left: append the point with its squared distance.
        m_points[m_count] = p;
        m_distSq[m_count] = distSq;
        ++m_count;
    } else if (m_capacity > 0) {
        // Full: walk the stored distances with a running maximum that starts at the new distance. Each entry strictly
        // above the maximum so far becomes the candidate (replace) and raises the maximum. The listing does this with
        // __aeabi_fcmpgt(current, threshold) and a conditional move pair (MOVNE R11,R4 / MOVEQ R5,R6). An unordered (NaN)
        // compare is false, so a NaN stored entry is never a candidate, and a NaN new distance replaces nothing.
        // Ties do not replace: the candidate is the first entry holding the largest stored distance, and only when that
        // distance is above the new one; otherwise replace stays -1.
        float threshold = distSq;
        int replace = -1;
        for (int i = 0; i < m_capacity; ++i) {
            const float current = m_distSq[i];
            if (current > threshold) {
                replace = i;
                threshold = current;
            }
        }
        if (replace != -1) {
            m_points[replace] = p;
            m_distSq[replace] = distSq;
        }
    }
}

// 0x47a178 Vector3DFList::add(glitch::core::vector3d<float> const&)
void Vector3DFList::add(const glitch::core::vector3d<float>& position) {
    if (m_count < m_capacity) {
        m_points[m_count] = position;
        m_distSq[m_count] = 0.0f;  // the listing stores integer 0, which is 0.0f
        ++m_count;
    }
}

// 0x47a9b4 Vector3DFList::setNew(int)
void Vector3DFList::setNew(int capacity) {
    m_capacity = capacity;  // +0x08
    m_count = 0;            // +0x0c
    if (m_points) {
        CustomFree(m_points);
        m_points = nullptr;
    }
    if (m_distSq) {
        CustomFree(m_distSq);
        m_distSq = nullptr;
    }
    auto* points = static_cast<glitch::core::vector3d<float>*>(CustomAlloc(PointBytes(capacity)));
    // The listing's zeroing loop is a do-while entered only for a nonzero capacity. It would never end for a negative
    // capacity, so only capacity >= 0 is defined. For 0 this loop writes nothing, as the listing does.
    for (int i = 0; i < capacity; ++i) {
        points[i] = glitch::core::vector3d<float>{};  // three zero words per point
    }
    m_points = points;
    m_distSq = static_cast<float*>(CustomAlloc(DistBytes(capacity)));  // not cleared, as in the listing
}

// 0x47bfcc Vector3DFList::~Vector3DFList()
// 0x47c014 Vector3DFList::~Vector3DFList()  (second copy, identical body)
Vector3DFList::~Vector3DFList() {
    if (m_points) {
        CustomFree(m_points);
        m_points = nullptr;
    }
    if (m_distSq) {
        CustomFree(m_distSq);
        m_distSq = nullptr;
    }
    // The listing then calls PFObject::~PFObject on +0x24. The compiler destroys unk_24 after this body.
}

// 0x47c05c Vector3DFList::Vector3DFList(int)
// 0x47c0d8 Vector3DFList::Vector3DFList(int)  (second copy, identical body)
Vector3DFList::Vector3DFList(int capacity)
    : m_points(nullptr), m_distSq(nullptr), m_capacity(capacity), m_count(0), m_characterPosition{} {
    // The listing constructs PFObject at +0x24 (unk_24, implicit) before the two allocations.
    auto* points = static_cast<glitch::core::vector3d<float>*>(CustomAlloc(PointBytes(capacity)));
    for (int i = 0; i < capacity; ++i) {
        points[i] = glitch::core::vector3d<float>{};
    }
    m_points = points;
    m_distSq = static_cast<float*>(CustomAlloc(DistBytes(capacity)));
}

// 0x47c154 Vector3DFList::Vector3DFList()
// 0x47c190 Vector3DFList::Vector3DFList()  (second copy, identical body)
Vector3DFList::Vector3DFList()
    : m_points(nullptr), m_distSq(nullptr), m_capacity(0), m_count(0), m_characterPosition{} {
    // unk_24 (PFObject) is constructed implicitly, as the listing's PFObject::PFObject call does.
}
