// CLimitReadFile window, clone and factory; CFile base name; read/write factories.
#include "glitch-core-io/io/file.hpp"
#include "glitch-core-io/io/limit_read_file.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/io/read_file.hpp"
#include "glitch-core-io/io/write_file.hpp"
#include "io_stub_files.hpp"

#include <cstdio>
#include <cstring>
#include <stdexcept>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using glitch::io::CLimitReadFile;
using glitch::io::IReadFile;

// A read file whose position and full path are fixed, to drive CLimitReadFile.
class FakeFile : public glitch::io::testing::StubReadFile {
public:
    FakeFile(long pos, std::string full) : position(pos), fullPath(std::move(full)) {}
    long getPos() const override { return position; }
    bool seek(long offset, bool relative) override {
        position = relative ? position + offset : offset;
        return true;
    }
    const char* getFullPath() const override { return fullPath.c_str(); }
    IReadFile* clone() const override { return new FakeFile(position, fullPath); }

    long position;
    std::string fullPath;
};

static void testLimitWindow() {
    FakeFile* base = new FakeFile(20, "game");
    CLimitReadFile lim(base, 100, "data.bin");
    CHECK(lim.start == 20 && lim.end == 120);
    CHECK(lim.position == 20);
    CHECK(lim.fullName == "game/data.bin");
    CHECK(lim.name == "data.bin");
    CHECK(lim.file != nullptr && lim.file != base);
    CHECK(lim.file->getPos() == 20);  // the wrapped clone was seeked to the start
    base->drop();
}

static void testFiveArgumentForm() {
    FakeFile* base = new FakeFile(5, "dir");
    CLimitReadFile lim(base, 7, "a.dat", "ignored");
    CHECK(lim.start == 5 && lim.end == 12 && lim.fullName == "ignored");
    base->drop();
}

static void testNullBase() {
    CLimitReadFile lim(nullptr, 9, "none");
    CHECK(lim.file == nullptr);
    CHECK(lim.start == 0 && lim.end == 0 && lim.position == 0);
    CHECK(lim.fullName.empty());
}

static void testClone() {
    FakeFile* base = new FakeFile(3, "pack");
    CLimitReadFile lim(base, 40, "x");
    lim.position = 11;
    IReadFile* c = lim.clone();
    auto* copy = static_cast<CLimitReadFile*>(c);
    CHECK(copy != nullptr && copy != &lim);
    CHECK(copy->start == 3 && copy->end == 43 && copy->position == 11);
    CHECK(copy->name == "x");
    CHECK(copy->fullName == "pack/x");
    CHECK(copy->file != nullptr && copy->file != lim.file);
    c->drop();
    base->drop();
}

static void testFactory() {
    FakeFile* base = new FakeFile(0, "");
    IReadFile* f = glitch::io::createLimitReadFile("name.bin", base, 4);
    CHECK(f != nullptr);
    auto* lim = static_cast<CLimitReadFile*>(f);
    CHECK(lim->start == 0 && lim->end == 4);
    CHECK(lim->fullName == "/name.bin");
    f->drop();
    base->drop();
}

static void testCFile() {
    glitch::io::CFile dir(nullptr, "dir/sub/file.txt", true);
    CHECK(dir.name == "dir/sub/file.txt");
    CHECK(dir.baseNameOffset == 8);
    CHECK(dir.obfuscated);
    glitch::io::CFile plain(nullptr, "plain.txt", false);
    CHECK(plain.baseNameOffset == 0 && !plain.obfuscated);
    // A name that ends with the separator (a directory fopen opened on Linux/Android) has the empty base name: STLport's
    // substr(pos) throws only for pos > size, and the original never reaches that (sep < size). It must not throw.
    bool threw = false;
    try {
        glitch::io::CFile trailing(nullptr, "trailing/", false);
        CHECK(trailing.baseNameOffset == 9);
    } catch (const std::out_of_range&) {
        threw = true;
    }
    CHECK(!threw);
}

static void testFileFactories() {
    const char* name = "glitch_io_factory_test.bin";
    CHECK(glitch::io::createReadFile("glitch_io_factory_missing.bin") == nullptr);

    glitch::io::IWriteFile* w = glitch::io::createWriteFile(name, false);
    CHECK(w != nullptr);
    if (w) {
        CHECK(w->write("hello", 5) == 5);
        w->drop();
    }

    IReadFile* r = glitch::io::createReadFile(name);
    CHECK(r != nullptr);
    if (r) {
        CHECK(r->getSize() == 5);
        r->drop();
    }
    std::remove(name);

    char block[4] = {1, 2, 3, 4};
    glitch::io::CMemoryReadFile* m = glitch::io::createMemoryReadFile(block, 4, "mem", false);
    CHECK(m != nullptr && m->buffer == block && m->size == 4);
    if (m) m->drop();
}

int main() {
    testLimitWindow();
    testFiveArgumentForm();
    testNullBase();
    testClone();
    testFactory();
    testCFile();
    testFileFactories();
    if (failures == 0) std::printf("limit_read_file_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
