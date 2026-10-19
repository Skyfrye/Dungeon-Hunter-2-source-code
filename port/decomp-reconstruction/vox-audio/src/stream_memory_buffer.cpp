#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/stream.hpp"

#include <cstring>
#include <new>

namespace vox {

// ---------------------------------------------------------------- StreamMemoryBuffer

// 0x88912c _ZN3vox18StreamMemoryBufferC1EPNS_24StreamMemoryBufferParamsE
// 0x889204 _ZN3vox18StreamMemoryBufferC2EPNS_24StreamMemoryBufferParamsE
// Owns defaults to true. With params: size is copied; owns is the +0x9 byte
// when the +0x8 explicit flag is clear. The data pointer is borrowed when the
// flag is clear or the byte at +0x9 is set. Otherwise size bytes are copied
// into a VoxAlloc block, and size is set to 0 only when that allocation fails.
StreamMemoryBuffer::StreamMemoryBuffer(const StreamMemoryBufferParams* params) {
    if (params == nullptr) {
        return;
    }
    size_ = params->size;
    owns_ = params->explicit_owns ? true : params->owns;
    if (!params->explicit_owns || params->owns) {
        data_ = const_cast<std::uint8_t*>(params->data);
    } else if (params->size > 0) {
        data_ = static_cast<std::uint8_t*>(VoxAlloc(static_cast<std::size_t>(params->size)));
        if (data_ != nullptr) {
            std::memcpy(data_, params->data, static_cast<std::size_t>(size_));
        } else {
            size_ = 0;
        }
    }
}

// 0x889024 _ZN3vox18StreamMemoryBufferD1Ev
// 0x88908c _ZN3vox18StreamMemoryBufferD2Ev
// 0x889070 _ZN3vox18StreamMemoryBufferD0Ev (deleting variant)
// Frees the data block only when this buffer owns it.
StreamMemoryBuffer::~StreamMemoryBuffer() {
    if (data_ != nullptr && owns_) {
        VoxFree(data_);
    }
}

// 0x888fc0 _ZN3vox18StreamMemoryBuffer7GetTypeEv
int StreamMemoryBuffer::GetType() const { return 0; }

// 0x8890d8 _ZN3vox18StreamMemoryBuffer15CreateNewCursorEv
// Returns null when there is no data. Otherwise allocates the cursor block
// (0xc bytes in the 32-bit original, sizeof here) and constructs it in place.
StreamMemoryBufferCursor::StreamMemoryBufferCursor(StreamMemoryBuffer* owner) : owner_(owner) {
    owner_stream_ = owner;  // +0x04 owner word, as StreamCursorInterface keeps it
}

StreamCursorInterface* StreamMemoryBuffer::CreateNewCursor() {
    if (data_ == nullptr) {
        return nullptr;
    }
    void* mem = VoxAlloc(sizeof(StreamMemoryBufferCursor), kVoxMemHintDefault);
    if (mem == nullptr) {
        return nullptr;
    }
    return new (mem) StreamMemoryBufferCursor(this);
}

// 0x888ff8 _ZN3vox18StreamMemoryBuffer13DestroyCursorEPNS_21StreamCursorInterfaceE
void StreamMemoryBuffer::DestroyCursor(StreamCursorInterface* cursor) {
    if (cursor != nullptr) {
        cursor->~StreamCursorInterface();
        VoxFree(cursor);
    }
}

// 0x8891dc _ZN3vox25StreamMemoryBufferFactoryEPv
// Allocates a buffer block (0x10 bytes in the 32-bit original, sizeof here)
// and constructs it from the params block passed in.
void* StreamMemoryBufferFactory(void* params) {
    void* mem = VoxAlloc(sizeof(StreamMemoryBuffer), kVoxMemHintDefault);
    if (mem == nullptr) {
        return nullptr;
    }
    return new (mem) StreamMemoryBuffer(static_cast<const StreamMemoryBufferParams*>(params));
}

// ---------------------------------------------------------------- StreamMemoryBufferCursor

// 0x8892b4 _ZN3vox24StreamMemoryBufferCursor11EndOfStreamEv
bool StreamMemoryBufferCursor::EndOfStream() {
    int size = owner_ != nullptr ? owner_->Size() : 0;
    return position_ == size;
}

// 0x8892f0 _ZN3vox24StreamMemoryBufferCursor4SeekEii
// whence 1 is relative to the position, 2 is measured from the end as
// size + ~offset (size - offset - 1), 0 is absolute, anything else keeps the
// position. The target must lie in [0, size] or the seek fails with -1.
int StreamMemoryBufferCursor::Seek(int offset, int whence) {
    std::uint32_t size = static_cast<std::uint32_t>(owner_ != nullptr ? owner_->Size() : 0);
    std::uint32_t target;
    if (whence == 1) {
        target = static_cast<std::uint32_t>(position_) + static_cast<std::uint32_t>(offset);
    } else if (whence == 2) {
        target = ~static_cast<std::uint32_t>(offset) + size;
    } else {
        target = whence == 0 ? static_cast<std::uint32_t>(offset) : static_cast<std::uint32_t>(position_);
    }
    int signed_target = static_cast<int>(target);
    if (signed_target >= 0 && signed_target <= static_cast<int>(size)) {
        position_ = signed_target;
        return 0;
    }
    return -1;
}

// 0x889394 _ZN3vox24StreamMemoryBufferCursor7ReadRefERPhi
// Returns a pointer into the owner's data and advances by min(size, remaining).
int StreamMemoryBufferCursor::ReadRef(std::uint8_t*& ref, int size) {
    if (owner_ == nullptr || owner_->Data() == nullptr || size <= 0) {
        return 0;
    }
    int remaining = owner_->Size() - position_;
    ref = const_cast<std::uint8_t*>(owner_->Data()) + position_;
    int n = size <= remaining ? size : remaining;
    position_ += n;
    return n;
}

// 0x889408 _ZN3vox24StreamMemoryBufferCursor4ReadEPhi
// Copies min(size, remaining) bytes, advances the position and returns the
// count (0 when dst, owner or owner data is null, or size <= 0).
int StreamMemoryBufferCursor::Read(std::uint8_t* dst, int size) {
    if (dst == nullptr || owner_ == nullptr || owner_->Data() == nullptr || size <= 0) {
        return 0;
    }
    int remaining = owner_->Size() - position_;
    int n = size <= remaining ? size : remaining;
    std::memcpy(dst, owner_->Data() + position_, static_cast<std::size_t>(n));
    position_ += n;
    return n;
}

}  // namespace vox
