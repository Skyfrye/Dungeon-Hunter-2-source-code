// glitch::core::SAllocator and the string/vector spellings built on it (STLPORT-DECISION.md section 6, step 1).
//
// The original declares every glitch string and container with this allocator, not std::allocator:
//   glitch::core::stringc  = std::basic_string<char,    std::char_traits<char>,    SAllocator<char,    (E_MEMORY_HINT)0> >
//   glitch::core::stringw  = std::basic_string<wchar_t, std::char_traits<wchar_t>, SAllocator<wchar_t, (E_MEMORY_HINT)0> >
//   std::vector<T, glitch::core::SAllocator<T, (E_MEMORY_HINT)0> >
// (the mangled names of the ~100 ledger rows that carry it, e.g. 0x56c348 CFileSystem::getAbsolutePath(stringc const&),
// 0x597f50 ISceneNode::setName, 0x31d830 IAttribute::setArray, 0x58b728 CSceneManager::drawAll(vector<ISceneNode*, SAllocator> const&)).
//
// It lives here, in glitch-core-io, so that every engine category can name it (it was in core-platform's stlport_alloc.hpp,
// which still includes this header).
//
// Allocation route. The binary's string members call GlitchAlloc(size, hint 0) / GlitchFree from
// std::priv::_String_base<char, SAllocator<char,0>>::_M_allocate_block (0x3209a8) and ::_M_deallocate_block (0x56c2bc), which is the
// body of SAllocator<T,0>::allocate / deallocate that the vector and map instances inline. So allocate() is
// GlitchAlloc(n * sizeof(T), 0) and deallocate() is GlitchFree(p), exactly as the engine's memory hooks see them.
// The allocator is stateless and empty, so sizeof of every string and vector is unchanged.
#pragma once

#include <cstddef>
#include <memory>
#include <string>
#include <vector>

#include "glitch-core-io/core/memory_hint.hpp"  // glitch::memory::E_MEMORY_HINT

// The two entry points the allocator calls (core-platform/memory.hpp declares them with the same signatures; that header is not
// included here because it pulls in the engine's memory-hint and swf types, which some translation units must not see).
void GlitchFree(void* p);
void* GlitchAlloc(unsigned size, glitch::memory::E_MEMORY_HINT hint);

namespace glitch::core {

template <typename T, glitch::memory::E_MEMORY_HINT I = glitch::memory::EMH_UNRECOVERED>
struct SAllocator {
    using value_type = T;
    using pointer = T*;
    using const_pointer = const T*;
    using reference = T&;
    using const_reference = const T&;
    using size_type = std::size_t;
    using difference_type = std::ptrdiff_t;

    template <class U>
    struct rebind {
        using other = SAllocator<U, I>;
    };

    SAllocator() noexcept = default;
    template <class U>
    SAllocator(const SAllocator<U, I>&) noexcept {}

    pointer allocate(size_type __n) {
        return static_cast<pointer>(GlitchAlloc(static_cast<unsigned>(__n * sizeof(T)), I));
    }
    void deallocate(pointer __p, size_type = 0) { GlitchFree(__p); }
};

template <typename T, glitch::memory::E_MEMORY_HINT I, typename U, glitch::memory::E_MEMORY_HINT J>
inline bool operator==(const SAllocator<T, I>&, const SAllocator<U, J>&) noexcept {
    return I == J;
}
template <typename T, glitch::memory::E_MEMORY_HINT I, typename U, glitch::memory::E_MEMORY_HINT J>
inline bool operator!=(const SAllocator<T, I>&, const SAllocator<U, J>&) noexcept {
    return I != J;
}

// The original's typedefs (glitch/core/string.h).
using stringc = std::basic_string<char, std::char_traits<char>, SAllocator<char> >;
using stringw = std::basic_string<wchar_t, std::char_traits<wchar_t>, SAllocator<wchar_t> >;

// std::vector<T, SAllocator<T>>: the original has no alias for it; this one only shortens the declarations.
template <typename T>
using svector = std::vector<T, SAllocator<T> >;

// Copies between the engine string and the standard one (they are distinct types; the tree's own code mostly speaks std::string).
inline std::string to_std(const stringc& s) { return std::string(s.data(), s.size()); }
inline std::wstring to_std(const stringw& s) { return std::wstring(s.data(), s.size()); }
inline stringc to_stringc(const std::string& s) { return stringc(s.data(), s.size()); }
inline stringc to_stringc(const char* s) { return stringc(s); }
inline stringw to_stringw(const std::wstring& s) { return stringw(s.data(), s.size()); }

}  // namespace glitch::core
