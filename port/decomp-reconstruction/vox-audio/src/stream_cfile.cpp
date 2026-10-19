#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/stream.hpp"

#include <cstring>
#include <new>

namespace vox {

// ---------------------------------------------------------------- StreamCFile

// 0x888c34 _ZN3vox11StreamCFileC2EPKc and 0x888f18 _ZN3vox11StreamCFileC1EPKc
// The original copies the path into its own string; std::string does that here.
// The listing ends with Init() when the path argument is non-null (0x888c68 BL Init after the string assign), which reads the
// file size; without it size_ stays 0 and CreateNewCursor returns null, so no file source ever loads.
StreamCFile::StreamCFile(const char* path) : path_(path != nullptr ? path : "") {
    if (path != nullptr) {
        Init();
    }
}

// 0x8887e4 _ZN3vox11StreamCFileD1Ev, 0x888d64 D0 (deleting).
// The string storage is owned by std::string; nothing to free explicitly.
StreamCFile::~StreamCFile() = default;

// 0x888718 _ZN3vox11StreamCFile7GetTypeEv
int StreamCFile::GetType() const { return 1; }

// 0x888a60 _ZN3vox11StreamCFile4InitEv
// The path string is the STLport layout at +0x08: +0x18 is _M_finish and +0x1c is the
// data start, which is the C string. The asm compares the two (empty means no open) and
// passes the data start to OpenFile(name, 6) on fs = GetInstance(). Then Seek(0, 2),
// size = Tell(), and CloseFile through fs (vtable +0x0c). The port's c_str() is the
// data start.
void StreamCFile::Init() {
    size_ = 0;
    fs_ = FileSystemInterface::GetInstance();
    if (path_.empty() || fs_ == nullptr) {
        return;
    }
    FileInterface* file = fs_->OpenFile(path_.c_str(), kVoxFileRead);
    if (file == nullptr) {
        return;
    }
    file->Seek(0, 2);
    size_ = file->Tell();
    fs_->CloseFile(file);
}

// 0x888aec _ZN3vox11StreamCFile15CreateNewCursorEv
// Returns null when size <= 0. Otherwise allocates and constructs a cursor
// (0x801c bytes in the original, sizeof here) and calls its Init().
StreamCursorInterface* StreamCFile::CreateNewCursor() {
    if (size_ <= 0) {
        return nullptr;
    }
    void* mem = VoxAlloc(sizeof(StreamCFileCursor), kVoxMemHintDefault);
    if (mem == nullptr) {
        return nullptr;
    }
    auto* cursor = new (mem) StreamCFileCursor(this);
    cursor->Init();
    return cursor;
}

// 0x888830 _ZN3vox11StreamCFile13DestroyCursorEPNS_21StreamCursorInterfaceE
void StreamCFile::DestroyCursor(StreamCursorInterface* cursor) {
    if (cursor != nullptr) {
        cursor->~StreamCursorInterface();
        VoxFree(cursor);
    }
}

// 0x888f98 _ZN3vox18StreamCFileFactoryEPv
// Allocates a StreamCFile (0x24 bytes in the original, sizeof here) and
// constructs it from the path argument.
void* StreamCFileFactory(void* path) {
    void* mem = VoxAlloc(sizeof(StreamCFile), kVoxMemHintDefault);
    if (mem == nullptr) {
        return nullptr;
    }
    return new (mem) StreamCFile(static_cast<const char*>(path));
}

// ---------------------------------------------------------------- StreamCFileCursor

// 0x888a2c _ZN3vox17StreamCFileCursorD1Ev and 0x888cb4 D0 (deleting).
StreamCFileCursor::~StreamCFileCursor() { Shutdown(); }

StreamCFileCursor::StreamCFileCursor(StreamCFile* owner) : owner_(owner) {
    owner_stream_ = owner;  // +0x04 owner word, as StreamCursorInterface keeps it
}

// 0x888728 _ZN3vox17StreamCFileCursor4InitEv
// The asm opens when the owner is set, no handle is held yet, and the owner's data-start word
// (+0x1c) is non-null. A string's data pointer is never null, so the port always opens here,
// with the same empty-string behaviour as the original (OpenFile on "" with mode 6). The port
// also returns when owner_->fs_ is null; the original would call through a null pointer.
void StreamCFileCursor::Init() {
    if (owner_ == nullptr || file_ != nullptr) {
        return;
    }
    if (owner_->fs_ == nullptr) {
        return;
    }
    file_ = owner_->fs_->OpenFile(owner_->path_.c_str(), kVoxFileRead);
}

// 0x8889c0 _ZN3vox17StreamCFileCursor8ShutdownEv
// Closes the handle through the owner's file system, or through
// GetInstance() when there is no owner.
void StreamCFileCursor::Shutdown() {
    if (file_ == nullptr) {
        return;
    }
    FileSystemInterface* fs = owner_ != nullptr ? owner_->fs_ : FileSystemInterface::GetInstance();
    if (fs != nullptr) {
        fs->CloseFile(file_);
    }
}

// 0x888778 _ZN3vox17StreamCFileCursor4TellEv
int StreamCFileCursor::Tell() {
    if (file_ == nullptr) {
        return -1;
    }
    if (position_ >= 0) {
        return position_;
    }
    position_ = file_->Tell();
    return position_;
}

// 0x888cf0 _ZN3vox17StreamCFileCursor11EndOfStreamEv
bool StreamCFileCursor::EndOfStream() {
    if (file_ == nullptr) {
        return true;
    }
    int pos = Tell();
    int last = (owner_ != nullptr ? owner_->Size() : -1) - 1;
    return last <= pos;
}

// 0x888db8 _ZN3vox17StreamCFileCursor4SeekEii
// whence 1: target = (position, or Tell() when unknown) + offset.
// whence 2: target = size + ~offset. whence 0: target = offset. Other values
// keep the position. position_ takes the target before validation; targets
// outside [0, size] set position_ to -1 and fail. A target inside the 32 KiB
// window only moves the window index. Otherwise the window is reset and the
// file is sought to the target with whence 0; on failure the base and
// position become -1.
int StreamCFileCursor::Seek(int offset, int whence) {
    if (file_ == nullptr) {
        return -1;
    }
    std::uint32_t target;
    if (whence == 1) {
        int base = position_ < 0 ? file_->Tell() : position_;
        target = static_cast<std::uint32_t>(base) + static_cast<std::uint32_t>(offset);
        position_ = static_cast<int>(target);
    } else if (whence == 2) {
        int size = owner_ != nullptr ? owner_->Size() : 0;
        target = ~static_cast<std::uint32_t>(offset) + static_cast<std::uint32_t>(size);
        position_ = static_cast<int>(target);
    } else if (whence == 0) {
        target = static_cast<std::uint32_t>(offset);
        position_ = static_cast<int>(target);
    } else {
        target = static_cast<std::uint32_t>(position_);
    }

    int signed_target = static_cast<int>(target);
    int size = owner_ != nullptr ? owner_->Size() : 0;
    if (signed_target >= 0 && signed_target <= size) {
        if (buffer_base_ <= signed_target && signed_target < buffer_base_ + buffer_fill_) {
            buffer_index_ = signed_target - buffer_base_;
            return 0;
        }
        buffer_fill_ = 0;
        buffer_index_ = 0;
        buffer_base_ = 0;
        int result = file_->Seek(position_, 0);
        if (result == 0) {
            buffer_base_ = position_;
        } else {
            buffer_base_ = -1;
            position_ = -1;
        }
        return result;
    }
    position_ = -1;
    return -1;
}

// 0x88885c _ZN3vox17StreamCFileCursor4ReadEPhi
// Copies from the 32 KiB window; when the window runs out it advances
// buffer_base_ by the fill, refills with Read(buffer, 1, 0x8000), and stops on
// a short refill. position_ is set to the position of the file (Tell() when
// unknown) and advanced by the total copied. Returns the total copied, or 0
// when the file is null, dst is null or size <= 0.
int StreamCFileCursor::Read(std::uint8_t* dst, int size) {
    if (file_ == nullptr || dst == nullptr || size <= 0) {
        return 0;
    }
    if (position_ < 0) {
        position_ = file_->Tell();
    }
    int total = 0;
    int avail = buffer_fill_ - buffer_index_;
    while (size > 0) {
        if (avail <= 0) {
            buffer_base_ += buffer_fill_;
            buffer_fill_ = file_->Read(buffer_, 1, kBufferSize);
            buffer_index_ = 0;
            avail = buffer_fill_;
            if (avail == 0) {
                break;
            }
            continue;
        }
        int n = size <= avail ? size : avail;
        std::memcpy(dst, buffer_ + buffer_index_, static_cast<std::size_t>(n));
        dst += n;
        buffer_index_ += n;
        avail -= n;
        size -= n;
        total += n;
    }
    position_ += total;
    return total;
}

}  // namespace vox
