// GameCenterInfo: the Game Center record of the matching layer. CMatchingGLLive::s_GameCenterInfo (0xa33878) is one static
// object of 0x18 bytes; OnlineGameState::Init (0x4a04c0, mode 4) fills it from the GameCenter singleton, and its
// destructor (0x81ce00) clears the list. Fields are public (Track B decision 9).
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x00 host flag (GameCenter::IsHost() result; CMatchingGLLive::SetGCState tests it to choose state 3 or 4)
//   +0x04 local user UID (dword_A3387C, GameCenter::GetUserUid(); the pointer belongs to the GameCenter)
//   +0x08 host UID (dword_A33880, GameCenter::GetHostUid())
//   +0x0c player count (dword_A33884, GameCenter::GetPlayerCount())
//   +0x10 list of player-ID strings (std::list<std::string>, sentinel at +0x10; dword_A33888/A3388C)
#pragma once

#include <cstdint>
#include <list>
#include <string>

class GameCenterInfo {
public:
    // 0x81ce00 _ZN14GameCenterInfoD1Ev: clears the list. The original returns the object
    // pointer, which a destructor does not expose.
    ~GameCenterInfo();

    std::int32_t isHost_ = 0;           // +0x00
    const char* userUid_ = nullptr;     // +0x04
    const char* hostUid_ = nullptr;     // +0x08
    std::int32_t playerCount_ = 0;      // +0x0c
    std::list<std::string> ids_;        // +0x10

    // Test seam. Not in the original.
    std::list<std::string>& IdsForTest() { return ids_; }
};
