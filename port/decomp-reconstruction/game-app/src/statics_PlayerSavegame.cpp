// Storage of the static data members of PlayerSavegame that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include <cstdint>
#include "dh2/PlayerSavegame.hpp"

std::int32_t PlayerSavegame::m_difficultyLevel = 0;  // 0x9a6060, .bss
