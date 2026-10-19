// vox string comparators: prefix-then-length ordering and ASCII case folding.
#include <cstdio>
#include <iterator>
#include <map>
#include <string>

#include "vox-audio/vox/string_compare.hpp"

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
    vox::StringCompare cmp;
    CHECK(cmp("abc", "abd"));
    CHECK(!cmp("abd", "abc"));
    CHECK(cmp("ab", "abc"));     // equal prefix: shorter sorts first
    CHECK(!cmp("abc", "ab"));
    CHECK(!cmp("abc", "abc"));   // equal strings are not less
    CHECK(cmp(vox::VoxString("B"), vox::VoxString("a")));  // byte order: 0x42 sorts before 0x61
    CHECK(cmp(vox::VoxString(""), vox::VoxString("x")));

    // The three std::string comparators share the same ordering.
    vox::stringcomp sc;
    vox::StringComp stc;
    CHECK(sc(vox::VoxString("alpha"), vox::VoxString("beta")));
    CHECK(stc(vox::VoxString("alpha"), vox::VoxString("alphabet")));
    CHECK(!stc(vox::VoxString("alphabet"), vox::VoxString("alpha")));

    // Used as a map ordering, keys come out sorted.
    std::map<vox::VoxString, int, vox::StringCompare> m;
    m["pear"] = 1;
    m["apple"] = 2;
    m["app"] = 3;
    CHECK(m.begin()->first == "app");
    CHECK(std::next(m.begin())->first == "apple");

    vox::c8stringcomp ci;
    CHECK(ci("ABC", "abd"));
    CHECK(!ci("ABC", "abc"));    // case-insensitive equal
    CHECK(!ci("abd", "ABC"));
    CHECK(ci("", "a"));
    CHECK(!ci("a", ""));

    std::printf("string_compare_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
