// Application members completed by owner K3 (2026-10-16).

#include <cstdlib>

#include "dh2/Application.hpp"

// 0x31f4f4 Application::InitIPhone(glitch::IDevice*, float, float, float, float, float)
// iPhone-only initialiser. The ARM body is `MOV R2,#1; MOV R3,#0; STRB R2,[R3]; BX LR`: one byte store of 1 to address 0, which faults
// (the same deliberate crash as the "write to address 0" assert idiom of the game). DEVIATION (host-necessitated): std::abort() in
// place of the null store, whose effect on the host is undefined; both end the process. Nothing in the Android build calls it (the
// entry point is Init / InitWin32).
void Application::InitIPhone(glitch::IDevice*, float, float, float, float, float) {
    std::abort();
}
