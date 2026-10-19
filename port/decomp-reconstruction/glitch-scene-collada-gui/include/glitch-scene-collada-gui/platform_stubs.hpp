// glitch base object, logger, OS operator and Android device stand-ins. The bodies
// are the original's stubs (empty, constant returns) and single-field accessors. The
// Windows port uses its own device, so these are kept for the record of the queue.
#pragma once

#include <cstdint>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/os/CAndroidOSDevice.hpp"
#include "glitch-scene-collada-gui/os/CLogger.hpp"
#include "glitch-scene-collada-gui/os/COSOperator.hpp"

namespace glitch {

struct SEvent;
class IEventReceiver;
class IDevice;

namespace video {
class IVideoModeList;
}

class IObject {
public:
    // 0x6a118c _ZN6glitch7IObjectC2Ev (empty)
    // 0x6a1190 _ZN6glitch7IObjectC1Ev (empty)
    IObject() = default;
    // 0x6a1194 _ZN6glitch7IObjectD2Ev (empty)
    // 0x6a1198 _ZN6glitch7IObjectD1Ev (empty)
    ~IObject() = default;
};

// ELOG_LEVEL, ILogger and glitch::os::Printer are the canonical definitions in glitch-core-io/os/logging.hpp
// (engine unification, Track B wave U2).

// CLogger is the canonical class of os/CLogger.hpp (residue pass ob).

// IOSOperator and COSOperator are the canonical classes of os/COSOperator.hpp (scene-owner wave).

// CAndroidOSDevice and its CCursorControl are the canonical classes of os/CAndroidOSDevice.hpp (residue pass ob).

}  // namespace glitch
