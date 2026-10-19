#include "vox-audio/vox/decoder_native.hpp"

#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x871098 _ZN3vox13DecoderNative7GetTypeEv
int DecoderNative::GetType() const {
    return 4;
}

// 0x8710a0 _ZN3vox13DecoderNative8GetParamEv
std::int32_t* DecoderNative::GetParam() {
    return nullptr;
}

// 0x871a50 _ZN3vox13DecoderNative13DestroyCursorEPNS_22DecoderCursorInterfaceE
void DecoderNative::DestroyCursor(DecoderCursorInterface* cursor) {
    if (cursor == nullptr) {
        return;
    }
    cursor->~DecoderCursorInterface();
    VoxFree(cursor);
}

}  // namespace vox
