#include "glitch-core-io/io/file_list.hpp"

#include <cctype>

namespace glitch::io {

// 0x6b4188 _ZN6glitch2io9CFileList9FileEntryC1ERKS2_
CFileList::FileEntry::FileEntry(const FileEntry& other)
    : Name(other.Name), FullName(other.FullName), ID(other.ID), isDirectory(other.isDirectory) {}

// 0x6b404c _ZN6glitch2io9CFileList9FileEntryaSERKS2_
CFileList::FileEntry& CFileList::FileEntry::operator=(const FileEntry& other) {
    if (this != &other) {
        Name = other.Name;
        FullName = other.FullName;
    }
    ID = other.ID;
    isDirectory = other.isDirectory;
    return *this;
}

// 0x6b40a0 _ZN6glitch2io9CFileList15getFullFileNameEj
// Out of range returns null. Otherwise: the cached full name is path + "/" (only when the path is
// longer than 3 characters) + the entry name. The listing rebuilds that cache exactly when the
// entry's string room (entry+0x28 minus entry+0x2c) is smaller than the name's length, and returns
// the cached pointer when it is not. The port has no storage-capacity member, so it rebuilds on every
// call; the text is identical because the rebuild is deterministic in Path and Name, and the
// capacity test is only a cache-invalidation condition, not part of the produced string.
const char* CFileList::getFullFileName(std::uint32_t index) {
    if (index >= Files.size()) return nullptr;
    FileEntry& entry = Files[index];
    entry.FullName = Path;
    if (Path.size() > 3) entry.FullName += "/";
    entry.FullName += entry.Name;
    return entry.FullName.c_str();
}

// 0x6b3e78 _ZNK6glitch2io9CFileList12getFileCountEv
std::uint32_t CFileList::getFileCount() const {
    return static_cast<std::uint32_t>(Files.size());
}

// 0x6b3ea4 _ZNK6glitch2io9CFileList11getFileNameEj
const char* CFileList::getFileName(std::uint32_t index) const {
    if (index >= Files.size()) return nullptr;
    return Files[index].Name.c_str();
}

// 0x6b3ee4 _ZNK6glitch2io9CFileList11isDirectoryEj
bool CFileList::isDirectory(std::uint32_t index) const {
    if (index >= Files.size()) return false;
    return Files[index].isDirectory;
}

namespace {

// strcasecmp order (the libc call in the heapsink<FileEntry> listing at 0x6b41d8): both strings are
// read up to their terminator, each byte lower-cased as an unsigned char.
bool caseInsensitiveLess(const char* a, const char* b) {
    for (;; ++a, ++b) {
        const int ca = std::tolower(static_cast<unsigned char>(*a));
        const int cb = std::tolower(static_cast<unsigned char>(*b));
        if (ca != cb) return ca < cb;
        if (ca == 0) return false;
    }
}

}  // namespace

// 0x6b41d8: heapsink<FileEntry> swaps a child when the element is less. The flags decide first
// (a set flag is less when the other is clear), then the names by strcasecmp.
bool CFileList::FileEntry::operator<(const FileEntry& other) const {
    if (isDirectory != other.isDirectory) return isDirectory;
    return caseInsensitiveLess(Name.c_str(), other.Name.c_str());
}

}  // namespace glitch::io
