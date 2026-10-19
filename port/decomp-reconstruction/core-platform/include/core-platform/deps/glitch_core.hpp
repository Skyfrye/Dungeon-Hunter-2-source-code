// Forwarding header (engine unification wave, U2). The stand-ins this file used to define are gone: the
// types are defined once, in the canonical headers below. core-platform's own code includes those headers
// directly. This file stays only because game headers (game/include/dh2/Billboard.hpp,
// SimpleTypeProperty.hpp, InputManagerEventReceiver.hpp) still name it; delete it when they switch.
#pragma once

#include "glitch-core-io/core/memory_hint.hpp"  // glitch::memory::E_MEMORY_HINT
#include "glitch-core-io/os/event_receiver.hpp"  // glitch::SEvent, glitch::IEventReceiver
#include "glitch-shared/glitch_core.hpp"          // glitch::core::vector3d, rect, dimension2d; glitch::video::SColor
