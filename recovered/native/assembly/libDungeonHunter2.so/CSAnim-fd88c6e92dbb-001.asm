; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0050, declared_size=4, range_size=4, mode=arm
; class-group: CSAnim
; alias: _ZN6CSAnimD1Ev
; demangled: CSAnim::~CSAnim()
; decoder-mode: arm
003c0050  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c07bc, declared_size=52, range_size=52, mode=arm
; class-group: CSAnim
; alias: _ZN6CSAnimD0Ev
; demangled: CSAnim::~CSAnim()
; decoder-mode: arm
003c07bc  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c07c0  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c07c4  10 40 2d e9                                      push {r4, lr}
003c07c8  03 30 8f e0                                      add r3, pc, r3
003c07cc  02 20 93 e7                                      ldr r2, [r3, r2]
003c07d0  00 40 a0 e1                                      mov r4, r0
003c07d4  08 20 82 e2                                      add r2, r2, #8
003c07d8  00 20 80 e5                                      str r2, [r0]
003c07dc  17 3f fd eb                                      bl #0x310440
003c07e0  04 00 a0 e1                                      mov r0, r4
003c07e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c07e8  c8 42 5d 00 08 2a 00 00                          .byte 0xc8, 0x42, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c1a14, declared_size=40, range_size=40, mode=arm
; class-group: CSAnim
; alias: _ZN6CSAnim7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSAnim::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c1a14  00 30 9d e5                                      ldr r3, [sp]
003c1a18  22 00 53 e3                                      cmp r3, #0x22
003c1a1c  1e ff 2f 11                                      bxne lr
003c1a20  40 35 d2 e5                                      ldrb r3, [r2, #0x540]
003c1a24  00 00 53 e3                                      cmp r3, #0
003c1a28  1e ff 2f 01                                      bxeq lr
003c1a2c  4f 0e 82 e2                                      add r0, r2, #0x4f0
003c1a30  0c 00 80 e2                                      add r0, r0, #0xc
003c1a34  00 10 a0 e3                                      mov r1, #0
003c1a38  f0 ff ff ea                                      b #0x3c1a00

; FUNCTION 0x003c1a3c, declared_size=40, range_size=40, mode=arm
; class-group: CSAnim
; alias: _ZN6CSAnim8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSAnim::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c1a3c  52 3d a0 e3                                      mov r3, #0x1480
003c1a40  03 10 d2 e7                                      ldrb r1, [r2, r3]
003c1a44  00 00 51 e3                                      cmp r1, #0
003c1a48  1e ff 2f 11                                      bxne lr
003c1a4c  41 35 d2 e5                                      ldrb r3, [r2, #0x541]
003c1a50  00 00 53 e3                                      cmp r3, #0
003c1a54  1e ff 2f 01                                      bxeq lr
003c1a58  4f 0e 82 e2                                      add r0, r2, #0x4f0
003c1a5c  0c 00 80 e2                                      add r0, r0, #0xc
003c1a60  e6 ff ff ea                                      b #0x3c1a00

; FUNCTION 0x003c2dd0, declared_size=136, range_size=136, mode=arm
; class-group: CSAnim
; alias: _ZN6CSAnim6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSAnim::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c2dd0  70 30 9f e5                                      ldr r3, [pc, #0x70]
003c2dd4  70 20 9f e5                                      ldr r2, [pc, #0x70]
003c2dd8  70 40 2d e9                                      push {r4, r5, r6, lr}
003c2ddc  03 30 8f e0                                      add r3, pc, r3
003c2de0  02 50 93 e7                                      ldr r5, [r3, r2]
003c2de4  64 20 9f e5                                      ldr r2, [pc, #0x64]
003c2de8  20 d0 4d e2                                      sub sp, sp, #0x20
003c2dec  04 40 8d e2                                      add r4, sp, #4
003c2df0  02 60 93 e7                                      ldr r6, [r3, r2]
003c2df4  00 30 95 e5                                      ldr r3, [r5]
003c2df8  06 00 a0 e1                                      mov r0, r6
003c2dfc  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c2e00  a0 d2 fd eb                                      bl #0x337888
003c2e04  48 10 9f e5                                      ldr r1, [pc, #0x48]
003c2e08  0d 20 a0 e1                                      mov r2, sp
003c2e0c  04 00 a0 e1                                      mov r0, r4
003c2e10  01 10 8f e0                                      add r1, pc, r1
003c2e14  b4 44 fd eb                                      bl #0x3140ec
003c2e18  04 10 a0 e1                                      mov r1, r4
003c2e1c  06 00 a0 e1                                      mov r0, r6
003c2e20  18 d3 fd eb                                      bl #0x337a88
003c2e24  04 00 a0 e1                                      mov r0, r4
003c2e28  09 55 fd eb                                      bl #0x318254
003c2e2c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c2e30  00 30 95 e5                                      ldr r3, [r5]
003c2e34  03 00 52 e1                                      cmp r2, r3
003c2e38  01 00 00 1a                                      bne #0x3c2e44
003c2e3c  20 d0 8d e2                                      add sp, sp, #0x20
003c2e40  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c2e44  31 2d fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c2e48  b4 1c 5d 00 ac 40 00 00 84 08 00 00 40 20 50 00  .byte 0xb4, 0x1c, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x40, 0x20, 0x50, 0x00

; FUNCTION 0x003c324c, declared_size=176, range_size=176, mode=arm
; class-group: CSAnim
; alias: _ZN6CSAnim7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSAnim::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c324c  98 30 9f e5                                      ldr r3, [pc, #0x98]
003c3250  98 10 9f e5                                      ldr r1, [pc, #0x98]
003c3254  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c3258  03 30 8f e0                                      add r3, pc, r3
003c325c  01 60 93 e7                                      ldr r6, [r3, r1]
003c3260  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
003c3264  02 40 a0 e1                                      mov r4, r2
003c3268  00 20 96 e5                                      ldr r2, [r6]
003c326c  01 70 93 e7                                      ldr r7, [r3, r1]
003c3270  24 d0 4d e2                                      sub sp, sp, #0x24
003c3274  1c 20 8d e5                                      str r2, [sp, #0x1c]
003c3278  07 00 a0 e1                                      mov r0, r7
003c327c  81 d1 fd eb                                      bl #0x337888
003c3280  70 10 9f e5                                      ldr r1, [pc, #0x70]
003c3284  04 50 8d e2                                      add r5, sp, #4
003c3288  0d 20 a0 e1                                      mov r2, sp
003c328c  01 10 8f e0                                      add r1, pc, r1
003c3290  05 00 a0 e1                                      mov r0, r5
003c3294  94 43 fd eb                                      bl #0x3140ec
003c3298  05 10 a0 e1                                      mov r1, r5
003c329c  07 00 a0 e1                                      mov r0, r7
003c32a0  f8 d1 fd eb                                      bl #0x337a88
003c32a4  05 00 a0 e1                                      mov r0, r5
003c32a8  e9 53 fd eb                                      bl #0x318254
003c32ac  41 35 d4 e5                                      ldrb r3, [r4, #0x541]
003c32b0  4f 0e 84 e2                                      add r0, r4, #0x4f0
003c32b4  0c 00 80 e2                                      add r0, r0, #0xc
003c32b8  00 00 53 e3                                      cmp r3, #0
003c32bc  89 3d a0 13                                      movne r3, #0x2240
003c32c0  8d 3d a0 03                                      moveq r3, #0x2340
003c32c4  20 35 84 e5                                      str r3, [r4, #0x520]
003c32c8  00 10 e0 e3                                      mvn r1, #0
003c32cc  1f f6 ff eb                                      bl #0x3c0b50
003c32d0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c32d4  00 30 96 e5                                      ldr r3, [r6]
003c32d8  03 00 52 e1                                      cmp r2, r3
003c32dc  01 00 00 1a                                      bne #0x3c32e8
003c32e0  24 d0 8d e2                                      add sp, sp, #0x24
003c32e4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c32e8  08 2c fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c32ec  38 18 5d 00 ac 40 00 00 84 08 00 00 c4 1b 50 00  .byte 0x38, 0x18, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0x1b, 0x50, 0x00

; FUNCTION 0x003c8b28, declared_size=100, range_size=100, mode=arm
; class-group: CSAnim
; alias: _ZN6CSAnim6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSAnim::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8b28  70 40 2d e9                                      push {r4, r5, r6, lr}
003c8b2c  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c8b30  0c 50 85 e2                                      add r5, r5, #0xc
003c8b34  18 d0 4d e2                                      sub sp, sp, #0x18
003c8b38  00 40 a0 e3                                      mov r4, #0
003c8b3c  01 60 a0 e1                                      mov r6, r1
003c8b40  05 00 a0 e1                                      mov r0, r5
003c8b44  51 23 0c e3                                      movw r2, #0xc351
003c8b48  04 30 a0 e3                                      mov r3, #4
003c8b4c  10 40 8d e5                                      str r4, [sp, #0x10]
003c8b50  14 40 8d e5                                      str r4, [sp, #0x14]
003c8b54  00 40 8d e5                                      str r4, [sp]
003c8b58  04 40 8d e5                                      str r4, [sp, #4]
003c8b5c  ed fb ff eb                                      bl #0x3c7b18
003c8b60  05 00 a0 e1                                      mov r0, r5
003c8b64  06 10 a0 e1                                      mov r1, r6
003c8b68  55 23 0c e3                                      movw r2, #0xc355
003c8b6c  06 30 a0 e3                                      mov r3, #6
003c8b70  04 40 8d e5                                      str r4, [sp, #4]
003c8b74  08 40 8d e5                                      str r4, [sp, #8]
003c8b78  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8b7c  00 40 8d e5                                      str r4, [sp]
003c8b80  e4 fb ff eb                                      bl #0x3c7b18
003c8b84  18 d0 8d e2                                      add sp, sp, #0x18
003c8b88  70 80 bd e8                                      pop {r4, r5, r6, pc}
