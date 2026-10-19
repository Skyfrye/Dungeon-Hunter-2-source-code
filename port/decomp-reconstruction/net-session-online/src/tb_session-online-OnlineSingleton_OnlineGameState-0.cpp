#include "net-session-online/tb/online_singleton.hpp"

#include <cstdio>
#include <cstdlib>
#include <new>

#include "net-session-online/online_game_state.hpp"

// Engine assert level, defined in core-platform (src/memory.cpp). 0 is the default.
extern int gAssertLevel;

// The class template's static instance pointer. The original keeps it in one global, and
// the explicit instantiation below provides it for OnlineGameState.
template <class T>
T* OnlineSingleton<T>::m_instance = nullptr;

// 0x320e98 _ZN15OnlineSingletonI15OnlineGameStateE11GetInstanceEv
//
// Reconstructed from the 42-instruction listing (asm 0x320e98..0x320f3c). The binary's control flow:
//   1. Return m_instance when it is set.
//   2. Otherwise allocate 0x5c bytes with operator new(size, MemoryHintState 0), construct the object in
//      place with OnlineGameState::OnlineGameState() -- the BL comes BEFORE the null test, so the
//      constructor really is called on the block even when it is null -- then store the pointer in
//      m_instance.
//   3. When the block is null, check gAssertLevel:
//      2: store 0 through the null pointer (STREQ R6,[R6]) to force a crash, then return it;
//      1: print "ASSERT(m_instance != 0) FAILED: <file>:152" and return m_instance (reloaded);
//      other: return the (null) block.
//   4. Return the new block.
//
// Deviations, all named in the ledger row:
//   - The allocation is `new (std::nothrow) T()`. The hint argument (0) is not modelled, since this
//     category has no hinted operator new. The block is sizeof(T) on the host, not 0x5c.
//   - The constructor is not called on a null block (calling a member function on null is UB).
//   - Level 2 calls std::abort() where the original writes to address 0. Both terminate the process.
//   - The fprintf stream is __sF + 0xa8 in the ARM listing, i.e. the third standard FILE (index 2, the
//     Bionic stderr); the port uses stderr. The file-name/line string is the one in the pseudocode:
//     the string says MultiplayerStateMachine.h (the original copied it into this function) and the
//     immediate is 0x98 = 152.
template <class T>
T* OnlineSingleton<T>::GetInstance() {
    T* v0 = m_instance;
    if (m_instance == nullptr) {
        v0 = new (std::nothrow) T();
        m_instance = v0;
        if (v0 == nullptr) {
            if (gAssertLevel == 2) {
                std::abort();
            } else if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "m_instance != 0",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Multiplayer/MultiplayerStateMachine.h",
                             152);
                return m_instance;
            }
        }
    }
    return v0;
}

template class OnlineSingleton<OnlineGameState>;
