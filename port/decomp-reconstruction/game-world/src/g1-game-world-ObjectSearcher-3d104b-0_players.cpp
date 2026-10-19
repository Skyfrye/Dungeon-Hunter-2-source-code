// Batch g1-game-world-ObjectSearcher-3d104b-0, companion of g1-game-world-ObjectSearcher-3d104b-0.cpp (part 1 of 3).
// Split off because dh2/PlayerManager.hpp (net-transport IStreamBase) and dh2/Character.hpp (pydata IStreamBase)
// define the same class differently, so one translation unit cannot include both. These two PlayerList methods
// need only the PlayerManager layout.
// Declarations: dh2/ObjectSearcher.hpp. Field: PlayerManager +0x6c4 (m_numCharacters, dh2/PlayerManager.hpp).
//
// PlayerList uses PlayerManager +0x6c4 as the player count. dh2/PlayerManager.hpp names that field for characters
// (_AddCharacter increments it, RemoveAllCharacters clears it), so the two names need reconciling in the owner header.
#include "dh2/ObjectSearcher.hpp"

#include "dh2/PlayerManager.hpp"

// 0x38d530 _ZN14ObjectSearcher10PlayerList5AtEndEv
bool ObjectSearcher::PlayerList::AtEnd() {
    return m_index >= m_players->m_numCharacters;
}

// 0x38d55c _ZN14ObjectSearcher10PlayerList4SizeEv
int ObjectSearcher::PlayerList::Size() {
    return m_players->m_numCharacters;
}
