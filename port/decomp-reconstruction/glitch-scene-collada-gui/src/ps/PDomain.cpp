// Bodies of glitch::ps::PSRandom and the particle domains (ps/PDomain.hpp), transcribed from the listings 0x62fe78 .. 0x69efac.
// The matrices are read as the 16 floats M[0..15]; the translation is M[12..14].
#include "glitch-scene-collada-gui/ps/PDomain.hpp"

#include <cmath>

#include "vendor-lua/dh2_rand48.hpp"

namespace glitch::ps {

namespace {
// glitch::ps::vHalf (0x9f75e8, filled by a static initialiser): the centre of the unit cube.
constexpr float kHalf = 0.5f;

// The basis the cone and cylinder constructors build around the axis `n` (already normalised by the inverse length): the vector
// (1, 0, 0) - n * (n . (1, 0, 0)) or, when the axis is nearly along x, (0, 1, 0) - n * (n . (0, 1, 0)), normalised; then the cross
// product written out in the listings' operand order. Stores u at `uOut` and v at `vOut`.
void buildBasis(float nx, float ny, float nz, core::vector3d<float>& u, core::vector3d<float>& v) {
    const bool nearlyX = std::fabs(static_cast<double>((nx + (ny * 0.0f)) + (nz * 0.0f))) > 0.999;
    const float a = nearlyX ? 0.0f : 1.0f;
    const float b = nearlyX ? 1.0f : 0.0f;
    const float d = (nz * 0.0f) + ((a * nx) + (b * ny));
    u.X = a - (nx * d);
    u.Y = b - (ny * d);
    u.Z = 0.0f - (nz * d);
    u.normalize();
    const float ux = u.X;
    const float uy = u.Y;
    const float uz = u.Z;
    v.X = ((-ny) * uz) + (nz * uy);
    v.Y = ((-nz) * ux) + (nx * uz);
    v.Z = (uy * (-nx)) + (ny * ux);
}
}  // namespace

// 0x62fe78 _ZN6glitch2ps8PSRandom4RandEv
double PSRandom::Rand() {
    std::int32_t value = static_cast<std::int32_t>(static_cast<std::uint32_t>(48271 * (seed % 44488)) +
                                                   static_cast<std::uint32_t>(3399 * (seed / -44488)));
    seed = value;
    if (value < 0) {
        value = static_cast<std::int32_t>(static_cast<std::uint32_t>(value) + 0x7FFFFFFFu);
        seed = value;
    }
    return static_cast<double>(value) / 2147483647.0;  // the listing builds 0x41dfffffffc00000; Hex-Rays prints it as 2147483650.0
}

// 0x637ac4 _ZN6glitch2ps8PSRandom7RandVecEv
core::vector3d<float> PSRandom::RandVec() {
    const double x = Rand();
    const double y = Rand();
    const double z = Rand();
    core::vector3d<float> result;
    result.X = static_cast<float>(x);
    result.Y = static_cast<float>(y);
    result.Z = static_cast<float>(z);
    return result;
}

// 0x69c4ac _ZN6glitch2ps8PSRandom6NRandfEf
float PSRandom::NRandf(float scale) {
    float x;
    float s;
    do {
        do {
            const float a = static_cast<float>(Rand());
            x = (a + a) - 1.0f;
            const float b = static_cast<float>(Rand());
            const float y = (b + b) - 1.0f;
            s = (x * x) + (y * y);
        } while (s > 1.0f);
    } while (s == 0.0f);
    const float factor = static_cast<float>((static_cast<double>(std::log(s)) * -2.0) / static_cast<double>(s));
    return (x * std::sqrt(factor)) * scale;
}

// 0x69c57c _ZN6glitch2ps8PSRandom8NRandVecEf
core::vector3d<float> PSRandom::NRandVec(float scale) {
    float x;
    float y;
    float s;
    do {
        do {
            const float a = static_cast<float>(Rand());
            x = (a + a) - 1.0f;
            const float b = static_cast<float>(Rand());
            y = (b + b) - 1.0f;
            s = (x * x) + (y * y);
        } while (s > 1.0f);
    } while (s == 0.0f);
    const float factor = std::sqrt(static_cast<float>((static_cast<double>(std::log(s)) * -2.0) / static_cast<double>(s)));
    const float z = NRandf(scale);
    core::vector3d<float> result;
    result.X = (x * factor) * scale;
    result.Z = z;
    result.Y = (y * factor) * scale;
    return result;
}

PDomain::~PDomain() = default;

// ---- PDPoint ----
PDPoint::PDPoint(const core::vector3d<float>& value) : point(value) {}

bool PDPoint::within(const core::vector3d<float>& value) const {
    return point.X == value.X && point.Y == value.Y && point.Z == value.Z;
}

core::vector3d<float> PDPoint::generate(PSRandom&) const {
    return point;
}

void PDPoint::transform(const core::CMatrix4<float>& matrix) {
    point.X = point.X + matrix.M[12];
    point.Y = point.Y + matrix.M[13];
    point.Z = point.Z + matrix.M[14];
}

float PDPoint::size() const { return 1.0f; }
std::uint32_t PDPoint::getType() const { return 3; }

PDomain* PDPoint::copy() const {
    auto* result = new PDPoint();
    result->point = point;
    return result;
}

// ---- PDLine ----
PDLine::PDLine(const core::vector3d<float>& startPoint, const core::vector3d<float>& endPoint) {
    start = startPoint;
    const float dx = endPoint.X - startPoint.X;
    const float dy = endPoint.Y - startPoint.Y;
    const float dz = endPoint.Z - startPoint.Z;
    axis = core::vector3d<float>{dx, dy, dz};
    direction = core::vector3d<float>{dx, dy, dz};
    direction.normalize();
    length = static_cast<float>(std::sqrt(static_cast<double>(((axis.X * axis.X) + (axis.Y * axis.Y)) + (axis.Z * axis.Z))));
}

bool PDLine::within(const core::vector3d<float>& value) const {
    const float dx = value.X - start.X;
    const float dy = value.Y - start.Y;
    const float dz = value.Z - start.Z;
    const float along = ((dx * direction.X) + (dy * direction.Y)) + (dz * direction.Z);
    const float distance = static_cast<float>(std::sqrt(static_cast<double>(((dx * dx) + (dy * dy)) + (dz * dz))));
    return (std::fabs(static_cast<double>(along - distance)) / static_cast<double>(length)) < 0.0000001;
}

core::vector3d<float> PDLine::generate(PSRandom& random) const {
    const float t = static_cast<float>(random.Rand());
    core::vector3d<float> result;
    const float y = (t * axis.Y) + start.Y;
    const float z = (t * axis.Z) + start.Z;
    result.X = (t * axis.X) + start.X;
    result.Y = y;
    result.Z = z;
    return result;
}

void PDLine::transform(const core::CMatrix4<float>& m) {
    // start, axis and the direction are each moved by the matrix including its translation (the listing does the same for all three).
    core::vector3d<float>* vectors[3] = {&start, &axis, &direction};
    for (core::vector3d<float>* p : vectors) {
        const float x = p->X;
        const float y = p->Y;
        const float z = p->Z;
        const float ny = (((x * m.M[1]) + (y * m.M[5])) + (z * m.M[9])) + m.M[13];
        const float nz = (((x * m.M[2]) + (y * m.M[6])) + (z * m.M[10])) + m.M[14];
        p->X = (((x * m.M[0]) + (y * m.M[4])) + (z * m.M[8])) + m.M[12];
        p->Y = ny;
        p->Z = nz;
    }
}

float PDLine::size() const { return length; }
std::uint32_t PDLine::getType() const { return 4; }

PDomain* PDLine::copy() const {
    auto* result = new PDLine();
    *result = *this;
    return result;
}

// ---- PDBox ----
PDBox::PDBox(const core::vector3d<float>& c1, const core::vector3d<float>& c2) {
    minCorner = c1;
    maxCorner = c2;
    if (c2.X < c1.X) {
        minCorner.X = c2.X;
        maxCorner.X = c1.X;
    }
    if (c2.Y < c1.Y) {
        minCorner.Y = c2.Y;
        maxCorner.Y = c1.Y;
    }
    if (c2.Z < c1.Z) {
        minCorner.Z = c2.Z;
        maxCorner.Z = c1.Z;
    }
    const float v4 = maxCorner.Z;
    const float v5 = minCorner.Z;
    const float sx = maxCorner.X - minCorner.X;
    const float sy = maxCorner.Y - minCorner.Y;
    const float sz = v4 - v5;
    extent = core::vector3d<float>{sx, sy, sz};
    sizes = core::vector3d<float>{sx, sy, sz};
    axisX = core::vector3d<float>{sx, 0.0f, 0.0f};
    axisY = core::vector3d<float>{0.0f, sy, 0.0f};
    axisZ = core::vector3d<float>{0.0f, 0.0f, sz};
    extentSum = sz + (sx + sy);
}

PDBox::PDBox(float width, float height, float depth) {
    sizes = core::vector3d<float>{width, height, depth};
    minCorner = core::vector3d<float>{width * -0.5f, height * -0.5f, depth * -0.5f};
    maxCorner = core::vector3d<float>{width * 0.5f, height * 0.5f, depth * 0.5f};
    extent = core::vector3d<float>{width, height, depth};
    axisX = core::vector3d<float>{width, 0.0f, 0.0f};
    axisY = core::vector3d<float>{0.0f, height, 0.0f};
    axisZ = core::vector3d<float>{0.0f, 0.0f, depth};
    extentSum = depth + (width + height);
}

bool PDBox::within(const core::vector3d<float>& p) const {
    // The listing rejects with `x < min` and `x > max` (the float helpers 0x30e70c and 0x30e2f8) and accepts otherwise, so a NaN
    // coordinate is inside; Hex-Rays prints the negation as >= and <=.
    return !(p.X < minCorner.X) && !(p.X > maxCorner.X) && !(p.Y < minCorner.Y) && !(p.Y > maxCorner.Y) && !(p.Z < minCorner.Z) &&
           !(p.Z > maxCorner.Z);
}

core::vector3d<float> PDBox::generate(PSRandom& random) const {
    const core::vector3d<float> r = random.RandVec();
    core::vector3d<float> result;
    const float y = (((r.X * axisX.Y) + minCorner.Y) + (r.Y * axisY.Y)) + (r.Z * axisZ.Y);
    const float z = (((r.X * axisX.Z) + minCorner.Z) + (r.Y * axisY.Z)) + (r.Z * axisZ.Z);
    result.X = (((r.X * axisX.X) + minCorner.X) + (r.Y * axisY.X)) + (r.Z * axisZ.X);
    result.Y = y;
    result.Z = z;
    return result;
}

void PDBox::transform(const core::CMatrix4<float>& m) {
    const float lowX = sizes.X * -0.5f;
    const float lowY = sizes.Y * -0.5f;
    const float lowZ = sizes.Z * -0.5f;
    const float highX = sizes.X * 0.5f;
    const float highY = sizes.Y * 0.5f;
    const float highZ = sizes.Z * 0.5f;
    const float newMinX = (((lowX * m.M[0]) + (lowY * m.M[4])) + (lowZ * m.M[8])) + m.M[12];
    const float newMinY = (((lowX * m.M[1]) + (lowY * m.M[5])) + (lowZ * m.M[9])) + m.M[13];
    const float newMinZ = (((lowX * m.M[2]) + (lowY * m.M[6])) + (lowZ * m.M[10])) + m.M[14];
    minCorner = core::vector3d<float>{newMinX, newMinY, newMinZ};
    const float newMaxX = (((highX * m.M[0]) + (highY * m.M[4])) + (highZ * m.M[8])) + m.M[12];
    const float newMaxY = (((highX * m.M[1]) + (highY * m.M[5])) + (highZ * m.M[9])) + m.M[13];
    const float newMaxZ = (((highX * m.M[2]) + (highY * m.M[6])) + (highZ * m.M[10])) + m.M[14];
    maxCorner = core::vector3d<float>{newMaxX, newMaxY, newMaxZ};
    axisX.X = ((sizes.X * m.M[0]) + (m.M[4] * 0.0f)) + (m.M[8] * 0.0f);
    axisX.Y = ((sizes.X * m.M[1]) + (m.M[5] * 0.0f)) + (m.M[9] * 0.0f);
    axisX.Z = ((sizes.X * m.M[2]) + (m.M[6] * 0.0f)) + (m.M[10] * 0.0f);
    axisY.X = ((m.M[0] * 0.0f) + (sizes.Y * m.M[4])) + (m.M[8] * 0.0f);
    axisY.Y = ((m.M[1] * 0.0f) + (sizes.Y * m.M[5])) + (m.M[9] * 0.0f);
    axisY.Z = ((m.M[2] * 0.0f) + (sizes.Y * m.M[6])) + (m.M[10] * 0.0f);
    axisZ.X = ((m.M[0] * 0.0f) + (m.M[4] * 0.0f)) + (sizes.Z * m.M[8]);
    axisZ.Y = ((m.M[1] * 0.0f) + (m.M[5] * 0.0f)) + (sizes.Z * m.M[9]);
    axisZ.Z = ((m.M[2] * 0.0f) + (m.M[6] * 0.0f)) + (sizes.Z * m.M[10]);
    extent = core::vector3d<float>{newMaxX - newMinX, newMaxY - newMinY, newMaxZ - newMinZ};
}

float PDBox::size() const { return extentSum; }
std::uint32_t PDBox::getType() const { return 0; }

PDomain* PDBox::copy() const {
    auto* result = new PDBox();
    *result = *this;
    return result;
}

// ---- PDSphere ----
PDSphere::PDSphere(const core::vector3d<float>& centerPoint, float r1, float r2) {
    center = centerPoint;
    float maxRadius = r2;
    if (r1 < r2) {
        radiusMin = r1;
        radiusMax = r2;
    } else {
        radiusMin = r2;
        maxRadius = r1;
        radiusMax = r1;
    }
    const float maxSquared = maxRadius * maxRadius;
    const float minRadius = radiusMin;
    radiusMaxSquared = maxSquared;
    const float minSquared = minRadius * minRadius;
    radiusMinSquared = minSquared;
    shell = minRadius == radiusMax ? 1 : 0;
    radiusRange = radiusMax - radiusMin;
    if (shell != 0) {
        volume = static_cast<float>(static_cast<double>(maxSquared) * 12.5663706);
    } else {
        const float outer = static_cast<float>(static_cast<double>(maxSquared) * 4.18879033 * static_cast<double>(radiusMax));
        const float inner = static_cast<float>(static_cast<double>(minSquared) * 4.18879033 * static_cast<double>(radiusMin));
        volume = outer - inner;
    }
}

bool PDSphere::within(const core::vector3d<float>& p) const {
    const float dx = p.X - center.X;
    const float dz = p.Z - center.Z;
    const float dy = p.Y - center.Y;
    const float d = ((dx * dx) + (dy * dy)) + (dz * dz);
    return radiusMaxSquared >= d && radiusMinSquared <= d;
}

core::vector3d<float> PDSphere::generate(PSRandom& random) const {
    core::vector3d<float> result{0.0f, 0.0f, 0.0f};
    float x;
    float y;
    float z;
    do {
        const core::vector3d<float> r = random.RandVec();
        x = r.X - kHalf;
        y = r.Y - kHalf;
        z = r.Z - kHalf;
        result.X = x;
        result.Y = y;
        result.Z = z;
    } while ((((x * x) + (y * y)) + (z * z)) > 0.25f);
    result.normalize();
    float radius;
    if (shell != 0) {
        radius = radiusMax;
    } else {
        const float minRadius = radiusMin;
        const float t = static_cast<float>(random.Rand());
        radius = minRadius + (t * radiusRange);
    }
    const float ry = (radius * result.Y) + center.Y;
    const float rz = (radius * result.Z) + center.Z;
    const float rx = (radius * result.X) + center.X;
    result.Y = ry;
    result.X = rx;
    result.Z = rz;
    return result;
}

void PDSphere::transform(const core::CMatrix4<float>& matrix) {
    center = core::vector3d<float>{matrix.M[12], matrix.M[13], matrix.M[14]};
}

float PDSphere::size() const { return volume; }
std::uint32_t PDSphere::getType() const { return 1; }

PDomain* PDSphere::copy() const {
    auto* result = new PDSphere();
    *result = *this;
    return result;
}

// ---- PDBlob ----
PDBlob::PDBlob(const core::vector3d<float>& centerPoint, float sigmaValue) {
    center = centerPoint;
    sigma = sigmaValue;
    // All in float: the listing loads the float constants 1e-12f (0x2b8cbccc) and 0.39894228f (0x3ecc422a); Hex-Rays prints them as
    // 1.0e-12 and 0.39894.
    const float inverse = 1.0f / (sigmaValue + 1.0e-12f);
    negHalfInvSigmaSquared = (inverse * inverse) * -0.5f;
    gaussNorm = inverse * 0.39894228f;
}

// A point is inside with the probability of the Gauss curve at its distance: the test draws lrand48() / 2^31.
bool PDBlob::within(const core::vector3d<float>& p) const {
    const float dx = p.X - center.X;
    const float dy = p.Y - center.Y;
    const float dz = p.Z - center.Z;
    const float density = std::exp((((dx * dx) + (dy * dy)) + (dz * dz)) * negHalfInvSigmaSquared) * gaussNorm;
    return density > static_cast<float>(static_cast<double>(static_cast<float>(dh2::rand48_next())) * 4.6566e-10);
}

core::vector3d<float> PDBlob::generate(PSRandom& random) const {
    const core::vector3d<float> r = random.NRandVec(sigma);
    core::vector3d<float> result;
    const float z = center.Z + r.Z;
    const float x = center.X + r.X;
    result.Y = center.Y + r.Y;
    result.X = x;
    result.Z = z;
    return result;
}

void PDBlob::transform(const core::CMatrix4<float>& matrix) {
    center = core::vector3d<float>{matrix.M[12], matrix.M[13], matrix.M[14]};
}

float PDBlob::size() const { return 1.0f; }
std::uint32_t PDBlob::getType() const { return 6; }

PDomain* PDBlob::copy() const {
    auto* result = new PDBlob();
    *result = *this;
    return result;
}

// ---- PDCone ----
PDCone::PDCone(const core::vector3d<float>& startPoint, const core::vector3d<float>& endPoint, float r1, float r2) {
    start = startPoint;
    const float ay = endPoint.Y - startPoint.Y;
    const float az = endPoint.Z - startPoint.Z;
    axis = core::vector3d<float>{endPoint.X - startPoint.X, ay, az};
    float maxRadius = r2;
    if (r1 < r2) {
        radiusMin = r1;
        radiusMax = r2;
    } else {
        radiusMin = r2;
        maxRadius = r1;
        radiusMax = r1;
    }
    radiusMaxSquared = maxRadius * maxRadius;
    radiusMinSquared = radiusMin * radiusMin;
    uniform = radiusMin == radiusMax ? 1 : 0;
    radiusRange = radiusMax - radiusMin;
    const float lengthSquared = ((axis.X * axis.X) + (axis.Y * axis.Y)) + (axis.Z * axis.Z);
    const float length = std::sqrt(lengthSquared);
    invAxisLengthSquared = lengthSquared == 0.0f ? 0.0f : static_cast<float>(1.0 / static_cast<double>(lengthSquared));
    const float scale = std::sqrt(invAxisLengthSquared);
    buildBasis(scale * axis.X, scale * axis.Y, scale * axis.Z, u, v);
    if (uniform != 0) {
        volume = static_cast<float>(static_cast<double>(std::sqrt(lengthSquared + radiusMaxSquared)) * 3.141592653589793 *
                                    static_cast<double>(radiusMax));
    } else {
        const float outer = static_cast<float>(static_cast<double>(radiusMaxSquared) * 1.04719758 * static_cast<double>(length));
        const float inner = static_cast<float>(static_cast<double>(length) * (static_cast<double>(radiusMinSquared) * 1.04719758));
        volume = outer - inner;
    }
}

bool PDCone::within(const core::vector3d<float>& p) const {
    const float dx = p.X - start.X;
    const float dz = p.Z - start.Z;
    const float t = ((((dx * axis.X) + ((p.Y - start.Y) * axis.Y)) + (dz * axis.Z))) * invAxisLengthSquared;
    if (t < 0.0f) return false;
    if (t > 1.0f) return false;
    const float dy = p.Y - start.Y;
    const float d = ((((dx - (t * axis.X)) * (dx - (t * axis.X))) + ((dy - (t * axis.Y)) * (dy - (t * axis.Y)))) +
                     ((dz - (t * axis.Z)) * (dz - (t * axis.Z))));
    return d >= ((t * radiusMin) * (t * radiusMin)) && d <= ((t * radiusMax) * (t * radiusMax));
}

core::vector3d<float> PDCone::generate(PSRandom& random) const {
    const float t = static_cast<float>(random.Rand());
    const float a = static_cast<float>(random.Rand());
    const float angle = static_cast<float>(static_cast<double>(a + a) * 3.1416);
    const float b = static_cast<float>(random.Rand());
    const float radius = radiusMin + (b * radiusRange);
    const float c = std::cos(angle) * radius;
    const float s = std::sin(angle) * radius;
    const float cu = c * t;
    const float y = (((t * axis.Y) + start.Y) + (cu * u.Y)) + ((s * t) * v.Y);
    const float z = (((t * axis.Z) + start.Z) + (cu * u.Z)) + ((s * t) * v.Z);
    core::vector3d<float> result;
    result.X = (((t * axis.X) + start.X) + (cu * u.X)) + ((s * t) * v.X);
    result.Y = y;
    result.Z = z;
    return result;
}

void PDCone::transform(const core::CMatrix4<float>&) {}
float PDCone::size() const { return volume; }
std::uint32_t PDCone::getType() const { return 5; }

PDomain* PDCone::copy() const {
    auto* result = new PDCone();
    *result = *this;
    return result;
}

// ---- PDCylinder ----
PDCylinder::PDCylinder(float h, float radius) {
    height = h;
    start.Y = h * -0.5f;
    axis.Y = h;
    const float lengthSquared = ((h * h) + 0.0f) + 0.0f;
    const float length = std::sqrt(lengthSquared);
    invAxisLengthSquared = lengthSquared == 0.0f ? 0.0f : static_cast<float>(1.0 / static_cast<double>(lengthSquared));
    const float scale = std::sqrt(invAxisLengthSquared);
    const float nx = scale * 0.0f;
    const float ny = h * scale;
    // The listing's operand order for this constructor: the third basis component reuses nx where the general form uses nz.
    const float zero = (scale * 0.0f) * 0.0f;
    const bool nearlyX = std::fabs(static_cast<double>((nx + (ny * 0.0f)) + (nx * 0.0f))) > 0.999;
    const float a = nearlyX ? 0.0f : 1.0f;
    const float b = nearlyX ? 1.0f : 0.0f;
    const float d = zero + ((a * nx) + (b * ny));
    u.X = a - (nx * d);
    u.Y = b - (ny * d);
    u.Z = 0.0f - (nx * d);
    u.normalize();
    const float uz = u.Z;
    const float uy = u.Y;
    const float ux = u.X;
    v.X = ((-ny) * uz) + (nx * uy);
    v.Y = ((-nx) * ux) + (nx * uz);
    v.Z = (uy * (-nx)) + (ny * ux);
    radiusMin = 0.0f;
    radiusRange = radius;
    radiusMax = radius;
    uniform = 0;
    radiusMinSquared = 0.0f;
    radiusMaxSquared = radius * radius;
    volume = length * static_cast<float>(static_cast<double>(radius * radius) * 3.141592653589793);
}

PDCylinder::PDCylinder(const core::vector3d<float>& startPoint, const core::vector3d<float>& endPoint, float r1, float r2) {
    start = startPoint;
    axis = core::vector3d<float>{endPoint.X - startPoint.X, endPoint.Y - startPoint.Y, endPoint.Z - startPoint.Z};
    float maxRadius = r2;
    if (r1 < r2) {
        radiusMin = r1;
        radiusMax = r2;
    } else {
        radiusMin = r2;
        maxRadius = r1;
        radiusMax = r1;
    }
    radiusMaxSquared = maxRadius * maxRadius;
    radiusMinSquared = radiusMin * radiusMin;
    uniform = radiusMin == radiusMax ? 1 : 0;
    radiusRange = radiusMax - radiusMin;
    const float lengthSquared = ((axis.X * axis.X) + (axis.Y * axis.Y)) + (axis.Z * axis.Z);
    const float length = std::sqrt(lengthSquared);
    invAxisLengthSquared = lengthSquared == 0.0f ? 0.0f : static_cast<float>(1.0 / static_cast<double>(lengthSquared));
    const float scale = std::sqrt(invAxisLengthSquared);
    buildBasis(scale * axis.X, scale * axis.Y, scale * axis.Z, u, v);
    if (uniform != 0) {
        volume = static_cast<float>(static_cast<double>(length + length) * 3.141592653589793 * static_cast<double>(radiusMax));
    } else {
        const float section = static_cast<float>(static_cast<double>(radiusMaxSquared) * 3.141592653589793 +
                                                 static_cast<double>(radiusMinSquared) * -3.141592653589793);
        volume = length * section;
    }
}

bool PDCylinder::within(const core::vector3d<float>& p) const {
    const float dx = p.X - start.X;
    const float dz = p.Z - start.Z;
    const float t = (((dx * axis.X) + ((p.Y - start.Y) * axis.Y)) + (dz * axis.Z)) * invAxisLengthSquared;
    if (t < 0.0f) return false;
    if (t > 1.0f) return false;
    const float dy = p.Y - start.Y;
    const float d = ((((dx - (t * axis.X)) * (dx - (t * axis.X))) + ((dy - (t * axis.Y)) * (dy - (t * axis.Y)))) +
                     ((dz - (t * axis.Z)) * (dz - (t * axis.Z))));
    return radiusMinSquared <= d && radiusMaxSquared >= d;
}

core::vector3d<float> PDCylinder::generate(PSRandom& random) const {
    const float t = static_cast<float>(random.Rand());
    const float a = static_cast<float>(random.Rand());
    const float angle = static_cast<float>(static_cast<double>(a + a) * 3.1416);
    const float b = static_cast<float>(random.Rand());
    const float radius = radiusMin + (b * radiusRange);
    const float c = std::cos(angle) * radius;
    const float s = std::sin(angle) * radius;
    const float y = (((t * axis.Y) + start.Y) + (c * u.Y)) + (s * v.Y);
    const float z = (((t * axis.Z) + start.Z) + (c * u.Z)) + (s * v.Z);
    core::vector3d<float> result;
    result.X = (((t * axis.X) + start.X) + (c * u.X)) + (s * v.X);
    result.Y = y;
    result.Z = z;
    return result;
}

// Rebuilds the cylinder along y from its height (the listing ignores the current orientation), then moves start, axis, u and v by the
// matrix. The listing does not add the translation to any of them.
void PDCylinder::transform(const core::CMatrix4<float>& m) {
    const float h = height;
    start.Y = h * -0.5f;
    start.X = 0.0f;
    start.Z = 0.0f;
    axis.X = 0.0f;
    axis.Y = h;
    axis.Z = 0.0f;
    const float lengthSquared = ((h * h) + 0.0f) + 0.0f;
    invAxisLengthSquared = lengthSquared == 0.0f ? 0.0f : static_cast<float>(1.0 / static_cast<double>(lengthSquared));
    const float scale = std::sqrt(invAxisLengthSquared);
    const float nx = scale * 0.0f;
    const float ny = h * scale;
    const float zero = (scale * 0.0f) * 0.0f;
    const bool nearlyX = std::fabs(static_cast<double>((nx + (ny * 0.0f)) + (nx * 0.0f))) > 0.999;
    const float a = nearlyX ? 0.0f : 1.0f;
    const float b = nearlyX ? 1.0f : 0.0f;
    const float d = zero + ((a * nx) + (b * ny));
    u.X = a - (nx * d);
    u.Y = b - (ny * d);
    u.Z = 0.0f - (nx * d);
    u.normalize();
    const float uz = u.Z;
    const float uy = u.Y;
    const float ux = u.X;
    const float v0 = ((-ny) * uz) + (nx * uy);
    const float v1 = ((-nx) * ux) + (nx * uz);
    const float v2 = (uy * (-nx)) + (ny * ux);
    v.Z = v2;
    v.X = v0;
    v.Y = v1;
    const float sx = start.X;
    const float sy = start.Y;
    const float sz = start.Z;
    start.X = ((sx * m.M[0]) + (sy * m.M[4])) + (sz * m.M[8]);
    start.Y = ((sx * m.M[1]) + (sy * m.M[5])) + (sz * m.M[9]);
    start.Z = ((sx * m.M[2]) + (sy * m.M[6])) + (sz * m.M[10]);
    const float ax = axis.X;
    const float ay = axis.Y;
    const float az = axis.Z;
    axis.X = ((ax * m.M[0]) + (ay * m.M[4])) + (az * m.M[8]);
    axis.Y = ((ax * m.M[1]) + (ay * m.M[5])) + (az * m.M[9]);
    axis.Z = ((ax * m.M[2]) + (ay * m.M[6])) + (az * m.M[10]);
    u.X = ((ux * m.M[0]) + (uy * m.M[4])) + (uz * m.M[8]);
    u.Y = ((ux * m.M[1]) + (uy * m.M[5])) + (uz * m.M[9]);
    u.Z = ((ux * m.M[2]) + (uy * m.M[6])) + (uz * m.M[10]);
    v.X = ((v0 * m.M[0]) + (v1 * m.M[4])) + (v2 * m.M[8]);
    v.Y = ((v0 * m.M[1]) + (v1 * m.M[5])) + (v2 * m.M[9]);
    v.Z = ((v0 * m.M[2]) + (v1 * m.M[6])) + (v2 * m.M[10]);
}

float PDCylinder::size() const { return volume; }
std::uint32_t PDCylinder::getType() const { return 2; }

PDomain* PDCylinder::copy() const {
    auto* result = new PDCylinder();
    *result = *this;
    return result;
}

}  // namespace glitch::ps
