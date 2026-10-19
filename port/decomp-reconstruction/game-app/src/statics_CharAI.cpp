// Storage of the static data members of CharAI that its header declares and no batch defined (link-1). One translation unit per
// class, so a program links the constructors these members need only when it uses the class.
#include <deque>
#include <map>
#include <string>
#include "dh2/CharAI.hpp"

std::deque<CharAI*> CharAI::s_updateQueue;      // 0x9a2b48, 40 bytes, constructed by the static initializer (0x3cd708)
int CharAI::s_updateTimer = -1;                 // 0x999760, .data, initial value -1
int CharAI::s_stepAvailableStep = 0;            // 0x9a2b70, .bss
std::map<std::pair<std::string, int>, CharAI::GroupInfo> CharAI::s_groups;  // the AI group table, empty at start
