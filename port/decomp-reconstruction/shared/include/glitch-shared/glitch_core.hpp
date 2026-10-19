// Value types of the glitch::core namespace: the one definition for every category (canonical header of the
// engine unification wave, u1-core; owner category glitch-core-io). Field order and widths match the original
// (32-bit ARM); the members are zero-initialised, as the decompiled code assumes. Methods are kept where the
// original has them. Offsets are the original's, in comments. The rect members are named UpperLeftCorner and
// LowerRightCorner (core-platform's X1, Y1, X2, Y2 stand-in has the same four words).
//
// Layouts (float instances; the 32-bit sizes are in brackets):
//   vector2d [8]: X +0x00, Y +0x04.          vector3d [12]: X +0x00, Y +0x04, Z +0x08.
//   vector4d [16]: X, Y, Z, W at +0x00..+0x0c.   position2d [8]: X +0x00, Y +0x04.
//   rect [16]: UpperLeftCorner +0x00, LowerRightCorner +0x08.   dimension2d [8]: Width +0x00, Height +0x04.
//   line2d [16]: start +0x00, end +0x08.     line3d [24]: start +0x00, end +0x0c.
//   aabbox3d [24]: MinEdge +0x00, MaxEdge +0x0c.   plane3d [16]: Normal +0x00, D +0x0c.
//   triangle3d [36]: A +0x00, B +0x0c, C +0x18.    quaternion [16]: X, Y, Z, W at +0x00..+0x0c (identity is
//   X = Y = Z = 0, W = 1: IAttribute::getQuaternion 0x31d690).
//   CMatrix4 [68]: M[16] at +0x00..+0x3c, identity flag byte at +0x40.
//   SColor [4]: one word, component 0 in the low byte (see SColor). SColorf [16]: r, g, b, a at +0x00..+0x0c.
#pragma once

#include <cmath>
#include <cstdint>

namespace glitch::core {
template <typename T>
struct vector2d {
    T X{}, Y{};  // +0x00, +0x04

    // 0x420060 vector2d<float>::getAngle (Irrlicht's f64 getAngle): the angle in degrees of the vector. The original returns a
    // double in r0:r1 (Hex-Rays shows only the low word and drops the two early returns, which the listing has as double constants):
    // Y == 0 gives 180 for X < 0 and 0 otherwise, X == 0 gives 90 for Y < 0 and 270 otherwise. The length is the double sqrt of the
    // float sum of squares rounded to float, ratio = Y / length (float); 1 - ratio * ratio, sqrt, the division and atan are double.
    double getAngle() const {
        const float x = static_cast<float>(X);
        const float y = static_cast<float>(Y);
        if (y == 0.f) return x < 0.f ? 180.0 : 0.0;
        if (x == 0.f) return y < 0.f ? 90.0 : 270.0;
        const float len = static_cast<float>(std::sqrt(static_cast<double>(static_cast<float>(static_cast<float>(x * x) + static_cast<float>(y * y)))));
        const double ratio = static_cast<double>(static_cast<float>(y / len));
        double angle = std::atan(std::sqrt(1.0 - ratio * ratio) / ratio) * 57.29577951308232;  // 0x404ca5dc1a63c1f8 = 180 / pi
        if (x > 0.f) {
            if (y > 0.f) return angle + 270.0;
            if (y < 0.f) return angle + 90.0;
        }
        if (x < 0.f) {
            if (y < 0.f) return 90.0 - angle;
            if (y > 0.f) return 270.0 - angle;
        }
        return angle;
    }
};
template <typename T>
struct vector3d {
    T X{}, Y{}, Z{};  // +0x00, +0x04, +0x08

    // 0x35e8e0 vector3d<float>::normalize(void): when the squared length v2 = X*X + Y*Y + Z*Z is
    // nonzero, every component is multiplied by 1 / sqrt(v2) (a reciprocal, not a division). A zero
    // vector is left unchanged. Returns this, as the original returns its argument.
    vector3d& normalize() {
        const T v2 = static_cast<T>((X * X + Y * Y) + Z * Z);
        if (v2 != T(0)) {
            const T inv = static_cast<T>(T(1) / std::sqrt(v2));
            X = X * inv;
            Y = Y * inv;
            Z = Z * inv;
        }
        return *this;
    }

