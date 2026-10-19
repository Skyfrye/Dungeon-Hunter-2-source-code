// Storage of Singleton<PFWorld>::s_inst (ELF 0x9a26d8, 152 bytes), link-1. One translation unit per instance, so that a program links the
// constructor and destructor of an instance only when it uses that instance (dh2/Singleton.hpp declares every instance extern).
#include "dh2/Singleton.hpp"
#include "dh2/PFWorld.hpp"

template class Singleton<PFWorld>;

// The class-scope name is a reference to the same object (the binary has the one symbol above).
PFWorld& PFWorld::s_inst = Singleton<PFWorld>::s_inst;
