// FileSystemBase and FileSystemWin32 pieces completed by owner K3 (2026-10-16): the FileSystemBase constructor and the wide-character
// makeFullPath overload.

#include <cstring>
#include <cwchar>

#include "core-platform/filesystem_base.hpp"
#include "core-platform/filesystem_win32.hpp"

// 0x34e504 _ZN14FileSystemBaseC1Ev and 0x34e538 _ZN14FileSystemBaseC2Ev
// Both listings are the same: glitch::io::CFileSystem::CFileSystem(this) (0x56c058 / 0x56c0a8), then the vptr store for
// FileSystemBase (off_95CA88). The vptr store is the compiler's. One definition serves both symbols.
FileSystemBase::FileSystemBase() : glitch::io::CFileSystem() {}

// 0x34f35c _ZN15FileSystemWin3212makeFullPathEPKwS1_Pwi
// out is cleared (LC_API_MEMSET(out, 0, 4 * size): size wide characters of 4 bytes on the target); a name that starts with '#' is
// copied without the '#' and without the base, any other name is appended to the base: out = base + name. Returns out (wcscat).
// HOST-PORT: the clear covers `size` wide characters (sizeof(wchar_t) bytes each; the target's wchar_t is 4 bytes).
wchar_t* FileSystemWin32::makeFullPath(const wchar_t* base, const wchar_t* name, wchar_t* out, int size) {
    std::memset(out, 0, static_cast<std::size_t>(size) * sizeof(wchar_t));
    const wchar_t* source;
    if (std::wcsncmp(name, L"#", 1) == 0) {
        source = name + 1;
    } else {
        std::wcscat(out, base);
        source = name;
    }
    return std::wcscat(out, source);
}
