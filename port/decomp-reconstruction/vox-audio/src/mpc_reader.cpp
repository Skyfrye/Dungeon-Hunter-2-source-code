// Musepack reader callbacks the game passes to libmpcdec. Each forwards to the stream
// cursor held in the reader's data pointer (+0x14). The cursor's own slots are
// Seek (+0x10), Tell (+0x18) and Read (+0x1c) in StreamCursorInterface.
#include "vox-audio/deps/mpc_reader.hpp"

#include <cstdint>

#include "vox-audio/vox/stream.hpp"

// 0x86fba8 _Z8mpc_readP12mpc_reader_tPvi
int mpc_read(mpc_reader_t* reader, void* buffer, int size) {
    if (reader->data == nullptr) {
        return 0;
    }
    return reader->data->Read(static_cast<std::uint8_t*>(buffer), size);
}

// 0x86fbd4 _Z8mpc_seekP12mpc_reader_ti
// Returns 1 when the cursor seeks to the absolute position, 0 otherwise.
int mpc_seek(mpc_reader_t* reader, int offset) {
    if (reader->data == nullptr) {
        return 0;
    }
    int result = reader->data->Seek(offset, 0);
    return result == 0 ? 1 : 0;
}

// 0x86fc0c _Z8mpc_tellP12mpc_reader_t
int mpc_tell(mpc_reader_t* reader) {
    if (reader->data == nullptr) {
        return 0;
    }
    return reader->data->Tell();
}

// 0x86fc38 _Z11mpc_getsizeP12mpc_reader_t
// The original reads the cursor from the reader (+0x14), then the owning stream from the
// cursor's owner word (+0x04), and returns that stream's Size (vtable slot +0x10). A missing
// cursor or owner gives 0.
int mpc_getsize(mpc_reader_t* reader) {
    if (reader->data == nullptr) {
        return 0;
    }
    vox::StreamInterface* owner = reader->data->OwnerStream();
    return owner != nullptr ? owner->Size() : 0;
}

// 0x86fc70 _Z11mpc_canseekP12mpc_reader_t
int mpc_canseek(mpc_reader_t* reader) {
    (void)reader;
    return 1;
}
