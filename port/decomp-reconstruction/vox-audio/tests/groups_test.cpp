// SequentialGroup element order, reset and state round-trips.
#include <cstdio>

#include "vox-audio/vox/groups.hpp"

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
}  // namespace

int main() {
    vox::SequentialGroup g;
    g.AddElement(10);
    g.AddElement(20);
    g.AddElement(30);
    CHECK(g.PeekAtNextGroupElement(vox::GroupPeekMode::kOther) == 10);

    // Normal mode returns -1 while the state words are zero.
    CHECK(g.PeekAtNextGroupElement(vox::GroupPeekMode::kNormal) == -1);

    vox::SequentialGroup::State s{};
    g.GetState(&s);
    CHECK(s.v[0] == 0 && s.v[2] == 0);

    // Set current state so Peek reads a real element.
    s.v[0] = 1;  // word a
    s.v[1] = 1;  // word b
    s.v[2] = 2;  // index
    g.SetState(&s);
    CHECK(g.PeekAtNextGroupElement(vox::GroupPeekMode::kNormal) == 30);

    // SetToPreviousState restores the saved index (0 from the first reset).
    g.Reset(0);
    CHECK(g.PeekAtNextGroupElement(vox::GroupPeekMode::kOther) == 10);
    g.SetToPreviousState();
    CHECK(g.PeekAtNextGroupElement(vox::GroupPeekMode::kOther) == 30);

    vox::SequentialGroup copy;
    copy.SetState(g);
    vox::SequentialGroup::State c{};
    copy.GetState(&c);
    CHECK(c.v[2] == s.v[2]);

    if (g_failures == 0) {
        std::printf("groups_test: all checks passed\n");
        return 0;
    }
    std::printf("groups_test: %d failures\n", g_failures);
    return 1;
}
