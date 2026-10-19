// The interfaces of glitch::io, the one definition of each (canonical header of the engine unification wave,
// u1-core): IReadFile, IWriteFile, IFileList, IFileSystem, IFileReadCallBack, IIrrXMLReader (the XML reader
// interface, IXMLReader / IXMLReaderUTF8), IXMLWriter, IAttributesReader, IAttributesWriter and
// IAttributeExchangingObject. IAttributes is in io/iattributes.hpp; IAttribute and CAttributes in
// io/attributes.hpp.
//
// Every virtual method is listed in vtable slot order (tools/decomp_vtable.py <class>); the byte offset of the
// slot in the original 32-bit vtable is in the comment. Slots +0x00 and +0x04 are the destructors and +0x08 is
// IReferenceCounted::onDelete for every reference-counted interface. In the binary every method of IReadFile
// (+0x0c..+0x2c), IWriteFile, IFileList, IFileSystem, IXMLWriter and IIrrXMLReader is pure (a null vtable
// entry); they are pure here as well. Only IAttributesReader::read and IAttributesWriter::write have an inert
// default, because their implementers (CXMLAttributesReader::read 0x571920 and CXMLAttributesWriter::write
// 0x5723f8) are not reconstructed yet.
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::stringc / stringw / SAllocator (STLPORT-DECISION.md section 6)
#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::video {
class IVideoDriver;
}

namespace glitch::io {

class IReadFile;
class IWriteFile;
class IFileList;
class IXMLWriter;
class IAttributes;
// The options a serialization call carries (the last argument of IAttributeExchangingObject's two slots). Only the first
// word is evidenced: a flag word the scene animators test with `& 2` (CSceneNodeAnimatorFollowSpline::serializeAttributes
// 0x6ccef8 and CSceneNodeAnimatorTexture::serializeAttributes 0x6cdee4 add one terminating entry when it is set; the
// matching deserializers drop it). The rest of the structure is not recovered.
struct SAttributeReadWriteOptions {
    std::uint32_t flags;  // +0x00
};

// Completion callback of the asynchronous reads: void (*)(int, int, IReadFile*, void*).
using ReadAsyncCallBack = void (*)(int, int, IReadFile*, void*);

// _ZTVN6glitch2io9IReadFileE, 68 bytes. getBuffer, getExternalBuffer and isAllInMemory are defined in the
// base (0x56eb30, 0x56eb38, 0x56eb40); the rest are pure.
class IReadFile : public glitch::IReferenceCounted {
public:
    // +0x0c: reads up to count bytes at the current position and returns the number read.
    virtual std::int32_t read(void* buffer, std::uint32_t count) = 0;
    // +0x10: reads at the current position (the original forwards to the +0x14 overload with getPos()).
    virtual bool readAsync(void* buffer, std::uint32_t count, ReadAsyncCallBack callBack, void* context) = 0;
    // +0x14
    virtual bool readAsync(void* buffer, std::uint32_t count, long position, ReadAsyncCallBack callBack,
                           void* context) = 0;
    // +0x18
    virtual bool seek(long offset, bool relative) = 0;
    // +0x1c: a new file over the same data.
    virtual IReadFile* clone() const = 0;
    // +0x20
    virtual long getSize() const = 0;
    // +0x24
    virtual long getPos() const = 0;
    // +0x28, +0x2c: the original returns the character data of the name strings (const char*).
    virtual const char* getFileName() const = 0;
    virtual const char* getFullPath() const = 0;
    // +0x30, 0x56eb30: the base has no in-memory buffer.
    virtual void* getBuffer(long* size) {
        (void)size;
        return nullptr;
    }
    // +0x34, 0x56eb38
    virtual void* getExternalBuffer(const char* name, long* size) {
        (void)name;
        (void)size;
        return nullptr;
    }
    // +0x38, 0x56eb40
    virtual bool isAllInMemory() const { return false; }

