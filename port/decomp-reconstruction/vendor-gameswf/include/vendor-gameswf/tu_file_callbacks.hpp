// tu_file callbacks of the DH2 build for a memory-buffer file and a buffered file (gameswf namespace).
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-5.cpp (memory seek and tell, buffered_write and
// buffered_seek) and vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-6.cpp (buffered_read and the other buffered
// callbacks, mem_read_func, mem_write_func, mem_close_func and the FILE* callbacks). The memory and FILE* callbacks are
// internal-linkage in the binary (`L` in their mangled names), so they are static in the .cpp and not declared here.
//
// Offsets are the 32-bit binary's. The tu_file layout in the binary has one more 4-byte field before the read
// callback than base/tu_file.h, so the callbacks are reached through tu_file's own methods here.

#ifndef VENDOR_GAMESWF_TU_FILE_CALLBACKS_HPP
#define VENDOR_GAMESWF_TU_FILE_CALLBACKS_HPP

#include <cstddef>
#include <cstdint>

#include "base/membuf.h"

// Declared by base/tu_file.h (global namespace).
class tu_file;

namespace gameswf {

// The appdata of a memory-buffer tu_file. Upstream has it as filebuf in base/tu_file.cpp, the same layout.
// The binary reads the size at +0x00 (membuf::m_size) and the position at +0x10.
struct memory_filebuf {
    membuf m_;            // +0x00: the data; size() is the file size
    int m_position;       // +0x10: the read or write position
    bool m_read_only;     // +0x14
};

// Read window size of a buffered tu_file (buffered_read asks the underlying file for this many bytes).
inline constexpr int kBufferedWindowSize = 4096;

// The appdata of a buffered tu_file (binary size 0x1010, allocated by get_buffered_file). The underlying tu_file is
// at +0x00, the read window at +0x04. The three words after the window are the window state:
//   m_base_pos  file position where the window was filled (tell before the read)
//   m_unread    unread bytes left in the window (buffered_read counts it down)
//   m_offset    bytes already taken from the window
// The valid window bytes are m_offset + m_unread, and buffered_tell is m_base_pos + m_offset.
struct buffered_file {
    ::tu_file* m_file;                             // +0x00: the underlying file; its callbacks are used
    std::uint8_t m_window[kBufferedWindowSize];    // +0x04: read window, filled by buffered_read
    int m_base_pos;                                // +0x1004: file position the window starts at (set from tell)
    std::intptr_t m_unread;                        // +0x1008: unread bytes left in m_window (see above)
    int m_offset;                                  // +0x100c: bytes taken from m_window; the seek path moves it
};

// 0x7b6c8c gameswf::buffered_write(void const*, int, void*). Returns 0 and writes nothing.
int buffered_write(const void* src, int bytes, void* appdata);

// 0x7b6c94 gameswf::buffered_seek(int, void*). The seek callback of a buffered_file (appdata).
int buffered_seek(int pos, void* appdata);

// The rest of the buffered tu_file callbacks. Bodies: vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-6.cpp.
// get_buffered_file wraps an underlying tu_file in a new buffered tu_file (returned, allocated with operator new).
::tu_file* get_buffered_file(::tu_file* underlying);  // 0x7b6e34 gameswf::get_buffered_file(gameswf::tu_file*)
int buffered_read(void* dst, int bytes, void* appdata);  // 0x7b6f20 gameswf::buffered_read(void*, int, void*)
int buffered_tell(const void* appdata);               // 0x7b6de8 gameswf::buffered_tell(void const*)
bool buffered_get_eof(void* appdata);                 // 0x7b6e00 gameswf::buffered_get_eof(void*)
int buffered_seek_to_end(void* appdata);              // 0x7b6d9c gameswf::buffered_seek_to_end(void*)
int buffered_close(void* appdata);                    // 0x7b6f04 gameswf::buffered_close(void*)

// The seek result of mem_seek_func, as arithmetic. Sets *position to the clamped position and returns 0 when
// pos is inside [0, size], or TU_FILE_SEEK_ERROR (4) otherwise. A negative pos gives position 0, a pos past the
// end gives position size.
inline int memory_seek_position(int pos, int size, int* position) {
    constexpr int kSeekError = 4;  // TU_FILE_SEEK_ERROR
    if (pos < 0) {
        *position = 0;
        return kSeekError;
    }
    if (pos > size) {
        *position = size;
        return kSeekError;
    }
    *position = pos;
    return 0;
}

// The in-window decision of buffered_seek, as arithmetic. The seek stays in the window when the window is set
// (cursor or offset not zero), pos is not before base_pos, and pos - base_pos is below 4096 (compared unsigned).
// On success *new_offset is pos - base_pos and *new_cursor is cursor - (new_offset - offset). Returns false when
// buffered_seek must seek the underlying file (and then sets base_pos to the new position, cursor and offset to 0).
inline bool buffered_seek_in_window(int pos, int base_pos, std::intptr_t cursor, int offset, int* new_offset,
                                    std::intptr_t* new_cursor) {
    if (cursor == 0 && offset == 0) {
        return false;
    }
    if (pos < base_pos) {
        return false;
    }
    const int delta = pos - base_pos;
    if (static_cast<unsigned int>(delta) >= 0x1000u) {
        return false;
    }
    *new_offset = delta;
    *new_cursor = cursor - (static_cast<std::intptr_t>(delta) - static_cast<std::intptr_t>(offset));
    return true;
}

// Bytes mem_read_func copies: min(bytes, size - position). The binary's v6 (it can be zero at the end of the data).
inline int mem_read_count(int size, int position, int bytes) {
    int count = size - position;
    if (bytes < count) {
        count = bytes;
    }
    return count;
}

// True when mem_write_func has to grow the data: position - size + bytes is positive.
inline bool mem_write_grows(int size, int position, int bytes) {
    return position - size + bytes > 0;
}

// After a grow (the data was resized to position + bytes), the write offset is the position, or the new size when
// the position is past it (the position is then moved to the size too). Returns the offset; *new_position is the
// position after the clamp.
inline int mem_write_offset_after_resize(int position, int new_size, int* new_position) {
    if (position > new_size) {
        *new_position = new_size;
        return new_size;
    }
    *new_position = position;
    return position;
}

// Bytes buffered_read takes from the window: min(unread window bytes, bytes still wanted). Both are counts, and the
// binary compares them as signed ints.
inline int buffered_read_count(int remaining, int bytes_left) {
    return remaining >= bytes_left ? bytes_left : remaining;
}

// buffered_tell: the window start plus the bytes already taken.
inline int buffered_tell_position(int base_pos, int offset) {
    return base_pos + offset;
}

// buffered_get_eof: the underlying file is at its end and the window has nothing unread left.
inline bool buffered_get_eof_state(bool underlying_eof, std::intptr_t remaining) {
    return underlying_eof && remaining == 0;
}

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_TU_FILE_CALLBACKS_HPP