    // float-only members, defined out of line in glitch-core-io/src/tb_core-io-glitch_core_vector3d_float-0.cpp
    // (explicit specializations, declared after this struct).
    vector3d operator/(const vector3d& other) const;              // 0x59a294
    vector3d& operator/=(const vector3d& other);                  // 0x5a24b4
    void rotateXYBy(double degrees, const vector3d& center);      // 0x630bfc
    void rotateYZBy(double degrees, const vector3d& center);      // 0x630cf8
    void rotateXZBy(double degrees, const vector3d& center);      // 0x630de8
    vector3d getHorizontalAngle() const;                          // 0x6c7b6c
};
template <>
vector3d<float> vector3d<float>::operator/(const vector3d<float>& other) const;
template <>
vector3d<float>& vector3d<float>::operator/=(const vector3d<float>& other);
template <>
void vector3d<float>::rotateXYBy(double degrees, const vector3d<float>& center);
template <>
void vector3d<float>::rotateYZBy(double degrees, const vector3d<float>& center);
template <>
void vector3d<float>::rotateXZBy(double degrees, const vector3d<float>& center);
template <>
vector3d<float> vector3d<float>::getHorizontalAngle() const;
template <typename T>
struct vector4d {
    T X{}, Y{}, Z{}, W{};  // +0x00, +0x04, +0x08, +0x0c
};
template <typename T>
struct position2d {
    T X{}, Y{};  // +0x00, +0x04
};
template <typename T>
struct rect {
    position2d<T> UpperLeftCorner;   // +0x00 (core-platform's stand-in: X1, Y1)
    position2d<T> LowerRightCorner;  // +0x08 (core-platform's stand-in: X2, Y2)

    // 0x535c18 (rect<int>): if this rectangle is no larger than limit, moves it inside
    // limit (right edge, bottom, left, top, in that order) and returns true; otherwise
    // leaves it unchanged and returns false.
    bool constrainTo(const rect& limit) {
        if (limit.LowerRightCorner.X - limit.UpperLeftCorner.X < LowerRightCorner.X - UpperLeftCorner.X || limit.LowerRightCorner.Y - limit.UpperLeftCorner.Y < LowerRightCorner.Y - UpperLeftCorner.Y) return false;
        T diff = limit.LowerRightCorner.X - LowerRightCorner.X;
        if (diff < 0) {
            UpperLeftCorner.X += diff;
            LowerRightCorner.X += diff;
        }
        diff = limit.LowerRightCorner.Y - LowerRightCorner.Y;
        if (diff < 0) {
            UpperLeftCorner.Y += diff;
            LowerRightCorner.Y += diff;
        }
        diff = UpperLeftCorner.X - limit.UpperLeftCorner.X;
        if (diff < 0) {
            UpperLeftCorner.X -= diff;
            LowerRightCorner.X -= diff;
        }
        diff = UpperLeftCorner.Y - limit.UpperLeftCorner.Y;
        if (diff < 0) {
            UpperLeftCorner.Y -= diff;
            LowerRightCorner.Y -= diff;
        }
        return true;
    }
};
// Modelled on upstream Irrlicht 1.8.5 (quaternion.h, triangle3d.h, line2d.h,
// line3d.h, dimension2d.h, aabbox3d.h, plane3d.h, matrix4.h); plain members only.
template <typename T>
struct CMatrix4;

struct quaternion {
    float X{}, Y{}, Z{}, W{};  // +0x00, +0x04, +0x08, +0x0c

