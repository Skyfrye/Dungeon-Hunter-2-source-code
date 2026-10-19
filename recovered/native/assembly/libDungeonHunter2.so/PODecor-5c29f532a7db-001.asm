; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00388a2c, declared_size=108, range_size=108, mode=arm
; class-group: PODecor
; alias: _ZN7PODecorC1EP13PhysicalWorldP10GameObjectb.clone.2
; demangled: PODecor::PODecor(PhysicalWorld*, GameObject*, bool) [clone .clone.2]
; decoder-mode: arm
00388a2c  30 40 2d e9                                      push {r4, r5, lr}
00388a30  01 e0 a0 e3                                      mov lr, #1
00388a34  24 d0 4d e2                                      sub sp, sp, #0x24
00388a38  02 50 a0 e3                                      mov r5, #2
00388a3c  00 c0 a0 e3                                      mov ip, #0
00388a40  0e 30 a0 e1                                      mov r3, lr
00388a44  10 50 8d e5                                      str r5, [sp, #0x10]
00388a48  40 40 9f e5                                      ldr r4, [pc, #0x40]
00388a4c  ff 5f 0f e3                                      movw r5, #0xffff
00388a50  14 50 8d e5                                      str r5, [sp, #0x14]
00388a54  0c c0 8d e5                                      str ip, [sp, #0xc]
00388a58  00 50 a0 e1                                      mov r5, r0
00388a5c  00 c0 8d e5                                      str ip, [sp]
00388a60  04 c0 8d e5                                      str ip, [sp, #4]
00388a64  08 c0 8d e5                                      str ip, [sp, #8]
00388a68  18 e0 8d e5                                      str lr, [sp, #0x18]
00388a6c  1f 9a 03 eb                                      bl #0x46f2f0
00388a70  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00388a74  04 40 8f e0                                      add r4, pc, r4
00388a78  05 00 a0 e1                                      mov r0, r5
00388a7c  03 30 94 e7                                      ldr r3, [r4, r3]
00388a80  08 30 83 e2                                      add r3, r3, #8
00388a84  00 30 85 e5                                      str r3, [r5]
00388a88  24 d0 8d e2                                      add sp, sp, #0x24
00388a8c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00388a90  1c c0 60 00 18 24 00 00                          .byte 0x1c, 0xc0, 0x60, 0x00, 0x18, 0x24, 0x00, 0x00

; FUNCTION 0x0039fc2c, declared_size=108, range_size=108, mode=arm
; class-group: PODecor
; alias: _ZN7PODecorC1EP13PhysicalWorldP10GameObjectb.clone.2
; demangled: PODecor::PODecor(PhysicalWorld*, GameObject*, bool) [clone .clone.2]
; decoder-mode: arm
0039fc2c  30 40 2d e9                                      push {r4, r5, lr}
0039fc30  01 e0 a0 e3                                      mov lr, #1
0039fc34  24 d0 4d e2                                      sub sp, sp, #0x24
0039fc38  02 50 a0 e3                                      mov r5, #2
0039fc3c  00 c0 a0 e3                                      mov ip, #0
0039fc40  0e 30 a0 e1                                      mov r3, lr
0039fc44  10 50 8d e5                                      str r5, [sp, #0x10]
0039fc48  40 40 9f e5                                      ldr r4, [pc, #0x40]
0039fc4c  ff 5f 0f e3                                      movw r5, #0xffff
0039fc50  14 50 8d e5                                      str r5, [sp, #0x14]
0039fc54  0c c0 8d e5                                      str ip, [sp, #0xc]
0039fc58  00 50 a0 e1                                      mov r5, r0
0039fc5c  00 c0 8d e5                                      str ip, [sp]
0039fc60  04 c0 8d e5                                      str ip, [sp, #4]
0039fc64  08 c0 8d e5                                      str ip, [sp, #8]
0039fc68  18 e0 8d e5                                      str lr, [sp, #0x18]
0039fc6c  9f 3d 03 eb                                      bl #0x46f2f0
0039fc70  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0039fc74  04 40 8f e0                                      add r4, pc, r4
0039fc78  05 00 a0 e1                                      mov r0, r5
0039fc7c  03 30 94 e7                                      ldr r3, [r4, r3]
0039fc80  08 30 83 e2                                      add r3, r3, #8
0039fc84  00 30 85 e5                                      str r3, [r5]
0039fc88  24 d0 8d e2                                      add sp, sp, #0x24
0039fc8c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0039fc90  1c 4e 5f 00 18 24 00 00                          .byte 0x1c, 0x4e, 0x5f, 0x00, 0x18, 0x24, 0x00, 0x00

; FUNCTION 0x00470074, declared_size=4, range_size=4, mode=arm
; class-group: PODecor
; alias: _ZN7PODecor17onCollisionBeginsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: PODecor::onCollisionBegins(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
00470074  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470078, declared_size=52, range_size=52, mode=arm
; class-group: PODecor
; alias: _ZN7PODecorD1Ev
; demangled: PODecor::~PODecor()
; decoder-mode: arm
00470078  24 30 9f e5                                      ldr r3, [pc, #0x24]
0047007c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00470080  10 40 2d e9                                      push {r4, lr}
00470084  03 30 8f e0                                      add r3, pc, r3
00470088  02 20 93 e7                                      ldr r2, [r3, r2]
0047008c  00 40 a0 e1                                      mov r4, r0
00470090  08 20 82 e2                                      add r2, r2, #8
00470094  00 20 80 e5                                      str r2, [r0]
00470098  a0 fb ff eb                                      bl #0x46ef20
0047009c  04 00 a0 e1                                      mov r0, r4
004700a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004700a4  0c 4a 52 00 18 24 00 00                          .byte 0x0c, 0x4a, 0x52, 0x00, 0x18, 0x24, 0x00, 0x00

; FUNCTION 0x00470188, declared_size=60, range_size=60, mode=arm
; class-group: PODecor
; alias: _ZN7PODecorD0Ev
; demangled: PODecor::~PODecor()
; decoder-mode: arm
00470188  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0047018c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00470190  10 40 2d e9                                      push {r4, lr}
00470194  03 30 8f e0                                      add r3, pc, r3
00470198  02 20 93 e7                                      ldr r2, [r3, r2]
0047019c  00 40 a0 e1                                      mov r4, r0
004701a0  08 20 82 e2                                      add r2, r2, #8
004701a4  00 20 80 e5                                      str r2, [r0]
004701a8  5c fb ff eb                                      bl #0x46ef20
004701ac  04 00 a0 e1                                      mov r0, r4
004701b0  a2 80 fa eb                                      bl #0x310440
004701b4  04 00 a0 e1                                      mov r0, r4
004701b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004701bc  fc 48 52 00 18 24 00 00                          .byte 0xfc, 0x48, 0x52, 0x00, 0x18, 0x24, 0x00, 0x00
