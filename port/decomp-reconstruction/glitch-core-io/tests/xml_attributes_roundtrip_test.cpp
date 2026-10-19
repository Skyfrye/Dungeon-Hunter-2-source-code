// CXMLAttributesWriter::write / writeGroup (0x5723f8, 0x571d60) and CXMLAttributesReader::read / readAttributeFromXML (0x571920, 0x57108c):
// a container with a group is written as XML and read back. Link with the glitch-core-io library objects (CAttributes, CXMLWriter,
// the XML reader, the memory read file).
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/io/xml_attributes.hpp"
#include "glitch-core-io/io/xml_writer.hpp"
#include "glitch-core-io/tb/glitch_io.hpp"
#include "io_stub_files.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class MemoryWriteFile : public glitch::io::testing::StubWriteFile {
public:
    std::size_t write(const void* data, unsigned int count) override {
        bytes.append(static_cast<const char*>(data), count);
        return count;
    }
    std::string bytes;
};

// A wide reader over a text buffer, set up as readFile leaves it (NUL terminated, four zero bytes after).
struct WideDoc : glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted> {
    explicit WideDoc(const wchar_t* source) : storage(source) {
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
    using namespace glitch::io;
    CAttributes source(nullptr);
    source.addInt("count", 7, false);
    source.addFloat("scale", 1.5f, false);
    source.addBool("flag", true, false);
    source.addString("title", "hello", false);
    source.push("child");
    source.addInt("depth", 2, false);
    source.pop();

    MemoryWriteFile* file = new MemoryWriteFile;
    {
        CXMLWriter writer(file);
        CXMLAttributesWriter attributesWriter(&writer, true, nullptr);
        CHECK(attributesWriter.write(&source));
    }
    CHECK(file->bytes.size() > 8);

    // The bytes are the XML text in 4-byte code units after a byte order mark; the reader parses that text.
    std::wstring text;
    for (std::size_t i = 4; i + 4 <= file->bytes.size(); i += 4) {
        std::uint32_t unit;
        std::memcpy(&unit, file->bytes.data() + i, 4);
        text.push_back(static_cast<wchar_t>(unit));
    }
    auto* reader = new WideDoc(text.c_str());
    CAttributes target(nullptr);
    {
        CXMLAttributesReader attributesReader(reader, false, nullptr);  // flag false: read from the start (true expects the reader on the root element)
        CHECK(attributesReader.read(&target));
    }
    CHECK(target.getInt("count") == 7);
    CHECK(target.getFloat("scale") == 1.5f);
    CHECK(target.getBool("flag"));
    CHECK(target.getString("title") == "hello");
    CHECK(target.getGroupsCount() == 1);
    target.setGroup(0);
    CHECK(target.getGroupName() == "child");
    CHECK(target.getInt("depth") == 2);

    std::printf("%s\n", failures ? "xml_attributes_roundtrip_test: FAILED" : "xml_attributes_roundtrip_test: all checks passed");
    return failures ? 1 : 0;
}
