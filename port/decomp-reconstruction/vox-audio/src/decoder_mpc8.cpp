// vox::DecoderMPC8: constructors, destructor and the two accessors.
#include "vox-audio/vox/decoder_mpc8.hpp"

#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x86fcb0 _ZN3vox11DecoderMPC8C1EPNS_17DecoderMPC8ParamsE
// 0x86fc78 _ZN3vox11DecoderMPC8C2EPNS_17DecoderMPC8ParamsE (same body)
DecoderMPC8::DecoderMPC8(const DecoderMPC8Params* params) {
    if (params != nullptr) {
        param_ = params->first;
    }
}

// 0x86fdc0 _ZN3vox11DecoderMPC8D1Ev
// The original body is empty. 0x86fdc4 (D0) is the deleting variant the compiler emits.
DecoderMPC8::~DecoderMPC8() {}

// 0x86fb98 _ZN3vox11DecoderMPC87GetTypeEv
int DecoderMPC8::GetType() const {
    return 3;
}

// 0x86fba0 _ZN3vox11DecoderMPC88GetParamEv
std::int32_t* DecoderMPC8::GetParam() {
    return nullptr;
}

// 0x870160 _ZN3vox12DecoderMPC811DestroyCursorEPNS_22DecoderCursorInterfaceE
void DecoderMPC8::DestroyCursor(DecoderCursorInterface* cursor) {
    if (cursor != nullptr) {
        cursor->~DecoderCursorInterface();
        VoxFree(cursor);
    }
}

}  // namespace vox
