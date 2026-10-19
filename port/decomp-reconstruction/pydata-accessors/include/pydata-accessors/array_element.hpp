#pragma once

// Element base of the Arrays::X tables (see NOTES.md, "Arrays element ABI" and "Element tables"). An element is a
// polymorphic record whose vptr is at +0x0. Vtable slots: 0 = D1, 1 = D0, 2 = finalize (+0x8),
// 3 = read (+0xc). Tables no longer go through this base: element_table.hpp builds, reads and destroys them
// through the concrete Structs::X class and a typed pointer (the stride of a host table is sizeof(Elem); the
// 32-bit stride of the original is only the stride word of the block). Structs::LangSheet still derives from it.
#include <cstdint>

#include "pydata-accessors/deps/stream_reader.hpp"

namespace pydata {

class ArrayElement {
public:
    virtual ~ArrayElement() = default;
    virtual void finalize() = 0;               // vtable +0x8
    virtual void read(IStreamBase* stream) = 0;  // vtable +0xc
};

}  // namespace pydata
