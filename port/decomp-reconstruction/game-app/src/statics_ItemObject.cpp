// Storage of the static data members of ItemObject that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include <cstdint>
#include "dh2/ItemObject.hpp"

int ItemObject::s_playerQuestRRId = 0;  // 0x9a30c4, .bss
