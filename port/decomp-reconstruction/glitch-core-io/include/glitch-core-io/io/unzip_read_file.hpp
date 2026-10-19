// glitch::io::CUnzipReadFile: a read file taken out of a folder archive (CUnZipReader). It is a
// CReadFile over the folder path, and it keeps the entry name it was opened with (the original
// stores it in an inline string buffer at +0x30, with the data pointer at +0x44).
#pragma once

#include <string>

#include "glitch-core-io/core/allocator.hpp"
#include "glitch-core-io/io/read_file.hpp"

namespace glitch::io {

class CUnzipReadFile : public CReadFile {
public:
    // 0x5779cc: the file is the folder path (given as the first string, read through its data
    // pointer, not obfuscated); the entry name is copied into the member.
    CUnzipReadFile(const core::stringc& folderPath, const char* entryName);
    // 0x577374 (D1), 0x5773c8 (D0): compiler-generated member and base destruction; not written.

    // 0x576db8: the original returns the word at +0x44 (a pointer into the inline string buffer): the entry
    // name's character data.
    const char* getFileName() const override;

    core::stringc name;  // +0x30 inline buffer / +0x44 data pointer in the original
};

}  // namespace glitch::io
