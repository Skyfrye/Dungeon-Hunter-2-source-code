// Storage of Singleton<SWFAnimManager>::s_inst (ELF 0x9a6370, 28 bytes), link-1. One translation unit per instance, so that a program links the
// constructor and destructor of an instance only when it uses that instance (dh2/Singleton.hpp declares every instance extern).
#include "dh2/Singleton.hpp"
#include "dh2/SWFAnimManager.hpp"

template class Singleton<SWFAnimManager>;
