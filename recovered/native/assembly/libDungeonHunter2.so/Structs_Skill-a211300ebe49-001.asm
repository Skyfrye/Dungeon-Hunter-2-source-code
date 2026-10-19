; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d0fa4, declared_size=96, range_size=96, mode=arm
; class-group: Structs::Skill
; alias: _ZN7Structs5Skill8finalizeEv
; demangled: Structs::Skill::finalize()
; decoder-mode: arm
004d0fa4  10 40 2d e9                                      push {r4, lr}
004d0fa8  00 40 a0 e1                                      mov r4, r0
004d0fac  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d0fb0  00 00 50 e3                                      cmp r0, #0
004d0fb4  03 00 00 0a                                      beq #0x4d0fc8
004d0fb8  20 fd f8 eb                                      bl #0x310440
004d0fbc  00 30 a0 e3                                      mov r3, #0
004d0fc0  0c 30 84 e5                                      str r3, [r4, #0xc]
004d0fc4  10 30 84 e5                                      str r3, [r4, #0x10]
004d0fc8  28 00 94 e5                                      ldr r0, [r4, #0x28]
004d0fcc  00 00 50 e3                                      cmp r0, #0
004d0fd0  03 00 00 0a                                      beq #0x4d0fe4
004d0fd4  19 fd f8 eb                                      bl #0x310440
004d0fd8  00 30 a0 e3                                      mov r3, #0
004d0fdc  24 30 84 e5                                      str r3, [r4, #0x24]
004d0fe0  28 30 84 e5                                      str r3, [r4, #0x28]
004d0fe4  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
004d0fe8  00 00 50 e3                                      cmp r0, #0
004d0fec  03 00 00 0a                                      beq #0x4d1000
004d0ff0  12 fd f8 eb                                      bl #0x310440
004d0ff4  00 30 a0 e3                                      mov r3, #0
004d0ff8  38 30 84 e5                                      str r3, [r4, #0x38]
004d0ffc  3c 30 84 e5                                      str r3, [r4, #0x3c]
004d1000  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1004, declared_size=96, range_size=96, mode=arm
; class-group: Structs::Skill
; alias: _ZN7Structs5SkillD1Ev
; demangled: Structs::Skill::~Skill()
; decoder-mode: arm
004d1004  10 40 2d e9                                      push {r4, lr}
004d1008  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004d100c  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004d1010  00 40 a0 e1                                      mov r4, r0
004d1014  03 30 8f e0                                      add r3, pc, r3
004d1018  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d101c  02 20 93 e7                                      ldr r2, [r3, r2]
004d1020  00 00 50 e3                                      cmp r0, #0
004d1024  08 20 82 e2                                      add r2, r2, #8
004d1028  00 20 84 e5                                      str r2, [r4]
004d102c  00 00 00 0a                                      beq #0x4d1034
004d1030  02 fd f8 eb                                      bl #0x310440
004d1034  28 00 94 e5                                      ldr r0, [r4, #0x28]
004d1038  00 00 50 e3                                      cmp r0, #0
004d103c  00 00 00 0a                                      beq #0x4d1044
004d1040  fe fc f8 eb                                      bl #0x310440
004d1044  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
004d1048  00 00 50 e3                                      cmp r0, #0
004d104c  00 00 00 0a                                      beq #0x4d1054
004d1050  fa fc f8 eb                                      bl #0x310440
004d1054  04 00 a0 e1                                      mov r0, r4
004d1058  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d105c  7c 3a 4c 00 7c 36 00 00                          .byte 0x7c, 0x3a, 0x4c, 0x00, 0x7c, 0x36, 0x00, 0x00

; FUNCTION 0x004d1064, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Skill
; alias: _ZN7Structs5SkillD0Ev
; demangled: Structs::Skill::~Skill()
; decoder-mode: arm
004d1064  10 40 2d e9                                      push {r4, lr}
004d1068  00 40 a0 e1                                      mov r4, r0
004d106c  e4 ff ff eb                                      bl #0x4d1004
004d1070  04 00 a0 e1                                      mov r0, r4
004d1074  f1 fc f8 eb                                      bl #0x310440
004d1078  04 00 a0 e1                                      mov r0, r4
004d107c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1080, declared_size=96, range_size=96, mode=arm
; class-group: Structs::Skill
; alias: _ZN7Structs5SkillD2Ev
; demangled: Structs::Skill::~Skill()
; decoder-mode: arm
004d1080  10 40 2d e9                                      push {r4, lr}
004d1084  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004d1088  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004d108c  00 40 a0 e1                                      mov r4, r0
004d1090  03 30 8f e0                                      add r3, pc, r3
004d1094  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d1098  02 20 93 e7                                      ldr r2, [r3, r2]
004d109c  00 00 50 e3                                      cmp r0, #0
004d10a0  08 20 82 e2                                      add r2, r2, #8
004d10a4  00 20 84 e5                                      str r2, [r4]
004d10a8  00 00 00 0a                                      beq #0x4d10b0
004d10ac  e3 fc f8 eb                                      bl #0x310440
004d10b0  28 00 94 e5                                      ldr r0, [r4, #0x28]
004d10b4  00 00 50 e3                                      cmp r0, #0
004d10b8  00 00 00 0a                                      beq #0x4d10c0
004d10bc  df fc f8 eb                                      bl #0x310440
004d10c0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
004d10c4  00 00 50 e3                                      cmp r0, #0
004d10c8  00 00 00 0a                                      beq #0x4d10d0
004d10cc  db fc f8 eb                                      bl #0x310440
004d10d0  04 00 a0 e1                                      mov r0, r4
004d10d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d10d8  00 3a 4c 00 7c 36 00 00                          .byte 0x00, 0x3a, 0x4c, 0x00, 0x7c, 0x36, 0x00, 0x00

; FUNCTION 0x004ebeb0, declared_size=1484, range_size=1484, mode=arm
; class-group: Structs::Skill
; alias: _ZN7Structs5Skill4readEP11IStreamBase
; demangled: Structs::Skill::read(IStreamBase*)
; decoder-mode: arm
004ebeb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ebeb4  00 40 a0 e1                                      mov r4, r0
004ebeb8  08 d0 4d e2                                      sub sp, sp, #8
004ebebc  01 00 a0 e1                                      mov r0, r1
004ebec0  01 50 a0 e1                                      mov r5, r1
004ebec4  04 10 84 e2                                      add r1, r4, #4
004ebec8  70 b4 fd eb                                      bl #0x459090
004ebecc  01 30 a0 e3                                      mov r3, #1
004ebed0  00 00 53 e3                                      cmp r3, #0
004ebed4  04 30 8d e5                                      str r3, [sp, #4]
004ebed8  0f 00 00 1a                                      bne #0x4ebf1c
004ebedc  05 30 84 e2                                      add r3, r4, #5
004ebee0  06 20 84 e2                                      add r2, r4, #6
004ebee4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebee8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ebeec  02 00 53 e1                                      cmp r3, r2
004ebef0  01 10 20 e0                                      eor r1, r0, r1
004ebef4  01 10 43 e5                                      strb r1, [r3, #-1]
004ebef8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebefc  00 10 21 e0                                      eor r1, r1, r0
004ebf00  01 10 c2 e5                                      strb r1, [r2, #1]
004ebf04  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ebf08  01 20 42 e2                                      sub r2, r2, #1
004ebf0c  00 10 21 e0                                      eor r1, r1, r0
004ebf10  01 10 43 e5                                      strb r1, [r3, #-1]
004ebf14  01 30 83 e2                                      add r3, r3, #1
004ebf18  f1 ff ff 3a                                      blo #0x4ebee4
004ebf1c  08 10 84 e2                                      add r1, r4, #8
004ebf20  05 00 a0 e1                                      mov r0, r5
004ebf24  5c be ff eb                                      bl #0x4db89c
004ebf28  05 00 a0 e1                                      mov r0, r5
004ebf2c  0c 10 84 e2                                      add r1, r4, #0xc
004ebf30  9a cc fb eb                                      bl #0x3df1a0
004ebf34  01 30 a0 e3                                      mov r3, #1
004ebf38  00 00 53 e3                                      cmp r3, #0
004ebf3c  04 30 8d e5                                      str r3, [sp, #4]
004ebf40  0f 00 00 1a                                      bne #0x4ebf84
004ebf44  0d 30 84 e2                                      add r3, r4, #0xd
004ebf48  0e 20 84 e2                                      add r2, r4, #0xe
004ebf4c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebf50  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ebf54  02 00 53 e1                                      cmp r3, r2
004ebf58  01 10 20 e0                                      eor r1, r0, r1
004ebf5c  01 10 43 e5                                      strb r1, [r3, #-1]
004ebf60  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebf64  00 10 21 e0                                      eor r1, r1, r0
004ebf68  01 10 c2 e5                                      strb r1, [r2, #1]
004ebf6c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ebf70  01 20 42 e2                                      sub r2, r2, #1
004ebf74  00 10 21 e0                                      eor r1, r1, r0
004ebf78  01 10 43 e5                                      strb r1, [r3, #-1]
004ebf7c  01 30 83 e2                                      add r3, r3, #1
004ebf80  f1 ff ff 3a                                      blo #0x4ebf4c
004ebf84  10 00 94 e5                                      ldr r0, [r4, #0x10]
004ebf88  00 00 50 e3                                      cmp r0, #0
004ebf8c  00 00 00 0a                                      beq #0x4ebf94
004ebf90  2a 91 f8 eb                                      bl #0x310440
004ebf94  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004ebf98  01 10 a0 e3                                      mov r1, #1
004ebf9c  00 01 a0 e1                                      lsl r0, r0, #2
004ebfa0  71 91 f8 eb                                      bl #0x31056c
004ebfa4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004ebfa8  10 00 84 e5                                      str r0, [r4, #0x10]
004ebfac  00 00 53 e3                                      cmp r3, #0
004ebfb0  1f 00 00 0a                                      beq #0x4ec034
004ebfb4  00 60 a0 e3                                      mov r6, #0
004ebfb8  01 80 a0 e3                                      mov r8, #1
004ebfbc  06 71 a0 e1                                      lsl r7, r6, #2
004ebfc0  07 10 80 e0                                      add r1, r0, r7
004ebfc4  05 00 a0 e1                                      mov r0, r5
004ebfc8  30 b4 fd eb                                      bl #0x459090
004ebfcc  04 80 8d e5                                      str r8, [sp, #4]
004ebfd0  00 00 58 e3                                      cmp r8, #0
004ebfd4  10 30 94 e5                                      ldr r3, [r4, #0x10]
004ebfd8  10 00 00 1a                                      bne #0x4ec020
004ebfdc  07 70 83 e0                                      add r7, r3, r7
004ebfe0  02 30 87 e2                                      add r3, r7, #2
004ebfe4  01 70 87 e2                                      add r7, r7, #1
004ebfe8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ebfec  01 20 57 e5                                      ldrb r2, [r7, #-1]
004ebff0  03 00 57 e1                                      cmp r7, r3
004ebff4  02 20 21 e0                                      eor r2, r1, r2
004ebff8  01 20 47 e5                                      strb r2, [r7, #-1]
004ebffc  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ec000  01 20 22 e0                                      eor r2, r2, r1
004ec004  01 20 c3 e5                                      strb r2, [r3, #1]
004ec008  01 10 57 e5                                      ldrb r1, [r7, #-1]
004ec00c  01 30 43 e2                                      sub r3, r3, #1
004ec010  01 20 22 e0                                      eor r2, r2, r1
004ec014  01 20 47 e5                                      strb r2, [r7, #-1]
004ec018  01 70 87 e2                                      add r7, r7, #1
004ec01c  f1 ff ff 3a                                      blo #0x4ebfe8
004ec020  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004ec024  01 60 86 e2                                      add r6, r6, #1
004ec028  06 00 53 e1                                      cmp r3, r6
004ec02c  10 00 94 85                                      ldrhi r0, [r4, #0x10]
004ec030  e1 ff ff 8a                                      bhi #0x4ebfbc
004ec034  05 00 a0 e1                                      mov r0, r5
004ec038  14 10 84 e2                                      add r1, r4, #0x14
004ec03c  13 b4 fd eb                                      bl #0x459090
004ec040  01 30 a0 e3                                      mov r3, #1
004ec044  00 00 53 e3                                      cmp r3, #0
004ec048  04 30 8d e5                                      str r3, [sp, #4]
004ec04c  0f 00 00 1a                                      bne #0x4ec090
004ec050  15 30 84 e2                                      add r3, r4, #0x15
004ec054  16 20 84 e2                                      add r2, r4, #0x16
004ec058  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec05c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec060  02 00 53 e1                                      cmp r3, r2
004ec064  01 10 20 e0                                      eor r1, r0, r1
004ec068  01 10 43 e5                                      strb r1, [r3, #-1]
004ec06c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec070  00 10 21 e0                                      eor r1, r1, r0
004ec074  01 10 c2 e5                                      strb r1, [r2, #1]
004ec078  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec07c  01 20 42 e2                                      sub r2, r2, #1
004ec080  00 10 21 e0                                      eor r1, r1, r0
004ec084  01 10 43 e5                                      strb r1, [r3, #-1]
004ec088  01 30 83 e2                                      add r3, r3, #1
004ec08c  f1 ff ff 3a                                      blo #0x4ec058
004ec090  18 10 84 e2                                      add r1, r4, #0x18
004ec094  05 00 a0 e1                                      mov r0, r5
004ec098  ff bd ff eb                                      bl #0x4db89c
004ec09c  05 00 a0 e1                                      mov r0, r5
004ec0a0  1c 10 84 e2                                      add r1, r4, #0x1c
004ec0a4  f9 b3 fd eb                                      bl #0x459090
004ec0a8  01 30 a0 e3                                      mov r3, #1
004ec0ac  00 00 53 e3                                      cmp r3, #0
004ec0b0  04 30 8d e5                                      str r3, [sp, #4]
004ec0b4  0f 00 00 1a                                      bne #0x4ec0f8
004ec0b8  1d 30 84 e2                                      add r3, r4, #0x1d
004ec0bc  1e 20 84 e2                                      add r2, r4, #0x1e
004ec0c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec0c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec0c8  02 00 53 e1                                      cmp r3, r2
004ec0cc  01 10 20 e0                                      eor r1, r0, r1
004ec0d0  01 10 43 e5                                      strb r1, [r3, #-1]
004ec0d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec0d8  00 10 21 e0                                      eor r1, r1, r0
004ec0dc  01 10 c2 e5                                      strb r1, [r2, #1]
004ec0e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec0e4  01 20 42 e2                                      sub r2, r2, #1
004ec0e8  00 10 21 e0                                      eor r1, r1, r0
004ec0ec  01 10 43 e5                                      strb r1, [r3, #-1]
004ec0f0  01 30 83 e2                                      add r3, r3, #1
004ec0f4  f1 ff ff 3a                                      blo #0x4ec0c0
004ec0f8  05 00 a0 e1                                      mov r0, r5
004ec0fc  20 10 84 e2                                      add r1, r4, #0x20
004ec100  e2 b3 fd eb                                      bl #0x459090
004ec104  01 30 a0 e3                                      mov r3, #1
004ec108  00 00 53 e3                                      cmp r3, #0
004ec10c  04 30 8d e5                                      str r3, [sp, #4]
004ec110  0f 00 00 1a                                      bne #0x4ec154
004ec114  21 30 84 e2                                      add r3, r4, #0x21
004ec118  22 20 84 e2                                      add r2, r4, #0x22
004ec11c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec120  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec124  02 00 53 e1                                      cmp r3, r2
004ec128  01 10 20 e0                                      eor r1, r0, r1
004ec12c  01 10 43 e5                                      strb r1, [r3, #-1]
004ec130  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec134  00 10 21 e0                                      eor r1, r1, r0
004ec138  01 10 c2 e5                                      strb r1, [r2, #1]
004ec13c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec140  01 20 42 e2                                      sub r2, r2, #1
004ec144  00 10 21 e0                                      eor r1, r1, r0
004ec148  01 10 43 e5                                      strb r1, [r3, #-1]
004ec14c  01 30 83 e2                                      add r3, r3, #1
004ec150  f1 ff ff 3a                                      blo #0x4ec11c
004ec154  05 00 a0 e1                                      mov r0, r5
004ec158  24 10 84 e2                                      add r1, r4, #0x24
004ec15c  0f cc fb eb                                      bl #0x3df1a0
004ec160  01 30 a0 e3                                      mov r3, #1
004ec164  00 00 53 e3                                      cmp r3, #0
004ec168  04 30 8d e5                                      str r3, [sp, #4]
004ec16c  0f 00 00 1a                                      bne #0x4ec1b0
004ec170  25 30 84 e2                                      add r3, r4, #0x25
004ec174  26 20 84 e2                                      add r2, r4, #0x26
004ec178  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec17c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec180  02 00 53 e1                                      cmp r3, r2
004ec184  01 10 20 e0                                      eor r1, r0, r1
004ec188  01 10 43 e5                                      strb r1, [r3, #-1]
004ec18c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec190  00 10 21 e0                                      eor r1, r1, r0
004ec194  01 10 c2 e5                                      strb r1, [r2, #1]
004ec198  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec19c  01 20 42 e2                                      sub r2, r2, #1
004ec1a0  00 10 21 e0                                      eor r1, r1, r0
004ec1a4  01 10 43 e5                                      strb r1, [r3, #-1]
004ec1a8  01 30 83 e2                                      add r3, r3, #1
004ec1ac  f1 ff ff 3a                                      blo #0x4ec178
004ec1b0  28 00 94 e5                                      ldr r0, [r4, #0x28]
004ec1b4  00 00 50 e3                                      cmp r0, #0
004ec1b8  00 00 00 0a                                      beq #0x4ec1c0
004ec1bc  9f 90 f8 eb                                      bl #0x310440
004ec1c0  24 00 94 e5                                      ldr r0, [r4, #0x24]
004ec1c4  01 10 a0 e3                                      mov r1, #1
004ec1c8  00 60 a0 e3                                      mov r6, #0
004ec1cc  01 00 80 e0                                      add r0, r0, r1
004ec1d0  e5 90 f8 eb                                      bl #0x31056c
004ec1d4  24 20 94 e5                                      ldr r2, [r4, #0x24]
004ec1d8  00 10 a0 e1                                      mov r1, r0
004ec1dc  28 00 84 e5                                      str r0, [r4, #0x28]
004ec1e0  06 30 a0 e1                                      mov r3, r6
004ec1e4  05 00 a0 e1                                      mov r0, r5
004ec1e8  99 ac f8 eb                                      bl #0x317454
004ec1ec  24 30 94 e5                                      ldr r3, [r4, #0x24]
004ec1f0  28 20 94 e5                                      ldr r2, [r4, #0x28]
004ec1f4  2c 10 84 e2                                      add r1, r4, #0x2c
004ec1f8  05 00 a0 e1                                      mov r0, r5
004ec1fc  03 60 c2 e7                                      strb r6, [r2, r3]
004ec200  a5 bd ff eb                                      bl #0x4db89c
004ec204  05 00 a0 e1                                      mov r0, r5
004ec208  30 10 84 e2                                      add r1, r4, #0x30
004ec20c  9f b3 fd eb                                      bl #0x459090
004ec210  01 30 a0 e3                                      mov r3, #1
004ec214  06 00 53 e1                                      cmp r3, r6
004ec218  04 30 8d e5                                      str r3, [sp, #4]
004ec21c  0f 00 00 1a                                      bne #0x4ec260
004ec220  31 30 84 e2                                      add r3, r4, #0x31
004ec224  32 20 84 e2                                      add r2, r4, #0x32
004ec228  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec22c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec230  02 00 53 e1                                      cmp r3, r2
004ec234  01 10 20 e0                                      eor r1, r0, r1
004ec238  01 10 43 e5                                      strb r1, [r3, #-1]
004ec23c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec240  00 10 21 e0                                      eor r1, r1, r0
004ec244  01 10 c2 e5                                      strb r1, [r2, #1]
004ec248  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec24c  01 20 42 e2                                      sub r2, r2, #1
004ec250  00 10 21 e0                                      eor r1, r1, r0
004ec254  01 10 43 e5                                      strb r1, [r3, #-1]
004ec258  01 30 83 e2                                      add r3, r3, #1
004ec25c  f1 ff ff 3a                                      blo #0x4ec228
004ec260  05 00 a0 e1                                      mov r0, r5
004ec264  34 10 84 e2                                      add r1, r4, #0x34
004ec268  88 b3 fd eb                                      bl #0x459090
004ec26c  01 30 a0 e3                                      mov r3, #1
004ec270  00 00 53 e3                                      cmp r3, #0
004ec274  04 30 8d e5                                      str r3, [sp, #4]
004ec278  0f 00 00 1a                                      bne #0x4ec2bc
004ec27c  35 30 84 e2                                      add r3, r4, #0x35
004ec280  36 20 84 e2                                      add r2, r4, #0x36
004ec284  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec288  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec28c  02 00 53 e1                                      cmp r3, r2
004ec290  01 10 20 e0                                      eor r1, r0, r1
004ec294  01 10 43 e5                                      strb r1, [r3, #-1]
004ec298  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec29c  00 10 21 e0                                      eor r1, r1, r0
004ec2a0  01 10 c2 e5                                      strb r1, [r2, #1]
004ec2a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec2a8  01 20 42 e2                                      sub r2, r2, #1
004ec2ac  00 10 21 e0                                      eor r1, r1, r0
004ec2b0  01 10 43 e5                                      strb r1, [r3, #-1]
004ec2b4  01 30 83 e2                                      add r3, r3, #1
004ec2b8  f1 ff ff 3a                                      blo #0x4ec284
004ec2bc  05 00 a0 e1                                      mov r0, r5
004ec2c0  38 10 84 e2                                      add r1, r4, #0x38
004ec2c4  b5 cb fb eb                                      bl #0x3df1a0
004ec2c8  01 30 a0 e3                                      mov r3, #1
004ec2cc  00 00 53 e3                                      cmp r3, #0
004ec2d0  04 30 8d e5                                      str r3, [sp, #4]
004ec2d4  0f 00 00 1a                                      bne #0x4ec318
004ec2d8  39 30 84 e2                                      add r3, r4, #0x39
004ec2dc  3a 20 84 e2                                      add r2, r4, #0x3a
004ec2e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec2e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec2e8  02 00 53 e1                                      cmp r3, r2
004ec2ec  01 10 20 e0                                      eor r1, r0, r1
004ec2f0  01 10 43 e5                                      strb r1, [r3, #-1]
004ec2f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec2f8  00 10 21 e0                                      eor r1, r1, r0
004ec2fc  01 10 c2 e5                                      strb r1, [r2, #1]
004ec300  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec304  01 20 42 e2                                      sub r2, r2, #1
004ec308  00 10 21 e0                                      eor r1, r1, r0
004ec30c  01 10 43 e5                                      strb r1, [r3, #-1]
004ec310  01 30 83 e2                                      add r3, r3, #1
004ec314  f1 ff ff 3a                                      blo #0x4ec2e0
004ec318  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
004ec31c  00 00 50 e3                                      cmp r0, #0
004ec320  00 00 00 0a                                      beq #0x4ec328
004ec324  45 90 f8 eb                                      bl #0x310440
004ec328  38 00 94 e5                                      ldr r0, [r4, #0x38]
004ec32c  01 10 a0 e3                                      mov r1, #1
004ec330  00 60 a0 e3                                      mov r6, #0
004ec334  01 00 80 e0                                      add r0, r0, r1
004ec338  8b 90 f8 eb                                      bl #0x31056c
004ec33c  38 20 94 e5                                      ldr r2, [r4, #0x38]
004ec340  00 10 a0 e1                                      mov r1, r0
004ec344  3c 00 84 e5                                      str r0, [r4, #0x3c]
004ec348  06 30 a0 e1                                      mov r3, r6
004ec34c  05 00 a0 e1                                      mov r0, r5
004ec350  3f ac f8 eb                                      bl #0x317454
004ec354  38 30 94 e5                                      ldr r3, [r4, #0x38]
004ec358  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
004ec35c  05 00 a0 e1                                      mov r0, r5
004ec360  40 10 84 e2                                      add r1, r4, #0x40
004ec364  03 60 c2 e7                                      strb r6, [r2, r3]
004ec368  48 b3 fd eb                                      bl #0x459090
004ec36c  01 30 a0 e3                                      mov r3, #1
004ec370  06 00 53 e1                                      cmp r3, r6
004ec374  04 30 8d e5                                      str r3, [sp, #4]
004ec378  0f 00 00 1a                                      bne #0x4ec3bc
004ec37c  41 30 84 e2                                      add r3, r4, #0x41
004ec380  42 20 84 e2                                      add r2, r4, #0x42
004ec384  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec388  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec38c  02 00 53 e1                                      cmp r3, r2
004ec390  01 10 20 e0                                      eor r1, r0, r1
004ec394  01 10 43 e5                                      strb r1, [r3, #-1]
004ec398  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec39c  00 10 21 e0                                      eor r1, r1, r0
004ec3a0  01 10 c2 e5                                      strb r1, [r2, #1]
004ec3a4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec3a8  01 20 42 e2                                      sub r2, r2, #1
004ec3ac  00 10 21 e0                                      eor r1, r1, r0
004ec3b0  01 10 43 e5                                      strb r1, [r3, #-1]
004ec3b4  01 30 83 e2                                      add r3, r3, #1
004ec3b8  f1 ff ff 3a                                      blo #0x4ec384
004ec3bc  05 00 a0 e1                                      mov r0, r5
004ec3c0  44 10 84 e2                                      add r1, r4, #0x44
004ec3c4  31 b3 fd eb                                      bl #0x459090
004ec3c8  01 30 a0 e3                                      mov r3, #1
004ec3cc  00 00 53 e3                                      cmp r3, #0
004ec3d0  04 30 8d e5                                      str r3, [sp, #4]
004ec3d4  0f 00 00 1a                                      bne #0x4ec418
004ec3d8  45 30 84 e2                                      add r3, r4, #0x45
004ec3dc  46 20 84 e2                                      add r2, r4, #0x46
004ec3e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec3e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ec3e8  02 00 53 e1                                      cmp r3, r2
004ec3ec  01 10 20 e0                                      eor r1, r0, r1
004ec3f0  01 10 43 e5                                      strb r1, [r3, #-1]
004ec3f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ec3f8  00 10 21 e0                                      eor r1, r1, r0
004ec3fc  01 10 c2 e5                                      strb r1, [r2, #1]
004ec400  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ec404  01 20 42 e2                                      sub r2, r2, #1
004ec408  00 10 21 e0                                      eor r1, r1, r0
004ec40c  01 10 43 e5                                      strb r1, [r3, #-1]
004ec410  01 30 83 e2                                      add r3, r3, #1
004ec414  f1 ff ff 3a                                      blo #0x4ec3e0
004ec418  05 00 a0 e1                                      mov r0, r5
004ec41c  48 10 84 e2                                      add r1, r4, #0x48
004ec420  1a b3 fd eb                                      bl #0x459090
004ec424  01 30 a0 e3                                      mov r3, #1
004ec428  00 00 53 e3                                      cmp r3, #0
004ec42c  04 30 8d e5                                      str r3, [sp, #4]
004ec430  0f 00 00 1a                                      bne #0x4ec474
004ec434  4a 30 84 e2                                      add r3, r4, #0x4a
004ec438  49 40 84 e2                                      add r4, r4, #0x49
004ec43c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ec440  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ec444  03 00 54 e1                                      cmp r4, r3
004ec448  02 20 21 e0                                      eor r2, r1, r2
004ec44c  01 20 44 e5                                      strb r2, [r4, #-1]
004ec450  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ec454  01 20 22 e0                                      eor r2, r2, r1
004ec458  01 20 c3 e5                                      strb r2, [r3, #1]
004ec45c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ec460  01 30 43 e2                                      sub r3, r3, #1
004ec464  01 20 22 e0                                      eor r2, r2, r1
004ec468  01 20 44 e5                                      strb r2, [r4, #-1]
004ec46c  01 40 84 e2                                      add r4, r4, #1
004ec470  f1 ff ff 3a                                      blo #0x4ec43c
004ec474  08 d0 8d e2                                      add sp, sp, #8
004ec478  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
