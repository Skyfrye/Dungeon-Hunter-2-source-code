// glitch::io::SPakFileEntry and glitch::io::CPakReader (directory accessors and the
// destructor). Reconstructed from libDungeonHunter2.so.
#include "glitch-core-io/io/pak_reader.hpp"

#include "glitch-core-io/io/limit_read_file.hpp"
#include "glitch-core-io/core/sort.hpp"

#include <algorithm>
#include <cstddef>
#include <cstring>

namespace glitch::io {

// 0x56f494 _ZN6glitch2io13SPakFileEntryC1Ev
// The three strings start empty, as in the original (the decompile allocates an empty buffer
// for each). The two integers are zeroed by their default initialisers.
SPakFileEntry::SPakFileEntry() {}

// 0x56f500 _ZN6glitch2io13SPakFileEntryC1ERKS1_
SPakFileEntry::SPakFileEntry(const SPakFileEntry& other)
    : pakFileName(other.pakFileName), simpleFileName(other.simpleFileName), path(other.path), pos(other.pos), length(other.length) {}

// 0x56f5e0 _ZN6glitch2io13SPakFileEntryaSERKS1_
// Each string is assigned only when it is not the same object, as the original compares
// the member addresses before each assignment. The integers are always copied.
SPakFileEntry& SPakFileEntry::operator=(const SPakFileEntry& other) {
    if (this != &other) pakFileName = other.pakFileName;
    if (&simpleFileName != &other.simpleFileName) simpleFileName = other.simpleFileName;
    if (&path != &other.path) path = other.path;
    pos = other.pos;
    length = other.length;
    return *this;
}

// 0x56f43c _ZN6glitch2io10CPakReader12getFileCountEv
// The original computes (end - begin) / 0x50 with a multiply by the inverse of 5; that
// is the element count of the vector.
int CPakReader::getFileCount() {
    return static_cast<int>(entries.size());
}

// 0x56f464 _ZNK6glitch2io10CPakReader11getFileInfoEi
// No bounds check, as in the original: index must be a valid entry.
const SPakFileEntry* CPakReader::getFileInfo(int index) const {
    return entries.data() + index;
}

// 0x56f6f4 _ZN6glitch2io10CPakReaderD1Ev
// 0x56f73c _ZN6glitch2io10CPakReaderD2Ev (same body)
// Releases the read file and then the entry vector (the vector is destroyed by its own
// destructor here, as the original does with the glitch allocator).
CPakReader::~CPakReader() {
    if (readFile != nullptr) readFile->drop();
}

// 0x56f568 _ZN6glitch2io10CPakReader22deletePathFromFilenameERSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
// The original scans the glitch string from its end pointer and tests the byte there first. For
// core::stringc that byte is the terminator (never a separator), so the scan starts at the last
// character. The text after the last separator is kept; a separator at index 0 leaves name unchanged.
void CPakReader::deletePathFromFilename(core::stringc& name) {
    const std::size_t size = name.size();
    if (size == 0) return;
    std::size_t i = size;
    do {
        --i;
        if (name[i] == '/' || name[i] == '\\') {
            if (i != 0) name = name.substr(i + 1);
            return;
        }
    } while (i != 0);
}


// 0x57002c _ZN6glitch2io10CPakReaderC1EPNS0_9IReadFileEbb (C2 at 0x5700c4 is the same body)
// Takes a reference to the file, scans the directory once, then sorts the entries with the
// heapsort (heapsort<SPakFileEntry> at 0x56fa04; the comparison is operator< above).
CPakReader::CPakReader(IReadFile* file, bool a, bool b) : readFile(file), ignoreCase(a), ignorePaths(b) {
    if (readFile) {
        ++readFile->referenceCounter;
        scanLocalHeader();
        const int count = static_cast<int>(entries.size());
        if (count > 1) glitch::core::heapsort(entries.data(), count);
    }
}

// 0x56f784 _ZN6glitch2io10CPakReader8openFileEi
IReadFile* CPakReader::openFile(int index) {
    const SPakFileEntry& entry = entries[static_cast<std::size_t>(index)];
    readFile->seek(entry.pos, false);
    return createLimitReadFile(entry.simpleFileName.c_str(), readFile, entry.length);
}

// 0x56fcec _ZN6glitch2io10CPakReader15extractFilenameEPNS0_13SPakFileEntryE
// Transcribed from the listing. The name is lower-cased in its own string when ignoreCase is set (the listing's loop covers
// the string's length). The name's characters and terminator are then copied into nameBuffer, the persistent buffer, and the
// separator is searched in that buffer's window: index 56 first, then 55 down to 0. A '/' at index 0 counts as none (the
// listing compares the position with the begin). When a separator is found at k, path takes buffer[0..k] (the bytes up to and
// including the '/', which can include stale bytes past the terminator when k is past the name's end). simpleFileName is the
// tail after the separator (a strlen of the buffer from k+1) when ignorePaths is set, else the whole name. With no separator,
// path is empty and simpleFileName is the whole name.
// Deviations, host-necessitated and named: (1) the original's buffer is the entry string's allocation, which a new entry gets
// from the allocator; here the one persistent nameBuffer stands in for it, its growth is zero-filled, so the bytes that the
// listing reads from allocator memory are zeros. (2) strlen of the tail is bounded by the buffer's end; the original would read
// on until a terminator. (3) the buffer is at least 64 bytes, so the 57-byte window always exists.
void CPakReader::extractFilename(SPakFileEntry* entry) {
    core::stringc& pakFileName = entry->pakFileName;
    if (ignoreCase) {
        for (char& c : pakFileName) {
            if (c >= 'A' && c <= 'Z') c = static_cast<char>(c + ' ');
        }
    }
    const std::size_t length = pakFileName.size();
    const std::size_t wanted = length + 1 > 64 ? length + 1 : 64;
    if (nameBuffer.size() < wanted) nameBuffer.resize(wanted, '\0');
    std::memcpy(nameBuffer.data(), pakFileName.data(), length);
    nameBuffer[length] = '\0';  // the terminator; the bytes after it are left as they were
    const char* buffer = nameBuffer.data();

    constexpr std::size_t kNone = static_cast<std::size_t>(-1);
    std::size_t sep = kNone;
    if (buffer[56] == '/') {
        sep = 56;
    } else {
        for (std::size_t k = 55;; --k) {
            if (buffer[k] == '/') {
                sep = k;
                break;
            }
            if (k == 0) break;
        }
    }
    if (sep == kNone || sep == 0) {
        entry->path.clear();
        entry->simpleFileName = pakFileName;
        return;
    }
    entry->path.assign(buffer, sep + 1);
    if (ignorePaths) {
        const char* tail = buffer + sep + 1;
        const char* bufferEnd = buffer + nameBuffer.size();
        const char* nul = std::find(tail, bufferEnd, '\0');
        entry->simpleFileName.assign(tail, nul);
    } else {
        entry->simpleFileName = pakFileName;
    }
}

// 0x5703b8 _ZN6glitch2io10CPakReader8openFileEPKc
IReadFile* CPakReader::openFile(const char* name) {
    const int index = findFile(name);
    if (index != -1) return openFile(index);
    return nullptr;
}

// 0x5702b4 _ZN6glitch2io10CPakReader8findFileEPKc
// The key is a new entry whose name is the argument, and its path is left empty. The original runs
// three steps on the key name, in order: lower-case it when ignoreCase (+0x24) is set; cut it to the text
// after its last '/' or '\\' when ignorePaths (+0x25) is set (the call to deletePathFromFilename at 0x570368);
// then the shared binary search (lower_bound plus an equality test) over the entries, which relies on
// the same name order as the sort in the constructor.
int CPakReader::findFile(const char* name) {
    SPakFileEntry key;
    key.simpleFileName = name;
    if (ignoreCase) {
        for (char& c : key.simpleFileName) {
            if (c >= 'A' && c <= 'Z') c = static_cast<char>(c + ' ');
        }
    }
    if (ignorePaths) deletePathFromFilename(key.simpleFileName);
    return glitch::core::binary_search(entries, key);
}

// 0x56fa04 / 0x56fc0c / 0x57015c: the inlined comparator (see pak_reader.hpp). The name bytes are
// compared as signed chars (LDRSB in the heapsink listing); when one is a prefix of the other the
// shorter one is less.
namespace {
bool signedCharNameLess(const core::stringc& a, const core::stringc& b) {
    const std::size_t common = a.size() < b.size() ? a.size() : b.size();
    for (std::size_t i = 0; i < common; ++i) {
        const auto ca = static_cast<signed char>(a[i]);
        const auto cb = static_cast<signed char>(b[i]);
        if (ca != cb) return ca < cb;
    }
    return a.size() < b.size();
}
}  // namespace

bool operator<(const SPakFileEntry& a, const SPakFileEntry& b) { return signedCharNameLess(a.simpleFileName, b.simpleFileName); }

namespace {
// Little-endian 32-bit field of the pak file (Decisions in force: file data is decoded field by field).
std::uint32_t readLe32(const std::uint8_t* p) {
    return static_cast<std::uint32_t>(p[0]) | (static_cast<std::uint32_t>(p[1]) << 8) |
           (static_cast<std::uint32_t>(p[2]) << 16) | (static_cast<std::uint32_t>(p[3]) << 24);
}
}  // namespace

// 0x56fe44 _ZN6glitch2io10CPakReader15scanLocalHeaderEv
// The original zeroes the header fields, reads 12 bytes at the current position, then tests byte 0
// for 'P' or byte 1 for 'A' (the two compares of the decompile, joined by ||). The directory is read
// from its offset: one 64-byte record per entry, a 56-byte name (NUL-terminated at 56), then the
// offset and the size. A short read is not reported, because IReadFile::read returns nothing here.
bool CPakReader::scanLocalHeader() {
    if (readFile == nullptr) return false;  // the original dereferences the file here
    header[0] = header[1] = header[2] = header[3] = 0;
    directoryOffset = 0;
    directorySize = 0;
    std::uint8_t raw[12] = {};
    readFile->read(raw, 12);
    std::memcpy(header, raw, sizeof header);
    directoryOffset = readLe32(raw + 4);
    directorySize = readLe32(raw + 8);
    if (!(header[0] == 'P' || header[1] == 'A')) return false;

    readFile->seek(static_cast<long>(directoryOffset), false);
    const std::uint32_t count = directorySize >> 6;  // 0x40 bytes per record
    for (std::uint32_t i = 0; i != count; ++i) {
        char nameBuffer[57];
        readFile->read(nameBuffer, 56);
        nameBuffer[56] = '\0';
        SPakFileEntry entry;
        entry.pakFileName = nameBuffer;  // up to the first NUL, as strlen gives
        extractFilename(&entry);
        std::uint8_t offsetBytes[4] = {};
        std::uint8_t sizeBytes[4] = {};
        readFile->read(offsetBytes, 4);
        readFile->read(sizeBytes, 4);
        entry.pos = static_cast<std::int32_t>(readLe32(offsetBytes));
        entry.length = static_cast<std::int32_t>(readLe32(sizeBytes));
        entries.push_back(entry);
    }
    return true;
}

}  // namespace glitch::io
