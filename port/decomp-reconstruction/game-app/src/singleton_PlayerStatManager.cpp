// Storage of Singleton<PlayerStatManager>::s_inst (ELF 0x99fa88, 4 bytes), link-1. One translation unit per instance, so that a program links the
// constructor and destructor of an instance only when it uses that instance (dh2/Singleton.hpp declares every instance extern).
#include "dh2/Singleton.hpp"
#include "dh2/PlayerStatManager.hpp"

template class Singleton<PlayerStatManager>;

// The class-scope name is a reference to the same object (the binary has the one symbol above).
PlayerStatManager& PlayerStatManager::s_inst = Singleton<PlayerStatManager>::s_inst;
