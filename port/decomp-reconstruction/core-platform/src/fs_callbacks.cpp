#include "core-platform/fs_callbacks.hpp"

#include <cstdlib>
#include <cstring>

namespace {
const FsFileHandle* AsHandle(const void* p) { return static_cast<const FsFileHandle*>(p); }
FsFileHandle* AsHandle(void* p) { return static_cast<FsFileHandle*>(p); }
}  // namespace

// 0x42b11c fs_tell_func(void const*)
int fs_tell_func(const void* handle) {
    if (handle == nullptr) {
        return -1;
    }
    return AsHandle(handle)->pos_;
}

// 0x42b0c0 fs_write_func(void const*, int, void*): writes nothing, reports the size.
int fs_write_func(const void*, int size, void*) { return size; }

// 0x42b0f8 fs_seek_to_end_func(void*)
int fs_seek_to_end_func(void* handle) {
    if (handle == nullptr) {
        return 4;
    }
    FsFileHandle* h = AsHandle(handle);
    if (h->size_ >= 0) {
        h->pos_ = h->size_;
    }
    return 0;
}

// 0x42b12c fs_get_eof_func(void*)
bool fs_get_eof_func(void* handle) {
    if (handle == nullptr) {
        return true;
    }
    FsFileHandle* h = AsHandle(handle);
    return h->size_ <= h->pos_;
}

// 0x42b0c8 fs_seek_func(int, void*)
int fs_seek_func(int pos, void* handle) {
    if (handle == nullptr) {
        return 4;
    }
    FsFileHandle* h = AsHandle(handle);
    if (pos >= 0 && pos <= h->size_) {
        h->pos_ = pos;
    }
    return 0;
}

// 0x42b150 _Z12fs_read_funcPviS_
// Clamps to the bytes that remain (size <= n + pos -> size - pos), copies, advances the
// cursor when the new position lies in [0, size], and returns the copied count (r4).
// The original copies the (possibly negative) count unconditionally; a non-positive count
// is not copied here, and the returned value stays the clamped count.
int fs_read_func(void* dest, int n, void* handle) {
    if (handle == nullptr) {
        return 0;
    }
    FsFileHandle* h = AsHandle(handle);
    int count = n;
    if (h->size_ <= n + h->pos_) {
        count = h->size_ - h->pos_;
    }
    if (count > 0) {
        std::memcpy(dest, h->data_ + h->pos_, static_cast<std::size_t>(count));
    }
    const int next = count + h->pos_;
    if (next >= 0 && next <= h->size_) {
        h->pos_ = next;
    }
    return count;
}

// 0x42b1a4 _Z13fs_close_funcPv
int fs_close_func(void* handle) {
    if (handle == nullptr) {
        return 0;
    }
    FsFileHandle* h = AsHandle(handle);
    if (h->data_ != nullptr) {
        std::free(h->data_);
    }
    h->pos_ = 0;
    h->size_ = 0;
    std::free(handle);
    return 0;
}