    // Method declarations (bodies in glitch-core-io/src/tb_core-io-glitch_core_quaternion-0.cpp).
    // 0x35bc90 operator*(vector3d const&) const: rotates a vector by this quaternion.
    vector3d<float> operator*(const vector3d<float>& v) const;
    // 0x60dd34 operator*(quaternion const&) const: Hamilton product this * other.
    quaternion operator*(const quaternion& other) const;
    // 0x35c8f0 normalize(): scales by 1/sqrt(|q|^2) unless |q|^2 == 1. Returns this.
    quaternion& normalize();
    // 0x35c9d8 set(float, float, float): from three angles in radians. Returns this.
    quaternion& set(float a, float b, float c);
    // 0x60cdbc fromAngleAxis(float angle, vector3d const& axis): static, returns the quaternion.
    static quaternion fromAngleAxis(float angle, const vector3d<float>& axis);
    // 0x612d00 slerp(quaternion, quaternion, float t): static, returns the interpolated quaternion.
    static quaternion slerp(quaternion from, quaternion to, float t);
    // 0x432e58 toEulerDegree(vector3d&) const.
    void toEulerDegree(vector3d<float>& out) const;
    // 0x50eeb4 operator=(CMatrix4 const&): quaternion from a rotation matrix. Returns this.
    quaternion& operator=(const CMatrix4<float>& m);
    // 0x432984 getMatrix(CMatrix4&) const: writes the (non-transposed) rotation matrix.
    void getMatrix(CMatrix4<float>& out) const;
    // 0x6d162c getMatrix() const: returns the transposed rotation matrix.
    CMatrix4<float> getMatrix() const;
    // 0x5602d0 getMatrix_transposed(CMatrix4&) const.
    void getMatrix_transposed(CMatrix4<float>& out) const;
};
template <typename T>
struct line3d;
template <typename T>
struct aabbox3d;

template <typename T>
struct triangle3d {
    vector3d<T> A, B, C;  // +0x00, +0x0c, +0x18

    // 0x6c3da0 triangle3d<float>::isPointInsideFast. Barycentric test with the sign-bit
    // combination of the original: both numerators (X for v, Y for u) are non-negative and
    // the sum minus the denominator is negative. Degenerate triangles give a false result.
    bool isPointInsideFast(const vector3d<T>& p) const {
        const T ux = B.X - A.X, uy = B.Y - A.Y, uz = B.Z - A.Z;
        const T vx = C.X - A.X, vy = C.Y - A.Y, vz = C.Z - A.Z;
        const T wx = p.X - A.X, wy = p.Y - A.Y, wz = p.Z - A.Z;
        const T d00 = ux * ux + uy * uy + uz * uz;
        const T d01 = ux * vx + uy * vy + uz * vz;
        const T d11 = vx * vx + vy * vy + vz * vz;
        const T d20 = wx * ux + wy * uy + wz * uz;
        const T d21 = wx * vx + wy * vy + wz * vz;
        const T x = d00 * d21 - d01 * d20;  // v numerator
        const T y = d11 * d20 - d01 * d21;  // u numerator
        const T z = (x + y) - (d00 * d11 - d01 * d01);
        return !std::signbit(x) && !std::signbit(y) && std::signbit(z);
    }

    // 0x585bb8 triangle3d<float>::isOnSameSide(p1, p2, a, b) const. The receiver is unused. With
    // e = b - a, w = p1 - a and z = p2 - a, the listing computes dot((e x w), (e x z)) >= 0, with the
    // cross-product terms written as in the listing (the sign flips are negations of e's components).
    bool isOnSameSide(const vector3d<T>& p1, const vector3d<T>& p2, const vector3d<T>& a,
                      const vector3d<T>& b) const {
        const T ex = b.X - a.X, ey = b.Y - a.Y, ez = b.Z - a.Z;
        const T wx = p1.X - a.X, wy = p1.Y - a.Y, wz = p1.Z - a.Z;
        const T zx = p2.X - a.X, zy = p2.Y - a.Y, zz = p2.Z - a.Z;
        const T t1 = (wz * -ey) + (ez * wy);
        const T b1 = (-ey * zz) + (ez * zy);
        const T t2 = (wx * -ez) + (ex * wz);
        const T b2 = (-ez * zx) + (ex * zz);
        const T t3 = (wy * -ex) + (ey * wx);
        const T b3 = (-ex * zy) + (ey * zx);
        return (((t1 * b1) + (t2 * b2)) + (t3 * b3)) >= T(0);
    }

    // 0x585de8 triangle3d<float>::isPointInside(p) const: p is on the inner side of all three edges.
    bool isPointInside(const vector3d<T>& p) const {
        return isOnSameSide(p, A, B, C) && isOnSameSide(p, B, A, C) && isOnSameSide(p, C, A, B);
    }

