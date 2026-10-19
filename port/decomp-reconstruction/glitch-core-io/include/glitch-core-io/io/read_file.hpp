// glitch::io::CReadFile (IReadFile itself is declared in io/interfaces.hpp, with every slot in vtable order).
// CReadFile and the archive readers override the slots.
#pragma once

#include <cstdint>
#include <cstdio>
#include <string>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/file.hpp"
#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io {

// glitch::io::CReadFile. The original keeps a shared CFile handle; here the
// reader owns the FILE* directly (see NOTES.md). Layout: +0x0c handle,
// +0x10 size, +0x14 name, +0x2c obfuscation flag.
class CReadFile : public IReadFile {
public:
    CReadFile(const char* name, bool obfuscated);     // 0x570734, 0x570874
    ~CReadFile() override;                            // 0x570660, 0x5706d8
    // Vtable order (tools/decomp_vtable.py glitch::io::CReadFile): +0x0c read, +0x10 and +0x14 readAsync,
    // +0x18 seek, +0x1c clone, +0x20 getSize, +0x24 getPos, +0x28 getFileName, +0x2c getFullPath,
    // +0x30..+0x38 the IReadFile defaults, +0x3c isOpen.
    // 0x5705b4: returns the fread count (0 when the file is not open).
    std::int32_t read(void* buffer, std::uint32_t count) override;
    bool readAsync(void* buffer, std::uint32_t count, ReadAsyncCallBack callBack,
                   void* context) override;           // 0x5703f4: forwards with getPos()
    bool readAsync(void* buffer, std::uint32_t count, long position, ReadAsyncCallBack callBack,
                   void* context) override;           // 0x570444: returns true, no read
    bool seek(long offset, bool relative) override;   // 0x570488
    CReadFile* clone() const override;                // 0x570808
    long getSize() const override;                    // 0x57044c
    long getPos() const override;                     // 0x5705a8
    const char* getFileName() const override;         // 0x570454
    const char* getFullPath() const override;         // 0x57045c
    virtual bool isOpen() const;                      // +0x3c 0x5703e4
    void openFile();                                  // 0x5704cc

    CReadFile(const CReadFile&) = delete;
    CReadFile& operator=(const CReadFile&) = delete;

private:
    boost::intrusive_ptr<CFile> file;  // +0x0c, the shared handle CFileSystem::open returns (its FILE* is file->file)
    long size = 0;               // +0x10
    std::string fileName;        // +0x14
    bool obfuscated = false;     // +0x2c
};

// 0x5707b4 _ZN6glitch2io14createReadFileEPKc: opens the file; null (and released) when it
// is not open.
IReadFile* createReadFile(const char* name);

}  // namespace glitch::io
