// Storage of Singleton<MenuMessageManager<DialogMsg, 1>>::s_inst (ELF 0x99fb88, 44 bytes), link-1, and the class-scope name
// MenuMessageManager<DialogMsg, 1>::s_inst, a reference to that object (the binary has only the Singleton symbol).
#include "dh2/Singleton.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuMessageManager.hpp"

template class Singleton<MenuMessageManager<DialogMsg, 1>>;

template <>
MenuMessageManager<DialogMsg, 1>& MenuMessageManager<DialogMsg, 1>::s_inst = Singleton<MenuMessageManager<DialogMsg, 1>>::s_inst;
