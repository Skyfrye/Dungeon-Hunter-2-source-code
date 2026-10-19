// Batch g1-game-character-pack9-12cabb-0 (CharState, 2 functions): the two destructors. Declarations are in
// dh2/CharState.hpp. CharState has no data members; its only instance data is the vtable pointer, which the compiler
// writes. The ledger rows in game-character/ledger.d/g1-game-character-pack9-12cabb-0.csv repeat the status below.

#include "dh2/CharState.hpp"

// 0x3bffdc CharState::~CharState()
// Base-object destructor (D1). The original is a bare return (4-byte bx lr): it stores no vtable pointer and frees
// nothing, and the members (none) and the base chain (none) have no work. The deleting variant is at 0x3c0684.
CharState::~CharState() {}

// 0x3c0684 CharState::~CharState() (deleting destructor, vtable slot 0x04)
// Not written. The original stores the CharState vtable address point (_ZTV9CharState + 8, the value of off_9663A8)
// and then calls CustomFree(this). The compiler emits the deleting destructor from the virtual destructor above, and
// a C++ delete expression runs it and frees the storage, so no body is written here.
