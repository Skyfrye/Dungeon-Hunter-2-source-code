#include <cstddef>
#include <cstdint>

#include "vox-audio/vox/stream.hpp"

// 0x874e64 _Z5fgetcPN3vox21StreamCursorInterfaceE
// Mirrors the original: the byte is returned even when Read reports nothing,
// so at end of stream this yields 0 rather than EOF.
int fgetc(vox::StreamCursorInterface* cursor) {
    if (cursor == nullptr) {
        return -1;
    }
    std::uint8_t byte = 0;
    cursor->Read(&byte, 1);
    return byte;
}

// 0x874e98 _Z5freadPvjjPN3vox21StreamCursorInterfaceE
std::size_t fread(void* dst, std::size_t size, std::size_t count, vox::StreamCursorInterface* cursor) {
    if (cursor == nullptr) {
        return 0;
    }
    int bytes = cursor->Read(static_cast<std::uint8_t*>(dst), static_cast<int>(size * count));
    if (size == 0) {
        return 0;  // the ARM __aeabi_uidiv by zero yields 0 here
    }
    return static_cast<std::size_t>(bytes) / size;
}

// 0x874ed8 _Z5ftellPN3vox21StreamCursorInterfaceE
int ftell(vox::StreamCursorInterface* cursor) {
    if (cursor == nullptr) {
        return -1;
    }
    return cursor->Tell();
}

// 0x874efc _Z5fseekPN3vox21StreamCursorInterfaceEii
// The original discards the Seek result and always returns 0 on success.
int fseek(vox::StreamCursorInterface* cursor, int offset, int whence) {
    if (cursor == nullptr) {
        return -1;
    }
    cursor->Seek(offset, whence);
    return 0;
}

// 0x874f24 _Z6fclosePN3vox21StreamCursorInterfaceE
int fclose(vox::StreamCursorInterface* cursor) {
    (void)cursor;
    return 0;
}
