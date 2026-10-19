#include "core-platform/config_file.hpp"
#include "core-platform/filesystem_base.hpp"
#include "core-platform/filesystem_win32.hpp"
#include "core-platform/fs_callbacks.hpp"
#include "core-platform/serializable.hpp"
#include "core-platform/sys_print.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    sys::print("value %d", 7);
    sys::println("done");

    ConfigFile cfg;
    char out[8] = "keep";
    CHECK(cfg.Encode("k", "n", "v", out) == 0);
    CHECK(std::strcmp(out, "keep") == 0);
    CHECK(cfg.Seed() == 0);

    ISerializable ser;
    ser.Serialize(nullptr);
    ser.Deserialize(nullptr);

    // decodeObfuscatedData: index 0 adds ~0 (0xff) to the first byte, then 0xfe.
    unsigned char bytes[4] = {0, 0, 0, 0};
    FileSystemBase::decodeObfuscatedData(0, bytes, 4, nullptr);
    CHECK(bytes[0] == 0xff);
    CHECK(bytes[1] == 0xfe);
    CHECK(bytes[2] == 0xfd);
    CHECK(bytes[3] == 0xfc);
    unsigned char tail[4] = {1, 1, 1, 1};
    FileSystemBase::decodeObfuscatedData(4, tail, 4, nullptr);  // index >= 4: untouched
    CHECK(tail[0] == 1);

    // FileSystemBase is abstract (its file-system slots are the derived system's, as in the
    // original), so the working-directory call is driven on the concrete FileSystemWin32.
    FileSystemWin32 fsb;
    CHECK(fsb.changeWorkingDirectoryTo("."));
    CHECK(std::strcmp(glitch::io::CFileSystem::WorkingDirectory, ".") == 0);
    CHECK(!fsb.changeWorkingDirectoryTo("/no/such/dir/for/dh2"));

    FsFileHandle h{0, 10, 0};
    CHECK(fs_tell_func(&h) == 0);
    CHECK(fs_seek_func(5, &h) == 0 && h.pos_ == 5);
    CHECK(!fs_get_eof_func(&h));
    CHECK(fs_seek_to_end_func(&h) == 0 && h.pos_ == 10);
    CHECK(fs_get_eof_func(&h));
    CHECK(fs_tell_func(nullptr) == -1);
    CHECK(fs_get_eof_func(nullptr));
    CHECK(fs_write_func(nullptr, 12, &h) == 12);

    std::printf("%s\n", failures ? "sys_config_fs: FAILED" : "sys_config_fs: ok");
    return failures != 0;
}
