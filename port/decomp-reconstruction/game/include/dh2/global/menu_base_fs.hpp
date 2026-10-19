// Free <global> functions used by the MenuBase FSCommand handlers (batch g1-game-ui-MenuBase-8948cc-2) that no game
// header declares yet. The definition is in core-platform/src/w7_global_rem.cpp. The same declaration also sits in
// core-platform/include/core-platform/w7_global_rem.hpp; the two are identical, so either include works.
#pragma once

// 0x4218e4 _Z16playerClassAsStrv: name of the current player class, no arguments
const char* playerClassAsStr();

// 0x41f834 _Z18playerClassAsStrIDi: string id of the player class classId (used with StringManager::getString)
int playerClassAsStrID(int classId);
