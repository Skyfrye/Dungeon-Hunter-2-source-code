// Platform output driver interfaces (vox::DriverInterface, vox::DriverSourceInterface).
// The base classes carry the virtual surface the engine calls on every driver.
//
// DriverInterface vtable slots, read from the binary's _ZTVN3vox15DriverInterfaceE (0x993b60)
// and _ZTVN3vox13DriverAndroidE (0x993a98) in vtables-001.json and confirmed by the callers
// (KillEmitter 0x86e1a0 calls slot +0x48, Update3D 0x862ec0 calls slot +0x2c):
//   +0x00/+0x04 destructors, +0x08 Init, +0x0c Shutdown, +0x10 Suspend, +0x14 Resume,
//   +0x18 RampOut, +0x1c RampIn, +0x20 Update, +0x24 Set3DParameter,
//   +0x28 SetDSPParameter, +0x2c SetStaticBusRouting, +0x30 SetDynamicBusRouting,
//   +0x34 SetSFXPresetActive, +0x38 SetOutputMode, +0x3c GetOutputMode, +0x40 PrintDebug,
//   +0x44 CreateDriverSource, +0x48 DestroyDriverSource, +0x4c FillBuffer.
// The declarations below are in exactly that order: the concrete methods keep the offsets the
// binary's concrete vtables give them, and the slots the binary leaves null are pure here.
// The earlier order in this header put PrintDebug at +0x24 and moved every later slot, so the
// engine's slot +0x48 call landed on DestroyDriverSource; a probe test prints the offsets.
// DriverAndroid::PrintDebug is the +0x48 target the engine calls for a DSP source.
// DriverSourceInterface (vptr-relative, as above): +0x00/+0x04 destructors, +0x08 Play,
// +0x0c Stop, +0x10 Pause, +0x14 Reset, +0x18 GetState, +0x1c GetByteOffset, +0x20
// SetByteOffset, +0x24 NeedData, +0x28 UploadData, +0x2c SetGain, +0x30 SetPitch, +0x34
// GetGain, +0x38 GetPitch, +0x3c Set3DParameter, +0x40 SetDSPParameter, +0x44 Update,
// +0x48 AllowBufferReference, +0x4c FreeDisposableData, +0x50 PrintDebug, +0x54
// GetBufferCount, +0x58 Init, +0x5c Cleanup. The names come from the concrete
// DriverCallbackSourceInterface and DriverAndroidSource vtables (vtables-001.json); the
// base slots are pure in the binary, so the base defaults below are empty.
#pragma once

#include <cstdint>

#include "vox-audio/vox/voxengine_types.hpp"

