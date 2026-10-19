// EShaderParameterType.cpp's static table: the shared-string names of the shader parameter types, kept in the anonymous-namespace
// class SNextType (SNextType::StringsBank, ELF 0x9f6a78, 63 records) and released by the init step registered for it.
#include "glitch-core-io/core/shared_string_heap_ops.hpp"

namespace glitch {
int registerInitStep(void (*step)(bool));  // 0x6a10b0, glitch-scene-collada-gui/src/recon/slice_24.cpp
}  // namespace glitch

namespace glitch::video {
namespace {

struct SNextType {
    // One shared-string record per E_SHADER_PARAMETER_TYPE, null until the name is first needed (filled by the file's global
    // constructor and guessShaderParameterType 0x5e2284, which are other rows).
    static core::detail::SSharedStringData* StringsBank[63];
};
core::detail::SSharedStringData* SNextType::StringsBank[63] = {};

// 0x5e1828 _ZN6glitch5video12_GLOBAL__N_14initEb
// The init step of the table: `false` is the teardown. Every record is taken out of the bank, and one whose use count drops to
// zero is released from the shared string heap (SData::release 0x6a4d9c). `true` does nothing here (the bank is filled lazily).
void init(bool initialize) {
    if (initialize) return;
    for (core::detail::SSharedStringData*& slot : SNextType::StringsBank) {
        core::detail::SSharedStringData* data = slot;
        slot = nullptr;
        if (data != nullptr && --data->useCount == 0) core::detail::sharedStringDataRelease(data);
    }
}


// The static initialiser of EShaderParameterType.cpp (0x5e194c): registerSharedStringHeapInit(), then registerNextTypeStringsBankInit(),
// which registers init once (function-local isRegistered flag), then the bank is cleared. glitch::init() runs the step with true (nothing
// to do) and glitch::exit() with false (the release loop above).
int registerNextTypeStringsBankInit() {
    static bool isRegistered = false;
    if (!isRegistered) {
        glitch::registerInitStep(init);
        isRegistered = true;
    }
    return 0;
}
[[maybe_unused]] const int shaderParameterTypeInitDummy = (core::detail::registerSharedStringHeapInit(), registerNextTypeStringsBankInit());

}  // namespace
}  // namespace glitch::video
