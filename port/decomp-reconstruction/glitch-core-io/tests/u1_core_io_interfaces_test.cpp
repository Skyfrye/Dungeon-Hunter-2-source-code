// Engine unification wave u1-core: the canonical glitch::io interfaces (io/interfaces.hpp, io/iattributes.hpp) driven
// through their base classes, as the original's callers do through the vtable: IReadFile::read returns the byte count,
// getFileName is a const char*, IFileSystem has its 24 slots, CAttributes is an IAttributes, the XML readers are
// IIrrXMLReader. Also the CMemoryReadFile read/readAsync bodies (0x56ecc4, 0x56ebac, 0x56ebe0), the CLimitReadFile read
// position (0x6b44e8) and the readFile failure branch (0x572e78).
#include <cstdio>
#include <cstring>
#include <string>
#include <type_traits>
#include <vector>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/file_system.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/limit_read_file.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/io/memory_write_file.hpp"
#include "glitch-core-io/io/xml_reader.hpp"
#include "glitch-core-io/tb/glitch_io.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

namespace {

struct Callback {
    static int count;
    static int zero;
    static IReadFile* file;
    static void* context;
    static void fn(int n, int isZero, IReadFile* f, void* c) {
        count = n;
        zero = isZero;
        file = f;
        context = c;
    }
};
int Callback::count = -1;
int Callback::zero = -1;
IReadFile* Callback::file = nullptr;
void* Callback::context = nullptr;

// A callback that fails to read (returns 0), for the readFile failure branch.
struct FailingCallBack : IFileReadCallBack {
    int read(void*, int) override { return 0; }
    long getSize() const override { return 8; }
};

struct TextCallBack : IFileReadCallBack {
    explicit TextCallBack(std::string s) : text(std::move(s)) {}
    int read(void* buffer, int size) override {
        std::memcpy(buffer, text.data(), static_cast<std::size_t>(size));
        return size;
    }
    long getSize() const override { return static_cast<long>(text.size()); }
    std::string text;
};

}  // namespace

