; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034c91c, declared_size=112, range_size=112, mode=arm
; class-group: Keyboard
; alias: _ZN8Keyboard11UpdateFrameEf
; demangled: Keyboard::UpdateFrame(float)
; decoder-mode: arm
0034c91c  70 40 2d e9                                      push {r4, r5, r6, lr}
0034c920  00 40 a0 e1                                      mov r4, r0
0034c924  00 50 a0 e3                                      mov r5, #0
0034c928  20 10 94 e5                                      ldr r1, [r4, #0x20]
0034c92c  24 00 94 e5                                      ldr r0, [r4, #0x24]
0034c930  9b 08 ff eb                                      bl #0x30eba4
0034c934  fe 15 a0 e3                                      mov r1, #0x3f800000
0034c938  99 08 ff eb                                      bl #0x30eba4
0034c93c  3f 14 a0 e3                                      mov r1, #0x3f000000
0034c940  09 09 ff eb                                      bl #0x30ed6c
0034c944  00 10 a0 e1                                      mov r1, r0
0034c948  18 00 94 e5                                      ldr r0, [r4, #0x18]
0034c94c  d8 06 ff eb                                      bl #0x30e4b4
0034c950  10 10 94 e5                                      ldr r1, [r4, #0x10]
0034c954  00 00 50 e3                                      cmp r0, #0
0034c958  14 20 94 e5                                      ldr r2, [r4, #0x14]
0034c95c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0034c960  01 50 85 e2                                      add r5, r5, #1
0034c964  00 30 a0 e3                                      mov r3, #0
0034c968  01 30 a0 13                                      movne r3, #1
0034c96c  61 00 55 e3                                      cmp r5, #0x61
0034c970  28 30 c4 e5                                      strb r3, [r4, #0x28]
0034c974  18 00 84 e5                                      str r0, [r4, #0x18]
0034c978  20 10 84 e5                                      str r1, [r4, #0x20]
0034c97c  24 20 84 e5                                      str r2, [r4, #0x24]
0034c980  20 40 84 e2                                      add r4, r4, #0x20
0034c984  e7 ff ff 1a                                      bne #0x34c928
0034c988  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034cc1c, declared_size=120, range_size=120, mode=arm
; class-group: Keyboard
; alias: _ZN8KeyboardC2Ev
; demangled: Keyboard::Keyboard()
; decoder-mode: arm
0034cc1c  70 40 2d e9                                      push {r4, r5, r6, lr}
0034cc20  01 10 a0 e3                                      mov r1, #1
0034cc24  60 40 9f e5                                      ldr r4, [pc, #0x60]
0034cc28  00 50 a0 e1                                      mov r5, r0
0034cc2c  8c ff ff eb                                      bl #0x34ca64
0034cc30  58 00 9f e5                                      ldr r0, [pc, #0x58]
0034cc34  04 40 8f e0                                      add r4, pc, r4
0034cc38  05 30 a0 e1                                      mov r3, r5
0034cc3c  00 00 94 e7                                      ldr r0, [r4, r0]
0034cc40  00 20 a0 e3                                      mov r2, #0
0034cc44  fe 15 a0 e3                                      mov r1, #0x3f800000
0034cc48  08 00 80 e2                                      add r0, r0, #8
0034cc4c  0c 00 83 e4                                      str r0, [r3], #0xc
0034cc50  c2 ce 83 e2                                      add ip, r3, #0xc20
0034cc54  00 00 a0 e3                                      mov r0, #0
0034cc58  14 20 83 e5                                      str r2, [r3, #0x14]
0034cc5c  10 20 83 e5                                      str r2, [r3, #0x10]
0034cc60  0c 20 83 e5                                      str r2, [r3, #0xc]
0034cc64  04 20 83 e5                                      str r2, [r3, #4]
0034cc68  00 20 83 e5                                      str r2, [r3]
0034cc6c  18 10 83 e5                                      str r1, [r3, #0x18]
0034cc70  08 10 83 e5                                      str r1, [r3, #8]
0034cc74  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034cc78  20 30 83 e2                                      add r3, r3, #0x20
0034cc7c  0c 00 53 e1                                      cmp r3, ip
0034cc80  f4 ff ff 1a                                      bne #0x34cc58
0034cc84  05 00 a0 e1                                      mov r0, r5
0034cc88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034cc8c  5c 7e 64 00 10 3e 00 00                          .byte 0x5c, 0x7e, 0x64, 0x00, 0x10, 0x3e, 0x00, 0x00

; FUNCTION 0x0034cc94, declared_size=120, range_size=120, mode=arm
; class-group: Keyboard
; alias: _ZN8KeyboardC1Ev
; demangled: Keyboard::Keyboard()
; decoder-mode: arm
0034cc94  70 40 2d e9                                      push {r4, r5, r6, lr}
0034cc98  01 10 a0 e3                                      mov r1, #1
0034cc9c  60 40 9f e5                                      ldr r4, [pc, #0x60]
0034cca0  00 50 a0 e1                                      mov r5, r0
0034cca4  6e ff ff eb                                      bl #0x34ca64
0034cca8  58 00 9f e5                                      ldr r0, [pc, #0x58]
0034ccac  04 40 8f e0                                      add r4, pc, r4
0034ccb0  05 30 a0 e1                                      mov r3, r5
0034ccb4  00 00 94 e7                                      ldr r0, [r4, r0]
0034ccb8  00 20 a0 e3                                      mov r2, #0
0034ccbc  fe 15 a0 e3                                      mov r1, #0x3f800000
0034ccc0  08 00 80 e2                                      add r0, r0, #8
0034ccc4  0c 00 83 e4                                      str r0, [r3], #0xc
0034ccc8  c2 ce 83 e2                                      add ip, r3, #0xc20
0034cccc  00 00 a0 e3                                      mov r0, #0
0034ccd0  14 20 83 e5                                      str r2, [r3, #0x14]
0034ccd4  10 20 83 e5                                      str r2, [r3, #0x10]
0034ccd8  0c 20 83 e5                                      str r2, [r3, #0xc]
0034ccdc  04 20 83 e5                                      str r2, [r3, #4]
0034cce0  00 20 83 e5                                      str r2, [r3]
0034cce4  18 10 83 e5                                      str r1, [r3, #0x18]
0034cce8  08 10 83 e5                                      str r1, [r3, #8]
0034ccec  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034ccf0  20 30 83 e2                                      add r3, r3, #0x20
0034ccf4  0c 00 53 e1                                      cmp r3, ip
0034ccf8  f4 ff ff 1a                                      bne #0x34ccd0
0034ccfc  05 00 a0 e1                                      mov r0, r5
0034cd00  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034cd04  e4 7d 64 00 10 3e 00 00                          .byte 0xe4, 0x7d, 0x64, 0x00, 0x10, 0x3e, 0x00, 0x00
