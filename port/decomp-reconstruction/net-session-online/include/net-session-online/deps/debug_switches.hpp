// The DebugSwitches singleton has one definition: the game-app class in dh2/DebugSwitches.hpp (reconstructed from the
// binary, DebugSwitches::s_inst defined in game-app/src/g1-game-app-DebugSwitches-d73440-0.cpp). The stand-in that
// lived here defined its own DebugSwitches::s_inst, which collided with it at link time (link-1), so this header only
// keeps the old include path. The callers use the original's inlined GetInstance() sequence: s_inst.load(), then
// s_inst.GetSwitch(name).
#pragma once

#include "dh2/DebugSwitches.hpp"
