// Free <global> state factories GetNewState<T>() (batch g1-game-app-global-f216b6-4 and its sibling batches).
// Each returns the singleton instance of one CharState subclass, Singleton<T>::s_inst, as a CharState*.
// The primary template is declared but not defined; every instance is an explicit specialization, declared
// here so that callers never fall back to an implicit instantiation.
// The classes are forward-declared here so that this header stays light. The .cpp files that define the factories
// include the CS* headers they need (dh2/CSIdle.hpp and so on; they compile against dh2/CharState.hpp). Hex-Rays prints
// the return type of GetNewState<CSLiftingMove> as int*; the demangled symbol (CharState*) is the one used here.
#pragma once

class CharState;
class CSStunned;
class CSKnockedBack;
class CSInjured;
class CSDead;
class CSInteract;
class CSAnim;
class CSReviving;
class CSRevived;
class CSPreSpawn;
class CSLiftingIdle;
class CSLiftingMove;
class CSLimbus;                  // batch g1-game-app-global-f216b6-3
class CSSpawn;
class CSDespawn;
class CSIdle;
class CSMove;
class CSAttack;
class CSSkill;
class CSCast;
class CSScared;

template <class T>
CharState* GetNewState();

template <>
CharState* GetNewState<CSStunned>();          // 0x3c0550
template <>
CharState* GetNewState<CSKnockedBack>();      // 0x3c056c
template <>
CharState* GetNewState<CSInjured>();          // 0x3c0588
template <>
CharState* GetNewState<CSDead>();             // 0x3c05a4
template <>
CharState* GetNewState<CSInteract>();         // 0x3c05c0
template <>
CharState* GetNewState<CSAnim>();             // 0x3c05dc
template <>
CharState* GetNewState<CSReviving>();         // 0x3c05f8
template <>
CharState* GetNewState<CSRevived>();          // 0x3c0614
template <>
CharState* GetNewState<CSPreSpawn>();         // 0x3c0630
template <>
CharState* GetNewState<CSLiftingIdle>();      // 0x3c064c
template <>
CharState* GetNewState<CSLiftingMove>();      // 0x3c0668

// Batch g1-game-app-global-f216b6-3 (the nine CS* factories below, in address order).
template <>
CharState* GetNewState<CSLimbus>();           // 0x3c0454
template <>
CharState* GetNewState<CSSpawn>();            // 0x3c0470
template <>
CharState* GetNewState<CSDespawn>();          // 0x3c048c
template <>
CharState* GetNewState<CSIdle>();             // 0x3c04a8
template <>
CharState* GetNewState<CSMove>();             // 0x3c04c4
template <>
CharState* GetNewState<CSAttack>();           // 0x3c04e0
template <>
CharState* GetNewState<CSSkill>();            // 0x3c04fc
template <>
CharState* GetNewState<CSCast>();             // 0x3c0518
template <>
CharState* GetNewState<CSScared>();           // 0x3c0534
