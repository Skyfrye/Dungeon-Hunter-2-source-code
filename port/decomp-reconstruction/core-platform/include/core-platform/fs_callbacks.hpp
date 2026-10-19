// gameswf file callbacks operating on a file handle with size and position.
#pragma once

// Handle layout (12 bytes in the original): buffer at +0x0, size at +0x4, position
// at +0x8. fs_read_func and fs_close_func read the buffer slot; the pointer width is
// the host's, so the members are not used for offset arithmetic.
struct FsFileHandle {
    unsigned char* data_;  // +0x0
    int size_;             // +0x4
    int pos_;              // +0x8
};

int fs_tell_func(const void* handle);                 // 0x42b11c
int fs_write_func(const void* data, int size, void* handle);  // 0x42b0c0
int fs_seek_to_end_func(void* handle);                // 0x42b0f8
bool fs_get_eof_func(void* handle);                   // 0x42b12c
int fs_seek_func(int pos, void* handle);              // 0x42b0c8

// 0x42b150 fs_read_func(void*, int, void*): copies up to n bytes from the handle's
// position, clamped to the bytes that remain.
int fs_read_func(void* dest, int n, void* handle);

// 0x42b1a4 fs_close_func(void*): frees the buffer and the handle.
int fs_close_func(void* handle);

// 0x42b260 fs_open_func(char const*, char const*). Partial: see src/fs_open.cpp.
void* fs_open_func(const char* name, const char* mode);
