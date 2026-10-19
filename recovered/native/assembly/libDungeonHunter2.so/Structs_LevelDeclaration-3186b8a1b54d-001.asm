; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d54b4, declared_size=68, range_size=68, mode=arm
; class-group: Structs::LevelDeclaration
; alias: _ZN7Structs16LevelDeclaration8finalizeEv
; demangled: Structs::LevelDeclaration::finalize()
; decoder-mode: arm
004d54b4  10 40 2d e9                                      push {r4, lr}
004d54b8  00 40 a0 e1                                      mov r4, r0
004d54bc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d54c0  00 00 50 e3                                      cmp r0, #0
004d54c4  03 00 00 0a                                      beq #0x4d54d8
004d54c8  dc eb f8 eb                                      bl #0x310440
004d54cc  00 30 a0 e3                                      mov r3, #0
004d54d0  08 30 84 e5                                      str r3, [r4, #8]
004d54d4  0c 30 84 e5                                      str r3, [r4, #0xc]
004d54d8  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d54dc  00 00 50 e3                                      cmp r0, #0
004d54e0  03 00 00 0a                                      beq #0x4d54f4
004d54e4  d5 eb f8 eb                                      bl #0x310440
004d54e8  00 30 a0 e3                                      mov r3, #0
004d54ec  1c 30 84 e5                                      str r3, [r4, #0x1c]
004d54f0  20 30 84 e5                                      str r3, [r4, #0x20]
004d54f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d54f8, declared_size=80, range_size=80, mode=arm
; class-group: Structs::LevelDeclaration
; alias: _ZN7Structs16LevelDeclarationD1Ev
; demangled: Structs::LevelDeclaration::~LevelDeclaration()
; decoder-mode: arm
004d54f8  10 40 2d e9                                      push {r4, lr}
004d54fc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004d5500  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004d5504  00 40 a0 e1                                      mov r4, r0
004d5508  03 30 8f e0                                      add r3, pc, r3
004d550c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d5510  02 20 93 e7                                      ldr r2, [r3, r2]
004d5514  00 00 50 e3                                      cmp r0, #0
004d5518  08 20 82 e2                                      add r2, r2, #8
004d551c  00 20 84 e5                                      str r2, [r4]
004d5520  00 00 00 0a                                      beq #0x4d5528
004d5524  c5 eb f8 eb                                      bl #0x310440
004d5528  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d552c  00 00 50 e3                                      cmp r0, #0
004d5530  00 00 00 0a                                      beq #0x4d5538
004d5534  c1 eb f8 eb                                      bl #0x310440
004d5538  04 00 a0 e1                                      mov r0, r4
004d553c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5540  88 f5 4b 00 38 34 00 00                          .byte 0x88, 0xf5, 0x4b, 0x00, 0x38, 0x34, 0x00, 0x00

; FUNCTION 0x004d5548, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LevelDeclaration
; alias: _ZN7Structs16LevelDeclarationD0Ev
; demangled: Structs::LevelDeclaration::~LevelDeclaration()
; decoder-mode: arm
004d5548  10 40 2d e9                                      push {r4, lr}
004d554c  00 40 a0 e1                                      mov r4, r0
004d5550  e8 ff ff eb                                      bl #0x4d54f8
004d5554  04 00 a0 e1                                      mov r0, r4
004d5558  b8 eb f8 eb                                      bl #0x310440
004d555c  04 00 a0 e1                                      mov r0, r4
004d5560  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d5564, declared_size=80, range_size=80, mode=arm
; class-group: Structs::LevelDeclaration
; alias: _ZN7Structs16LevelDeclarationD2Ev
; demangled: Structs::LevelDeclaration::~LevelDeclaration()
; decoder-mode: arm
004d5564  10 40 2d e9                                      push {r4, lr}
004d5568  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004d556c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004d5570  00 40 a0 e1                                      mov r4, r0
004d5574  03 30 8f e0                                      add r3, pc, r3
004d5578  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d557c  02 20 93 e7                                      ldr r2, [r3, r2]
004d5580  00 00 50 e3                                      cmp r0, #0
004d5584  08 20 82 e2                                      add r2, r2, #8
004d5588  00 20 84 e5                                      str r2, [r4]
004d558c  00 00 00 0a                                      beq #0x4d5594
004d5590  aa eb f8 eb                                      bl #0x310440
004d5594  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d5598  00 00 50 e3                                      cmp r0, #0
004d559c  00 00 00 0a                                      beq #0x4d55a4
004d55a0  a6 eb f8 eb                                      bl #0x310440
004d55a4  04 00 a0 e1                                      mov r0, r4
004d55a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d55ac  1c f5 4b 00 38 34 00 00                          .byte 0x1c, 0xf5, 0x4b, 0x00, 0x38, 0x34, 0x00, 0x00

; FUNCTION 0x004fca84, declared_size=1388, range_size=1388, mode=arm
; class-group: Structs::LevelDeclaration
; alias: _ZN7Structs16LevelDeclaration4readEP11IStreamBase
; demangled: Structs::LevelDeclaration::read(IStreamBase*)
; decoder-mode: arm
004fca84  70 40 2d e9                                      push {r4, r5, r6, lr}
004fca88  00 40 a0 e1                                      mov r4, r0
004fca8c  08 d0 4d e2                                      sub sp, sp, #8
004fca90  01 00 a0 e1                                      mov r0, r1
004fca94  01 50 a0 e1                                      mov r5, r1
004fca98  04 10 84 e2                                      add r1, r4, #4
004fca9c  7e 7b ff eb                                      bl #0x4db89c
004fcaa0  05 00 a0 e1                                      mov r0, r5
004fcaa4  08 10 84 e2                                      add r1, r4, #8
004fcaa8  bc 89 fb eb                                      bl #0x3df1a0
004fcaac  01 30 a0 e3                                      mov r3, #1
004fcab0  00 00 53 e3                                      cmp r3, #0
004fcab4  04 30 8d e5                                      str r3, [sp, #4]
004fcab8  0f 00 00 1a                                      bne #0x4fcafc
004fcabc  09 30 84 e2                                      add r3, r4, #9
004fcac0  0a 20 84 e2                                      add r2, r4, #0xa
004fcac4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcac8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcacc  02 00 53 e1                                      cmp r3, r2
004fcad0  01 10 20 e0                                      eor r1, r0, r1
004fcad4  01 10 43 e5                                      strb r1, [r3, #-1]
004fcad8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcadc  00 10 21 e0                                      eor r1, r1, r0
004fcae0  01 10 c2 e5                                      strb r1, [r2, #1]
004fcae4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fcae8  01 20 42 e2                                      sub r2, r2, #1
004fcaec  00 10 21 e0                                      eor r1, r1, r0
004fcaf0  01 10 43 e5                                      strb r1, [r3, #-1]
004fcaf4  01 30 83 e2                                      add r3, r3, #1
004fcaf8  f1 ff ff 3a                                      blo #0x4fcac4
004fcafc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004fcb00  00 00 50 e3                                      cmp r0, #0
004fcb04  00 00 00 0a                                      beq #0x4fcb0c
004fcb08  4c 4e f8 eb                                      bl #0x310440
004fcb0c  08 00 94 e5                                      ldr r0, [r4, #8]
004fcb10  01 10 a0 e3                                      mov r1, #1
004fcb14  00 60 a0 e3                                      mov r6, #0
004fcb18  01 00 80 e0                                      add r0, r0, r1
004fcb1c  92 4e f8 eb                                      bl #0x31056c
004fcb20  08 20 94 e5                                      ldr r2, [r4, #8]
004fcb24  00 10 a0 e1                                      mov r1, r0
004fcb28  0c 00 84 e5                                      str r0, [r4, #0xc]
004fcb2c  06 30 a0 e1                                      mov r3, r6
004fcb30  05 00 a0 e1                                      mov r0, r5
004fcb34  46 6a f8 eb                                      bl #0x317454
004fcb38  08 30 94 e5                                      ldr r3, [r4, #8]
004fcb3c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004fcb40  05 00 a0 e1                                      mov r0, r5
004fcb44  10 10 84 e2                                      add r1, r4, #0x10
004fcb48  03 60 c2 e7                                      strb r6, [r2, r3]
004fcb4c  4f 71 fd eb                                      bl #0x459090
004fcb50  01 30 a0 e3                                      mov r3, #1
004fcb54  06 00 53 e1                                      cmp r3, r6
004fcb58  04 30 8d e5                                      str r3, [sp, #4]
004fcb5c  0f 00 00 1a                                      bne #0x4fcba0
004fcb60  11 30 84 e2                                      add r3, r4, #0x11
004fcb64  12 20 84 e2                                      add r2, r4, #0x12
004fcb68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcb6c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcb70  02 00 53 e1                                      cmp r3, r2
004fcb74  01 10 20 e0                                      eor r1, r0, r1
004fcb78  01 10 43 e5                                      strb r1, [r3, #-1]
004fcb7c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcb80  00 10 21 e0                                      eor r1, r1, r0
004fcb84  01 10 c2 e5                                      strb r1, [r2, #1]
004fcb88  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fcb8c  01 20 42 e2                                      sub r2, r2, #1
004fcb90  00 10 21 e0                                      eor r1, r1, r0
004fcb94  01 10 43 e5                                      strb r1, [r3, #-1]
004fcb98  01 30 83 e2                                      add r3, r3, #1
004fcb9c  f1 ff ff 3a                                      blo #0x4fcb68
004fcba0  14 10 84 e2                                      add r1, r4, #0x14
004fcba4  05 00 a0 e1                                      mov r0, r5
004fcba8  3b 7b ff eb                                      bl #0x4db89c
004fcbac  05 00 a0 e1                                      mov r0, r5
004fcbb0  18 10 84 e2                                      add r1, r4, #0x18
004fcbb4  35 71 fd eb                                      bl #0x459090
004fcbb8  01 30 a0 e3                                      mov r3, #1
004fcbbc  00 00 53 e3                                      cmp r3, #0
004fcbc0  04 30 8d e5                                      str r3, [sp, #4]
004fcbc4  0f 00 00 1a                                      bne #0x4fcc08
004fcbc8  19 30 84 e2                                      add r3, r4, #0x19
004fcbcc  1a 20 84 e2                                      add r2, r4, #0x1a
004fcbd0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcbd4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcbd8  02 00 53 e1                                      cmp r3, r2
004fcbdc  01 10 20 e0                                      eor r1, r0, r1
004fcbe0  01 10 43 e5                                      strb r1, [r3, #-1]
004fcbe4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcbe8  00 10 21 e0                                      eor r1, r1, r0
004fcbec  01 10 c2 e5                                      strb r1, [r2, #1]
004fcbf0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fcbf4  01 20 42 e2                                      sub r2, r2, #1
004fcbf8  00 10 21 e0                                      eor r1, r1, r0
004fcbfc  01 10 43 e5                                      strb r1, [r3, #-1]
004fcc00  01 30 83 e2                                      add r3, r3, #1
004fcc04  f1 ff ff 3a                                      blo #0x4fcbd0
004fcc08  05 00 a0 e1                                      mov r0, r5
004fcc0c  1c 10 84 e2                                      add r1, r4, #0x1c
004fcc10  62 89 fb eb                                      bl #0x3df1a0
004fcc14  01 30 a0 e3                                      mov r3, #1
004fcc18  00 00 53 e3                                      cmp r3, #0
004fcc1c  04 30 8d e5                                      str r3, [sp, #4]
004fcc20  0f 00 00 1a                                      bne #0x4fcc64
004fcc24  1d 30 84 e2                                      add r3, r4, #0x1d
004fcc28  1e 20 84 e2                                      add r2, r4, #0x1e
004fcc2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcc30  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcc34  02 00 53 e1                                      cmp r3, r2
004fcc38  01 10 20 e0                                      eor r1, r0, r1
004fcc3c  01 10 43 e5                                      strb r1, [r3, #-1]
004fcc40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcc44  00 10 21 e0                                      eor r1, r1, r0
004fcc48  01 10 c2 e5                                      strb r1, [r2, #1]
004fcc4c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fcc50  01 20 42 e2                                      sub r2, r2, #1
004fcc54  00 10 21 e0                                      eor r1, r1, r0
004fcc58  01 10 43 e5                                      strb r1, [r3, #-1]
004fcc5c  01 30 83 e2                                      add r3, r3, #1
004fcc60  f1 ff ff 3a                                      blo #0x4fcc2c
004fcc64  20 00 94 e5                                      ldr r0, [r4, #0x20]
004fcc68  00 00 50 e3                                      cmp r0, #0
004fcc6c  00 00 00 0a                                      beq #0x4fcc74
004fcc70  f2 4d f8 eb                                      bl #0x310440
004fcc74  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004fcc78  01 10 a0 e3                                      mov r1, #1
004fcc7c  00 60 a0 e3                                      mov r6, #0
004fcc80  01 00 80 e0                                      add r0, r0, r1
004fcc84  38 4e f8 eb                                      bl #0x31056c
004fcc88  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
004fcc8c  00 10 a0 e1                                      mov r1, r0
004fcc90  20 00 84 e5                                      str r0, [r4, #0x20]
004fcc94  06 30 a0 e1                                      mov r3, r6
004fcc98  05 00 a0 e1                                      mov r0, r5
004fcc9c  ec 69 f8 eb                                      bl #0x317454
004fcca0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004fcca4  20 20 94 e5                                      ldr r2, [r4, #0x20]
004fcca8  05 00 a0 e1                                      mov r0, r5
004fccac  24 10 84 e2                                      add r1, r4, #0x24
004fccb0  03 60 c2 e7                                      strb r6, [r2, r3]
004fccb4  f5 70 fd eb                                      bl #0x459090
004fccb8  01 30 a0 e3                                      mov r3, #1
004fccbc  06 00 53 e1                                      cmp r3, r6
004fccc0  04 30 8d e5                                      str r3, [sp, #4]
004fccc4  0f 00 00 1a                                      bne #0x4fcd08
004fccc8  25 30 84 e2                                      add r3, r4, #0x25
004fcccc  26 20 84 e2                                      add r2, r4, #0x26
004fccd0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fccd4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fccd8  02 00 53 e1                                      cmp r3, r2
004fccdc  01 10 20 e0                                      eor r1, r0, r1
004fcce0  01 10 43 e5                                      strb r1, [r3, #-1]
004fcce4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcce8  00 10 21 e0                                      eor r1, r1, r0
004fccec  01 10 c2 e5                                      strb r1, [r2, #1]
004fccf0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fccf4  01 20 42 e2                                      sub r2, r2, #1
004fccf8  00 10 21 e0                                      eor r1, r1, r0
004fccfc  01 10 43 e5                                      strb r1, [r3, #-1]
004fcd00  01 30 83 e2                                      add r3, r3, #1
004fcd04  f1 ff ff 3a                                      blo #0x4fccd0
004fcd08  05 00 a0 e1                                      mov r0, r5
004fcd0c  28 10 84 e2                                      add r1, r4, #0x28
004fcd10  de 70 fd eb                                      bl #0x459090
004fcd14  01 30 a0 e3                                      mov r3, #1
004fcd18  00 00 53 e3                                      cmp r3, #0
004fcd1c  04 30 8d e5                                      str r3, [sp, #4]
004fcd20  0f 00 00 1a                                      bne #0x4fcd64
004fcd24  29 30 84 e2                                      add r3, r4, #0x29
004fcd28  2a 20 84 e2                                      add r2, r4, #0x2a
004fcd2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcd30  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcd34  02 00 53 e1                                      cmp r3, r2
004fcd38  01 10 20 e0                                      eor r1, r0, r1
004fcd3c  01 10 43 e5                                      strb r1, [r3, #-1]
004fcd40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcd44  00 10 21 e0                                      eor r1, r1, r0
004fcd48  01 10 c2 e5                                      strb r1, [r2, #1]
004fcd4c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fcd50  01 20 42 e2                                      sub r2, r2, #1
004fcd54  00 10 21 e0                                      eor r1, r1, r0
004fcd58  01 10 43 e5                                      strb r1, [r3, #-1]
004fcd5c  01 30 83 e2                                      add r3, r3, #1
004fcd60  f1 ff ff 3a                                      blo #0x4fcd2c
004fcd64  05 00 a0 e1                                      mov r0, r5
004fcd68  2c 10 84 e2                                      add r1, r4, #0x2c
004fcd6c  c7 70 fd eb                                      bl #0x459090
004fcd70  01 30 a0 e3                                      mov r3, #1
004fcd74  00 00 53 e3                                      cmp r3, #0
004fcd78  04 30 8d e5                                      str r3, [sp, #4]
004fcd7c  0f 00 00 1a                                      bne #0x4fcdc0
004fcd80  2d 30 84 e2                                      add r3, r4, #0x2d
004fcd84  2e 20 84 e2                                      add r2, r4, #0x2e
004fcd88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcd8c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcd90  02 00 53 e1                                      cmp r3, r2
004fcd94  01 10 20 e0                                      eor r1, r0, r1
004fcd98  01 10 43 e5                                      strb r1, [r3, #-1]
004fcd9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcda0  00 10 21 e0                                      eor r1, r1, r0
004fcda4  01 10 c2 e5                                      strb r1, [r2, #1]
004fcda8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fcdac  01 20 42 e2                                      sub r2, r2, #1
004fcdb0  00 10 21 e0                                      eor r1, r1, r0
004fcdb4  01 10 43 e5                                      strb r1, [r3, #-1]
004fcdb8  01 30 83 e2                                      add r3, r3, #1
004fcdbc  f1 ff ff 3a                                      blo #0x4fcd88
004fcdc0  05 00 a0 e1                                      mov r0, r5
004fcdc4  30 10 84 e2                                      add r1, r4, #0x30
004fcdc8  b0 70 fd eb                                      bl #0x459090
004fcdcc  01 30 a0 e3                                      mov r3, #1
004fcdd0  00 00 53 e3                                      cmp r3, #0
004fcdd4  04 30 8d e5                                      str r3, [sp, #4]
004fcdd8  0f 00 00 1a                                      bne #0x4fce1c
004fcddc  31 30 84 e2                                      add r3, r4, #0x31
004fcde0  32 20 84 e2                                      add r2, r4, #0x32
004fcde4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcde8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcdec  02 00 53 e1                                      cmp r3, r2
004fcdf0  01 10 20 e0                                      eor r1, r0, r1
004fcdf4  01 10 43 e5                                      strb r1, [r3, #-1]
004fcdf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcdfc  00 10 21 e0                                      eor r1, r1, r0
004fce00  01 10 c2 e5                                      strb r1, [r2, #1]
004fce04  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fce08  01 20 42 e2                                      sub r2, r2, #1
004fce0c  00 10 21 e0                                      eor r1, r1, r0
004fce10  01 10 43 e5                                      strb r1, [r3, #-1]
004fce14  01 30 83 e2                                      add r3, r3, #1
004fce18  f1 ff ff 3a                                      blo #0x4fcde4
004fce1c  05 00 a0 e1                                      mov r0, r5
004fce20  34 10 84 e2                                      add r1, r4, #0x34
004fce24  99 70 fd eb                                      bl #0x459090
004fce28  01 30 a0 e3                                      mov r3, #1
004fce2c  00 00 53 e3                                      cmp r3, #0
004fce30  04 30 8d e5                                      str r3, [sp, #4]
004fce34  0f 00 00 1a                                      bne #0x4fce78
004fce38  35 30 84 e2                                      add r3, r4, #0x35
004fce3c  36 20 84 e2                                      add r2, r4, #0x36
004fce40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fce44  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fce48  02 00 53 e1                                      cmp r3, r2
004fce4c  01 10 20 e0                                      eor r1, r0, r1
004fce50  01 10 43 e5                                      strb r1, [r3, #-1]
004fce54  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fce58  00 10 21 e0                                      eor r1, r1, r0
004fce5c  01 10 c2 e5                                      strb r1, [r2, #1]
004fce60  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fce64  01 20 42 e2                                      sub r2, r2, #1
004fce68  00 10 21 e0                                      eor r1, r1, r0
004fce6c  01 10 43 e5                                      strb r1, [r3, #-1]
004fce70  01 30 83 e2                                      add r3, r3, #1
004fce74  f1 ff ff 3a                                      blo #0x4fce40
004fce78  05 00 a0 e1                                      mov r0, r5
004fce7c  38 10 84 e2                                      add r1, r4, #0x38
004fce80  82 70 fd eb                                      bl #0x459090
004fce84  01 30 a0 e3                                      mov r3, #1
004fce88  00 00 53 e3                                      cmp r3, #0
004fce8c  04 30 8d e5                                      str r3, [sp, #4]
004fce90  0f 00 00 1a                                      bne #0x4fced4
004fce94  39 30 84 e2                                      add r3, r4, #0x39
004fce98  3a 20 84 e2                                      add r2, r4, #0x3a
004fce9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcea0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcea4  02 00 53 e1                                      cmp r3, r2
004fcea8  01 10 20 e0                                      eor r1, r0, r1
004fceac  01 10 43 e5                                      strb r1, [r3, #-1]
004fceb0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fceb4  00 10 21 e0                                      eor r1, r1, r0
004fceb8  01 10 c2 e5                                      strb r1, [r2, #1]
004fcebc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fcec0  01 20 42 e2                                      sub r2, r2, #1
004fcec4  00 10 21 e0                                      eor r1, r1, r0
004fcec8  01 10 43 e5                                      strb r1, [r3, #-1]
004fcecc  01 30 83 e2                                      add r3, r3, #1
004fced0  f1 ff ff 3a                                      blo #0x4fce9c
004fced4  05 00 a0 e1                                      mov r0, r5
004fced8  3c 10 84 e2                                      add r1, r4, #0x3c
004fcedc  6b 70 fd eb                                      bl #0x459090
004fcee0  01 30 a0 e3                                      mov r3, #1
004fcee4  00 00 53 e3                                      cmp r3, #0
004fcee8  04 30 8d e5                                      str r3, [sp, #4]
004fceec  0f 00 00 1a                                      bne #0x4fcf30
004fcef0  3d 30 84 e2                                      add r3, r4, #0x3d
004fcef4  3e 20 84 e2                                      add r2, r4, #0x3e
004fcef8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcefc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcf00  02 00 53 e1                                      cmp r3, r2
004fcf04  01 10 20 e0                                      eor r1, r0, r1
004fcf08  01 10 43 e5                                      strb r1, [r3, #-1]
004fcf0c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcf10  00 10 21 e0                                      eor r1, r1, r0
004fcf14  01 10 c2 e5                                      strb r1, [r2, #1]
004fcf18  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fcf1c  01 20 42 e2                                      sub r2, r2, #1
004fcf20  00 10 21 e0                                      eor r1, r1, r0
004fcf24  01 10 43 e5                                      strb r1, [r3, #-1]
004fcf28  01 30 83 e2                                      add r3, r3, #1
004fcf2c  f1 ff ff 3a                                      blo #0x4fcef8
004fcf30  05 00 a0 e1                                      mov r0, r5
004fcf34  40 10 84 e2                                      add r1, r4, #0x40
004fcf38  54 70 fd eb                                      bl #0x459090
004fcf3c  01 30 a0 e3                                      mov r3, #1
004fcf40  00 00 53 e3                                      cmp r3, #0
004fcf44  04 30 8d e5                                      str r3, [sp, #4]
004fcf48  0f 00 00 1a                                      bne #0x4fcf8c
004fcf4c  41 30 84 e2                                      add r3, r4, #0x41
004fcf50  42 20 84 e2                                      add r2, r4, #0x42
004fcf54  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcf58  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fcf5c  02 00 53 e1                                      cmp r3, r2
004fcf60  01 10 20 e0                                      eor r1, r0, r1
004fcf64  01 10 43 e5                                      strb r1, [r3, #-1]
004fcf68  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fcf6c  00 10 21 e0                                      eor r1, r1, r0
004fcf70  01 10 c2 e5                                      strb r1, [r2, #1]
004fcf74  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fcf78  01 20 42 e2                                      sub r2, r2, #1
004fcf7c  00 10 21 e0                                      eor r1, r1, r0
004fcf80  01 10 43 e5                                      strb r1, [r3, #-1]
004fcf84  01 30 83 e2                                      add r3, r3, #1
004fcf88  f1 ff ff 3a                                      blo #0x4fcf54
004fcf8c  05 00 a0 e1                                      mov r0, r5
004fcf90  44 10 84 e2                                      add r1, r4, #0x44
004fcf94  3d 70 fd eb                                      bl #0x459090
004fcf98  01 30 a0 e3                                      mov r3, #1
004fcf9c  00 00 53 e3                                      cmp r3, #0
004fcfa0  04 30 8d e5                                      str r3, [sp, #4]
004fcfa4  0f 00 00 1a                                      bne #0x4fcfe8
004fcfa8  46 30 84 e2                                      add r3, r4, #0x46
004fcfac  45 40 84 e2                                      add r4, r4, #0x45
004fcfb0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fcfb4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fcfb8  03 00 54 e1                                      cmp r4, r3
004fcfbc  02 20 21 e0                                      eor r2, r1, r2
004fcfc0  01 20 44 e5                                      strb r2, [r4, #-1]
004fcfc4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fcfc8  01 20 22 e0                                      eor r2, r2, r1
004fcfcc  01 20 c3 e5                                      strb r2, [r3, #1]
004fcfd0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fcfd4  01 30 43 e2                                      sub r3, r3, #1
004fcfd8  01 20 22 e0                                      eor r2, r2, r1
004fcfdc  01 20 44 e5                                      strb r2, [r4, #-1]
004fcfe0  01 40 84 e2                                      add r4, r4, #1
004fcfe4  f1 ff ff 3a                                      blo #0x4fcfb0
004fcfe8  08 d0 8d e2                                      add sp, sp, #8
004fcfec  70 80 bd e8                                      pop {r4, r5, r6, pc}
