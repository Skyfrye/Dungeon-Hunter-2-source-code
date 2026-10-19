// Known-value checks for batch v1-vendor-box2d-pack0-aa42c4-0.
//
// The DH2 bodies of b2Sweep::GetXForm (0x7e3bfc), b2Sweep::Advance (0x7e3a94) and
// b2Vec2::Normalize (0x7e5524) match Box2D 2.0.1 (Source/Common/b2Math.cpp, b2Math.h).
// These values follow the Hex-Rays formulas for those addresses, so the upstream code is
// checked against the binary's arithmetic. Build and run with:
//   bash tools/trackb/check_tu.sh --test port/decomp-reconstruction/vendor-box2d/tests/v1-vendor-box2d-pack0-aa42c4-0_test.cpp port/decomp-reconstruction/vendor-box2d/upstream/box2d-2.0.1/Source/Common/b2Math.cpp

#include "Common/b2Math.h"

#include <cmath>
#include <cstdio>

namespace {

int failures = 0;

bool near(float a, float b)
{
	return std::fabs(a - b) <= 1e-5f;
}

void check(bool ok, const char* what, int line)
{
	if (!ok)
	{
		std::printf("FAIL line %d: %s\n", line, what);
		++failures;
	}
}

#define CHECK(expr) check((expr), #expr, __LINE__)

} // namespace

int main()
{
	const float pi = 3.14159265358979f;

	// b2Sweep::GetXForm halfway through a sweep (t0 = 0, t = 0.5).
	// alpha = 0.5, so the interpolated centre is (1, 0) and the angle is pi/4.
	// position = c - R * localCenter = (1 - cos(pi/4), -sin(pi/4)).
	b2Sweep s;
	s.localCenter.Set(1.0f, 0.0f);
	s.c0.Set(0.0f, 0.0f);
	s.c.Set(2.0f, 0.0f);
	s.a0 = 0.0f;
	s.a = 0.5f * pi;
	s.t0 = 0.0f;

	b2XForm xf;
	s.GetXForm(&xf, 0.5f);
	const float c45 = std::cos(0.25f * pi);
	const float s45 = std::sin(0.25f * pi);
	CHECK(near(xf.position.x, 1.0f - c45));
	CHECK(near(xf.position.y, -s45));
	CHECK(near(xf.R.col1.x, c45) && near(xf.R.col1.y, s45));
	CHECK(near(xf.R.col2.x, -s45) && near(xf.R.col2.y, c45));

	// b2Sweep::GetXForm with t0 = 1 takes the else branch: position = c - R(a) * localCenter.
	// With a = pi/2, R(a) * (1, 0) = (0, 1), so the position is (2, -1).
	s.t0 = 1.0f;
	s.GetXForm(&xf, 1.0f);
	CHECK(near(xf.position.x, 2.0f));
	CHECK(near(xf.position.y, -1.0f));

	// b2Sweep::Advance from t0 = 0 to t = 0.5 moves c0 and a0 halfway to c and a.
	s.t0 = 0.0f;
	s.c0.Set(0.0f, 0.0f);
	s.c.Set(2.0f, 0.0f);
	s.a0 = 0.0f;
	s.a = 0.5f * pi;
	s.Advance(0.5f);
	CHECK(near(s.t0, 0.5f));
	CHECK(near(s.c0.x, 1.0f) && near(s.c0.y, 0.0f));
	CHECK(near(s.a0, 0.25f * pi));

	// An earlier time than t0 changes nothing.
	s.Advance(0.25f);
	CHECK(near(s.t0, 0.5f));
	CHECK(near(s.c0.x, 1.0f));

	// Advancing to t = 1 makes c0 and a0 equal to c and a.
	s.Advance(1.0f);
	CHECK(near(s.t0, 1.0f));
	CHECK(near(s.c0.x, 2.0f) && near(s.c0.y, 0.0f));
	CHECK(near(s.a0, 0.5f * pi));

	// b2Vec2::Normalize: (3, 4) has length 5 and becomes (0.6, 0.8).
	b2Vec2 v(3.0f, 4.0f);
	float len = v.Normalize();
	CHECK(near(len, 5.0f));
	CHECK(near(v.x, 0.6f) && near(v.y, 0.8f));

	// Zero and near-zero vectors return 0 and are left unchanged.
	b2Vec2 z(0.0f, 0.0f);
	CHECK(z.Normalize() == 0.0f);
	CHECK(z.x == 0.0f && z.y == 0.0f);

	b2Vec2 tiny(1e-9f, 0.0f);
	CHECK(tiny.Normalize() == 0.0f);
	CHECK(tiny.x == 1e-9f && tiny.y == 0.0f);

	if (failures == 0)
	{
		std::printf("v1-vendor-box2d-pack0-aa42c4-0 known-value checks: OK\n");
		return 0;
	}
	std::printf("%d check(s) failed\n", failures);
	return 1;
}
