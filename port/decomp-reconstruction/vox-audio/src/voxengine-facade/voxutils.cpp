// vox::VoxUtils: file loaders. The engine load calls use the listing's argument order:
// VoxEngine::LoadDataSource(stream_type, stream_arg, decoder_type, decoder_arg, group).
// A path load is (1, path, format, 0, user); a RAM load is (0, block, format, 0, user).
// The facade is static, so the engine instance pointer of the listing is not passed.
#include <cstdint>
#include <cstring>
#include <string>

#include "vox-audio/deps/vox_file_system.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/voxengine.hpp"
#include "vox-audio/vox/voxutils.hpp"

namespace vox {

namespace {

// The "no data" handle the listing writes (id -1, no engine, no handlable).
DataHandle EmptySourceHandle() { return DataHandle(-1, nullptr, nullptr, 0, 0); }

// Source block the RAM load passes to LoadDataSource: the buffer, its size, then two flag
// bytes (cleared, then set) at +0x08 and +0x09 in the listing.
struct RamSourceBlock {
    void* data = nullptr;  // +0x00
    int size = 0;          // +0x04
    std::uint8_t flag_08 = 0;
    std::uint8_t flag_09 = 1;
};

// Decoder type code for the extension after the last dot: wav 1, ogg 2, mpc 3, vxn 4, or 0
// when there is no dot or the extension is unknown. The listing rewrites every byte of the
// extension that is at most 0x60 by adding 0x20 (signed compare), then compares the result
// with the four names. Only the upper-case letters A to Z can produce one of those names.
int DecoderFormatForPath(const char* path) {
    if (path == nullptr) {
        return 0;
    }
    const char* dot = std::strrchr(path, '.');
    if (dot == nullptr) {
        return 0;
    }
    std::string ext(dot + 1);
    for (char& c : ext) {
        if (static_cast<signed char>(c) <= 0x60) {
            c = static_cast<char>(static_cast<std::uint8_t>(c) + 0x20);
        }
    }
    if (ext == "wav") {
        return 1;
    }
    if (ext == "ogg") {
        return 2;
    }
    if (ext == "mpc") {
        return 3;
    }
    if (ext == "vxn") {
        return 4;
    }
    return 0;
}

}  // namespace

// 0x86f3b4 _ZN3vox8VoxUtils27LoadDataSourceFromFileToRAMEPKcii
// Opens the file in read mode (mode 6), seeks to the end for the size, seeks back, reads the
// whole file into a VoxAlloc buffer in reads of at most 0x10000 bytes, closes the file and
// hands the buffer to the engine as a RAM block: (0, block, format, 0, unused). Any failure
// before the hand-off returns the empty handle. The read loop stops when a read returns no
// bytes, as the listing does.
DataHandle VoxUtils::LoadDataSourceFromFileToRAM(const char* path, int format, int unused) {
    VoxEngine::GetVoxEngine();

    FileSystemInterface* fs = FileSystemInterface::GetInstance();
    if (fs == nullptr) {
        return EmptySourceHandle();
    }
    FileInterface* file = fs->OpenFile(path, kVoxFileRead);
    if (file == nullptr) {
        return EmptySourceHandle();
    }
    file->Seek(0, 2);
    int size = file->Tell();
    if (size <= 0) {
        fs->CloseFile(file);
        return EmptySourceHandle();
    }
    file->Seek(0, 0);
    auto* buffer = static_cast<std::uint8_t*>(VoxAlloc(static_cast<std::size_t>(size)));
    if (buffer == nullptr) {
        fs->CloseFile(file);
        return EmptySourceHandle();
    }

    int done = 0;
    for (;;) {
        int remaining = size - done;
        std::size_t count = remaining <= 0xFFFF ? static_cast<std::size_t>(remaining)
                                                : static_cast<std::size_t>(0x10000);
        int got = file->Read(buffer + done, 1, count);
        if (got <= 0) {
            break;
        }
        done += got;
    }
    fs->CloseFile(file);

    RamSourceBlock block;
    block.data = buffer;
    block.size = size;
    return VoxEngine::LoadDataSource(0, &block, format, nullptr, unused);
}

// 0x86f558 _ZN3vox8VoxUtils22LoadDataSourceFromFileEPKcii
// Engine path load: (1, path, format, 0, unused).
DataHandle VoxUtils::LoadDataSourceFromFile(const char* path, int format, int unused) {
    VoxEngine::GetVoxEngine();
    return VoxEngine::LoadDataSource(1, const_cast<char*>(path), format, nullptr, unused);
}

// 0x86f5a0 _ZN3vox8VoxUtils27LoadDataSourceFromFileAsRAWEPKcii
// Loads through LoadDataSourceFromFile, then passes the loaded handle to ConvertToRawSource.
// The listing calls ConvertToRawSource with the engine as its instance pointer and the
// loaded handle as its argument, so the port converts the loaded handle.
DataHandle VoxUtils::LoadDataSourceFromFileAsRAW(const char* path, int format, int unused) {
    VoxEngine::GetVoxEngine();
    DataHandle loaded = LoadDataSourceFromFile(path, format, unused);
    return VoxEngine::ConvertToRawSource(loaded);
}

// 0x86f5fc _ZN3vox8VoxUtils24LoadDataSourceFromFileExEPKciNS_21VoxSourceLoadingFlagsEi
// Routes by load flags: bit 0x10000 loads asynchronously as (1, path, format, 0, user, flags
// truncated to 16 bits); bit 0 loads to RAM; the value 2 loads as RAW; anything else loads
// from the file.
DataHandle VoxUtils::LoadDataSourceFromFileEx(const char* path, int format, int load_flags,
                                              int user) {
    VoxEngine::GetVoxEngine();
    if ((load_flags & 0x10000) != 0) {
        auto flags = static_cast<std::uint16_t>(load_flags);
        return VoxEngine::LoadDataSourceAsync(1, const_cast<char*>(path), format, nullptr, user,
                                              static_cast<VoxSourceLoadingFlags>(flags));
    }
    if ((load_flags & 1) != 0) {
        return LoadDataSourceFromFileToRAM(path, format, user);
    }
    if (load_flags == 2) {
        return LoadDataSourceFromFileAsRAW(path, format, user);
    }
    return LoadDataSourceFromFile(path, format, user);
}

// 0x86f6b0 _ZN3vox8VoxUtils39LoadDataSourceFromFileAutoDetectDecoderEPKci
// Picks the decoder from the extension, then loads from the file. An unknown or missing
// extension gives the empty handle.
DataHandle VoxUtils::LoadDataSourceFromFileAutoDetectDecoder(const char* path, int unused) {
    int format = DecoderFormatForPath(path);
    if (format == 0) {
        return EmptySourceHandle();
    }
    return LoadDataSourceFromFile(path, format, unused);
}

// 0x86f8e0 _ZN3vox8VoxUtils41LoadDataSourceFromFileAutoDetectDecoderExEPKciNS_21VoxSourceLoadingFlagsEPNS_18DataHandleUserDataE
// As the plain form, but through LoadDataSourceFromFileEx with the load flags and the int
// argument as the user value. The mangled name has a fourth argument, a DataHandleUserData
// pointer on the stack; the listing never reads it, so the port does not take it.
DataHandle VoxUtils::LoadDataSourceFromFileAutoDetectDecoderEx(const char* path, int user,
                                                               int load_flags) {
    int format = DecoderFormatForPath(path);
    if (format == 0) {
        return EmptySourceHandle();
    }
    return LoadDataSourceFromFileEx(path, format, load_flags, user);
}

}  // namespace vox
