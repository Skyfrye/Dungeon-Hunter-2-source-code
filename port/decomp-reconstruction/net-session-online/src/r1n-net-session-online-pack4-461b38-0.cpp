// Batch r1n-net-session-online-pack4-461b38-0: the tGLRoomInfo destructor. It is the only
// function of the batch with no body anywhere else. The other eleven already have bodies in
// their existing files, which were revised in place (see the ledger.d rows for their sources).
#include "net-session-online/tb/t_gl_room_info.hpp"

#include <cstdlib>
#include <cstring>

#include "net-transport/deps/byte_array.hpp"  // CustomFree (the engine allocator, std::free here)

// 0x82138c _ZN11tGLRoomInfoD1Ev (the D2 body is the same)
// Releases the name (+0x04), the second string (+0x08) and the attribute blob (+0x20), each
// with CustomFree and then nulled, and sets the blob length (+0x24) to 0. The original's
// frees are unconditional calls behind a non-null test, as written here.
tGLRoomInfo::~tGLRoomInfo() {
    if (name_ != nullptr) {
        CustomFree(name_);
        name_ = nullptr;
    }
    if (second_ != nullptr) {
        CustomFree(second_);
        second_ = nullptr;
    }
    if (attributes_ != nullptr) {
        CustomFree(attributes_);
        attributes_ = nullptr;
    }
    attributesLength_ = 0;
}

// Test seam (not in the original). The copy is allocated with malloc, matching CustomFree.
void tGLRoomInfo::SetNameForTest(const char* name) {
    if (name_ != nullptr) {
        CustomFree(name_);
        name_ = nullptr;
    }
    if (name != nullptr) {
        const std::size_t length = std::strlen(name);
        name_ = static_cast<char*>(std::malloc(length + 1));
        std::memcpy(name_, name, length + 1);
    }
}
