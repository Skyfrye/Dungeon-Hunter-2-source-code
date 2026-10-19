// Zip archive reader: the local-header scan that fills the entry map, the name
// handling (case folding and directory stripping) and the member lookup. Only stored
// entries (method 0) are found, as in the original.
#include <algorithm>
#include <cstdint>
#include <string>
#include <vector>

#include "vox-audio/deps/vox_file_system.hpp"

namespace vox {

namespace {

constexpr std::uint32_t kLocalFileHeaderSignature = 0x04034b50;  // 67324752
constexpr std::uint32_t kDataDescriptorSignature = 0x08074b50;   // 134630737
constexpr std::size_t kLocalHeaderSize = 30;

// Local file header offsets (PKWARE APPNOTE 4.3.7).
constexpr std::size_t kHeaderFlags = 6;
constexpr std::size_t kHeaderMethod = 8;
constexpr std::size_t kHeaderCrc = 14;             // crc, compressed size, uncompressed size: 12 bytes
constexpr std::size_t kHeaderCompressedSize = 18;
constexpr std::size_t kHeaderUncompressedSize = 22;
constexpr std::size_t kHeaderNameLength = 26;
constexpr std::size_t kHeaderExtraLength = 28;
constexpr std::uint16_t kFlagDataDescriptor = 0x08;  // general purpose bit 3

std::uint16_t ReadLe16(const std::uint8_t* p) {
    return static_cast<std::uint16_t>(p[0] | (p[1] << 8));
}

std::uint32_t ReadLe32(const std::uint8_t* p) {
    return static_cast<std::uint32_t>(p[0]) | (static_cast<std::uint32_t>(p[1]) << 8) |
           (static_cast<std::uint32_t>(p[2]) << 16) | (static_cast<std::uint32_t>(p[3]) << 24);
}

char AsciiLower(char c) {
    return (c >= 'A' && c <= 'Z') ? static_cast<char>(c + 32) : c;
}

}  // namespace

// 0x895e80 and 0x895f5c _ZN3vox10CZipReaderC1EPKcbb / C2EPKcbb
CZipReader::CZipReader(const char* path, bool lowercase_names, bool strip_directories)
    : lowercase_names_(lowercase_names), strip_directories_(strip_directories) {
    FileSystemInterface* fs = FileSystemInterface::GetInstance();
    if (fs != nullptr) {
        file_ = fs->OpenFile(path, kVoxFileRead);
    }
    if (file_ != nullptr) {
        archive_path_ = path;
        while (scanLocalHeader()) {
        }
    }
}

// 0x894da8 and 0x894e60 _ZN3vox10CZipReaderD1Ev / D2Ev
CZipReader::~CZipReader() {
    if (file_ != nullptr) {
        FileSystemInterface* fs = FileSystemInterface::GetInstance();
        if (fs != nullptr) {
            fs->CloseFile(file_);
        }
    }
}

// 0x8948fc _ZN3vox10CZipReader12getFileCountEv
int CZipReader::getFileCount() const { return static_cast<int>(files_.size()); }

// 0x894efc _ZN3vox10CZipReader22deletePathFromFilenameERSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEE
// The listing scans backwards from the string end (the word at +0x10) toward its start (+0x14).
// The first-byte test reads the char at the end, the terminator, so it never matches. A
// separator at index 0 is found but not removed, so only a separator at index 1 or later
// splits the name.
void CZipReader::deletePathFromFilename(vox::VoxString& name) {
    const std::size_t slash = name.find_last_of("/\\");
    if (slash == vox::VoxString::npos || slash == 0) {
        return;
    }
    name.erase(0, slash + 1);
}

// 0x894f74 _ZN3vox10CZipReader15extractFilenameEPNS_13SZipFileEntryE
void CZipReader::extractFilename(SZipFileEntry& entry) {
    const std::uint16_t name_length = ReadLe16(entry.local_header_ + kHeaderNameLength);
    if (name_length == 0) {
        return;
    }
    if (lowercase_names_) {
        for (char& c : entry.path_) {
            c = AsciiLower(c);
        }
    }

    // The separator is looked for from the name length backwards. A separator at the
    // name length itself counts, and one at index 0 does not split the name.
    const vox::VoxString& path = entry.path_;
    const std::size_t index = name_length;
    const char at_index = index < path.size() ? path[index] : '\0';
    std::size_t slash = vox::VoxString::npos;
    if (at_index == '/') {
        slash = index;
    } else {
        const std::size_t top = std::min(index, path.size());
        for (std::size_t i = top; i-- > 0;) {
            if (path[i] == '/') {
                slash = i;
                break;
            }
        }
    }

    if (slash == vox::VoxString::npos || slash == 0) {
        entry.directory_.clear();
    } else {
        const std::size_t split = slash + 1;
        entry.directory_ = path.substr(0, std::min(split, path.size()));
        // The basename of the whole path, as the original copies it.
        entry.file_name_ = split < path.size() ? path.substr(split) : vox::VoxString();
    }
    if (slash == vox::VoxString::npos || slash == 0) {
        entry.file_name_ = path;
    }
    // Directories kept: the key is the full path. Directories stripped: the basename.
    if (!strip_directories_) {
        entry.file_name_ = entry.path_;
    }
}

// 0x89544c _ZN3vox10CZipReader11getFileInfoEPKcRiS3_: the key is the name after the
// optional directory strip (flag +0x21) and the optional ASCII fold (flag +0x20). Only
// stored members (method 0) are reported, with their data offset and uncompressed size.
int CZipReader::getFileInfo(const char* name, int& offset, int& size) {
    vox::VoxString key(name);
    if (strip_directories_) {
        deletePathFromFilename(key);
    }
    if (lowercase_names_) {
        for (char& c : key) {
            c = AsciiLower(c);
        }
    }
    const auto it = files_.find(key);
    if (it == files_.end()) {
        return 0;
    }
    const SZipFileEntry& entry = it->second;
    if (ReadLe16(entry.local_header_ + kHeaderMethod) != 0) {
        return 0;
    }
    offset = entry.data_offset_;
    size = static_cast<int>(ReadLe32(entry.local_header_ + kHeaderUncompressedSize));
    return 1;
}

// 0x895c64 _ZN3vox10CZipReader15scanLocalHeaderEv
bool CZipReader::scanLocalHeader() {
    SZipFileEntry entry;
    if (file_ == nullptr) {
        return false;
    }
    file_->Read(entry.local_header_, kLocalHeaderSize, 1);
    const std::uint32_t signature = ReadLe32(entry.local_header_);
    if (signature != kLocalFileHeaderSignature && signature != kDataDescriptorSignature) {
        return false;
    }

    const std::uint16_t name_length = ReadLe16(entry.local_header_ + kHeaderNameLength);
    const std::uint16_t extra_length = ReadLe16(entry.local_header_ + kHeaderExtraLength);
    const bool has_data_descriptor =
        (ReadLe16(entry.local_header_ + kHeaderFlags) & kFlagDataDescriptor) != 0;

    std::vector<char> name_buffer(static_cast<std::size_t>(name_length) + 1, '\0');
    file_->Read(name_buffer.data(), name_length, 1);
    // The name is taken up to its first NUL, as the original does with strlen.
    entry.path_.assign(name_buffer.data());
    extractFilename(entry);

    if (extra_length != 0) {
        file_->Seek(extra_length, 1);
    }
    if (has_data_descriptor) {
        // The descriptor's crc and sizes replace the header's copies.
        file_->Read(entry.local_header_ + kHeaderCrc, 12, 1);
    }

    entry.data_offset_ = file_->Tell();
    const int compressed_size = static_cast<int>(ReadLe32(entry.local_header_ + kHeaderCompressedSize));
    file_->Seek(compressed_size, 1);

    files_[entry.file_name_] = entry;
    return true;
}

}  // namespace vox
