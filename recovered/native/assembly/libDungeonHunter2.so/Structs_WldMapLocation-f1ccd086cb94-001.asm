; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004ced84, declared_size=40, range_size=40, mode=arm
; class-group: Structs::WldMapLocation
; alias: _ZN7Structs14WldMapLocation8finalizeEv
; demangled: Structs::WldMapLocation::finalize()
; decoder-mode: arm
004ced84  10 40 2d e9                                      push {r4, lr}
004ced88  00 40 a0 e1                                      mov r4, r0
004ced8c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004ced90  00 00 50 e3                                      cmp r0, #0
004ced94  03 00 00 0a                                      beq #0x4ceda8
004ced98  a8 05 f9 eb                                      bl #0x310440
004ced9c  00 30 a0 e3                                      mov r3, #0
004ceda0  0c 30 84 e5                                      str r3, [r4, #0xc]
004ceda4  10 30 84 e5                                      str r3, [r4, #0x10]
004ceda8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cedac, declared_size=64, range_size=64, mode=arm
; class-group: Structs::WldMapLocation
; alias: _ZN7Structs14WldMapLocationD1Ev
; demangled: Structs::WldMapLocation::~WldMapLocation()
; decoder-mode: arm
004cedac  10 40 2d e9                                      push {r4, lr}
004cedb0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004cedb4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004cedb8  00 40 a0 e1                                      mov r4, r0
004cedbc  03 30 8f e0                                      add r3, pc, r3
004cedc0  10 00 90 e5                                      ldr r0, [r0, #0x10]
004cedc4  02 20 93 e7                                      ldr r2, [r3, r2]
004cedc8  00 00 50 e3                                      cmp r0, #0
004cedcc  08 20 82 e2                                      add r2, r2, #8
004cedd0  00 20 84 e5                                      str r2, [r4]
004cedd4  00 00 00 0a                                      beq #0x4ceddc
004cedd8  98 05 f9 eb                                      bl #0x310440
004ceddc  04 00 a0 e1                                      mov r0, r4
004cede0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cede4  d4 5c 4c 00 a8 43 00 00                          .byte 0xd4, 0x5c, 0x4c, 0x00, 0xa8, 0x43, 0x00, 0x00

; FUNCTION 0x004cedec, declared_size=28, range_size=28, mode=arm
; class-group: Structs::WldMapLocation
; alias: _ZN7Structs14WldMapLocationD0Ev
; demangled: Structs::WldMapLocation::~WldMapLocation()
; decoder-mode: arm
004cedec  10 40 2d e9                                      push {r4, lr}
004cedf0  00 40 a0 e1                                      mov r4, r0
004cedf4  ec ff ff eb                                      bl #0x4cedac
004cedf8  04 00 a0 e1                                      mov r0, r4
004cedfc  8f 05 f9 eb                                      bl #0x310440
004cee00  04 00 a0 e1                                      mov r0, r4
004cee04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cee08, declared_size=64, range_size=64, mode=arm
; class-group: Structs::WldMapLocation
; alias: _ZN7Structs14WldMapLocationD2Ev
; demangled: Structs::WldMapLocation::~WldMapLocation()
; decoder-mode: arm
004cee08  10 40 2d e9                                      push {r4, lr}
004cee0c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004cee10  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004cee14  00 40 a0 e1                                      mov r4, r0
004cee18  03 30 8f e0                                      add r3, pc, r3
004cee1c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004cee20  02 20 93 e7                                      ldr r2, [r3, r2]
004cee24  00 00 50 e3                                      cmp r0, #0
004cee28  08 20 82 e2                                      add r2, r2, #8
004cee2c  00 20 84 e5                                      str r2, [r4]
004cee30  00 00 00 0a                                      beq #0x4cee38
004cee34  81 05 f9 eb                                      bl #0x310440
004cee38  04 00 a0 e1                                      mov r0, r4
004cee3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cee40  78 5c 4c 00 a8 43 00 00                          .byte 0x78, 0x5c, 0x4c, 0x00, 0xa8, 0x43, 0x00, 0x00

; FUNCTION 0x004eb5a8, declared_size=476, range_size=476, mode=arm
; class-group: Structs::WldMapLocation
; alias: _ZN7Structs14WldMapLocation4readEP11IStreamBase
; demangled: Structs::WldMapLocation::read(IStreamBase*)
; decoder-mode: arm
004eb5a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004eb5ac  00 50 a0 e1                                      mov r5, r0
004eb5b0  08 d0 4d e2                                      sub sp, sp, #8
004eb5b4  01 00 a0 e1                                      mov r0, r1
004eb5b8  01 80 a0 e1                                      mov r8, r1
004eb5bc  04 10 85 e2                                      add r1, r5, #4
004eb5c0  b2 b6 fd eb                                      bl #0x459090
004eb5c4  01 30 a0 e3                                      mov r3, #1
004eb5c8  00 00 53 e3                                      cmp r3, #0
004eb5cc  04 30 8d e5                                      str r3, [sp, #4]
004eb5d0  0f 00 00 1a                                      bne #0x4eb614
004eb5d4  05 30 85 e2                                      add r3, r5, #5
004eb5d8  06 20 85 e2                                      add r2, r5, #6
004eb5dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb5e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb5e4  03 00 52 e1                                      cmp r2, r3
004eb5e8  01 10 20 e0                                      eor r1, r0, r1
004eb5ec  01 10 43 e5                                      strb r1, [r3, #-1]
004eb5f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb5f4  00 10 21 e0                                      eor r1, r1, r0
004eb5f8  01 10 c2 e5                                      strb r1, [r2, #1]
004eb5fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb600  01 20 42 e2                                      sub r2, r2, #1
004eb604  00 10 21 e0                                      eor r1, r1, r0
004eb608  01 10 43 e5                                      strb r1, [r3, #-1]
004eb60c  01 30 83 e2                                      add r3, r3, #1
004eb610  f1 ff ff 8a                                      bhi #0x4eb5dc
004eb614  08 00 a0 e1                                      mov r0, r8
004eb618  08 10 85 e2                                      add r1, r5, #8
004eb61c  9b b6 fd eb                                      bl #0x459090
004eb620  01 30 a0 e3                                      mov r3, #1
004eb624  00 00 53 e3                                      cmp r3, #0
004eb628  04 30 8d e5                                      str r3, [sp, #4]
004eb62c  0f 00 00 1a                                      bne #0x4eb670
004eb630  09 30 85 e2                                      add r3, r5, #9
004eb634  0a 20 85 e2                                      add r2, r5, #0xa
004eb638  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb63c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb640  03 00 52 e1                                      cmp r2, r3
004eb644  01 10 20 e0                                      eor r1, r0, r1
004eb648  01 10 43 e5                                      strb r1, [r3, #-1]
004eb64c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb650  00 10 21 e0                                      eor r1, r1, r0
004eb654  01 10 c2 e5                                      strb r1, [r2, #1]
004eb658  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb65c  01 20 42 e2                                      sub r2, r2, #1
004eb660  00 10 21 e0                                      eor r1, r1, r0
004eb664  01 10 43 e5                                      strb r1, [r3, #-1]
004eb668  01 30 83 e2                                      add r3, r3, #1
004eb66c  f1 ff ff 8a                                      bhi #0x4eb638
004eb670  08 00 a0 e1                                      mov r0, r8
004eb674  0c 10 85 e2                                      add r1, r5, #0xc
004eb678  c8 ce fb eb                                      bl #0x3df1a0
004eb67c  01 30 a0 e3                                      mov r3, #1
004eb680  00 00 53 e3                                      cmp r3, #0
004eb684  04 30 8d e5                                      str r3, [sp, #4]
004eb688  0f 00 00 1a                                      bne #0x4eb6cc
004eb68c  0d 30 85 e2                                      add r3, r5, #0xd
004eb690  0e 20 85 e2                                      add r2, r5, #0xe
004eb694  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb698  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb69c  03 00 52 e1                                      cmp r2, r3
004eb6a0  01 10 20 e0                                      eor r1, r0, r1
004eb6a4  01 10 43 e5                                      strb r1, [r3, #-1]
004eb6a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb6ac  00 10 21 e0                                      eor r1, r1, r0
004eb6b0  01 10 c2 e5                                      strb r1, [r2, #1]
004eb6b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb6b8  01 20 42 e2                                      sub r2, r2, #1
004eb6bc  00 10 21 e0                                      eor r1, r1, r0
004eb6c0  01 10 43 e5                                      strb r1, [r3, #-1]
004eb6c4  01 30 83 e2                                      add r3, r3, #1
004eb6c8  f1 ff ff 8a                                      bhi #0x4eb694
004eb6cc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004eb6d0  00 00 50 e3                                      cmp r0, #0
004eb6d4  00 00 00 0a                                      beq #0x4eb6dc
004eb6d8  58 93 f8 eb                                      bl #0x310440
004eb6dc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
004eb6e0  01 10 a0 e3                                      mov r1, #1
004eb6e4  00 01 a0 e1                                      lsl r0, r0, #2
004eb6e8  9f 93 f8 eb                                      bl #0x31056c
004eb6ec  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004eb6f0  10 00 85 e5                                      str r0, [r5, #0x10]
004eb6f4  00 00 53 e3                                      cmp r3, #0
004eb6f8  1f 00 00 0a                                      beq #0x4eb77c
004eb6fc  00 40 a0 e3                                      mov r4, #0
004eb700  01 70 a0 e3                                      mov r7, #1
004eb704  04 61 a0 e1                                      lsl r6, r4, #2
004eb708  06 10 80 e0                                      add r1, r0, r6
004eb70c  08 00 a0 e1                                      mov r0, r8
004eb710  5e b6 fd eb                                      bl #0x459090
004eb714  04 70 8d e5                                      str r7, [sp, #4]
004eb718  00 00 57 e3                                      cmp r7, #0
004eb71c  10 30 95 e5                                      ldr r3, [r5, #0x10]
004eb720  10 00 00 1a                                      bne #0x4eb768
004eb724  06 60 83 e0                                      add r6, r3, r6
004eb728  02 30 86 e2                                      add r3, r6, #2
004eb72c  01 60 86 e2                                      add r6, r6, #1
004eb730  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb734  01 20 56 e5                                      ldrb r2, [r6, #-1]
004eb738  06 00 53 e1                                      cmp r3, r6
004eb73c  02 20 21 e0                                      eor r2, r1, r2
004eb740  01 20 46 e5                                      strb r2, [r6, #-1]
004eb744  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb748  01 20 22 e0                                      eor r2, r2, r1
004eb74c  01 20 c3 e5                                      strb r2, [r3, #1]
004eb750  01 10 56 e5                                      ldrb r1, [r6, #-1]
004eb754  01 30 43 e2                                      sub r3, r3, #1
004eb758  01 20 22 e0                                      eor r2, r2, r1
004eb75c  01 20 46 e5                                      strb r2, [r6, #-1]
004eb760  01 60 86 e2                                      add r6, r6, #1
004eb764  f1 ff ff 8a                                      bhi #0x4eb730
004eb768  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004eb76c  01 40 84 e2                                      add r4, r4, #1
004eb770  04 00 53 e1                                      cmp r3, r4
004eb774  10 00 95 85                                      ldrhi r0, [r5, #0x10]
004eb778  e1 ff ff 8a                                      bhi #0x4eb704
004eb77c  08 d0 8d e2                                      add sp, sp, #8
004eb780  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
