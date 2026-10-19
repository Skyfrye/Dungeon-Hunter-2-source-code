// Test for batch v1-vendor-gameswf-gameswf_root-d24935-0: the screen <-> logical arithmetic of
// gameswf::root (0x773dc0, 0x773f50), through vendor-gameswf/gameswf_root_transform.hpp.
// Returns non-zero on any mismatch.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//   (no other source is linked)
#include <cmath>
#include <cstdio>

#include "vendor-gameswf/gameswf_root_transform.hpp"

namespace {

int failures = 0;

void expect_near(const char* what, float got, float want)
{
	if (std::fabs(got - want) > 1e-3f)
	{
		std::printf("FAIL %s: got %f want %f\n", what, static_cast<double>(got), static_cast<double>(want));
		++failures;
	}
}

}  // namespace

int main()
{
	using namespace gameswf::dh2;
	// Frame 800 x 600 twips = 40 x 30 pixels. Display rect at (10, 20), 400 x 300.
	const root_frame_twips frame{0.0f, 800.0f, 0.0f, 600.0f};
	const root_display_bounds disp{10, 20, 400, 300};

	// screen_to_logical, landscape: x = (110 - 10) / (400 / 40) = 10, y = (170 - 20) / (300 / 30) = 15.
	float x = 110.0f;
	float y = 170.0f;
	root_screen_to_logical(true, frame, disp, x, y);
	expect_near("s2l landscape x", x, 10.0f);
	expect_near("s2l landscape y", y, 15.0f);

	// screen_to_logical, rotated: x = (110 - 20) / (300 / 40) = 12, y = (170 - 10) / (400 / 30) = 12.
	x = 110.0f;
	y = 170.0f;
	root_screen_to_logical(false, frame, disp, x, y);
	expect_near("s2l rotated x", x, 12.0f);
	expect_near("s2l rotated y", y, 12.0f);

	// logical_to_screen, landscape, viewport 800 x 600:
	// x = (800 / 400) * 10 - (10 * 20) / (400 / 40) = 20 - 20 = 0
	// y = (600 / 300) * 15 - (20 * 20) / (300 / 30) = 30 - 40 = -10
	x = 10.0f;
	y = 15.0f;
	root_logical_to_screen(true, frame, disp, 800, 600, x, y);
	expect_near("l2s landscape x", x, 0.0f);
	expect_near("l2s landscape y", y, -10.0f);

	// logical_to_screen, rotated, viewport 800 x 600:
	// x = (600 / 300) * 10 - (20 * 20) / (300 / 40) = 20 - 53.3333 = -33.3333
	// y = (800 / 400) * 15 - (10 * 20) / (400 / 30) = 30 - 15 = 15
	x = 10.0f;
	y = 15.0f;
	root_logical_to_screen(false, frame, disp, 800, 600, x, y);
	expect_near("l2s rotated x", x, -100.0f / 3.0f);
	expect_near("l2s rotated y", y, 15.0f);

	if (failures == 0)
	{
		std::printf("root transform: all checks passed\n");
	}
	return failures == 0 ? 0 : 1;
}
