// glitch::io::CFile: the shared handle that CFileSystem::open hands to the readers and
// writers. Layout from the original offsets: +0x00 zeroed by the constructor (not a vtable),
// +0x04 FILE*, +0x08 full name (glitch string), +0x20 base name (a pointer into the name,
// after the last separator), +0x24 obfuscation flag.
#pragma once

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <string>

namespace glitch::io {

class CFile {
public:
    // 0x56c9e8 (C1), 0x56c960 (C2). The base name starts after the last '/' or '\\' (the
    // separator set is the find_last_of clone's, see src/file.cpp).
    CFile(std::FILE* handle, const char* fileName, bool obfuscatedFlag);
    ~CFile();  // 0x56d108 (D1), 0x56d144 (D2): closes the handle

    CFile(const CFile&) = delete;
    CFile& operator=(const CFile&) = delete;

    // +0x00: the shared-handle use count (glitch::ISharedObject<CFile>: drop() is `if ((*count)-- == 1) { ~CFile; CustomFree }`,
    // 0x34f038). The constructor stores 0; CFileSystem::open raises it to 1 for the handle it returns.
    mutable std::uint32_t m_refCount = 0;
    std::FILE* file = nullptr;   // +0x04
    std::string name;            // +0x08
    std::size_t baseNameOffset = 0;  // +0x20 (as an offset into name)
    bool obfuscated = false;     // +0x24
};

// ISharedObject<CFile>::drop (0x34f038) as the add/release pair of boost::intrusive_ptr<CFile>.
inline void intrusive_ptr_add_ref(const CFile* p) { ++p->m_refCount; }
inline void intrusive_ptr_release(const CFile* p) {
    if (p->m_refCount-- == 1) delete p;
}

}  // namespace glitch::io
