// The IDA globals dword_99F740, dword_99F764, dword_99F76C and dword_99F778 are words of Singleton<Application>::s_inst
// (0x99f72c): m_eventManager (+0x14), m_objectManager (+0x38), m_playerManager (+0x40) and m_savegameManager (+0x4c). The
// sources read them under the IDA names (hundreds of sites), so each name is a reference to the member: one storage, the
// Application member, as the binary has it (link-1). A reference to a member of a static object is a constant initializer.
#include "dh2/Application.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

EventManager*& dword_99F740 = Singleton<Application>::s_inst.m_eventManager;          // 0x99f740 = s_inst +0x14
ObjectManager*& dword_99F764 = Singleton<Application>::s_inst.m_objectManager;        // 0x99f764 = s_inst +0x38
PlayerManager*& dword_99F76C = Singleton<Application>::s_inst.m_playerManager;        // 0x99f76c = s_inst +0x40
SavegameManager*& dword_99F778 = Singleton<Application>::s_inst.m_savegameManager;    // 0x99f778 = s_inst +0x4c
