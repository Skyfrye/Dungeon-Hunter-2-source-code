// Track B batch e1-pydata-accessors-PyDataArrays-0 (category pydata-accessors, class PyDataArrays).
// Declarations: include/pydata-accessors/w7_pydata12.hpp (class PyDataArrays, GetOID and addFuncsForFile added there).
// Other PyDataArrays bodies (destructors, registerClassByName, Load, ...) live in src/w7_pydata12.cpp.

#include "pydata-accessors/w7_pydata12.hpp"

#include <cstddef>
#include <string>
#include <vector>

namespace {

// Largest element count the listing allows for one file entry (0x1FFFFFFF).
constexpr std::size_t kMaxFuncsPerFile = 0x1FFFFFFF;

}  // namespace

// 0x4bd478 _ZN12PyDataArrays10reloadDataEP11IStreamBasePKc
// Calls the read function of every entry registered for fileName, in insertion order, with the stream.
// Nothing happens when the file has no entry. The listing's return value is the last callee's return
// register (r0), not a value the caller uses; the header declares this slot void, so it stays void.
void PyDataArrays::reloadData(IStreamBase* stream, const char* fileName) {
    const auto it = m_files.find(std::string(fileName));
    if (it == m_files.end()) return;
    for (const _Funcs& funcs : it->second) {
        funcs.read(stream);
    }
}

// 0x4bd640 _ZN12PyDataArrays6GetOIDEPKcS1_
// Looks className up in the registry (this+28). Returns -1 when absent; otherwise the factory's result for arg.
int PyDataArrays::GetOID(const char* className, const char* arg) {
    const auto it = m_classes.find(std::string(className));
    if (it == m_classes.end()) return -1;
    return it->second(arg);
}

// 0x4be3e0 _ZN12PyDataArrays15addFuncsForFileEPKcPFvP11IStreamBaseEPFvvE
// The listing creates the file entry (empty vector) when the name is new. It then appends {read, finalize}.
// When the vector has no spare slot it grows to max(2 * count, 1) slots (capped at 0x1FFFFFFF) and copies
// the existing entries first, which is what reserve() does here.
void PyDataArrays::addFuncsForFile(const char* fileName, FileRead read, FileFinalize finalize) {
    const std::string key(fileName);
    if (m_files.find(key) == m_files.end()) {
        m_files[key] = std::vector<_Funcs>();
    }
    std::vector<_Funcs>& funcs = m_files[key];
    if (funcs.size() == funcs.capacity()) {
        const std::size_t count = funcs.size();
        std::size_t newCapacity = count != 0 ? 2 * count : 1;
        if (newCapacity > kMaxFuncsPerFile || count > newCapacity) newCapacity = kMaxFuncsPerFile;
        funcs.reserve(newCapacity);
    }
    funcs.push_back(_Funcs{read, finalize});
}

// 0x4be550 _ZN12PyDataArraysC1EP19DataReloaderManager
// Not redefined here. The complete-object constructor is the same C++ constructor as C2 (0x4c0ddc),
// defined in src/w7_pydata12.cpp. That body stores the reloader and leaves both maps empty, but does not
// transcribe the listing's 142 addFuncsForFile(...) and 142 registerClassByName(...) calls. (Partial; see
// the ledger row for 0x4be550.)
