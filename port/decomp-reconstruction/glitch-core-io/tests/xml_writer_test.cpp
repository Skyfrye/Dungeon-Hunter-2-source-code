// CXMLWriter output encoding (4-byte code units), comments, attributes and closing tags.
#include "glitch-core-io/io/xml_writer.hpp"
#include "io_stub_files.hpp"

#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using glitch::io::CXMLWriter;
using glitch::io::IWriteFile;

// Collects every written byte.
class MemoryWriteFile : public glitch::io::testing::StubWriteFile {
public:
    std::size_t write(const void* data, unsigned int count) override {
        bytes.append(static_cast<const char*>(data), count);
        return count;
    }
    std::string bytes;
};

// Expected encoding: each code unit as a 4-byte little-endian word.
static std::string enc(const wchar_t* text) {
    std::string out;
    for (const wchar_t* p = text; *p; ++p) {
        std::uint32_t w = static_cast<std::uint32_t>(*p);
        out.append(reinterpret_cast<const char*>(&w), 4);
    }
    return out;
}

int main() {
    MemoryWriteFile* mem = new MemoryWriteFile;
    {
        CXMLWriter w(mem);
        CHECK(mem->referenceCounter == 2);  // the writer holds a reference

        w.writeXMLHeader();
        std::string header;
        std::uint32_t bom = 0xfeff;
        header.append(reinterpret_cast<const char*>(&bom), 4);
        header += enc(L"<?xml version=\"1.0\"?>");
        header += enc(L"\n");
        CHECK(mem->bytes == header);
        CHECK(!w.flag);

        mem->bytes.clear();
        w.writeComment(L"hi");
        CHECK(mem->bytes == enc(L"<!--") + enc(L"hi") + enc(L"-->"));
        CHECK(w.flag);  // writeText set it

        mem->bytes.clear();
        w.writeAttribute(L"a", L"1");
        CHECK(mem->bytes == enc(L" ") + enc(L"a") + enc(L"=\"") + enc(L"1") + enc(L"\""));

        // Closing tag: one tab per remaining indent level when the flag is clear.
        mem->bytes.clear();
        w.flag = false;
        w.indent = 2;
        w.writeClosingTag(L"x");
        CHECK(w.indent == 1);
        CHECK(mem->bytes == enc(L"\t") + enc(L"</") + enc(L"x") + enc(L">"));
        CHECK(!w.flag);

        // With the flag set, no tabs are written.
        mem->bytes.clear();
        w.flag = true;
        w.indent = 1;
        w.writeClosingTag(L"y");
        CHECK(mem->bytes == enc(L"</") + enc(L"y") + enc(L">"));
    }
    CHECK(mem->referenceCounter == 1);  // the writer released its reference
    mem->drop();

    if (failures == 0) std::printf("xml_writer_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