    // 0x585e80 triangle3d<float>::getIntersectionOfPlaneWithLine(start, dir, out) const. The plane
    // normal is cross(C - A, B - A) (listing: v29), normalized with vector3d::normalize. Returns false
    // when |N . dir| <= 1e-6 (double compare, as in the listing); otherwise out = start + t * dir with
    // t = (N . A - N . start) / (N . dir).
    bool getIntersectionOfPlaneWithLine(const vector3d<T>& start, const vector3d<T>& dir,
                                        vector3d<T>& out) const {
        const T ux = B.X - A.X, uy = B.Y - A.Y, uz = B.Z - A.Z;
        const T vx = C.X - A.X, vy = C.Y - A.Y, vz = C.Z - A.Z;
        vector3d<T> n{(vz * -uy) + (uz * vy), (vx * -uz) + (ux * vz), (vy * -ux) + (uy * vx)};
        n.normalize();
        const T nd = ((n.X * dir.X) + (n.Y * dir.Y)) + (n.Z * dir.Z);
        if (std::fabs(static_cast<double>(nd)) <= 0.000001) return false;
        const T ns = ((n.X * start.X) + (n.Y * start.Y)) + (n.Z * start.Z);
        const T na = ((n.X * A.X) + (n.Y * A.Y)) + (n.Z * A.Z);
        const T t = (na - ns) / nd;
        out.X = start.X + (t * dir.X);
        out.Y = start.Y + (t * dir.Y);
        out.Z = start.Z + (t * dir.Z);
        return true;
    }

    // 0x58615c triangle3d<float>::getIntersectionWithLine(start, dir, out) const: the plane hit, and
    // then the inside test on that point.
    bool getIntersectionWithLine(const vector3d<T>& start, const vector3d<T>& dir, vector3d<T>& out) const {
        if (!getIntersectionOfPlaneWithLine(start, dir, out)) return false;
        return isPointInside(out);
    }

    // 0x586188 triangle3d<float>::getIntersectionWithLineSegment(segment, lengthSq, dir, box, out) const.
    // lengthSq is compared with squared distances (out to segment.start and out to segment.end). The
    // box test rejects the triangle when its corners all lie past one face of the box on some axis.
    // dir is the segment direction passed on to getIntersectionWithLine.
    bool getIntersectionWithLineSegment(const line3d<T>& segment, T lengthSq, const vector3d<T>& dir,
                                        const aabbox3d<T>& box, vector3d<T>& out) const {
        const T minX = box.MinEdge.X, maxX = box.MaxEdge.X;
        const T minY = box.MinEdge.Y, maxY = box.MaxEdge.Y;
        const T minZ = box.MinEdge.Z, maxZ = box.MaxEdge.Z;
        if (minX > A.X && minX > B.X && minX > C.X) return false;
        if (A.X > maxX && maxX < B.X && maxX < C.X) return false;
        if (minY > A.Y && minY > B.Y && minY > C.Y) return false;
        if (A.Y > maxY && maxY < B.Y && maxY < C.Y) return false;
        if (minZ > A.Z && minZ > B.Z && minZ > C.Z) return false;
        if (!((A.Z <= maxZ) || (maxZ >= B.Z) || (maxZ >= C.Z))) return false;
        if (!getIntersectionWithLine(segment.start, dir, out)) return false;
        const T dx = out.X - segment.start.X, dy = out.Y - segment.start.Y, dz = out.Z - segment.start.Z;
        if (!(lengthSq > ((dx * dx + dy * dy) + dz * dz))) return false;
        const T ex = out.X - segment.end.X, ey = out.Y - segment.end.Y, ez = out.Z - segment.end.Z;
        return lengthSq > ((ex * ex + ey * ey) + ez * ez);
    }

    // 0x5857ac triangle3d<float>::isTotalInsideBox(aabbox3d const&) const. True when all three corners
    // lie inside the box (inclusive) on every axis. Body: glitch-core-io/src/tb_core-io-glitch_core_triangle3d_float-0.cpp.
    bool isTotalInsideBox(const aabbox3d<T>& box) const;
};
template <typename T>
struct line2d {
    vector2d<T> start, end;  // +0x00, +0x08

    // 0x525310 line2d<float>::intersectWith(line2d const&, vector2d<float>&) const. Recovered for
    // float only: the explicit specialisation below is defined in
    // glitch-core-io/src/tb_core-io-glitch_core_line2d_float-0.cpp. Returns 1 and writes the
    // crossing point when the two segments meet, 0 otherwise.
    int intersectWith(const line2d& other, vector2d<T>& out) const;
};
template <>
int line2d<float>::intersectWith(const line2d<float>& other, vector2d<float>& out) const;
template <typename T>
struct line3d {
    vector3d<T> start, end;  // +0x00, +0x0c
};
template <typename T>
struct dimension2d {
    T Width{}, Height{};  // +0x00, +0x04
};
template <typename T>
struct aabbox3d {
    vector3d<T> MinEdge, MaxEdge;  // +0x00, +0x0c

