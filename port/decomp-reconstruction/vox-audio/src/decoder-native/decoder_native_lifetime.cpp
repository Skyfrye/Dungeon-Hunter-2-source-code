// vox::DecoderNative constructors, destructors, the factory and CreateNewCursor.
#include <new>

#include "vox-audio/vox/decoder_native.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x872ad0 (C1) and 0x872b98 (C2). The original zeroes every container word and
// constructs the playlist manager; the member initialisers here give the same state.
DecoderNative::DecoderNative() = default;

// 0x872550 (D1) and 0x872638 (D2). The original frees the segment, rule and state arrays,
// erases the state-name table, releases the two vectors and then runs
// NativePlaylistsManager's destructor. The arrays are freed here and the members are
// destroyed after this body, in the same order. The manager's destructor is the playlists
// slice's (partial there, in its NativePlaylist element destructor).
DecoderNative::~DecoderNative() = default;  // the vectors release the arrays, as the original frees them

// 0x872b78 _ZN3vox20DecoderNativeFactoryEPv. VoxAlloc a DecoderNative and construct it.
// The original size is 0x8c in the 32-bit layout; sizeof is used for the 64-bit object.
void* DecoderNativeFactory(void* params) {
    (void)params;
    void* mem = VoxAlloc(sizeof(DecoderNative), kVoxMemHintDefault);
    return new (mem) DecoderNative();
}

// 0x874648. VoxAlloc a cursor and construct it on the decoder and stream. The cursor
// constructor is partial (see decoder_native_cursor.cpp).
DecoderCursorInterface* DecoderNative::CreateNewCursor(StreamCursorInterface* stream) {
    void* mem = VoxAlloc(sizeof(DecoderNativeCursor), kVoxMemHintDefault);
    return new (mem) DecoderNativeCursor(this, stream);
}

}  // namespace vox
