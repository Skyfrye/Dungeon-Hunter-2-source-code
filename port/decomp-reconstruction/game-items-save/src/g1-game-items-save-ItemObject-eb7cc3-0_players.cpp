// Companion of batch g1-game-items-save-ItemObject-eb7cc3-0. Holds the engine-singleton reads that the ItemObject functions
// make through Singleton<Application>::s_inst (frame time, PlayerManager) and Singleton<VisualFXManager>::s_inst. They live
// in their own translation unit because dh2/PlayerManager.hpp includes net-transport's IStreamBase, which clashes with the
// pydata stream reader that dh2/Character.hpp brings in to the batch file.

#include "dh2/Application.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"

namespace ItemObjectEngine {

// Application::GetDt() (0x31f66c), the frame time in ms that ItemObject::Update counts the pick-up lock down with.
int FrameDt() {
    return Singleton<Application>::s_inst.GetDt();
}

// The count the round robin wraps at: PlayerManager +0x6c4 (m_numCharacters).
int RoundRobinCount() {
    return Singleton<Application>::s_inst.m_playerManager->m_numCharacters;
}

// PlayerManager::GetPlayerByCharacter(receiver, false), the record's +0x678 (unk_678 in dh2/PlayerInfo.hpp).
int ReceiverPlayerNumber(const Character* receiver) {
    return Singleton<Application>::s_inst.m_playerManager->GetPlayerByCharacter(receiver, false)->unk_678;
}

// PlayerManager::IsLocalPlayer(character), as a truth value.
bool IsLocalPlayer(const Character* character) {
    return Singleton<Application>::s_inst.m_playerManager->IsLocalPlayer(character) != 0;
}

// VisualFXManager::DropAnimatedFX(fx), the glow effect given back to its pool.
void DropGlowFX(AnimatedFX*& fx) {
    Singleton<VisualFXManager>::s_inst.DropAnimatedFX(fx);
}

}  // namespace ItemObjectEngine
