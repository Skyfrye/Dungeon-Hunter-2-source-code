// glitch::io::CFileSystem: the file system facade, the implementation of IFileSystem (io/interfaces.hpp,
// which lists the 24 slots). The object is 0x2c bytes (operator new in createFileSystem): vtable, refcount,
// and the three archive lists (zip, pak, unzip). Not modelled yet: the archive containers' add/remove
// functions, the obfuscation map and the nested-archive branch of createAndOpenFile. Their slots are declared
// (the interface is complete) and answer as the port's stubs do; the ledger notes say which.
#pragma once

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/file.hpp"

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/file_list.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/read_file.hpp"
#include "glitch-core-io/io/write_file.hpp"
#include "glitch-core-io/io/xml_writer.hpp"

namespace glitch::io {

class CZipReader;
class CPakReader;
class CUnZipReader;
class CFile;

class CFileSystem : public IFileSystem {
public:
    // 0x56c058 (C2), 0x56c0a8 (C1): zeroes the refcount (+0x04, so createFileSystem returns an
    // object with count 0) and the three archive lists; the vtable is implicit.
    CFileSystem();
    // 0x56cc44 (D1), 0x56ccc4 (D2): clear() drops the archive readers; the lists are then freed.
    ~CFileSystem() override;

    // Vtable order (tools/decomp_vtable.py glitch::io::CFileSystem), +0x0c onwards:
    // +0x0c, 0x56d4e0: the archives first (createAndOpenFileFromArchives), then the plain file
    // (createReadFile), then the path with its last components cut off one at a time: a prefix that is itself a file in
    // an archive or on disk is taken as a nested zip and the rest of the path is opened inside it.
    IReadFile* createAndOpenFile(const char* name) override;
    // +0x10, 0x56c57c: a memory read file; null when the data pointer is null.
    IReadFile* createMemoryReadFile(void* data, int length, const char* name, bool takeOwnership) override;
    // +0x14, 0x56c570: opens a write file (see createWriteFile).
    IWriteFile* createAndWriteFile(const char* name, bool append) override;
    // +0x18 0x56d2c0 (a CZipReader over createAndOpenFile(name), appended to the zip list), +0x1c 0x56d180 (a CUnZipReader over a
    // folder, appended unless a folder of that name is already listed), +0x20 0x56ca70 (a CPakReader), +0x24 0x56e6dc (decodes
    // the map file and fills ObfuscationMap), +0x28 0x56ce60 (drops the first reader of the zip, pak or unzip list with that
    // file name).
    bool addZipFileArchive(const char* name, bool ignoreCase, bool ignorePaths) override;
    bool addFolderFileArchive(const char* name, bool ignoreCase, bool ignorePaths) override;
    bool addPakFileArchive(const char* name, bool ignoreCase, bool ignorePaths) override;
    bool addObfuscationFileMap(const char* name, unsigned char key, core::stringc path) override;
    bool removeFileArchive(const char* name) override;
    // +0x2c, 0x56c214: the working directory as last set by changeWorkingDirectoryTo (a static buffer).
    const char* getWorkingDirectory() override;
    // +0x30, 0x56c528: changes the process working directory; true when the change succeeded, and then
    // the new directory is kept for getWorkingDirectory.
    bool changeWorkingDirectoryTo(const char* directory) override;
    // +0x34, 0x56c348 (const): returns a copy of the name (the original does no path resolution here).
    core::stringc getAbsolutePath(const core::stringc& path) const override;
    // +0x38, 0x56c6b4: the part before the last '/' or '\', or "." when there is none.
    core::stringc getFileDir(const core::stringc& path) const override;
    // +0x3c, 0x56c740: the file name after the last separator; without keepExtension the text from the
    // last '.' is dropped too. A dot before the separator gives the rest after the separator, as
    // the original's unsigned count does.
    core::stringc getFileBasename(const core::stringc& path, bool keepExtension) const override;
    // +0x40, 0x56c4a4 (const): a new, empty directory listing.
    CFileList* createFileList() const override;
    // +0x44, 0x56df38: true when a zip, pak or unzip archive lists the name, or when the file can be opened
    // for reading (CFileSystem::open(name, "rb")); false otherwise.
    bool existFile(const char* name) const override;
    // +0x48, 0x34df7c: forwards to the name overload.
    bool existFile(const core::stringc& name) const override;
    // +0x4c, 0x56c230: opens the file (slot +0x0c), builds the wide reader over it (slot +0x50) and drops the file.
    IXMLReader* createXMLReader(const char* name) override;
    // +0x50, 0x56c480: the wide reader over the file, or null for a null file.
    IXMLReader* createXMLReader(IReadFile* file) override;
    // +0x54, 0x56c44c; +0x58, 0x56c43c: the same for the narrow (UTF-8) reader.
    IXMLReaderUTF8* createXMLReaderUTF8(const char* name) override;
    IXMLReaderUTF8* createXMLReaderUTF8(IReadFile* file) override;
    // +0x5c, 0x56c278: an XML writer over a write file opened by name.
    IXMLWriter* createXMLWriter(const char* name) override;
    // +0x60, 0x56c414: an XML writer over the given write file.
    IXMLWriter* createXMLWriter(IWriteFile* file) override;
    // +0x64, 0x56c3ec: an attribute container bound to the driver.
    IAttributes* createEmptyAttributes(glitch::video::IVideoDriver* driver) override;
    // +0x68, 0x56cb78: drops every reader in the three archive lists and empties them.
    void clear() override;

    // 0x56dc40 (static; the first argument of the listing is the by-value return slot): opens `name` with the fopen
    // mode, applying the obfuscation map (when it is not empty the normalised name is looked up and a hit supplies the
    // real file name and marks the CFile obfuscated) and prefixing the working directory to a name without a drive
    // colon. The returned CFile is shared (count 1 on return); null when fopen fails.
    static boost::intrusive_ptr<CFile> open(const char* name, const char* mode);
    // 0x56e064 (static): the real name the obfuscation map gives for `name`, or `name` itself.
    static const char* getObfuscatedFileName(const char* name);

    // Not virtual: 0x56c0f8 asks each reader of the zip, pak and unzip lists in turn (slot +0x0c of the reader).
    IReadFile* createAndOpenFileFromArchives(const char* name);

    // The working directory is a process-wide static buffer in the original (char[1024],
    // _ZN6glitch2io11CFileSystem16WorkingDirectoryE in .data). core-platform's stand-in
    // CFileSystem_WorkingDirectory[512] is the same global.
    static char WorkingDirectory[1024];
    // _ZN6glitch2io11CFileSystem14ObfuscationMapE (0x9f66e4): obfuscated name -> real name, filled by addObfuscationFileMap. Its
    // node count (the word at 0x9f66f4) is the "is the map in use" test of open and getObfuscatedFileName.
    static std::map<std::string, std::string> ObfuscationMap;

protected:
    // The archive lists, 12 bytes each in the original (begin, end, capacity). Each element is
    // referenced; clear() drops them. Protected so a derived test can fill them.
    std::vector<CZipReader*> zipReaders;      // +0x08
    std::vector<CPakReader*> pakReaders;      // +0x14
    std::vector<CUnZipReader*> unZipReaders;  // +0x20
};

// 0x56c2d8 _ZN6glitch2io16createFileSystemEv
IFileSystem* createFileSystem();

}  // namespace glitch::io
