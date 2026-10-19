// IFileStream: the stream the file system hands out (FileSystemWin32::openSavefile, openResource, openFile and the handles it
// creates). It is an IStreamBase whose only addition is skip(), which seeks forward from the current position. The one
// definition for every category: core-platform's deps/io_stream.hpp stand-in now includes this header.
// _ZTV11IFileStream has IStreamBase's 13 slots and overrides slot +0x28: IFileStream::skip (0x34eb60). The destructors are
// compiler-generated: D1 0x34eb5c (empty) and D0 0x34f004 (reset the vptr, CustomFree).
// FileSystemWin32::_FileHandle derives from it (_ZTVN15FileSystemWin3211_FileHandleE, 60 bytes).
// Reconstructed from libDungeonHunter2.so pseudocode.
#pragma once

#include <cstdint>

#include "dh2/IStreamBase.hpp"

class IFileStream : public IStreamBase {
public:
    ~IFileStream() override = default;   // 0x34eb5c (D1), 0x34f004 (D0)

    // 0x34eb60 IFileStream::skip(unsigned long long): seek(tell() + n). The vtable calls are slot +0x24 (tell) and +0x20 (seek).
    void skip(std::uint64_t n) override;
};
