// CXMLAttributesReader / CXMLAttributesWriter: fields and reference counts of the wrapped object.
#include "glitch-core-io/io/xml_attributes.hpp"
#include "glitch-core-io/io/xml_reader.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

namespace {

// Minimal wide reader: the parse step and the attribute accessors are not needed here.
struct StubWideReader : CXMLReaderImpl<wchar_t, glitch::IReferenceCounted> {
    bool read() override { return false; }
    float getAttributeValueAsFloat(const wchar_t*) const override { return 0.f; }
    float getAttributeValueAsFloat(int) const override { return 0.f; }
};

}  // namespace

int main() {
    // Writer: takes a reference on the XML writer and releases it on destruction.
    CXMLWriter* xml = new CXMLWriter(nullptr);
    CHECK(xml->referenceCounter == 1);
    {
        CXMLAttributesWriter attrs(xml, true, L"group");
        CHECK(xml->referenceCounter == 2);
        CHECK(attrs.flag && attrs.name != nullptr && attrs.writer == xml);
    }
    CHECK(xml->referenceCounter == 1);
    xml->drop();

    // Reader: same ownership rule for the wide XML reader.
    StubWideReader* reader = new StubWideReader;
    {
        CXMLAttributesReader attrs(reader, false, L"attributes");
        CHECK(reader->referenceCounter == 2);
        CHECK(!attrs.flag && attrs.reader == reader);
    }
    CHECK(reader->referenceCounter == 1);
    reader->drop();

    if (failures == 0) std::printf("xml_attributes_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
