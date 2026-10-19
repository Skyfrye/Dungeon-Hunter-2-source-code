// glitch::core::SSharedString: the reference-counted handle an engine object holds for an interned
// string, i.e. the word every other header in this tree types as "shared-string handle"
// (SParameterEntry::name, STechnique::name, CMaterial::m_name, the SIDedCollection parameter
// entries). Recovered from SSharedString::operator=(char const*) 0x5daf94, the only SSharedString
// member this tree has a listing for; the class is a single pointer in the original:
//   * the R0 of 0x5daf94 is `this` and the assignment stores into +0x00 (`LDR R0,[R4]; STR R3,[R4]`),
//   * every consumer reads that word as SSharedStringHeapEntry::SData* (operator= 0x5daf94 and
//     CMaterialRenderer::getParameterID 0x5d308c both compare/keep what SData::get returned, and the
//     name comparisons read the record's +0x04 text word),
// so the handle is one 4-byte record pointer in the original and one pointer here. Host width is the
// usual deviation for this subsystem (the port's SSharedStringData is the record).
//
// Operator= semantics come from the listing, exactly: get the record for the new text in its CREATE
// form (0x5daf94 passes R1 = 1), take a use on it, install it, then drop the old handle's use and run
// release (SData::release, last-use free) when that drop read zero.
//
// What this header deliberately does NOT add: no constructor from a string, no copy constructor, no
// destructor. The original has all of those somewhere, but this tree has no listing for them, and
// inventing their counting would be a guess; the listing for operator= is the whole recovered member.
// A consequence callers must respect, and the same one the original has: copying the handle copies the
// pointer and takes no use, so exactly one owner of a record must be dropped. What is declared here is
// what the reconstructed code needs.
#pragma once

#include "glitch-shared/shared_string_heap.hpp"

namespace glitch::core {

class SSharedString {
public:
    SSharedString() = default;
    // Wraps a record the caller already holds a use on (the original copies the handle word and takes no use: see above).
    explicit SSharedString(detail::SSharedStringData* data) : m_data(data) {}

    // 0x5daf94 _ZN6glitch4core13SSharedStringaSEPKc
    //
    // Interns `text` (create form: get-or-create plus commit 0x6a4cb8) and installs it as this
    // handle's record, releasing the record this handle held. A null or empty text interns nothing:
    // SData::get (0x6a5074) answers null for both, the listing's `SUBS R3,R0,#0` skips the use count
    // for a null result, and the handle then holds null. Returns *this as the original does
    // (`MOV R0,R4`).
    SSharedString& operator=(const char* text);

    // The interned record, or null. The handle owns a use on it; the text is
    // sharedStringText(data) and the use count is SSharedStringData::useCount.
    detail::SSharedStringData* data() const { return m_data; }

private:
    detail::SSharedStringData* m_data = nullptr;  // +0x00, SSharedStringHeapEntry::SData*
};

}  // namespace glitch::core
