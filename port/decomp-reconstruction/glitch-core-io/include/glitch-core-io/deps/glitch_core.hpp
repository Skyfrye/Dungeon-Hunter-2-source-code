// glitch::core value types now come from the shared header (one definition for every category).
// The core-io-only stand-ins (IReferenceCounted, IEventReceiver, video and scene stubs) are in
// glitch_core_objects.hpp, which this header includes so existing includes keep working.
#pragma once

#include "glitch-shared/glitch_core.hpp"
#include "glitch-core-io/deps/glitch_core_objects.hpp"
