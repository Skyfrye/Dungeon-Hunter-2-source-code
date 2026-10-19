// Storage of Singleton<MenuMessageManager<AchievementMsg, 1>>::s_inst (ELF 0x99fbe0, 44 bytes), link-1, and the class-scope name
// MenuMessageManager<AchievementMsg, 1>::s_inst, a reference to that object (the binary has only the Singleton symbol).
#include "dh2/Singleton.hpp"
#include "dh2/AchievementMsg.hpp"
#include "dh2/MenuMessageManager.hpp"

template class Singleton<MenuMessageManager<AchievementMsg, 1>>;

template <>
MenuMessageManager<AchievementMsg, 1>& MenuMessageManager<AchievementMsg, 1>::s_inst = Singleton<MenuMessageManager<AchievementMsg, 1>>::s_inst;
