; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00764ed4, declared_size=224, range_size=224, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_13character_defEEENS_20stringi_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::find_index(gameswf::tu_stringi const&) const
; decoder-mode: arm
00764ed4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00764ed8  00 30 90 e5                                      ldr r3, [r0]
00764edc  00 50 a0 e1                                      mov r5, r0
00764ee0  01 60 a0 e1                                      mov r6, r1
00764ee4  00 00 53 e3                                      cmp r3, #0
00764ee8  02 00 00 1a                                      bne #0x764ef8
00764eec  00 40 e0 e3                                      mvn r4, #0
00764ef0  04 00 a0 e1                                      mov r0, r4
00764ef4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00764ef8  01 00 a0 e1                                      mov r0, r1
00764efc  b1 f9 ff eb                                      bl #0x7635c8
00764f00  00 30 95 e5                                      ldr r3, [r5]
00764f04  01 00 70 e3                                      cmn r0, #1
00764f08  00 70 a0 e1                                      mov r7, r0
00764f0c  04 20 93 e5                                      ldr r2, [r3, #4]
00764f10  02 79 e0 03                                      mvneq r7, #0x8000
00764f14  02 40 07 e0                                      and r4, r7, r2
00764f18  04 81 a0 e1                                      lsl r8, r4, #2
00764f1c  01 80 88 e2                                      add r8, r8, #1
00764f20  88 11 93 e7                                      ldr r1, [r3, r8, lsl #3]
00764f24  88 81 83 e0                                      add r8, r3, r8, lsl #3
00764f28  02 00 71 e3                                      cmn r1, #2
00764f2c  ee ff ff 0a                                      beq #0x764eec
00764f30  04 30 98 e5                                      ldr r3, [r8, #4]
00764f34  01 00 73 e3                                      cmn r3, #1
00764f38  02 00 00 0a                                      beq #0x764f48
00764f3c  03 20 02 e0                                      and r2, r2, r3
00764f40  04 00 52 e1                                      cmp r2, r4
00764f44  e8 ff ff 1a                                      bne #0x764eec
00764f48  01 a0 86 e2                                      add sl, r6, #1
00764f4c  07 00 00 ea                                      b #0x764f70
00764f50  00 40 98 e5                                      ldr r4, [r8]
00764f54  01 00 74 e3                                      cmn r4, #1
00764f58  e4 ff ff 0a                                      beq #0x764ef0
00764f5c  00 80 95 e5                                      ldr r8, [r5]
00764f60  84 32 a0 e1                                      lsl r3, r4, #5
00764f64  08 30 83 e2                                      add r3, r3, #8
00764f68  03 80 88 e0                                      add r8, r8, r3
00764f6c  04 30 98 e5                                      ldr r3, [r8, #4]
00764f70  03 00 57 e1                                      cmp r7, r3
00764f74  f5 ff ff 1a                                      bne #0x764f50
00764f78  08 30 88 e2                                      add r3, r8, #8
00764f7c  03 00 56 e1                                      cmp r6, r3
00764f80  da ff ff 0a                                      beq #0x764ef0
00764f84  d8 30 d8 e1                                      ldrsb r3, [r8, #8]
00764f88  01 00 73 e3                                      cmn r3, #1
00764f8c  d0 30 d6 e1                                      ldrsb r3, [r6]
00764f90  09 00 88 12                                      addne r0, r8, #9
00764f94  14 00 98 05                                      ldreq r0, [r8, #0x14]
00764f98  01 00 73 e3                                      cmn r3, #1
00764f9c  0a 10 a0 11                                      movne r1, sl
00764fa0  0c 10 96 05                                      ldreq r1, [r6, #0xc]
00764fa4  59 b3 ff eb                                      bl #0x751d10
00764fa8  00 00 50 e3                                      cmp r0, #0
00764fac  e7 ff ff 1a                                      bne #0x764f50
00764fb0  ce ff ff ea                                      b #0x764ef0

; FUNCTION 0x00764fb4, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_13character_defEEENS_20stringi_hash_functorIS1_EEE3getERKS1_PS4_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::get(gameswf::tu_stringi const&, gameswf::smart_ptr<gameswf::character_def>*) const
; decoder-mode: arm
00764fb4  70 40 2d e9                                      push {r4, r5, r6, lr}
00764fb8  02 40 a0 e1                                      mov r4, r2
00764fbc  00 50 a0 e1                                      mov r5, r0
00764fc0  c3 ff ff eb                                      bl #0x764ed4
00764fc4  00 30 50 e2                                      subs r3, r0, #0
00764fc8  08 00 00 ba                                      blt #0x764ff0
00764fcc  00 00 54 e3                                      cmp r4, #0
00764fd0  08 00 00 0a                                      beq #0x764ff8
00764fd4  00 20 95 e5                                      ldr r2, [r5]
00764fd8  04 00 a0 e1                                      mov r0, r4
00764fdc  83 32 82 e0                                      add r3, r2, r3, lsl #5
00764fe0  24 10 93 e5                                      ldr r1, [r3, #0x24]
00764fe4  17 fc ff eb                                      bl #0x764048
00764fe8  01 00 a0 e3                                      mov r0, #1
00764fec  70 80 bd e8                                      pop {r4, r5, r6, pc}
00764ff0  00 00 a0 e3                                      mov r0, #0
00764ff4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00764ff8  01 00 a0 e3                                      mov r0, #1
00764ffc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00765e18, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_13character_defEEENS_20stringi_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::clear()
; decoder-mode: arm
00765e18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00765e1c  00 80 a0 e1                                      mov r8, r0
00765e20  00 00 90 e5                                      ldr r0, [r0]
00765e24  00 00 50 e3                                      cmp r0, #0
00765e28  25 00 00 0a                                      beq #0x765ec4
00765e2c  04 70 90 e5                                      ldr r7, [r0, #4]
00765e30  00 00 57 e3                                      cmp r7, #0
00765e34  1d 00 00 ba                                      blt #0x765eb0
00765e38  00 60 a0 e3                                      mov r6, #0
00765e3c  08 40 a0 e3                                      mov r4, #8
00765e40  01 90 e0 e3                                      mvn sb, #1
00765e44  06 a0 a0 e1                                      mov sl, r6
00765e48  08 00 00 ea                                      b #0x765e70
00765e4c  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00765e50  00 00 50 e3                                      cmp r0, #0
00765e54  00 00 00 0a                                      beq #0x765e5c
00765e58  f8 d0 ff eb                                      bl #0x75a240
00765e5c  00 06 85 e8                                      stm r5, {sb, sl}
00765e60  00 00 98 e5                                      ldr r0, [r8]
00765e64  06 00 57 e1                                      cmp r7, r6
00765e68  20 40 84 e2                                      add r4, r4, #0x20
00765e6c  0e 00 00 ba                                      blt #0x765eac
00765e70  04 30 90 e7                                      ldr r3, [r0, r4]
00765e74  01 60 86 e2                                      add r6, r6, #1
00765e78  04 50 80 e0                                      add r5, r0, r4
00765e7c  02 00 73 e3                                      cmn r3, #2
00765e80  f7 ff ff 0a                                      beq #0x765e64
00765e84  04 30 95 e5                                      ldr r3, [r5, #4]
00765e88  01 00 73 e3                                      cmn r3, #1
00765e8c  f4 ff ff 0a                                      beq #0x765e64
00765e90  d8 30 d5 e1                                      ldrsb r3, [r5, #8]
00765e94  01 00 73 e3                                      cmn r3, #1
00765e98  eb ff ff 1a                                      bne #0x765e4c
00765e9c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00765ea0  10 10 95 e5                                      ldr r1, [r5, #0x10]
00765ea4  23 b3 ff eb                                      bl #0x752b38
00765ea8  e7 ff ff ea                                      b #0x765e4c
00765eac  04 70 90 e5                                      ldr r7, [r0, #4]
00765eb0  87 12 a0 e1                                      lsl r1, r7, #5
00765eb4  28 10 81 e2                                      add r1, r1, #0x28
00765eb8  1e b3 ff eb                                      bl #0x752b38
00765ebc  00 30 a0 e3                                      mov r3, #0
00765ec0  00 30 88 e5                                      str r3, [r8]
00765ec4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007685e4, declared_size=456, range_size=456, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_13character_defEEENS_20stringi_hash_functorIS1_EEE3addERKS1_RKS4_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::add(gameswf::tu_stringi const&, gameswf::smart_ptr<gameswf::character_def> const&)
; decoder-mode: arm
007685e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007685e8  00 60 a0 e1                                      mov r6, r0
007685ec  0c d0 4d e2                                      sub sp, sp, #0xc
007685f0  01 50 a0 e1                                      mov r5, r1
007685f4  02 90 a0 e1                                      mov sb, r2
007685f8  cd 00 00 eb                                      bl #0x768934
007685fc  00 30 96 e5                                      ldr r3, [r6]
00768600  00 20 93 e5                                      ldr r2, [r3]
00768604  01 20 82 e2                                      add r2, r2, #1
00768608  00 20 83 e5                                      str r2, [r3]
0076860c  10 e0 95 e5                                      ldr lr, [r5, #0x10]
00768610  ff 34 e0 e3                                      mvn r3, #0xff000000
00768614  ff 24 ce e3                                      bic r2, lr, #0xff000000
00768618  03 00 52 e1                                      cmp r2, r3
0076861c  5e 40 b7 17                                      sbfxne r4, lr, #0, #0x18
00768620  2d 00 00 0a                                      beq #0x7686dc
00768624  00 60 96 e5                                      ldr r6, [r6]
00768628  01 00 74 e3                                      cmn r4, #1
0076862c  02 49 e0 03                                      mvneq r4, #0x8000
00768630  04 c0 96 e5                                      ldr ip, [r6, #4]
00768634  0c 20 04 e0                                      and r2, r4, ip
00768638  02 b1 a0 e1                                      lsl fp, r2, #2
0076863c  01 b0 8b e2                                      add fp, fp, #1
00768640  8b 31 96 e7                                      ldr r3, [r6, fp, lsl #3]
00768644  8b a1 86 e0                                      add sl, r6, fp, lsl #3
00768648  02 00 73 e3                                      cmn r3, #2
0076864c  3e 00 00 0a                                      beq #0x76874c
00768650  04 e0 9a e5                                      ldr lr, [sl, #4]
00768654  01 00 7e e3                                      cmn lr, #1
00768658  02 70 a0 11                                      movne r7, r2
0076865c  41 00 00 0a                                      beq #0x768768
00768660  01 70 87 e2                                      add r7, r7, #1
00768664  0c 70 07 e0                                      and r7, r7, ip
00768668  07 01 a0 e1                                      lsl r0, r7, #2
0076866c  01 00 80 e2                                      add r0, r0, #1
00768670  80 11 96 e7                                      ldr r1, [r6, r0, lsl #3]
00768674  80 01 86 e0                                      add r0, r6, r0, lsl #3
00768678  02 00 71 e3                                      cmn r1, #2
0076867c  f7 ff ff 1a                                      bne #0x768660
00768680  0e 30 0c e0                                      and r3, ip, lr
00768684  02 00 53 e1                                      cmp r3, r2
00768688  3c 00 00 0a                                      beq #0x768780
0076868c  03 81 a0 e1                                      lsl r8, r3, #2
00768690  01 80 88 e2                                      add r8, r8, #1
00768694  88 31 96 e7                                      ldr r3, [r6, r8, lsl #3]
00768698  88 81 86 e0                                      add r8, r6, r8, lsl #3
0076869c  02 00 53 e1                                      cmp r3, r2
007686a0  f9 ff ff 1a                                      bne #0x76868c
007686a4  0a 10 a0 e1                                      mov r1, sl
007686a8  69 fb ff eb                                      bl #0x767454
007686ac  05 10 a0 e1                                      mov r1, r5
007686b0  08 00 8a e2                                      add r0, sl, #8
007686b4  00 70 88 e5                                      str r7, [r8]
007686b8  24 aa ff eb                                      bl #0x752f50
007686bc  00 10 99 e5                                      ldr r1, [sb]
007686c0  1c 00 8a e2                                      add r0, sl, #0x1c
007686c4  5f ee ff eb                                      bl #0x764048
007686c8  00 30 e0 e3                                      mvn r3, #0
007686cc  04 40 8a e5                                      str r4, [sl, #4]
007686d0  8b 31 86 e7                                      str r3, [r6, fp, lsl #3]
007686d4  0c d0 8d e2                                      add sp, sp, #0xc
007686d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007686dc  d0 30 d5 e1                                      ldrsb r3, [r5]
007686e0  01 00 73 e3                                      cmn r3, #1
007686e4  04 30 95 05                                      ldreq r3, [r5, #4]
007686e8  01 30 43 12                                      subne r3, r3, #1
007686ec  01 c0 85 12                                      addne ip, r5, #1
007686f0  01 30 43 02                                      subeq r3, r3, #1
007686f4  0c c0 95 05                                      ldreq ip, [r5, #0xc]
007686f8  00 00 53 e3                                      cmp r3, #0
007686fc  05 45 01 d3                                      movwle r4, #0x1505
00768700  04 20 a0 d1                                      movle r2, r4
00768704  0d 00 00 da                                      ble #0x768740
00768708  03 30 8c e0                                      add r3, ip, r3
0076870c  05 25 01 e3                                      movw r2, #0x1505
00768710  01 10 53 e5                                      ldrb r1, [r3, #-1]
00768714  01 30 43 e2                                      sub r3, r3, #1
00768718  82 22 82 e0                                      add r2, r2, r2, lsl #5
0076871c  41 00 41 e2                                      sub r0, r1, #0x41
00768720  70 00 ef e6                                      uxtb r0, r0
00768724  19 00 50 e3                                      cmp r0, #0x19
00768728  20 10 81 92                                      addls r1, r1, #0x20
0076872c  0c 00 53 e1                                      cmp r3, ip
00768730  02 20 21 e0                                      eor r2, r1, r2
00768734  f5 ff ff 1a                                      bne #0x768710
00768738  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0076873c  02 40 a0 e1                                      mov r4, r2
00768740  12 e0 d7 e7                                      bfi lr, r2, #0, #0x18
00768744  10 e0 85 e5                                      str lr, [r5, #0x10]
00768748  b5 ff ff ea                                      b #0x768624
0076874c  0a 00 a0 e1                                      mov r0, sl
00768750  05 10 a0 e1                                      mov r1, r5
00768754  09 20 a0 e1                                      mov r2, sb
00768758  00 30 e0 e3                                      mvn r3, #0
0076875c  00 40 8d e5                                      str r4, [sp]
00768760  2c fb ff eb                                      bl #0x767418
00768764  da ff ff ea                                      b #0x7686d4
00768768  0a 00 a0 e1                                      mov r0, sl
0076876c  05 10 a0 e1                                      mov r1, r5
00768770  09 20 a0 e1                                      mov r2, sb
00768774  00 40 8d e5                                      str r4, [sp]
00768778  26 fb ff eb                                      bl #0x767418
0076877c  d4 ff ff ea                                      b #0x7686d4
00768780  0a 10 a0 e1                                      mov r1, sl
00768784  32 fb ff eb                                      bl #0x767454
00768788  05 10 a0 e1                                      mov r1, r5
0076878c  08 00 8a e2                                      add r0, sl, #8
00768790  ee a9 ff eb                                      bl #0x752f50
00768794  00 10 99 e5                                      ldr r1, [sb]
00768798  1c 00 8a e2                                      add r0, sl, #0x1c
0076879c  29 ee ff eb                                      bl #0x764048
007687a0  8b 71 86 e7                                      str r7, [r6, fp, lsl #3]
007687a4  04 40 8a e5                                      str r4, [sl, #4]
007687a8  c9 ff ff ea                                      b #0x7686d4

; FUNCTION 0x007687ac, declared_size=392, range_size=392, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_13character_defEEENS_20stringi_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
; decoder-mode: arm
007687ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007687b0  00 00 51 e3                                      cmp r1, #0
007687b4  0c d0 4d e2                                      sub sp, sp, #0xc
007687b8  00 a0 a0 e1                                      mov sl, r0
007687bc  59 00 00 da                                      ble #0x768928
007687c0  01 00 41 e2                                      sub r0, r1, #1
007687c4  66 98 ee eb                                      bl #0x30e964
007687c8  b9 95 ee eb                                      bl #0x30deb4
007687cc  18 12 07 e3                                      movw r1, #0x7218
007687d0  31 1f 43 e3                                      movt r1, #0x3f31
007687d4  2e 99 ee eb                                      bl #0x30ec94
007687d8  fe 15 a0 e3                                      mov r1, #0x3f800000
007687dc  f0 98 ee eb                                      bl #0x30eba4
007687e0  39 97 ee eb                                      bl #0x30e4cc
007687e4  01 40 a0 e3                                      mov r4, #1
007687e8  14 40 a0 e1                                      lsl r4, r4, r0
007687ec  00 30 9a e5                                      ldr r3, [sl]
007687f0  04 00 54 e3                                      cmp r4, #4
007687f4  04 40 a0 b3                                      movlt r4, #4
007687f8  00 00 53 e3                                      cmp r3, #0
007687fc  03 00 00 0a                                      beq #0x768810
00768800  04 30 93 e5                                      ldr r3, [r3, #4]
00768804  01 30 83 e2                                      add r3, r3, #1
00768808  04 00 53 e1                                      cmp r3, r4
0076880c  46 00 00 0a                                      beq #0x76892c
00768810  00 50 a0 e3                                      mov r5, #0
00768814  84 02 a0 e1                                      lsl r0, r4, #5
00768818  08 00 80 e2                                      add r0, r0, #8
0076881c  05 10 a0 e1                                      mov r1, r5
00768820  04 50 8d e5                                      str r5, [sp, #4]
00768824  dc a8 ff eb                                      bl #0x752b9c
00768828  04 00 8d e5                                      str r0, [sp, #4]
0076882c  00 50 80 e5                                      str r5, [r0]
00768830  04 30 9d e5                                      ldr r3, [sp, #4]
00768834  01 20 44 e2                                      sub r2, r4, #1
00768838  01 90 e0 e3                                      mvn sb, #1
0076883c  04 20 83 e5                                      str r2, [r3, #4]
00768840  08 30 a0 e3                                      mov r3, #8
00768844  04 20 9d e5                                      ldr r2, [sp, #4]
00768848  01 50 85 e2                                      add r5, r5, #1
0076884c  05 00 54 e1                                      cmp r4, r5
00768850  03 90 82 e7                                      str sb, [r2, r3]
00768854  20 30 83 e2                                      add r3, r3, #0x20
00768858  f9 ff ff ca                                      bgt #0x768844
0076885c  00 30 9a e5                                      ldr r3, [sl]
00768860  00 00 53 e3                                      cmp r3, #0
00768864  04 80 8d 02                                      addeq r8, sp, #4
00768868  29 00 00 0a                                      beq #0x768914
0076886c  04 70 93 e5                                      ldr r7, [r3, #4]
00768870  00 00 57 e3                                      cmp r7, #0
00768874  04 80 8d b2                                      addlt r8, sp, #4
00768878  21 00 00 ba                                      blt #0x768904
0076887c  00 60 a0 e3                                      mov r6, #0
00768880  08 50 a0 e3                                      mov r5, #8
00768884  04 80 8d e2                                      add r8, sp, #4
00768888  06 b0 a0 e1                                      mov fp, r6
0076888c  08 00 00 ea                                      b #0x7688b4
00768890  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00768894  00 00 50 e3                                      cmp r0, #0
00768898  00 00 00 0a                                      beq #0x7688a0
0076889c  67 c6 ff eb                                      bl #0x75a240
007688a0  00 0a 84 e8                                      stm r4, {sb, fp}
007688a4  00 30 9a e5                                      ldr r3, [sl]
007688a8  06 00 57 e1                                      cmp r7, r6
007688ac  20 50 85 e2                                      add r5, r5, #0x20
007688b0  12 00 00 ba                                      blt #0x768900
007688b4  05 c0 93 e7                                      ldr ip, [r3, r5]
007688b8  05 40 83 e0                                      add r4, r3, r5
007688bc  08 00 a0 e1                                      mov r0, r8
007688c0  02 00 7c e3                                      cmn ip, #2
007688c4  01 60 86 e2                                      add r6, r6, #1
007688c8  08 10 84 e2                                      add r1, r4, #8
007688cc  1c 20 84 e2                                      add r2, r4, #0x1c
007688d0  f4 ff ff 0a                                      beq #0x7688a8
007688d4  04 c0 94 e5                                      ldr ip, [r4, #4]
007688d8  01 00 7c e3                                      cmn ip, #1
007688dc  f1 ff ff 0a                                      beq #0x7688a8
007688e0  3f ff ff eb                                      bl #0x7685e4
007688e4  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
007688e8  01 00 73 e3                                      cmn r3, #1
007688ec  e7 ff ff 1a                                      bne #0x768890
007688f0  14 00 94 e5                                      ldr r0, [r4, #0x14]
007688f4  10 10 94 e5                                      ldr r1, [r4, #0x10]
007688f8  8e a8 ff eb                                      bl #0x752b38
007688fc  e3 ff ff ea                                      b #0x768890
00768900  04 70 93 e5                                      ldr r7, [r3, #4]
00768904  87 12 a0 e1                                      lsl r1, r7, #5
00768908  03 00 a0 e1                                      mov r0, r3
0076890c  28 10 81 e2                                      add r1, r1, #0x28
00768910  88 a8 ff eb                                      bl #0x752b38
00768914  04 30 9d e5                                      ldr r3, [sp, #4]
00768918  08 00 a0 e1                                      mov r0, r8
0076891c  00 30 8a e5                                      str r3, [sl]
00768920  00 30 a0 e3                                      mov r3, #0
00768924  04 30 8d e5                                      str r3, [sp, #4]
00768928  3a f5 ff eb                                      bl #0x765e18
0076892c  0c d0 8d e2                                      add sp, sp, #0xc
00768930  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00768934, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_13character_defEEENS_20stringi_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::check_expand()
; decoder-mode: arm
00768934  00 30 90 e5                                      ldr r3, [r0]
00768938  00 00 53 e3                                      cmp r3, #0
0076893c  07 00 00 0a                                      beq #0x768960
00768940  04 10 93 e5                                      ldr r1, [r3, #4]
00768944  00 30 93 e5                                      ldr r3, [r3]
00768948  01 10 81 e2                                      add r1, r1, #1
0076894c  81 10 a0 e1                                      lsl r1, r1, #1
00768950  83 30 83 e0                                      add r3, r3, r3, lsl #1
00768954  01 00 53 e1                                      cmp r3, r1
00768958  1e ff 2f d1                                      bxle lr
0076895c  92 ff ff ea                                      b #0x7687ac
00768960  08 10 a0 e3                                      mov r1, #8
00768964  90 ff ff ea                                      b #0x7687ac

; FUNCTION 0x00768968, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_13character_defEEENS_20stringi_hash_functorIS1_EEE3setERKS1_RKS4_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set(gameswf::tu_stringi const&, gameswf::smart_ptr<gameswf::character_def> const&)
; decoder-mode: arm
00768968  70 40 2d e9                                      push {r4, r5, r6, lr}
0076896c  02 40 a0 e1                                      mov r4, r2
00768970  00 50 a0 e1                                      mov r5, r0
00768974  01 60 a0 e1                                      mov r6, r1
00768978  55 f1 ff eb                                      bl #0x764ed4
0076897c  00 00 50 e3                                      cmp r0, #0
00768980  05 00 00 ba                                      blt #0x76899c
00768984  00 30 95 e5                                      ldr r3, [r5]
00768988  00 10 94 e5                                      ldr r1, [r4]
0076898c  80 02 83 e0                                      add r0, r3, r0, lsl #5
00768990  24 00 80 e2                                      add r0, r0, #0x24
00768994  70 40 bd e8                                      pop {r4, r5, r6, lr}
00768998  aa ed ff ea                                      b #0x764048
0076899c  05 00 a0 e1                                      mov r0, r5
007689a0  06 10 a0 e1                                      mov r1, r6
007689a4  04 20 a0 e1                                      mov r2, r4
007689a8  70 40 bd e8                                      pop {r4, r5, r6, lr}
007689ac  0c ff ff ea                                      b #0x7685e4
