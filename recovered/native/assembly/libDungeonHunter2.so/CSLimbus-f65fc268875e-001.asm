; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003bffe0, declared_size=4, range_size=4, mode=arm
; class-group: CSLimbus
; alias: _ZN8CSLimbusD1Ev
; demangled: CSLimbus::~CSLimbus()
; decoder-mode: arm
003bffe0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003bffe4, declared_size=4, range_size=4, mode=arm
; class-group: CSLimbus
; alias: _ZN8CSLimbus8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSLimbus::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003bffe4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003bffe8, declared_size=4, range_size=4, mode=arm
; class-group: CSLimbus
; alias: _ZN8CSLimbus7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSLimbus::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003bffe8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0a94, declared_size=52, range_size=52, mode=arm
; class-group: CSLimbus
; alias: _ZN8CSLimbusD0Ev
; demangled: CSLimbus::~CSLimbus()
; decoder-mode: arm
003c0a94  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0a98  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0a9c  10 40 2d e9                                      push {r4, lr}
003c0aa0  03 30 8f e0                                      add r3, pc, r3
003c0aa4  02 20 93 e7                                      ldr r2, [r3, r2]
003c0aa8  00 40 a0 e1                                      mov r4, r0
003c0aac  08 20 82 e2                                      add r2, r2, #8
003c0ab0  00 20 80 e5                                      str r2, [r0]
003c0ab4  61 3e fd eb                                      bl #0x310440
003c0ab8  04 00 a0 e1                                      mov r0, r4
003c0abc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0ac0  f0 3f 5d 00 08 2a 00 00                          .byte 0xf0, 0x3f, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c2be4, declared_size=344, range_size=344, mode=arm
; class-group: CSLimbus
; alias: _ZN8CSLimbus6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSLimbus::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c2be4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c2be8  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
003c2bec  3c 71 9f e5                                      ldr r7, [pc, #0x13c]
003c2bf0  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
003c2bf4  05 50 8f e0                                      add r5, pc, r5
003c2bf8  07 30 95 e7                                      ldr r3, [r5, r7]
003c2bfc  01 80 95 e7                                      ldr r8, [r5, r1]
003c2c00  20 d0 4d e2                                      sub sp, sp, #0x20
003c2c04  00 30 93 e5                                      ldr r3, [r3]
003c2c08  08 00 a0 e1                                      mov r0, r8
003c2c0c  02 40 a0 e1                                      mov r4, r2
003c2c10  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c2c14  1b d3 fd eb                                      bl #0x337888
003c2c18  18 11 9f e5                                      ldr r1, [pc, #0x118]
003c2c1c  04 60 8d e2                                      add r6, sp, #4
003c2c20  0d 20 a0 e1                                      mov r2, sp
003c2c24  06 00 a0 e1                                      mov r0, r6
003c2c28  01 10 8f e0                                      add r1, pc, r1
003c2c2c  2e 45 fd eb                                      bl #0x3140ec
003c2c30  06 10 a0 e1                                      mov r1, r6
003c2c34  08 00 a0 e1                                      mov r0, r8
003c2c38  92 d3 fd eb                                      bl #0x337a88
003c2c3c  06 00 a0 e1                                      mov r0, r6
003c2c40  83 55 fd eb                                      bl #0x318254
003c2c44  78 33 94 e5                                      ldr r3, [r4, #0x378]
003c2c48  00 60 a0 e3                                      mov r6, #0
003c2c4c  04 00 a0 e1                                      mov r0, r4
003c2c50  08 60 c3 e5                                      strb r6, [r3, #8]
003c2c54  00 30 94 e5                                      ldr r3, [r4]
003c2c58  01 10 a0 e3                                      mov r1, #1
003c2c5c  51 8d 84 e2                                      add r8, r4, #0x1440
003c2c60  0f e0 a0 e1                                      mov lr, pc
003c2c64  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003c2c68  01 20 a0 e3                                      mov r2, #1
003c2c6c  10 10 88 e2                                      add r1, r8, #0x10
003c2c70  04 00 a0 e1                                      mov r0, r4
003c2c74  4e 44 ff eb                                      bl #0x393db4
003c2c78  04 00 a0 e1                                      mov r0, r4
003c2c7c  1c 10 88 e2                                      add r1, r8, #0x1c
003c2c80  06 43 ff eb                                      bl #0x3938a0
003c2c84  04 00 a0 e1                                      mov r0, r4
003c2c88  06 10 a0 e1                                      mov r1, r6
003c2c8c  06 20 a0 e1                                      mov r2, r6
003c2c90  45 8b ff eb                                      bl #0x3a59ac
003c2c94  00 34 94 e5                                      ldr r3, [r4, #0x400]
003c2c98  03 00 53 e3                                      cmp r3, #3
003c2c9c  06 00 00 0a                                      beq #0x3c2cbc
003c2ca0  07 30 95 e7                                      ldr r3, [r5, r7]
003c2ca4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c2ca8  00 30 93 e5                                      ldr r3, [r3]
003c2cac  03 00 52 e1                                      cmp r2, r3
003c2cb0  1c 00 00 1a                                      bne #0x3c2d28
003c2cb4  20 d0 8d e2                                      add sp, sp, #0x20
003c2cb8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c2cbc  fc a3 94 e5                                      ldr sl, [r4, #0x3fc]
003c2cc0  18 30 9a e5                                      ldr r3, [sl, #0x18]
003c2cc4  1c 90 9a e5                                      ldr sb, [sl, #0x1c]
003c2cc8  09 90 63 e0                                      rsb sb, r3, sb
003c2ccc  49 91 b0 e1                                      asrs sb, sb, #2
003c2cd0  11 00 00 0a                                      beq #0x3c2d1c
003c2cd4  01 80 a0 e3                                      mov r8, #1
003c2cd8  00 00 00 ea                                      b #0x3c2ce0
003c2cdc  18 30 9a e5                                      ldr r3, [sl, #0x18]
003c2ce0  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
003c2ce4  04 00 50 e1                                      cmp r0, r4
003c2ce8  04 00 00 0a                                      beq #0x3c2d00
003c2cec  4f 0e 80 e2                                      add r0, r0, #0x4f0
003c2cf0  0c 00 80 e2                                      add r0, r0, #0xc
003c2cf4  31 f5 ff eb                                      bl #0x3c01c0
003c2cf8  00 00 50 e3                                      cmp r0, #0
003c2cfc  00 80 a0 13                                      movne r8, #0
003c2d00  01 60 86 e2                                      add r6, r6, #1
003c2d04  09 00 56 e1                                      cmp r6, sb
003c2d08  f3 ff ff 1a                                      bne #0x3c2cdc
003c2d0c  00 00 58 e3                                      cmp r8, #0
003c2d10  02 30 a0 03                                      moveq r3, #2
003c2d14  24 30 8a 05                                      streq r3, [sl, #0x24]
003c2d18  e0 ff ff 0a                                      beq #0x3c2ca0
003c2d1c  00 30 a0 e3                                      mov r3, #0
003c2d20  24 30 8a e5                                      str r3, [sl, #0x24]
003c2d24  dd ff ff ea                                      b #0x3c2ca0
003c2d28  78 2d fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c2d2c  9c 1e 5d 00 ac 40 00 00 84 08 00 00 28 22 50 00  .byte 0x9c, 0x1e, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x28, 0x22, 0x50, 0x00

; FUNCTION 0x003c2e58, declared_size=292, range_size=292, mode=arm
; class-group: CSLimbus
; alias: _ZN8CSLimbus7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSLimbus::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c2e58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c2e5c  04 41 9f e5                                      ldr r4, [pc, #0x104]
003c2e60  04 61 9f e5                                      ldr r6, [pc, #0x104]
003c2e64  04 11 9f e5                                      ldr r1, [pc, #0x104]
003c2e68  04 40 8f e0                                      add r4, pc, r4
003c2e6c  06 30 94 e7                                      ldr r3, [r4, r6]
003c2e70  01 80 94 e7                                      ldr r8, [r4, r1]
003c2e74  28 d0 4d e2                                      sub sp, sp, #0x28
003c2e78  00 30 93 e5                                      ldr r3, [r3]
003c2e7c  08 00 a0 e1                                      mov r0, r8
003c2e80  02 50 a0 e1                                      mov r5, r2
003c2e84  24 30 8d e5                                      str r3, [sp, #0x24]
003c2e88  7e d2 fd eb                                      bl #0x337888
003c2e8c  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
003c2e90  0c 70 8d e2                                      add r7, sp, #0xc
003c2e94  08 20 8d e2                                      add r2, sp, #8
003c2e98  01 10 8f e0                                      add r1, pc, r1
003c2e9c  07 00 a0 e1                                      mov r0, r7
003c2ea0  91 44 fd eb                                      bl #0x3140ec
003c2ea4  07 10 a0 e1                                      mov r1, r7
003c2ea8  08 00 a0 e1                                      mov r0, r8
003c2eac  f5 d2 fd eb                                      bl #0x337a88
003c2eb0  07 00 a0 e1                                      mov r0, r7
003c2eb4  e6 54 fd eb                                      bl #0x318254
003c2eb8  00 10 a0 e3                                      mov r1, #0
003c2ebc  00 30 95 e5                                      ldr r3, [r5]
003c2ec0  20 15 85 e5                                      str r1, [r5, #0x520]
003c2ec4  05 00 a0 e1                                      mov r0, r5
003c2ec8  0f e0 a0 e1                                      mov lr, pc
003c2ecc  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003c2ed0  30 35 d5 e5                                      ldrb r3, [r5, #0x530]
003c2ed4  00 00 53 e3                                      cmp r3, #0
003c2ed8  08 00 00 1a                                      bne #0x3c2f00
003c2edc  f2 0f 85 e2                                      add r0, r5, #0x3c8
003c2ee0  30 4c 00 eb                                      bl #0x3d5fa8
003c2ee4  06 30 94 e7                                      ldr r3, [r4, r6]
003c2ee8  24 20 9d e5                                      ldr r2, [sp, #0x24]
003c2eec  00 30 93 e5                                      ldr r3, [r3]
003c2ef0  03 00 52 e1                                      cmp r2, r3
003c2ef4  1a 00 00 1a                                      bne #0x3c2f64
003c2ef8  28 d0 8d e2                                      add sp, sp, #0x28
003c2efc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c2f00  05 00 a0 e1                                      mov r0, r5
003c2f04  28 87 ff eb                                      bl #0x3a4bac
003c2f08  00 00 50 e3                                      cmp r0, #0
003c2f0c  f2 ff ff da                                      ble #0x3c2edc
003c2f10  1f ea 10 eb                                      bl #0x7fd794
003c2f14  05 30 d0 e5                                      ldrb r3, [r0, #5]
003c2f18  00 00 53 e3                                      cmp r3, #0
003c2f1c  09 00 00 1a                                      bne #0x3c2f48
003c2f20  05 00 a0 e1                                      mov r0, r5
003c2f24  20 87 ff eb                                      bl #0x3a4bac
003c2f28  00 c0 a0 e3                                      mov ip, #0
003c2f2c  00 10 a0 e1                                      mov r1, r0
003c2f30  0c 20 a0 e1                                      mov r2, ip
003c2f34  ed 0f 85 e2                                      add r0, r5, #0x3b4
003c2f38  2f 30 a0 e3                                      mov r3, #0x2f
003c2f3c  00 c0 8d e5                                      str ip, [sp]
003c2f40  b7 63 00 eb                                      bl #0x3dbe24
003c2f44  e4 ff ff ea                                      b #0x3c2edc
003c2f48  28 30 9f e5                                      ldr r3, [pc, #0x28]
003c2f4c  03 30 94 e7                                      ldr r3, [r4, r3]
003c2f50  40 00 93 e5                                      ldr r0, [r3, #0x40]
003c2f54  46 b0 fe eb                                      bl #0x36f074
003c2f58  00 00 50 e3                                      cmp r0, #0
003c2f5c  de ff ff 0a                                      beq #0x3c2edc
003c2f60  ee ff ff ea                                      b #0x3c2f20
003c2f64  e9 2c fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c2f68  28 1c 5d 00 ac 40 00 00 84 08 00 00 b8 1f 50 00  .byte 0x28, 0x1c, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb8, 0x1f, 0x50, 0x00
003c2f78  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003c7cc0, declared_size=76, range_size=76, mode=arm
; class-group: CSLimbus
; alias: _ZN8CSLimbus6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSLimbus::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c7cc0  3c c0 9f e5                                      ldr ip, [pc, #0x3c]
003c7cc4  10 40 2d e9                                      push {r4, lr}
003c7cc8  38 30 9f e5                                      ldr r3, [pc, #0x38]
003c7ccc  0c c0 8f e0                                      add ip, pc, ip
003c7cd0  4f 0e 82 e2                                      add r0, r2, #0x4f0
003c7cd4  03 40 9c e7                                      ldr r4, [ip, r3]
003c7cd8  10 d0 4d e2                                      sub sp, sp, #0x10
003c7cdc  00 e0 a0 e3                                      mov lr, #0
003c7ce0  0c 00 80 e2                                      add r0, r0, #0xc
003c7ce4  2f 20 a0 e3                                      mov r2, #0x2f
003c7ce8  01 30 a0 e3                                      mov r3, #1
003c7cec  10 40 8d e8                                      stm sp, {r4, lr}
003c7cf0  08 40 8d e5                                      str r4, [sp, #8]
003c7cf4  0c e0 8d e5                                      str lr, [sp, #0xc]
003c7cf8  86 ff ff eb                                      bl #0x3c7b18
003c7cfc  10 d0 8d e2                                      add sp, sp, #0x10
003c7d00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c7d04  c4 cd 5c 00 b0 1d 00 00                          .byte 0xc4, 0xcd, 0x5c, 0x00, 0xb0, 0x1d, 0x00, 0x00
