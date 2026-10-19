// Property: one named, typed member of a PropertyMap class. SimpleTypeProperty<T> derives from it and keeps the typed
// default value after this base. Every virtual takes the owning object, and the value lives at object + m_offset.
// Original 32-bit size 0x20 (32): vptr, m_offset, then the name string (0x18 bytes). The vtable is 32 bytes, offset-to-top,
// typeinfo, and six pure slots. It has no destructor slot.
// Reconstructed from libDungeonHunter2.so pseudocode: ctor 0x399a88, and the SimpleTypeProperty<int> overrides that fill
// the slots (ToString 0x38bac4, FromString 0x38baac, IsDefaultValue 0x38ae00, SetToDefaultValue 0x38ae1c,
// SetDefaultValueFromString 0x38ba94, Clone 0x38c08c).
#pragma once

#include <cstdint>
#include <string>

class Property {
public:
    // begin is the owning object and end is the member's address, so m_offset = end - begin.
    Property(const char* name, void* begin, void* end);                 // 0x399a88

    // Pure virtuals, in vtable order (slot N sits at the address point plus 4N). Override slots of SimpleTypeProperty<T>.
    virtual std::string ToString(void* object) = 0;                     // slot 0 (+0x00): 0x38bac4 for SimpleTypeProperty<int>
    virtual int FromString(void* object, const char* text) = 0;         // slot 1 (+0x04): 0x38baac
    virtual bool IsDefaultValue(void* object) = 0;                      // slot 2 (+0x08): 0x38ae00
    virtual void SetToDefaultValue(void* object) = 0;                   // slot 3 (+0x0c): 0x38ae1c
    virtual int SetDefaultValueFromString(const char* text) = 0;        // slot 4 (+0x10): 0x38ba94
    virtual Property* Clone() = 0;                                      // slot 5 (+0x14): 0x38c08c

    // Vptr at +0x00.
    std::int32_t m_offset;                                              // +0x04 byte offset of the member in the owning object
    std::string m_name;                                                 // +0x08 property name (24 bytes in the original). PropertyMap::SavePropertiesToXML (0x5134f0)
                                                                        //       reads a char* at +0x1c as the attribute name; +0x1c lies inside this string, so the
                                                                        //       string layout must be confirmed before SetAttribute is wired (no member can sit at +0x1c).
};
