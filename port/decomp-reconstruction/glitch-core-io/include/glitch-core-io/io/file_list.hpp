// glitch::io::CFileList: a directory listing. Each entry keeps its name, its full name,
// an id and whether it is a directory. Sorting and getFullFileName are not reconstructed.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io {

// _ZTVN6glitch2io9CFileListE: an IFileList (getFileCount, getFileName, getFullFileName, isDirectory).
class CFileList : public IFileList {
public:
    struct FileEntry {
        FileEntry() = default;
        FileEntry(const FileEntry& other);                 // 0x6b4188
        FileEntry& operator=(const FileEntry& other);      // 0x6b404c
        ~FileEntry() = default;                            // 0x6b3f58

        // +0x00: entry name (glitch string; the begin pointer is read by getFileName)
        std::string Name;
        // +0x18: full name (glitch string, cached by getFullFileName in the original)
        std::string FullName;
        // +0x30
        std::uint32_t ID = 0;
        // +0x34
        bool isDirectory = false;

        // 0x6b41d8 (the order heapsink<FileEntry> uses, sort.hpp): a directory is less than a file;
        // otherwise the names compare as strcasecmp does.
        bool operator<(const FileEntry& other) const;
    };

    CFileList() = default;                             // 0x6b4418, 0x6b4480
    ~CFileList() override = default;                   // 0x6b3fe0, 0x6b4030

    // Vtable order: +0x0c getFileCount, +0x10 getFileName, +0x14 getFullFileName, +0x18 isDirectory.
    std::uint32_t getFileCount() const override;       // 0x6b3e78
    const char* getFileName(std::uint32_t index) const override;  // 0x6b3ea4; nullptr when out of range
    // 0x6b40a0: the full name of an entry (path, a slash when the path is longer than 3 characters,
    // then the name), or null when out of range. The original caches the result and only rebuilds it
    // when the entry's string room is smaller than the name's length; this rebuilds on every call,
    // which produces the same text (the capacity test is a cache-invalidation condition only).
    const char* getFullFileName(std::uint32_t index) override;
    bool isDirectory(std::uint32_t index) const override;  // 0x6b3ee4; false when out of range

    // +0x08: directory path (glitch string)
    std::string Path;
    // +0x20 .. +0x28: entry vector (begin, end, capacity)
    std::vector<FileEntry> Files;
};

}  // namespace glitch::io
