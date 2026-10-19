#include "core-platform/filesystem_base.hpp"

#include "core-platform/debug_out.hpp"
#include "core-platform/util.hpp"
#include "dh2/Application.hpp"
#include "dh2/Savegame.hpp"
#include "glitch-core-io/os/logging.hpp"

#include <cstdio>
#include <cstring>
#include <mutex>
#include <string>
#include <unordered_map>

#ifdef _WIN32
#include <direct.h>
#define DH2_CHDIR _chdir
#else
#include <unistd.h>
#define DH2_CHDIR chdir
#endif

// Defined in filesystem_win32.cpp (the RES_PATH global set by the platform layer).
extern const char* RES_PATH;

// 0x34e0fc FileSystemBase::decodeObfuscatedData(int, void*, int, void*) (static)
// Hex-Rays: for index <= 3, the count is the size compared as unsigned and clamped to
// 4 - index; each of those bytes gets the running key added, where the key starts at
// ~index (low byte) and decrements per byte. The fourth parameter is not used.
void FileSystemBase::decodeObfuscatedData(int index, void* data, int size, void*) {
    if (index <= 3) {
        unsigned int count = static_cast<unsigned int>(size);
        const unsigned int limit = 4u - static_cast<unsigned int>(index);
        if (count >= limit) {
            count = limit;
        }
        if (static_cast<int>(count) > 0) {
            auto* bytes = static_cast<unsigned char*>(data);
            unsigned char key = static_cast<unsigned char>(~static_cast<unsigned int>(index));
            for (unsigned int i = 0; i != count; ++i) {
                bytes[i] = static_cast<unsigned char>(bytes[i] + key);
                key = static_cast<unsigned char>(key - 1);
            }
        }
    }
}

// 0x34e1d4 FileSystemBase::changeWorkingDirectoryTo(char const*)
// Slot +0x30. chdir, and on success the new directory is remembered in the process-wide buffer
// (the canonical char[1024] CFileSystem::WorkingDirectory that slot +0x2c returns).
bool FileSystemBase::changeWorkingDirectoryTo(const char* directory) {
    bool ok = DH2_CHDIR(directory) == 0;
    if (ok) {
        // The canonical buffer is char[1024]; copy at most 1023 characters, as CFileSystem does.
        std::strncpy(glitch::io::CFileSystem::WorkingDirectory, directory,
                     sizeof(glitch::io::CFileSystem::WorkingDirectory) - 1);
        glitch::io::CFileSystem::WorkingDirectory[sizeof(glitch::io::CFileSystem::WorkingDirectory) - 1] = '\0';
    }
    return ok;
}

// 0x34e1ac FileSystemBase::formatFilePath(std::string const&) const
// Slot +0xa4. Returns a copy of the path; the separator rewrite is FileSystemWin32's.
glitch::core::stringc FileSystemBase::formatFilePath(const glitch::core::stringc& path) const { return path; }

// 0x34df94 _ZN14FileSystemBase14doesFileExistsEPKc
// Hex-Rays and the listing agree line by line: the name is opened through the virtual at
// FileSystemBase vtable +0x88 (FileSystemWin32::openFile(name, false, false)), the handle is
// closed through +0x78 (closeFile, which clears the local), and the answer is whether the handle
// the open returned was non-null. The original keeps that value in r5 across the close call, so
// the port saves it before closeFile overwrites the pointer.
bool FileSystemBase::doesFileExists(const char* name) {
    IFileStream* handle = openFile(name, false, false);  // +0x88
    IFileStream* opened = handle;
    closeFile(handle);  // +0x78
    return opened != nullptr;
}

// 0x34dfe0 _ZN14FileSystemBase18doesResourceExistsEPKc
// The same body as doesFileExists with the resource slot: openResource at +0x90 (two arguments,
// no flags), then closeFile at +0x78.
bool FileSystemBase::doesResourceExists(const char* name) {
    IFileStream* handle = openResource(name);  // +0x90
    IFileStream* opened = handle;
    closeFile(handle);  // +0x78
    return opened != nullptr;
}

// 0x34e150 _ZN14FileSystemBase18doesSavefileExistsEPKc
// Savegame::FlushJobs(name) (0x314cfc) first, then openSavefile(name, false) at +0x94 and closeFile at +0x78 on the result;
// the answer is whether the open returned a handle.
bool FileSystemBase::doesSavefileExists(const char* name) {
    Savegame::FlushJobs(name);
    IFileStream* handle = openSavefile(name, false);  // +0x94
    IFileStream* opened = handle;
    closeFile(handle);  // +0x78
    return opened != nullptr;
}

