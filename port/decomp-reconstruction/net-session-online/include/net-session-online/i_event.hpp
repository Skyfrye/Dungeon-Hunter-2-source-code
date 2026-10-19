// IEvent: forwards to the one definition, dh2/IEvent.hpp (u2-net-session-online). The stand-in
// that stood here (non-virtual getEventID, protected eventId_) is retired. Kept so the existing
// includes of this path (QuestEvent.hpp, game-app and game-world sources) still resolve.
#pragma once

#include "dh2/IEvent.hpp"
