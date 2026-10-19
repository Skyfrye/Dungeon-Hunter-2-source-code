; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00322bc8, declared_size=464, range_size=464, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core14fast_atof_moveEPKcRf
; demangled: glitch::core::fast_atof_move(char const*, float&)
; decoder-mode: arm
00322bc8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00322bcc  0c d0 4d e2                                      sub sp, sp, #0xc
00322bd0  04 00 8d e5                                      str r0, [sp, #4]
00322bd4  00 40 d0 e5                                      ldrb r4, [r0]
00322bd8  01 60 a0 e1                                      mov r6, r1
00322bdc  2d 00 54 e3                                      cmp r4, #0x2d
00322be0  01 00 80 02                                      addeq r0, r0, #1
00322be4  04 00 8d 05                                      streq r0, [sp, #4]
00322be8  00 40 d0 05                                      ldrbeq r4, [r0]
00322bec  00 70 a0 13                                      movne r7, #0
00322bf0  01 70 a0 03                                      moveq r7, #1
00322bf4  30 30 44 e2                                      sub r3, r4, #0x30
00322bf8  73 30 ef e6                                      uxtb r3, r3
00322bfc  09 00 53 e3                                      cmp r3, #9
00322c00  00 80 a0 81                                      movhi r8, r0
00322c04  00 00 a0 83                                      movhi r0, #0
00322c08  0b 00 00 8a                                      bhi #0x322c3c
00322c0c  00 80 a0 e1                                      mov r8, r0
00322c10  74 40 ef e6                                      uxtb r4, r4
00322c14  00 00 a0 e3                                      mov r0, #0
00322c18  0a 20 a0 e3                                      mov r2, #0xa
00322c1c  74 30 af e6                                      sxtb r3, r4
00322c20  01 40 f8 e5                                      ldrb r4, [r8, #1]!
00322c24  92 30 20 e0                                      mla r0, r2, r0, r3
00322c28  30 30 44 e2                                      sub r3, r4, #0x30
00322c2c  73 30 ef e6                                      uxtb r3, r3
00322c30  09 00 53 e3                                      cmp r3, #9
00322c34  30 00 40 e2                                      sub r0, r0, #0x30
00322c38  f7 ff ff 9a                                      bls #0x322c1c
00322c3c  04 80 8d e5                                      str r8, [sp, #4]
00322c40  a6 ad ff eb                                      bl #0x30e2e0
00322c44  00 40 d8 e5                                      ldrb r4, [r8]
00322c48  00 50 a0 e1                                      mov r5, r0
00322c4c  2e 00 54 e3                                      cmp r4, #0x2e
00322c50  05 00 00 0a                                      beq #0x322c6c
00322c54  00 00 57 e3                                      cmp r7, #0
00322c58  02 51 85 12                                      addne r5, r5, #0x80000000
00322c5c  00 50 86 e5                                      str r5, [r6]
00322c60  04 00 9d e5                                      ldr r0, [sp, #4]
00322c64  0c d0 8d e2                                      add sp, sp, #0xc
00322c68  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00322c6c  01 40 88 e2                                      add r4, r8, #1
00322c70  04 40 8d e5                                      str r4, [sp, #4]
00322c74  01 30 d8 e5                                      ldrb r3, [r8, #1]
00322c78  30 20 43 e2                                      sub r2, r3, #0x30
00322c7c  72 20 ef e6                                      uxtb r2, r2
00322c80  09 00 52 e3                                      cmp r2, #9
00322c84  00 a0 a0 83                                      movhi sl, #0
00322c88  0a 00 a0 81                                      movhi r0, sl
00322c8c  0d 00 00 8a                                      bhi #0x322cc8
00322c90  00 00 a0 e3                                      mov r0, #0
00322c94  0a 10 a0 e3                                      mov r1, #0xa
00322c98  73 20 af e6                                      sxtb r2, r3
00322c9c  02 30 d8 e5                                      ldrb r3, [r8, #2]
00322ca0  91 20 20 e0                                      mla r0, r1, r0, r2
00322ca4  30 20 43 e2                                      sub r2, r3, #0x30
00322ca8  72 20 ef e6                                      uxtb r2, r2
00322cac  09 00 52 e3                                      cmp r2, #9
00322cb0  30 00 40 e2                                      sub r0, r0, #0x30
00322cb4  01 80 88 e2                                      add r8, r8, #1
00322cb8  f6 ff ff 9a                                      bls #0x322c98
00322cbc  01 80 88 e2                                      add r8, r8, #1
00322cc0  08 a0 64 e0                                      rsb sl, r4, r8
00322cc4  08 40 a0 e1                                      mov r4, r8
00322cc8  84 ad ff eb                                      bl #0x30e2e0
00322ccc  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00322cd0  03 30 8f e0                                      add r3, pc, r3
00322cd4  0a 11 93 e7                                      ldr r1, [r3, sl, lsl #2]
00322cd8  23 b0 ff eb                                      bl #0x30ed6c
00322cdc  00 10 a0 e1                                      mov r1, r0
00322ce0  05 00 a0 e1                                      mov r0, r5
00322ce4  ae af ff eb                                      bl #0x30eba4
00322ce8  04 40 8d e5                                      str r4, [sp, #4]
00322cec  d0 30 d4 e1                                      ldrsb r3, [r4]
00322cf0  00 50 a0 e1                                      mov r5, r0
00322cf4  65 00 53 e3                                      cmp r3, #0x65
00322cf8  d5 ff ff 1a                                      bne #0x322c54
00322cfc  01 30 84 e2                                      add r3, r4, #1
00322d00  04 30 8d e5                                      str r3, [sp, #4]
00322d04  01 20 d4 e5                                      ldrb r2, [r4, #1]
00322d08  2d 00 52 e3                                      cmp r2, #0x2d
00322d0c  00 40 a0 13                                      movne r4, #0
00322d10  01 40 a0 03                                      moveq r4, #1
00322d14  00 00 54 e3                                      cmp r4, #0
00322d18  01 30 83 12                                      addne r3, r3, #1
00322d1c  04 30 8d 15                                      strne r3, [sp, #4]
00322d20  00 20 d3 15                                      ldrbne r2, [r3]
00322d24  30 10 42 e2                                      sub r1, r2, #0x30
00322d28  71 10 ef e6                                      uxtb r1, r1
00322d2c  09 00 51 e3                                      cmp r1, #9
00322d30  00 00 a0 83                                      movhi r0, #0
00322d34  09 00 00 8a                                      bhi #0x322d60
00322d38  00 00 a0 e3                                      mov r0, #0
00322d3c  0a c0 a0 e3                                      mov ip, #0xa
00322d40  72 10 af e6                                      sxtb r1, r2
00322d44  01 20 f3 e5                                      ldrb r2, [r3, #1]!
00322d48  9c 10 20 e0                                      mla r0, ip, r0, r1
00322d4c  30 10 42 e2                                      sub r1, r2, #0x30
00322d50  71 10 ef e6                                      uxtb r1, r1
00322d54  09 00 51 e3                                      cmp r1, #9
00322d58  30 00 40 e2                                      sub r0, r0, #0x30
00322d5c  f7 ff ff 9a                                      bls #0x322d40
00322d60  04 30 8d e5                                      str r3, [sp, #4]
00322d64  5d ad ff eb                                      bl #0x30e2e0
00322d68  00 00 54 e3                                      cmp r4, #0
00322d6c  00 10 a0 e1                                      mov r1, r0
00322d70  02 11 80 12                                      addne r1, r0, #0x80000000
00322d74  41 04 a0 e3                                      mov r0, #0x41000000
00322d78  02 06 80 e2                                      add r0, r0, #0x200000
00322d7c  79 af ff eb                                      bl #0x30eb68
00322d80  00 10 a0 e1                                      mov r1, r0
00322d84  05 00 a0 e1                                      mov r0, r5
00322d88  f7 af ff eb                                      bl #0x30ed6c
00322d8c  00 50 a0 e1                                      mov r5, r0
00322d90  af ff ff ea                                      b #0x322c54
; mapping-symbol data/literal pool
00322d94  cc bc 59 00                                      .byte 0xcc, 0xbc, 0x59, 0x00

; FUNCTION 0x00325f7c, declared_size=96, range_size=96, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core11int2stringwEi
; demangled: glitch::core::int2stringw(int)
; decoder-mode: arm
00325f7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00325f80  00 50 a0 e1                                      mov r5, r0
00325f84  08 d0 4d e2                                      sub sp, sp, #8
00325f88  44 00 a0 e3                                      mov r0, #0x44
00325f8c  01 60 a0 e1                                      mov r6, r1
00325f90  97 39 08 eb                                      bl #0x5345f4
00325f94  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00325f98  00 40 a0 e1                                      mov r4, r0
00325f9c  06 30 a0 e1                                      mov r3, r6
00325fa0  10 10 a0 e3                                      mov r1, #0x10
00325fa4  02 20 8f e0                                      add r2, pc, r2
00325fa8  7b a3 ff eb                                      bl #0x30ed9c
00325fac  05 00 a0 e1                                      mov r0, r5
00325fb0  04 10 a0 e1                                      mov r1, r4
00325fb4  04 20 8d e2                                      add r2, sp, #4
00325fb8  cf ff ff eb                                      bl #0x325efc
00325fbc  00 00 54 e3                                      cmp r4, #0
00325fc0  01 00 00 0a                                      beq #0x325fcc
00325fc4  04 00 a0 e1                                      mov r0, r4
00325fc8  ae 39 08 eb                                      bl #0x534688
00325fcc  05 00 a0 e1                                      mov r0, r5
00325fd0  08 d0 8d e2                                      add sp, sp, #8
00325fd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00325fd8  c4 8b 59 00                                      .byte 0xc4, 0x8b, 0x59, 0x00

; FUNCTION 0x00326070, declared_size=96, range_size=96, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core11int2stringcEi
; demangled: glitch::core::int2stringc(int)
; decoder-mode: arm
00326070  70 40 2d e9                                      push {r4, r5, r6, lr}
00326074  00 50 a0 e1                                      mov r5, r0
00326078  08 d0 4d e2                                      sub sp, sp, #8
0032607c  11 00 a0 e3                                      mov r0, #0x11
00326080  01 60 a0 e1                                      mov r6, r1
00326084  5a 39 08 eb                                      bl #0x5345f4
00326088  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0032608c  00 40 a0 e1                                      mov r4, r0
00326090  06 30 a0 e1                                      mov r3, r6
00326094  10 10 a0 e3                                      mov r1, #0x10
00326098  02 20 8f e0                                      add r2, pc, r2
0032609c  68 a0 ff eb                                      bl #0x30e244
003260a0  05 00 a0 e1                                      mov r0, r5
003260a4  04 10 a0 e1                                      mov r1, r4
003260a8  04 20 8d e2                                      add r2, sp, #4
003260ac  e2 ff ff eb                                      bl #0x32603c
003260b0  00 00 54 e3                                      cmp r4, #0
003260b4  01 00 00 0a                                      beq #0x3260c0
003260b8  04 00 a0 e1                                      mov r0, r4
003260bc  71 39 08 eb                                      bl #0x534688
003260c0  05 00 a0 e1                                      mov r0, r5
003260c4  08 d0 8d e2                                      add sp, sp, #8
003260c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003260cc  18 be 59 00                                      .byte 0x18, 0xbe, 0x59, 0x00

; FUNCTION 0x003262c8, declared_size=192, range_size=192, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core15stringc2stringwEPKc
; demangled: glitch::core::stringc2stringw(char const*)
; decoder-mode: arm
003262c8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003262cc  00 70 51 e2                                      subs r7, r1, #0
003262d0  54 d0 4d e2                                      sub sp, sp, #0x54
003262d4  00 40 a0 e1                                      mov r4, r0
003262d8  24 00 00 0a                                      beq #0x326370
003262dc  07 00 a0 e1                                      mov r0, r7
003262e0  db 9e ff eb                                      bl #0x30de54
003262e4  04 50 8d e2                                      add r5, sp, #4
003262e8  00 60 a0 e1                                      mov r6, r0
003262ec  01 10 86 e2                                      add r1, r6, #1
003262f0  05 00 a0 e1                                      mov r0, r5
003262f4  44 50 8d e5                                      str r5, [sp, #0x44]
003262f8  48 50 8d e5                                      str r5, [sp, #0x48]
003262fc  87 e9 ff eb                                      bl #0x320920
00326300  00 00 56 e3                                      cmp r6, #0
00326304  48 10 9d e5                                      ldr r1, [sp, #0x48]
00326308  06 00 00 da                                      ble #0x326328
0032630c  00 30 a0 e3                                      mov r3, #0
00326310  d3 20 97 e1                                      ldrsb r2, [r7, r3]
00326314  03 21 81 e7                                      str r2, [r1, r3, lsl #2]
00326318  01 30 83 e2                                      add r3, r3, #1
0032631c  06 00 53 e1                                      cmp r3, r6
00326320  fa ff ff 1a                                      bne #0x326310
00326324  03 11 81 e0                                      add r1, r1, r3, lsl #2
00326328  00 30 a0 e3                                      mov r3, #0
0032632c  44 10 8d e5                                      str r1, [sp, #0x44]
00326330  00 30 81 e5                                      str r3, [r1]
00326334  40 40 84 e5                                      str r4, [r4, #0x40]
00326338  44 40 84 e5                                      str r4, [r4, #0x44]
0032633c  04 00 a0 e1                                      mov r0, r4
00326340  48 10 9d e5                                      ldr r1, [sp, #0x48]
00326344  44 20 9d e5                                      ldr r2, [sp, #0x44]
00326348  b7 fe ff eb                                      bl #0x325e2c
0032634c  48 00 9d e5                                      ldr r0, [sp, #0x48]
00326350  05 00 50 e1                                      cmp r0, r5
00326354  02 00 00 0a                                      beq #0x326364
00326358  00 00 50 e3                                      cmp r0, #0
0032635c  00 00 00 0a                                      beq #0x326364
00326360  3a a8 ff eb                                      bl #0x310450
00326364  04 00 a0 e1                                      mov r0, r4
00326368  54 d0 8d e2                                      add sp, sp, #0x54
0032636c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00326370  0c 10 9f e5                                      ldr r1, [pc, #0xc]
00326374  4c 20 8d e2                                      add r2, sp, #0x4c
00326378  01 10 8f e0                                      add r1, pc, r1
0032637c  de fe ff eb                                      bl #0x325efc
00326380  f7 ff ff ea                                      b #0x326364
; mapping-symbol data/literal pool
00326384  98 88 59 00                                      .byte 0x98, 0x88, 0x59, 0x00

; FUNCTION 0x00326c58, declared_size=200, range_size=200, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core15stringw2stringcEPKw
; demangled: glitch::core::stringw2stringc(wchar_t const*)
; decoder-mode: arm
00326c58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00326c5c  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
00326c60  b0 70 9f e5                                      ldr r7, [pc, #0xb0]
00326c64  28 d0 4d e2                                      sub sp, sp, #0x28
00326c68  04 40 8f e0                                      add r4, pc, r4
00326c6c  07 30 94 e7                                      ldr r3, [r4, r7]
00326c70  00 80 51 e2                                      subs r8, r1, #0
00326c74  00 50 a0 e1                                      mov r5, r0
00326c78  00 30 93 e5                                      ldr r3, [r3]
00326c7c  24 30 8d e5                                      str r3, [sp, #0x24]
00326c80  1d 00 00 0a                                      beq #0x326cfc
00326c84  08 00 a0 e1                                      mov r0, r8
00326c88  fe 9f ff eb                                      bl #0x30ec88
00326c8c  0c 60 8d e2                                      add r6, sp, #0xc
00326c90  00 21 88 e0                                      add r2, r8, r0, lsl #2
00326c94  08 10 a0 e1                                      mov r1, r8
00326c98  06 00 a0 e1                                      mov r0, r6
00326c9c  04 30 8d e2                                      add r3, sp, #4
00326ca0  1c 60 8d e5                                      str r6, [sp, #0x1c]
00326ca4  20 60 8d e5                                      str r6, [sp, #0x20]
00326ca8  52 e7 ff eb                                      bl #0x3209f8
00326cac  10 50 85 e5                                      str r5, [r5, #0x10]
00326cb0  14 50 85 e5                                      str r5, [r5, #0x14]
00326cb4  05 00 a0 e1                                      mov r0, r5
00326cb8  20 10 9d e5                                      ldr r1, [sp, #0x20]
00326cbc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00326cc0  cb fc ff eb                                      bl #0x325ff4
00326cc4  20 00 9d e5                                      ldr r0, [sp, #0x20]
00326cc8  06 00 50 e1                                      cmp r0, r6
00326ccc  02 00 00 0a                                      beq #0x326cdc
00326cd0  00 00 50 e3                                      cmp r0, #0
00326cd4  00 00 00 0a                                      beq #0x326cdc
00326cd8  dc a5 ff eb                                      bl #0x310450
00326cdc  07 30 94 e7                                      ldr r3, [r4, r7]
00326ce0  24 20 9d e5                                      ldr r2, [sp, #0x24]
00326ce4  05 00 a0 e1                                      mov r0, r5
00326ce8  00 30 93 e5                                      ldr r3, [r3]
00326cec  03 00 52 e1                                      cmp r2, r3
00326cf0  06 00 00 1a                                      bne #0x326d10
00326cf4  28 d0 8d e2                                      add sp, sp, #0x28
00326cf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00326cfc  18 10 9f e5                                      ldr r1, [pc, #0x18]
00326d00  08 20 8d e2                                      add r2, sp, #8
00326d04  01 10 8f e0                                      add r1, pc, r1
00326d08  cb fc ff eb                                      bl #0x32603c
00326d0c  f2 ff ff ea                                      b #0x326cdc
00326d10  7e 9d ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00326d14  28 de 66 00 ac 40 00 00 04 4b 5a 00              .byte 0x28, 0xde, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x4b, 0x5a, 0x00

; FUNCTION 0x0037c164, declared_size=316, range_size=316, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core10hashStringEPKc
; demangled: glitch::core::hashString(char const*)
; decoder-mode: arm
0037c164  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037c168  18 41 9f e5                                      ldr r4, [pc, #0x118]
0037c16c  18 31 9f e5                                      ldr r3, [pc, #0x118]
0037c170  18 71 9f e5                                      ldr r7, [pc, #0x118]
0037c174  04 40 8f e0                                      add r4, pc, r4
0037c178  03 50 94 e7                                      ldr r5, [r4, r3]
0037c17c  07 30 94 e7                                      ldr r3, [r4, r7]
0037c180  24 d0 4d e2                                      sub sp, sp, #0x24
0037c184  00 20 95 e5                                      ldr r2, [r5]
0037c188  00 30 93 e5                                      ldr r3, [r3]
0037c18c  00 60 a0 e1                                      mov r6, r0
0037c190  01 00 12 e3                                      tst r2, #1
0037c194  1c 30 8d e5                                      str r3, [sp, #0x1c]
0037c198  29 00 00 0a                                      beq #0x37c244
0037c19c  04 50 8d e2                                      add r5, sp, #4
0037c1a0  06 00 a0 e1                                      mov r0, r6
0037c1a4  14 50 8d e5                                      str r5, [sp, #0x14]
0037c1a8  18 50 8d e5                                      str r5, [sp, #0x18]
0037c1ac  28 47 fe eb                                      bl #0x30de54
0037c1b0  06 10 a0 e1                                      mov r1, r6
0037c1b4  00 20 86 e0                                      add r2, r6, r0
0037c1b8  05 00 a0 e1                                      mov r0, r5
0037c1bc  49 55 fe eb                                      bl #0x3116e8
0037c1c0  18 00 9d e5                                      ldr r0, [sp, #0x18]
0037c1c4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0037c1c8  0c 00 50 e1                                      cmp r0, ip
0037c1cc  00 60 a0 03                                      moveq r6, #0
0037c1d0  0a 00 00 0a                                      beq #0x37c200
0037c1d4  00 20 a0 e1                                      mov r2, r0
0037c1d8  00 60 a0 e3                                      mov r6, #0
0037c1dc  d1 10 d2 e0                                      ldrsb r1, [r2], #1
0037c1e0  b9 39 07 e3                                      movw r3, #0x79b9
0037c1e4  37 3e 49 e3                                      movt r3, #0x9e37
0037c1e8  03 30 81 e0                                      add r3, r1, r3
0037c1ec  06 33 83 e0                                      add r3, r3, r6, lsl #6
0037c1f0  26 31 83 e0                                      add r3, r3, r6, lsr #2
0037c1f4  0c 00 52 e1                                      cmp r2, ip
0037c1f8  03 60 26 e0                                      eor r6, r6, r3
0037c1fc  f6 ff ff 1a                                      bne #0x37c1dc
0037c200  05 00 50 e1                                      cmp r0, r5
0037c204  06 00 00 0a                                      beq #0x37c224
0037c208  00 00 50 e3                                      cmp r0, #0
0037c20c  04 00 00 0a                                      beq #0x37c224
0037c210  04 10 9d e5                                      ldr r1, [sp, #4]
0037c214  01 10 60 e0                                      rsb r1, r0, r1
0037c218  80 00 51 e3                                      cmp r1, #0x80
0037c21c  16 00 00 8a                                      bhi #0x37c27c
0037c220  36 33 0e eb                                      bl #0x708f00
0037c224  07 30 94 e7                                      ldr r3, [r4, r7]
0037c228  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0037c22c  06 00 a0 e1                                      mov r0, r6
0037c230  00 30 93 e5                                      ldr r3, [r3]
0037c234  03 00 52 e1                                      cmp r2, r3
0037c238  11 00 00 1a                                      bne #0x37c284
0037c23c  24 d0 8d e2                                      add sp, sp, #0x24
0037c240  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0037c244  05 00 a0 e1                                      mov r0, r5
0037c248  47 49 fe eb                                      bl #0x30e76c
0037c24c  00 00 50 e3                                      cmp r0, #0
0037c250  d1 ff ff 0a                                      beq #0x37c19c
0037c254  05 00 a0 e1                                      mov r0, r5
0037c258  f7 49 fe eb                                      bl #0x30ea3c
0037c25c  30 30 9f e5                                      ldr r3, [pc, #0x30]
0037c260  03 00 94 e7                                      ldr r0, [r4, r3]
0037c264  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0037c268  03 10 94 e7                                      ldr r1, [r4, r3]
0037c26c  28 30 9f e5                                      ldr r3, [pc, #0x28]
0037c270  03 20 94 e7                                      ldr r2, [r4, r3]
0037c274  22 48 fe eb                                      bl #0x30e304
0037c278  c7 ff ff ea                                      b #0x37c19c
0037c27c  6f 50 fe eb                                      bl #0x310440
0037c280  e7 ff ff ea                                      b #0x37c224
0037c284  21 48 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037c288  1c 89 61 00 9c 49 00 00 ac 40 00 00 e4 16 00 00  .byte 0x1c, 0x89, 0x61, 0x00, 0x9c, 0x49, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x16, 0x00, 0x00
0037c298  24 27 00 00 90 18 00 00                          .byte 0x24, 0x27, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00534218, declared_size=28, range_size=28, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core24getProcessBufferHeapSizeEv
; demangled: glitch::core::getProcessBufferHeapSize()
; decoder-mode: arm
00534218  10 30 9f e5                                      ldr r3, [pc, #0x10]
0053421c  03 30 8f e0                                      add r3, pc, r3
00534220  00 20 93 e5                                      ldr r2, [r3]
00534224  04 00 93 e5                                      ldr r0, [r3, #4]
00534228  00 00 62 e0                                      rsb r0, r2, r0
0053422c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00534230  90 23 4c 00                                      .byte 0x90, 0x23, 0x4c, 0x00

; FUNCTION 0x00534234, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core35getProcessBufferHeapAvailableMemoryEv
; demangled: glitch::core::getProcessBufferHeapAvailableMemory()
; decoder-mode: arm
00534234  14 30 9f e5                                      ldr r3, [pc, #0x14]
00534238  03 30 8f e0                                      add r3, pc, r3
0053423c  05 00 93 e9                                      ldmib r3, {r0, r2}
00534240  00 00 62 e0                                      rsb r0, r2, r0
00534244  03 00 c0 e3                                      bic r0, r0, #3
00534248  08 00 40 e2                                      sub r0, r0, #8
0053424c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00534250  74 23 4c 00                                      .byte 0x74, 0x23, 0x4c, 0x00

; FUNCTION 0x00534254, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core32isProcessBufferHeapExcessEnabledEv
; demangled: glitch::core::isProcessBufferHeapExcessEnabled()
; decoder-mode: arm
00534254  08 30 9f e5                                      ldr r3, [pc, #8]
00534258  03 30 8f e0                                      add r3, pc, r3
0053425c  10 00 d3 e5                                      ldrb r0, [r3, #0x10]
00534260  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00534264  54 23 4c 00                                      .byte 0x54, 0x23, 0x4c, 0x00

; FUNCTION 0x00534268, declared_size=20, range_size=20, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core33setProcessBufferHeapExcessEnabledEb
; demangled: glitch::core::setProcessBufferHeapExcessEnabled(bool)
; decoder-mode: arm
00534268  08 30 9f e5                                      ldr r3, [pc, #8]
0053426c  03 30 8f e0                                      add r3, pc, r3
00534270  10 00 c3 e5                                      strb r0, [r3, #0x10]
00534274  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00534278  40 23 4c 00                                      .byte 0x40, 0x23, 0x4c, 0x00

; FUNCTION 0x0053427c, declared_size=184, range_size=184, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core12_GLOBAL__N_118CProcessBufferHeap7setSizeEib
; demangled: glitch::core::(anonymous namespace)::CProcessBufferHeap::setSize(int, bool)
; decoder-mode: arm
0053427c  70 40 2d e9                                      push {r4, r5, r6, lr}
00534280  00 40 a0 e1                                      mov r4, r0
00534284  00 00 90 e5                                      ldr r0, [r0]
00534288  03 10 81 e2                                      add r1, r1, #3
0053428c  21 51 a0 e1                                      lsr r5, r1, #2
00534290  00 00 50 e3                                      cmp r0, #0
00534294  0f 00 00 0a                                      beq #0x5342d8
00534298  04 30 94 e5                                      ldr r3, [r4, #4]
0053429c  03 30 60 e0                                      rsb r3, r0, r3
005342a0  43 01 55 e1                                      cmp r5, r3, asr #2
005342a4  1e 00 00 0a                                      beq #0x534324
005342a8  08 30 94 e5                                      ldr r3, [r4, #8]
005342ac  03 00 50 e1                                      cmp r0, r3
005342b0  01 00 00 2a                                      bhs #0x5342bc
005342b4  00 00 52 e3                                      cmp r2, #0
005342b8  1b 00 00 0a                                      beq #0x53432c
005342bc  04 00 50 e2                                      subs r0, r0, #4
005342c0  00 00 00 0a                                      beq #0x5342c8
005342c4  7b 67 f7 eb                                      bl #0x30e0b8
005342c8  00 30 a0 e3                                      mov r3, #0
005342cc  00 30 84 e5                                      str r3, [r4]
005342d0  08 30 84 e5                                      str r3, [r4, #8]
005342d4  04 30 84 e5                                      str r3, [r4, #4]
005342d8  00 00 55 e3                                      cmp r5, #0
005342dc  10 00 00 0a                                      beq #0x534324
005342e0  01 00 85 e2                                      add r0, r5, #1
005342e4  00 01 a0 e1                                      lsl r0, r0, #2
005342e8  00 10 a0 e3                                      mov r1, #0
005342ec  ad ff ff eb                                      bl #0x5341a8
005342f0  00 00 50 e3                                      cmp r0, #0
005342f4  00 20 a0 13                                      movne r2, #0
005342f8  00 00 84 e5                                      str r0, [r4]
005342fc  00 20 80 15                                      strne r2, [r0]
00534300  00 30 94 15                                      ldrne r3, [r4]
00534304  02 00 a0 03                                      moveq r0, #2
00534308  02 00 a0 11                                      movne r0, r2
0053430c  04 30 83 12                                      addne r3, r3, #4
00534310  05 51 83 10                                      addne r5, r3, r5, lsl #2
00534314  04 50 84 15                                      strne r5, [r4, #4]
00534318  00 30 84 15                                      strne r3, [r4]
0053431c  08 30 84 15                                      strne r3, [r4, #8]
00534320  70 80 bd e8                                      pop {r4, r5, r6, pc}
00534324  00 00 a0 e3                                      mov r0, #0
00534328  70 80 bd e8                                      pop {r4, r5, r6, pc}
0053432c  01 00 a0 e3                                      mov r0, #1
00534330  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00534334, declared_size=24, range_size=24, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core24setProcessBufferHeapSizeEi
; demangled: glitch::core::setProcessBufferHeapSize(int)
; decoder-mode: arm
00534334  00 10 a0 e1                                      mov r1, r0
00534338  08 00 9f e5                                      ldr r0, [pc, #8]
0053433c  00 20 a0 e3                                      mov r2, #0
00534340  00 00 8f e0                                      add r0, pc, r0
00534344  cc ff ff ea                                      b #0x53427c
; mapping-symbol data/literal pool
00534348  6c 22 4c 00                                      .byte 0x6c, 0x22, 0x4c, 0x00

; FUNCTION 0x0053434c, declared_size=240, range_size=240, mode=arm
; class-group: glitch::core
; alias: _ZNK6glitch4core12_GLOBAL__N_118CProcessBufferHeap4dumpEPNS_7ILoggerENS_10ELOG_LEVELE
; demangled: glitch::core::(anonymous namespace)::CProcessBufferHeap::dump(glitch::ILogger*, glitch::ELOG_LEVEL) const
; decoder-mode: arm
0053434c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00534350  d8 b0 9f e5                                      ldr fp, [pc, #0xd8]
00534354  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00534358  41 de 4d e2                                      sub sp, sp, #0x410
0053435c  0b b0 8f e0                                      add fp, pc, fp
00534360  04 d0 4d e2                                      sub sp, sp, #4
00534364  00 a0 a0 e1                                      mov sl, r0
00534368  03 00 9b e7                                      ldr r0, [fp, r3]
0053436c  04 30 8d e5                                      str r3, [sp, #4]
00534370  00 40 9a e5                                      ldr r4, [sl]
00534374  08 30 9a e5                                      ldr r3, [sl, #8]
00534378  00 00 90 e5                                      ldr r0, [r0]
0053437c  01 60 a0 e1                                      mov r6, r1
00534380  03 00 54 e1                                      cmp r4, r3
00534384  0c 04 8d e5                                      str r0, [sp, #0x40c]
00534388  00 20 8d e5                                      str r2, [sp]
0053438c  00 70 a0 03                                      moveq r7, #0
00534390  1b 00 00 0a                                      beq #0x534404
00534394  9c 90 9f e5                                      ldr sb, [pc, #0x9c]
00534398  10 80 8d e2                                      add r8, sp, #0x10
0053439c  04 80 48 e2                                      sub r8, r8, #4
005343a0  09 90 8f e0                                      add sb, pc, sb
005343a4  00 70 a0 e3                                      mov r7, #0
005343a8  00 50 94 e5                                      ldr r5, [r4]
005343ac  00 00 55 e3                                      cmp r5, #0
005343b0  00 50 65 d2                                      rsble r5, r5, #0
005343b4  0f 00 00 da                                      ble #0x5343f8
005343b8  02 30 45 e2                                      sub r3, r5, #2
005343bc  03 31 a0 e1                                      lsl r3, r3, #2
005343c0  08 00 a0 e1                                      mov r0, r8
005343c4  09 10 a0 e1                                      mov r1, sb
005343c8  04 20 84 e2                                      add r2, r4, #4
005343cc  c4 69 f7 eb                                      bl #0x30eae4
005343d0  00 00 56 e3                                      cmp r6, #0
005343d4  05 00 00 0a                                      beq #0x5343f0
005343d8  00 30 96 e5                                      ldr r3, [r6]
005343dc  06 00 a0 e1                                      mov r0, r6
005343e0  08 10 a0 e1                                      mov r1, r8
005343e4  00 20 9d e5                                      ldr r2, [sp]
005343e8  0f e0 a0 e1                                      mov lr, pc
005343ec  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005343f0  08 30 9a e5                                      ldr r3, [sl, #8]
005343f4  01 70 87 e2                                      add r7, r7, #1
005343f8  05 41 84 e0                                      add r4, r4, r5, lsl #2
005343fc  04 00 53 e1                                      cmp r3, r4
00534400  e8 ff ff 1a                                      bne #0x5343a8
00534404  04 20 9d e5                                      ldr r2, [sp, #4]
00534408  07 00 a0 e1                                      mov r0, r7
0053440c  02 30 9b e7                                      ldr r3, [fp, r2]
00534410  0c 24 9d e5                                      ldr r2, [sp, #0x40c]
00534414  00 30 93 e5                                      ldr r3, [r3]
00534418  03 00 52 e1                                      cmp r2, r3
0053441c  02 00 00 1a                                      bne #0x53442c
00534420  14 d0 8d e2                                      add sp, sp, #0x14
00534424  01 db 8d e2                                      add sp, sp, #0x400
00534428  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0053442c  b7 67 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00534430  34 07 46 00 ac 40 00 00 a8 98 3a 00              .byte 0x34, 0x07, 0x46, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0x98, 0x3a, 0x00

; FUNCTION 0x0053443c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core12_GLOBAL__N_118CProcessBufferHeapD1Ev
; demangled: glitch::core::(anonymous namespace)::CProcessBufferHeap::~CProcessBufferHeap()
; decoder-mode: arm
0053443c  00 10 a0 e3                                      mov r1, #0
00534440  70 40 2d e9                                      push {r4, r5, r6, lr}
00534444  01 20 a0 e1                                      mov r2, r1
00534448  00 50 a0 e1                                      mov r5, r0
0053444c  8a ff ff eb                                      bl #0x53427c
00534450  50 40 9f e5                                      ldr r4, [pc, #0x50]
00534454  01 00 50 e3                                      cmp r0, #1
00534458  04 40 8f e0                                      add r4, pc, r4
0053445c  01 00 00 0a                                      beq #0x534468
00534460  05 00 a0 e1                                      mov r0, r5
00534464  70 80 bd e8                                      pop {r4, r5, r6, pc}
00534468  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0053446c  03 10 a0 e3                                      mov r1, #3
00534470  00 00 8f e0                                      add r0, pc, r0
00534474  09 5a 03 eb                                      bl #0x60aca0
00534478  30 30 9f e5                                      ldr r3, [pc, #0x30]
0053447c  05 00 a0 e1                                      mov r0, r5
00534480  03 20 a0 e3                                      mov r2, #3
00534484  03 30 94 e7                                      ldr r3, [r4, r3]
00534488  00 10 93 e5                                      ldr r1, [r3]
0053448c  ae ff ff eb                                      bl #0x53434c
00534490  00 00 95 e5                                      ldr r0, [r5]
00534494  04 00 50 e2                                      subs r0, r0, #4
00534498  f0 ff ff 0a                                      beq #0x534460
0053449c  05 67 f7 eb                                      bl #0x30e0b8
005344a0  05 00 a0 e1                                      mov r0, r5
005344a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005344a8  38 06 46 00 e8 97 3a 00 3c 1c 00 00              .byte 0x38, 0x06, 0x46, 0x00, 0xe8, 0x97, 0x3a, 0x00, 0x3c, 0x1c, 0x00, 0x00

; FUNCTION 0x005344b4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core28dumpProcessBufferAllocationsEPNS_7ILoggerENS_10ELOG_LEVELE
; demangled: glitch::core::dumpProcessBufferAllocations(glitch::ILogger*, glitch::ELOG_LEVEL)
; decoder-mode: arm
005344b4  00 30 a0 e1                                      mov r3, r0
005344b8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
005344bc  01 20 a0 e1                                      mov r2, r1
005344c0  03 10 a0 e1                                      mov r1, r3
005344c4  00 00 8f e0                                      add r0, pc, r0
005344c8  9f ff ff ea                                      b #0x53434c
; mapping-symbol data/literal pool
005344cc  e8 20 4c 00                                      .byte 0xe8, 0x20, 0x4c, 0x00

; FUNCTION 0x005344d0, declared_size=148, range_size=148, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core12_GLOBAL__N_121processBufferHeapInitEb
; demangled: glitch::core::(anonymous namespace)::processBufferHeapInit(bool)
; decoder-mode: arm
005344d0  70 40 2d e9                                      push {r4, r5, r6, lr}
005344d4  74 40 9f e5                                      ldr r4, [pc, #0x74]
005344d8  00 60 50 e2                                      subs r6, r0, #0
005344dc  04 40 8f e0                                      add r4, pc, r4
005344e0  04 00 00 1a                                      bne #0x5344f8
005344e4  92 ff ff eb                                      bl #0x534334
005344e8  01 00 50 e3                                      cmp r0, #1
005344ec  00 50 a0 e1                                      mov r5, r0
005344f0  03 00 00 0a                                      beq #0x534504
005344f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005344f8  01 07 a0 e3                                      mov r0, #0x40000
005344fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00534500  8b ff ff ea                                      b #0x534334
00534504  48 00 9f e5                                      ldr r0, [pc, #0x48]
00534508  03 10 a0 e3                                      mov r1, #3
0053450c  00 00 8f e0                                      add r0, pc, r0
00534510  e2 59 03 eb                                      bl #0x60aca0
00534514  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00534518  03 10 a0 e3                                      mov r1, #3
0053451c  03 30 94 e7                                      ldr r3, [r4, r3]
00534520  00 00 93 e5                                      ldr r0, [r3]
00534524  e2 ff ff eb                                      bl #0x5344b4
00534528  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
0053452c  03 10 a0 e3                                      mov r1, #3
00534530  00 00 8f e0                                      add r0, pc, r0
00534534  d9 59 03 eb                                      bl #0x60aca0
00534538  20 00 9f e5                                      ldr r0, [pc, #0x20]
0053453c  06 10 a0 e1                                      mov r1, r6
00534540  05 20 a0 e1                                      mov r2, r5
00534544  00 00 8f e0                                      add r0, pc, r0
00534548  70 40 bd e8                                      pop {r4, r5, r6, lr}
0053454c  4a ff ff ea                                      b #0x53427c
; mapping-symbol data/literal pool
00534550  b4 05 46 00 84 97 3a 00 3c 1c 00 00 b0 97 3a 00  .byte 0xb4, 0x05, 0x46, 0x00, 0x84, 0x97, 0x3a, 0x00, 0x3c, 0x1c, 0x00, 0x00, 0xb0, 0x97, 0x3a, 0x00
00534560  68 20 4c 00                                      .byte 0x68, 0x20, 0x4c, 0x00

; FUNCTION 0x005345f4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core18allocProcessBufferEi
; demangled: glitch::core::allocProcessBuffer(int)
; decoder-mode: arm
005345f4  10 40 2d e9                                      push {r4, lr}
005345f8  80 30 9f e5                                      ldr r3, [pc, #0x80]
005345fc  00 40 a0 e1                                      mov r4, r0
00534600  03 30 8f e0                                      add r3, pc, r3
00534604  00 20 93 e5                                      ldr r2, [r3]
00534608  00 00 52 e3                                      cmp r2, #0
0053460c  13 00 00 0a                                      beq #0x534660
00534610  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00534614  03 20 84 e2                                      add r2, r4, #3
00534618  22 21 a0 e1                                      lsr r2, r2, #2
0053461c  03 30 8f e0                                      add r3, pc, r3
00534620  08 00 93 e5                                      ldr r0, [r3, #8]
00534624  04 10 93 e5                                      ldr r1, [r3, #4]
00534628  02 20 82 e2                                      add r2, r2, #2
0053462c  01 10 60 e0                                      rsb r1, r0, r1
00534630  41 01 52 e1                                      cmp r2, r1, asr #2
00534634  05 00 00 ca                                      bgt #0x534650
00534638  04 20 80 e4                                      str r2, [r0], #4
0053463c  08 10 93 e5                                      ldr r1, [r3, #8]
00534640  02 11 81 e0                                      add r1, r1, r2, lsl #2
00534644  08 10 83 e5                                      str r1, [r3, #8]
00534648  04 20 01 e5                                      str r2, [r1, #-4]
0053464c  10 80 bd e8                                      pop {r4, pc}
00534650  10 00 d3 e5                                      ldrb r0, [r3, #0x10]
00534654  00 00 50 e3                                      cmp r0, #0
00534658  04 00 00 1a                                      bne #0x534670
0053465c  10 80 bd e8                                      pop {r4, pc}
00534660  03 00 a0 e1                                      mov r0, r3
00534664  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00534668  03 ff ff eb                                      bl #0x53427c
0053466c  e7 ff ff ea                                      b #0x534610
00534670  04 00 a0 e1                                      mov r0, r4
00534674  00 10 a0 e3                                      mov r1, #0
00534678  10 40 bd e8                                      pop {r4, lr}
0053467c  c9 fe ff ea                                      b #0x5341a8
; mapping-symbol data/literal pool
00534680  ac 1f 4c 00 90 1f 4c 00                          .byte 0xac, 0x1f, 0x4c, 0x00, 0x90, 0x1f, 0x4c, 0x00

; FUNCTION 0x00534688, declared_size=184, range_size=184, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core20releaseProcessBufferEPv
; demangled: glitch::core::releaseProcessBuffer(void*)
; decoder-mode: arm
00534688  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0053468c  03 30 8f e0                                      add r3, pc, r3
00534690  00 20 93 e5                                      ldr r2, [r3]
00534694  00 00 52 e1                                      cmp r2, r0
00534698  02 00 00 8a                                      bhi #0x5346a8
0053469c  04 20 93 e5                                      ldr r2, [r3, #4]
005346a0  02 00 50 e1                                      cmp r0, r2
005346a4  02 00 00 3a                                      blo #0x5346b4
005346a8  00 00 50 e3                                      cmp r0, #0
005346ac  1e ff 2f 01                                      bxeq lr
005346b0  80 66 f7 ea                                      b #0x30e0b8
005346b4  04 20 10 e5                                      ldr r2, [r0, #-4]
005346b8  04 10 40 e2                                      sub r1, r0, #4
005346bc  00 20 62 e2                                      rsb r2, r2, #0
005346c0  02 c0 e0 e1                                      mvn ip, r2
005346c4  04 20 00 e5                                      str r2, [r0, #-4]
005346c8  0c 21 81 e7                                      str r2, [r1, ip, lsl #2]
005346cc  08 00 93 e5                                      ldr r0, [r3, #8]
005346d0  04 c0 10 e5                                      ldr ip, [r0, #-4]
005346d4  00 00 5c e3                                      cmp ip, #0
005346d8  10 00 00 ba                                      blt #0x534720
005346dc  04 30 11 e5                                      ldr r3, [r1, #-4]
005346e0  00 00 53 e3                                      cmp r3, #0
005346e4  03 20 82 b0                                      addlt r2, r2, r3
005346e8  03 31 a0 b1                                      lsllt r3, r3, #2
005346ec  03 20 a1 b7                                      strlt r2, [r1, r3]!
005346f0  02 30 e0 b1                                      mvnlt r3, r2
005346f4  03 21 81 b7                                      strlt r2, [r1, r3, lsl #2]
005346f8  03 30 e0 e3                                      mvn r3, #3
005346fc  93 02 03 e0                                      mul r3, r3, r2
00534700  03 30 91 e7                                      ldr r3, [r1, r3]
00534704  00 00 53 e3                                      cmp r3, #0
00534708  1e ff 2f a1                                      bxge lr
0053470c  02 20 83 e0                                      add r2, r3, r2
00534710  02 30 e0 e1                                      mvn r3, r2
00534714  00 20 81 e5                                      str r2, [r1]
00534718  03 21 81 e7                                      str r2, [r1, r3, lsl #2]
0053471c  1e ff 2f e1                                      bx lr
00534720  0c 01 80 e0                                      add r0, r0, ip, lsl #2
00534724  08 00 83 e5                                      str r0, [r3, #8]
00534728  04 20 10 e5                                      ldr r2, [r0, #-4]
0053472c  00 00 52 e3                                      cmp r2, #0
00534730  02 01 80 b0                                      addlt r0, r0, r2, lsl #2
00534734  08 00 83 b5                                      strlt r0, [r3, #8]
00534738  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0053473c  20 1f 4c 00                                      .byte 0x20, 0x1f, 0x4c, 0x00

; FUNCTION 0x00542390, declared_size=112, range_size=112, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core7wcsicmpEPKwS2_
; demangled: glitch::core::wcsicmp(wchar_t const*, wchar_t const*)
; decoder-mode: arm
00542390  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00542394  01 50 a0 e1                                      mov r5, r1
00542398  00 60 a0 e1                                      mov r6, r0
0054239c  39 32 f7 eb                                      bl #0x30ec88
005423a0  00 40 a0 e1                                      mov r4, r0
005423a4  05 00 a0 e1                                      mov r0, r5
005423a8  36 32 f7 eb                                      bl #0x30ec88
005423ac  00 00 54 e0                                      subs r0, r4, r0
005423b0  11 00 00 1a                                      bne #0x5423fc
005423b4  00 00 54 e3                                      cmp r4, #0
005423b8  0f 00 00 0a                                      beq #0x5423fc
005423bc  00 30 a0 e1                                      mov r3, r0
005423c0  00 c0 a0 e1                                      mov ip, r0
005423c4  03 10 96 e7                                      ldr r1, [r6, r3]
005423c8  03 20 95 e7                                      ldr r2, [r5, r3]
005423cc  01 c0 8c e2                                      add ip, ip, #1
005423d0  41 70 41 e2                                      sub r7, r1, #0x41
005423d4  02 00 51 e1                                      cmp r1, r2
005423d8  41 80 42 e2                                      sub r8, r2, #0x41
005423dc  03 00 00 0a                                      beq #0x5423f0
005423e0  07 00 52 e1                                      cmp r2, r7
005423e4  01 00 00 0a                                      beq #0x5423f0
005423e8  08 00 51 e1                                      cmp r1, r8
005423ec  01 00 80 12                                      addne r0, r0, #1
005423f0  04 00 5c e1                                      cmp ip, r4
005423f4  04 30 83 e2                                      add r3, r3, #4
005423f8  f1 ff ff 1a                                      bne #0x5423c4
005423fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0055bd58, declared_size=172, range_size=172, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core16getUTF8charValueEPKc
; demangled: glitch::core::getUTF8charValue(char const*)
; decoder-mode: arm
0055bd58  10 40 2d e9                                      push {r4, lr}
0055bd5c  00 40 a0 e1                                      mov r4, r0
0055bd60  3b c8 f6 eb                                      bl #0x30de54
0055bd64  01 00 40 e2                                      sub r0, r0, #1
0055bd68  03 00 50 e3                                      cmp r0, #3
0055bd6c  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
0055bd70  21 00 00 ea                                      b #0x55bdfc
0055bd74  1d 00 00 ea                                      b #0x55bdf0
0055bd78  16 00 00 ea                                      b #0x55bdd8
0055bd7c  0c 00 00 ea                                      b #0x55bdb4
0055bd80  ff ff ff ea                                      b #0x55bd84
0055bd84  d3 10 d4 e1                                      ldrsb r1, [r4, #3]
0055bd88  d0 20 d4 e1                                      ldrsb r2, [r4]
0055bd8c  d1 30 d4 e1                                      ldrsb r3, [r4, #1]
0055bd90  d2 00 d4 e1                                      ldrsb r0, [r4, #2]
0055bd94  3f 10 01 e2                                      and r1, r1, #0x3f
0055bd98  07 20 02 e2                                      and r2, r2, #7
0055bd9c  02 29 81 e1                                      orr r2, r1, r2, lsl #18
0055bda0  3f 30 03 e2                                      and r3, r3, #0x3f
0055bda4  03 36 82 e1                                      orr r3, r2, r3, lsl #12
0055bda8  3f 00 00 e2                                      and r0, r0, #0x3f
0055bdac  00 03 83 e1                                      orr r0, r3, r0, lsl #6
0055bdb0  10 80 bd e8                                      pop {r4, pc}
0055bdb4  d2 20 d4 e1                                      ldrsb r2, [r4, #2]
0055bdb8  d0 30 d4 e1                                      ldrsb r3, [r4]
0055bdbc  d1 00 d4 e1                                      ldrsb r0, [r4, #1]
0055bdc0  3f 20 02 e2                                      and r2, r2, #0x3f
0055bdc4  0f 30 03 e2                                      and r3, r3, #0xf
0055bdc8  03 36 82 e1                                      orr r3, r2, r3, lsl #12
0055bdcc  3f 00 00 e2                                      and r0, r0, #0x3f
0055bdd0  00 03 83 e1                                      orr r0, r3, r0, lsl #6
0055bdd4  10 80 bd e8                                      pop {r4, pc}
0055bdd8  d0 00 d4 e1                                      ldrsb r0, [r4]
0055bddc  d1 30 d4 e1                                      ldrsb r3, [r4, #1]
0055bde0  1f 00 00 e2                                      and r0, r0, #0x1f
0055bde4  3f 30 03 e2                                      and r3, r3, #0x3f
0055bde8  00 03 83 e1                                      orr r0, r3, r0, lsl #6
0055bdec  10 80 bd e8                                      pop {r4, pc}
0055bdf0  d0 00 d4 e1                                      ldrsb r0, [r4]
0055bdf4  7f 00 00 e2                                      and r0, r0, #0x7f
0055bdf8  10 80 bd e8                                      pop {r4, pc}
0055bdfc  00 00 a0 e3                                      mov r0, #0
0055be00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0055be04, declared_size=232, range_size=232, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core17iterateUTF8StringERPKc
; demangled: glitch::core::iterateUTF8String(char const*&)
; decoder-mode: arm
0055be04  30 40 2d e9                                      push {r4, r5, lr}
0055be08  00 10 90 e5                                      ldr r1, [r0]
0055be0c  00 30 a0 e3                                      mov r3, #0
0055be10  0c d0 4d e2                                      sub sp, sp, #0xc
0055be14  04 30 cd e5                                      strb r3, [sp, #4]
0055be18  00 30 cd e5                                      strb r3, [sp]
0055be1c  01 30 cd e5                                      strb r3, [sp, #1]
0055be20  02 30 cd e5                                      strb r3, [sp, #2]
0055be24  03 30 cd e5                                      strb r3, [sp, #3]
0055be28  00 20 d1 e5                                      ldrb r2, [r1]
0055be2c  00 50 a0 e1                                      mov r5, r0
0055be30  72 30 af e6                                      sxtb r3, r2
0055be34  00 00 53 e3                                      cmp r3, #0
0055be38  07 00 00 ba                                      blt #0x55be5c
0055be3c  01 10 81 e2                                      add r1, r1, #1
0055be40  08 40 8d e2                                      add r4, sp, #8
0055be44  00 10 80 e5                                      str r1, [r0]
0055be48  08 20 64 e5                                      strb r2, [r4, #-8]!
0055be4c  0d 00 a0 e1                                      mov r0, sp
0055be50  c0 ff ff eb                                      bl #0x55bd58
0055be54  0c d0 8d e2                                      add sp, sp, #0xc
0055be58  30 80 bd e8                                      pop {r4, r5, pc}
0055be5c  e0 00 03 e2                                      and r0, r3, #0xe0
0055be60  c0 00 50 e3                                      cmp r0, #0xc0
0055be64  10 00 00 0a                                      beq #0x55beac
0055be68  f0 00 03 e2                                      and r0, r3, #0xf0
0055be6c  e0 00 50 e3                                      cmp r0, #0xe0
0055be70  14 00 00 0a                                      beq #0x55bec8
0055be74  f8 30 03 e2                                      and r3, r3, #0xf8
0055be78  f0 00 53 e3                                      cmp r3, #0xf0
0055be7c  01 10 81 12                                      addne r1, r1, #1
0055be80  00 10 85 15                                      strne r1, [r5]
0055be84  0d 40 a0 11                                      movne r4, sp
0055be88  ef ff ff 1a                                      bne #0x55be4c
0055be8c  0d 00 a0 e1                                      mov r0, sp
0055be90  04 20 a0 e3                                      mov r2, #4
0055be94  73 ca f6 eb                                      bl #0x30e868
0055be98  00 30 95 e5                                      ldr r3, [r5]
0055be9c  0d 40 a0 e1                                      mov r4, sp
0055bea0  04 30 83 e2                                      add r3, r3, #4
0055bea4  00 30 85 e5                                      str r3, [r5]
0055bea8  e7 ff ff ea                                      b #0x55be4c
0055beac  00 20 cd e5                                      strb r2, [sp]
0055beb0  01 30 d1 e5                                      ldrb r3, [r1, #1]
0055beb4  02 10 81 e2                                      add r1, r1, #2
0055beb8  00 10 85 e5                                      str r1, [r5]
0055bebc  0d 40 a0 e1                                      mov r4, sp
0055bec0  01 30 cd e5                                      strb r3, [sp, #1]
0055bec4  e0 ff ff ea                                      b #0x55be4c
0055bec8  00 20 cd e5                                      strb r2, [sp]
0055becc  01 30 d1 e5                                      ldrb r3, [r1, #1]
0055bed0  03 20 81 e2                                      add r2, r1, #3
0055bed4  0d 40 a0 e1                                      mov r4, sp
0055bed8  01 30 cd e5                                      strb r3, [sp, #1]
0055bedc  02 30 d1 e5                                      ldrb r3, [r1, #2]
0055bee0  00 20 85 e5                                      str r2, [r5]
0055bee4  02 30 cd e5                                      strb r3, [sp, #2]
0055bee8  d7 ff ff ea                                      b #0x55be4c

; FUNCTION 0x0058bad8, declared_size=236, range_size=236, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core12randomStringEi
; demangled: glitch::core::randomString(int)
; decoder-mode: arm
0058bad8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058badc  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
0058bae0  d4 60 9f e5                                      ldr r6, [pc, #0xd4]
0058bae4  2c d0 4d e2                                      sub sp, sp, #0x2c
0058bae8  04 40 8f e0                                      add r4, pc, r4
0058baec  06 30 94 e7                                      ldr r3, [r4, r6]
0058baf0  0c 50 8d e2                                      add r5, sp, #0xc
0058baf4  01 a0 a0 e1                                      mov sl, r1
0058baf8  00 30 93 e5                                      ldr r3, [r3]
0058bafc  04 00 8d e5                                      str r0, [sp, #4]
0058bb00  10 10 a0 e3                                      mov r1, #0x10
0058bb04  05 00 a0 e1                                      mov r0, r5
0058bb08  24 30 8d e5                                      str r3, [sp, #0x24]
0058bb0c  1c 50 8d e5                                      str r5, [sp, #0x1c]
0058bb10  20 50 8d e5                                      str r5, [sp, #0x20]
0058bb14  a3 53 f6 eb                                      bl #0x3209a8
0058bb18  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0058bb1c  00 70 a0 e3                                      mov r7, #0
0058bb20  00 00 5a e3                                      cmp sl, #0
0058bb24  00 70 c3 e5                                      strb r7, [r3]
0058bb28  0f 00 00 da                                      ble #0x58bb6c
0058bb2c  8c b0 9f e5                                      ldr fp, [pc, #0x8c]
0058bb30  43 88 00 e3                                      movw r8, #0x843
0058bb34  21 84 48 e3                                      movt r8, #0x8421
0058bb38  3e 90 a0 e3                                      mov sb, #0x3e
0058bb3c  99 0c f6 eb                                      bl #0x30eda8
0058bb40  a0 20 a0 e1                                      lsr r2, r0, #1
0058bb44  98 32 82 e0                                      umull r3, r2, r8, r2
0058bb48  0b 30 94 e7                                      ldr r3, [r4, fp]
0058bb4c  22 22 a0 e1                                      lsr r2, r2, #4
0058bb50  99 02 60 e0                                      mls r0, sb, r2, r0
0058bb54  01 70 87 e2                                      add r7, r7, #1
0058bb58  d0 10 93 e1                                      ldrsb r1, [r3, r0]
0058bb5c  05 00 a0 e1                                      mov r0, r5
0058bb60  10 a9 fa eb                                      bl #0x435fa8
0058bb64  0a 00 57 e1                                      cmp r7, sl
0058bb68  f3 ff ff 1a                                      bne #0x58bb3c
0058bb6c  04 00 9d e5                                      ldr r0, [sp, #4]
0058bb70  20 10 9d e5                                      ldr r1, [sp, #0x20]
0058bb74  08 20 8d e2                                      add r2, sp, #8
0058bb78  2f 69 f6 eb                                      bl #0x32603c
0058bb7c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0058bb80  05 00 50 e1                                      cmp r0, r5
0058bb84  02 00 00 0a                                      beq #0x58bb94
0058bb88  00 00 50 e3                                      cmp r0, #0
0058bb8c  00 00 00 0a                                      beq #0x58bb94
0058bb90  2e 12 f6 eb                                      bl #0x310450
0058bb94  06 30 94 e7                                      ldr r3, [r4, r6]
0058bb98  24 20 9d e5                                      ldr r2, [sp, #0x24]
0058bb9c  04 00 9d e5                                      ldr r0, [sp, #4]
0058bba0  00 30 93 e5                                      ldr r3, [r3]
0058bba4  03 00 52 e1                                      cmp r2, r3
0058bba8  01 00 00 1a                                      bne #0x58bbb4
0058bbac  2c d0 8d e2                                      add sp, sp, #0x2c
0058bbb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058bbb4  d5 09 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0058bbb8  a8 8f 40 00 ac 40 00 00 a4 31 00 00              .byte 0xa8, 0x8f, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0x31, 0x00, 0x00

; FUNCTION 0x006a18b4, declared_size=1256, range_size=1256, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core13copyParameterERKN5boost13intrusive_ptrINS_5video9CMaterialEEEtRKNS2_IKS4_EEt
; demangled: glitch::core::copyParameter(boost::intrusive_ptr<glitch::video::CMaterial> const&, unsigned short, boost::intrusive_ptr<glitch::video::CMaterial const> const&, unsigned short)
; decoder-mode: arm
006a18b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a18b8  02 70 a0 e1                                      mov r7, r2
006a18bc  00 20 92 e5                                      ldr r2, [r2]
006a18c0  cc c4 9f e5                                      ldr ip, [pc, #0x4cc]
006a18c4  03 90 a0 e1                                      mov sb, r3
006a18c8  04 30 92 e5                                      ldr r3, [r2, #4]
006a18cc  5c d0 4d e2                                      sub sp, sp, #0x5c
006a18d0  0c c0 8f e0                                      add ip, pc, ip
006a18d4  04 c0 8d e5                                      str ip, [sp, #4]
006a18d8  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006a18dc  00 80 a0 e1                                      mov r8, r0
006a18e0  01 b0 a0 e1                                      mov fp, r1
006a18e4  09 00 52 e1                                      cmp r2, sb
006a18e8  20 60 93 85                                      ldrhi r6, [r3, #0x20]
006a18ec  00 30 90 e5                                      ldr r3, [r0]
006a18f0  00 60 a0 93                                      movls r6, #0
006a18f4  09 62 86 80                                      addhi r6, r6, sb, lsl #4
006a18f8  04 30 93 e5                                      ldr r3, [r3, #4]
006a18fc  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006a1900  01 00 52 e1                                      cmp r2, r1
006a1904  20 30 93 85                                      ldrhi r3, [r3, #0x20]
006a1908  00 30 a0 93                                      movls r3, #0
006a190c  01 32 83 80                                      addhi r3, r3, r1, lsl #4
006a1910  08 a0 93 e5                                      ldr sl, [r3, #8]
006a1914  08 30 96 e5                                      ldr r3, [r6, #8]
006a1918  03 00 5a e1                                      cmp sl, r3
006a191c  03 a0 a0 21                                      movhs sl, r3
006a1920  00 00 5a e3                                      cmp sl, #0
006a1924  2f 00 00 0a                                      beq #0x6a19e8
006a1928  68 14 9f e5                                      ldr r1, [pc, #0x468]
006a192c  54 20 8d e2                                      add r2, sp, #0x54
006a1930  00 40 a0 e3                                      mov r4, #0
006a1934  0c 10 8d e5                                      str r1, [sp, #0xc]
006a1938  10 50 8d e2                                      add r5, sp, #0x10
006a193c  08 20 8d e5                                      str r2, [sp, #8]
006a1940  06 30 d6 e5                                      ldrb r3, [r6, #6]
006a1944  01 30 43 e2                                      sub r3, r3, #1
006a1948  11 00 53 e3                                      cmp r3, #0x11
006a194c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
006a1950  21 00 00 ea                                      b #0x6a19dc
006a1954  00 01 00 ea                                      b #0x6a1d5c
006a1958  ee 00 00 ea                                      b #0x6a1d18
006a195c  db 00 00 ea                                      b #0x6a1cd0
006a1960  c7 00 00 ea                                      b #0x6a1c84
006a1964  b8 00 00 ea                                      b #0x6a1c4c
006a1968  a6 00 00 ea                                      b #0x6a1c08
006a196c  93 00 00 ea                                      b #0x6a1bc0
006a1970  7f 00 00 ea                                      b #0x6a1b74
006a1974  18 00 00 ea                                      b #0x6a19dc
006a1978  17 00 00 ea                                      b #0x6a19dc
006a197c  63 00 00 ea                                      b #0x6a1b10
006a1980  05 00 00 ea                                      b #0x6a199c
006a1984  04 00 00 ea                                      b #0x6a199c
006a1988  03 00 00 ea                                      b #0x6a199c
006a198c  02 00 00 ea                                      b #0x6a199c
006a1990  50 00 00 ea                                      b #0x6a1ad8
006a1994  3b 00 00 ea                                      b #0x6a1a88
006a1998  15 00 00 ea                                      b #0x6a19f4
006a199c  00 c0 a0 e3                                      mov ip, #0
006a19a0  09 10 a0 e1                                      mov r1, sb
006a19a4  04 20 a0 e1                                      mov r2, r4
006a19a8  05 30 a0 e1                                      mov r3, r5
006a19ac  00 00 97 e5                                      ldr r0, [r7]
006a19b0  10 c0 8d e5                                      str ip, [sp, #0x10]
006a19b4  40 b0 fc eb                                      bl #0x5cdabc
006a19b8  00 00 98 e5                                      ldr r0, [r8]
006a19bc  0b 10 a0 e1                                      mov r1, fp
006a19c0  04 20 a0 e1                                      mov r2, r4
006a19c4  05 30 a0 e1                                      mov r3, r5
006a19c8  55 ae fc eb                                      bl #0x5cd324
006a19cc  10 00 9d e5                                      ldr r0, [sp, #0x10]
006a19d0  00 00 50 e3                                      cmp r0, #0
006a19d4  00 00 00 0a                                      beq #0x6a19dc
006a19d8  e9 ee f1 eb                                      bl #0x31d584
006a19dc  01 40 84 e2                                      add r4, r4, #1
006a19e0  0a 00 54 e1                                      cmp r4, sl
006a19e4  d5 ff ff 1a                                      bne #0x6a1940
006a19e8  01 00 a0 e3                                      mov r0, #1
006a19ec  5c d0 8d e2                                      add sp, sp, #0x5c
006a19f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a19f4  00 c0 a0 e3                                      mov ip, #0
006a19f8  09 10 a0 e1                                      mov r1, sb
006a19fc  04 20 a0 e1                                      mov r2, r4
006a1a00  05 30 a0 e1                                      mov r3, r5
006a1a04  00 00 97 e5                                      ldr r0, [r7]
006a1a08  10 c0 8d e5                                      str ip, [sp, #0x10]
006a1a0c  33 b4 fc eb                                      bl #0x5ceae0
006a1a10  00 00 98 e5                                      ldr r0, [r8]
006a1a14  0b 10 a0 e1                                      mov r1, fp
006a1a18  04 20 a0 e1                                      mov r2, r4
006a1a1c  05 30 a0 e1                                      mov r3, r5
006a1a20  cd b3 fc eb                                      bl #0x5ce95c
006a1a24  10 00 9d e5                                      ldr r0, [sp, #0x10]
006a1a28  00 00 50 e3                                      cmp r0, #0
006a1a2c  ea ff ff 0a                                      beq #0x6a19dc
006a1a30  00 30 90 e5                                      ldr r3, [r0]
006a1a34  01 30 43 e2                                      sub r3, r3, #1
006a1a38  00 00 53 e3                                      cmp r3, #0
006a1a3c  00 30 80 e5                                      str r3, [r0]
006a1a40  e5 ff ff 1a                                      bne #0x6a19dc
006a1a44  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
006a1a48  00 00 53 e3                                      cmp r3, #0
006a1a4c  06 00 00 1a                                      bne #0x6a1a6c
006a1a50  04 20 9d e5                                      ldr r2, [sp, #4]
006a1a54  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006a1a58  01 30 92 e7                                      ldr r3, [r2, r1]
006a1a5c  50 20 90 e5                                      ldr r2, [r0, #0x50]
006a1a60  00 10 93 e5                                      ldr r1, [r3]
006a1a64  00 10 82 e5                                      str r1, [r2]
006a1a68  00 20 83 e5                                      str r2, [r3]
006a1a6c  00 30 a0 e3                                      mov r3, #0
006a1a70  50 30 80 e5                                      str r3, [r0, #0x50]
006a1a74  01 40 84 e2                                      add r4, r4, #1
006a1a78  0c b2 f1 eb                                      bl #0x30e2b0
006a1a7c  0a 00 54 e1                                      cmp r4, sl
006a1a80  ae ff ff 1a                                      bne #0x6a1940
006a1a84  d7 ff ff ea                                      b #0x6a19e8
006a1a88  00 c0 a0 e3                                      mov ip, #0
006a1a8c  00 00 97 e5                                      ldr r0, [r7]
006a1a90  04 20 a0 e1                                      mov r2, r4
006a1a94  09 10 a0 e1                                      mov r1, sb
006a1a98  05 30 a0 e1                                      mov r3, r5
006a1a9c  10 c0 8d e5                                      str ip, [sp, #0x10]
006a1aa0  14 c0 8d e5                                      str ip, [sp, #0x14]
006a1aa4  18 c0 8d e5                                      str ip, [sp, #0x18]
006a1aa8  fe c5 a0 e3                                      mov ip, #0x3f800000
006a1aac  1c c0 8d e5                                      str ip, [sp, #0x1c]
006a1ab0  d4 95 fc eb                                      bl #0x5c7208
006a1ab4  04 20 a0 e1                                      mov r2, r4
006a1ab8  00 00 98 e5                                      ldr r0, [r8]
006a1abc  0b 10 a0 e1                                      mov r1, fp
006a1ac0  05 30 a0 e1                                      mov r3, r5
006a1ac4  01 40 84 e2                                      add r4, r4, #1
006a1ac8  4a a4 fc eb                                      bl #0x5cabf8
006a1acc  0a 00 54 e1                                      cmp r4, sl
006a1ad0  9a ff ff 1a                                      bne #0x6a1940
006a1ad4  c3 ff ff ea                                      b #0x6a19e8
006a1ad8  04 20 a0 e1                                      mov r2, r4
006a1adc  09 10 a0 e1                                      mov r1, sb
006a1ae0  05 30 a0 e1                                      mov r3, r5
006a1ae4  00 00 97 e5                                      ldr r0, [r7]
006a1ae8  ad 95 fc eb                                      bl #0x5c71a4
006a1aec  04 20 a0 e1                                      mov r2, r4
006a1af0  00 00 98 e5                                      ldr r0, [r8]
006a1af4  0b 10 a0 e1                                      mov r1, fp
006a1af8  05 30 a0 e1                                      mov r3, r5
006a1afc  01 40 84 e2                                      add r4, r4, #1
006a1b00  2b 93 fc eb                                      bl #0x5c67b4
006a1b04  0a 00 54 e1                                      cmp r4, sl
006a1b08  8c ff ff 1a                                      bne #0x6a1940
006a1b0c  b5 ff ff ea                                      b #0x6a19e8
006a1b10  00 10 a0 e3                                      mov r1, #0
006a1b14  40 20 a0 e3                                      mov r2, #0x40
006a1b18  05 00 a0 e1                                      mov r0, r5
006a1b1c  4f b2 f1 eb                                      bl #0x30e460
006a1b20  fe c5 a0 e3                                      mov ip, #0x3f800000
006a1b24  00 00 97 e5                                      ldr r0, [r7]
006a1b28  04 20 a0 e1                                      mov r2, r4
006a1b2c  09 10 a0 e1                                      mov r1, sb
006a1b30  05 30 a0 e1                                      mov r3, r5
006a1b34  10 c0 8d e5                                      str ip, [sp, #0x10]
006a1b38  24 c0 8d e5                                      str ip, [sp, #0x24]
006a1b3c  38 c0 8d e5                                      str ip, [sp, #0x38]
006a1b40  4c c0 8d e5                                      str ip, [sp, #0x4c]
006a1b44  01 c0 a0 e3                                      mov ip, #1
006a1b48  50 c0 cd e5                                      strb ip, [sp, #0x50]
006a1b4c  12 a2 fc eb                                      bl #0x5ca39c
006a1b50  04 20 a0 e1                                      mov r2, r4
006a1b54  00 00 98 e5                                      ldr r0, [r8]
006a1b58  0b 10 a0 e1                                      mov r1, fp
006a1b5c  05 30 a0 e1                                      mov r3, r5
006a1b60  01 40 84 e2                                      add r4, r4, #1
006a1b64  5c a6 fc eb                                      bl #0x5cb4dc
006a1b68  0a 00 54 e1                                      cmp r4, sl
006a1b6c  73 ff ff 1a                                      bne #0x6a1940
006a1b70  9c ff ff ea                                      b #0x6a19e8
006a1b74  00 c0 a0 e3                                      mov ip, #0
006a1b78  00 00 97 e5                                      ldr r0, [r7]
006a1b7c  04 20 a0 e1                                      mov r2, r4
006a1b80  09 10 a0 e1                                      mov r1, sb
006a1b84  05 30 a0 e1                                      mov r3, r5
006a1b88  10 c0 8d e5                                      str ip, [sp, #0x10]
006a1b8c  14 c0 8d e5                                      str ip, [sp, #0x14]
006a1b90  18 c0 8d e5                                      str ip, [sp, #0x18]
006a1b94  1c c0 8d e5                                      str ip, [sp, #0x1c]
006a1b98  62 95 fc eb                                      bl #0x5c7128
006a1b9c  04 20 a0 e1                                      mov r2, r4
006a1ba0  00 00 98 e5                                      ldr r0, [r8]
006a1ba4  0b 10 a0 e1                                      mov r1, fp
006a1ba8  05 30 a0 e1                                      mov r3, r5
006a1bac  01 40 84 e2                                      add r4, r4, #1
006a1bb0  c7 92 fc eb                                      bl #0x5c66d4
006a1bb4  0a 00 54 e1                                      cmp r4, sl
006a1bb8  60 ff ff 1a                                      bne #0x6a1940
006a1bbc  89 ff ff ea                                      b #0x6a19e8
006a1bc0  00 c0 a0 e3                                      mov ip, #0
006a1bc4  00 00 97 e5                                      ldr r0, [r7]
006a1bc8  04 20 a0 e1                                      mov r2, r4
006a1bcc  09 10 a0 e1                                      mov r1, sb
006a1bd0  05 30 a0 e1                                      mov r3, r5
006a1bd4  10 c0 8d e5                                      str ip, [sp, #0x10]
006a1bd8  14 c0 8d e5                                      str ip, [sp, #0x14]
006a1bdc  18 c0 8d e5                                      str ip, [sp, #0x18]
006a1be0  32 95 fc eb                                      bl #0x5c70b0
006a1be4  04 20 a0 e1                                      mov r2, r4
006a1be8  00 00 98 e5                                      ldr r0, [r8]
006a1bec  0b 10 a0 e1                                      mov r1, fp
006a1bf0  05 30 a0 e1                                      mov r3, r5
006a1bf4  01 40 84 e2                                      add r4, r4, #1
006a1bf8  83 92 fc eb                                      bl #0x5c660c
006a1bfc  0a 00 54 e1                                      cmp r4, sl
006a1c00  4e ff ff 1a                                      bne #0x6a1940
006a1c04  77 ff ff ea                                      b #0x6a19e8
006a1c08  00 c0 a0 e3                                      mov ip, #0
006a1c0c  04 20 a0 e1                                      mov r2, r4
006a1c10  00 00 97 e5                                      ldr r0, [r7]
006a1c14  09 10 a0 e1                                      mov r1, sb
006a1c18  05 30 a0 e1                                      mov r3, r5
006a1c1c  10 c0 8d e5                                      str ip, [sp, #0x10]
006a1c20  14 c0 8d e5                                      str ip, [sp, #0x14]
006a1c24  06 95 fc eb                                      bl #0x5c7044
006a1c28  04 20 a0 e1                                      mov r2, r4
006a1c2c  00 00 98 e5                                      ldr r0, [r8]
006a1c30  0b 10 a0 e1                                      mov r1, fp
006a1c34  05 30 a0 e1                                      mov r3, r5
006a1c38  01 40 84 e2                                      add r4, r4, #1
006a1c3c  48 92 fc eb                                      bl #0x5c6564
006a1c40  0a 00 54 e1                                      cmp r4, sl
006a1c44  3d ff ff 1a                                      bne #0x6a1940
006a1c48  66 ff ff ea                                      b #0x6a19e8
006a1c4c  04 20 a0 e1                                      mov r2, r4
006a1c50  09 10 a0 e1                                      mov r1, sb
006a1c54  08 30 9d e5                                      ldr r3, [sp, #8]
006a1c58  00 00 97 e5                                      ldr r0, [r7]
006a1c5c  e0 94 fc eb                                      bl #0x5c6fe4
006a1c60  04 20 a0 e1                                      mov r2, r4
006a1c64  00 00 98 e5                                      ldr r0, [r8]
006a1c68  0b 10 a0 e1                                      mov r1, fp
006a1c6c  08 30 9d e5                                      ldr r3, [sp, #8]
006a1c70  01 40 84 e2                                      add r4, r4, #1
006a1c74  16 92 fc eb                                      bl #0x5c64d4
006a1c78  0a 00 54 e1                                      cmp r4, sl
006a1c7c  2f ff ff 1a                                      bne #0x6a1940
006a1c80  58 ff ff ea                                      b #0x6a19e8
006a1c84  00 c0 a0 e3                                      mov ip, #0
006a1c88  00 00 97 e5                                      ldr r0, [r7]
006a1c8c  04 20 a0 e1                                      mov r2, r4
006a1c90  09 10 a0 e1                                      mov r1, sb
006a1c94  05 30 a0 e1                                      mov r3, r5
006a1c98  10 c0 8d e5                                      str ip, [sp, #0x10]
006a1c9c  14 c0 8d e5                                      str ip, [sp, #0x14]
006a1ca0  18 c0 8d e5                                      str ip, [sp, #0x18]
006a1ca4  1c c0 8d e5                                      str ip, [sp, #0x1c]
006a1ca8  ae 94 fc eb                                      bl #0x5c6f68
006a1cac  04 20 a0 e1                                      mov r2, r4
006a1cb0  00 00 98 e5                                      ldr r0, [r8]
006a1cb4  0b 10 a0 e1                                      mov r1, fp
006a1cb8  05 30 a0 e1                                      mov r3, r5
006a1cbc  01 40 84 e2                                      add r4, r4, #1
006a1cc0  d0 91 fc eb                                      bl #0x5c6408
006a1cc4  0a 00 54 e1                                      cmp r4, sl
006a1cc8  1c ff ff 1a                                      bne #0x6a1940
006a1ccc  45 ff ff ea                                      b #0x6a19e8
006a1cd0  00 c0 a0 e3                                      mov ip, #0
006a1cd4  00 00 97 e5                                      ldr r0, [r7]
006a1cd8  04 20 a0 e1                                      mov r2, r4
006a1cdc  09 10 a0 e1                                      mov r1, sb
006a1ce0  05 30 a0 e1                                      mov r3, r5
006a1ce4  10 c0 8d e5                                      str ip, [sp, #0x10]
006a1ce8  14 c0 8d e5                                      str ip, [sp, #0x14]
006a1cec  18 c0 8d e5                                      str ip, [sp, #0x18]
006a1cf0  7e 94 fc eb                                      bl #0x5c6ef0
006a1cf4  04 20 a0 e1                                      mov r2, r4
006a1cf8  00 00 98 e5                                      ldr r0, [r8]
006a1cfc  0b 10 a0 e1                                      mov r1, fp
006a1d00  05 30 a0 e1                                      mov r3, r5
006a1d04  01 40 84 e2                                      add r4, r4, #1
006a1d08  90 91 fc eb                                      bl #0x5c6350
006a1d0c  0a 00 54 e1                                      cmp r4, sl
006a1d10  0a ff ff 1a                                      bne #0x6a1940
006a1d14  33 ff ff ea                                      b #0x6a19e8
006a1d18  00 c0 a0 e3                                      mov ip, #0
006a1d1c  04 20 a0 e1                                      mov r2, r4
006a1d20  00 00 97 e5                                      ldr r0, [r7]
006a1d24  09 10 a0 e1                                      mov r1, sb
006a1d28  05 30 a0 e1                                      mov r3, r5
006a1d2c  10 c0 8d e5                                      str ip, [sp, #0x10]
006a1d30  14 c0 8d e5                                      str ip, [sp, #0x14]
006a1d34  52 94 fc eb                                      bl #0x5c6e84
006a1d38  04 20 a0 e1                                      mov r2, r4
006a1d3c  00 00 98 e5                                      ldr r0, [r8]
006a1d40  0b 10 a0 e1                                      mov r1, fp
006a1d44  05 30 a0 e1                                      mov r3, r5
006a1d48  01 40 84 e2                                      add r4, r4, #1
006a1d4c  58 91 fc eb                                      bl #0x5c62b4
006a1d50  0a 00 54 e1                                      cmp r4, sl
006a1d54  f9 fe ff 1a                                      bne #0x6a1940
006a1d58  22 ff ff ea                                      b #0x6a19e8
006a1d5c  04 20 a0 e1                                      mov r2, r4
006a1d60  09 10 a0 e1                                      mov r1, sb
006a1d64  08 30 9d e5                                      ldr r3, [sp, #8]
006a1d68  00 00 97 e5                                      ldr r0, [r7]
006a1d6c  2c 94 fc eb                                      bl #0x5c6e24
006a1d70  04 20 a0 e1                                      mov r2, r4
006a1d74  00 00 98 e5                                      ldr r0, [r8]
006a1d78  0b 10 a0 e1                                      mov r1, fp
006a1d7c  08 30 9d e5                                      ldr r3, [sp, #8]
006a1d80  01 40 84 e2                                      add r4, r4, #1
006a1d84  2c 91 fc eb                                      bl #0x5c623c
006a1d88  0a 00 54 e1                                      cmp r4, sl
006a1d8c  eb fe ff 1a                                      bne #0x6a1940
006a1d90  14 ff ff ea                                      b #0x6a19e8
; mapping-symbol data/literal pool
006a1d94  c0 31 2f 00 c0 3c 00 00                          .byte 0xc0, 0x31, 0x2f, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x006a1d9c, declared_size=280, range_size=280, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core22copyMaterialParametersERKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS2_IKS4_EE
; demangled: glitch::core::copyMaterialParameters(boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterial const> const&)
; decoder-mode: arm
006a1d9c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a1da0  00 40 90 e5                                      ldr r4, [r0]
006a1da4  00 50 a0 e1                                      mov r5, r0
006a1da8  01 60 a0 e1                                      mov r6, r1
006a1dac  04 00 a0 e1                                      mov r0, r4
006a1db0  df 8f fc eb                                      bl #0x5c5d34
006a1db4  04 30 94 e5                                      ldr r3, [r4, #4]
006a1db8  0c a0 a0 e3                                      mov sl, #0xc
006a1dbc  00 40 96 e5                                      ldr r4, [r6]
006a1dc0  18 30 93 e5                                      ldr r3, [r3, #0x18]
006a1dc4  00 90 a0 e3                                      mov sb, #0
006a1dc8  9a 30 23 e0                                      mla r3, sl, r0, r3
006a1dcc  04 00 a0 e1                                      mov r0, r4
006a1dd0  08 30 93 e5                                      ldr r3, [r3, #8]
006a1dd4  24 70 93 e5                                      ldr r7, [r3, #0x24]
006a1dd8  d5 8f fc eb                                      bl #0x5c5d34
006a1ddc  04 20 94 e5                                      ldr r2, [r4, #4]
006a1de0  00 30 95 e5                                      ldr r3, [r5]
006a1de4  18 20 92 e5                                      ldr r2, [r2, #0x18]
006a1de8  04 40 93 e5                                      ldr r4, [r3, #4]
006a1dec  9a 20 22 e0                                      mla r2, sl, r0, r2
006a1df0  03 00 a0 e1                                      mov r0, r3
006a1df4  08 30 92 e5                                      ldr r3, [r2, #8]
006a1df8  24 80 93 e5                                      ldr r8, [r3, #0x24]
006a1dfc  cc 8f fc eb                                      bl #0x5c5d34
006a1e00  18 30 94 e5                                      ldr r3, [r4, #0x18]
006a1e04  9a 30 23 e0                                      mla r3, sl, r0, r3
006a1e08  08 b0 93 e5                                      ldr fp, [r3, #8]
006a1e0c  20 30 9b e5                                      ldr r3, [fp, #0x20]
006a1e10  89 31 83 e0                                      add r3, r3, sb, lsl #3
006a1e14  be 32 d3 e1                                      ldrh r3, [r3, #0x2e]
006a1e18  00 00 53 e3                                      cmp r3, #0
006a1e1c  20 00 00 0a                                      beq #0x6a1ea4
006a1e20  01 a0 43 e2                                      sub sl, r3, #1
006a1e24  7a a0 ff e6                                      uxth sl, sl
006a1e28  01 a0 8a e2                                      add sl, sl, #1
006a1e2c  8a a0 a0 e1                                      lsl sl, sl, #1
006a1e30  00 40 a0 e3                                      mov r4, #0
006a1e34  00 30 95 e5                                      ldr r3, [r5]
006a1e38  b4 10 97 e1                                      ldrh r1, [r7, r4]
006a1e3c  00 00 a0 e3                                      mov r0, #0
006a1e40  04 30 93 e5                                      ldr r3, [r3, #4]
006a1e44  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006a1e48  01 00 52 e1                                      cmp r2, r1
006a1e4c  20 00 93 85                                      ldrhi r0, [r3, #0x20]
006a1e50  00 30 96 e5                                      ldr r3, [r6]
006a1e54  b4 20 98 e1                                      ldrh r2, [r8, r4]
006a1e58  01 02 80 80                                      addhi r0, r0, r1, lsl #4
006a1e5c  04 30 93 e5                                      ldr r3, [r3, #4]
006a1e60  02 40 84 e2                                      add r4, r4, #2
006a1e64  be c0 d3 e1                                      ldrh ip, [r3, #0xe]
006a1e68  02 00 5c e1                                      cmp ip, r2
006a1e6c  08 00 00 9a                                      bls #0x6a1e94
006a1e70  20 c0 93 e5                                      ldr ip, [r3, #0x20]
006a1e74  02 30 a0 e1                                      mov r3, r2
006a1e78  02 22 8c e0                                      add r2, ip, r2, lsl #4
006a1e7c  00 00 50 e3                                      cmp r0, #0
006a1e80  00 00 52 13                                      cmpne r2, #0
006a1e84  05 00 a0 e1                                      mov r0, r5
006a1e88  06 20 a0 e1                                      mov r2, r6
006a1e8c  00 00 00 0a                                      beq #0x6a1e94
006a1e90  87 fe ff eb                                      bl #0x6a18b4
006a1e94  0a 00 54 e1                                      cmp r4, sl
006a1e98  e5 ff ff 1a                                      bne #0x6a1e34
006a1e9c  04 80 88 e0                                      add r8, r8, r4
006a1ea0  04 70 87 e0                                      add r7, r7, r4
006a1ea4  01 90 89 e2                                      add sb, sb, #1
006a1ea8  02 00 59 e3                                      cmp sb, #2
006a1eac  d6 ff ff 1a                                      bne #0x6a1e0c
006a1eb0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006a1eb4, declared_size=984, range_size=984, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core23overridePrimitiveStreamERKNS_5video16CPrimitiveStreamEjjRS2_ji
; demangled: glitch::core::overridePrimitiveStream(glitch::video::CPrimitiveStream const&, unsigned int, unsigned int, glitch::video::CPrimitiveStream&, unsigned int, int)
; decoder-mode: arm
006a1eb4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a1eb8  00 40 a0 e1                                      mov r4, r0
006a1ebc  01 80 a0 e1                                      mov r8, r1
006a1ec0  00 00 93 e5                                      ldr r0, [r3]
006a1ec4  02 10 a0 e3                                      mov r1, #2
006a1ec8  03 50 a0 e1                                      mov r5, r3
006a1ecc  02 90 a0 e1                                      mov sb, r2
006a1ed0  2c b0 9d e5                                      ldr fp, [sp, #0x2c]
006a1ed4  c5 fe fb eb                                      bl #0x5a19f0
006a1ed8  04 60 95 e5                                      ldr r6, [r5, #4]
006a1edc  00 a0 94 e5                                      ldr sl, [r4]
006a1ee0  28 30 9d e5                                      ldr r3, [sp, #0x28]
006a1ee4  06 60 80 e0                                      add r6, r0, r6
006a1ee8  06 70 a0 e3                                      mov r7, #6
006a1eec  00 00 5a e3                                      cmp sl, #0
006a1ef0  97 63 27 e0                                      mla r7, r7, r3, r6
006a1ef4  52 00 00 0a                                      beq #0x6a2044
006a1ef8  0a 00 a0 e1                                      mov r0, sl
006a1efc  00 10 a0 e3                                      mov r1, #0
006a1f00  f5 fe fb eb                                      bl #0x5a1adc
006a1f04  04 30 94 e5                                      ldr r3, [r4, #4]
006a1f08  00 00 5b e3                                      cmp fp, #0
006a1f0c  09 20 68 e0                                      rsb r2, r8, sb
006a1f10  03 a0 80 e0                                      add sl, r0, r3
006a1f14  b6 11 d4 11                                      ldrhne r1, [r4, #0x16]
006a1f18  1e 00 00 0a                                      beq #0x6a1f98
006a1f1c  05 00 51 e3                                      cmp r1, #5
006a1f20  b8 00 00 0a                                      beq #0x6a2208
006a1f24  06 00 51 e3                                      cmp r1, #6
006a1f28  a2 00 00 0a                                      beq #0x6a21b8
006a1f2c  04 00 51 e3                                      cmp r1, #4
006a1f30  27 00 00 0a                                      beq #0x6a1fd4
006a1f34  00 00 5a e3                                      cmp sl, #0
006a1f38  09 00 00 0a                                      beq #0x6a1f64
006a1f3c  00 40 94 e5                                      ldr r4, [r4]
006a1f40  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006a1f44  1f 20 03 e2                                      and r2, r3, #0x1f
006a1f48  01 00 52 e3                                      cmp r2, #1
006a1f4c  64 00 00 9a                                      bls #0x6a20e4
006a1f50  01 20 42 e2                                      sub r2, r2, #1
006a1f54  1f 30 c3 e3                                      bic r3, r3, #0x1f
006a1f58  03 30 82 e1                                      orr r3, r2, r3
006a1f5c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006a1f60  00 a0 a0 e3                                      mov sl, #0
006a1f64  00 00 56 e3                                      cmp r6, #0
006a1f68  08 00 00 0a                                      beq #0x6a1f90
006a1f6c  00 40 95 e5                                      ldr r4, [r5]
006a1f70  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006a1f74  1f 20 03 e2                                      and r2, r3, #0x1f
006a1f78  01 00 52 e3                                      cmp r2, #1
006a1f7c  0d 00 00 9a                                      bls #0x6a1fb8
006a1f80  01 20 42 e2                                      sub r2, r2, #1
006a1f84  1f 30 c3 e3                                      bic r3, r3, #0x1f
006a1f88  03 30 82 e1                                      orr r3, r2, r3
006a1f8c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006a1f90  0a 00 a0 e1                                      mov r0, sl
006a1f94  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a1f98  b6 11 d4 e1                                      ldrh r1, [r4, #0x16]
006a1f9c  06 00 51 e3                                      cmp r1, #6
006a1fa0  dd ff ff 1a                                      bne #0x6a1f1c
006a1fa4  91 02 02 e0                                      mul r2, r1, r2
006a1fa8  07 00 a0 e1                                      mov r0, r7
006a1fac  91 a8 21 e0                                      mla r1, r1, r8, sl
006a1fb0  2c b2 f1 eb                                      bl #0x30e868
006a1fb4  de ff ff ea                                      b #0x6a1f34
006a1fb8  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006a1fbc  20 00 13 e3                                      tst r3, #0x20
006a1fc0  a7 00 00 1a                                      bne #0x6a2264
006a1fc4  00 30 a0 e3                                      mov r3, #0
006a1fc8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006a1fcc  0a 00 a0 e1                                      mov r0, sl
006a1fd0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a1fd4  78 30 ff e6                                      uxth r3, r8
006a1fd8  03 00 59 e1                                      cmp sb, r3
006a1fdc  d4 ff ff 9a                                      bls #0x6a1f34
006a1fe0  88 80 8a e0                                      add r8, sl, r8, lsl #1
006a1fe4  06 70 87 e2                                      add r7, r7, #6
006a1fe8  04 80 88 e2                                      add r8, r8, #4
006a1fec  7b b0 ff e6                                      uxth fp, fp
006a1ff0  01 00 13 e3                                      tst r3, #1
006a1ff4  b2 20 58 11                                      ldrhne r2, [r8, #-2]
006a1ff8  b4 20 58 01                                      ldrheq r2, [r8, #-4]
006a1ffc  01 30 83 e2                                      add r3, r3, #1
006a2000  02 20 8b 10                                      addne r2, fp, r2
006a2004  02 20 8b 00                                      addeq r2, fp, r2
006a2008  b6 20 47 11                                      strhne r2, [r7, #-6]
006a200c  b6 20 47 01                                      strheq r2, [r7, #-6]
006a2010  b4 20 58 11                                      ldrhne r2, [r8, #-4]
006a2014  b2 20 58 01                                      ldrheq r2, [r8, #-2]
006a2018  73 30 ff e6                                      uxth r3, r3
006a201c  03 00 59 e1                                      cmp sb, r3
006a2020  02 20 8b e0                                      add r2, fp, r2
006a2024  b4 20 47 e1                                      strh r2, [r7, #-4]
006a2028  b0 20 d8 e1                                      ldrh r2, [r8]
006a202c  02 80 88 e2                                      add r8, r8, #2
006a2030  02 20 8b e0                                      add r2, fp, r2
006a2034  b2 20 47 e1                                      strh r2, [r7, #-2]
006a2038  06 70 87 e2                                      add r7, r7, #6
006a203c  eb ff ff 8a                                      bhi #0x6a1ff0
006a2040  bb ff ff ea                                      b #0x6a1f34
006a2044  b6 31 d4 e1                                      ldrh r3, [r4, #0x16]
006a2048  05 00 53 e3                                      cmp r3, #5
006a204c  43 00 00 0a                                      beq #0x6a2160
006a2050  06 00 53 e3                                      cmp r3, #6
006a2054  28 00 00 0a                                      beq #0x6a20fc
006a2058  04 00 53 e3                                      cmp r3, #4
006a205c  01 00 00 0a                                      beq #0x6a2068
006a2060  00 a0 a0 e3                                      mov sl, #0
006a2064  be ff ff ea                                      b #0x6a1f64
006a2068  10 10 94 e5                                      ldr r1, [r4, #0x10]
006a206c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006a2070  02 10 41 e2                                      sub r1, r1, #2
006a2074  03 10 51 e0                                      subs r1, r1, r3
006a2078  f8 ff ff 0a                                      beq #0x6a2060
006a207c  02 20 8b e2                                      add r2, fp, #2
006a2080  01 b0 8b e2                                      add fp, fp, #1
006a2084  7b b0 ff e6                                      uxth fp, fp
006a2088  72 20 ff e6                                      uxth r2, r2
006a208c  06 30 87 e2                                      add r3, r7, #6
006a2090  01 00 4b e2                                      sub r0, fp, #1
006a2094  01 00 1a e3                                      tst sl, #1
006a2098  70 00 ff e6                                      uxth r0, r0
006a209c  b6 00 43 e1                                      strh r0, [r3, #-6]
006a20a0  01 a0 8a e2                                      add sl, sl, #1
006a20a4  0b 00 a0 11                                      movne r0, fp
006a20a8  0b 00 a0 01                                      moveq r0, fp
006a20ac  b4 20 43 11                                      strhne r2, [r3, #-4]
006a20b0  b2 00 43 11                                      strhne r0, [r3, #-2]
006a20b4  b4 00 43 01                                      strheq r0, [r3, #-4]
006a20b8  b2 20 43 01                                      strheq r2, [r3, #-2]
006a20bc  01 b0 8b e2                                      add fp, fp, #1
006a20c0  01 20 82 e2                                      add r2, r2, #1
006a20c4  01 00 5a e1                                      cmp sl, r1
006a20c8  03 00 a0 e1                                      mov r0, r3
006a20cc  7b b0 ff e6                                      uxth fp, fp
006a20d0  06 30 83 e2                                      add r3, r3, #6
006a20d4  72 20 ff e6                                      uxth r2, r2
006a20d8  ec ff ff 1a                                      bne #0x6a2090
006a20dc  00 a0 67 e0                                      rsb sl, r7, r0
006a20e0  9f ff ff ea                                      b #0x6a1f64
006a20e4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006a20e8  20 00 13 e3                                      tst r3, #0x20
006a20ec  61 00 00 1a                                      bne #0x6a2278
006a20f0  00 a0 a0 e3                                      mov sl, #0
006a20f4  13 a0 c4 e5                                      strb sl, [r4, #0x13]
006a20f8  99 ff ff ea                                      b #0x6a1f64
006a20fc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006a2100  10 c0 94 e5                                      ldr ip, [r4, #0x10]
006a2104  ab 3a 0a e3                                      movw r3, #0xaaab
006a2108  aa 3a 4a e3                                      movt r3, #0xaaaa
006a210c  0c c0 62 e0                                      rsb ip, r2, ip
006a2110  93 2c 8c e0                                      umull r2, ip, r3, ip
006a2114  ac c0 b0 e1                                      lsrs ip, ip, #1
006a2118  d0 ff ff 0a                                      beq #0x6a2060
006a211c  7b b0 ff e6                                      uxth fp, fp
006a2120  07 30 a0 e1                                      mov r3, r7
006a2124  01 a0 8a e2                                      add sl, sl, #1
006a2128  01 00 8b e2                                      add r0, fp, #1
006a212c  02 10 8b e2                                      add r1, fp, #2
006a2130  03 20 8b e2                                      add r2, fp, #3
006a2134  0c 00 5a e1                                      cmp sl, ip
006a2138  b0 b0 c3 e1                                      strh fp, [r3]
006a213c  b2 00 c3 e1                                      strh r0, [r3, #2]
006a2140  b4 10 c3 e1                                      strh r1, [r3, #4]
006a2144  72 b0 ff e6                                      uxth fp, r2
006a2148  06 30 83 e2                                      add r3, r3, #6
006a214c  f4 ff ff 1a                                      bne #0x6a2124
006a2150  06 30 a0 e3                                      mov r3, #6
006a2154  93 7a 2a e0                                      mla sl, r3, sl, r7
006a2158  0a a0 67 e0                                      rsb sl, r7, sl
006a215c  80 ff ff ea                                      b #0x6a1f64
006a2160  10 00 94 e5                                      ldr r0, [r4, #0x10]
006a2164  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006a2168  02 00 40 e2                                      sub r0, r0, #2
006a216c  03 00 50 e0                                      subs r0, r0, r3
006a2170  ba ff ff 0a                                      beq #0x6a2060
006a2174  7b b0 ff e6                                      uxth fp, fp
006a2178  01 20 8b e2                                      add r2, fp, #1
006a217c  72 20 ff e6                                      uxth r2, r2
006a2180  07 30 a0 e1                                      mov r3, r7
006a2184  01 10 82 e2                                      add r1, r2, #1
006a2188  01 a0 8a e2                                      add sl, sl, #1
006a218c  b2 20 c3 e1                                      strh r2, [r3, #2]
006a2190  00 00 5a e1                                      cmp sl, r0
006a2194  71 20 ff e6                                      uxth r2, r1
006a2198  b0 b0 c3 e1                                      strh fp, [r3]
006a219c  b4 20 c3 e1                                      strh r2, [r3, #4]
006a21a0  06 30 83 e2                                      add r3, r3, #6
006a21a4  f6 ff ff 1a                                      bne #0x6a2184
006a21a8  06 30 a0 e3                                      mov r3, #6
006a21ac  93 7a 2a e0                                      mla sl, r3, sl, r7
006a21b0  0a a0 67 e0                                      rsb sl, r7, sl
006a21b4  6a ff ff ea                                      b #0x6a1f64
006a21b8  00 00 52 e3                                      cmp r2, #0
006a21bc  5c ff ff 0a                                      beq #0x6a1f34
006a21c0  91 a8 28 e0                                      mla r8, r1, r8, sl
006a21c4  7b b0 ff e6                                      uxth fp, fp
006a21c8  00 30 a0 e3                                      mov r3, #0
006a21cc  b0 10 d8 e1                                      ldrh r1, [r8]
006a21d0  01 30 83 e2                                      add r3, r3, #1
006a21d4  02 00 53 e1                                      cmp r3, r2
006a21d8  01 10 8b e0                                      add r1, fp, r1
006a21dc  b0 10 c7 e1                                      strh r1, [r7]
006a21e0  b2 10 d8 e1                                      ldrh r1, [r8, #2]
006a21e4  01 10 8b e0                                      add r1, fp, r1
006a21e8  b2 10 c7 e1                                      strh r1, [r7, #2]
006a21ec  b4 10 d8 e1                                      ldrh r1, [r8, #4]
006a21f0  06 80 88 e2                                      add r8, r8, #6
006a21f4  01 10 8b e0                                      add r1, fp, r1
006a21f8  b4 10 c7 e1                                      strh r1, [r7, #4]
006a21fc  06 70 87 e2                                      add r7, r7, #6
006a2200  f1 ff ff 1a                                      bne #0x6a21cc
006a2204  4a ff ff ea                                      b #0x6a1f34
006a2208  b3 10 90 e1                                      ldrh r1, [r0, r3]
006a220c  7b b0 ff e6                                      uxth fp, fp
006a2210  01 30 88 e2                                      add r3, r8, #1
006a2214  83 30 a0 e1                                      lsl r3, r3, #1
006a2218  01 10 8b e0                                      add r1, fp, r1
006a221c  08 00 59 e1                                      cmp sb, r8
006a2220  b3 20 9a e1                                      ldrh r2, [sl, r3]
006a2224  71 10 ff e6                                      uxth r1, r1
006a2228  03 30 8a e0                                      add r3, sl, r3
006a222c  40 ff ff 9a                                      bls #0x6a1f34
006a2230  0b 20 82 e0                                      add r2, r2, fp
006a2234  72 20 ff e6                                      uxth r2, r2
006a2238  b2 20 c7 e1                                      strh r2, [r7, #2]
006a223c  b0 10 c7 e1                                      strh r1, [r7]
006a2240  b2 20 d3 e0                                      ldrh r2, [r3], #2
006a2244  01 80 88 e2                                      add r8, r8, #1
006a2248  08 00 59 e1                                      cmp sb, r8
006a224c  02 20 8b e0                                      add r2, fp, r2
006a2250  72 20 ff e6                                      uxth r2, r2
006a2254  b4 20 c7 e1                                      strh r2, [r7, #4]
006a2258  06 70 87 e2                                      add r7, r7, #6
006a225c  f5 ff ff 8a                                      bhi #0x6a2238
006a2260  33 ff ff ea                                      b #0x6a1f34
006a2264  00 30 94 e5                                      ldr r3, [r4]
006a2268  04 00 a0 e1                                      mov r0, r4
006a226c  0f e0 a0 e1                                      mov lr, pc
006a2270  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a2274  52 ff ff ea                                      b #0x6a1fc4
006a2278  00 30 94 e5                                      ldr r3, [r4]
006a227c  04 00 a0 e1                                      mov r0, r4
006a2280  0f e0 a0 e1                                      mov lr, pc
006a2284  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a2288  98 ff ff ea                                      b #0x6a20f0

; FUNCTION 0x006a2cdc, declared_size=3080, range_size=3080, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core21createQuantizedBufferERKN5boost13intrusive_ptrIKNS_5scene11CMeshBufferEEEbbPNS_5video12IVideoDriverE
; demangled: glitch::core::createQuantizedBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&, bool, bool, glitch::video::IVideoDriver*)
; decoder-mode: arm
006a2cdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a2ce0  ac d0 4d e2                                      sub sp, sp, #0xac
006a2ce4  a8 c0 8d e2                                      add ip, sp, #0xa8
006a2ce8  28 c0 8d e5                                      str ip, [sp, #0x28]
006a2cec  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006a2cf0  01 b0 a0 e1                                      mov fp, r1
006a2cf4  00 c0 9b e5                                      ldr ip, [fp]
006a2cf8  00 10 a0 e3                                      mov r1, #0
006a2cfc  4c 10 6e e5                                      strb r1, [lr, #-0x4c]!
006a2d00  9c 10 8d e5                                      str r1, [sp, #0x9c]
006a2d04  60 10 8d e5                                      str r1, [sp, #0x60]
006a2d08  6c 10 8d e5                                      str r1, [sp, #0x6c]
006a2d0c  94 10 8d e5                                      str r1, [sp, #0x94]
006a2d10  98 10 8d e5                                      str r1, [sp, #0x98]
006a2d14  28 e0 8d e5                                      str lr, [sp, #0x28]
006a2d18  64 e0 8d e5                                      str lr, [sp, #0x64]
006a2d1c  68 e0 8d e5                                      str lr, [sp, #0x68]
006a2d20  b0 1b 9f e5                                      ldr r1, [pc, #0xbb0]
006a2d24  14 40 9c e5                                      ldr r4, [ip, #0x14]
006a2d28  3c 30 8d e5                                      str r3, [sp, #0x3c]
006a2d2c  01 10 8f e0                                      add r1, pc, r1
006a2d30  30 10 8d e5                                      str r1, [sp, #0x30]
006a2d34  54 00 8d e5                                      str r0, [sp, #0x54]
006a2d38  38 20 8d e5                                      str r2, [sp, #0x38]
006a2d3c  00 00 54 e3                                      cmp r4, #0
006a2d40  00 30 94 15                                      ldrne r3, [r4]
006a2d44  08 20 94 e5                                      ldr r2, [r4, #8]
006a2d48  01 30 83 12                                      addne r3, r3, #1
006a2d4c  00 30 84 15                                      strne r3, [r4]
006a2d50  00 30 94 e5                                      ldr r3, [r4]
006a2d54  2c 20 8d e5                                      str r2, [sp, #0x2c]
006a2d58  01 30 43 e2                                      sub r3, r3, #1
006a2d5c  00 00 53 e3                                      cmp r3, #0
006a2d60  00 30 84 e5                                      str r3, [r4]
006a2d64  cd 02 00 0a                                      beq #0x6a38a0
006a2d68  00 30 9b e5                                      ldr r3, [fp]
006a2d6c  14 50 93 e5                                      ldr r5, [r3, #0x14]
006a2d70  00 00 55 e3                                      cmp r5, #0
006a2d74  14 40 a0 03                                      moveq r4, #0x14
006a2d78  0e 00 00 0a                                      beq #0x6a2db8
006a2d7c  05 40 a0 e1                                      mov r4, r5
006a2d80  14 30 94 e4                                      ldr r3, [r4], #0x14
006a2d84  00 00 53 e3                                      cmp r3, #0
006a2d88  00 30 85 e5                                      str r3, [r5]
006a2d8c  03 00 00 1a                                      bne #0x6a2da0
006a2d90  05 00 a0 e1                                      mov r0, r5
006a2d94  20 f7 fb eb                                      bl #0x5a0a1c
006a2d98  05 00 a0 e1                                      mov r0, r5
006a2d9c  43 ad f1 eb                                      bl #0x30e2b0
006a2da0  00 30 9b e5                                      ldr r3, [fp]
006a2da4  14 50 93 e5                                      ldr r5, [r3, #0x14]
006a2da8  00 00 55 e3                                      cmp r5, #0
006a2dac  00 30 95 15                                      ldrne r3, [r5]
006a2db0  01 30 83 12                                      addne r3, r3, #1
006a2db4  00 30 85 15                                      strne r3, [r5]
006a2db8  00 30 95 e5                                      ldr r3, [r5]
006a2dbc  10 c0 95 e5                                      ldr ip, [r5, #0x10]
006a2dc0  01 30 43 e2                                      sub r3, r3, #1
006a2dc4  00 00 53 e3                                      cmp r3, #0
006a2dc8  18 c0 8d e5                                      str ip, [sp, #0x18]
006a2dcc  00 30 85 e5                                      str r3, [r5]
006a2dd0  ad 02 00 0a                                      beq #0x6a388c
006a2dd4  18 e0 9d e5                                      ldr lr, [sp, #0x18]
006a2dd8  0e 00 54 e1                                      cmp r4, lr
006a2ddc  94 00 8d 02                                      addeq r0, sp, #0x94
006a2de0  34 00 8d 05                                      streq r0, [sp, #0x34]
006a2de4  73 00 00 0a                                      beq #0x6a2fb8
006a2de8  ec 1a 9f e5                                      ldr r1, [pc, #0xaec]
006a2dec  28 60 9d e5                                      ldr r6, [sp, #0x28]
006a2df0  94 20 8d e2                                      add r2, sp, #0x94
006a2df4  74 30 8d e2                                      add r3, sp, #0x74
006a2df8  a4 c0 8d e2                                      add ip, sp, #0xa4
006a2dfc  20 10 8d e5                                      str r1, [sp, #0x20]
006a2e00  34 20 8d e5                                      str r2, [sp, #0x34]
006a2e04  1c 30 8d e5                                      str r3, [sp, #0x1c]
006a2e08  40 c0 8d e5                                      str ip, [sp, #0x40]
006a2e0c  00 50 a0 e3                                      mov r5, #0
006a2e10  01 90 a0 e3                                      mov sb, #1
006a2e14  44 b0 8d e5                                      str fp, [sp, #0x44]
006a2e18  04 10 a0 e1                                      mov r1, r4
006a2e1c  06 00 a0 e1                                      mov r0, r6
006a2e20  41 fa ff eb                                      bl #0x6a172c
006a2e24  04 10 a0 e1                                      mov r1, r4
006a2e28  00 80 a0 e1                                      mov r8, r0
006a2e2c  06 00 a0 e1                                      mov r0, r6
006a2e30  3d fa ff eb                                      bl #0x6a172c
006a2e34  00 00 56 e1                                      cmp r6, r0
006a2e38  7d 01 00 0a                                      beq #0x6a3434
006a2e3c  14 70 98 e5                                      ldr r7, [r8, #0x14]
006a2e40  00 00 57 e3                                      cmp r7, #0
006a2e44  04 30 97 15                                      ldrne r3, [r7, #4]
006a2e48  01 30 83 12                                      addne r3, r3, #1
006a2e4c  04 30 87 15                                      strne r3, [r7, #4]
006a2e50  ba b1 d8 e1                                      ldrh fp, [r8, #0x1a]
006a2e54  b8 21 d8 e1                                      ldrh r2, [r8, #0x18]
006a2e58  ff 10 a0 e3                                      mov r1, #0xff
006a2e5c  78 50 8d e5                                      str r5, [sp, #0x78]
006a2e60  7c 50 8d e5                                      str r5, [sp, #0x7c]
006a2e64  80 10 8d e5                                      str r1, [sp, #0x80]
006a2e68  b4 58 cd e1                                      strh r5, [sp, #0x84]
006a2e6c  b6 58 cd e1                                      strh r5, [sp, #0x86]
006a2e70  74 40 8d e5                                      str r4, [sp, #0x74]
006a2e74  b8 10 d4 e1                                      ldrh r1, [r4, #8]
006a2e78  ba a0 d4 e1                                      ldrh sl, [r4, #0xa]
006a2e7c  19 31 a0 e1                                      lsl r3, sb, r1
006a2e80  ff 34 c3 e3                                      bic r3, r3, #0xff000000
006a2e84  fe 38 c3 e3                                      bic r3, r3, #0xfe0000
006a2e88  01 30 c3 e3                                      bic r3, r3, #1
006a2e8c  00 00 53 e3                                      cmp r3, #0
006a2e90  06 00 00 1a                                      bne #0x6a2eb0
006a2e94  11 00 51 e3                                      cmp r1, #0x11
006a2e98  8d 01 00 0a                                      beq #0x6a34d4
006a2e9c  00 00 51 e3                                      cmp r1, #0
006a2ea0  4b 01 00 1a                                      bne #0x6a33d4
006a2ea4  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006a2ea8  00 00 5c e3                                      cmp ip, #0
006a2eac  48 01 00 0a                                      beq #0x6a33d4
006a2eb0  02 30 a0 e3                                      mov r3, #2
006a2eb4  30 00 9d e5                                      ldr r0, [sp, #0x30]
006a2eb8  20 e0 9d e5                                      ldr lr, [sp, #0x20]
006a2ebc  03 a0 a0 e1                                      mov sl, r3
006a2ec0  0e 10 90 e7                                      ldr r1, [r0, lr]
006a2ec4  03 80 d1 e7                                      ldrb r8, [r1, r3]
006a2ec8  0b 00 58 e1                                      cmp r8, fp
006a2ecc  08 b0 a0 21                                      movhs fp, r8
006a2ed0  00 00 52 e3                                      cmp r2, #0
006a2ed4  47 01 00 0a                                      beq #0x6a33f8
006a2ed8  19 38 a0 e1                                      lsl r3, sb, r8
006a2edc  01 30 43 e2                                      sub r3, r3, #1
006a2ee0  02 00 13 e1                                      tst r3, r2
006a2ee4  43 01 00 0a                                      beq #0x6a33f8
006a2ee8  01 20 42 e2                                      sub r2, r2, #1
006a2eec  08 00 82 e0                                      add r0, r2, r8
006a2ef0  08 10 a0 e1                                      mov r1, r8
006a2ef4  ea ac f1 eb                                      bl #0x30e2a4
006a2ef8  90 08 03 e0                                      mul r3, r0, r8
006a2efc  73 30 ff e6                                      uxth r3, r3
006a2f00  03 20 a0 e1                                      mov r2, r3
006a2f04  bc 10 d4 e1                                      ldrh r1, [r4, #0xc]
006a2f08  00 00 57 e3                                      cmp r7, #0
006a2f0c  78 70 8d e5                                      str r7, [sp, #0x78]
006a2f10  04 00 97 15                                      ldrne r0, [r7, #4]
006a2f14  01 00 80 12                                      addne r0, r0, #1
006a2f18  04 00 87 15                                      strne r0, [r7, #4]
006a2f1c  b4 18 cd e1                                      strh r1, [sp, #0x84]
006a2f20  00 10 a0 e3                                      mov r1, #0
006a2f24  80 a0 8d e5                                      str sl, [sp, #0x80]
006a2f28  b6 18 cd e1                                      strh r1, [sp, #0x86]
006a2f2c  7c 20 8d e5                                      str r2, [sp, #0x7c]
006a2f30  bc 20 d4 e1                                      ldrh r2, [r4, #0xc]
006a2f34  06 00 a0 e1                                      mov r0, r6
006a2f38  04 10 a0 e1                                      mov r1, r4
006a2f3c  92 38 28 e0                                      mla r8, r2, r8, r3
006a2f40  7c fe ff eb                                      bl #0x6a2938
006a2f44  00 00 57 e3                                      cmp r7, #0
006a2f48  04 30 97 15                                      ldrne r3, [r7, #4]
006a2f4c  00 a0 a0 e1                                      mov sl, r0
006a2f50  78 80 ff e6                                      uxth r8, r8
006a2f54  01 30 83 12                                      addne r3, r3, #1
006a2f58  04 30 87 15                                      strne r3, [r7, #4]
006a2f5c  00 00 90 e5                                      ldr r0, [r0]
006a2f60  00 70 8a e5                                      str r7, [sl]
006a2f64  00 00 50 e3                                      cmp r0, #0
006a2f68  00 00 00 0a                                      beq #0x6a2f70
006a2f6c  84 e9 f1 eb                                      bl #0x31d584
006a2f70  b6 b0 ca e1                                      strh fp, [sl, #6]
006a2f74  b4 80 ca e1                                      strh r8, [sl, #4]
006a2f78  34 00 9d e5                                      ldr r0, [sp, #0x34]
006a2f7c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006a2f80  e2 fe ff eb                                      bl #0x6a2b10
006a2f84  78 00 9d e5                                      ldr r0, [sp, #0x78]
006a2f88  00 00 50 e3                                      cmp r0, #0
006a2f8c  00 00 00 0a                                      beq #0x6a2f94
006a2f90  7b e9 f1 eb                                      bl #0x31d584
006a2f94  00 00 57 e3                                      cmp r7, #0
006a2f98  01 00 00 0a                                      beq #0x6a2fa4
006a2f9c  07 00 a0 e1                                      mov r0, r7
006a2fa0  77 e9 f1 eb                                      bl #0x31d584
006a2fa4  18 20 9d e5                                      ldr r2, [sp, #0x18]
006a2fa8  10 40 84 e2                                      add r4, r4, #0x10
006a2fac  02 00 54 e1                                      cmp r4, r2
006a2fb0  98 ff ff 1a                                      bne #0x6a2e18
006a2fb4  44 b0 9d e5                                      ldr fp, [sp, #0x44]
006a2fb8  64 40 9d e5                                      ldr r4, [sp, #0x64]
006a2fbc  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006a2fc0  0e 00 54 e1                                      cmp r4, lr
006a2fc4  1f 00 00 0a                                      beq #0x6a3048
006a2fc8  ba 51 d4 e1                                      ldrh r5, [r4, #0x1a]
006a2fcc  b8 01 d4 e1                                      ldrh r0, [r4, #0x18]
006a2fd0  05 10 a0 e1                                      mov r1, r5
006a2fd4  05 00 80 e0                                      add r0, r0, r5
006a2fd8  01 00 40 e2                                      sub r0, r0, #1
006a2fdc  b0 ac f1 eb                                      bl #0x30e2a4
006a2fe0  90 05 05 e0                                      mul r5, r0, r5
006a2fe4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006a2fe8  75 30 ff e6                                      uxth r3, r5
006a2fec  b8 31 c4 e1                                      strh r3, [r4, #0x18]
006a2ff0  9c 03 05 e0                                      mul r5, ip, r3
006a2ff4  00 10 a0 e3                                      mov r1, #0
006a2ff8  05 00 a0 e1                                      mov r0, r5
006a2ffc  14 60 94 e5                                      ldr r6, [r4, #0x14]
006a3000  68 44 fa eb                                      bl #0x5341a8
006a3004  05 10 a0 e1                                      mov r1, r5
006a3008  00 20 a0 e1                                      mov r2, r0
006a300c  01 30 a0 e3                                      mov r3, #1
006a3010  06 00 a0 e1                                      mov r0, r6
006a3014  26 fb fb eb                                      bl #0x5a1cb4
006a3018  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006a301c  00 00 52 e3                                      cmp r2, #0
006a3020  01 00 00 1a                                      bne #0x6a302c
006a3024  f5 00 00 ea                                      b #0x6a3400
006a3028  03 20 a0 e1                                      mov r2, r3
006a302c  08 30 92 e5                                      ldr r3, [r2, #8]
006a3030  00 00 53 e3                                      cmp r3, #0
006a3034  fb ff ff 1a                                      bne #0x6a3028
006a3038  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006a303c  02 40 a0 e1                                      mov r4, r2
006a3040  0e 00 54 e1                                      cmp r4, lr
006a3044  df ff ff 1a                                      bne #0x6a2fc8
006a3048  00 30 9b e5                                      ldr r3, [fp]
006a304c  14 40 93 e5                                      ldr r4, [r3, #0x14]
006a3050  00 00 54 e3                                      cmp r4, #0
006a3054  16 02 00 0a                                      beq #0x6a38b4
006a3058  00 30 94 e5                                      ldr r3, [r4]
006a305c  04 00 a0 e1                                      mov r0, r4
006a3060  01 30 83 e2                                      add r3, r3, #1
006a3064  00 30 84 e5                                      str r3, [r4]
006a3068  7a f6 fb eb                                      bl #0x5a0a58
006a306c  00 30 94 e5                                      ldr r3, [r4]
006a3070  00 10 a0 e1                                      mov r1, r0
006a3074  01 30 43 e2                                      sub r3, r3, #1
006a3078  00 00 53 e3                                      cmp r3, #0
006a307c  00 30 84 e5                                      str r3, [r4]
006a3080  05 00 00 1a                                      bne #0x6a309c
006a3084  04 00 a0 e1                                      mov r0, r4
006a3088  14 10 8d e5                                      str r1, [sp, #0x14]
006a308c  62 f6 fb eb                                      bl #0x5a0a1c
006a3090  04 00 a0 e1                                      mov r0, r4
006a3094  85 ac f1 eb                                      bl #0x30e2b0
006a3098  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a309c  a0 00 8d e2                                      add r0, sp, #0xa0
006a30a0  ad f8 fb eb                                      bl #0x5a135c
006a30a4  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006a30a8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006a30ac  08 00 83 e5                                      str r0, [r3, #8]
006a30b0  94 40 9d e5                                      ldr r4, [sp, #0x94]
006a30b4  98 30 9d e5                                      ldr r3, [sp, #0x98]
006a30b8  03 00 54 e1                                      cmp r4, r3
006a30bc  a1 01 00 0a                                      beq #0x6a3748
006a30c0  14 18 9f e5                                      ldr r1, [pc, #0x814]
006a30c4  00 20 a0 e3                                      mov r2, #0
006a30c8  88 30 8d e2                                      add r3, sp, #0x88
006a30cc  74 c0 8d e2                                      add ip, sp, #0x74
006a30d0  40 10 8d e5                                      str r1, [sp, #0x40]
006a30d4  18 20 8d e5                                      str r2, [sp, #0x18]
006a30d8  14 40 84 e2                                      add r4, r4, #0x14
006a30dc  38 30 8d e5                                      str r3, [sp, #0x38]
006a30e0  3c c0 8d e5                                      str ip, [sp, #0x3c]
006a30e4  63 00 00 ea                                      b #0x6a3278
006a30e8  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
006a30ec  00 c0 a0 e3                                      mov ip, #0
006a30f0  88 c0 8d e5                                      str ip, [sp, #0x88]
006a30f4  8c c0 8d e5                                      str ip, [sp, #0x8c]
006a30f8  90 c0 8d e5                                      str ip, [sp, #0x90]
006a30fc  74 c0 8d e5                                      str ip, [sp, #0x74]
006a3100  78 c0 8d e5                                      str ip, [sp, #0x78]
006a3104  7c c0 8d e5                                      str ip, [sp, #0x7c]
006a3108  be 30 d6 e1                                      ldrh r3, [r6, #0xe]
006a310c  b2 10 54 e1                                      ldrh r1, [r4, #-2]
006a3110  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006a3114  00 e0 8d e5                                      str lr, [sp]
006a3118  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
006a311c  08 20 a0 e1                                      mov r2, r8
006a3120  07 00 a0 e1                                      mov r0, r7
006a3124  00 50 8d e9                                      stmib sp, {ip, lr}
006a3128  74 f8 ff eb                                      bl #0x6a1300
006a312c  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006a3130  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006a3134  04 20 82 e3                                      orr r2, r2, #4
006a3138  be 20 c3 e1                                      strh r2, [r3, #0xe]
006a313c  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006a3140  88 20 9d e5                                      ldr r2, [sp, #0x88]
006a3144  10 30 93 e5                                      ldr r3, [r3, #0x10]
006a3148  00 20 83 e5                                      str r2, [r3]
006a314c  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006a3150  04 20 83 e5                                      str r2, [r3, #4]
006a3154  90 20 9d e5                                      ldr r2, [sp, #0x90]
006a3158  08 20 83 e5                                      str r2, [r3, #8]
006a315c  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006a3160  74 20 9d e5                                      ldr r2, [sp, #0x74]
006a3164  10 30 93 e5                                      ldr r3, [r3, #0x10]
006a3168  0c 20 83 e5                                      str r2, [r3, #0xc]
006a316c  78 20 9d e5                                      ldr r2, [sp, #0x78]
006a3170  0c 30 83 e2                                      add r3, r3, #0xc
006a3174  04 20 83 e5                                      str r2, [r3, #4]
006a3178  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
006a317c  08 20 83 e5                                      str r2, [r3, #8]
006a3180  10 30 14 e5                                      ldr r3, [r4, #-0x10]
006a3184  a0 70 9d e5                                      ldr r7, [sp, #0xa0]
006a3188  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006a318c  00 00 53 e3                                      cmp r3, #0
006a3190  04 20 93 15                                      ldrne r2, [r3, #4]
006a3194  14 60 87 e2                                      add r6, r7, #0x14
006a3198  0c 60 86 e0                                      add r6, r6, ip
006a319c  01 20 82 12                                      addne r2, r2, #1
006a31a0  04 20 83 15                                      strne r2, [r3, #4]
006a31a4  00 00 96 e5                                      ldr r0, [r6]
006a31a8  00 30 86 e5                                      str r3, [r6]
006a31ac  00 00 50 e3                                      cmp r0, #0
006a31b0  00 00 00 0a                                      beq #0x6a31b8
006a31b4  f2 e8 f1 eb                                      bl #0x31d584
006a31b8  0c 30 14 e5                                      ldr r3, [r4, #-0xc]
006a31bc  07 00 a0 e1                                      mov r0, r7
006a31c0  00 10 a0 e3                                      mov r1, #0
006a31c4  04 30 86 e5                                      str r3, [r6, #4]
006a31c8  b8 e0 54 e1                                      ldrh lr, [r4, #-8]
006a31cc  ba e0 c6 e1                                      strh lr, [r6, #0xa]
006a31d0  b4 20 54 e1                                      ldrh r2, [r4, #-4]
006a31d4  bc 20 c6 e1                                      strh r2, [r6, #0xc]
006a31d8  b2 30 54 e1                                      ldrh r3, [r4, #-2]
006a31dc  be 30 c6 e1                                      strh r3, [r6, #0xe]
006a31e0  85 f6 fb eb                                      bl #0x5a0bfc
006a31e4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006a31e8  00 00 5c e3                                      cmp ip, #0
006a31ec  07 00 00 0a                                      beq #0x6a3210
006a31f0  13 30 d9 e5                                      ldrb r3, [sb, #0x13]
006a31f4  1f 20 03 e2                                      and r2, r3, #0x1f
006a31f8  01 00 52 e3                                      cmp r2, #1
006a31fc  ed 00 00 9a                                      bls #0x6a35b8
006a3200  01 20 42 e2                                      sub r2, r2, #1
006a3204  1f 30 c3 e3                                      bic r3, r3, #0x1f
006a3208  03 30 82 e1                                      orr r3, r2, r3
006a320c  13 30 c9 e5                                      strb r3, [sb, #0x13]
006a3210  00 00 59 e3                                      cmp sb, #0
006a3214  01 00 00 0a                                      beq #0x6a3220
006a3218  09 00 a0 e1                                      mov r0, sb
006a321c  d8 e8 f1 eb                                      bl #0x31d584
006a3220  20 00 9d e5                                      ldr r0, [sp, #0x20]
006a3224  00 00 50 e3                                      cmp r0, #0
006a3228  07 00 00 0a                                      beq #0x6a324c
006a322c  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006a3230  1f 20 03 e2                                      and r2, r3, #0x1f
006a3234  01 00 52 e3                                      cmp r2, #1
006a3238  d8 00 00 9a                                      bls #0x6a35a0
006a323c  01 20 42 e2                                      sub r2, r2, #1
006a3240  1f 30 c3 e3                                      bic r3, r3, #0x1f
006a3244  03 30 82 e1                                      orr r3, r2, r3
006a3248  13 30 c5 e5                                      strb r3, [r5, #0x13]
006a324c  00 00 55 e3                                      cmp r5, #0
006a3250  01 00 00 0a                                      beq #0x6a325c
006a3254  05 00 a0 e1                                      mov r0, r5
006a3258  c9 e8 f1 eb                                      bl #0x31d584
006a325c  18 20 9d e5                                      ldr r2, [sp, #0x18]
006a3260  10 20 82 e2                                      add r2, r2, #0x10
006a3264  18 20 8d e5                                      str r2, [sp, #0x18]
006a3268  98 20 9d e5                                      ldr r2, [sp, #0x98]
006a326c  04 00 52 e1                                      cmp r2, r4
006a3270  14 40 84 e2                                      add r4, r4, #0x14
006a3274  33 01 00 0a                                      beq #0x6a3748
006a3278  28 00 9d e5                                      ldr r0, [sp, #0x28]
006a327c  14 10 14 e5                                      ldr r1, [r4, #-0x14]
006a3280  ac fd ff eb                                      bl #0x6a2938
006a3284  14 30 14 e5                                      ldr r3, [r4, #-0x14]
006a3288  00 60 a0 e1                                      mov r6, r0
006a328c  00 50 93 e5                                      ldr r5, [r3]
006a3290  00 00 55 e3                                      cmp r5, #0
006a3294  8a 01 00 0a                                      beq #0x6a38c4
006a3298  04 30 95 e5                                      ldr r3, [r5, #4]
006a329c  05 00 a0 e1                                      mov r0, r5
006a32a0  01 10 a0 e3                                      mov r1, #1
006a32a4  02 30 83 e2                                      add r3, r3, #2
006a32a8  04 30 85 e5                                      str r3, [r5, #4]
006a32ac  0a fa fb eb                                      bl #0x5a1adc
006a32b0  20 00 8d e5                                      str r0, [sp, #0x20]
006a32b4  05 00 a0 e1                                      mov r0, r5
006a32b8  b1 e8 f1 eb                                      bl #0x31d584
006a32bc  00 90 96 e5                                      ldr sb, [r6]
006a32c0  04 10 a0 e3                                      mov r1, #4
006a32c4  00 00 59 e3                                      cmp sb, #0
006a32c8  04 30 99 15                                      ldrne r3, [sb, #4]
006a32cc  09 00 a0 01                                      moveq r0, sb
006a32d0  01 30 83 12                                      addne r3, r3, #1
006a32d4  04 30 89 15                                      strne r3, [sb, #4]
006a32d8  00 00 96 15                                      ldrne r0, [r6]
006a32dc  c3 f9 fb eb                                      bl #0x5a19f0
006a32e0  1c 00 8d e5                                      str r0, [sp, #0x1c]
006a32e4  b4 10 d6 e1                                      ldrh r1, [r6, #4]
006a32e8  14 60 14 e5                                      ldr r6, [r4, #-0x14]
006a32ec  08 30 14 e5                                      ldr r3, [r4, #-8]
006a32f0  b2 10 44 e1                                      strh r1, [r4, #-2]
006a32f4  ba 20 d6 e1                                      ldrh r2, [r6, #0xa]
006a32f8  04 80 96 e5                                      ldr r8, [r6, #4]
006a32fc  0c 70 14 e5                                      ldr r7, [r4, #-0xc]
006a3300  20 e0 9d e5                                      ldr lr, [sp, #0x20]
006a3304  02 00 53 e1                                      cmp r3, r2
006a3308  07 70 80 e0                                      add r7, r0, r7
006a330c  08 80 8e e0                                      add r8, lr, r8
006a3310  73 00 00 0a                                      beq #0x6a34e4
006a3314  b8 20 d6 e1                                      ldrh r2, [r6, #8]
006a3318  00 00 52 e3                                      cmp r2, #0
006a331c  71 ff ff 0a                                      beq #0x6a30e8
006a3320  11 00 52 e3                                      cmp r2, #0x11
006a3324  a9 00 00 0a                                      beq #0x6a35d0
006a3328  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006a332c  00 00 a0 e3                                      mov r0, #0
006a3330  74 00 8d e5                                      str r0, [sp, #0x74]
006a3334  78 00 8d e5                                      str r0, [sp, #0x78]
006a3338  88 00 8d e5                                      str r0, [sp, #0x88]
006a333c  8c 00 8d e5                                      str r0, [sp, #0x8c]
006a3340  b2 10 54 e1                                      ldrh r1, [r4, #-2]
006a3344  be 30 d6 e1                                      ldrh r3, [r6, #0xe]
006a3348  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
006a334c  00 c0 8d e5                                      str ip, [sp]
006a3350  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006a3354  07 00 a0 e1                                      mov r0, r7
006a3358  08 20 a0 e1                                      mov r2, r8
006a335c  04 e0 8d e5                                      str lr, [sp, #4]
006a3360  08 c0 8d e5                                      str ip, [sp, #8]
006a3364  61 f8 ff eb                                      bl #0x6a14f0
006a3368  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006a336c  b8 30 d6 e1                                      ldrh r3, [r6, #8]
006a3370  08 e0 a0 e3                                      mov lr, #8
006a3374  be 00 d1 e1                                      ldrh r0, [r1, #0xe]
006a3378  01 30 43 e2                                      sub r3, r3, #1
006a337c  73 30 ef e6                                      uxtb r3, r3
006a3380  1e 03 80 e1                                      orr r0, r0, lr, lsl r3
006a3384  be 00 c1 e1                                      strh r0, [r1, #0xe]
006a3388  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
006a338c  18 20 a0 e3                                      mov r2, #0x18
006a3390  93 22 21 e0                                      mla r1, r3, r2, r2
006a3394  10 00 90 e5                                      ldr r0, [r0, #0x10]
006a3398  92 03 03 e0                                      mul r3, r2, r3
006a339c  74 20 9d e5                                      ldr r2, [sp, #0x74]
006a33a0  24 30 83 e2                                      add r3, r3, #0x24
006a33a4  01 20 80 e7                                      str r2, [r0, r1]
006a33a8  78 20 9d e5                                      ldr r2, [sp, #0x78]
006a33ac  01 10 80 e0                                      add r1, r0, r1
006a33b0  04 20 81 e5                                      str r2, [r1, #4]
006a33b4  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
006a33b8  88 10 9d e5                                      ldr r1, [sp, #0x88]
006a33bc  10 20 92 e5                                      ldr r2, [r2, #0x10]
006a33c0  03 10 82 e7                                      str r1, [r2, r3]
006a33c4  03 30 82 e0                                      add r3, r2, r3
006a33c8  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006a33cc  04 20 83 e5                                      str r2, [r3, #4]
006a33d0  6a ff ff ea                                      b #0x6a3180
006a33d4  30 00 9d e5                                      ldr r0, [sp, #0x30]
006a33d8  20 e0 9d e5                                      ldr lr, [sp, #0x20]
006a33dc  0a 30 a0 e1                                      mov r3, sl
006a33e0  0e 10 90 e7                                      ldr r1, [r0, lr]
006a33e4  03 80 d1 e7                                      ldrb r8, [r1, r3]
006a33e8  0b 00 58 e1                                      cmp r8, fp
006a33ec  08 b0 a0 21                                      movhs fp, r8
006a33f0  00 00 52 e3                                      cmp r2, #0
006a33f4  b7 fe ff 1a                                      bne #0x6a2ed8
006a33f8  02 30 a0 e1                                      mov r3, r2
006a33fc  c0 fe ff ea                                      b #0x6a2f04
006a3400  04 30 94 e5                                      ldr r3, [r4, #4]
006a3404  0c 10 93 e5                                      ldr r1, [r3, #0xc]
006a3408  01 00 54 e1                                      cmp r4, r1
006a340c  05 00 00 1a                                      bne #0x6a3428
006a3410  03 40 a0 e1                                      mov r4, r3
006a3414  04 30 93 e5                                      ldr r3, [r3, #4]
006a3418  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006a341c  04 00 52 e1                                      cmp r2, r4
006a3420  fa ff ff 0a                                      beq #0x6a3410
006a3424  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006a3428  02 00 53 e1                                      cmp r3, r2
006a342c  03 40 a0 11                                      movne r4, r3
006a3430  e1 fe ff ea                                      b #0x6a2fbc
006a3434  00 30 94 e5                                      ldr r3, [r4]
006a3438  d0 e0 9d e5                                      ldr lr, [sp, #0xd0]
006a343c  40 00 9d e5                                      ldr r0, [sp, #0x40]
006a3440  11 30 d3 e5                                      ldrb r3, [r3, #0x11]
006a3444  00 c0 9e e5                                      ldr ip, [lr]
006a3448  0e 10 a0 e1                                      mov r1, lr
006a344c  00 50 8d e5                                      str r5, [sp]
006a3450  20 02 8d e9                                      stmib sp, {r5, sb}
006a3454  05 20 a0 e1                                      mov r2, r5
006a3458  0f e0 a0 e1                                      mov lr, pc
006a345c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006a3460  a4 70 9d e5                                      ldr r7, [sp, #0xa4]
006a3464  00 00 57 e3                                      cmp r7, #0
006a3468  06 00 00 0a                                      beq #0x6a3488
006a346c  04 30 97 e5                                      ldr r3, [r7, #4]
006a3470  01 30 83 e2                                      add r3, r3, #1
006a3474  04 30 87 e5                                      str r3, [r7, #4]
006a3478  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
006a347c  00 00 50 e3                                      cmp r0, #0
006a3480  00 00 00 0a                                      beq #0x6a3488
006a3484  3e e8 f1 eb                                      bl #0x31d584
006a3488  06 00 a0 e1                                      mov r0, r6
006a348c  04 10 a0 e1                                      mov r1, r4
006a3490  28 fd ff eb                                      bl #0x6a2938
006a3494  00 00 57 e3                                      cmp r7, #0
006a3498  04 30 97 15                                      ldrne r3, [r7, #4]
006a349c  00 80 a0 e1                                      mov r8, r0
006a34a0  01 30 83 12                                      addne r3, r3, #1
006a34a4  04 30 87 15                                      strne r3, [r7, #4]
006a34a8  00 00 90 e5                                      ldr r0, [r0]
006a34ac  00 70 88 e5                                      str r7, [r8]
006a34b0  00 00 50 e3                                      cmp r0, #0
006a34b4  00 00 00 0a                                      beq #0x6a34bc
006a34b8  31 e8 f1 eb                                      bl #0x31d584
006a34bc  00 00 a0 e3                                      mov r0, #0
006a34c0  00 20 a0 e3                                      mov r2, #0
006a34c4  b6 00 c8 e1                                      strh r0, [r8, #6]
006a34c8  b4 00 c8 e1                                      strh r0, [r8, #4]
006a34cc  02 b0 a0 e1                                      mov fp, r2
006a34d0  60 fe ff ea                                      b #0x6a2e58
006a34d4  38 30 9d e5                                      ldr r3, [sp, #0x38]
006a34d8  00 00 53 e3                                      cmp r3, #0
006a34dc  02 30 a0 13                                      movne r3, #2
006a34e0  73 fe ff ea                                      b #0x6a2eb4
006a34e4  30 20 9d e5                                      ldr r2, [sp, #0x30]
006a34e8  40 00 9d e5                                      ldr r0, [sp, #0x40]
006a34ec  00 a0 a0 e3                                      mov sl, #0
006a34f0  00 10 92 e7                                      ldr r1, [r2, r0]
006a34f4  b4 20 54 e1                                      ldrh r2, [r4, #-4]
006a34f8  24 90 8d e5                                      str sb, [sp, #0x24]
006a34fc  03 30 d1 e7                                      ldrb r3, [r1, r3]
006a3500  05 90 a0 e1                                      mov sb, r5
006a3504  92 03 03 e0                                      mul r3, r2, r3
006a3508  03 50 a0 e1                                      mov r5, r3
006a350c  0a 00 00 ea                                      b #0x6a353c
006a3510  02 00 5a e1                                      cmp sl, r2
006a3514  1e 00 00 2a                                      bhs #0x6a3594
006a3518  07 00 a0 e1                                      mov r0, r7
006a351c  08 10 a0 e1                                      mov r1, r8
006a3520  05 20 a0 e1                                      mov r2, r5
006a3524  cf ac f1 eb                                      bl #0x30e868
006a3528  b2 20 54 e1                                      ldrh r2, [r4, #-2]
006a352c  be 30 d6 e1                                      ldrh r3, [r6, #0xe]
006a3530  01 a0 8a e2                                      add sl, sl, #1
006a3534  02 70 87 e0                                      add r7, r7, r2
006a3538  03 80 88 e0                                      add r8, r8, r3
006a353c  00 30 9b e5                                      ldr r3, [fp]
006a3540  14 30 93 e5                                      ldr r3, [r3, #0x14]
006a3544  00 00 53 e3                                      cmp r3, #0
006a3548  00 20 93 15                                      ldrne r2, [r3]
006a354c  01 20 82 12                                      addne r2, r2, #1
006a3550  00 20 83 15                                      strne r2, [r3]
006a3554  00 10 93 e5                                      ldr r1, [r3]
006a3558  08 20 93 e5                                      ldr r2, [r3, #8]
006a355c  01 10 41 e2                                      sub r1, r1, #1
006a3560  00 00 51 e3                                      cmp r1, #0
006a3564  00 10 83 e5                                      str r1, [r3]
006a3568  e8 ff ff 1a                                      bne #0x6a3510
006a356c  03 00 a0 e1                                      mov r0, r3
006a3570  10 20 8d e5                                      str r2, [sp, #0x10]
006a3574  14 30 8d e5                                      str r3, [sp, #0x14]
006a3578  27 f5 fb eb                                      bl #0x5a0a1c
006a357c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006a3580  03 00 a0 e1                                      mov r0, r3
006a3584  49 ab f1 eb                                      bl #0x30e2b0
006a3588  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a358c  02 00 5a e1                                      cmp sl, r2
006a3590  e0 ff ff 3a                                      blo #0x6a3518
006a3594  09 50 a0 e1                                      mov r5, sb
006a3598  24 90 9d e5                                      ldr sb, [sp, #0x24]
006a359c  f7 fe ff ea                                      b #0x6a3180
006a35a0  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006a35a4  20 00 13 e3                                      tst r3, #0x20
006a35a8  a8 00 00 1a                                      bne #0x6a3850
006a35ac  00 10 a0 e3                                      mov r1, #0
006a35b0  13 10 c5 e5                                      strb r1, [r5, #0x13]
006a35b4  24 ff ff ea                                      b #0x6a324c
006a35b8  12 30 d9 e5                                      ldrb r3, [sb, #0x12]
006a35bc  20 00 13 e3                                      tst r3, #0x20
006a35c0  a7 00 00 1a                                      bne #0x6a3864
006a35c4  00 e0 a0 e3                                      mov lr, #0
006a35c8  13 e0 c9 e5                                      strb lr, [sb, #0x13]
006a35cc  0f ff ff ea                                      b #0x6a3210
006a35d0  00 00 53 e3                                      cmp r3, #0
006a35d4  2d 00 00 1a                                      bne #0x6a3690
006a35d8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006a35dc  be 60 d6 e1                                      ldrh r6, [r6, #0xe]
006a35e0  90 71 22 e0                                      mla r2, r0, r1, r7
006a35e4  24 60 8d e5                                      str r6, [sp, #0x24]
006a35e8  02 00 57 e1                                      cmp r7, r2
006a35ec  e3 fe ff 0a                                      beq #0x6a3180
006a35f0  44 40 8d e5                                      str r4, [sp, #0x44]
006a35f4  48 90 8d e5                                      str sb, [sp, #0x48]
006a35f8  50 b0 8d e5                                      str fp, [sp, #0x50]
006a35fc  07 60 a0 e1                                      mov r6, r7
006a3600  03 40 a0 e1                                      mov r4, r3
006a3604  02 90 a0 e1                                      mov sb, r2
006a3608  4c 50 8d e5                                      str r5, [sp, #0x4c]
006a360c  01 b0 a0 e1                                      mov fp, r1
006a3610  01 00 00 ea                                      b #0x6a361c
006a3614  24 10 9d e5                                      ldr r1, [sp, #0x24]
006a3618  01 80 88 e0                                      add r8, r8, r1
006a361c  42 14 a0 e3                                      mov r1, #0x42000000
006a3620  00 00 98 e5                                      ldr r0, [r8]
006a3624  fe 18 81 e2                                      add r1, r1, #0xfe0000
006a3628  cf ad f1 eb                                      bl #0x30ed6c
006a362c  a6 ab f1 eb                                      bl #0x30e4cc
006a3630  42 14 a0 e3                                      mov r1, #0x42000000
006a3634  fe 18 81 e2                                      add r1, r1, #0xfe0000
006a3638  70 a0 ef e6                                      uxtb sl, r0
006a363c  04 00 98 e5                                      ldr r0, [r8, #4]
006a3640  c9 ad f1 eb                                      bl #0x30ed6c
006a3644  a0 ab f1 eb                                      bl #0x30e4cc
006a3648  42 14 a0 e3                                      mov r1, #0x42000000
006a364c  70 50 ef e6                                      uxtb r5, r0
006a3650  fe 18 81 e2                                      add r1, r1, #0xfe0000
006a3654  08 00 98 e5                                      ldr r0, [r8, #8]
006a3658  c3 ad f1 eb                                      bl #0x30ed6c
006a365c  9a ab f1 eb                                      bl #0x30e4cc
006a3660  0b 40 84 e0                                      add r4, r4, fp
006a3664  02 00 c6 e5                                      strb r0, [r6, #2]
006a3668  00 a0 c6 e5                                      strb sl, [r6]
006a366c  01 50 c6 e5                                      strb r5, [r6, #1]
006a3670  04 60 87 e0                                      add r6, r7, r4
006a3674  06 00 59 e1                                      cmp sb, r6
006a3678  e5 ff ff 1a                                      bne #0x6a3614
006a367c  44 40 9d e5                                      ldr r4, [sp, #0x44]
006a3680  48 90 9d e5                                      ldr sb, [sp, #0x48]
006a3684  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
006a3688  50 b0 9d e5                                      ldr fp, [sp, #0x50]
006a368c  bb fe ff ea                                      b #0x6a3180
006a3690  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006a3694  be 60 d6 e1                                      ldrh r6, [r6, #0xe]
006a3698  92 71 2a e0                                      mla sl, r2, r1, r7
006a369c  24 60 8d e5                                      str r6, [sp, #0x24]
006a36a0  0a 00 57 e1                                      cmp r7, sl
006a36a4  b5 fe ff 0a                                      beq #0x6a3180
006a36a8  48 90 8d e5                                      str sb, [sp, #0x48]
006a36ac  50 b0 8d e5                                      str fp, [sp, #0x50]
006a36b0  00 60 a0 e3                                      mov r6, #0
006a36b4  44 40 8d e5                                      str r4, [sp, #0x44]
006a36b8  4c 50 8d e5                                      str r5, [sp, #0x4c]
006a36bc  01 90 a0 e1                                      mov sb, r1
006a36c0  07 b0 a0 e1                                      mov fp, r7
006a36c4  01 00 00 ea                                      b #0x6a36d0
006a36c8  24 30 9d e5                                      ldr r3, [sp, #0x24]
006a36cc  03 80 88 e0                                      add r8, r8, r3
006a36d0  47 14 a0 e3                                      mov r1, #0x47000000
006a36d4  00 00 98 e5                                      ldr r0, [r8]
006a36d8  02 1c 41 e2                                      sub r1, r1, #0x200
006a36dc  a2 ad f1 eb                                      bl #0x30ed6c
006a36e0  79 ab f1 eb                                      bl #0x30e4cc
006a36e4  47 14 a0 e3                                      mov r1, #0x47000000
006a36e8  02 1c 41 e2                                      sub r1, r1, #0x200
006a36ec  70 50 ff e6                                      uxth r5, r0
006a36f0  04 00 98 e5                                      ldr r0, [r8, #4]
006a36f4  9c ad f1 eb                                      bl #0x30ed6c
006a36f8  73 ab f1 eb                                      bl #0x30e4cc
006a36fc  47 14 a0 e3                                      mov r1, #0x47000000
006a3700  70 40 ff e6                                      uxth r4, r0
006a3704  02 1c 41 e2                                      sub r1, r1, #0x200
006a3708  08 00 98 e5                                      ldr r0, [r8, #8]
006a370c  96 ad f1 eb                                      bl #0x30ed6c
006a3710  6d ab f1 eb                                      bl #0x30e4cc
006a3714  b7 50 86 e1                                      strh r5, [r6, r7]
006a3718  07 30 86 e0                                      add r3, r6, r7
006a371c  09 60 86 e0                                      add r6, r6, sb
006a3720  06 20 8b e0                                      add r2, fp, r6
006a3724  02 00 5a e1                                      cmp sl, r2
006a3728  b4 00 c3 e1                                      strh r0, [r3, #4]
006a372c  b2 40 c3 e1                                      strh r4, [r3, #2]
006a3730  e4 ff ff 1a                                      bne #0x6a36c8
006a3734  44 40 9d e5                                      ldr r4, [sp, #0x44]
006a3738  48 90 9d e5                                      ldr sb, [sp, #0x48]
006a373c  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
006a3740  50 b0 9d e5                                      ldr fp, [sp, #0x50]
006a3744  8d fe ff ea                                      b #0x6a3180
006a3748  00 40 9b e5                                      ldr r4, [fp]
006a374c  00 10 a0 e3                                      mov r1, #0
006a3750  38 00 a0 e3                                      mov r0, #0x38
006a3754  34 50 d4 e5                                      ldrb r5, [r4, #0x34]
006a3758  93 42 fa eb                                      bl #0x5341ac
006a375c  00 30 a0 e3                                      mov r3, #0
006a3760  10 30 80 e5                                      str r3, [r0, #0x10]
006a3764  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006a3768  70 21 9f e5                                      ldr r2, [pc, #0x170]
006a376c  04 30 80 e5                                      str r3, [r0, #4]
006a3770  08 30 80 e5                                      str r3, [r0, #8]
006a3774  02 20 9c e7                                      ldr r2, [ip, r2]
006a3778  0c 30 80 e5                                      str r3, [r0, #0xc]
006a377c  08 20 82 e2                                      add r2, r2, #8
006a3780  00 20 80 e5                                      str r2, [r0]
006a3784  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006a3788  14 30 80 e5                                      str r3, [r0, #0x14]
006a378c  00 00 53 e3                                      cmp r3, #0
006a3790  00 20 93 15                                      ldrne r2, [r3]
006a3794  01 20 82 12                                      addne r2, r2, #1
006a3798  00 20 83 15                                      strne r2, [r3]
006a379c  18 30 94 e5                                      ldr r3, [r4, #0x18]
006a37a0  18 30 80 e5                                      str r3, [r0, #0x18]
006a37a4  00 00 53 e3                                      cmp r3, #0
006a37a8  04 20 93 15                                      ldrne r2, [r3, #4]
006a37ac  01 20 82 12                                      addne r2, r2, #1
006a37b0  04 20 83 15                                      strne r2, [r3, #4]
006a37b4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006a37b8  1c 30 80 e5                                      str r3, [r0, #0x1c]
006a37bc  20 30 94 e5                                      ldr r3, [r4, #0x20]
006a37c0  20 30 80 e5                                      str r3, [r0, #0x20]
006a37c4  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a37c8  24 30 80 e5                                      str r3, [r0, #0x24]
006a37cc  28 30 94 e5                                      ldr r3, [r4, #0x28]
006a37d0  28 30 80 e5                                      str r3, [r0, #0x28]
006a37d4  bc e2 d4 e1                                      ldrh lr, [r4, #0x2c]
006a37d8  00 30 a0 e3                                      mov r3, #0
006a37dc  bc e2 c0 e1                                      strh lr, [r0, #0x2c]
006a37e0  be 42 d4 e1                                      ldrh r4, [r4, #0x2e]
006a37e4  30 30 80 e5                                      str r3, [r0, #0x30]
006a37e8  34 50 c0 e5                                      strb r5, [r0, #0x34]
006a37ec  be 42 c0 e1                                      strh r4, [r0, #0x2e]
006a37f0  54 10 9d e5                                      ldr r1, [sp, #0x54]
006a37f4  00 00 81 e5                                      str r0, [r1]
006a37f8  04 30 90 e5                                      ldr r3, [r0, #4]
006a37fc  01 30 83 e2                                      add r3, r3, #1
006a3800  04 30 80 e5                                      str r3, [r0, #4]
006a3804  a0 40 9d e5                                      ldr r4, [sp, #0xa0]
006a3808  00 00 54 e3                                      cmp r4, #0
006a380c  04 00 00 0a                                      beq #0x6a3824
006a3810  00 30 94 e5                                      ldr r3, [r4]
006a3814  01 30 43 e2                                      sub r3, r3, #1
006a3818  00 00 53 e3                                      cmp r3, #0
006a381c  00 30 84 e5                                      str r3, [r4]
006a3820  14 00 00 0a                                      beq #0x6a3878
006a3824  34 00 9d e5                                      ldr r0, [sp, #0x34]
006a3828  95 f7 ff eb                                      bl #0x6a1684
006a382c  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006a3830  00 00 53 e3                                      cmp r3, #0
006a3834  02 00 00 0a                                      beq #0x6a3844
006a3838  28 00 9d e5                                      ldr r0, [sp, #0x28]
006a383c  60 10 9d e5                                      ldr r1, [sp, #0x60]
006a3840  e3 f7 ff eb                                      bl #0x6a17d4
006a3844  54 00 9d e5                                      ldr r0, [sp, #0x54]
006a3848  ac d0 8d e2                                      add sp, sp, #0xac
006a384c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a3850  00 30 95 e5                                      ldr r3, [r5]
006a3854  05 00 a0 e1                                      mov r0, r5
006a3858  0f e0 a0 e1                                      mov lr, pc
006a385c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a3860  51 ff ff ea                                      b #0x6a35ac
006a3864  00 30 99 e5                                      ldr r3, [sb]
006a3868  09 00 a0 e1                                      mov r0, sb
006a386c  0f e0 a0 e1                                      mov lr, pc
006a3870  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a3874  52 ff ff ea                                      b #0x6a35c4
006a3878  04 00 a0 e1                                      mov r0, r4
006a387c  66 f4 fb eb                                      bl #0x5a0a1c
006a3880  04 00 a0 e1                                      mov r0, r4
006a3884  89 aa f1 eb                                      bl #0x30e2b0
006a3888  e5 ff ff ea                                      b #0x6a3824
006a388c  05 00 a0 e1                                      mov r0, r5
006a3890  61 f4 fb eb                                      bl #0x5a0a1c
006a3894  05 00 a0 e1                                      mov r0, r5
006a3898  84 aa f1 eb                                      bl #0x30e2b0
006a389c  4c fd ff ea                                      b #0x6a2dd4
006a38a0  04 00 a0 e1                                      mov r0, r4
006a38a4  5c f4 fb eb                                      bl #0x5a0a1c
006a38a8  04 00 a0 e1                                      mov r0, r4
006a38ac  7f aa f1 eb                                      bl #0x30e2b0
006a38b0  2c fd ff ea                                      b #0x6a2d68
006a38b4  04 00 a0 e1                                      mov r0, r4
006a38b8  66 f4 fb eb                                      bl #0x5a0a58
006a38bc  00 10 a0 e1                                      mov r1, r0
006a38c0  f5 fd ff ea                                      b #0x6a309c
006a38c4  05 00 a0 e1                                      mov r0, r5
006a38c8  01 10 a0 e3                                      mov r1, #1
006a38cc  82 f8 fb eb                                      bl #0x5a1adc
006a38d0  20 00 8d e5                                      str r0, [sp, #0x20]
006a38d4  78 fe ff ea                                      b #0x6a32bc
; mapping-symbol data/literal pool
006a38d8  64 1d 2f 00 08 11 00 00 54 0c 00 00              .byte 0x64, 0x1d, 0x2f, 0x00, 0x08, 0x11, 0x00, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x006a38e4, declared_size=2468, range_size=2468, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core16compareParameterERKN5boost13intrusive_ptrIKNS_5video9CMaterialEEEtS8_t
; demangled: glitch::core::compareParameter(boost::intrusive_ptr<glitch::video::CMaterial const> const&, unsigned short, boost::intrusive_ptr<glitch::video::CMaterial const> const&, unsigned short)
; decoder-mode: arm
006a38e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006a38e8  02 70 a0 e1                                      mov r7, r2
006a38ec  00 20 92 e5                                      ldr r2, [r2]
006a38f0  88 c9 9f e5                                      ldr ip, [pc, #0x988]
006a38f4  03 a0 a0 e1                                      mov sl, r3
006a38f8  04 30 92 e5                                      ldr r3, [r2, #4]
006a38fc  bc d0 4d e2                                      sub sp, sp, #0xbc
006a3900  0c c0 8f e0                                      add ip, pc, ip
006a3904  0c c0 8d e5                                      str ip, [sp, #0xc]
006a3908  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006a390c  00 60 a0 e1                                      mov r6, r0
006a3910  01 90 a0 e1                                      mov sb, r1
006a3914  0a 00 52 e1                                      cmp r2, sl
006a3918  20 30 93 85                                      ldrhi r3, [r3, #0x20]
006a391c  00 00 a0 93                                      movls r0, #0
006a3920  04 00 8d 95                                      strls r0, [sp, #4]
006a3924  0a 32 83 80                                      addhi r3, r3, sl, lsl #4
006a3928  04 30 8d 85                                      strhi r3, [sp, #4]
006a392c  00 30 96 e5                                      ldr r3, [r6]
006a3930  04 30 93 e5                                      ldr r3, [r3, #4]
006a3934  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006a3938  01 00 52 e1                                      cmp r2, r1
006a393c  20 30 93 85                                      ldrhi r3, [r3, #0x20]
006a3940  00 30 a0 93                                      movls r3, #0
006a3944  01 32 83 80                                      addhi r3, r3, r1, lsl #4
006a3948  04 10 9d e5                                      ldr r1, [sp, #4]
006a394c  08 10 91 e5                                      ldr r1, [r1, #8]
006a3950  08 10 8d e5                                      str r1, [sp, #8]
006a3954  08 20 93 e5                                      ldr r2, [r3, #8]
006a3958  02 00 51 e1                                      cmp r1, r2
006a395c  02 00 00 0a                                      beq #0x6a396c
006a3960  00 00 a0 e3                                      mov r0, #0
006a3964  bc d0 8d e2                                      add sp, sp, #0xbc
006a3968  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006a396c  04 c0 9d e5                                      ldr ip, [sp, #4]
006a3970  06 20 d3 e5                                      ldrb r2, [r3, #6]
006a3974  06 30 dc e5                                      ldrb r3, [ip, #6]
006a3978  02 00 53 e1                                      cmp r3, r2
006a397c  f7 ff ff 1a                                      bne #0x6a3960
006a3980  00 00 51 e3                                      cmp r1, #0
006a3984  05 02 00 0a                                      beq #0x6a41a0
006a3988  f4 08 9f e5                                      ldr r0, [pc, #0x8f4]
006a398c  00 40 a0 e3                                      mov r4, #0
006a3990  6c 10 8d e2                                      add r1, sp, #0x6c
006a3994  24 00 8d e5                                      str r0, [sp, #0x24]
006a3998  28 20 8d e2                                      add r2, sp, #0x28
006a399c  b4 c0 8d e2                                      add ip, sp, #0xb4
006a39a0  b0 00 8d e2                                      add r0, sp, #0xb0
006a39a4  10 60 8d e5                                      str r6, [sp, #0x10]
006a39a8  14 90 8d e5                                      str sb, [sp, #0x14]
006a39ac  00 50 a0 e3                                      mov r5, #0
006a39b0  07 90 a0 e1                                      mov sb, r7
006a39b4  04 80 a0 e1                                      mov r8, r4
006a39b8  1c c0 8d e5                                      str ip, [sp, #0x1c]
006a39bc  20 00 8d e5                                      str r0, [sp, #0x20]
006a39c0  01 70 a0 e1                                      mov r7, r1
006a39c4  02 60 a0 e1                                      mov r6, r2
006a39c8  01 30 43 e2                                      sub r3, r3, #1
006a39cc  11 00 53 e3                                      cmp r3, #0x11
006a39d0  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
006a39d4  49 00 00 ea                                      b #0x6a3b00
006a39d8  81 01 00 ea                                      b #0x6a3fe4
006a39dc  68 01 00 ea                                      b #0x6a3f84
006a39e0  49 01 00 ea                                      b #0x6a3f0c
006a39e4  38 01 00 ea                                      b #0x6a3ecc
006a39e8  a7 01 00 ea                                      b #0x6a408c
006a39ec  8c 01 00 ea                                      b #0x6a4024
006a39f0  c9 01 00 ea                                      b #0x6a411c
006a39f4  0c 01 00 ea                                      b #0x6a3e2c
006a39f8  40 00 00 ea                                      b #0x6a3b00
006a39fc  3f 00 00 ea                                      b #0x6a3b00
006a3a00  d8 00 00 ea                                      b #0x6a3d68
006a3a04  bd 00 00 ea                                      b #0x6a3d00
006a3a08  bc 00 00 ea                                      b #0x6a3d00
006a3a0c  bb 00 00 ea                                      b #0x6a3d00
006a3a10  ba 00 00 ea                                      b #0x6a3d00
006a3a14  a9 00 00 ea                                      b #0x6a3cc0
006a3a18  3f 00 00 ea                                      b #0x6a3b1c
006a3a1c  ff ff ff ea                                      b #0x6a3a20
006a3a20  00 00 99 e5                                      ldr r0, [sb]
006a3a24  0a 10 a0 e1                                      mov r1, sl
006a3a28  04 20 a0 e1                                      mov r2, r4
006a3a2c  07 30 a0 e1                                      mov r3, r7
006a3a30  6c 80 8d e5                                      str r8, [sp, #0x6c]
006a3a34  28 80 8d e5                                      str r8, [sp, #0x28]
006a3a38  28 ac fc eb                                      bl #0x5ceae0
006a3a3c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006a3a40  06 30 a0 e1                                      mov r3, r6
006a3a44  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a3a48  00 00 9c e5                                      ldr r0, [ip]
006a3a4c  04 20 a0 e1                                      mov r2, r4
006a3a50  22 ac fc eb                                      bl #0x5ceae0
006a3a54  28 00 9d e5                                      ldr r0, [sp, #0x28]
006a3a58  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006a3a5c  03 00 50 e1                                      cmp r0, r3
006a3a60  da 01 00 1a                                      bne #0x6a41d0
006a3a64  00 00 50 e3                                      cmp r0, #0
006a3a68  24 00 00 0a                                      beq #0x6a3b00
006a3a6c  00 30 90 e5                                      ldr r3, [r0]
006a3a70  01 30 43 e2                                      sub r3, r3, #1
006a3a74  00 00 53 e3                                      cmp r3, #0
006a3a78  00 30 80 e5                                      str r3, [r0]
006a3a7c  0b 00 00 1a                                      bne #0x6a3ab0
006a3a80  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
006a3a84  00 00 53 e3                                      cmp r3, #0
006a3a88  06 00 00 1a                                      bne #0x6a3aa8
006a3a8c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006a3a90  24 10 9d e5                                      ldr r1, [sp, #0x24]
006a3a94  01 30 92 e7                                      ldr r3, [r2, r1]
006a3a98  50 20 90 e5                                      ldr r2, [r0, #0x50]
006a3a9c  00 10 93 e5                                      ldr r1, [r3]
006a3aa0  00 10 82 e5                                      str r1, [r2]
006a3aa4  00 20 83 e5                                      str r2, [r3]
006a3aa8  50 80 80 e5                                      str r8, [r0, #0x50]
006a3aac  ff a9 f1 eb                                      bl #0x30e2b0
006a3ab0  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006a3ab4  00 00 50 e3                                      cmp r0, #0
006a3ab8  10 00 00 0a                                      beq #0x6a3b00
006a3abc  00 30 90 e5                                      ldr r3, [r0]
006a3ac0  01 30 43 e2                                      sub r3, r3, #1
006a3ac4  00 00 53 e3                                      cmp r3, #0
006a3ac8  00 30 80 e5                                      str r3, [r0]
006a3acc  0b 00 00 1a                                      bne #0x6a3b00
006a3ad0  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
006a3ad4  00 00 53 e3                                      cmp r3, #0
006a3ad8  06 00 00 1a                                      bne #0x6a3af8
006a3adc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006a3ae0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006a3ae4  50 20 90 e5                                      ldr r2, [r0, #0x50]
006a3ae8  0c 30 91 e7                                      ldr r3, [r1, ip]
006a3aec  00 10 93 e5                                      ldr r1, [r3]
006a3af0  00 10 82 e5                                      str r1, [r2]
006a3af4  00 20 83 e5                                      str r2, [r3]
006a3af8  50 80 80 e5                                      str r8, [r0, #0x50]
006a3afc  eb a9 f1 eb                                      bl #0x30e2b0
006a3b00  08 20 9d e5                                      ldr r2, [sp, #8]
006a3b04  01 40 84 e2                                      add r4, r4, #1
006a3b08  02 00 54 e1                                      cmp r4, r2
006a3b0c  a3 01 00 2a                                      bhs #0x6a41a0
006a3b10  04 c0 9d e5                                      ldr ip, [sp, #4]
006a3b14  06 30 dc e5                                      ldrb r3, [ip, #6]
006a3b18  aa ff ff ea                                      b #0x6a39c8
006a3b1c  00 00 99 e5                                      ldr r0, [sb]
006a3b20  fe c5 a0 e3                                      mov ip, #0x3f800000
006a3b24  0a 10 a0 e1                                      mov r1, sl
006a3b28  04 20 a0 e1                                      mov r2, r4
006a3b2c  06 30 a0 e1                                      mov r3, r6
006a3b30  34 c0 8d e5                                      str ip, [sp, #0x34]
006a3b34  78 c0 8d e5                                      str ip, [sp, #0x78]
006a3b38  28 50 8d e5                                      str r5, [sp, #0x28]
006a3b3c  2c 50 8d e5                                      str r5, [sp, #0x2c]
006a3b40  30 50 8d e5                                      str r5, [sp, #0x30]
006a3b44  6c 50 8d e5                                      str r5, [sp, #0x6c]
006a3b48  70 50 8d e5                                      str r5, [sp, #0x70]
006a3b4c  74 50 8d e5                                      str r5, [sp, #0x74]
006a3b50  ac 8d fc eb                                      bl #0x5c7208
006a3b54  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006a3b58  04 20 a0 e1                                      mov r2, r4
006a3b5c  07 30 a0 e1                                      mov r3, r7
006a3b60  00 00 9c e5                                      ldr r0, [ip]
006a3b64  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a3b68  a6 8d fc eb                                      bl #0x5c7208
006a3b6c  28 00 9d e5                                      ldr r0, [sp, #0x28]
006a3b70  6c b0 9d e5                                      ldr fp, [sp, #0x6c]
006a3b74  bd 17 03 e3                                      movw r1, #0x37bd
006a3b78  18 00 8d e5                                      str r0, [sp, #0x18]
006a3b7c  86 15 43 e3                                      movt r1, #0x3586
006a3b80  0b 00 a0 e1                                      mov r0, fp
006a3b84  06 ac f1 eb                                      bl #0x30eba4
006a3b88  00 10 a0 e1                                      mov r1, r0
006a3b8c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a3b90  85 ab f1 eb                                      bl #0x30e9ac
006a3b94  00 00 50 e3                                      cmp r0, #0
006a3b98  70 ff ff 0a                                      beq #0x6a3960
006a3b9c  bd 17 03 e3                                      movw r1, #0x37bd
006a3ba0  86 15 43 e3                                      movt r1, #0x3586
006a3ba4  0b 00 a0 e1                                      mov r0, fp
006a3ba8  ff a9 f1 eb                                      bl #0x30e3ac
006a3bac  00 10 a0 e1                                      mov r1, r0
006a3bb0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a3bb4  3e aa f1 eb                                      bl #0x30e4b4
006a3bb8  00 00 50 e3                                      cmp r0, #0
006a3bbc  67 ff ff 0a                                      beq #0x6a3960
006a3bc0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006a3bc4  70 b0 9d e5                                      ldr fp, [sp, #0x70]
006a3bc8  18 10 8d e5                                      str r1, [sp, #0x18]
006a3bcc  bd 17 03 e3                                      movw r1, #0x37bd
006a3bd0  86 15 43 e3                                      movt r1, #0x3586
006a3bd4  0b 00 a0 e1                                      mov r0, fp
006a3bd8  f1 ab f1 eb                                      bl #0x30eba4
006a3bdc  00 10 a0 e1                                      mov r1, r0
006a3be0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a3be4  70 ab f1 eb                                      bl #0x30e9ac
006a3be8  00 00 50 e3                                      cmp r0, #0
006a3bec  5b ff ff 0a                                      beq #0x6a3960
006a3bf0  bd 17 03 e3                                      movw r1, #0x37bd
006a3bf4  86 15 43 e3                                      movt r1, #0x3586
006a3bf8  0b 00 a0 e1                                      mov r0, fp
006a3bfc  ea a9 f1 eb                                      bl #0x30e3ac
006a3c00  00 10 a0 e1                                      mov r1, r0
006a3c04  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a3c08  29 aa f1 eb                                      bl #0x30e4b4
006a3c0c  00 00 50 e3                                      cmp r0, #0
006a3c10  52 ff ff 0a                                      beq #0x6a3960
006a3c14  74 b0 9d e5                                      ldr fp, [sp, #0x74]
006a3c18  30 20 9d e5                                      ldr r2, [sp, #0x30]
006a3c1c  bd 17 03 e3                                      movw r1, #0x37bd
006a3c20  86 15 43 e3                                      movt r1, #0x3586
006a3c24  0b 00 a0 e1                                      mov r0, fp
006a3c28  18 20 8d e5                                      str r2, [sp, #0x18]
006a3c2c  dc ab f1 eb                                      bl #0x30eba4
006a3c30  00 10 a0 e1                                      mov r1, r0
006a3c34  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a3c38  5b ab f1 eb                                      bl #0x30e9ac
006a3c3c  00 00 50 e3                                      cmp r0, #0
006a3c40  46 ff ff 0a                                      beq #0x6a3960
006a3c44  bd 17 03 e3                                      movw r1, #0x37bd
006a3c48  86 15 43 e3                                      movt r1, #0x3586
006a3c4c  0b 00 a0 e1                                      mov r0, fp
006a3c50  d5 a9 f1 eb                                      bl #0x30e3ac
006a3c54  00 10 a0 e1                                      mov r1, r0
006a3c58  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a3c5c  14 aa f1 eb                                      bl #0x30e4b4
006a3c60  00 00 50 e3                                      cmp r0, #0
006a3c64  3d ff ff 0a                                      beq #0x6a3960
006a3c68  78 b0 9d e5                                      ldr fp, [sp, #0x78]
006a3c6c  34 30 9d e5                                      ldr r3, [sp, #0x34]
006a3c70  bd 17 03 e3                                      movw r1, #0x37bd
006a3c74  86 15 43 e3                                      movt r1, #0x3586
006a3c78  0b 00 a0 e1                                      mov r0, fp
006a3c7c  18 30 8d e5                                      str r3, [sp, #0x18]
006a3c80  c7 ab f1 eb                                      bl #0x30eba4
006a3c84  00 10 a0 e1                                      mov r1, r0
006a3c88  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a3c8c  46 ab f1 eb                                      bl #0x30e9ac
006a3c90  00 00 50 e3                                      cmp r0, #0
006a3c94  31 ff ff 0a                                      beq #0x6a3960
006a3c98  bd 17 03 e3                                      movw r1, #0x37bd
006a3c9c  86 15 43 e3                                      movt r1, #0x3586
006a3ca0  0b 00 a0 e1                                      mov r0, fp
006a3ca4  c0 a9 f1 eb                                      bl #0x30e3ac
006a3ca8  00 10 a0 e1                                      mov r1, r0
006a3cac  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a3cb0  ff a9 f1 eb                                      bl #0x30e4b4
006a3cb4  00 00 50 e3                                      cmp r0, #0
006a3cb8  90 ff ff 1a                                      bne #0x6a3b00
006a3cbc  27 ff ff ea                                      b #0x6a3960
006a3cc0  0a 10 a0 e1                                      mov r1, sl
006a3cc4  04 20 a0 e1                                      mov r2, r4
006a3cc8  06 30 a0 e1                                      mov r3, r6
006a3ccc  00 00 99 e5                                      ldr r0, [sb]
006a3cd0  33 8d fc eb                                      bl #0x5c71a4
006a3cd4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006a3cd8  04 20 a0 e1                                      mov r2, r4
006a3cdc  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a3ce0  00 00 93 e5                                      ldr r0, [r3]
006a3ce4  07 30 a0 e1                                      mov r3, r7
006a3ce8  2d 8d fc eb                                      bl #0x5c71a4
006a3cec  28 20 9d e5                                      ldr r2, [sp, #0x28]
006a3cf0  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006a3cf4  02 00 53 e1                                      cmp r3, r2
006a3cf8  80 ff ff 0a                                      beq #0x6a3b00
006a3cfc  17 ff ff ea                                      b #0x6a3960
006a3d00  00 00 99 e5                                      ldr r0, [sb]
006a3d04  0a 10 a0 e1                                      mov r1, sl
006a3d08  04 20 a0 e1                                      mov r2, r4
006a3d0c  07 30 a0 e1                                      mov r3, r7
006a3d10  6c 80 8d e5                                      str r8, [sp, #0x6c]
006a3d14  28 80 8d e5                                      str r8, [sp, #0x28]
006a3d18  67 a7 fc eb                                      bl #0x5cdabc
006a3d1c  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a3d20  06 30 a0 e1                                      mov r3, r6
006a3d24  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a3d28  00 00 92 e5                                      ldr r0, [r2]
006a3d2c  04 20 a0 e1                                      mov r2, r4
006a3d30  61 a7 fc eb                                      bl #0x5cdabc
006a3d34  28 30 9d e5                                      ldr r3, [sp, #0x28]
006a3d38  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006a3d3c  00 00 53 e1                                      cmp r3, r0
006a3d40  18 01 00 1a                                      bne #0x6a41a8
006a3d44  00 00 53 e3                                      cmp r3, #0
006a3d48  6c ff ff 0a                                      beq #0x6a3b00
006a3d4c  03 00 a0 e1                                      mov r0, r3
006a3d50  0b e6 f1 eb                                      bl #0x31d584
006a3d54  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006a3d58  00 00 50 e3                                      cmp r0, #0
006a3d5c  67 ff ff 0a                                      beq #0x6a3b00
006a3d60  07 e6 f1 eb                                      bl #0x31d584
006a3d64  65 ff ff ea                                      b #0x6a3b00
006a3d68  00 10 a0 e3                                      mov r1, #0
006a3d6c  40 20 a0 e3                                      mov r2, #0x40
006a3d70  07 00 a0 e1                                      mov r0, r7
006a3d74  b9 a9 f1 eb                                      bl #0x30e460
006a3d78  fe 35 a0 e3                                      mov r3, #0x3f800000
006a3d7c  01 c0 a0 e3                                      mov ip, #1
006a3d80  00 10 a0 e3                                      mov r1, #0
006a3d84  40 20 a0 e3                                      mov r2, #0x40
006a3d88  06 00 a0 e1                                      mov r0, r6
006a3d8c  6c 30 8d e5                                      str r3, [sp, #0x6c]
006a3d90  80 30 8d e5                                      str r3, [sp, #0x80]
006a3d94  94 30 8d e5                                      str r3, [sp, #0x94]
006a3d98  a8 30 8d e5                                      str r3, [sp, #0xa8]
006a3d9c  ac c0 cd e5                                      strb ip, [sp, #0xac]
006a3da0  ae a9 f1 eb                                      bl #0x30e460
006a3da4  fe c5 a0 e3                                      mov ip, #0x3f800000
006a3da8  00 00 99 e5                                      ldr r0, [sb]
006a3dac  0a 10 a0 e1                                      mov r1, sl
006a3db0  04 20 a0 e1                                      mov r2, r4
006a3db4  07 30 a0 e1                                      mov r3, r7
006a3db8  28 c0 8d e5                                      str ip, [sp, #0x28]
006a3dbc  3c c0 8d e5                                      str ip, [sp, #0x3c]
006a3dc0  50 c0 8d e5                                      str ip, [sp, #0x50]
006a3dc4  64 c0 8d e5                                      str ip, [sp, #0x64]
006a3dc8  01 c0 a0 e3                                      mov ip, #1
006a3dcc  68 c0 cd e5                                      strb ip, [sp, #0x68]
006a3dd0  71 99 fc eb                                      bl #0x5ca39c
006a3dd4  10 10 9d e5                                      ldr r1, [sp, #0x10]
006a3dd8  06 30 a0 e1                                      mov r3, r6
006a3ddc  04 20 a0 e1                                      mov r2, r4
006a3de0  00 00 91 e5                                      ldr r0, [r1]
006a3de4  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a3de8  6b 99 fc eb                                      bl #0x5ca39c
006a3dec  68 30 dd e5                                      ldrb r3, [sp, #0x68]
006a3df0  00 00 53 e3                                      cmp r3, #0
006a3df4  02 00 00 0a                                      beq #0x6a3e04
006a3df8  ac 30 dd e5                                      ldrb r3, [sp, #0xac]
006a3dfc  00 00 53 e3                                      cmp r3, #0
006a3e00  3e ff ff 1a                                      bne #0x6a3b00
006a3e04  00 b0 a0 e3                                      mov fp, #0
006a3e08  0b 00 96 e7                                      ldr r0, [r6, fp]
006a3e0c  0b 10 97 e7                                      ldr r1, [r7, fp]
006a3e10  5d a8 f1 eb                                      bl #0x30df8c
006a3e14  00 00 50 e3                                      cmp r0, #0
006a3e18  04 b0 8b e2                                      add fp, fp, #4
006a3e1c  cf fe ff 0a                                      beq #0x6a3960
006a3e20  40 00 5b e3                                      cmp fp, #0x40
006a3e24  f7 ff ff 1a                                      bne #0x6a3e08
006a3e28  34 ff ff ea                                      b #0x6a3b00
006a3e2c  00 00 99 e5                                      ldr r0, [sb]
006a3e30  0a 10 a0 e1                                      mov r1, sl
006a3e34  04 20 a0 e1                                      mov r2, r4
006a3e38  07 30 a0 e1                                      mov r3, r7
006a3e3c  6c 50 8d e5                                      str r5, [sp, #0x6c]
006a3e40  70 50 8d e5                                      str r5, [sp, #0x70]
006a3e44  74 50 8d e5                                      str r5, [sp, #0x74]
006a3e48  78 50 8d e5                                      str r5, [sp, #0x78]
006a3e4c  28 50 8d e5                                      str r5, [sp, #0x28]
006a3e50  2c 50 8d e5                                      str r5, [sp, #0x2c]
006a3e54  30 50 8d e5                                      str r5, [sp, #0x30]
006a3e58  34 50 8d e5                                      str r5, [sp, #0x34]
006a3e5c  b1 8c fc eb                                      bl #0x5c7128
006a3e60  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006a3e64  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a3e68  04 20 a0 e1                                      mov r2, r4
006a3e6c  06 30 a0 e1                                      mov r3, r6
006a3e70  00 00 9c e5                                      ldr r0, [ip]
006a3e74  ab 8c fc eb                                      bl #0x5c7128
006a3e78  28 00 9d e5                                      ldr r0, [sp, #0x28]
006a3e7c  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006a3e80  41 a8 f1 eb                                      bl #0x30df8c
006a3e84  00 00 50 e3                                      cmp r0, #0
006a3e88  b4 fe ff 0a                                      beq #0x6a3960
006a3e8c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006a3e90  70 10 9d e5                                      ldr r1, [sp, #0x70]
006a3e94  3c a8 f1 eb                                      bl #0x30df8c
006a3e98  00 00 50 e3                                      cmp r0, #0
006a3e9c  af fe ff 0a                                      beq #0x6a3960
006a3ea0  30 00 9d e5                                      ldr r0, [sp, #0x30]
006a3ea4  74 10 9d e5                                      ldr r1, [sp, #0x74]
006a3ea8  37 a8 f1 eb                                      bl #0x30df8c
006a3eac  00 00 50 e3                                      cmp r0, #0
006a3eb0  aa fe ff 0a                                      beq #0x6a3960
006a3eb4  34 00 9d e5                                      ldr r0, [sp, #0x34]
006a3eb8  78 10 9d e5                                      ldr r1, [sp, #0x78]
006a3ebc  32 a8 f1 eb                                      bl #0x30df8c
006a3ec0  00 00 50 e3                                      cmp r0, #0
006a3ec4  a5 fe ff 0a                                      beq #0x6a3960
006a3ec8  0c ff ff ea                                      b #0x6a3b00
006a3ecc  0a 10 a0 e1                                      mov r1, sl
006a3ed0  04 20 a0 e1                                      mov r2, r4
006a3ed4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006a3ed8  00 00 99 e5                                      ldr r0, [sb]
006a3edc  d0 8b fc eb                                      bl #0x5c6e24
006a3ee0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006a3ee4  04 20 a0 e1                                      mov r2, r4
006a3ee8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006a3eec  00 00 9c e5                                      ldr r0, [ip]
006a3ef0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a3ef4  ca 8b fc eb                                      bl #0x5c6e24
006a3ef8  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
006a3efc  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
006a3f00  02 00 53 e1                                      cmp r3, r2
006a3f04  fd fe ff 0a                                      beq #0x6a3b00
006a3f08  94 fe ff ea                                      b #0x6a3960
006a3f0c  00 00 99 e5                                      ldr r0, [sb]
006a3f10  0a 10 a0 e1                                      mov r1, sl
006a3f14  04 20 a0 e1                                      mov r2, r4
006a3f18  06 30 a0 e1                                      mov r3, r6
006a3f1c  28 80 8d e5                                      str r8, [sp, #0x28]
006a3f20  2c 80 8d e5                                      str r8, [sp, #0x2c]
006a3f24  30 80 8d e5                                      str r8, [sp, #0x30]
006a3f28  6c 80 8d e5                                      str r8, [sp, #0x6c]
006a3f2c  70 80 8d e5                                      str r8, [sp, #0x70]
006a3f30  74 80 8d e5                                      str r8, [sp, #0x74]
006a3f34  ed 8b fc eb                                      bl #0x5c6ef0
006a3f38  10 30 9d e5                                      ldr r3, [sp, #0x10]
006a3f3c  04 20 a0 e1                                      mov r2, r4
006a3f40  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a3f44  00 00 93 e5                                      ldr r0, [r3]
006a3f48  07 30 a0 e1                                      mov r3, r7
006a3f4c  e7 8b fc eb                                      bl #0x5c6ef0
006a3f50  28 20 9d e5                                      ldr r2, [sp, #0x28]
006a3f54  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006a3f58  02 00 53 e1                                      cmp r3, r2
006a3f5c  7f fe ff 1a                                      bne #0x6a3960
006a3f60  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006a3f64  70 30 9d e5                                      ldr r3, [sp, #0x70]
006a3f68  02 00 53 e1                                      cmp r3, r2
006a3f6c  7b fe ff 1a                                      bne #0x6a3960
006a3f70  30 20 9d e5                                      ldr r2, [sp, #0x30]
006a3f74  74 30 9d e5                                      ldr r3, [sp, #0x74]
006a3f78  02 00 53 e1                                      cmp r3, r2
006a3f7c  77 fe ff 1a                                      bne #0x6a3960
006a3f80  de fe ff ea                                      b #0x6a3b00
006a3f84  00 00 99 e5                                      ldr r0, [sb]
006a3f88  0a 10 a0 e1                                      mov r1, sl
006a3f8c  04 20 a0 e1                                      mov r2, r4
006a3f90  06 30 a0 e1                                      mov r3, r6
006a3f94  28 80 8d e5                                      str r8, [sp, #0x28]
006a3f98  2c 80 8d e5                                      str r8, [sp, #0x2c]
006a3f9c  6c 80 8d e5                                      str r8, [sp, #0x6c]
006a3fa0  70 80 8d e5                                      str r8, [sp, #0x70]
006a3fa4  b6 8b fc eb                                      bl #0x5c6e84
006a3fa8  10 20 9d e5                                      ldr r2, [sp, #0x10]
006a3fac  07 30 a0 e1                                      mov r3, r7
006a3fb0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a3fb4  00 00 92 e5                                      ldr r0, [r2]
006a3fb8  04 20 a0 e1                                      mov r2, r4
006a3fbc  b0 8b fc eb                                      bl #0x5c6e84
006a3fc0  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
006a3fc4  28 30 9d e5                                      ldr r3, [sp, #0x28]
006a3fc8  02 00 53 e1                                      cmp r3, r2
006a3fcc  63 fe ff 1a                                      bne #0x6a3960
006a3fd0  70 20 9d e5                                      ldr r2, [sp, #0x70]
006a3fd4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006a3fd8  02 00 53 e1                                      cmp r3, r2
006a3fdc  5f fe ff 1a                                      bne #0x6a3960
006a3fe0  c6 fe ff ea                                      b #0x6a3b00
006a3fe4  0a 10 a0 e1                                      mov r1, sl
006a3fe8  04 20 a0 e1                                      mov r2, r4
006a3fec  20 30 9d e5                                      ldr r3, [sp, #0x20]
006a3ff0  00 00 99 e5                                      ldr r0, [sb]
006a3ff4  8a 8b fc eb                                      bl #0x5c6e24
006a3ff8  10 10 9d e5                                      ldr r1, [sp, #0x10]
006a3ffc  04 20 a0 e1                                      mov r2, r4
006a4000  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006a4004  00 00 91 e5                                      ldr r0, [r1]
006a4008  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a400c  84 8b fc eb                                      bl #0x5c6e24
006a4010  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
006a4014  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
006a4018  02 00 53 e1                                      cmp r3, r2
006a401c  b7 fe ff 0a                                      beq #0x6a3b00
006a4020  4e fe ff ea                                      b #0x6a3960
006a4024  00 00 99 e5                                      ldr r0, [sb]
006a4028  0a 10 a0 e1                                      mov r1, sl
006a402c  04 20 a0 e1                                      mov r2, r4
006a4030  07 30 a0 e1                                      mov r3, r7
006a4034  6c 50 8d e5                                      str r5, [sp, #0x6c]
006a4038  70 50 8d e5                                      str r5, [sp, #0x70]
006a403c  28 50 8d e5                                      str r5, [sp, #0x28]
006a4040  2c 50 8d e5                                      str r5, [sp, #0x2c]
006a4044  fe 8b fc eb                                      bl #0x5c7044
006a4048  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006a404c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a4050  04 20 a0 e1                                      mov r2, r4
006a4054  06 30 a0 e1                                      mov r3, r6
006a4058  00 00 9c e5                                      ldr r0, [ip]
006a405c  f8 8b fc eb                                      bl #0x5c7044
006a4060  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006a4064  28 10 9d e5                                      ldr r1, [sp, #0x28]
006a4068  c7 a7 f1 eb                                      bl #0x30df8c
006a406c  00 00 50 e3                                      cmp r0, #0
006a4070  3a fe ff 0a                                      beq #0x6a3960
006a4074  70 00 9d e5                                      ldr r0, [sp, #0x70]
006a4078  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006a407c  c2 a7 f1 eb                                      bl #0x30df8c
006a4080  00 00 50 e3                                      cmp r0, #0
006a4084  35 fe ff 0a                                      beq #0x6a3960
006a4088  9c fe ff ea                                      b #0x6a3b00
006a408c  00 00 99 e5                                      ldr r0, [sb]
006a4090  0a 10 a0 e1                                      mov r1, sl
006a4094  04 20 a0 e1                                      mov r2, r4
006a4098  06 30 a0 e1                                      mov r3, r6
006a409c  28 80 8d e5                                      str r8, [sp, #0x28]
006a40a0  2c 80 8d e5                                      str r8, [sp, #0x2c]
006a40a4  30 80 8d e5                                      str r8, [sp, #0x30]
006a40a8  34 80 8d e5                                      str r8, [sp, #0x34]
006a40ac  6c 80 8d e5                                      str r8, [sp, #0x6c]
006a40b0  70 80 8d e5                                      str r8, [sp, #0x70]
006a40b4  74 80 8d e5                                      str r8, [sp, #0x74]
006a40b8  78 80 8d e5                                      str r8, [sp, #0x78]
006a40bc  a9 8b fc eb                                      bl #0x5c6f68
006a40c0  10 10 9d e5                                      ldr r1, [sp, #0x10]
006a40c4  04 20 a0 e1                                      mov r2, r4
006a40c8  07 30 a0 e1                                      mov r3, r7
006a40cc  00 00 91 e5                                      ldr r0, [r1]
006a40d0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a40d4  a3 8b fc eb                                      bl #0x5c6f68
006a40d8  28 20 9d e5                                      ldr r2, [sp, #0x28]
006a40dc  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006a40e0  02 00 53 e1                                      cmp r3, r2
006a40e4  1d fe ff 1a                                      bne #0x6a3960
006a40e8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006a40ec  70 30 9d e5                                      ldr r3, [sp, #0x70]
006a40f0  02 00 53 e1                                      cmp r3, r2
006a40f4  19 fe ff 1a                                      bne #0x6a3960
006a40f8  30 20 9d e5                                      ldr r2, [sp, #0x30]
006a40fc  74 30 9d e5                                      ldr r3, [sp, #0x74]
006a4100  02 00 53 e1                                      cmp r3, r2
006a4104  15 fe ff 1a                                      bne #0x6a3960
006a4108  34 20 9d e5                                      ldr r2, [sp, #0x34]
006a410c  78 30 9d e5                                      ldr r3, [sp, #0x78]
006a4110  02 00 53 e1                                      cmp r3, r2
006a4114  11 fe ff 1a                                      bne #0x6a3960
006a4118  78 fe ff ea                                      b #0x6a3b00
006a411c  00 00 99 e5                                      ldr r0, [sb]
006a4120  0a 10 a0 e1                                      mov r1, sl
006a4124  04 20 a0 e1                                      mov r2, r4
006a4128  07 30 a0 e1                                      mov r3, r7
006a412c  6c 50 8d e5                                      str r5, [sp, #0x6c]
006a4130  70 50 8d e5                                      str r5, [sp, #0x70]
006a4134  74 50 8d e5                                      str r5, [sp, #0x74]
006a4138  28 50 8d e5                                      str r5, [sp, #0x28]
006a413c  2c 50 8d e5                                      str r5, [sp, #0x2c]
006a4140  30 50 8d e5                                      str r5, [sp, #0x30]
006a4144  d9 8b fc eb                                      bl #0x5c70b0
006a4148  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006a414c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006a4150  04 20 a0 e1                                      mov r2, r4
006a4154  06 30 a0 e1                                      mov r3, r6
006a4158  00 00 9c e5                                      ldr r0, [ip]
006a415c  d3 8b fc eb                                      bl #0x5c70b0
006a4160  28 00 9d e5                                      ldr r0, [sp, #0x28]
006a4164  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006a4168  87 a7 f1 eb                                      bl #0x30df8c
006a416c  00 00 50 e3                                      cmp r0, #0
006a4170  fa fd ff 0a                                      beq #0x6a3960
006a4174  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006a4178  70 10 9d e5                                      ldr r1, [sp, #0x70]
006a417c  82 a7 f1 eb                                      bl #0x30df8c
006a4180  00 00 50 e3                                      cmp r0, #0
006a4184  f5 fd ff 0a                                      beq #0x6a3960
006a4188  30 00 9d e5                                      ldr r0, [sp, #0x30]
006a418c  74 10 9d e5                                      ldr r1, [sp, #0x74]
006a4190  7d a7 f1 eb                                      bl #0x30df8c
006a4194  00 00 50 e3                                      cmp r0, #0
006a4198  f0 fd ff 0a                                      beq #0x6a3960
006a419c  57 fe ff ea                                      b #0x6a3b00
006a41a0  01 00 a0 e3                                      mov r0, #1
006a41a4  ee fd ff ea                                      b #0x6a3964
006a41a8  00 00 53 e3                                      cmp r3, #0
006a41ac  02 00 00 0a                                      beq #0x6a41bc
006a41b0  03 00 a0 e1                                      mov r0, r3
006a41b4  f2 e4 f1 eb                                      bl #0x31d584
006a41b8  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006a41bc  00 00 50 e3                                      cmp r0, #0
006a41c0  e6 fd ff 0a                                      beq #0x6a3960
006a41c4  ee e4 f1 eb                                      bl #0x31d584
006a41c8  00 00 a0 e3                                      mov r0, #0
006a41cc  e4 fd ff ea                                      b #0x6a3964
006a41d0  00 00 50 e3                                      cmp r0, #0
006a41d4  12 00 00 0a                                      beq #0x6a4224
006a41d8  00 30 90 e5                                      ldr r3, [r0]
006a41dc  01 30 43 e2                                      sub r3, r3, #1
006a41e0  00 00 53 e3                                      cmp r3, #0
006a41e4  00 30 80 e5                                      str r3, [r0]
006a41e8  0c 00 00 1a                                      bne #0x6a4220
006a41ec  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
006a41f0  00 00 53 e3                                      cmp r3, #0
006a41f4  06 00 00 1a                                      bne #0x6a4214
006a41f8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006a41fc  80 30 9f e5                                      ldr r3, [pc, #0x80]
006a4200  50 20 90 e5                                      ldr r2, [r0, #0x50]
006a4204  03 30 91 e7                                      ldr r3, [r1, r3]
006a4208  00 10 93 e5                                      ldr r1, [r3]
006a420c  00 10 82 e5                                      str r1, [r2]
006a4210  00 20 83 e5                                      str r2, [r3]
006a4214  00 30 a0 e3                                      mov r3, #0
006a4218  50 30 80 e5                                      str r3, [r0, #0x50]
006a421c  23 a8 f1 eb                                      bl #0x30e2b0
006a4220  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006a4224  00 00 53 e3                                      cmp r3, #0
006a4228  cc fd ff 0a                                      beq #0x6a3960
006a422c  00 20 93 e5                                      ldr r2, [r3]
006a4230  01 20 42 e2                                      sub r2, r2, #1
006a4234  00 00 52 e3                                      cmp r2, #0
006a4238  00 20 83 e5                                      str r2, [r3]
006a423c  c7 fd ff 1a                                      bne #0x6a3960
006a4240  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
006a4244  00 00 52 e3                                      cmp r2, #0
006a4248  06 00 00 1a                                      bne #0x6a4268
006a424c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006a4250  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
006a4254  50 10 93 e5                                      ldr r1, [r3, #0x50]
006a4258  02 20 9c e7                                      ldr r2, [ip, r2]
006a425c  00 00 92 e5                                      ldr r0, [r2]
006a4260  00 00 81 e5                                      str r0, [r1]
006a4264  00 10 82 e5                                      str r1, [r2]
006a4268  00 40 a0 e3                                      mov r4, #0
006a426c  03 00 a0 e1                                      mov r0, r3
006a4270  50 40 83 e5                                      str r4, [r3, #0x50]
006a4274  0d a8 f1 eb                                      bl #0x30e2b0
006a4278  04 00 a0 e1                                      mov r0, r4
006a427c  b8 fd ff ea                                      b #0x6a3964
; mapping-symbol data/literal pool
006a4280  90 11 2f 00 c0 3c 00 00                          .byte 0x90, 0x11, 0x2f, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x006a48cc, declared_size=972, range_size=972, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core18computeBoundingBoxEPKvNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEjjjRNS0_8aabbox3dIfEE
; demangled: glitch::core::computeBoundingBox(void const*, glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE, unsigned int, unsigned int, unsigned int, glitch::core::aabbox3d<float>&)
; decoder-mode: arm
006a48cc  70 40 2d e9                                      push {r4, r5, r6, lr}
006a48d0  20 d0 4d e2                                      sub sp, sp, #0x20
006a48d4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006a48d8  34 40 9d e5                                      ldr r4, [sp, #0x34]
006a48dc  06 00 51 e3                                      cmp r1, #6
006a48e0  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
006a48e4  0b 00 00 ea                                      b #0x6a4918
006a48e8  0c 00 00 ea                                      b #0x6a4920
006a48ec  30 00 00 ea                                      b #0x6a49b4
006a48f0  54 00 00 ea                                      b #0x6a4a48
006a48f4  78 00 00 ea                                      b #0x6a4adc
006a48f8  9c 00 00 ea                                      b #0x6a4b70
006a48fc  c0 00 00 ea                                      b #0x6a4c04
006a4900  ff ff ff ea                                      b #0x6a4904
006a4904  02 10 a0 e1                                      mov r1, r2
006a4908  03 20 a0 e1                                      mov r2, r3
006a490c  0c 30 a0 e1                                      mov r3, ip
006a4910  00 40 8d e5                                      str r4, [sp]
006a4914  28 f2 ff eb                                      bl #0x6a11bc
006a4918  20 d0 8d e2                                      add sp, sp, #0x20
006a491c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006a4920  00 e0 e0 e3                                      mvn lr, #0
006a4924  02 10 a0 e1                                      mov r1, r2
006a4928  08 50 8d e2                                      add r5, sp, #8
006a492c  03 20 a0 e1                                      mov r2, r3
006a4930  0c 30 a0 e1                                      mov r3, ip
006a4934  01 c0 a0 e3                                      mov ip, #1
006a4938  0a e0 cd e5                                      strb lr, [sp, #0xa]
006a493c  0d c0 cd e5                                      strb ip, [sp, #0xd]
006a4940  08 e0 cd e5                                      strb lr, [sp, #8]
006a4944  09 e0 cd e5                                      strb lr, [sp, #9]
006a4948  0b c0 cd e5                                      strb ip, [sp, #0xb]
006a494c  0c c0 cd e5                                      strb ip, [sp, #0xc]
006a4950  00 50 8d e5                                      str r5, [sp]
006a4954  4b fe ff eb                                      bl #0x6a4288
006a4958  d8 00 dd e1                                      ldrsb r0, [sp, #8]
006a495c  00 a8 f1 eb                                      bl #0x30e964
006a4960  00 60 a0 e1                                      mov r6, r0
006a4964  d9 00 dd e1                                      ldrsb r0, [sp, #9]
006a4968  fd a7 f1 eb                                      bl #0x30e964
006a496c  00 50 a0 e1                                      mov r5, r0
006a4970  da 00 dd e1                                      ldrsb r0, [sp, #0xa]
006a4974  fa a7 f1 eb                                      bl #0x30e964
006a4978  00 60 84 e5                                      str r6, [r4]
006a497c  04 50 84 e5                                      str r5, [r4, #4]
006a4980  08 00 84 e5                                      str r0, [r4, #8]
006a4984  db 00 dd e1                                      ldrsb r0, [sp, #0xb]
006a4988  f5 a7 f1 eb                                      bl #0x30e964
006a498c  00 60 a0 e1                                      mov r6, r0
006a4990  dc 00 dd e1                                      ldrsb r0, [sp, #0xc]
006a4994  f2 a7 f1 eb                                      bl #0x30e964
006a4998  00 50 a0 e1                                      mov r5, r0
006a499c  dd 00 dd e1                                      ldrsb r0, [sp, #0xd]
006a49a0  ef a7 f1 eb                                      bl #0x30e964
006a49a4  0c 60 84 e5                                      str r6, [r4, #0xc]
006a49a8  14 00 84 e5                                      str r0, [r4, #0x14]
006a49ac  10 50 84 e5                                      str r5, [r4, #0x10]
006a49b0  d8 ff ff ea                                      b #0x6a4918
006a49b4  00 e0 e0 e3                                      mvn lr, #0
006a49b8  02 10 a0 e1                                      mov r1, r2
006a49bc  08 50 8d e2                                      add r5, sp, #8
006a49c0  03 20 a0 e1                                      mov r2, r3
006a49c4  0c 30 a0 e1                                      mov r3, ip
006a49c8  01 c0 a0 e3                                      mov ip, #1
006a49cc  0a e0 cd e5                                      strb lr, [sp, #0xa]
006a49d0  0d c0 cd e5                                      strb ip, [sp, #0xd]
006a49d4  08 e0 cd e5                                      strb lr, [sp, #8]
006a49d8  09 e0 cd e5                                      strb lr, [sp, #9]
006a49dc  0b c0 cd e5                                      strb ip, [sp, #0xb]
006a49e0  0c c0 cd e5                                      strb ip, [sp, #0xc]
006a49e4  00 50 8d e5                                      str r5, [sp]
006a49e8  66 fe ff eb                                      bl #0x6a4388
006a49ec  08 00 dd e5                                      ldrb r0, [sp, #8]
006a49f0  3a a6 f1 eb                                      bl #0x30e2e0
006a49f4  00 60 a0 e1                                      mov r6, r0
006a49f8  09 00 dd e5                                      ldrb r0, [sp, #9]
006a49fc  37 a6 f1 eb                                      bl #0x30e2e0
006a4a00  00 50 a0 e1                                      mov r5, r0
006a4a04  0a 00 dd e5                                      ldrb r0, [sp, #0xa]
006a4a08  34 a6 f1 eb                                      bl #0x30e2e0
006a4a0c  00 60 84 e5                                      str r6, [r4]
006a4a10  04 50 84 e5                                      str r5, [r4, #4]
006a4a14  08 00 84 e5                                      str r0, [r4, #8]
006a4a18  0b 00 dd e5                                      ldrb r0, [sp, #0xb]
006a4a1c  2f a6 f1 eb                                      bl #0x30e2e0
006a4a20  00 60 a0 e1                                      mov r6, r0
006a4a24  0c 00 dd e5                                      ldrb r0, [sp, #0xc]
006a4a28  2c a6 f1 eb                                      bl #0x30e2e0
006a4a2c  00 50 a0 e1                                      mov r5, r0
006a4a30  0d 00 dd e5                                      ldrb r0, [sp, #0xd]
006a4a34  29 a6 f1 eb                                      bl #0x30e2e0
006a4a38  0c 60 84 e5                                      str r6, [r4, #0xc]
006a4a3c  14 00 84 e5                                      str r0, [r4, #0x14]
006a4a40  10 50 84 e5                                      str r5, [r4, #0x10]
006a4a44  b3 ff ff ea                                      b #0x6a4918
006a4a48  02 10 a0 e1                                      mov r1, r2
006a4a4c  03 20 a0 e1                                      mov r2, r3
006a4a50  0c 30 a0 e1                                      mov r3, ip
006a4a54  08 c0 8d e2                                      add ip, sp, #8
006a4a58  00 c0 8d e5                                      str ip, [sp]
006a4a5c  00 c0 e0 e3                                      mvn ip, #0
006a4a60  b8 c0 cd e1                                      strh ip, [sp, #8]
006a4a64  ba c0 cd e1                                      strh ip, [sp, #0xa]
006a4a68  bc c0 cd e1                                      strh ip, [sp, #0xc]
006a4a6c  01 c0 a0 e3                                      mov ip, #1
006a4a70  be c0 cd e1                                      strh ip, [sp, #0xe]
006a4a74  b0 c1 cd e1                                      strh ip, [sp, #0x10]
006a4a78  b2 c1 cd e1                                      strh ip, [sp, #0x12]
006a4a7c  7f fe ff eb                                      bl #0x6a4480
006a4a80  f8 00 dd e1                                      ldrsh r0, [sp, #8]
006a4a84  b6 a7 f1 eb                                      bl #0x30e964
006a4a88  00 60 a0 e1                                      mov r6, r0
006a4a8c  fa 00 dd e1                                      ldrsh r0, [sp, #0xa]
006a4a90  b3 a7 f1 eb                                      bl #0x30e964
006a4a94  00 50 a0 e1                                      mov r5, r0
006a4a98  fc 00 dd e1                                      ldrsh r0, [sp, #0xc]
006a4a9c  b0 a7 f1 eb                                      bl #0x30e964
006a4aa0  00 60 84 e5                                      str r6, [r4]
006a4aa4  04 50 84 e5                                      str r5, [r4, #4]
006a4aa8  08 00 84 e5                                      str r0, [r4, #8]
006a4aac  fe 00 dd e1                                      ldrsh r0, [sp, #0xe]
006a4ab0  ab a7 f1 eb                                      bl #0x30e964
006a4ab4  00 60 a0 e1                                      mov r6, r0
006a4ab8  f0 01 dd e1                                      ldrsh r0, [sp, #0x10]
006a4abc  a8 a7 f1 eb                                      bl #0x30e964
006a4ac0  00 50 a0 e1                                      mov r5, r0
006a4ac4  f2 01 dd e1                                      ldrsh r0, [sp, #0x12]
006a4ac8  a5 a7 f1 eb                                      bl #0x30e964
006a4acc  0c 60 84 e5                                      str r6, [r4, #0xc]
006a4ad0  14 00 84 e5                                      str r0, [r4, #0x14]
006a4ad4  10 50 84 e5                                      str r5, [r4, #0x10]
006a4ad8  8e ff ff ea                                      b #0x6a4918
006a4adc  02 10 a0 e1                                      mov r1, r2
006a4ae0  03 20 a0 e1                                      mov r2, r3
006a4ae4  0c 30 a0 e1                                      mov r3, ip
006a4ae8  08 c0 8d e2                                      add ip, sp, #8
006a4aec  00 c0 8d e5                                      str ip, [sp]
006a4af0  00 c0 e0 e3                                      mvn ip, #0
006a4af4  b8 c0 cd e1                                      strh ip, [sp, #8]
006a4af8  ba c0 cd e1                                      strh ip, [sp, #0xa]
006a4afc  bc c0 cd e1                                      strh ip, [sp, #0xc]
006a4b00  01 c0 a0 e3                                      mov ip, #1
006a4b04  be c0 cd e1                                      strh ip, [sp, #0xe]
006a4b08  b0 c1 cd e1                                      strh ip, [sp, #0x10]
006a4b0c  b2 c1 cd e1                                      strh ip, [sp, #0x12]
006a4b10  a1 fe ff eb                                      bl #0x6a459c
006a4b14  b8 00 dd e1                                      ldrh r0, [sp, #8]
006a4b18  f0 a5 f1 eb                                      bl #0x30e2e0
006a4b1c  00 60 a0 e1                                      mov r6, r0
006a4b20  ba 00 dd e1                                      ldrh r0, [sp, #0xa]
006a4b24  ed a5 f1 eb                                      bl #0x30e2e0
006a4b28  00 50 a0 e1                                      mov r5, r0
006a4b2c  bc 00 dd e1                                      ldrh r0, [sp, #0xc]
006a4b30  ea a5 f1 eb                                      bl #0x30e2e0
006a4b34  00 60 84 e5                                      str r6, [r4]
006a4b38  04 50 84 e5                                      str r5, [r4, #4]
006a4b3c  08 00 84 e5                                      str r0, [r4, #8]
006a4b40  be 00 dd e1                                      ldrh r0, [sp, #0xe]
006a4b44  e5 a5 f1 eb                                      bl #0x30e2e0
006a4b48  00 60 a0 e1                                      mov r6, r0
006a4b4c  b0 01 dd e1                                      ldrh r0, [sp, #0x10]
006a4b50  e2 a5 f1 eb                                      bl #0x30e2e0
006a4b54  00 50 a0 e1                                      mov r5, r0
006a4b58  b2 01 dd e1                                      ldrh r0, [sp, #0x12]
006a4b5c  df a5 f1 eb                                      bl #0x30e2e0
006a4b60  0c 60 84 e5                                      str r6, [r4, #0xc]
006a4b64  14 00 84 e5                                      str r0, [r4, #0x14]
006a4b68  10 50 84 e5                                      str r5, [r4, #0x10]
006a4b6c  69 ff ff ea                                      b #0x6a4918
006a4b70  00 e0 e0 e3                                      mvn lr, #0
006a4b74  02 10 a0 e1                                      mov r1, r2
006a4b78  08 50 8d e2                                      add r5, sp, #8
006a4b7c  03 20 a0 e1                                      mov r2, r3
006a4b80  0c 30 a0 e1                                      mov r3, ip
006a4b84  01 c0 a0 e3                                      mov ip, #1
006a4b88  10 e0 8d e5                                      str lr, [sp, #0x10]
006a4b8c  1c c0 8d e5                                      str ip, [sp, #0x1c]
006a4b90  08 e0 8d e5                                      str lr, [sp, #8]
006a4b94  0c e0 8d e5                                      str lr, [sp, #0xc]
006a4b98  14 c0 8d e5                                      str ip, [sp, #0x14]
006a4b9c  18 c0 8d e5                                      str ip, [sp, #0x18]
006a4ba0  00 50 8d e5                                      str r5, [sp]
006a4ba4  c0 fe ff eb                                      bl #0x6a46ac
006a4ba8  08 00 9d e5                                      ldr r0, [sp, #8]
006a4bac  6c a7 f1 eb                                      bl #0x30e964
006a4bb0  00 60 a0 e1                                      mov r6, r0
006a4bb4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006a4bb8  69 a7 f1 eb                                      bl #0x30e964
006a4bbc  00 50 a0 e1                                      mov r5, r0
006a4bc0  10 00 9d e5                                      ldr r0, [sp, #0x10]
006a4bc4  66 a7 f1 eb                                      bl #0x30e964
006a4bc8  00 60 84 e5                                      str r6, [r4]
006a4bcc  04 50 84 e5                                      str r5, [r4, #4]
006a4bd0  08 00 84 e5                                      str r0, [r4, #8]
006a4bd4  14 00 9d e5                                      ldr r0, [sp, #0x14]
006a4bd8  61 a7 f1 eb                                      bl #0x30e964
006a4bdc  00 60 a0 e1                                      mov r6, r0
006a4be0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a4be4  5e a7 f1 eb                                      bl #0x30e964
006a4be8  00 50 a0 e1                                      mov r5, r0
006a4bec  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006a4bf0  5b a7 f1 eb                                      bl #0x30e964
006a4bf4  0c 60 84 e5                                      str r6, [r4, #0xc]
006a4bf8  14 00 84 e5                                      str r0, [r4, #0x14]
006a4bfc  10 50 84 e5                                      str r5, [r4, #0x10]
006a4c00  44 ff ff ea                                      b #0x6a4918
006a4c04  00 e0 e0 e3                                      mvn lr, #0
006a4c08  02 10 a0 e1                                      mov r1, r2
006a4c0c  08 50 8d e2                                      add r5, sp, #8
006a4c10  03 20 a0 e1                                      mov r2, r3
006a4c14  0c 30 a0 e1                                      mov r3, ip
006a4c18  01 c0 a0 e3                                      mov ip, #1
006a4c1c  10 e0 8d e5                                      str lr, [sp, #0x10]
006a4c20  1c c0 8d e5                                      str ip, [sp, #0x1c]
006a4c24  08 e0 8d e5                                      str lr, [sp, #8]
006a4c28  0c e0 8d e5                                      str lr, [sp, #0xc]
006a4c2c  14 c0 8d e5                                      str ip, [sp, #0x14]
006a4c30  18 c0 8d e5                                      str ip, [sp, #0x18]
006a4c34  00 50 8d e5                                      str r5, [sp]
006a4c38  df fe ff eb                                      bl #0x6a47bc
006a4c3c  08 00 9d e5                                      ldr r0, [sp, #8]
006a4c40  a6 a5 f1 eb                                      bl #0x30e2e0
006a4c44  00 60 a0 e1                                      mov r6, r0
006a4c48  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006a4c4c  a3 a5 f1 eb                                      bl #0x30e2e0
006a4c50  00 50 a0 e1                                      mov r5, r0
006a4c54  10 00 9d e5                                      ldr r0, [sp, #0x10]
006a4c58  a0 a5 f1 eb                                      bl #0x30e2e0
006a4c5c  00 60 84 e5                                      str r6, [r4]
006a4c60  04 50 84 e5                                      str r5, [r4, #4]
006a4c64  08 00 84 e5                                      str r0, [r4, #8]
006a4c68  14 00 9d e5                                      ldr r0, [sp, #0x14]
006a4c6c  9b a5 f1 eb                                      bl #0x30e2e0
006a4c70  00 60 a0 e1                                      mov r6, r0
006a4c74  18 00 9d e5                                      ldr r0, [sp, #0x18]
006a4c78  98 a5 f1 eb                                      bl #0x30e2e0
006a4c7c  00 50 a0 e1                                      mov r5, r0
006a4c80  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006a4c84  95 a5 f1 eb                                      bl #0x30e2e0
006a4c88  0c 60 84 e5                                      str r6, [r4, #0xc]
006a4c8c  14 00 84 e5                                      str r0, [r4, #0x14]
006a4c90  10 50 84 e5                                      str r5, [r4, #0x10]
006a4c94  1f ff ff ea                                      b #0x6a4918

; FUNCTION 0x006e5c98, declared_size=124, range_size=124, mode=arm
; class-group: glitch::core
; alias: _ZN6glitch4core13float2stringcEf
; demangled: glitch::core::float2stringc(float)
; decoder-mode: arm
006e5c98  70 40 2d e9                                      push {r4, r5, r6, lr}
006e5c9c  00 40 a0 e1                                      mov r4, r0
006e5ca0  08 d0 4d e2                                      sub sp, sp, #8
006e5ca4  21 00 a0 e3                                      mov r0, #0x21
006e5ca8  01 60 a0 e1                                      mov r6, r1
006e5cac  50 3a f9 eb                                      bl #0x5345f4
006e5cb0  00 50 a0 e1                                      mov r5, r0
006e5cb4  06 00 a0 e1                                      mov r0, r6
006e5cb8  f9 a2 f0 eb                                      bl #0x30e8a4
006e5cbc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
006e5cc0  f0 00 cd e1                                      strd r0, r1, [sp]
006e5cc4  02 20 8f e0                                      add r2, pc, r2
006e5cc8  20 10 a0 e3                                      mov r1, #0x20
006e5ccc  05 00 a0 e1                                      mov r0, r5
006e5cd0  5b a1 f0 eb                                      bl #0x30e244
006e5cd4  10 40 84 e5                                      str r4, [r4, #0x10]
006e5cd8  14 40 84 e5                                      str r4, [r4, #0x14]
006e5cdc  05 00 a0 e1                                      mov r0, r5
006e5ce0  5b a0 f0 eb                                      bl #0x30de54
006e5ce4  05 10 a0 e1                                      mov r1, r5
006e5ce8  00 20 85 e0                                      add r2, r5, r0
006e5cec  04 00 a0 e1                                      mov r0, r4
006e5cf0  bf 00 f1 eb                                      bl #0x325ff4
006e5cf4  00 00 55 e3                                      cmp r5, #0
006e5cf8  01 00 00 0a                                      beq #0x6e5d04
006e5cfc  05 00 a0 e1                                      mov r0, r5
006e5d00  60 3a f9 eb                                      bl #0x534688
006e5d04  04 00 a0 e1                                      mov r0, r4
006e5d08  08 d0 8d e2                                      add sp, sp, #8
006e5d0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e5d10  9c 86 1d 00                                      .byte 0x9c, 0x86, 0x1d, 0x00
