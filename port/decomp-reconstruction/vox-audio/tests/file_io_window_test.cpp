// File windows (FileLimited), the directory stack, and the zip archive reader on a
// generated archive with one stored member.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

#include "vox-audio/deps/vox_file_system.hpp"
#include "vox-audio/vox/file_limited.hpp"
#include "vox-audio/vox/file_stdio.hpp"
#include "vox-audio/vox/sound_pack_xml.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

const char* kDataName = "vox_file_io_window_test.bin";
const char* kZipName = "vox_file_io_window_test.zip";

void WriteFile(const char* name, const std::string& bytes) {
    std::FILE* f = std::fopen(name, "wb");
    if (f != nullptr) {
        std::fwrite(bytes.data(), 1, bytes.size(), f);
        std::fclose(f);
    }
}

// One local file header (stored, no extra field) followed by its data.
std::string ZipWithOneMember(const std::string& member, const std::string& data) {
    std::string out;
    auto le16 = [&out](unsigned v) {
        out.push_back(static_cast<char>(v & 0xff));
        out.push_back(static_cast<char>((v >> 8) & 0xff));
    };
    auto le32 = [&out](unsigned long v) {
        for (int i = 0; i < 4; ++i) out.push_back(static_cast<char>((v >> (8 * i)) & 0xff));
    };
    le32(0x04034b50UL);                       // signature
    le16(20);                                 // version
    le16(0);                                  // flags
    le16(0);                                  // method: stored
    le16(0);                                  // time
    le16(0);                                  // date
    le32(0);                                  // crc
    le32(data.size());                        // compressed size
    le32(data.size());                        // uncompressed size
    le16(member.size());                      // name length
    le16(0);                                  // extra length
    out += member;
    out += data;
    return out;
}
}  // namespace

int main() {
    // Sixteen bytes 0..15 for the window checks.
    std::string bytes;
    for (int i = 0; i < 16; ++i) bytes.push_back(static_cast<char>(i));
    WriteFile(kDataName, bytes);

    vox::FileSystemStdio fs;
    vox::SetFileSystemInstanceForTests(&fs);

    // Whole-file handle: read four bytes, tell, seek to the start.
    vox::FileInterface* whole = fs.OpenFile(kDataName, vox::kVoxFileRead);
    CHECK(whole != nullptr);
    if (whole != nullptr) {
        std::uint8_t buf[16] = {};
        CHECK(whole->Read(buf, 1, 4) == 4);
        CHECK(buf[0] == 0 && buf[3] == 3);
        CHECK(whole->Tell() == 4);
        CHECK(whole->Seek(0, 0) == 0);
        CHECK(whole->Tell() == 0);
        fs.CloseFile(whole);
    }

    // Window over bytes 4..9 (base 4, limit 6).
    vox::FileInterface* base = fs.OpenFile(kDataName, vox::kVoxFileRead);
    CHECK(base != nullptr);
    if (base != nullptr) {
        vox::FileLimited window(base->GetFilePtr(), 4, 6);
        std::uint8_t buf[16] = {};
        CHECK(window.Read(buf, 1, 10) == 6);  // only six bytes are inside the window
        CHECK(buf[0] == 4 && buf[5] == 9);
        CHECK(window.Tell() == 6);
        CHECK(window.Read(buf, 1, 1) == 0);   // at the end of the window
        CHECK(window.Seek(0, 0) == 0);        // back to the window start
        CHECK(window.Tell() == 0);
        CHECK(window.Seek(0, 2) == 0);        // window end
        CHECK(window.Tell() == 6);
        CHECK(window.Seek(7, 0) == -1);       // beyond the window
        CHECK(window.Tell() == 6);
        CHECK(window.Write(buf, 1, 1) == 0);  // read-only
        fs.CloseFile(base);
    }

    // Directory stack and GetDirectory.
    char dir[64] = {};
    CHECK(vox::FileSystemInterface::GetDirectory(dir, 64, "data/sound/bank.bin") == 0);
    CHECK(std::strcmp(dir, "data/sound/") == 0);
    CHECK(vox::FileSystemInterface::GetDirectory(dir, 64, "bank.bin") == -1);
    CHECK(fs.PushDirectory("data") == 0);
    CHECK(fs.PushDirectory("sound") == 0);
    CHECK(fs.PopDirectory() == -1);
    CHECK(fs.PopDirectory() == -1);
    CHECK(fs.PopDirectory() == -1);  // empty stack stays empty

    // Zip archive with one stored member "Data/Hello.txt" holding "hello".
    WriteFile(kZipName, ZipWithOneMember("Data/Hello.txt", "hello"));
    {
        vox::CZipReader kept(kZipName, true, false);
        CHECK(kept.getFileCount() == 1);
        int offset = -1;
        int size = -1;
        // Keys are the lowercased full names when directories are kept.
        CHECK(kept.getFileInfo("Data/Hello.txt", offset, size) == 1);
        CHECK(offset == 30 + 14);  // local header plus name
        CHECK(size == 5);
    }
    {
        vox::CZipReader stripped(kZipName, false, true);
        CHECK(stripped.getFileCount() == 1);
        int offset = -1;
        int size = -1;
        CHECK(stripped.getFileInfo("Hello.txt", offset, size) == 1);
        CHECK(size == 5);
        // The query is stripped the same way, so the full name also finds the member.
        CHECK(stripped.getFileInfo("Data/Hello.txt", offset, size) == 1);
    }
    {
        vox::VoxString name = "a/b/c.txt";
        vox::CZipReader reader(kZipName, false, false);
        reader.deletePathFromFilename(name);
        CHECK(name == "c.txt");
    }

    // SetArchive on the stdio system: the archive opens and the member is found
    // through OpenFile when the archive is preferred.
    CHECK(fs.SetArchive(kZipName, true, false, true) == 0);
    {
        vox::FileInterface* member = fs.OpenFile("data/hello.txt", vox::kVoxFileRead);
        CHECK(member != nullptr);
        if (member != nullptr) {
            std::uint8_t buf[8] = {};
            CHECK(member->Read(buf, 1, 8) == 5);
            CHECK(std::memcmp(buf, "hello", 5) == 0);
            fs.CloseFile(member);
        }
    }

    // Group record copy and assignment keep the strings and the type.
    vox::GroupXMLDef group;
    group.uid_ = 7;
    group.name_ = "music";
    group.label_ = "bgm";
    group.type_ = 2;
    vox::GroupXMLDef copy(group);
    CHECK(copy.uid_ == 7 && copy.name_ == "music" && copy.label_ == "bgm" && copy.type_ == 2);
    vox::GroupXMLDef assigned;
    assigned = group;
    CHECK(assigned.name_ == "music" && assigned.type_ == 2);

    vox::SetFileSystemInstanceForTests(nullptr);
    std::remove(kDataName);
    std::remove(kZipName);
    std::printf("file_io_window_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
