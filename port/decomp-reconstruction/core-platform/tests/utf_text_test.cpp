#include "core-platform/utf_text.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // ASCII, 2-byte (U+00E9) and 3-byte (U+20AC) units.
    const std::uint16_t units[] = {'A', 0x00E9, 0x20AC};
    char utf8[16];
    int n = ConvertUnicodeToUTF8(utf8, units, 3);
    CHECK(n == 6);
    CHECK(std::memcmp(utf8, "A\xC3\xA9\xE2\x82\xAC", 6) == 0);
    CHECK(utf8[6] == '\0');

    std::uint16_t back[8];
    int m = ConvertUTF8ToUnicode(back, utf8, n);
    CHECK(m == 3);
    CHECK(back[0] == 'A' && back[1] == 0x00E9 && back[2] == 0x20AC && back[3] == 0);

    // Translate helpers allocate and zero the buffer.
    std::uint16_t* alloc = nullptr;
    TranslateUtf82Unicode(&alloc, "hi", 2, 1);
    CHECK(alloc != nullptr && alloc[0] == 'h' && alloc[1] == 'i' && alloc[2] == 0);
    delete[] alloc;

    char* bytes = nullptr;
    const std::uint16_t word[] = {'o', 'k'};
    TranslateUnicode2Utf8(&bytes, word, 2, 1);
    CHECK(bytes != nullptr && std::strcmp(bytes, "ok") == 0);
    delete[] bytes;

    // Legacy decoder (UTF8ToUnicode_Old / _OldLC): ASCII, 2-byte, 3-byte, a 4-byte
    // sequence truncated to 16 bits, and a stray lead byte that is stored raw.
    std::uint16_t legacy[16] = {0};
    UTF8ToUnicode_Old(legacy, "A\xC3\xA9\xE2\x82\xAC");
    CHECK(legacy[0] == 0x41 && legacy[1] == 0xE9 && legacy[2] == 0x20AC && legacy[3] == 0);
    std::uint16_t quad[16] = {0};
    UTF8ToUnicode_OldLC(quad, "\xF0\x9F\x98\x80z");
    CHECK(quad[0] == 0xF600 && quad[1] == 'z' && quad[2] == 0);
    std::uint16_t raw[16] = {0};
    UTF8ToUnicode_OldLC(raw, "\xFEq");
    CHECK(raw[0] == 0xFFFE && raw[1] == 'q' && raw[2] == 0);

    std::printf("%s\n", failures ? "utf_text: FAILED" : "utf_text: ok");
    return failures != 0;
}
