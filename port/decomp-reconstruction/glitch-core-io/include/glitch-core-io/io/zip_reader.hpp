// glitch::io::SZipFileEntry and glitch::io::CZipReader (the directory part). An entry is
// 0x6c bytes in the original. Its three strings sit at +0x00, +0x18 and +0x30, as in the
// pak entry; the offset of the data follows at +0x48 and the packed 30-byte local header at +0x4c.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/read_file.hpp"

namespace glitch::io {

// The 30-byte local file header as stored in the archive, packed (the entry holds it at +0x4c; scanLocalHeader reads it with one
// 30-byte read and the data-descriptor case rewrites CRC32 .. UncompressedSize with 12 more bytes at +0x5a). Offsets are the binary's:
// openFile (0x576f18) reads CompressionMethod as a halfword at +0x54, CompressedSize as two halfwords at +0x5e/+0x60 and
// UncompressedSize at +0x62/+0x64.
#pragma pack(push, 1)
struct SZIPFileHeader {
    std::uint32_t Sig;                // +0x4c (0x04034b50)
    std::uint16_t VersionToExtract;   // +0x50
    std::uint16_t GeneralBitFlag;     // +0x52 (bit 3: sizes follow in a data descriptor)
    std::int16_t CompressionMethod;   // +0x54 (0 stored, 8 deflate)
    std::uint16_t LastModFileTime;    // +0x56
    std::uint16_t LastModFileDate;    // +0x58
    std::uint32_t CRC32;              // +0x5a
    std::uint32_t CompressedSize;     // +0x5e
    std::uint32_t UncompressedSize;   // +0x62
    std::uint16_t FilenameLength;     // +0x66
    std::uint16_t ExtraFieldLength;   // +0x68
};
#pragma pack(pop)
static_assert(sizeof(SZIPFileHeader) == 0x1e, "the packed local file header is 30 bytes");

struct SZipFileEntry {
    SZipFileEntry() = default;                              // 0x577308 (C1)
    SZipFileEntry(const SZipFileEntry& other);              // 0x576e78 (C1, copy)
    SZipFileEntry& operator=(const SZipFileEntry& other);   // 0x577284
    // 0x5773e4 (D1): compiler generated; the strings release their buffers.
    ~SZipFileEntry() = default;

    core::stringc zipFileName;     // +0x00: the raw name from the local header (lower-cased with ignoreCase); openFile names a deflated entry's memory file after it
    core::stringc simpleFileName;  // +0x18: the file name (base name with ignorePaths, else the raw name); the key of the order and of findFile
    core::stringc path;            // +0x30: the directory part, up to and including the last '/'
    std::int32_t fileDataPosition = 0;  // +0x48: offset of the file data (getPos after the local header and its extra field)
    SZIPFileHeader header{};     // +0x4c .. +0x6a
    // (+0x6a .. +0x6c is tail padding: sizeof(SZipFileEntry) is 0x6c in the binary.)
};

// Order of entries for heapsink (0x5775a4), heapsort (0x5777ac) and binary_search (0x5783c4): the
// name (+0x18) compared byte by byte as signed chars (LDRSB), then by length, as for SPakFileEntry.
bool operator<(const SZipFileEntry& a, const SZipFileEntry& b);

class CZipReader : public glitch::IReferenceCounted {
public:
    CZipReader() = default;  // used by the tests; the original always has a file or a name
    // 0x577fa4 (C1), 0x578050 (C2): reads the directory from an open file (referenced), then sorts
    // the entries by name with glitch::core::heapsort, as the original does.
    CZipReader(IReadFile* file, bool ignoreCase, bool ignorePaths);
    // 0x57826c (C1), 0x578318 (C2): opens the file by name, then as above.
    CZipReader(const char* fileName, bool ignoreCase, bool ignorePaths);
    ~CZipReader() override;  // 0x577488 (D1), 0x5774ec (D2): drops the file

    int getFileCount();                                     // 0x576cf0: entries / 0x6c
    // 0x576f18: PARTIAL. Stored entries (method 0) are a limit read file over the archive (the
    // five-argument form when bit 0 of unk_10 is set). Deflate entries (method 8) need zlib, which
    // is not vendored in this tree, so they give null here.
    IReadFile* openFile(int index);
    // 0x578624 (vtable +0x0c): findFile, then openFile(index); null when the name is not in the archive.
    virtual IReadFile* openFile(const char* name);
    // 0x578520: the key's name is the argument, lower-cased when ignoreCase is set and with its path
    // removed when ignorePaths is set; the search is the shared binary search over the entries.
    int findFile(const char* name);
    const SZipFileEntry* getFileInfo(int index) const;      // 0x576d1c: no bounds check, as the original

    // 0x576d2c: true when the file starts with the local file header signature 0x04034b50.
    // The position is restored afterwards.
    static bool isValid(IReadFile* file);
    // 0x576ef4: opens the file by name and tests it. PARTIAL: a missing file gives false here
    // (the original would test a null file).
    static bool isValid(const char* fileName);

    // 0x577b50: keeps the text after the last '/' or '\\' (not at index 0); the string is NUL
    // terminated, as the pseudocode copies up to strlen.
    void deletePathFromFilename(core::stringc& fileName);

    // 0x577bc8: splits the raw name (path, +0x00) into the directory part (extra, up to and
    // including the last '/') and the base name (name). A name with no '/', or whose only '/' is
    // the first character, keeps the whole name and an empty directory. ignoreCase lower-cases the raw
    // name first. With ignorePaths the name is the base name; without it the raw name is kept.
    void extractFilename(SZipFileEntry& entry);

    // 0x577db4: reads the next local header (30 bytes, name, extra field) and records the entry
    // with its data offset. Returns false at the end of the local headers. The 12 bytes read when
    // the data-descriptor flag (bit 3) is set overwrite the crc and sizes, as the pseudocode does.
    bool scanLocalHeader();

    // +0x08: the archive file (referenced by the reader, released in the destructor)
    IReadFile* readFile = nullptr;
    // +0x0c: ignoreCase, lower-cases names; +0x0d: ignorePaths, keeps only the base name (see extractFilename)
    bool ignoreCase = false;
    bool ignorePaths = false;
    // +0x10: bit 0 selects the five-argument CLimitReadFile form in openFile. The constructors store
    // 0 and no code in this class sets it; its writer is not recovered.
    std::int32_t unk_10 = 0;
    // +0x14 .. +0x1c: entry vector
    core::svector<SZipFileEntry> entries;
};

}  // namespace glitch::io
