// HandlableContainer lookup, ids, ownership and Retain/Release.
#include <cstdio>

#include "vox-audio/vox/handlable.hpp"

namespace {
int g_failures = 0;
int g_live = 0;

#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

class Counted : public vox::Handlable {
public:
    explicit Counted(std::int64_t handle_id) { id = handle_id; ++g_live; }
    ~Counted() override { --g_live; }
};
}  // namespace

int main() {
    {
        vox::HandlableContainer c;
        CHECK(c.GetFreeHandleId() == 0);
        CHECK(c.GetFreeHandleId() == 1);

        auto* a = new Counted(10);
        auto* b = new Counted(5);
        c.Add(a);
        c.Add(b);
        CHECK(g_live == 2);
        CHECK(c.Find(10) == a);
        CHECK(c.Find(5) == b);
        CHECK(c.Find(7) == nullptr);  // no exact match

        // Ordered by id: 5 then 10.
        auto it = c.begin();
        CHECK(it != c.end() && it->first == 5);
        ++it;
        CHECK(it != c.end() && it->first == 10);

        // Detach returns the value and does not destroy it.
        CHECK(c.Detach(5) == b);
        CHECK(g_live == 2);
        CHECK(c.Find(5) == nullptr);
        delete b;  // caller now owns it
        CHECK(g_live == 1);

        // Erase destroys the stored value.
        c.Erase(10);
        CHECK(g_live == 0);
        CHECK(c.Find(10) == nullptr);
    }

    {
        vox::HandlableContainer src;
        vox::HandlableContainer dst;
        src.Add(new Counted(1));
        src.Add(new Counted(2));
        dst.Merge(&src);
        CHECK(dst.Find(1) != nullptr && dst.Find(2) != nullptr);
        CHECK(g_live == 2);  // merge shares the objects, does not copy them
        // dst and src both own pointers now; detach from src before destruction.
        src.Detach(1);
        src.Detach(2);
    }
    CHECK(g_live == 0);

    {
        Counted h(3);
        CHECK(h.ref_count == 0);
        h.Retain();
        h.Retain();
        CHECK(h.ref_count == 2);
        h.Release();
        h.Release();
        h.Release();  // never goes below zero
        CHECK(h.ref_count == 0);
    }

    if (g_failures == 0) {
        std::printf("handlable_test: all checks passed\n");
        return 0;
    }
    std::printf("handlable_test: %d failures\n", g_failures);
    return 1;
}
