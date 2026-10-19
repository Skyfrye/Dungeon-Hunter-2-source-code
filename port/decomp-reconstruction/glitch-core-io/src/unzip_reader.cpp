// glitch::io::CUnZipReader (folder archive). See include/glitch-core-io/io/unzip_reader.hpp.
#include "glitch-core-io/io/unzip_reader.hpp"
#include "glitch-core-io/io/unzip_read_file.hpp"

namespace glitch::io {

// 0x5780fc _ZN6glitch2io12CUnZipReaderC1EPNS0_11IFileSystemEPKcbb (C2 at 0x5781b4 is the same body)
// The base is built with no file (the directory is empty), the file system is stored (+0x20), the folder name is
// assigned (+0x24 string) and a '/' is appended unless the name already ends in '\' or '/'. For an empty name the
// listing reads the byte in front of the string's data (an unrelated byte); an empty name gets the '/' here.
CUnZipReader::CUnZipReader(IFileSystem* fs, const char* name, bool ignoreCase, bool ignorePaths)
    : CZipReader(static_cast<IReadFile*>(nullptr), ignoreCase, ignorePaths), fileSystem(fs), folderName(name ? name : "") {
    if (folderName.empty() || (folderName.back() != '\\' && folderName.back() != '/')) {
        folderName += '/';
    }
}

// 0x577534 _ZN6glitch2io12CUnZipReaderD1Ev
// PARTIAL: the folder name is released by its own member destructor and the base drops its file
// (the original frees the name buffer explicitly when it is not the inline one).
CUnZipReader::~CUnZipReader() = default;

// 0x576dc0 _ZN6glitch2io12CUnZipReader14buildDirectoryEv
void CUnZipReader::buildDirectory() {}

// 0x576dc4 _ZN6glitch2io12CUnZipReader8findFileEPKc
// PARTIAL: the body matches (openFile, then -1 for no file or 1 with the file released). The original
// reaches openFile through vtable +0x0c; here the call is direct, because openFile(const char*) is not
// virtual in zip_reader.hpp. The result follows openFile, which is partial and returns no file.
int CUnZipReader::findFile(const char* name) {
    IReadFile* file = openFile(name);
    if (file == nullptr) return -1;
    file->drop();
    return 1;
}

// 0x577a48 _ZN6glitch2io12CUnZipReader8openFileEPKc
// The folder name with the requested name appended is the path of a new CUnzipReadFile (built with the name as its
// entry name); it is kept only when its vtable +0x3c answer (isOpen) is true, otherwise it is dropped and null returned.
IReadFile* CUnZipReader::openFile(const char* name) {
    core::stringc path = folderName;
    path += name;
    CUnzipReadFile* file = new CUnzipReadFile(path, name);
    if (!file->isOpen()) {
        file->drop();
        return nullptr;
    }
    return file;
}

}  // namespace glitch::io
