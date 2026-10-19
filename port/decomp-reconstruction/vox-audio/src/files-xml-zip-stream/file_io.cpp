// File handles, file windows, the directory stack and the stdio file system.
// The forwarding slots are the globals the original keeps (m_IOFunc and off_A33EB0
// to off_A33EC0); FileSystemStdio's constructor installs the stdio functions.
#include <cstdio>
#include <cstring>
#include <string>

#include "vox-audio/deps/vox_file_system.hpp"
#include "vox-audio/vox/file_limited.hpp"
#include "vox-audio/vox/file_stdio.hpp"

namespace vox {

FileReadFn g_file_read = nullptr;
FileWriteFn g_file_write = nullptr;
FileSeekFn g_file_seek = nullptr;
FileTellFn g_file_tell = nullptr;
FileOpenFn g_file_open = nullptr;
FileCloseFn g_file_close = nullptr;

namespace {

// The stdio slots. They call the C library directly and keep its result; the same values
// come back from readStdIO, writeStdIO and tellStdIO. seekStdIO maps the whence values
// the same way.
int ReadSlot(void* dst, int size, int count, void* file) {
    return static_cast<int>(std::fread(dst, static_cast<std::size_t>(size),
                                       static_cast<std::size_t>(count),
                                       static_cast<std::FILE*>(file)));
}

int WriteSlot(const void* src, int size, int count, void* file) {
    return static_cast<int>(std::fwrite(src, static_cast<std::size_t>(size),
                                        static_cast<std::size_t>(count),
                                        static_cast<std::FILE*>(file)));
}

int SeekSlot(void* file, int offset, int whence) {
    int origin = SEEK_SET;
    if (whence == kVoxFileSeekEnd) {
        origin = SEEK_END;
    } else if (whence == kVoxFileSeekCurrent) {
        origin = SEEK_CUR;
    }
    return std::fseek(static_cast<std::FILE*>(file), offset, origin);
}

int TellSlot(void* file) {
    return static_cast<int>(std::ftell(static_cast<std::FILE*>(file)));
}

void* OpenSlot(const char* name, VoxFileAccessMode mode) { return openStdIO(name, mode); }

void CloseSlot(void* file) { closeStdIO(file); }

}  // namespace

// 0x8939fc _ZN3vox13FileInterface4ReadEPvii
int FileInterface::Read(void* dst, std::size_t size, std::size_t count) {
    if (dst == nullptr || file_handle_ == nullptr || g_file_read == nullptr) {
        return 0;
    }
    return g_file_read(dst, static_cast<int>(size), static_cast<int>(count), file_handle_);
}

// 0x893adc _ZN3vox13FileInterface5WriteEPKvii
int FileInterface::Write(const void* src, std::size_t size, std::size_t count) {
    if (src == nullptr || file_handle_ == nullptr || g_file_write == nullptr) {
        return 0;
    }
    return g_file_write(src, static_cast<int>(size), static_cast<int>(count), file_handle_);
}

// 0x893a54 _ZN3vox13FileInterface4SeekEiNS_17VoxFileSeekOriginE. The ARM listing loads the
// handle into r0 and keeps r1 (offset) and r2 (origin) for the slot call, so the slot gets
// (handle, offset, origin). The slot's owner is not identified (see NOTES.md).
int FileInterface::Seek(int offset, int whence) {
    if (file_handle_ != nullptr && g_file_seek != nullptr) {
        return g_file_seek(file_handle_, offset, whence);
    }
    return -1;
}

// 0x893a98 _ZN3vox13FileInterface4TellEv. The listing passes the handle (r0) to the slot.
int FileInterface::Tell() {
    if (file_handle_ != nullptr && g_file_tell != nullptr) {
        return g_file_tell(file_handle_);
    }
    return -1;
}

// 0x893b34 and 0x893b7c _ZN3vox11FileLimitedC1Ev / C2Ev
FileLimited::FileLimited() : FileInterface(nullptr) {
    flag_ = 1;
}

// 0x893d70 and 0x893dc8 _ZN3vox11FileLimitedC1EPvii / C2EPvii
FileLimited::FileLimited(void* file, int base, int limit)
    : FileInterface(file), base_(base), limit_(limit) {
    flag_ = 1;
    Seek(0, 0);
}

// 0x893bc4 _ZN3vox11FileLimited4ReadEPvii
int FileLimited::Read(void* dst, std::size_t size, std::size_t count) {
    if (g_file_read == nullptr) {
        return 0;
    }
    const std::int64_t unit = static_cast<std::int64_t>(size);
    const std::int64_t wanted = static_cast<std::int64_t>(count);
    int result = 0;
    if (static_cast<std::int64_t>(position_) + unit * wanted <= limit_) {
        result = g_file_read(dst, static_cast<int>(unit), static_cast<int>(wanted), file_handle_);
        position_ += static_cast<int>(unit * result);
    } else {
        // Only the part of the window that is left. A zero unit divides to zero.
        const std::int64_t fit =
            unit == 0 ? 0 : (static_cast<std::int64_t>(limit_) - position_) / unit;
        if (fit <= 0) {
            return 0;
        }
        result = g_file_read(dst, static_cast<int>(unit), static_cast<int>(fit), file_handle_);
        position_ += static_cast<int>(unit * result);
    }
    return result;
}

// 0x893c74 _ZN3vox11FileLimited4SeekEiNS_17VoxFileSeekOriginE
int FileLimited::Seek(int offset, int whence) {
    const std::int64_t off = offset;
    const std::int64_t limit = limit_;
    const std::int64_t base = base_;
    std::int64_t new_position = 0;  // v5: the window position after the seek
    std::int64_t file_position = 0;  // v6: the absolute position in the file

    switch (whence) {
        case kVoxFileSeekCurrent: {
            const std::int64_t pos = position_;
            new_position = pos + off;
            if (new_position > limit) {
                position_ = limit_;
                return -1;
            }
            if (new_position < 0) {
                position_ = -1;
                return -1;
            }
            file_position = pos + base + off;
            break;
        }
        case kVoxFileSeekEnd:
            if (-off > limit) {
                position_ = -1;
                return -1;
            }
            if (off > 0) {
                position_ = limit_;
                return -1;
            }
            new_position = off + limit;
            file_position = limit + base + off;
            break;
        case kVoxFileSeekBegin:
            if (limit < off) {
                position_ = limit_;
                return -1;
            }
            if (off < 0) {
                position_ = -1;
                return -1;
            }
            new_position = off;
            file_position = off + base;
            break;
        default:
            return -1;
    }

    if (g_file_seek == nullptr) {
        position_ = -1;
        return -1;
    }
    const int result = g_file_seek(file_handle_, static_cast<int>(file_position), kVoxFileSeekBegin);
    if (result == 0) {
        position_ = static_cast<int>(new_position);
    }
    return result;
}

// 0x89405c and 0x8940dc _ZN3vox19FileSystemInterfaceD1Ev / D2Ev
FileSystemInterface::~FileSystemInterface() {
    delete archive_;
    archive_ = nullptr;
}

// 0x894330 _ZN3vox19FileSystemInterface8OpenFileEPcNS_17VoxFileAccessModeE
FileInterface* FileSystemInterface::OpenFile(const char* name, VoxFileAccessMode mode) {
    if (g_file_open == nullptr) {
        return nullptr;
    }
    // The path is the current directory (the last pushed one) followed by the name.
    std::string path;
    if (!directories_.empty()) {
        path = directories_.back();
    }
    path.append(name);

    // With the archive preferred, a member of the archive wins: a window over the
    // archive file, starting at the member's data offset.
    if (archive_ != nullptr && use_archive_) {
        int member_offset = 0;
        int member_size = 0;
        if (archive_->getFileInfo(path.c_str(), member_offset, member_size) != 0) {
            void* archive_handle = g_file_open(archive_->ArchivePath().c_str(), mode);
            if (archive_handle != nullptr) {
                return new FileLimited(archive_handle, member_offset, member_size);
            }
        }
    }

    // Otherwise the file itself, opened as a whole.
    if (void* handle = g_file_open(path.c_str(), mode)) {
        return new FileInterface(handle);
    }

    // Last chance: the archive when it is not preferred.
    if (archive_ != nullptr && !use_archive_) {
        int member_offset = 0;
        int member_size = 0;
        if (archive_->getFileInfo(path.c_str(), member_offset, member_size) != 0) {
            void* archive_handle = g_file_open(archive_->ArchivePath().c_str(), mode);
            if (archive_handle != nullptr) {
                return new FileLimited(archive_handle, member_offset, member_size);
            }
        }
    }
    return nullptr;
}

// 0x893ff0 _ZN3vox19FileSystemInterface9CloseFileEPNS_13FileInterfaceE. Null gives -1. Otherwise
// the handle comes from the file's virtual GetFilePtr (vtable slot +0x18), and a nonzero handle is
// passed to the close function (off_A33EC0, g_file_close). Then the file is destroyed (vtable slot
// +0x00, the non-deleting destructor, then VoxFree in the original; the port allocates with new, so
// delete does both) and the result is 0. Callers ignore the result.
int FileSystemInterface::CloseFile(FileInterface* file) {
    if (file == nullptr) {
        return -1;
    }
    void* handle = file->GetFilePtr();
    if (handle != nullptr && g_file_close != nullptr) {
        g_file_close(handle);
    }
    delete file;
    return 0;
}

// 0x893e88 _ZN3vox19FileSystemInterface12GetDirectoryEPciS1_
int FileSystemInterface::GetDirectory(char* out, int size, const char* path) {
    if (out == nullptr || path == nullptr) {
        return -1;
    }
    const char* slash = std::strrchr(path, '/');
    if (slash == nullptr) {
        out[0] = '\0';
        return -1;
    }
    const int length = static_cast<int>(slash + 1 - path);
    if (length >= size) {
        return -1;
    }
    std::memcpy(out, path, static_cast<std::size_t>(length));
    out[length] = '\0';
    return 0;
}

// 0x8941ec _ZN3vox19FileSystemInterface13PushDirectoryEPc
int FileSystemInterface::PushDirectory(const char* path) {
    if (path == nullptr) {
        return -1;
    }
    directories_.push_back(path);
    return 0;
}

// 0x893f4c _ZN3vox19FileSystemInterface12PopDirectoryEv
int FileSystemInterface::PopDirectory() {
    if (!directories_.empty()) {
        directories_.pop_back();
    }
    return -1;
}

// 0x894290 _ZN3vox19FileSystemInterface10SetArchiveEPKcbbb
int FileSystemInterface::SetArchive(const char* path, bool lowercase_names,
                                    bool strip_directories, bool use_archive) {
    delete archive_;
    archive_ = new CZipReader(path, lowercase_names, strip_directories);
    use_archive_ = use_archive;
    if (archive_->IsOpen()) {
        return 0;
    }
    delete archive_;
    archive_ = nullptr;
    use_archive_ = false;
    return -1;
}

// 0x8945a4 _ZN3vox19FileSystemInterface11GetInstanceEv: see vox_file_system.cpp.

// 0x894140 _ZN3vox19FileSystemInterface15DestroyInstanceEv. The instance is the test
// stand-in that GetInstance returns; the original also clears its own pointer.
void FileSystemInterface::DestroyInstance() {
    delete GetInstance();
    SetFileSystemInstanceForTests(nullptr);
}

// 0x8945dc and 0x894684 _ZN3vox15FileSystemStdioC2Ev / C1Ev
FileSystemStdio::FileSystemStdio() {
    g_file_tell = TellSlot;
    g_file_open = OpenSlot;
    g_file_close = CloseSlot;
    g_file_read = ReadSlot;
    g_file_write = WriteSlot;
    g_file_seek = SeekSlot;
}

// 0x89472c, 0x894760 and 0x89477c: the destructor of the stdio file system is the base
// destructor (the stdio slots are process globals and stay installed).
FileSystemStdio::~FileSystemStdio() = default;

// 0x8947b0 _ZN3vox16VoxNewFileSystemEv
FileSystemInterface* VoxNewFileSystem() { return new FileSystemStdio(); }

}  // namespace vox
