// Bodies for the STLport allocation machinery declared in core-platform/stlport_alloc.hpp.
// Every function carries its original ELF address and the listing it came from.
#include "core-platform/stlport_alloc.hpp"

namespace std {

// The engine's heap as STLport's __node_alloc_impl keeps it: one bucket per 8-byte size class, the current
// chunk, and the running heap size. Only blocks of 0x80 bytes or fewer reach this pool.
void* __node_alloc_impl::_S_free_list[16] = {};
char* __node_alloc_impl::_S_start_free = nullptr;
char* __node_alloc_impl::_S_end_free = nullptr;
std::size_t __node_alloc_impl::_S_heap_size = 0;

namespace {
// The original guards the pool with std::_Node_Alloc_Lock (_S_Mutex, the object _M_deallocate loads at
// 0x8b623a and 0x8b6398's path loads at 0x8b63bc); a std::mutex has the same effect here.
std::mutex& SNodeAllocMutex() {
    static std::mutex s_mutex;
    return s_mutex;
}
}  // namespace

// 0x8b6264 char* std::__node_alloc_impl::_S_chunk_alloc(unsigned int __n, int& __nobjs)
// Walked instruction by instruction from the listing. At 0x8b62ea the body loads __nobjs, sets
// __bytes_left = _S_end_free - _S_start_free and __total_bytes = __n * __nobjs, then branches:
//   * __bytes_left == 0 (0x8b62f2)        -> the pool has no chunk at all; go to the grow path.
//   * __total_bytes > __bytes_left (0x8b62f8 BHI 0x8b6298), i.e. not even one object fits: the remainder is
//     pushed onto the free list of its own size class (0x8b6298..0x8b62bc: `SUBS R0,R0,#1; LSRS R7,R7,#3;
//     LSLS R7,R7,#2`, then *_S_free_list[bucket] = old head and head = _S_start_free), _S_start_free and
//     _S_end_free are both set to 0, and the fault falls into the grow path.
//   * __bytes_left >= __n but < __total_bytes (0x8b6298 CMP/BCS 0x8b6310): __nobjs = __bytes_left / __n and
//     the returned chunk is the old _S_start_free, whose value _S_start_free is advanced past at 0x8b62fa
//     (`ADDS R2, R0, R2` with R0 = chunk and R2 = __nobjs * __n - the scaled sum, not the chunk).
//   * __bytes_left >= __total_bytes: the whole request comes out of the current chunk and _S_start_free
//     advances by __total_bytes.
// The grow path (0x8b62be..0x8b62e8) computes
//     __bytes_to_get = 2 * __total_bytes + ((_S_heap_size + 7) & ~7)
// allocates it with __malloc_alloc::allocate, then sets _S_start_free = the new block,
// _S_heap_size += __bytes_to_get >> 4, _S_end_free = new block + __bytes_to_get, and re-enters itself
// (0x8b62d2 `B off_8B688C+2`, a tail branch to the function's own entry after the LR is set to 0x8b62d4).
char* __node_alloc_impl::_S_chunk_alloc(unsigned int __n, int& __nobjs) {
    for (;;) {
        std::size_t __total_bytes = static_cast<std::size_t>(__n) * static_cast<std::size_t>(__nobjs);
        const std::size_t __bytes_left = static_cast<std::size_t>(_S_end_free - _S_start_free);

        if (__bytes_left == 0) {
            // Nothing in the pool: grow, then serve the doubled request from the new chunk.
        } else if (__total_bytes <= __bytes_left) {
            char* __chunk = _S_start_free;
            _S_start_free += __total_bytes;
            return __chunk;
        } else {
            if (__bytes_left < __n) {
                // Smaller than one object: the remainder is parked in the free list of its own rounded size
                // class with a null link (the three stores at 0x8b62aa..0x8b62bc), and the pool is emptied.
                const std::size_t __bucket = (__bytes_left - 1) / 8;
                _S_free_list[__bucket] = _S_start_free;
                *reinterpret_cast<void**>(_S_start_free) = nullptr;
                _S_start_free = nullptr;
                _S_end_free = nullptr;
            } else {
                __nobjs = static_cast<int>(__bytes_left / __n);
                char* __chunk = _S_start_free;
                _S_start_free = __chunk + static_cast<std::size_t>(__nobjs) * __n;
                return __chunk;
            }
        }

        // Grow path: double the request, add the aligned heap-size step, and take a fresh block.
        const std::size_t __bytes_to_get =
            2 * __total_bytes + ((_S_heap_size + 7) & ~static_cast<std::size_t>(7));
        char* __new_block = static_cast<char*>(CustomAlloc(static_cast<unsigned>(__bytes_to_get)));
        _S_start_free = __new_block;
        _S_heap_size += __bytes_to_get >> 4;
        _S_end_free = __new_block + __bytes_to_get;
        __nobjs *= 2;
        // the listing re-enters the function for the doubled request; the loop is that re-entry
    }
}

// 0x8b6340 void* std::__node_alloc_impl::_S_refill(unsigned int __n)
// The listing asks for 0x14 objects (`MOVS R3,#0x14; STR R3,[SP,#0xC+var_8]`) and exits at 0x8b638c when
// __nobjs came back as 1 (0x8b6356 `CMP R3,#1; BEQ`), returning the chunk untouched. Otherwise the bucket
// (__n - 1) / 8 is set to the chunk's second object (0x8b6366 `ADDS R3, R0, __n`, 0x8b6368 `STR R3,[R2]`),
// the counter is set to __nobjs - 2 and the objects are threaded: the object at __next_obj gets
// __next_obj + __n in its first word (0x8b6378/0x8b637a), then the counter drops by one and the loop
// repeats until it is zero, at which point the last object's first word is set to 0 (0x8b6388 `MOVS R2,#0;
// STR R2,[__next_obj]`). The chunk itself is the function's return value.
void* __node_alloc_impl::_S_refill(unsigned int __n) {
    int __nobjs = 0x14;
    char* __chunk = _S_chunk_alloc(__n, __nobjs);
    if (__nobjs == 1) {
        return __chunk;
    }
    void** __my_free_list = &_S_free_list[(static_cast<std::size_t>(__n) - 1) / 8];
    char* __next_obj = __chunk + __n;
    *__my_free_list = __next_obj;    int __count = __nobjs - 2;
    while (__count > 0) {
        char* __current = __next_obj;
        __next_obj += __n;
        *reinterpret_cast<char**>(__current) = __next_obj;
        --__count;
    }
    *reinterpret_cast<char**>(__next_obj) = nullptr;
    return __chunk;
}

// 0x8b6398 void* std::__node_alloc_impl::_M_allocate(unsigned int& __n)
// The listing rounds the request up to a multiple of 8 first (0x8b63a4 `ADDS R7,#7`, 0x8b63a6 `BICS R7,R3`
// with R3 = 7) and writes the rounded value back through the reference (0x8b63ac `STR R7,[__n]`), then takes
// the bucket for it (0x8b63b2 `LSRS R7,R7,#3; LSLS R7,R7,#2`). A non-empty bucket is popped and returned;
// an empty one goes to _S_refill. The pool lock is held across the bucket update.
void* __node_alloc_impl::_M_allocate(unsigned int& __n) {
    __n = (__n + 7) & ~7u;
    const std::size_t __bucket = (static_cast<std::size_t>(__n) - 1) / 8;
    std::lock_guard<std::mutex> __lock(SNodeAllocMutex());
    void* __result = _S_free_list[__bucket];
    if (__result != nullptr) {
        _S_free_list[__bucket] = *static_cast<void**>(__result);
        return __result;
    }
    return _S_refill(__n);
}

// 0x8b6224 void std::__node_alloc_impl::_M_deallocate(void* __p, unsigned int __n)
// The bucket is computed from the same `(n - 1) / 8` (0x8b622a `SUBS R5,__n,#1; LSRS R5,R5,#3; LSLS
// R5,R5,#2`), then the block is pushed: a lock is taken, the block's first word takes the bucket's current
// head (0x8b6234 `STR R0,[__result]` where __result is the bucket slot's target) and the bucket takes the
// block (0x8b6236 `LDR __result,[R1]` then 0x8b6238 `STR R2,[__my_free_list]`). No size is re-rounded and
// nothing is returned to the OS. __node_alloc never sends a size above 0x80, and 0x88 rounded is 0x88, so
// the bucket index stays inside the 16-entry array for every size that reaches here.
void __node_alloc_impl::_M_deallocate(void* __p, std::size_t __n) {
    const std::size_t __bucket = (__n - 1) / 8;
    std::lock_guard<std::mutex> __lock(SNodeAllocMutex());
    *static_cast<void**>(__p) = _S_free_list[__bucket];
    _S_free_list[__bucket] = __p;
}

// 0x313994 / 0x8b63f4 void* std::__node_alloc::_M_allocate(unsigned int& __n)
// The dispatcher: 0x313998 `CMP R3,#0x80; BHI` - blocks above 0x80 bytes go to CustomAlloc with the size
// unchanged, everything else to the pool, which writes the rounded size back through __n.
void* __node_alloc::_M_allocate(unsigned int& __n) {
    if (__n > 0x80) {
        return CustomAlloc(__n);
    }
    return __node_alloc_impl::_M_allocate(__n);
}

// 0x31bb44 / 0x8b625c void std::__node_alloc::_M_deallocate(void* __p, unsigned int __n)
// The mirror: 0x31bb44 `CMP R1,#0x80; BHI CustomFree`, else the pool.
void __node_alloc::_M_deallocate(void* __p, std::size_t __n) {
    if (__n > 0x80) {
        CustomFree(__p);
        return;
    }
    __node_alloc_impl::_M_deallocate(__p, __n);
}

}  // namespace std