    // 0x35c150 addInternalBox: grows the box to contain b. The original folds in b's MaxEdge
    // corner and then its MinEdge corner, and each corner updates both edges (strict compares,
    // per axis). For a valid box the MaxEdge corner's min update and the MinEdge corner's max
    // update change nothing, but they are kept so invalid boxes match too.
    void addInternalBox(const aabbox3d& b) {
        addInternalPoint(b.MaxEdge);
        addInternalPoint(b.MinEdge);
    }

    void addInternalPoint(const vector3d<T>& p) {
        grow(MaxEdge.X, p.X);
        shrink(MinEdge.X, p.X);
        grow(MaxEdge.Y, p.Y);
        shrink(MinEdge.Y, p.Y);
        grow(MaxEdge.Z, p.Z);
        shrink(MinEdge.Z, p.Z);
    }

    // 0x585638 getEdges(vector3d<T>* edges) const: writes the eight corners. Only the float
    // specialization is defined (glitch-core-io/src/tb_core-io-glitch_core_aabbox3d_float-0.cpp).
    void getEdges(vector3d<T>* edges) const;

    // 0x585970 intersectsWithLine_impl_1d (const): clips the parameter interval [tmin, tmax] of a
    // segment start..end (1-d) against the slab bmin..bmax. Returns false when the slab misses.
    bool intersectsWithLine_impl_1d(T bmin, T bmax, T start, T end, T& tmin, T& tmax) const {
        const T d = end - start;
        T enter = 0;
        T leave = 0;
        if (start >= end) {
            if (!(end <= bmax && start >= bmin)) return false;
            enter = start > bmax ? static_cast<T>((bmax - start) / d) : static_cast<T>(0);
            if (end < bmin) {
                leave = static_cast<T>((bmin - start) / (end - start));
            } else {
                leave = static_cast<T>(1);
            }
        } else {
            if (start > bmax || end < bmin) return false;
            enter = start < bmin ? static_cast<T>((bmin - start) / d) : static_cast<T>(0);
            if (end <= bmax) {
                leave = static_cast<T>(1);
            } else {
                leave = static_cast<T>((bmax - start) / (end - start));
            }
        }
        if (tmin < enter) tmin = enter;
        if (tmax > leave) {
            tmax = leave;
        } else {
            leave = tmax;
        }
        return tmin <= leave;
    }

    // 0x585b08 intersectsWithSegment (const): clips the segment against the three slabs.
    bool intersectsWithSegment(const line3d<T>& segment, T& tmin, T& tmax) const {
        tmin = 0;
        tmax = 1;
        return intersectsWithLine_impl_1d(MinEdge.X, MaxEdge.X, segment.start.X, segment.end.X, tmin, tmax) &&
               intersectsWithLine_impl_1d(MinEdge.Y, MaxEdge.Y, segment.start.Y, segment.end.Y, tmin, tmax) &&
               intersectsWithLine_impl_1d(MinEdge.Z, MaxEdge.Z, segment.start.Z, segment.end.Z, tmin, tmax);
    }

private:
    static void grow(T& edge, T value) {
        if (value > edge) edge = value;
    }
    static void shrink(T& edge, T value) {
        if (value < edge) edge = value;
    }
};
template <>
void aabbox3d<float>::getEdges(vector3d<float>* edges) const;
template <typename T>
struct plane3d {
    vector3d<T> Normal;  // +0x00
    T D;                 // +0x0c

    // 0x561bdc setPlane(a, b, c): Normal = (c - a) x (b - a), normalized with vector3d::normalize
    // (0x35e8e0, confirmed from the listing: a call, then D = -dot(a, Normal) with a sign-bit flip).
    void setPlane(const vector3d<T>& a, const vector3d<T>& b, const vector3d<T>& c) {
        const T ux = b.X - a.X, uy = b.Y - a.Y, uz = b.Z - a.Z;  // edge a->b
        const T wx = c.X - a.X, wy = c.Y - a.Y, wz = c.Z - a.Z;  // edge a->c
        Normal.X = wy * uz - wz * uy;
        Normal.Y = wz * ux - wx * uz;
        Normal.Z = wx * uy - wy * ux;
        Normal.normalize();
        D = -(a.X * Normal.X + a.Y * Normal.Y + a.Z * Normal.Z);
    }

