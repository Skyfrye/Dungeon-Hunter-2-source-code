// Storage of Singleton<VisualFXManager>::s_inst (ELF 0x9a1cd4, 56 bytes), link-1. One translation unit per instance, so that a program links the
// constructor and destructor of an instance only when it uses that instance (dh2/Singleton.hpp declares every instance extern).
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"

template class Singleton<VisualFXManager>;

// The class-scope name is a reference to the same object (the binary has the one symbol above).
VisualFXManager& VisualFXManager::s_inst = Singleton<VisualFXManager>::s_inst;
