#include "glitch-scene-collada-gui/recon/slice_17.hpp"

#include <cmath>
#include <cstdio>

using namespace glitch::collada::recon_17;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // PSRandom: seed 1 -> 48271 (quotient term is zero), divided by the binary's divisor.
    RandomState r{1};
    const double first = PSRandomRand(r);
    CHECK(r.seed == 48271);
    CHECK(std::fabs(first - 48271.0 / 2147483650.0) < 1e-12);

    // Friction: the two early exits.
    CHECK(GetFrictionCoefficient(0.0f, 5.0f, 1.0f, 1.0f) == 1.0f);
    CHECK(GetFrictionCoefficient(1.0f, 5.0f, 1.0f, 1.0f) == 0.0f);
    // Fast speed branch: scale*0.07 <= speed -> 1 - coefficient.
    CHECK(std::fabs(GetFrictionCoefficient(0.25f, 10.0f, 1.0f, 1.0f) - 0.75f) < 1e-6f);

    // Axis lock: a +z direction on axis 1 stores half of the unit z.
    AxisLockContext ctx{};
    const float x = LockAxisSParticle(ctx, 1, glitch::core::vector3d<float>{0.0f, 0.0f, 2.0f});
    CHECK(ctx.axisLocked[1]);
    CHECK(!ctx.axisLocked[0]);
    CHECK(x == 0.0f);
    CHECK(std::fabs(ctx.axisHalf[1][2] - 0.5f) < 1e-6f);
    const float y = LockAxisGNPSParticle(ctx, 2, glitch::core::vector3d<float>{3.0f, 0.0f, 4.0f});
    CHECK(std::fabs(y - 0.3f) < 1e-6f);
    CHECK(std::fabs(ctx.axisHalf[2][2] - 0.4f) < 1e-6f);

    // Bounding box sentinel and buffer config.
    const auto& box = ForceSceneNodeBoundingBox();
    CHECK(box.MinEdge.X == -1.0f && box.MaxEdge.Z == 1.0f);
    const BufferConfig vb = GetVertexBufferConfig(nullptr, nullptr);
    CHECK(vb.kind == 4u && !vb.flag4 && !vb.flag5);

    // Light node lookup strips the leading '#' and is stubbed to null.
    CHECK(GetExternalLightSceneNodeDefault("#Light") == nullptr);

    if (failures == 0) {
        std::printf("recon_slice_17: all checks passed\n");
        return 0;
    }
    return 1;
}
