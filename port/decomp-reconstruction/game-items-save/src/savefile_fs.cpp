// The savefile file system accessors (dh2/global/savefile_fs.hpp).
#include "dh2/global/savefile_fs.hpp"

#include "dh2/Application.hpp"
#include "dh2/Savegame.hpp"
#include "glitch-core-io/os/device.hpp"

// *(dword_99F73C + 0x34): Application::m_device (+0x10) -> IDevice +0x34.
FileSystemWin32* SavefileFileSystemPtr() {
    glitch::IDevice* device = ApplicationGetInstance().m_device;
    return device != nullptr ? static_cast<FileSystemWin32*>(device->fileSystem) : nullptr;  // +0x34 is io::IFileSystem* now
}

// HOST-PORT: the original always has a device. A host build that runs game code before the platform layer has created the device
// (the unit tests) gets a process-wide FileSystemWin32 instead of a null dereference.
FileSystemWin32& SavefileFileSystem() {
    if (FileSystemWin32* fileSystem = SavefileFileSystemPtr()) {
        return *fileSystem;
    }
    static FileSystemWin32 fallback;
    return fallback;
}

// 0x34e150 FileSystemBase::doesSavefileExists: Savegame::FlushJobs(name), then open and close the savefile.
bool SavefileExists(const char* name) {
    Savegame::FlushJobs(name);
    return SavefileFileSystem().doesSavefileExists(name);
}
