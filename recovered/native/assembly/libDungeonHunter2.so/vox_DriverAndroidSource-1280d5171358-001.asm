; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088ee58, declared_size=4, range_size=4, mode=arm
; class-group: vox::DriverAndroidSource
; alias: _ZN3vox19DriverAndroidSource10PrintDebugEv
; demangled: vox::DriverAndroidSource::PrintDebug()
; decoder-mode: arm
0088ee58  1e ff 2f e1                                      bx lr

; FUNCTION 0x0088fb28, declared_size=52, range_size=52, mode=arm
; class-group: vox::DriverAndroidSource
; alias: _ZN3vox19DriverAndroidSourceD1Ev
; demangled: vox::DriverAndroidSource::~DriverAndroidSource()
; decoder-mode: arm
0088fb28  24 30 9f e5                                      ldr r3, [pc, #0x24]
0088fb2c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0088fb30  10 40 2d e9                                      push {r4, lr}
0088fb34  03 30 8f e0                                      add r3, pc, r3
0088fb38  02 20 93 e7                                      ldr r2, [r3, r2]
0088fb3c  00 40 a0 e1                                      mov r4, r0
0088fb40  08 20 82 e2                                      add r2, r2, #8
0088fb44  00 20 80 e5                                      str r2, [r0]
0088fb48  c5 05 00 eb                                      bl #0x891264
0088fb4c  04 00 a0 e1                                      mov r0, r4
0088fb50  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0088fb54  5c 4f 10 00 74 1a 00 00                          .byte 0x5c, 0x4f, 0x10, 0x00, 0x74, 0x1a, 0x00, 0x00

; FUNCTION 0x0088fb5c, declared_size=28, range_size=28, mode=arm
; class-group: vox::DriverAndroidSource
; alias: _ZN3vox19DriverAndroidSourceD0Ev
; demangled: vox::DriverAndroidSource::~DriverAndroidSource()
; decoder-mode: arm
0088fb5c  10 40 2d e9                                      push {r4, lr}
0088fb60  00 40 a0 e1                                      mov r4, r0
0088fb64  ef ff ff eb                                      bl #0x88fb28
0088fb68  04 00 a0 e1                                      mov r0, r4
0088fb6c  cf f9 e9 eb                                      bl #0x30e2b0
0088fb70  04 00 a0 e1                                      mov r0, r4
0088fb74  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088fb78, declared_size=52, range_size=52, mode=arm
; class-group: vox::DriverAndroidSource
; alias: _ZN3vox19DriverAndroidSourceD2Ev
; demangled: vox::DriverAndroidSource::~DriverAndroidSource()
; decoder-mode: arm
0088fb78  24 30 9f e5                                      ldr r3, [pc, #0x24]
0088fb7c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0088fb80  10 40 2d e9                                      push {r4, lr}
0088fb84  03 30 8f e0                                      add r3, pc, r3
0088fb88  02 20 93 e7                                      ldr r2, [r3, r2]
0088fb8c  00 40 a0 e1                                      mov r4, r0
0088fb90  08 20 82 e2                                      add r2, r2, #8
0088fb94  00 20 80 e5                                      str r2, [r0]
0088fb98  b1 05 00 eb                                      bl #0x891264
0088fb9c  04 00 a0 e1                                      mov r0, r4
0088fba0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0088fba4  0c 4f 10 00 74 1a 00 00                          .byte 0x0c, 0x4f, 0x10, 0x00, 0x74, 0x1a, 0x00, 0x00

; FUNCTION 0x0088fbac, declared_size=60, range_size=60, mode=arm
; class-group: vox::DriverAndroidSource
; alias: _ZN3vox19DriverAndroidSourceC1EPvS1_j
; demangled: vox::DriverAndroidSource::DriverAndroidSource(void*, void*, unsigned int)
; decoder-mode: arm
0088fbac  70 40 2d e9                                      push {r4, r5, r6, lr}
0088fbb0  28 40 9f e5                                      ldr r4, [pc, #0x28]
0088fbb4  00 50 a0 e1                                      mov r5, r0
0088fbb8  3f 06 00 eb                                      bl #0x8914bc
0088fbbc  20 30 9f e5                                      ldr r3, [pc, #0x20]
0088fbc0  04 40 8f e0                                      add r4, pc, r4
0088fbc4  05 00 a0 e1                                      mov r0, r5
0088fbc8  03 30 94 e7                                      ldr r3, [r4, r3]
0088fbcc  08 30 83 e2                                      add r3, r3, #8
0088fbd0  00 30 85 e5                                      str r3, [r5]
0088fbd4  4b 0d 00 eb                                      bl #0x893108
0088fbd8  05 00 a0 e1                                      mov r0, r5
0088fbdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0088fbe0  d0 4e 10 00 74 1a 00 00                          .byte 0xd0, 0x4e, 0x10, 0x00, 0x74, 0x1a, 0x00, 0x00

; FUNCTION 0x0088fc8c, declared_size=60, range_size=60, mode=arm
; class-group: vox::DriverAndroidSource
; alias: _ZN3vox19DriverAndroidSourceC2EPvS1_j
; demangled: vox::DriverAndroidSource::DriverAndroidSource(void*, void*, unsigned int)
; decoder-mode: arm
0088fc8c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088fc90  28 40 9f e5                                      ldr r4, [pc, #0x28]
0088fc94  00 50 a0 e1                                      mov r5, r0
0088fc98  07 06 00 eb                                      bl #0x8914bc
0088fc9c  20 30 9f e5                                      ldr r3, [pc, #0x20]
0088fca0  04 40 8f e0                                      add r4, pc, r4
0088fca4  05 00 a0 e1                                      mov r0, r5
0088fca8  03 30 94 e7                                      ldr r3, [r4, r3]
0088fcac  08 30 83 e2                                      add r3, r3, #8
0088fcb0  00 30 85 e5                                      str r3, [r5]
0088fcb4  13 0d 00 eb                                      bl #0x893108
0088fcb8  05 00 a0 e1                                      mov r0, r5
0088fcbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0088fcc0  f0 4d 10 00 74 1a 00 00                          .byte 0xf0, 0x4d, 0x10, 0x00, 0x74, 0x1a, 0x00, 0x00