    // 0x34033c getIntersectionWithLine(start, dir, out) const: returns false when N . dir == 0 (exact
    // compare). Otherwise t = -(N . start + D) / (N . dir) and out = start + t * dir.
    bool getIntersectionWithLine(const vector3d<T>& start, const vector3d<T>& dir, vector3d<T>& out) const {
        const T nd = ((Normal.X * dir.X) + (Normal.Y * dir.Y)) + (Normal.Z * dir.Z);
        if (nd == T(0)) return false;
        const T ns = ((Normal.X * start.X) + (Normal.Y * start.Y)) + (Normal.Z * start.Z);
        const T t = -(ns + D) / nd;
        out.X = start.X + (t * dir.X);
        out.Y = start.Y + (t * dir.Y);
        out.Z = start.Z + (t * dir.Z);
        return true;
    }

    // 0x40f0b4 getIntersectionWithLimitedLine(start, end, out) const: the hit must exist and must lie
    // on the segment, i.e. its squared distance to start and to end are both at most the squared
    // segment length. Writes out before the segment test, as the listing does.
    bool getIntersectionWithLimitedLine(const vector3d<T>& start, const vector3d<T>& end, vector3d<T>& out) const {
        const vector3d<T> d{end.X - start.X, end.Y - start.Y, end.Z - start.Z};
        if (!getIntersectionWithLine(start, d, out)) return false;
        const T lx = end.X - start.X, ly = end.Y - start.Y, lz = end.Z - start.Z;
        const T len2 = ((lx * lx) + (ly * ly)) + (lz * lz);
        const T sx = out.X - start.X, sy = out.Y - start.Y, sz = out.Z - start.Z;
        const T distStart = ((sx * sx) + (sy * sy)) + (sz * sz);
        const T ex = out.X - end.X, ey = out.Y - end.Y, ez = out.Z - end.Z;
        const T distEnd = ((ex * ex) + (ey * ey)) + (ez * ez);
        return len2 >= distStart && len2 >= distEnd;
    }

    // 0x341260 getIntersectionWithPlane(other, linePoint, lineVect) const: the line where this plane
    // meets other. Returns false when |det| < 1e-8, det = |N1| |N2| - (N2 . N1)^2. Otherwise
    // linePoint = c1 * N1 + c2 * N2 with c1 = (-D1 |N2| + D2 (N2 . N1)) / det and
    // c2 = (-D2 |N1| + D1 (N2 . N1)) / det, and lineVect = N2 x N1 (listing order). Implemented
    // out of line in src/tb_core-io-glitch_core_plane3d_float-0.cpp.
    bool getIntersectionWithPlane(const plane3d<T>& other, vector3d<T>& linePoint, vector3d<T>& lineVect) const;

    // 0x3415d8 getIntersectionWithPlanes(p2, p3, out) const: the point where this, p2 and p3 meet.
    // Calls getIntersectionWithPlane, then p3.getIntersectionWithLine on the result. Implemented out
    // of line in src/tb_core-io-glitch_core_plane3d_float-0.cpp.
    bool getIntersectionWithPlanes(const plane3d<T>& p2, const plane3d<T>& p3, vector3d<T>& out) const;
};
template <typename T>
struct CMatrix4 {
    enum eConstructor { EM4CONST_NOTHING, EM4CONST_COPY, EM4CONST_IDENTITY };

    CMatrix4() = default;
    // 0x631c14 (clone), 0x6c0ce4: the identity matrix, with the flag set. The decompile ignores
    // the argument and always builds the identity.
    explicit CMatrix4(eConstructor) : M{}, flag(false) {
        M[0] = M[5] = M[10] = M[15] = static_cast<T>(1);
        flag = true;
    }

