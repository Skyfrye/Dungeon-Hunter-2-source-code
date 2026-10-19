#include "vox-audio/vox/decoder.hpp"

namespace vox {

// 0x86fb5c _ZN3vox22DecoderCursorInterface5ResetEv
// Reset calls the virtual Seek with frame 0 (vtable +0x28); the result is dropped.
void DecoderCursorInterface::Reset() {
    (void)Seek(0);
}

// 0x86fb44 _ZN3vox22DecoderCursorInterface9DecodeRefERPvi
// The asm (decomp_asm.py) loads the pointer from the reference, then calls the vtable slot
// at +0x10 (Decode) with that pointer and the count. Decode(dst, count) makes the same virtual
// call, so the body is the same.
int DecoderCursorInterface::DecodeRef(void*& dst, int count) {
    return Decode(dst, count);
}

}  // namespace vox
