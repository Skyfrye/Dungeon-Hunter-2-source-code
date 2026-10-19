// Stand-in for the reader struct the Musepack decoder (libmpcdec) reads through.
// The original stores five callbacks first (read, seek, tell, get_size, canseek, at +0x00..+0x10);
// the game installs its own wrappers in the cursor constructor (0x87018c). The stream cursor
// the wrappers forward to is the data pointer at +0x14.
#pragma once

#include <cstdint>

namespace vox {
class StreamCursorInterface;
}

struct mpc_reader_t;

// The game's reader wrappers (src/mpc_reader.cpp), installed as callbacks by the cursor.
int mpc_read(mpc_reader_t* reader, void* buffer, int size);
int mpc_seek(mpc_reader_t* reader, int offset);
int mpc_tell(mpc_reader_t* reader);
int mpc_getsize(mpc_reader_t* reader);
int mpc_canseek(mpc_reader_t* reader);

struct mpc_reader_t {
    int (*read)(mpc_reader_t*, void*, int) = nullptr;   // +0x00
    int (*seek)(mpc_reader_t*, int) = nullptr;          // +0x04
    int (*tell)(mpc_reader_t*) = nullptr;               // +0x08
    int (*get_size)(mpc_reader_t*) = nullptr;           // +0x0c
    int (*can_seek)(mpc_reader_t*) = nullptr;           // +0x10
    vox::StreamCursorInterface* data = nullptr;         // +0x14
};
