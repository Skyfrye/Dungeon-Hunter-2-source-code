// glitch::ps::PSRandom and the particle domains glitch::ps::PDomain, PDPoint, PDLine, PDBox, PDSphere, PDBlob, PDCone and PDCylinder:
// the shapes an emitter draws positions from. Canonical header (residue pass res1); it replaces the PD stand-ins of ps_types.hpp, the
// layout structs of layouts/ps_members.hpp and the free functions of recon/slice_23.
//
// Layout (32-bit offsets, from the constructors, copy() and the accessors; every class has its vptr at +0x00 and its data from +0x04):
//   PDPoint    0x10  point +0x04
//   PDLine     0x2c  start +0x04, axis (end - start) +0x10, normalised axis +0x1c, length +0x28
//   PDBox      0x5c  min +0x04, max +0x10, extent +0x1c, extent sum +0x28, size +0x2c, three axis vectors +0x38 / +0x44 / +0x50
//   PDSphere   0x2c  centre +0x04, max radius +0x10, min radius +0x14, their squares +0x18 / +0x1c, range +0x20, volume +0x24, shell +0x28
//   PDBlob     0x1c  centre +0x04, sigma +0x10, -0.5 / sigma^2 +0x14, 0.39894 / sigma +0x18
//   PDCone     0x54  start +0x04, axis +0x10, u +0x1c, v +0x28, max radius +0x34, min radius +0x38, squares +0x3c / +0x40, range +0x44,
//                    1 / |axis|^2 +0x48, volume +0x4c, uniform flag +0x50
//   PDCylinder 0x58  as PDCone, the height at +0x50 and the flag at +0x54
// The vtable slots of every domain are within, generate, transform, size, getType, copy and the destructor.
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"

namespace glitch::ps {

// The generator of the particle systems: one signed word, a Schrage-method step (48271 * (s % 44488) + 3399 * (s / -44488), 2^31 - 1
// added when negative) and the quotient by 2147483650.
class PSRandom {
public:
    // 0x62fe78: the next value in [0, 1).
    double Rand();
    // 0x637ac4: three draws as x, y, z.
    core::vector3d<float> RandVec();
    // 0x69c4ac: a normal deviate (polar method) times `scale`.
    float NRandf(float scale);
    // 0x69c57c: x and y from the polar method, z from NRandf, all times `scale`.
    core::vector3d<float> NRandVec(float scale);

    std::int32_t seed = 0;  // +0x00
};

class PDomain {
public:
    // 0x69ac8c (D1, empty); D0 0x69bfb8 is skipped.
    virtual ~PDomain();
    virtual bool within(const core::vector3d<float>& point) const = 0;
    virtual core::vector3d<float> generate(PSRandom& random) const = 0;
    virtual void transform(const core::CMatrix4<float>& matrix) = 0;
    virtual float size() const = 0;
    virtual std::uint32_t getType() const = 0;
    virtual PDomain* copy() const = 0;
};

class PDPoint : public PDomain {
public:
    PDPoint() = default;
    // 0x69ace4 (C2) / 0x69ad38 (C1).
    explicit PDPoint(const core::vector3d<float>& value);
    ~PDPoint() override = default;                              // 0x69ac90
    bool within(const core::vector3d<float>& value) const override;       // 0x69ad8c
    core::vector3d<float> generate(PSRandom& random) const override;      // 0x69ade8
    void transform(const core::CMatrix4<float>& matrix) override;         // 0x69ae04
    float size() const override;                                          // 0x69ae4c
    std::uint32_t getType() const override;                               // 0x69ac94: 3
    PDomain* copy() const override;                                       // 0x69c45c

    core::vector3d<float> point;  // +0x04
};

class PDLine : public PDomain {
public:
    PDLine() = default;
    // 0x69e45c (C1) / 0x69e57c (C2).
    PDLine(const core::vector3d<float>& start, const core::vector3d<float>& end);
    ~PDLine() override = default;                                         // 0x69ac9c
    bool within(const core::vector3d<float>& value) const override;       // 0x69e350
    core::vector3d<float> generate(PSRandom& random) const override;      // 0x69ae54
    void transform(const core::CMatrix4<float>& matrix) override;         // 0x69ec90
    float size() const override;                                          // 0x69aec4
    std::uint32_t getType() const override;                               // 0x69aca0: 4
    PDomain* copy() const override;                                       // 0x69c3d4

    core::vector3d<float> start;           // +0x04
    core::vector3d<float> axis;            // +0x10
    core::vector3d<float> direction;       // +0x1c
    float length = 0.0f;                   // +0x28
};

class PDBox : public PDomain {
public:
    PDBox() = default;
    // 0x69aecc (C2) / 0x69b074 (C1): two corners, ordered per axis.
    PDBox(const core::vector3d<float>& corner1, const core::vector3d<float>& corner2);
    // 0x69b21c (C2) / 0x69b354 (C1): a box of the given extents around the origin.
    PDBox(float width, float height, float depth);
    ~PDBox() override = default;                                          // 0x69aca8
    bool within(const core::vector3d<float>& value) const override;       // 0x69b48c
    core::vector3d<float> generate(PSRandom& random) const override;      // 0x69b534
    void transform(const core::CMatrix4<float>& matrix) override;         // 0x69efac
    float size() const override;                                          // 0x69b660
    std::uint32_t getType() const override;                               // 0x69acac: 0
    PDomain* copy() const override;                                       // 0x69c2ec

