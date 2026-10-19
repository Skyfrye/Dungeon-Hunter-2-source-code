// Storage of Singleton<MenuMessageManager<OnlineStatusMsg, 1>>::s_inst (ELF 0x99fb30, 44 bytes), link-1, and the class-scope name
// MenuMessageManager<OnlineStatusMsg, 1>::s_inst, a reference to that object (the binary has only the Singleton symbol).
#include "dh2/Singleton.hpp"
#include "dh2/OnlineStatusMsg.hpp"
#include "dh2/MenuMessageManager.hpp"

template class Singleton<MenuMessageManager<OnlineStatusMsg, 1>>;

template <>
MenuMessageManager<OnlineStatusMsg, 1>& MenuMessageManager<OnlineStatusMsg, 1>::s_inst = Singleton<MenuMessageManager<OnlineStatusMsg, 1>>::s_inst;
