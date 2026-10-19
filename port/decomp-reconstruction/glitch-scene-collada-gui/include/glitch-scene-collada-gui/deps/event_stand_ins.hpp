// glitch::SEvent and glitch::IEventReceiver have one definition: glitch-core-io/os/event_receiver.hpp (canonical header of
// the engine unification wave, u1-core). The stand-ins this header held are retired:
//   - SEvent was {category, word1, caller}; the canonical record names the same words EventType (+0x00), unk_04 (+0x04) and
//     GUIEvent.Caller (+0x08).
//   - IEventReceiver named its single slot (+0x08) forwardEvent; the canonical name is onEvent.
// The header only forwards so that the existing includes of this category (and game/include/dh2/ZoomHandler.hpp) keep working.
#pragma once

#include "glitch-core-io/os/event_receiver.hpp"
