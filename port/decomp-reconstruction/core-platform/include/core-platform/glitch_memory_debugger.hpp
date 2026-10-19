// GlitchMemoryDebugger: only its one static flag is known (ELF _ZN20GlitchMemoryDebugger29s_isUsingGlitchMemoryDebuggerE,
// .bss 0x99f6e8, STT_OBJECT, 1 byte). Console::Update clears it after every frame (0x330270).
// The flag is defined in core-platform/src/ok3-Console.cpp.
#pragma once

class GlitchMemoryDebugger {
public:
    static bool s_isUsingGlitchMemoryDebugger;
};
