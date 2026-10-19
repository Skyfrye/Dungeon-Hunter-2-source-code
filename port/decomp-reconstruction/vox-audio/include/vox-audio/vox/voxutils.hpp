// vox::VoxUtils: the file loaders the game calls with a path. Each one returns a
// DataHandle. The format argument is the decoder type code the listing passes:
// 1 wav, 2 ogg, 3 mpc, 4 vxn (the listing writes them as the addresses 1 to 4).
// Argument order of the engine calls: see voxutils.cpp.
#pragma once

#include "vox-audio/vox/engine_handles.hpp"

namespace vox {

class VoxUtils {
public:
    static DataHandle LoadDataSourceFromFileToRAM(const char* path, int format, int unused);       // 0x86f3b4
    static DataHandle LoadDataSourceFromFile(const char* path, int format, int unused);            // 0x86f558
    static DataHandle LoadDataSourceFromFileAsRAW(const char* path, int format, int unused);       // 0x86f5a0
    static DataHandle LoadDataSourceFromFileEx(const char* path, int format, int load_flags,
                                               int user);                                          // 0x86f5fc
    static DataHandle LoadDataSourceFromFileAutoDetectDecoder(const char* path, int unused);       // 0x86f6b0
    static DataHandle LoadDataSourceFromFileAutoDetectDecoderEx(const char* path, int user,
                                                                int load_flags);                   // 0x86f8e0
};

}  // namespace vox
