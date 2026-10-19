// Batch g1-game-items-save-Reward-c7d765-0 (owner Reward, part 1 of 1).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. The layout and the method
// declarations are dh2/Reward.hpp. The m_pyData row is Structs::v2QuestRewardStub (pydata-accessors).
//
// Notes:
//  * The process singleton is ApplicationGetInstance(). The listing reads Singleton<Application>::s_inst at +0x2c
//    (m_pyDataConstants, dword_99F758 in the listing). The constructor and the trace both read it.
//  * C1 (0x482ca0) and C2 (0x482d10) have the same body, and so do D1 (0x4828ec) and D2 (0x4828e8). Each pair has one
//    definition below. The scalar deleting destructor (D0, 0x482b8c) is compiler generated: the original is ~Reward
//    followed by CustomFree(this). No body is written (see the ledger).
//  * Compile (0x482870) is a bare `bx lr`. r0 still holds this on return, so the result is this, the value the
//    header declares. The pseudocode prints void.
//  * The constructor writes m_type (+0x04), m_compiled (+0x08), m_pyData (+0x0c) and m_owner (+0x10). It does not write
//    m_compiledStub (+0x14), so it is not set here either.
//  * __sFILE is the libc FILE on the target. The host FILE is another type, so the stream is converted to std::FILE*
//    with reinterpret_cast before fwrite and fprintf, as Objective does.

#include "dh2/Reward.hpp"

#include <cstdio>

#include "dh2/Application.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// 0x482ca0 _ZN6RewardC1Ev (C1). C2 at 0x482d10 has the same body. The vtable store is compiler generated.
// The listing loads dword_99F758 (PyDataConstants) from the singleton, calls getConstant("v2QuestRewardType",
// "Invalid") and stores the result, then clears m_compiled, m_pyData and m_owner.
Reward::Reward()
    : m_type(ApplicationGetInstance().m_pyDataConstants->getConstant("v2QuestRewardType", "Invalid")),  // +0x04
      m_compiled(false),  // +0x08
      m_pyData(nullptr),  // +0x0c
      m_owner(nullptr) {  // +0x10
}

// 0x4828ec _ZN6RewardD1Ev (D1). D2 at 0x4828e8 has the same body. The vtable store is compiler generated.
Reward::~Reward() {}

// 0x482b8c _ZN6RewardD0Ev is the scalar deleting destructor. Compiler generated: it calls ~Reward and then frees the
// object (the original calls CustomFree(this)). No body is written.

// 0x482870 _ZN6Reward7CompileEv. Empty (asm BX LR). r0 is unchanged, so the call returns this.
Reward* Reward::Compile() {
    return this;
}

// 0x482874 _ZN6Reward9GetParam1Ev. Returns the m_w2 word (+0x08) of the stub row (+0x0c). No null check, as the original.
int Reward::GetParam1() {
    return m_pyData->Param1;  // +0x0c row, +0x08 word
}

// 0x483278 _ZN6Reward34DBG_TraceDetailedRewardInformationEP7__sFILE
// Writes the 34-byte "Unimplemented Trace for reward" line with fwrite, then the Type line with
// PyDataConstants::getConstantName("v2QuestRewardType", m_type) through fprintf. Returns the fprintf count.
int Reward::DBG_TraceDetailedRewardInformation(__sFILE* s) {
    std::FILE* out = reinterpret_cast<std::FILE*>(s);
    static_cast<void>(std::fwrite("\t  Unimplemented Trace for reward\n", 1, 0x22, out));
    const char* constantName =
        ApplicationGetInstance().m_pyDataConstants->getConstantName("v2QuestRewardType", m_type);  // +0x04
    return std::fprintf(out, "\t    Type : %s\n\n", constantName);
}
