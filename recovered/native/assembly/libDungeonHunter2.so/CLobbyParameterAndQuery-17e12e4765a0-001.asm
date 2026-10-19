; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00836a20, declared_size=240, range_size=240, mode=arm
; class-group: CLobbyParameterAndQuery
; alias: _ZN23CLobbyParameterAndQuery13PackParameterERi
; demangled: CLobbyParameterAndQuery::PackParameter(int&)
; decoder-mode: arm
00836a20  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00836a24  00 30 a0 e3                                      mov r3, #0
00836a28  00 30 81 e5                                      str r3, [r1]
00836a2c  00 80 a0 e1                                      mov r8, r0
00836a30  04 00 90 e5                                      ldr r0, [r0, #4]
00836a34  01 b0 a0 e1                                      mov fp, r1
00836a38  03 00 50 e1                                      cmp r0, r3
00836a3c  0a 00 00 da                                      ble #0x836a6c
00836a40  08 50 a0 e1                                      mov r5, r8
00836a44  08 20 a0 e1                                      mov r2, r8
00836a48  03 40 a0 e1                                      mov r4, r3
00836a4c  18 10 92 e5                                      ldr r1, [r2, #0x18]
00836a50  01 30 83 e2                                      add r3, r3, #1
00836a54  00 00 53 e1                                      cmp r3, r0
00836a58  01 40 84 e0                                      add r4, r4, r1
00836a5c  04 20 82 e2                                      add r2, r2, #4
00836a60  f9 ff ff 1a                                      bne #0x836a4c
00836a64  00 00 54 e3                                      cmp r4, #0
00836a68  02 00 00 1a                                      bne #0x836a78
00836a6c  00 90 a0 e3                                      mov sb, #0
00836a70  09 00 a0 e1                                      mov r0, sb
00836a74  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00836a78  02 40 84 e2                                      add r4, r4, #2
00836a7c  04 00 a0 e1                                      mov r0, r4
00836a80  92 5d eb eb                                      bl #0x30e0d0
00836a84  04 20 a0 e1                                      mov r2, r4
00836a88  00 10 a0 e3                                      mov r1, #0
00836a8c  00 90 a0 e1                                      mov sb, r0
00836a90  33 d2 ff eb                                      bl #0x82b364
00836a94  04 70 98 e5                                      ldr r7, [r8, #4]
00836a98  00 00 57 e3                                      cmp r7, #0
00836a9c  07 30 a0 e1                                      mov r3, r7
00836aa0  01 a0 a0 d3                                      movle sl, #1
00836aa4  15 00 00 da                                      ble #0x836b00
00836aa8  00 40 a0 e3                                      mov r4, #0
00836aac  01 a0 a0 e3                                      mov sl, #1
00836ab0  03 00 00 ea                                      b #0x836ac4
00836ab4  01 40 84 e2                                      add r4, r4, #1
00836ab8  04 00 53 e1                                      cmp r3, r4
00836abc  04 50 85 e2                                      add r5, r5, #4
00836ac0  0e 00 00 da                                      ble #0x836b00
00836ac4  18 60 95 e5                                      ldr r6, [r5, #0x18]
00836ac8  00 00 56 e3                                      cmp r6, #0
00836acc  01 70 47 02                                      subeq r7, r7, #1
00836ad0  f7 ff ff 0a                                      beq #0x836ab4
00836ad4  14 30 98 e5                                      ldr r3, [r8, #0x14]
00836ad8  0a 00 89 e0                                      add r0, sb, sl
00836adc  06 20 a0 e1                                      mov r2, r6
00836ae0  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00836ae4  19 d2 ff eb                                      bl #0x82b350
00836ae8  04 30 98 e5                                      ldr r3, [r8, #4]
00836aec  01 40 84 e2                                      add r4, r4, #1
00836af0  06 a0 8a e0                                      add sl, sl, r6
00836af4  04 00 53 e1                                      cmp r3, r4
00836af8  04 50 85 e2                                      add r5, r5, #4
00836afc  f0 ff ff ca                                      bgt #0x836ac4
00836b00  00 70 c9 e5                                      strb r7, [sb]
00836b04  09 00 a0 e1                                      mov r0, sb
00836b08  00 a0 8b e5                                      str sl, [fp]
00836b0c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00836b10, declared_size=252, range_size=252, mode=arm
; class-group: CLobbyParameterAndQuery
; alias: _ZN23CLobbyParameterAndQuery17AddQueryConditionEi11compareOptTPc
; demangled: CLobbyParameterAndQuery::AddQueryCondition(int, compareOptT, char*)
; decoder-mode: arm
00836b10  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00836b14  00 50 a0 e1                                      mov r5, r0
00836b18  04 00 90 e5                                      ldr r0, [r0, #4]
00836b1c  04 d0 4d e2                                      sub sp, sp, #4
00836b20  01 40 a0 e1                                      mov r4, r1
00836b24  01 00 50 e1                                      cmp r0, r1
00836b28  00 00 a0 c3                                      movgt r0, #0
00836b2c  01 00 a0 d3                                      movle r0, #1
00836b30  a1 af 90 e1                                      orrs sl, r0, r1, lsr #31
00836b34  02 60 a0 e1                                      mov r6, r2
00836b38  03 80 a0 e1                                      mov r8, r3
00836b3c  30 00 00 1a                                      bne #0x836c04
00836b40  00 00 53 e3                                      cmp r3, #0
00836b44  2e 00 00 0a                                      beq #0x836c04
00836b48  03 00 a0 e1                                      mov r0, r3
00836b4c  16 d1 ff eb                                      bl #0x82afac
00836b50  14 90 95 e5                                      ldr sb, [r5, #0x14]
00836b54  00 70 a0 e1                                      mov r7, r0
00836b58  04 b1 a0 e1                                      lsl fp, r4, #2
00836b5c  04 01 99 e7                                      ldr r0, [sb, r4, lsl #2]
00836b60  0b 90 89 e0                                      add sb, sb, fp
00836b64  00 00 50 e3                                      cmp r0, #0
00836b68  04 00 00 0a                                      beq #0x836b80
00836b6c  cf 5d eb eb                                      bl #0x30e2b0
00836b70  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836b74  04 a1 83 e7                                      str sl, [r3, r4, lsl #2]
00836b78  14 90 95 e5                                      ldr sb, [r5, #0x14]
00836b7c  0b 90 89 e0                                      add sb, sb, fp
00836b80  05 a0 87 e2                                      add sl, r7, #5
00836b84  0a 00 a0 e1                                      mov r0, sl
00836b88  50 5d eb eb                                      bl #0x30e0d0
00836b8c  00 00 89 e5                                      str r0, [sb]
00836b90  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836b94  0a 20 a0 e1                                      mov r2, sl
00836b98  00 10 a0 e3                                      mov r1, #0
00836b9c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00836ba0  ef d1 ff eb                                      bl #0x82b364
00836ba4  06 30 84 e2                                      add r3, r4, #6
00836ba8  04 20 87 e2                                      add r2, r7, #4
00836bac  03 21 85 e7                                      str r2, [r5, r3, lsl #2]
00836bb0  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836bb4  57 04 e7 e7                                      ubfx r0, r7, #8, #8
00836bb8  08 10 a0 e1                                      mov r1, r8
00836bbc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00836bc0  07 20 a0 e1                                      mov r2, r7
00836bc4  00 40 c3 e5                                      strb r4, [r3]
00836bc8  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836bcc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00836bd0  01 60 c3 e5                                      strb r6, [r3, #1]
00836bd4  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836bd8  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00836bdc  02 00 c3 e5                                      strb r0, [r3, #2]
00836be0  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836be4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00836be8  03 70 c3 e5                                      strb r7, [r3, #3]
00836bec  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836bf0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00836bf4  04 00 80 e2                                      add r0, r0, #4
00836bf8  04 d0 8d e2                                      add sp, sp, #4
00836bfc  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00836c00  d2 d1 ff ea                                      b #0x82b350
00836c04  04 d0 8d e2                                      add sp, sp, #4
00836c08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00836c0c, declared_size=244, range_size=244, mode=arm
; class-group: CLobbyParameterAndQuery
; alias: _ZN23CLobbyParameterAndQuery17SetParameterValueEiPc
; demangled: CLobbyParameterAndQuery::SetParameterValue(int, char*)
; decoder-mode: arm
00836c0c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00836c10  04 30 90 e5                                      ldr r3, [r0, #4]
00836c14  00 50 a0 e1                                      mov r5, r0
00836c18  01 40 a0 e1                                      mov r4, r1
00836c1c  01 00 53 e1                                      cmp r3, r1
00836c20  00 30 a0 c3                                      movgt r3, #0
00836c24  01 30 a0 d3                                      movle r3, #1
00836c28  a1 8f 93 e1                                      orrs r8, r3, r1, lsr #31
00836c2c  02 70 a0 e1                                      mov r7, r2
00836c30  31 00 00 1a                                      bne #0x836cfc
00836c34  00 00 52 e3                                      cmp r2, #0
00836c38  2f 00 00 0a                                      beq #0x836cfc
00836c3c  02 00 a0 e1                                      mov r0, r2
00836c40  d9 d0 ff eb                                      bl #0x82afac
00836c44  14 a0 95 e5                                      ldr sl, [r5, #0x14]
00836c48  00 60 a0 e1                                      mov r6, r0
00836c4c  04 91 a0 e1                                      lsl sb, r4, #2
00836c50  04 01 9a e7                                      ldr r0, [sl, r4, lsl #2]
00836c54  09 a0 8a e0                                      add sl, sl, sb
00836c58  00 00 50 e3                                      cmp r0, #0
00836c5c  04 00 00 0a                                      beq #0x836c74
00836c60  92 5d eb eb                                      bl #0x30e2b0
00836c64  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836c68  04 81 83 e7                                      str r8, [r3, r4, lsl #2]
00836c6c  14 a0 95 e5                                      ldr sl, [r5, #0x14]
00836c70  09 a0 8a e0                                      add sl, sl, sb
00836c74  05 80 86 e2                                      add r8, r6, #5
00836c78  08 00 a0 e1                                      mov r0, r8
00836c7c  13 5d eb eb                                      bl #0x30e0d0
00836c80  00 00 8a e5                                      str r0, [sl]
00836c84  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836c88  08 20 a0 e1                                      mov r2, r8
00836c8c  00 10 a0 e3                                      mov r1, #0
00836c90  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00836c94  b2 d1 ff eb                                      bl #0x82b364
00836c98  06 30 84 e2                                      add r3, r4, #6
00836c9c  04 20 86 e2                                      add r2, r6, #4
00836ca0  03 21 85 e7                                      str r2, [r5, r3, lsl #2]
00836ca4  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836ca8  04 c0 85 e0                                      add ip, r5, r4
00836cac  56 04 e7 e7                                      ubfx r0, r6, #8, #8
00836cb0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00836cb4  07 10 a0 e1                                      mov r1, r7
00836cb8  06 20 a0 e1                                      mov r2, r6
00836cbc  00 40 c3 e5                                      strb r4, [r3]
00836cc0  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836cc4  08 c0 dc e5                                      ldrb ip, [ip, #8]
00836cc8  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00836ccc  01 c0 c3 e5                                      strb ip, [r3, #1]
00836cd0  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836cd4  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00836cd8  02 00 c3 e5                                      strb r0, [r3, #2]
00836cdc  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836ce0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00836ce4  03 60 c3 e5                                      strb r6, [r3, #3]
00836ce8  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836cec  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00836cf0  04 00 80 e2                                      add r0, r0, #4
00836cf4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00836cf8  94 d1 ff ea                                      b #0x82b350
00836cfc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00836d00, declared_size=144, range_size=144, mode=arm
; class-group: CLobbyParameterAndQuery
; alias: _ZN23CLobbyParameterAndQueryD1Ev
; demangled: CLobbyParameterAndQuery::~CLobbyParameterAndQuery()
; decoder-mode: arm
00836d00  70 40 2d e9                                      push {r4, r5, r6, lr}
00836d04  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00836d08  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00836d0c  04 10 90 e5                                      ldr r1, [r0, #4]
00836d10  03 30 8f e0                                      add r3, pc, r3
00836d14  02 20 93 e7                                      ldr r2, [r3, r2]
00836d18  00 00 51 e3                                      cmp r1, #0
00836d1c  00 50 a0 e1                                      mov r5, r0
00836d20  08 20 82 e2                                      add r2, r2, #8
00836d24  00 20 80 e5                                      str r2, [r0]
00836d28  14 30 90 d5                                      ldrle r3, [r0, #0x14]
00836d2c  0d 00 00 da                                      ble #0x836d68
00836d30  14 30 90 e5                                      ldr r3, [r0, #0x14]
00836d34  00 40 a0 e3                                      mov r4, #0
00836d38  04 60 a0 e1                                      mov r6, r4
00836d3c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00836d40  00 00 50 e3                                      cmp r0, #0
00836d44  04 00 00 0a                                      beq #0x836d5c
00836d48  58 5d eb eb                                      bl #0x30e2b0
00836d4c  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836d50  04 61 83 e7                                      str r6, [r3, r4, lsl #2]
00836d54  04 10 95 e5                                      ldr r1, [r5, #4]
00836d58  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836d5c  01 40 84 e2                                      add r4, r4, #1
00836d60  04 00 51 e1                                      cmp r1, r4
00836d64  f4 ff ff ca                                      bgt #0x836d3c
00836d68  00 00 53 e3                                      cmp r3, #0
00836d6c  03 00 00 0a                                      beq #0x836d80
00836d70  03 00 a0 e1                                      mov r0, r3
00836d74  4d 5d eb eb                                      bl #0x30e2b0
00836d78  00 30 a0 e3                                      mov r3, #0
00836d7c  14 30 85 e5                                      str r3, [r5, #0x14]
00836d80  05 00 a0 e1                                      mov r0, r5
00836d84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00836d88  80 dd 15 00 b4 3d 00 00                          .byte 0x80, 0xdd, 0x15, 0x00, 0xb4, 0x3d, 0x00, 0x00

; FUNCTION 0x00836d90, declared_size=28, range_size=28, mode=arm
; class-group: CLobbyParameterAndQuery
; alias: _ZN23CLobbyParameterAndQueryD0Ev
; demangled: CLobbyParameterAndQuery::~CLobbyParameterAndQuery()
; decoder-mode: arm
00836d90  10 40 2d e9                                      push {r4, lr}
00836d94  00 40 a0 e1                                      mov r4, r0
00836d98  d8 ff ff eb                                      bl #0x836d00
00836d9c  04 00 a0 e1                                      mov r0, r4
00836da0  42 5d eb eb                                      bl #0x30e2b0
00836da4  04 00 a0 e1                                      mov r0, r4
00836da8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00836dac, declared_size=144, range_size=144, mode=arm
; class-group: CLobbyParameterAndQuery
; alias: _ZN23CLobbyParameterAndQueryD2Ev
; demangled: CLobbyParameterAndQuery::~CLobbyParameterAndQuery()
; decoder-mode: arm
00836dac  70 40 2d e9                                      push {r4, r5, r6, lr}
00836db0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00836db4  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00836db8  04 10 90 e5                                      ldr r1, [r0, #4]
00836dbc  03 30 8f e0                                      add r3, pc, r3
00836dc0  02 20 93 e7                                      ldr r2, [r3, r2]
00836dc4  00 00 51 e3                                      cmp r1, #0
00836dc8  00 50 a0 e1                                      mov r5, r0
00836dcc  08 20 82 e2                                      add r2, r2, #8
00836dd0  00 20 80 e5                                      str r2, [r0]
00836dd4  14 30 90 d5                                      ldrle r3, [r0, #0x14]
00836dd8  0d 00 00 da                                      ble #0x836e14
00836ddc  14 30 90 e5                                      ldr r3, [r0, #0x14]
00836de0  00 40 a0 e3                                      mov r4, #0
00836de4  04 60 a0 e1                                      mov r6, r4
00836de8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00836dec  00 00 50 e3                                      cmp r0, #0
00836df0  04 00 00 0a                                      beq #0x836e08
00836df4  2d 5d eb eb                                      bl #0x30e2b0
00836df8  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836dfc  04 61 83 e7                                      str r6, [r3, r4, lsl #2]
00836e00  04 10 95 e5                                      ldr r1, [r5, #4]
00836e04  14 30 95 e5                                      ldr r3, [r5, #0x14]
00836e08  01 40 84 e2                                      add r4, r4, #1
00836e0c  04 00 51 e1                                      cmp r1, r4
00836e10  f4 ff ff ca                                      bgt #0x836de8
00836e14  00 00 53 e3                                      cmp r3, #0
00836e18  03 00 00 0a                                      beq #0x836e2c
00836e1c  03 00 a0 e1                                      mov r0, r3
00836e20  22 5d eb eb                                      bl #0x30e2b0
00836e24  00 30 a0 e3                                      mov r3, #0
00836e28  14 30 85 e5                                      str r3, [r5, #0x14]
00836e2c  05 00 a0 e1                                      mov r0, r5
00836e30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00836e34  d4 dc 15 00 b4 3d 00 00                          .byte 0xd4, 0xdc, 0x15, 0x00, 0xb4, 0x3d, 0x00, 0x00

; FUNCTION 0x00836e3c, declared_size=1000, range_size=1000, mode=arm
; class-group: CLobbyParameterAndQuery
; alias: _ZN23CLobbyParameterAndQueryC1Ev
; demangled: CLobbyParameterAndQuery::CLobbyParameterAndQuery()
; decoder-mode: arm
00836e3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00836e40  bc 23 9f e5                                      ldr r2, [pc, #0x3bc]
00836e44  59 df 4d e2                                      sub sp, sp, #0x164
00836e48  b8 13 9f e5                                      ldr r1, [pc, #0x3b8]
00836e4c  28 20 8d e5                                      str r2, [sp, #0x28]
00836e50  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00836e54  b0 23 9f e5                                      ldr r2, [pc, #0x3b0]
00836e58  01 10 8f e0                                      add r1, pc, r1
00836e5c  0c 30 91 e7                                      ldr r3, [r1, ip]
00836e60  02 20 91 e7                                      ldr r2, [r1, r2]
00836e64  a4 43 9f e5                                      ldr r4, [pc, #0x3a4]
00836e68  24 10 8d e5                                      str r1, [sp, #0x24]
00836e6c  a0 13 9f e5                                      ldr r1, [pc, #0x3a0]
00836e70  00 30 93 e5                                      ldr r3, [r3]
00836e74  08 20 82 e2                                      add r2, r2, #8
00836e78  04 40 8f e0                                      add r4, pc, r4
00836e7c  00 20 80 e5                                      str r2, [r0]
00836e80  01 10 8f e0                                      add r1, pc, r1
00836e84  00 60 a0 e1                                      mov r6, r0
00836e88  04 00 a0 e1                                      mov r0, r4
00836e8c  5c 31 8d e5                                      str r3, [sp, #0x15c]
00836e90  df d0 ff eb                                      bl #0x82b214
00836e94  00 10 50 e2                                      subs r1, r0, #0
00836e98  2c 10 8d e5                                      str r1, [sp, #0x2c]
00836e9c  d2 00 00 0a                                      beq #0x8371ec
00836ea0  b4 d0 ff eb                                      bl #0x82b178
00836ea4  01 20 80 e2                                      add r2, r0, #1
00836ea8  00 40 a0 e1                                      mov r4, r0
00836eac  02 00 a0 e1                                      mov r0, r2
00836eb0  14 20 8d e5                                      str r2, [sp, #0x14]
00836eb4  85 5c eb eb                                      bl #0x30e0d0
00836eb8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00836ebc  00 10 a0 e3                                      mov r1, #0
00836ec0  18 00 8d e5                                      str r0, [sp, #0x18]
00836ec4  26 d1 ff eb                                      bl #0x82b364
00836ec8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00836ecc  04 10 a0 e1                                      mov r1, r4
00836ed0  01 20 a0 e3                                      mov r2, #1
00836ed4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00836ed8  c2 d0 ff eb                                      bl #0x82b1e8
00836edc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00836ee0  7a 5c eb eb                                      bl #0x30e0d0
00836ee4  14 20 9d e5                                      ldr r2, [sp, #0x14]
00836ee8  00 b0 a0 e1                                      mov fp, r0
00836eec  00 10 a0 e3                                      mov r1, #0
00836ef0  1b d1 ff eb                                      bl #0x82b364
00836ef4  0a 30 a0 e3                                      mov r3, #0xa
00836ef8  0b 10 a0 e1                                      mov r1, fp
00836efc  00 20 a0 e3                                      mov r2, #0
00836f00  18 00 9d e5                                      ldr r0, [sp, #0x18]
00836f04  32 cf ff eb                                      bl #0x82abd4
00836f08  0b 00 a0 e1                                      mov r0, fp
00836f0c  26 d0 ff eb                                      bl #0x82afac
00836f10  00 30 50 e2                                      subs r3, r0, #0
00836f14  60 00 00 da                                      ble #0x83709c
00836f18  01 30 43 e2                                      sub r3, r3, #1
00836f1c  d3 20 9b e1                                      ldrsb r2, [fp, r3]
00836f20  15 9e 8d e2                                      add sb, sp, #0x150
00836f24  01 c0 a0 e3                                      mov ip, #1
00836f28  0d 00 52 e3                                      cmp r2, #0xd
00836f2c  00 20 a0 03                                      moveq r2, #0
00836f30  03 20 cb 07                                      strbeq r2, [fp, r3]
00836f34  04 30 89 e2                                      add r3, sb, #4
00836f38  04 30 8d e5                                      str r3, [sp, #4]
00836f3c  d4 32 9f e5                                      ldr r3, [pc, #0x2d4]
00836f40  04 10 9d e5                                      ldr r1, [sp, #4]
00836f44  13 2e 8d e2                                      add r2, sp, #0x130
00836f48  03 30 8f e0                                      add r3, pc, r3
00836f4c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00836f50  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
00836f54  04 10 81 e2                                      add r1, r1, #4
00836f58  0c 20 8d e5                                      str r2, [sp, #0xc]
00836f5c  03 30 8f e0                                      add r3, pc, r3
00836f60  20 30 8d e5                                      str r3, [sp, #0x20]
00836f64  10 c0 8d e5                                      str ip, [sp, #0x10]
00836f68  30 40 8d e2                                      add r4, sp, #0x30
00836f6c  00 50 a0 e3                                      mov r5, #0
00836f70  00 20 8d e5                                      str r2, [sp]
00836f74  08 10 8d e5                                      str r1, [sp, #8]
00836f78  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00836f7c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00836f80  05 10 a0 e1                                      mov r1, r5
00836f84  04 50 83 e4                                      str r5, [r3], #4
00836f88  04 30 83 e2                                      add r3, r3, #4
00836f8c  04 50 83 e4                                      str r5, [r3], #4
00836f90  04 50 83 e4                                      str r5, [r3], #4
00836f94  04 50 83 e4                                      str r5, [r3], #4
00836f98  04 50 83 e4                                      str r5, [r3], #4
00836f9c  04 50 83 e4                                      str r5, [r3], #4
00836fa0  04 50 8c e5                                      str r5, [ip, #4]
00836fa4  00 50 83 e5                                      str r5, [r3]
00836fa8  01 2c a0 e3                                      mov r2, #0x100
00836fac  04 00 a0 e1                                      mov r0, r4
00836fb0  2a 5d eb eb                                      bl #0x30e460
00836fb4  05 20 a0 e1                                      mov r2, r5
00836fb8  3a 30 a0 e3                                      mov r3, #0x3a
00836fbc  00 10 9d e5                                      ldr r1, [sp]
00836fc0  0b 00 a0 e1                                      mov r0, fp
00836fc4  02 cf ff eb                                      bl #0x82abd4
00836fc8  3a 30 a0 e3                                      mov r3, #0x3a
00836fcc  04 10 a0 e1                                      mov r1, r4
00836fd0  01 20 a0 e3                                      mov r2, #1
00836fd4  0b 00 a0 e1                                      mov r0, fp
00836fd8  fd ce ff eb                                      bl #0x82abd4
00836fdc  05 10 a0 e1                                      mov r1, r5
00836fe0  00 70 a0 e1                                      mov r7, r0
00836fe4  01 2c a0 e3                                      mov r2, #0x100
00836fe8  04 00 a0 e1                                      mov r0, r4
00836fec  dc d0 ff eb                                      bl #0x82b364
00836ff0  0b 00 a0 e1                                      mov r0, fp
00836ff4  ec cf ff eb                                      bl #0x82afac
00836ff8  07 10 8b e0                                      add r1, fp, r7
00836ffc  00 20 67 e0                                      rsb r2, r7, r0
00837000  04 00 a0 e1                                      mov r0, r4
00837004  d1 d0 ff eb                                      bl #0x82b350
00837008  00 00 9d e5                                      ldr r0, [sp]
0083700c  00 d0 ff eb                                      bl #0x82b014
00837010  04 00 a0 e1                                      mov r0, r4
00837014  fe cf ff eb                                      bl #0x82b014
00837018  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0083701c  00 00 9d e5                                      ldr r0, [sp]
00837020  c9 d0 ff eb                                      bl #0x82b34c
00837024  00 10 9d e5                                      ldr r1, [sp]
00837028  00 00 50 e3                                      cmp r0, #0
0083702c  0c 10 8d e5                                      str r1, [sp, #0xc]
00837030  66 00 00 0a                                      beq #0x8371d0
00837034  00 00 9d e5                                      ldr r0, [sp]
00837038  20 10 9d e5                                      ldr r1, [sp, #0x20]
0083703c  c2 d0 ff eb                                      bl #0x82b34c
00837040  00 70 50 e2                                      subs r7, r0, #0
00837044  40 00 00 0a                                      beq #0x83714c
00837048  0b 00 a0 e1                                      mov r0, fp
0083704c  00 10 a0 e3                                      mov r1, #0
00837050  14 20 9d e5                                      ldr r2, [sp, #0x14]
00837054  c2 d0 ff eb                                      bl #0x82b364
00837058  0b 10 a0 e1                                      mov r1, fp
0083705c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00837060  0a 30 a0 e3                                      mov r3, #0xa
00837064  18 00 9d e5                                      ldr r0, [sp, #0x18]
00837068  d9 ce ff eb                                      bl #0x82abd4
0083706c  0b 00 a0 e1                                      mov r0, fp
00837070  cd cf ff eb                                      bl #0x82afac
00837074  00 00 50 e3                                      cmp r0, #0
00837078  07 00 00 da                                      ble #0x83709c
0083707c  01 30 40 e2                                      sub r3, r0, #1
00837080  d3 20 9b e1                                      ldrsb r2, [fp, r3]
00837084  0d 00 52 e3                                      cmp r2, #0xd
00837088  03 50 cb 07                                      strbeq r5, [fp, r3]
0083708c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00837090  01 10 81 e2                                      add r1, r1, #1
00837094  10 10 8d e5                                      str r1, [sp, #0x10]
00837098  b6 ff ff ea                                      b #0x836f78
0083709c  00 00 5b e3                                      cmp fp, #0
008370a0  01 00 00 0a                                      beq #0x8370ac
008370a4  0b 00 a0 e1                                      mov r0, fp
008370a8  80 5c eb eb                                      bl #0x30e2b0
008370ac  18 20 9d e5                                      ldr r2, [sp, #0x18]
008370b0  00 00 52 e3                                      cmp r2, #0
008370b4  01 00 00 0a                                      beq #0x8370c0
008370b8  02 00 a0 e1                                      mov r0, r2
008370bc  7b 5c eb eb                                      bl #0x30e2b0
008370c0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
008370c4  6c cf ff eb                                      bl #0x82ae7c
008370c8  04 00 96 e5                                      ldr r0, [r6, #4]
008370cc  00 40 a0 e3                                      mov r4, #0
008370d0  14 40 86 e5                                      str r4, [r6, #0x14]
008370d4  04 00 50 e1                                      cmp r0, r4
008370d8  09 00 00 1a                                      bne #0x837104
008370dc  24 10 9d e5                                      ldr r1, [sp, #0x24]
008370e0  28 c0 9d e5                                      ldr ip, [sp, #0x28]
008370e4  5c 21 9d e5                                      ldr r2, [sp, #0x15c]
008370e8  06 00 a0 e1                                      mov r0, r6
008370ec  0c 30 91 e7                                      ldr r3, [r1, ip]
008370f0  00 30 93 e5                                      ldr r3, [r3]
008370f4  03 00 52 e1                                      cmp r2, r3
008370f8  40 00 00 1a                                      bne #0x837200
008370fc  59 df 8d e2                                      add sp, sp, #0x164
00837100  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00837104  00 01 a0 e1                                      lsl r0, r0, #2
00837108  f0 5b eb eb                                      bl #0x30e0d0
0083710c  04 30 96 e5                                      ldr r3, [r6, #4]
00837110  14 00 86 e5                                      str r0, [r6, #0x14]
00837114  04 00 53 e1                                      cmp r3, r4
00837118  ef ff ff da                                      ble #0x8370dc
0083711c  06 30 a0 e1                                      mov r3, r6
00837120  04 20 a0 e1                                      mov r2, r4
00837124  00 00 00 ea                                      b #0x83712c
00837128  14 00 96 e5                                      ldr r0, [r6, #0x14]
0083712c  04 21 80 e7                                      str r2, [r0, r4, lsl #2]
00837130  18 20 83 e5                                      str r2, [r3, #0x18]
00837134  04 10 96 e5                                      ldr r1, [r6, #4]
00837138  01 40 84 e2                                      add r4, r4, #1
0083713c  04 30 83 e2                                      add r3, r3, #4
00837140  04 00 51 e1                                      cmp r1, r4
00837144  f7 ff ff ca                                      bgt #0x837128
00837148  e3 ff ff ea                                      b #0x8370dc
0083714c  04 00 a0 e1                                      mov r0, r4
00837150  95 cf ff eb                                      bl #0x82afac
00837154  00 80 50 e2                                      subs r8, r0, #0
00837158  ba ff ff da                                      ble #0x837048
0083715c  07 10 a0 e1                                      mov r1, r7
00837160  07 a0 a0 e1                                      mov sl, r7
00837164  01 70 87 e2                                      add r7, r7, #1
00837168  07 00 58 e1                                      cmp r8, r7
0083716c  02 00 00 0a                                      beq #0x83717c
00837170  d7 30 94 e1                                      ldrsb r3, [r4, r7]
00837174  7c 00 53 e3                                      cmp r3, #0x7c
00837178  f9 ff ff 1a                                      bne #0x837164
0083717c  04 30 96 e5                                      ldr r3, [r6, #4]
00837180  0a 00 53 e1                                      cmp r3, sl
00837184  02 00 00 ca                                      bgt #0x837194
00837188  08 00 57 e1                                      cmp r7, r8
0083718c  f4 ff ff 1a                                      bne #0x837164
00837190  ac ff ff ea                                      b #0x837048
00837194  08 10 9d e9                                      ldmib sp, {r3, ip}
00837198  07 20 61 e0                                      rsb r2, r1, r7
0083719c  00 50 83 e5                                      str r5, [r3]
008371a0  01 10 84 e0                                      add r1, r4, r1
008371a4  b0 50 cc e1                                      strh r5, [ip]
008371a8  09 00 a0 e1                                      mov r0, sb
008371ac  00 50 89 e5                                      str r5, [sb]
008371b0  61 d0 ff eb                                      bl #0x82b33c
008371b4  09 00 a0 e1                                      mov r0, sb
008371b8  58 d0 ff eb                                      bl #0x82b320
008371bc  0a 30 86 e0                                      add r3, r6, sl
008371c0  08 00 c3 e5                                      strb r0, [r3, #8]
008371c4  01 a0 8a e2                                      add sl, sl, #1
008371c8  01 10 87 e2                                      add r1, r7, #1
008371cc  ed ff ff ea                                      b #0x837188
008371d0  04 00 a0 e1                                      mov r0, r4
008371d4  51 d0 ff eb                                      bl #0x82b320
008371d8  0b 00 50 e3                                      cmp r0, #0xb
008371dc  00 30 a0 b1                                      movlt r3, r0
008371e0  0a 30 a0 a3                                      movge r3, #0xa
008371e4  04 30 86 e5                                      str r3, [r6, #4]
008371e8  91 ff ff ea                                      b #0x837034
008371ec  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
008371f0  04 10 a0 e1                                      mov r1, r4
008371f4  00 00 8f e0                                      add r0, pc, r0
008371f8  61 d1 ff eb                                      bl #0x82b784
008371fc  b6 ff ff ea                                      b #0x8370dc
00837200  42 5c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00837204  ac 40 00 00 38 dc 15 00 b4 3d 00 00 b0 5b 0d 00  .byte 0xac, 0x40, 0x00, 0x00, 0x38, 0xdc, 0x15, 0x00, 0xb4, 0x3d, 0x00, 0x00, 0xb0, 0x5b, 0x0d, 0x00
00837214  a8 78 0a 00 08 67 0d 00 0c 67 0d 00 34 64 0d 00  .byte 0xa8, 0x78, 0x0a, 0x00, 0x08, 0x67, 0x0d, 0x00, 0x0c, 0x67, 0x0d, 0x00, 0x34, 0x64, 0x0d, 0x00

; FUNCTION 0x00837224, declared_size=1000, range_size=1000, mode=arm
; class-group: CLobbyParameterAndQuery
; alias: _ZN23CLobbyParameterAndQueryC2Ev
; demangled: CLobbyParameterAndQuery::CLobbyParameterAndQuery()
; decoder-mode: arm
00837224  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00837228  bc 23 9f e5                                      ldr r2, [pc, #0x3bc]
0083722c  59 df 4d e2                                      sub sp, sp, #0x164
00837230  b8 13 9f e5                                      ldr r1, [pc, #0x3b8]
00837234  28 20 8d e5                                      str r2, [sp, #0x28]
00837238  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0083723c  b0 23 9f e5                                      ldr r2, [pc, #0x3b0]
00837240  01 10 8f e0                                      add r1, pc, r1
00837244  0c 30 91 e7                                      ldr r3, [r1, ip]
00837248  02 20 91 e7                                      ldr r2, [r1, r2]
0083724c  a4 43 9f e5                                      ldr r4, [pc, #0x3a4]
00837250  24 10 8d e5                                      str r1, [sp, #0x24]
00837254  a0 13 9f e5                                      ldr r1, [pc, #0x3a0]
00837258  00 30 93 e5                                      ldr r3, [r3]
0083725c  08 20 82 e2                                      add r2, r2, #8
00837260  04 40 8f e0                                      add r4, pc, r4
00837264  00 20 80 e5                                      str r2, [r0]
00837268  01 10 8f e0                                      add r1, pc, r1
0083726c  00 60 a0 e1                                      mov r6, r0
00837270  04 00 a0 e1                                      mov r0, r4
00837274  5c 31 8d e5                                      str r3, [sp, #0x15c]
00837278  e5 cf ff eb                                      bl #0x82b214
0083727c  00 10 50 e2                                      subs r1, r0, #0
00837280  2c 10 8d e5                                      str r1, [sp, #0x2c]
00837284  d2 00 00 0a                                      beq #0x8375d4
00837288  ba cf ff eb                                      bl #0x82b178
0083728c  01 20 80 e2                                      add r2, r0, #1
00837290  00 40 a0 e1                                      mov r4, r0
00837294  02 00 a0 e1                                      mov r0, r2
00837298  14 20 8d e5                                      str r2, [sp, #0x14]
0083729c  8b 5b eb eb                                      bl #0x30e0d0
008372a0  14 20 9d e5                                      ldr r2, [sp, #0x14]
008372a4  00 10 a0 e3                                      mov r1, #0
008372a8  18 00 8d e5                                      str r0, [sp, #0x18]
008372ac  2c d0 ff eb                                      bl #0x82b364
008372b0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
008372b4  04 10 a0 e1                                      mov r1, r4
008372b8  01 20 a0 e3                                      mov r2, #1
008372bc  18 00 9d e5                                      ldr r0, [sp, #0x18]
008372c0  c8 cf ff eb                                      bl #0x82b1e8
008372c4  14 00 9d e5                                      ldr r0, [sp, #0x14]
008372c8  80 5b eb eb                                      bl #0x30e0d0
008372cc  14 20 9d e5                                      ldr r2, [sp, #0x14]
008372d0  00 b0 a0 e1                                      mov fp, r0
008372d4  00 10 a0 e3                                      mov r1, #0
008372d8  21 d0 ff eb                                      bl #0x82b364
008372dc  0a 30 a0 e3                                      mov r3, #0xa
008372e0  0b 10 a0 e1                                      mov r1, fp
008372e4  00 20 a0 e3                                      mov r2, #0
008372e8  18 00 9d e5                                      ldr r0, [sp, #0x18]
008372ec  38 ce ff eb                                      bl #0x82abd4
008372f0  0b 00 a0 e1                                      mov r0, fp
008372f4  2c cf ff eb                                      bl #0x82afac
008372f8  00 30 50 e2                                      subs r3, r0, #0
008372fc  60 00 00 da                                      ble #0x837484
00837300  01 30 43 e2                                      sub r3, r3, #1
00837304  d3 20 9b e1                                      ldrsb r2, [fp, r3]
00837308  15 9e 8d e2                                      add sb, sp, #0x150
0083730c  01 c0 a0 e3                                      mov ip, #1
00837310  0d 00 52 e3                                      cmp r2, #0xd
00837314  00 20 a0 03                                      moveq r2, #0
00837318  03 20 cb 07                                      strbeq r2, [fp, r3]
0083731c  04 30 89 e2                                      add r3, sb, #4
00837320  04 30 8d e5                                      str r3, [sp, #4]
00837324  d4 32 9f e5                                      ldr r3, [pc, #0x2d4]
00837328  04 10 9d e5                                      ldr r1, [sp, #4]
0083732c  13 2e 8d e2                                      add r2, sp, #0x130
00837330  03 30 8f e0                                      add r3, pc, r3
00837334  1c 30 8d e5                                      str r3, [sp, #0x1c]
00837338  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
0083733c  04 10 81 e2                                      add r1, r1, #4
00837340  0c 20 8d e5                                      str r2, [sp, #0xc]
00837344  03 30 8f e0                                      add r3, pc, r3
00837348  20 30 8d e5                                      str r3, [sp, #0x20]
0083734c  10 c0 8d e5                                      str ip, [sp, #0x10]
00837350  30 40 8d e2                                      add r4, sp, #0x30
00837354  00 50 a0 e3                                      mov r5, #0
00837358  00 20 8d e5                                      str r2, [sp]
0083735c  08 10 8d e5                                      str r1, [sp, #8]
00837360  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00837364  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00837368  05 10 a0 e1                                      mov r1, r5
0083736c  04 50 83 e4                                      str r5, [r3], #4
00837370  04 30 83 e2                                      add r3, r3, #4
00837374  04 50 83 e4                                      str r5, [r3], #4
00837378  04 50 83 e4                                      str r5, [r3], #4
0083737c  04 50 83 e4                                      str r5, [r3], #4
00837380  04 50 83 e4                                      str r5, [r3], #4
00837384  04 50 83 e4                                      str r5, [r3], #4
00837388  04 50 8c e5                                      str r5, [ip, #4]
0083738c  00 50 83 e5                                      str r5, [r3]
00837390  01 2c a0 e3                                      mov r2, #0x100
00837394  04 00 a0 e1                                      mov r0, r4
00837398  30 5c eb eb                                      bl #0x30e460
0083739c  05 20 a0 e1                                      mov r2, r5
008373a0  3a 30 a0 e3                                      mov r3, #0x3a
008373a4  00 10 9d e5                                      ldr r1, [sp]
008373a8  0b 00 a0 e1                                      mov r0, fp
008373ac  08 ce ff eb                                      bl #0x82abd4
008373b0  3a 30 a0 e3                                      mov r3, #0x3a
008373b4  04 10 a0 e1                                      mov r1, r4
008373b8  01 20 a0 e3                                      mov r2, #1
008373bc  0b 00 a0 e1                                      mov r0, fp
008373c0  03 ce ff eb                                      bl #0x82abd4
008373c4  05 10 a0 e1                                      mov r1, r5
008373c8  00 70 a0 e1                                      mov r7, r0
008373cc  01 2c a0 e3                                      mov r2, #0x100
008373d0  04 00 a0 e1                                      mov r0, r4
008373d4  e2 cf ff eb                                      bl #0x82b364
008373d8  0b 00 a0 e1                                      mov r0, fp
008373dc  f2 ce ff eb                                      bl #0x82afac
008373e0  07 10 8b e0                                      add r1, fp, r7
008373e4  00 20 67 e0                                      rsb r2, r7, r0
008373e8  04 00 a0 e1                                      mov r0, r4
008373ec  d7 cf ff eb                                      bl #0x82b350
008373f0  00 00 9d e5                                      ldr r0, [sp]
008373f4  06 cf ff eb                                      bl #0x82b014
008373f8  04 00 a0 e1                                      mov r0, r4
008373fc  04 cf ff eb                                      bl #0x82b014
00837400  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00837404  00 00 9d e5                                      ldr r0, [sp]
00837408  cf cf ff eb                                      bl #0x82b34c
0083740c  00 10 9d e5                                      ldr r1, [sp]
00837410  00 00 50 e3                                      cmp r0, #0
00837414  0c 10 8d e5                                      str r1, [sp, #0xc]
00837418  66 00 00 0a                                      beq #0x8375b8
0083741c  00 00 9d e5                                      ldr r0, [sp]
00837420  20 10 9d e5                                      ldr r1, [sp, #0x20]
00837424  c8 cf ff eb                                      bl #0x82b34c
00837428  00 70 50 e2                                      subs r7, r0, #0
0083742c  40 00 00 0a                                      beq #0x837534
00837430  0b 00 a0 e1                                      mov r0, fp
00837434  00 10 a0 e3                                      mov r1, #0
00837438  14 20 9d e5                                      ldr r2, [sp, #0x14]
0083743c  c8 cf ff eb                                      bl #0x82b364
00837440  0b 10 a0 e1                                      mov r1, fp
00837444  10 20 9d e5                                      ldr r2, [sp, #0x10]
00837448  0a 30 a0 e3                                      mov r3, #0xa
0083744c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00837450  df cd ff eb                                      bl #0x82abd4
00837454  0b 00 a0 e1                                      mov r0, fp
00837458  d3 ce ff eb                                      bl #0x82afac
0083745c  00 00 50 e3                                      cmp r0, #0
00837460  07 00 00 da                                      ble #0x837484
00837464  01 30 40 e2                                      sub r3, r0, #1
00837468  d3 20 9b e1                                      ldrsb r2, [fp, r3]
0083746c  0d 00 52 e3                                      cmp r2, #0xd
00837470  03 50 cb 07                                      strbeq r5, [fp, r3]
00837474  10 10 9d e5                                      ldr r1, [sp, #0x10]
00837478  01 10 81 e2                                      add r1, r1, #1
0083747c  10 10 8d e5                                      str r1, [sp, #0x10]
00837480  b6 ff ff ea                                      b #0x837360
00837484  00 00 5b e3                                      cmp fp, #0
00837488  01 00 00 0a                                      beq #0x837494
0083748c  0b 00 a0 e1                                      mov r0, fp
00837490  86 5b eb eb                                      bl #0x30e2b0
00837494  18 20 9d e5                                      ldr r2, [sp, #0x18]
00837498  00 00 52 e3                                      cmp r2, #0
0083749c  01 00 00 0a                                      beq #0x8374a8
008374a0  02 00 a0 e1                                      mov r0, r2
008374a4  81 5b eb eb                                      bl #0x30e2b0
008374a8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
008374ac  72 ce ff eb                                      bl #0x82ae7c
008374b0  04 00 96 e5                                      ldr r0, [r6, #4]
008374b4  00 40 a0 e3                                      mov r4, #0
008374b8  14 40 86 e5                                      str r4, [r6, #0x14]
008374bc  04 00 50 e1                                      cmp r0, r4
008374c0  09 00 00 1a                                      bne #0x8374ec
008374c4  24 10 9d e5                                      ldr r1, [sp, #0x24]
008374c8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
008374cc  5c 21 9d e5                                      ldr r2, [sp, #0x15c]
008374d0  06 00 a0 e1                                      mov r0, r6
008374d4  0c 30 91 e7                                      ldr r3, [r1, ip]
008374d8  00 30 93 e5                                      ldr r3, [r3]
008374dc  03 00 52 e1                                      cmp r2, r3
008374e0  40 00 00 1a                                      bne #0x8375e8
008374e4  59 df 8d e2                                      add sp, sp, #0x164
008374e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008374ec  00 01 a0 e1                                      lsl r0, r0, #2
008374f0  f6 5a eb eb                                      bl #0x30e0d0
008374f4  04 30 96 e5                                      ldr r3, [r6, #4]
008374f8  14 00 86 e5                                      str r0, [r6, #0x14]
008374fc  04 00 53 e1                                      cmp r3, r4
00837500  ef ff ff da                                      ble #0x8374c4
00837504  06 30 a0 e1                                      mov r3, r6
00837508  04 20 a0 e1                                      mov r2, r4
0083750c  00 00 00 ea                                      b #0x837514
00837510  14 00 96 e5                                      ldr r0, [r6, #0x14]
00837514  04 21 80 e7                                      str r2, [r0, r4, lsl #2]
00837518  18 20 83 e5                                      str r2, [r3, #0x18]
0083751c  04 10 96 e5                                      ldr r1, [r6, #4]
00837520  01 40 84 e2                                      add r4, r4, #1
00837524  04 30 83 e2                                      add r3, r3, #4
00837528  04 00 51 e1                                      cmp r1, r4
0083752c  f7 ff ff ca                                      bgt #0x837510
00837530  e3 ff ff ea                                      b #0x8374c4
00837534  04 00 a0 e1                                      mov r0, r4
00837538  9b ce ff eb                                      bl #0x82afac
0083753c  00 80 50 e2                                      subs r8, r0, #0
00837540  ba ff ff da                                      ble #0x837430
00837544  07 10 a0 e1                                      mov r1, r7
00837548  07 a0 a0 e1                                      mov sl, r7
0083754c  01 70 87 e2                                      add r7, r7, #1
00837550  07 00 58 e1                                      cmp r8, r7
00837554  02 00 00 0a                                      beq #0x837564
00837558  d7 30 94 e1                                      ldrsb r3, [r4, r7]
0083755c  7c 00 53 e3                                      cmp r3, #0x7c
00837560  f9 ff ff 1a                                      bne #0x83754c
00837564  04 30 96 e5                                      ldr r3, [r6, #4]
00837568  0a 00 53 e1                                      cmp r3, sl
0083756c  02 00 00 ca                                      bgt #0x83757c
00837570  08 00 57 e1                                      cmp r7, r8
00837574  f4 ff ff 1a                                      bne #0x83754c
00837578  ac ff ff ea                                      b #0x837430
0083757c  08 10 9d e9                                      ldmib sp, {r3, ip}
00837580  07 20 61 e0                                      rsb r2, r1, r7
00837584  00 50 83 e5                                      str r5, [r3]
00837588  01 10 84 e0                                      add r1, r4, r1
0083758c  b0 50 cc e1                                      strh r5, [ip]
00837590  09 00 a0 e1                                      mov r0, sb
00837594  00 50 89 e5                                      str r5, [sb]
00837598  67 cf ff eb                                      bl #0x82b33c
0083759c  09 00 a0 e1                                      mov r0, sb
008375a0  5e cf ff eb                                      bl #0x82b320
008375a4  0a 30 86 e0                                      add r3, r6, sl
008375a8  08 00 c3 e5                                      strb r0, [r3, #8]
008375ac  01 a0 8a e2                                      add sl, sl, #1
008375b0  01 10 87 e2                                      add r1, r7, #1
008375b4  ed ff ff ea                                      b #0x837570
008375b8  04 00 a0 e1                                      mov r0, r4
008375bc  57 cf ff eb                                      bl #0x82b320
008375c0  0b 00 50 e3                                      cmp r0, #0xb
008375c4  00 30 a0 b1                                      movlt r3, r0
008375c8  0a 30 a0 a3                                      movge r3, #0xa
008375cc  04 30 86 e5                                      str r3, [r6, #4]
008375d0  91 ff ff ea                                      b #0x83741c
008375d4  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
008375d8  04 10 a0 e1                                      mov r1, r4
008375dc  00 00 8f e0                                      add r0, pc, r0
008375e0  67 d0 ff eb                                      bl #0x82b784
008375e4  b6 ff ff ea                                      b #0x8374c4
008375e8  48 5b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008375ec  ac 40 00 00 50 d8 15 00 b4 3d 00 00 c8 57 0d 00  .byte 0xac, 0x40, 0x00, 0x00, 0x50, 0xd8, 0x15, 0x00, 0xb4, 0x3d, 0x00, 0x00, 0xc8, 0x57, 0x0d, 0x00
008375fc  c0 74 0a 00 20 63 0d 00 24 63 0d 00 4c 60 0d 00  .byte 0xc0, 0x74, 0x0a, 0x00, 0x20, 0x63, 0x0d, 0x00, 0x24, 0x63, 0x0d, 0x00, 0x4c, 0x60, 0x0d, 0x00