    // +0x08: the base object is 12 bytes in the original (vptr, count, one more word): every derived record
    // (CReadFile, CLimitReadFile, CMemoryReadFile, ...) starts its members at +0x0c. No constructor stores it.
    std::uint32_t unk_08 = 0;
};

// _ZTVN6glitch2io10IWriteFileE, 44 bytes: six pure slots.
class IWriteFile : public glitch::IReferenceCounted {
public:
    virtual std::size_t write(const void* data, unsigned int count) = 0;  // +0x0c
    virtual void flush() = 0;                                             // +0x10
    virtual bool seek(long offset, bool relative) = 0;                    // +0x14
    virtual long getPos() const = 0;                                      // +0x18
    virtual const char* getFileName() const = 0;                          // +0x1c
    virtual const char* getFullPath() const = 0;                          // +0x20
};

// _ZTVN6glitch2io9IFileListE, 36 bytes: four pure slots (CFileList implements them).
class IFileList : public glitch::IReferenceCounted {
public:
    virtual std::uint32_t getFileCount() const = 0;                      // +0x0c
    virtual const char* getFileName(std::uint32_t index) const = 0;      // +0x10
    virtual const char* getFullFileName(std::uint32_t index) = 0;        // +0x14
    virtual bool isDirectory(std::uint32_t index) const = 0;             // +0x18
};

// _ZTVN6glitch2io17IFileReadCallBackE, 24 bytes. Not reference counted: slots +0x00 and +0x04 are the
// destructors, then read and getSize. CIrrXMLFileReadCallBack implements them.
class IFileReadCallBack {
public:
    virtual ~IFileReadCallBack() = default;                  // +0x00, +0x04
    virtual int read(void* buffer, int size) = 0;            // +0x08: returns the number of bytes read
    virtual long getSize() const = 0;                        // +0x0c
};

// IrrXML's reader interface. The one template serves both character types; its instances in the binary are
// IIrrXMLReader<wchar_t, IReferenceCounted> (IXMLReader) and IIrrXMLReader<char, IReferenceCounted>
// (IXMLReaderUTF8), 88 bytes each: sixteen pure slots (+0x0c..+0x4c) after the reference-counted base.
// CXMLReaderImpl<CharT, Super> implements them (io/xml_reader.hpp).
template <typename CharT, typename Super>
class IIrrXMLReader : public Super {
public:
    virtual bool read() = 0;                                                    // +0x0c
    virtual bool readToNextElement() = 0;                                       // +0x10
    virtual int getNodeType() const = 0;                                        // +0x14
    virtual int getAttributeCount() const = 0;                                  // +0x18
    virtual const CharT* getAttributeName(int index) const = 0;                 // +0x1c
    virtual const CharT* getAttributeValue(int index) const = 0;                // +0x20
    virtual const CharT* getAttributeValue(const CharT* name) const = 0;        // +0x24
    virtual const CharT* getAttributeValueSafe(const CharT* name) const = 0;    // +0x28
    virtual int getAttributeValueAsInt(const CharT* name) const = 0;            // +0x2c
    virtual int getAttributeValueAsInt(int index) const = 0;                    // +0x30
    virtual float getAttributeValueAsFloat(const CharT* name) const = 0;        // +0x34
    virtual float getAttributeValueAsFloat(int index) const = 0;                // +0x38
    virtual const CharT* getNodeName() const = 0;                               // +0x3c
    virtual const CharT* getNodeData() const = 0;                               // +0x40
    virtual bool isEmptyElement() const = 0;                                    // +0x44
    virtual int getSourceFormat() const = 0;                                    // +0x48
    virtual int getParserFormat() const = 0;                                    // +0x4c
};

using IXMLReader = IIrrXMLReader<wchar_t, glitch::IReferenceCounted>;
using IXMLReaderUTF8 = IIrrXMLReader<char, glitch::IReferenceCounted>;

// _ZTVN6glitch2io10IXMLWriterE, 48 bytes: seven pure slots (CXMLWriter implements them). Text is written as
// 4-byte code units (the original's wchar_t is 4 bytes).
class IXMLWriter : public glitch::IReferenceCounted {
public:
    virtual void writeXMLHeader() = 0;                                          // +0x0c
    // +0x10: element with five name/value attribute pairs (null pairs are skipped).
    virtual void writeElement(const wchar_t* name, bool empty, const wchar_t* n1, const wchar_t* v1,
                              const wchar_t* n2, const wchar_t* v2, const wchar_t* n3, const wchar_t* v3,
                              const wchar_t* n4, const wchar_t* v4, const wchar_t* n5, const wchar_t* v5) = 0;
    // +0x14: element with attribute name and value lists (pairs up to the shorter list).
    virtual void writeElement(const wchar_t* name, bool empty, core::svector<core::stringw>& names,
                              core::svector<core::stringw>& values) = 0;
    virtual void writeComment(const wchar_t* text) = 0;                         // +0x18
    virtual void writeClosingTag(const wchar_t* name) = 0;                      // +0x1c
    virtual void writeText(const wchar_t* text) = 0;                            // +0x20
    virtual void writeLineBreak() = 0;                                          // +0x24
};

// _ZTVN6glitch2io17IAttributesReaderE / ...WriterE, 20 bytes each: the destructors and one slot at +0x08
// (read(IAttributes*) and write(IAttributes*)). The slot is not reference counted (no onDelete).
class IAttributesReader {
public:
    virtual ~IAttributesReader() = default;  // +0x00, +0x04
    // +0x08. Pure in the binary; the inert default keeps the unreconstructed implementer constructible.
    virtual bool read(IAttributes* attributes) {
        (void)attributes;
        return false;
    }
};

class IAttributesWriter {
public:
    virtual ~IAttributesWriter() = default;  // +0x00, +0x04
    // +0x08. Pure in the binary; see IAttributesReader.
    virtual bool write(IAttributes* attributes) {
        (void)attributes;
        return false;
    }
};

// _ZTVN6glitch2io11IFileSystemE, 116 bytes: twenty-four pure slots (+0x0c..+0x68). CFileSystem implements
// them in this order (tools/decomp_vtable.py glitch::io::CFileSystem).
class IFileSystem : public glitch::IReferenceCounted {
public:
    virtual IReadFile* createAndOpenFile(const char* name) = 0;                                      // +0x0c
    virtual IReadFile* createMemoryReadFile(void* data, int length, const char* name,
                                            bool takeOwnership) = 0;                                 // +0x10
    virtual IWriteFile* createAndWriteFile(const char* name, bool append) = 0;                       // +0x14
    virtual bool addZipFileArchive(const char* name, bool ignoreCase, bool ignorePaths) = 0;         // +0x18
    virtual bool addFolderFileArchive(const char* name, bool ignoreCase, bool ignorePaths) = 0;      // +0x1c
    virtual bool addPakFileArchive(const char* name, bool ignoreCase, bool ignorePaths) = 0;         // +0x20
    virtual bool addObfuscationFileMap(const char* name, unsigned char key, core::stringc path) = 0;   // +0x24
    virtual bool removeFileArchive(const char* name) = 0;                                            // +0x28
    virtual const char* getWorkingDirectory() = 0;                                                   // +0x2c
    virtual bool changeWorkingDirectoryTo(const char* directory) = 0;                                // +0x30
    virtual core::stringc getAbsolutePath(const core::stringc& path) const = 0;                          // +0x34
    virtual core::stringc getFileDir(const core::stringc& path) const = 0;                               // +0x38
    virtual core::stringc getFileBasename(const core::stringc& path, bool keepExtension) const = 0;      // +0x3c
    virtual IFileList* createFileList() const = 0;                                                   // +0x40
    virtual bool existFile(const char* name) const = 0;                                              // +0x44
    virtual bool existFile(const core::stringc& name) const = 0;                                       // +0x48
    virtual IXMLReader* createXMLReader(const char* name) = 0;                                       // +0x4c
    virtual IXMLReader* createXMLReader(IReadFile* file) = 0;                                        // +0x50
    virtual IXMLReaderUTF8* createXMLReaderUTF8(const char* name) = 0;                               // +0x54
    virtual IXMLReaderUTF8* createXMLReaderUTF8(IReadFile* file) = 0;                                // +0x58
    virtual IXMLWriter* createXMLWriter(const char* name) = 0;                                       // +0x5c
    virtual IXMLWriter* createXMLWriter(IWriteFile* file) = 0;                                       // +0x60
    virtual IAttributes* createEmptyAttributes(glitch::video::IVideoDriver* driver) = 0;             // +0x64
    virtual void clear() = 0;                                                                        // +0x68
};

// _ZTVN6glitch2io26IAttributeExchangingObjectE, 56 bytes. The class has a virtual base (glitch::IReferenceCounted:
// the vtable carries the virtual-base offsets and the virtual thunks after the destructors), so the port's
// plain class stands for it. Slots: +0x00 serializeAttributes (const), +0x04 deserializeAttributes, then the
// destructors at +0x08 and +0x0c. The default bodies do nothing (both are `ret` in the original).
class IAttributeExchangingObject {
public:
    virtual void serializeAttributes(IAttributes* attributes, SAttributeReadWriteOptions* options) const;  // +0x00 0x350c7c
    virtual void deserializeAttributes(IAttributes* attributes, SAttributeReadWriteOptions* options);     // +0x04 0x350c80
    virtual ~IAttributeExchangingObject() = default;                                                       // +0x08, +0x0c
};

}  // namespace glitch::io
