; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046e6b8, declared_size=4, range_size=4, mode=arm
; class-group: b2PolygonDef
; alias: _ZN12b2PolygonDefD1Ev
; demangled: b2PolygonDef::~b2PolygonDef()
; decoder-mode: arm
0046e6b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046ea3c, declared_size=52, range_size=52, mode=arm
; class-group: b2PolygonDef
; alias: _ZN12b2PolygonDefD0Ev
; demangled: b2PolygonDef::~b2PolygonDef()
; decoder-mode: arm
0046ea3c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0046ea40  24 20 9f e5                                      ldr r2, [pc, #0x24]
0046ea44  10 40 2d e9                                      push {r4, lr}
0046ea48  03 30 8f e0                                      add r3, pc, r3
0046ea4c  02 20 93 e7                                      ldr r2, [r3, r2]
0046ea50  00 40 a0 e1                                      mov r4, r0
0046ea54  08 20 82 e2                                      add r2, r2, #8
0046ea58  00 20 80 e5                                      str r2, [r0]
0046ea5c  77 86 fa eb                                      bl #0x310440
0046ea60  04 00 a0 e1                                      mov r0, r4
0046ea64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0046ea68  48 60 52 00 18 38 00 00                          .byte 0x48, 0x60, 0x52, 0x00, 0x18, 0x38, 0x00, 0x00

; FUNCTION 0x007e44b8, declared_size=60, range_size=60, mode=arm
; class-group: b2PolygonDef
; alias: _ZN12b2PolygonDef8SetAsBoxEff
; demangled: b2PolygonDef::SetAsBox(float, float)
; decoder-mode: arm
007e44b8  02 c1 81 e2                                      add ip, r1, #0x80000000
007e44bc  02 31 82 e2                                      add r3, r2, #0x80000000
007e44c0  04 40 2d e5                                      str r4, [sp, #-4]!
007e44c4  04 40 a0 e3                                      mov r4, #4
007e44c8  3c 20 80 e5                                      str r2, [r0, #0x3c]
007e44cc  60 40 80 e5                                      str r4, [r0, #0x60]
007e44d0  2c 30 80 e5                                      str r3, [r0, #0x2c]
007e44d4  30 10 80 e5                                      str r1, [r0, #0x30]
007e44d8  38 c0 80 e5                                      str ip, [r0, #0x38]
007e44dc  20 c0 80 e5                                      str ip, [r0, #0x20]
007e44e0  24 30 80 e5                                      str r3, [r0, #0x24]
007e44e4  28 10 80 e5                                      str r1, [r0, #0x28]
007e44e8  34 20 80 e5                                      str r2, [r0, #0x34]
007e44ec  10 00 bd e8                                      ldm sp!, {r4}
007e44f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e5f40, declared_size=236, range_size=236, mode=arm
; class-group: b2PolygonDef
; alias: _ZN12b2PolygonDef8SetAsBoxEffRK6b2Vec2f
; demangled: b2PolygonDef::SetAsBox(float, float, b2Vec2 const&, float)
; decoder-mode: arm
007e5f40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e5f44  14 d0 4d e2                                      sub sp, sp, #0x14
007e5f48  38 60 9d e5                                      ldr r6, [sp, #0x38]
007e5f4c  03 50 a0 e1                                      mov r5, r3
007e5f50  00 40 a0 e1                                      mov r4, r0
007e5f54  57 f9 ff eb                                      bl #0x7e44b8
007e5f58  06 00 a0 e1                                      mov r0, r6
007e5f5c  fc a1 ec eb                                      bl #0x30e754
007e5f60  00 80 a0 e1                                      mov r8, r0
007e5f64  06 00 a0 e1                                      mov r0, r6
007e5f68  e6 a2 ec eb                                      bl #0x30eb08
007e5f6c  00 30 95 e5                                      ldr r3, [r5]
007e5f70  60 b0 94 e5                                      ldr fp, [r4, #0x60]
007e5f74  00 90 a0 e1                                      mov sb, r0
007e5f78  04 30 8d e5                                      str r3, [sp, #4]
007e5f7c  04 50 95 e5                                      ldr r5, [r5, #4]
007e5f80  02 31 80 e2                                      add r3, r0, #0x80000000
007e5f84  00 00 5b e3                                      cmp fp, #0
007e5f88  08 50 8d e5                                      str r5, [sp, #8]
007e5f8c  0c 30 8d e5                                      str r3, [sp, #0xc]
007e5f90  23 00 00 da                                      ble #0x7e6024
007e5f94  00 50 a0 e3                                      mov r5, #0
007e5f98  20 70 94 e5                                      ldr r7, [r4, #0x20]
007e5f9c  08 00 a0 e1                                      mov r0, r8
007e5fa0  24 60 94 e5                                      ldr r6, [r4, #0x24]
007e5fa4  07 10 a0 e1                                      mov r1, r7
007e5fa8  6f a3 ec eb                                      bl #0x30ed6c
007e5fac  06 10 a0 e1                                      mov r1, r6
007e5fb0  00 a0 a0 e1                                      mov sl, r0
007e5fb4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e5fb8  6b a3 ec eb                                      bl #0x30ed6c
007e5fbc  00 10 a0 e1                                      mov r1, r0
007e5fc0  0a 00 a0 e1                                      mov r0, sl
007e5fc4  f6 a2 ec eb                                      bl #0x30eba4
007e5fc8  07 10 a0 e1                                      mov r1, r7
007e5fcc  00 a0 a0 e1                                      mov sl, r0
007e5fd0  09 00 a0 e1                                      mov r0, sb
007e5fd4  64 a3 ec eb                                      bl #0x30ed6c
007e5fd8  06 10 a0 e1                                      mov r1, r6
007e5fdc  00 70 a0 e1                                      mov r7, r0
007e5fe0  08 00 a0 e1                                      mov r0, r8
007e5fe4  60 a3 ec eb                                      bl #0x30ed6c
007e5fe8  00 10 a0 e1                                      mov r1, r0
007e5fec  07 00 a0 e1                                      mov r0, r7
007e5ff0  eb a2 ec eb                                      bl #0x30eba4
007e5ff4  00 10 a0 e1                                      mov r1, r0
007e5ff8  08 00 9d e5                                      ldr r0, [sp, #8]
007e5ffc  e8 a2 ec eb                                      bl #0x30eba4
007e6000  24 00 84 e5                                      str r0, [r4, #0x24]
007e6004  04 00 9d e5                                      ldr r0, [sp, #4]
007e6008  0a 10 a0 e1                                      mov r1, sl
007e600c  e4 a2 ec eb                                      bl #0x30eba4
007e6010  01 50 85 e2                                      add r5, r5, #1
007e6014  0b 00 55 e1                                      cmp r5, fp
007e6018  20 00 84 e5                                      str r0, [r4, #0x20]
007e601c  08 40 84 e2                                      add r4, r4, #8
007e6020  dc ff ff ba                                      blt #0x7e5f98
007e6024  14 d0 8d e2                                      add sp, sp, #0x14
007e6028  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
