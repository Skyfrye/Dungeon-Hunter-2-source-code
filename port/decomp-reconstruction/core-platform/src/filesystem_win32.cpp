#include "core-platform/filesystem_win32.hpp"
#include "core-platform/frame_prof.hpp"

#include "core-platform/deps/debug_switches.hpp"
#include "core-platform/deps/io_stream.hpp"
#include "core-platform/filesystem_base.hpp"
#include "dh2/Application.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/global/ToLowerCase.hpp"
#include "glitch-core-io/io/file_system.hpp"
#include "core-platform/memory.hpp"

#include <cerrno>
#include <cstdint>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

#ifdef _WIN32
#include <direct.h>
#include <io.h>
#define DH2_UNLINK _unlink
#else
#include <dirent.h>
#include <unistd.h>
#define DH2_UNLINK unlink
#endif

// Stand-in for the RES_PATH global (set by the platform layer, owned elsewhere).
const char* RES_PATH = "./";

namespace {
// The original reads the "isTracingFileSystem" switch after a failed savefile
// operation and discards it, so only the lookups are kept here.
void traceFileSystemFailure() {
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch("isTracingFileSystem");
}

// Appends the entry names of dir to names, in directory order, "." and ".." included.
// This is the original's opendir/readdir loop: the name is the dirent d_name field
// (offset 0x13 in the listing). On Windows the same entries come from _findfirst, the
// CRT search that MinGW's readdir also wraps, so MSVC and MinGW list alike. Returns false
// when dir cannot be opened, and then nothing is appended.
bool listDirectory(const char* dir, std::vector<std::string>& names) {
#ifdef _WIN32
    if (dir[0] == '\0') {
        return false;  // opendir("") fails
    }
    std::string pattern(dir);
    if (pattern.back() != '/' && pattern.back() != '\\') {
        pattern += '\\';
    }
    pattern += '*';
    _finddata_t info;
    const intptr_t handle = _findfirst(pattern.c_str(), &info);
    if (handle == -1) {
        return false;
    }
    do {
        names.emplace_back(info.name);
    } while (_findnext(handle, &info) == 0);
    _findclose(handle);
    return true;
#else
    DIR* d = opendir(dir);
    if (d == nullptr) {
        return false;
    }
    while (struct dirent* entry = readdir(d)) {
        names.emplace_back(entry->d_name);
    }
    closedir(d);
    return true;
#endif
}
}  // namespace

// 0x34eba4 FileSystemWin32::getRootPath() const
// Returns the root path buffer at +0x2c (Hex-Rays: this + 44).
const char* FileSystemWin32::getRootPath() const { return rootPath_; }

// 0x34ebac FileSystemWin32::getResourcesPath() const
const char* FileSystemWin32::getResourcesPath() const { return resourcesPath_; }

// 0x34ebb4 FileSystemWin32::getSavefilesPath() const
const char* FileSystemWin32::getSavefilesPath() const { return savefilesPath_; }

// 0x34ebc0 FileSystemWin32::copySavefile(char const*): empty in the original.
void FileSystemWin32::copySavefile(const char*) {}

// 0x34ebc4 FileSystemWin32::_getFileInfo(char const*, char const*, void*) const
bool FileSystemWin32::_getFileInfo(const char*, const char*, void*) const { return true; }

// 0x34ec00 FileSystemWin32::isFileNewerThan(char const*, char const*) const: empty.
void FileSystemWin32::isFileNewerThan(const char*, const char*) const {}

// 0x34f6f4 / 0x34f788 FileSystemWin32::FileSystemWin32()
// Zeroes the five 0x104-byte path buffers (at +0x2c, +0x130, +0x234, +0x338, +0x43c),
// then fills them in _getPaths().
FileSystemWin32::FileSystemWin32() {
    std::memset(rootPath_, 0, sizeof rootPath_);
    std::memset(cwdPath_, 0, sizeof cwdPath_);
    std::memset(resourcesPath_, 0, sizeof resourcesPath_);
    std::memset(dataPath_, 0, sizeof dataPath_);
    std::memset(savefilesPath_, 0, sizeof savefilesPath_);
    _getPaths();
}

// 0x34f068 FileSystemWin32::_getPaths()
void FileSystemWin32::_getPaths() {
    std::strcpy(rootPath_, RES_PATH);
    std::strcpy(cwdPath_, RES_PATH);
    std::snprintf(dataPath_, sizeof dataPath_, "%sdata/", RES_PATH);
    std::strcpy(savefilesPath_, RES_PATH);
}

