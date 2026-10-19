// Storage of Singleton<CSKnockedBack>::s_inst (ELF 0x9a2ae0, 8 bytes), link-1. One translation unit per instance, so that a program links the
// constructor and destructor of an instance only when it uses that instance (dh2/Singleton.hpp declares every instance extern).
#include "dh2/Singleton.hpp"
#include "dh2/CSKnockedBack.hpp"

template class Singleton<CSKnockedBack>;
