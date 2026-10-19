// Batch v1-vendor-gameswf-gameswf-fddef6-6 (vendor-gameswf, owner gameswf, part 7 of 8), 20 functions.
//
// gameswf r1714 with Gameloft changes, as built into libDungeonHunter2.so (32-bit ARM). Per-function status and
// notes are in the vendor-gameswf ledger (ledger.csv, merged from ledger.d/).
//
//   0x7b6d9c..0x7b6f20  buffered_seek_to_end, buffered_tell, buffered_get_eof, get_buffered_file, buffered_close,
//                       buffered_read: external linkage. Declared in tu_file_callbacks.hpp, bodies here.
//   0x7b6ff4..0x7b7578  mem_read_func, mem_write_func, mem_close_func, and the seven std_* FILE callbacks: internal
//                       linkage in the binary (`L` in their mangled names), so static here.
//   0x7badb4            gameswf::swap<gameswf::as_value>: explicit specialization here.
//   0x7bb3e0            gameswf::clear_standard_fnames: body here. It needs s_fnames_string with external linkage
//                       (see the note at the definition).
//   0x7bbbfc            gameswf::call_method (tu_string form): body here.
//   0x7c0f7c            gameswf::sprite_instance_at_depth: body here.
//
// The memory and buffered callbacks use the binary's tu_file layout only through the tu_file methods (get_position,
// read_bytes, go_to_end, get_eof), never by offset. The memory callbacks read the membuf through its public size,
// data and resize; the buffered window is tu_file_callbacks.hpp's buffered_file.
//
// Compile scope: the bodies need base/tu_file.h, base/membuf.h, the allocator (gameswf_alloc.hpp) and as_value.hpp.
// They are not linked by check_tu.sh. The tests in tests/ cover the arithmetic helpers from tu_file_callbacks.hpp.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>

#include "base/container.h"          // ::array<T>, ::tu_stringi, ::tu_string (global, upstream)
#include "base/membuf.h"             // membuf
#include "base/tu_file.h"            // ::tu_file, TU_FILE_SEEK_ERROR, TU_FILE_CLOSE_ERROR
#include "core-platform/memory.hpp"  // operator new(size, swf::MemHint)
#include "vendor-gameswf/as_environment.hpp"  // gameswf::as_environment (DH2 layout), used by call_method
#include "vendor-gameswf/as_value.hpp"        // gameswf::as_value
#include "vendor-gameswf/gameswf_alloc.hpp"   // gameswf::free_internal(void*, unsigned int)
#include "vendor-gameswf/tu_file_callbacks.hpp"
#include "gameswf/gameswf_action.h"      // call_method with the debug label
#include "gameswf/gameswf_as_sprite.h"   // sprite_getptr, sprite_instance_at_depth
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_sprite.h"      // sprite_instance::m_display_list

