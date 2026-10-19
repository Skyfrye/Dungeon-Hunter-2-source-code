#include "core-platform/deps/io_stream.hpp"
#include "core-platform/filesystem_base.hpp"
#include "core-platform/filesystem_win32.hpp"

#include <cstdio>
#include <string>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// A stream that counts how many instances are alive.
struct CountedStream : IFileStream {
    static int alive;
    CountedStream() { ++alive; }
    ~CountedStream() override { --alive; }
    // The IStreamBase interface is not used by this test.
    std::uint32_t size() const override { return 0; }
    bool canRead() const override { return false; }
    bool canWrite() const override { return false; }
    std::uint64_t peek(void*, std::uint64_t) const override { return 0; }
    std::uint64_t read(void*, std::uint64_t) override { return 0; }
    std::uint64_t write(const void*, std::uint64_t) override { return 0; }
    void seek(std::uint64_t) override {}
    std::uint64_t tell() const override { return 0; }
};
int CountedStream::alive = 0;

int main() {
    // FileSystemBase is abstract, exactly as the original is: _ZTV14FileSystemBase leaves the
    // derived system's slots (+0x6c..+0xa0, +0xb4) pure, so the test drives the one concrete
    // implementation, FileSystemWin32 (RES_PATH is "./" in this build).
    FileSystemWin32 base;
    // The base's own copy (0x34e1ac) is called qualified; the virtual call would reach
    // FileSystemWin32::formatFilePath, which rewrites the separators (checked on fs below).
    CHECK(base.FileSystemBase::formatFilePath("a/b\\c") == "a/b\\c");
    CHECK(base.getAbsolutePath("x/y") == "x/y");
    CHECK(base.ApplyFilenameHacks("save.dat") == "save.dat");

    // Existence checks: a file written here exists, a missing one does not. Each one goes through
    // the virtual the original uses (openFile +0x88 / openResource +0x90 / openSavefile +0x94, then
    // closeFile +0x78), so this drives the dispatch as well as the lookup.
    {
        std::FILE* f = std::fopen("dh2_fs_extra_exists.bin", "wb");
        CHECK(f != nullptr);
        if (f) {
            std::fputs("x", f);
            std::fclose(f);
        }
    }
    CHECK(base.doesFileExists("dh2_fs_extra_exists.bin"));
    CHECK(base.doesResourceExists("dh2_fs_extra_exists.bin"));
    CHECK(base.doesSavefileExists("dh2_fs_extra_exists.bin"));
    CHECK(!base.doesFileExists("dh2_fs_extra_missing.bin"));
    std::remove("dh2_fs_extra_exists.bin");

    // createAndOpenFile: a plain name gets the RES_PATH prefix (default "./"). The original opens
    // the name as a *read* file through glitch::io::CFileSystem::createAndOpenFile (0x56d4e0), so
    // the file has to exist already; the call returns null otherwise.
    {
        std::FILE* f = std::fopen("dh2_fs_extra_created.txt", "wb");
        CHECK(f != nullptr);
        if (f) {
            std::fputs("x", f);
            std::fclose(f);
        }
    }
    glitch::io::IReadFile* opened = base.createAndOpenFile("dh2_fs_extra_created.txt");
    CHECK(opened != nullptr);
    if (opened != nullptr) {
        opened->drop();
    }
    CHECK(base.createAndOpenFile("dh2_fs_extra_missing.txt") == nullptr);
    std::remove("dh2_fs_extra_created.txt");

    // Win32 wrappers: closeFile deletes the stream and clears the pointer; getFolders
    // leaves the list alone.
    FileSystemWin32 fs;
    IFileStream* stream = new CountedStream();
    CHECK(CountedStream::alive == 1);
    fs.closeFile(stream);
    CHECK(stream == nullptr && CountedStream::alive == 0);
    fs.closeFile(stream);  // a null stream is ignored
    CHECK(stream == nullptr);

    std::vector<std::string> folders{"keep"};
    fs.getFolders(".", folders);
    CHECK(folders.size() == 1 && folders[0] == "keep");

    // Win32 formatFilePath rewrites forward slashes.
    CHECK(fs.formatFilePath("a/b") == "a\\b");

    std::printf("%s\n", failures ? "filesystem_extra: FAILED" : "filesystem_extra: ok");
    return failures != 0;
}
