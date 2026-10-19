// r1 redo of the CZipReader batch: the raw name kept in path and its split (a leading '/' is not a
// split), the heapsort order of the directory with duplicate base names, findFile on base names,
// and openFile dispatch on the compression method.
#include "glitch-core-io/io/zip_reader.hpp"
#include "io_stub_files.hpp"

#include <algorithm>
#include <cstdio>
#include <cstring>
#include <string>
#include <utility>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

// A read file over a byte string. It has no clone slot, so a CLimitReadFile over it holds no file.
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

// One local file header (with the given method, sizes equal to the payload) plus name and data.
static std::string localEntry(const std::string& name, const std::string& payload, unsigned method = 0) {
    std::string out(30, '\0');
    auto put16 = [&](std::size_t at, unsigned v) {
        out[at] = char(v & 0xff);
        out[at + 1] = char((v >> 8) & 0xff);
    };
    auto put32 = [&](std::size_t at, unsigned v) {
        put16(at, v & 0xffff);
        put16(at + 2, v >> 16);
    };
    put32(0, 0x04034b50u);
    put16(8, method);
    put32(18, static_cast<unsigned>(payload.size()));
    put32(22, static_cast<unsigned>(payload.size()));
    put16(26, static_cast<unsigned>(name.size()));
    put16(28, 0);
    return out + name + payload;
}

static void testExtractFilename() {
    CZipReader zip;  // flagA and flagB false
    SZipFileEntry raw;
    raw.zipFileName = "Dir/Sub/File.TXT";
    zip.extractFilename(raw);
    CHECK(raw.simpleFileName == "Dir/Sub/File.TXT");  // without flagB the raw name is kept
    CHECK(raw.path == "Dir/Sub/");
    CHECK(raw.zipFileName == "Dir/Sub/File.TXT");

    zip.ignorePaths = true;
    SZipFileEntry base;
    base.zipFileName = "Dir/Sub/File.TXT";
    zip.extractFilename(base);
    CHECK(base.simpleFileName == "File.TXT" && base.path == "Dir/Sub/");

    zip.ignoreCase = true;
    SZipFileEntry lower;
    lower.zipFileName = "Dir/Sub/File.TXT";
    zip.extractFilename(lower);
    CHECK(lower.zipFileName == "dir/sub/file.txt" && lower.simpleFileName == "file.txt" && lower.path == "dir/sub/");
    zip.ignoreCase = false;

    // A '/' at index 0 is not a split: the whole name stays and the directory is empty.
    SZipFileEntry leading;
    leading.zipFileName = "/x";
    zip.extractFilename(leading);
    CHECK(leading.simpleFileName == "/x" && leading.path.empty());

    // Only '/' separates; a backslash does not split, and with no '/' the whole name stays.
    SZipFileEntry plain;
    plain.zipFileName = "a\\b.txt";
    zip.extractFilename(plain);
    CHECK(plain.simpleFileName == "a\\b.txt" && plain.path.empty());

    // A trailing '/' (a directory entry) gives an empty base name.
    SZipFileEntry dir;
    dir.zipFileName = "e/";
    zip.extractFilename(dir);
    CHECK(dir.simpleFileName.empty() && dir.path == "e/");

    // An empty raw name changes nothing.
    SZipFileEntry empty;
    empty.simpleFileName = "keep";
    zip.extractFilename(empty);
    CHECK(empty.simpleFileName == "keep");
}

static void testScanKeepsRawPath() {
    BufferFile* file = new BufferFile(localEntry("Dir/Readme.TXT", "hello"));
    CZipReader zip(file, false, false);
    file->drop();  // the reader keeps the reference its constructor took
    CHECK(zip.getFileCount() == 1);
    const SZipFileEntry* e = zip.getFileInfo(0);
    CHECK(e->zipFileName == "Dir/Readme.TXT");
    CHECK(e->simpleFileName == "Dir/Readme.TXT");
    CHECK(e->path == "Dir/");
    CHECK(e->fileDataPosition == 30 + 14);  // data follows the 30-byte header and the 14-byte name
    CHECK(e->header.CompressionMethod == 0 && e->header.CompressedSize == 5 && e->header.UncompressedSize == 5);
}

