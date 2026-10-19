// glitch::core::detail::sid_layout::SIDedCollection: insert, find, rename, remove (count rule,
// next-id and trailing-trim rules), removeAll order, and the reference counts of the values.
#include <cstdio>
#include <cstring>
#include <string>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/sid_collection.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

int alive = 0;

struct Ref {
    Ref() { ++alive; }
    ~Ref() { --alive; }
    void drop() const {
        if (--referenceCounter == 0) delete this;
    }
    mutable int referenceCounter = 1;  // a new object holds one reference; the first holder takes it
    int tag = 0;
};
inline void intrusive_ptr_add_ref(const Ref* p) { ++p->referenceCounter; }
inline void intrusive_ptr_release(const Ref* p) { p->drop(); }

struct Props {
    int flags = 0;
};

using Collection = glitch::core::detail::sid_layout::SIDedCollection<boost::intrusive_ptr<Ref>, Props>;

}  // namespace

int main() {
    // Empty collection: count 0, next free id 0, getMaxID is 0xffff (vector length - 1).
    {
        Collection c;
        CHECK(c.size() == 0);
        CHECK(c.getNextId() == 0);
        CHECK(c.getMaxID() == 0xffff);
        CHECK(c.getId("a") == 0xffff);
        CHECK(c.idBegin() == c.idEnd());
    }

    // insert: ids are handed out from the next free id; find returns them; names iterate in strcmp order.
    {
        Collection c;
        Ref* a = new Ref();
        Ref* b = new Ref();
        Ref* d = new Ref();
        CHECK(c.insert("b", b, false) == 0);
        CHECK(c.insert("a", a, false) == 1);
        char* managedName = new char[2];  // managed name: heap buffer owned by the node
        std::strcpy(managedName, "d");
        CHECK(c.insert(managedName, d, true) == 2);
        CHECK(c.size() == 3);
        CHECK(c.getNextId() == 3);
        CHECK(c.getMaxID() == 2);
        CHECK(c.getId("a") == 1);
        CHECK(c.getId("zz") == 0xffff);
        CHECK(c.get(0)->value == b);
        CHECK(b->referenceCounter == 1);  // the entry holds the only reference
        auto it = c.idBegin();
        CHECK(std::string(it->first.get()) == "a");
        ++it;
        CHECK(std::string(it->first.get()) == "b");
        ++it;
        CHECK(std::string(it->first.get()) == "d");
        *c.getProperties(1) = Props{7};
        CHECK(c.getProperties(1)->flags == 7);
    }

    // remove: refused when another reference exists (count != 1) unless forced.
    {
        Collection c;
        Ref* a = new Ref();
        c.insert("a", a, false);
        a->referenceCounter++;  // an outside holder: count 2
        CHECK(!c.remove(0, false));
        CHECK(c.size() == 1);
        CHECK(c.remove(0, true));
        CHECK(c.size() == 0);
        CHECK(c.getNextId() == 0);
        CHECK(c.getId("a") == 0xffff);
        CHECK(a->referenceCounter == 1);  // the entry's reference was released (a now has the outside one)
        a->drop();  // outside holder releases: deleted
    }

    // remove: next free id is lowered; trailing unset entries are cut only when a set entry remains.
    {
        Collection c;
        Ref* v[3] = {new Ref(), new Ref(), new Ref()};
        c.insert("x", v[0], false);
        c.insert("y", v[1], false);
        c.insert("z", v[2], false);
        CHECK(c.remove(1, false));  // count 1 held by the entry only
        CHECK(c.getNextId() == 1);
        CHECK(c.get(1)->value == nullptr);
        CHECK(c.entries.size() == 3);  // not trailing: entry 2 is still set
        CHECK(c.remove(2, false));
        CHECK(c.entries.size() == 1);  // trailing unset entries cut down to the last set one
        CHECK(c.getMaxID() == 0);
        CHECK(c.remove(0, false));
        CHECK(c.entries.size() == 1);  // all unset: the vector keeps its length (0x5e9e7c)
        CHECK(c.getMaxID() == 0);
        CHECK(c.getNextId() == 0);
    }

    // insert after removals reuses the lowest free id.
    {
        Collection c;
        Ref* p = new Ref();
        Ref* q = new Ref();
        c.insert("p", p, false);
        c.insert("q", q, false);
        c.remove(0, true);  // p is released and deleted here
        CHECK(c.getNextId() == 0);
        Ref* p2 = new Ref();
        CHECK(c.insert("r", p2, false) == 0);
        CHECK(c.getId("r") == 0);
        CHECK(c.getNextId() == 2);
    }

    // rename: fails for an unknown id or an existing name; succeeds otherwise and keeps the id.
    {
        Collection c;
        Ref* a = new Ref();
        Ref* b = new Ref();
        c.insert("a", a, false);
        c.insert("b", b, false);
        CHECK(!c.rename(5, "n", false));
        CHECK(!c.rename(0, "b", false));
        CHECK(c.rename(0, "n", false));
        CHECK(c.getId("n") == 0);
        CHECK(c.getId("a") == 0xffff);
        CHECK(c.size() == 2);
        CHECK(c.getNextId() == 2);
        CHECK(c.get(0)->value == a);
    }

    // removeAll(false): removes the unshared entries in name order and returns how many.
    {
        Collection c;
        Ref* a = new Ref();
        Ref* b = new Ref();
        Ref* d = new Ref();
        c.insert("c", a, false);
        c.insert("a", b, false);
        c.insert("b", d, false);
        d->referenceCounter++;  // shared: kept
        CHECK(c.removeAll(false) == 2);
        CHECK(c.size() == 1);
        CHECK(c.getId("b") == 2);
        d->referenceCounter--;
        CHECK(c.removeAll(true) == 1);
        CHECK(c.size() == 0);
    }

    // Destructor releases every value.
    {
        const int before = alive;
        {
            Collection c;
            c.insert("k", new Ref(), false);
            CHECK(alive == before + 1);
        }
        CHECK(alive == before);
    }

    CHECK(alive == 0);
    if (failures == 0) std::printf("sid_collection_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
