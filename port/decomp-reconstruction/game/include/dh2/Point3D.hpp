// Point3D<T>: a three-component point or vector, X, Y and Z. Point3D<float> is the game's world-space position
// and direction type (GameObject, Character, PFWorld, PFObject). Point3D<int> is also instantiated (the
// StrToObj and ObjToStr overloads).
// Original 32-bit size 0xc (12) for Point3D<float>.
// Reconstructed from libDungeonHunter2.so pseudocode (operator== 0x312b6c, transform 0x312da8, rotateXY 0x3e5740).
#pragma once

namespace glitch {
namespace core {
template <typename T>
struct CMatrix4;  // defined in glitch-shared/glitch_core.hpp
}  // namespace core
}  // namespace glitch

template <typename T>
struct Point3D {
    bool operator==(const Point3D& other) const;                            // 0x312b6c, each component within 0.0001
    float transform(const glitch::core::CMatrix4<float>& matrix);           // 0x312da8, (X, Y, Z, 1) times the matrix; X, Y, Z written back; returns W
    float angleCos(const Point3D& other) const;                             // 0x312f40 cosine of the angle between the two vectors
    float angle(const Point3D& other) const;                                // 0x313058 acos(angleCos)
    Point3D& operator/=(const float& divisor);                              // 0x34d04c divides each component
    Point3D& normalize();                                                   // 0x34d0b0 divides by the length (through operator/=); returns *this, as the original's r0 does
    float distance(const Point3D& other) const;                             // 0x3a4118 Euclidean distance
    Point3D& rotateXY(float angle);                                         // 0x3e5740 rotates the X and Y components, angle in radians
    float rotateXYBy(float degrees, const Point3D& pivot);                  // 0x418c48 rotates about pivot in degrees, returns the new Y

    T X;                                                                    // +0x00
    T Y;                                                                    // +0x04
    T Z;                                                                    // +0x08
};

// Point3D<float> members, defined out of line in game-world/src/g1-game-world-Point3D-3d74ab-0.cpp (batch
// g1-game-world-Point3D-3d74ab-0). Point3D<int> has none of them defined.
template <>
bool Point3D<float>::operator==(const Point3D<float>& other) const;
template <>
float Point3D<float>::transform(const glitch::core::CMatrix4<float>& matrix);
template <>
float Point3D<float>::angleCos(const Point3D<float>& other) const;
template <>
float Point3D<float>::angle(const Point3D<float>& other) const;
template <>
Point3D<float>& Point3D<float>::operator/=(const float& divisor);
template <>
Point3D<float>& Point3D<float>::normalize();
template <>
float Point3D<float>::distance(const Point3D<float>& other) const;
template <>
Point3D<float>& Point3D<float>::rotateXY(float angle);
template <>
float Point3D<float>::rotateXYBy(float degrees, const Point3D<float>& pivot);
