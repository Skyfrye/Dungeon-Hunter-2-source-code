; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a3988, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::StrID_Languages
; alias: _ZN6Arrays15StrID_Languages13finalizeNamesEv
; demangled: Arrays::StrID_Languages::finalizeNames()
; decoder-mode: arm
004a3988  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a398c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a3990  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a3994  05 50 8f e0                                      add r5, pc, r5
004a3998  06 30 95 e7                                      ldr r3, [r5, r6]
004a399c  00 30 93 e5                                      ldr r3, [r3]
004a39a0  00 00 53 e3                                      cmp r3, #0
004a39a4  1a 00 00 0a                                      beq #0x4a3a14
004a39a8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a39ac  07 20 95 e7                                      ldr r2, [r5, r7]
004a39b0  00 20 92 e5                                      ldr r2, [r2]
004a39b4  00 00 52 e3                                      cmp r2, #0
004a39b8  10 00 00 0a                                      beq #0x4a3a00
004a39bc  00 40 a0 e3                                      mov r4, #0
004a39c0  01 00 00 ea                                      b #0x4a39cc
004a39c4  06 30 95 e7                                      ldr r3, [r5, r6]
004a39c8  00 30 93 e5                                      ldr r3, [r3]
004a39cc  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a39d0  01 40 84 e2                                      add r4, r4, #1
004a39d4  00 00 50 e3                                      cmp r0, #0
004a39d8  02 00 00 0a                                      beq #0x4a39e8
004a39dc  97 b2 f9 eb                                      bl #0x310440
004a39e0  06 30 95 e7                                      ldr r3, [r5, r6]
004a39e4  00 30 93 e5                                      ldr r3, [r3]
004a39e8  07 20 95 e7                                      ldr r2, [r5, r7]
004a39ec  00 20 92 e5                                      ldr r2, [r2]
004a39f0  04 00 52 e1                                      cmp r2, r4
004a39f4  f2 ff ff 8a                                      bhi #0x4a39c4
004a39f8  00 00 53 e3                                      cmp r3, #0
004a39fc  01 00 00 0a                                      beq #0x4a3a08
004a3a00  03 00 a0 e1                                      mov r0, r3
004a3a04  8d b2 f9 eb                                      bl #0x310440
004a3a08  06 30 95 e7                                      ldr r3, [r5, r6]
004a3a0c  00 20 a0 e3                                      mov r2, #0
004a3a10  00 20 83 e5                                      str r2, [r3]
004a3a14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a3a18  fc 10 4f 00 f8 24 00 00 60 43 00 00              .byte 0xfc, 0x10, 0x4f, 0x00, 0xf8, 0x24, 0x00, 0x00, 0x60, 0x43, 0x00, 0x00

