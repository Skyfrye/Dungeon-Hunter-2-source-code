; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00379e68, declared_size=72, range_size=72, mode=arm
; class-group: LuaManager
; alias: _ZN10LuaManagerC2Ev
; demangled: LuaManager::LuaManager()
; decoder-mode: arm
00379e68  38 10 9f e5                                      ldr r1, [pc, #0x38]
00379e6c  04 40 2d e5                                      str r4, [sp, #-4]!
00379e70  34 40 9f e5                                      ldr r4, [pc, #0x34]
00379e74  01 10 8f e0                                      add r1, pc, r1
00379e78  00 c0 a0 e3                                      mov ip, #0
00379e7c  04 40 91 e7                                      ldr r4, [r1, r4]
00379e80  00 20 a0 e1                                      mov r2, r0
00379e84  08 c0 80 e5                                      str ip, [r0, #8]
00379e88  08 40 84 e2                                      add r4, r4, #8
00379e8c  00 40 80 e5                                      str r4, [r0]
00379e90  04 c0 e2 e5                                      strb ip, [r2, #4]!
00379e94  10 20 80 e5                                      str r2, [r0, #0x10]
00379e98  14 c0 80 e5                                      str ip, [r0, #0x14]
00379e9c  0c 20 80 e5                                      str r2, [r0, #0xc]
00379ea0  10 00 bd e8                                      ldm sp!, {r4}
00379ea4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00379ea8  1c ac 61 00 68 3d 00 00                          .byte 0x1c, 0xac, 0x61, 0x00, 0x68, 0x3d, 0x00, 0x00

; FUNCTION 0x00379eb0, declared_size=72, range_size=72, mode=arm
; class-group: LuaManager
; alias: _ZN10LuaManagerC1Ev
; demangled: LuaManager::LuaManager()
; decoder-mode: arm
00379eb0  38 10 9f e5                                      ldr r1, [pc, #0x38]
00379eb4  04 40 2d e5                                      str r4, [sp, #-4]!
00379eb8  34 40 9f e5                                      ldr r4, [pc, #0x34]
00379ebc  01 10 8f e0                                      add r1, pc, r1
00379ec0  00 c0 a0 e3                                      mov ip, #0
00379ec4  04 40 91 e7                                      ldr r4, [r1, r4]
00379ec8  00 20 a0 e1                                      mov r2, r0
00379ecc  08 c0 80 e5                                      str ip, [r0, #8]
00379ed0  08 40 84 e2                                      add r4, r4, #8
00379ed4  00 40 80 e5                                      str r4, [r0]
00379ed8  04 c0 e2 e5                                      strb ip, [r2, #4]!
00379edc  10 20 80 e5                                      str r2, [r0, #0x10]
00379ee0  14 c0 80 e5                                      str ip, [r0, #0x14]
00379ee4  0c 20 80 e5                                      str r2, [r0, #0xc]
00379ee8  10 00 bd e8                                      ldm sp!, {r4}
00379eec  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00379ef0  d4 ab 61 00 68 3d 00 00                          .byte 0xd4, 0xab, 0x61, 0x00, 0x68, 0x3d, 0x00, 0x00

; FUNCTION 0x00379fe8, declared_size=196, range_size=196, mode=arm
; class-group: LuaManager
; alias: _ZN10LuaManager18FlushBufferedFilesEv
; demangled: LuaManager::FlushBufferedFiles()
; decoder-mode: arm
00379fe8  70 40 2d e9                                      push {r4, r5, r6, lr}
00379fec  0c 60 90 e5                                      ldr r6, [r0, #0xc]
00379ff0  00 50 a0 e1                                      mov r5, r0
00379ff4  04 40 80 e2                                      add r4, r0, #4
00379ff8  06 00 54 e1                                      cmp r4, r6
00379ffc  11 00 00 0a                                      beq #0x37a048
0037a000  28 30 96 e5                                      ldr r3, [r6, #0x28]
0037a004  00 00 53 e3                                      cmp r3, #0
0037a008  03 00 00 0a                                      beq #0x37a01c
0037a00c  03 00 a0 e1                                      mov r0, r3
0037a010  00 30 93 e5                                      ldr r3, [r3]
0037a014  0f e0 a0 e1                                      mov lr, pc
0037a018  04 f0 93 e5                                      ldr pc, [r3, #4]
0037a01c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0037a020  00 00 52 e3                                      cmp r2, #0
0037a024  01 00 00 1a                                      bne #0x37a030
0037a028  12 00 00 ea                                      b #0x37a078
0037a02c  03 20 a0 e1                                      mov r2, r3
0037a030  08 30 92 e5                                      ldr r3, [r2, #8]
0037a034  00 00 53 e3                                      cmp r3, #0
0037a038  fb ff ff 1a                                      bne #0x37a02c
0037a03c  02 60 a0 e1                                      mov r6, r2
0037a040  06 00 54 e1                                      cmp r4, r6
0037a044  ed ff ff 1a                                      bne #0x37a000
0037a048  14 30 95 e5                                      ldr r3, [r5, #0x14]
0037a04c  00 00 53 e3                                      cmp r3, #0
0037a050  07 00 00 0a                                      beq #0x37a074
0037a054  04 00 a0 e1                                      mov r0, r4
0037a058  08 10 95 e5                                      ldr r1, [r5, #8]
0037a05c  d1 ff ff eb                                      bl #0x379fa8
0037a060  00 30 a0 e3                                      mov r3, #0
0037a064  14 30 85 e5                                      str r3, [r5, #0x14]
0037a068  10 40 85 e5                                      str r4, [r5, #0x10]
0037a06c  0c 40 85 e5                                      str r4, [r5, #0xc]
0037a070  08 30 85 e5                                      str r3, [r5, #8]
0037a074  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037a078  04 30 96 e5                                      ldr r3, [r6, #4]
0037a07c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0037a080  01 00 56 e1                                      cmp r6, r1
0037a084  05 00 00 1a                                      bne #0x37a0a0
0037a088  03 60 a0 e1                                      mov r6, r3
0037a08c  04 30 93 e5                                      ldr r3, [r3, #4]
0037a090  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0037a094  06 00 52 e1                                      cmp r2, r6
0037a098  fa ff ff 0a                                      beq #0x37a088
0037a09c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0037a0a0  03 00 52 e1                                      cmp r2, r3
0037a0a4  03 60 a0 11                                      movne r6, r3
0037a0a8  d2 ff ff ea                                      b #0x379ff8

; FUNCTION 0x0037a0ac, declared_size=100, range_size=100, mode=arm
; class-group: LuaManager
; alias: _ZN10LuaManagerD1Ev
; demangled: LuaManager::~LuaManager()
; decoder-mode: arm
0037a0ac  54 30 9f e5                                      ldr r3, [pc, #0x54]
0037a0b0  54 20 9f e5                                      ldr r2, [pc, #0x54]
0037a0b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0037a0b8  03 30 8f e0                                      add r3, pc, r3
0037a0bc  02 20 93 e7                                      ldr r2, [r3, r2]
0037a0c0  00 40 a0 e1                                      mov r4, r0
0037a0c4  08 20 82 e2                                      add r2, r2, #8
0037a0c8  00 20 80 e5                                      str r2, [r0]
0037a0cc  c5 ff ff eb                                      bl #0x379fe8
0037a0d0  14 30 94 e5                                      ldr r3, [r4, #0x14]
0037a0d4  00 00 53 e3                                      cmp r3, #0
0037a0d8  08 00 00 0a                                      beq #0x37a100
0037a0dc  04 50 84 e2                                      add r5, r4, #4
0037a0e0  05 00 a0 e1                                      mov r0, r5
0037a0e4  08 10 94 e5                                      ldr r1, [r4, #8]
0037a0e8  ae ff ff eb                                      bl #0x379fa8
0037a0ec  00 30 a0 e3                                      mov r3, #0
0037a0f0  10 50 84 e5                                      str r5, [r4, #0x10]
0037a0f4  14 30 84 e5                                      str r3, [r4, #0x14]
0037a0f8  0c 50 84 e5                                      str r5, [r4, #0xc]
0037a0fc  08 30 84 e5                                      str r3, [r4, #8]
0037a100  04 00 a0 e1                                      mov r0, r4
0037a104  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037a108  d8 a9 61 00 68 3d 00 00                          .byte 0xd8, 0xa9, 0x61, 0x00, 0x68, 0x3d, 0x00, 0x00

; FUNCTION 0x0037a110, declared_size=28, range_size=28, mode=arm
; class-group: LuaManager
; alias: _ZN10LuaManagerD0Ev
; demangled: LuaManager::~LuaManager()
; decoder-mode: arm
0037a110  10 40 2d e9                                      push {r4, lr}
0037a114  00 40 a0 e1                                      mov r4, r0
0037a118  e3 ff ff eb                                      bl #0x37a0ac
0037a11c  04 00 a0 e1                                      mov r0, r4
0037a120  c6 58 fe eb                                      bl #0x310440
0037a124  04 00 a0 e1                                      mov r0, r4
0037a128  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0037a12c, declared_size=100, range_size=100, mode=arm
; class-group: LuaManager
; alias: _ZN10LuaManagerD2Ev
; demangled: LuaManager::~LuaManager()
; decoder-mode: arm
0037a12c  54 30 9f e5                                      ldr r3, [pc, #0x54]
0037a130  54 20 9f e5                                      ldr r2, [pc, #0x54]
0037a134  70 40 2d e9                                      push {r4, r5, r6, lr}
0037a138  03 30 8f e0                                      add r3, pc, r3
0037a13c  02 20 93 e7                                      ldr r2, [r3, r2]
0037a140  00 40 a0 e1                                      mov r4, r0
0037a144  08 20 82 e2                                      add r2, r2, #8
0037a148  00 20 80 e5                                      str r2, [r0]
0037a14c  a5 ff ff eb                                      bl #0x379fe8
0037a150  14 30 94 e5                                      ldr r3, [r4, #0x14]
0037a154  00 00 53 e3                                      cmp r3, #0
0037a158  08 00 00 0a                                      beq #0x37a180
0037a15c  04 50 84 e2                                      add r5, r4, #4
0037a160  05 00 a0 e1                                      mov r0, r5
0037a164  08 10 94 e5                                      ldr r1, [r4, #8]
0037a168  8e ff ff eb                                      bl #0x379fa8
0037a16c  00 30 a0 e3                                      mov r3, #0
0037a170  10 50 84 e5                                      str r5, [r4, #0x10]
0037a174  14 30 84 e5                                      str r3, [r4, #0x14]
0037a178  0c 50 84 e5                                      str r5, [r4, #0xc]
0037a17c  08 30 84 e5                                      str r3, [r4, #8]
0037a180  04 00 a0 e1                                      mov r0, r4
0037a184  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037a188  58 a9 61 00 68 3d 00 00                          .byte 0x58, 0xa9, 0x61, 0x00, 0x68, 0x3d, 0x00, 0x00

; FUNCTION 0x0037b23c, declared_size=808, range_size=808, mode=arm
; class-group: LuaManager
; alias: _ZN10LuaManager7AddFileEP9LuaScriptPKc
; demangled: LuaManager::AddFile(LuaScript*, char const*)
; decoder-mode: arm
0037b23c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037b240  e0 42 9f e5                                      ldr r4, [pc, #0x2e0]
0037b244  e0 62 9f e5                                      ldr r6, [pc, #0x2e0]
0037b248  7c d0 4d e2                                      sub sp, sp, #0x7c
0037b24c  04 40 8f e0                                      add r4, pc, r4
0037b250  06 30 94 e7                                      ldr r3, [r4, r6]
0037b254  00 70 51 e2                                      subs r7, r1, #0
0037b258  00 a0 a0 e1                                      mov sl, r0
0037b25c  00 30 93 e5                                      ldr r3, [r3]
0037b260  02 50 a0 e1                                      mov r5, r2
0037b264  74 30 8d e5                                      str r3, [sp, #0x74]
0037b268  2a 00 00 0a                                      beq #0x37b318
0037b26c  00 00 55 e3                                      cmp r5, #0
0037b270  02 00 00 0a                                      beq #0x37b280
0037b274  d0 30 d5 e1                                      ldrsb r3, [r5]
0037b278  00 00 53 e3                                      cmp r3, #0
0037b27c  08 00 00 1a                                      bne #0x37b2a4
0037b280  00 50 a0 e3                                      mov r5, #0
0037b284  06 30 94 e7                                      ldr r3, [r4, r6]
0037b288  74 20 9d e5                                      ldr r2, [sp, #0x74]
0037b28c  05 00 a0 e1                                      mov r0, r5
0037b290  00 30 93 e5                                      ldr r3, [r3]
0037b294  03 00 52 e1                                      cmp r2, r3
0037b298  a1 00 00 1a                                      bne #0x37b524
0037b29c  7c d0 8d e2                                      add sp, sp, #0x7c
0037b2a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0037b2a4  5c 80 8d e2                                      add r8, sp, #0x5c
0037b2a8  08 00 a0 e1                                      mov r0, r8
0037b2ac  68 10 87 e2                                      add r1, r7, #0x68
0037b2b0  05 20 a0 e1                                      mov r2, r5
0037b2b4  84 e1 fe eb                                      bl #0x3338cc
0037b2b8  70 12 9f e5                                      ldr r1, [pc, #0x270]
0037b2bc  05 00 a0 e1                                      mov r0, r5
0037b2c0  01 10 8f e0                                      add r1, pc, r1
0037b2c4  42 4e fe eb                                      bl #0x30ebd4
0037b2c8  00 00 50 e3                                      cmp r0, #0
0037b2cc  49 00 00 0a                                      beq #0x37b3f8
0037b2d0  5c 12 9f e5                                      ldr r1, [pc, #0x25c]
0037b2d4  05 20 a0 e3                                      mov r2, #5
0037b2d8  01 10 8f e0                                      add r1, pc, r1
0037b2dc  66 4e fe eb                                      bl #0x30ec7c
0037b2e0  00 00 50 e3                                      cmp r0, #0
0037b2e4  20 00 00 1a                                      bne #0x37b36c
0037b2e8  70 30 9d e5                                      ldr r3, [sp, #0x70]
0037b2ec  78 10 8d e2                                      add r1, sp, #0x78
0037b2f0  80 50 87 e2                                      add r5, r7, #0x80
0037b2f4  5c 30 21 e5                                      str r3, [r1, #-0x5c]!
0037b2f8  05 00 a0 e1                                      mov r0, r5
0037b2fc  a3 fb ff eb                                      bl #0x37a190
0037b300  00 00 55 e1                                      cmp r5, r0
0037b304  1d 00 00 0a                                      beq #0x37b380
0037b308  01 50 a0 e3                                      mov r5, #1
0037b30c  08 00 a0 e1                                      mov r0, r8
0037b310  a5 61 fe eb                                      bl #0x3139ac
0037b314  da ff ff ea                                      b #0x37b284
0037b318  18 32 9f e5                                      ldr r3, [pc, #0x218]
0037b31c  03 30 94 e7                                      ldr r3, [r4, r3]
0037b320  00 30 93 e5                                      ldr r3, [r3]
0037b324  02 00 53 e3                                      cmp r3, #2
0037b328  00 70 87 05                                      streq r7, [r7]
0037b32c  ce ff ff 0a                                      beq #0x37b26c
0037b330  01 00 53 e3                                      cmp r3, #1
0037b334  cc ff ff 1a                                      bne #0x37b26c
0037b338  fc 01 9f e5                                      ldr r0, [pc, #0x1fc]
0037b33c  fc 11 9f e5                                      ldr r1, [pc, #0x1fc]
0037b340  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
0037b344  00 00 94 e7                                      ldr r0, [r4, r0]
0037b348  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
0037b34c  23 c0 a0 e3                                      mov ip, #0x23
0037b350  01 10 8f e0                                      add r1, pc, r1
0037b354  02 20 8f e0                                      add r2, pc, r2
0037b358  03 30 8f e0                                      add r3, pc, r3
0037b35c  a8 00 80 e2                                      add r0, r0, #0xa8
0037b360  00 c0 8d e5                                      str ip, [sp]
0037b364  26 4b fe eb                                      bl #0x30e004
0037b368  bf ff ff ea                                      b #0x37b26c
0037b36c  d8 11 9f e5                                      ldr r1, [pc, #0x1d8]
0037b370  08 00 a0 e1                                      mov r0, r8
0037b374  01 10 8f e0                                      add r1, pc, r1
0037b378  de fa ff eb                                      bl #0x379ef8
0037b37c  d9 ff ff ea                                      b #0x37b2e8
0037b380  70 30 9d e5                                      ldr r3, [sp, #0x70]
0037b384  78 10 8d e2                                      add r1, sp, #0x78
0037b388  04 a0 8a e2                                      add sl, sl, #4
0037b38c  60 30 21 e5                                      str r3, [r1, #-0x60]!
0037b390  0a 00 a0 e1                                      mov r0, sl
0037b394  d9 fb ff eb                                      bl #0x37a300
0037b398  0a 00 50 e1                                      cmp r0, sl
0037b39c  00 90 a0 e1                                      mov sb, r0
0037b3a0  27 00 00 0a                                      beq #0x37b444
0037b3a4  28 a0 90 e5                                      ldr sl, [r0, #0x28]
0037b3a8  00 20 a0 e3                                      mov r2, #0
0037b3ac  00 30 a0 e3                                      mov r3, #0
0037b3b0  00 10 9a e5                                      ldr r1, [sl]
0037b3b4  0a 00 a0 e1                                      mov r0, sl
0037b3b8  0f e0 a0 e1                                      mov lr, pc
0037b3bc  20 f0 91 e5                                      ldr pc, [r1, #0x20]
0037b3c0  00 00 5a e3                                      cmp sl, #0
0037b3c4  41 00 00 0a                                      beq #0x37b4d0
0037b3c8  24 90 8d e2                                      add sb, sp, #0x24
0037b3cc  04 10 87 e2                                      add r1, r7, #4
0037b3d0  0a 20 a0 e1                                      mov r2, sl
0037b3d4  09 00 a0 e1                                      mov r0, sb
0037b3d8  45 7e fe eb                                      bl #0x31acf4
0037b3dc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0037b3e0  00 00 53 e3                                      cmp r3, #0
0037b3e4  08 00 00 0a                                      beq #0x37b40c
0037b3e8  09 00 a0 e1                                      mov r0, sb
0037b3ec  a6 7c fe eb                                      bl #0x31a68c
0037b3f0  00 50 a0 e3                                      mov r5, #0
0037b3f4  c4 ff ff ea                                      b #0x37b30c
0037b3f8  50 11 9f e5                                      ldr r1, [pc, #0x150]
0037b3fc  08 00 a0 e1                                      mov r0, r8
0037b400  01 10 8f e0                                      add r1, pc, r1
0037b404  bb fa ff eb                                      bl #0x379ef8
0037b408  b6 ff ff ea                                      b #0x37b2e8
0037b40c  44 70 8d e2                                      add r7, sp, #0x44
0037b410  09 00 a0 e1                                      mov r0, sb
0037b414  9c 7c fe eb                                      bl #0x31a68c
0037b418  70 10 9d e5                                      ldr r1, [sp, #0x70]
0037b41c  20 20 8d e2                                      add r2, sp, #0x20
0037b420  07 00 a0 e1                                      mov r0, r7
0037b424  30 63 fe eb                                      bl #0x3140ec
0037b428  08 00 8d e2                                      add r0, sp, #8
0037b42c  05 10 a0 e1                                      mov r1, r5
0037b430  07 20 a0 e1                                      mov r2, r7
0037b434  6b fd ff eb                                      bl #0x37a9e8
0037b438  07 00 a0 e1                                      mov r0, r7
0037b43c  5a 61 fe eb                                      bl #0x3139ac
0037b440  b0 ff ff ea                                      b #0x37b308
0037b444  08 31 9f e5                                      ldr r3, [pc, #0x108]
0037b448  00 20 a0 e3                                      mov r2, #0
0037b44c  70 10 9d e5                                      ldr r1, [sp, #0x70]
0037b450  03 b0 94 e7                                      ldr fp, [r4, r3]
0037b454  02 30 a0 e1                                      mov r3, r2
0037b458  10 00 9b e5                                      ldr r0, [fp, #0x10]
0037b45c  34 c0 90 e5                                      ldr ip, [r0, #0x34]
0037b460  0c 00 a0 e1                                      mov r0, ip
0037b464  00 c0 9c e5                                      ldr ip, [ip]
0037b468  0f e0 a0 e1                                      mov lr, pc
0037b46c  88 f0 9c e5                                      ldr pc, [ip, #0x88]
0037b470  00 00 50 e3                                      cmp r0, #0
0037b474  14 00 8d e5                                      str r0, [sp, #0x14]
0037b478  00 50 a0 01                                      moveq r5, r0
0037b47c  a2 ff ff 0a                                      beq #0x37b30c
0037b480  00 10 a0 e3                                      mov r1, #0
0037b484  30 00 a0 e3                                      mov r0, #0x30
0037b488  38 54 fe eb                                      bl #0x310570
0037b48c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0037b490  00 a0 a0 e1                                      mov sl, r0
0037b494  8f 6f fe eb                                      bl #0x3172d8
0037b498  70 30 9d e5                                      ldr r3, [sp, #0x70]
0037b49c  78 10 8d e2                                      add r1, sp, #0x78
0037b4a0  09 00 a0 e1                                      mov r0, sb
0037b4a4  68 30 21 e5                                      str r3, [r1, #-0x68]!
0037b4a8  13 ff ff eb                                      bl #0x37b0fc
0037b4ac  00 a0 80 e5                                      str sl, [r0]
0037b4b0  10 30 9b e5                                      ldr r3, [fp, #0x10]
0037b4b4  14 10 8d e2                                      add r1, sp, #0x14
0037b4b8  34 30 93 e5                                      ldr r3, [r3, #0x34]
0037b4bc  03 00 a0 e1                                      mov r0, r3
0037b4c0  00 30 93 e5                                      ldr r3, [r3]
0037b4c4  0f e0 a0 e1                                      mov lr, pc
0037b4c8  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0037b4cc  bb ff ff ea                                      b #0x37b3c0
0037b4d0  60 30 9f e5                                      ldr r3, [pc, #0x60]
0037b4d4  03 30 94 e7                                      ldr r3, [r4, r3]
0037b4d8  00 30 93 e5                                      ldr r3, [r3]
0037b4dc  02 00 53 e3                                      cmp r3, #2
0037b4e0  00 a0 8a 05                                      streq sl, [sl]
0037b4e4  b7 ff ff 0a                                      beq #0x37b3c8
0037b4e8  01 00 53 e3                                      cmp r3, #1
0037b4ec  b5 ff ff 1a                                      bne #0x37b3c8
0037b4f0  44 00 9f e5                                      ldr r0, [pc, #0x44]
0037b4f4  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0037b4f8  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0037b4fc  00 00 94 e7                                      ldr r0, [r4, r0]
0037b500  58 30 9f e5                                      ldr r3, [pc, #0x58]
0037b504  61 c0 a0 e3                                      mov ip, #0x61
0037b508  01 10 8f e0                                      add r1, pc, r1
0037b50c  02 20 8f e0                                      add r2, pc, r2
0037b510  03 30 8f e0                                      add r3, pc, r3
0037b514  a8 00 80 e2                                      add r0, r0, #0xa8
0037b518  00 c0 8d e5                                      str ip, [sp]
0037b51c  b8 4a fe eb                                      bl #0x30e004
0037b520  a8 ff ff ea                                      b #0x37b3c8
0037b524  79 4b fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037b528  44 98 61 00 ac 40 00 00 70 67 54 00 60 67 54 00  .byte 0x44, 0x98, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00, 0x70, 0x67, 0x54, 0x00, 0x60, 0x67, 0x54, 0x00
0037b538  c0 39 00 00 c0 19 00 00 88 30 54 00 84 66 54 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x88, 0x30, 0x54, 0x00, 0x84, 0x66, 0x54, 0x00
0037b548  88 66 54 00 14 6d 57 00 38 66 54 00 f4 37 00 00  .byte 0x88, 0x66, 0x54, 0x00, 0x14, 0x6d, 0x57, 0x00, 0x38, 0x66, 0x54, 0x00, 0xf4, 0x37, 0x00, 0x00
0037b558  d0 2e 54 00 34 65 54 00 d0 64 54 00              .byte 0xd0, 0x2e, 0x54, 0x00, 0x34, 0x65, 0x54, 0x00, 0xd0, 0x64, 0x54, 0x00
