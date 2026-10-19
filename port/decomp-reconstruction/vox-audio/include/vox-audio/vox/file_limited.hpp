// vox::FileLimited: a window over a file handle, derived from FileInterface. The
// window starts at base_ in the file and holds limit_ bytes; position_ counts the
// bytes read or seeked inside the window (Tell). Layout (32-bit offsets): vtable
// +0x00, handle +0x04, flag +0x08 (1), base +0x0c, limit +0x10, position +0x14.
#pragma once

#include <cstddef>

#include "vox-audio/deps/vox_file_system.hpp"

namespace vox {

class FileLimited : public FileInterface {
public:
    FileLimited();                                  // 0x893b34 (C2), 0x893b7c (C1)
    FileLimited(void* file, int base, int limit);   // 0x893dc8 (C2), 0x893d70 (C1)
    ~FileLimited() override = default;              // 0x8939f0 and 0x893e74: empty bodies

    int Read(void* dst, std::size_t size, std::size_t count) override;  // 0x893bc4
    // 0x8939f4 _ZN3vox11FileLimited5WriteEPKvii: the window is read-only, so Write returns 0.
    int Write(const void*, std::size_t, std::size_t) override { return 0; }
    int Seek(int offset, int whence) override;                          // 0x893c74
    int Tell() override { return position_; }                           // 0x893e20

private:
    int base_ = 0;      // +0x0c
    int limit_ = 0;     // +0x10
    int position_ = 0;  // +0x14
};

}  // namespace vox