// 0x34fc18 _ZN15FileSystemWin3211_FileHandleC1EPKcS2_bb
// C2 at 0x35003c (_ZN15FileSystemWin3211_FileHandleC2EPKcS2_bb) is the same body (the two
// listings are identical), so this one definition serves both symbols.
// The path is dir + name, or RES_PATH + name when the name contains ".savegame"; when the Application's byte at +0xa8
// (byte_99F7D4) is set it is lower-cased (ToLowerCase(path, 0, -1)). The CFile comes from
// glitch::io::CFileSystem::open with the mode from Hex-Rays: read-only "rb"; writable with readwrite "a+b"; writable
// without readwrite "w+b". canRead is set in every case and canWrite when writable, even when the open fails (cfile_ is
// then null and _createHandle releases the handle); the FILE* at +0x4 is cached from the CFile.
FileSystemWin32::_FileHandle::_FileHandle(const char* dir, const char* name, bool writable, bool readwrite) {
    std::string path = dir;
    path += name;
    if (std::strstr(name, ".savegame") != nullptr) {
        path = std::string(RES_PATH) + name;
    }
    if (ApplicationGetInstance().unk_a8) {
        ToLowerCase(path.data(), 0, -1);
    }
    const char* mode = "rb";
    if (writable) {
        mode = readwrite ? "a+b" : "w+b";
    }
    cfile_ = glitch::io::CFileSystem::open(path.c_str(), mode);
    canRead_ = true;
    canWrite_ = writable;
    file_ = cfile_ ? cfile_->file : nullptr;
}

// 0x34fb7c _ZN15FileSystemWin3211_FileHandleD1Ev
// D2 at 0x34fbd8 (_ZN15FileSystemWin3211_FileHandleD2Ev) has the same body (the two listings are
// identical), so this one definition serves both symbols.
// The original drops the glitch CFile at +0x8 (glitch::ISharedObject<CFile>::drop, which closes the FILE when the count
// reaches zero) and resets the vtable word: the intrusive_ptr member does the drop, the vtable reset is the compiler's.
FileSystemWin32::_FileHandle::~_FileHandle() = default;

// 0x34fbbc _ZN15FileSystemWin3211_FileHandleD0Ev
// The deleting destructor is compiler-generated from ~_FileHandle (0x34fb7c) and the class's
// operator delete below, which is CustomFree(this) exactly as the listing's tail shows (the same
// D1 body followed by CustomFree), so no hand-written D0 exists.
void FileSystemWin32::_FileHandle::operator delete(void* p) { CustomFree(p); }

// The handle block comes from CustomAlloc, the allocator that CustomFree releases to.
void* FileSystemWin32::_FileHandle::operator new(std::size_t size) {
    return CustomAlloc(static_cast<unsigned>(size));
}

// 0x34eec8 _ZN15FileSystemWin3211_FileHandle4readEPvy
// The gate is the virtual canRead (vtable +0xc), which reads the canRead_ byte. Then ftell, then
// fread on the FILE at +0x4, then the decode: the original tests the obfuscation byte at +0x24 of
// the CFile held at +0x8 (this + 2 in the decompilation) and the position before the read, and the
// decode count is the requested size (decodeObfuscatedData clamps it to 4 - pos).
// The CFile's obfuscation byte is set by glitch::io::CFileSystem::open (the name was found in the obfuscation map).
std::uint64_t FileSystemWin32::_FileHandle::read(void* buf, std::uint64_t n) {
    if (!canRead_) {
        return 0;
    }
    dh2prof::Scope prof(dh2prof::kIoRead);  // Track B frame profiler
    long pos = std::ftell(file_);
    std::size_t got = std::fread(buf, 1, n, file_);
    if (cfile_->obfuscated && pos <= 3) {
        FileSystemBase::decodeObfuscatedData(static_cast<int>(pos), buf, static_cast<int>(n), file_);
    }
    return got;
}

// 0x34ee74 FileSystemWin32::_FileHandle::write(void const*, unsigned long long)
std::uint64_t FileSystemWin32::_FileHandle::write(const void* buf, std::uint64_t n) {
    if (!canWrite_) {
        return 0;
    }
    return std::fwrite(buf, 1, n, file_);
}