namespace gameswf {

// ---------------------------------------------------------------------------------------------------------------------
// Buffered tu_file callbacks (external linkage in the binary).
// ---------------------------------------------------------------------------------------------------------------------

// 0x7b6d9c int gameswf::buffered_seek_to_end(void*)
// The underlying file is moved to its end (its seek_to_end callback; the result is not used). The window restarts at
// the new position: base = underlying tell, window remaining = 0, offset = 0.
int buffered_seek_to_end(void* appdata) {
    buffered_file* bf = static_cast<buffered_file*>(appdata);
    bf->m_file->go_to_end();
    bf->m_base_pos = bf->m_file->get_position();
    bf->m_unread = 0;
    bf->m_offset = 0;
    return 0;
}

// 0x7b6de8 int gameswf::buffered_tell(void const*)
// Does not ask the underlying file: the window start plus the bytes taken from the window.
int buffered_tell(const void* appdata) {
    const buffered_file* bf = static_cast<const buffered_file*>(appdata);
    return buffered_tell_position(bf->m_base_pos, bf->m_offset);
}

// 0x7b6e00 bool gameswf::buffered_get_eof(void*)
// The binary returns the underlying eof only when the window has nothing unread left (m_unread == 0). Its result is an
// int; the tu_file callback type is bool, and 0 or 1 is the same value.
bool buffered_get_eof(void* appdata) {
    buffered_file* bf = static_cast<buffered_file*>(appdata);
    return buffered_get_eof_state(bf->m_file->get_eof(), bf->m_unread);
}

// 0x7b6e34 gameswf::tu_file* gameswf::get_buffered_file(gameswf::tu_file* underlying)
// The binary takes one argument (r0). Allocates the buffered_file (0x1010 bytes in the binary; its window is not
// cleared), sets the underlying file and zeroes the three window words, then constructs a tu_file whose appdata is that
// buffered_file, with the eight buffered callbacks. The tu_file is allocated separately (0x28 bytes in the binary).
::tu_file* get_buffered_file(::tu_file* underlying) {
    void* window_mem = ::operator new(sizeof(buffered_file), swf::MEM_UNRECOVERED);
    buffered_file* bf = new (window_mem) buffered_file;
    bf->m_file = underlying;
    bf->m_base_pos = 0;
    bf->m_unread = 0;
    bf->m_offset = 0;

    void* file_mem = ::operator new(sizeof(::tu_file), swf::MEM_UNRECOVERED);
    return new (file_mem) ::tu_file(bf, buffered_read, buffered_write, buffered_seek, buffered_seek_to_end,
                                    buffered_tell, buffered_get_eof, buffered_close);
}

// 0x7b6f04 int gameswf::buffered_close(void*)
// Frees the buffered_file. The underlying tu_file is not closed here, as in the binary. The size argument of
// free_internal is 0 (the allocator ignores it).
int buffered_close(void* appdata) {
    if (appdata != nullptr) {
        free_internal(appdata, 0);
    }
    return 0;
}

// 0x7b6f20 int gameswf::buffered_read(void*, int, void*)
// Copies up to `bytes` bytes into dst through the 4096-byte window. When the window has unread bytes (m_unread != 0),
// they are taken from m_offset. Otherwise the window is refilled from the underlying file: base = underlying tell,
// the read asks for 4096 bytes, offset = 0, and a zero read ends the call with the bytes copied so far. The chunk is
// min(unread, wanted). Returns the total copied.
int buffered_read(void* dst, int bytes, void* appdata) {
    if (bytes <= 0) {
        return 0;
    }
    buffered_file* bf = static_cast<buffered_file*>(appdata);
    std::uint8_t* out = static_cast<std::uint8_t*>(dst);
    int total = 0;
    int left = bytes;                              // v4: bytes still wanted
    int remaining = static_cast<int>(bf->m_unread);  // v8: unread bytes in the window
    for (;;) {
        int cursor = 0;                            // v11: window index of the first byte taken
        if (remaining != 0) {
            cursor = bf->m_offset;
        } else {
            bf->m_base_pos = bf->m_file->get_position();
            remaining = bf->m_file->read_bytes(bf->m_window, kBufferedWindowSize);
            bf->m_unread = remaining;
            bf->m_offset = 0;
            if (remaining == 0) {
                return total;
            }
        }
        const int count = buffered_read_count(remaining, left);
        std::memcpy(out, bf->m_window + cursor, static_cast<std::size_t>(count));
        left -= count;
        remaining -= count;
        bf->m_unread = remaining;
        bf->m_offset += count;
        total += count;
        if (left <= 0) {
            break;
        }
        out += count;
    }
    return total;
}

// ---------------------------------------------------------------------------------------------------------------------
// Memory-buffer callbacks (internal linkage in the binary).
// ---------------------------------------------------------------------------------------------------------------------

// 0x7b6ff4 int gameswf::mem_read_func(void*, int, void*) [static]
// appdata is a memory_filebuf: membuf size at +0x00, membuf data at +0x08, position at +0x10. Copies
// min(bytes, size - position) bytes from data + position, advances the position by the count, returns the count.
[[maybe_unused]] static int mem_read_func(void* dst, int bytes, void* appdata) {
    memory_filebuf* fb = static_cast<memory_filebuf*>(appdata);
    const int position = fb->m_position;
    const int count = mem_read_count(fb->m_.size(), position, bytes);
    if (count != 0) {
        const std::uint8_t* data = static_cast<const std::uint8_t*>(static_cast<const membuf&>(fb->m_).data());
        std::memcpy(dst, data + position, static_cast<std::size_t>(count));
    }
    fb->m_position = position + count;
    return count;
}

// 0x7b7168 int gameswf::mem_write_func(void const*, int, void*) [static]
// Writes at the position. When the write runs past the size, the buffer is resized to position + bytes (a read-only
// buffer returns 0 instead), and the offset is clamped as mem_write_offset_after_resize says. Advances the position by
// bytes, returns bytes. The copy happens even when the buffer is read-only and the write fits, as in the binary.
[[maybe_unused]] static int mem_write_func(const void* src, int bytes, void* appdata) {
    memory_filebuf* fb = static_cast<memory_filebuf*>(appdata);
    int offset = fb->m_position;
    if (mem_write_grows(fb->m_.size(), fb->m_position, bytes)) {
        if (fb->m_read_only) {
            return 0;
        }
        fb->m_.resize(fb->m_position + bytes);
        offset = mem_write_offset_after_resize(fb->m_position, fb->m_.size(), &fb->m_position);
    }
    void* data = const_cast<void*>(static_cast<const membuf&>(fb->m_).data());
    std::memcpy(static_cast<std::uint8_t*>(data) + offset, src, static_cast<std::size_t>(bytes));
    fb->m_position += bytes;
    return bytes;
}

// 0x7b7370 int gameswf::mem_close_func(void*) [static]
// Destroys the membuf (it is the first member, at +0x00) and frees the memory_filebuf.
[[maybe_unused]] static int mem_close_func(void* appdata) {
    if (appdata != nullptr) {
        static_cast<memory_filebuf*>(appdata)->m_.~membuf();
        free_internal(appdata, 0);
    }
    return 0;
}

// ---------------------------------------------------------------------------------------------------------------------
// FILE* callbacks (internal linkage in the binary). The binary's tu_file error codes are TU_FILE_SEEK_ERROR (4) and
// TU_FILE_CLOSE_ERROR (5).
// ---------------------------------------------------------------------------------------------------------------------

// 0x7b74e4 int gameswf::std_close_func(void*) [static]
[[maybe_unused]] static int std_close_func(void* appdata) {
    if (std::fclose(static_cast<FILE*>(appdata)) == -1) {
        return TU_FILE_CLOSE_ERROR;
    }
    return 0;
}

// 0x7b74fc bool gameswf::std_get_eof_func(void*) [static]
[[maybe_unused]] static bool std_get_eof_func(void* appdata) {
    return std::feof(static_cast<FILE*>(appdata)) != 0;
}

// 0x7b7510 int gameswf::std_tell_func(void const*) [static]
// The binary is a tail branch to ftell (decision 4: forwarded, not reimplemented).
[[maybe_unused]] static int std_tell_func(const void* appdata) {
    return static_cast<int>(std::ftell(static_cast<FILE*>(const_cast<void*>(appdata))));
}

// 0x7b7514 int gameswf::std_seek_to_end_func(void*) [static]
[[maybe_unused]] static int std_seek_to_end_func(void* appdata) {
    if (std::fseek(static_cast<FILE*>(appdata), 0, SEEK_END) == -1) {
        return TU_FILE_SEEK_ERROR;
    }
    return 0;
}

// 0x7b7534 int gameswf::std_seek_func(int, void*) [static]
// The binary clears the EOF and error bits of the FILE (the halfword _flags at +0x0c, mask 0x60, which is bionic's
// inlined clearerr), then fseeks from the start. clearerr clears the same two bits.
[[maybe_unused]] static int std_seek_func(int pos, void* appdata) {
    FILE* stream = static_cast<FILE*>(appdata);
    std::clearerr(stream);
    if (std::fseek(stream, pos, SEEK_SET) == -1) {
        return TU_FILE_SEEK_ERROR;
    }
    return 0;
}

// 0x7b7568 int gameswf::std_write_func(void const*, int, void*) [static]
[[maybe_unused]] static int std_write_func(const void* src, int bytes, void* appdata) {
    return static_cast<int>(std::fwrite(src, 1, static_cast<std::size_t>(bytes), static_cast<FILE*>(appdata)));
}

// 0x7b7578 int gameswf::std_read_func(void*, int, void*) [static]
[[maybe_unused]] static int std_read_func(void* dst, int bytes, void* appdata) {
    return static_cast<int>(std::fread(dst, 1, static_cast<std::size_t>(bytes), static_cast<FILE*>(appdata)));
}

// ---------------------------------------------------------------------------------------------------------------------
// swap, clear_standard_fnames
// ---------------------------------------------------------------------------------------------------------------------

// Primary template: the binary has only the as_value instance in this batch (no generic body is in the tree).
template <typename T>
void swap(T* a, T* b);

// 0x7badb4 void gameswf::swap<gameswf::as_value>(gameswf::as_value*, gameswf::as_value*)
// Three assignments through a temporary. The binary zeroes the temporary's first two bytes (the default as_value)
// and calls drop_refs on it at the end; the temporary's destructor does that drop here.
template <>
void swap<as_value>(as_value* a1, as_value* a2) {
    as_value temp;
    temp = *a1;
    *a1 = *a2;
    *a2 = temp;
}

// s_fnames_string is defined in src/v1-vendor-gameswf-pack17-c88d12-0.cpp, in an anonymous namespace there. The binary
// has one object with internal linkage (gameswf::s_fnames_string, `L`). Linking this body needs pack17 to define it with
// external linkage (the integrator's change); until then the reference is unresolved.
extern ::array<::tu_stringi> s_fnames_string;

// 0x7bb3e0 void gameswf::clear_standard_fnames()
// The binary calls resize(0) on s_fnames_string twice (the compiler folded the new size into the clone), then
// reserve(0). Kept as two calls.
void clear_standard_fnames() {
    s_fnames_string.resize(0);
    s_fnames_string.resize(0);
    s_fnames_string.reserve(0);
}

// ---------------------------------------------------------------------------------------------------------------------
// call_method and sprite_instance_at_depth.
// ---------------------------------------------------------------------------------------------------------------------


// 0x7bbbfc gameswf::tu_string gameswf::call_method(gameswf::as_environment*, gameswf::as_object*, char const*,
//          gameswf::as_value const*, int)
// The arguments are pushed last to first, the method is read with as_environment::get_variable(name, an empty dummy
// with-stack, null with-index), the call is the six-argument call_method with the debug label (0x7ba904; the label is the
// method name, the first-argument index is the stack top), the stack is released by the number of values the call
// consumed, and the result is converted with to_tu_string unless it is undefined. The dummy with-stack is emptied and
// released at the end. The v19 byte at [sp+0x30] of the binary is the dummy array's borrowed flag.
::tu_string call_method(as_environment* env, as_object* this_obj, const char* method_name, const as_value* arguments,
                        int argument_count) {
    const int starting_index = env->m_stack.size();
    for (int i = argument_count - 1; i >= 0; --i) {
        env->m_stack.push_back(arguments[i]);
    }

    array<with_stack_entry> dummy_with_stack;
    ::tu_string name(method_name);
    as_value method = env->get_variable(name, dummy_with_stack, 0);

    const int nargs = env->m_stack.size() - starting_index;
    as_value result;
    {
        as_value this_value;
        this_value.set_as_object(this_obj);
        result = call_method(method, env, this_value, nargs, env->m_stack.size() - 1, method_name);
    }
    env->m_stack.resize(env->m_stack.size() - nargs);

    ::tu_string out;
    if (!result.is_undefined()) {
        out = result.to_tu_string();
    }
    dummy_with_stack.resize(0);
    dummy_with_stack.reserve(0);
    return out;
}

// 0x7c0f7c void gameswf::sprite_instance_at_depth(gameswf::fn_call const&)
// With at least one argument and a sprite (sprite_getptr), the result is the character at depth
// (to_number(arg 0) + 0x4000, the binary's depth bias) in the sprite's display list at +0xa8. Otherwise the result is
// null. (The binary passes a second register to sprite_getptr that the one-argument function does not read.)
void sprite_instance_at_depth(const fn_call& fn) {
    if (fn.nargs > 0) {
        sprite_instance* sprite = sprite_getptr(fn);
        if (sprite != nullptr) {
            const int depth = static_cast<int>(fn.arg(0).to_number());
            character* ch = sprite->m_display_list.get_character_at_depth(depth + 0x4000);
            fn.result->set_as_object(ch);
            return;
        }
    }
    fn.result->set_as_object(nullptr);
}


}  // namespace gameswf
