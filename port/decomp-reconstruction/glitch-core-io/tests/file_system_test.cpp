// CFileSystem factories and working-directory helpers.
#include "glitch-core-io/io/file_system.hpp"
#include "glitch-core-io/io/interfaces.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

int main() {
    CFileSystem fs;
    CHECK(std::strcmp(fs.getWorkingDirectory(), "") == 0);
    CHECK(!fs.changeWorkingDirectoryTo("glitch_no_such_directory_xyz"));
    CHECK(fs.changeWorkingDirectoryTo("."));
    CHECK(std::strcmp(CFileSystem::WorkingDirectory, ".") == 0);
    CHECK(std::strcmp(fs.getWorkingDirectory(), ".") == 0);

    CHECK(fs.getAbsolutePath("a/b.txt") == "a/b.txt");
    CHECK(fs.getFileDir("a/b/c.txt") == "a/b");
    CHECK(fs.getFileDir("c.txt") == ".");
    CHECK(fs.getFileDir("a\\b") == "a");
    CHECK(fs.getFileBasename("a/b/c.txt", true) == "c.txt");
    CHECK(fs.getFileBasename("a/b/c.txt", false) == "c");
    CHECK(fs.getFileBasename("c", false) == "c");
    CHECK(fs.getFileBasename("dir/", true).empty());

    CFileList* list = fs.createFileList();
    CHECK(list != nullptr && list->getFileCount() == 0);
    if (list) list->drop();

    CHECK(fs.createMemoryReadFile(nullptr, 4, "none", false) == nullptr);
    char block[3] = {'a', 'b', 'c'};
    IReadFile* mem = fs.createMemoryReadFile(block, 3, "block", false);
    CHECK(mem != nullptr);
    if (mem) mem->drop();

    const char* name = "glitch_fs_factory_test.bin";
    IWriteFile* written = fs.createAndWriteFile(name, false);
    CHECK(written != nullptr);
    if (written) {
        CHECK(written->write("xy", 2) == 2);
        written->drop();
    }
    std::remove(name);

    IXMLWriter* writer = fs.createXMLWriter(static_cast<IWriteFile*>(nullptr));
    CHECK(writer != nullptr);
    if (writer) writer->drop();

    IAttributes* attributes = fs.createEmptyAttributes(nullptr);
    CHECK(attributes != nullptr);
    if (attributes) attributes->drop();

    IFileSystem* created = createFileSystem();
    CHECK(created != nullptr);
    if (created) created->drop();

    // existFile: a missing name is not found; a file written to the working directory is.
    const char* probe = "glitch_core_io_probe.tmp";
    CHECK(!fs.existFile("glitch_core_io_no_such_file.tmp"));
    CHECK(!fs.existFile(glitch::core::stringc("glitch_core_io_no_such_file.tmp")));
    if (std::FILE* f = std::fopen(probe, "wb")) {
        std::fclose(f);
        CHECK(fs.existFile(probe));
        CHECK(fs.existFile(glitch::core::stringc(probe)));
        std::remove(probe);
    }

    if (failures == 0) std::printf("file_system_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