int main() {
    // CMemoryReadFile through IReadFile: read returns the count and clamps at the end of the block.
    {
        char block[6] = {'a', 'b', 'c', 'd', 'e', 'f'};
        IReadFile* file = new CMemoryReadFile(block, 6, "blk", false);
        char out[8] = {};
        CHECK(file->read(out, 4) == 4 && std::memcmp(out, "abcd", 4) == 0);
        CHECK(file->getPos() == 4);
        CHECK(file->read(out, 4) == 2 && std::memcmp(out, "ef", 2) == 0);  // clamped to the 2 bytes left
        CHECK(file->read(out, 4) == 0);                                      // nothing left
        CHECK(file->getPos() == 6 && file->getSize() == 6);
        CHECK(std::strcmp(file->getFileName(), "blk") == 0 && std::strcmp(file->getFullPath(), "blk") == 0);
        CHECK(file->isAllInMemory());

        // readAsync (no position): reads through slot +0x0c, then callBack(n, n == 0, file, context); true.
        file->seek(0, false);
        int marker = 0;
        CHECK(file->readAsync(out, 3, &Callback::fn, &marker));
        CHECK(Callback::count == 3 && Callback::zero == 0 && Callback::file == file && Callback::context == &marker);
        // readAsync with a position: seek(position, false) first, result ignored, then the read.
        CHECK(file->readAsync(out, 2, 4L, &Callback::fn, &marker));
        CHECK(Callback::count == 2 && std::memcmp(out, "ef", 2) == 0);
        CHECK(file->readAsync(out, 2, 6L, &Callback::fn, &marker));  // at the end: count 0, flag set
        CHECK(Callback::count == 0 && Callback::zero == 1);
        file->drop();
    }

    // CLimitReadFile: read adds the returned count to the position and returns it.
    {
        char block[10] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
        IReadFile* base = new CMemoryReadFile(block, 10, "base", false);
        base->seek(2, false);
        IReadFile* window = createLimitReadFile("win", base, 5);  // [2, 7)
        char out[8] = {};
        CHECK(window->read(out, 3) == 3 && std::memcmp(out, "234", 3) == 0);
        CHECK(window->getPos() == 3);
        CHECK(window->read(out, 9) == 2 && std::memcmp(out, "56", 2) == 0);  // clamped to the window end
        CHECK(window->read(out, 1) == 0);
        CHECK(window->getPos() == 5);
        CHECK(std::strcmp(window->getFileName(), "win") == 0);
        window->drop();
        base->drop();
    }

    // CMemoryWriteFile is an IWriteFile.
    {
        IWriteFile* write = new CMemoryWriteFile(4);
        CHECK(write->write("xyz", 3) == 3 && write->getPos() == 3);
        CHECK(std::strcmp(write->getFileName(), "<memory>") == 0);
        write->drop();
    }

    // IFileSystem: createFileSystem hands out a CFileSystem, and the slots work through the base.
    {
        IFileSystem* fs = createFileSystem();
        CHECK(std::strcmp(fs->getWorkingDirectory(), CFileSystem::WorkingDirectory) == 0);
        IFileList* list = fs->createFileList();
        CHECK(list != nullptr && list->getFileCount() == 0 && list->getFileName(0) == nullptr);
        if (list) list->drop();
        CHECK(fs->getFileDir("a/b/c.txt") == "a/b" && fs->getFileBasename("a/b/c.txt", false) == "c");
        CHECK(!fs->addZipFileArchive("none.zip", true, true));  // the archive containers are not reconstructed
        CHECK(!fs->existFile("glitch_u1_core_no_such_file.tmp"));
        CHECK(fs->createAndOpenFile("glitch_u1_core_no_such_file.tmp") == nullptr);

        // createXMLReader over a memory file: a text without a byte order mark is widened by the wide reader.
        std::string xmlText = "<root a=\"1\"/>";
        IReadFile* memory = fs->createMemoryReadFile(&xmlText[0], static_cast<int>(xmlText.size()), "doc", false);
        CHECK(memory != nullptr);
        IXMLReader* reader = fs->createXMLReader(memory);
        CHECK(reader != nullptr);
        if (reader) {
            CHECK(reader->read());
            CHECK(reader->getNodeType() == 1);  // EXN_ELEMENT
            CHECK(reader->getAttributeCount() == 1);
            CHECK(reader->getAttributeValueAsInt(L"a") == 1);
            reader->drop();
        }
        CHECK(fs->createXMLReader(static_cast<IReadFile*>(nullptr)) == nullptr);
        if (memory) memory->drop();

        // createEmptyAttributes returns an IAttributes; the virtual slots reach CAttributes.
        IAttributes* attributes = fs->createEmptyAttributes(nullptr);
        CHECK(attributes != nullptr);
        if (attributes) {
            attributes->addInt("count", 5, false);
            attributes->addFloat("speed", 1.5f, false);
            CHECK(attributes->getAttributeCount() == 2);
            CHECK(attributes->getInt("count") == 5 && attributes->getInt(0) == 5);
            CHECK(attributes->getFloat("speed") == 1.5f);
            attributes->setAttribute("count", 9);
            CHECK(attributes->getInt("count") == 9);
            CHECK(attributes->existsAttribute("speed") && !attributes->existsAttribute("other"));
            attributes->drop();
        }
        fs->drop();
    }

    // CXMLReaderImpl::readFile: a callback whose read reports 0 fails and the buffer is released.
    {
        auto* reader = new CXMLReaderImpl<char, glitch::IReferenceCounted>();
        FailingCallBack failing;
        CHECK(!reader->readFile(&failing));
        TextCallBack text("<a/>");
        CHECK(reader->readFile(&text));
        reader->drop();
    }

    if (failures == 0) std::printf("u1_core_io_interfaces_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
