// AnimSetManager::s_inst is a reference to Singleton<AnimSetManager>::s_inst (ELF 0x9a2640, 32 bytes), whose storage is
// instantiated in Globals.cpp (link-1).
#include "dh2/AnimSetManager.hpp"
#include "dh2/Singleton.hpp"

AnimSetManager& AnimSetManager::s_inst = Singleton<AnimSetManager>::s_inst;
