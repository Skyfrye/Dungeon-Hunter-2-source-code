#include "vox-audio/deps/vox_file_system.hpp"

namespace {
vox::FileSystemInterface* g_file_system = nullptr;
}  // namespace

namespace vox {

// 0x8945a4 _ZN3vox19FileSystemInterface11GetInstanceEv: the instance is created on the first
// call with the stdio file system (the original passes a null argument to VoxNewFileSystem).
// Tests install their own instance with SetFileSystemInstanceForTests.
FileSystemInterface* FileSystemInterface::GetInstance() {
    if (g_file_system == nullptr) {
        g_file_system = VoxNewFileSystem();
    }
    return g_file_system;
}

void SetFileSystemInstanceForTests(FileSystemInterface* fs) { g_file_system = fs; }

}  // namespace vox