static void testDirectoryOrder() {
    // Base names with flagB: m.bin, a.bin (x/a.bin), c.bin, a.bin, "" (e/), k.bin, z.bin (q/z.bin), b.bin.
    const std::string archive = localEntry("m.bin", "1") + localEntry("x/a.bin", "2") +
                                localEntry("c.bin", "3") + localEntry("a.bin", "4") + localEntry("e/", "") +
                                localEntry("k.bin", "5") + localEntry("q/z.bin", "6") + localEntry("b.bin", "7");
    BufferFile* file = new BufferFile(archive);
    CZipReader zip(file, false, true);
    file->drop();
    CHECK(zip.getFileCount() == 8);
    bool sorted = true;
    for (int i = 1; i < zip.getFileCount(); ++i) {
        if (zip.getFileInfo(i)->simpleFileName < zip.getFileInfo(i - 1)->simpleFileName) sorted = false;
    }
    CHECK(sorted);
    CHECK(zip.getFileInfo(0)->simpleFileName.empty());
    CHECK(zip.getFileInfo(7)->simpleFileName == "z.bin");
    // Two entries share the base name a.bin; the search returns one of them.
    const int a = zip.findFile("a.bin");
    CHECK(a == 1 || a == 2);
    CHECK(zip.findFile("dir/k.bin") == 5);  // flagB cuts the path from the key
    CHECK(zip.findFile("zz.bin") == -1);
    CHECK(zip.findFile("") == 0);
}

static void testOpenByMethod() {
    const std::string archive = localEntry("one.txt", "hello") + localEntry("two.bin", "xy", 8) +
                                localEntry("odd.bin", "abc", 12);
    BufferFile* file = new BufferFile(archive);
    CZipReader zip(file, false, false);
    file->drop();
    CHECK(zip.getFileCount() == 3);
    // The directory is sorted by name: odd.bin, one.txt, two.bin.
    const int oddIndex = zip.findFile("odd.bin");
    const int storedIndex = zip.findFile("one.txt");
    const int deflatedIndex = zip.findFile("two.bin");
    CHECK(oddIndex == 0 && storedIndex == 1 && deflatedIndex == 2);

    IReadFile* stored = zip.openFile(storedIndex);
    CHECK(stored != nullptr);
    if (stored) {
        CHECK(stored->getSize() == 5);
        CHECK(std::string(stored->getFileName()) == "one.txt");
        stored->drop();
    }
    IReadFile* inflated = zip.openFile(deflatedIndex);  // deflate: inflated into a memory file (zip_deflate_test checks the bytes)
    CHECK(inflated != nullptr);
    if (inflated) inflated->drop();
    CHECK(zip.openFile(oddIndex) == nullptr);       // any other method is unsupported

    // Bit 0 of unk_10 selects the five-argument form; the window is the same.
    zip.unk_10 = 1;
    IReadFile* named = zip.openFile(storedIndex);
    CHECK(named != nullptr && named->getSize() == 5);
    if (named) named->drop();
    zip.unk_10 = 0;

    IReadFile* byName = zip.openFile("one.txt");
    CHECK(byName != nullptr);
    if (byName) byName->drop();
    CHECK(zip.openFile("missing.txt") == nullptr);
}

// The entries order by the name's bytes as signed chars (LDRSB in the original), so a byte of 0xE9
// sorts before 'a'.
static void testSignedCharOrder() {
    SZipFileEntry high;
    high.simpleFileName = "\xE9";
    SZipFileEntry low;
    low.simpleFileName = "a";
    CHECK(high < low);
    CHECK(!(low < high));
}

int main() {
    testExtractFilename();
    testScanKeepsRawPath();
    testDirectoryOrder();
    testSignedCharOrder();
    testOpenByMethod();
    {
        // The name constructor on a missing file leaves an empty directory.
        CZipReader missing("glitch_zip_r1_missing_file.zip", false, false);
        CHECK(missing.getFileCount() == 0);
    }
    if (failures == 0) std::printf("r1-glitch-core-io-glitch_io_CZipReader-759d33-0: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