// 0x34ef58 _ZNK15FileSystemWin3211_FileHandle4peekEPvy
// Same gate, ftell, fread and decode as read(); the original then seeks back by the number of bytes
// read, so the position is unchanged. The decode test is nested here (the flag first, then
// pos <= 3), which is the same condition read() tests in one expression.
// The obfuscation byte comes from glitch::io::CFileSystem::open, as for read().
std::uint64_t FileSystemWin32::_FileHandle::peek(void* buf, std::uint64_t n) const {
    if (!canRead_) {
        return 0;
    }
    long pos = std::ftell(file_);
    std::size_t got = std::fread(buf, 1, n, file_);
    if (cfile_->obfuscated && pos <= 3) {
        FileSystemBase::decodeObfuscatedData(static_cast<int>(pos), buf, static_cast<int>(n), file_);
    }
    std::fseek(file_, -static_cast<long>(got), SEEK_CUR);
    return got;
}

// 0x34edf0 FileSystemWin32::_FileHandle::tell() const
std::uint64_t FileSystemWin32::_FileHandle::tell() const { return static_cast<std::uint64_t>(std::ftell(file_)); }

// 0x34ee10 FileSystemWin32::_FileHandle::seek(unsigned long long)
void FileSystemWin32::_FileHandle::seek(std::uint64_t pos) {
    std::fseek(file_, static_cast<long>(pos), SEEK_SET);
}

// 0x34ee20 FileSystemWin32::_FileHandle::size() const
std::uint32_t FileSystemWin32::_FileHandle::size() const {
    long saved = std::ftell(file_);
    std::fseek(file_, 0, SEEK_END);
    long end = std::ftell(file_);
    std::fseek(file_, saved, SEEK_SET);
    return static_cast<std::uint32_t>(end);
}

// 0x34fe50 FileSystemWin32::_createHandle(char const*, char const*, bool, bool)
// A leading "./" or ".\" is stripped from the directory argument (Hex-Rays: the
// prefix test is on a2, which is the directory), then the handle is opened. A handle
// whose file did not open is released and nullptr is returned.
FileSystemWin32::_FileHandle* FileSystemWin32::_createHandle(const char* dir, const char* name,
                                                             bool writable, bool readwrite) {
    if (dir[0] == '.' && (dir[1] == '/' || dir[1] == '\\')) {
        dir += 2;
    }
    dh2prof::Scope prof(dh2prof::kIoOpen);  // Track B frame profiler
    auto* h = new _FileHandle(dir, name, writable, readwrite);
    if (h->file_ == nullptr) {
        delete h;
        return nullptr;
    }
    return h;
}

// 0x34fee4 FileSystemWin32::openSavefile(char const*, bool)
// Slot +0x94. Savegame::FlushJobs(name) (0x314cfc) first, then _createHandle(savefilesPath_ (+0x43c), name, writable,
// readwrite false).
FileSystemWin32::_FileHandle* FileSystemWin32::openSavefile(const char* name, bool writable) {
    Savegame::FlushJobs(name);
    return _createHandle(savefilesPath_, name, writable, false);
}

// 0x34ff28 FileSystemWin32::openResource(char const*)
// Slot +0x90: the resources directory, then the data directory when that failed.
FileSystemWin32::_FileHandle* FileSystemWin32::openResource(const char* name) {
    _FileHandle* h = _createHandle(resourcesPath_, name, false, false);
    if (h == nullptr) {
        h = _createHandle(dataPath_, name, false, false);
    }
    return h;
}

// 0x34ff84 FileSystemWin32::openTraceFile(char const*)
FileSystemWin32::_FileHandle* FileSystemWin32::openTraceFile(const char* name) {
    return _createHandle(savefilesPath_, name, true, true);
}

// 0x34ffb0 _ZN15FileSystemWin328openFileEPKcbb
// Slot +0x88. When Application::IsUsingUncompiledData(name) (the Singleton<Application> instance) is false, the name is
// opened in the root path with the caller's flags; when it is true, _createHandle("Q:\\", name, false, false) is tried
// first and the root path is the fallback when that returned null.
FileSystemWin32::_FileHandle* FileSystemWin32::openFile(const char* name, bool writable, bool readwrite) {
    if (!ApplicationGetInstance().IsUsingUncompiledData(name)) {
        return _createHandle(rootPath_, name, writable, readwrite);
    }
    _FileHandle* handle = _createHandle("Q:\\", name, false, false);
    if (handle == nullptr) {
        return _createHandle(rootPath_, name, writable, readwrite);
    }
    return handle;
}

// 0x34f34c FileSystemWin32::makeFullPath(char const*, char const*, char*, int)
// The narrow overload only clears the output buffer in the original.
void FileSystemWin32::makeFullPath(const char*, const char*, char* out, int size) {
    std::memset(out, 0, static_cast<std::size_t>(size));
}

