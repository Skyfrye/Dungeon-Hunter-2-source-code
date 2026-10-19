// Companion of batch g1-game-items-save-pack3-27fb18-0: the Property constructor (0x399a88). It has no other dependency,
// so the test links this file alone.
// Layout and declarations come from dh2/Property.hpp.

#include "dh2/Property.hpp"

// 0x399a88 Property::Property(char const*, void*, void*)
// The listing stores the vptr (compiler generated here), then the two words at +0x18 and +0x1c, each the address of the
// name at +0x08, then copies the name and stores end - begin at +0x04.
// PARTIAL: the words at +0x18 and +0x1c are not written. dh2/Property.hpp declares no member there (the name string covers
// +0x08 .. +0x1f), so they wait on a layout decision. The m_offset and m_name stores follow the listing.
Property::Property(const char* name, void* begin, void* end)
    : m_offset(static_cast<std::int32_t>(static_cast<char*>(end) - static_cast<char*>(begin))),  // +0x04
      m_name(name) {}                                                                          // +0x08
