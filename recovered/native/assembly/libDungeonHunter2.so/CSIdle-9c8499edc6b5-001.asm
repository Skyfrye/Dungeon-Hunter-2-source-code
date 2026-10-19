; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0000, declared_size=4, range_size=4, mode=arm
; class-group: CSIdle
; alias: _ZN6CSIdleD1Ev
; demangled: CSIdle::~CSIdle()
; decoder-mode: arm
003c0000  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0004, declared_size=4, range_size=4, mode=arm
; class-group: CSIdle
; alias: _ZN6CSIdle7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSIdle::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c0004  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c09f8, declared_size=52, range_size=52, mode=arm
; class-group: CSIdle
; alias: _ZN6CSIdleD0Ev
; demangled: CSIdle::~CSIdle()
; decoder-mode: arm
003c09f8  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c09fc  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0a00  10 40 2d e9                                      push {r4, lr}
003c0a04  03 30 8f e0                                      add r3, pc, r3
003c0a08  02 20 93 e7                                      ldr r2, [r3, r2]
003c0a0c  00 40 a0 e1                                      mov r4, r0
003c0a10  08 20 82 e2                                      add r2, r2, #8
003c0a14  00 20 80 e5                                      str r2, [r0]
003c0a18  88 3e fd eb                                      bl #0x310440
003c0a1c  04 00 a0 e1                                      mov r0, r4
003c0a20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0a24  8c 40 5d 00 08 2a 00 00                          .byte 0x8c, 0x40, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c0b78, declared_size=776, range_size=776, mode=arm
; class-group: CSIdle
; alias: _ZN6CSIdle16IdleCommonUpdateEiP9CharacterP16CharStateMachine
; demangled: CSIdle::IdleCommonUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0b78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003c0b7c  b5 31 d1 e5                                      ldrb r3, [r1, #0x1b5]
003c0b80  e0 52 9f e5                                      ldr r5, [pc, #0x2e0]
003c0b84  4c d0 4d e2                                      sub sp, sp, #0x4c
003c0b88  00 00 53 e3                                      cmp r3, #0
003c0b8c  01 40 a0 e1                                      mov r4, r1
003c0b90  05 50 8f e0                                      add r5, pc, r5
003c0b94  07 00 00 1a                                      bne #0x3c0bb8
003c0b98  00 30 91 e5                                      ldr r3, [r1]
003c0b9c  01 00 a0 e1                                      mov r0, r1
003c0ba0  0f e0 a0 e1                                      mov lr, pc
003c0ba4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c0ba8  00 00 50 e3                                      cmp r0, #0
003c0bac  06 00 00 1a                                      bne #0x3c0bcc
003c0bb0  4c d0 8d e2                                      add sp, sp, #0x4c
003c0bb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003c0bb8  00 10 a0 e3                                      mov r1, #0
003c0bbc  04 00 a0 e1                                      mov r0, r4
003c0bc0  01 20 a0 e1                                      mov r2, r1
003c0bc4  64 90 ff eb                                      bl #0x3a4d5c
003c0bc8  f8 ff ff ea                                      b #0x3c0bb0
003c0bcc  f0 f2 10 eb                                      bl #0x7fd794
003c0bd0  05 60 d0 e5                                      ldrb r6, [r0, #5]
003c0bd4  00 00 56 e3                                      cmp r6, #0
003c0bd8  f4 ff ff 1a                                      bne #0x3c0bb0
003c0bdc  88 22 9f e5                                      ldr r2, [pc, #0x288]
003c0be0  88 12 9f e5                                      ldr r1, [pc, #0x288]
003c0be4  02 70 95 e7                                      ldr r7, [r5, r2]
003c0be8  14 20 8d e5                                      str r2, [sp, #0x14]
003c0bec  80 22 9f e5                                      ldr r2, [pc, #0x280]
003c0bf0  01 10 8f e0                                      add r1, pc, r1
003c0bf4  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
003c0bf8  02 20 8f e0                                      add r2, pc, r2
003c0bfc  f6 0f 04 eb                                      bl #0x4c4bdc
003c0c00  5c 35 94 e5                                      ldr r3, [r4, #0x55c]
003c0c04  00 90 a0 e1                                      mov sb, r0
003c0c08  03 00 50 e1                                      cmp r0, r3
003c0c0c  e7 ff ff 8a                                      bhi #0x3c0bb0
003c0c10  40 80 97 e5                                      ldr r8, [r7, #0x40]
003c0c14  08 00 a0 e1                                      mov r0, r8
003c0c18  e2 b2 fe eb                                      bl #0x36d7a8
003c0c1c  00 a0 50 e2                                      subs sl, r0, #0
003c0c20  e2 ff ff da                                      ble #0x3c0bb0
003c0c24  4c 32 9f e5                                      ldr r3, [pc, #0x24c]
003c0c28  30 20 8d e2                                      add r2, sp, #0x30
003c0c2c  24 20 8d e5                                      str r2, [sp, #0x24]
003c0c30  03 30 8f e0                                      add r3, pc, r3
003c0c34  28 30 8d e5                                      str r3, [sp, #0x28]
003c0c38  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
003c0c3c  05 70 a0 e1                                      mov r7, r5
003c0c40  03 30 8f e0                                      add r3, pc, r3
003c0c44  2c 30 8d e5                                      str r3, [sp, #0x2c]
003c0c48  3c 30 8d e2                                      add r3, sp, #0x3c
003c0c4c  20 30 8d e5                                      str r3, [sp, #0x20]
003c0c50  02 00 00 ea                                      b #0x3c0c60
003c0c54  01 60 86 e2                                      add r6, r6, #1
003c0c58  0a 00 56 e1                                      cmp r6, sl
003c0c5c  d3 ff ff 0a                                      beq #0x3c0bb0
003c0c60  08 00 a0 e1                                      mov r0, r8
003c0c64  06 10 a0 e1                                      mov r1, r6
003c0c68  00 20 a0 e3                                      mov r2, #0
003c0c6c  b4 b6 fe eb                                      bl #0x36e744
003c0c70  60 56 90 e5                                      ldr r5, [r0, #0x660]
003c0c74  00 00 55 e3                                      cmp r5, #0
003c0c78  05 00 54 11                                      cmpne r4, r5
003c0c7c  f4 ff ff 0a                                      beq #0x3c0c54
003c0c80  4f 0e 85 e2                                      add r0, r5, #0x4f0
003c0c84  0c 00 80 e2                                      add r0, r0, #0xc
003c0c88  47 fd ff eb                                      bl #0x3c01ac
003c0c8c  03 00 50 e3                                      cmp r0, #3
003c0c90  ef ff ff 1a                                      bne #0x3c0c54
003c0c94  5c 35 95 e5                                      ldr r3, [r5, #0x55c]
003c0c98  03 00 59 e1                                      cmp sb, r3
003c0c9c  ec ff ff 8a                                      bhi #0x3c0c54
003c0ca0  14 20 9d e5                                      ldr r2, [sp, #0x14]
003c0ca4  28 10 9d e5                                      ldr r1, [sp, #0x28]
003c0ca8  02 30 97 e7                                      ldr r3, [r7, r2]
003c0cac  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003c0cb0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c0cb4  c8 0f 04 eb                                      bl #0x4c4bdc
003c0cb8  29 37 fd eb                                      bl #0x30e964
003c0cbc  0c 00 8d e5                                      str r0, [sp, #0xc]
003c0cc0  60 11 95 e5                                      ldr r1, [r5, #0x160]
003c0cc4  60 01 94 e5                                      ldr r0, [r4, #0x160]
003c0cc8  b7 35 fd eb                                      bl #0x30e3ac
003c0ccc  10 00 8d e5                                      str r0, [sp, #0x10]
003c0cd0  64 11 95 e5                                      ldr r1, [r5, #0x164]
003c0cd4  64 01 94 e5                                      ldr r0, [r4, #0x164]
003c0cd8  b3 35 fd eb                                      bl #0x30e3ac
003c0cdc  18 00 8d e5                                      str r0, [sp, #0x18]
003c0ce0  68 11 95 e5                                      ldr r1, [r5, #0x168]
003c0ce4  68 01 94 e5                                      ldr r0, [r4, #0x168]
003c0ce8  af 35 fd eb                                      bl #0x30e3ac
003c0cec  1c 00 8d e5                                      str r0, [sp, #0x1c]
003c0cf0  10 00 9d e5                                      ldr r0, [sp, #0x10]
003c0cf4  00 10 a0 e1                                      mov r1, r0
003c0cf8  1b 38 fd eb                                      bl #0x30ed6c
003c0cfc  00 b0 a0 e1                                      mov fp, r0
003c0d00  18 00 9d e5                                      ldr r0, [sp, #0x18]
003c0d04  00 10 a0 e1                                      mov r1, r0
003c0d08  17 38 fd eb                                      bl #0x30ed6c
003c0d0c  00 10 a0 e1                                      mov r1, r0
003c0d10  0b 00 a0 e1                                      mov r0, fp
003c0d14  a2 37 fd eb                                      bl #0x30eba4
003c0d18  00 b0 a0 e1                                      mov fp, r0
003c0d1c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003c0d20  00 10 a0 e1                                      mov r1, r0
003c0d24  10 38 fd eb                                      bl #0x30ed6c
003c0d28  00 10 a0 e1                                      mov r1, r0
003c0d2c  0b 00 a0 e1                                      mov r0, fp
003c0d30  9b 37 fd eb                                      bl #0x30eba4
003c0d34  00 b0 a0 e1                                      mov fp, r0
003c0d38  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003c0d3c  00 10 a0 e1                                      mov r1, r0
003c0d40  09 38 fd eb                                      bl #0x30ed6c
003c0d44  0b 10 a0 e1                                      mov r1, fp
003c0d48  6a 35 fd eb                                      bl #0x30e2f8
003c0d4c  00 00 50 e3                                      cmp r0, #0
003c0d50  bf ff ff 0a                                      beq #0x3c0c54
003c0d54  0b 00 a0 e1                                      mov r0, fp
003c0d58  00 10 a0 e3                                      mov r1, #0
003c0d5c  65 35 fd eb                                      bl #0x30e2f8
003c0d60  00 00 50 e3                                      cmp r0, #0
003c0d64  ba ff ff 0a                                      beq #0x3c0c54
003c0d68  0b 00 a0 e1                                      mov r0, fp
003c0d6c  ec 34 fd eb                                      bl #0x30e124
003c0d70  00 b0 a0 e1                                      mov fp, r0
003c0d74  0b 10 a0 e1                                      mov r1, fp
003c0d78  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003c0d7c  8a 35 fd eb                                      bl #0x30e3ac
003c0d80  fd 15 a0 e3                                      mov r1, #0x3f400000
003c0d84  f8 37 fd eb                                      bl #0x30ed6c
003c0d88  0b 10 a0 e1                                      mov r1, fp
003c0d8c  c0 37 fd eb                                      bl #0x30ec94
003c0d90  10 10 9d e5                                      ldr r1, [sp, #0x10]
003c0d94  00 b0 a0 e1                                      mov fp, r0
003c0d98  f3 37 fd eb                                      bl #0x30ed6c
003c0d9c  18 10 9d e5                                      ldr r1, [sp, #0x18]
003c0da0  0c 00 8d e5                                      str r0, [sp, #0xc]
003c0da4  0b 00 a0 e1                                      mov r0, fp
003c0da8  ef 37 fd eb                                      bl #0x30ed6c
003c0dac  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003c0db0  10 00 8d e5                                      str r0, [sp, #0x10]
003c0db4  0b 00 a0 e1                                      mov r0, fp
003c0db8  eb 37 fd eb                                      bl #0x30ed6c
003c0dbc  64 11 94 e5                                      ldr r1, [r4, #0x164]
003c0dc0  00 b0 a0 e1                                      mov fp, r0
003c0dc4  10 00 9d e5                                      ldr r0, [sp, #0x10]
003c0dc8  75 37 fd eb                                      bl #0x30eba4
003c0dcc  68 11 94 e5                                      ldr r1, [r4, #0x168]
003c0dd0  00 20 a0 e1                                      mov r2, r0
003c0dd4  0b 00 a0 e1                                      mov r0, fp
003c0dd8  04 20 8d e5                                      str r2, [sp, #4]
003c0ddc  70 37 fd eb                                      bl #0x30eba4
003c0de0  60 11 94 e5                                      ldr r1, [r4, #0x160]
003c0de4  00 c0 a0 e1                                      mov ip, r0
003c0de8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003c0dec  08 c0 8d e5                                      str ip, [sp, #8]
003c0df0  6b 37 fd eb                                      bl #0x30eba4
003c0df4  78 33 94 e5                                      ldr r3, [r4, #0x378]
003c0df8  04 10 9d e9                                      ldmib sp, {r2, ip}
003c0dfc  3c 00 8d e5                                      str r0, [sp, #0x3c]
003c0e00  20 10 9d e5                                      ldr r1, [sp, #0x20]
003c0e04  03 00 a0 e1                                      mov r0, r3
003c0e08  40 20 8d e5                                      str r2, [sp, #0x40]
003c0e0c  44 c0 8d e5                                      str ip, [sp, #0x44]
003c0e10  b3 11 01 eb                                      bl #0x4054e4
003c0e14  64 01 95 e5                                      ldr r0, [r5, #0x164]
003c0e18  10 10 9d e5                                      ldr r1, [sp, #0x10]
003c0e1c  62 35 fd eb                                      bl #0x30e3ac
003c0e20  0b 10 a0 e1                                      mov r1, fp
003c0e24  00 30 a0 e1                                      mov r3, r0
003c0e28  68 01 95 e5                                      ldr r0, [r5, #0x168]
003c0e2c  08 30 8d e5                                      str r3, [sp, #8]
003c0e30  5d 35 fd eb                                      bl #0x30e3ac
003c0e34  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003c0e38  00 b0 a0 e1                                      mov fp, r0
003c0e3c  60 01 95 e5                                      ldr r0, [r5, #0x160]
003c0e40  59 35 fd eb                                      bl #0x30e3ac
003c0e44  78 23 95 e5                                      ldr r2, [r5, #0x378]
003c0e48  08 30 9d e5                                      ldr r3, [sp, #8]
003c0e4c  30 00 8d e5                                      str r0, [sp, #0x30]
003c0e50  24 10 9d e5                                      ldr r1, [sp, #0x24]
003c0e54  02 00 a0 e1                                      mov r0, r2
003c0e58  34 30 8d e5                                      str r3, [sp, #0x34]
003c0e5c  38 b0 8d e5                                      str fp, [sp, #0x38]
003c0e60  9f 11 01 eb                                      bl #0x4054e4
003c0e64  7a ff ff ea                                      b #0x3c0c54
; mapping-symbol data/literal pool
003c0e68  00 3f 5d 00 f4 37 00 00 60 0b 50 00 80 3f 50 00  .byte 0x00, 0x3f, 0x5d, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x60, 0x0b, 0x50, 0x00, 0x80, 0x3f, 0x50, 0x00
003c0e78  20 0b 50 00 58 3f 50 00                          .byte 0x20, 0x0b, 0x50, 0x00, 0x58, 0x3f, 0x50, 0x00

; FUNCTION 0x003c0e80, declared_size=16, range_size=16, mode=arm
; class-group: CSIdle
; alias: _ZN6CSIdle8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSIdle::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0e80  01 00 a0 e1                                      mov r0, r1
003c0e84  02 10 a0 e1                                      mov r1, r2
003c0e88  03 20 a0 e1                                      mov r2, r3
003c0e8c  39 ff ff ea                                      b #0x3c0b78

; FUNCTION 0x003c2d3c, declared_size=148, range_size=148, mode=arm
; class-group: CSIdle
; alias: _ZN6CSIdle6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSIdle::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c2d3c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003c2d40  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
003c2d44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c2d48  03 30 8f e0                                      add r3, pc, r3
003c2d4c  01 50 93 e7                                      ldr r5, [r3, r1]
003c2d50  70 10 9f e5                                      ldr r1, [pc, #0x70]
003c2d54  02 70 a0 e1                                      mov r7, r2
003c2d58  00 20 95 e5                                      ldr r2, [r5]
003c2d5c  01 60 93 e7                                      ldr r6, [r3, r1]
003c2d60  24 d0 4d e2                                      sub sp, sp, #0x24
003c2d64  1c 20 8d e5                                      str r2, [sp, #0x1c]
003c2d68  06 00 a0 e1                                      mov r0, r6
003c2d6c  c5 d2 fd eb                                      bl #0x337888
003c2d70  54 10 9f e5                                      ldr r1, [pc, #0x54]
003c2d74  04 40 8d e2                                      add r4, sp, #4
003c2d78  0d 20 a0 e1                                      mov r2, sp
003c2d7c  01 10 8f e0                                      add r1, pc, r1
003c2d80  04 00 a0 e1                                      mov r0, r4
003c2d84  d8 44 fd eb                                      bl #0x3140ec
003c2d88  04 10 a0 e1                                      mov r1, r4
003c2d8c  06 00 a0 e1                                      mov r0, r6
003c2d90  3c d3 fd eb                                      bl #0x337a88
003c2d94  04 00 a0 e1                                      mov r0, r4
003c2d98  2d 55 fd eb                                      bl #0x318254
003c2d9c  00 30 a0 e3                                      mov r3, #0
003c2da0  38 35 c7 e5                                      strb r3, [r7, #0x538]
003c2da4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c2da8  00 30 95 e5                                      ldr r3, [r5]
003c2dac  03 00 52 e1                                      cmp r2, r3
003c2db0  01 00 00 1a                                      bne #0x3c2dbc
003c2db4  24 d0 8d e2                                      add sp, sp, #0x24
003c2db8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c2dbc  53 2d fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c2dc0  48 1d 5d 00 ac 40 00 00 84 08 00 00 d4 20 50 00  .byte 0x48, 0x1d, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd4, 0x20, 0x50, 0x00

; FUNCTION 0x003c3020, declared_size=288, range_size=288, mode=arm
; class-group: CSIdle
; alias: _ZN6CSIdle7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSIdle::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c3020  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c3024  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
003c3028  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
003c302c  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
003c3030  04 40 8f e0                                      add r4, pc, r4
003c3034  07 30 94 e7                                      ldr r3, [r4, r7]
003c3038  01 80 94 e7                                      ldr r8, [r4, r1]
003c303c  20 d0 4d e2                                      sub sp, sp, #0x20
003c3040  00 30 93 e5                                      ldr r3, [r3]
003c3044  08 00 a0 e1                                      mov r0, r8
003c3048  02 60 a0 e1                                      mov r6, r2
003c304c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c3050  0c d2 fd eb                                      bl #0x337888
003c3054  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
003c3058  04 50 8d e2                                      add r5, sp, #4
003c305c  0d 20 a0 e1                                      mov r2, sp
003c3060  01 10 8f e0                                      add r1, pc, r1
003c3064  05 00 a0 e1                                      mov r0, r5
003c3068  1f 44 fd eb                                      bl #0x3140ec
003c306c  05 10 a0 e1                                      mov r1, r5
003c3070  08 00 a0 e1                                      mov r0, r8
003c3074  83 d2 fd eb                                      bl #0x337a88
003c3078  05 00 a0 e1                                      mov r0, r5
003c307c  74 54 fd eb                                      bl #0x318254
003c3080  38 35 d6 e5                                      ldrb r3, [r6, #0x538]
003c3084  00 00 53 e3                                      cmp r3, #0
003c3088  06 00 00 0a                                      beq #0x3c30a8
003c308c  07 30 94 e7                                      ldr r3, [r4, r7]
003c3090  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c3094  00 30 93 e5                                      ldr r3, [r3]
003c3098  03 00 52 e1                                      cmp r2, r3
003c309c  1e 00 00 1a                                      bne #0x3c311c
003c30a0  20 d0 8d e2                                      add sp, sp, #0x20
003c30a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c30a8  8e 3d a0 e3                                      mov r3, #0x2380
003c30ac  20 35 86 e5                                      str r3, [r6, #0x520]
003c30b0  78 30 9f e5                                      ldr r3, [pc, #0x78]
003c30b4  06 00 a0 e1                                      mov r0, r6
003c30b8  49 5e 86 e2                                      add r5, r6, #0x490
003c30bc  03 30 94 e7                                      ldr r3, [r4, r3]
003c30c0  0c 50 85 e2                                      add r5, r5, #0xc
003c30c4  00 80 93 e5                                      ldr r8, [r3]
003c30c8  56 80 ff eb                                      bl #0x3a3228
003c30cc  60 30 9f e5                                      ldr r3, [pc, #0x60]
003c30d0  60 10 9f e5                                      ldr r1, [pc, #0x60]
003c30d4  03 20 94 e7                                      ldr r2, [r4, r3]
003c30d8  a0 30 a0 e3                                      mov r3, #0xa0
003c30dc  93 80 23 e0                                      mla r3, r3, r0, r8
003c30e0  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c30e4  50 20 9f e5                                      ldr r2, [pc, #0x50]
003c30e8  01 10 8f e0                                      add r1, pc, r1
003c30ec  28 80 93 e5                                      ldr r8, [r3, #0x28]
003c30f0  02 20 8f e0                                      add r2, pc, r2
003c30f4  b8 06 04 eb                                      bl #0x4c4bdc
003c30f8  02 00 10 e2                                      ands r0, r0, #2
003c30fc  03 00 00 1a                                      bne #0x3c3110
003c3100  08 10 80 e0                                      add r1, r0, r8
003c3104  05 00 a0 e1                                      mov r0, r5
003c3108  e8 1e 00 eb                                      bl #0x3cacb0
003c310c  de ff ff ea                                      b #0x3c308c
003c3110  06 00 a0 e1                                      mov r0, r6
003c3114  b1 88 ff eb                                      bl #0x3a53e0
003c3118  f8 ff ff ea                                      b #0x3c3100
003c311c  7b 2c fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c3120  60 1a 5d 00 ac 40 00 00 84 08 00 00 f0 1d 50 00  .byte 0x60, 0x1a, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xf0, 0x1d, 0x50, 0x00
003c3130  44 48 00 00 f4 37 00 00 d0 1a 50 00 d8 1a 50 00  .byte 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd0, 0x1a, 0x50, 0x00, 0xd8, 0x1a, 0x50, 0x00

; FUNCTION 0x003c7e60, declared_size=588, range_size=588, mode=arm
; class-group: CSIdle
; alias: _ZN6CSIdle6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSIdle::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c7e60  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c7e64  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c7e68  0c 50 85 e2                                      add r5, r5, #0xc
003c7e6c  7c d0 4d e2                                      sub sp, sp, #0x7c
003c7e70  00 40 a0 e3                                      mov r4, #0
003c7e74  01 60 a0 e1                                      mov r6, r1
003c7e78  02 a0 a0 e1                                      mov sl, r2
003c7e7c  05 00 a0 e1                                      mov r0, r5
003c7e80  23 20 a0 e3                                      mov r2, #0x23
003c7e84  03 30 a0 e3                                      mov r3, #3
003c7e88  70 40 8d e5                                      str r4, [sp, #0x70]
003c7e8c  74 40 8d e5                                      str r4, [sp, #0x74]
003c7e90  00 40 8d e5                                      str r4, [sp]
003c7e94  04 40 8d e5                                      str r4, [sp, #4]
003c7e98  1e ff ff eb                                      bl #0x3c7b18
003c7e9c  05 00 a0 e1                                      mov r0, r5
003c7ea0  06 10 a0 e1                                      mov r1, r6
003c7ea4  22 20 a0 e3                                      mov r2, #0x22
003c7ea8  03 30 a0 e3                                      mov r3, #3
003c7eac  68 40 8d e5                                      str r4, [sp, #0x68]
003c7eb0  6c 40 8d e5                                      str r4, [sp, #0x6c]
003c7eb4  00 40 8d e5                                      str r4, [sp]
003c7eb8  04 40 8d e5                                      str r4, [sp, #4]
003c7ebc  d8 81 9f e5                                      ldr r8, [pc, #0x1d8]
003c7ec0  14 ff ff eb                                      bl #0x3c7b18
003c7ec4  05 00 a0 e1                                      mov r0, r5
003c7ec8  06 10 a0 e1                                      mov r1, r6
003c7ecc  58 23 0c e3                                      movw r2, #0xc358
003c7ed0  0c 30 a0 e3                                      mov r3, #0xc
003c7ed4  60 40 8d e5                                      str r4, [sp, #0x60]
003c7ed8  64 40 8d e5                                      str r4, [sp, #0x64]
003c7edc  00 40 8d e5                                      str r4, [sp]
003c7ee0  04 40 8d e5                                      str r4, [sp, #4]
003c7ee4  0b ff ff eb                                      bl #0x3c7b18
003c7ee8  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
003c7eec  08 80 8f e0                                      add r8, pc, r8
003c7ef0  05 00 a0 e1                                      mov r0, r5
003c7ef4  03 c0 98 e7                                      ldr ip, [r8, r3]
003c7ef8  06 10 a0 e1                                      mov r1, r6
003c7efc  5a 23 0c e3                                      movw r2, #0xc35a
003c7f00  0b 30 a0 e3                                      mov r3, #0xb
003c7f04  00 c0 8d e5                                      str ip, [sp]
003c7f08  58 c0 8d e5                                      str ip, [sp, #0x58]
003c7f0c  5c 40 8d e5                                      str r4, [sp, #0x5c]
003c7f10  04 40 8d e5                                      str r4, [sp, #4]
003c7f14  ff fe ff eb                                      bl #0x3c7b18
003c7f18  84 31 9f e5                                      ldr r3, [pc, #0x184]
003c7f1c  05 00 a0 e1                                      mov r0, r5
003c7f20  06 10 a0 e1                                      mov r1, r6
003c7f24  03 70 98 e7                                      ldr r7, [r8, r3]
003c7f28  5b 23 0c e3                                      movw r2, #0xc35b
003c7f2c  0a 30 a0 e3                                      mov r3, #0xa
003c7f30  50 70 8d e5                                      str r7, [sp, #0x50]
003c7f34  54 40 8d e5                                      str r4, [sp, #0x54]
003c7f38  00 70 8d e5                                      str r7, [sp]
003c7f3c  04 40 8d e5                                      str r4, [sp, #4]
003c7f40  f4 fe ff eb                                      bl #0x3c7b18
003c7f44  05 00 a0 e1                                      mov r0, r5
003c7f48  06 10 a0 e1                                      mov r1, r6
003c7f4c  5c 23 0c e3                                      movw r2, #0xc35c
003c7f50  09 30 a0 e3                                      mov r3, #9
003c7f54  48 70 8d e5                                      str r7, [sp, #0x48]
003c7f58  4c 40 8d e5                                      str r4, [sp, #0x4c]
003c7f5c  00 70 8d e5                                      str r7, [sp]
003c7f60  04 40 8d e5                                      str r4, [sp, #4]
003c7f64  eb fe ff eb                                      bl #0x3c7b18
003c7f68  05 00 a0 e1                                      mov r0, r5
003c7f6c  06 10 a0 e1                                      mov r1, r6
003c7f70  5d 23 0c e3                                      movw r2, #0xc35d
003c7f74  08 30 a0 e3                                      mov r3, #8
003c7f78  00 70 8d e5                                      str r7, [sp]
003c7f7c  40 70 8d e5                                      str r7, [sp, #0x40]
003c7f80  44 40 8d e5                                      str r4, [sp, #0x44]
003c7f84  04 40 8d e5                                      str r4, [sp, #4]
003c7f88  e2 fe ff eb                                      bl #0x3c7b18
003c7f8c  05 00 a0 e1                                      mov r0, r5
003c7f90  06 10 a0 e1                                      mov r1, r6
003c7f94  56 23 0c e3                                      movw r2, #0xc356
003c7f98  07 30 a0 e3                                      mov r3, #7
003c7f9c  38 40 8d e5                                      str r4, [sp, #0x38]
003c7fa0  3c 40 8d e5                                      str r4, [sp, #0x3c]
003c7fa4  00 40 8d e5                                      str r4, [sp]
003c7fa8  04 40 8d e5                                      str r4, [sp, #4]
003c7fac  d9 fe ff eb                                      bl #0x3c7b18
003c7fb0  05 00 a0 e1                                      mov r0, r5
003c7fb4  06 10 a0 e1                                      mov r1, r6
003c7fb8  55 23 0c e3                                      movw r2, #0xc355
003c7fbc  06 30 a0 e3                                      mov r3, #6
003c7fc0  30 40 8d e5                                      str r4, [sp, #0x30]
003c7fc4  34 40 8d e5                                      str r4, [sp, #0x34]
003c7fc8  00 40 8d e5                                      str r4, [sp]
003c7fcc  04 40 8d e5                                      str r4, [sp, #4]
003c7fd0  d0 fe ff eb                                      bl #0x3c7b18
003c7fd4  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
003c7fd8  05 00 a0 e1                                      mov r0, r5
003c7fdc  06 10 a0 e1                                      mov r1, r6
003c7fe0  03 c0 98 e7                                      ldr ip, [r8, r3]
003c7fe4  54 23 0c e3                                      movw r2, #0xc354
003c7fe8  05 30 a0 e3                                      mov r3, #5
003c7fec  00 c0 8d e5                                      str ip, [sp]
003c7ff0  28 c0 8d e5                                      str ip, [sp, #0x28]
003c7ff4  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c7ff8  04 40 8d e5                                      str r4, [sp, #4]
003c7ffc  c5 fe ff eb                                      bl #0x3c7b18
003c8000  05 00 a0 e1                                      mov r0, r5
003c8004  06 10 a0 e1                                      mov r1, r6
003c8008  51 23 0c e3                                      movw r2, #0xc351
003c800c  04 30 a0 e3                                      mov r3, #4
003c8010  20 40 8d e5                                      str r4, [sp, #0x20]
003c8014  24 40 8d e5                                      str r4, [sp, #0x24]
003c8018  00 40 8d e5                                      str r4, [sp]
003c801c  04 40 8d e5                                      str r4, [sp, #4]
003c8020  bc fe ff eb                                      bl #0x3c7b18
003c8024  05 00 a0 e1                                      mov r0, r5
003c8028  06 10 a0 e1                                      mov r1, r6
003c802c  52 23 0c e3                                      movw r2, #0xc352
003c8030  03 30 a0 e3                                      mov r3, #3
003c8034  18 40 8d e5                                      str r4, [sp, #0x18]
003c8038  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c803c  00 40 8d e5                                      str r4, [sp]
003c8040  04 40 8d e5                                      str r4, [sp, #4]
003c8044  b3 fe ff eb                                      bl #0x3c7b18
003c8048  05 00 a0 e1                                      mov r0, r5
003c804c  06 10 a0 e1                                      mov r1, r6
003c8050  53 23 0c e3                                      movw r2, #0xc353
003c8054  0d 30 a0 e3                                      mov r3, #0xd
003c8058  10 40 8d e5                                      str r4, [sp, #0x10]
003c805c  14 40 8d e5                                      str r4, [sp, #0x14]
003c8060  00 40 8d e5                                      str r4, [sp]
003c8064  04 40 8d e5                                      str r4, [sp, #4]
003c8068  aa fe ff eb                                      bl #0x3c7b18
003c806c  05 00 a0 e1                                      mov r0, r5
003c8070  06 10 a0 e1                                      mov r1, r6
003c8074  57 23 0c e3                                      movw r2, #0xc357
003c8078  0f 30 a0 e3                                      mov r3, #0xf
003c807c  08 40 8d e5                                      str r4, [sp, #8]
003c8080  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8084  00 40 8d e5                                      str r4, [sp]
003c8088  04 40 8d e5                                      str r4, [sp, #4]
003c808c  a1 fe ff eb                                      bl #0x3c7b18
003c8090  38 45 ca e5                                      strb r4, [sl, #0x538]
003c8094  7c d0 8d e2                                      add sp, sp, #0x7c
003c8098  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
003c809c  a4 cb 5c 00 84 2e 00 00 cc 34 00 00 d4 0a 00 00  .byte 0xa4, 0xcb, 0x5c, 0x00, 0x84, 0x2e, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00, 0xd4, 0x0a, 0x00, 0x00
