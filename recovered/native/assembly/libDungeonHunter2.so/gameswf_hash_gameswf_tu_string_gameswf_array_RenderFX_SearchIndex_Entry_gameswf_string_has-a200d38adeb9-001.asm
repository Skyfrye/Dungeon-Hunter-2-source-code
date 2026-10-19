; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a831c, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZNK7gameswf4hashINS_9tu_stringEPNS_5arrayIN8RenderFX11SearchIndex5EntryEEENS_19string_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >::find_index(gameswf::tu_string const&) const
; decoder-mode: arm
007a831c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007a8320  00 50 90 e5                                      ldr r5, [r0]
007a8324  01 70 a0 e1                                      mov r7, r1
007a8328  00 00 55 e3                                      cmp r5, #0
007a832c  02 00 00 1a                                      bne #0x7a833c
007a8330  00 60 e0 e3                                      mvn r6, #0
007a8334  06 00 a0 e1                                      mov r0, r6
007a8338  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007a833c  d0 a0 d1 e1                                      ldrsb sl, [r1]
007a8340  01 00 7a e3                                      cmn sl, #1
007a8344  01 10 a0 11                                      movne r1, r1
007a8348  d1 30 d1 10                                      ldrsbne r3, [r1], #1
007a834c  04 30 97 05                                      ldreq r3, [r7, #4]
007a8350  0c 10 97 05                                      ldreq r1, [r7, #0xc]
007a8354  01 30 43 e2                                      sub r3, r3, #1
007a8358  00 00 53 e3                                      cmp r3, #0
007a835c  05 45 01 d3                                      movwle r4, #0x1505
007a8360  08 00 00 da                                      ble #0x7a8388
007a8364  03 30 81 e0                                      add r3, r1, r3
007a8368  05 45 01 e3                                      movw r4, #0x1505
007a836c  01 20 73 e5                                      ldrb r2, [r3, #-1]!
007a8370  84 42 84 e0                                      add r4, r4, r4, lsl #5
007a8374  01 00 53 e1                                      cmp r3, r1
007a8378  02 40 24 e0                                      eor r4, r4, r2
007a837c  fa ff ff 1a                                      bne #0x7a836c
007a8380  01 00 74 e3                                      cmn r4, #1
007a8384  02 49 e0 03                                      mvneq r4, #0x8000
007a8388  04 30 95 e5                                      ldr r3, [r5, #4]
007a838c  03 60 04 e0                                      and r6, r4, r3
007a8390  06 81 a0 e1                                      lsl r8, r6, #2
007a8394  01 80 88 e2                                      add r8, r8, #1
007a8398  88 21 95 e7                                      ldr r2, [r5, r8, lsl #3]
007a839c  88 81 85 e0                                      add r8, r5, r8, lsl #3
007a83a0  02 00 72 e3                                      cmn r2, #2
007a83a4  e1 ff ff 0a                                      beq #0x7a8330
007a83a8  04 20 98 e5                                      ldr r2, [r8, #4]
007a83ac  01 00 72 e3                                      cmn r2, #1
007a83b0  02 00 00 0a                                      beq #0x7a83c0
007a83b4  02 30 03 e0                                      and r3, r3, r2
007a83b8  06 00 53 e1                                      cmp r3, r6
007a83bc  db ff ff 1a                                      bne #0x7a8330
007a83c0  01 90 87 e2                                      add sb, r7, #1
007a83c4  05 00 00 ea                                      b #0x7a83e0
007a83c8  00 60 98 e5                                      ldr r6, [r8]
007a83cc  01 00 76 e3                                      cmn r6, #1
007a83d0  d7 ff ff 0a                                      beq #0x7a8334
007a83d4  86 82 85 e0                                      add r8, r5, r6, lsl #5
007a83d8  08 80 88 e2                                      add r8, r8, #8
007a83dc  04 20 98 e5                                      ldr r2, [r8, #4]
007a83e0  02 00 54 e1                                      cmp r4, r2
007a83e4  f7 ff ff 1a                                      bne #0x7a83c8
007a83e8  08 30 88 e2                                      add r3, r8, #8
007a83ec  03 00 57 e1                                      cmp r7, r3
007a83f0  cf ff ff 0a                                      beq #0x7a8334
007a83f4  d8 30 d8 e1                                      ldrsb r3, [r8, #8]
007a83f8  01 00 73 e3                                      cmn r3, #1
007a83fc  09 00 88 12                                      addne r0, r8, #9
007a8400  14 00 98 05                                      ldreq r0, [r8, #0x14]
007a8404  01 00 7a e3                                      cmn sl, #1
007a8408  09 10 a0 11                                      movne r1, sb
007a840c  0c 10 97 05                                      ldreq r1, [r7, #0xc]
007a8410  c1 97 ed eb                                      bl #0x30e31c
007a8414  00 00 50 e3                                      cmp r0, #0
007a8418  ea ff ff 1a                                      bne #0x7a83c8
007a841c  c4 ff ff ea                                      b #0x7a8334

; FUNCTION 0x007aa60c, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringEPNS_5arrayIN8RenderFX11SearchIndex5EntryEEENS_19string_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >::clear()
; decoder-mode: arm
007aa60c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007aa610  00 80 a0 e1                                      mov r8, r0
007aa614  00 00 90 e5                                      ldr r0, [r0]
007aa618  00 00 50 e3                                      cmp r0, #0
007aa61c  21 00 00 0a                                      beq #0x7aa6a8
007aa620  04 70 90 e5                                      ldr r7, [r0, #4]
007aa624  00 00 57 e3                                      cmp r7, #0
007aa628  19 00 00 ba                                      blt #0x7aa694
007aa62c  00 50 a0 e3                                      mov r5, #0
007aa630  08 40 a0 e3                                      mov r4, #8
007aa634  01 90 e0 e3                                      mvn sb, #1
007aa638  05 a0 a0 e1                                      mov sl, r5
007aa63c  04 00 00 ea                                      b #0x7aa654
007aa640  00 06 86 e8                                      stm r6, {sb, sl}
007aa644  00 00 98 e5                                      ldr r0, [r8]
007aa648  05 00 57 e1                                      cmp r7, r5
007aa64c  20 40 84 e2                                      add r4, r4, #0x20
007aa650  0e 00 00 ba                                      blt #0x7aa690
007aa654  04 30 90 e7                                      ldr r3, [r0, r4]
007aa658  01 50 85 e2                                      add r5, r5, #1
007aa65c  04 60 80 e0                                      add r6, r0, r4
007aa660  02 00 73 e3                                      cmn r3, #2
007aa664  f7 ff ff 0a                                      beq #0x7aa648
007aa668  04 30 96 e5                                      ldr r3, [r6, #4]
007aa66c  01 00 73 e3                                      cmn r3, #1
007aa670  f4 ff ff 0a                                      beq #0x7aa648
007aa674  d8 30 d6 e1                                      ldrsb r3, [r6, #8]
007aa678  01 00 73 e3                                      cmn r3, #1
007aa67c  ef ff ff 1a                                      bne #0x7aa640
007aa680  14 00 96 e5                                      ldr r0, [r6, #0x14]
007aa684  10 10 96 e5                                      ldr r1, [r6, #0x10]
007aa688  2a a1 fe eb                                      bl #0x752b38
007aa68c  eb ff ff ea                                      b #0x7aa640
007aa690  04 70 90 e5                                      ldr r7, [r0, #4]
007aa694  87 12 a0 e1                                      lsl r1, r7, #5
007aa698  28 10 81 e2                                      add r1, r1, #0x28
007aa69c  25 a1 fe eb                                      bl #0x752b38
007aa6a0  00 30 a0 e3                                      mov r3, #0
007aa6a4  00 30 88 e5                                      str r3, [r8]
007aa6a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007aa8f0, declared_size=376, range_size=376, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringEPNS_5arrayIN8RenderFX11SearchIndex5EntryEEENS_19string_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >::set_raw_capacity(int)
; decoder-mode: arm
007aa8f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007aa8f4  00 00 51 e3                                      cmp r1, #0
007aa8f8  0c d0 4d e2                                      sub sp, sp, #0xc
007aa8fc  00 a0 a0 e1                                      mov sl, r0
007aa900  55 00 00 da                                      ble #0x7aaa5c
007aa904  01 00 41 e2                                      sub r0, r1, #1
007aa908  15 90 ed eb                                      bl #0x30e964
007aa90c  68 8d ed eb                                      bl #0x30deb4
007aa910  18 12 07 e3                                      movw r1, #0x7218
007aa914  31 1f 43 e3                                      movt r1, #0x3f31
007aa918  dd 90 ed eb                                      bl #0x30ec94
007aa91c  fe 15 a0 e3                                      mov r1, #0x3f800000
007aa920  9f 90 ed eb                                      bl #0x30eba4
007aa924  e8 8e ed eb                                      bl #0x30e4cc
007aa928  01 40 a0 e3                                      mov r4, #1
007aa92c  14 40 a0 e1                                      lsl r4, r4, r0
007aa930  00 30 9a e5                                      ldr r3, [sl]
007aa934  04 00 54 e3                                      cmp r4, #4
007aa938  04 40 a0 b3                                      movlt r4, #4
007aa93c  00 00 53 e3                                      cmp r3, #0
007aa940  03 00 00 0a                                      beq #0x7aa954
007aa944  04 30 93 e5                                      ldr r3, [r3, #4]
007aa948  01 30 83 e2                                      add r3, r3, #1
007aa94c  04 00 53 e1                                      cmp r3, r4
007aa950  42 00 00 0a                                      beq #0x7aaa60
007aa954  00 50 a0 e3                                      mov r5, #0
007aa958  84 02 a0 e1                                      lsl r0, r4, #5
007aa95c  08 00 80 e2                                      add r0, r0, #8
007aa960  05 10 a0 e1                                      mov r1, r5
007aa964  04 50 8d e5                                      str r5, [sp, #4]
007aa968  8b a0 fe eb                                      bl #0x752b9c
007aa96c  04 00 8d e5                                      str r0, [sp, #4]
007aa970  00 50 80 e5                                      str r5, [r0]
007aa974  04 30 9d e5                                      ldr r3, [sp, #4]
007aa978  01 20 44 e2                                      sub r2, r4, #1
007aa97c  01 90 e0 e3                                      mvn sb, #1
007aa980  04 20 83 e5                                      str r2, [r3, #4]
007aa984  08 30 a0 e3                                      mov r3, #8
007aa988  04 20 9d e5                                      ldr r2, [sp, #4]
007aa98c  01 50 85 e2                                      add r5, r5, #1
007aa990  05 00 54 e1                                      cmp r4, r5
007aa994  03 90 82 e7                                      str sb, [r2, r3]
007aa998  20 30 83 e2                                      add r3, r3, #0x20
007aa99c  f9 ff ff ca                                      bgt #0x7aa988
007aa9a0  00 30 9a e5                                      ldr r3, [sl]
007aa9a4  00 00 53 e3                                      cmp r3, #0
007aa9a8  04 80 8d 02                                      addeq r8, sp, #4
007aa9ac  25 00 00 0a                                      beq #0x7aaa48
007aa9b0  04 70 93 e5                                      ldr r7, [r3, #4]
007aa9b4  00 00 57 e3                                      cmp r7, #0
007aa9b8  04 80 8d b2                                      addlt r8, sp, #4
007aa9bc  1d 00 00 ba                                      blt #0x7aaa38
007aa9c0  00 60 a0 e3                                      mov r6, #0
007aa9c4  08 50 a0 e3                                      mov r5, #8
007aa9c8  04 80 8d e2                                      add r8, sp, #4
007aa9cc  06 b0 a0 e1                                      mov fp, r6
007aa9d0  04 00 00 ea                                      b #0x7aa9e8
007aa9d4  00 0a 84 e8                                      stm r4, {sb, fp}
007aa9d8  00 30 9a e5                                      ldr r3, [sl]
007aa9dc  06 00 57 e1                                      cmp r7, r6
007aa9e0  20 50 85 e2                                      add r5, r5, #0x20
007aa9e4  12 00 00 ba                                      blt #0x7aaa34
007aa9e8  05 c0 93 e7                                      ldr ip, [r3, r5]
007aa9ec  05 40 83 e0                                      add r4, r3, r5
007aa9f0  08 00 a0 e1                                      mov r0, r8
007aa9f4  02 00 7c e3                                      cmn ip, #2
007aa9f8  01 60 86 e2                                      add r6, r6, #1
007aa9fc  08 10 84 e2                                      add r1, r4, #8
007aaa00  1c 20 84 e2                                      add r2, r4, #0x1c
007aaa04  f4 ff ff 0a                                      beq #0x7aa9dc
007aaa08  04 c0 94 e5                                      ldr ip, [r4, #4]
007aaa0c  01 00 7c e3                                      cmn ip, #1
007aaa10  f1 ff ff 0a                                      beq #0x7aa9dc
007aaa14  20 00 00 eb                                      bl #0x7aaa9c
007aaa18  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
007aaa1c  01 00 73 e3                                      cmn r3, #1
007aaa20  eb ff ff 1a                                      bne #0x7aa9d4
007aaa24  14 00 94 e5                                      ldr r0, [r4, #0x14]
007aaa28  10 10 94 e5                                      ldr r1, [r4, #0x10]
007aaa2c  41 a0 fe eb                                      bl #0x752b38
007aaa30  e7 ff ff ea                                      b #0x7aa9d4
007aaa34  04 70 93 e5                                      ldr r7, [r3, #4]
007aaa38  87 12 a0 e1                                      lsl r1, r7, #5
007aaa3c  03 00 a0 e1                                      mov r0, r3
007aaa40  28 10 81 e2                                      add r1, r1, #0x28
007aaa44  3b a0 fe eb                                      bl #0x752b38
007aaa48  04 30 9d e5                                      ldr r3, [sp, #4]
007aaa4c  08 00 a0 e1                                      mov r0, r8
007aaa50  00 30 8a e5                                      str r3, [sl]
007aaa54  00 30 a0 e3                                      mov r3, #0
007aaa58  04 30 8d e5                                      str r3, [sp, #4]
007aaa5c  ea fe ff eb                                      bl #0x7aa60c
007aaa60  0c d0 8d e2                                      add sp, sp, #0xc
007aaa64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007aaa68, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringEPNS_5arrayIN8RenderFX11SearchIndex5EntryEEENS_19string_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >::check_expand()
; decoder-mode: arm
007aaa68  00 30 90 e5                                      ldr r3, [r0]
007aaa6c  00 00 53 e3                                      cmp r3, #0
007aaa70  07 00 00 0a                                      beq #0x7aaa94
007aaa74  04 10 93 e5                                      ldr r1, [r3, #4]
007aaa78  00 30 93 e5                                      ldr r3, [r3]
007aaa7c  01 10 81 e2                                      add r1, r1, #1
007aaa80  81 10 a0 e1                                      lsl r1, r1, #1
007aaa84  83 30 83 e0                                      add r3, r3, r3, lsl #1
007aaa88  01 00 53 e1                                      cmp r3, r1
007aaa8c  1e ff 2f d1                                      bxle lr
007aaa90  96 ff ff ea                                      b #0x7aa8f0
007aaa94  08 10 a0 e3                                      mov r1, #8
007aaa98  94 ff ff ea                                      b #0x7aa8f0

; FUNCTION 0x007aaa9c, declared_size=440, range_size=440, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringEPNS_5arrayIN8RenderFX11SearchIndex5EntryEEENS_19string_hash_functorIS1_EEE3addERKS1_RKS7_
; demangled: gameswf::hash<gameswf::tu_string, gameswf::array<RenderFX::SearchIndex::Entry>*, gameswf::string_hash_functor<gameswf::tu_string> >::add(gameswf::tu_string const&, gameswf::array<RenderFX::SearchIndex::Entry>* const&)
; decoder-mode: arm
007aaa9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007aaaa0  00 60 a0 e1                                      mov r6, r0
007aaaa4  0c d0 4d e2                                      sub sp, sp, #0xc
007aaaa8  01 40 a0 e1                                      mov r4, r1
007aaaac  04 20 8d e5                                      str r2, [sp, #4]
007aaab0  ec ff ff eb                                      bl #0x7aaa68
007aaab4  00 30 96 e5                                      ldr r3, [r6]
007aaab8  00 20 93 e5                                      ldr r2, [r3]
007aaabc  01 20 82 e2                                      add r2, r2, #1
007aaac0  00 20 83 e5                                      str r2, [r3]
007aaac4  d0 30 d4 e1                                      ldrsb r3, [r4]
007aaac8  01 00 73 e3                                      cmn r3, #1
007aaacc  04 30 94 05                                      ldreq r3, [r4, #4]
007aaad0  01 30 43 12                                      subne r3, r3, #1
007aaad4  01 10 84 12                                      addne r1, r4, #1
007aaad8  01 30 43 02                                      subeq r3, r3, #1
007aaadc  0c 10 94 05                                      ldreq r1, [r4, #0xc]
007aaae0  00 00 53 e3                                      cmp r3, #0
007aaae4  05 55 01 d3                                      movwle r5, #0x1505
007aaae8  08 00 00 da                                      ble #0x7aab10
007aaaec  03 30 81 e0                                      add r3, r1, r3
007aaaf0  05 55 01 e3                                      movw r5, #0x1505
007aaaf4  01 20 73 e5                                      ldrb r2, [r3, #-1]!
007aaaf8  85 52 85 e0                                      add r5, r5, r5, lsl #5
007aaafc  01 00 53 e1                                      cmp r3, r1
007aab00  02 50 25 e0                                      eor r5, r5, r2
007aab04  fa ff ff 1a                                      bne #0x7aaaf4
007aab08  01 00 75 e3                                      cmn r5, #1
007aab0c  02 59 e0 03                                      mvneq r5, #0x8000
007aab10  00 60 96 e5                                      ldr r6, [r6]
007aab14  04 30 96 e5                                      ldr r3, [r6, #4]
007aab18  03 20 05 e0                                      and r2, r5, r3
007aab1c  02 b1 a0 e1                                      lsl fp, r2, #2
007aab20  01 b0 8b e2                                      add fp, fp, #1
007aab24  8b 11 96 e7                                      ldr r1, [r6, fp, lsl #3]
007aab28  8b 91 86 e0                                      add sb, r6, fp, lsl #3
007aab2c  02 00 71 e3                                      cmn r1, #2
007aab30  00 30 e0 03                                      mvneq r3, #0
007aab34  8b 31 86 07                                      streq r3, [r6, fp, lsl #3]
007aab38  2b 00 00 0a                                      beq #0x7aabec
007aab3c  04 c0 99 e5                                      ldr ip, [sb, #4]
007aab40  01 00 7c e3                                      cmn ip, #1
007aab44  02 70 a0 11                                      movne r7, r2
007aab48  27 00 00 0a                                      beq #0x7aabec
007aab4c  01 70 87 e2                                      add r7, r7, #1
007aab50  03 70 07 e0                                      and r7, r7, r3
007aab54  07 81 a0 e1                                      lsl r8, r7, #2
007aab58  01 80 88 e2                                      add r8, r8, #1
007aab5c  88 01 96 e7                                      ldr r0, [r6, r8, lsl #3]
007aab60  88 81 86 e0                                      add r8, r6, r8, lsl #3
007aab64  02 00 70 e3                                      cmn r0, #2
007aab68  f7 ff ff 1a                                      bne #0x7aab4c
007aab6c  0c 30 03 e0                                      and r3, r3, ip
007aab70  02 00 53 e1                                      cmp r3, r2
007aab74  24 00 00 0a                                      beq #0x7aac0c
007aab78  03 a1 a0 e1                                      lsl sl, r3, #2
007aab7c  01 a0 8a e2                                      add sl, sl, #1
007aab80  8a 31 96 e7                                      ldr r3, [r6, sl, lsl #3]
007aab84  8a a1 86 e0                                      add sl, r6, sl, lsl #3
007aab88  02 00 53 e1                                      cmp r3, r2
007aab8c  f9 ff ff 1a                                      bne #0x7aab78
007aab90  00 10 88 e5                                      str r1, [r8]
007aab94  04 20 99 e5                                      ldr r2, [sb, #4]
007aab98  08 30 89 e2                                      add r3, sb, #8
007aab9c  03 10 a0 e1                                      mov r1, r3
007aaba0  04 20 88 e5                                      str r2, [r8, #4]
007aaba4  08 00 88 e2                                      add r0, r8, #8
007aaba8  00 30 8d e5                                      str r3, [sp]
007aabac  1e a1 fe eb                                      bl #0x75302c
007aabb0  00 30 9d e5                                      ldr r3, [sp]
007aabb4  1c 20 99 e5                                      ldr r2, [sb, #0x1c]
007aabb8  04 10 a0 e1                                      mov r1, r4
007aabbc  03 00 a0 e1                                      mov r0, r3
007aabc0  1c 20 88 e5                                      str r2, [r8, #0x1c]
007aabc4  00 70 8a e5                                      str r7, [sl]
007aabc8  e0 a0 fe eb                                      bl #0x752f50
007aabcc  04 20 9d e5                                      ldr r2, [sp, #4]
007aabd0  00 30 92 e5                                      ldr r3, [r2]
007aabd4  04 50 89 e5                                      str r5, [sb, #4]
007aabd8  1c 30 89 e5                                      str r3, [sb, #0x1c]
007aabdc  00 30 e0 e3                                      mvn r3, #0
007aabe0  8b 31 86 e7                                      str r3, [r6, fp, lsl #3]
007aabe4  0c d0 8d e2                                      add sp, sp, #0xc
007aabe8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007aabec  04 50 89 e5                                      str r5, [sb, #4]
007aabf0  04 10 a0 e1                                      mov r1, r4
007aabf4  08 00 89 e2                                      add r0, sb, #8
007aabf8  0b a1 fe eb                                      bl #0x75302c
007aabfc  04 20 9d e5                                      ldr r2, [sp, #4]
007aac00  00 30 92 e5                                      ldr r3, [r2]
007aac04  1c 30 89 e5                                      str r3, [sb, #0x1c]
007aac08  f5 ff ff ea                                      b #0x7aabe4
007aac0c  00 10 88 e5                                      str r1, [r8]
007aac10  04 30 99 e5                                      ldr r3, [sb, #4]
007aac14  08 a0 89 e2                                      add sl, sb, #8
007aac18  0a 10 a0 e1                                      mov r1, sl
007aac1c  04 30 88 e5                                      str r3, [r8, #4]
007aac20  08 00 88 e2                                      add r0, r8, #8
007aac24  00 a1 fe eb                                      bl #0x75302c
007aac28  1c 30 99 e5                                      ldr r3, [sb, #0x1c]
007aac2c  0a 00 a0 e1                                      mov r0, sl
007aac30  04 10 a0 e1                                      mov r1, r4
007aac34  1c 30 88 e5                                      str r3, [r8, #0x1c]
007aac38  c4 a0 fe eb                                      bl #0x752f50
007aac3c  04 20 9d e5                                      ldr r2, [sp, #4]
007aac40  00 30 92 e5                                      ldr r3, [r2]
007aac44  1c 30 89 e5                                      str r3, [sb, #0x1c]
007aac48  8b 71 86 e7                                      str r7, [r6, fp, lsl #3]
007aac4c  04 50 89 e5                                      str r5, [sb, #4]
007aac50  e3 ff ff ea                                      b #0x7aabe4
