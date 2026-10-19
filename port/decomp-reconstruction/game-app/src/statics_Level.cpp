// Storage of the static data members of Level that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include "dh2/Level.hpp"

int Level::s_dbgLevelLoadCount = 0;  // 0x9a30e8, .bss
