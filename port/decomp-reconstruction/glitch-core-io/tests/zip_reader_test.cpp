// SZipFileEntry copy and assignment, CZipReader directory helpers, and the IrrXML callback.
#include "glitch-core-io/io/irr_xml_file_read_callback.hpp"
#include "io_stub_files.hpp"
#include "glitch-core-io/io/zip_reader.hpp"

#include <algorithm>
#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

// A read file over a string, with working position and size.
class BufferFile : public glitch::io::testing::StubReadFile {
public:
    explicit BufferFile(glitch::core::stringc bytes) : data(std::move(bytes)) {}
    std::int32_t read(void* buffer, std::uint32_t count) override {
        std::size_t n = std::min<std::size_t>(count, data.size() - pos);
        std::memcpy(buffer, data.data() + pos, n);
        pos += n;
        return static_cast<std::int32_t>(n);
    }
    bool seek(long offset, bool relative) override {
        long target = relative ? static_cast<long>(pos) + offset : offset;
        if (target < 0 || static_cast<std::size_t>(target) > data.size()) return false;
        pos = static_cast<std::size_t>(target);
        return true;
    }
    long getSize() const override { return static_cast<long>(data.size()); }
    long getPos() const override { return static_cast<long>(pos); }

    glitch::core::stringc data;
    std::size_t pos = 0;
};

static void testEntryCopy() {
    SZipFileEntry a;
    a.zipFileName = "dir/a.txt";
    a.simpleFileName = "a.txt";
    a.path = "x";
    a.fileDataPosition = 11;
    a.header.ExtraFieldLength = 3;
    SZipFileEntry b(a);
    CHECK(b.zipFileName == "dir/a.txt" && b.simpleFileName == "a.txt" && b.path == "x");
    CHECK(b.fileDataPosition == 11 && b.header.ExtraFieldLength == 3);
    SZipFileEntry c;
    c = b;
    CHECK(c.simpleFileName == "a.txt" && c.fileDataPosition == 11);
    c = c;
    CHECK(c.zipFileName == "dir/a.txt");
}

static void testDirectory() {
    CZipReader zip;
    CHECK(zip.getFileCount() == 0);
    SZipFileEntry first;
    first.simpleFileName = "one";
    zip.entries.push_back(first);
    SZipFileEntry second;
    second.simpleFileName = "two";
    second.header.Sig = 99;
    zip.entries.push_back(second);
    CHECK(zip.getFileCount() == 2);
    CHECK(zip.getFileInfo(1)->simpleFileName == "two" && zip.getFileInfo(1)->header.Sig == 99);
}

static void testDeletePath() {
    CZipReader zip;
    glitch::core::stringc a = "dir/sub\\file.txt";
    zip.deletePathFromFilename(a);
    CHECK(a == "file.txt");
    glitch::core::stringc b = "/x";
    zip.deletePathFromFilename(b);
    CHECK(b == "/x");
    glitch::core::stringc c = "plain";
    zip.deletePathFromFilename(c);
    CHECK(c == "plain");
    glitch::core::stringc d = "trailing/";
    zip.deletePathFromFilename(d);
    CHECK(d.empty());
    glitch::core::stringc e;
    zip.deletePathFromFilename(e);
    CHECK(e.empty());
}

static void testValidSignature() {
    BufferFile good(glitch::core::stringc("PK\x03\x04rest", 8));
    CHECK(CZipReader::isValid(&good));
    CHECK(good.pos == 0);  // position restored
    BufferFile bad(glitch::core::stringc("ZZZZ", 4));
    CHECK(!CZipReader::isValid(&bad));
    CHECK(!CZipReader::isValid("glitch_zip_missing_file.zip"));
}

static void testIrrXmlCallback() {
    BufferFile* inner = new BufferFile("0123456789");
    {
        CIrrXMLFileReadCallBack cb(inner);  // the callback drops its reference to the file when it ends
        char buf[4] = {0};
        cb.read(buf, 3);
        CHECK(std::memcmp(buf, "012", 3) == 0);
        CHECK(inner->getPos() == 3);
        CHECK(cb.getSize() == 10);
    }
}

int main() {
    testEntryCopy();
    testDirectory();
    testDeletePath();
    testValidSignature();
    // findFile: the key is the name; with flagA it is lower-cased, and with flagB its path is removed.
    {
        CZipReader indexed;
        SZipFileEntry first;
        first.simpleFileName = "a.txt";
        SZipFileEntry second;
        second.simpleFileName = "b.txt";
        indexed.entries = {first, second};
        CHECK(indexed.findFile("b.txt") == 1);
        CHECK(indexed.findFile("zz.txt") == -1);
        indexed.ignoreCase = true;
        CHECK(indexed.findFile("B.TXT") == 1);
        indexed.ignorePaths = true;
        CHECK(indexed.findFile("dir/a.txt") == 0);
    }
    testIrrXmlCallback();
    if (failures == 0) std::printf("zip_reader_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
