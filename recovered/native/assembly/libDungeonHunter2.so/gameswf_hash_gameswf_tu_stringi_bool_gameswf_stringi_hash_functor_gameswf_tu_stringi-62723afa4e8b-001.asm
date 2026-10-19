; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00764df4, declared_size=224, range_size=224, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiEbNS_20stringi_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::find_index(gameswf::tu_stringi const&) const
; decoder-mode: arm
00764df4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00764df8  00 30 90 e5                                      ldr r3, [r0]
00764dfc  00 50 a0 e1                                      mov r5, r0
00764e00  01 60 a0 e1                                      mov r6, r1
00764e04  00 00 53 e3                                      cmp r3, #0
00764e08  02 00 00 1a                                      bne #0x764e18
00764e0c  00 40 e0 e3                                      mvn r4, #0
00764e10  04 00 a0 e1                                      mov r0, r4
00764e14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00764e18  01 00 a0 e1                                      mov r0, r1
00764e1c  e9 f9 ff eb                                      bl #0x7635c8
00764e20  00 30 95 e5                                      ldr r3, [r5]
00764e24  01 00 70 e3                                      cmn r0, #1
00764e28  00 70 a0 e1                                      mov r7, r0
00764e2c  04 20 93 e5                                      ldr r2, [r3, #4]
00764e30  02 79 e0 03                                      mvneq r7, #0x8000
00764e34  02 40 07 e0                                      and r4, r7, r2
00764e38  04 81 a0 e1                                      lsl r8, r4, #2
00764e3c  01 80 88 e2                                      add r8, r8, #1
00764e40  88 11 93 e7                                      ldr r1, [r3, r8, lsl #3]
00764e44  88 81 83 e0                                      add r8, r3, r8, lsl #3
00764e48  02 00 71 e3                                      cmn r1, #2
00764e4c  ee ff ff 0a                                      beq #0x764e0c
00764e50  04 30 98 e5                                      ldr r3, [r8, #4]
00764e54  01 00 73 e3                                      cmn r3, #1
00764e58  02 00 00 0a                                      beq #0x764e68
00764e5c  03 20 02 e0                                      and r2, r2, r3
00764e60  04 00 52 e1                                      cmp r2, r4
00764e64  e8 ff ff 1a                                      bne #0x764e0c
00764e68  01 a0 86 e2                                      add sl, r6, #1
00764e6c  07 00 00 ea                                      b #0x764e90
00764e70  00 40 98 e5                                      ldr r4, [r8]
00764e74  01 00 74 e3                                      cmn r4, #1
00764e78  e4 ff ff 0a                                      beq #0x764e10
00764e7c  00 80 95 e5                                      ldr r8, [r5]
00764e80  84 32 a0 e1                                      lsl r3, r4, #5
00764e84  08 30 83 e2                                      add r3, r3, #8
00764e88  03 80 88 e0                                      add r8, r8, r3
00764e8c  04 30 98 e5                                      ldr r3, [r8, #4]
00764e90  03 00 57 e1                                      cmp r7, r3
00764e94  f5 ff ff 1a                                      bne #0x764e70
00764e98  08 30 88 e2                                      add r3, r8, #8
00764e9c  03 00 56 e1                                      cmp r6, r3
00764ea0  da ff ff 0a                                      beq #0x764e10
00764ea4  d8 30 d8 e1                                      ldrsb r3, [r8, #8]
00764ea8  01 00 73 e3                                      cmn r3, #1
00764eac  d0 30 d6 e1                                      ldrsb r3, [r6]
00764eb0  09 00 88 12                                      addne r0, r8, #9
00764eb4  14 00 98 05                                      ldreq r0, [r8, #0x14]
00764eb8  01 00 73 e3                                      cmn r3, #1
00764ebc  0a 10 a0 11                                      movne r1, sl
00764ec0  0c 10 96 05                                      ldreq r1, [r6, #0xc]
00764ec4  91 b3 ff eb                                      bl #0x751d10
00764ec8  00 00 50 e3                                      cmp r0, #0
00764ecc  e7 ff ff 1a                                      bne #0x764e70
00764ed0  ce ff ff ea                                      b #0x764e10

; FUNCTION 0x007656b4, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiEbNS_20stringi_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::clear()
; decoder-mode: arm
007656b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007656b8  00 80 a0 e1                                      mov r8, r0
007656bc  00 00 90 e5                                      ldr r0, [r0]
007656c0  00 00 50 e3                                      cmp r0, #0
007656c4  21 00 00 0a                                      beq #0x765750
007656c8  04 70 90 e5                                      ldr r7, [r0, #4]
007656cc  00 00 57 e3                                      cmp r7, #0
007656d0  19 00 00 ba                                      blt #0x76573c
007656d4  00 50 a0 e3                                      mov r5, #0
007656d8  08 40 a0 e3                                      mov r4, #8
007656dc  01 90 e0 e3                                      mvn sb, #1
007656e0  05 a0 a0 e1                                      mov sl, r5
007656e4  04 00 00 ea                                      b #0x7656fc
007656e8  00 06 86 e8                                      stm r6, {sb, sl}
007656ec  00 00 98 e5                                      ldr r0, [r8]
007656f0  05 00 57 e1                                      cmp r7, r5
007656f4  20 40 84 e2                                      add r4, r4, #0x20
007656f8  0e 00 00 ba                                      blt #0x765738
007656fc  04 30 90 e7                                      ldr r3, [r0, r4]
00765700  01 50 85 e2                                      add r5, r5, #1
00765704  04 60 80 e0                                      add r6, r0, r4
00765708  02 00 73 e3                                      cmn r3, #2
0076570c  f7 ff ff 0a                                      beq #0x7656f0
00765710  04 30 96 e5                                      ldr r3, [r6, #4]
00765714  01 00 73 e3                                      cmn r3, #1
00765718  f4 ff ff 0a                                      beq #0x7656f0
0076571c  d8 30 d6 e1                                      ldrsb r3, [r6, #8]
00765720  01 00 73 e3                                      cmn r3, #1
00765724  ef ff ff 1a                                      bne #0x7656e8
00765728  14 00 96 e5                                      ldr r0, [r6, #0x14]
0076572c  10 10 96 e5                                      ldr r1, [r6, #0x10]
00765730  00 b5 ff eb                                      bl #0x752b38
00765734  eb ff ff ea                                      b #0x7656e8
00765738  04 70 90 e5                                      ldr r7, [r0, #4]
0076573c  87 12 a0 e1                                      lsl r1, r7, #5
00765740  28 10 81 e2                                      add r1, r1, #0x28
00765744  fb b4 ff eb                                      bl #0x752b38
00765748  00 30 a0 e3                                      mov r3, #0
0076574c  00 30 88 e5                                      str r3, [r8]
00765750  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00768058, declared_size=508, range_size=508, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiEbNS_20stringi_hash_functorIS1_EEE3addERKS1_RKb
; demangled: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::add(gameswf::tu_stringi const&, bool const&)
; decoder-mode: arm
00768058  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076805c  00 50 a0 e1                                      mov r5, r0
00768060  0c d0 4d e2                                      sub sp, sp, #0xc
00768064  01 40 a0 e1                                      mov r4, r1
00768068  04 20 8d e5                                      str r2, [sp, #4]
0076806c  d6 00 00 eb                                      bl #0x7683cc
00768070  00 30 95 e5                                      ldr r3, [r5]
00768074  00 20 93 e5                                      ldr r2, [r3]
00768078  01 20 82 e2                                      add r2, r2, #1
0076807c  00 20 83 e5                                      str r2, [r3]
00768080  10 e0 94 e5                                      ldr lr, [r4, #0x10]
00768084  ff 34 e0 e3                                      mvn r3, #0xff000000
00768088  ff 24 ce e3                                      bic r2, lr, #0xff000000
0076808c  03 00 52 e1                                      cmp r2, r3
00768090  5e 90 b7 17                                      sbfxne sb, lr, #0, #0x18
00768094  38 00 00 0a                                      beq #0x76817c
00768098  00 50 95 e5                                      ldr r5, [r5]
0076809c  01 00 79 e3                                      cmn sb, #1
007680a0  02 99 e0 03                                      mvneq sb, #0x8000
007680a4  04 30 95 e5                                      ldr r3, [r5, #4]
007680a8  03 20 09 e0                                      and r2, sb, r3
007680ac  02 b1 a0 e1                                      lsl fp, r2, #2
007680b0  01 b0 8b e2                                      add fp, fp, #1
007680b4  8b 11 95 e7                                      ldr r1, [r5, fp, lsl #3]
007680b8  8b a1 85 e0                                      add sl, r5, fp, lsl #3
007680bc  02 00 71 e3                                      cmn r1, #2
007680c0  00 30 e0 03                                      mvneq r3, #0
007680c4  8b 31 85 07                                      streq r3, [r5, fp, lsl #3]
007680c8  47 00 00 0a                                      beq #0x7681ec
007680cc  04 c0 9a e5                                      ldr ip, [sl, #4]
007680d0  01 00 7c e3                                      cmn ip, #1
007680d4  02 60 a0 11                                      movne r6, r2
007680d8  43 00 00 0a                                      beq #0x7681ec
007680dc  01 60 86 e2                                      add r6, r6, #1
007680e0  03 60 06 e0                                      and r6, r6, r3
007680e4  06 71 a0 e1                                      lsl r7, r6, #2
007680e8  01 70 87 e2                                      add r7, r7, #1
007680ec  87 01 95 e7                                      ldr r0, [r5, r7, lsl #3]
007680f0  87 71 85 e0                                      add r7, r5, r7, lsl #3
007680f4  02 00 70 e3                                      cmn r0, #2
007680f8  f7 ff ff 1a                                      bne #0x7680dc
007680fc  0c 30 03 e0                                      and r3, r3, ip
00768100  02 00 53 e1                                      cmp r3, r2
00768104  40 00 00 0a                                      beq #0x76820c
00768108  03 81 a0 e1                                      lsl r8, r3, #2
0076810c  01 80 88 e2                                      add r8, r8, #1
00768110  88 31 95 e7                                      ldr r3, [r5, r8, lsl #3]
00768114  88 81 85 e0                                      add r8, r5, r8, lsl #3
00768118  02 00 53 e1                                      cmp r3, r2
0076811c  f9 ff ff 1a                                      bne #0x768108
00768120  00 10 87 e5                                      str r1, [r7]
00768124  04 30 9a e5                                      ldr r3, [sl, #4]
00768128  08 20 8a e2                                      add r2, sl, #8
0076812c  02 10 a0 e1                                      mov r1, r2
00768130  04 30 87 e5                                      str r3, [r7, #4]
00768134  08 00 87 e2                                      add r0, r7, #8
00768138  00 20 8d e5                                      str r2, [sp]
0076813c  ba ab ff eb                                      bl #0x75302c
00768140  00 20 9d e5                                      ldr r2, [sp]
00768144  1c 30 da e5                                      ldrb r3, [sl, #0x1c]
00768148  04 10 a0 e1                                      mov r1, r4
0076814c  02 00 a0 e1                                      mov r0, r2
00768150  1c 30 c7 e5                                      strb r3, [r7, #0x1c]
00768154  00 60 88 e5                                      str r6, [r8]
00768158  7c ab ff eb                                      bl #0x752f50
0076815c  04 20 9d e5                                      ldr r2, [sp, #4]
00768160  00 30 d2 e5                                      ldrb r3, [r2]
00768164  04 90 8a e5                                      str sb, [sl, #4]
00768168  1c 30 ca e5                                      strb r3, [sl, #0x1c]
0076816c  00 30 e0 e3                                      mvn r3, #0
00768170  8b 31 85 e7                                      str r3, [r5, fp, lsl #3]
00768174  0c d0 8d e2                                      add sp, sp, #0xc
00768178  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076817c  d0 30 d4 e1                                      ldrsb r3, [r4]
00768180  01 00 73 e3                                      cmn r3, #1
00768184  04 30 94 05                                      ldreq r3, [r4, #4]
00768188  01 30 43 12                                      subne r3, r3, #1
0076818c  01 c0 84 12                                      addne ip, r4, #1
00768190  01 30 43 02                                      subeq r3, r3, #1
00768194  0c c0 94 05                                      ldreq ip, [r4, #0xc]
00768198  00 00 53 e3                                      cmp r3, #0
0076819c  05 95 01 d3                                      movwle sb, #0x1505
007681a0  09 20 a0 d1                                      movle r2, sb
007681a4  0d 00 00 da                                      ble #0x7681e0
007681a8  03 30 8c e0                                      add r3, ip, r3
007681ac  05 25 01 e3                                      movw r2, #0x1505
007681b0  01 10 53 e5                                      ldrb r1, [r3, #-1]
007681b4  01 30 43 e2                                      sub r3, r3, #1
007681b8  82 22 82 e0                                      add r2, r2, r2, lsl #5
007681bc  41 00 41 e2                                      sub r0, r1, #0x41
007681c0  70 00 ef e6                                      uxtb r0, r0
007681c4  19 00 50 e3                                      cmp r0, #0x19
007681c8  20 10 81 92                                      addls r1, r1, #0x20
007681cc  0c 00 53 e1                                      cmp r3, ip
007681d0  02 20 21 e0                                      eor r2, r1, r2
007681d4  f5 ff ff 1a                                      bne #0x7681b0
007681d8  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
007681dc  02 90 a0 e1                                      mov sb, r2
007681e0  12 e0 d7 e7                                      bfi lr, r2, #0, #0x18
007681e4  10 e0 84 e5                                      str lr, [r4, #0x10]
007681e8  aa ff ff ea                                      b #0x768098
007681ec  04 90 8a e5                                      str sb, [sl, #4]
007681f0  04 10 a0 e1                                      mov r1, r4
007681f4  08 00 8a e2                                      add r0, sl, #8
007681f8  8b ab ff eb                                      bl #0x75302c
007681fc  04 20 9d e5                                      ldr r2, [sp, #4]
00768200  00 30 d2 e5                                      ldrb r3, [r2]
00768204  1c 30 ca e5                                      strb r3, [sl, #0x1c]
00768208  d9 ff ff ea                                      b #0x768174
0076820c  00 10 87 e5                                      str r1, [r7]
00768210  04 30 9a e5                                      ldr r3, [sl, #4]
00768214  08 80 8a e2                                      add r8, sl, #8
00768218  08 10 a0 e1                                      mov r1, r8
0076821c  04 30 87 e5                                      str r3, [r7, #4]
00768220  08 00 87 e2                                      add r0, r7, #8
00768224  80 ab ff eb                                      bl #0x75302c
00768228  1c 30 da e5                                      ldrb r3, [sl, #0x1c]
0076822c  08 00 a0 e1                                      mov r0, r8
00768230  04 10 a0 e1                                      mov r1, r4
00768234  1c 30 c7 e5                                      strb r3, [r7, #0x1c]
00768238  44 ab ff eb                                      bl #0x752f50
0076823c  04 20 9d e5                                      ldr r2, [sp, #4]
00768240  00 30 d2 e5                                      ldrb r3, [r2]
00768244  1c 30 ca e5                                      strb r3, [sl, #0x1c]
00768248  8b 61 85 e7                                      str r6, [r5, fp, lsl #3]
0076824c  04 90 8a e5                                      str sb, [sl, #4]
00768250  c7 ff ff ea                                      b #0x768174

; FUNCTION 0x00768254, declared_size=376, range_size=376, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiEbNS_20stringi_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
; decoder-mode: arm
00768254  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00768258  00 00 51 e3                                      cmp r1, #0
0076825c  0c d0 4d e2                                      sub sp, sp, #0xc
00768260  00 a0 a0 e1                                      mov sl, r0
00768264  55 00 00 da                                      ble #0x7683c0
00768268  01 00 41 e2                                      sub r0, r1, #1
0076826c  bc 99 ee eb                                      bl #0x30e964
00768270  0f 97 ee eb                                      bl #0x30deb4
00768274  18 12 07 e3                                      movw r1, #0x7218
00768278  31 1f 43 e3                                      movt r1, #0x3f31
0076827c  84 9a ee eb                                      bl #0x30ec94
00768280  fe 15 a0 e3                                      mov r1, #0x3f800000
00768284  46 9a ee eb                                      bl #0x30eba4
00768288  8f 98 ee eb                                      bl #0x30e4cc
0076828c  01 40 a0 e3                                      mov r4, #1
00768290  14 40 a0 e1                                      lsl r4, r4, r0
00768294  00 30 9a e5                                      ldr r3, [sl]
00768298  04 00 54 e3                                      cmp r4, #4
0076829c  04 40 a0 b3                                      movlt r4, #4
007682a0  00 00 53 e3                                      cmp r3, #0
007682a4  03 00 00 0a                                      beq #0x7682b8
007682a8  04 30 93 e5                                      ldr r3, [r3, #4]
007682ac  01 30 83 e2                                      add r3, r3, #1
007682b0  04 00 53 e1                                      cmp r3, r4
007682b4  42 00 00 0a                                      beq #0x7683c4
007682b8  00 50 a0 e3                                      mov r5, #0
007682bc  84 02 a0 e1                                      lsl r0, r4, #5
007682c0  08 00 80 e2                                      add r0, r0, #8
007682c4  05 10 a0 e1                                      mov r1, r5
007682c8  04 50 8d e5                                      str r5, [sp, #4]
007682cc  32 aa ff eb                                      bl #0x752b9c
007682d0  04 00 8d e5                                      str r0, [sp, #4]
007682d4  00 50 80 e5                                      str r5, [r0]
007682d8  04 30 9d e5                                      ldr r3, [sp, #4]
007682dc  01 20 44 e2                                      sub r2, r4, #1
007682e0  01 90 e0 e3                                      mvn sb, #1
007682e4  04 20 83 e5                                      str r2, [r3, #4]
007682e8  08 30 a0 e3                                      mov r3, #8
007682ec  04 20 9d e5                                      ldr r2, [sp, #4]
007682f0  01 50 85 e2                                      add r5, r5, #1
007682f4  05 00 54 e1                                      cmp r4, r5
007682f8  03 90 82 e7                                      str sb, [r2, r3]
007682fc  20 30 83 e2                                      add r3, r3, #0x20
00768300  f9 ff ff ca                                      bgt #0x7682ec
00768304  00 30 9a e5                                      ldr r3, [sl]
00768308  00 00 53 e3                                      cmp r3, #0
0076830c  04 80 8d 02                                      addeq r8, sp, #4
00768310  25 00 00 0a                                      beq #0x7683ac
00768314  04 70 93 e5                                      ldr r7, [r3, #4]
00768318  00 00 57 e3                                      cmp r7, #0
0076831c  04 80 8d b2                                      addlt r8, sp, #4
00768320  1d 00 00 ba                                      blt #0x76839c
00768324  00 60 a0 e3                                      mov r6, #0
00768328  08 50 a0 e3                                      mov r5, #8
0076832c  04 80 8d e2                                      add r8, sp, #4
00768330  06 b0 a0 e1                                      mov fp, r6
00768334  04 00 00 ea                                      b #0x76834c
00768338  00 0a 84 e8                                      stm r4, {sb, fp}
0076833c  00 30 9a e5                                      ldr r3, [sl]
00768340  06 00 57 e1                                      cmp r7, r6
00768344  20 50 85 e2                                      add r5, r5, #0x20
00768348  12 00 00 ba                                      blt #0x768398
0076834c  05 c0 93 e7                                      ldr ip, [r3, r5]
00768350  05 40 83 e0                                      add r4, r3, r5
00768354  08 00 a0 e1                                      mov r0, r8
00768358  02 00 7c e3                                      cmn ip, #2
0076835c  01 60 86 e2                                      add r6, r6, #1
00768360  08 10 84 e2                                      add r1, r4, #8
00768364  1c 20 84 e2                                      add r2, r4, #0x1c
00768368  f4 ff ff 0a                                      beq #0x768340
0076836c  04 c0 94 e5                                      ldr ip, [r4, #4]
00768370  01 00 7c e3                                      cmn ip, #1
00768374  f1 ff ff 0a                                      beq #0x768340
00768378  36 ff ff eb                                      bl #0x768058
0076837c  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
00768380  01 00 73 e3                                      cmn r3, #1
00768384  eb ff ff 1a                                      bne #0x768338
00768388  14 00 94 e5                                      ldr r0, [r4, #0x14]
0076838c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00768390  e8 a9 ff eb                                      bl #0x752b38
00768394  e7 ff ff ea                                      b #0x768338
00768398  04 70 93 e5                                      ldr r7, [r3, #4]
0076839c  87 12 a0 e1                                      lsl r1, r7, #5
007683a0  03 00 a0 e1                                      mov r0, r3
007683a4  28 10 81 e2                                      add r1, r1, #0x28
007683a8  e2 a9 ff eb                                      bl #0x752b38
007683ac  04 30 9d e5                                      ldr r3, [sp, #4]
007683b0  08 00 a0 e1                                      mov r0, r8
007683b4  00 30 8a e5                                      str r3, [sl]
007683b8  00 30 a0 e3                                      mov r3, #0
007683bc  04 30 8d e5                                      str r3, [sp, #4]
007683c0  bb f4 ff eb                                      bl #0x7656b4
007683c4  0c d0 8d e2                                      add sp, sp, #0xc
007683c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007683cc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiEbNS_20stringi_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::check_expand()
; decoder-mode: arm
007683cc  00 30 90 e5                                      ldr r3, [r0]
007683d0  00 00 53 e3                                      cmp r3, #0
007683d4  07 00 00 0a                                      beq #0x7683f8
007683d8  04 10 93 e5                                      ldr r1, [r3, #4]
007683dc  00 30 93 e5                                      ldr r3, [r3]
007683e0  01 10 81 e2                                      add r1, r1, #1
007683e4  81 10 a0 e1                                      lsl r1, r1, #1
007683e8  83 30 83 e0                                      add r3, r3, r3, lsl #1
007683ec  01 00 53 e1                                      cmp r3, r1
007683f0  1e ff 2f d1                                      bxle lr
007683f4  96 ff ff ea                                      b #0x768254
007683f8  08 10 a0 e3                                      mov r1, #8
007683fc  94 ff ff ea                                      b #0x768254

; FUNCTION 0x00768400, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiEbNS_20stringi_hash_functorIS1_EEE3setERKS1_RKb
; demangled: gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set(gameswf::tu_stringi const&, bool const&)
; decoder-mode: arm
00768400  70 40 2d e9                                      push {r4, r5, r6, lr}
00768404  02 40 a0 e1                                      mov r4, r2
00768408  00 50 a0 e1                                      mov r5, r0
0076840c  01 60 a0 e1                                      mov r6, r1
00768410  77 f2 ff eb                                      bl #0x764df4
00768414  00 00 50 e3                                      cmp r0, #0
00768418  04 00 00 ba                                      blt #0x768430
0076841c  00 20 95 e5                                      ldr r2, [r5]
00768420  00 30 d4 e5                                      ldrb r3, [r4]
00768424  80 02 82 e0                                      add r0, r2, r0, lsl #5
00768428  24 30 c0 e5                                      strb r3, [r0, #0x24]
0076842c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00768430  05 00 a0 e1                                      mov r0, r5
00768434  06 10 a0 e1                                      mov r1, r6
00768438  04 20 a0 e1                                      mov r2, r4
0076843c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00768440  04 ff ff ea                                      b #0x768058
