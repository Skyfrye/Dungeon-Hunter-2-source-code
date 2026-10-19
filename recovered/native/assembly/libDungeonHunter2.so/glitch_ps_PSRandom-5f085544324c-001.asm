; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062fe78, declared_size=108, range_size=108, mode=arm
; class-group: glitch::ps::PSRandom
; alias: _ZN6glitch2ps8PSRandom4RandEv
; demangled: glitch::ps::PSRandom::Rand()
; decoder-mode: arm
0062fe78  10 40 2d e9                                      push {r4, lr}
0062fe7c  00 30 90 e5                                      ldr r3, [r0]
0062fe80  c9 29 08 e3                                      movw r2, #0x89c9
0062fe84  47 2e 45 e3                                      movt r2, #0x5e47
0062fe88  00 10 a0 e1                                      mov r1, r0
0062fe8c  92 03 c2 e0                                      smull r0, r2, r2, r3
0062fe90  c3 cf a0 e1                                      asr ip, r3, #0x1f
0062fe94  42 27 a0 e1                                      asr r2, r2, #0xe
0062fe98  02 00 6c e0                                      rsb r0, ip, r2
0062fe9c  c8 ed 0a e3                                      movw lr, #0xadc8
0062fea0  9e 30 63 e0                                      mls r3, lr, r0, r3
0062fea4  8f 0c 0b e3                                      movw r0, #0xbc8f
0062fea8  90 03 03 e0                                      mul r3, r0, r3
0062feac  0c 20 62 e0                                      rsb r2, r2, ip
0062feb0  47 0d 00 e3                                      movw r0, #0xd47
0062feb4  90 32 20 e0                                      mla r0, r0, r2, r3
0062feb8  00 00 50 e3                                      cmp r0, #0
0062febc  00 00 81 e5                                      str r0, [r1]
0062fec0  06 01 40 b2                                      sublt r0, r0, #0x80000001
0062fec4  00 00 81 b5                                      strlt r0, [r1]
0062fec8  98 7b f3 eb                                      bl #0x30ed30
0062fecc  02 21 a0 e3                                      mov r2, #0x80000000
0062fed0  be 34 e0 e3                                      mvn r3, #0xbe000000
0062fed4  c2 24 a0 e1                                      asr r2, r2, #9
0062fed8  02 36 43 e2                                      sub r3, r3, #0x200000
0062fedc  17 79 f3 eb                                      bl #0x30e340
0062fee0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00637ac4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::ps::PSRandom
; alias: _ZN6glitch2ps8PSRandom7RandVecEv
; demangled: glitch::ps::PSRandom::RandVec()
; decoder-mode: arm
00637ac4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00637ac8  00 40 a0 e1                                      mov r4, r0
00637acc  01 00 a0 e1                                      mov r0, r1
00637ad0  01 50 a0 e1                                      mov r5, r1
00637ad4  e7 e0 ff eb                                      bl #0x62fe78
00637ad8  00 a0 a0 e1                                      mov sl, r0
00637adc  05 00 a0 e1                                      mov r0, r5
00637ae0  01 b0 a0 e1                                      mov fp, r1
00637ae4  e3 e0 ff eb                                      bl #0x62fe78
00637ae8  00 80 a0 e1                                      mov r8, r0
00637aec  05 00 a0 e1                                      mov r0, r5
00637af0  01 90 a0 e1                                      mov sb, r1
00637af4  df e0 ff eb                                      bl #0x62fe78
00637af8  00 60 a0 e1                                      mov r6, r0
00637afc  01 70 a0 e1                                      mov r7, r1
00637b00  0a 00 a0 e1                                      mov r0, sl
00637b04  0b 10 a0 e1                                      mov r1, fp
00637b08  e4 5a f3 eb                                      bl #0x30e6a0
00637b0c  09 10 a0 e1                                      mov r1, sb
00637b10  00 00 84 e5                                      str r0, [r4]
00637b14  08 00 a0 e1                                      mov r0, r8
00637b18  e0 5a f3 eb                                      bl #0x30e6a0
00637b1c  07 10 a0 e1                                      mov r1, r7
00637b20  04 00 84 e5                                      str r0, [r4, #4]
00637b24  06 00 a0 e1                                      mov r0, r6
00637b28  dc 5a f3 eb                                      bl #0x30e6a0
00637b2c  08 00 84 e5                                      str r0, [r4, #8]
00637b30  04 00 a0 e1                                      mov r0, r4
00637b34  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0069c4ac, declared_size=208, range_size=208, mode=arm
; class-group: glitch::ps::PSRandom
; alias: _ZN6glitch2ps8PSRandom6NRandfEf
; demangled: glitch::ps::PSRandom::NRandf(float)
; decoder-mode: arm
0069c4ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0069c4b0  00 60 a0 e1                                      mov r6, r0
0069c4b4  01 80 a0 e1                                      mov r8, r1
0069c4b8  06 00 a0 e1                                      mov r0, r6
0069c4bc  6d 4e fe eb                                      bl #0x62fe78
0069c4c0  76 c8 f1 eb                                      bl #0x30e6a0
0069c4c4  00 10 a0 e1                                      mov r1, r0
0069c4c8  b5 c9 f1 eb                                      bl #0x30eba4
0069c4cc  fe 15 a0 e3                                      mov r1, #0x3f800000
0069c4d0  b5 c7 f1 eb                                      bl #0x30e3ac
0069c4d4  00 40 a0 e1                                      mov r4, r0
0069c4d8  06 00 a0 e1                                      mov r0, r6
0069c4dc  65 4e fe eb                                      bl #0x62fe78
0069c4e0  6e c8 f1 eb                                      bl #0x30e6a0
0069c4e4  00 10 a0 e1                                      mov r1, r0
0069c4e8  ad c9 f1 eb                                      bl #0x30eba4
0069c4ec  fe 15 a0 e3                                      mov r1, #0x3f800000
0069c4f0  ad c7 f1 eb                                      bl #0x30e3ac
0069c4f4  04 10 a0 e1                                      mov r1, r4
0069c4f8  00 70 a0 e1                                      mov r7, r0
0069c4fc  04 00 a0 e1                                      mov r0, r4
0069c500  19 ca f1 eb                                      bl #0x30ed6c
0069c504  07 10 a0 e1                                      mov r1, r7
0069c508  00 50 a0 e1                                      mov r5, r0
0069c50c  07 00 a0 e1                                      mov r0, r7
0069c510  15 ca f1 eb                                      bl #0x30ed6c
0069c514  00 10 a0 e1                                      mov r1, r0
0069c518  05 00 a0 e1                                      mov r0, r5
0069c51c  a0 c9 f1 eb                                      bl #0x30eba4
0069c520  fe 15 a0 e3                                      mov r1, #0x3f800000
0069c524  00 50 a0 e1                                      mov r5, r0
0069c528  72 c7 f1 eb                                      bl #0x30e2f8
0069c52c  00 00 50 e3                                      cmp r0, #0
0069c530  00 10 a0 e3                                      mov r1, #0
0069c534  05 00 a0 e1                                      mov r0, r5
0069c538  de ff ff 1a                                      bne #0x69c4b8
0069c53c  92 c6 f1 eb                                      bl #0x30df8c
0069c540  00 00 50 e3                                      cmp r0, #0
0069c544  db ff ff 1a                                      bne #0x69c4b8
0069c548  05 00 a0 e1                                      mov r0, r5
0069c54c  58 c6 f1 eb                                      bl #0x30deb4
0069c550  03 11 a0 e3                                      mov r1, #0xc0000000
0069c554  04 ca f1 eb                                      bl #0x30ed6c
0069c558  05 10 a0 e1                                      mov r1, r5
0069c55c  cc c9 f1 eb                                      bl #0x30ec94
0069c560  ef c6 f1 eb                                      bl #0x30e124
0069c564  00 10 a0 e1                                      mov r1, r0
0069c568  04 00 a0 e1                                      mov r0, r4
0069c56c  fe c9 f1 eb                                      bl #0x30ed6c
0069c570  08 10 a0 e1                                      mov r1, r8
0069c574  fc c9 f1 eb                                      bl #0x30ed6c
0069c578  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0069c57c, declared_size=268, range_size=268, mode=arm
; class-group: glitch::ps::PSRandom
; alias: _ZN6glitch2ps8PSRandom8NRandVecEf
; demangled: glitch::ps::PSRandom::NRandVec(float)
; decoder-mode: arm
0069c57c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0069c580  00 50 a0 e1                                      mov r5, r0
0069c584  01 40 a0 e1                                      mov r4, r1
0069c588  02 a0 a0 e1                                      mov sl, r2
0069c58c  04 00 a0 e1                                      mov r0, r4
0069c590  38 4e fe eb                                      bl #0x62fe78
0069c594  41 c8 f1 eb                                      bl #0x30e6a0
0069c598  00 10 a0 e1                                      mov r1, r0
0069c59c  80 c9 f1 eb                                      bl #0x30eba4
0069c5a0  fe 15 a0 e3                                      mov r1, #0x3f800000
0069c5a4  80 c7 f1 eb                                      bl #0x30e3ac
0069c5a8  00 70 a0 e1                                      mov r7, r0
0069c5ac  04 00 a0 e1                                      mov r0, r4
0069c5b0  30 4e fe eb                                      bl #0x62fe78
0069c5b4  39 c8 f1 eb                                      bl #0x30e6a0
0069c5b8  00 10 a0 e1                                      mov r1, r0
0069c5bc  78 c9 f1 eb                                      bl #0x30eba4
0069c5c0  fe 15 a0 e3                                      mov r1, #0x3f800000
0069c5c4  78 c7 f1 eb                                      bl #0x30e3ac
0069c5c8  07 10 a0 e1                                      mov r1, r7
0069c5cc  00 60 a0 e1                                      mov r6, r0
0069c5d0  07 00 a0 e1                                      mov r0, r7
0069c5d4  e4 c9 f1 eb                                      bl #0x30ed6c
0069c5d8  06 10 a0 e1                                      mov r1, r6
0069c5dc  00 80 a0 e1                                      mov r8, r0
0069c5e0  06 00 a0 e1                                      mov r0, r6
0069c5e4  e0 c9 f1 eb                                      bl #0x30ed6c
0069c5e8  00 10 a0 e1                                      mov r1, r0
0069c5ec  08 00 a0 e1                                      mov r0, r8
0069c5f0  6b c9 f1 eb                                      bl #0x30eba4
0069c5f4  fe 15 a0 e3                                      mov r1, #0x3f800000
0069c5f8  00 80 a0 e1                                      mov r8, r0
0069c5fc  3d c7 f1 eb                                      bl #0x30e2f8
0069c600  00 00 50 e3                                      cmp r0, #0
0069c604  00 10 a0 e3                                      mov r1, #0
0069c608  08 00 a0 e1                                      mov r0, r8
0069c60c  de ff ff 1a                                      bne #0x69c58c
0069c610  5d c6 f1 eb                                      bl #0x30df8c
0069c614  00 00 50 e3                                      cmp r0, #0
0069c618  db ff ff 1a                                      bne #0x69c58c
0069c61c  08 00 a0 e1                                      mov r0, r8
0069c620  23 c6 f1 eb                                      bl #0x30deb4
0069c624  03 11 a0 e3                                      mov r1, #0xc0000000
0069c628  cf c9 f1 eb                                      bl #0x30ed6c
0069c62c  08 10 a0 e1                                      mov r1, r8
0069c630  97 c9 f1 eb                                      bl #0x30ec94
0069c634  ba c6 f1 eb                                      bl #0x30e124
0069c638  0a 10 a0 e1                                      mov r1, sl
0069c63c  00 80 a0 e1                                      mov r8, r0
0069c640  04 00 a0 e1                                      mov r0, r4
0069c644  98 ff ff eb                                      bl #0x69c4ac
0069c648  08 10 a0 e1                                      mov r1, r8
0069c64c  00 40 a0 e1                                      mov r4, r0
0069c650  07 00 a0 e1                                      mov r0, r7
0069c654  c4 c9 f1 eb                                      bl #0x30ed6c
0069c658  0a 10 a0 e1                                      mov r1, sl
0069c65c  c2 c9 f1 eb                                      bl #0x30ed6c
0069c660  08 10 a0 e1                                      mov r1, r8
0069c664  00 00 85 e5                                      str r0, [r5]
0069c668  06 00 a0 e1                                      mov r0, r6
0069c66c  be c9 f1 eb                                      bl #0x30ed6c
0069c670  0a 10 a0 e1                                      mov r1, sl
0069c674  bc c9 f1 eb                                      bl #0x30ed6c
0069c678  08 40 85 e5                                      str r4, [r5, #8]
0069c67c  04 00 85 e5                                      str r0, [r5, #4]
0069c680  05 00 a0 e1                                      mov r0, r5
0069c684  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
