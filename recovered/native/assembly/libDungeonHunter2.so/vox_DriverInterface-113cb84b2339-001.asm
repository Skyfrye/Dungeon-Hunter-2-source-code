; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088ed40, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterface7RampOutEv
; demangled: vox::DriverInterface::RampOut()
; decoder-mode: arm
0088ed40  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ed44, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterface6RampInEv
; demangled: vox::DriverInterface::RampIn()
; decoder-mode: arm
0088ed44  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ed48, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterface15SetDSPParameterEiPv
; demangled: vox::DriverInterface::SetDSPParameter(int, void*)
; decoder-mode: arm
0088ed48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ed4c, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterface19SetStaticBusRoutingEPc
; demangled: vox::DriverInterface::SetStaticBusRouting(char*)
; decoder-mode: arm
0088ed4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ed50, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterface20SetDynamicBusRoutingEPc
; demangled: vox::DriverInterface::SetDynamicBusRouting(char*)
; decoder-mode: arm
0088ed50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ed54, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterface18SetSFXPresetActiveEibf
; demangled: vox::DriverInterface::SetSFXPresetActive(int, bool, float)
; decoder-mode: arm
0088ed54  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ed58, declared_size=8, range_size=8, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterface13SetOutputModeENS_13VoxOutputModeE
; demangled: vox::DriverInterface::SetOutputMode(vox::VoxOutputMode)
; decoder-mode: arm
0088ed58  00 00 a0 e3                                      mov r0, #0
0088ed5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088ed60, declared_size=8, range_size=8, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterface13GetOutputModeEv
; demangled: vox::DriverInterface::GetOutputMode()
; decoder-mode: arm
0088ed60  01 00 a0 e3                                      mov r0, #1
0088ed64  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088fcdc, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterfaceD1Ev
; demangled: vox::DriverInterface::~DriverInterface()
; decoder-mode: arm
0088fcdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088fce0, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterface6UpdateEf
; demangled: vox::DriverInterface::Update(float)
; decoder-mode: arm
0088fce0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00891000, declared_size=20, range_size=20, mode=arm
; class-group: vox::DriverInterface
; alias: _ZN3vox15DriverInterfaceD0Ev
; demangled: vox::DriverInterface::~DriverInterface()
; decoder-mode: arm
00891000  10 40 2d e9                                      push {r4, lr}
00891004  00 40 a0 e1                                      mov r4, r0
00891008  a8 f4 e9 eb                                      bl #0x30e2b0
0089100c  04 00 a0 e1                                      mov r0, r4
00891010  10 80 bd e8                                      pop {r4, pc}
