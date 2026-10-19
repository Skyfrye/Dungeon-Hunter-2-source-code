// Constructors and destructors of the native sub-decoder states. The base class bodies
// (C1 0x8860dc, C2 0x88621c, D1 0x88547c, D2 0x8854e8) are ported in
// native-subdecoder-base/native_subdecoder_state_base.cpp. Each derived function sets its
// vtable after the base call, which the C++ compiler does for the port.
#include "vox-audio/vox/native_sub_decoder_state.hpp"

namespace vox {

// 0x888670 _ZN3vox24NativeSubDecoderPCMStateC1EPNS_22NativePlaylistsManagerE
// C2 0x8886a4 has the same body.
NativeSubDecoderPCMState::NativeSubDecoderPCMState(NativePlaylistsManager* manager)
    : NativeSubDecoderState(manager) {}

// 0x8885ec _ZN3vox24NativeSubDecoderPCMStateD1Ev
// D2 0x88863c has the same body; D0 0x888620 is the deleting variant (compiler-generated).
NativeSubDecoderPCMState::~NativeSubDecoderPCMState() = default;

// 0x887000 _ZN3vox29NativeSubDecoderIMAADPCMStateC1EPNS_22NativePlaylistsManagerE
// C2 0x887034 has the same body.
NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(NativePlaylistsManager* manager)
    : NativeSubDecoderState(manager) {}

// 0x886f7c _ZN3vox29NativeSubDecoderIMAADPCMStateD1Ev
// D2 0x886fcc has the same body; D0 0x886fb0 is the deleting variant (compiler-generated).
NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState() = default;

}  // namespace vox
