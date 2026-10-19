// CZipReader local header scan, name split and stored-entry open, over an in-memory archive.
#include "glitch-core-io/io/zip_reader.hpp"
#include "io_stub_files.hpp"

#include <algorithm>
#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

class BufferFile : public glitch::io::testing::StubReadFile {
public:
    explicit BufferFile(std::string bytes) : data(std::move(bytes)) {}
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
    std::string data;
    std::size_t pos = 0;
};

// One local header (stored method) followed by its name and data.
static std::string localEntry(const std::string& name, const std::string& payload) {
    std::string out(30, '\0');
    auto put16 = [&](std::size_t at, unsigned v) { out[at] = char(v & 0xff); out[at + 1] = char(v >> 8); };
    auto put32 = [&](std::size_t at, unsigned v) { put16(at, v & 0xffff); put16(at + 2, v >> 16); };
    put32(0, 0x04034b50u);
    put16(8, 0);  // stored
    put32(18, static_cast<unsigned>(payload.size()));
    put32(22, static_cast<unsigned>(payload.size()));
    put16(26, static_cast<unsigned>(name.size()));
    put16(28, 0);
    return out + name + payload;
}

static void testScanAndOpen() {
    const std::string archive = localEntry("Dir/Readme.TXT", "hello") + localEntry("b.bin", "xy");
    BufferFile file(archive);
    CZipReader zip;
    zip.readFile = &file;
    zip.ignoreCase = false;
    zip.ignorePaths = false;
    CHECK(zip.scanLocalHeader());
    CHECK(zip.scanLocalHeader());
    CHECK(!zip.scanLocalHeader());
    CHECK(zip.getFileCount() == 2);
    CHECK(zip.getFileInfo(0)->simpleFileName == "Dir/Readme.TXT");
    CHECK(zip.getFileInfo(0)->path == "Dir/");
    CHECK(zip.getFileInfo(0)->header.UncompressedSize == 5);
    CHECK(zip.getFileInfo(0)->fileDataPosition == 30 + 14);
    zip.readFile = nullptr;  // the test file lives on the stack
}

static void testFlagBStripsPath() {
    const std::string archive = localEntry("dir/sub/file.txt", "abc");
    BufferFile file(archive);
    CZipReader zip;
    zip.readFile = &file;
    zip.ignorePaths = true;
    CHECK(zip.scanLocalHeader());
    CHECK(zip.getFileInfo(0)->simpleFileName == "file.txt");
    zip.readFile = nullptr;
}

int main() {
    testScanAndOpen();
    testFlagBStripsPath();
    if (failures == 0) std::printf("zip_local_header_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
