// Names used by the vox::VoxEngine facade and vox::VoxEngineInternal signatures.
// The full definitions of these types are reconstructed elsewhere (or not at all
// yet); declaring them opaque is enough for the reference and enum parameters the
// forwarders pass through. Enum underlying types follow the 32-bit ABI (int).
#pragma once

#include <cstdint>

#include "vox-audio/vox/decoder.hpp"

namespace vox {

class EmitterHandle;
class DataHandle;
class EmitterObj;
class VoxEngineInternal;
struct DebugInfo;
struct Vox3DGeneralParameters;
struct EmitterHandleUserData;
struct DataHandleUserData;  // defined in vox/data_obj.hpp

enum VoxOutputMode : int;
enum VoxSourceLoadingFlags : int;
enum PriorityBankBehavior : int;
enum EmitterExternState : int;

// Callback the engine raises on an emitter state change: (emitter, user data, state).
using EmitterStateCallback = void (*)(EmitterHandle&, void*, EmitterExternState);

struct VoxDSPGeneralParameter {
    enum BusRoutingType : int;
};

}  // namespace vox

namespace vox {

// Three-float vector used by the 3D emitter parameters (position, velocity,
// direction). Layout matches three consecutive 12-byte blocks in EmitterObj.
struct VoxVector3f {
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
};

}  // namespace vox

namespace vox {

// Per-emitter 3D parameters as Get3DEmitterParameters/Set3DEmitterParameters copy them:
// parameter 0 (int) then parameters 1..7 (floats), eight words in all.
struct Vox3DEmitterParameters {
    std::int32_t param0 = 0;   // +0x00
    float params[7] = {};      // +0x04..+0x1c, parameters 1..7
};

// General 3D parameters as Get3DGeneralParameter and Set3DGeneralParameter copy them:
// parameter 0 (float), parameter 1 (float), parameter 2 (int), three words in all.
// Inside VoxEngineInternal they sit at +0x428, +0x42c and +0x430.
struct Vox3DGeneralParameters {
    float param0 = 0.0f;       // +0x00
    float param1 = 0.0f;       // +0x04
    std::int32_t param2 = 0;   // +0x08
};

// Engine debug summary as VoxEngineInternal::GetDebugInfo fills it: four 32-bit words.
struct DebugInfo {
    std::int32_t data_count = 0;      // +0x00: data objects (data_objects_ node count)
    std::int32_t emitter_count = 0;   // +0x04: emitters (emitters_ node count)
    std::int32_t playing_count = 0;   // +0x08: emitters whose IsPlaying is true
    std::int32_t end_marker = -1;     // +0x0c: always -1
};

}  // namespace vox
