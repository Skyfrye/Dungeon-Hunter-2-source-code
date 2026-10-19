#include "tinyxml-and-c-libs/ssencdec.hpp"

#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Encodes with the native encoder and returns the characters up to the first NUL.
static std::string encode(const std::string& text) {
    unsigned char* blob = SSEncDec_String2Blob(text.c_str());
    std::string out(reinterpret_cast<char*>(blob));
    delete[] blob;
    return out;
}

static std::string decode(const std::string& blob) {
    char* text = SSEncDec_Blob2String(blob.c_str());
    std::string out(text);
    delete[] text;
    return out;
}

int main() {
    // Key table: index 0..63 maps to the 64 characters, and the key of each character maps back.
    CHECK(SSEncDec_GetCharFromKeyByIndex(0) == 'a');
    CHECK(SSEncDec_GetCharFromKeyByIndex(25) == 'z');
    CHECK(SSEncDec_GetCharFromKeyByIndex(26) == 'A');
    CHECK(SSEncDec_GetCharFromKeyByIndex(51) == 'Z');
    CHECK(SSEncDec_GetCharFromKeyByIndex(52) == '0');
    CHECK(SSEncDec_GetCharFromKeyByIndex(61) == '9');
    CHECK(SSEncDec_GetCharFromKeyByIndex(62) == '_');
    CHECK(SSEncDec_GetCharFromKeyByIndex(63) == '-');
    for (int k = 0; k < 64; ++k) {
        CHECK(SSEncDec_GetKeyFromChar(SSEncDec_GetCharFromKeyByIndex(k)) == k);
        CHECK(SSEncDec_GetKeyFromCharLC(SSEncDec_GetCharFromKeyByIndexLC(k)) == k);
    }

    // The two copies agree for every key.
    for (int k = 0; k < 64; ++k) CHECK(SSEncDec_GetCharFromKeyByIndex(k) == SSEncDec_GetCharFromKeyByIndexLC(k));

    // Hand-worked from the pseudocode: 'a' (0x61) splits into 0x21 and 0x01, which are 'H' and 'b'.
    CHECK(encode("a") == "Hb");
    CHECK(decode("Hb") == "a");

    // Round trips across lengths that change how the bits split across characters.
    const char* samples[] = {"", "a", "ab", "abc", "DungeonHunter2", "ab_-09Z", "savegame.xml 0123456789"};
    for (const char* s : samples) {
        CHECK(decode(encode(s)) == s);
    }

    // The encoder output contains only key characters.
    for (char c : encode("DungeonHunter2 save data")) {
        const bool key = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '_' || c == '-';
        CHECK(key);
    }

    std::printf("%s\n", failures ? "ssencdec: FAILED" : "ssencdec: ok");
    return failures != 0;
}
