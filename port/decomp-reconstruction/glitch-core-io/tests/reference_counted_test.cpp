#include "glitch-core-io/deps/glitch_core.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
struct Counted : glitch::IReferenceCounted {
    static int deleted;
    static int onDeleteCalls;
    void onDelete() override { ++onDeleteCalls; }
    ~Counted() override { ++deleted; }
};
int Counted::deleted = 0;
int Counted::onDeleteCalls = 0;
}  // namespace

int main() {
    // Count starts at 1; a second reference then a drop keeps the object alive.
    Counted* a = new Counted();
    a->referenceCounter = 2;
    CHECK(a->drop() == false);
    CHECK(a->referenceCounter == 1);
    CHECK(Counted::deleted == 0 && Counted::onDeleteCalls == 0);

    // Dropping the last reference runs onDelete, then deletes the object.
    CHECK(a->drop() == true);
    CHECK(Counted::deleted == 1 && Counted::onDeleteCalls == 1);

    if (failures) return 1;
    std::printf("reference_counted_test ok\n");
    return 0;
}
