; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0054, declared_size=4, range_size=4, mode=arm
; class-group: CSReviving
; alias: _ZN10CSRevivingD1Ev
; demangled: CSReviving::~CSReviving()
; decoder-mode: arm
003c0054  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0058, declared_size=4, range_size=4, mode=arm
; class-group: CSReviving
; alias: _ZN10CSReviving8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSReviving::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0058  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c005c, declared_size=4, range_size=4, mode=arm
; class-group: CSReviving
; alias: _ZN10CSReviving7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSReviving::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c005c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0788, declared_size=52, range_size=52, mode=arm
; class-group: CSReviving
; alias: _ZN10CSRevivingD0Ev
; demangled: CSReviving::~CSReviving()
; decoder-mode: arm
003c0788  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c078c  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0790  10 40 2d e9                                      push {r4, lr}
003c0794  03 30 8f e0                                      add r3, pc, r3
003c0798  02 20 93 e7                                      ldr r2, [r3, r2]
003c079c  00 40 a0 e1                                      mov r4, r0
003c07a0  08 20 82 e2                                      add r2, r2, #8
003c07a4  00 20 80 e5                                      str r2, [r0]
003c07a8  24 3f fd eb                                      bl #0x310440
003c07ac  04 00 a0 e1                                      mov r0, r4
003c07b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c07b4  fc 42 5d 00 08 2a 00 00                          .byte 0xfc, 0x42, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c5294, declared_size=344, range_size=344, mode=arm
; class-group: CSReviving
; alias: _ZN10CSReviving7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSReviving::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c5294  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c5298  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
003c529c  2c 71 9f e5                                      ldr r7, [pc, #0x12c]
003c52a0  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
003c52a4  05 50 8f e0                                      add r5, pc, r5
003c52a8  07 30 95 e7                                      ldr r3, [r5, r7]
003c52ac  01 80 95 e7                                      ldr r8, [r5, r1]
003c52b0  30 d0 4d e2                                      sub sp, sp, #0x30
003c52b4  00 30 93 e5                                      ldr r3, [r3]
003c52b8  08 00 a0 e1                                      mov r0, r8
003c52bc  02 40 a0 e1                                      mov r4, r2
003c52c0  2c 30 8d e5                                      str r3, [sp, #0x2c]
003c52c4  6f c9 fd eb                                      bl #0x337888
003c52c8  08 11 9f e5                                      ldr r1, [pc, #0x108]
003c52cc  14 60 8d e2                                      add r6, sp, #0x14
003c52d0  10 20 8d e2                                      add r2, sp, #0x10
003c52d4  06 00 a0 e1                                      mov r0, r6
003c52d8  01 10 8f e0                                      add r1, pc, r1
003c52dc  82 3b fd eb                                      bl #0x3140ec
003c52e0  06 10 a0 e1                                      mov r1, r6
003c52e4  08 00 a0 e1                                      mov r0, r8
003c52e8  e6 c9 fd eb                                      bl #0x337a88
003c52ec  06 00 a0 e1                                      mov r0, r6
003c52f0  d7 4b fd eb                                      bl #0x318254
003c52f4  41 33 02 e3                                      movw r3, #0x2341
003c52f8  20 35 84 e5                                      str r3, [r4, #0x520]
003c52fc  04 00 a0 e1                                      mov r0, r4
003c5300  ec dc ff eb                                      bl #0x3bc6b8
003c5304  78 33 94 e5                                      ldr r3, [r4, #0x378]
003c5308  01 20 a0 e3                                      mov r2, #1
003c530c  04 60 8d e2                                      add r6, sp, #4
003c5310  08 20 c3 e5                                      strb r2, [r3, #8]
003c5314  08 14 94 e5                                      ldr r1, [r4, #0x408]
003c5318  06 00 a0 e1                                      mov r0, r6
003c531c  82 e2 fd eb                                      bl #0x33dd2c
003c5320  06 00 a0 e1                                      mov r0, r6
003c5324  0a eb fd eb                                      bl #0x33ff54
003c5328  f2 6f 84 e2                                      add r6, r4, #0x3c8
003c532c  00 10 a0 e3                                      mov r1, #0
003c5330  01 20 a0 e1                                      mov r2, r1
003c5334  58 05 84 e5                                      str r0, [r4, #0x558]
003c5338  06 00 a0 e1                                      mov r0, r6
003c533c  53 45 00 eb                                      bl #0x3d6890
003c5340  06 00 a0 e1                                      mov r0, r6
003c5344  9e 3d 00 eb                                      bl #0x3d49c4
003c5348  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003c534c  04 00 a0 e1                                      mov r0, r4
003c5350  4f 6e 84 e2                                      add r6, r4, #0x4f0
003c5354  03 30 95 e7                                      ldr r3, [r5, r3]
003c5358  0c 60 86 e2                                      add r6, r6, #0xc
003c535c  00 80 93 e5                                      ldr r8, [r3]
003c5360  b0 77 ff eb                                      bl #0x3a3228
003c5364  74 30 9f e5                                      ldr r3, [pc, #0x74]
003c5368  74 10 9f e5                                      ldr r1, [pc, #0x74]
003c536c  03 20 95 e7                                      ldr r2, [r5, r3]
003c5370  a0 30 a0 e3                                      mov r3, #0xa0
003c5374  93 80 23 e0                                      mla r3, r3, r0, r8
003c5378  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c537c  64 20 9f e5                                      ldr r2, [pc, #0x64]
003c5380  01 10 8f e0                                      add r1, pc, r1
003c5384  6c 80 93 e5                                      ldr r8, [r3, #0x6c]
003c5388  02 20 8f e0                                      add r2, pc, r2
003c538c  12 fe 03 eb                                      bl #0x4c4bdc
003c5390  02 07 10 e2                                      ands r0, r0, #0x80000
003c5394  01 00 00 0a                                      beq #0x3c53a0
003c5398  04 00 a0 e1                                      mov r0, r4
003c539c  0f 80 ff eb                                      bl #0x3a53e0
003c53a0  08 10 80 e0                                      add r1, r0, r8
003c53a4  06 00 a0 e1                                      mov r0, r6
003c53a8  e8 ed ff eb                                      bl #0x3c0b50
003c53ac  07 30 95 e7                                      ldr r3, [r5, r7]
003c53b0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003c53b4  00 30 93 e5                                      ldr r3, [r3]
003c53b8  03 00 52 e1                                      cmp r2, r3
003c53bc  01 00 00 1a                                      bne #0x3c53c8
003c53c0  30 d0 8d e2                                      add sp, sp, #0x30
003c53c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c53c8  d0 23 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c53cc  ec f7 5c 00 ac 40 00 00 84 08 00 00 78 fb 4f 00  .byte 0xec, 0xf7, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x78, 0xfb, 0x4f, 0x00
003c53dc  44 48 00 00 f4 37 00 00 38 f8 4f 00 40 f8 4f 00  .byte 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x38, 0xf8, 0x4f, 0x00, 0x40, 0xf8, 0x4f, 0x00

; FUNCTION 0x003c6724, declared_size=176, range_size=176, mode=arm
; class-group: CSReviving
; alias: _ZN10CSReviving6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSReviving::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c6724  98 30 9f e5                                      ldr r3, [pc, #0x98]
003c6728  98 10 9f e5                                      ldr r1, [pc, #0x98]
003c672c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c6730  03 30 8f e0                                      add r3, pc, r3
003c6734  01 50 93 e7                                      ldr r5, [r3, r1]
003c6738  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
003c673c  02 60 a0 e1                                      mov r6, r2
003c6740  00 20 95 e5                                      ldr r2, [r5]
003c6744  01 70 93 e7                                      ldr r7, [r3, r1]
003c6748  24 d0 4d e2                                      sub sp, sp, #0x24
003c674c  1c 20 8d e5                                      str r2, [sp, #0x1c]
003c6750  07 00 a0 e1                                      mov r0, r7
003c6754  4b c4 fd eb                                      bl #0x337888
003c6758  70 10 9f e5                                      ldr r1, [pc, #0x70]
003c675c  04 40 8d e2                                      add r4, sp, #4
003c6760  0d 20 a0 e1                                      mov r2, sp
003c6764  01 10 8f e0                                      add r1, pc, r1
003c6768  04 00 a0 e1                                      mov r0, r4
003c676c  5e 36 fd eb                                      bl #0x3140ec
003c6770  04 10 a0 e1                                      mov r1, r4
003c6774  07 00 a0 e1                                      mov r0, r7
003c6778  c2 c4 fd eb                                      bl #0x337a88
003c677c  04 00 a0 e1                                      mov r0, r4
003c6780  b3 46 fd eb                                      bl #0x318254
003c6784  58 05 96 e5                                      ldr r0, [r6, #0x558]
003c6788  00 10 a0 e3                                      mov r1, #0
003c678c  01 20 a0 e1                                      mov r2, r1
003c6790  4f 0e 80 e2                                      add r0, r0, #0x4f0
003c6794  0c 00 80 e2                                      add r0, r0, #0xc
003c6798  38 fc ff eb                                      bl #0x3c5880
003c679c  78 33 96 e5                                      ldr r3, [r6, #0x378]
003c67a0  00 20 a0 e3                                      mov r2, #0
003c67a4  08 20 c3 e5                                      strb r2, [r3, #8]
003c67a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c67ac  00 30 95 e5                                      ldr r3, [r5]
003c67b0  03 00 52 e1                                      cmp r2, r3
003c67b4  01 00 00 1a                                      bne #0x3c67c0
003c67b8  24 d0 8d e2                                      add sp, sp, #0x24
003c67bc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c67c0  d2 1e fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c67c4  60 e3 5c 00 ac 40 00 00 84 08 00 00 ec e6 4f 00  .byte 0x60, 0xe3, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xec, 0xe6, 0x4f, 0x00

; FUNCTION 0x003c8b8c, declared_size=352, range_size=352, mode=arm
; class-group: CSReviving
; alias: _ZN10CSReviving6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSReviving::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8b8c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c8b90  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c8b94  0c 50 85 e2                                      add r5, r5, #0xc
003c8b98  4c d0 4d e2                                      sub sp, sp, #0x4c
003c8b9c  00 40 a0 e3                                      mov r4, #0
003c8ba0  01 60 a0 e1                                      mov r6, r1
003c8ba4  05 00 a0 e1                                      mov r0, r5
003c8ba8  22 20 a0 e3                                      mov r2, #0x22
003c8bac  03 30 a0 e3                                      mov r3, #3
003c8bb0  40 40 8d e5                                      str r4, [sp, #0x40]
003c8bb4  44 40 8d e5                                      str r4, [sp, #0x44]
003c8bb8  00 40 8d e5                                      str r4, [sp]
003c8bbc  04 40 8d e5                                      str r4, [sp, #4]
003c8bc0  d4 fb ff eb                                      bl #0x3c7b18
003c8bc4  05 00 a0 e1                                      mov r0, r5
003c8bc8  06 10 a0 e1                                      mov r1, r6
003c8bcc  58 23 0c e3                                      movw r2, #0xc358
003c8bd0  0c 30 a0 e3                                      mov r3, #0xc
003c8bd4  38 40 8d e5                                      str r4, [sp, #0x38]
003c8bd8  3c 40 8d e5                                      str r4, [sp, #0x3c]
003c8bdc  00 40 8d e5                                      str r4, [sp]
003c8be0  04 40 8d e5                                      str r4, [sp, #4]
003c8be4  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
003c8be8  ca fb ff eb                                      bl #0x3c7b18
003c8bec  05 00 a0 e1                                      mov r0, r5
003c8bf0  06 10 a0 e1                                      mov r1, r6
003c8bf4  55 23 0c e3                                      movw r2, #0xc355
003c8bf8  06 30 a0 e3                                      mov r3, #6
003c8bfc  30 40 8d e5                                      str r4, [sp, #0x30]
003c8c00  34 40 8d e5                                      str r4, [sp, #0x34]
003c8c04  00 40 8d e5                                      str r4, [sp]
003c8c08  04 40 8d e5                                      str r4, [sp, #4]
003c8c0c  c1 fb ff eb                                      bl #0x3c7b18
003c8c10  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
003c8c14  07 70 8f e0                                      add r7, pc, r7
003c8c18  05 00 a0 e1                                      mov r0, r5
003c8c1c  03 c0 97 e7                                      ldr ip, [r7, r3]
003c8c20  06 10 a0 e1                                      mov r1, r6
003c8c24  5a 23 0c e3                                      movw r2, #0xc35a
003c8c28  0b 30 a0 e3                                      mov r3, #0xb
003c8c2c  00 c0 8d e5                                      str ip, [sp]
003c8c30  28 c0 8d e5                                      str ip, [sp, #0x28]
003c8c34  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c8c38  04 40 8d e5                                      str r4, [sp, #4]
003c8c3c  b5 fb ff eb                                      bl #0x3c7b18
003c8c40  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
003c8c44  05 00 a0 e1                                      mov r0, r5
003c8c48  06 10 a0 e1                                      mov r1, r6
003c8c4c  03 70 97 e7                                      ldr r7, [r7, r3]
003c8c50  5b 23 0c e3                                      movw r2, #0xc35b
003c8c54  0a 30 a0 e3                                      mov r3, #0xa
003c8c58  20 70 8d e5                                      str r7, [sp, #0x20]
003c8c5c  24 40 8d e5                                      str r4, [sp, #0x24]
003c8c60  00 70 8d e5                                      str r7, [sp]
003c8c64  04 40 8d e5                                      str r4, [sp, #4]
003c8c68  aa fb ff eb                                      bl #0x3c7b18
003c8c6c  05 00 a0 e1                                      mov r0, r5
003c8c70  06 10 a0 e1                                      mov r1, r6
003c8c74  5c 23 0c e3                                      movw r2, #0xc35c
003c8c78  09 30 a0 e3                                      mov r3, #9
003c8c7c  18 70 8d e5                                      str r7, [sp, #0x18]
003c8c80  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c8c84  00 70 8d e5                                      str r7, [sp]
003c8c88  04 40 8d e5                                      str r4, [sp, #4]
003c8c8c  a1 fb ff eb                                      bl #0x3c7b18
003c8c90  05 00 a0 e1                                      mov r0, r5
003c8c94  06 10 a0 e1                                      mov r1, r6
003c8c98  5d 23 0c e3                                      movw r2, #0xc35d
003c8c9c  08 30 a0 e3                                      mov r3, #8
003c8ca0  00 70 8d e5                                      str r7, [sp]
003c8ca4  10 70 8d e5                                      str r7, [sp, #0x10]
003c8ca8  14 40 8d e5                                      str r4, [sp, #0x14]
003c8cac  04 40 8d e5                                      str r4, [sp, #4]
003c8cb0  98 fb ff eb                                      bl #0x3c7b18
003c8cb4  05 00 a0 e1                                      mov r0, r5
003c8cb8  06 10 a0 e1                                      mov r1, r6
003c8cbc  51 23 0c e3                                      movw r2, #0xc351
003c8cc0  04 30 a0 e3                                      mov r3, #4
003c8cc4  04 40 8d e5                                      str r4, [sp, #4]
003c8cc8  08 40 8d e5                                      str r4, [sp, #8]
003c8ccc  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8cd0  00 40 8d e5                                      str r4, [sp]
003c8cd4  8f fb ff eb                                      bl #0x3c7b18
003c8cd8  4c d0 8d e2                                      add sp, sp, #0x4c
003c8cdc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003c8ce0  7c be 5c 00 84 2e 00 00 cc 34 00 00              .byte 0x7c, 0xbe, 0x5c, 0x00, 0x84, 0x2e, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00
