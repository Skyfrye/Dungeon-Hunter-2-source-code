// Guard-page heap for the debug runner (dh2_win_headless_ph): a stand-in for AddressSanitizer, which the MinGW GCC of this machine does not ship.
// Every allocation gets its own pages with the block flush against the END of the committed range and a NOACCESS page behind it, so a write or
// read past the end faults on the exact instruction; a freed block is decommitted (never reused), so any use after free faults too. The crash filter
// of the runner prints the faulting address and a backtrace (file addresses, addr2line -f -C -e dh2_win_headless_ph.exe).
// operator new/delete are replaced here; malloc/calloc/realloc/free are reached through the linker option --wrap (see CMakeLists.txt), and pointers that
// did not come from this arena (the C runtime's own allocations, strdup results) are handed to the real functions.
#include <windows.h>

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>

extern "C" {
void* __real_malloc(size_t);
void* __real_calloc(size_t, size_t);
void* __real_realloc(void*, size_t);
void __real_free(void*);
}

namespace {

constexpr size_t kPage = 4096;
constexpr size_t kArenaBytes = size_t(1) << 41;   // 2 TiB of address space, committed one block at a time
constexpr unsigned kMagicLive = 0x50474c56u;       // "PGLV"
constexpr unsigned kMagicFree = 0x50474652u;       // "PGFR"

struct Header {
    unsigned magic;
    unsigned pages;       // committed pages of the block (not counting the guard)
    size_t size;          // requested size
    char* base;           // first page of the block
    size_t serial;        // index into the record ring
};
static_assert(sizeof(Header) == 32, "header size");

struct Rec {
    char* base;
    size_t pages, size;
    void* allocStack[10];
    void* freeStack[10];
    unsigned nAlloc, nFree;
    bool freed;
};
constexpr size_t kRing = size_t(1) << 20;
Rec* g_ring = nullptr;
size_t g_serial = 0;

char* g_arena = nullptr;
size_t g_next = 0;
CRITICAL_SECTION g_lock;
bool g_init = false;
size_t g_live = 0, g_liveBytes = 0, g_total = 0;

void init() {
    if (g_init) return;
    InitializeCriticalSection(&g_lock);
    g_ring = static_cast<Rec*>(VirtualAlloc(nullptr, kRing * sizeof(Rec), MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE));
    g_arena = static_cast<char*>(VirtualAlloc(reinterpret_cast<void*>(0x100000000000ULL), kArenaBytes, MEM_RESERVE, PAGE_NOACCESS));   // fixed address: runs are reproducible
    if (g_arena == nullptr) g_arena = static_cast<char*>(VirtualAlloc(nullptr, kArenaBytes, MEM_RESERVE, PAGE_NOACCESS));
    if (g_arena == nullptr) {
        std::fputs("[pageheap] cannot reserve the arena\n", stderr);
        std::abort();
    }
    g_init = true;
}

bool owns(const void* p) { return g_arena != nullptr && static_cast<const char*>(p) >= g_arena && static_cast<const char*>(p) < g_arena + kArenaBytes; }

void* allocate(size_t size) {
    if (!g_init) init();
    const size_t rounded = (size + 15) & ~size_t(15);
    const size_t pages = (rounded + sizeof(Header) + kPage - 1) / kPage;
    EnterCriticalSection(&g_lock);
    char* base = g_arena + g_next;
    g_next += (pages + 1) * kPage;   // the page after the block stays reserved and NOACCESS: the guard
    ++g_live;
    g_liveBytes += size;
    const size_t serial = g_serial++;
    ++g_total;
    LeaveCriticalSection(&g_lock);
    if (g_next >= kArenaBytes || VirtualAlloc(base, pages * kPage, MEM_COMMIT, PAGE_READWRITE) == nullptr) {
        std::fprintf(stderr, "[pageheap] out of memory for %zu bytes (live %zu blocks, %zu bytes)\n", size, g_live, g_liveBytes);
        return nullptr;
    }
    char* user = base + pages * kPage - rounded;
    Header* h = reinterpret_cast<Header*>(user - sizeof(Header));
    h->magic = kMagicLive;
    h->pages = static_cast<unsigned>(pages);
    h->size = size;
    h->base = base;
    h->serial = serial;
    Rec& r = g_ring[serial & (kRing - 1)];
    r.base = base;
    r.pages = pages;
    r.size = size;
    r.nAlloc = RtlCaptureStackBackTrace(2, 10, r.allocStack, nullptr);
    r.nFree = 0;
    r.freed = false;
    // DH2_PH_FILL=<byte>: new blocks are filled with that byte (e.g. 0xbe, like ASan), so reads of members no constructor wrote show up.
    static const int fill = [] {
        const char* v = std::getenv("DH2_PH_FILL");
        return v ? static_cast<int>(std::strtol(v, nullptr, 0)) : -1;
    }();
    if (fill >= 0) std::memset(user, fill, size);
    return user;
}

void release(void* p) {
    Header* h = reinterpret_cast<Header*>(static_cast<char*>(p) - sizeof(Header));
    if (h->magic == kMagicFree) {
        std::fprintf(stderr, "[pageheap] double free of %p\n", p);
        std::abort();
    }
    if (h->magic != kMagicLive) {
        std::fprintf(stderr, "[pageheap] free of %p: header damaged (underrun or wrong pointer)\n", p);
        std::abort();
    }
    h->magic = kMagicFree;
    {
        Rec& r = g_ring[h->serial & (kRing - 1)];
        if (r.base == h->base) {
            r.nFree = RtlCaptureStackBackTrace(2, 10, r.freeStack, nullptr);
            r.freed = true;
        }
    }
    EnterCriticalSection(&g_lock);
    --g_live;
    g_liveBytes -= h->size;
    LeaveCriticalSection(&g_lock);
    VirtualFree(h->base, static_cast<SIZE_T>(h->pages) * kPage, MEM_DECOMMIT);
}

size_t sizeOf(void* p) { return reinterpret_cast<Header*>(static_cast<char*>(p) - sizeof(Header))->size; }

void* newImpl(size_t n) {
    void* p = allocate(n == 0 ? 1 : n);
    if (p == nullptr) throw std::bad_alloc();
    return p;
}

}  // namespace

