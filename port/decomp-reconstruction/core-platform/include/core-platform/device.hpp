// Device: static capability queries for the platform (Win32 build values).
#pragma once

class Device {
public:
    static bool IsFixedPipeline();          // 0x381668
    static bool IsProgrammablePipeline();   // 0x3816a8
    static int GetModel();                  // 0x38173c
    static bool IsiOSVersionSupported(const char* version);  // 0x381744
    static bool IsHighPerformance();        // 0x38174c
    static bool IsIphoneHighRez();          // 0x381750
    struct Resolution {
        int width;   // +0x0
        int height;  // +0x4
    };
    static Resolution GetScreenResolution();  // 0x381758
    static bool IsMultitaskSupported();     // 0x38176c
    static bool IsGameCenterSupported();    // 0x381774
    static bool IsBluetoothSupported();     // 0x38177c
};
