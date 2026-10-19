// CXMLReaderImpl accessors (char and wchar_t) on hand-filled records, plus the
// readToNextElement loop over a scripted parser.
#include "glitch-core-io/io/xml_reader.hpp"

#include <cstdio>
#include <string>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using glitch::io::CXMLReaderImpl;

namespace {

// Parser stand-in: each read() sets the node type from a script.
struct ScriptedReader : CXMLReaderImpl<char, glitch::IReferenceCounted> {
    std::vector<int> script;
    std::size_t next = 0;
    bool read() override {
        if (next >= script.size()) return false;
        nodeType = script[next++];
        return true;
    }
};

struct ScriptedWideReader : CXMLReaderImpl<wchar_t, glitch::IReferenceCounted> {
    std::vector<int> script;
    std::size_t next = 0;
    bool read() override {
        if (next >= script.size()) return false;
        nodeType = script[next++];
        return true;
    }
    float getAttributeValueAsFloat(const wchar_t*) const override { return 0.f; }
    float getAttributeValueAsFloat(int) const override { return 0.f; }
};

}  // namespace

int main() {
    ScriptedReader reader;
    reader.defaultValue = "fallback";
    reader.nodeName = "node";
    reader.nodeType = 2;
    reader.emptyElement = true;
    reader.sourceFormat = 3;
    reader.parserFormat = 4;
    reader.attributes.push_back({"x", "2.5"});
    reader.attributes.push_back({"count", "17"});
    reader.attributes.push_back({"name", "abc"});

    CHECK(reader.getNodeType() == 2);
    CHECK(reader.getAttributeCount() == 3);
    CHECK(std::string(reader.getAttributeName(1)) == "count");
    CHECK(reader.getAttributeName(3) == nullptr);
    CHECK(reader.getAttributeName(-1) == nullptr);
    CHECK(std::string(reader.getAttributeValue(2)) == "abc");
    CHECK(reader.getAttributeValue(7) == nullptr);

    CHECK(std::string(reader.getAttributeValue("name")) == "abc");
    CHECK(reader.getAttributeValue("missing") == nullptr);
    CHECK(std::string(reader.getAttributeValueSafe("missing")) == "fallback");
    CHECK(std::string(reader.getAttributeValueSafe("name")) == "abc");

    CHECK(reader.getAttributeValueAsInt("count") == 17);
    CHECK(reader.getAttributeValueAsInt(1) == 17);
    CHECK(reader.getAttributeValueAsFloat("x") == 2.5f);
    CHECK(reader.getAttributeValueAsFloat("missing") == 0.f);
    CHECK(reader.getAttributeValueAsFloat(0) == 2.5f);
    CHECK(reader.getAttributeValueAsFloat(9) == 0.f);

    CHECK(std::string(reader.getNodeName()) == "node");
    CHECK(std::string(reader.getNodeData()) == "node");
    CHECK(reader.isEmptyElement());
    CHECK(reader.getSourceFormat() == 3 && reader.getParserFormat() == 4);

    // readToNextElement skips nodes until one of type 1, and reports the end of input.
    ScriptedReader scripted;
    scripted.script = {0, 2, 1, 5};
    CHECK(scripted.readToNextElement());
    CHECK(scripted.getNodeType() == 1);
    CHECK(!scripted.readToNextElement() || scripted.getNodeType() == 1);
    ScriptedReader empty;
    CHECK(!empty.readToNextElement());

    // Wide records use the same accessor logic.
    ScriptedWideReader wide;
    wide.nodeName = L"w";
    wide.defaultValue = L"dflt";
    wide.attributes.push_back({L"a", L"first"});
    wide.attributes.push_back({L"b", L"second"});
    CHECK(wide.getAttributeCount() == 2);
    CHECK(std::wstring(wide.getAttributeName(1)) == L"b");
    CHECK(std::wstring(wide.getAttributeValue(L"a")) == L"first");
    CHECK(wide.getAttributeValue(L"zz") == nullptr);
    CHECK(std::wstring(wide.getAttributeValueSafe(L"zz")) == L"dflt");
    CHECK(std::wstring(wide.getNodeData()) == L"w");
    wide.script = {2, 1};
    CHECK(wide.readToNextElement() && wide.getNodeType() == 1);

    std::printf("%s\n", failures ? "xml_reader: FAILED" : "xml_reader: ok");
    return failures != 0;
}
