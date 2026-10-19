// boost::detail reference counting: copies share the counter, the last release disposes.
#include "glitch-core-io/boost/shared_count.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace boost::detail;

namespace {

// A counter whose dispose only records the call.
struct Probe : sp_counted_base {
    int* disposed;
    explicit Probe(int* d) : disposed(d) {}
    void dispose() override { ++*disposed; }
};

}  // namespace

int main() {
    // The last release disposes exactly once; copies keep the counter alive.
    int disposed = 0;
    Probe* probe = new Probe(&disposed);
    probe->release();  // one use: last release disposes and destroys the counter
    CHECK(disposed == 1);

    // shared_count over a char: copies share the counter.
    {
        shared_count a(new char('a'));
        CHECK(a.pi != nullptr && a.pi->useCount.load() == 1);
        shared_count b(a);
        CHECK(a.pi == b.pi && a.pi->useCount.load() == 2);
        shared_count c;
        CHECK(c.pi == nullptr);
        c = b;
        CHECK(c.pi == a.pi && a.pi->useCount.load() == 3);
    }

    // shared_ptr_char assignment moves the use to the new counter.
    shared_ptr_char p;
    p.px = new char('x');
    p.pn = shared_count(p.px);
    CHECK(p.pn.pi->useCount.load() == 1);
    shared_ptr_char q;
    q = p;
    CHECK(q.px == p.px && p.pn.pi->useCount.load() == 2);
    shared_ptr_char r;
    r.px = new char('y');
    r.pn = shared_count(r.px);
    q = r;
    CHECK(q.px == r.px && p.pn.pi->useCount.load() == 1);

    CHECK(yield(1) == 1 && yield(3) == 3);  // counts up to 3 are returned at once
    CHECK(yield(4) == 0 && yield(0x21) == 0);  // yield and sleep paths report 0
    sp_enable_shared_from_this(0);

    std::printf("%s\n", failures ? "shared_count: FAILED" : "shared_count: ok");
    return failures != 0;
}
