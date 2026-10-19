// Free <global> variable read by the language code of SavegameManager (batch g1-game-items-save-SavegameManager-ca9830-0).
// isKOREAN_BUILD is declared in dh2/global/Globals.hpp; this header adds the Japanese flag next to it.
#pragma once

// .bss byte at 0x9f640c. SavegameManager::__loadLanguageAndOrientation tests it after isKOREAN_BUILD. The definition
// belongs to the globals batch (game-app/src/g1-game-app-global-f216b6-5.cpp declares it extern as well). The integrator
// can move this declaration into dh2/global/Globals.hpp.
extern bool JAPANESE_BUILD;
