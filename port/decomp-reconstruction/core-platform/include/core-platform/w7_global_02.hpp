// Declarations for the global_02 reconstruction slice (w7_global_02.cpp).
#pragma once

namespace glitch {
namespace scene {
class ISceneNode;
class IMesh;
}
}  // namespace glitch

// 0x50f778 _Z18disableCullingModePN6glitch5scene10ISceneNodeE
int disableCullingMode(glitch::scene::ISceneNode* node);

// Target of the disableCullingMode tail branch. Declared here only; its body is
// ledgered under another category (_Z14setCullingModePN6glitch5scene10ISceneNodeEi).
int setCullingMode(glitch::scene::ISceneNode* node, int mode);

// 0x52f0e8 getState (unmangled, exported with C linkage)
extern "C" int getState();

// 0x50fe78 _Z16FlushMeshBuffersPN6glitch5scene5IMeshEbbb (core-platform/src/w7_flush_mesh_buffers.cpp)
void FlushMeshBuffers(glitch::scene::IMesh* mesh, bool vertices, bool indices, bool force);

// ---- app* UI handlers and press* menu handlers (unmangled, exported with C linkage) ----
// The binary's globals app (0x9f63ec, an Application* set by appInit), device (0x9f63e8) and driver (0x9f63f0) are
// defined in w7_global_03.cpp.
class Application;
namespace glitch {
class IDevice;
namespace video { class IVideoDriver; }
}  // namespace glitch
extern Application* app;
extern glitch::IDevice* device;
extern glitch::video::IVideoDriver* driver;

extern "C" {
// 0x52f24c .. 0x530380: each one replays a press (appOnTouch phase 1) and a release (phase 0) at the screen position of a
// menu button, mirrored by isScreenOriented. The int result is the last appOnTouch result (Hex-Rays int).
int pressNOInConfirmation();      // 0x52f24c
int pressNOInExitConfirmation();  // 0x52f3ec
int pressMainMenuInMutiIGM();     // 0x52f5d4
int pressMainMenuInIGM();         // 0x52f6e4
int pressExitButtonInMainMenu();  // 0x52fb78
int pressOKButtonInGLive();       // 0x52ff54
int pressContinueInIGM();         // 0x53013c
int pressBackButtonInGame();      // 0x530280
int pressPauseButtonInGame();     // 0x530380
}  // extern "C"
