// Stdio-backed helpers in namespace vox (openStdIO, closeStdIO, readStdIO,
// writeStdIO, seekStdIO, tellStdIO). They wrap the C library FILE calls and map
// the vox access and seek enums onto the C library values. The handle parameters
// are void* as in the mangled names; they hold a std::FILE*.
#pragma once

#include <cstddef>
#include <cstdio>

#include "vox-audio/deps/vox_file_system.hpp"

namespace vox {

// Seek origins as the vox code passes them (VoxFileSeekOrigin: 0 begin, 1 current,
// 2 end). Values other than 1 and 2 are treated as 0 by seekStdIO.
enum VoxFileSeekOrigin : int {
    kVoxFileSeekBegin = 0,
    kVoxFileSeekCurrent = 1,
    kVoxFileSeekEnd = 2,
};

// 0x8947d4. Maps the access mode to a C fopen mode string (0 r, 1 w, 2 a, 3 r+,
// 4 w+, 5 a+, 6 rb, 7 wb, 8 ab, 9 r+b, 10 w+b, 11 a+b). Returns null for any other
// value.
std::FILE* openStdIO(const char* name, VoxFileAccessMode mode);

// 0x8947d0. fclose on the handle.
void closeStdIO(void* file);

// 0x8948f8. fread(dst, size, count, file). The original is a tail call to fread, so
// the count it returns is the function's result (r0).
std::size_t readStdIO(void* dst, int size, int count, void* file);

// 0x8948f4. fwrite(src, size, count, file). Same tail-call shape as readStdIO.
std::size_t writeStdIO(const void* src, int size, int count, void* file);

// 0x8948dc. fseek with whence mapped as in the original (2 -> SEEK_END, 1 -> SEEK_CUR,
// anything else -> SEEK_SET). The fseek result is discarded.
void seekStdIO(void* file, int offset, VoxFileSeekOrigin whence);

// 0x8948d8. ftell on the handle. The original is a tail call to ftell, so the position
// it returns is the function's result (r0).
long tellStdIO(void* file);

}  // namespace vox
