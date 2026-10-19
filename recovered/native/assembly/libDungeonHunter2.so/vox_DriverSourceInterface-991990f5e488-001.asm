; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088ed3c, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverSourceInterface
; alias: _ZN3vox21DriverSourceInterface15SetDSPParameterEiPv
; demangled: vox::DriverSourceInterface::SetDSPParameter(int, void*)
; decoder-mode: arm
0088ed3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088fcc8, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverSourceInterface
; alias: _ZN3vox21DriverSourceInterfaceD1Ev
; demangled: vox::DriverSourceInterface::~DriverSourceInterface()
; decoder-mode: arm
0088fcc8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088fccc, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverSourceInterface
; alias: _ZN3vox21DriverSourceInterface6UpdateEf
; demangled: vox::DriverSourceInterface::Update(float)
; decoder-mode: arm
0088fccc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088fcd0, declared_size=8, range_size=8, mode=arm
; class-group: vox::DriverSourceInterface
; alias: _ZN3vox21DriverSourceInterface20AllowBufferReferenceEv
; demangled: vox::DriverSourceInterface::AllowBufferReference()
; decoder-mode: arm
0088fcd0  00 00 a0 e3                                      mov r0, #0
0088fcd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088fcd8, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverSourceInterface
; alias: _ZN3vox21DriverSourceInterface18FreeDisposableDataEiRiS1_
; demangled: vox::DriverSourceInterface::FreeDisposableData(int, int&, int&)
; decoder-mode: arm
0088fcd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00891014, declared_size=20, range_size=20, mode=arm
; class-group: vox::DriverSourceInterface
; alias: _ZN3vox21DriverSourceInterfaceD0Ev
; demangled: vox::DriverSourceInterface::~DriverSourceInterface()
; decoder-mode: arm
00891014  10 40 2d e9                                      push {r4, lr}
00891018  00 40 a0 e1                                      mov r4, r0
0089101c  a3 f4 e9 eb                                      bl #0x30e2b0
00891020  04 00 a0 e1                                      mov r0, r4
00891024  10 80 bd e8                                      pop {r4, pc}