    core::vector3d<float> minCorner;       // +0x04
    core::vector3d<float> maxCorner;       // +0x10
    core::vector3d<float> extent;          // +0x1c
    float extentSum = 0.0f;                // +0x28
    core::vector3d<float> sizes;           // +0x2c
    core::vector3d<float> axisX;           // +0x38
    core::vector3d<float> axisY;           // +0x44
    core::vector3d<float> axisZ;           // +0x50
};

class PDSphere : public PDomain {
public:
    PDSphere() = default;
    // 0x69b9cc (C2) / 0x69bb80 (C1): a shell between two radii.
    PDSphere(const core::vector3d<float>& center, float radius1, float radius2);
    ~PDSphere() override = default;                                       // 0x69accc
    bool within(const core::vector3d<float>& value) const override;       // 0x69bd34
    core::vector3d<float> generate(PSRandom& random) const override;      // 0x69c6ec
    void transform(const core::CMatrix4<float>& matrix) override;         // 0x69bdec
    float size() const override;                                          // 0x69be08
    std::uint32_t getType() const override;                               // 0x69acd0: 1
    PDomain* copy() const override;                                       // 0x69c0ac

    core::vector3d<float> center;          // +0x04
    float radiusMax = 0.0f;                // +0x10
    float radiusMin = 0.0f;                // +0x14
    float radiusMaxSquared = 0.0f;         // +0x18
    float radiusMinSquared = 0.0f;         // +0x1c
    float radiusRange = 0.0f;              // +0x20
    float volume = 0.0f;                   // +0x24
    std::uint8_t shell = 0;                // +0x28
};

class PDBlob : public PDomain {
public:
    PDBlob() = default;
    // 0x69be10 (C2) / 0x69beb8 (C1).
    PDBlob(const core::vector3d<float>& center, float sigma);
    ~PDBlob() override = default;                                         // 0x69acd8
    bool within(const core::vector3d<float>& value) const override;       // 0x69df40 (a probabilistic test)
    core::vector3d<float> generate(PSRandom& random) const override;      // 0x69c688
    void transform(const core::CMatrix4<float>& matrix) override;         // 0x69bf60
    float size() const override;                                          // 0x69bf7c
    std::uint32_t getType() const override;                               // 0x69acdc: 6
    PDomain* copy() const override;                                       // 0x69c044

    core::vector3d<float> center;          // +0x04
    float sigma = 0.0f;                    // +0x10
    float negHalfInvSigmaSquared = 0.0f;   // +0x14
    float gaussNorm = 0.0f;                // +0x18
};

class PDCone : public PDomain {
public:
    PDCone() = default;
    // 0x69c860 (C1) / 0x69ccc0 (C2): a frustum from `start` to `end` between two radii.
    PDCone(const core::vector3d<float>& start, const core::vector3d<float>& end, float radius1, float radius2);
    ~PDCone() override = default;                                         // 0x69acc0
    bool within(const core::vector3d<float>& value) const override;       // 0x69b804
    core::vector3d<float> generate(PSRandom& random) const override;      // 0x69e008
    void transform(const core::CMatrix4<float>& matrix) override;         // 0x69b9c0 (empty)
    float size() const override;                                          // 0x69b9c4
    std::uint32_t getType() const override;                               // 0x69acc4: 5
    PDomain* copy() const override;                                       // 0x69c134

    core::vector3d<float> start;           // +0x04
    core::vector3d<float> axis;            // +0x10
    core::vector3d<float> u;               // +0x1c
    core::vector3d<float> v;               // +0x28
    float radiusMax = 0.0f;                // +0x34
    float radiusMin = 0.0f;                // +0x38
    float radiusMaxSquared = 0.0f;         // +0x3c
    float radiusMinSquared = 0.0f;         // +0x40
    float radiusRange = 0.0f;              // +0x44
    float invAxisLengthSquared = 0.0f;     // +0x48
    float volume = 0.0f;                   // +0x4c
    std::uint8_t uniform = 0;              // +0x50
};

class PDCylinder : public PDomain {
public:
    PDCylinder() = default;
    // 0x69d120 (C1) / 0x69d3f4 (C2): a cylinder along y of the given height and radius, centred on the origin.
    PDCylinder(float height, float radius);
    // 0x69d6c8 (C1) / 0x69db04 (C2): from `start` to `end` between two radii.
    PDCylinder(const core::vector3d<float>& start, const core::vector3d<float>& end, float radius1, float radius2);
    ~PDCylinder() override = default;                                     // 0x69acb4
    bool within(const core::vector3d<float>& value) const override;       // 0x69b668
    core::vector3d<float> generate(PSRandom& random) const override;      // 0x69e1bc
    void transform(const core::CMatrix4<float>& matrix) override;         // 0x69e69c
    float size() const override;                                          // 0x69b7fc
    std::uint32_t getType() const override;                               // 0x69acb8: 2
    PDomain* copy() const override;                                       // 0x69c20c

    core::vector3d<float> start;           // +0x04
    core::vector3d<float> axis;            // +0x10
    core::vector3d<float> u;               // +0x1c
    core::vector3d<float> v;               // +0x28
    float radiusMax = 0.0f;                // +0x34
    float radiusMin = 0.0f;                // +0x38
    float radiusMaxSquared = 0.0f;         // +0x3c
    float radiusMinSquared = 0.0f;         // +0x40
    float radiusRange = 0.0f;              // +0x44
    float invAxisLengthSquared = 0.0f;     // +0x48
    float volume = 0.0f;                   // +0x4c
    float height = 0.0f;                   // +0x50
    std::uint8_t uniform = 0;              // +0x54
};

}  // namespace glitch::ps
