// Batch g1-game-world-ObjectSearcher-3d104b-1, companion of g1-game-world-ObjectSearcher-3d104b-1.cpp (part 2 of 3).
// Split off because dh2/PlayerManager.hpp (net-transport IStreamBase) and dh2/Character.hpp (pydata IStreamBase) define
// the same class differently, so one translation unit cannot include both (see the part 0 players file).
//
// Both methods read the player's Character field, PlayerInfo +0x660, from the record PlayerManager::GetPlayer(index,
// true) returns. The old note called that field undeclared: it is STALE, PlayerInfo.hpp:97 declares
// `Character* unk_660`. dh2/PlayerManager.hpp includes dh2/PlayerInfo.hpp, so the field is available here; only the
// Character class itself stays incomplete, which is enough for GetChar and for the base upcast in Get (Character
// derives from GameObject).

#include "dh2/ObjectSearcher.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PlayerManager.hpp"

// 0x38d7bc _ZN14ObjectSearcher10PlayerList7GetCharEv
// The player's Character at PlayerInfo +0x660. Returns the null pointer when the lookup has no record.
Character* ObjectSearcher::PlayerList::GetChar() {
    PlayerInfo* player = m_players->GetPlayer(m_index, true);
    if (player == nullptr) {
        return nullptr;  // host-necessitated guard: GetPlayer can answer the null record
    }
    return player->unk_660;
}

// 0x38d7d4 _ZN14ObjectSearcher10PlayerList3GetEv
// The same field as GetChar, returned as its GameObject base.
GameObject* ObjectSearcher::PlayerList::Get() {
    Character* character = GetChar();
    if (character == nullptr) {
        return nullptr;
    }
    return static_cast<GameObject*>(character);
}
