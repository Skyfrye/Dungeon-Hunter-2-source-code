// Test for batch g1-game-app-DataReloaderManager-df2149-0. Covers the constructor, the two empty methods, the
// _MonitoredFiles destructor (block release order and the skip rules) and the DataReloaderManager destructor
// (element release order, null entries). This test links without core-platform, so CustomFree is replaced by a
// logging stub that frees with std::free. Exit status 0 means every check passed.
//
// The destructor at 0x339124 releases each block on one of TWO paths, and the test observes both. The size it
// computes is (end pointer) - (block pointer): above 0x80 bytes the release is CustomFree (0x339198 / 0x33918c),
// at 0x80 or below it is std::__node_alloc::_M_deallocate (0x339154 / 0x339180), which pools the block and never
// calls CustomFree. Since the release is size-dependent, a block reaches CustomFree only when it is larger than
// 0x80 bytes. The test therefore replaces both paths: CustomFree below, and the allocator's node release above,
// whose own body is stood in for here so it records the block instead of linking it into a free list.
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <new>
#include <vector>

#include "core-platform/memory.hpp"
#include "core-platform/stlport_alloc.hpp"
#include "dh2/DataReloaderManager.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Every pointer passed to CustomFree by the code under test, in call order.
std::vector<void*> g_freed;

// Every (block, size) pair handed to the small-block pool by the code under test, in call order.
std::vector<void*> g_pooled;
std::vector<std::size_t> g_pooledSizes;

// Allocates a _MonitoredFiles with malloc (CustomFree frees with std::free) and clears its pointers.
DataReloaderManager::_MonitoredFiles* NewFiles() {
    void* mem = std::malloc(sizeof(DataReloaderManager::_MonitoredFiles));
    auto* files = new (mem) DataReloaderManager::_MonitoredFiles();
    files->unk_04 = nullptr;
    files->unk_18 = nullptr;
    files->unk_1c = nullptr;
    files->unk_30 = nullptr;
    return files;
}

// A block whose computed size, (end pointer) - (block pointer), is exactly the size it is malloc'd with.
char* NewBlock(std::size_t bytes) {
    return static_cast<char*>(std::malloc(bytes));
}

}  // namespace

// Replaces core-platform's CustomFree for this test binary. Records the pointer, then frees it.
void CustomFree(void* p) {
    g_freed.push_back(p);
    std::free(p);
}

// Replaces the two allocator entry points the destructor reaches, so both release paths are observable. The
// dispatcher is the one the header declares (`__n > 0x80 ? CustomFree : pool`, 0x31bb44 / 0x8b625c); its body is
// repeated here so the test binary takes this definition instead of core-platform/src/stlport_alloc.cpp, whose
// block is not instrumented. The pool push (0x8b6224) only links the block into its size-class free list and
// never frees it, so it is stood in for as well; recording the block is what replaces the free-list link.
void std::__node_alloc::_M_deallocate(void* __p, std::size_t __n) {
    if (__n > 0x80) {
        CustomFree(__p);
        return;
    }
    g_pooled.push_back(__p);
    g_pooledSizes.push_back(__n);
}

