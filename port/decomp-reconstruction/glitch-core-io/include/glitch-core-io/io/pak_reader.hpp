// glitch::io::SPakFileEntry and glitch::io::CPakReader: the directory of a pak archive.
// Each entry holds three glitch strings and two integers. The strings sit 0x18 bytes
// apart in the original (+0x00, +0x18, +0x30); std::string stands in for them here, so
// the offsets below are the original ones, kept for reference only.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/read_file.hpp"

namespace glitch::io {

struct SPakFileEntry {
    SPakFileEntry();                                        // 0x56f494 (C1)
    SPakFileEntry(const SPakFileEntry& other);              // 0x56f500 (C1, copy)
    SPakFileEntry& operator=(const SPakFileEntry& other);   // 0x56f5e0 (copy assignment)
    // 0x56f650 (D1): compiler-generated; the three strings release their buffers.
    ~SPakFileEntry() = default;

    // Irrlicht 1.5.1 SPakFileEntry: pakFileName, simpleFileName, path, pos, length (the same three strings as SZipFileEntry).
    core::stringc pakFileName;     // +0x00: name as stored in the pak directory
    core::stringc simpleFileName;  // +0x18: file name the limit reader is opened with (openFile); the key of the order and of findFile
    core::stringc path;            // +0x30: the directory part, up to and including the last '/' (extractFilename)
    std::int32_t pos = 0;        // +0x48: position of the file data in the pak (seek target)
    std::int32_t length = 0;     // +0x4c: size of the file data (limit of the reader)
};

// 0x56fa04 / 0x56fc0c / 0x57015c use operator< on entries. The inlined comparator reads the name
// string (+0x18: its end and begin pointers at +0x28 and +0x2c) and compares the bytes as signed
// chars, then the lengths. The name is the field findFile keys on.
bool operator<(const SPakFileEntry& a, const SPakFileEntry& b);

class CPakReader : public glitch::IReferenceCounted {
public:
    // The default constructor gives an empty directory (used by the tests).
    CPakReader() = default;
    // 0x57002c (C1), 0x5700c4 (C2): takes a reference to the file, scans its directory once
    // (scanLocalHeader) and sorts the entries by name (heapsort, core/sort.hpp).
    CPakReader(IReadFile* file, bool ignoreCase, bool ignorePaths);
    ~CPakReader() override;  // 0x56f6f4 (D1), 0x56f73c (D2): drops the read file

    // 0x56f784: seeks the archive file to the entry's pos and returns a limit reader over the
    // entry's length, named after the entry.
    IReadFile* openFile(int index);
    // 0x5703b8 (vtable +0x0c): the reader for the named entry; null when there is no such entry.
    virtual IReadFile* openFile(const char* name);
    // 0x5702b4: index of the entry whose name matches. The key's name is lower-cased when ignoreCase
    // is set, then cut to its base name (deletePathFromFilename) when ignorePaths is set, or -1.
    // A binary search over the sorted entries.
    int findFile(const char* name);
    // 0x56fcec: lower-cases the name when ignoreCase is set, copies it into nameBuffer, then finds the separator in the
    // fixed window of that buffer (index 56 first, then 55 down to 0). The text before and including the '/' goes to
    // path; simpleFileName gets the file name, or the whole name when ignorePaths is clear.
    void extractFilename(SPakFileEntry* entry);
    // 0x56fe44: reads the 12-byte header (see the members below), then one 64-byte record per
    // entry: a 56-byte name, a 32-bit offset and a 32-bit size. Returns false when the signature
    // does not match, in which case no entry is read.
    bool scanLocalHeader();

    CPakReader(const CPakReader&) = delete;
    CPakReader& operator=(const CPakReader&) = delete;

    int getFileCount();                           // 0x56f43c: (end - begin) / 0x50
    const SPakFileEntry* getFileInfo(int index) const;  // 0x56f464: begin + index * 0x50

    // 0x56f568: keeps the text after the last '/' or '\\' in name. A separator at index 0
    // or no separator at all leaves name unchanged. The original first tests the byte at the
    // end pointer; for std::string that byte is the terminator, so the test never succeeds and the
    // scan starts at the last character.
    void deletePathFromFilename(core::stringc& name);

    // +0x08: the archive's read file (reference counted; released in the destructor).
    glitch::io::IReadFile* readFile = nullptr;
    // +0x0c .. +0x18: the 12-byte header read by scanLocalHeader. The first four bytes are the
    // signature (the original tests byte 0 for 'P' and byte 1 for 'A'); the directory offset is
    // at +0x10 and the directory size at +0x14, both 32-bit little-endian.
    std::uint8_t header[4] = {};        // +0x0c
    std::uint32_t directoryOffset = 0;  // +0x10
    std::uint32_t directorySize = 0;    // +0x14
    // +0x18 .. +0x20: entry vector (begin, end, capacity).
    core::svector<SPakFileEntry> entries;
    // +0x24, +0x25: flags passed to the constructor (their uses are not recovered).
    bool ignoreCase = false;  // +0x24
    bool ignorePaths = false;  // +0x25
    // The persistent name buffer of extractFilename (the string the original reuses for every entry). Its bytes past the
    // terminator are kept from one entry to the next, which is where a stale separator comes from. Zero-filled at first.
    std::vector<char> nameBuffer;
};

}  // namespace glitch::io
