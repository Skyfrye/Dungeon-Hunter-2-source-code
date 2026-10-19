; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a84c4, declared_size=72, range_size=72, mode=arm
; class-group: RenderFX::Controller
; alias: _ZN8RenderFX10Controller5ResetEv
; demangled: RenderFX::Controller::Reset()
; decoder-mode: arm
007a84c4  10 40 2d e9                                      push {r4, lr}
007a84c8  00 10 a0 e3                                      mov r1, #0
007a84cc  00 40 a0 e1                                      mov r4, r0
007a84d0  10 00 80 e2                                      add r0, r0, #0x10
007a84d4  2c b3 fe eb                                      bl #0x75518c
007a84d8  14 00 84 e2                                      add r0, r4, #0x14
007a84dc  00 10 a0 e3                                      mov r1, #0
007a84e0  29 b3 fe eb                                      bl #0x75518c
007a84e4  18 00 84 e2                                      add r0, r4, #0x18
007a84e8  00 10 a0 e3                                      mov r1, #0
007a84ec  26 b3 fe eb                                      bl #0x75518c
007a84f0  1c 00 84 e2                                      add r0, r4, #0x1c
007a84f4  00 10 a0 e3                                      mov r1, #0
007a84f8  23 b3 fe eb                                      bl #0x75518c
007a84fc  20 00 84 e2                                      add r0, r4, #0x20
007a8500  00 10 a0 e3                                      mov r1, #0
007a8504  10 40 bd e8                                      pop {r4, lr}
007a8508  1f b3 fe ea                                      b #0x75518c

; FUNCTION 0x007a9a34, declared_size=96, range_size=96, mode=arm
; class-group: RenderFX::Controller
; alias: _ZN8RenderFX10ControllerD1Ev
; demangled: RenderFX::Controller::~Controller()
; decoder-mode: arm
007a9a34  10 40 2d e9                                      push {r4, lr}
007a9a38  00 40 a0 e1                                      mov r4, r0
007a9a3c  20 00 90 e5                                      ldr r0, [r0, #0x20]
007a9a40  00 00 50 e3                                      cmp r0, #0
007a9a44  00 00 00 0a                                      beq #0x7a9a4c
007a9a48  fc c1 fe eb                                      bl #0x75a240
007a9a4c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
007a9a50  00 00 50 e3                                      cmp r0, #0
007a9a54  00 00 00 0a                                      beq #0x7a9a5c
007a9a58  f8 c1 fe eb                                      bl #0x75a240
007a9a5c  18 00 94 e5                                      ldr r0, [r4, #0x18]
007a9a60  00 00 50 e3                                      cmp r0, #0
007a9a64  00 00 00 0a                                      beq #0x7a9a6c
007a9a68  f4 c1 fe eb                                      bl #0x75a240
007a9a6c  14 00 94 e5                                      ldr r0, [r4, #0x14]
007a9a70  00 00 50 e3                                      cmp r0, #0
007a9a74  00 00 00 0a                                      beq #0x7a9a7c
007a9a78  f0 c1 fe eb                                      bl #0x75a240
007a9a7c  10 00 94 e5                                      ldr r0, [r4, #0x10]
007a9a80  00 00 50 e3                                      cmp r0, #0
007a9a84  00 00 00 0a                                      beq #0x7a9a8c
007a9a88  ec c1 fe eb                                      bl #0x75a240
007a9a8c  04 00 a0 e1                                      mov r0, r4
007a9a90  10 80 bd e8                                      pop {r4, pc}
