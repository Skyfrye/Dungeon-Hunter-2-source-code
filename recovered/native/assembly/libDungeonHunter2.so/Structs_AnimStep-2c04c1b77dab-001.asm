; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004db590, declared_size=40, range_size=40, mode=arm
; class-group: Structs::AnimStep
; alias: _ZN7Structs8AnimStep8finalizeEv
; demangled: Structs::AnimStep::finalize()
; decoder-mode: arm
004db590  10 40 2d e9                                      push {r4, lr}
004db594  00 40 a0 e1                                      mov r4, r0
004db598  24 00 90 e5                                      ldr r0, [r0, #0x24]
004db59c  00 00 50 e3                                      cmp r0, #0
004db5a0  03 00 00 0a                                      beq #0x4db5b4
004db5a4  a5 d3 f8 eb                                      bl #0x310440
004db5a8  00 30 a0 e3                                      mov r3, #0
004db5ac  20 30 84 e5                                      str r3, [r4, #0x20]
004db5b0  24 30 84 e5                                      str r3, [r4, #0x24]
004db5b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db5b8, declared_size=64, range_size=64, mode=arm
; class-group: Structs::AnimStep
; alias: _ZN7Structs8AnimStepD1Ev
; demangled: Structs::AnimStep::~AnimStep()
; decoder-mode: arm
004db5b8  10 40 2d e9                                      push {r4, lr}
004db5bc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004db5c0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004db5c4  00 40 a0 e1                                      mov r4, r0
004db5c8  03 30 8f e0                                      add r3, pc, r3
004db5cc  24 00 90 e5                                      ldr r0, [r0, #0x24]
004db5d0  02 20 93 e7                                      ldr r2, [r3, r2]
004db5d4  00 00 50 e3                                      cmp r0, #0
004db5d8  08 20 82 e2                                      add r2, r2, #8
004db5dc  00 20 84 e5                                      str r2, [r4]
004db5e0  00 00 00 0a                                      beq #0x4db5e8
004db5e4  95 d3 f8 eb                                      bl #0x310440
004db5e8  04 00 a0 e1                                      mov r0, r4
004db5ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004db5f0  c8 94 4b 00 94 49 00 00                          .byte 0xc8, 0x94, 0x4b, 0x00, 0x94, 0x49, 0x00, 0x00

; FUNCTION 0x004db5f8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AnimStep
; alias: _ZN7Structs8AnimStepD0Ev
; demangled: Structs::AnimStep::~AnimStep()
; decoder-mode: arm
004db5f8  10 40 2d e9                                      push {r4, lr}
004db5fc  00 40 a0 e1                                      mov r4, r0
004db600  ec ff ff eb                                      bl #0x4db5b8
004db604  04 00 a0 e1                                      mov r0, r4
004db608  8c d3 f8 eb                                      bl #0x310440
004db60c  04 00 a0 e1                                      mov r0, r4
004db610  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db614, declared_size=64, range_size=64, mode=arm
; class-group: Structs::AnimStep
; alias: _ZN7Structs8AnimStepD2Ev
; demangled: Structs::AnimStep::~AnimStep()
; decoder-mode: arm
004db614  10 40 2d e9                                      push {r4, lr}
004db618  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004db61c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004db620  00 40 a0 e1                                      mov r4, r0
004db624  03 30 8f e0                                      add r3, pc, r3
004db628  24 00 90 e5                                      ldr r0, [r0, #0x24]
004db62c  02 20 93 e7                                      ldr r2, [r3, r2]
004db630  00 00 50 e3                                      cmp r0, #0
004db634  08 20 82 e2                                      add r2, r2, #8
004db638  00 20 84 e5                                      str r2, [r4]
004db63c  00 00 00 0a                                      beq #0x4db644
004db640  7e d3 f8 eb                                      bl #0x310440
004db644  04 00 a0 e1                                      mov r0, r4
004db648  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004db64c  6c 94 4b 00 94 49 00 00                          .byte 0x6c, 0x94, 0x4b, 0x00, 0x94, 0x49, 0x00, 0x00

; FUNCTION 0x004ec9f0, declared_size=984, range_size=984, mode=arm
; class-group: Structs::AnimStep
; alias: _ZN7Structs8AnimStep4readEP11IStreamBase
; demangled: Structs::AnimStep::read(IStreamBase*)
; decoder-mode: arm
004ec9f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ec9f4  00 40 a0 e1                                      mov r4, r0
004ec9f8  08 d0 4d e2                                      sub sp, sp, #8
004ec9fc  01 00 a0 e1                                      mov r0, r1
004eca00  01 70 a0 e1                                      mov r7, r1
004eca04  04 10 84 e2                                      add r1, r4, #4
004eca08  a3 bb ff eb                                      bl #0x4db89c
004eca0c  07 00 a0 e1                                      mov r0, r7
004eca10  08 10 84 e2                                      add r1, r4, #8
004eca14  9d b1 fd eb                                      bl #0x459090
004eca18  01 30 a0 e3                                      mov r3, #1
004eca1c  00 00 53 e3                                      cmp r3, #0
004eca20  04 30 8d e5                                      str r3, [sp, #4]
004eca24  0f 00 00 1a                                      bne #0x4eca68
004eca28  09 30 84 e2                                      add r3, r4, #9
004eca2c  0a 20 84 e2                                      add r2, r4, #0xa
004eca30  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eca34  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eca38  02 00 53 e1                                      cmp r3, r2
004eca3c  01 10 20 e0                                      eor r1, r0, r1
004eca40  01 10 43 e5                                      strb r1, [r3, #-1]
004eca44  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eca48  00 10 21 e0                                      eor r1, r1, r0
004eca4c  01 10 c2 e5                                      strb r1, [r2, #1]
004eca50  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eca54  01 20 42 e2                                      sub r2, r2, #1
004eca58  00 10 21 e0                                      eor r1, r1, r0
004eca5c  01 10 43 e5                                      strb r1, [r3, #-1]
004eca60  01 30 83 e2                                      add r3, r3, #1
004eca64  f1 ff ff 3a                                      blo #0x4eca30
004eca68  07 00 a0 e1                                      mov r0, r7
004eca6c  0c 10 84 e2                                      add r1, r4, #0xc
004eca70  86 b1 fd eb                                      bl #0x459090
004eca74  01 30 a0 e3                                      mov r3, #1
004eca78  00 00 53 e3                                      cmp r3, #0
004eca7c  04 30 8d e5                                      str r3, [sp, #4]
004eca80  0f 00 00 1a                                      bne #0x4ecac4
004eca84  0d 30 84 e2                                      add r3, r4, #0xd
004eca88  0e 20 84 e2                                      add r2, r4, #0xe
004eca8c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eca90  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eca94  02 00 53 e1                                      cmp r3, r2
004eca98  01 10 20 e0                                      eor r1, r0, r1
004eca9c  01 10 43 e5                                      strb r1, [r3, #-1]
004ecaa0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecaa4  00 10 21 e0                                      eor r1, r1, r0
004ecaa8  01 10 c2 e5                                      strb r1, [r2, #1]
004ecaac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ecab0  01 20 42 e2                                      sub r2, r2, #1
004ecab4  00 10 21 e0                                      eor r1, r1, r0
004ecab8  01 10 43 e5                                      strb r1, [r3, #-1]
004ecabc  01 30 83 e2                                      add r3, r3, #1
004ecac0  f1 ff ff 3a                                      blo #0x4eca8c
004ecac4  07 00 a0 e1                                      mov r0, r7
004ecac8  10 10 84 e2                                      add r1, r4, #0x10
004ecacc  6f b1 fd eb                                      bl #0x459090
004ecad0  01 30 a0 e3                                      mov r3, #1
004ecad4  00 00 53 e3                                      cmp r3, #0
004ecad8  04 30 8d e5                                      str r3, [sp, #4]
004ecadc  0f 00 00 1a                                      bne #0x4ecb20
004ecae0  11 30 84 e2                                      add r3, r4, #0x11
004ecae4  12 20 84 e2                                      add r2, r4, #0x12
004ecae8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecaec  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ecaf0  02 00 53 e1                                      cmp r3, r2
004ecaf4  01 10 20 e0                                      eor r1, r0, r1
004ecaf8  01 10 43 e5                                      strb r1, [r3, #-1]
004ecafc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecb00  00 10 21 e0                                      eor r1, r1, r0
004ecb04  01 10 c2 e5                                      strb r1, [r2, #1]
004ecb08  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ecb0c  01 20 42 e2                                      sub r2, r2, #1
004ecb10  00 10 21 e0                                      eor r1, r1, r0
004ecb14  01 10 43 e5                                      strb r1, [r3, #-1]
004ecb18  01 30 83 e2                                      add r3, r3, #1
004ecb1c  f1 ff ff 3a                                      blo #0x4ecae8
004ecb20  14 10 84 e2                                      add r1, r4, #0x14
004ecb24  07 00 a0 e1                                      mov r0, r7
004ecb28  5b bb ff eb                                      bl #0x4db89c
004ecb2c  07 00 a0 e1                                      mov r0, r7
004ecb30  18 10 84 e2                                      add r1, r4, #0x18
004ecb34  55 b1 fd eb                                      bl #0x459090
004ecb38  01 30 a0 e3                                      mov r3, #1
004ecb3c  00 00 53 e3                                      cmp r3, #0
004ecb40  04 30 8d e5                                      str r3, [sp, #4]
004ecb44  0f 00 00 1a                                      bne #0x4ecb88
004ecb48  19 30 84 e2                                      add r3, r4, #0x19
004ecb4c  1a 20 84 e2                                      add r2, r4, #0x1a
004ecb50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecb54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ecb58  02 00 53 e1                                      cmp r3, r2
004ecb5c  01 10 20 e0                                      eor r1, r0, r1
004ecb60  01 10 43 e5                                      strb r1, [r3, #-1]
004ecb64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecb68  00 10 21 e0                                      eor r1, r1, r0
004ecb6c  01 10 c2 e5                                      strb r1, [r2, #1]
004ecb70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ecb74  01 20 42 e2                                      sub r2, r2, #1
004ecb78  00 10 21 e0                                      eor r1, r1, r0
004ecb7c  01 10 43 e5                                      strb r1, [r3, #-1]
004ecb80  01 30 83 e2                                      add r3, r3, #1
004ecb84  f1 ff ff 3a                                      blo #0x4ecb50
004ecb88  1c 10 84 e2                                      add r1, r4, #0x1c
004ecb8c  07 00 a0 e1                                      mov r0, r7
004ecb90  41 bb ff eb                                      bl #0x4db89c
004ecb94  07 00 a0 e1                                      mov r0, r7
004ecb98  20 10 84 e2                                      add r1, r4, #0x20
004ecb9c  7f c9 fb eb                                      bl #0x3df1a0
004ecba0  01 30 a0 e3                                      mov r3, #1
004ecba4  00 00 53 e3                                      cmp r3, #0
004ecba8  04 30 8d e5                                      str r3, [sp, #4]
004ecbac  0f 00 00 1a                                      bne #0x4ecbf0
004ecbb0  21 30 84 e2                                      add r3, r4, #0x21
004ecbb4  22 20 84 e2                                      add r2, r4, #0x22
004ecbb8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecbbc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ecbc0  02 00 53 e1                                      cmp r3, r2
004ecbc4  01 10 20 e0                                      eor r1, r0, r1
004ecbc8  01 10 43 e5                                      strb r1, [r3, #-1]
004ecbcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecbd0  00 10 21 e0                                      eor r1, r1, r0
004ecbd4  01 10 c2 e5                                      strb r1, [r2, #1]
004ecbd8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ecbdc  01 20 42 e2                                      sub r2, r2, #1
004ecbe0  00 10 21 e0                                      eor r1, r1, r0
004ecbe4  01 10 43 e5                                      strb r1, [r3, #-1]
004ecbe8  01 30 83 e2                                      add r3, r3, #1
004ecbec  f1 ff ff 3a                                      blo #0x4ecbb8
004ecbf0  24 00 94 e5                                      ldr r0, [r4, #0x24]
004ecbf4  00 00 50 e3                                      cmp r0, #0
004ecbf8  00 00 00 0a                                      beq #0x4ecc00
004ecbfc  0f 8e f8 eb                                      bl #0x310440
004ecc00  20 00 94 e5                                      ldr r0, [r4, #0x20]
004ecc04  01 10 a0 e3                                      mov r1, #1
004ecc08  00 01 a0 e1                                      lsl r0, r0, #2
004ecc0c  56 8e f8 eb                                      bl #0x31056c
004ecc10  20 30 94 e5                                      ldr r3, [r4, #0x20]
004ecc14  24 00 84 e5                                      str r0, [r4, #0x24]
004ecc18  00 00 53 e3                                      cmp r3, #0
004ecc1c  1f 00 00 0a                                      beq #0x4ecca0
004ecc20  00 50 a0 e3                                      mov r5, #0
004ecc24  01 80 a0 e3                                      mov r8, #1
004ecc28  05 61 a0 e1                                      lsl r6, r5, #2
004ecc2c  06 10 80 e0                                      add r1, r0, r6
004ecc30  07 00 a0 e1                                      mov r0, r7
004ecc34  15 b1 fd eb                                      bl #0x459090
004ecc38  04 80 8d e5                                      str r8, [sp, #4]
004ecc3c  00 00 58 e3                                      cmp r8, #0
004ecc40  24 30 94 e5                                      ldr r3, [r4, #0x24]
004ecc44  10 00 00 1a                                      bne #0x4ecc8c
004ecc48  06 60 83 e0                                      add r6, r3, r6
004ecc4c  02 30 86 e2                                      add r3, r6, #2
004ecc50  01 60 86 e2                                      add r6, r6, #1
004ecc54  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ecc58  01 20 56 e5                                      ldrb r2, [r6, #-1]
004ecc5c  03 00 56 e1                                      cmp r6, r3
004ecc60  02 20 21 e0                                      eor r2, r1, r2
004ecc64  01 20 46 e5                                      strb r2, [r6, #-1]
004ecc68  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ecc6c  01 20 22 e0                                      eor r2, r2, r1
004ecc70  01 20 c3 e5                                      strb r2, [r3, #1]
004ecc74  01 10 56 e5                                      ldrb r1, [r6, #-1]
004ecc78  01 30 43 e2                                      sub r3, r3, #1
004ecc7c  01 20 22 e0                                      eor r2, r2, r1
004ecc80  01 20 46 e5                                      strb r2, [r6, #-1]
004ecc84  01 60 86 e2                                      add r6, r6, #1
004ecc88  f1 ff ff 3a                                      blo #0x4ecc54
004ecc8c  20 30 94 e5                                      ldr r3, [r4, #0x20]
004ecc90  01 50 85 e2                                      add r5, r5, #1
004ecc94  05 00 53 e1                                      cmp r3, r5
004ecc98  24 00 94 85                                      ldrhi r0, [r4, #0x24]
004ecc9c  e1 ff ff 8a                                      bhi #0x4ecc28
004ecca0  07 00 a0 e1                                      mov r0, r7
004ecca4  28 10 84 e2                                      add r1, r4, #0x28
004ecca8  f8 b0 fd eb                                      bl #0x459090
004eccac  01 30 a0 e3                                      mov r3, #1
004eccb0  00 00 53 e3                                      cmp r3, #0
004eccb4  04 30 8d e5                                      str r3, [sp, #4]
004eccb8  0f 00 00 1a                                      bne #0x4eccfc
004eccbc  29 30 84 e2                                      add r3, r4, #0x29
004eccc0  2a 20 84 e2                                      add r2, r4, #0x2a
004eccc4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eccc8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ecccc  02 00 53 e1                                      cmp r3, r2
004eccd0  01 10 20 e0                                      eor r1, r0, r1
004eccd4  01 10 43 e5                                      strb r1, [r3, #-1]
004eccd8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eccdc  00 10 21 e0                                      eor r1, r1, r0
004ecce0  01 10 c2 e5                                      strb r1, [r2, #1]
004ecce4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ecce8  01 20 42 e2                                      sub r2, r2, #1
004eccec  00 10 21 e0                                      eor r1, r1, r0
004eccf0  01 10 43 e5                                      strb r1, [r3, #-1]
004eccf4  01 30 83 e2                                      add r3, r3, #1
004eccf8  f1 ff ff 3a                                      blo #0x4eccc4
004eccfc  07 00 a0 e1                                      mov r0, r7
004ecd00  2c 10 84 e2                                      add r1, r4, #0x2c
004ecd04  e1 b0 fd eb                                      bl #0x459090
004ecd08  01 30 a0 e3                                      mov r3, #1
004ecd0c  00 00 53 e3                                      cmp r3, #0
004ecd10  04 30 8d e5                                      str r3, [sp, #4]
004ecd14  0f 00 00 1a                                      bne #0x4ecd58
004ecd18  2d 30 84 e2                                      add r3, r4, #0x2d
004ecd1c  2e 20 84 e2                                      add r2, r4, #0x2e
004ecd20  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecd24  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ecd28  02 00 53 e1                                      cmp r3, r2
004ecd2c  01 10 20 e0                                      eor r1, r0, r1
004ecd30  01 10 43 e5                                      strb r1, [r3, #-1]
004ecd34  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecd38  00 10 21 e0                                      eor r1, r1, r0
004ecd3c  01 10 c2 e5                                      strb r1, [r2, #1]
004ecd40  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ecd44  01 20 42 e2                                      sub r2, r2, #1
004ecd48  00 10 21 e0                                      eor r1, r1, r0
004ecd4c  01 10 43 e5                                      strb r1, [r3, #-1]
004ecd50  01 30 83 e2                                      add r3, r3, #1
004ecd54  f1 ff ff 3a                                      blo #0x4ecd20
004ecd58  07 00 a0 e1                                      mov r0, r7
004ecd5c  30 10 84 e2                                      add r1, r4, #0x30
004ecd60  f9 ba ff eb                                      bl #0x4db94c
004ecd64  01 30 a0 e3                                      mov r3, #1
004ecd68  00 00 53 e3                                      cmp r3, #0
004ecd6c  04 30 8d e5                                      str r3, [sp, #4]
004ecd70  0f 00 00 1a                                      bne #0x4ecdb4
004ecd74  31 30 84 e2                                      add r3, r4, #0x31
004ecd78  32 20 84 e2                                      add r2, r4, #0x32
004ecd7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecd80  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ecd84  02 00 53 e1                                      cmp r3, r2
004ecd88  01 10 20 e0                                      eor r1, r0, r1
004ecd8c  01 10 43 e5                                      strb r1, [r3, #-1]
004ecd90  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ecd94  00 10 21 e0                                      eor r1, r1, r0
004ecd98  01 10 c2 e5                                      strb r1, [r2, #1]
004ecd9c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ecda0  01 20 42 e2                                      sub r2, r2, #1
004ecda4  00 10 21 e0                                      eor r1, r1, r0
004ecda8  01 10 43 e5                                      strb r1, [r3, #-1]
004ecdac  01 30 83 e2                                      add r3, r3, #1
004ecdb0  f1 ff ff 3a                                      blo #0x4ecd7c
004ecdb4  07 00 a0 e1                                      mov r0, r7
004ecdb8  34 10 84 e2                                      add r1, r4, #0x34
004ecdbc  b6 ba ff eb                                      bl #0x4db89c
004ecdc0  08 d0 8d e2                                      add sp, sp, #8
004ecdc4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
