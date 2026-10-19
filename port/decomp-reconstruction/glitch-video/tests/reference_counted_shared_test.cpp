// Checks the shared glitch::IReferenceCounted layout (drop, onDelete order, counter at +0x04 in the
// original). Source: port/decomp-reconstruction/shared/include/glitch-shared/reference_counted.hpp.
// Evidence: drop 0x31d584, onDelete 0x31d5cc, D0 0x31fd58, default count 1 from derived ctors 0x6b4d04.

#include "../../shared/include/glitch-shared/reference_counted.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

struct Counted : glitch::IReferenceCounted {
    static int deleted;
    static int onDeleteCalls;
    static int deletedAfterOnDelete;  // destructor ran after this object's onDelete
    bool alive = true;
    bool onDeleteSeenAlive = false;
    void onDelete() override {
        ++onDeleteCalls;
        // The original calls onDelete (+0x08) before the deleting destructor (+0x04): still alive here.
        onDeleteSeenAlive = alive;
    }
    ~Counted() override {
        alive = false;
        ++deleted;
        if (onDeleteSeenAlive) ++deletedAfterOnDelete;
    }
};
int Counted::deleted = 0;
int Counted::onDeleteCalls = 0;
int Counted::deletedAfterOnDelete = 0;

}  // namespace

int main() {
    // A fresh object starts with count 1 (set by the derived constructors in the original).
    Counted* a = new Counted();
    CHECK(a->referenceCounter == 1);

    // Two references, one drop: the object stays alive and the count goes back to 1.
    a->referenceCounter = 2;
    CHECK(a->drop() == false);
    CHECK(a->referenceCounter == 1);
    CHECK(Counted::deleted == 0 && Counted::onDeleteCalls == 0);

    // Dropping the last reference runs onDelete, then the destructor (deletes the object).
    CHECK(a->drop() == true);
    CHECK(Counted::onDeleteCalls == 1);
    CHECK(Counted::deleted == 1);
    CHECK(Counted::deletedAfterOnDelete == 1);

    // Plain drop of a single-reference object: the same path.
    Counted* b = new Counted();
    CHECK(b->drop() == true);
    CHECK(Counted::deleted == 2 && Counted::onDeleteCalls == 2);
    CHECK(Counted::deletedAfterOnDelete == 2);

    // Base onDelete is an empty hook (0x31d5cc): a plain base object can be dropped without effects.
    struct Plain : glitch::IReferenceCounted {};
    Plain* p = new Plain();
    CHECK(p->drop() == true);

    if (failures) return 1;
    std::printf("reference_counted_shared_test ok\n");
    return 0;
}
