// FileSystemWin32 and its _FileHandle: the original Windows file system, on stdio.
// FileSystemWin32 derives from FileSystemBase (the original's hierarchy, see
// core-platform/filesystem_base.hpp), and it fills every slot _ZTV14FileSystemBase leaves pure.
// Member offsets follow the original; each path buffer is 0x104 bytes:
// root +0x2c, working/RES copy +0x130, resources +0x234, data +0x338, savefiles +0x43c.
#pragma once

#include <cstddef>
#include <cstdio>
#include <string>
#include <vector>

#include "core-platform/filesystem_base.hpp"
#include "dh2/IFileStream.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/file.hpp"

class FileSystemWin32 : public FileSystemBase {
public:
    // The handle is an IFileStream (_ZTVN15FileSystemWin3211_FileHandleE: size, canRead, canWrite, peek, read, write, seek,
    // tell, then the inherited skip, seekWrite and tellWrite).
    class _FileHandle : public IFileStream {
    public:
        // 0x34fc18 / 0x35003c: opens dir+name (leading "./" stripped by the caller).
        // writable=false opens read-only. readwrite selects the write mode.
        _FileHandle(const char* dir, const char* name, bool writable, bool readwrite);
        ~_FileHandle() override;
        // The deleting destructor (0x34fbbc) is ~_FileHandle followed by CustomFree(this).
        // The allocation pairs with it through CustomAlloc (the original calls operator new).
        static void* operator new(std::size_t size);
        static void operator delete(void* p);

        std::uint32_t size() const override;                                  // 0x34ee20
        bool canRead() const override { return canRead_; }                    // 0x34eb94
        bool canWrite() const override { return canWrite_; }                  // 0x34eb9c
        std::uint64_t peek(void* buf, std::uint64_t n) const override;        // 0x34ef58
        std::uint64_t read(void* buf, std::uint64_t n) override;              // 0x34eec8
        std::uint64_t write(const void* buf, std::uint64_t n) override;       // 0x34ee74
        void seek(std::uint64_t pos) override;                                // 0x34ee10
        std::uint64_t tell() const override;                                  // 0x34edf0

        std::FILE* file_ = nullptr;   // +0x4: the handle's FILE*, cached out of the CFile below
        // +0x8: the shared glitch::io::CFile from glitch::io::CFileSystem::open (0x56dc40); its obfuscation byte (+0x24) is
        // what read and peek test.
        boost::intrusive_ptr<glitch::io::CFile> cfile_;
        bool canRead_ = false;        // +0xc
        bool canWrite_ = false;       // +0xd
    };

    FileSystemWin32();   // 0x34f6f4 / 0x34f788: calls _getPaths()

    const char* getRootPath() const;         // 0x34eba4 (+0x2c)
    const char* getResourcesPath() const;    // 0x34ebac (+0x234)
    const char* getSavefilesPath() const;    // 0x34ebb4 (+0x43c)
    void copySavefile(const char* name);     // 0x34ebc0: no-op
    // +0x78. The original calls vtable slot +0x4 of the handle (the deleting destructor) and
    // clears the pointer.
    void closeFile(IFileStream*& stream) override;
    void getFolders(const char* dir, std::vector<std::string>& out) const;  // 0x34ebfc: no-op
    bool _getFileInfo(const char* a, const char* b, void* info) const;  // 0x34ebc4
    void isFileNewerThan(const char* a, const char* b) const;          // 0x34ec00 (empty)

    // +0x94 / +0x90 / +0x88 / +0x8c. The returns are covariant with FileSystemBase's
    // IFileStream*: the handle is a FileSystemWin32::_FileHandle.
    _FileHandle* openSavefile(const char* name, bool writable) override;  // 0x34fee4
    _FileHandle* openResource(const char* name) override;                 // 0x34ff28
    _FileHandle* openTraceFile(const char* name);                         // 0x34ff84
    _FileHandle* openFile(const char* name, bool writable, bool readwrite) override;  // 0x34ffb0
    _FileHandle* _createHandle(const char* dir, const char* name, bool writable, bool readwrite);  // 0x34fe50

    bool backupSavefile(const char* src, const char* dst) const;  // 0x34f10c
    // +0x9c: true when the file was removed. FileSystemBase does not declare this slot yet, so it
    // is not an override.
    bool deleteSavefile(const char* name) const;
    // The savefile probe (FileSystemBase::doesSavefileExists, 0x34e150, slot +0xb0) is inherited.
    // It opens the savefile through openSavefile above and closes it. The original runs
    // Savegame::FlushJobs(name) first; the game-side wrapper SavefileExists
    // (dh2/global/savefile_fs.hpp) does that, since core-platform cannot see the game headers.
    glitch::core::stringc formatFilePath(const glitch::core::stringc& path) const override;  // 0x34f8a4
    void getFiles(const char* dir, std::vector<std::string>& out) const;  // 0x3505a0
    void getFilesMatching(const char* dir, const char* pattern, std::vector<std::string>& out) const;  // 0x35041c

private:
    void _getPaths();                                  // 0x34f068
    static void makeFullPath(const char* a, const char* b, char* out, int size);  // 0x34f34c
    static wchar_t* makeFullPath(const wchar_t* a, const wchar_t* b, wchar_t* out, int size);  // 0x34f35c

    char rootPath_[0x104];       // +0x2c
    char cwdPath_[0x104];        // +0x130
    char resourcesPath_[0x104];  // +0x234
    char dataPath_[0x104];       // +0x338
    char savefilesPath_[0x104];  // +0x43c
};
