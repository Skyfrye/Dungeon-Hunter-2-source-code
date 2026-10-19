// glitch::io::CUnZipReader: a folder archive. It is a zip reader with the file system and the
// folder name added. The decompile keeps the file system at +0x20 and the name string in the
// inline buffer at +0x24 (its pointers at +0x34 and +0x38); std members stand in for them here.
#pragma once

#include <string>

#include "glitch-core-io/core/allocator.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/zip_reader.hpp"

namespace glitch::io {

class CUnZipReader : public CZipReader {
public:
    // 0x5780fc (C1), 0x5781b4 (C2): PARTIAL. The base is opened without a file, so the directory is
    // empty; the name is kept as the folder name.
    CUnZipReader(IFileSystem* fileSystem, const char* name, bool ignoreCase, bool ignorePaths);
    ~CUnZipReader() override;  // 0x577534 (D1): PARTIAL, see the source; 0x577588 is the deleting thunk

    // 0x576dc0: nothing to read ahead; the folder is looked up when a file is asked for.
    void buildDirectory();
    // 0x576dc4: 1 when openFile finds the name (the file is released again), else -1.
    int findFile(const char* name);
    // 0x577a48: PARTIAL. The folder name is copied, but the path composition with the name is not
    // recovered, so no file is returned.
    IReadFile* openFile(const char* name) override;

    IFileSystem* fileSystem = nullptr;  // +0x20 in the original (not referenced)
    core::stringc folderName;             // +0x34 .. +0x38 in the original
};

}  // namespace glitch::io
