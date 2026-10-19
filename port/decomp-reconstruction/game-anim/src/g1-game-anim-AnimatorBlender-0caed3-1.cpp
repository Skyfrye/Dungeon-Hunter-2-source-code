// Batch g1-game-anim-AnimatorBlender-0caed3-1 (AnimatorBlender, part 2 of 2).
// The batch holds one function, the deleting destructor D0. It has no body of its own here.

#include "dh2/AnimatorBlender.hpp"

// 0x367284 _ZN15AnimatorBlenderD0Ev (AnimatorBlender::~AnimatorBlender(), deleting destructor D0)
// skipped: compiler-generated deleting destructor. The original body is two calls: the complete-object
// destructor D1 at 0x36720c (AnimatorBlender::~AnimatorBlender(this), asm verified with BL) and
// CustomFree(this) (_Z10CustomFreePv). The C++ compiler emits this shape for the virtual
// ~AnimatorBlender() declared in dh2/AnimatorBlender.hpp, and `delete` on an AnimatorBlender runs the
// destructor and then the deallocation, so no body is written. The port's delete uses the default
// operator delete, not CustomFree.
