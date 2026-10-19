// Storage of the static data members of CharProperties that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include <vector>
#include "dh2/CharProperties.hpp"

std::vector<char*> CharProperties::s_propNames;           // 0x9a2c6c, 12 bytes, empty from the static initializer (0x3df548)
Structs::CharacterProperties CharProperties::s_temp;       // 0x9a2c78, 900 bytes, constructed by the same initializer
