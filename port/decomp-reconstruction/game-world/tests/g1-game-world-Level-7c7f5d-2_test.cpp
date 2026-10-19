// Test for batch g1-game-world-Level-7c7f5d-2 (part 3 of 4), Level::_LoadScriptFile (0x3f38a0).
//
// The batch .cpp cannot be linked into a test: it references ScriptManager and the rest of the engine. So PrepareScriptNames
// below mirrors the body of _LoadScriptFile line for line, without the two ScriptManager calls, and the test checks the two
// names it builds. The expected strings are worked out by hand from the replace semantics the original uses (see the
// comment on _LoadScriptFile), including the tail case where the names copy keeps the characters after pos + 14.

#include <cstdio>
#include <string>

namespace {

int g_failures = 0;

#define EXPECT_TRUE(cond)                                                        \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

#define EXPECT_STR(actual, expected)                                             \
    do {                                                                         \
        const std::string got_ = (actual);                                       \
        const std::string want_ = (expected);                                    \
        if (got_ != want_) {                                                     \
            std::printf("FAIL %s:%d: got \"%s\", expected \"%s\"\n", __FILE__,   \
                        __LINE__, got_.c_str(), want_.c_str());                  \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Mirrors Level::_LoadScriptFile up to the ScriptManager calls. Returns false when the original returns early.
bool PrepareScriptNames(std::string& file, std::string& scripts, std::string& names) {
    if (file.size() <= 8) {
        return false;
    }
    std::size_t pos = file.rfind(".pyscript");
    if (pos == std::string::npos) {
        return false;
    }
    for (char& c : file) {
        if (c == '\\') {
            c = '/';
        }
    }
    scripts = file;
    scripts.replace(pos, scripts.size() - pos, "_pyscripts.bin", 14);
    names = file;
    names.replace(pos, scripts.size() - pos, "_pyscriptnames.bin", 18);
    return true;
}

void TestShippedNames() {
    // Shipped scene names end exactly in ".pyscript", so the tail is empty and both names are plain prefix + suffix.
    std::string file = "levels/village/village.pyscript";
    std::string scripts;
    std::string names;
    EXPECT_TRUE(PrepareScriptNames(file, scripts, names));
    EXPECT_STR(scripts, "levels/village/village_pyscripts.bin");
    EXPECT_STR(names, "levels/village/village_pyscriptnames.bin");
}

void TestTailIsKept() {
    // "x.pyscript" is at pos 1 and 7 characters follow it. The names replace only 14 characters from pos (9 for the match and
    // 5 more), so "FG" survives. The scripts copy replaces the whole tail, so no "ABCDEFG" survives there.
    std::string file = "x.pyscriptABCDEFG";
    std::string scripts;
    std::string names;
    EXPECT_TRUE(PrepareScriptNames(file, scripts, names));
    EXPECT_STR(scripts, "x_pyscripts.bin");
    EXPECT_STR(names, "x_pyscriptnames.binFG");
}

void TestTailExactlyFourteen() {
    // Five characters follow the match, so the 14 characters the names replace removes (9 for the match and 5 more) reach
    // the end of the string. Nothing is kept after them.
    std::string file = "ab.pyscript01234";
    std::string scripts;
    std::string names;
    EXPECT_TRUE(PrepareScriptNames(file, scripts, names));
    EXPECT_STR(scripts, "ab_pyscripts.bin");
    EXPECT_STR(names, "ab_pyscriptnames.bin");
}

void TestMatchAtStart() {
    // pos 0: the scripts replace covers the whole string, and the names replace clamps 14 to the 11-character string.
    std::string file = ".pyscriptXY";
    std::string scripts;
    std::string names;
    EXPECT_TRUE(PrepareScriptNames(file, scripts, names));
    EXPECT_STR(scripts, "_pyscripts.bin");
    EXPECT_STR(names, "_pyscriptnames.bin");
}

void TestBackslashesBecomeSlashes() {
    std::string file = "a\\b\\c.pyscript";
    std::string scripts;
    std::string names;
    EXPECT_TRUE(PrepareScriptNames(file, scripts, names));
    EXPECT_STR(file, "a/b/c.pyscript");
    EXPECT_STR(scripts, "a/b/c_pyscripts.bin");
    EXPECT_STR(names, "a/b/c_pyscriptnames.bin");
}

void TestGates() {
    // Eight characters or fewer: the original returns before searching, even though the name would match at 0.
    std::string eight = "pyscript";
    std::string scripts;
    std::string names;
    EXPECT_TRUE(!PrepareScriptNames(eight, scripts, names));
    // Longer than eight but no ".pyscript": the search fails and nothing is loaded.
    std::string none = "levels/village/village.pyscrip";
    EXPECT_TRUE(!PrepareScriptNames(none, scripts, names));
}

}  // namespace

int main() {
    TestShippedNames();
    TestTailIsKept();
    TestTailExactlyFourteen();
    TestMatchAtStart();
    TestBackslashesBecomeSlashes();
    TestGates();
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("Level::_LoadScriptFile name checks passed\n");
    return 0;
}
