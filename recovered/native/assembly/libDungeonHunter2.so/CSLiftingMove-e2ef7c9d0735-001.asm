; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0078, declared_size=4, range_size=4, mode=arm
; class-group: CSLiftingMove
; alias: _ZN13CSLiftingMoveD1Ev
; demangled: CSLiftingMove::~CSLiftingMove()
; decoder-mode: arm
003c0078  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c06b8, declared_size=52, range_size=52, mode=arm
; class-group: CSLiftingMove
; alias: _ZN13CSLiftingMoveD0Ev
; demangled: CSLiftingMove::~CSLiftingMove()
; decoder-mode: arm
003c06b8  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c06bc  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c06c0  10 40 2d e9                                      push {r4, lr}
003c06c4  03 30 8f e0                                      add r3, pc, r3
003c06c8  02 20 93 e7                                      ldr r2, [r3, r2]
003c06cc  00 40 a0 e1                                      mov r4, r0
003c06d0  08 20 82 e2                                      add r2, r2, #8
003c06d4  00 20 80 e5                                      str r2, [r0]
003c06d8  58 3f fd eb                                      bl #0x310440
003c06dc  04 00 a0 e1                                      mov r0, r4
003c06e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c06e4  cc 43 5d 00 08 2a 00 00                          .byte 0xcc, 0x43, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c0ea0, declared_size=120, range_size=120, mode=arm
; class-group: CSLiftingMove
; alias: _ZN13CSLiftingMove8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSLiftingMove::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0ea0  04 e0 2d e5                                      str lr, [sp, #-4]!
003c0ea4  b5 31 d2 e5                                      ldrb r3, [r2, #0x1b5]
003c0ea8  0c d0 4d e2                                      sub sp, sp, #0xc
003c0eac  00 00 53 e3                                      cmp r3, #0
003c0eb0  05 00 00 1a                                      bne #0x3c0ecc
003c0eb4  02 00 a0 e1                                      mov r0, r2
003c0eb8  3f 10 a0 e3                                      mov r1, #0x3f
003c0ebc  00 20 a0 e3                                      mov r2, #0
003c0ec0  0c d0 8d e2                                      add sp, sp, #0xc
003c0ec4  04 e0 9d e4                                      pop {lr}
003c0ec8  a3 8f ff ea                                      b #0x3a4d5c
003c0ecc  08 34 92 e5                                      ldr r3, [r2, #0x408]
003c0ed0  00 00 53 e3                                      cmp r3, #0
003c0ed4  01 00 00 0a                                      beq #0x3c0ee0
003c0ed8  0c d0 8d e2                                      add sp, sp, #0xc
003c0edc  00 80 bd e8                                      ldm sp!, {pc}
003c0ee0  00 30 92 e5                                      ldr r3, [r2]
003c0ee4  02 00 a0 e1                                      mov r0, r2
003c0ee8  04 20 8d e5                                      str r2, [sp, #4]
003c0eec  0f e0 a0 e1                                      mov lr, pc
003c0ef0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c0ef4  00 00 50 e3                                      cmp r0, #0
003c0ef8  04 20 9d e5                                      ldr r2, [sp, #4]
003c0efc  f5 ff ff 1a                                      bne #0x3c0ed8
003c0f00  02 00 a0 e1                                      mov r0, r2
003c0f04  c4 49 ff eb                                      bl #0x39361c
003c0f08  00 00 50 e3                                      cmp r0, #0
003c0f0c  04 20 9d e5                                      ldr r2, [sp, #4]
003c0f10  f0 ff ff 0a                                      beq #0x3c0ed8
003c0f14  e6 ff ff ea                                      b #0x3c0eb4

; FUNCTION 0x003c3e40, declared_size=308, range_size=308, mode=arm
; class-group: CSLiftingMove
; alias: _ZN13CSLiftingMove7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSLiftingMove::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c3e40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c3e44  08 41 9f e5                                      ldr r4, [pc, #0x108]
003c3e48  08 71 9f e5                                      ldr r7, [pc, #0x108]
003c3e4c  08 11 9f e5                                      ldr r1, [pc, #0x108]
003c3e50  04 40 8f e0                                      add r4, pc, r4
003c3e54  07 30 94 e7                                      ldr r3, [r4, r7]
003c3e58  01 80 94 e7                                      ldr r8, [r4, r1]
003c3e5c  20 d0 4d e2                                      sub sp, sp, #0x20
003c3e60  00 30 93 e5                                      ldr r3, [r3]
003c3e64  08 00 a0 e1                                      mov r0, r8
003c3e68  02 50 a0 e1                                      mov r5, r2
003c3e6c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c3e70  84 ce fd eb                                      bl #0x337888
003c3e74  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
003c3e78  04 60 8d e2                                      add r6, sp, #4
003c3e7c  0d 20 a0 e1                                      mov r2, sp
003c3e80  06 00 a0 e1                                      mov r0, r6
003c3e84  01 10 8f e0                                      add r1, pc, r1
003c3e88  97 40 fd eb                                      bl #0x3140ec
003c3e8c  06 10 a0 e1                                      mov r1, r6
003c3e90  08 00 a0 e1                                      mov r0, r8
003c3e94  fb ce fd eb                                      bl #0x337a88
003c3e98  06 00 a0 e1                                      mov r0, r6
003c3e9c  ec 50 fd eb                                      bl #0x318254
003c3ea0  c1 33 02 e3                                      movw r3, #0x23c1
003c3ea4  20 35 85 e5                                      str r3, [r5, #0x520]
003c3ea8  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003c3eac  05 00 a0 e1                                      mov r0, r5
003c3eb0  49 6e 85 e2                                      add r6, r5, #0x490
003c3eb4  03 30 94 e7                                      ldr r3, [r4, r3]
003c3eb8  0c 60 86 e2                                      add r6, r6, #0xc
003c3ebc  00 80 93 e5                                      ldr r8, [r3]
003c3ec0  d8 7c ff eb                                      bl #0x3a3228
003c3ec4  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003c3ec8  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
003c3ecc  03 20 94 e7                                      ldr r2, [r4, r3]
003c3ed0  a0 30 a0 e3                                      mov r3, #0xa0
003c3ed4  93 80 23 e0                                      mla r3, r3, r0, r8
003c3ed8  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c3edc  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
003c3ee0  01 10 8f e0                                      add r1, pc, r1
003c3ee4  54 80 93 e5                                      ldr r8, [r3, #0x54]
003c3ee8  02 20 8f e0                                      add r2, pc, r2
003c3eec  3a 03 04 eb                                      bl #0x4c4bdc
003c3ef0  01 04 10 e2                                      ands r0, r0, #0x1000000
003c3ef4  12 00 00 1a                                      bne #0x3c3f44
003c3ef8  08 10 80 e0                                      add r1, r0, r8
003c3efc  06 00 a0 e1                                      mov r0, r6
003c3f00  6a 1b 00 eb                                      bl #0x3cacb0
003c3f04  56 0e 85 e2                                      add r0, r5, #0x560
003c3f08  ed 69 00 eb                                      bl #0x3de6c4
003c3f0c  00 10 a0 e1                                      mov r1, r0
003c3f10  06 00 a0 e1                                      mov r0, r6
003c3f14  38 15 00 eb                                      bl #0x3c93fc
003c3f18  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003c3f1c  00 00 50 e3                                      cmp r0, #0
003c3f20  00 00 00 0a                                      beq #0x3c3f28
003c3f24  ed aa 02 eb                                      bl #0x46eae0
003c3f28  07 30 94 e7                                      ldr r3, [r4, r7]
003c3f2c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c3f30  00 30 93 e5                                      ldr r3, [r3]
003c3f34  03 00 52 e1                                      cmp r2, r3
003c3f38  04 00 00 1a                                      bne #0x3c3f50
003c3f3c  20 d0 8d e2                                      add sp, sp, #0x20
003c3f40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c3f44  05 00 a0 e1                                      mov r0, r5
003c3f48  24 85 ff eb                                      bl #0x3a53e0
003c3f4c  e9 ff ff ea                                      b #0x3c3ef8
003c3f50  ee 28 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c3f54  40 0c 5d 00 ac 40 00 00 84 08 00 00 cc 0f 50 00  .byte 0x40, 0x0c, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xcc, 0x0f, 0x50, 0x00
003c3f64  44 48 00 00 f4 37 00 00 d8 0c 50 00 e0 0c 50 00  .byte 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd8, 0x0c, 0x50, 0x00, 0xe0, 0x0c, 0x50, 0x00

; FUNCTION 0x003c5198, declared_size=252, range_size=252, mode=arm
; class-group: CSLiftingMove
; alias: _ZN13CSLiftingMove6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSLiftingMove::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c5198  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c519c  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
003c51a0  e0 70 9f e5                                      ldr r7, [pc, #0xe0]
003c51a4  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
003c51a8  04 40 8f e0                                      add r4, pc, r4
003c51ac  07 30 94 e7                                      ldr r3, [r4, r7]
003c51b0  01 80 94 e7                                      ldr r8, [r4, r1]
003c51b4  24 d0 4d e2                                      sub sp, sp, #0x24
003c51b8  00 30 93 e5                                      ldr r3, [r3]
003c51bc  08 00 a0 e1                                      mov r0, r8
003c51c0  02 50 a0 e1                                      mov r5, r2
003c51c4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c51c8  40 a0 9d e5                                      ldr sl, [sp, #0x40]
003c51cc  ad c9 fd eb                                      bl #0x337888
003c51d0  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
003c51d4  04 60 8d e2                                      add r6, sp, #4
003c51d8  0d 20 a0 e1                                      mov r2, sp
003c51dc  01 10 8f e0                                      add r1, pc, r1
003c51e0  06 00 a0 e1                                      mov r0, r6
003c51e4  c0 3b fd eb                                      bl #0x3140ec
003c51e8  06 10 a0 e1                                      mov r1, r6
003c51ec  08 00 a0 e1                                      mov r0, r8
003c51f0  24 ca fd eb                                      bl #0x337a88
003c51f4  06 00 a0 e1                                      mov r0, r6
003c51f8  15 4c fd eb                                      bl #0x318254
003c51fc  05 00 a0 e1                                      mov r0, r5
003c5200  bc 39 ff eb                                      bl #0x3938f8
003c5204  dc 02 95 e5                                      ldr r0, [r5, #0x2dc]
003c5208  00 00 50 e3                                      cmp r0, #0
003c520c  00 00 00 0a                                      beq #0x3c5214
003c5210  42 a6 02 eb                                      bl #0x46eb20
003c5214  13 00 5a e3                                      cmp sl, #0x13
003c5218  0a 00 00 8a                                      bhi #0x3c5248
003c521c  01 30 a0 e3                                      mov r3, #1
003c5220  13 aa a0 e1                                      lsl sl, r3, sl
003c5224  c2 0a 1a e3                                      tst sl, #0xc2000
003c5228  06 00 00 0a                                      beq #0x3c5248
003c522c  07 30 94 e7                                      ldr r3, [r4, r7]
003c5230  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c5234  00 30 93 e5                                      ldr r3, [r3]
003c5238  03 00 52 e1                                      cmp r2, r3
003c523c  0f 00 00 1a                                      bne #0x3c5280
003c5240  24 d0 8d e2                                      add sp, sp, #0x24
003c5244  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c5248  4c 05 95 e5                                      ldr r0, [r5, #0x54c]
003c524c  00 00 50 e3                                      cmp r0, #0
003c5250  f5 ff ff 0a                                      beq #0x3c522c
003c5254  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
003c5258  06 00 53 e3                                      cmp r3, #6
003c525c  02 00 00 0a                                      beq #0x3c526c
003c5260  00 30 a0 e3                                      mov r3, #0
003c5264  4c 35 85 e5                                      str r3, [r5, #0x54c]
003c5268  ef ff ff ea                                      b #0x3c522c
003c526c  90 33 90 e5                                      ldr r3, [r0, #0x390]
003c5270  05 00 53 e1                                      cmp r3, r5
003c5274  f9 ff ff 1a                                      bne #0x3c5260
003c5278  ca a4 00 eb                                      bl #0x3ee5a8
003c527c  f7 ff ff ea                                      b #0x3c5260
003c5280  22 24 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c5284  e8 f8 5c 00 ac 40 00 00 84 08 00 00 74 fc 4f 00  .byte 0xe8, 0xf8, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x74, 0xfc, 0x4f, 0x00

; FUNCTION 0x003c663c, declared_size=52, range_size=52, mode=arm
; class-group: CSLiftingMove
; alias: _ZN13CSLiftingMove7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSLiftingMove::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c663c  00 30 9d e5                                      ldr r3, [sp]
003c6640  06 00 53 e3                                      cmp r3, #6
003c6644  1e ff 2f 11                                      bxne lr
003c6648  4c 35 92 e5                                      ldr r3, [r2, #0x54c]
003c664c  00 00 53 e3                                      cmp r3, #0
003c6650  1e ff 2f 01                                      bxeq lr
003c6654  4f 0e 82 e2                                      add r0, r2, #0x4f0
003c6658  01 c0 a0 e3                                      mov ip, #1
003c665c  0c 00 80 e2                                      add r0, r0, #0xc
003c6660  05 10 a0 e3                                      mov r1, #5
003c6664  00 20 a0 e3                                      mov r2, #0
003c6668  00 c0 8d e5                                      str ip, [sp]
003c666c  8e ff ff ea                                      b #0x3c64ac

; FUNCTION 0x003c8ee0, declared_size=276, range_size=276, mode=arm
; class-group: CSLiftingMove
; alias: _ZN13CSLiftingMove6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSLiftingMove::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8ee0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c8ee4  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c8ee8  0c 50 85 e2                                      add r5, r5, #0xc
003c8eec  3c d0 4d e2                                      sub sp, sp, #0x3c
003c8ef0  00 40 a0 e3                                      mov r4, #0
003c8ef4  01 70 a0 e1                                      mov r7, r1
003c8ef8  05 00 a0 e1                                      mov r0, r5
003c8efc  3f 20 a0 e3                                      mov r2, #0x3f
003c8f00  12 30 a0 e3                                      mov r3, #0x12
003c8f04  30 40 8d e5                                      str r4, [sp, #0x30]
003c8f08  34 40 8d e5                                      str r4, [sp, #0x34]
003c8f0c  00 40 8d e5                                      str r4, [sp]
003c8f10  04 40 8d e5                                      str r4, [sp, #4]
003c8f14  cc 60 9f e5                                      ldr r6, [pc, #0xcc]
003c8f18  fe fa ff eb                                      bl #0x3c7b18
003c8f1c  05 00 a0 e1                                      mov r0, r5
003c8f20  07 10 a0 e1                                      mov r1, r7
003c8f24  58 23 0c e3                                      movw r2, #0xc358
003c8f28  0c 30 a0 e3                                      mov r3, #0xc
003c8f2c  28 40 8d e5                                      str r4, [sp, #0x28]
003c8f30  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c8f34  00 40 8d e5                                      str r4, [sp]
003c8f38  04 40 8d e5                                      str r4, [sp, #4]
003c8f3c  f5 fa ff eb                                      bl #0x3c7b18
003c8f40  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003c8f44  06 60 8f e0                                      add r6, pc, r6
003c8f48  05 00 a0 e1                                      mov r0, r5
003c8f4c  03 c0 96 e7                                      ldr ip, [r6, r3]
003c8f50  07 10 a0 e1                                      mov r1, r7
003c8f54  5a 23 0c e3                                      movw r2, #0xc35a
003c8f58  0b 30 a0 e3                                      mov r3, #0xb
003c8f5c  00 c0 8d e5                                      str ip, [sp]
003c8f60  20 c0 8d e5                                      str ip, [sp, #0x20]
003c8f64  24 40 8d e5                                      str r4, [sp, #0x24]
003c8f68  04 40 8d e5                                      str r4, [sp, #4]
003c8f6c  e9 fa ff eb                                      bl #0x3c7b18
003c8f70  78 30 9f e5                                      ldr r3, [pc, #0x78]
003c8f74  05 00 a0 e1                                      mov r0, r5
003c8f78  07 10 a0 e1                                      mov r1, r7
003c8f7c  03 60 96 e7                                      ldr r6, [r6, r3]
003c8f80  5b 23 0c e3                                      movw r2, #0xc35b
003c8f84  0a 30 a0 e3                                      mov r3, #0xa
003c8f88  18 60 8d e5                                      str r6, [sp, #0x18]
003c8f8c  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c8f90  00 60 8d e5                                      str r6, [sp]
003c8f94  04 40 8d e5                                      str r4, [sp, #4]
003c8f98  de fa ff eb                                      bl #0x3c7b18
003c8f9c  05 00 a0 e1                                      mov r0, r5
003c8fa0  07 10 a0 e1                                      mov r1, r7
003c8fa4  5c 23 0c e3                                      movw r2, #0xc35c
003c8fa8  09 30 a0 e3                                      mov r3, #9
003c8fac  10 60 8d e5                                      str r6, [sp, #0x10]
003c8fb0  14 40 8d e5                                      str r4, [sp, #0x14]
003c8fb4  00 60 8d e5                                      str r6, [sp]
003c8fb8  04 40 8d e5                                      str r4, [sp, #4]
003c8fbc  d5 fa ff eb                                      bl #0x3c7b18
003c8fc0  05 00 a0 e1                                      mov r0, r5
003c8fc4  07 10 a0 e1                                      mov r1, r7
003c8fc8  5d 23 0c e3                                      movw r2, #0xc35d
003c8fcc  08 30 a0 e3                                      mov r3, #8
003c8fd0  00 60 8d e5                                      str r6, [sp]
003c8fd4  50 00 8d e9                                      stmib sp, {r4, r6}
003c8fd8  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8fdc  cd fa ff eb                                      bl #0x3c7b18
003c8fe0  3c d0 8d e2                                      add sp, sp, #0x3c
003c8fe4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003c8fe8  4c bb 5c 00 84 2e 00 00 cc 34 00 00              .byte 0x4c, 0xbb, 0x5c, 0x00, 0x84, 0x2e, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00