// Port addition (remaster): the HD texture layer is in use (set by Dh2InstallRemaster, game-app remaster_normal_maps.cpp).
bool g_dh2HdTextures = false;
extern const char* RES_PATH;

// 0x34e96c _ZNK14FileSystemBase18ApplyFilenameHacksEPKc
// Slot +0xb8. Hex-Rays and the listing agree line by line:
//   * the working directory comes from the virtual at vtable +0x2c (IFileSystem::
//     getWorkingDirectory, glitch::io::CFileSystem's 0x56c214 returns the static
//     CFileSystem::WorkingDirectory). That slot is non-const because the original reaches it
//     through the vtable from this const method, hence the const_cast.
//   * strstr(name, workingDirectory): when it hits, the result is the rest of the name after the
//     match plus one byte (the separator), otherwise the whole name.
//   * a ".tga" result is replaced by "ata/3d/textures/" plus CFileSystem::getFileBasename(result,
//     true) (keepExtension). The listing assigns the range [literal, literal + 0x10) (ADD R2, R1,
//     #0x10 at 0x34ea40) and the literal at 0x8c0740 is exactly 16 characters, so this is a plain
//     assignment of the literal.
//   * ToLowerCase(result, 0, -1) -- the original's call is 0x34e090, the SAllocator-string
//     overload that core-platform/util.hpp provides as this template.
//   * when strstr hit, the working-directory prefix of the name (up to and including the byte
//     after the match) is prepended back to the hacked result.
glitch::core::stringc FileSystemBase::ApplyFilenameHacks(const char* name) const {
    const char* workingDirectory = const_cast<FileSystemBase*>(this)->getWorkingDirectory();  // +0x2c
    const std::size_t workingDirectoryLength = std::strlen(workingDirectory);
    const char* const found = std::strstr(name, workingDirectory);

    glitch::core::stringc result;
    if (found != nullptr) {
        result = found + workingDirectoryLength + 1;
    } else {
        result = name;
    }

    if (std::strstr(result.c_str(), ".tga") != nullptr) {
        const glitch::core::stringc basename = glitch::io::CFileSystem::getFileBasename(result, true);
        result = "ata/3d/textures/";
        result += basename;
    }

    ToLowerCase(result, 0, -1);

    if (found != nullptr) {
        result = glitch::core::stringc(name, found + workingDirectoryLength + 1) + result;
    }
    // Port addition (remaster, REMASTER.md): a texture with a file in the HD layer (data/hd/3d/textures/, same name) is read from
    // there. Switched on at start by Dh2InstallRemaster (port setting hdtextures, GPU with ETC2); every name is looked up once.
    if (g_dh2HdTextures) {
        const std::string path = result.c_str();
        const std::size_t at = path.find("3d/textures/");
        if (at != std::string::npos) {
            static std::mutex lock;
            static std::unordered_map<std::string, bool> known;
            const std::string hd = path.substr(0, at) + "hd/" + path.substr(at);
            bool exists;
            {
                std::lock_guard<std::mutex> guard(lock);
                auto it = known.find(hd);
                if (it == known.end()) {
                    FILE* f = std::fopen(hd.c_str(), "rb");
                    if (f == nullptr) {
                        const char* root = RES_PATH != nullptr ? RES_PATH : "";
                        f = std::fopen((std::string(root) + hd).c_str(), "rb");
                    }
                    exists = f != nullptr;
                    if (f != nullptr) std::fclose(f);
                    known.emplace(hd, exists);
                } else {
                    exists = it->second;
                }
            }
            if (exists) {
                result = hd.c_str();
            }
        }
    }
    return result;
}

// 0x34e5f4 _ZNK14FileSystemBase15getAbsolutePathERKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE
// Slot +0x34. The listing calls the virtual at vtable +0xb8 (ApplyFilenameHacks, called with the
// path's characters and written to a temporary string) and then makes a qualified call to
// glitch::io::CFileSystem::getAbsolutePath (0x56c348, a direct BL, not the +0x34 slot) with that
// temporary. The temporary is freed and the result returned.
glitch::core::stringc FileSystemBase::getAbsolutePath(const glitch::core::stringc& path) const {
    const glitch::core::stringc normalised = ApplyFilenameHacks(path.c_str());  // +0xb8
    return glitch::io::CFileSystem::getAbsolutePath(normalised);
}

