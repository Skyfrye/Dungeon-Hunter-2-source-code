// glitch::io::SPakFileEntry copy and assignment, CPakReader's directory accessors,
// deletePathFromFilename and the release of the read file in the destructor.
#include "glitch-core-io/io/pak_reader.hpp"
#include "io_stub_files.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

int main() {
    // The copy constructor and assignment copy all three strings and both integers.
    SPakFileEntry a;
    a.pakFileName = "data/ui/icon.png";
    a.simpleFileName = "icon.png";
    a.path = "x";
    a.pos = 0x1234;
    a.length = 42;
    SPakFileEntry b(a);
    CHECK(b.pakFileName == a.pakFileName && b.simpleFileName == a.simpleFileName && b.path == a.path);
    CHECK(b.pos == 0x1234 && b.length == 42);
    SPakFileEntry c;
    c = b;
    CHECK(c.pakFileName == "data/ui/icon.png" && c.simpleFileName == "icon.png" && c.path == "x");
    CHECK(c.pos == 0x1234 && c.length == 42);
    c = c;  // self-assignment keeps the value
    CHECK(c.pakFileName == "data/ui/icon.png" && c.length == 42);

    // The count and the entry access follow the entry vector (0x50 bytes per entry).
    CPakReader reader;
    CHECK(reader.getFileCount() == 0);
    reader.entries.push_back(a);
    reader.entries.push_back(b);
    CHECK(reader.getFileCount() == 2);
    CHECK(reader.getFileInfo(1)->length == 42 && reader.getFileInfo(0)->pakFileName == a.pakFileName);
    CHECK(reader.getFileInfo(1) == reader.entries.data() + 1);

    // deletePathFromFilename keeps the text after the last separator.
    glitch::core::stringc s = "dir/sub/file.txt";
    reader.deletePathFromFilename(s);
    CHECK(s == "file.txt");
    s = "dir\\file.txt";
    reader.deletePathFromFilename(s);
    CHECK(s == "file.txt");
    s = "/file.txt";  // separator at index 0: unchanged
    reader.deletePathFromFilename(s);
    CHECK(s == "/file.txt");
    s = "plain";  // no separator: unchanged
    reader.deletePathFromFilename(s);
    CHECK(s == "plain");
    s = "a/";  // separator at the end: nothing is left after it
    reader.deletePathFromFilename(s);
    CHECK(s.empty());
    s.clear();
    reader.deletePathFromFilename(s);
    CHECK(s.empty());

    // The destructor drops the read file: a count of 2 goes to 1 and the object stays.
    glitch::io::testing::StubReadFile file;
    file.referenceCounter = 2;
    {
        CPakReader holder;
        holder.readFile = &file;
    }
    CHECK(file.referenceCounter == 1);

    std::printf("%s\n", failures ? "pak_reader: FAILED" : "pak_reader: ok");
    return failures != 0;
}
