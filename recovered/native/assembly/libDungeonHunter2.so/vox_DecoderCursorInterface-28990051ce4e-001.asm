; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0086fb38, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterfaceD1Ev
; demangled: vox::DecoderCursorInterface::~DecoderCursorInterface()
; decoder-mode: arm
0086fb38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fb3c, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterface4InitEv
; demangled: vox::DecoderCursorInterface::Init()
; decoder-mode: arm
0086fb3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fb40, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterface8ShutdownEv
; demangled: vox::DecoderCursorInterface::Shutdown()
; decoder-mode: arm
0086fb40  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fb44, declared_size=24, range_size=24, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterface9DecodeRefERPvi
; demangled: vox::DecoderCursorInterface::DecodeRef(void*&, int)
; decoder-mode: arm
0086fb44  10 40 2d e9                                      push {r4, lr}
0086fb48  00 10 91 e5                                      ldr r1, [r1]
0086fb4c  00 30 90 e5                                      ldr r3, [r0]
0086fb50  0f e0 a0 e1                                      mov lr, pc
0086fb54  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086fb58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0086fb5c, declared_size=24, range_size=24, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterface5ResetEv
; demangled: vox::DecoderCursorInterface::Reset()
; decoder-mode: arm
0086fb5c  10 40 2d e9                                      push {r4, lr}
0086fb60  00 10 a0 e3                                      mov r1, #0
0086fb64  00 30 90 e5                                      ldr r3, [r0]
0086fb68  0f e0 a0 e1                                      mov lr, pc
0086fb6c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0086fb70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0086fb74, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterface14GetRewindLimitEv
; demangled: vox::DecoderCursorInterface::GetRewindLimit()
; decoder-mode: arm
0086fb74  00 00 a0 e3                                      mov r0, #0
0086fb78  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fb7c, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterface6RewindEi
; demangled: vox::DecoderCursorInterface::Rewind(int)
; decoder-mode: arm
0086fb7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fb80, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterface7SetLoopEb
; demangled: vox::DecoderCursorInterface::SetLoop(bool)
; decoder-mode: arm
0086fb80  1c 10 c0 e5                                      strb r1, [r0, #0x1c]
0086fb84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fb88, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterface15GetStreamCursorEv
; demangled: vox::DecoderCursorInterface::GetStreamCursor()
; decoder-mode: arm
0086fb88  18 00 90 e5                                      ldr r0, [r0, #0x18]
0086fb8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fb90, declared_size=8, range_size=8, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterface20AllowBufferReferenceEv
; demangled: vox::DecoderCursorInterface::AllowBufferReference()
; decoder-mode: arm
0086fb90  00 00 a0 e3                                      mov r0, #0
0086fb94  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086fdec, declared_size=20, range_size=20, mode=arm
; class-group: vox::DecoderCursorInterface
; alias: _ZN3vox22DecoderCursorInterfaceD0Ev
; demangled: vox::DecoderCursorInterface::~DecoderCursorInterface()
; decoder-mode: arm
0086fdec  10 40 2d e9                                      push {r4, lr}
0086fdf0  00 40 a0 e1                                      mov r4, r0
0086fdf4  2d 79 ea eb                                      bl #0x30e2b0
0086fdf8  04 00 a0 e1                                      mov r0, r4
0086fdfc  10 80 bd e8                                      pop {r4, pc}
