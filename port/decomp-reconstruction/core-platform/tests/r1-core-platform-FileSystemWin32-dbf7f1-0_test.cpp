// Tests for the FileSystemWin32 batch: the _FileHandle constructor, read, peek and write,
// the open helpers, deleteSavefile, and the directory listings. The test works in a scratch
// directory under the current working directory and removes the files it made.
#include "core-platform/filesystem_base.hpp"
#include "core-platform/filesystem_win32.hpp"

#include <cstdio>
#include <cstring>
#include <filesystem>
#include <string>
#include <vector>

extern const char* RES_PATH;

namespace {
int failures = 0;
#define CHECK(c)                                                  \
    do {                                                          \
        if (!(c)) {                                               \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); \
            ++failures;                                           \
        }                                                         \
    } while (0)

const char* kDirName = "dh2_fswin32_batch_dir";
const char* kDir = "dh2_fswin32_batch_dir/";

void writeBytes(const std::string& path, const std::string& bytes) {
    std::FILE* f = std::fopen(path.c_str(), "wb");
    CHECK(f != nullptr);
    if (f != nullptr) {
        std::fwrite(bytes.data(), 1, bytes.size(), f);
        std::fclose(f);
    }
}

bool contains(const std::vector<std::string>& v, const std::string& s) {
    for (const auto& item : v) {
        if (item == s) {
            return true;
        }
    }
    return false;
}
}  // namespace

int main() {
    namespace fs = std::filesystem;
    fs::create_directories(kDirName);
    RES_PATH = kDir;
    FileSystemWin32 win;  // copies RES_PATH into the root, resources and savefile paths

    // Read-only handle through the root path: the gate, size, read, peek and tell.
    writeBytes(std::string(kDir) + "raw.bin", "abcdefgh");
    FileSystemWin32::_FileHandle* h = win.openFile("raw.bin", false, false);
    CHECK(h != nullptr);
    if (h != nullptr) {
        CHECK(h->canRead() && !h->canWrite());
        CHECK(h->size() == 8);
        CHECK(h->write("z", 1) == 0);  // a read-only handle refuses writes
        char buf[8] = {};
        CHECK(h->read(buf, 3) == 3 && std::memcmp(buf, "abc", 3) == 0);
        CHECK(h->tell() == 3);
        CHECK(h->peek(buf, 2) == 2 && std::memcmp(buf, "de", 2) == 0);
        CHECK(h->tell() == 3);  // peek seeks back by what it read
        CHECK(h->read(buf, 2) == 2 && std::memcmp(buf, "de", 2) == 0);
        CHECK(h->tell() == 5);
        delete h;
    }

    // Obfuscated handle: decodeObfuscatedData runs on reads that start in the first four
    // bytes, with the count clamped to 4 - pos. Expected values come from the same decoder.
    h = win.openFile("raw.bin", false, false);
    CHECK(h != nullptr);
    if (h != nullptr) {
        h->cfile_->obfuscated = true;  // the CFile byte at +0x24 of the real glitch::io::CFile
        std::string expect = "abcd";
        FileSystemBase::decodeObfuscatedData(0, &expect[0], 4, nullptr);
        std::string got(4, '\0');
        CHECK(h->read(&got[0], 4) == 4);
        CHECK(got == expect);

        std::string tail(4, '\0');  // position 4 is past the header: no decode
        CHECK(h->read(&tail[0], 4) == 4 && tail == "efgh");

        h->seek(2);  // starts at pos 2: only the first two bytes of the request decode
        std::string mixed = "cdefgh";
        FileSystemBase::decodeObfuscatedData(2, &mixed[0], 6, nullptr);
        std::string got2(6, '\0');
        CHECK(h->read(&got2[0], 6) == 6 && got2 == mixed);

        h->seek(0);
        std::string pk(4, '\0');
        CHECK(h->peek(&pk[0], 4) == 4 && pk == expect);
        CHECK(h->tell() == 0);
        delete h;
    }

    // Savefile handle: writable, opened "w+b" (readwrite is false for openSavefile).
    FileSystemWin32::_FileHandle* sv = win.openSavefile("save.dat", true);
    CHECK(sv != nullptr);
    if (sv != nullptr) {
        CHECK(sv->canRead() && sv->canWrite());
        CHECK(sv->write("hello", 5) == 5);
        sv->seek(0);
        char back[6] = {};
        CHECK(sv->read(back, 5) == 5 && std::memcmp(back, "hello", 5) == 0);
        delete sv;
    }
    CHECK(fs::exists(std::string(kDir) + "save.dat"));
    CHECK(win.deleteSavefile("save.dat"));  // removed: true
    CHECK(!fs::exists(std::string(kDir) + "save.dat"));
    CHECK(!win.deleteSavefile("save.dat"));  // already gone: false

    // Constructor: a ".savegame" name is opened under RES_PATH whatever the directory.
    {
        FileSystemWin32::_FileHandle sg("nonexistent_dir/", "slot.savegame", true, false);
        CHECK(sg.file_ != nullptr);
    }
    CHECK(fs::exists(std::string(kDir) + "slot.savegame"));

    // A failed open keeps the flags but has no file; _createHandle releases such a handle.
    {
        FileSystemWin32::_FileHandle bad("nonexistent_dir/", "y.bin", true, true);
        CHECK(bad.file_ == nullptr);
        CHECK(bad.canRead() && bad.canWrite());
    }
    CHECK(win._createHandle("nonexistent_dir/", "y.bin", false, false) == nullptr);
    CHECK(win.openFile("missing_file.bin", false, false) == nullptr);
    CHECK(win.openSavefile("missing_file.bin", false) == nullptr);

    // _createHandle strips a leading "./" from the directory, so the name is taken from
    // the working directory.
    writeBytes("dh2_fswin32_strip.bin", "q");
    FileSystemWin32::_FileHandle* st = win._createHandle("./", "dh2_fswin32_strip.bin", false, false);
    CHECK(st != nullptr);
    delete st;
    fs::remove("dh2_fswin32_strip.bin");

    // Listings: getFiles lists RES_PATH with readdir order, "." and ".." included.
    std::vector<std::string> all;
    win.getFiles("ignored", all);
    CHECK(contains(all, "raw.bin"));
    CHECK(contains(all, "slot.savegame"));
    CHECK(contains(all, "."));
    CHECK(contains(all, ".."));

    std::vector<std::string> savegames;
    win.getFilesMatching(kDir, ".sav", savegames);
    CHECK(savegames.size() == 1 && savegames[0] == "slot.savegame");

    std::vector<std::string> everything;
    win.getFilesMatching(kDir, "", everything);  // an empty pattern matches every name
    CHECK(everything.size() == all.size());
    CHECK(contains(everything, "raw.bin") && contains(everything, "."));

    std::vector<std::string> none;
    win.getFilesMatching("nonexistent_dir/", "", none);  // opendir fails: nothing listed
    CHECK(none.empty());

    // Remove only the files this test made; the directory goes if it is now empty.
    fs::remove(std::string(kDir) + "raw.bin");
    fs::remove(std::string(kDir) + "slot.savegame");
    fs::remove(kDirName);

    std::printf("%s\n", failures ? "filesystem_win32_batch: FAILED" : "filesystem_win32_batch: ok");
    return failures != 0;
}
