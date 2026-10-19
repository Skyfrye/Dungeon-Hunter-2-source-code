// Batch g1-game-app-global-f216b6-2, companion of g1-game-app-global-f216b6-2.cpp (<global>, part 3 of 22).
// Split off because dh2/PlayerManager.hpp (net-transport IStreamBase) and dh2/Character.hpp (pydata IStreamBase)
// define the same class differently, so one translation unit cannot include both.
// Declarations: dh2/global/IsMultiplayerGame.hpp.
#include "dh2/global/IsMultiplayerGame.hpp"

#include "dh2/PlayerManager.hpp"
#include "dh2/Application.hpp"

// 0x3a42f4 bool IsMultiplayerGame()
// PARTIAL. The original is *(GetOnline() + 5) || PlayerManager::GetNumLocalPlayers(dword_99F76C, 1) > 1. The first term is
// Application::IsOnlineGame() (0x320668), which reads the same byte. That method is stubbed to false in the Application
// batch, so the first term stays false until its row is complete. The player-count term is written as in the original
// (flag 1 is true).
bool IsMultiplayerGame() {
    const bool onlineGame = ApplicationGetInstance().IsOnlineGame();
    return onlineGame || dword_99F76C->GetNumLocalPlayers(true) > 1;
}
