// Storage of Singleton<MenuMessageManager<CharMenuTutorialMsg, 1>>::s_inst (ELF 0x99fbb4, 44 bytes), link-1, and the class-scope name
// MenuMessageManager<CharMenuTutorialMsg, 1>::s_inst, a reference to that object (the binary has only the Singleton symbol).
#include "dh2/Singleton.hpp"
#include "dh2/CharMenuTutorialMsg.hpp"
#include "dh2/MenuMessageManager.hpp"

template class Singleton<MenuMessageManager<CharMenuTutorialMsg, 1>>;

template <>
MenuMessageManager<CharMenuTutorialMsg, 1>& MenuMessageManager<CharMenuTutorialMsg, 1>::s_inst = Singleton<MenuMessageManager<CharMenuTutorialMsg, 1>>::s_inst;
