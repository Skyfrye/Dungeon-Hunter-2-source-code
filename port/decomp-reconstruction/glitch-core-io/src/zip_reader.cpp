#include "glitch-core-io/io/zip_reader.hpp"

#include <algorithm>
#include <cstring>
#include <new>

#include <zlib.h>

#include "glitch-core-io/core/sort.hpp"
#include "glitch-core-io/io/limit_read_file.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/os/logging.hpp"

namespace glitch::io {

// 0x576e78 _ZN6glitch2io13SZipFileEntryC1ERKS1_
SZipFileEntry::SZipFileEntry(const SZipFileEntry& other)
    : zipFileName(other.zipFileName),
      simpleFileName(other.simpleFileName),
      path(other.path),
      fileDataPosition(other.fileDataPosition),
      header(other.header) {}

// 0x577284 _ZN6glitch2io13SZipFileEntryaSERKS1_
SZipFileEntry& SZipFileEntry::operator=(const SZipFileEntry& other) {
    if (this != &other) {
        zipFileName = other.zipFileName;
        simpleFileName = other.simpleFileName;
        path = other.path;
    }
    fileDataPosition = other.fileDataPosition;
    header = other.header;
    return *this;
}

namespace {
// The directory is ordered with the shared heapsort (core/sort.hpp), as the original's
// glitch::core::heapsort<SZipFileEntry> is. With duplicate names the order, and so the index
// findFile returns, depends on the algorithm, so std::sort would not match.
void sortEntries(core::svector<SZipFileEntry>& entries) {
    const int count = static_cast<int>(entries.size());
    if (count > 1) glitch::core::heapsort(entries.data(), count);
}
}  // namespace

// 0x577fa4 _ZN6glitch2io10CZipReaderC1EPNS0_9IReadFileEbb (C2 at 0x578050 is the same body)
// Scans the local headers until scanLocalHeader reports the end, then sorts the entries by name.
CZipReader::CZipReader(IReadFile* file, bool a, bool b) : readFile(file), ignoreCase(a), ignorePaths(b) {
    if (readFile) {
        ++readFile->referenceCounter;
        while (scanLocalHeader()) {
        }
        sortEntries(entries);
    }
}

// 0x57826c _ZN6glitch2io10CZipReaderC1EPKcbb (C2 at 0x578318 is the same body)
// As the file form; the file is opened by name (createReadFile) and owned by the reader. A null
// file leaves the directory empty.
CZipReader::CZipReader(const char* fileName, bool a, bool b) : ignoreCase(a), ignorePaths(b) {
    readFile = createReadFile(fileName);
    if (readFile) {
        while (scanLocalHeader()) {
        }
        sortEntries(entries);
    }
}

// 0x577488 _ZN6glitch2io10CZipReaderD1Ev (D2 at 0x5774ec is the same body)
CZipReader::~CZipReader() {
    if (readFile) readFile->drop();
}

// 0x577bc8 _ZN6glitch2io10CZipReader15extractFilenameEPNS0_13SZipFileEntryE
// The raw name is entry.zipFileName (+0x00); the directory part goes to entry.path (+0x30). The pseudocode tests '/' only. A '/' at index 0 is not a split
// (the whole name stays, as in the original's LABEL_23 path).
void CZipReader::extractFilename(SZipFileEntry& entry) {
    if (entry.zipFileName.empty()) return;
    if (ignoreCase) {
        for (char& c : entry.zipFileName) {
            if (c >= 'A' && c <= 'Z') c = static_cast<char>(c + 32);
        }
    }
    const std::size_t sep = entry.zipFileName.find_last_of('/');
    if (sep == core::stringc::npos || sep == 0) {
        entry.simpleFileName = entry.zipFileName;
        entry.path.clear();
    } else {
        entry.simpleFileName = entry.zipFileName.substr(sep + 1);
        entry.path = entry.zipFileName.substr(0, sep + 1);
    }
    if (!ignorePaths) entry.simpleFileName = entry.zipFileName;
}

// 0x577db4 _ZN6glitch2io10CZipReader15scanLocalHeaderEv
// The packed 30-byte local file header is read straight into the entry (+0x4c). The original reads the name into a
// 1024-byte stack buffer, so longer names overflow there; this port reads any length. The name is cut at its first
// NUL, as the original's strlen does. The data-descriptor case (GeneralBitFlag bit 3) reads 12 more bytes over
// CRC32, CompressedSize and UncompressedSize (+0x5a).
bool CZipReader::scanLocalHeader() {
    if (!readFile) return false;
    SZipFileEntry entry;
    readFile->read(&entry.header, sizeof(SZIPFileHeader));
    if (entry.header.Sig != 0x04034b50u) return false;

    core::stringc raw(entry.header.FilenameLength, '\0');
    if (entry.header.FilenameLength) readFile->read(&raw[0], entry.header.FilenameLength);
    raw.resize(std::strlen(raw.c_str()));
    entry.zipFileName = raw;
    extractFilename(entry);
    if (entry.header.ExtraFieldLength) readFile->seek(entry.header.ExtraFieldLength, true);
    if (entry.header.GeneralBitFlag & 0x0008) readFile->read(&entry.header.CRC32, 12);

    entry.fileDataPosition = static_cast<std::int32_t>(readFile->getPos());
    readFile->seek(static_cast<long>(entry.header.CompressedSize), true);
    entries.push_back(entry);
    return true;
}

// 0x576cf0 _ZN6glitch2io10CZipReader12getFileCountEv
int CZipReader::getFileCount() {
    return static_cast<int>(entries.size());
}

// 0x576d1c _ZNK6glitch2io10CZipReader11getFileInfoEi
const SZipFileEntry* CZipReader::getFileInfo(int index) const {
    return entries.data() + index;
}

// 0x576f18 _ZN6glitch2io10CZipReader8openFileEi
// Stored entries (method 0) are a limit reader over the zip's file at the entry's data offset (named with the entry's
// name; with the +0x10 flag the name is passed twice). Deflated entries (method 8): the compressed bytes (CompressedSize) are read
// from the entry's data offset, raw-inflated (window bits -15, Z_FINISH) into a block of the uncompressed size (UncompressedSize) and
// returned as a memory file named with the raw entry path that owns the block; a failed allocation logs "Not enough memory
// for decompressing" and a failed inflateInit2 logs "Error decompressing" (both with the entry name), result null. Any
// other method logs the name and gives null.
IReadFile* CZipReader::openFile(int index) {
    const SZipFileEntry& entry = entries[static_cast<std::size_t>(index)];
    if (entry.header.CompressionMethod != 0) {
        if (entry.header.CompressionMethod == 8) {
            const std::uint32_t outSize = static_cast<std::uint32_t>(entry.header.UncompressedSize);
            const std::uint32_t inSize = static_cast<std::uint32_t>(entry.header.CompressedSize);
            unsigned char* out = new (std::nothrow) unsigned char[outSize];
            unsigned char* in = out != nullptr ? new (std::nothrow) unsigned char[inSize] : nullptr;
            if (out == nullptr || in == nullptr) {
                delete[] out;
                glitch::os::Printer::log("Not enough memory for decompressing", entry.simpleFileName.c_str(), glitch::os::ELL_ERROR);
                return nullptr;
            }
            readFile->seek(entry.fileDataPosition, false);
            readFile->read(in, inSize);
            z_stream stream;
            std::memset(&stream, 0, sizeof stream);
            stream.next_in = in;
            stream.avail_in = inSize;
            stream.next_out = out;
            stream.avail_out = outSize;
            if (inflateInit2(&stream, -15) != Z_OK) {
                delete[] in;
                glitch::os::Printer::log("Error decompressing", entry.simpleFileName.c_str(), glitch::os::ELL_ERROR);
                delete[] out;
                return nullptr;
            }
            inflate(&stream, Z_FINISH);
            inflateEnd(&stream);
            inflateEnd(&stream);  // the listing ends the stream twice
            delete[] in;
            return createMemoryReadFile(out, static_cast<long>(outSize), entry.zipFileName.c_str(), true);
        }
        glitch::os::Printer::log("file has unsupported compression method.", entry.simpleFileName.c_str(),
                                 glitch::os::ELL_ERROR);
        return nullptr;
    }
    readFile->seek(entry.fileDataPosition, false);
    if (unk_10 & 1) return new CLimitReadFile(readFile, entry.header.UncompressedSize, entry.simpleFileName.c_str(), entry.simpleFileName.c_str());
    return new CLimitReadFile(readFile, entry.header.UncompressedSize, entry.simpleFileName.c_str());
}

// 0x578624 _ZN6glitch2io10CZipReader8openFileEPKc
IReadFile* CZipReader::openFile(const char* name) {
    const int index = findFile(name);
    if (index == -1) return nullptr;
    return openFile(index);
}

// 0x576d2c _ZN6glitch2io10CZipReader7isValidEPNS0_9IReadFileE
bool CZipReader::isValid(IReadFile* file) {
    const long position = file->getPos();
    file->seek(0, false);
    std::uint32_t signature = 0;
    file->read(&signature, 4);
    file->seek(position, false);
    return signature == 0x04034b50u;
}

// 0x576ef4 _ZN6glitch2io10CZipReader7isValidEPKc
// The opened file goes to isValid(IReadFile*) and is dropped. The original has no null test, so a missing file reads
// through a null pointer there (a crash); this port gives false instead.
bool CZipReader::isValid(const char* fileName) {
    IReadFile* file = createReadFile(fileName);
    if (!file) return false;
    const bool valid = isValid(file);
    file->drop();
    return valid;
}

// 0x577b50 _ZN6glitch2io10CZipReader22deletePathFromFilenameERSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
// Scans back from the end; the first '/' or '\\' found decides the cut. A separator at index 0 is not
// a cut (the name is kept), and with none the name is kept too.
void CZipReader::deletePathFromFilename(core::stringc& fileName) {
    // Scan from the last character back; the first separator found decides the cut.
    for (std::size_t i = fileName.size(); i-- > 0;) {
        if (fileName[i] == '/' || fileName[i] == '\\') {
            if (i != 0) fileName = fileName.substr(i + 1);
            return;
        }
    }
}

// 0x5775a4 / 0x5777ac / 0x5783c4: the inlined comparator, as for SPakFileEntry (signed chars, then
// lengths). See the declaration in zip_reader.hpp.
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

bool operator<(const SZipFileEntry& a, const SZipFileEntry& b) { return signedCharNameLess(a.simpleFileName, b.simpleFileName); }

// 0x578520 _ZN6glitch2io10CZipReader8findFileEPKc
// The key's name (+0x18) is the argument: lower-cased with ignoreCase, then cut to its base name with
// ignorePaths, in that order as the pseudocode does. A null name is treated as empty (the original would
// call strlen on it). The search is glitch::core::binary_search (lower_bound, then an equality test).
int CZipReader::findFile(const char* name) {
    SZipFileEntry key;
    key.simpleFileName = name != nullptr ? name : "";
    if (ignoreCase) {
        for (char& c : key.simpleFileName) {
            if (c >= 'A' && c <= 'Z') c = static_cast<char>(c + ' ');
        }
    }
    if (ignorePaths) deletePathFromFilename(key.simpleFileName);
    return glitch::core::binary_search(entries, key);
}

}  // namespace glitch::io
