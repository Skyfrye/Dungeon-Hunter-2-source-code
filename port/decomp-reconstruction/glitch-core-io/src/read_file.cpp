#include "glitch-core-io/io/read_file.hpp"

#include "glitch-core-io/io/file_system.hpp"
#include "core-platform/frame_prof.hpp"

#include <cstdint>

namespace glitch::io {

// 0x570734 _ZN6glitch2io9CReadFileC1EPKcb (C2 at 0x570874 is the same body)
CReadFile::CReadFile(const char* name, bool obfuscatedFlag) : fileName(name ? name : "") {
    obfuscated = obfuscatedFlag;
    openFile();
    // The original clears the flag for files shorter than the 4-byte key.
    if (obfuscated && size < 4) obfuscated = false;
}

// 0x570660 _ZN6glitch2io9CReadFileD1Ev
CReadFile::~CReadFile() = default;  // the shared handle (+0x0c) is dropped by the member

// 0x570808 _ZNK6glitch2io9CReadFile5cloneEv
CReadFile* CReadFile::clone() const {
    CReadFile* copy = new CReadFile(fileName.c_str(), false);
    copy->obfuscated = obfuscated;
    copy->seek(getPos(), false);
    return copy;
}

// 0x5703e4 _ZNK6glitch2io9CReadFile6isOpenEv
bool CReadFile::isOpen() const {
    return static_cast<bool>(file);
}

// 0x57044c _ZNK6glitch2io9CReadFile7getSizeEv
long CReadFile::getSize() const {
    return size;
}

// 0x570454 _ZNK6glitch2io9CReadFile11getFileNameEv
const char* CReadFile::getFileName() const {
    return fileName.c_str();
}

// 0x57045c _ZNK6glitch2io9CReadFile11getFullPathEv
// No CFileSystem here, so the full path is the name the reader was given.
const char* CReadFile::getFullPath() const {
    return fileName.c_str();
}

// 0x570488 _ZN6glitch2io9CReadFile4seekElb
// The pseudocode passes the bool straight to fseek as the origin: true is
// SEEK_CUR (1), false is SEEK_SET (0).
bool CReadFile::seek(long offset, bool relative) {
    if (!isOpen()) return false;
    return std::fseek(file->file, offset, relative ? SEEK_CUR : SEEK_SET) == 0;
}

// 0x5705a8 _ZNK6glitch2io9CReadFile6getPosEv
// ftell of the handle's FILE* (the CFile at +0x0c holds it at +0x04), with no null test in the original.
long CReadFile::getPos() const {
    return std::ftell(file->file);
}

// 0x5705b4 _ZN6glitch2io9CReadFile4readEPvj
// Obfuscated files: the first four bytes are adjusted by (~pos - i) for
// byte i, where pos is the position before the read.
// Returns the fread count; a closed file returns 0 (the isOpen result in the listing).
std::int32_t CReadFile::read(void* buffer, std::uint32_t count) {
    if (!isOpen()) return 0;
    const std::uint32_t pos = static_cast<std::uint32_t>(getPos());
    dh2prof::Scope prof(dh2prof::kIoRead);  // Track B frame profiler
    const std::size_t got = std::fread(buffer, 1, count, file->file);
    if (obfuscated && static_cast<std::int32_t>(pos) < 4) {
        std::uint32_t n = 4 - pos;
        if (count <= n) n = count;
        auto* bytes = static_cast<std::uint8_t*>(buffer);
        std::uint32_t key = ~pos;
        for (std::uint32_t i = 0; i < n; ++i) {
            bytes[i] = static_cast<std::uint8_t>(bytes[i] + static_cast<std::uint8_t>(key - i));
        }
    }
    return static_cast<std::int32_t>(got);
}

// 0x5704cc _ZN6glitch2io9CReadFile8openFileEv
// An empty file name just drops the handle. Otherwise CFileSystem::open(name, "rb") supplies the shared handle (the
// previous one is dropped by the assignment); when it opened, the size is the position after a seek to the end (slot
// +0x24, getPos), the file is rewound, and the reader's obfuscation byte (+0x2c) is copied from the handle's (+0x24).
void CReadFile::openFile() {
    if (fileName.empty()) {
        file = nullptr;
        return;
    }
    file = CFileSystem::open(fileName.c_str(), "rb");
    if (file) {
        std::fseek(file->file, 0, SEEK_END);
        size = getPos();
        std::fseek(file->file, 0, SEEK_SET);
        obfuscated = file->obfuscated;
    }
}

// 0x5703f4 _ZN6glitch2io9CReadFile9readAsyncEPvjPFviiPNS0_9IReadFileES2_ES2_
// Forwards to the position overload (vtable +0x14) with the current position.
bool CReadFile::readAsync(void* buffer, std::uint32_t count, ReadAsyncCallBack callBack, void* context) {
    return readAsync(buffer, count, getPos(), callBack, context);
}

// 0x570444 _ZN6glitch2io9CReadFile9readAsyncEPvjlPFviiPNS0_9IReadFileES2_ES2_
// The original body is `return 1`: the request is accepted and no callback is run here.
bool CReadFile::readAsync(void* /*buffer*/, std::uint32_t /*count*/, long /*position*/,
                          ReadAsyncCallBack /*callBack*/, void* /*context*/) {
    return true;
}

// 0x5707b4 _ZN6glitch2io14createReadFileEPKc
IReadFile* createReadFile(const char* name) {
    auto* file = new CReadFile(name, false);
    if (file->isOpen()) return file;
    file->drop();
    return nullptr;
}

}  // namespace glitch::io
