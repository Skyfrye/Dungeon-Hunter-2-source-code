// vox::SAllocator: the allocator of the vox engine's strings and containers (STLPORT-DECISION.md section 6, step 3).
//
// The original names it in the mangled symbols of the string comparators, CZipReader::deletePathFromFilename and the
// native sub-decoder constructors: std::basic_string<char, char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0>>,
// std::vector<std::vector<int, SAllocator<int,0>>, SAllocator<std::vector<int, ...>, 0>> and
// std::map<VoxString, int, vox::StringCompare, vox::SAllocator<std::pair<VoxString const, int>, 0>>.
// Its allocation functions are the engine's VoxAlloc(size, hint) / VoxFree (vox/memory.hpp), which is what the
// vox string block routines call. It is empty and stateless, so no container changes size.
#pragma once

#include <cstddef>
#include <map>
#include <memory>
#include <string>
#include <vector>

#include "vox-audio/vox/memory.hpp"

namespace vox {

template <typename T, VoxMemHint H = kVoxMemHintDefault>
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
        using other = SAllocator<U, H>;
    };

    SAllocator() noexcept = default;
    template <class U>
    SAllocator(const SAllocator<U, H>&) noexcept {}

    pointer allocate(size_type n) { return static_cast<pointer>(VoxAlloc(n * sizeof(T), H)); }
    void deallocate(pointer p, size_type = 0) { VoxFree(p); }
};

template <typename T, VoxMemHint I, typename U, VoxMemHint J>
inline bool operator==(const SAllocator<T, I>&, const SAllocator<U, J>&) noexcept {
    return I == J;
}
template <typename T, VoxMemHint I, typename U, VoxMemHint J>
inline bool operator!=(const SAllocator<T, I>&, const SAllocator<U, J>&) noexcept {
    return I != J;
}

// Spellings of the original's types (it has no aliases for them; these only shorten the declarations).
using VoxString = std::basic_string<char, std::char_traits<char>, SAllocator<char> >;
template <typename T>
using VoxVector = std::vector<T, SAllocator<T> >;
template <typename K, typename V, typename Compare>
using VoxMap = std::map<K, V, Compare, SAllocator<std::pair<const K, V> > >;

}  // namespace vox
