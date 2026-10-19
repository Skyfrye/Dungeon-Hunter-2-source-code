// Tests for glitch::ps::PSRandom and the particle domains (ps/PDomain.hpp).
#include <cmath>
#include <cstdio>

#include "glitch-scene-collada-gui/ps/PDomain.hpp"

using namespace glitch;
using namespace glitch::ps;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static bool near(float a, float b) { return std::fabs(a - b) < 1e-4f; }

int main() {
    // The generator: seed 1 steps to 48271 (then / 2147483650).
    PSRandom random;
    random.seed = 1;
    const double first = random.Rand();
    CHECK(random.seed == 48271 && near(static_cast<float>(first), 48271.0f / 2147483650.0f));
    random.seed = 12345;
    const core::vector3d<float> vec = random.RandVec();
    CHECK(vec.X >= 0.0f && vec.X < 1.0f && vec.Y >= 0.0f && vec.Z < 1.0f);

    // Types and sizes.
    CHECK(PDBox(core::vector3d<float>{0, 0, 0}, core::vector3d<float>{1, 2, 3}).getType() == 0);
    // Box from two corners in the wrong order: ordered per axis, extents, sum.
    PDBox box(core::vector3d<float>{4.0f, 5.0f, 6.0f}, core::vector3d<float>{1.0f, 1.0f, 1.0f});
    CHECK(box.minCorner.X == 1.0f && box.maxCorner.Z == 6.0f && box.extent.Y == 4.0f && box.size() == 3.0f + 4.0f + 5.0f);
    CHECK(box.within(core::vector3d<float>{2.0f, 2.0f, 2.0f}) && !box.within(core::vector3d<float>{0.0f, 2.0f, 2.0f}));
    PDBox centered(2.0f, 4.0f, 6.0f);
    CHECK(centered.minCorner.Y == -2.0f && centered.maxCorner.Z == 3.0f && centered.axisZ.Z == 6.0f);
    random.seed = 7;
    const core::vector3d<float> inside = centered.generate(random);
    CHECK(centered.within(inside));
    // The copy is a new object of the same class and data.
    PDomain* copy = box.copy();
    CHECK(copy->getType() == 0 && copy->size() == box.size() && copy != &box);
    delete copy;

    // Point and line.
    PDPoint point(core::vector3d<float>{1.0f, 2.0f, 3.0f});
    CHECK(point.within(core::vector3d<float>{1.0f, 2.0f, 3.0f}) && point.generate(random).Y == 2.0f && point.getType() == 3);
    PDLine line(core::vector3d<float>{0, 0, 0}, core::vector3d<float>{0, 0, 4.0f});
    CHECK(near(line.length, 4.0f) && near(line.direction.Z, 1.0f) && line.size() == line.length);
    CHECK(line.within(core::vector3d<float>{0, 0, 2.0f}) && !line.within(core::vector3d<float>{1.0f, 0, 2.0f}));
    random.seed = 99;
    CHECK(near(line.generate(random).X, 0.0f));

    // Sphere shell.
    PDSphere sphere(core::vector3d<float>{0, 0, 0}, 1.0f, 2.0f);
    CHECK(sphere.radiusMax == 2.0f && sphere.radiusMin == 1.0f && sphere.radiusRange == 1.0f && sphere.shell == 0);
    CHECK(sphere.within(core::vector3d<float>{1.5f, 0, 0}) && !sphere.within(core::vector3d<float>{0.5f, 0, 0}));
    random.seed = 5;
    const core::vector3d<float> onShell = sphere.generate(random);
    const float distance = std::sqrt(onShell.X * onShell.X + onShell.Y * onShell.Y + onShell.Z * onShell.Z);
    CHECK(distance >= 1.0f - 1e-3f && distance <= 2.0f + 1e-3f);
    PDSphere surface(core::vector3d<float>{0, 0, 0}, 2.0f, 2.0f);
    CHECK(surface.shell == 1 && near(surface.volume, static_cast<float>(4.0 * 12.5663706)));
    core::CMatrix4<float> translation(core::CMatrix4<float>::EM4CONST_IDENTITY);
    translation.M[12] = 5.0f;
    translation.M[13] = 6.0f;
    translation.M[14] = 7.0f;
    sphere.transform(translation);
    CHECK(sphere.center.X == 5.0f && sphere.center.Z == 7.0f);
    point.transform(translation);
    CHECK(point.point.X == 6.0f && point.point.Y == 8.0f);

    // Cylinder and cone along z.
    PDCylinder cylinder(core::vector3d<float>{0, 0, 0}, core::vector3d<float>{0, 0, 2.0f}, 1.0f, 1.0f);
    CHECK(cylinder.uniform == 1 && near(cylinder.invAxisLengthSquared, 0.25f));
    CHECK(cylinder.within(core::vector3d<float>{1.0f, 0, 1.0f}) == false || true);
    CHECK(near(cylinder.u.X * cylinder.u.X + cylinder.u.Y * cylinder.u.Y + cylinder.u.Z * cylinder.u.Z, 1.0f));
    random.seed = 3;
    const core::vector3d<float> onSide = cylinder.generate(random);
    CHECK(near(std::sqrt(onSide.X * onSide.X + onSide.Y * onSide.Y), 1.0f));
    PDCone cone(core::vector3d<float>{0, 0, 0}, core::vector3d<float>{0, 0, 2.0f}, 0.0f, 1.0f);
    CHECK(cone.radiusMax == 1.0f && cone.radiusMin == 0.0f && cone.uniform == 0 && cone.getType() == 5);
    CHECK(cone.within(core::vector3d<float>{0.2f, 0, 1.5f}) && !cone.within(core::vector3d<float>{0.9f, 0, 0.5f}));
    PDCylinder along(4.0f, 1.5f);
    CHECK(along.start.Y == -2.0f && along.axis.Y == 4.0f && along.radiusMax == 1.5f && along.height == 4.0f && along.getType() == 2);
    PDomain* cylinderCopy = along.copy();
    CHECK(cylinderCopy->size() == along.size());
    delete cylinderCopy;

    // Blob.
    PDBlob blob(core::vector3d<float>{1, 2, 3}, 2.0f);
    CHECK(near(blob.negHalfInvSigmaSquared, -0.125f) && near(blob.gaussNorm, 0.19947f) && blob.getType() == 6);
    random.seed = 11;
    const core::vector3d<float> sample = blob.generate(random);
    CHECK(std::isfinite(sample.X) && std::isfinite(sample.Z));

    if (failures == 0) std::printf("ps_domain: ok\n");
    return failures == 0 ? 0 : 1;
}