int main() {
    // 1. A fresh manager is empty, and its no-op methods free nothing.
    {
        DataReloaderManager mgr;
        Check(mgr.m_monitoredFiles.empty(), "constructor leaves the monitored list empty");
        mgr.checkFiles();
        mgr.monitorFiles("data", "file.lua", nullptr);
        Check(g_freed.empty(), "empty methods free nothing");
    }
    Check(g_freed.empty(), "destroying an empty manager frees nothing");

    // 2. A group with no blocks is released once; null entries are skipped, and the entry order is the vector's.
    g_freed.clear();
    void* expectGroup2a = nullptr;
    void* expectGroup2b = nullptr;
    {
        DataReloaderManager mgr;
        DataReloaderManager::_MonitoredFiles* filesA = NewFiles();
        DataReloaderManager::_MonitoredFiles* filesB = NewFiles();
        mgr.m_monitoredFiles.push_back(nullptr);
        mgr.m_monitoredFiles.push_back(filesA);
        mgr.m_monitoredFiles.push_back(nullptr);
        mgr.m_monitoredFiles.push_back(filesB);
        expectGroup2a = filesA;
        expectGroup2b = filesB;
    }
    Check(g_freed.size() == 2, "each non-null group is freed once and null entries are skipped");
    if (g_freed.size() == 2) {
        Check(g_freed[0] == expectGroup2a, "the first group is freed first");
        Check(g_freed[1] == expectGroup2b, "the second group is freed second");
    }

    // 3. Only the +0x30 block, 16 bytes. Its size 0x10 is at or below 0x80, so it is pooled and CustomFree sees
    // only the group.
    g_freed.clear();
    g_pooled.clear();
    g_pooledSizes.clear();
    char* block30 = NewBlock(16);
    void* expect3Group = nullptr;
    {
        DataReloaderManager mgr;
        DataReloaderManager::_MonitoredFiles* files = NewFiles();
        files->unk_30 = block30;
        files->unk_1c = block30 + 16;
        mgr.m_monitoredFiles.push_back(files);
        expect3Group = files;
    }
    Check(g_pooled.size() == 1, "a 16-byte +0x30 block is released through the pool, not CustomFree");
    if (g_pooled.size() == 1) {
        Check(g_pooled[0] == block30, "the pooled block is +0x30");
        Check(g_pooledSizes[0] == 16, "the pooled size is (+0x1c) - (+0x30)");
    }
    Check(g_freed.size() == 1, "only the group reaches CustomFree");
    if (g_freed.size() == 1) {
        Check(g_freed[0] == expect3Group, "the group is released after the block");
    }

    // 4. Only the +0x18 block (end at +0x04), 8 bytes. The +0x30 field is the inline slot (&unk_1c), so the
    // destructor skips it; the +0x18 block's size of 8 also puts it on the pool path.
    g_freed.clear();
    g_pooled.clear();
    g_pooledSizes.clear();
    char* block18 = NewBlock(8);
    void* expect4Group = nullptr;
    {
        DataReloaderManager mgr;
        DataReloaderManager::_MonitoredFiles* files = NewFiles();
        files->unk_18 = block18;
        files->unk_04 = block18 + 8;
        files->unk_30 = reinterpret_cast<char*>(&files->unk_1c);  // the inline slot: skipped
        mgr.m_monitoredFiles.push_back(files);
        expect4Group = files;
    }
    Check(g_pooled.size() == 1 && g_pooled[0] == block18,
          "with block30 on the inline slot, +0x18 is released and +0x30 is skipped");
    if (g_pooledSizes.size() == 1) {
        Check(g_pooledSizes[0] == 8, "the pooled size is (+0x04) - (+0x18)");
    }
    Check(g_freed.size() == 1 && g_freed[0] == expect4Group, "the group is released after the block");

    // 5. Both blocks small (16 and 8): +0x30 is pooled first, then +0x18, then the group is freed once.
    g_freed.clear();
    g_pooled.clear();
    g_pooledSizes.clear();
    char* block30b = NewBlock(16);
    char* block18b = NewBlock(8);
    void* expect5Group = nullptr;
    {
        DataReloaderManager mgr;
        DataReloaderManager::_MonitoredFiles* files = NewFiles();
        files->unk_30 = block30b;
        files->unk_1c = block30b + 16;
        files->unk_18 = block18b;
        files->unk_04 = block18b + 8;
        mgr.m_monitoredFiles.push_back(files);
        expect5Group = files;
    }
    Check(g_pooled.size() == 2, "both small blocks are released through the pool");
    if (g_pooled.size() == 2) {
        Check(g_pooled[0] == block30b, "+0x30 is pooled first");
        Check(g_pooled[1] == block18b, "+0x18 is pooled second");
        Check(g_pooledSizes[0] == 16 && g_pooledSizes[1] == 8, "each pooled size is the block's own gap");
    }
    Check(g_freed.size() == 1 && g_freed[0] == expect5Group, "the group is released last, once");

    // 6. Both blocks larger than 0x80 (200 and 264): both take the CustomFree path, +0x30 first, then +0x18, then
    // the group.
    g_freed.clear();
    g_pooled.clear();
    g_pooledSizes.clear();
    char* block30c = NewBlock(200);
    char* block18c = NewBlock(264);
    void* expect6Group = nullptr;
    {
        DataReloaderManager mgr;
        DataReloaderManager::_MonitoredFiles* files = NewFiles();
        files->unk_30 = block30c;
        files->unk_1c = block30c + 200;
        files->unk_18 = block18c;
        files->unk_04 = block18c + 264;
        mgr.m_monitoredFiles.push_back(files);
        expect6Group = files;
    }
    Check(g_pooled.empty(), "a block above 0x80 bytes never reaches the pool");
    Check(g_freed.size() == 3, "both large blocks and the group are released through CustomFree");
    if (g_freed.size() == 3) {
        Check(g_freed[0] == block30c, "+0x30 is freed first");
        Check(g_freed[1] == block18c, "+0x18 is freed second");
        Check(g_freed[2] == expect6Group, "the group is freed last");
    }

    if (g_failures == 0) {
        std::printf("all checks passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