// 0x34e688 helper (host runner only). The binary tells a name that already carries the resource root by the "/sdcard/" prefix, because the Android
// RES_PATH always starts with it. On a host RES_PATH is the data directory (C:/..., or a relative path), so the test is "starts with RES_PATH",
// ignoring case: ApplyFilenameHacks lower-cases the name. Always false in the Android and unit-test builds.
static bool alreadyPrefixed(const glitch::core::stringc& name) {
#ifdef DH2_HOST_RUNNER
    const size_t n = std::strlen(RES_PATH);
    if (n == 0 || name.size() < n) return false;
    for (size_t i = 0; i < n; ++i) {
        char a = name[i], b = RES_PATH[i];
        if (a >= 'A' && a <= 'Z') a = static_cast<char>(a + 32);
        if (b >= 'A' && b <= 'Z') b = static_cast<char>(b + 32);
        if (a == 92) a = '/';
        if (b == 92) b = '/';
        if (a != b) return false;
    }
    return true;
#else
    (void)name;
    return false;
#endif
}

// 0x34e688 _ZN14FileSystemBase17createAndOpenFileEPKc
// Slot +0x0c. The listing, line by line:
//   * the name through the virtual at +0xb8 (ApplyFilenameHacks);
//   * a second string from the first min(size, 8) characters of that result, compared with
//     strcmp against "/sdcard/" (this is the compiler's form of a compare of the first eight
//     characters);
//   * when the normalised name holds ".config", holds ".glsl" or starts with "/sdcard/", it is
//     used as it is; otherwise RES_PATH is prepended (operator+(RES_PATH, name));
//   * when Application::IsUsingUncompiledData(path) (0x320678, the Singleton<Application> instance) answers true, the
//     working directory (slot +0x2c) is saved, slot +0x30 changes it to "Q:\\", and the retry is the qualified call to
//     glitch::io::CFileSystem::createAndOpenFile (0x56d4e0, a direct BL, not the +0x0c slot). A non-null result is
//     returned at once with the directory LEFT at "Q:\\" (LABEL_12 skips the restore); a null result restores the saved
//     directory and falls through;
//   * the same qualified call on the path; when it returns null, _DEBUG_OUT("Could not open file :  %s ", path) and
//     glitch::os::Printer::log("Could not open file : ", path, 3) (ELL_ERROR);
//   * the opened file is returned.
#ifdef DH2_HOST_RUNNER
namespace dh2host {
// The runner (host_state_log.cpp) defines the real recorder; this weak default keeps the unit tests of a
// DH2_HOST_RUNNER=ON build linking without the runner sources.
__attribute__((weak)) void recordMissing(const char* /*kind*/, const char* /*name*/, void* /*caller*/) {}
}
#endif
glitch::io::IReadFile* FileSystemBase::createAndOpenFile(const char* name) {
    const glitch::core::stringc normalised = ApplyFilenameHacks(name);  // +0xb8

    std::string path;
    if (std::strstr(normalised.c_str(), ".config") != nullptr ||
        std::strstr(normalised.c_str(), ".glsl") != nullptr ||
        normalised.compare(0, 8, "/sdcard/") == 0 || alreadyPrefixed(normalised)) {
        path.assign(normalised.data(), normalised.size());
    } else {
        path = std::string(RES_PATH) + std::string(normalised.data(), normalised.size());
    }

    if (ApplicationGetInstance().IsUsingUncompiledData(path.c_str())) {
        const std::string savedDirectory = getWorkingDirectory();  // +0x2c
        changeWorkingDirectoryTo("Q:\\");                          // +0x30
        glitch::io::IReadFile* retried = glitch::io::CFileSystem::createAndOpenFile(path.c_str());
        if (retried != nullptr) {
            return retried;
        }
        changeWorkingDirectoryTo(savedDirectory.c_str());
    }

    glitch::io::IReadFile* file = glitch::io::CFileSystem::createAndOpenFile(path.c_str());
    if (file == nullptr) {
        _DEBUG_OUT("Could not open file :  %s ", path.c_str());
        glitch::os::Printer::log("Could not open file : ", path.c_str(), glitch::ELL_ERROR);
#ifdef DH2_HOST_RUNNER
        dh2host::recordMissing("file", path.c_str(), __builtin_return_address(0));
#endif
    }
    return file;
}