namespace vox {

class DriverSourceInterface;

class DriverInterface {
public:
    virtual ~DriverInterface();                                        // D1 0x88fcdc, D0 0x891000
    // Slots +0x08 (Init), +0x0c (Shutdown), +0x10 (Suspend), +0x14 (Resume) and +0x24
    // (Set3DParameter) are null in the base vtable, so they are pure here. DriverAndroid
    // overrides Init and Shutdown. The binary's DriverAndroid reaches Suspend, Resume and
    // Set3DParameter through DriverCallbackInterface, which the port does not inherit yet;
    // DriverAndroid forwards those three to its DriverCallbackInterface member for now.
    virtual void Init(void* context) = 0;                              // +0x08
    virtual void Shutdown() = 0;                                       // +0x0c
    virtual void Suspend() = 0;                                        // +0x10
    virtual void Resume() = 0;                                         // +0x14
    virtual void RampOut();                                            // +0x18, 0x88ed40 (empty)
    virtual void RampIn();                                             // +0x1c, 0x88ed44 (empty)
    virtual void Update(float dt);                                     // +0x20, 0x88fce0 (empty)
    // Slot +0x24: the 3D parameter push (DriverCallbackInterface::Set3DParameter(int, void*) in
    // the binary's vtable, reached by VoxEngineInternal::Update3D at 0x862ec0). Param 0..2 are the
    // general block fields, 3..5 the listener position, velocity and orientation.
    virtual void Set3DParameter(int param, const void* value) = 0;      // +0x24
    virtual void SetDSPParameter(int param, void* value);              // +0x28, 0x88ed48 (empty)
    virtual void SetStaticBusRouting(char* name);                      // +0x2c, 0x88ed4c (empty)
    virtual void SetDynamicBusRouting(char* name);                     // +0x30, 0x88ed50 (empty)
    virtual void SetSFXPresetActive(int preset, bool active, float level);  // +0x34, 0x88ed54 (empty)
    virtual int SetOutputMode(VoxOutputMode mode);                     // +0x38, 0x88ed58: returns 0
    virtual int GetOutputMode();                                       // +0x3c, 0x88ed60: returns 1
    // Slot +0x40: the driver's own debug dump (DriverAndroid::PrintDebug at 0x88ee6c in the
    // binary's vtable), called from VoxEngineInternal::PrintDebug and from KillEmitter 0x86e1a0
    // when the emitter has a DSP source. Null in the base vtable, so pure here.
    virtual void PrintDebug() = 0;                                     // +0x40
    // Slot +0x44: creates the source a new emitter plays through, from the four track words
    // (channels, sample rate, bits, length), the user pointer and the emitter flags. Null in
    // the base vtable (the base's symbol is DriverAndroid::CreateDriverSource only).
    // The binary's signature is (void*, void*, int) (DriverAndroid 0x88fbe8, which passes the two
    // pointers to DriverAndroidSource); the port keeps the named form the callers in
    // w10-dataobj-emitter use. A signature deviation, not a slot deviation.
    virtual DriverSourceInterface* CreateDriverSource(const std::int32_t* params, void* user, int flags);
    // Slot +0x48: releases a source made by CreateDriverSource. Null in the base vtable.
    // The binary's symbol is DriverAndroid::DestroyDriverSource(DriverSourceInterface*), the same
    // name and parameter type as here.
    virtual void DestroyDriverSource(DriverSourceInterface* source) = 0;  // +0x48
    // Slot +0x4c: the driver's own mix pass (DriverCallbackInterface::FillBuffer(short*, int) in
    // the binary's vtable). Null in the base vtable. This body only fills the position so that no
    // later slot moves; the binary's DriverAndroid reaches the mix through DriverCallbackInterface,
    // which is not in this class's chain in the port, so it forwards here (see driver_android.hpp).
    virtual void FillBuffer(std::int16_t* out, int count) { (void)out; (void)count; }  // +0x4c
};

class DriverSourceInterface {
public:
    virtual ~DriverSourceInterface();                                  // D1 0x88fcc8, D0 0x891014
    // Slots +0x08..+0x3c: the source playback surface the emitter drives (Play, Stop,
    // Pause, Reset, GetState, the byte offset, NeedData, UploadData, gain, pitch and the
    // 3D parameter push). Empty here because the base slots are pure in the binary; each
    // concrete source overrides them. The emitter calls them through this base.
    virtual void Play() {}                                             // +0x08
    virtual void Stop() {}                                             // +0x0c
    virtual void Pause() {}                                            // +0x10
    virtual void Reset() {}                                            // +0x14
    virtual int GetState() { return 0; }                               // +0x18
    virtual int GetByteOffset() { return 0; }                          // +0x1c
    virtual void SetByteOffset(int offset) { (void)offset; }           // +0x20
    virtual int NeedData() { return 0; }                               // +0x24
    virtual void UploadData(const void* data, int size) { (void)data; (void)size; }  // +0x28
    virtual void SetGain(float gain) { (void)gain; }                   // +0x2c
    virtual void SetPitch(float pitch) { (void)pitch; }                // +0x30
    virtual float GetGain() { return 0.0f; }                           // +0x34
    virtual float GetPitch() { return 0.0f; }                          // +0x38
    virtual void Set3DParameter(int which, const void* value) { (void)which; (void)value; }  // +0x3c
    virtual void SetDSPParameter(int param, void* value);              // +0x40, 0x88ed3c (empty)
    virtual void Update(float dt);                                     // +0x44, 0x88fccc (empty)
    virtual int AllowBufferReference();                                // +0x48, 0x88fcd0: returns 0
    // +0x4c, 0x88fcd8: the binary's base body is BX LR (no result set). Returns 0 here so that the
    // derived int results (the Mutex::Unlock result of DriverCallbackSourceInterface) keep their type.
    virtual int FreeDisposableData(int id, int& first, int& second);
    virtual void PrintDebug() {}                                       // +0x50 (DriverAndroidSource::PrintDebug)
    virtual int GetBufferCount() const { return 0; }                   // +0x54
    // +0x58: no base body in the binary (the derived Init returns the Mutex::Unlock int). Returns 0 here.
    virtual int Init() { return 0; }
    virtual void Cleanup() {}                                          // +0x5c
};

}  // namespace vox