    // 0x5ba19c: the flag at +0x40 caches the answer. When it is clear, each diagonal element must
    // be 1 within 1e-6 (float arithmetic, as the ARM code does: x + tol >= 1 and x - tol <= 1) and
    // every off-diagonal element must satisfy |x| <= 1e-6. A full match sets the flag. The flag is
    // written by this const method, so it is mutable.
    bool isIdentity() const {
        if (flag) return true;
        constexpr float kTolerance = 1e-6f;  // 0x358637BD
        for (int row = 0; row < 4; ++row) {
            for (int col = 0; col < 4; ++col) {
                const float x = static_cast<float>(M[row * 4 + col]);
                if (row == col) {
                    if (!(static_cast<float>(x + kTolerance) >= 1.0f &&
                          static_cast<float>(x - kTolerance) <= 1.0f)) {
                        return false;
                    }
                } else if (!(std::fabs(x) <= kTolerance)) {
                    return false;
                }
            }
        }
        flag = true;
        return true;
    }

    T M[16];  // row-major, as in the original
    mutable bool flag = false;  // +0x40: byte after the 16 values; set by the identity constructor and by isIdentity

    // 0x35e998 CMatrix4<float>::operator*(const CMatrix4&) const: this * other, through
    // detail::CMatrix4Base<float>::mult (0x35e118). DECLARED ONLY: the definition is in
    // glitch-core-io/core/matrix4_operators.hpp, so include that header to use it.
    CMatrix4 operator*(const CMatrix4& other) const;

    // Track B batch e1 (glitch-core-io/src/tb_core-io-glitch_core_CMatrix4_float-0.cpp): only the
    // float specialisations are defined there, declared after this struct.
    // 0x50fbb0 (and 11 identical clones): copy constructor, EM4CONST_COPY specialisation.
    CMatrix4(const CMatrix4& other, eConstructor constructor);
    // 0x312bf8 multiplyWith1x4Matrix(float*) const: row vector (4 values, in place) times this.
    float multiplyWith1x4Matrix(T* row) const;
    // 0x3232c0 getInverse(CMatrix4&) const: returns 1 and writes out, or returns 0 when singular.
    int getInverse(CMatrix4& out) const;
    // 0x5822f8 makeInverse(): replaces this with its inverse; returns 1 on success.
    int makeInverse();
    // 0x432bbc getRotationDegrees() const: Euler angles in degrees, each in [0, 360).
    vector3d<T> getRotationDegrees() const;
    // 0x587398 transformBox(aabbox3d&) const: no-op when the identity flag is set.
    void transformBox(aabbox3d<T>& box) const;
    // 0x597548 transformBoxEx(aabbox3d&) const: bounding box of the transformed box.
    void transformBoxEx(aabbox3d<T>& box) const;
    // 0x597788 postScale(const vector3d&): scales rows 0..2 (columns 0..2) by x, y, z.
    void postScale(const vector3d<T>& scale);

    // 0x31f790 getTransposed: out[i] = this[(i % 4) * 4 + i / 4]; the flag is copied.
    void getTransposed(CMatrix4& out) const {
        out.flag = false;
        for (int i = 0; i < 16; ++i) out.M[i] = M[(i % 4) * 4 + i / 4];
        out.flag = flag;
    }

    // 0x598ee4 getScale: the length of each of the three rows (elements 0..2, 4..6, 8..10).
    vector3d<T> getScale() const {
        return {static_cast<T>(std::sqrt(M[0] * M[0] + M[1] * M[1] + M[2] * M[2])),
                static_cast<T>(std::sqrt(M[4] * M[4] + M[5] * M[5] + M[6] * M[6])),
                static_cast<T>(std::sqrt(M[8] * M[8] + M[9] * M[9] + M[10] * M[10]))};
    }

    // 0x35dd08 transformPlane (const): plane.Normal becomes the rotation part of the matrix applied
    // to the normal; plane.D becomes -(P' . N') where P' is the matrix applied to the point -D*N.
    // The listing is row-major with the translation in elements 12..14.
    void transformPlane(plane3d<T>& plane) const {
        const T nx = plane.Normal.X, ny = plane.Normal.Y, nz = plane.Normal.Z;
        const T d = static_cast<T>(-plane.D);
        const T px = d * nx, py = d * ny, pz = d * nz;
        // Transformed point P' = M * (-D * N) (translation included).
        const T pX = px * M[0] + py * M[4] + pz * M[8] + M[12];
        const T pY = px * M[1] + py * M[5] + pz * M[9] + M[13];
        const T pZ = px * M[2] + py * M[6] + pz * M[10] + M[14];
        // Transformed normal: M * N minus M * origin (the translation cancels).
        const T tnX = nx * M[0] + ny * M[4] + nz * M[8];
        const T tnY = nx * M[1] + ny * M[5] + nz * M[9];
        const T tnZ = nx * M[2] + ny * M[6] + nz * M[10];
        plane.Normal.X = tnX;
        plane.Normal.Y = tnY;
        plane.Normal.Z = tnZ;
        plane.D = static_cast<T>(-(pX * tnX + pY * tnY + pZ * tnZ));
    }

