; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00395940, declared_size=4, range_size=4, mode=arm
; class-group: Zone
; alias: _ZN4Zone11OnCollisionEP10GameObject
; demangled: Zone::OnCollision(GameObject*)
; decoder-mode: arm
00395940  1e ff 2f e1                                      bx lr

; FUNCTION 0x00395944, declared_size=4, range_size=4, mode=arm
; class-group: Zone
; alias: _ZN4Zone19OnCollisionPersistsEP10GameObject
; demangled: Zone::OnCollisionPersists(GameObject*)
; decoder-mode: arm
00395944  1e ff 2f e1                                      bx lr

; FUNCTION 0x00395948, declared_size=4, range_size=4, mode=arm
; class-group: Zone
; alias: _ZN4Zone15OnCollisionEndsEP10GameObject
; demangled: Zone::OnCollisionEnds(GameObject*)
; decoder-mode: arm
00395948  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039649c, declared_size=4, range_size=4, mode=arm
; class-group: Zone
; alias: _ZN4Zone17OnCollisionBeginsEP10GameObject
; demangled: Zone::OnCollisionBegins(GameObject*)
; decoder-mode: arm
0039649c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003970c8, declared_size=1228, range_size=1228, mode=arm
; class-group: Zone
; alias: _ZN4Zone8IsInsideEP10GameObject
; demangled: Zone::IsInside(GameObject*)
; decoder-mode: arm
003970c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003970cc  94 44 9f e5                                      ldr r4, [pc, #0x494]
003970d0  94 24 9f e5                                      ldr r2, [pc, #0x494]
003970d4  94 d0 4d e2                                      sub sp, sp, #0x94
003970d8  04 40 8f e0                                      add r4, pc, r4
003970dc  02 30 94 e7                                      ldr r3, [r4, r2]
003970e0  00 60 51 e2                                      subs r6, r1, #0
003970e4  10 20 8d e5                                      str r2, [sp, #0x10]
003970e8  00 30 93 e5                                      ldr r3, [r3]
003970ec  00 50 a0 e1                                      mov r5, r0
003970f0  8c 30 8d e5                                      str r3, [sp, #0x8c]
003970f4  dd 00 00 0a                                      beq #0x397470
003970f8  dc 72 96 e5                                      ldr r7, [r6, #0x2dc]
003970fc  00 00 57 e3                                      cmp r7, #0
00397100  d8 00 00 0a                                      beq #0x397468
00397104  84 83 95 e5                                      ldr r8, [r5, #0x384]
00397108  00 00 58 e3                                      cmp r8, #0
0039710c  b3 00 00 0a                                      beq #0x3973e0
00397110  58 34 9f e5                                      ldr r3, [pc, #0x458]
00397114  00 20 a0 e3                                      mov r2, #0
00397118  64 11 95 e5                                      ldr r1, [r5, #0x164]
0039711c  03 30 94 e7                                      ldr r3, [r4, r3]
00397120  3c 20 8d e5                                      str r2, [sp, #0x3c]
00397124  64 20 8d e5                                      str r2, [sp, #0x64]
00397128  08 a0 93 e5                                      ldr sl, [r3, #8]
0039712c  04 b0 93 e5                                      ldr fp, [r3, #4]
00397130  00 30 93 e5                                      ldr r3, [r3]
00397134  68 20 8d e5                                      str r2, [sp, #0x68]
00397138  6c 20 8d e5                                      str r2, [sp, #0x6c]
0039713c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00397140  20 20 8d e5                                      str r2, [sp, #0x20]
00397144  24 20 8d e5                                      str r2, [sp, #0x24]
00397148  28 20 8d e5                                      str r2, [sp, #0x28]
0039714c  2c 20 8d e5                                      str r2, [sp, #0x2c]
00397150  30 20 8d e5                                      str r2, [sp, #0x30]
00397154  34 20 8d e5                                      str r2, [sp, #0x34]
00397158  38 20 8d e5                                      str r2, [sp, #0x38]
0039715c  64 01 96 e5                                      ldr r0, [r6, #0x164]
00397160  14 30 8d e5                                      str r3, [sp, #0x14]
00397164  90 dc fd eb                                      bl #0x30e3ac
00397168  42 14 a0 e3                                      mov r1, #0x42000000
0039716c  00 90 a0 e1                                      mov sb, r0
00397170  32 17 81 e2                                      add r1, r1, #0xc80000
00397174  0b 00 a0 e1                                      mov r0, fp
00397178  fb de fd eb                                      bl #0x30ed6c
0039717c  00 10 a0 e1                                      mov r1, r0
00397180  09 00 a0 e1                                      mov r0, sb
00397184  86 de fd eb                                      bl #0x30eba4
00397188  68 11 95 e5                                      ldr r1, [r5, #0x168]
0039718c  00 30 a0 e1                                      mov r3, r0
00397190  68 01 96 e5                                      ldr r0, [r6, #0x168]
00397194  08 30 8d e5                                      str r3, [sp, #8]
00397198  83 dc fd eb                                      bl #0x30e3ac
0039719c  42 14 a0 e3                                      mov r1, #0x42000000
003971a0  00 70 a0 e1                                      mov r7, r0
003971a4  32 17 81 e2                                      add r1, r1, #0xc80000
003971a8  0a 00 a0 e1                                      mov r0, sl
003971ac  ee de fd eb                                      bl #0x30ed6c
003971b0  00 10 a0 e1                                      mov r1, r0
003971b4  07 00 a0 e1                                      mov r0, r7
003971b8  79 de fd eb                                      bl #0x30eba4
003971bc  60 11 95 e5                                      ldr r1, [r5, #0x160]
003971c0  00 20 a0 e1                                      mov r2, r0
003971c4  60 01 96 e5                                      ldr r0, [r6, #0x160]
003971c8  0c 20 8d e5                                      str r2, [sp, #0xc]
003971cc  76 dc fd eb                                      bl #0x30e3ac
003971d0  42 14 a0 e3                                      mov r1, #0x42000000
003971d4  00 60 a0 e1                                      mov r6, r0
003971d8  32 17 81 e2                                      add r1, r1, #0xc80000
003971dc  14 00 9d e5                                      ldr r0, [sp, #0x14]
003971e0  e1 de fd eb                                      bl #0x30ed6c
003971e4  00 10 a0 e1                                      mov r1, r0
003971e8  06 00 a0 e1                                      mov r0, r6
003971ec  6c de fd eb                                      bl #0x30eba4
003971f0  08 30 9d e5                                      ldr r3, [sp, #8]
003971f4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003971f8  c2 14 a0 e3                                      mov r1, #0xc2000000
003971fc  40 00 8d e5                                      str r0, [sp, #0x40]
00397200  32 17 81 e2                                      add r1, r1, #0xc80000
00397204  0b 00 a0 e1                                      mov r0, fp
00397208  44 30 8d e5                                      str r3, [sp, #0x44]
0039720c  48 20 8d e5                                      str r2, [sp, #0x48]
00397210  d5 de fd eb                                      bl #0x30ed6c
00397214  00 10 a0 e1                                      mov r1, r0
00397218  09 00 a0 e1                                      mov r0, sb
0039721c  60 de fd eb                                      bl #0x30eba4
00397220  c2 14 a0 e3                                      mov r1, #0xc2000000
00397224  00 90 a0 e1                                      mov sb, r0
00397228  32 17 81 e2                                      add r1, r1, #0xc80000
0039722c  0a 00 a0 e1                                      mov r0, sl
00397230  cd de fd eb                                      bl #0x30ed6c
00397234  00 10 a0 e1                                      mov r1, r0
00397238  07 00 a0 e1                                      mov r0, r7
0039723c  58 de fd eb                                      bl #0x30eba4
00397240  c2 14 a0 e3                                      mov r1, #0xc2000000
00397244  00 a0 a0 e1                                      mov sl, r0
00397248  32 17 81 e2                                      add r1, r1, #0xc80000
0039724c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00397250  c5 de fd eb                                      bl #0x30ed6c
00397254  00 10 a0 e1                                      mov r1, r0
00397258  06 00 a0 e1                                      mov r0, r6
0039725c  50 de fd eb                                      bl #0x30eba4
00397260  0c 33 9f e5                                      ldr r3, [pc, #0x30c]
00397264  4c 00 8d e5                                      str r0, [sp, #0x4c]
00397268  50 90 8d e5                                      str sb, [sp, #0x50]
0039726c  03 70 94 e7                                      ldr r7, [r4, r3]
00397270  54 a0 8d e5                                      str sl, [sp, #0x54]
00397274  00 30 98 e5                                      ldr r3, [r8]
00397278  10 20 97 e5                                      ldr r2, [r7, #0x10]
0039727c  08 00 a0 e1                                      mov r0, r8
00397280  74 60 8d e2                                      add r6, sp, #0x74
00397284  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
00397288  2c a0 92 e5                                      ldr sl, [r2, #0x2c]
0039728c  00 20 9a e5                                      ldr r2, [sl]
00397290  0c 80 92 e5                                      ldr r8, [r2, #0xc]
00397294  0f e0 a0 e1                                      mov lr, pc
00397298  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
0039729c  1c 30 8d e2                                      add r3, sp, #0x1c
003972a0  00 20 a0 e1                                      mov r2, r0
003972a4  40 10 8d e2                                      add r1, sp, #0x40
003972a8  00 30 8d e5                                      str r3, [sp]
003972ac  0a 00 a0 e1                                      mov r0, sl
003972b0  64 30 8d e2                                      add r3, sp, #0x64
003972b4  38 ff 2f e1                                      blx r8
003972b8  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
003972bc  00 80 a0 e1                                      mov r8, r0
003972c0  03 a0 94 e7                                      ldr sl, [r4, r3]
003972c4  0a 00 a0 e1                                      mov r0, sl
003972c8  6e 81 fe eb                                      bl #0x337888
003972cc  a8 12 9f e5                                      ldr r1, [pc, #0x2a8]
003972d0  70 20 8d e2                                      add r2, sp, #0x70
003972d4  06 00 a0 e1                                      mov r0, r6
003972d8  01 10 8f e0                                      add r1, pc, r1
003972dc  82 f3 fd eb                                      bl #0x3140ec
003972e0  0a 00 a0 e1                                      mov r0, sl
003972e4  06 10 a0 e1                                      mov r1, r6
003972e8  e6 81 fe eb                                      bl #0x337a88
003972ec  00 a0 a0 e1                                      mov sl, r0
003972f0  06 00 a0 e1                                      mov r0, r6
003972f4  ac f1 fd eb                                      bl #0x3139ac
003972f8  00 00 5a e3                                      cmp sl, #0
003972fc  14 00 00 0a                                      beq #0x397354
00397300  10 20 97 e5                                      ldr r2, [r7, #0x10]
00397304  00 60 a0 e3                                      mov r6, #0
00397308  64 31 06 e3                                      movw r3, #0x6164
0039730c  84 13 95 e5                                      ldr r1, [r5, #0x384]
00397310  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00397314  65 3d 46 e3                                      movt r3, #0x6d65
00397318  58 60 8d e5                                      str r6, [sp, #0x58]
0039731c  5c 60 8d e5                                      str r6, [sp, #0x5c]
00397320  60 60 8d e5                                      str r6, [sp, #0x60]
00397324  58 20 8d e2                                      add r2, sp, #0x58
00397328  d8 52 95 e5                                      ldr r5, [r5, #0x2d8]
0039732c  ca e6 fe eb                                      bl #0x350e5c
00397330  58 00 9d e5                                      ldr r0, [sp, #0x58]
00397334  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00397338  01 10 60 e0                                      rsb r1, r0, r1
0039733c  41 11 a0 e1                                      asr r1, r1, #2
00397340  01 00 51 e3                                      cmp r1, #1
00397344  0b 00 00 0a                                      beq #0x397378
00397348  00 00 50 e3                                      cmp r0, #0
0039734c  00 00 00 0a                                      beq #0x397354
00397350  3e e4 fd eb                                      bl #0x310450
00397354  10 20 9d e5                                      ldr r2, [sp, #0x10]
00397358  08 00 a0 e1                                      mov r0, r8
0039735c  02 30 94 e7                                      ldr r3, [r4, r2]
00397360  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
00397364  00 30 93 e5                                      ldr r3, [r3]
00397368  03 00 52 e1                                      cmp r2, r3
0039736c  7c 00 00 1a                                      bne #0x397564
00397370  94 d0 8d e2                                      add sp, sp, #0x94
00397374  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00397378  06 00 58 e1                                      cmp r8, r6
0039737c  50 00 00 0a                                      beq #0x3974c4
00397380  06 10 a0 e1                                      mov r1, r6
00397384  08 00 95 e5                                      ldr r0, [r5, #8]
00397388  23 dc 05 eb                                      bl #0x50e41c
0039738c  58 00 9d e5                                      ldr r0, [sp, #0x58]
00397390  00 60 90 e5                                      ldr r6, [r0]
00397394  00 00 56 e3                                      cmp r6, #0
00397398  04 00 00 1a                                      bne #0x3973b0
0039739c  e9 ff ff ea                                      b #0x397348
003973a0  06 00 a0 e1                                      mov r0, r6
003973a4  b9 ff 07 eb                                      bl #0x597290
003973a8  00 60 50 e2                                      subs r6, r0, #0
003973ac  07 00 00 0a                                      beq #0x3973d0
003973b0  00 30 96 e5                                      ldr r3, [r6]
003973b4  06 00 a0 e1                                      mov r0, r6
003973b8  01 10 a0 e3                                      mov r1, #1
003973bc  0f e0 a0 e1                                      mov lr, pc
003973c0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003973c4  08 30 95 e5                                      ldr r3, [r5, #8]
003973c8  03 00 56 e1                                      cmp r6, r3
003973cc  f3 ff ff 1a                                      bne #0x3973a0
003973d0  58 00 9d e5                                      ldr r0, [sp, #0x58]
003973d4  00 00 50 e3                                      cmp r0, #0
003973d8  dc ff ff 1a                                      bne #0x397350
003973dc  dc ff ff ea                                      b #0x397354
003973e0  64 11 96 e5                                      ldr r1, [r6, #0x164]
003973e4  64 01 95 e5                                      ldr r0, [r5, #0x164]
003973e8  ef db fd eb                                      bl #0x30e3ac
003973ec  60 11 96 e5                                      ldr r1, [r6, #0x160]
003973f0  00 a0 a0 e1                                      mov sl, r0
003973f4  60 01 95 e5                                      ldr r0, [r5, #0x160]
003973f8  eb db fd eb                                      bl #0x30e3ac
003973fc  00 30 a0 e3                                      mov r3, #0
00397400  64 00 8d e5                                      str r0, [sp, #0x64]
00397404  64 00 8d e2                                      add r0, sp, #0x64
00397408  6c 30 8d e5                                      str r3, [sp, #0x6c]
0039740c  68 a0 8d e5                                      str sl, [sp, #0x68]
00397410  26 d7 fe eb                                      bl #0x34d0b0
00397414  07 00 a0 e1                                      mov r0, r7
00397418  cc 5c 03 eb                                      bl #0x46e750
0039741c  00 70 a0 e1                                      mov r7, r0
00397420  00 10 a0 e1                                      mov r1, r0
00397424  64 00 9d e5                                      ldr r0, [sp, #0x64]
00397428  4f de fd eb                                      bl #0x30ed6c
0039742c  07 10 a0 e1                                      mov r1, r7
00397430  64 00 8d e5                                      str r0, [sp, #0x64]
00397434  68 00 9d e5                                      ldr r0, [sp, #0x68]
00397438  4b de fd eb                                      bl #0x30ed6c
0039743c  07 10 a0 e1                                      mov r1, r7
00397440  68 00 8d e5                                      str r0, [sp, #0x68]
00397444  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00397448  47 de fd eb                                      bl #0x30ed6c
0039744c  6c 00 8d e5                                      str r0, [sp, #0x6c]
00397450  60 71 96 e5                                      ldr r7, [r6, #0x160]
00397454  2c 01 95 e5                                      ldr r0, [r5, #0x12c]
00397458  07 10 a0 e1                                      mov r1, r7
0039745c  52 dd fd eb                                      bl #0x30e9ac
00397460  00 00 50 e3                                      cmp r0, #0
00397464  21 00 00 1a                                      bne #0x3974f0
00397468  00 80 a0 e3                                      mov r8, #0
0039746c  b8 ff ff ea                                      b #0x397354
00397470  08 31 9f e5                                      ldr r3, [pc, #0x108]
00397474  03 30 94 e7                                      ldr r3, [r4, r3]
00397478  00 30 93 e5                                      ldr r3, [r3]
0039747c  02 00 53 e3                                      cmp r3, #2
00397480  00 60 86 05                                      streq r6, [r6]
00397484  1b ff ff 0a                                      beq #0x3970f8
00397488  01 00 53 e3                                      cmp r3, #1
0039748c  19 ff ff 1a                                      bne #0x3970f8
00397490  ec 00 9f e5                                      ldr r0, [pc, #0xec]
00397494  ec 10 9f e5                                      ldr r1, [pc, #0xec]
00397498  ec 20 9f e5                                      ldr r2, [pc, #0xec]
0039749c  00 00 94 e7                                      ldr r0, [r4, r0]
003974a0  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
003974a4  98 c0 a0 e3                                      mov ip, #0x98
003974a8  01 10 8f e0                                      add r1, pc, r1
003974ac  02 20 8f e0                                      add r2, pc, r2
003974b0  03 30 8f e0                                      add r3, pc, r3
003974b4  a8 00 80 e2                                      add r0, r0, #0xa8
003974b8  00 c0 8d e5                                      str ip, [sp]
003974bc  d0 da fd eb                                      bl #0x30e004
003974c0  0c ff ff ea                                      b #0x3970f8
003974c4  08 00 95 e5                                      ldr r0, [r5, #8]
003974c8  d3 db 05 eb                                      bl #0x50e41c
003974cc  58 30 9d e5                                      ldr r3, [sp, #0x58]
003974d0  08 10 a0 e1                                      mov r1, r8
003974d4  00 30 93 e5                                      ldr r3, [r3]
003974d8  03 00 a0 e1                                      mov r0, r3
003974dc  00 30 93 e5                                      ldr r3, [r3]
003974e0  0f e0 a0 e1                                      mov lr, pc
003974e4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003974e8  58 00 9d e5                                      ldr r0, [sp, #0x58]
003974ec  b8 ff ff ea                                      b #0x3973d4
003974f0  07 00 a0 e1                                      mov r0, r7
003974f4  38 11 95 e5                                      ldr r1, [r5, #0x138]
003974f8  2b dd fd eb                                      bl #0x30e9ac
003974fc  00 00 50 e3                                      cmp r0, #0
00397500  d8 ff ff 0a                                      beq #0x397468
00397504  64 71 96 e5                                      ldr r7, [r6, #0x164]
00397508  30 01 95 e5                                      ldr r0, [r5, #0x130]
0039750c  07 10 a0 e1                                      mov r1, r7
00397510  25 dd fd eb                                      bl #0x30e9ac
00397514  00 00 50 e3                                      cmp r0, #0
00397518  d2 ff ff 0a                                      beq #0x397468
0039751c  07 00 a0 e1                                      mov r0, r7
00397520  3c 11 95 e5                                      ldr r1, [r5, #0x13c]
00397524  20 dd fd eb                                      bl #0x30e9ac
00397528  00 00 50 e3                                      cmp r0, #0
0039752c  cd ff ff 0a                                      beq #0x397468
00397530  68 61 96 e5                                      ldr r6, [r6, #0x168]
00397534  34 01 95 e5                                      ldr r0, [r5, #0x134]
00397538  06 10 a0 e1                                      mov r1, r6
0039753c  1a dd fd eb                                      bl #0x30e9ac
00397540  00 00 50 e3                                      cmp r0, #0
00397544  c7 ff ff 0a                                      beq #0x397468
00397548  06 00 a0 e1                                      mov r0, r6
0039754c  40 11 95 e5                                      ldr r1, [r5, #0x140]
00397550  15 dd fd eb                                      bl #0x30e9ac
00397554  00 00 50 e3                                      cmp r0, #0
00397558  01 80 a0 13                                      movne r8, #1
0039755c  78 80 ef e6                                      uxtb r8, r8
00397560  7b ff ff ea                                      b #0x397354
00397564  69 db fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00397568  b8 d9 5f 00 ac 40 00 00 40 43 00 00 f4 37 00 00  .byte 0xb8, 0xd9, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0x43, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
00397578  84 08 00 00 58 b7 52 00 c0 39 00 00 c0 19 00 00  .byte 0x84, 0x08, 0x00, 0x00, 0x58, 0xb7, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00397588  30 6f 52 00 ec ae 52 00 38 b5 52 00              .byte 0x30, 0x6f, 0x52, 0x00, 0xec, 0xae, 0x52, 0x00, 0x38, 0xb5, 0x52, 0x00

; FUNCTION 0x00397594, declared_size=392, range_size=392, mode=arm
; class-group: Zone
; alias: _ZN4Zone19InitWithBoundingBoxERKN6glitch4core8aabbox3dIfEE
; demangled: Zone::InitWithBoundingBox(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
00397594  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00397598  01 80 a0 e1                                      mov r8, r1
0039759c  34 d0 4d e2                                      sub sp, sp, #0x34
003975a0  04 10 91 e5                                      ldr r1, [r1, #4]
003975a4  00 40 a0 e1                                      mov r4, r0
003975a8  10 00 98 e5                                      ldr r0, [r8, #0x10]
003975ac  7e db fd eb                                      bl #0x30e3ac
003975b0  08 10 98 e5                                      ldr r1, [r8, #8]
003975b4  00 60 a0 e1                                      mov r6, r0
003975b8  14 00 98 e5                                      ldr r0, [r8, #0x14]
003975bc  7a db fd eb                                      bl #0x30e3ac
003975c0  00 10 98 e5                                      ldr r1, [r8]
003975c4  00 50 a0 e1                                      mov r5, r0
003975c8  0c 00 98 e5                                      ldr r0, [r8, #0xc]
003975cc  76 db fd eb                                      bl #0x30e3ac
003975d0  78 63 84 e5                                      str r6, [r4, #0x378]
003975d4  7c 53 84 e5                                      str r5, [r4, #0x37c]
003975d8  74 03 84 e5                                      str r0, [r4, #0x374]
003975dc  00 30 98 e5                                      ldr r3, [r8]
003975e0  28 51 9f e5                                      ldr r5, [pc, #0x128]
003975e4  44 31 84 e5                                      str r3, [r4, #0x144]
003975e8  04 30 98 e5                                      ldr r3, [r8, #4]
003975ec  05 50 8f e0                                      add r5, pc, r5
003975f0  48 31 84 e5                                      str r3, [r4, #0x148]
003975f4  08 30 98 e5                                      ldr r3, [r8, #8]
003975f8  4c 31 84 e5                                      str r3, [r4, #0x14c]
003975fc  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00397600  50 31 84 e5                                      str r3, [r4, #0x150]
00397604  10 30 98 e5                                      ldr r3, [r8, #0x10]
00397608  54 31 84 e5                                      str r3, [r4, #0x154]
0039760c  14 30 98 e5                                      ldr r3, [r8, #0x14]
00397610  58 31 84 e5                                      str r3, [r4, #0x158]
00397614  10 10 98 e5                                      ldr r1, [r8, #0x10]
00397618  04 00 98 e5                                      ldr r0, [r8, #4]
0039761c  60 dd fd eb                                      bl #0x30eba4
00397620  3f 14 a0 e3                                      mov r1, #0x3f000000
00397624  d0 dd fd eb                                      bl #0x30ed6c
00397628  14 10 98 e5                                      ldr r1, [r8, #0x14]
0039762c  00 70 a0 e1                                      mov r7, r0
00397630  08 00 98 e5                                      ldr r0, [r8, #8]
00397634  5a dd fd eb                                      bl #0x30eba4
00397638  3f 14 a0 e3                                      mov r1, #0x3f000000
0039763c  ca dd fd eb                                      bl #0x30ed6c
00397640  0c 10 98 e5                                      ldr r1, [r8, #0xc]
00397644  00 60 a0 e1                                      mov r6, r0
00397648  00 00 98 e5                                      ldr r0, [r8]
0039764c  54 dd fd eb                                      bl #0x30eba4
00397650  3f 14 a0 e3                                      mov r1, #0x3f000000
00397654  c4 dd fd eb                                      bl #0x30ed6c
00397658  24 10 8d e2                                      add r1, sp, #0x24
0039765c  24 00 8d e5                                      str r0, [sp, #0x24]
00397660  01 20 a0 e3                                      mov r2, #1
00397664  04 00 a0 e1                                      mov r0, r4
00397668  28 70 8d e5                                      str r7, [sp, #0x28]
0039766c  2c 60 8d e5                                      str r6, [sp, #0x2c]
00397670  cf f1 ff eb                                      bl #0x393db4
00397674  80 33 d4 e5                                      ldrb r3, [r4, #0x380]
00397678  00 00 53 e3                                      cmp r3, #0
0039767c  21 00 00 0a                                      beq #0x397708
00397680  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00397684  00 10 a0 e3                                      mov r1, #0
00397688  28 00 a0 e3                                      mov r0, #0x28
0039768c  03 30 95 e7                                      ldr r3, [r5, r3]
00397690  01 60 a0 e1                                      mov r6, r1
00397694  44 a0 93 e5                                      ldr sl, [r3, #0x44]
00397698  b4 e3 fd eb                                      bl #0x310570
0039769c  81 83 d4 e5                                      ldrb r8, [r4, #0x381]
003976a0  01 c0 a0 e3                                      mov ip, #1
003976a4  1e 35 00 e3                                      movw r3, #0x51e
003976a8  06 00 58 e1                                      cmp r8, r6
003976ac  04 e0 e0 e3                                      mvn lr, #4
003976b0  03 80 a0 01                                      moveq r8, r3
003976b4  04 80 a0 13                                      movne r8, #4
003976b8  0a 10 a0 e1                                      mov r1, sl
003976bc  0c 30 a0 e1                                      mov r3, ip
003976c0  04 20 a0 e1                                      mov r2, r4
003976c4  0c e0 8d e5                                      str lr, [sp, #0xc]
003976c8  02 eb a0 e3                                      mov lr, #0x800
003976cc  00 70 a0 e1                                      mov r7, r0
003976d0  10 e0 8d e5                                      str lr, [sp, #0x10]
003976d4  14 80 8d e5                                      str r8, [sp, #0x14]
003976d8  40 10 8d e8                                      stm sp, {r6, ip}
003976dc  08 60 8d e5                                      str r6, [sp, #8]
003976e0  18 60 8d e5                                      str r6, [sp, #0x18]
003976e4  01 5f 03 eb                                      bl #0x46f2f0
003976e8  28 30 9f e5                                      ldr r3, [pc, #0x28]
003976ec  04 00 a0 e1                                      mov r0, r4
003976f0  07 10 a0 e1                                      mov r1, r7
003976f4  03 30 95 e7                                      ldr r3, [r5, r3]
003976f8  06 20 a0 e1                                      mov r2, r6
003976fc  08 30 83 e2                                      add r3, r3, #8
00397700  00 30 87 e5                                      str r3, [r7]
00397704  3b f5 ff eb                                      bl #0x394bf8
00397708  34 d0 8d e2                                      add sp, sp, #0x34
0039770c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00397710  a4 d4 5f 00 f4 37 00 00 80 36 00 00              .byte 0xa4, 0xd4, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x80, 0x36, 0x00, 0x00

; FUNCTION 0x0039771c, declared_size=1044, range_size=1044, mode=arm
; class-group: Zone
; alias: _ZN4Zone8InitPostEv
; demangled: Zone::InitPost()
; decoder-mode: arm
0039771c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00397720  5c d0 4d e2                                      sub sp, sp, #0x5c
00397724  00 40 a0 e1                                      mov r4, r0
00397728  8d d1 ff eb                                      bl #0x38bd64
0039772c  74 32 94 e5                                      ldr r3, [r4, #0x274]
00397730  d4 53 9f e5                                      ldr r5, [pc, #0x3d4]
00397734  03 00 50 e1                                      cmp r0, r3
00397738  05 50 8f e0                                      add r5, pc, r5
0039773c  01 00 00 ba                                      blt #0x397748
00397740  5c d0 8d e2                                      add sp, sp, #0x5c
00397744  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00397748  04 00 a0 e1                                      mov r0, r4
0039774c  c2 d1 ff eb                                      bl #0x38be5c
00397750  74 03 94 e5                                      ldr r0, [r4, #0x374]
00397754  20 11 94 e5                                      ldr r1, [r4, #0x120]
00397758  83 dd fd eb                                      bl #0x30ed6c
0039775c  24 11 94 e5                                      ldr r1, [r4, #0x124]
00397760  00 80 a0 e1                                      mov r8, r0
00397764  74 03 84 e5                                      str r0, [r4, #0x374]
00397768  78 03 94 e5                                      ldr r0, [r4, #0x378]
0039776c  7e dd fd eb                                      bl #0x30ed6c
00397770  28 11 94 e5                                      ldr r1, [r4, #0x128]
00397774  00 70 a0 e1                                      mov r7, r0
00397778  78 03 84 e5                                      str r0, [r4, #0x378]
0039777c  7c 03 94 e5                                      ldr r0, [r4, #0x37c]
00397780  79 dd fd eb                                      bl #0x30ed6c
00397784  3f 14 a0 e3                                      mov r1, #0x3f000000
00397788  00 60 a0 e1                                      mov r6, r0
0039778c  7c 03 84 e5                                      str r0, [r4, #0x37c]
00397790  08 00 a0 e1                                      mov r0, r8
00397794  74 dd fd eb                                      bl #0x30ed6c
00397798  02 31 80 e2                                      add r3, r0, #0x80000000
0039779c  44 31 84 e5                                      str r3, [r4, #0x144]
003977a0  50 01 84 e5                                      str r0, [r4, #0x150]
003977a4  3f 14 a0 e3                                      mov r1, #0x3f000000
003977a8  07 00 a0 e1                                      mov r0, r7
003977ac  6e dd fd eb                                      bl #0x30ed6c
003977b0  02 31 80 e2                                      add r3, r0, #0x80000000
003977b4  48 31 84 e5                                      str r3, [r4, #0x148]
003977b8  54 01 84 e5                                      str r0, [r4, #0x154]
003977bc  3f 14 a0 e3                                      mov r1, #0x3f000000
003977c0  06 00 a0 e1                                      mov r0, r6
003977c4  68 dd fd eb                                      bl #0x30ed6c
003977c8  02 31 80 e2                                      add r3, r0, #0x80000000
003977cc  58 01 84 e5                                      str r0, [r4, #0x158]
003977d0  4c 31 84 e5                                      str r3, [r4, #0x14c]
003977d4  04 10 a0 e1                                      mov r1, r4
003977d8  44 31 91 e4                                      ldr r3, [r1], #0x144
003977dc  04 00 a0 e1                                      mov r0, r4
003977e0  00 20 a0 e3                                      mov r2, #0
003977e4  0f e0 a0 e1                                      mov lr, pc
003977e8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
003977ec  80 33 d4 e5                                      ldrb r3, [r4, #0x380]
003977f0  00 00 53 e3                                      cmp r3, #0
003977f4  30 00 00 1a                                      bne #0x3978bc
003977f8  84 63 94 e5                                      ldr r6, [r4, #0x384]
003977fc  00 00 56 e3                                      cmp r6, #0
00397800  ce ff ff 1a                                      bne #0x397740
00397804  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00397808  00 00 50 e3                                      cmp r0, #0
0039780c  cb ff ff 0a                                      beq #0x397740
00397810  f8 12 9f e5                                      ldr r1, [pc, #0x2f8]
00397814  01 10 8f e0                                      add r1, pc, r1
00397818  7e 64 03 eb                                      bl #0x470a18
0039781c  00 00 50 e3                                      cmp r0, #0
00397820  84 03 84 e5                                      str r0, [r4, #0x384]
00397824  c5 ff ff 0a                                      beq #0x397740
00397828  00 20 90 e5                                      ldr r2, [r0]
0039782c  e0 12 9f e5                                      ldr r1, [pc, #0x2e0]
00397830  64 31 06 e3                                      movw r3, #0x6164
00397834  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00397838  01 10 95 e7                                      ldr r1, [r5, r1]
0039783c  65 3d 46 e3                                      movt r3, #0x6d65
00397840  02 00 80 e0                                      add r0, r0, r2
00397844  04 c0 90 e5                                      ldr ip, [r0, #4]
00397848  44 20 8d e2                                      add r2, sp, #0x44
0039784c  01 c0 8c e2                                      add ip, ip, #1
00397850  04 c0 80 e5                                      str ip, [r0, #4]
00397854  10 00 91 e5                                      ldr r0, [r1, #0x10]
00397858  84 13 94 e5                                      ldr r1, [r4, #0x384]
0039785c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00397860  44 60 8d e5                                      str r6, [sp, #0x44]
00397864  48 60 8d e5                                      str r6, [sp, #0x48]
00397868  4c 60 8d e5                                      str r6, [sp, #0x4c]
0039786c  7a e5 fe eb                                      bl #0x350e5c
00397870  44 00 9d e5                                      ldr r0, [sp, #0x44]
00397874  48 30 9d e5                                      ldr r3, [sp, #0x48]
00397878  00 20 a0 e1                                      mov r2, r0
0039787c  03 30 60 e0                                      rsb r3, r0, r3
00397880  43 31 a0 e1                                      asr r3, r3, #2
00397884  01 00 53 e3                                      cmp r3, #1
00397888  41 00 00 0a                                      beq #0x397994
0039788c  84 32 9f e5                                      ldr r3, [pc, #0x284]
00397890  03 30 95 e7                                      ldr r3, [r5, r3]
00397894  00 30 93 e5                                      ldr r3, [r3]
00397898  02 00 53 e3                                      cmp r3, #2
0039789c  00 60 86 05                                      streq r6, [r6]
003978a0  01 00 00 0a                                      beq #0x3978ac
003978a4  01 00 53 e3                                      cmp r3, #1
003978a8  26 00 00 0a                                      beq #0x397948
003978ac  00 00 50 e3                                      cmp r0, #0
003978b0  a2 ff ff 0a                                      beq #0x397740
003978b4  e5 e2 fd eb                                      bl #0x310450
003978b8  a0 ff ff ea                                      b #0x397740
003978bc  50 32 9f e5                                      ldr r3, [pc, #0x250]
003978c0  00 10 a0 e3                                      mov r1, #0
003978c4  28 00 a0 e3                                      mov r0, #0x28
003978c8  03 30 95 e7                                      ldr r3, [r5, r3]
003978cc  01 60 a0 e1                                      mov r6, r1
003978d0  44 a0 93 e5                                      ldr sl, [r3, #0x44]
003978d4  25 e3 fd eb                                      bl #0x310570
003978d8  81 83 d4 e5                                      ldrb r8, [r4, #0x381]
003978dc  01 c0 a0 e3                                      mov ip, #1
003978e0  1e 35 00 e3                                      movw r3, #0x51e
003978e4  06 00 58 e1                                      cmp r8, r6
003978e8  04 e0 e0 e3                                      mvn lr, #4
003978ec  03 80 a0 01                                      moveq r8, r3
003978f0  04 80 a0 13                                      movne r8, #4
003978f4  0a 10 a0 e1                                      mov r1, sl
003978f8  0c 30 a0 e1                                      mov r3, ip
003978fc  04 20 a0 e1                                      mov r2, r4
00397900  0c e0 8d e5                                      str lr, [sp, #0xc]
00397904  02 eb a0 e3                                      mov lr, #0x800
00397908  00 70 a0 e1                                      mov r7, r0
0039790c  10 e0 8d e5                                      str lr, [sp, #0x10]
00397910  14 80 8d e5                                      str r8, [sp, #0x14]
00397914  40 10 8d e8                                      stm sp, {r6, ip}
00397918  08 60 8d e5                                      str r6, [sp, #8]
0039791c  18 60 8d e5                                      str r6, [sp, #0x18]
00397920  72 5e 03 eb                                      bl #0x46f2f0
00397924  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
00397928  07 10 a0 e1                                      mov r1, r7
0039792c  06 20 a0 e1                                      mov r2, r6
00397930  03 30 95 e7                                      ldr r3, [r5, r3]
00397934  04 00 a0 e1                                      mov r0, r4
00397938  08 30 83 e2                                      add r3, r3, #8
0039793c  00 30 87 e5                                      str r3, [r7]
00397940  ac f4 ff eb                                      bl #0x394bf8
00397944  ab ff ff ea                                      b #0x3977f8
00397948  d0 01 9f e5                                      ldr r0, [pc, #0x1d0]
0039794c  d0 11 9f e5                                      ldr r1, [pc, #0x1d0]
00397950  d0 21 9f e5                                      ldr r2, [pc, #0x1d0]
00397954  00 00 95 e7                                      ldr r0, [r5, r0]
00397958  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
0039795c  02 20 8f e0                                      add r2, pc, r2
00397960  60 c0 a0 e3                                      mov ip, #0x60
00397964  03 30 8f e0                                      add r3, pc, r3
00397968  01 10 8f e0                                      add r1, pc, r1
0039796c  a8 00 80 e2                                      add r0, r0, #0xa8
00397970  00 c0 8d e5                                      str ip, [sp]
00397974  a2 d9 fd eb                                      bl #0x30e004
00397978  44 20 9d e5                                      ldr r2, [sp, #0x44]
0039797c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00397980  02 00 a0 e1                                      mov r0, r2
00397984  03 30 62 e0                                      rsb r3, r2, r3
00397988  43 31 a0 e1                                      asr r3, r3, #2
0039798c  01 00 53 e3                                      cmp r3, #1
00397990  c5 ff ff 1a                                      bne #0x3978ac
00397994  00 50 92 e5                                      ldr r5, [r2]
00397998  00 00 55 e3                                      cmp r5, #0
0039799c  02 00 a0 01                                      moveq r0, r2
003979a0  c1 ff ff 0a                                      beq #0x3978ac
003979a4  68 21 94 e5                                      ldr r2, [r4, #0x168]
003979a8  00 30 95 e5                                      ldr r3, [r5]
003979ac  60 81 94 e5                                      ldr r8, [r4, #0x160]
003979b0  64 61 94 e5                                      ldr r6, [r4, #0x164]
003979b4  05 00 a0 e1                                      mov r0, r5
003979b8  24 20 8d e5                                      str r2, [sp, #0x24]
003979bc  0f e0 a0 e1                                      mov lr, pc
003979c0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
003979c4  00 10 90 e5                                      ldr r1, [r0]
003979c8  00 30 a0 e1                                      mov r3, r0
003979cc  08 00 a0 e1                                      mov r0, r8
003979d0  2c 10 8d e5                                      str r1, [sp, #0x2c]
003979d4  04 b0 93 e5                                      ldr fp, [r3, #4]
003979d8  30 b0 8d e5                                      str fp, [sp, #0x30]
003979dc  08 90 93 e5                                      ldr sb, [r3, #8]
003979e0  34 90 8d e5                                      str sb, [sp, #0x34]
003979e4  0c a0 93 e5                                      ldr sl, [r3, #0xc]
003979e8  38 a0 8d e5                                      str sl, [sp, #0x38]
003979ec  10 70 93 e5                                      ldr r7, [r3, #0x10]
003979f0  3c 70 8d e5                                      str r7, [sp, #0x3c]
003979f4  14 30 93 e5                                      ldr r3, [r3, #0x14]
003979f8  20 30 8d e5                                      str r3, [sp, #0x20]
003979fc  68 dc fd eb                                      bl #0x30eba4
00397a00  0b 10 a0 e1                                      mov r1, fp
00397a04  2c 00 8d e5                                      str r0, [sp, #0x2c]
00397a08  06 00 a0 e1                                      mov r0, r6
00397a0c  64 dc fd eb                                      bl #0x30eba4
00397a10  09 10 a0 e1                                      mov r1, sb
00397a14  30 00 8d e5                                      str r0, [sp, #0x30]
00397a18  24 00 9d e5                                      ldr r0, [sp, #0x24]
00397a1c  60 dc fd eb                                      bl #0x30eba4
00397a20  0a 10 a0 e1                                      mov r1, sl
00397a24  34 00 8d e5                                      str r0, [sp, #0x34]
00397a28  08 00 a0 e1                                      mov r0, r8
00397a2c  5c dc fd eb                                      bl #0x30eba4
00397a30  07 10 a0 e1                                      mov r1, r7
00397a34  38 00 8d e5                                      str r0, [sp, #0x38]
00397a38  06 00 a0 e1                                      mov r0, r6
00397a3c  58 dc fd eb                                      bl #0x30eba4
00397a40  20 30 9d e5                                      ldr r3, [sp, #0x20]
00397a44  3c 00 8d e5                                      str r0, [sp, #0x3c]
00397a48  24 00 9d e5                                      ldr r0, [sp, #0x24]
00397a4c  03 10 a0 e1                                      mov r1, r3
00397a50  53 dc fd eb                                      bl #0x30eba4
00397a54  2c 10 8d e2                                      add r1, sp, #0x2c
00397a58  40 00 8d e5                                      str r0, [sp, #0x40]
00397a5c  04 00 a0 e1                                      mov r0, r4
00397a60  cb fe ff eb                                      bl #0x397594
00397a64  05 00 a0 e1                                      mov r0, r5
00397a68  00 30 95 e5                                      ldr r3, [r5]
00397a6c  00 10 a0 e3                                      mov r1, #0
00397a70  0f e0 a0 e1                                      mov lr, pc
00397a74  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00397a78  05 10 a0 e1                                      mov r1, r5
00397a7c  00 30 95 e5                                      ldr r3, [r5]
00397a80  54 00 8d e2                                      add r0, sp, #0x54
00397a84  0f e0 a0 e1                                      mov lr, pc
00397a88  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
00397a8c  54 30 9d e5                                      ldr r3, [sp, #0x54]
00397a90  00 10 a0 e3                                      mov r1, #0
00397a94  ac 00 a0 e3                                      mov r0, #0xac
00397a98  00 00 53 e3                                      cmp r3, #0
00397a9c  50 30 8d e5                                      str r3, [sp, #0x50]
00397aa0  04 20 93 15                                      ldrne r2, [r3, #4]
00397aa4  01 20 82 12                                      addne r2, r2, #1
00397aa8  04 20 83 15                                      strne r2, [r3, #4]
00397aac  be 71 06 eb                                      bl #0x5341ac
00397ab0  50 10 8d e2                                      add r1, sp, #0x50
00397ab4  00 20 a0 e3                                      mov r2, #0
00397ab8  01 30 a0 e3                                      mov r3, #1
00397abc  00 50 a0 e1                                      mov r5, r0
00397ac0  00 f9 07 eb                                      bl #0x595ec8
00397ac4  50 00 9d e5                                      ldr r0, [sp, #0x50]
00397ac8  00 00 50 e3                                      cmp r0, #0
00397acc  00 00 00 0a                                      beq #0x397ad4
00397ad0  ab 16 fe eb                                      bl #0x31d584
00397ad4  54 00 9d e5                                      ldr r0, [sp, #0x54]
00397ad8  00 00 50 e3                                      cmp r0, #0
00397adc  00 00 00 0a                                      beq #0x397ae4
00397ae0  a7 16 fe eb                                      bl #0x31d584
00397ae4  84 33 94 e5                                      ldr r3, [r4, #0x384]
00397ae8  05 10 a0 e1                                      mov r1, r5
00397aec  03 00 a0 e1                                      mov r0, r3
00397af0  00 30 93 e5                                      ldr r3, [r3]
00397af4  0f e0 a0 e1                                      mov lr, pc
00397af8  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
00397afc  05 00 a0 e1                                      mov r0, r5
00397b00  9f 16 fe eb                                      bl #0x31d584
00397b04  44 00 9d e5                                      ldr r0, [sp, #0x44]
00397b08  67 ff ff ea                                      b #0x3978ac
; mapping-symbol data/literal pool
00397b0c  58 d3 5f 00 3c b2 52 00 f4 37 00 00 c0 39 00 00  .byte 0x58, 0xd3, 0x5f, 0x00, 0x3c, 0xb2, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00397b1c  80 36 00 00 c0 19 00 00 70 6a 52 00 04 b1 52 00  .byte 0x80, 0x36, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x70, 0x6a, 0x52, 0x00, 0x04, 0xb1, 0x52, 0x00
00397b2c  84 b0 52 00                                      .byte 0x84, 0xb0, 0x52, 0x00

; FUNCTION 0x00397b30, declared_size=8, range_size=8, mode=arm
; class-group: Zone
; alias: _ZThn36_N4ZoneD1Ev
; demangled: non-virtual thunk to Zone::~Zone()
; decoder-mode: arm
00397b30  24 00 40 e2                                      sub r0, r0, #0x24
00397b34  ff ff ff ea                                      b #0x397b38

; FUNCTION 0x00397b38, declared_size=104, range_size=104, mode=arm
; class-group: Zone
; alias: _ZN4ZoneD1Ev
; demangled: Zone::~Zone()
; decoder-mode: arm
00397b38  10 40 2d e9                                      push {r4, lr}
00397b3c  54 20 9f e5                                      ldr r2, [pc, #0x54]
00397b40  54 30 9f e5                                      ldr r3, [pc, #0x54]
00397b44  84 13 90 e5                                      ldr r1, [r0, #0x384]
00397b48  02 20 8f e0                                      add r2, pc, r2
00397b4c  03 30 92 e7                                      ldr r3, [r2, r3]
00397b50  00 40 a0 e1                                      mov r4, r0
00397b54  00 00 51 e3                                      cmp r1, #0
00397b58  f4 20 83 e2                                      add r2, r3, #0xf4
00397b5c  08 00 83 e2                                      add r0, r3, #8
00397b60  e8 30 83 e2                                      add r3, r3, #0xe8
00397b64  09 00 84 e8                                      stm r4, {r0, r3}
00397b68  24 20 84 e5                                      str r2, [r4, #0x24]
00397b6c  05 00 00 0a                                      beq #0x397b88
00397b70  00 30 91 e5                                      ldr r3, [r1]
00397b74  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00397b78  00 00 81 e0                                      add r0, r1, r0
00397b7c  80 16 fe eb                                      bl #0x31d584
00397b80  00 30 a0 e3                                      mov r3, #0
00397b84  84 33 84 e5                                      str r3, [r4, #0x384]
00397b88  04 00 a0 e1                                      mov r0, r4
00397b8c  f9 d5 ff eb                                      bl #0x38d378
00397b90  04 00 a0 e1                                      mov r0, r4
00397b94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00397b98  48 cf 5f 00 34 0d 00 00                          .byte 0x48, 0xcf, 0x5f, 0x00, 0x34, 0x0d, 0x00, 0x00

; FUNCTION 0x00397ba0, declared_size=8, range_size=8, mode=arm
; class-group: Zone
; alias: _ZThn36_N4ZoneD0Ev
; demangled: non-virtual thunk to Zone::~Zone()
; decoder-mode: arm
00397ba0  24 00 40 e2                                      sub r0, r0, #0x24
00397ba4  ff ff ff ea                                      b #0x397ba8

; FUNCTION 0x00397ba8, declared_size=28, range_size=28, mode=arm
; class-group: Zone
; alias: _ZN4ZoneD0Ev
; demangled: Zone::~Zone()
; decoder-mode: arm
00397ba8  10 40 2d e9                                      push {r4, lr}
00397bac  00 40 a0 e1                                      mov r4, r0
00397bb0  e0 ff ff eb                                      bl #0x397b38
00397bb4  04 00 a0 e1                                      mov r0, r4
00397bb8  20 e2 fd eb                                      bl #0x310440
00397bbc  04 00 a0 e1                                      mov r0, r4
00397bc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00397bc4, declared_size=104, range_size=104, mode=arm
; class-group: Zone
; alias: _ZN4ZoneD2Ev
; demangled: Zone::~Zone()
; decoder-mode: arm
00397bc4  10 40 2d e9                                      push {r4, lr}
00397bc8  54 20 9f e5                                      ldr r2, [pc, #0x54]
00397bcc  54 30 9f e5                                      ldr r3, [pc, #0x54]
00397bd0  84 13 90 e5                                      ldr r1, [r0, #0x384]
00397bd4  02 20 8f e0                                      add r2, pc, r2
00397bd8  03 30 92 e7                                      ldr r3, [r2, r3]
00397bdc  00 40 a0 e1                                      mov r4, r0
00397be0  00 00 51 e3                                      cmp r1, #0
00397be4  f4 20 83 e2                                      add r2, r3, #0xf4
00397be8  08 00 83 e2                                      add r0, r3, #8
00397bec  e8 30 83 e2                                      add r3, r3, #0xe8
00397bf0  09 00 84 e8                                      stm r4, {r0, r3}
00397bf4  24 20 84 e5                                      str r2, [r4, #0x24]
00397bf8  05 00 00 0a                                      beq #0x397c14
00397bfc  00 30 91 e5                                      ldr r3, [r1]
00397c00  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00397c04  00 00 81 e0                                      add r0, r1, r0
00397c08  5d 16 fe eb                                      bl #0x31d584
00397c0c  00 30 a0 e3                                      mov r3, #0
00397c10  84 33 84 e5                                      str r3, [r4, #0x384]
00397c14  04 00 a0 e1                                      mov r0, r4
00397c18  d6 d5 ff eb                                      bl #0x38d378
00397c1c  04 00 a0 e1                                      mov r0, r4
00397c20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00397c24  bc ce 5f 00 34 0d 00 00                          .byte 0xbc, 0xce, 0x5f, 0x00, 0x34, 0x0d, 0x00, 0x00

; FUNCTION 0x00397c2c, declared_size=116, range_size=116, mode=arm
; class-group: Zone
; alias: _ZN4ZoneC1EN10ObjectBase6GO_IDSEbb
; demangled: Zone::Zone(ObjectBase::GO_IDS, bool, bool)
; decoder-mode: arm
00397c2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00397c30  60 40 9f e5                                      ldr r4, [pc, #0x60]
00397c34  00 60 a0 e1                                      mov r6, r0
00397c38  02 50 a0 e1                                      mov r5, r2
00397c3c  03 70 a0 e1                                      mov r7, r3
00397c40  d4 d1 ff eb                                      bl #0x38c398
00397c44  50 30 9f e5                                      ldr r3, [pc, #0x50]
00397c48  04 40 8f e0                                      add r4, pc, r4
00397c4c  00 20 a0 e3                                      mov r2, #0
00397c50  03 30 94 e7                                      ldr r3, [r4, r3]
00397c54  7c 23 86 e5                                      str r2, [r6, #0x37c]
00397c58  80 53 c6 e5                                      strb r5, [r6, #0x380]
00397c5c  f4 10 83 e2                                      add r1, r3, #0xf4
00397c60  08 00 83 e2                                      add r0, r3, #8
00397c64  e8 30 83 e2                                      add r3, r3, #0xe8
00397c68  04 30 86 e5                                      str r3, [r6, #4]
00397c6c  00 30 a0 e3                                      mov r3, #0
00397c70  84 33 86 e5                                      str r3, [r6, #0x384]
00397c74  01 30 a0 e3                                      mov r3, #1
00397c78  00 00 86 e5                                      str r0, [r6]
00397c7c  24 10 86 e5                                      str r1, [r6, #0x24]
00397c80  81 73 c6 e5                                      strb r7, [r6, #0x381]
00397c84  84 30 c6 e5                                      strb r3, [r6, #0x84]
00397c88  74 23 86 e5                                      str r2, [r6, #0x374]
00397c8c  78 23 86 e5                                      str r2, [r6, #0x378]
00397c90  06 00 a0 e1                                      mov r0, r6
00397c94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00397c98  48 ce 5f 00 34 0d 00 00                          .byte 0x48, 0xce, 0x5f, 0x00, 0x34, 0x0d, 0x00, 0x00

; FUNCTION 0x00397ca0, declared_size=116, range_size=116, mode=arm
; class-group: Zone
; alias: _ZN4ZoneC2EN10ObjectBase6GO_IDSEbb
; demangled: Zone::Zone(ObjectBase::GO_IDS, bool, bool)
; decoder-mode: arm
00397ca0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00397ca4  60 40 9f e5                                      ldr r4, [pc, #0x60]
00397ca8  00 60 a0 e1                                      mov r6, r0
00397cac  02 50 a0 e1                                      mov r5, r2
00397cb0  03 70 a0 e1                                      mov r7, r3
00397cb4  b7 d1 ff eb                                      bl #0x38c398
00397cb8  50 30 9f e5                                      ldr r3, [pc, #0x50]
00397cbc  04 40 8f e0                                      add r4, pc, r4
00397cc0  00 20 a0 e3                                      mov r2, #0
00397cc4  03 30 94 e7                                      ldr r3, [r4, r3]
00397cc8  7c 23 86 e5                                      str r2, [r6, #0x37c]
00397ccc  80 53 c6 e5                                      strb r5, [r6, #0x380]
00397cd0  f4 10 83 e2                                      add r1, r3, #0xf4
00397cd4  08 00 83 e2                                      add r0, r3, #8
00397cd8  e8 30 83 e2                                      add r3, r3, #0xe8
00397cdc  04 30 86 e5                                      str r3, [r6, #4]
00397ce0  00 30 a0 e3                                      mov r3, #0
00397ce4  84 33 86 e5                                      str r3, [r6, #0x384]
00397ce8  01 30 a0 e3                                      mov r3, #1
00397cec  00 00 86 e5                                      str r0, [r6]
00397cf0  24 10 86 e5                                      str r1, [r6, #0x24]
00397cf4  81 73 c6 e5                                      strb r7, [r6, #0x381]
00397cf8  84 30 c6 e5                                      strb r3, [r6, #0x84]
00397cfc  74 23 86 e5                                      str r2, [r6, #0x374]
00397d00  78 23 86 e5                                      str r2, [r6, #0x378]
00397d04  06 00 a0 e1                                      mov r0, r6
00397d08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00397d0c  d4 cd 5f 00 34 0d 00 00                          .byte 0xd4, 0xcd, 0x5f, 0x00, 0x34, 0x0d, 0x00, 0x00

; FUNCTION 0x00397df0, declared_size=8, range_size=8, mode=arm
; class-group: Zone
; alias: _ZThn4_N4Zone17DeclarePropertiesEv
; demangled: non-virtual thunk to Zone::DeclareProperties()
; decoder-mode: arm
00397df0  04 00 40 e2                                      sub r0, r0, #4
00397df4  ff ff ff ea                                      b #0x397df8

; FUNCTION 0x00397df8, declared_size=164, range_size=164, mode=arm
; class-group: Zone
; alias: _ZN4Zone17DeclarePropertiesEv
; demangled: Zone::DeclareProperties()
; decoder-mode: arm
00397df8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00397dfc  0c d0 4d e2                                      sub sp, sp, #0xc
00397e00  00 70 a0 e1                                      mov r7, r0
00397e04  37 d4 ff eb                                      bl #0x38cee8
00397e08  00 10 a0 e3                                      mov r1, #0
00397e0c  2c 00 a0 e3                                      mov r0, #0x2c
00397e10  d6 e1 fd eb                                      bl #0x310570
00397e14  70 50 9f e5                                      ldr r5, [pc, #0x70]
00397e18  70 30 9f e5                                      ldr r3, [pc, #0x70]
00397e1c  70 60 9f e5                                      ldr r6, [pc, #0x70]
00397e20  05 50 8f e0                                      add r5, pc, r5
00397e24  03 30 95 e7                                      ldr r3, [r5, r3]
00397e28  06 60 8f e0                                      add r6, pc, r6
00397e2c  00 40 a0 e1                                      mov r4, r0
00397e30  08 30 83 e2                                      add r3, r3, #8
00397e34  06 10 a0 e1                                      mov r1, r6
00397e38  04 20 8d e2                                      add r2, sp, #4
00397e3c  08 30 80 e4                                      str r3, [r0], #8
00397e40  a9 f0 fd eb                                      bl #0x3140ec
00397e44  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00397e48  dd 1f 87 e2                                      add r1, r7, #0x374
00397e4c  04 00 87 e2                                      add r0, r7, #4
00397e50  02 20 95 e7                                      ldr r2, [r5, r2]
00397e54  43 34 a0 e3                                      mov r3, #0x43000000
00397e58  12 37 83 e2                                      add r3, r3, #0x480000
00397e5c  01 10 60 e0                                      rsb r1, r0, r1
00397e60  08 20 82 e2                                      add r2, r2, #8
00397e64  04 10 84 e5                                      str r1, [r4, #4]
00397e68  00 20 84 e5                                      str r2, [r4]
00397e6c  28 30 84 e5                                      str r3, [r4, #0x28]
00397e70  20 30 84 e5                                      str r3, [r4, #0x20]
00397e74  24 30 84 e5                                      str r3, [r4, #0x24]
00397e78  06 10 a0 e1                                      mov r1, r6
00397e7c  04 20 a0 e1                                      mov r2, r4
00397e80  97 ef 05 eb                                      bl #0x513ce4
00397e84  0c d0 8d e2                                      add sp, sp, #0xc
00397e88  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00397e8c  70 cc 5f 00 30 23 00 00 b8 a4 52 00 44 0b 00 00  .byte 0x70, 0xcc, 0x5f, 0x00, 0x30, 0x23, 0x00, 0x00, 0xb8, 0xa4, 0x52, 0x00, 0x44, 0x0b, 0x00, 0x00
