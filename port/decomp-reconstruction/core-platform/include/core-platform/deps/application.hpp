// Application singleton members used by core-platform code. These belong to
// the game and engine categories; tests provide stubs.
#pragma once

// Application::GetDt(): frame delta in milliseconds.
int ApplicationGetDt();

// Device-class globals set by the platform layer.
extern bool SHARP_DEVICES;
extern bool HTC_DEVICES;
extern bool Is_In_Multiplayer_Mode;

// File-open path used by the gameswf callbacks and the script loaders. In the original these are the two virtual calls
// made inline through the application's file system (device +0x34: vtable +0x88 openFile(name, 0, 0), +0x78 closeFile),
// so they have no ELF symbol; the port spells them as functions, defined in core-platform/src/fs_open.cpp.
class IStreamBase;
IStreamBase* ApplicationOpenStream(const char* name);
void ApplicationCloseStream(IStreamBase* stream);  // closes through the file system and drops the pointer
