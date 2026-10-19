// Batch r1-glitch-core-io-pack4-7fd4ee-0 checks:
//   - SScopedEnableProcessBufferHeapExcess (GCC clone, argument folded to true): saves the old flag
//     and enables excess.
//   - Printer::logf and its two forms: the format and the variadic arguments reach the logger's
//     logv (slot +0x24) with ELL_INFORMATION or the given level.
//   - SIDedCollection remove and removeAll (shared/include/glitch-shared/sid_collection.hpp, the
//     ITexture layout): trailing trim, all-unset length, shared values kept unless forced, count.
#include <cstdarg>
#include <cstdio>
#include <string>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-shared/sid_collection.hpp"

static int failures = 0;
#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

namespace {

int aliveRefs = 0;

// Reference-counted value: a new object holds one reference, which the first holder (the temporary
// intrusive_ptr built for insert) takes over; the entry then holds the only one.
struct Ref {
    Ref() { ++aliveRefs; }
    ~Ref() { --aliveRefs; }
    void drop() const {
        if (--referenceCounter == 0) delete this;
    }
    mutable int referenceCounter = 1;  // +0x04 in the original
};
inline void intrusive_ptr_add_ref(const Ref* p) { ++p->referenceCounter; }
inline void intrusive_ptr_release(const Ref* p) { p->drop(); }

struct Props {
    int flags = 0;
};

using Collection = glitch::core::detail::sid_layout::SIDedCollection<boost::intrusive_ptr<Ref>, Props>;

struct RecordingLogger : glitch::os::ILogger {
    glitch::os::ELOG_LEVEL level = glitch::os::ELL_NONE;
    std::string text;
    int calls = 0;
    glitch::os::ELOG_LEVEL getLogLevel() const override { return glitch::os::ELL_DEBUG; }
    void setLogLevel(glitch::os::ELOG_LEVEL) override {}
    void log(const char*, glitch::os::ELOG_LEVEL) override {}
    void log(const char*, const char*, glitch::os::ELOG_LEVEL) override {}
    void log(const wchar_t*, glitch::os::ELOG_LEVEL) override {}
    void log(const wchar_t*, const wchar_t*, glitch::os::ELOG_LEVEL) override {}
    void vlogf(glitch::os::ELOG_LEVEL lv, const char* format, std::va_list args) override {
        char buf[256];
        std::vsnprintf(buf, sizeof buf, format, args);
        level = lv;
        text = buf;
        ++calls;
    }
};

}  // namespace

int main() {
    // SScopedEnableProcessBufferHeapExcess: the old flag is stored, and excess is enabled whatever
    // the argument says (the clone has it folded to true).
    glitch::core::setProcessBufferHeapExcessEnabled(false);
    {
        glitch::core::SScopedEnableProcessBufferHeapExcess scope(true);
        CHECK(!scope.previous);
        CHECK(glitch::core::isProcessBufferHeapExcessEnabled());
    }
    glitch::core::setProcessBufferHeapExcessEnabled(true);
    {
        glitch::core::SScopedEnableProcessBufferHeapExcess scope(false);
        CHECK(scope.previous);
        CHECK(glitch::core::isProcessBufferHeapExcessEnabled());
    }
    glitch::core::setProcessBufferHeapExcessEnabled(false);

    // Printer::logf with no logger installed: nothing is forwarded and nothing fails.
    glitch::os::Printer::Logger = nullptr;
    glitch::os::Printer::logf("no logger %d", 1);

    // Printer::logf: the format and the variadic arguments reach logv.
    RecordingLogger rec;
    glitch::os::Printer::Logger = &rec;
    glitch::os::Printer::logf("value %d %s", 42, "x");
    CHECK(rec.calls == 1);
    CHECK(rec.level == glitch::os::ELL_INFORMATION);
    CHECK(rec.text == "value 42 x");
    glitch::os::Printer::logf(glitch::os::ELL_WARNING, "w %d", 7);
    CHECK(rec.calls == 2);
    CHECK(rec.level == glitch::os::ELL_WARNING);
    CHECK(rec.text == "w 7");
    glitch::os::Printer::Logger = nullptr;

    // remove: trailing unset entries are cut only while a set entry remains; an all-unset vector
    // keeps its length (0x5e9e7c).
    {
        Collection c;
        c.insert("a", new Ref(), false);  // id 0
        c.insert("b", new Ref(), false);  // id 1
        c.insert("c", new Ref(), false);  // id 2
        CHECK(c.size() == 3);
        CHECK(c.entries.size() == 3);
        CHECK(c.remove(0, false));
        CHECK(c.entries.size() == 3);  // entry 2 is still set: nothing cut
        CHECK(c.getNextId() == 0);
        CHECK(c.remove(2, false));
        CHECK(c.entries.size() == 2);  // cut down to the last set entry (id 1)
        CHECK(c.remove(1, false));
        CHECK(c.size() == 0);
        CHECK(c.entries.size() == 2);  // all unset: the vector keeps its length
        CHECK(c.getMaxID() == 1);
        CHECK(c.getId("b") == 0xffff);
    }
    CHECK(aliveRefs == 0);  // the removals released every value

    // remove refuses a shared value unless forced; a forced removal releases the collection's use.
    {
        Collection c;
        Ref* r = new Ref();
        c.insert("a", r, false);
        r->referenceCounter++;  // an outside holder: count 2
        CHECK(!c.remove(0, false));
        CHECK(c.size() == 1);
        CHECK(c.remove(0, true));
        CHECK(c.size() == 0);
        CHECK(r->referenceCounter == 1);
        r->drop();  // the outside holder's use is the last one
    }
    CHECK(aliveRefs == 0);

    // removeAll: names are visited in key order; a shared value is kept unless forced; the return
    // value counts the removed entries.
    {
        Collection c;
        Ref* a = new Ref();
        Ref* b = new Ref();
        Ref* d = new Ref();
        c.insert("c", a, false);  // id 0
        c.insert("a", b, false);  // id 1
        c.insert("b", d, false);  // id 2
        d->referenceCounter++;    // shared
        CHECK(c.removeAll(false) == 2);
        CHECK(c.size() == 1);
        CHECK(c.getId("b") == 2);
        CHECK(c.entries.size() == 3);  // the last entry is still set: nothing cut
        d->referenceCounter--;
        CHECK(c.removeAll(true) == 1);
        CHECK(c.size() == 0);
        CHECK(c.entries.size() == 3);  // all unset: length kept
    }
    CHECK(aliveRefs == 0);

    // getProperties hands out the record stored with the name.
    {
        Collection c;
        c.insert("p", new Ref(), false);
        *c.getProperties(0) = Props{7};
        CHECK(c.getProperties(0)->flags == 7);
    }
    CHECK(aliveRefs == 0);

    if (failures == 0) std::printf("r1-glitch-core-io-pack4-7fd4ee-0 test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
