// OutputDebugStringA, the Win32 debug-output import that the FreeType panic and message helpers (FT_Panic, FT_Message) call. The
// Android library defines it itself as a bare return (0x70d434: BX LR). Windows hosts have the real import in kernel32, so the
// definition below is compiled only elsewhere (owner K3, 2026-10-16).

#if !defined(_WIN32)
extern "C" void OutputDebugStringA(const char* /*text*/) {}
#endif
