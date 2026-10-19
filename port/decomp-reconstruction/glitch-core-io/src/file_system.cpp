#include "glitch-core-io/io/file_system.hpp"
#include "core-platform/frame_prof.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/io/pak_reader.hpp"
#include "glitch-core-io/io/unzip_reader.hpp"
#include "glitch-core-io/io/zip_reader.hpp"
#include "glitch-core-io/tb/glitch_io.hpp"

#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <memory>

#ifdef _WIN32
#include <direct.h>
#define GLITCH_CHDIR _chdir
#else
#include <unistd.h>
#define GLITCH_CHDIR chdir
#endif

namespace glitch::io {

char CFileSystem::WorkingDirectory[1024] = {};
std::map<std::string, std::string> CFileSystem::ObfuscationMap;

// 0x56c058 _ZN6glitch2io11CFileSystemC2Ev and 0x56c0a8 _ZN6glitch2io11CFileSystemC1Ev
// The three archive lists start empty (their default construction zeroes them, as the original
// does at +0x08..+0x2c). The refcount is set to 0, not the base default of 1, because the
// original's constructor stores 0 at +0x04 and createFileSystem returns that object as it is.
CFileSystem::CFileSystem() {
    referenceCounter = 0;
}

// 0x56c214 _ZN6glitch2io11CFileSystem19getWorkingDirectoryEv
const char* CFileSystem::getWorkingDirectory() {
    return WorkingDirectory;
}

// 0x56c528 _ZN6glitch2io11CFileSystem24changeWorkingDirectoryToEPKc
// chdir; on success the path is copied with strcpy (LC_API_STRCPY -> PLT strcpy) into the 1024-byte
// static buffer. A path of 1024 bytes or more overflows the buffer in the original (undefined); the port
// truncates it to 1023 characters and keeps the terminator.
bool CFileSystem::changeWorkingDirectoryTo(const char* directory) {
    const bool changed = GLITCH_CHDIR(directory) == 0;
    if (changed) {
        std::strncpy(WorkingDirectory, directory, sizeof(WorkingDirectory) - 1);
        WorkingDirectory[sizeof(WorkingDirectory) - 1] = '\0';
    }
    return changed;
}

// 0x56c4a4 _ZNK6glitch2io11CFileSystem14createFileListEv
CFileList* CFileSystem::createFileList() const {
    return new CFileList();
}

// 0x56c570 _ZN6glitch2io11CFileSystem18createAndWriteFileEPKcb
IWriteFile* CFileSystem::createAndWriteFile(const char* name, bool append) {
    return createWriteFile(name, append);
}

// 0x56c57c _ZN6glitch2io11CFileSystem20createMemoryReadFileEPviPKcb
IReadFile* CFileSystem::createMemoryReadFile(void* data, int length, const char* name, bool takeOwnership) {
    if (!data) return nullptr;
    return new CMemoryReadFile(data, length, name, takeOwnership);
}

// 0x56c414 _ZN6glitch2io11CFileSystem15createXMLWriterEPNS0_10IWriteFileE
IXMLWriter* CFileSystem::createXMLWriter(IWriteFile* file) {
    return new CXMLWriter(file);
}

// 0x56c278 _ZN6glitch2io11CFileSystem15createXMLWriterEPKc
// The file is opened for writing by name (the virtual createAndWriteFile with append false),
// the writer takes its own reference, and the local reference is released.
IXMLWriter* CFileSystem::createXMLWriter(const char* name) {
    IWriteFile* file = createAndWriteFile(name, false);
    IXMLWriter* writer = createXMLWriter(file);
    if (file) file->drop();
    return writer;
}

// 0x56c3ec _ZN6glitch2io11CFileSystem21createEmptyAttributesEPNS_5video12IVideoDriverE
IAttributes* CFileSystem::createEmptyAttributes(glitch::video::IVideoDriver* driver) {
    return new CAttributes(driver);
}

// 0x56c348 _ZNK6glitch2io11CFileSystem15getAbsolutePathERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
core::stringc CFileSystem::getAbsolutePath(const core::stringc& path) const {
    return path;
}

namespace {

// Position of the last '/' or '\\' as the original computes it: the larger of the two
// reverse searches, with npos read as -1 (signed compare). Returns -1 when neither is found.
long lastSeparator(const core::stringc& path) {
    const std::size_t slash = path.rfind('/');
    const std::size_t back = path.rfind('\\');
    const long a = slash == std::string::npos ? -1 : static_cast<long>(slash);
    const long b = back == std::string::npos ? -1 : static_cast<long>(back);
    return a < b ? b : a;
}

}  // namespace

// 0x56c6b4 _ZNK6glitch2io11CFileSystem10getFileDirERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
core::stringc CFileSystem::getFileDir(const core::stringc& path) const {
    const long sep = lastSeparator(path);
    if (sep >= 0 && static_cast<std::size_t>(sep) < path.size()) {
        return path.substr(0, static_cast<std::size_t>(sep));
    }
    return ".";
}

// 0x56c740 _ZNK6glitch2io11CFileSystem15getFileBasenameERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEb
// Mirrors the listing: with keepExtension false the extension length is size - (last '.') when a
// dot exists, else 0. A separator before size gives substr(sep + 1, count) with count =
// size - ext - (sep + 1) in unsigned 32-bit arithmetic. When the dot lies before the separator
// that count wraps, and the substring is clamped to the end of the path (the rest after the
// separator). With no separator in range the result is the path minus its extension.
core::stringc CFileSystem::getFileBasename(const core::stringc& path, bool keepExtension) const {
    const long sep = lastSeparator(path);
    const std::size_t size = path.size();
    std::size_t extLength = 0;
    if (!keepExtension) {
        const std::size_t dot = path.rfind('.');
        if (dot != std::string::npos) extLength = size - dot;
    }
    if (sep >= 0 && static_cast<std::size_t>(sep) < size) {
        const std::size_t start = static_cast<std::size_t>(sep) + 1;
        const std::size_t end = size - extLength;
        if (end < start) return path.substr(start);  // the original's count wraps and clamps
        return path.substr(start, end - start);
    }
    if (extLength != 0) return path.substr(0, size - extLength);
    return path;
}

// 0x56cb78 _ZN6glitch2io11CFileSystem5clearEv
// Each list is walked from its first element; every reader is dropped (the reference the list
// held), then the list is emptied. The walk re-reads the size after each drop, as the original does.
void CFileSystem::clear() {
    for (std::size_t i = 0; i < zipReaders.size(); ++i) zipReaders[i]->drop();
    zipReaders.clear();
    for (std::size_t i = 0; i < pakReaders.size(); ++i) pakReaders[i]->drop();
    pakReaders.clear();
    for (std::size_t i = 0; i < unZipReaders.size(); ++i) unZipReaders[i]->drop();
    unZipReaders.clear();
}

// 0x56cc44 _ZN6glitch2io11CFileSystemD1Ev and 0x56ccc4 _ZN6glitch2io11CFileSystemD2Ev
// clear() drops the readers. The three lists are declared zip, pak, unzip, so their storage is
// released afterwards in the original's order (unzip, pak, zip).
CFileSystem::~CFileSystem() { clear(); }

// 0x56df38 _ZNK6glitch2io11CFileSystem9existFileEPKc
// The three archive lists are searched in order (zip, pak, unzip): the first reader that finds the name answers true.
// Otherwise CFileSystem::open(name, "rb") is tried and the handle it returns is dropped at once.
bool CFileSystem::existFile(const char* name) const {
    for (CZipReader* zip : zipReaders) {
        if (zip->findFile(name) != -1) return true;
    }
    for (CPakReader* pak : pakReaders) {
        if (pak->findFile(name) != -1) return true;
    }
    for (CUnZipReader* unzip : unZipReaders) {
        if (unzip->findFile(name) != -1) return true;
    }
    return static_cast<bool>(open(name, "rb"));
}

// 0x34df7c _ZNK6glitch2io11CFileSystem9existFileERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
bool CFileSystem::existFile(const core::stringc& name) const { return existFile(name.c_str()); }

// 0x56c0f8 _ZN6glitch2io11CFileSystem28createAndOpenFileFromArchivesEPKc
// Each reader of the zip list, then the pak list, then the unzip list is asked in turn for the name
// (slot +0x0c of the reader); the first file wins. Null when no archive has it.
IReadFile* CFileSystem::createAndOpenFileFromArchives(const char* name) {
    for (CZipReader* zip : zipReaders) {
        if (IReadFile* file = zip->openFile(name)) return file;
    }
    for (CPakReader* pak : pakReaders) {
        if (IReadFile* file = pak->openFile(name)) return file;
    }
    for (CUnZipReader* unzip : unZipReaders) {
        if (IReadFile* file = unzip->openFile(name)) return file;
    }
    return nullptr;
}

// 0x56d4e0 _ZN6glitch2io11CFileSystem17createAndOpenFileEPKc
// The archives, then createReadFile(name). When both fail the path is cut at its last '/' (rfind from the previous
// cut) one component at a time, each shorter prefix trying the archives and then the disk, until one opens or no '/'
// is left. A prefix that opened is taken as a zip (CZipReader::isValid, else it is dropped and the result is null): the
// rest of the original path is then opened inside it, one component at a time, each step wrapping the previous
// file in a CZipReader(file, true, true) and opening the next component by name.
IReadFile* CFileSystem::createAndOpenFile(const char* name) {
    IReadFile* file = createAndOpenFileFromArchives(name);
    if (file != nullptr) return file;
    file = createReadFile(name);
    if (file != nullptr) return file;

    std::string path = name;         // v33
    size_t cut = std::string::npos;  // v7
    IReadFile* prefix = nullptr;     // v16
    for (;;) {
        cut = path.empty() ? std::string::npos : path.rfind('/', cut);
        path = path.substr(0, cut);
        if (IReadFile* inArchive = createAndOpenFileFromArchives(path.c_str())) {
            prefix = inArchive;
            break;
        }
        IReadFile* onDisk = createReadFile(path.c_str());
        if (onDisk != nullptr || cut == std::string::npos) {
            prefix = onDisk;
            break;
        }
    }
    if (cut == std::string::npos || prefix == nullptr) return prefix;  // LABEL_39
    if (!CZipReader::isValid(prefix)) {
        prefix->drop();
        return nullptr;
    }
    size_t start = cut + 1;  // v17
    const std::string full = name;
    for (;;) {
        CZipReader reader(prefix, true, true);  // takes its own use of the file
        std::string rest = full;
        size_t slash;  // v19, npos when there is no further '/'
        size_t next;   // v18
        if (rest.size() <= start) {
            slash = std::string::npos;
            next = 0;
        } else {
            size_t p = start;
            if (rest[p] != '/') {
                do {
                    ++p;
                } while (p != rest.size() && rest[p] != '/');
            }
            if (p == rest.size()) {
                slash = std::string::npos;
                next = 0;
            } else {
                slash = p;
                next = slash + 1;
            }
        }
        if (start > rest.size()) start = rest.size();   // port guard: substr past the end would throw std::out_of_range
        rest = rest.substr(start, slash == std::string::npos ? std::string::npos : slash - start);
        prefix->drop();
        IReadFile* inner = reader.openFile(rest.c_str());
        prefix = inner;
        if (slash == std::string::npos) return inner;
        if (inner == nullptr || next == std::string::npos) return inner;
        start = next;
    }
}

// 0x56c230 _ZN6glitch2io11CFileSystem15createXMLReaderEPKc
// Opens the file through slot +0x0c, builds the reader through slot +0x50 and drops the local reference.
IXMLReader* CFileSystem::createXMLReader(const char* name) {
    IReadFile* file = createAndOpenFile(name);
    if (!file) return nullptr;
    IXMLReader* reader = createXMLReader(file);
    file->drop();
    return reader;
}

// 0x56c480 _ZN6glitch2io11CFileSystem15createXMLReaderEPNS0_9IReadFileE
IXMLReader* CFileSystem::createXMLReader(IReadFile* file) {
    return file ? createIXMLReader(file) : nullptr;
}

// 0x56c44c _ZN6glitch2io11CFileSystem19createXMLReaderUTF8EPKc
IXMLReaderUTF8* CFileSystem::createXMLReaderUTF8(const char* name) {
    IReadFile* file = createAndOpenFile(name);
    if (!file) return nullptr;
    IXMLReaderUTF8* reader = createIXMLReaderUTF8(file);
    file->drop();
    return reader;
}

// 0x56c43c _ZN6glitch2io11CFileSystem19createXMLReaderUTF8EPNS0_9IReadFileE
IXMLReaderUTF8* CFileSystem::createXMLReaderUTF8(IReadFile* file) {
    return file ? createIXMLReaderUTF8(file) : nullptr;
}

// 0x56d2c0 _ZN6glitch2io11CFileSystem17addZipFileArchiveEPKcbb
// The file is opened through createAndOpenFile (slot +0x0c); null answers false. A CZipReader over it (which takes its own
// use) gets the word at +0x10 OR-ed with 1, is appended to the zip list, and the local use of the file is dropped.
bool CFileSystem::addZipFileArchive(const char* name, bool ignoreCase, bool ignorePaths) {
    IReadFile* file = createAndOpenFile(name);
    if (file == nullptr) return false;
    CZipReader* reader = new CZipReader(file, ignoreCase, ignorePaths);
    reader->unk_10 |= 1;
    zipReaders.push_back(reader);
    file->drop();
    return true;
}

// 0x56d180 _ZN6glitch2io11CFileSystem18addFolderFileArchiveEPKcbb
// The unzip list is searched from the back: a reader whose folder name equals `name` answers false and nothing is added.
// Otherwise a CUnZipReader(this, name, ignoreCase, ignorePaths) is appended and true is returned.
bool CFileSystem::addFolderFileArchive(const char* name, bool ignoreCase, bool ignorePaths) {
    for (std::size_t i = unZipReaders.size(); i-- > 0;) {
        if (std::strcmp(name, unZipReaders[i]->folderName.c_str()) == 0) return false;
    }
    CUnZipReader* reader = new CUnZipReader(this, name, ignoreCase, ignorePaths);
    unZipReaders.push_back(reader);
    return true;
}

// 0x56ca70 _ZN6glitch2io11CFileSystem17addPakFileArchiveEPKcbb
// As addZipFileArchive with a CPakReader and the pak list (no flag word).
bool CFileSystem::addPakFileArchive(const char* name, bool ignoreCase, bool ignorePaths) {
    IReadFile* file = createAndOpenFile(name);
    if (file == nullptr) return false;
    CPakReader* reader = new CPakReader(file, ignoreCase, ignorePaths);
    pakReaders.push_back(reader);
    file->drop();
    return true;
}

// 0x56ce60 _ZN6glitch2io11CFileSystem17removeFileArchiveEPKc
// Each list is searched from the back, in the order zip, pak, unzip. The zip and pak readers compare `name` with the
// file name of their read file (IReadFile slot +0x28; a reader with no file compares with null), the unzip readers with
// their folder name. The first match is dropped and erased from its list: true; no match: false.
bool CFileSystem::removeFileArchive(const char* name) {
    for (std::size_t i = zipReaders.size(); i-- > 0;) {
        const char* readerName = zipReaders[i]->readFile != nullptr ? zipReaders[i]->readFile->getFileName() : nullptr;
        if (readerName != nullptr && std::strcmp(name, readerName) == 0) {
            zipReaders[i]->drop();
            zipReaders.erase(zipReaders.begin() + static_cast<std::ptrdiff_t>(i));
            return true;
        }
    }
    for (std::size_t i = pakReaders.size(); i-- > 0;) {
        const char* readerName = pakReaders[i]->readFile != nullptr ? pakReaders[i]->readFile->getFileName() : nullptr;
        if (readerName != nullptr && std::strcmp(name, readerName) == 0) {
            pakReaders[i]->drop();
            pakReaders.erase(pakReaders.begin() + static_cast<std::ptrdiff_t>(i));
            return true;
        }
    }
    for (std::size_t i = unZipReaders.size(); i-- > 0;) {
        if (std::strcmp(name, unZipReaders[i]->folderName.c_str()) == 0) {
            unZipReaders[i]->drop();
            unZipReaders.erase(unZipReaders.begin() + static_cast<std::ptrdiff_t>(i));
            return true;
        }
    }
    return false;
}

namespace {

// The shared front half of open (0x56dc40) and getObfuscatedFileName (0x56e064): while the map is in use, a leading "./"
// or ".\" is skipped, the working-directory prefix is cut when the name contains it (plus one more character unless the
// directory already ends with a separator), the backslashes of a copy become '/', and the copy is looked up. Returns the
// map's real name on a hit, null on a miss (and when the map is empty).
const std::string* lookupObfuscated(const char* name) {
    if (CFileSystem::ObfuscationMap.empty()) return nullptr;
    const char* n = name;
    if (n[0] == '.' && (n[1] == '/' || n[1] == '\\')) n += 2;
    const std::size_t workingLength = std::strlen(CFileSystem::WorkingDirectory);
    if (workingLength != 0 && std::strstr(n, CFileSystem::WorkingDirectory) != nullptr) {
        const char last = CFileSystem::WorkingDirectory[workingLength - 1];
        n += workingLength + ((last == '\\' || last == '/') ? 0 : 1);
    }
    std::string key(n);
    std::replace(key.begin(), key.end(), '\\', '/');
    const auto it = CFileSystem::ObfuscationMap.find(key);
    return it == CFileSystem::ObfuscationMap.end() ? nullptr : &it->second;
}

}  // namespace

// 0x56e064 _ZN6glitch2io11CFileSystem21getObfuscatedFileNameEPKc
const char* CFileSystem::getObfuscatedFileName(const char* name) {
    const std::string* real = lookupObfuscated(name);
    return real != nullptr ? real->c_str() : name;
}

// 0x56dc40 _ZN6glitch2io11CFileSystem4openEPKcS3_
boost::intrusive_ptr<CFile> CFileSystem::open(const char* name, const char* mode) {
    const std::string* real = lookupObfuscated(name);
    const bool obfuscated = real != nullptr;
    std::string fileName = obfuscated ? *real : std::string(name);
    // A name without a drive colon gets the working directory in front of it (and a '/' when the directory has no
    // trailing separator).
    if (fileName.find(':') == std::string::npos && WorkingDirectory[0] != 0) {
        std::string directory = WorkingDirectory;
        const char last = directory.back();
        if (last != '\\' && last != '/') directory += '/';
        fileName = directory + fileName;
    }
    std::FILE* handle;
    {
        dh2prof::Scope prof(dh2prof::kIoOpen);  // Track B frame profiler
        handle = std::fopen(fileName.c_str(), mode);
    }
    if (handle == nullptr) return {};
#if defined(__ANDROID__)
    // Track B: the game data sits on shared storage (FUSE on Android 11+), where each refill of the default 4 KiB stdio buffer is a slow syscall.
    if (mode[0] == 'r' && mode[1] != '+') std::setvbuf(handle, nullptr, _IOFBF, 32768);
#endif
    return boost::intrusive_ptr<CFile>(new CFile(handle, fileName.c_str(), obfuscated), true);
}

// 0x56e6dc _ZN6glitch2io11CFileSystem21addObfuscationFileMapEPKchSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
// The map file is read whole and decoded in place with a rolling key k that starts at `key`: byte i becomes
// (byte - k) mod 256; the last three decoded bytes (one per i mod 3) are summed; the next k is
// ((sum / 3) + (i mod 3 - 1) * ((v / 2) * (v mod 2) % key) + k) mod 256, kept in 0..255 (v is the decoded byte). The
// decoded text must end with "c|-|3k" (else the buffer is freed and false returned). Each line before that is
// "<name>:<obfuscated>"; ObfuscationMap[<obfuscated>] = path + <name>.
// Deviations: a null file (createAndOpenFile failed) crashes in the original, here it answers false; a zero key divides
// by zero in the original, where the ARM helper yields 0, so the term is 0.
bool CFileSystem::addObfuscationFileMap(const char* name, unsigned char key, core::stringc path) {
    IReadFile* file = createAndOpenFile(name);  // slot +0x0c
    if (file == nullptr) return false;
    const long size = file->getSize();  // +0x20
    char* buffer = new char[static_cast<std::size_t>(size) + 1];
    file->read(buffer, static_cast<std::uint32_t>(size));  // +0x0c
    file->drop();
    buffer[size] = 0;

    unsigned char recent[3] = {0, 0, 0};  // v38, v39, v40
    int k = key;                           // i
    for (long idx = 0; idx < size; ++idx) {
        const int raw = static_cast<unsigned char>(buffer[idx]) - k;
        const int decoded = raw + (raw >= 0 ? 0 : 256);
        const unsigned slot = static_cast<unsigned>(idx % 3);
        recent[slot] = static_cast<unsigned char>(decoded);
        const int sum = recent[1] + recent[0] + recent[2];
        buffer[idx] = static_cast<char>(decoded);
        const int mix = key == 0 ? 0 : ((decoded / 2) * (decoded % 2)) % key;
        const int next = (sum / 3 + (static_cast<int>(slot) - 1) * mix + k) % 256;
        k = next + (next >= 0 ? 0 : 256);
    }

    if (size < 6 || std::strcmp(buffer + size - 6, "c|-|3k") != 0) {
        delete[] buffer;
        return false;
    }
    char* const end = buffer + size - 6;
    char* lineStart = buffer;
    while (lineStart < end) {
        char* colon = static_cast<char*>(std::memchr(lineStart, ':', static_cast<std::size_t>(end - lineStart)));
        if (colon == nullptr) break;
        *colon = 0;
        char* obfuscatedName = colon + 1;
        char* newline =
            static_cast<char*>(std::memchr(obfuscatedName, '\n', static_cast<std::size_t>(end - obfuscatedName)));
        if (newline == nullptr) newline = end;
        *newline = 0;
        ObfuscationMap[std::string(obfuscatedName)] = std::string(path.data(), path.size()) + lineStart;
        lineStart = newline + 1;
    }
    delete[] buffer;
    return true;
}

// 0x56c2d8 _ZN6glitch2io16createFileSystemEv
IFileSystem* createFileSystem() {
    return new CFileSystem();
}

}  // namespace glitch::io
