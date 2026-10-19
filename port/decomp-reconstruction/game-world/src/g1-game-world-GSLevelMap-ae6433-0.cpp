// Batch g1-game-world-GSLevelMap-ae6433-0 (GSLevelMap, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// The C1/C2 constructor pair and the D1/D2 destructor pair have identical bodies, so each pair has one definition
// here. The scalar deleting destructor (D0) is compiler-generated and is not written.
#include "dh2/GSLevelMap.hpp"

#include "dh2/LevelMap.hpp"

// 0x3868e4 _ZN10GSLevelMapC1Ev
// 0x3868b8 _ZN10GSLevelMapC2Ev  (C2 variant, same body)
// Asm (C1 at 0x3868e4): stores -1 to +0x04, and the vtable address point to +0x00. The compiler writes the vptr
// from the class. The original never writes +0x08 (m_levelMap) here; the only instance is the function-local static
// in Inst, which is zero-filled storage, so the pointer reads as null before Ctor runs.
GSLevelMap::GSLevelMap() : m_levelId(-1) {}

// 0x386914 _ZN10GSLevelMapD1Ev
// 0x386910 _ZN10GSLevelMapD2Ev  (D2 variant, same body)
// Both are a bare return (asm: BX LR). The base StateBase::~StateBase (0x38324c) is also a bare return, so the base
// destructor call that the compiler inserts changes nothing. Unloading and deleting the LevelMap is done by Dtor, not here.
GSLevelMap::~GSLevelMap() {}

// 0x386938 _ZN10GSLevelMap4DrawEPK12StateMachine
// Asm: LDR R0,[R0,#8]; B LevelMap::Draw. Forwards to the LevelMap at m_levelMap (+0x08). The return value of
// LevelMap::Draw is discarded, since the slot is void.
void GSLevelMap::Draw(const StateMachine* /*machine*/) {
    m_levelMap->Draw();
}

// 0x386940 _ZN10GSLevelMap6UpdateEP12StateMachined
// Asm: LDR R0,[R0,#8]; B LevelMap::Update. Forwards to the LevelMap at m_levelMap (+0x08). Neither the StateMachine
// argument nor dt is read.
void GSLevelMap::Update(StateMachine* /*machine*/, double /*dt*/) {
    m_levelMap->Update();
}

// 0x386948 _ZN10GSLevelMap4DtorEPK12StateMachine
// Asm: calls LevelMap::Unload on m_levelMap unconditionally. Then, if the pointer is not null, it calls the
// LevelMap's virtual slot +0x04 (the deleting destructor, which is delete) and clears m_levelMap. Unload runs even
// when the pointer is null, as in the original. Dtor only runs after Ctor, so in practice the pointer is set.
void GSLevelMap::Dtor(const StateMachine* /*machine*/) {
    m_levelMap->Unload();
    if (m_levelMap != nullptr) {
        delete m_levelMap;
        m_levelMap = nullptr;
    }
}

// 0x386980 _ZN10GSLevelMap4CtorEPK12StateMachine
// Asm: operator new(8) with hint 0, LevelMap::LevelMap(m_levelId) on that storage, store the pointer to +0x08, then a
// tail call to LevelMap::Load. The new expression produces the allocation and the constructor call.
void GSLevelMap::Ctor(const StateMachine* /*machine*/) {
    m_levelMap = new LevelMap(m_levelId);  // operator new(8) in the original
    m_levelMap->Load();
}

// 0x3869b0 _ZN10GSLevelMap4InstEi
// The function-local static gsLevelMap (at 0x9A2670) is constructed on the first call (the guard variable at 0x9A266C
// and the atexit registration are the compiler's). On every call the argument is stored in the static's own m_levelId
// (+0x04), then the instance is returned. Asm: the store is after the guard check on both paths. STR R4,[vHalf+0x14]
// writes 0x9A2674, which is gsLevelMap+0x04, and ADD R0,R0,#0x10 returns 0x9A2670, so the function does
// gsLevelMap.m_levelId = levelId; return &gsLevelMap. Ctor reads the same field back (LDR R1,[R5,#4]).
GSLevelMap* GSLevelMap::Inst(int levelId) {
    static GSLevelMap gsLevelMap;
    gsLevelMap.m_levelId = levelId;
    return &gsLevelMap;
}

// 0x386a40 _ZN10GSLevelMapD0Ev
// Not written: compiler-generated scalar deleting destructor. Asm: BL D1 (0x386914), then BL CustomFree(this). A C++
// delete expression on a GSLevelMap produces it.
