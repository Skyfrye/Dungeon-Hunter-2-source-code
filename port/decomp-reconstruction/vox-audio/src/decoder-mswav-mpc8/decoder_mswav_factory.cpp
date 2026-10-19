// vox::DecoderMSWav::CreateNewCursor (0x870c68) and vox::DecoderMSWavFactory (0x8709b8).
#include <new>

#include "vox-audio/vox/decoder_mswav.hpp"
#include "vox-audio/vox/decoder_mswav_cursor.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x870c68 _ZN3vox12DecoderMSWav15CreateNewCursorEPNS_21StreamCursorInterfaceE
// The original does not check the allocation; the port returns null when the storage is
// unavailable rather than constructing into a null block.
DecoderCursorInterface* DecoderMSWav::CreateNewCursor(StreamCursorInterface* stream) {
    void* storage = VoxAlloc(sizeof(DecoderMSWavCursor));
    if (storage == nullptr) {
        return nullptr;
    }
    return new (storage) DecoderMSWavCursor(this, stream);
}

// 0x8709b8 _ZN3vox19DecoderMSWavFactoryEPv
// The original allocates the decoder and runs its constructor on the block; the parameter is
// not read.
void* DecoderMSWavFactory(void* params) {
    (void)params;
    void* storage = VoxAlloc(sizeof(DecoderMSWav));
    if (storage == nullptr) {
        return nullptr;
    }
    return new (storage) DecoderMSWav();
}

}  // namespace vox
