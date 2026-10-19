// Storage of Singleton<CSIdle>::s_inst (ELF 0x9a2aa8, 8 bytes), link-1. One translation unit per instance, so that a program links the
// constructor and destructor of an instance only when it uses that instance (dh2/Singleton.hpp declares every instance extern).
#include "dh2/Singleton.hpp"
#include "dh2/CSIdle.hpp"

template class Singleton<CSIdle>;
