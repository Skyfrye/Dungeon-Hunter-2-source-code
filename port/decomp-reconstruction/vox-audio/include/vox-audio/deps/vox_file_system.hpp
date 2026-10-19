// Stand-ins for the vox file-system types used by the stream cursors, the file
// windows and the zip archive reader. The members and offsets are the ones the
// recovered code reads (32-bit offsets in the comments). The process-wide
// instance is still a test stand-in (see src/vox_file_system.cpp); the stdio
// implementation is FileSystemStdio.
#pragma once

#include <cstddef>
#include <cstdint>
#include <list>
#include <map>
#include <string>

#include "vox-audio/vox/string_compare.hpp"

namespace vox {

enum VoxFileAccessMode : int {
    kVoxFileRead = 6,  // mode value passed by StreamCFile::Init / Cursor::Init
};

// Slots the original keeps as globals: m_IOFunc (read) and off_A33EB0..off_A33EC0
// (write, seek, tell, open, close). FileSystemStdio's constructor installs the stdio
// functions. A null slot makes the forwarding code return its failure value.
using FileReadFn = int (*)(void* dst, int size, int count, void* file);
using FileWriteFn = int (*)(const void* src, int size, int count, void* file);
using FileSeekFn = int (*)(void* file, int offset, int whence);
using FileTellFn = int (*)(void* file);
using FileOpenFn = void* (*)(const char* name, VoxFileAccessMode mode);
using FileCloseFn = void (*)(void* file);

extern FileReadFn g_file_read;    // m_IOFunc
extern FileWriteFn g_file_write;  // off_A33EB0
extern FileSeekFn g_file_seek;    // off_A33EB4
extern FileTellFn g_file_tell;    // off_A33EB8
extern FileOpenFn g_file_open;    // off_A33EBC
extern FileCloseFn g_file_close;  // off_A33EC0

// File handle returned by FileSystemInterface::OpenFile: vtable, handle at +0x04,
// flag at +0x08 (0 for a whole file, 1 for a FileLimited window).
// Vtable slots: +0x00 D1, +0x04 D0, +0x08 Read, +0x0c Seek, +0x10 Tell, +0x14 Write,
// +0x18 GetFilePtr.
class FileInterface {
public:
    FileInterface() = default;
    explicit FileInterface(void* file) : file_handle_(file) {}
    virtual ~FileInterface() = default;  // 0x8939e4 (D1), 0x893e60 (D0)

    // 0x8939e8. Vtable slot +0x18 (the last entry of vtable for vox::FileInterface). The word at
    // +0x4 is the handle.
    virtual void* GetFilePtr() const { return file_handle_; }

    virtual int Read(void* dst, std::size_t size, std::size_t count);         // 0x8939fc
    virtual int Write(const void* src, std::size_t size, std::size_t count);  // 0x893adc
    virtual int Seek(int offset, int whence);                                 // 0x893a54
    virtual int Tell();                                                       // 0x893a98

protected:
    void* file_handle_ = nullptr;  // +0x04
    int flag_ = 0;                 // +0x08
};

class CZipReader;

// Process-wide file system. Vtable slots: +0x08 OpenFile, +0x0c CloseFile. Members:
// +0x04 use_archive_ (set by SetArchive), +0x08 archive_, +0x0c the directory stack
// (a list whose head is at +0x0c).
class FileSystemInterface {
public:
    FileSystemInterface() = default;
    virtual ~FileSystemInterface();  // 0x89405c (D1), 0x8940dc (D2); D0 is compiler-generated

    virtual FileInterface* OpenFile(const char* name, VoxFileAccessMode mode);  // 0x894330
    virtual int CloseFile(FileInterface* file);                                 // 0x893ff0

    // Output buffer, its size and the path (the original's static member; Hex-Rays
    // shows the buffer as `this`).
    static int GetDirectory(char* out, int size, const char* path);  // 0x893e88
    int PushDirectory(const char* path);                              // 0x8941ec
    int PopDirectory();                                               // 0x893f4c
    int SetArchive(const char* path, bool lowercase_names, bool strip_directories,
                   bool use_archive);                                 // 0x894290

    // Process-wide instance (test stand-in in vox_file_system.cpp).
    static FileSystemInterface* GetInstance();  // 0x8945a4
    static void DestroyInstance();              // 0x894140

protected:
    bool use_archive_ = false;                 // +0x04
    CZipReader* archive_ = nullptr;            // +0x08
    std::list<std::string> directories_;       // +0x0c
};

// Stdio file system: installs the stdio slots in its constructor.
class FileSystemStdio : public FileSystemInterface {
public:
    FileSystemStdio();                 // 0x8945dc (C2), 0x894684 (C1)
    ~FileSystemStdio() override;       // 0x89472c (D1), 0x89477c (D2)
};

FileSystemInterface* VoxNewFileSystem();  // 0x8947b0

// One entry of an archive's central scan. Layout (32-bit offsets): path_ +0x00,
// file_name_ +0x18 (the map key), directory_ +0x30, data_offset_ +0x48, and the 30
// bytes of the local file header at +0x4c (used by GetFileInfo for the method and
// the uncompressed size).
struct SZipFileEntry {
    SZipFileEntry() = default;                          // 0x894980
    SZipFileEntry(const SZipFileEntry& other) = default;  // 0x894904
    SZipFileEntry& operator=(const SZipFileEntry& other) = default;  // 0x894a3c
    ~SZipFileEntry() = default;                         // 0x894cec

    vox::VoxString path_;                 // +0x00
    vox::VoxString file_name_;            // +0x18
    vox::VoxString directory_;            // +0x30
    std::int32_t data_offset_ = 0;     // +0x48
    std::uint8_t local_header_[30] = {};  // +0x4c
};

// Zip archive reader over a local-header scan (vtable at +0x00, file at +0x04).
class CZipReader {
public:
    CZipReader(const char* path, bool lowercase_names, bool strip_directories);  // 0x895e80 / 0x895f5c
    virtual ~CZipReader();  // 0x894da8 (D1), 0x894e60 (D2); D0 is compiler-generated

    int getFileCount() const;                                        // 0x8948fc
    void deletePathFromFilename(vox::VoxString& name);                  // 0x894efc
    void extractFilename(SZipFileEntry& entry);                      // 0x894f74
    int getFileInfo(const char* name, int& offset, int& size);       // 0x89544c
    bool scanLocalHeader();                                          // 0x895c64

    bool IsOpen() const { return file_ != nullptr; }  // the +0x04 test in SetArchive
    const std::string& ArchivePath() const { return archive_path_; }  // the name at +0x08

private:
    FileInterface* file_ = nullptr;                    // +0x04
    std::string archive_path_;                         // +0x08
    bool lowercase_names_ = false;                     // +0x20
    bool strip_directories_ = false;                   // +0x21
    vox::VoxMap<vox::VoxString, SZipFileEntry, StringComp> files_;  // +0x24 (StringComp order)
};

// Test hook: installs the instance returned by GetInstance.
void SetFileSystemInstanceForTests(FileSystemInterface* fs);

}  // namespace vox
