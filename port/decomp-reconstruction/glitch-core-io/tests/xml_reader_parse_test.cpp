// Runs the narrow and wide XML parsers over a small document held in a text buffer.
#include "glitch-core-io/io/xml_reader.hpp"

#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using Narrow = glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>;
using Wide = glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>;

namespace {

// Text buffers are NUL terminated and followed by four zero bytes, as readFile leaves them.
struct NarrowDoc : Narrow {
    explicit NarrowDoc(const char* text) : storage(text) {
        storage.append(4, '\0');
        textData = &storage[0];
        textLength = static_cast<int>(storage.size());
        current = textData;
        createSpecialCharacterList();
    }
    std::string storage;
    bool read() override { return Narrow::read(); }
};

struct WideDoc : Wide {
    explicit WideDoc(const wchar_t* text) : storage(text) {
        storage.append(4, L'\0');
        textData = &storage[0];
        textLength = static_cast<int>(storage.size());
        current = textData;
        createSpecialCharacterList();
    }
    std::wstring storage;
};

}  // namespace

int main() {
    // Narrow document: declaration, element with attributes, empty element, comment, CDATA, closing tag.
    {
        NarrowDoc doc("<?xml version=\"1.0\"?><root a=\"1\" b='x &amp; y'><item/><!-- c --><![CDATA[raw]]></root>");
        std::vector<int> types;
        while (doc.read()) types.push_back(doc.getNodeType());
        const std::vector<int> expected = {6, 1, 1, 2, 4, 5, 2};
        CHECK(types == expected);
        // The last read consumed the closing tag; the name is kept from it.
        CHECK(std::string(doc.getNodeName()) == "root");
    }
    {
        NarrowDoc doc("<root a=\"1\" b='x &amp; y'><item/></root>");
        CHECK(doc.read() && doc.getNodeType() == 1);
        CHECK(std::string(doc.getNodeName()) == "root");
        CHECK(doc.getAttributeCount() == 2);
        CHECK(std::string(doc.getAttributeValue("a")) == "1");
        CHECK(std::string(doc.getAttributeValue("b")) == "x & y");
        CHECK(doc.read() && doc.getNodeType() == 1 && doc.isEmptyElement());
        CHECK(std::string(doc.getNodeName()) == "item");
        CHECK(doc.read() && doc.getNodeType() == 2);
    }
    {
        // Text node with an entity; the replacement ends the text.
        NarrowDoc doc("<a>hi &lt;</a>");
        CHECK(doc.read() && doc.getNodeType() == 1);
        CHECK(doc.read() && doc.getNodeType() == 3);
        CHECK(std::string(doc.getNodeData()) == "hi <");
        CHECK(doc.read() && doc.getNodeType() == 2);
        CHECK(!doc.read());
    }
    {
        // Replacement behaviour kept from the pseudocode: when exactly one character follows the last
        // entity, it is not copied.
        NarrowDoc doc("<a>&amp;b</a>");
        CHECK(doc.read());
        CHECK(doc.read() && doc.getNodeType() == 3);
        CHECK(std::string(doc.getNodeData()) == "&");
    }
    {
        // Wide document with the same shape.
        WideDoc doc(L"<a k='v'>t</a>");
        std::vector<int> types;
        while (doc.read()) types.push_back(doc.getNodeType());
        const std::vector<int> expected = {1, 3, 2};
        CHECK(types == expected);
        CHECK(std::wstring(doc.getNodeName()) == L"a");
    }
    {
        WideDoc doc(L"<a k='v &amp; w'/>");
        CHECK(doc.read() && doc.getAttributeCount() == 1);
        CHECK(std::wstring(doc.getAttributeValue(L"k")) == L"v & w");
        CHECK(doc.isEmptyElement());
    }

    std::printf("%s\n", failures ? "xml_reader_parse: FAILED" : "xml_reader_parse: ok");
    return failures != 0;
}
