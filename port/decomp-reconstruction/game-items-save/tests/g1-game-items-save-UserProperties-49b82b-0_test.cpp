// Test for the UserProperties batch (game-items-save/src/g1-game-items-save-UserProperties-49b82b-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// Covers the line split (first '=' only, '\n' splitting, the last line), the key token (leading non-key characters
// skipped, the key ends at the first non-alphanumeric character), the value forms (plain, "%22" quoted, unclosed
// marker, text after the closing marker), last-wins AddProperty, the empty and null text, and the destructor. The
// engine is not linked: gAssertLevel is the one global the batch reads.

#include <cstdio>
#include <map>
#include <string>

#include "dh2/UserProperties.hpp"

// Engine global the batch reads. The real definition is in another translation unit, which this test does not link.
int gAssertLevel = 0;

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::fprintf(stderr, "FAIL: %s\n", what);
        ++g_failures;
    }
}

bool Has(const UserProperties& p, const char* key) {
    return p.m_properties.find(key) != p.m_properties.end();
}

std::string Get(const UserProperties& p, const char* key) {
    auto it = p.m_properties.find(key);
    return it == p.m_properties.end() ? std::string("<missing>") : it->second;
}

void TestPlainPairs() {
    UserProperties p("a=1\nb=2\nk1=v");
    Check(p.m_properties.size() == 3, "plain pairs: three entries (digits belong to the key)");
    Check(Get(p, "a") == "1", "plain pairs: a=1");
    Check(Get(p, "b") == "2", "plain pairs: b=2");
    Check(Get(p, "k1") == "v", "plain pairs: k1=v, last line without newline");
}

void TestKeyOnly() {
    UserProperties p("flag\n");
    Check(Has(p, "flag"), "key only: flag is added");
    Check(Get(p, "flag") == "", "key only: empty value");
    Check(p.m_properties.size() == 1, "key only: the empty last line adds nothing");
}

void TestQuotedValues() {
    UserProperties p("name=%22hello world%22\nopen=%22abc\nx=%22a%22 tail\n");
    Check(Get(p, "name") == "hello world", "quoted: text between the markers");
    Check(Get(p, "open") == "%22abc", "quoted: one marker keeps the whole value");
    Check(Get(p, "x") == "a", "quoted: text after the closing marker is dropped");
}

void TestSplitAtFirstEquals() {
    UserProperties p("a=b=c");
    Check(Get(p, "a") == "b=c", "split: the value keeps later '=' characters");
}

void TestLastWins() {
    UserProperties p("a=1\na=2");
    Check(p.m_properties.size() == 1, "last wins: one entry");
    Check(Get(p, "a") == "2", "last wins: the later line replaces the value");
}

void TestLeadingNonKey() {
    UserProperties p("  spaced=ok\n=5\n==x\n");
    Check(Get(p, "spaced") == "ok", "leading: spaces before the key are skipped");
    Check(p.m_properties.size() == 1, "leading: a line with no key character adds nothing");
}

void TestKeyEndsAtNonAlnum() {
    // The original's key test is ctype mask 7 (alphanumeric), so '_' and '.' end a key.
    UserProperties p("max_hp=5\na.b=1\n");
    Check(Has(p, "max") && Get(p, "max") == "5", "key ends at '_': max=5");
    Check(!Has(p, "max_hp"), "key ends at '_': no max_hp entry");
    Check(Has(p, "a") && Get(p, "a") == "1", "key ends at '.': a=1");
    Check(!Has(p, "a.b"), "key ends at '.': no a.b entry");
}

void TestEmptyAndNullText() {
    UserProperties empty("");
    Check(empty.m_properties.empty(), "empty text: no entries");

    UserProperties none(nullptr);
    Check(none.m_properties.empty(), "null text in the constructor: no entries");

    none._ParseProperties(nullptr);  // gAssertLevel 0: silent, nothing parsed
    Check(none.m_properties.empty(), "null text in _ParseProperties: no entries");
}

void TestAddProperty() {
    UserProperties p(nullptr);
    p.AddProperty("k", "v");
    p.AddProperty("k", "w");
    Check(p.m_properties.size() == 1, "AddProperty: one entry per key");
    Check(Get(p, "k") == "w", "AddProperty: the second call replaces the value");
}

void TestDestroy() {
    UserProperties* p = new UserProperties("a=1\nb=2");
    Check(p->m_properties.size() == 2, "destroy: parsed before delete");
    delete p;  // ~UserProperties clears the map; the deleting destructor frees with operator delete here
}

}  // namespace

int main() {
    TestPlainPairs();
    TestKeyOnly();
    TestQuotedValues();
    TestSplitAtFirstEquals();
    TestLastWins();
    TestLeadingNonKey();
    TestKeyEndsAtNonAlnum();
    TestEmptyAndNullText();
    TestAddProperty();
    TestDestroy();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("UserProperties tests passed\n");
    return 0;
}
