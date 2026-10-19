// Checks for the r1-tinyxml-and-c-libs-pack0-28604f-0 batch: the SSEncDec LC copies (0x89cd60, 0x89d034, 0x89d164,
// 0x89d180) against the non-LC copies, and TiXmlPrinterDH::VisitEnter (0x518110) for the start-tag layouts.
// Build: bash tools/trackb/check_tu.sh --test <this file> src/ssencdec.cpp src/tixml_dh.cpp
#include "tinyxml-and-c-libs/ssencdec.hpp"
#include "tinyxml-and-c-libs/tixml_dh.hpp"
#include "tinyxml-and-c-libs/tb/tixml_text.hpp"

#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Encodes with one copy and returns the text. The encoder output is NUL-terminated and holds only key characters.
static std::string encodeNonLC(const std::string& text) {
    unsigned char* blob = SSEncDec_String2Blob(text.c_str());
    std::string out(reinterpret_cast<char*>(blob));
    delete[] blob;
    return out;
}

// The LC functions return char*, but the buffer is a new[] of unsigned char, so it is freed through that type.
static std::string encodeLC(const std::string& text) {
    char* blob = SSEncDec_String2BlobLC(text.c_str());
    std::string out(blob);
    delete[] reinterpret_cast<unsigned char*>(blob);
    return out;
}

static std::string decodeLC(const std::string& blob) {
    char* text = SSEncDec_Blob2StringLC(blob.c_str());
    std::string out(text);
    delete[] reinterpret_cast<unsigned char*>(text);
    return out;
}

static void checkSSEncDec() {
    // Hand-worked from the pseudocode: 'a' (0x61) packs to 'H' (0x21) and 'b' (0x01).
    CHECK(encodeLC("a") == "Hb");
    CHECK(encodeNonLC("a") == "Hb");

    // Blob2ByteArrayLC decodes "Hb" to the single byte 'a' and returns (6 * strlen) / 8 = 1.
    unsigned char* decoded = nullptr;
    const int length = SSEncDec_Blob2ByteArrayLC(&decoded, "Hb");
    CHECK(length == 1);
    CHECK(decoded[0] == 'a');
    delete[] decoded;

    // The non-LC decoder returns the same length for every blob that the LC decoder sees.
    const char* blobs[] = {"", "H", "Hb", "abcdefgh", "DungeonHunter2_-"};
    for (const char* b : blobs) {
        unsigned char* p = nullptr;
        unsigned char* q = nullptr;
        const int n1 = SSEncDec_Blob2ByteArray(&p, b);
        const int n2 = SSEncDec_Blob2ByteArrayLC(&q, b);
        CHECK(n1 == n2);
        CHECK(std::memcmp(p, q, static_cast<std::size_t>(n1 + 1)) == 0);
        delete[] p;
        delete[] q;
    }

    // The two copies agree on encoding and decoding, and round trip.
    const char* samples[] = {"", "a", "ab", "abc", "DungeonHunter2", "ab_-09Z", "savegame.xml 0123456789"};
    for (const char* s : samples) {
        CHECK(encodeLC(s) == encodeNonLC(s));
        CHECK(decodeLC(encodeLC(s)) == s);
    }

    // Zero-length ByteArray2BlobLC: two zero bytes (the buffer is 2 bytes and no trailing character is written).
    unsigned char* empty = SSEncDec_ByteArray2BlobLC(reinterpret_cast<const unsigned char*>("x"), 0);
    CHECK(empty[0] == 0 && empty[1] == 0);
    delete[] empty;

    // Characters are signed (the original loads a blob byte with LDRSB and compares it signed). 0xC3 is -61, which is at
    // most 57, so its key is (signed char)(-61 + 4) = -57 in both copies. As an unsigned char that is 199.
    const char high = static_cast<char>(0xC3);
    CHECK(SSEncDec_GetKeyFromChar(high) == -57);
    CHECK(SSEncDec_GetKeyFromCharLC(high) == -57);
    CHECK(static_cast<unsigned char>(SSEncDec_GetKeyFromChar(high)) == 199);

    // 0x84 is -124, so its key is (signed char)(-124 + 4) = -120. 0x80 is -128, so its key is -124.
    const char b84 = static_cast<char>(0x84);
    CHECK(SSEncDec_GetKeyFromChar(b84) == -120);
    CHECK(SSEncDec_GetKeyFromCharLC(b84) == -120);
    CHECK(SSEncDec_GetKeyFromChar(static_cast<char>(0x80)) == -124);

    // Decode a blob with negative keys. The keys are 'a' 0, 0x84 -120, 0x84 -120, 'b' 1, 'c' 2, 'd' 3. Worked from the
    // pseudocode with the signed shifts, the 6 characters give (6 * 6) / 8 = 4 bytes: 00 e2 fc c2.
    const char negBlob[] = {'a', static_cast<char>(0x84), static_cast<char>(0x84), 'b', 'c', 'd', '\0'};
    const unsigned char negExpected[] = {0x00, 0xE2, 0xFC, 0xC2};
    {
        unsigned char* bytes = nullptr;
        const int n = SSEncDec_Blob2ByteArray(&bytes, negBlob);
        CHECK(n == 4);
        CHECK(std::memcmp(bytes, negExpected, 4) == 0);
        delete[] bytes;
    }
    {
        unsigned char* bytes = nullptr;
        const int n = SSEncDec_Blob2ByteArrayLC(&bytes, negBlob);
        CHECK(n == 4);
        CHECK(std::memcmp(bytes, negExpected, 4) == 0);
        delete[] bytes;
    }

    // Key table spot checks: '-' is 63, '_' is 62, '0' is 52, 'a' is 0, 'Z' is 51.
    CHECK(SSEncDec_GetKeyFromChar('-') == 63);
    CHECK(SSEncDec_GetKeyFromChar('_') == 62);
    CHECK(SSEncDec_GetKeyFromChar('0') == 52);
    CHECK(SSEncDec_GetKeyFromCharLC('a') == 0);
    CHECK(SSEncDec_GetKeyFromCharLC('Z') == 51);
}

