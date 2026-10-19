// vox::Handle accessors, timestamp pair and id equality.
#include <cstdio>

#include "vox-audio/vox/handle.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

class TestHandle : public vox::Handle {
public:
    TestHandle(std::int64_t id, void* object) {
        id_ = id;
        object_ = object;
    }
};
}  // namespace

int main() {
    int payload = 0;
    TestHandle a(0x1234567890LL, &payload);
    TestHandle b(0x1234567890LL, nullptr);
    TestHandle c(7, nullptr);

    CHECK(a.GetId() == 0x1234567890LL);
    CHECK(a.GetObjectPointer() == &payload);
    CHECK(a == b);
    CHECK(!(a == c));

    a.SetTimeStamp(11u, 22u);
    std::uint32_t t0 = 0, t1 = 0;
    a.GetTimeStamp(t0, t1);
    CHECK(t0 == 11u && t1 == 22u);

    if (g_failures == 0) {
        std::printf("handle_test: all checks passed\n");
        return 0;
    }
    std::printf("handle_test: %d failures\n", g_failures);
    return 1;
}