// 0x34f274 _ZNK15FileSystemWin3214deleteSavefileEPKc
// Slot +0x9c, verified against the listing: sprintf(s, "%s%s", RES_PATH, name) into a 260-byte
// buffer, then `if (!unlink(s)) return 1;` -- so true when the unlink succeeded -- and on failure
// errno is read and discarded, DebugSwitches::load() runs and GetSwitch("isTracingFileSystem") is
// read and discarded, then 0 is returned. traceFileSystemFailure() is exactly those two discarded
// calls (the real game-app DebugSwitches class, see core-platform/deps/debug_switches.hpp), so the
// failure branch is reproduced. Remaining deviations, both named: the path is built with snprintf,
// so a name longer than the buffer is truncated where the original overruns it, and the return type
// is bool where the original's int is 0/1 (the mangled name does not encode the return type).
bool FileSystemWin32::deleteSavefile(const char* name) const {
    char path[260];
    std::snprintf(path, sizeof path, "%s%s", RES_PATH, name);
    if (DH2_UNLINK(path) == 0) {
        return true;
    }
    traceFileSystemFailure();
    return false;
}

// 0x34f10c _ZNK15FileSystemWin3214backupSavefileEPKcS1_
// Removes any existing destination (ENOENT is fine), then renames src to dst. Returns
// false when the unlink failed for another reason or the rename failed.
bool FileSystemWin32::backupSavefile(const char* src, const char* dst) const {
    char from[260];
    char to[260];
    std::snprintf(from, sizeof from, "%s%s", RES_PATH, src);
    std::snprintf(to, sizeof to, "%s%s", RES_PATH, dst);
    int rc = DH2_UNLINK(to);
    if (rc == 0 || errno == ENOENT) {
        if (std::rename(from, to) != 0) {
            traceFileSystemFailure();
            return false;
        }
        return true;
    }
    traceFileSystemFailure();
    return false;
}

// 0x34f8a4 _ZNK15FileSystemWin3214formatFilePathERKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE
// Every '/' in the path is replaced by '\\' and the rest is copied unchanged. The
// original builds a glitch string; std::string is returned here.
glitch::core::stringc FileSystemWin32::formatFilePath(const glitch::core::stringc& path) const {
    glitch::core::stringc out = path;
    for (char& c : out) {
        if (c == '/') {
            c = '\\';
        }
    }
    return out;
}

// 0x3505a0 _ZNK15FileSystemWin328getFilesEPKcRSt6vectorISsSaISsEE
// The original does not use dir: it lists RES_PATH and appends every entry name, "." and
// ".." included, with no file-type filter. The listing is shared with getFilesMatching.
// The original copies each name through a 100-byte buffer; the port keeps the whole name.
void FileSystemWin32::getFiles(const char* /*dir*/, std::vector<std::string>& out) const {
    listDirectory(RES_PATH, out);
}

// 0x35041c _ZNK15FileSystemWin3216getFilesMatchingEPKcS1_RSt6vectorISsSaISsEE
// Appends the entries of dir whose name contains pattern as a substring. An empty name
// matches only an empty pattern, a longer pattern never matches, and an empty pattern
// matches every other name; std::string::find has the same results. The listing's
// return value is not set by the function (its epilogue returns whatever the last
// string destructor left in r0), so the void signature is the original's.
void FileSystemWin32::getFilesMatching(const char* dir, const char* pattern,
                                       std::vector<std::string>& out) const {
    std::vector<std::string> entries;
    if (!listDirectory(dir, entries)) {
        return;  // opendir failed: nothing is listed
    }
    for (std::string& name : entries) {
        if (name.find(pattern) != std::string::npos) {
            out.push_back(std::move(name));
        }
    }
}

// 0x34ebcc FileSystemWin32::closeFile(IFileStream*&)
// The original calls vtable slot +0x4 (the deleting destructor) and clears the pointer.
void FileSystemWin32::closeFile(IFileStream*& stream) {
    if (stream != nullptr) {
        delete stream;
        stream = nullptr;
    }
}

// FileSystemWin32 used to carry its own doesSavefileExists here. It is the inherited virtual
// FileSystemBase::doesSavefileExists (0x34e150, the file system's slot +0xb0), implemented once in
// filesystem_base.cpp; the port's callers (dh2/global/savefile_fs.hpp SavefileExists, the DebugHUD
// and TrophyManager helpers) reach it through this class unchanged.

// 0x34ebfc FileSystemWin32::getFolders(char const*, std::vector<std::string>&) const
// Empty in the original.
void FileSystemWin32::getFolders(const char*, std::vector<std::string>&) const {}
