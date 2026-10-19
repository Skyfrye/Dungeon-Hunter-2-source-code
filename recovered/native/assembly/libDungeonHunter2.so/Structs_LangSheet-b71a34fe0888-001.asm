; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cec84, declared_size=68, range_size=68, mode=arm
; class-group: Structs::LangSheet
; alias: _ZN7Structs9LangSheet8finalizeEv
; demangled: Structs::LangSheet::finalize()
; decoder-mode: arm
004cec84  10 40 2d e9                                      push {r4, lr}
004cec88  00 40 a0 e1                                      mov r4, r0
004cec8c  08 00 90 e5                                      ldr r0, [r0, #8]
004cec90  00 00 50 e3                                      cmp r0, #0
004cec94  03 00 00 0a                                      beq #0x4ceca8
004cec98  e8 05 f9 eb                                      bl #0x310440
004cec9c  00 30 a0 e3                                      mov r3, #0
004ceca0  04 30 84 e5                                      str r3, [r4, #4]
004ceca4  08 30 84 e5                                      str r3, [r4, #8]
004ceca8  10 00 94 e5                                      ldr r0, [r4, #0x10]
004cecac  00 00 50 e3                                      cmp r0, #0
004cecb0  03 00 00 0a                                      beq #0x4cecc4
004cecb4  e1 05 f9 eb                                      bl #0x310440
004cecb8  00 30 a0 e3                                      mov r3, #0
004cecbc  0c 30 84 e5                                      str r3, [r4, #0xc]
004cecc0  10 30 84 e5                                      str r3, [r4, #0x10]
004cecc4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cecc8, declared_size=80, range_size=80, mode=arm
; class-group: Structs::LangSheet
; alias: _ZN7Structs9LangSheetD1Ev
; demangled: Structs::LangSheet::~LangSheet()
; decoder-mode: arm
004cecc8  10 40 2d e9                                      push {r4, lr}
004ceccc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004cecd0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004cecd4  00 40 a0 e1                                      mov r4, r0
004cecd8  03 30 8f e0                                      add r3, pc, r3
004cecdc  08 00 90 e5                                      ldr r0, [r0, #8]
004cece0  02 20 93 e7                                      ldr r2, [r3, r2]
004cece4  00 00 50 e3                                      cmp r0, #0
004cece8  08 20 82 e2                                      add r2, r2, #8
004cecec  00 20 84 e5                                      str r2, [r4]
004cecf0  00 00 00 0a                                      beq #0x4cecf8
004cecf4  d1 05 f9 eb                                      bl #0x310440
004cecf8  10 00 94 e5                                      ldr r0, [r4, #0x10]
004cecfc  00 00 50 e3                                      cmp r0, #0
004ced00  00 00 00 0a                                      beq #0x4ced08
004ced04  cd 05 f9 eb                                      bl #0x310440
004ced08  04 00 a0 e1                                      mov r0, r4
004ced0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ced10  b8 5d 4c 00 a8 37 00 00                          .byte 0xb8, 0x5d, 0x4c, 0x00, 0xa8, 0x37, 0x00, 0x00

; FUNCTION 0x004ced18, declared_size=28, range_size=28, mode=arm
; class-group: Structs::LangSheet
; alias: _ZN7Structs9LangSheetD0Ev
; demangled: Structs::LangSheet::~LangSheet()
; decoder-mode: arm
004ced18  10 40 2d e9                                      push {r4, lr}
004ced1c  00 40 a0 e1                                      mov r4, r0
004ced20  e8 ff ff eb                                      bl #0x4cecc8
004ced24  04 00 a0 e1                                      mov r0, r4
004ced28  c4 05 f9 eb                                      bl #0x310440
004ced2c  04 00 a0 e1                                      mov r0, r4
004ced30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ced34, declared_size=80, range_size=80, mode=arm
; class-group: Structs::LangSheet
; alias: _ZN7Structs9LangSheetD2Ev
; demangled: Structs::LangSheet::~LangSheet()
; decoder-mode: arm
004ced34  10 40 2d e9                                      push {r4, lr}
004ced38  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004ced3c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004ced40  00 40 a0 e1                                      mov r4, r0
004ced44  03 30 8f e0                                      add r3, pc, r3
004ced48  08 00 90 e5                                      ldr r0, [r0, #8]
004ced4c  02 20 93 e7                                      ldr r2, [r3, r2]
004ced50  00 00 50 e3                                      cmp r0, #0
004ced54  08 20 82 e2                                      add r2, r2, #8
004ced58  00 20 84 e5                                      str r2, [r4]
004ced5c  00 00 00 0a                                      beq #0x4ced64
004ced60  b6 05 f9 eb                                      bl #0x310440
004ced64  10 00 94 e5                                      ldr r0, [r4, #0x10]
004ced68  00 00 50 e3                                      cmp r0, #0
004ced6c  00 00 00 0a                                      beq #0x4ced74
004ced70  b2 05 f9 eb                                      bl #0x310440
004ced74  04 00 a0 e1                                      mov r0, r4
004ced78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ced7c  4c 5d 4c 00 a8 37 00 00                          .byte 0x4c, 0x5d, 0x4c, 0x00, 0xa8, 0x37, 0x00, 0x00

; FUNCTION 0x004dd38c, declared_size=352, range_size=352, mode=arm
; class-group: Structs::LangSheet
; alias: _ZN7Structs9LangSheet4readEP11IStreamBase
; demangled: Structs::LangSheet::read(IStreamBase*)
; decoder-mode: arm
004dd38c  70 40 2d e9                                      push {r4, r5, r6, lr}
004dd390  00 40 a0 e1                                      mov r4, r0
004dd394  08 d0 4d e2                                      sub sp, sp, #8
004dd398  01 00 a0 e1                                      mov r0, r1
004dd39c  01 50 a0 e1                                      mov r5, r1
004dd3a0  04 10 84 e2                                      add r1, r4, #4
004dd3a4  7d 07 fc eb                                      bl #0x3df1a0
004dd3a8  01 30 a0 e3                                      mov r3, #1
004dd3ac  00 00 53 e3                                      cmp r3, #0
004dd3b0  04 30 8d e5                                      str r3, [sp, #4]
004dd3b4  0f 00 00 1a                                      bne #0x4dd3f8
004dd3b8  05 30 84 e2                                      add r3, r4, #5
004dd3bc  06 20 84 e2                                      add r2, r4, #6
004dd3c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd3c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd3c8  02 00 53 e1                                      cmp r3, r2
004dd3cc  01 10 20 e0                                      eor r1, r0, r1
004dd3d0  01 10 43 e5                                      strb r1, [r3, #-1]
004dd3d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd3d8  00 10 21 e0                                      eor r1, r1, r0
004dd3dc  01 10 c2 e5                                      strb r1, [r2, #1]
004dd3e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd3e4  01 20 42 e2                                      sub r2, r2, #1
004dd3e8  00 10 21 e0                                      eor r1, r1, r0
004dd3ec  01 10 43 e5                                      strb r1, [r3, #-1]
004dd3f0  01 30 83 e2                                      add r3, r3, #1
004dd3f4  f1 ff ff 3a                                      blo #0x4dd3c0
004dd3f8  08 00 94 e5                                      ldr r0, [r4, #8]
004dd3fc  00 00 50 e3                                      cmp r0, #0
004dd400  00 00 00 0a                                      beq #0x4dd408
004dd404  0d cc f8 eb                                      bl #0x310440
004dd408  04 00 94 e5                                      ldr r0, [r4, #4]
004dd40c  01 10 a0 e3                                      mov r1, #1
004dd410  00 60 a0 e3                                      mov r6, #0
004dd414  01 00 80 e0                                      add r0, r0, r1
004dd418  53 cc f8 eb                                      bl #0x31056c
004dd41c  04 20 94 e5                                      ldr r2, [r4, #4]
004dd420  00 10 a0 e1                                      mov r1, r0
004dd424  08 00 84 e5                                      str r0, [r4, #8]
004dd428  06 30 a0 e1                                      mov r3, r6
004dd42c  05 00 a0 e1                                      mov r0, r5
004dd430  07 e8 f8 eb                                      bl #0x317454
004dd434  04 30 94 e5                                      ldr r3, [r4, #4]
004dd438  08 20 94 e5                                      ldr r2, [r4, #8]
004dd43c  05 00 a0 e1                                      mov r0, r5
004dd440  0c 10 84 e2                                      add r1, r4, #0xc
004dd444  03 60 c2 e7                                      strb r6, [r2, r3]
004dd448  54 07 fc eb                                      bl #0x3df1a0
004dd44c  01 30 a0 e3                                      mov r3, #1
004dd450  06 00 53 e1                                      cmp r3, r6
004dd454  04 30 8d e5                                      str r3, [sp, #4]
004dd458  0f 00 00 1a                                      bne #0x4dd49c
004dd45c  0d 30 84 e2                                      add r3, r4, #0xd
004dd460  0e 20 84 e2                                      add r2, r4, #0xe
004dd464  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd468  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd46c  02 00 53 e1                                      cmp r3, r2
004dd470  01 10 20 e0                                      eor r1, r0, r1
004dd474  01 10 43 e5                                      strb r1, [r3, #-1]
004dd478  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd47c  00 10 21 e0                                      eor r1, r1, r0
004dd480  01 10 c2 e5                                      strb r1, [r2, #1]
004dd484  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd488  01 20 42 e2                                      sub r2, r2, #1
004dd48c  00 10 21 e0                                      eor r1, r1, r0
004dd490  01 10 43 e5                                      strb r1, [r3, #-1]
004dd494  01 30 83 e2                                      add r3, r3, #1
004dd498  f1 ff ff 3a                                      blo #0x4dd464
004dd49c  10 00 94 e5                                      ldr r0, [r4, #0x10]
004dd4a0  00 00 50 e3                                      cmp r0, #0
004dd4a4  00 00 00 0a                                      beq #0x4dd4ac
004dd4a8  e4 cb f8 eb                                      bl #0x310440
004dd4ac  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004dd4b0  01 10 a0 e3                                      mov r1, #1
004dd4b4  00 60 a0 e3                                      mov r6, #0
004dd4b8  01 00 80 e0                                      add r0, r0, r1
004dd4bc  2a cc f8 eb                                      bl #0x31056c
004dd4c0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004dd4c4  00 10 a0 e1                                      mov r1, r0
004dd4c8  10 00 84 e5                                      str r0, [r4, #0x10]
004dd4cc  06 30 a0 e1                                      mov r3, r6
004dd4d0  05 00 a0 e1                                      mov r0, r5
004dd4d4  de e7 f8 eb                                      bl #0x317454
004dd4d8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004dd4dc  10 20 94 e5                                      ldr r2, [r4, #0x10]
004dd4e0  03 60 c2 e7                                      strb r6, [r2, r3]
004dd4e4  08 d0 8d e2                                      add sp, sp, #8
004dd4e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
