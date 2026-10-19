; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008886ec, declared_size=4, range_size=4, mode=arm
; class-group: vox::StreamCursorInterface
; alias: _ZN3vox21StreamCursorInterfaceD1Ev
; demangled: vox::StreamCursorInterface::~StreamCursorInterface()
; decoder-mode: arm
008886ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x008886f0, declared_size=4, range_size=4, mode=arm
; class-group: vox::StreamCursorInterface
; alias: _ZN3vox21StreamCursorInterface4InitEv
; demangled: vox::StreamCursorInterface::Init()
; decoder-mode: arm
008886f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008886f4, declared_size=4, range_size=4, mode=arm
; class-group: vox::StreamCursorInterface
; alias: _ZN3vox21StreamCursorInterface8ShutdownEv
; demangled: vox::StreamCursorInterface::Shutdown()
; decoder-mode: arm
008886f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008886f8, declared_size=24, range_size=24, mode=arm
; class-group: vox::StreamCursorInterface
; alias: _ZN3vox21StreamCursorInterface7ReadRefERPhi
; demangled: vox::StreamCursorInterface::ReadRef(unsigned char*&, int)
; decoder-mode: arm
008886f8  10 40 2d e9                                      push {r4, lr}
008886fc  00 10 91 e5                                      ldr r1, [r1]
00888700  00 30 90 e5                                      ldr r3, [r0]
00888704  0f e0 a0 e1                                      mov lr, pc
00888708  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0088870c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00888710, declared_size=8, range_size=8, mode=arm
; class-group: vox::StreamCursorInterface
; alias: _ZN3vox21StreamCursorInterface20AllowBufferReferenceEv
; demangled: vox::StreamCursorInterface::AllowBufferReference()
; decoder-mode: arm
00888710  00 00 a0 e3                                      mov r0, #0
00888714  1e ff 2f e1                                      bx lr

; FUNCTION 0x008887d0, declared_size=20, range_size=20, mode=arm
; class-group: vox::StreamCursorInterface
; alias: _ZN3vox21StreamCursorInterfaceD0Ev
; demangled: vox::StreamCursorInterface::~StreamCursorInterface()
; decoder-mode: arm
008887d0  10 40 2d e9                                      push {r4, lr}
008887d4  00 40 a0 e1                                      mov r4, r0
008887d8  b4 16 ea eb                                      bl #0x30e2b0
008887dc  04 00 a0 e1                                      mov r0, r4
008887e0  10 80 bd e8                                      pop {r4, pc}
