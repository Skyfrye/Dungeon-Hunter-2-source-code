; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00886f7c, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativeSubDecoderIMAADPCMState
; alias: _ZN3vox29NativeSubDecoderIMAADPCMStateD1Ev
; demangled: vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState()
; decoder-mode: arm
00886f7c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00886f80  24 20 9f e5                                      ldr r2, [pc, #0x24]
00886f84  10 40 2d e9                                      push {r4, lr}
00886f88  03 30 8f e0                                      add r3, pc, r3
00886f8c  02 20 93 e7                                      ldr r2, [r3, r2]
00886f90  00 40 a0 e1                                      mov r4, r0
00886f94  08 20 82 e2                                      add r2, r2, #8
00886f98  00 20 80 e5                                      str r2, [r0]
00886f9c  51 f9 ff eb                                      bl #0x8854e8
00886fa0  04 00 a0 e1                                      mov r0, r4
00886fa4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00886fa8  08 db 10 00 14 20 00 00                          .byte 0x08, 0xdb, 0x10, 0x00, 0x14, 0x20, 0x00, 0x00

; FUNCTION 0x00886fb0, declared_size=28, range_size=28, mode=arm
; class-group: vox::NativeSubDecoderIMAADPCMState
; alias: _ZN3vox29NativeSubDecoderIMAADPCMStateD0Ev
; demangled: vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState()
; decoder-mode: arm
00886fb0  10 40 2d e9                                      push {r4, lr}
00886fb4  00 40 a0 e1                                      mov r4, r0
00886fb8  ef ff ff eb                                      bl #0x886f7c
00886fbc  04 00 a0 e1                                      mov r0, r4
00886fc0  ba 1c ea eb                                      bl #0x30e2b0
00886fc4  04 00 a0 e1                                      mov r0, r4
00886fc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00886fcc, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativeSubDecoderIMAADPCMState
; alias: _ZN3vox29NativeSubDecoderIMAADPCMStateD2Ev
; demangled: vox::NativeSubDecoderIMAADPCMState::~NativeSubDecoderIMAADPCMState()
; decoder-mode: arm
00886fcc  24 30 9f e5                                      ldr r3, [pc, #0x24]
00886fd0  24 20 9f e5                                      ldr r2, [pc, #0x24]
00886fd4  10 40 2d e9                                      push {r4, lr}
00886fd8  03 30 8f e0                                      add r3, pc, r3
00886fdc  02 20 93 e7                                      ldr r2, [r3, r2]
00886fe0  00 40 a0 e1                                      mov r4, r0
00886fe4  08 20 82 e2                                      add r2, r2, #8
00886fe8  00 20 80 e5                                      str r2, [r0]
00886fec  3d f9 ff eb                                      bl #0x8854e8
00886ff0  04 00 a0 e1                                      mov r0, r4
00886ff4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00886ff8  b8 da 10 00 14 20 00 00                          .byte 0xb8, 0xda, 0x10, 0x00, 0x14, 0x20, 0x00, 0x00

; FUNCTION 0x00887000, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativeSubDecoderIMAADPCMState
; alias: _ZN3vox29NativeSubDecoderIMAADPCMStateC1EPNS_22NativePlaylistsManagerE
; demangled: vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(vox::NativePlaylistsManager*)
; decoder-mode: arm
00887000  70 40 2d e9                                      push {r4, r5, r6, lr}
00887004  20 40 9f e5                                      ldr r4, [pc, #0x20]
00887008  00 50 a0 e1                                      mov r5, r0
0088700c  82 fc ff eb                                      bl #0x88621c
00887010  18 30 9f e5                                      ldr r3, [pc, #0x18]
00887014  04 40 8f e0                                      add r4, pc, r4
00887018  05 00 a0 e1                                      mov r0, r5
0088701c  03 30 94 e7                                      ldr r3, [r4, r3]
00887020  08 30 83 e2                                      add r3, r3, #8
00887024  00 30 85 e5                                      str r3, [r5]
00887028  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0088702c  7c da 10 00 14 20 00 00                          .byte 0x7c, 0xda, 0x10, 0x00, 0x14, 0x20, 0x00, 0x00

; FUNCTION 0x00887034, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativeSubDecoderIMAADPCMState
; alias: _ZN3vox29NativeSubDecoderIMAADPCMStateC2EPNS_22NativePlaylistsManagerE
; demangled: vox::NativeSubDecoderIMAADPCMState::NativeSubDecoderIMAADPCMState(vox::NativePlaylistsManager*)
; decoder-mode: arm
00887034  70 40 2d e9                                      push {r4, r5, r6, lr}
00887038  20 40 9f e5                                      ldr r4, [pc, #0x20]
0088703c  00 50 a0 e1                                      mov r5, r0
00887040  75 fc ff eb                                      bl #0x88621c
00887044  18 30 9f e5                                      ldr r3, [pc, #0x18]
00887048  04 40 8f e0                                      add r4, pc, r4
0088704c  05 00 a0 e1                                      mov r0, r5
00887050  03 30 94 e7                                      ldr r3, [r4, r3]
00887054  08 30 83 e2                                      add r3, r3, #8
00887058  00 30 85 e5                                      str r3, [r5]
0088705c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00887060  48 da 10 00 14 20 00 00                          .byte 0x48, 0xda, 0x10, 0x00, 0x14, 0x20, 0x00, 0x00
