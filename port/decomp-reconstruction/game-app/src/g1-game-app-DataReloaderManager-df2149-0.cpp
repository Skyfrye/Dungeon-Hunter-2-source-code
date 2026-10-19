// Batch g1-game-app-DataReloaderManager-df2149-0 (DataReloaderManager, part 1 of 1).
// The constructor, the two empty methods, the _MonitoredFiles destructor and the DataReloaderManager destructor.
// The C1/C2 constructor pair and the D1/D2 destructor pair have identical bodies, so each pair has one
// definition here. The scalar deleting destructor (D0) is compiler-generated and is not written.
#include "dh2/DataReloaderManager.hpp"

#include <cstdint>

#include "core-platform/memory.hpp"
#include "core-platform/stlport_alloc.hpp"  // std::__node_alloc (0x313994 / 0x31bb44)

// 0x339094 DataReloaderManager::DataReloaderManager()
// 0x3390c8 DataReloaderManager::DataReloaderManager()  (C1 variant, same body)
// Asm (0x339094): stores 0 to +0x0c, +0x04 and +0x08, then the vtable address point (_ZTV19DataReloaderManager + 8)
// to +0x00. The three zero stores are the empty STLport vector (begin, end, end of storage), which the default
// constructor of m_monitoredFiles produces. The vptr store is done by the compiler.
DataReloaderManager::DataReloaderManager() {
}

// 0x3390fc DataReloaderManager::monitorFiles(char const*, char const*, IDataReloader*)
// Empty: the binary has one BX LR here (bytes 1e ff 2f e1). The ELF symbol size (155) runs into unrelated code
// at 0x339104, which is not part of this function.
void DataReloaderManager::monitorFiles(const char* dir, const char* file, IDataReloader* reloader) {
    (void)dir;
    (void)file;
    (void)reloader;
}

// 0x339100 DataReloaderManager::checkFiles() const
// Empty: the binary has one BX LR here (bytes 1e ff 2f e1).
void DataReloaderManager::checkFiles() const {
}

// 0x339124 DataReloaderManager::_MonitoredFiles::~_MonitoredFiles()
// The tests and the order of the two releases follow the asm, including the sizes the listing computes: the
// first block's size is (+0x1c) - (+0x30) (0x339148) and the second's is (+0x04) - (+0x18) (0x339174). Each
// block is skipped when it is null or when it is the inline slot whose address is the field itself (+0x1c for
// the first, +0x04 for the second). Above 0x80 bytes the release is CustomFree; at 0x80 or below it is
// __node_alloc::_M_deallocate (0x339154 / 0x339180, veneer __ZNSt12__node_alloc13_M_deallocateEPvj_veneer),
// which is now reconstructed in core-platform/stlport_alloc.hpp / src/stlport_alloc.cpp (0x31bb44). No caller
// in this tree fills either block (monitorFiles is empty in the binary and here), so the branch is not
// exercised yet, but it is reproduced.
DataReloaderManager::_MonitoredFiles::~_MonitoredFiles() {
    // Block at +0x30 (unk_30). Its size is (+0x1c) - (+0x30).
    char* block30 = unk_30;
    if (block30 != nullptr && reinterpret_cast<void*>(block30) != reinterpret_cast<void*>(&unk_1c)) {
        const std::uintptr_t size =
            reinterpret_cast<std::uintptr_t>(unk_1c) - reinterpret_cast<std::uintptr_t>(block30);
        if (size > 0x80) {
            CustomFree(block30);
        } else {
            std::__node_alloc::_M_deallocate(block30, static_cast<unsigned int>(size));
        }
    }

    // Block at +0x18 (unk_18). Its size is (+0x04) - (+0x18).
    char* block18 = unk_18;
    if (block18 != nullptr && reinterpret_cast<void*>(block18) != reinterpret_cast<void*>(&unk_04)) {
        const std::uintptr_t size =
            reinterpret_cast<std::uintptr_t>(unk_04) - reinterpret_cast<std::uintptr_t>(block18);
        if (size > 0x80) {
            CustomFree(block18);
        } else {
            std::__node_alloc::_M_deallocate(block18, static_cast<unsigned int>(size));
        }
    }
}

// 0x3391a0 DataReloaderManager::~DataReloaderManager()  (D1, complete-object destructor)
// 0x33925c DataReloaderManager::~DataReloaderManager()  (D2, same body)
// PARTIAL, for the release of the vector's own storage. The element loop follows the asm: each non-null entry is
// destroyed (its ~_MonitoredFiles, then CustomFree) in vector order, and the end pointer is re-read after each
// free as the original does (0x3391f0). The original then releases the vector's storage itself at 0x339214, with
// a size of ((end of storage - begin) & ~3) in 4-byte pointers: above 0x80 bytes CustomFree, otherwise
// __node_alloc::_M_deallocate (0x339220). That node allocator now has a body
// (core-platform/stlport_alloc.hpp, 0x31bb44), but this end-of-body release still cannot be reproduced: on the
// host the storage is owned by the std::vector member, whose destructor runs after this body, and freeing it
// here would double-free it. The 32-bit pointer-mass arithmetic (`& ~3`) is the second half of the gap.
// The vptr store at entry is done by the compiler.
DataReloaderManager::~DataReloaderManager() {
    for (_MonitoredFiles* files : m_monitoredFiles) {
        if (files != nullptr) {
            files->~_MonitoredFiles();
            CustomFree(files);
        }
    }
}

// 0x339240 DataReloaderManager::~DataReloaderManager()  (D0, scalar deleting destructor)
// Not written: compiler-generated from the virtual destructor. Asm: BL D1 (0x3391a0), then BL CustomFree(this).
