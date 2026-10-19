// vox::DecoderMPC8::CreateNewCursor (0x8704ac), the vtable slot +0x10 of DecoderMPC8 that the
// binary installs. DecoderMPC8 is therefore concrete, as in the original (the factory
// DecoderMPC8Factory below constructs one).
#include <new>

#include "vox-audio/vox/decoder_mpc8.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x8704ac _ZN3vox11DecoderMPC815CreateNewCursorEPNS_21StreamCursorInterfaceE
// Verified against the ARM listing (0x8704ac..0x8704D8): the whole body is
// VoxAlloc(0x4c, kVoxMemHintDefault) into r4, then
// DecoderMPC8Cursor::DecoderMPC8Cursor(r4, this, stream) (0x87018c), then r4 returned. The
// original does not test the allocation, so a failed allocation constructs through the null
// pointer; the port returns null there instead (the only deviation). The allocation size is the
// host sizeof: the original's 0x4c is the 32-bit layout of the cursor.
// The mangled name carries no return type; the base declares DecoderCursorInterface*, so that is
// used.
DecoderCursorInterface* DecoderMPC8::CreateNewCursor(StreamCursorInterface* stream) {
    void* storage = VoxAlloc(sizeof(DecoderMPC8Cursor), kVoxMemHintDefault);
    if (storage == nullptr) {
        return nullptr;
    }
    return new (storage) DecoderMPC8Cursor(this, stream);
}

// 0x8704dc _ZN3vox18DecoderMPC8FactoryEPv
// ARM: VoxAlloc(8, 0) into r4, then DecoderMPC8::DecoderMPC8(r4, params), then r4 returned. The parameter block is the
// DecoderMPC8Params the constructor reads (first word). Unchecked in the original; the port returns null when the
// storage is unavailable.
void* DecoderMPC8Factory(void* params) {
    void* storage = VoxAlloc(sizeof(DecoderMPC8), kVoxMemHintDefault);
    if (storage == nullptr) {
        return nullptr;
    }
    return new (storage) DecoderMPC8(static_cast<const DecoderMPC8Params*>(params));
}

// The free-function spelling of the same body, kept for callers that hold a DecoderMPC8*.
DecoderMPC8Cursor* CreateDecoderMPC8Cursor(DecoderMPC8* decoder, StreamCursorInterface* stream) {
    return static_cast<DecoderMPC8Cursor*>(decoder->CreateNewCursor(stream));
}

}  // namespace vox
