// Storage of Singleton<CSPreSpawn>::s_inst (ELF 0x9a2b18, 8 bytes), link-1. One translation unit per instance, so that a program links the
// constructor and destructor of an instance only when it uses that instance (dh2/Singleton.hpp declares every instance extern).
#include "dh2/Singleton.hpp"
#include "dh2/CSPreSpawn.hpp"

template class Singleton<CSPreSpawn>;
