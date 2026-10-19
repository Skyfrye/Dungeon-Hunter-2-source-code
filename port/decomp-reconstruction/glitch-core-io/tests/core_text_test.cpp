// glitch::core text helpers: the case-insensitive wide compare (wcsicmp) and the UTF-8
// decoding helpers (getUTF8charValue, iterateUTF8String).
#include "glitch-core-io/core/strings.hpp"

#include <cstdio>

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

int main() {
    using namespace glitch::core;
    int failures = 0;

    CHECK(glitch::core::wcsicmp(L"", L"") == 0);
    CHECK(glitch::core::wcsicmp(L"abc", L"abc") == 0);
    CHECK(glitch::core::wcsicmp(L"abc", L"abcd") == -1);
    CHECK(glitch::core::wcsicmp(L"abc", L"xyz") == 3);
    CHECK(glitch::core::wcsicmp(L"ABC", L"ABD") == 1);

    CHECK(getUTF8charValue("A") == 0x41);
    CHECK(getUTF8charValue("\xC3\xA9") == 0xE9);
    CHECK(getUTF8charValue("\xE2\x82\xAC") == 0x20AC);
    CHECK(getUTF8charValue("\xF0\x9F\x98\x80") == 0x1F600);
    CHECK(getUTF8charValue("") == 0);
    CHECK(getUTF8charValue("abcde") == 0);

    const char* text = "A\xC3\xA9\xE2\x82\xAC!";
    CHECK(iterateUTF8String(text) == 0x41);
    CHECK(iterateUTF8String(text) == 0xE9);
    CHECK(iterateUTF8String(text) == 0x20AC);
    CHECK(*text == '!');

    // A continuation byte is not a lead byte: it is skipped and decodes as 0.
    const char* bad = "\x80Z";
    CHECK(iterateUTF8String(bad) == 0);
    CHECK(*bad == 'Z');

    // randomString: the length is honoured and every character is from the 62-character alphabet.
    CHECK(randomString(0).empty());
    CHECK(randomString(-3).empty());
    const std::string sample = randomString(64);
    CHECK(sample.size() == 64);
    bool alphabetOnly = true;
    for (char c : sample) {
        const bool ok = (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
        if (!ok) alphabetOnly = false;
    }
    CHECK(alphabetOnly);

    if (failures == 0) std::printf("core_text_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
