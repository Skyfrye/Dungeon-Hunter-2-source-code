// VoxEngineInternal factory registration and the debug-server hook.
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x862e70 _ZN3vox17VoxEngineInternal18RegisterStreamTypeEPFPNS_15StreamInterfaceEPvE
// Stores the factory in the next free stream slot and returns its index, or -1 when
// all 31 slots are taken.
int VoxEngineInternal::RegisterStreamType(StreamInterface* (*factory)(void*)) {
    int index = stream_factory_count_;
    if (index < 0x1f) {
        stream_factory_count_ = index + 1;
        stream_factories_[index] = factory;
        return index;
    }
    return -1;
}

// 0x862e94 _ZN3vox17VoxEngineInternal19RegisterDecoderTypeEPFPNS_16DecoderInterfaceEPvE
// Same scheme as RegisterStreamType for the decoder table.
int VoxEngineInternal::RegisterDecoderType(DecoderInterface* (*factory)(void*)) {
    int index = decoder_factory_count_;
    if (index < 0x1f) {
        decoder_factory_count_ = index + 1;
        decoder_factories_[index] = factory;
        return index;
    }
    return -1;
}

// 0x862ebc _ZN3vox17VoxEngineInternal17UpdateDebugServerEv
// The original is a bare return.
void VoxEngineInternal::UpdateDebugServer() {}

}  // namespace vox
