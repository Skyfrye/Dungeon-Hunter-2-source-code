#include "glitch-core-io/io/attributes.hpp"

#include <cmath>
#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;

int main() {
    io::IAttribute base;
    // Base getters return the zero / default values from the original bodies.
    CHECK(base.getInt() == 0);
    CHECK(base.getFloat() == 0.f);
    CHECK(base.getBool() == false);
    CHECK(base.getEnum() == nullptr);
    CHECK(base.getColor().color == 0xffffffffu);
    CHECK(base.getColorf().r == 1.f && base.getColorf().a == 1.f);
    CHECK(base.getVector2d().X == 0.f && base.getVector2d().Y == 0.f);
    CHECK(base.getVector3d().Z == 0.f);
    CHECK(base.getVector4d().W == 0.f);
    CHECK(base.getVector2di().X == 0 && base.getVector3di().Z == 0 && base.getVector4di().W == 0);
    CHECK(base.getPosition().X == 0 && base.getPosition().Y == 0);
    CHECK(base.getRect().LowerRightCorner.X == 0 && base.getRect().LowerRightCorner.Y == 0);
    CHECK(base.getArray().empty());

    // Base setters are no-ops: the value is not stored.
    base.setInt(7);
    base.setFloat(2.f);
    base.setBool(true);
    CHECK(base.getInt() == 0 && base.getFloat() == 0.f && base.getBool() == false);

    // Geometry defaults from the original bodies.
    CHECK(base.getQuaternion().W == 1.f && base.getQuaternion().X == 0.f);
    CHECK(base.getBBox().MinEdge.X == -1.f && base.getBBox().MaxEdge.Z == 1.f);
    CHECK(base.getLine3d().end.Y == 1.f && base.getLine3d().start.Y == 0.f);
    CHECK(base.getPlane().Normal.Y == 1.f && std::signbit(base.getPlane().D));

    // CAttributes indexed getters fall back to their own defaults.
    io::CAttributes empty(nullptr);
    CHECK(empty.getQuaternion(0).Y == 1.f && empty.getQuaternion(0).W == 0.f);
    CHECK(empty.getColor(0).color == 0);
    CHECK(empty.getUserPointer(0) == nullptr);

    if (failures) return 1;
    std::printf("iattribute_defaults_test ok\n");
    return 0;
}
