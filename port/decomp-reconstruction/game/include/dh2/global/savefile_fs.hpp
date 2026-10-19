// The savefile file system. The original reaches it through the global dword_99F73C (Application::m_device, a glitch::IDevice) at
// device +0x34, a FileSystemWin32 at runtime, and calls its virtual slots: getSavefilesPath +0x74, closeFile +0x78, getFiles
// +0x7c, getFilesMatching +0x80, openSavefile +0x94, deleteSavefile +0x9c, backupSavefile +0xa0, doesSavefileExists +0xb0.
// The accessor below is that load; the calls go straight to FileSystemWin32 (whose dynamic type is fixed in this build).
// IDevice::fileSystem (glitch-core-io/os/device.hpp) is set by the platform layer.
#pragma once

#include "core-platform/filesystem_win32.hpp"

// *(dword_99F73C + 0x34) as the raw pointer (null when the device has no file system).
FileSystemWin32* SavefileFileSystemPtr();

// The same, dereferenced. HOST-PORT: with no device or no file system (unit tests, before the platform layer has created the
// device) it returns a process-wide FileSystemWin32 instead of dereferencing null.
FileSystemWin32& SavefileFileSystem();

// FileSystemBase::doesSavefileExists (0x34e150) as the game calls it: Savegame::FlushJobs(name) first (the savefile job queue
// may hold a pending write of the file), then the file system's existence probe.
bool SavefileExists(const char* name);
