// IRenderTarget constructor and setViewport clamp. Returns non-zero on failure.
#include "glitch-video/render_target.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using glitch::core::rect;
using glitch::video::IRenderTarget;

namespace {
// IRenderTarget leaves bind and unbind pure; the framebuffer classes implement them.
class TestTarget : public IRenderTarget {
public:
    using IRenderTarget::IRenderTarget;
    void bind() override {}
    void unbind() override {}
};
}  // namespace

static bool same(const rect<int32_t>& r, int32_t x0, int32_t y0, int32_t x1, int32_t y1) {
    return r.UpperLeftCorner.X == x0 && r.UpperLeftCorner.Y == y0 &&
           r.LowerRightCorner.X == x1 && r.LowerRightCorner.Y == y1;
}

int main() {
    TestTarget target(nullptr, glitch::core::dimension2d<int32_t>{100, 50});
    CHECK(target.referenceCounter == 0);
    CHECK(target.m_width == 100 && target.m_height == 50);
    CHECK(same(target.viewport(), 0, 0, 100, 50));

    // Negative near corner goes to 0, far corner beyond the target goes to its size.
    target.setViewport(rect<int32_t>{{-5, -3}, {200, 80}});
    CHECK(same(target.viewport(), 0, 0, 100, 50));

    // Near corner past the far corner is pulled back to it (y first, then x).
    target.setViewport(rect<int32_t>{{30, 60}, {10, 20}});
    CHECK(same(target.viewport(), 10, 20, 10, 20));

    // A rectangle inside the target is kept as given.
    target.setViewport(rect<int32_t>{{4, 6}, {40, 30}});
    CHECK(same(target.viewport(), 4, 6, 40, 30));

    if (failures == 0) std::printf("render_target_test: OK\n");
    return failures == 0 ? 0 : 1;
}
