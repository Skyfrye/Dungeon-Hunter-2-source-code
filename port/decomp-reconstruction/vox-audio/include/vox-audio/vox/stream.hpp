// Stream cursors and buffers (vox::StreamInterface family).
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>

#include "vox-audio/deps/vox_file_system.hpp"

namespace vox {

class StreamInterface;

// Abstract read cursor over a stream. Vtable slots (original ABI):
//   +0x08 Init, +0x0c Shutdown, +0x10 Seek, +0x14 IsSeekable,
//   +0x18 Tell, +0x1c Read, +0x20 ReadRef, +0x24 EndOfStream, +0x28 AllowBufferReference.
class StreamCursorInterface {
public:
    virtual ~StreamCursorInterface() = default;  // 0x8886ec (D1), 0x8887d0 (D0)
    virtual void Init() {}
    virtual void Shutdown() {}
    virtual int Seek(int offset, int whence) = 0;
    virtual bool EndOfStream() = 0;
    virtual int Tell() = 0;
    virtual int Read(std::uint8_t* dst, int size) = 0;
    // 0x8886f8: the original calls the virtual Read(ref, size) with the current
    // pointer value, so a cursor without a buffer reference copies into ref.
    virtual int ReadRef(std::uint8_t*& ref, int size) { return Read(ref, size); }
    virtual bool IsSeekable() const = 0;
    virtual bool AllowBufferReference() const { return false; }

    // The owner word (+0x04) the cursor was made from.
    StreamInterface* OwnerStream() const { return owner_stream_; }

protected:
    // +0x04: the owner word every stream cursor keeps, the stream it reads. The derived
    // cursors set it in their constructors. mpc_getsize reads it (see mpc_reader.cpp).
    StreamInterface* owner_stream_ = nullptr;
};

// Stream source (vox::StreamInterface). Vtable slot +0x10 is Size(), a non-pure
// accessor for the size word at +0x04 (the derived streams fill it in).
class StreamInterface {
public:
    virtual ~StreamInterface() = default;  // 0x8886d8 (D1), 0x8887bc (D0)
    virtual void Init() {}                 // 0x8886dc
    virtual void Shutdown() {}             // 0x8886e0
    virtual int GetType() const = 0;
    virtual int Size() const { return size_; }  // 0x8886e4: returns the word at +0x04
    virtual StreamCursorInterface* CreateNewCursor() = 0;
    virtual void DestroyCursor(StreamCursorInterface* cursor) = 0;

protected:
    int size_ = 0;  // +0x04, shared by the derived streams
};

class StreamMemoryBuffer;

// Parameter block for StreamMemoryBuffer (original: void* data, int size,
// byte explicit-owns flag at +0x8, byte owns at +0x9).
struct StreamMemoryBufferParams {
    const std::uint8_t* data = nullptr;  // +0x00
    int size = 0;                        // +0x04
    bool explicit_owns = false;          // +0x08
    bool owns = false;                   // +0x09
};

// Cursor over a StreamMemoryBuffer. Layout: +0x00 vtable, +0x04 owner, +0x08 position.
class StreamMemoryBufferCursor final : public StreamCursorInterface {
public:
    explicit StreamMemoryBufferCursor(StreamMemoryBuffer* owner);  // defined in stream_memory_buffer.cpp
    ~StreamMemoryBufferCursor() override = default;

    int Seek(int offset, int whence) override;
    bool EndOfStream() override;
    int Tell() override { return position_; }
    int Read(std::uint8_t* dst, int size) override;
    int ReadRef(std::uint8_t*& ref, int size) override;
    bool IsSeekable() const override { return true; }
    bool AllowBufferReference() const override { return true; }

private:
    StreamMemoryBuffer* owner_ = nullptr;  // +0x04
    int position_ = 0;                     // +0x08
};

// In-memory stream. Layout: +0x00 vtable, +0x04 size, +0x08 data, +0x0c owns.
class StreamMemoryBuffer final : public StreamInterface {
public:
    explicit StreamMemoryBuffer(const StreamMemoryBufferParams* params);
    ~StreamMemoryBuffer() override;

    int GetType() const override;
    int Size() const override { return size_; }
    StreamCursorInterface* CreateNewCursor() override;
    void DestroyCursor(StreamCursorInterface* cursor) override;

    const std::uint8_t* Data() const { return data_; }

private:
    std::uint8_t* data_ = nullptr;        // +0x08
    bool owns_ = true;                    // +0x0c
};

// File-backed stream (vox::StreamCFile). Layout: +0x00 vtable, +0x04 size,
// +0x08 path string (STLport layout: +0x18 finish, +0x1c data start, the C string), +0x20 file system.
class StreamCFile final : public StreamInterface {
public:
    explicit StreamCFile(const char* path);
    ~StreamCFile() override;

    int GetType() const override;
    int Size() const override { return size_; }
    StreamCursorInterface* CreateNewCursor() override;
    void DestroyCursor(StreamCursorInterface* cursor) override;

    void Init();

private:
    friend class StreamCFileCursor;
    std::string path_;                     // +0x08 (the original's string words are +0x18 and +0x1c)
    FileSystemInterface* fs_ = nullptr;    // +0x20
};

// Cursor over a StreamCFile with a 32 KiB read-ahead buffer.
class StreamCFileCursor final : public StreamCursorInterface {
public:
    static constexpr int kBufferSize = 0x8000;

    explicit StreamCFileCursor(StreamCFile* owner);
    ~StreamCFileCursor() override;

    void Init() override;
    void Shutdown() override;
    int Seek(int offset, int whence) override;
    bool EndOfStream() override;
    int Tell() override;
    int Read(std::uint8_t* dst, int size) override;
    bool IsSeekable() const override { return true; }

private:
    StreamCFile* owner_ = nullptr;           // +0x04
    FileInterface* file_ = nullptr;          // +0x08
    int position_ = -1;                      // +0x0c
    std::uint8_t buffer_[kBufferSize] = {};  // +0x10
    int buffer_fill_ = 0;                    // +0x8010
    int buffer_index_ = 0;                   // +0x8014
    int buffer_base_ = 0;                    // +0x8018
};

void* StreamMemoryBufferFactory(void* hint);
void* StreamCFileFactory(void* hint);

}  // namespace vox

// Destruct<vox::StreamInterface> (0x86366c): runs the complete-object destructor
// through the vtable (slot 0) without freeing the object. Global in the original.
template <typename T>
void Destruct(T* object) {
    object->~T();
}

// stdio-style helpers over a StreamCursorInterface (global in the original).
int fgetc(vox::StreamCursorInterface* cursor);
std::size_t fread(void* dst, std::size_t size, std::size_t count, vox::StreamCursorInterface* cursor);
int ftell(vox::StreamCursorInterface* cursor);
int fseek(vox::StreamCursorInterface* cursor, int offset, int whence);
int fclose(vox::StreamCursorInterface* cursor);