; FUNCTION 0x004a3a24, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::StrID_Languages
; alias: _ZN6Arrays15StrID_Languages8finalizeEv
; demangled: Arrays::StrID_Languages::finalize()
; decoder-mode: arm
004a3a24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a3a28  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a3a2c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a3a30  05 50 8f e0                                      add r5, pc, r5
004a3a34  07 30 95 e7                                      ldr r3, [r5, r7]
004a3a38  00 30 93 e5                                      ldr r3, [r3]
004a3a3c  00 00 53 e3                                      cmp r3, #0
004a3a40  2c 00 00 0a                                      beq #0x4a3af8
004a3a44  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a3a48  08 20 95 e7                                      ldr r2, [r5, r8]
004a3a4c  00 20 92 e5                                      ldr r2, [r2]
004a3a50  00 00 52 e3                                      cmp r2, #0
004a3a54  12 00 00 0a                                      beq #0x4a3aa4
004a3a58  00 40 a0 e3                                      mov r4, #0
004a3a5c  04 60 a0 e1                                      mov r6, r4
004a3a60  01 00 00 ea                                      b #0x4a3a6c
004a3a64  07 30 95 e7                                      ldr r3, [r5, r7]
004a3a68  00 30 93 e5                                      ldr r3, [r3]
004a3a6c  04 00 83 e0                                      add r0, r3, r4
004a3a70  04 30 93 e7                                      ldr r3, [r3, r4]
004a3a74  0f e0 a0 e1                                      mov lr, pc
004a3a78  08 f0 93 e5                                      ldr pc, [r3, #8]
004a3a7c  08 30 95 e7                                      ldr r3, [r5, r8]
004a3a80  01 60 86 e2                                      add r6, r6, #1
004a3a84  0c 40 84 e2                                      add r4, r4, #0xc
004a3a88  00 30 93 e5                                      ldr r3, [r3]
004a3a8c  06 00 53 e1                                      cmp r3, r6
004a3a90  f3 ff ff 8a                                      bhi #0x4a3a64
004a3a94  07 30 95 e7                                      ldr r3, [r5, r7]
004a3a98  00 30 93 e5                                      ldr r3, [r3]
004a3a9c  00 00 53 e3                                      cmp r3, #0
004a3aa0  11 00 00 0a                                      beq #0x4a3aec
004a3aa4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a3aa8  0c 00 a0 e3                                      mov r0, #0xc
004a3aac  90 32 20 e0                                      mla r0, r0, r2, r3
004a3ab0  00 00 53 e1                                      cmp r3, r0
004a3ab4  01 00 00 1a                                      bne #0x4a3ac0
004a3ab8  09 00 00 ea                                      b #0x4a3ae4
004a3abc  04 00 a0 e1                                      mov r0, r4
004a3ac0  0c 40 40 e2                                      sub r4, r0, #0xc
004a3ac4  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a3ac8  04 00 a0 e1                                      mov r0, r4
004a3acc  0f e0 a0 e1                                      mov lr, pc
004a3ad0  00 f0 93 e5                                      ldr pc, [r3]
004a3ad4  07 30 95 e7                                      ldr r3, [r5, r7]
004a3ad8  00 00 93 e5                                      ldr r0, [r3]
004a3adc  04 00 50 e1                                      cmp r0, r4
004a3ae0  f5 ff ff 1a                                      bne #0x4a3abc
004a3ae4  08 00 40 e2                                      sub r0, r0, #8
004a3ae8  54 b2 f9 eb                                      bl #0x310440
004a3aec  07 30 95 e7                                      ldr r3, [r5, r7]
004a3af0  00 20 a0 e3                                      mov r2, #0
004a3af4  00 20 83 e5                                      str r2, [r3]
004a3af8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a3afc  60 10 4f 00 90 3f 00 00 60 43 00 00              .byte 0x60, 0x10, 0x4f, 0x00, 0x90, 0x3f, 0x00, 0x00, 0x60, 0x43, 0x00, 0x00

; FUNCTION 0x004b32d4, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::StrID_Languages
; alias: _ZN6Arrays15StrID_Languages9readNamesEP11IStreamBase
; demangled: Arrays::StrID_Languages::readNames(IStreamBase*)
; decoder-mode: arm
004b32d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b32d8  00 70 a0 e1                                      mov r7, r0
004b32dc  1c d0 4d e2                                      sub sp, sp, #0x1c
004b32e0  a8 c1 ff eb                                      bl #0x4a3988
004b32e4  07 00 a0 e1                                      mov r0, r7
004b32e8  e8 81 f9 eb                                      bl #0x313a90
004b32ec  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b32f0  01 30 a0 e3                                      mov r3, #1
004b32f4  00 00 53 e3                                      cmp r3, #0
004b32f8  06 60 8f e0                                      add r6, pc, r6
004b32fc  14 00 8d e5                                      str r0, [sp, #0x14]
004b3300  0c 30 8d e5                                      str r3, [sp, #0xc]
004b3304  12 00 00 1a                                      bne #0x4b3354
004b3308  14 30 8d e2                                      add r3, sp, #0x14
004b330c  02 20 83 e2                                      add r2, r3, #2
004b3310  01 30 83 e2                                      add r3, r3, #1
004b3314  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3318  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b331c  03 00 52 e1                                      cmp r2, r3
004b3320  02 40 a0 e1                                      mov r4, r2
004b3324  01 10 20 e0                                      eor r1, r0, r1
004b3328  01 10 43 e5                                      strb r1, [r3, #-1]
004b332c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b3330  00 10 21 e0                                      eor r1, r1, r0
004b3334  01 10 c2 e5                                      strb r1, [r2, #1]
004b3338  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b333c  01 20 42 e2                                      sub r2, r2, #1
004b3340  00 10 21 e0                                      eor r1, r1, r0
004b3344  01 10 43 e5                                      strb r1, [r3, #-1]
004b3348  01 30 83 e2                                      add r3, r3, #1
004b334c  f0 ff ff 8a                                      bhi #0x4b3314
004b3350  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b3354  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b3358  03 30 96 e7                                      ldr r3, [r6, r3]
004b335c  00 30 93 e5                                      ldr r3, [r3]
004b3360  00 00 53 e1                                      cmp r3, r0
004b3364  01 00 00 0a                                      beq #0x4b3370
004b3368  1c d0 8d e2                                      add sp, sp, #0x1c
004b336c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b3370  00 01 a0 e1                                      lsl r0, r0, #2
004b3374  01 10 a0 e3                                      mov r1, #1
004b3378  7b 74 f9 eb                                      bl #0x31056c
004b337c  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b3380  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b3384  09 30 96 e7                                      ldr r3, [r6, sb]
004b3388  00 00 52 e3                                      cmp r2, #0
004b338c  00 00 83 e5                                      str r0, [r3]
004b3390  f4 ff ff 0a                                      beq #0x4b3368
004b3394  10 a0 8d e2                                      add sl, sp, #0x10
004b3398  01 80 a0 e3                                      mov r8, #1
004b339c  08 10 8a e0                                      add r1, sl, r8
004b33a0  02 30 8a e2                                      add r3, sl, #2
004b33a4  00 40 a0 e3                                      mov r4, #0
004b33a8  0a 00 8d e8                                      stm sp, {r1, r3}
004b33ac  07 00 a0 e1                                      mov r0, r7
004b33b0  0a 10 a0 e1                                      mov r1, sl
004b33b4  79 af fc eb                                      bl #0x3df1a0
004b33b8  00 00 58 e3                                      cmp r8, #0
004b33bc  0c 80 8d e5                                      str r8, [sp, #0xc]
004b33c0  0f 00 00 1a                                      bne #0x4b3404
004b33c4  00 30 9d e5                                      ldr r3, [sp]
004b33c8  04 20 9d e5                                      ldr r2, [sp, #4]
004b33cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b33d0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b33d4  03 00 52 e1                                      cmp r2, r3
004b33d8  01 10 20 e0                                      eor r1, r0, r1
004b33dc  01 10 43 e5                                      strb r1, [r3, #-1]
004b33e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b33e4  00 10 21 e0                                      eor r1, r1, r0
004b33e8  01 10 c2 e5                                      strb r1, [r2, #1]
004b33ec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b33f0  01 20 42 e2                                      sub r2, r2, #1
004b33f4  00 10 21 e0                                      eor r1, r1, r0
004b33f8  01 10 43 e5                                      strb r1, [r3, #-1]
004b33fc  01 30 83 e2                                      add r3, r3, #1
004b3400  f1 ff ff 8a                                      bhi #0x4b33cc
004b3404  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b3408  09 50 96 e7                                      ldr r5, [r6, sb]
004b340c  01 10 a0 e3                                      mov r1, #1
004b3410  01 00 80 e0                                      add r0, r0, r1
004b3414  00 b0 95 e5                                      ldr fp, [r5]
004b3418  53 74 f9 eb                                      bl #0x31056c
004b341c  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b3420  00 30 95 e5                                      ldr r3, [r5]
004b3424  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b3428  07 00 a0 e1                                      mov r0, r7
004b342c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b3430  00 30 a0 e3                                      mov r3, #0
004b3434  06 90 f9 eb                                      bl #0x317454
004b3438  00 30 95 e5                                      ldr r3, [r5]
004b343c  00 10 a0 e3                                      mov r1, #0
004b3440  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b3444  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b3448  01 40 84 e2                                      add r4, r4, #1
004b344c  03 10 c2 e7                                      strb r1, [r2, r3]
004b3450  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b3454  04 00 53 e1                                      cmp r3, r4
004b3458  d3 ff ff 8a                                      bhi #0x4b33ac
004b345c  c1 ff ff ea                                      b #0x4b3368
; mapping-symbol data/literal pool
004b3460  98 17 4e 00 60 43 00 00 f8 24 00 00              .byte 0x98, 0x17, 0x4e, 0x00, 0x60, 0x43, 0x00, 0x00, 0xf8, 0x24, 0x00, 0x00

; FUNCTION 0x004b346c, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::StrID_Languages
; alias: _ZN6Arrays15StrID_Languages9skipNamesEP11IStreamBase
; demangled: Arrays::StrID_Languages::skipNames(IStreamBase*)
; decoder-mode: arm
004b346c  98 ff ff ea                                      b #0x4b32d4

; FUNCTION 0x004b53f8, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::StrID_Languages
; alias: _ZN6Arrays15StrID_Languages4readEP11IStreamBase
; demangled: Arrays::StrID_Languages::read(IStreamBase*)
; decoder-mode: arm
004b53f8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b53fc  0c d0 4d e2                                      sub sp, sp, #0xc
004b5400  00 a0 a0 e1                                      mov sl, r0
004b5404  a1 79 f9 eb                                      bl #0x313a90
004b5408  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b540c  01 30 a0 e3                                      mov r3, #1
004b5410  00 00 53 e3                                      cmp r3, #0
004b5414  04 00 8d e5                                      str r0, [sp, #4]
004b5418  00 30 8d e5                                      str r3, [sp]
004b541c  06 60 8f e0                                      add r6, pc, r6
004b5420  10 00 00 1a                                      bne #0x4b5468
004b5424  04 30 8d e2                                      add r3, sp, #4
004b5428  02 20 83 e2                                      add r2, r3, #2
004b542c  01 30 83 e2                                      add r3, r3, #1
004b5430  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5434  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b5438  03 00 52 e1                                      cmp r2, r3
004b543c  01 10 20 e0                                      eor r1, r0, r1
004b5440  01 10 43 e5                                      strb r1, [r3, #-1]
004b5444  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b5448  00 10 21 e0                                      eor r1, r1, r0
004b544c  01 10 c2 e5                                      strb r1, [r2, #1]
004b5450  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b5454  01 20 42 e2                                      sub r2, r2, #1
004b5458  00 10 21 e0                                      eor r1, r1, r0
004b545c  01 10 43 e5                                      strb r1, [r3, #-1]
004b5460  01 30 83 e2                                      add r3, r3, #1
004b5464  f1 ff ff 8a                                      bhi #0x4b5430
004b5468  6d b9 ff eb                                      bl #0x4a3a24
004b546c  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b5470  04 40 9d e5                                      ldr r4, [sp, #4]
004b5474  0c 50 a0 e3                                      mov r5, #0xc
004b5478  07 30 96 e7                                      ldr r3, [r6, r7]
004b547c  95 04 00 e0                                      mul r0, r5, r4
004b5480  00 40 83 e5                                      str r4, [r3]
004b5484  08 00 80 e2                                      add r0, r0, #8
004b5488  01 10 a0 e3                                      mov r1, #1
004b548c  36 6c f9 eb                                      bl #0x31056c
004b5490  00 00 54 e3                                      cmp r4, #0
004b5494  00 50 80 e5                                      str r5, [r0]
004b5498  04 40 80 e5                                      str r4, [r0, #4]
004b549c  08 30 80 e2                                      add r3, r0, #8
004b54a0  0a 00 00 0a                                      beq #0x4b54d0
004b54a4  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b54a8  00 20 a0 e3                                      mov r2, #0
004b54ac  02 c0 a0 e1                                      mov ip, r2
004b54b0  01 10 96 e7                                      ldr r1, [r6, r1]
004b54b4  08 10 81 e2                                      add r1, r1, #8
004b54b8  01 20 82 e2                                      add r2, r2, #1
004b54bc  04 00 52 e1                                      cmp r2, r4
004b54c0  08 10 80 e5                                      str r1, [r0, #8]
004b54c4  10 c0 80 e5                                      str ip, [r0, #0x10]
004b54c8  0c 00 80 e2                                      add r0, r0, #0xc
004b54cc  f9 ff ff 1a                                      bne #0x4b54b8
004b54d0  07 20 96 e7                                      ldr r2, [r6, r7]
004b54d4  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b54d8  00 10 92 e5                                      ldr r1, [r2]
004b54dc  08 20 96 e7                                      ldr r2, [r6, r8]
004b54e0  00 00 51 e3                                      cmp r1, #0
004b54e4  00 30 82 e5                                      str r3, [r2]
004b54e8  0f 00 00 0a                                      beq #0x4b552c
004b54ec  00 40 a0 e3                                      mov r4, #0
004b54f0  04 50 a0 e1                                      mov r5, r4
004b54f4  01 00 00 ea                                      b #0x4b5500
004b54f8  08 30 96 e7                                      ldr r3, [r6, r8]
004b54fc  00 30 93 e5                                      ldr r3, [r3]
004b5500  04 00 83 e0                                      add r0, r3, r4
004b5504  0a 10 a0 e1                                      mov r1, sl
004b5508  04 30 93 e7                                      ldr r3, [r3, r4]
004b550c  0f e0 a0 e1                                      mov lr, pc
004b5510  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b5514  07 30 96 e7                                      ldr r3, [r6, r7]
004b5518  01 50 85 e2                                      add r5, r5, #1
004b551c  0c 40 84 e2                                      add r4, r4, #0xc
004b5520  00 30 93 e5                                      ldr r3, [r3]
004b5524  05 00 53 e1                                      cmp r3, r5
004b5528  f2 ff ff 8a                                      bhi #0x4b54f8
004b552c  0c d0 8d e2                                      add sp, sp, #0xc
004b5530  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b5534  74 f6 4d 00 60 43 00 00 28 12 00 00 90 3f 00 00  .byte 0x74, 0xf6, 0x4d, 0x00, 0x60, 0x43, 0x00, 0x00, 0x28, 0x12, 0x00, 0x00, 0x90, 0x3f, 0x00, 0x00
