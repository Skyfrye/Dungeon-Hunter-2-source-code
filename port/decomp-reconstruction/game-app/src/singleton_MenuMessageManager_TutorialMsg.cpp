// Storage of Singleton<MenuMessageManager<TutorialMsg, 1>>::s_inst (ELF 0x99fb5c, 44 bytes), link-1, and the class-scope name
// MenuMessageManager<TutorialMsg, 1>::s_inst, a reference to that object (the binary has only the Singleton symbol).
#include "dh2/Singleton.hpp"
#include "dh2/TutorialMsg.hpp"
#include "dh2/MenuMessageManager.hpp"

template class Singleton<MenuMessageManager<TutorialMsg, 1>>;

template <>
MenuMessageManager<TutorialMsg, 1>& MenuMessageManager<TutorialMsg, 1>::s_inst = Singleton<MenuMessageManager<TutorialMsg, 1>>::s_inst;