    // 0x6c7cf0 setRotationRadians: writes the rotation part from angles (x, y, z) in radians. Elements
    // 3, 7, 11 and 12..15 are not written by the listing and keep their values; the flag is cleared.
    // The products and sums are done in double (the listing converts the cosf/sinf results with __aeabi_f2d, uses __aeabi_dmul and
    // __aeabi_dsub / dadd, and rounds each element with __aeabi_d2f); sin(y) stays a float, so element 2 is its negation.
    void setRotationRadians(const vector3d<T>& angles) {
        const double cx = std::cos(angles.X), sx = std::sin(angles.X);
        const T sy = std::sin(angles.Y);
        const double cy = std::cos(angles.Y);
        const double cz = std::cos(angles.Z), sz = std::sin(angles.Z);
        flag = false;
        M[0] = static_cast<T>(cy * cz);
        M[1] = static_cast<T>(cy * sz);
        M[2] = -sy;
        const double sxsy = sx * static_cast<double>(sy);
        const double cxsy = cx * static_cast<double>(sy);
        M[4] = static_cast<T>(sxsy * cz - cx * sz);
        M[5] = static_cast<T>(sxsy * sz + cx * cz);
        M[6] = static_cast<T>(sx * cy);
        M[8] = static_cast<T>(cxsy * cz + sx * sz);
        M[9] = static_cast<T>(cxsy * sz - sx * cz);
        M[10] = static_cast<T>(cx * cy);
    }
};
// Float specialisations of the CMatrix4 members declared above (defined in tb_core-io-glitch_core_CMatrix4_float-0.cpp).
template <>
CMatrix4<float>::CMatrix4(const CMatrix4<float>& other, CMatrix4<float>::eConstructor constructor);
template <>
float CMatrix4<float>::multiplyWith1x4Matrix(float* row) const;
template <>
int CMatrix4<float>::getInverse(CMatrix4<float>& out) const;
template <>
int CMatrix4<float>::makeInverse();
template <>
vector3d<float> CMatrix4<float>::getRotationDegrees() const;
template <>
void CMatrix4<float>::transformBox(aabbox3d<float>& box) const;
template <>
void CMatrix4<float>::transformBoxEx(aabbox3d<float>& box) const;
template <>
void CMatrix4<float>::postScale(const vector3d<float>& scale);
}  // namespace glitch::core

namespace glitch::video {

// SColor is one 32-bit word; the original reads alpha as the byte at +3 (getInterpolated 0x540f8c) and bytes
// 0, 1 and 2 as the three colour components in the order the stream operators print them
// (operator<< 0x310178, operator>> 0x3102b4; the latter stores 0 in byte 3). Component 0 is the low byte of
// `color`. The channel names of bytes 0..2 are not recoverable from the listings seen, so the accessors below
// are by index (core-platform's stand-in calls them R, G, B, A).
struct SColor {
    std::uint32_t color = 0;  // +0x00

    // Byte i of the word (0 = low byte, 3 = alpha).
    std::uint8_t component(int i) const { return static_cast<std::uint8_t>((color >> (8 * i)) & 0xffu); }
    void setComponent(int i, std::uint8_t v) {
        color = (color & ~(0xffu << (8 * i))) | (static_cast<std::uint32_t>(v) << (8 * i));
    }

    // 0x540f8c. Channels are bytes 0..3 of color (byte 0 is the low byte, as in memory). Result is the
    // blend t * this + (1 - t) * other, with t clamped to [0, 1].
    SColor getInterpolated(const SColor& other, float t) const;
};

// Float colour, four words (r, g, b, a) in the original.
struct SColorf {
    float r = 0.0f;  // +0x00
    float g = 0.0f;  // +0x04
    float b = 0.0f;  // +0x08
    float a = 0.0f;  // +0x0c
};

}  // namespace glitch::video
