// Free helpers and float constants of the v2Controllable camera commands (Ctrl_Zoom, Ctrl_ResetZoom,
// Ctrl_TranslateMapCam), batch g1-game-anim-v2Controllable-ff8db6-1.
#pragma once

class Application;

// Singleton<Application>::s_inst (0x99f72c): the Application object itself (Application.hpp). The camera commands
// reach the bound camera through it. The original's global dword_99F77C is s_inst + 0x50, which is
// Application::m_zoomHandler, and the camera is ZoomHandler +0x20 (ZoomHandler::m_camera, a CameraLevel*).
// No game header defines the singleton object yet; the integrator defines this accessor.
Application& ApplicationGetInstance();

// Float constants of Ctrl_Zoom and Ctrl_TranslateMapCam, named by their bit patterns in libDungeonHunter2.so.
// Hex-Rays prints the decimal values; the asm (decomp_asm.py) loads the bit patterns shown in the comments.
inline constexpr float kCtrlZoomStepWide = -0.25f;          // 0xbe800000: zoom step when camera +0x85 is set
inline constexpr float kCtrlZoomStepNarrow = -0.03f;        // 0xbcf5c28f: zoom step when camera +0x85 is clear
inline constexpr float kCtrlMapCamRotation = 0.70710678f;   // 0x3f3504f3: 1/sqrt(2), the 45 degree rotation
inline constexpr float kCtrlMapCamScale = 250.0f;           // 0x437a0000: pan scale of Ctrl_TranslateMapCam
