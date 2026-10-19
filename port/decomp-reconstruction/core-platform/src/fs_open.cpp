#include "core-platform/fs_callbacks.hpp"

#include <cstdlib>
#include <cstring>

#include "core-platform/filesystem_base.hpp"
#include "dh2/Application.hpp"
#include "glitch-core-io/os/device.hpp"
#include "net-transport/buffered_stream.hpp"

// ApplicationOpenStream / ApplicationCloseStream (core-platform/deps/application.hpp): the two file-system calls
// fs_open_func makes, as functions for the other loaders. The stream is the FileSystemBase's own IFileStream.
IStreamBase* ApplicationOpenStream(const char* name) {
    FileSystemBase* const fileSystem = static_cast<FileSystemBase*>(ApplicationGetInstance().m_device->fileSystem);
    return fileSystem->openFile(name, false, false);  // vtable +0x88, (name, 0, 0)
}

void ApplicationCloseStream(IStreamBase* stream) {
    FileSystemBase* const fileSystem = static_cast<FileSystemBase*>(ApplicationGetInstance().m_device->fileSystem);
    IFileStream* file = static_cast<IFileStream*>(stream);
    fileSystem->closeFile(file);  // vtable +0x78 (takes the slot by reference)
}

// 0x42b260 _Z12fs_open_funcPKcS0_
// The file is opened through the application's file system (Application::m_device +0x10, then the file system at
// device +0x34, vtable slot +0x88 = FileSystemBase::openFile(name, 0, 0)), its contents are read into a new 12-byte
// handle by BufferedStream::FillBuffer (0x42b1e4), and the stream is then closed (vtable slot +0x78 = closeFile). The
// mode argument is not used by the original.
// The handle is allocated with malloc here (fs_close_func frees it with free), and the buffer FillBuffer allocates is
// copied into a malloc'd block for the same reason; the original has one operator new for both.
void* fs_open_func(const char* name, const char*) {
    FileSystemBase* const fileSystem = static_cast<FileSystemBase*>(ApplicationGetInstance().m_device->fileSystem);
    IFileStream* stream = fileSystem->openFile(name, false, false);
    if (stream == nullptr) {
        return nullptr;
    }
    BufferedStream buffered;
    buffered.FillBuffer(stream);
    FsFileHandle* handle = static_cast<FsFileHandle*>(std::malloc(sizeof(FsFileHandle)));
    handle->data_ = nullptr;
    handle->size_ = buffered.size();
    handle->pos_ = 0;
    if (buffered.size() > 0) {
        handle->data_ = static_cast<unsigned char*>(std::malloc(static_cast<std::size_t>(buffered.size())));
        std::memcpy(handle->data_, buffered.data(), static_cast<std::size_t>(buffered.size()));
    }
    fileSystem->closeFile(stream);
    return handle;
}
