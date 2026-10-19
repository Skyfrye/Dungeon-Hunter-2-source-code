; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076d930, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringEPNS_10tu_loadlibENS_19string_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >::clear()
; decoder-mode: arm
0076d930  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0076d934  00 80 a0 e1                                      mov r8, r0
0076d938  00 00 90 e5                                      ldr r0, [r0]
0076d93c  00 00 50 e3                                      cmp r0, #0
0076d940  21 00 00 0a                                      beq #0x76d9cc
0076d944  04 70 90 e5                                      ldr r7, [r0, #4]
0076d948  00 00 57 e3                                      cmp r7, #0
0076d94c  19 00 00 ba                                      blt #0x76d9b8
0076d950  00 50 a0 e3                                      mov r5, #0
0076d954  08 40 a0 e3                                      mov r4, #8
0076d958  01 90 e0 e3                                      mvn sb, #1
0076d95c  05 a0 a0 e1                                      mov sl, r5
0076d960  04 00 00 ea                                      b #0x76d978
0076d964  00 06 86 e8                                      stm r6, {sb, sl}
0076d968  00 00 98 e5                                      ldr r0, [r8]
0076d96c  05 00 57 e1                                      cmp r7, r5
0076d970  20 40 84 e2                                      add r4, r4, #0x20
0076d974  0e 00 00 ba                                      blt #0x76d9b4
0076d978  04 30 90 e7                                      ldr r3, [r0, r4]
0076d97c  01 50 85 e2                                      add r5, r5, #1
0076d980  04 60 80 e0                                      add r6, r0, r4
0076d984  02 00 73 e3                                      cmn r3, #2
0076d988  f7 ff ff 0a                                      beq #0x76d96c
0076d98c  04 30 96 e5                                      ldr r3, [r6, #4]
0076d990  01 00 73 e3                                      cmn r3, #1
0076d994  f4 ff ff 0a                                      beq #0x76d96c
0076d998  d8 30 d6 e1                                      ldrsb r3, [r6, #8]
0076d99c  01 00 73 e3                                      cmn r3, #1
0076d9a0  ef ff ff 1a                                      bne #0x76d964
0076d9a4  14 00 96 e5                                      ldr r0, [r6, #0x14]
0076d9a8  10 10 96 e5                                      ldr r1, [r6, #0x10]
0076d9ac  61 94 ff eb                                      bl #0x752b38
0076d9b0  eb ff ff ea                                      b #0x76d964
0076d9b4  04 70 90 e5                                      ldr r7, [r0, #4]
0076d9b8  87 12 a0 e1                                      lsl r1, r7, #5
0076d9bc  28 10 81 e2                                      add r1, r1, #0x28
0076d9c0  5c 94 ff eb                                      bl #0x752b38
0076d9c4  00 30 a0 e3                                      mov r3, #0
0076d9c8  00 30 88 e5                                      str r3, [r8]
0076d9cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007bac40, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZNK7gameswf4hashINS_9tu_stringEPNS_10tu_loadlibENS_19string_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >::find_index(gameswf::tu_string const&) const
; decoder-mode: arm
007bac40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007bac44  00 50 90 e5                                      ldr r5, [r0]
007bac48  01 70 a0 e1                                      mov r7, r1
007bac4c  00 00 55 e3                                      cmp r5, #0
007bac50  02 00 00 1a                                      bne #0x7bac60
007bac54  00 60 e0 e3                                      mvn r6, #0
007bac58  06 00 a0 e1                                      mov r0, r6
007bac5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007bac60  d0 a0 d1 e1                                      ldrsb sl, [r1]
007bac64  01 00 7a e3                                      cmn sl, #1
007bac68  01 10 a0 11                                      movne r1, r1
007bac6c  d1 30 d1 10                                      ldrsbne r3, [r1], #1
007bac70  04 30 97 05                                      ldreq r3, [r7, #4]
007bac74  0c 10 97 05                                      ldreq r1, [r7, #0xc]
007bac78  01 30 43 e2                                      sub r3, r3, #1
007bac7c  00 00 53 e3                                      cmp r3, #0
007bac80  05 45 01 d3                                      movwle r4, #0x1505
007bac84  08 00 00 da                                      ble #0x7bacac
007bac88  03 30 81 e0                                      add r3, r1, r3
007bac8c  05 45 01 e3                                      movw r4, #0x1505
007bac90  01 20 73 e5                                      ldrb r2, [r3, #-1]!
007bac94  84 42 84 e0                                      add r4, r4, r4, lsl #5
007bac98  01 00 53 e1                                      cmp r3, r1
007bac9c  02 40 24 e0                                      eor r4, r4, r2
007baca0  fa ff ff 1a                                      bne #0x7bac90
007baca4  01 00 74 e3                                      cmn r4, #1
007baca8  02 49 e0 03                                      mvneq r4, #0x8000
007bacac  04 30 95 e5                                      ldr r3, [r5, #4]
007bacb0  03 60 04 e0                                      and r6, r4, r3
007bacb4  06 81 a0 e1                                      lsl r8, r6, #2
007bacb8  01 80 88 e2                                      add r8, r8, #1
007bacbc  88 21 95 e7                                      ldr r2, [r5, r8, lsl #3]
007bacc0  88 81 85 e0                                      add r8, r5, r8, lsl #3
007bacc4  02 00 72 e3                                      cmn r2, #2
007bacc8  e1 ff ff 0a                                      beq #0x7bac54
007baccc  04 20 98 e5                                      ldr r2, [r8, #4]
007bacd0  01 00 72 e3                                      cmn r2, #1
007bacd4  02 00 00 0a                                      beq #0x7bace4
007bacd8  02 30 03 e0                                      and r3, r3, r2
007bacdc  06 00 53 e1                                      cmp r3, r6
007bace0  db ff ff 1a                                      bne #0x7bac54
007bace4  01 90 87 e2                                      add sb, r7, #1
007bace8  05 00 00 ea                                      b #0x7bad04
007bacec  00 60 98 e5                                      ldr r6, [r8]
007bacf0  01 00 76 e3                                      cmn r6, #1
007bacf4  d7 ff ff 0a                                      beq #0x7bac58
007bacf8  86 82 85 e0                                      add r8, r5, r6, lsl #5
007bacfc  08 80 88 e2                                      add r8, r8, #8
007bad00  04 20 98 e5                                      ldr r2, [r8, #4]
007bad04  02 00 54 e1                                      cmp r4, r2
007bad08  f7 ff ff 1a                                      bne #0x7bacec
007bad0c  08 30 88 e2                                      add r3, r8, #8
007bad10  03 00 57 e1                                      cmp r7, r3
007bad14  cf ff ff 0a                                      beq #0x7bac58
007bad18  d8 30 d8 e1                                      ldrsb r3, [r8, #8]
007bad1c  01 00 73 e3                                      cmn r3, #1
007bad20  09 00 88 12                                      addne r0, r8, #9
007bad24  14 00 98 05                                      ldreq r0, [r8, #0x14]
007bad28  01 00 7a e3                                      cmn sl, #1
007bad2c  09 10 a0 11                                      movne r1, sb
007bad30  0c 10 97 05                                      ldreq r1, [r7, #0xc]
007bad34  78 4d ed eb                                      bl #0x30e31c
007bad38  00 00 50 e3                                      cmp r0, #0
007bad3c  ea ff ff 1a                                      bne #0x7bacec
007bad40  c4 ff ff ea                                      b #0x7bac58

; FUNCTION 0x007bb580, declared_size=376, range_size=376, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringEPNS_10tu_loadlibENS_19string_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >::set_raw_capacity(int)
; decoder-mode: arm
007bb580  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007bb584  00 00 51 e3                                      cmp r1, #0
007bb588  0c d0 4d e2                                      sub sp, sp, #0xc
007bb58c  00 a0 a0 e1                                      mov sl, r0
007bb590  55 00 00 da                                      ble #0x7bb6ec
007bb594  01 00 41 e2                                      sub r0, r1, #1
007bb598  f1 4c ed eb                                      bl #0x30e964
007bb59c  44 4a ed eb                                      bl #0x30deb4
007bb5a0  18 12 07 e3                                      movw r1, #0x7218
007bb5a4  31 1f 43 e3                                      movt r1, #0x3f31
007bb5a8  b9 4d ed eb                                      bl #0x30ec94
007bb5ac  fe 15 a0 e3                                      mov r1, #0x3f800000
007bb5b0  7b 4d ed eb                                      bl #0x30eba4
007bb5b4  c4 4b ed eb                                      bl #0x30e4cc
007bb5b8  01 40 a0 e3                                      mov r4, #1
007bb5bc  14 40 a0 e1                                      lsl r4, r4, r0
007bb5c0  00 30 9a e5                                      ldr r3, [sl]
007bb5c4  04 00 54 e3                                      cmp r4, #4
007bb5c8  04 40 a0 b3                                      movlt r4, #4
007bb5cc  00 00 53 e3                                      cmp r3, #0
007bb5d0  03 00 00 0a                                      beq #0x7bb5e4
007bb5d4  04 30 93 e5                                      ldr r3, [r3, #4]
007bb5d8  01 30 83 e2                                      add r3, r3, #1
007bb5dc  04 00 53 e1                                      cmp r3, r4
007bb5e0  42 00 00 0a                                      beq #0x7bb6f0
007bb5e4  00 50 a0 e3                                      mov r5, #0
007bb5e8  84 02 a0 e1                                      lsl r0, r4, #5
007bb5ec  08 00 80 e2                                      add r0, r0, #8
007bb5f0  05 10 a0 e1                                      mov r1, r5
007bb5f4  04 50 8d e5                                      str r5, [sp, #4]
007bb5f8  67 5d fe eb                                      bl #0x752b9c
007bb5fc  04 00 8d e5                                      str r0, [sp, #4]
007bb600  00 50 80 e5                                      str r5, [r0]
007bb604  04 30 9d e5                                      ldr r3, [sp, #4]
007bb608  01 20 44 e2                                      sub r2, r4, #1
007bb60c  01 90 e0 e3                                      mvn sb, #1
007bb610  04 20 83 e5                                      str r2, [r3, #4]
007bb614  08 30 a0 e3                                      mov r3, #8
007bb618  04 20 9d e5                                      ldr r2, [sp, #4]
007bb61c  01 50 85 e2                                      add r5, r5, #1
007bb620  05 00 54 e1                                      cmp r4, r5
007bb624  03 90 82 e7                                      str sb, [r2, r3]
007bb628  20 30 83 e2                                      add r3, r3, #0x20
007bb62c  f9 ff ff ca                                      bgt #0x7bb618
007bb630  00 30 9a e5                                      ldr r3, [sl]
007bb634  00 00 53 e3                                      cmp r3, #0
007bb638  04 80 8d 02                                      addeq r8, sp, #4
007bb63c  25 00 00 0a                                      beq #0x7bb6d8
007bb640  04 70 93 e5                                      ldr r7, [r3, #4]
007bb644  00 00 57 e3                                      cmp r7, #0
007bb648  04 80 8d b2                                      addlt r8, sp, #4
007bb64c  1d 00 00 ba                                      blt #0x7bb6c8
007bb650  00 60 a0 e3                                      mov r6, #0
007bb654  08 50 a0 e3                                      mov r5, #8
007bb658  04 80 8d e2                                      add r8, sp, #4
007bb65c  06 b0 a0 e1                                      mov fp, r6
007bb660  04 00 00 ea                                      b #0x7bb678
007bb664  00 0a 84 e8                                      stm r4, {sb, fp}
007bb668  00 30 9a e5                                      ldr r3, [sl]
007bb66c  06 00 57 e1                                      cmp r7, r6
007bb670  20 50 85 e2                                      add r5, r5, #0x20
007bb674  12 00 00 ba                                      blt #0x7bb6c4
007bb678  05 c0 93 e7                                      ldr ip, [r3, r5]
007bb67c  05 40 83 e0                                      add r4, r3, r5
007bb680  08 00 a0 e1                                      mov r0, r8
007bb684  02 00 7c e3                                      cmn ip, #2
007bb688  01 60 86 e2                                      add r6, r6, #1
007bb68c  08 10 84 e2                                      add r1, r4, #8
007bb690  1c 20 84 e2                                      add r2, r4, #0x1c
007bb694  f4 ff ff 0a                                      beq #0x7bb66c
007bb698  04 c0 94 e5                                      ldr ip, [r4, #4]
007bb69c  01 00 7c e3                                      cmn ip, #1
007bb6a0  f1 ff ff 0a                                      beq #0x7bb66c
007bb6a4  20 00 00 eb                                      bl #0x7bb72c
007bb6a8  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
007bb6ac  01 00 73 e3                                      cmn r3, #1
007bb6b0  eb ff ff 1a                                      bne #0x7bb664
007bb6b4  14 00 94 e5                                      ldr r0, [r4, #0x14]
007bb6b8  10 10 94 e5                                      ldr r1, [r4, #0x10]
007bb6bc  1d 5d fe eb                                      bl #0x752b38
007bb6c0  e7 ff ff ea                                      b #0x7bb664
007bb6c4  04 70 93 e5                                      ldr r7, [r3, #4]
007bb6c8  87 12 a0 e1                                      lsl r1, r7, #5
007bb6cc  03 00 a0 e1                                      mov r0, r3
007bb6d0  28 10 81 e2                                      add r1, r1, #0x28
007bb6d4  17 5d fe eb                                      bl #0x752b38
007bb6d8  04 30 9d e5                                      ldr r3, [sp, #4]
007bb6dc  08 00 a0 e1                                      mov r0, r8
007bb6e0  00 30 8a e5                                      str r3, [sl]
007bb6e4  00 30 a0 e3                                      mov r3, #0
007bb6e8  04 30 8d e5                                      str r3, [sp, #4]
007bb6ec  8f c8 fe eb                                      bl #0x76d930
007bb6f0  0c d0 8d e2                                      add sp, sp, #0xc
007bb6f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007bb6f8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringEPNS_10tu_loadlibENS_19string_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >::check_expand()
; decoder-mode: arm
007bb6f8  00 30 90 e5                                      ldr r3, [r0]
007bb6fc  00 00 53 e3                                      cmp r3, #0
007bb700  07 00 00 0a                                      beq #0x7bb724
007bb704  04 10 93 e5                                      ldr r1, [r3, #4]
007bb708  00 30 93 e5                                      ldr r3, [r3]
007bb70c  01 10 81 e2                                      add r1, r1, #1
007bb710  81 10 a0 e1                                      lsl r1, r1, #1
007bb714  83 30 83 e0                                      add r3, r3, r3, lsl #1
007bb718  01 00 53 e1                                      cmp r3, r1
007bb71c  1e ff 2f d1                                      bxle lr
007bb720  96 ff ff ea                                      b #0x7bb580
007bb724  08 10 a0 e3                                      mov r1, #8
007bb728  94 ff ff ea                                      b #0x7bb580

; FUNCTION 0x007bb72c, declared_size=440, range_size=440, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringEPNS_10tu_loadlibENS_19string_hash_functorIS1_EEE3addERKS1_RKS3_
; demangled: gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >::add(gameswf::tu_string const&, gameswf::tu_loadlib* const&)
; decoder-mode: arm
007bb72c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007bb730  00 60 a0 e1                                      mov r6, r0
007bb734  0c d0 4d e2                                      sub sp, sp, #0xc
007bb738  01 40 a0 e1                                      mov r4, r1
007bb73c  04 20 8d e5                                      str r2, [sp, #4]
007bb740  ec ff ff eb                                      bl #0x7bb6f8
007bb744  00 30 96 e5                                      ldr r3, [r6]
007bb748  00 20 93 e5                                      ldr r2, [r3]
007bb74c  01 20 82 e2                                      add r2, r2, #1
007bb750  00 20 83 e5                                      str r2, [r3]
007bb754  d0 30 d4 e1                                      ldrsb r3, [r4]
007bb758  01 00 73 e3                                      cmn r3, #1
007bb75c  04 30 94 05                                      ldreq r3, [r4, #4]
007bb760  01 30 43 12                                      subne r3, r3, #1
007bb764  01 10 84 12                                      addne r1, r4, #1
007bb768  01 30 43 02                                      subeq r3, r3, #1
007bb76c  0c 10 94 05                                      ldreq r1, [r4, #0xc]
007bb770  00 00 53 e3                                      cmp r3, #0
007bb774  05 55 01 d3                                      movwle r5, #0x1505
007bb778  08 00 00 da                                      ble #0x7bb7a0
007bb77c  03 30 81 e0                                      add r3, r1, r3
007bb780  05 55 01 e3                                      movw r5, #0x1505
007bb784  01 20 73 e5                                      ldrb r2, [r3, #-1]!
007bb788  85 52 85 e0                                      add r5, r5, r5, lsl #5
007bb78c  01 00 53 e1                                      cmp r3, r1
007bb790  02 50 25 e0                                      eor r5, r5, r2
007bb794  fa ff ff 1a                                      bne #0x7bb784
007bb798  01 00 75 e3                                      cmn r5, #1
007bb79c  02 59 e0 03                                      mvneq r5, #0x8000
007bb7a0  00 60 96 e5                                      ldr r6, [r6]
007bb7a4  04 30 96 e5                                      ldr r3, [r6, #4]
007bb7a8  03 20 05 e0                                      and r2, r5, r3
007bb7ac  02 b1 a0 e1                                      lsl fp, r2, #2
007bb7b0  01 b0 8b e2                                      add fp, fp, #1
007bb7b4  8b 11 96 e7                                      ldr r1, [r6, fp, lsl #3]
007bb7b8  8b 91 86 e0                                      add sb, r6, fp, lsl #3
007bb7bc  02 00 71 e3                                      cmn r1, #2
007bb7c0  00 30 e0 03                                      mvneq r3, #0
007bb7c4  8b 31 86 07                                      streq r3, [r6, fp, lsl #3]
007bb7c8  2b 00 00 0a                                      beq #0x7bb87c
007bb7cc  04 c0 99 e5                                      ldr ip, [sb, #4]
007bb7d0  01 00 7c e3                                      cmn ip, #1
007bb7d4  02 70 a0 11                                      movne r7, r2
007bb7d8  27 00 00 0a                                      beq #0x7bb87c
007bb7dc  01 70 87 e2                                      add r7, r7, #1
007bb7e0  03 70 07 e0                                      and r7, r7, r3
007bb7e4  07 81 a0 e1                                      lsl r8, r7, #2
007bb7e8  01 80 88 e2                                      add r8, r8, #1
007bb7ec  88 01 96 e7                                      ldr r0, [r6, r8, lsl #3]
007bb7f0  88 81 86 e0                                      add r8, r6, r8, lsl #3
007bb7f4  02 00 70 e3                                      cmn r0, #2
007bb7f8  f7 ff ff 1a                                      bne #0x7bb7dc
007bb7fc  0c 30 03 e0                                      and r3, r3, ip
007bb800  02 00 53 e1                                      cmp r3, r2
007bb804  24 00 00 0a                                      beq #0x7bb89c
007bb808  03 a1 a0 e1                                      lsl sl, r3, #2
007bb80c  01 a0 8a e2                                      add sl, sl, #1
007bb810  8a 31 96 e7                                      ldr r3, [r6, sl, lsl #3]
007bb814  8a a1 86 e0                                      add sl, r6, sl, lsl #3
007bb818  02 00 53 e1                                      cmp r3, r2
007bb81c  f9 ff ff 1a                                      bne #0x7bb808
007bb820  00 10 88 e5                                      str r1, [r8]
007bb824  04 20 99 e5                                      ldr r2, [sb, #4]
007bb828  08 30 89 e2                                      add r3, sb, #8
007bb82c  03 10 a0 e1                                      mov r1, r3
007bb830  04 20 88 e5                                      str r2, [r8, #4]
007bb834  08 00 88 e2                                      add r0, r8, #8
007bb838  00 30 8d e5                                      str r3, [sp]
007bb83c  fa 5d fe eb                                      bl #0x75302c
007bb840  00 30 9d e5                                      ldr r3, [sp]
007bb844  1c 20 99 e5                                      ldr r2, [sb, #0x1c]
007bb848  04 10 a0 e1                                      mov r1, r4
007bb84c  03 00 a0 e1                                      mov r0, r3
007bb850  1c 20 88 e5                                      str r2, [r8, #0x1c]
007bb854  00 70 8a e5                                      str r7, [sl]
007bb858  bc 5d fe eb                                      bl #0x752f50
007bb85c  04 20 9d e5                                      ldr r2, [sp, #4]
007bb860  00 30 92 e5                                      ldr r3, [r2]
007bb864  04 50 89 e5                                      str r5, [sb, #4]
007bb868  1c 30 89 e5                                      str r3, [sb, #0x1c]
007bb86c  00 30 e0 e3                                      mvn r3, #0
007bb870  8b 31 86 e7                                      str r3, [r6, fp, lsl #3]
007bb874  0c d0 8d e2                                      add sp, sp, #0xc
007bb878  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007bb87c  04 50 89 e5                                      str r5, [sb, #4]
007bb880  04 10 a0 e1                                      mov r1, r4
007bb884  08 00 89 e2                                      add r0, sb, #8
007bb888  e7 5d fe eb                                      bl #0x75302c
007bb88c  04 20 9d e5                                      ldr r2, [sp, #4]
007bb890  00 30 92 e5                                      ldr r3, [r2]
007bb894  1c 30 89 e5                                      str r3, [sb, #0x1c]
007bb898  f5 ff ff ea                                      b #0x7bb874
007bb89c  00 10 88 e5                                      str r1, [r8]
007bb8a0  04 30 99 e5                                      ldr r3, [sb, #4]
007bb8a4  08 a0 89 e2                                      add sl, sb, #8
007bb8a8  0a 10 a0 e1                                      mov r1, sl
007bb8ac  04 30 88 e5                                      str r3, [r8, #4]
007bb8b0  08 00 88 e2                                      add r0, r8, #8
007bb8b4  dc 5d fe eb                                      bl #0x75302c
007bb8b8  1c 30 99 e5                                      ldr r3, [sb, #0x1c]
007bb8bc  0a 00 a0 e1                                      mov r0, sl
007bb8c0  04 10 a0 e1                                      mov r1, r4
007bb8c4  1c 30 88 e5                                      str r3, [r8, #0x1c]
007bb8c8  a0 5d fe eb                                      bl #0x752f50
007bb8cc  04 20 9d e5                                      ldr r2, [sp, #4]
007bb8d0  00 30 92 e5                                      ldr r3, [r2]
007bb8d4  1c 30 89 e5                                      str r3, [sb, #0x1c]
007bb8d8  8b 71 86 e7                                      str r7, [r6, fp, lsl #3]
007bb8dc  04 50 89 e5                                      str r5, [sb, #4]
007bb8e0  e3 ff ff ea                                      b #0x7bb874
