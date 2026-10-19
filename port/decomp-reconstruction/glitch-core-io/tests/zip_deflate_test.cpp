// CZipReader::openFile(int) (0x576f18): a deflated entry (method 8) is inflated into a memory file named with the entry path;
// a stored entry is a limit reader; any other method answers null.
#include <algorithm>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include <zlib.h>

#include "io_stub_files.hpp"
#include "glitch-core-io/io/zip_reader.hpp"

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
    IReadFile* clone() const override {
        auto* copy = new BufferFile(data);
        copy->pos = pos;
        return copy;
    }
    std::string data;
    std::size_t pos = 0;
};

static std::string rawDeflate(const std::string& plain) {
    z_stream s;
    std::memset(&s, 0, sizeof s);
    deflateInit2(&s, Z_BEST_COMPRESSION, Z_DEFLATED, -15, 8, Z_DEFAULT_STRATEGY);
    std::vector<unsigned char> out(plain.size() + 64);
    s.next_in = reinterpret_cast<unsigned char*>(const_cast<char*>(plain.data()));
    s.avail_in = static_cast<unsigned>(plain.size());
    s.next_out = out.data();
    s.avail_out = static_cast<unsigned>(out.size());
    deflate(&s, Z_FINISH);
    const std::size_t produced = out.size() - s.avail_out;
    deflateEnd(&s);
    return std::string(reinterpret_cast<char*>(out.data()), produced);
}

int main() {
    const std::string plain = "the quick brown fox jumps over the lazy dog, again and again and again and again";
    const std::string packed = rawDeflate(plain);
    CHECK(packed.size() < plain.size());

    // 8 bytes of padding in front of the data, so the entry offset matters.
    BufferFile file(std::string("PADPADPA") + packed + "tail");
    CZipReader zip;
    zip.readFile = &file;
    SZipFileEntry entry;
    entry.zipFileName = "dir/fox.txt";
    entry.simpleFileName = "fox.txt";
    entry.fileDataPosition = 8;
    entry.header.CompressionMethod = 8;
    entry.header.CompressedSize = static_cast<std::int32_t>(packed.size());
    entry.header.UncompressedSize = static_cast<std::int32_t>(plain.size());
    zip.entries.push_back(entry);

    IReadFile* inflated = zip.openFile(0);
    CHECK(inflated != nullptr);
    if (inflated != nullptr) {
        CHECK(inflated->getSize() == static_cast<long>(plain.size()));
        std::string text(plain.size(), '\0');
        CHECK(inflated->read(&text[0], static_cast<std::uint32_t>(text.size())) == static_cast<std::int32_t>(plain.size()));
        CHECK(text == plain);
        CHECK(std::string(inflated->getFileName()) == "dir/fox.txt");  // the raw path names the memory file
        inflated->drop();
    }

    // A corrupt stream still produces a block of the declared size (inflate's failure is not checked), no crash.
    file.data = std::string("PADPADPA") + std::string(packed.size(), '\x7f');
    IReadFile* corrupt = zip.openFile(0);
    CHECK(corrupt != nullptr);
    if (corrupt != nullptr) corrupt->drop();

    // Stored: a limit reader of the entry's size at the entry's offset.
    zip.entries[0].header.CompressionMethod = 0;
    zip.entries[0].header.CompressedSize = zip.entries[0].header.UncompressedSize = 5;
    file.data = "PADPADPAhello world";
    IReadFile* stored = zip.openFile(0);
    CHECK(stored != nullptr);
    if (stored != nullptr) {
        char buf[6] = {};
        CHECK(stored->read(buf, 5) == 5 && std::string(buf) == "hello");
        stored->drop();
    }

    // An unknown method gives null.
    zip.entries[0].header.CompressionMethod = 12;
    CHECK(zip.openFile(0) == nullptr);

    zip.readFile = nullptr;  // the stack zip does not own the stack file
    if (failures == 0) std::printf("zip_deflate_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
