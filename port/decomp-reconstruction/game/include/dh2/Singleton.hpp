// Singleton<T>: the static instance template of the original (ELF _ZN9SingletonI<T>E6s_instE, with a guard
// variable _ZGVN9SingletonI<T>E6s_instE, so the instance has dynamic initialisation). The instance is the object
// itself, not a pointer: every s_inst symbol is sizeof(T) bytes in .bss (Application 272, PFWorld 152,
// VisualFXManager 56, CS* states 8). Application::m_frameCount, m_playerManager and the other managers are members of
// Singleton<Application>::s_inst, not separate globals (see dh2/global/Globals.hpp).
//
// This is the one canonical declaration. It lists every instance the binary has: the 36 s_inst symbols of
// libDungeonHunter2.so (guard variables excluded). Storage is defined in game-app/src/Globals.cpp.
#pragma once

template <typename T>
class Singleton {
public:
    static T s_inst;  // Singleton<T>::s_inst: the object itself (address and size: the list below)
};

// The storage. Not instantiated in the TUs that include this header (see the extern template list below); the
// instances that have a constructor and destructor in the tree are instantiated once in game-app/src/Globals.cpp.
template <typename T>
T Singleton<T>::s_inst;

// Instance types (each defined in its own header; only named here).
class Application;                                   // 0x99f72c, 272 bytes
class PlayerStatManager;                             // 0x99fa88, 4 bytes
template <typename T, int N> class MenuMessageManager;
class StatusMsg;
class OnlineStatusMsg;
class TutorialMsg;
class DialogMsg;
class CharMenuTutorialMsg;
class AchievementMsg;
class PerfCounters;                                  // 0x99fc0c, 32 bytes
class CXPlayerManager;                               // 0x99fc2c, 128 bytes
class VisualFXManager;                               // 0x9a1cd4, 56 bytes
class AnimSetManager;                                // 0x9a2640, 32 bytes
class PFWorld;                                       // 0x9a26d8, 152 bytes
class ProjectileManager;                             // 0x9a2878, 56 bytes
class CSLimbus;                                      // 0x9a2a90, 8 bytes; the CS* states follow at 8-byte steps
class CSSpawn;                                       // 0x9a2a98
class CSDespawn;                                     // 0x9a2aa0
class CSIdle;                                        // 0x9a2aa8
class CSMove;                                        // 0x9a2ab0
class CSAttack;                                      // 0x9a2ab8
class CSSkill;                                       // 0x9a2ac0
class CSCast;                                        // 0x9a2ac8
class CSScared;                                      // 0x9a2ad0
class CSStunned;                                     // 0x9a2ad8
class CSKnockedBack;                                 // 0x9a2ae0
class CSInjured;                                     // 0x9a2ae8
class CSDead;                                        // 0x9a2af0
class CSInteract;                                    // 0x9a2af8
class CSAnim;                                        // 0x9a2b00
class CSReviving;                                    // 0x9a2b08
class CSRevived;                                     // 0x9a2b10
class CSPreSpawn;                                    // 0x9a2b18
class CSLiftingIdle;                                 // 0x9a2b20
class CSLiftingMove;                                 // 0x9a2b28
class ItemManager;                                   // 0x9a30cc, 16 bytes
class SWFAnimManager;                                // 0x9a6370, 28 bytes

// Explicit instantiation declarations: every instance the binary has. The static members are not instantiated in
// the TUs that include this header; each is defined once in game-app/src/Globals.cpp.
extern template class Singleton<Application>;
extern template class Singleton<PlayerStatManager>;
extern template class Singleton<MenuMessageManager<StatusMsg, 4>>;
extern template class Singleton<MenuMessageManager<OnlineStatusMsg, 1>>;
extern template class Singleton<MenuMessageManager<TutorialMsg, 1>>;
extern template class Singleton<MenuMessageManager<DialogMsg, 1>>;
extern template class Singleton<MenuMessageManager<CharMenuTutorialMsg, 1>>;
extern template class Singleton<MenuMessageManager<AchievementMsg, 1>>;
extern template class Singleton<PerfCounters>;
extern template class Singleton<CXPlayerManager>;
extern template class Singleton<VisualFXManager>;
extern template class Singleton<AnimSetManager>;
extern template class Singleton<PFWorld>;
extern template class Singleton<ProjectileManager>;
extern template class Singleton<CSLimbus>;
extern template class Singleton<CSSpawn>;
extern template class Singleton<CSDespawn>;
extern template class Singleton<CSIdle>;
extern template class Singleton<CSMove>;
extern template class Singleton<CSAttack>;
extern template class Singleton<CSSkill>;
extern template class Singleton<CSCast>;
extern template class Singleton<CSScared>;
extern template class Singleton<CSStunned>;
extern template class Singleton<CSKnockedBack>;
extern template class Singleton<CSInjured>;
extern template class Singleton<CSDead>;
extern template class Singleton<CSInteract>;
extern template class Singleton<CSAnim>;
extern template class Singleton<CSReviving>;
extern template class Singleton<CSRevived>;
extern template class Singleton<CSPreSpawn>;
extern template class Singleton<CSLiftingIdle>;
extern template class Singleton<CSLiftingMove>;
extern template class Singleton<ItemManager>;
extern template class Singleton<SWFAnimManager>;
