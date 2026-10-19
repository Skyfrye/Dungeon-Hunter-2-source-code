; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008885ec, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativeSubDecoderPCMState
; alias: _ZN3vox24NativeSubDecoderPCMStateD1Ev
; demangled: vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState()
; decoder-mode: arm
008885ec  24 30 9f e5                                      ldr r3, [pc, #0x24]
008885f0  24 20 9f e5                                      ldr r2, [pc, #0x24]
008885f4  10 40 2d e9                                      push {r4, lr}
008885f8  03 30 8f e0                                      add r3, pc, r3
008885fc  02 20 93 e7                                      ldr r2, [r3, r2]
00888600  00 40 a0 e1                                      mov r4, r0
00888604  08 20 82 e2                                      add r2, r2, #8
00888608  00 20 80 e5                                      str r2, [r0]
0088860c  b5 f3 ff eb                                      bl #0x8854e8
00888610  04 00 a0 e1                                      mov r0, r4
00888614  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00888618  98 c4 10 00 48 20 00 00                          .byte 0x98, 0xc4, 0x10, 0x00, 0x48, 0x20, 0x00, 0x00

; FUNCTION 0x00888620, declared_size=28, range_size=28, mode=arm
; class-group: vox::NativeSubDecoderPCMState
; alias: _ZN3vox24NativeSubDecoderPCMStateD0Ev
; demangled: vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState()
; decoder-mode: arm
00888620  10 40 2d e9                                      push {r4, lr}
00888624  00 40 a0 e1                                      mov r4, r0
00888628  ef ff ff eb                                      bl #0x8885ec
0088862c  04 00 a0 e1                                      mov r0, r4
00888630  1e 17 ea eb                                      bl #0x30e2b0
00888634  04 00 a0 e1                                      mov r0, r4
00888638  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088863c, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativeSubDecoderPCMState
; alias: _ZN3vox24NativeSubDecoderPCMStateD2Ev
; demangled: vox::NativeSubDecoderPCMState::~NativeSubDecoderPCMState()
; decoder-mode: arm
0088863c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00888640  24 20 9f e5                                      ldr r2, [pc, #0x24]
00888644  10 40 2d e9                                      push {r4, lr}
00888648  03 30 8f e0                                      add r3, pc, r3
0088864c  02 20 93 e7                                      ldr r2, [r3, r2]
00888650  00 40 a0 e1                                      mov r4, r0
00888654  08 20 82 e2                                      add r2, r2, #8
00888658  00 20 80 e5                                      str r2, [r0]
0088865c  a1 f3 ff eb                                      bl #0x8854e8
00888660  04 00 a0 e1                                      mov r0, r4
00888664  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00888668  48 c4 10 00 48 20 00 00                          .byte 0x48, 0xc4, 0x10, 0x00, 0x48, 0x20, 0x00, 0x00

; FUNCTION 0x00888670, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativeSubDecoderPCMState
; alias: _ZN3vox24NativeSubDecoderPCMStateC1EPNS_22NativePlaylistsManagerE
; demangled: vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(vox::NativePlaylistsManager*)
; decoder-mode: arm
00888670  70 40 2d e9                                      push {r4, r5, r6, lr}
00888674  20 40 9f e5                                      ldr r4, [pc, #0x20]
00888678  00 50 a0 e1                                      mov r5, r0
0088867c  e6 f6 ff eb                                      bl #0x88621c
00888680  18 30 9f e5                                      ldr r3, [pc, #0x18]
00888684  04 40 8f e0                                      add r4, pc, r4
00888688  05 00 a0 e1                                      mov r0, r5
0088868c  03 30 94 e7                                      ldr r3, [r4, r3]
00888690  08 30 83 e2                                      add r3, r3, #8
00888694  00 30 85 e5                                      str r3, [r5]
00888698  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0088869c  0c c4 10 00 48 20 00 00                          .byte 0x0c, 0xc4, 0x10, 0x00, 0x48, 0x20, 0x00, 0x00

; FUNCTION 0x008886a4, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativeSubDecoderPCMState
; alias: _ZN3vox24NativeSubDecoderPCMStateC2EPNS_22NativePlaylistsManagerE
; demangled: vox::NativeSubDecoderPCMState::NativeSubDecoderPCMState(vox::NativePlaylistsManager*)
; decoder-mode: arm
008886a4  70 40 2d e9                                      push {r4, r5, r6, lr}
008886a8  20 40 9f e5                                      ldr r4, [pc, #0x20]
008886ac  00 50 a0 e1                                      mov r5, r0
008886b0  d9 f6 ff eb                                      bl #0x88621c
008886b4  18 30 9f e5                                      ldr r3, [pc, #0x18]
008886b8  04 40 8f e0                                      add r4, pc, r4
008886bc  05 00 a0 e1                                      mov r0, r5
008886c0  03 30 94 e7                                      ldr r3, [r4, r3]
008886c4  08 30 83 e2                                      add r3, r3, #8
008886c8  00 30 85 e5                                      str r3, [r5]
008886cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008886d0  d8 c3 10 00 48 20 00 00                          .byte 0xd8, 0xc3, 0x10, 0x00, 0x48, 0x20, 0x00, 0x00
