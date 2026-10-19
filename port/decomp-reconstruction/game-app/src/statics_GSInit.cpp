// Storage of the static data members of GSInit that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include "dh2/GSInit.hpp"

GSInit GSInit::s_inst;  // 0x9a24b0, 20 bytes; constructed by the static initializer 0x384cb0
