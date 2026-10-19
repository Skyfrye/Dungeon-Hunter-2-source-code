// Storage of the static data members of Character that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include <map>
#include "dh2/Character.hpp"

std::map<int, Character*> Character::s_concurrentAI;      // 0x9a2944, 24 bytes
std::map<int, unsigned int> Character::s_cachedCharOIDs;  // 0x9a292c, 24 bytes
