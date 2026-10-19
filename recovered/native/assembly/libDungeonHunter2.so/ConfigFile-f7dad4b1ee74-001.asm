; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0089bed0, declared_size=4, range_size=4, mode=arm
; class-group: ConfigFile
; alias: _ZN10ConfigFileC2Ev
; demangled: ConfigFile::ConfigFile()
; decoder-mode: arm
0089bed0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089bed4, declared_size=4, range_size=4, mode=arm
; class-group: ConfigFile
; alias: _ZN10ConfigFileC1Ev
; demangled: ConfigFile::ConfigFile()
; decoder-mode: arm
0089bed4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089bed8, declared_size=4, range_size=4, mode=arm
; class-group: ConfigFile
; alias: _ZN10ConfigFileD2Ev
; demangled: ConfigFile::~ConfigFile()
; decoder-mode: arm
0089bed8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089bedc, declared_size=4, range_size=4, mode=arm
; class-group: ConfigFile
; alias: _ZN10ConfigFileD1Ev
; demangled: ConfigFile::~ConfigFile()
; decoder-mode: arm
0089bedc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089bee0, declared_size=8, range_size=8, mode=arm
; class-group: ConfigFile
; alias: _ZN10ConfigFile6EncodeEPKcS1_S1_Pc
; demangled: ConfigFile::Encode(char const*, char const*, char const*, char*)
; decoder-mode: arm
0089bee0  00 00 a0 e3                                      mov r0, #0
0089bee4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089bee8, declared_size=8, range_size=8, mode=arm
; class-group: ConfigFile
; alias: _ZN10ConfigFile4SeedEv
; demangled: ConfigFile::Seed()
; decoder-mode: arm
0089bee8  00 00 a0 e3                                      mov r0, #0
0089beec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0089bef0, declared_size=196, range_size=196, mode=arm
; class-group: ConfigFile
; alias: _ZN10ConfigFile3XOREPKcS1_Pc
; demangled: ConfigFile::XOR(char const*, char const*, char*)
; decoder-mode: arm
0089bef0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0089bef4  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
0089bef8  b0 50 9f e5                                      ldr r5, [pc, #0xb0]
0089befc  02 60 a0 e1                                      mov r6, r2
0089bf00  04 40 8f e0                                      add r4, pc, r4
0089bf04  05 20 94 e7                                      ldr r2, [r4, r5]
0089bf08  83 df 4d e2                                      sub sp, sp, #0x20c
0089bf0c  06 00 a0 e1                                      mov r0, r6
0089bf10  00 20 92 e5                                      ldr r2, [r2]
0089bf14  01 70 a0 e1                                      mov r7, r1
0089bf18  03 a0 a0 e1                                      mov sl, r3
0089bf1c  04 22 8d e5                                      str r2, [sp, #0x204]
0089bf20  cb c7 e9 eb                                      bl #0x30de54
0089bf24  00 80 a0 e1                                      mov r8, r0
0089bf28  07 00 a0 e1                                      mov r0, r7
0089bf2c  c8 c7 e9 eb                                      bl #0x30de54
0089bf30  00 00 50 e3                                      cmp r0, #0
0089bf34  00 20 a0 01                                      moveq r2, r0
0089bf38  04 10 8d 02                                      addeq r1, sp, #4
0089bf3c  0c 00 00 0a                                      beq #0x89bf74
0089bf40  00 20 a0 e3                                      mov r2, #0
0089bf44  02 30 a0 e1                                      mov r3, r2
0089bf48  04 10 8d e2                                      add r1, sp, #4
0089bf4c  03 e0 d6 e7                                      ldrb lr, [r6, r3]
0089bf50  02 c0 d7 e7                                      ldrb ip, [r7, r2]
0089bf54  01 30 83 e2                                      add r3, r3, #1
0089bf58  03 00 58 e1                                      cmp r8, r3
0089bf5c  0c c0 2e e0                                      eor ip, lr, ip
0089bf60  02 c0 c1 e7                                      strb ip, [r1, r2]
0089bf64  01 20 82 e2                                      add r2, r2, #1
0089bf68  00 30 a0 93                                      movls r3, #0
0089bf6c  00 00 52 e1                                      cmp r2, r0
0089bf70  f5 ff ff 1a                                      bne #0x89bf4c
0089bf74  82 3f 8d e2                                      add r3, sp, #0x208
0089bf78  02 20 83 e0                                      add r2, r3, r2
0089bf7c  00 30 a0 e3                                      mov r3, #0
0089bf80  04 32 42 e5                                      strb r3, [r2, #-0x204]
0089bf84  0a 00 a0 e1                                      mov r0, sl
0089bf88  64 c9 e9 eb                                      bl #0x30e520
0089bf8c  05 30 94 e7                                      ldr r3, [r4, r5]
0089bf90  04 22 9d e5                                      ldr r2, [sp, #0x204]
0089bf94  00 30 93 e5                                      ldr r3, [r3]
0089bf98  03 00 52 e1                                      cmp r2, r3
0089bf9c  01 00 00 1a                                      bne #0x89bfa8
0089bfa0  83 df 8d e2                                      add sp, sp, #0x20c
0089bfa4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0089bfa8  d8 c8 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089bfac  90 8b 0f 00 ac 40 00 00                          .byte 0x90, 0x8b, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0089bfb4, declared_size=744, range_size=744, mode=arm
; class-group: ConfigFile
; alias: _ZN10ConfigFile6DecodeEPKcPcS2_S2_
; demangled: ConfigFile::Decode(char const*, char*, char*, char*)
; decoder-mode: arm
0089bfb4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0089bfb8  a0 b2 9f e5                                      ldr fp, [pc, #0x2a0]
0089bfbc  a0 c2 9f e5                                      ldr ip, [pc, #0x2a0]
0089bfc0  c7 df 4d e2                                      sub sp, sp, #0x31c
0089bfc4  0b b0 8f e0                                      add fp, pc, fp
0089bfc8  0c c0 8d e5                                      str ip, [sp, #0xc]
0089bfcc  0c c0 9b e7                                      ldr ip, [fp, ip]
0089bfd0  01 90 a0 e1                                      mov sb, r1
0089bfd4  00 1c d1 e5                                      ldrb r1, [r1, #0xc00]
0089bfd8  08 00 8d e5                                      str r0, [sp, #8]
0089bfdc  00 00 9c e5                                      ldr r0, [ip]
0089bfe0  00 00 51 e3                                      cmp r1, #0
0089bfe4  02 70 a0 e1                                      mov r7, r2
0089bfe8  14 03 8d e5                                      str r0, [sp, #0x314]
0089bfec  40 63 9d e5                                      ldr r6, [sp, #0x340]
0089bff0  04 2c d9 e5                                      ldrb r2, [sb, #0xc04]
0089bff4  07 00 00 0a                                      beq #0x89c018
0089bff8  ff e0 02 e2                                      and lr, r2, #0xff
0089bffc  02 0a 89 e2                                      add r0, sb, #0x2000
0089c000  00 20 a0 e3                                      mov r2, #0
0089c004  0e c0 d0 e6                                      ldrb ip, [r0], lr
0089c008  02 c0 c3 e7                                      strb ip, [r3, r2]
0089c00c  01 20 82 e2                                      add r2, r2, #1
0089c010  01 00 52 e1                                      cmp r2, r1
0089c014  fa ff ff 1a                                      bne #0x89c004
0089c018  85 8f 8d e2                                      add r8, sp, #0x214
0089c01c  00 10 a0 e3                                      mov r1, #0
0089c020  08 00 a0 e1                                      mov r0, r8
0089c024  ff 20 a0 e3                                      mov r2, #0xff
0089c028  0c c9 e9 eb                                      bl #0x30e460
0089c02c  34 12 9f e5                                      ldr r1, [pc, #0x234]
0089c030  00 30 a0 e3                                      mov r3, #0
0089c034  01 10 8f e0                                      add r1, pc, r1
0089c038  44 00 81 e2                                      add r0, r1, #0x44
0089c03c  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
0089c040  02 20 d1 e7                                      ldrb r2, [r1, r2]
0089c044  03 20 c8 e7                                      strb r2, [r8, r3]
0089c048  01 30 83 e2                                      add r3, r3, #1
0089c04c  08 00 53 e3                                      cmp r3, #8
0089c050  f9 ff ff 1a                                      bne #0x89c03c
0089c054  10 52 9f e5                                      ldr r5, [pc, #0x210]
0089c058  10 32 9f e5                                      ldr r3, [pc, #0x210]
0089c05c  10 e2 9f e5                                      ldr lr, [pc, #0x210]
0089c060  05 c0 9b e7                                      ldr ip, [fp, r5]
0089c064  03 00 9b e7                                      ldr r0, [fp, r3]
0089c068  00 40 a0 e3                                      mov r4, #0
0089c06c  0e e0 8f e0                                      add lr, pc, lr
0089c070  04 a0 a0 e1                                      mov sl, r4
0089c074  00 30 a0 e3                                      mov r3, #0
0089c078  04 00 00 ea                                      b #0x89c090
0089c07c  02 20 de e7                                      ldrb r2, [lr, r2]
0089c080  03 20 cc e7                                      strb r2, [ip, r3]
0089c084  01 30 83 e2                                      add r3, r3, #1
0089c088  ff 00 53 e3                                      cmp r3, #0xff
0089c08c  07 00 00 0a                                      beq #0x89c0b0
0089c090  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
0089c094  02 1c a0 e1                                      lsl r1, r2, #0x18
0089c098  2a 04 51 e3                                      cmp r1, #0x2a000000
0089c09c  f6 ff ff 1a                                      bne #0x89c07c
0089c0a0  ff 20 a0 e3                                      mov r2, #0xff
0089c0a4  94 32 22 e0                                      mla r2, r4, r2, r3
0089c0a8  05 30 9b e7                                      ldr r3, [fp, r5]
0089c0ac  02 a0 c3 e7                                      strb sl, [r3, r2]
0089c0b0  01 40 84 e2                                      add r4, r4, #1
0089c0b4  03 00 54 e3                                      cmp r4, #3
0089c0b8  ff c0 8c e2                                      add ip, ip, #0xff
0089c0bc  20 00 80 e2                                      add r0, r0, #0x20
0089c0c0  eb ff ff 1a                                      bne #0x89c074
0089c0c4  12 3b a0 e3                                      mov r3, #0x4800
0089c0c8  03 00 d9 e7                                      ldrb r0, [sb, r3]
0089c0cc  04 30 83 e2                                      add r3, r3, #4
0089c0d0  03 30 d9 e7                                      ldrb r3, [sb, r3]
0089c0d4  00 00 50 e3                                      cmp r0, #0
0089c0d8  07 00 00 0a                                      beq #0x89c0fc
0089c0dc  ff c0 03 e2                                      and ip, r3, #0xff
0089c0e0  17 2b 89 e2                                      add r2, sb, #0x5c00
0089c0e4  00 30 a0 e3                                      mov r3, #0
0089c0e8  0c 10 d2 e6                                      ldrb r1, [r2], ip
0089c0ec  03 10 c7 e7                                      strb r1, [r7, r3]
0089c0f0  01 30 83 e2                                      add r3, r3, #1
0089c0f4  00 00 53 e1                                      cmp r3, r0
0089c0f8  fa ff ff 1a                                      bne #0x89c0e8
0089c0fc  19 3a a0 e3                                      mov r3, #0x19000
0089c100  01 30 83 e2                                      add r3, r3, #1
0089c104  03 40 d9 e7                                      ldrb r4, [sb, r3]
0089c108  19 3a a0 e3                                      mov r3, #0x19000
0089c10c  03 20 d9 e7                                      ldrb r2, [sb, r3]
0089c110  14 50 8d e2                                      add r5, sp, #0x14
0089c114  04 30 83 e2                                      add r3, r3, #4
0089c118  04 44 82 e1                                      orr r4, r2, r4, lsl #8
0089c11c  05 00 a0 e1                                      mov r0, r5
0089c120  00 10 a0 e3                                      mov r1, #0
0089c124  02 2c a0 e3                                      mov r2, #0x200
0089c128  03 a0 d9 e7                                      ldrb sl, [sb, r3]
0089c12c  cb c8 e9 eb                                      bl #0x30e460
0089c130  00 00 54 e3                                      cmp r4, #0
0089c134  34 00 00 da                                      ble #0x89c20c
0089c138  ff a0 0a e2                                      and sl, sl, #0xff
0089c13c  66 9b 89 e2                                      add sb, sb, #0x19800
0089c140  00 30 a0 e3                                      mov r3, #0
0089c144  0a 20 d9 e6                                      ldrb r2, [sb], sl
0089c148  03 20 c5 e7                                      strb r2, [r5, r3]
0089c14c  01 30 83 e2                                      add r3, r3, #1
0089c150  04 00 53 e1                                      cmp r3, r4
0089c154  fa ff ff 1a                                      bne #0x89c144
0089c158  08 20 a0 e1                                      mov r2, r8
0089c15c  08 00 9d e5                                      ldr r0, [sp, #8]
0089c160  05 10 a0 e1                                      mov r1, r5
0089c164  05 30 a0 e1                                      mov r3, r5
0089c168  60 ff ff eb                                      bl #0x89bef0
0089c16c  08 00 9d e5                                      ldr r0, [sp, #8]
0089c170  05 10 a0 e1                                      mov r1, r5
0089c174  07 20 a0 e1                                      mov r2, r7
0089c178  06 30 a0 e1                                      mov r3, r6
0089c17c  5b ff ff eb                                      bl #0x89bef0
0089c180  f0 00 9f e5                                      ldr r0, [pc, #0xf0]
0089c184  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0089c188  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0089c18c  00 00 8f e0                                      add r0, pc, r0
0089c190  01 10 8f e0                                      add r1, pc, r1
0089c194  03 30 8f e0                                      add r3, pc, r3
0089c198  d7 20 a0 e3                                      mov r2, #0xd7
0089c19c  00 60 8d e5                                      str r6, [sp]
0089c1a0  37 c7 e9 eb                                      bl #0x30de84
0089c1a4  00 30 a0 e3                                      mov r3, #0
0089c1a8  25 10 a0 e3                                      mov r1, #0x25
0089c1ac  d3 20 96 e1                                      ldrsb r2, [r6, r3]
0089c1b0  23 00 52 e3                                      cmp r2, #0x23
0089c1b4  03 10 c6 07                                      strbeq r1, [r6, r3]
0089c1b8  01 30 83 e2                                      add r3, r3, #1
0089c1bc  04 00 53 e1                                      cmp r3, r4
0089c1c0  f9 ff ff 1a                                      bne #0x89c1ac
0089c1c4  b8 00 9f e5                                      ldr r0, [pc, #0xb8]
0089c1c8  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0089c1cc  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0089c1d0  df 20 a0 e3                                      mov r2, #0xdf
0089c1d4  01 10 8f e0                                      add r1, pc, r1
0089c1d8  03 30 8f e0                                      add r3, pc, r3
0089c1dc  00 00 8f e0                                      add r0, pc, r0
0089c1e0  00 70 8d e5                                      str r7, [sp]
0089c1e4  26 c7 e9 eb                                      bl #0x30de84
0089c1e8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0089c1ec  14 23 9d e5                                      ldr r2, [sp, #0x314]
0089c1f0  00 00 a0 e3                                      mov r0, #0
0089c1f4  01 30 9b e7                                      ldr r3, [fp, r1]
0089c1f8  00 30 93 e5                                      ldr r3, [r3]
0089c1fc  03 00 52 e1                                      cmp r2, r3
0089c200  15 00 00 1a                                      bne #0x89c25c
0089c204  c7 df 8d e2                                      add sp, sp, #0x31c
0089c208  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0089c20c  08 20 a0 e1                                      mov r2, r8
0089c210  08 00 9d e5                                      ldr r0, [sp, #8]
0089c214  05 10 a0 e1                                      mov r1, r5
0089c218  05 30 a0 e1                                      mov r3, r5
0089c21c  33 ff ff eb                                      bl #0x89bef0
0089c220  08 00 9d e5                                      ldr r0, [sp, #8]
0089c224  05 10 a0 e1                                      mov r1, r5
0089c228  07 20 a0 e1                                      mov r2, r7
0089c22c  06 30 a0 e1                                      mov r3, r6
0089c230  2e ff ff eb                                      bl #0x89bef0
0089c234  54 00 9f e5                                      ldr r0, [pc, #0x54]
0089c238  54 10 9f e5                                      ldr r1, [pc, #0x54]
0089c23c  54 30 9f e5                                      ldr r3, [pc, #0x54]
0089c240  d7 20 a0 e3                                      mov r2, #0xd7
0089c244  01 10 8f e0                                      add r1, pc, r1
0089c248  03 30 8f e0                                      add r3, pc, r3
0089c24c  00 00 8f e0                                      add r0, pc, r0
0089c250  00 60 8d e5                                      str r6, [sp]
0089c254  0a c7 e9 eb                                      bl #0x30de84
0089c258  d9 ff ff ea                                      b #0x89c1c4
0089c25c  2b c8 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089c260  cc 8a 0f 00 ac 40 00 00 dc 89 07 00 e0 13 00 00  .byte 0xcc, 0x8a, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x89, 0x07, 0x00, 0xe0, 0x13, 0x00, 0x00
0089c270  68 36 00 00 a4 89 07 00 ec 88 07 00 f8 88 07 00  .byte 0x68, 0x36, 0x00, 0x00, 0xa4, 0x89, 0x07, 0x00, 0xec, 0x88, 0x07, 0x00, 0xf8, 0x88, 0x07, 0x00
0089c280  34 89 07 00 9c 88 07 00 b4 88 07 00 f8 88 07 00  .byte 0x34, 0x89, 0x07, 0x00, 0x9c, 0x88, 0x07, 0x00, 0xb4, 0x88, 0x07, 0x00, 0xf8, 0x88, 0x07, 0x00
0089c290  2c 88 07 00 44 88 07 00 80 88 07 00              .byte 0x2c, 0x88, 0x07, 0x00, 0x44, 0x88, 0x07, 0x00, 0x80, 0x88, 0x07, 0x00
