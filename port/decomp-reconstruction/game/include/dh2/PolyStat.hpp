// PolyStat: only its destructor is queued so far. The destructor reads two words: +0x00 is compared
// with the buffer begin (as an end address) and +0x14 is the buffer begin. It frees the buffer unless
// the begin points back at the object. No vtable and no constructor are recovered.
// Original 32-bit size not recovered (no operator new size in class-facts). The destructor is
// 0x5102e8 (D1 only; no D0 or D2 queued).
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x5102e8).
#pragma once

#include <cstdint>

class PolyStat {
public:
    // DBG_TraceSceneNodePolyStats (core-platform/src/ok3-global.cpp) builds one per mesh node: the node's parent name in the
    // string below, and the polygon count. The original builds the STLport string inline (_M_range_initialize) and copies
    // it with std::priv::__ucopy<PolyStat*, PolyStat*, int> (0x5e... string copies). The port keeps the destructor's view of
    // the string: +0x00 the end of the buffer, +0x14 the buffer begin; the buffer is always a heap block of more than 0x80 bytes
    // (CustomFree in the destructor), where the original keeps names under 16 characters inline.
    PolyStat(const char* name, int polyCount);
    PolyStat(const PolyStat& other);
    PolyStat& operator=(const PolyStat& other);
    ~PolyStat();                                                    // 0x5102e8 (D1)

    // Only the words the destructor reads are named. The bytes between them are not touched by it.
    void* unk_00;                                                   // +0x00 read by the destructor as the end address of the buffer
    uint8_t pad_04[0x10];                                           // +0x04 .. +0x13 not recovered
    void* unk_14;                                                   // +0x14 buffer begin; freed by the destructor unless it equals this
    int m_polyCount;                                                // +0x18 the node's polygon count (DBG_TraceSceneNodePolyStats stores it after the string)
};
