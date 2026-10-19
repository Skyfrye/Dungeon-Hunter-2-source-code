#include "glitch-core-io/io/write_file.hpp"

#include "glitch-core-io/io/file_system.hpp"

namespace glitch::io {

// 0x570b68 _ZN6glitch2io10CWriteFileC1EPKcb (C2 at 0x570c40)
// The name is copied, then openFile(append) runs (the pseudocode's last call).
CWriteFile::CWriteFile(const char* name, bool append) : fileName(name ? name : "") {
    openFile(append);
}

// 0x570a90 _ZN6glitch2io10CWriteFileD1Ev (0x570b08 is the same body)
CWriteFile::~CWriteFile() = default;  // the shared handle is dropped by the member

// 0x5708f8 _ZNK6glitch2io10CWriteFile11getFileNameEv
const char* CWriteFile::getFileName() const {
    return fileName.c_str();
}

// 0x570900 _ZNK6glitch2io10CWriteFile11getFullPathEv
const char* CWriteFile::getFullPath() const {
    return fileName.c_str();
}

// 0x57092c _ZN6glitch2io10CWriteFile4seekElb
bool CWriteFile::seek(long offset, bool relative) {
    if (!file) return false;
    return std::fseek(file->file, offset, relative ? SEEK_CUR : SEEK_SET) == 0;
}

// 0x570950 _ZNK6glitch2io10CWriteFile6getPosEv
// ftell of the handle's FILE* (handle +0x04), with no null test in the original.
long CWriteFile::getPos() const {
    return std::ftell(file->file);
}

// 0x57095c _ZN6glitch2io10CWriteFile8openFileEb
// An empty name just drops the handle. Otherwise CFileSystem::open(name, append ? "ab" : "wb") supplies the shared handle (the
// previous one is dropped by the assignment); when it opened, the size is the position after a seek to the end and the
// file is rewound.
void CWriteFile::openFile(bool append) {
    if (fileName.empty()) {
        file = nullptr;
        return;
    }
    file = CFileSystem::open(fileName.c_str(), append ? "ab" : "wb");
    if (file) {
        std::fseek(file->file, 0, SEEK_END);
        size = std::ftell(file->file);
        std::fseek(file->file, 0, SEEK_SET);
    }
}

// 0x570a58 _ZN6glitch2io10CWriteFile5flushEv
void CWriteFile::flush() {
    if (file) std::fflush(file->file);
}

// 0x570a6c _ZN6glitch2io10CWriteFile5writeEPKvj
std::size_t CWriteFile::write(const void* data, unsigned int count) {
    if (!file) return 0;
    return std::fwrite(data, 1, count, file->file);
}

// 0x570bf4 _ZN6glitch2io15createWriteFileEPKcb
IWriteFile* createWriteFile(const char* name, bool append) {
    auto* file = new CWriteFile(name, append);
    if (file->isOpen()) return file;
    file->drop();
    return nullptr;
}

}  // namespace glitch::io
