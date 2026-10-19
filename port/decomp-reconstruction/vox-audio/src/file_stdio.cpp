// Stdio-backed helpers in namespace vox (see vox-audio/vox/file_stdio.hpp).
#include "vox-audio/vox/file_stdio.hpp"

namespace vox {

// 0x8947d4 _ZN3vox9openStdIOEPKcNS_17VoxFileAccessModeE
std::FILE* openStdIO(const char* name, VoxFileAccessMode mode) {
    switch (static_cast<int>(mode)) {
        case 0:
            return std::fopen(name, "r");
        case 1:
            return std::fopen(name, "w");
        case 2:
            return std::fopen(name, "a");
        case 3:
            return std::fopen(name, "r+");
        case 4:
            return std::fopen(name, "w+");
        case 5:
            return std::fopen(name, "a+");
        case 6:
            return std::fopen(name, "rb");
        case 7:
            return std::fopen(name, "wb");
        case 8:
            return std::fopen(name, "ab");
        case 9:
            return std::fopen(name, "r+b");
        case 10:
            return std::fopen(name, "w+b");
        case 11:
            return std::fopen(name, "a+b");
        default:
            return nullptr;
    }
}

// 0x8947d0 _ZN3vox10closeStdIOEPv
void closeStdIO(void* file) {
    std::fclose(static_cast<std::FILE*>(file));
}

// 0x8948f8 _ZN3vox9readStdIOEPviiS0_: tail call to fread, returns its count.
std::size_t readStdIO(void* dst, int size, int count, void* file) {
    return std::fread(dst, static_cast<std::size_t>(size), static_cast<std::size_t>(count),
                      static_cast<std::FILE*>(file));
}

// 0x8948f4 _ZN3vox10writeStdIOEPKviiPv: tail call to fwrite, returns its count.
std::size_t writeStdIO(const void* src, int size, int count, void* file) {
    return std::fwrite(src, static_cast<std::size_t>(size), static_cast<std::size_t>(count),
                       static_cast<std::FILE*>(file));
}

// 0x8948dc _ZN3vox9seekStdIOEPviNS_17VoxFileSeekOriginE
void seekStdIO(void* file, int offset, VoxFileSeekOrigin whence) {
    int origin = SEEK_SET;
    if (whence == kVoxFileSeekEnd) {
        origin = SEEK_END;
    } else if (whence == kVoxFileSeekCurrent) {
        origin = SEEK_CUR;
    }
    std::fseek(static_cast<std::FILE*>(file), offset, origin);
}

// 0x8948d8 _ZN3vox9tellStdIOEPv: tail call to ftell, returns the position.
long tellStdIO(void* file) {
    return std::ftell(static_cast<std::FILE*>(file));
}

}  // namespace vox
