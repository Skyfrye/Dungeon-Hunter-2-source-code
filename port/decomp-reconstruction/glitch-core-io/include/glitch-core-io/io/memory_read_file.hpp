// glitch::io::CMemoryReadFile: a read file over a block of memory. The block is
// owned by the file (shared between clones) only when the constructor takes ownership.
// Only the constructors, set() and clone() are reconstructed here.
#pragma once

#include <cstdint>
#include <memory>
#include <string>

#include "glitch-core-io/io/read_file.hpp"

namespace glitch::io {

class CMemoryReadFile : public IReadFile {
public:
    CMemoryReadFile();                                                                      // 0x56ed1c, 0x56ed8c
    CMemoryReadFile(void* data, long length, const char* fileName, bool takeOwnership);     // 0x56f2ec, 0x56f3b8

    void set(void* data, long length, const char* fileName);  // 0x56edfc: resets the read position

    // Vtable order (tools/decomp_vtable.py glitch::io::CMemoryReadFile): +0x0c read, +0x10 and +0x14 readAsync,
    // +0x18 seek, +0x1c clone, +0x20 getSize, +0x24 getPos, +0x28 getFileName, +0x2c getFullPath,
    // +0x30 getBuffer, +0x34 the IReadFile default getExternalBuffer, +0x38 isAllInMemory.
    // 0x56ecc4: copies up to count bytes from the read position and returns the number copied.
    std::int32_t read(void* buffer, std::uint32_t count) override;
    // 0x56ebac: reads through slot +0x0c, then calls callBack(count read, count read == 0, this, context); true.
    bool readAsync(void* buffer, std::uint32_t count, ReadAsyncCallBack callBack, void* context) override;
    // 0x56ebe0: seeks to position (slot +0x18, result ignored), then as above.
    bool readAsync(void* buffer, std::uint32_t count, long position, ReadAsyncCallBack callBack,
                   void* context) override;
    bool seek(long offset, bool relative) override;           // 0x56ec3c
    CMemoryReadFile* clone() const override;                  // 0x56f150: a new file sharing the block
    long getSize() const override;                            // 0x56ec78
    long getPos() const override;                             // 0x56ec80
    // 0x56ec88, 0x56ec90: the character data of the name string (the same text for both).
    const char* getFileName() const override;                 // 0x56ec88
    const char* getFullPath() const override;                 // 0x56ec90
    void* getBuffer(long* size) override;                     // 0x56eb6c: block; *size = read position
    bool isAllInMemory() const override;                      // 0x56eb80: always true
    bool isValid() const;                                     // 0x56eb8c: block present and size >= 0

    // +0x0c: block start (void*)
    void* buffer = nullptr;
    // +0x10: owner of the block; the default deleter (delete) matches the original shared_ptr<char>
    std::shared_ptr<char> owned;
    // +0x18: block length
    long size = 0;
    // +0x1c: read position
    long position = 0;
    // +0x20: file name
    std::string name;
};

// 0x56f370 _ZN6glitch2io20createMemoryReadFileEPvlPKcb: a memory reader over a block.
CMemoryReadFile* createMemoryReadFile(void* data, long length, const char* fileName, bool takeOwnership);

}  // namespace glitch::io
