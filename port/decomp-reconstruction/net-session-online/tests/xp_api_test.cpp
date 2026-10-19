#include "net-session-online/xp_api.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    char buf[64];
    std::strcpy(buf, "hello world");
    CHECK(XP_API_STRLEN(buf) == 11);
    CHECK(XP_API_STRCMP(buf, (char*)"hello world") == 0);
    CHECK(XP_API_STRNCMP(buf, (char*)"help", 3) == 0);
    CHECK(XP_API_STRCASECMP((char*)"ABC", (char*)"abc") == 0);
    CHECK(XP_API_STRSTR(buf, (char*)"wor") == buf + 6);
    CHECK(XP_API_STRCHR(buf, 'o', 1) == buf + 4);   // mode 1: first occurrence
    CHECK(XP_API_STRCHR(buf, 'o', 0) == buf + 7);   // any other mode: last occurrence

    char dst[32];
    XP_API_STRCPY(dst, (char*)"abc");
    CHECK(std::strcmp(dst, "abc") == 0);
    XP_API_STRCAT(dst, (char*)"def");
    CHECK(std::strcmp(dst, "abcdef") == 0);
    CHECK(XP_API_STRNCPY(dst, (char*)"xy", 2) == dst);
    CHECK(dst[0] == 'x' && dst[1] == 'y');

    CHECK(XP_API_MEMSET(dst, 'z', 3) == dst && dst[2] == 'z');
    char copy[8];
    CHECK(XP_API_MEMCPY(copy, (char*)"qrs", 4) == copy);
    CHECK(std::memcmp(copy, "qrs", 3) == 0);

    CHECK(XP_API_ATOI((char*)"-42") == -42);
    CHECK(XP_API_ATOF((char*)"2.5") == 2.5);

    // Leading spaces are removed in place. Trailing and inner spaces are kept.
    char spaced[] = "   ab c ";
    CHECK(XP_API_STRTRIM(spaced) == spaced);
    CHECK(std::strcmp(spaced, "ab c ") == 0);
    char none[] = "   ";
    XP_API_STRTRIM(none);
    CHECK(none[0] == '\0');
    char empty[] = "";
    XP_API_STRTRIM(empty);
    CHECK(empty[0] == '\0');

    char* made = XP_API_STRNEW((char*)"copy me");
    CHECK(std::strcmp(made, "copy me") == 0);
    delete[] made;

    void* block = XP_API_MALLOC(16);
    CHECK(block != nullptr);
    XP_API_FREE(block);
    XP_API_FREE(nullptr);

    XP_DEBUG_INIT();
    XP_DEBUG_FINALIZE();
    XP_API_GetNationality(buf);

    // Wave 7: integer and string helpers.
    char num[40];
    CHECK(std::strcmp(XP_API_ITOA(0, num, 10), "0") == 0);
    CHECK(std::strcmp(XP_API_ITOA(1234, num, 10), "1234") == 0);
    CHECK(std::strcmp(XP_API_ITOA(-77, num, 10), "-77") == 0);
    CHECK(std::strcmp(XP_API_ITOA(255, num, 16), "FF") == 0);
    CHECK(std::strcmp(XP_API_ITOA(35, num, 36), "Z") == 0);

    CHECK(XP_API_STRCHRFIND((char*)"a|b|c", '|', 1) == (char*)"a|b|c" + 2);
    CHECK(XP_API_STRCHRFIND((char*)"a|b|c", '|', 2) == (char*)"a|b|c" + 4);
    CHECK(XP_API_STRCHRFIND((char*)"a|b|c", '|', 3) == nullptr);
    CHECK(XP_API_STRCHRFIND((char*)"a|b", '|', 0) == (char*)"a|b");

    char field[32];
    CHECK(XP_API_PARSE_DATA((char*)"alpha/beta/gamma", field, 1, '/') == 6);
    CHECK(std::strcmp(field, "beta") == 0);
    CHECK(XP_API_PARSE_DATA((char*)"x", field, 3, '/') == -1);
    CHECK(getValue((char*)"one:two", field, 0, ':') == 0);
    CHECK(std::strcmp(field, "one") == 0);

    char lower[16];
    XP_API_TOLOWER("MiXeD 9!", lower);
    CHECK(std::strcmp(lower, "mixed 9!") == 0);

    char ip[24];
    CHECK(std::strcmp(XP_API_IP_INT2STR(0x0100007f, ip), "127.0.0.1") == 0);
    CHECK(XP_API_IP_STR2INT((char*)"127.0.0.1") == 0x0100007f);
    CHECK(XP_API_IP_STR2INT((char*)"10.20.30.40") == 0x281e140a);

    char ftoa[32];
    CHECK(std::strncmp(XP_API_FTOA(2.5f, ftoa), "2.500000", 8) == 0);

    // drand48 with seed 1 matches glibc: the first lrand48 is 89400484.
    XP_API_Srand48ForTest(1);
    CHECK(XP_API_Lrand48ForTest() == 89400484L);
    CHECK(XP_API_Lrand48ForTest() == 976015093L);
    CHECK(XP_API_GET_RANDOM(nullptr) >= 0);

    char* split = nullptr;
    // The field starts at offset 3. The copy runs to the next field start, so it keeps the delimiter.
    CHECK(XP_API_PARSE_DATA_NEW((char*)"ab;cd;ef", &split, 1, ';') == 3);
    CHECK(std::strcmp(split, "cd;") == 0);
    delete[] split;

    // ARM 0x82b634 (BLT to the copy at 0x82b688): the field runs to the first non-delimiter
    // after the delimiter, so the trailing '|' stays in the copy. Pinned from the listing.
    split = nullptr;
    CHECK(XP_API_PARSE_DATA_NEW((char*)"n|xyz|q", &split, 1, '|') == 2);
    CHECK(std::strcmp(split, "xyz|") == 0);
    delete[] split;
    split = nullptr;
    CHECK(XP_API_PARSE_DATA_NEW((char*)"n|xyz", &split, 1, '|') == 2);
    CHECK(std::strcmp(split, "xyz") == 0);
    delete[] split;

    // File handles: open, write, measure, read back, close.
    const char* tmpName = "xp_api_wave7.tmp";
    int h = XP_API_FILE_OPEN(tmpName, "wb");
    CHECK(h == 1);
    XP_API_FILE_WRITE("hello", 1, 5, h);
    XP_API_FILE_CLOSE(h);
    h = XP_API_FILE_OPEN(tmpName, "rb");
    CHECK(h == 1);
    CHECK(XP_API_FILE_GET_LENGTH(h) == 5);
    char back[8] = {};
    XP_API_FILE_READ(back, 5, 1, h);
    CHECK(std::memcmp(back, "hello", 5) == 0);
    XP_API_FILE_CLOSE(h);
    std::remove(tmpName);

    std::printf("%s\n", failures ? "xp_api: FAILED" : "xp_api: ok");
    return failures != 0;
}
