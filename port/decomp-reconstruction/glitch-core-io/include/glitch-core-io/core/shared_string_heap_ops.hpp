// glitch::core::detail::SSharedStringHeapEntry::SData::get (0x6a5074) and
// SSharedStringHeapEntry::SData::release (0x6a4d9c) over the table layout in
// shared_string_heap.hpp.
//
// The table is passed explicitly: the original reads the anonymous-namespace global SharedStringHeap
// (ELF 0x9f765c, allocated by initSharedStringHeap 0x6a5538). The port's one table is reached through
// glitch::core::sharedStringHeapTable() (declared and explained in glitch-shared/shared_string_heap.hpp,
// defined in src/shared_string_heap.cpp next to initSharedStringHeap), and the two functions below are
// called with it, so reinterning a name and committing/releasing it always reach the same table.
#pragma once

#include "glitch-core-io/core/shared_string_heap.hpp"

namespace glitch::core::detail {

// 0x6a5074 _ZN6glitch4core6detail22SSharedStringHeapEntry5SData3getEPKcb
//
// Interns a text and returns its record. `noSideEffect` true is the original's `get(text, false)`:
// a pure lookup, which returns null when the text is not already interned. `noSideEffect` false is
// `get(text, true)`: get-or-create plus commit (0x6a4cb8), the form SSharedString::operator=
// (0x5daf94) uses. A null text and an empty text both return null.
//
// The returned record's use count is NOT touched here, exactly as in the listing: a record get returns
// - found or freshly committed - arrives with whatever count it had, and a caller that keeps the
// pointer takes the use itself (`++data->useCount`, which is what operator= 0x5daf94 does and what
// CMaterialRenderer::getParameterID 0x5d308c does for its temporary). See the use-count note in
// shared_string_heap.hpp. Returns non-null only with a committed record whose text() is the interned
// text.
SSharedStringData* getSharedString(SSharedStringHeapTable& table, const char* text, bool noSideEffect);

// 0x6a4d9c _ZN6glitch4core6detail22SSharedStringHeapEntry5SData7releaseEPS3_
//
// The original's LAST-USE operation, not its decrement: it unlinks the record from its bucket, drops
// the table size, moves the cursor when its bucket emptied, and frees the record and its chain node
// unconditionally. A caller runs it once its own decrement of SSharedStringData::useCount read zero
// (operator= 0x5daf94's BNE, getParameterID 0x5d308c's BEQ) - so calling it while another handle still
// owns the record drops that handle's record, which is the same contract the original has. The two
// bodies that free a record (release here, the SIDedCollection value traits for the
// SShaderParameterDef entries) must do that drop first.
void releaseSharedString(SSharedStringHeapTable& table, SSharedStringData* data);

// The two operations above on the process-wide table, emitted under the original symbols (the binary's are static members of the nested
// class SSharedStringHeapEntry::SData: get(const char*, bool create) and release(SData*)). The port's record type is
// SSharedStringData, so the original names are given by assembler labels on these free functions (decision 10).
SSharedStringData* sharedStringDataGet(const char* text, bool create) asm("_ZN6glitch4core6detail22SSharedStringHeapEntry5SData3getEPKcb");
void sharedStringDataRelease(SSharedStringData* data) asm("_ZN6glitch4core6detail22SSharedStringHeapEntry5SData7releaseEPS3_");

// 0x6a5538 _ZN6glitch4core6detail12_GLOBAL__N_120initSharedStringHeapEb
//
// The original's init step in both directions over the process-wide table: true creates the table at
// its initial state (operator new(0x24), maxLoadFactor 1.0f, the initial prime, the bucket array with
// its end sentinel, cursor, size and the ceil threshold at +0x0c), false tears it down - the bucket
// chains and array first, with the "Shared string objects not properly cleaned up" warning at
// ELL_ERROR when records are still in the table (0x6a569c). The port's table is created on first use by
// sharedStringHeapTable(), so calling this is not required before the first lookup; it is the direct
// form of both directions, which the original reaches through glitch::registerInitStep 0x6a54d0 (that
// registration is not in the port - see its ledger row). A caller that resets the table must hold no
// records across the call (see the teardown note in the .cpp).
void initSharedStringHeap(bool initialize);

// 0x6a54d0 _ZN6glitch4core6detail24registerSharedStringHeapInitEv: registers initSharedStringHeap with glitch::registerInitStep, once.
int registerSharedStringHeapInit();

}  // namespace glitch::core::detail
