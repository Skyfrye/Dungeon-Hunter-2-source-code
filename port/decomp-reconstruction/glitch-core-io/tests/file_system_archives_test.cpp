// CFileSystem: the obfuscation map (addObfuscationFileMap 0x56e6dc, getObfuscatedFileName 0x56e064, open 0x56dc40), the
// folder archive list (addFolderFileArchive 0x56d180, removeFileArchive 0x56ce60), existFile 0x56df38 and the failure
// answers of addZipFileArchive / addPakFileArchive.
#include <cstdio>
#include <cstring>
#include <string>

#include "glitch-core-io/io/file_system.hpp"

static int failures = 0;
#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

namespace {

// The inverse of the decoder in addObfuscationFileMap: the key k starts at `key`; byte i is stored as (plain + k) mod 256 and
// the next k is derived from the plain byte exactly as the decoder derives it from the decoded one.
std::string encode(const std::string& plain, unsigned char key) {
    std::string out;
    unsigned char recent[3] = {0, 0, 0};
    int k = key;
    for (size_t i = 0; i < plain.size(); ++i) {
        const int decoded = static_cast<unsigned char>(plain[i]);
        out.push_back(static_cast<char>((decoded + k) & 0xff));
        const unsigned slot = static_cast<unsigned>(i % 3);
        recent[slot] = static_cast<unsigned char>(decoded);
        const int sum = recent[1] + recent[0] + recent[2];
        const int mix = key == 0 ? 0 : ((decoded / 2) * (decoded % 2)) % key;
        const int next = (sum / 3 + (static_cast<int>(slot) - 1) * mix + k) % 256;
        k = next + (next >= 0 ? 0 : 256);
    }
    return out;
}

void writeFile(const char* name, const std::string& data) {
    std::FILE* f = std::fopen(name, "wb");
    if (f != nullptr) {
        std::fwrite(data.data(), 1, data.size(), f);
        std::fclose(f);
    }
}

}  // namespace

int main() {
    using glitch::io::CFileSystem;
    CFileSystem fs;

    // ---- the obfuscation map ----------------------------------------------------------------------------------
    const char* mapFile = "glitch_fs_obf_map.bin";
    const char* realFile = "glitch_fs_obf_real.txt";
    writeFile(realFile, "payload");
    const std::string plain = std::string(realFile) + ":fake_name.txt\nsub/inner.bin:other\\name.bin\n" + "c|-|3k";
    writeFile(mapFile, encode(plain, 7));

    CHECK(CFileSystem::ObfuscationMap.empty());
    CHECK(fs.addObfuscationFileMap(mapFile, 7, "pre/"));
    CHECK(CFileSystem::ObfuscationMap.size() == 2u);
    CHECK(CFileSystem::ObfuscationMap["fake_name.txt"] == std::string("pre/") + realFile);
    CHECK(CFileSystem::ObfuscationMap["other\\name.bin"] == "pre/sub/inner.bin");

    // The lookup strips a leading "./" and turns backslashes into '/' on a copy: the key "other\\name.bin" was stored as
    // written, so only an exact backslash-free spelling misses.
    CHECK(std::strcmp(CFileSystem::getObfuscatedFileName("./fake_name.txt"), (std::string("pre/") + realFile).c_str()) == 0);
    CHECK(std::strcmp(CFileSystem::getObfuscatedFileName("unknown.txt"), "unknown.txt") == 0);

    // A wrong key decodes to noise, so the "c|-|3k" tail is missing: the map is left as it was and the answer is false.
    CFileSystem::ObfuscationMap.clear();
    CHECK(!fs.addObfuscationFileMap(mapFile, 8, "pre/"));
    CHECK(CFileSystem::ObfuscationMap.empty());

    // open(): with the map in use a hit supplies the real name and marks the CFile obfuscated.
    CFileSystem::ObfuscationMap["fake_name.txt"] = realFile;
    {
        auto hit = CFileSystem::open("fake_name.txt", "rb");
        CHECK(static_cast<bool>(hit));
        if (hit) {
            CHECK(hit->obfuscated);
            CHECK(hit->name == realFile);
            CHECK(hit->m_refCount == 1u);
        }
        auto miss = CFileSystem::open(realFile, "rb");  // present on disk, not in the map
        CHECK(static_cast<bool>(miss));
        if (miss) CHECK(!miss->obfuscated);
        CHECK(!CFileSystem::open("glitch_fs_obf_no_such_file.txt", "rb"));
        CHECK(fs.existFile("fake_name.txt"));
    }
    CFileSystem::ObfuscationMap.clear();
    CHECK(!fs.existFile("fake_name.txt"));  // map empty, no such file
    CHECK(fs.existFile(realFile));

    // ---- the folder archive list -------------------------------------------------------------------------------
    CHECK(fs.addFolderFileArchive("glitch_fs_folder", false, false));
    CHECK(!fs.addFolderFileArchive("glitch_fs_folder/", false, false));  // the stored name has the separator: a duplicate
    CHECK(fs.addFolderFileArchive("glitch_fs_other", false, false));
    CHECK(!fs.removeFileArchive("glitch_fs_folder"));  // the reader's folder name is "glitch_fs_folder/"
    CHECK(fs.removeFileArchive("glitch_fs_folder/"));
    CHECK(fs.addFolderFileArchive("glitch_fs_folder", false, false));  // gone, so it can be added again
    CHECK(!fs.removeFileArchive("never_added"));

    // ---- archives that cannot open ---------------------------------------------------------------------------------
    CHECK(!fs.addZipFileArchive("glitch_fs_no_such_archive.zip", false, false));
    CHECK(!fs.addPakFileArchive("glitch_fs_no_such_archive.pak", false, false));
    CHECK(fs.createAndOpenFile("glitch_fs_no_such_dir/glitch_fs_no_such_file") == nullptr);

    std::remove(mapFile);
    std::remove(realFile);
    if (failures == 0) std::printf("file_system_archives_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