extern "C" {
void* __wrap_malloc(size_t n) { return allocate(n == 0 ? 1 : n); }
void* __wrap_calloc(size_t a, size_t b) {
    void* p = allocate(a * b == 0 ? 1 : a * b);
    if (p) std::memset(p, 0, a * b);
    return p;
}
void __wrap_free(void* p) {
    if (p == nullptr) return;
    if (owns(p)) release(p);
    else __real_free(p);
}
void* __wrap_realloc(void* p, size_t n) {
    if (p == nullptr) return allocate(n == 0 ? 1 : n);
    if (!owns(p)) return __real_realloc(p, n);
    if (n == 0) {
        release(p);
        return nullptr;
    }
    void* q = allocate(n);
    if (q == nullptr) return nullptr;
    const size_t old = sizeOf(p);
    std::memcpy(q, p, old < n ? old : n);
    release(p);
    return q;
}
}

void* operator new(size_t n) { return newImpl(n); }
void* operator new[](size_t n) { return newImpl(n); }
void* operator new(size_t n, const std::nothrow_t&) noexcept { return allocate(n == 0 ? 1 : n); }
void* operator new[](size_t n, const std::nothrow_t&) noexcept { return allocate(n == 0 ? 1 : n); }
void* operator new(size_t n, std::align_val_t) { return newImpl(n); }
void* operator new[](size_t n, std::align_val_t) { return newImpl(n); }
void operator delete(void* p) noexcept { __wrap_free(p); }
void operator delete[](void* p) noexcept { __wrap_free(p); }
void operator delete(void* p, size_t) noexcept { __wrap_free(p); }
void operator delete[](void* p, size_t) noexcept { __wrap_free(p); }
void operator delete(void* p, const std::nothrow_t&) noexcept { __wrap_free(p); }
void operator delete[](void* p, const std::nothrow_t&) noexcept { __wrap_free(p); }
void operator delete(void* p, std::align_val_t) noexcept { __wrap_free(p); }
void operator delete[](void* p, std::align_val_t) noexcept { __wrap_free(p); }
void operator delete(void* p, size_t, std::align_val_t) noexcept { __wrap_free(p); }
void operator delete[](void* p, size_t, std::align_val_t) noexcept { __wrap_free(p); }

// Called by the runner's crash filter: if the faulting address lies in a block of this heap, print the block and where it was allocated and freed
// (RVAs, symbolize with host-runner/symbolize.py after copying the lines into a log, or read them straight from the runner log).
extern "C" void dh2_pageheap_report(unsigned long long addr, void (*print)(const char*, ...), unsigned long long moduleBase) {
    if (!g_init || !g_ring) return;
    for (size_t i = 0; i < kRing; ++i) {
        const Rec& r = g_ring[i];
        if (r.base == nullptr) continue;
        const unsigned long long lo = reinterpret_cast<unsigned long long>(r.base);
        const unsigned long long hi = lo + (r.pages + 1) * kPage;
        if (addr < lo || addr >= hi) continue;
        print("[heap] address 0x%llx is in a %s block of %zu bytes (%s)\n", addr, r.freed ? "FREED" : "live", r.size,
              addr >= hi - kPage ? "in the guard page behind it: overrun" : (r.freed ? "use after free" : "inside"));
        for (unsigned k = 0; k < r.nAlloc; ++k) print("[heap] alloc #%u rva 0x%llx\n", k, reinterpret_cast<unsigned long long>(r.allocStack[k]) - moduleBase);
        for (unsigned k = 0; k < r.nFree; ++k) print("[heap] free #%u rva 0x%llx\n", k, reinterpret_cast<unsigned long long>(r.freeStack[k]) - moduleBase);
        return;
    }
}
