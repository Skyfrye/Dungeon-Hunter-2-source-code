// FileSystemBase: the DH2 file-system layer over glitch::io::CFileSystem.
//
// The hierarchy is the original's: FileSystemBase derives from glitch::io::CFileSystem and
// FileSystemWin32 derives from FileSystemBase. _ZTV14FileSystemBase holds CFileSystem's slots up to
// clear() (+0x68) and then FileSystemBase's own definitions (+0x0c createAndOpenFile, +0x30
// changeWorkingDirectoryTo, +0x34 getAbsolutePath, +0xa4 formatFilePath, +0xa8 doesFileExists,
// +0xac doesResourceExists, +0xb0 doesSavefileExists, +0xb8 ApplyFilenameHacks); the rest of its
// 196-byte table (+0x6c..+0xa0, +0xb4) is pure, so the class is abstract, exactly as the original
// is. Every one of those entries is filled in _ZTV15FileSystemWin32.
//
// The remaining DH2 slots are not hoisted here yet: +0x6c getRootPath, +0x70 getResourcesPath,
// +0x74 getSavefilesPath, +0x7c getFiles, +0x80 getFilesMatching, +0x84 getFolders, +0x8c
// openTraceFile, +0x98 copySavefile, +0x9c deleteSavefile, +0xa0 backupSavefile and +0xb4
// isFileNewerThan are still declared directly on FileSystemWin32.
#pragma once

#include <string>

#include "dh2/IFileStream.hpp"
#include "glitch-core-io/io/file_system.hpp"

class FileSystemBase : public glitch::io::CFileSystem {
public:
    // 0x34e504 (C1) / 0x34e538 (C2): the CFileSystem base constructor, then the FileSystemBase vtable (core-platform/src/ok3-FileSystemBase.cpp).
    FileSystemBase();

    // +0x0c, 0x34e688 _ZN14FileSystemBase17createAndOpenFileEPKc.
    // The name is normalised by slot +0xb8, prefixed with RES_PATH unless it is a ".config",
    // ".glsl" or "/sdcard/" name, then opened with glitch::io::CFileSystem::createAndOpenFile
    // (a qualified call: the original's is a direct BL to 0x56d4e0, not the +0x0c slot).
    // PARTIAL: the Application::IsUsingUncompiledData branch (the "Q:\\" retry, see the body).
    glitch::io::IReadFile* createAndOpenFile(const char* name) override;

    // +0x30, 0x34e1d4 _ZN14FileSystemBase24changeWorkingDirectoryToEPKc.
    // chdir, and on success remember the new working directory.
    bool changeWorkingDirectoryTo(const char* directory) override;

    // +0x34, 0x34e5f4 _ZNK14FileSystemBase15getAbsolutePathERKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE.
    // The name through slot +0xb8, then glitch::io::CFileSystem::getAbsolutePath.
    glitch::core::stringc getAbsolutePath(const glitch::core::stringc& path) const override;

    // The slots FileSystemBase leaves to the derived system (pure in _ZTV14FileSystemBase):
    // +0x78 closeFile, +0x88 openFile, +0x90 openResource, +0x94 openSavefile. They return the
    // original's shared CFile handle, which core-platform models as IFileStream.
    virtual void closeFile(IFileStream*& stream) = 0;
    virtual IFileStream* openFile(const char* name, bool writable, bool readwrite) = 0;
    virtual IFileStream* openResource(const char* name) = 0;
    virtual IFileStream* openSavefile(const char* name, bool writable) = 0;

    // +0xa4, 0x34e1ac: returns a copy of the path. FileSystemWin32::formatFilePath overrides the
    // separator handling.
    virtual glitch::core::stringc formatFilePath(const glitch::core::stringc& path) const;

    // +0xa8, 0x34df94 _ZN14FileSystemBase14doesFileExistsEPKc.
    // The name through slot +0x88 (openFile(name, false, false)), closed through slot +0x78;
    // true when a handle came back. Non-const, as the mangled name shows.
    virtual bool doesFileExists(const char* name);

    // +0xac, 0x34dfe0 _ZN14FileSystemBase18doesResourceExistsEPKc.
    // The same through slot +0x90 (openResource).
    virtual bool doesResourceExists(const char* name);

    // +0xb0, 0x34e150 _ZN14FileSystemBase18doesSavefileExistsEPKc.
    // The same through slot +0x94 (openSavefile(name, false)). PARTIAL: the original runs
    // Savegame::FlushJobs(name) first; see the body.
    virtual bool doesSavefileExists(const char* name);

    // +0xb8, 0x34e96c _ZNK14FileSystemBase18ApplyFilenameHacksEPKc.
    // The working-directory strip (slot +0x2c), the ".tga" rewrite through
    // glitch::io::CFileSystem::getFileBasename and ToLowerCase.
    virtual glitch::core::stringc ApplyFilenameHacks(const char* name) const;

    // 0x34e0fc _ZN14FileSystemBase20decodeObfuscatedDataEiPviS0_.
    // Adds a running key to the first (4 - index) bytes. The fourth parameter (mangled as
    // void*) is not used by the body.
    static void decodeObfuscatedData(int index, void* data, int size, void* unused);
};