static void checkVisitEnter() {
    // Attributes: each on its own line with one indent (depth is 1 after the increment), then a line break, then " />".
    {
        TiXmlPrinterDH p;
        TiXmlElement root("root");
        root.SetAttribute("a", "1");  // the attribute set chains a -> b (real TinyXML 2.5.3)
        root.SetAttribute("b", "2");
        CHECK(p.VisitEnter(root, root.FirstAttribute()));
        CHECK(p.buffer == "<root\n\ta=\"1\"\n\tb=\"2\"\n />\n");
        CHECK(p.depth == 1);
        CHECK(!p.simpleTextPrint);
    }

    // Nested at depth 2 with one attribute: two tabs before the name, three before the attribute.
    // The attribute must come from the element's own TiXmlAttributeSet. TiXmlAttribute::Next (0x483ac8, tinyxml.cpp:1174)
    // walks the circular list and decides "end" by looking at the *next* attribute's name and value ("We are using
    // knowledge of the sentinel"), so it dereferences next unconditionally: a standalone TiXmlAttribute has no sentinel
    // and its next is not a valid attribute, which is a null dereference inside Next. Attaching the attribute puts the
    // sentinel at the end of the list and makes Next return null there, which is the case this check is about.
    {
        TiXmlPrinterDH p;
        p.depth = 2;
        TiXmlElement item("item");
        item.SetAttribute("k", "v");
        CHECK(p.VisitEnter(item, item.FirstAttribute()));
        CHECK(p.buffer == "\t\t<item\n\t\t\tk=\"v\"\n />\n");
        CHECK(p.depth == 3);
    }

    // A single text child that is not CDATA: ">" and no line break, and the simple-text flag is set.
    {
        TiXmlPrinterDH p;
        TiXmlElement para("p");
        para.LinkEndChild(new TiXmlText("t"));  // the element owns its children
        CHECK(p.VisitEnter(para, nullptr));
        CHECK(p.buffer == "<p\n>");
        CHECK(p.simpleTextPrint);
        CHECK(p.depth == 1);
    }

    // A single CDATA text child: ">" and a line break, no simple-text flag.
    {
        TiXmlPrinterDH p;
        TiXmlText* cdata = new TiXmlText("t");
        cdata->SetCDATA(true);
        TiXmlElement para("p");
        para.LinkEndChild(cdata);
        CHECK(p.VisitEnter(para, nullptr));
        CHECK(p.buffer == "<p\n>\n");
        CHECK(!p.simpleTextPrint);
    }

    // First and last child differ: a line break, no simple-text flag.
    {
        TiXmlPrinterDH p;
        TiXmlElement para("p");
        para.LinkEndChild(new TiXmlText("a"));
        para.LinkEndChild(new TiXmlText("b"));
        CHECK(p.VisitEnter(para, nullptr));
        CHECK(p.buffer == "<p\n>\n");
        CHECK(!p.simpleTextPrint);
    }

    // A non-text child (ToText is null): a line break, no simple-text flag.
    {
        TiXmlPrinterDH p;
        TiXmlElement para("p");
        para.LinkEndChild(new TiXmlElement("c"));
        CHECK(p.VisitEnter(para, nullptr));
        CHECK(p.buffer == "<p\n>\n");
        CHECK(!p.simpleTextPrint);
    }

    // The indent and line break are the TiXmlPrinter defaults, and a custom indent is used as is.
    {
        TiXmlPrinterDH p;
        p.indent = "  ";
        p.lineBreak = "\r\n";
        p.depth = 1;
        TiXmlElement e("e");
        CHECK(p.VisitEnter(e, nullptr));
        CHECK(p.buffer == "  <e\r\n />\r\n");
    }
}

int main() {
    checkSSEncDec();
    checkVisitEnter();
    std::printf("%s\n", failures ? "r1-tinyxml-and-c-libs-pack0-28604f-0: FAILED" : "r1-tinyxml-and-c-libs-pack0-28604f-0: ok");
    return failures != 0;
}
