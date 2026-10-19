; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034c98c, declared_size=216, range_size=216, mode=arm
; class-group: Mouse
; alias: _ZN5Mouse11UpdateFrameEf
; demangled: Mouse::UpdateFrame(float)
; decoder-mode: arm
0034c98c  70 40 2d e9                                      push {r4, r5, r6, lr}
0034c990  00 40 a0 e1                                      mov r4, r0
0034c994  00 50 a0 e1                                      mov r5, r0
0034c998  00 60 a0 e3                                      mov r6, #0
0034c99c  20 10 95 e5                                      ldr r1, [r5, #0x20]
0034c9a0  24 00 95 e5                                      ldr r0, [r5, #0x24]
0034c9a4  7e 08 ff eb                                      bl #0x30eba4
0034c9a8  fe 15 a0 e3                                      mov r1, #0x3f800000
0034c9ac  7c 08 ff eb                                      bl #0x30eba4
0034c9b0  3f 14 a0 e3                                      mov r1, #0x3f000000
0034c9b4  ec 08 ff eb                                      bl #0x30ed6c
0034c9b8  00 10 a0 e1                                      mov r1, r0
0034c9bc  18 00 95 e5                                      ldr r0, [r5, #0x18]
0034c9c0  bb 06 ff eb                                      bl #0x30e4b4
0034c9c4  10 10 95 e5                                      ldr r1, [r5, #0x10]
0034c9c8  00 00 50 e3                                      cmp r0, #0
0034c9cc  14 20 95 e5                                      ldr r2, [r5, #0x14]
0034c9d0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0034c9d4  01 60 86 e2                                      add r6, r6, #1
0034c9d8  00 30 a0 e3                                      mov r3, #0
0034c9dc  01 30 a0 13                                      movne r3, #1
0034c9e0  08 00 56 e3                                      cmp r6, #8
0034c9e4  28 30 c5 e5                                      strb r3, [r5, #0x28]
0034c9e8  18 00 85 e5                                      str r0, [r5, #0x18]
0034c9ec  20 10 85 e5                                      str r1, [r5, #0x20]
0034c9f0  24 20 85 e5                                      str r2, [r5, #0x24]
0034c9f4  20 50 85 e2                                      add r5, r5, #0x20
0034c9f8  e7 ff ff 1a                                      bne #0x34c99c
0034c9fc  00 50 a0 e3                                      mov r5, #0
0034ca00  20 11 94 e5                                      ldr r1, [r4, #0x120]
0034ca04  24 01 94 e5                                      ldr r0, [r4, #0x124]
0034ca08  65 08 ff eb                                      bl #0x30eba4
0034ca0c  fe 15 a0 e3                                      mov r1, #0x3f800000
0034ca10  63 08 ff eb                                      bl #0x30eba4
0034ca14  3f 14 a0 e3                                      mov r1, #0x3f000000
0034ca18  d3 08 ff eb                                      bl #0x30ed6c
0034ca1c  00 10 a0 e1                                      mov r1, r0
0034ca20  18 01 94 e5                                      ldr r0, [r4, #0x118]
0034ca24  a2 06 ff eb                                      bl #0x30e4b4
0034ca28  10 11 94 e5                                      ldr r1, [r4, #0x110]
0034ca2c  00 00 50 e3                                      cmp r0, #0
0034ca30  14 21 94 e5                                      ldr r2, [r4, #0x114]
0034ca34  0c 01 94 e5                                      ldr r0, [r4, #0x10c]
0034ca38  01 50 85 e2                                      add r5, r5, #1
0034ca3c  00 30 a0 e3                                      mov r3, #0
0034ca40  01 30 a0 13                                      movne r3, #1
0034ca44  08 00 55 e3                                      cmp r5, #8
0034ca48  28 31 c4 e5                                      strb r3, [r4, #0x128]
0034ca4c  18 01 84 e5                                      str r0, [r4, #0x118]
0034ca50  20 11 84 e5                                      str r1, [r4, #0x120]
0034ca54  24 21 84 e5                                      str r2, [r4, #0x124]
0034ca58  20 40 84 e2                                      add r4, r4, #0x20
0034ca5c  e7 ff ff 1a                                      bne #0x34ca00
0034ca60  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034cac4, declared_size=172, range_size=172, mode=arm
; class-group: Mouse
; alias: _ZN5MouseC2Ev
; demangled: Mouse::Mouse()
; decoder-mode: arm
0034cac4  70 40 2d e9                                      push {r4, r5, r6, lr}
0034cac8  01 10 a0 e3                                      mov r1, #1
0034cacc  94 50 9f e5                                      ldr r5, [pc, #0x94]
0034cad0  00 40 a0 e1                                      mov r4, r0
0034cad4  e2 ff ff eb                                      bl #0x34ca64
0034cad8  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
0034cadc  05 50 8f e0                                      add r5, pc, r5
0034cae0  04 30 a0 e1                                      mov r3, r4
0034cae4  00 00 95 e7                                      ldr r0, [r5, r0]
0034cae8  00 20 a0 e3                                      mov r2, #0
0034caec  fe 15 a0 e3                                      mov r1, #0x3f800000
0034caf0  08 00 80 e2                                      add r0, r0, #8
0034caf4  0c 00 83 e4                                      str r0, [r3], #0xc
0034caf8  43 cf 84 e2                                      add ip, r4, #0x10c
0034cafc  00 00 a0 e3                                      mov r0, #0
0034cb00  14 20 83 e5                                      str r2, [r3, #0x14]
0034cb04  10 20 83 e5                                      str r2, [r3, #0x10]
0034cb08  0c 20 83 e5                                      str r2, [r3, #0xc]
0034cb0c  04 20 83 e5                                      str r2, [r3, #4]
0034cb10  00 20 83 e5                                      str r2, [r3]
0034cb14  18 10 83 e5                                      str r1, [r3, #0x18]
0034cb18  08 10 83 e5                                      str r1, [r3, #8]
0034cb1c  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034cb20  20 30 83 e2                                      add r3, r3, #0x20
0034cb24  0c 00 53 e1                                      cmp r3, ip
0034cb28  f4 ff ff 1a                                      bne #0x34cb00
0034cb2c  83 cf 84 e2                                      add ip, r4, #0x20c
0034cb30  00 00 a0 e3                                      mov r0, #0
0034cb34  14 20 83 e5                                      str r2, [r3, #0x14]
0034cb38  10 20 83 e5                                      str r2, [r3, #0x10]
0034cb3c  0c 20 83 e5                                      str r2, [r3, #0xc]
0034cb40  04 20 83 e5                                      str r2, [r3, #4]
0034cb44  00 20 83 e5                                      str r2, [r3]
0034cb48  18 10 83 e5                                      str r1, [r3, #0x18]
0034cb4c  08 10 83 e5                                      str r1, [r3, #8]
0034cb50  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034cb54  20 30 83 e2                                      add r3, r3, #0x20
0034cb58  0c 00 53 e1                                      cmp r3, ip
0034cb5c  f4 ff ff 1a                                      bne #0x34cb34
0034cb60  04 00 a0 e1                                      mov r0, r4
0034cb64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034cb68  b4 7f 64 00 04 2f 00 00                          .byte 0xb4, 0x7f, 0x64, 0x00, 0x04, 0x2f, 0x00, 0x00

; FUNCTION 0x0034cb70, declared_size=172, range_size=172, mode=arm
; class-group: Mouse
; alias: _ZN5MouseC1Ev
; demangled: Mouse::Mouse()
; decoder-mode: arm
0034cb70  70 40 2d e9                                      push {r4, r5, r6, lr}
0034cb74  01 10 a0 e3                                      mov r1, #1
0034cb78  94 50 9f e5                                      ldr r5, [pc, #0x94]
0034cb7c  00 40 a0 e1                                      mov r4, r0
0034cb80  b7 ff ff eb                                      bl #0x34ca64
0034cb84  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
0034cb88  05 50 8f e0                                      add r5, pc, r5
0034cb8c  04 30 a0 e1                                      mov r3, r4
0034cb90  00 00 95 e7                                      ldr r0, [r5, r0]
0034cb94  00 20 a0 e3                                      mov r2, #0
0034cb98  fe 15 a0 e3                                      mov r1, #0x3f800000
0034cb9c  08 00 80 e2                                      add r0, r0, #8
0034cba0  0c 00 83 e4                                      str r0, [r3], #0xc
0034cba4  43 cf 84 e2                                      add ip, r4, #0x10c
0034cba8  00 00 a0 e3                                      mov r0, #0
0034cbac  14 20 83 e5                                      str r2, [r3, #0x14]
0034cbb0  10 20 83 e5                                      str r2, [r3, #0x10]
0034cbb4  0c 20 83 e5                                      str r2, [r3, #0xc]
0034cbb8  04 20 83 e5                                      str r2, [r3, #4]
0034cbbc  00 20 83 e5                                      str r2, [r3]
0034cbc0  18 10 83 e5                                      str r1, [r3, #0x18]
0034cbc4  08 10 83 e5                                      str r1, [r3, #8]
0034cbc8  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034cbcc  20 30 83 e2                                      add r3, r3, #0x20
0034cbd0  0c 00 53 e1                                      cmp r3, ip
0034cbd4  f4 ff ff 1a                                      bne #0x34cbac
0034cbd8  83 cf 84 e2                                      add ip, r4, #0x20c
0034cbdc  00 00 a0 e3                                      mov r0, #0
0034cbe0  14 20 83 e5                                      str r2, [r3, #0x14]
0034cbe4  10 20 83 e5                                      str r2, [r3, #0x10]
0034cbe8  0c 20 83 e5                                      str r2, [r3, #0xc]
0034cbec  04 20 83 e5                                      str r2, [r3, #4]
0034cbf0  00 20 83 e5                                      str r2, [r3]
0034cbf4  18 10 83 e5                                      str r1, [r3, #0x18]
0034cbf8  08 10 83 e5                                      str r1, [r3, #8]
0034cbfc  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034cc00  20 30 83 e2                                      add r3, r3, #0x20
0034cc04  0c 00 53 e1                                      cmp r3, ip
0034cc08  f4 ff ff 1a                                      bne #0x34cbe0
0034cc0c  04 00 a0 e1                                      mov r0, r4
0034cc10  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034cc14  08 7f 64 00 04 2f 00 00                          .byte 0x08, 0x7f, 0x64, 0x00, 0x04, 0x2f, 0x00, 0x00
