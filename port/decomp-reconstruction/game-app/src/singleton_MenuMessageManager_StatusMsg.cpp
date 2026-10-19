// Storage of Singleton<MenuMessageManager<StatusMsg, 4>>::s_inst (ELF 0x99fa8c, 164 bytes), link-1, and the class-scope name
// MenuMessageManager<StatusMsg, 4>::s_inst, a reference to that object (the binary has only the Singleton symbol).
#include "dh2/Singleton.hpp"
#include "dh2/StatusMsg.hpp"
#include "dh2/MenuMessageManager.hpp"

template class Singleton<MenuMessageManager<StatusMsg, 4>>;

template <>
MenuMessageManager<StatusMsg, 4>& MenuMessageManager<StatusMsg, 4>::s_inst = Singleton<MenuMessageManager<StatusMsg, 4>>::s_inst;
