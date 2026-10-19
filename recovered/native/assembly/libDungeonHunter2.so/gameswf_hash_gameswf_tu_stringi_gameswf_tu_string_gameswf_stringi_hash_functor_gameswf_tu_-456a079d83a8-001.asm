; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078c600, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9tu_stringENS_20stringi_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::clear()
; decoder-mode: arm
0078c600  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078c604  00 80 a0 e1                                      mov r8, r0
0078c608  00 00 90 e5                                      ldr r0, [r0]
0078c60c  00 00 50 e3                                      cmp r0, #0
0078c610  2c 00 00 0a                                      beq #0x78c6c8
0078c614  04 70 90 e5                                      ldr r7, [r0, #4]
0078c618  00 00 57 e3                                      cmp r7, #0
0078c61c  22 00 00 ba                                      blt #0x78c6ac
0078c620  00 60 a0 e3                                      mov r6, #0
0078c624  08 40 a0 e3                                      mov r4, #8
0078c628  01 90 e0 e3                                      mvn sb, #1
0078c62c  06 a0 a0 e1                                      mov sl, r6
0078c630  07 00 00 ea                                      b #0x78c654
0078c634  dc 31 d5 e1                                      ldrsb r3, [r5, #0x1c]
0078c638  01 00 73 e3                                      cmn r3, #1
0078c63c  15 00 00 0a                                      beq #0x78c698
0078c640  00 06 85 e8                                      stm r5, {sb, sl}
0078c644  00 00 98 e5                                      ldr r0, [r8]
0078c648  06 00 57 e1                                      cmp r7, r6
0078c64c  30 40 84 e2                                      add r4, r4, #0x30
0078c650  14 00 00 ba                                      blt #0x78c6a8
0078c654  04 30 90 e7                                      ldr r3, [r0, r4]
0078c658  01 60 86 e2                                      add r6, r6, #1
0078c65c  04 50 80 e0                                      add r5, r0, r4
0078c660  02 00 73 e3                                      cmn r3, #2
0078c664  f7 ff ff 0a                                      beq #0x78c648
0078c668  04 30 95 e5                                      ldr r3, [r5, #4]
0078c66c  01 00 73 e3                                      cmn r3, #1
0078c670  f4 ff ff 0a                                      beq #0x78c648
0078c674  d8 30 d5 e1                                      ldrsb r3, [r5, #8]
0078c678  01 00 73 e3                                      cmn r3, #1
0078c67c  ec ff ff 1a                                      bne #0x78c634
0078c680  14 00 95 e5                                      ldr r0, [r5, #0x14]
0078c684  10 10 95 e5                                      ldr r1, [r5, #0x10]
0078c688  2a 19 ff eb                                      bl #0x752b38
0078c68c  dc 31 d5 e1                                      ldrsb r3, [r5, #0x1c]
0078c690  01 00 73 e3                                      cmn r3, #1
0078c694  e9 ff ff 1a                                      bne #0x78c640
0078c698  28 00 95 e5                                      ldr r0, [r5, #0x28]
0078c69c  24 10 95 e5                                      ldr r1, [r5, #0x24]
0078c6a0  24 19 ff eb                                      bl #0x752b38
0078c6a4  e5 ff ff ea                                      b #0x78c640
0078c6a8  04 70 90 e5                                      ldr r7, [r0, #4]
0078c6ac  06 10 a0 e3                                      mov r1, #6
0078c6b0  97 11 27 e0                                      mla r7, r7, r1, r1
0078c6b4  01 10 87 e2                                      add r1, r7, #1
0078c6b8  81 11 a0 e1                                      lsl r1, r1, #3
0078c6bc  1d 19 ff eb                                      bl #0x752b38
0078c6c0  00 30 a0 e3                                      mov r3, #0
0078c6c4  00 30 88 e5                                      str r3, [r8]
0078c6c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0078c6cc, declared_size=428, range_size=428, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9tu_stringENS_20stringi_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
; decoder-mode: arm
0078c6cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078c6d0  00 00 51 e3                                      cmp r1, #0
0078c6d4  0c d0 4d e2                                      sub sp, sp, #0xc
0078c6d8  00 a0 a0 e1                                      mov sl, r0
0078c6dc  62 00 00 da                                      ble #0x78c86c
0078c6e0  01 00 41 e2                                      sub r0, r1, #1
0078c6e4  9e 08 ee eb                                      bl #0x30e964
0078c6e8  f1 05 ee eb                                      bl #0x30deb4
0078c6ec  18 12 07 e3                                      movw r1, #0x7218
0078c6f0  31 1f 43 e3                                      movt r1, #0x3f31
0078c6f4  66 09 ee eb                                      bl #0x30ec94
0078c6f8  fe 15 a0 e3                                      mov r1, #0x3f800000
0078c6fc  28 09 ee eb                                      bl #0x30eba4
0078c700  71 07 ee eb                                      bl #0x30e4cc
0078c704  01 40 a0 e3                                      mov r4, #1
0078c708  14 40 a0 e1                                      lsl r4, r4, r0
0078c70c  00 30 9a e5                                      ldr r3, [sl]
0078c710  04 00 54 e3                                      cmp r4, #4
0078c714  04 40 a0 b3                                      movlt r4, #4
0078c718  00 00 53 e3                                      cmp r3, #0
0078c71c  03 00 00 0a                                      beq #0x78c730
0078c720  04 30 93 e5                                      ldr r3, [r3, #4]
0078c724  01 30 83 e2                                      add r3, r3, #1
0078c728  04 00 53 e1                                      cmp r3, r4
0078c72c  4f 00 00 0a                                      beq #0x78c870
0078c730  06 00 a0 e3                                      mov r0, #6
0078c734  90 04 00 e0                                      mul r0, r0, r4
0078c738  00 50 a0 e3                                      mov r5, #0
0078c73c  01 00 80 e2                                      add r0, r0, #1
0078c740  80 01 a0 e1                                      lsl r0, r0, #3
0078c744  05 10 a0 e1                                      mov r1, r5
0078c748  04 50 8d e5                                      str r5, [sp, #4]
0078c74c  12 19 ff eb                                      bl #0x752b9c
0078c750  04 00 8d e5                                      str r0, [sp, #4]
0078c754  00 50 80 e5                                      str r5, [r0]
0078c758  04 30 9d e5                                      ldr r3, [sp, #4]
0078c75c  01 20 44 e2                                      sub r2, r4, #1
0078c760  01 90 e0 e3                                      mvn sb, #1
0078c764  04 20 83 e5                                      str r2, [r3, #4]
0078c768  08 30 a0 e3                                      mov r3, #8
0078c76c  04 20 9d e5                                      ldr r2, [sp, #4]
0078c770  01 50 85 e2                                      add r5, r5, #1
0078c774  05 00 54 e1                                      cmp r4, r5
0078c778  03 90 82 e7                                      str sb, [r2, r3]
0078c77c  30 30 83 e2                                      add r3, r3, #0x30
0078c780  f9 ff ff ca                                      bgt #0x78c76c
0078c784  00 30 9a e5                                      ldr r3, [sl]
0078c788  00 00 53 e3                                      cmp r3, #0
0078c78c  04 80 8d 02                                      addeq r8, sp, #4
0078c790  30 00 00 0a                                      beq #0x78c858
0078c794  04 70 93 e5                                      ldr r7, [r3, #4]
0078c798  00 00 57 e3                                      cmp r7, #0
0078c79c  04 80 8d b2                                      addlt r8, sp, #4
0078c7a0  26 00 00 ba                                      blt #0x78c840
0078c7a4  00 60 a0 e3                                      mov r6, #0
0078c7a8  08 50 a0 e3                                      mov r5, #8
0078c7ac  04 80 8d e2                                      add r8, sp, #4
0078c7b0  06 b0 a0 e1                                      mov fp, r6
0078c7b4  07 00 00 ea                                      b #0x78c7d8
0078c7b8  dc 31 d4 e1                                      ldrsb r3, [r4, #0x1c]
0078c7bc  01 00 73 e3                                      cmn r3, #1
0078c7c0  19 00 00 0a                                      beq #0x78c82c
0078c7c4  00 0a 84 e8                                      stm r4, {sb, fp}
0078c7c8  00 30 9a e5                                      ldr r3, [sl]
0078c7cc  06 00 57 e1                                      cmp r7, r6
0078c7d0  30 50 85 e2                                      add r5, r5, #0x30
0078c7d4  18 00 00 ba                                      blt #0x78c83c
0078c7d8  05 c0 93 e7                                      ldr ip, [r3, r5]
0078c7dc  05 40 83 e0                                      add r4, r3, r5
0078c7e0  08 00 a0 e1                                      mov r0, r8
0078c7e4  02 00 7c e3                                      cmn ip, #2
0078c7e8  01 60 86 e2                                      add r6, r6, #1
0078c7ec  08 10 84 e2                                      add r1, r4, #8
0078c7f0  1c 20 84 e2                                      add r2, r4, #0x1c
0078c7f4  f4 ff ff 0a                                      beq #0x78c7cc
0078c7f8  04 c0 94 e5                                      ldr ip, [r4, #4]
0078c7fc  01 00 7c e3                                      cmn ip, #1
0078c800  f1 ff ff 0a                                      beq #0x78c7cc
0078c804  28 00 00 eb                                      bl #0x78c8ac
0078c808  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
0078c80c  01 00 73 e3                                      cmn r3, #1
0078c810  e8 ff ff 1a                                      bne #0x78c7b8
0078c814  14 00 94 e5                                      ldr r0, [r4, #0x14]
0078c818  10 10 94 e5                                      ldr r1, [r4, #0x10]
0078c81c  c5 18 ff eb                                      bl #0x752b38
0078c820  dc 31 d4 e1                                      ldrsb r3, [r4, #0x1c]
0078c824  01 00 73 e3                                      cmn r3, #1
0078c828  e5 ff ff 1a                                      bne #0x78c7c4
0078c82c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0078c830  24 10 94 e5                                      ldr r1, [r4, #0x24]
0078c834  bf 18 ff eb                                      bl #0x752b38
0078c838  e1 ff ff ea                                      b #0x78c7c4
0078c83c  04 70 93 e5                                      ldr r7, [r3, #4]
0078c840  06 10 a0 e3                                      mov r1, #6
0078c844  97 11 27 e0                                      mla r7, r7, r1, r1
0078c848  03 00 a0 e1                                      mov r0, r3
0078c84c  01 10 87 e2                                      add r1, r7, #1
0078c850  81 11 a0 e1                                      lsl r1, r1, #3
0078c854  b7 18 ff eb                                      bl #0x752b38
0078c858  04 30 9d e5                                      ldr r3, [sp, #4]
0078c85c  08 00 a0 e1                                      mov r0, r8
0078c860  00 30 8a e5                                      str r3, [sl]
0078c864  00 30 a0 e3                                      mov r3, #0
0078c868  04 30 8d e5                                      str r3, [sp, #4]
0078c86c  63 ff ff eb                                      bl #0x78c600
0078c870  0c d0 8d e2                                      add sp, sp, #0xc
0078c874  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0078c878, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9tu_stringENS_20stringi_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::check_expand()
; decoder-mode: arm
0078c878  00 30 90 e5                                      ldr r3, [r0]
0078c87c  00 00 53 e3                                      cmp r3, #0
0078c880  07 00 00 0a                                      beq #0x78c8a4
0078c884  04 10 93 e5                                      ldr r1, [r3, #4]
0078c888  00 30 93 e5                                      ldr r3, [r3]
0078c88c  01 10 81 e2                                      add r1, r1, #1
0078c890  81 10 a0 e1                                      lsl r1, r1, #1
0078c894  83 30 83 e0                                      add r3, r3, r3, lsl #1
0078c898  01 00 53 e1                                      cmp r3, r1
0078c89c  1e ff 2f d1                                      bxle lr
0078c8a0  89 ff ff ea                                      b #0x78c6cc
0078c8a4  08 10 a0 e3                                      mov r1, #8
0078c8a8  87 ff ff ea                                      b #0x78c6cc

; FUNCTION 0x0078c8ac, declared_size=552, range_size=552, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9tu_stringENS_20stringi_hash_functorIS1_EEE3addERKS1_RKS2_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::add(gameswf::tu_stringi const&, gameswf::tu_string const&)
; decoder-mode: arm
0078c8ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078c8b0  00 50 a0 e1                                      mov r5, r0
0078c8b4  14 d0 4d e2                                      sub sp, sp, #0x14
0078c8b8  01 40 a0 e1                                      mov r4, r1
0078c8bc  0c 20 8d e5                                      str r2, [sp, #0xc]
0078c8c0  ec ff ff eb                                      bl #0x78c878
0078c8c4  00 30 95 e5                                      ldr r3, [r5]
0078c8c8  00 20 93 e5                                      ldr r2, [r3]
0078c8cc  01 20 82 e2                                      add r2, r2, #1
0078c8d0  00 20 83 e5                                      str r2, [r3]
0078c8d4  10 e0 94 e5                                      ldr lr, [r4, #0x10]
0078c8d8  ff 34 e0 e3                                      mvn r3, #0xff000000
0078c8dc  ff 24 ce e3                                      bic r2, lr, #0xff000000
0078c8e0  03 00 52 e1                                      cmp r2, r3
0078c8e4  5e a0 b7 17                                      sbfxne sl, lr, #0, #0x18
0078c8e8  3e 00 00 0a                                      beq #0x78c9e8
0078c8ec  00 50 95 e5                                      ldr r5, [r5]
0078c8f0  01 00 7a e3                                      cmn sl, #1
0078c8f4  02 a9 e0 03                                      mvneq sl, #0x8000
0078c8f8  04 20 95 e5                                      ldr r2, [r5, #4]
0078c8fc  06 e0 a0 e3                                      mov lr, #6
0078c900  02 10 0a e0                                      and r1, sl, r2
0078c904  9e 01 03 e0                                      mul r3, lr, r1
0078c908  01 30 83 e2                                      add r3, r3, #1
0078c90c  83 c1 95 e7                                      ldr ip, [r5, r3, lsl #3]
0078c910  83 91 85 e0                                      add sb, r5, r3, lsl #3
0078c914  02 00 7c e3                                      cmn ip, #2
0078c918  00 20 e0 03                                      mvneq r2, #0
0078c91c  83 21 85 07                                      streq r2, [r5, r3, lsl #3]
0078c920  4c 00 00 0a                                      beq #0x78ca58
0078c924  04 80 99 e5                                      ldr r8, [sb, #4]
0078c928  01 00 78 e3                                      cmn r8, #1
0078c92c  01 60 a0 11                                      movne r6, r1
0078c930  48 00 00 0a                                      beq #0x78ca58
0078c934  01 60 86 e2                                      add r6, r6, #1
0078c938  02 60 06 e0                                      and r6, r6, r2
0078c93c  9e 06 07 e0                                      mul r7, lr, r6
0078c940  01 70 87 e2                                      add r7, r7, #1
0078c944  87 01 95 e7                                      ldr r0, [r5, r7, lsl #3]
0078c948  87 71 85 e0                                      add r7, r5, r7, lsl #3
0078c94c  02 00 70 e3                                      cmn r0, #2
0078c950  f7 ff ff 1a                                      bne #0x78c934
0078c954  08 20 02 e0                                      and r2, r2, r8
0078c958  01 00 52 e1                                      cmp r2, r1
0078c95c  06 00 a0 13                                      movne r0, #6
0078c960  45 00 00 0a                                      beq #0x78ca7c
0078c964  90 02 08 e0                                      mul r8, r0, r2
0078c968  01 80 88 e2                                      add r8, r8, #1
0078c96c  88 21 95 e7                                      ldr r2, [r5, r8, lsl #3]
0078c970  88 81 85 e0                                      add r8, r5, r8, lsl #3
0078c974  01 00 52 e1                                      cmp r2, r1
0078c978  f9 ff ff 1a                                      bne #0x78c964
0078c97c  00 c0 87 e5                                      str ip, [r7]
0078c980  04 00 99 e5                                      ldr r0, [sb, #4]
0078c984  08 20 89 e2                                      add r2, sb, #8
0078c988  02 10 a0 e1                                      mov r1, r2
0078c98c  04 00 87 e5                                      str r0, [r7, #4]
0078c990  1c b0 89 e2                                      add fp, sb, #0x1c
0078c994  08 00 87 e2                                      add r0, r7, #8
0078c998  04 30 8d e5                                      str r3, [sp, #4]
0078c99c  08 20 8d e5                                      str r2, [sp, #8]
0078c9a0  a1 19 ff eb                                      bl #0x75302c
0078c9a4  0b 10 a0 e1                                      mov r1, fp
0078c9a8  1c 00 87 e2                                      add r0, r7, #0x1c
0078c9ac  9e 19 ff eb                                      bl #0x75302c
0078c9b0  00 60 88 e5                                      str r6, [r8]
0078c9b4  08 20 9d e5                                      ldr r2, [sp, #8]
0078c9b8  04 10 a0 e1                                      mov r1, r4
0078c9bc  02 00 a0 e1                                      mov r0, r2
0078c9c0  62 19 ff eb                                      bl #0x752f50
0078c9c4  0b 00 a0 e1                                      mov r0, fp
0078c9c8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078c9cc  5f 19 ff eb                                      bl #0x752f50
0078c9d0  04 a0 89 e5                                      str sl, [sb, #4]
0078c9d4  04 30 9d e5                                      ldr r3, [sp, #4]
0078c9d8  00 20 e0 e3                                      mvn r2, #0
0078c9dc  83 21 85 e7                                      str r2, [r5, r3, lsl #3]
0078c9e0  14 d0 8d e2                                      add sp, sp, #0x14
0078c9e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0078c9e8  d0 30 d4 e1                                      ldrsb r3, [r4]
0078c9ec  01 00 73 e3                                      cmn r3, #1
0078c9f0  04 30 94 05                                      ldreq r3, [r4, #4]
0078c9f4  01 30 43 12                                      subne r3, r3, #1
0078c9f8  01 c0 84 12                                      addne ip, r4, #1
0078c9fc  01 30 43 02                                      subeq r3, r3, #1
0078ca00  0c c0 94 05                                      ldreq ip, [r4, #0xc]
0078ca04  00 00 53 e3                                      cmp r3, #0
0078ca08  05 a5 01 d3                                      movwle sl, #0x1505
0078ca0c  0a 20 a0 d1                                      movle r2, sl
0078ca10  0d 00 00 da                                      ble #0x78ca4c
0078ca14  03 30 8c e0                                      add r3, ip, r3
0078ca18  05 25 01 e3                                      movw r2, #0x1505
0078ca1c  01 10 53 e5                                      ldrb r1, [r3, #-1]
0078ca20  01 30 43 e2                                      sub r3, r3, #1
0078ca24  82 22 82 e0                                      add r2, r2, r2, lsl #5
0078ca28  41 00 41 e2                                      sub r0, r1, #0x41
0078ca2c  70 00 ef e6                                      uxtb r0, r0
0078ca30  19 00 50 e3                                      cmp r0, #0x19
0078ca34  20 10 81 92                                      addls r1, r1, #0x20
0078ca38  0c 00 53 e1                                      cmp r3, ip
0078ca3c  02 20 21 e0                                      eor r2, r1, r2
0078ca40  f5 ff ff 1a                                      bne #0x78ca1c
0078ca44  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0078ca48  02 a0 a0 e1                                      mov sl, r2
0078ca4c  12 e0 d7 e7                                      bfi lr, r2, #0, #0x18
0078ca50  10 e0 84 e5                                      str lr, [r4, #0x10]
0078ca54  a4 ff ff ea                                      b #0x78c8ec
0078ca58  04 10 a0 e1                                      mov r1, r4
0078ca5c  04 a0 89 e5                                      str sl, [sb, #4]
0078ca60  08 00 89 e2                                      add r0, sb, #8
0078ca64  70 19 ff eb                                      bl #0x75302c
0078ca68  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078ca6c  1c 00 89 e2                                      add r0, sb, #0x1c
0078ca70  14 d0 8d e2                                      add sp, sp, #0x14
0078ca74  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0078ca78  6b 19 ff ea                                      b #0x75302c
0078ca7c  00 c0 87 e5                                      str ip, [r7]
0078ca80  04 20 99 e5                                      ldr r2, [sb, #4]
0078ca84  08 b0 89 e2                                      add fp, sb, #8
0078ca88  0b 10 a0 e1                                      mov r1, fp
0078ca8c  04 20 87 e5                                      str r2, [r7, #4]
0078ca90  1c 80 89 e2                                      add r8, sb, #0x1c
0078ca94  08 00 87 e2                                      add r0, r7, #8
0078ca98  04 30 8d e5                                      str r3, [sp, #4]
0078ca9c  62 19 ff eb                                      bl #0x75302c
0078caa0  08 10 a0 e1                                      mov r1, r8
0078caa4  1c 00 87 e2                                      add r0, r7, #0x1c
0078caa8  5f 19 ff eb                                      bl #0x75302c
0078caac  0b 00 a0 e1                                      mov r0, fp
0078cab0  04 10 a0 e1                                      mov r1, r4
0078cab4  25 19 ff eb                                      bl #0x752f50
0078cab8  08 00 a0 e1                                      mov r0, r8
0078cabc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078cac0  22 19 ff eb                                      bl #0x752f50
0078cac4  04 30 9d e5                                      ldr r3, [sp, #4]
0078cac8  83 61 85 e7                                      str r6, [r5, r3, lsl #3]
0078cacc  04 a0 89 e5                                      str sl, [sb, #4]
0078cad0  c2 ff ff ea                                      b #0x78c9e0

; FUNCTION 0x0078de58, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_9tu_stringENS_20stringi_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::find_index(gameswf::tu_stringi const&) const
; decoder-mode: arm
0078de58  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0078de5c  00 30 90 e5                                      ldr r3, [r0]
0078de60  00 50 a0 e1                                      mov r5, r0
0078de64  01 60 a0 e1                                      mov r6, r1
0078de68  00 00 53 e3                                      cmp r3, #0
0078de6c  02 00 00 1a                                      bne #0x78de7c
0078de70  00 40 e0 e3                                      mvn r4, #0
0078de74  04 00 a0 e1                                      mov r0, r4
0078de78  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0078de7c  10 c0 91 e5                                      ldr ip, [r1, #0x10]
0078de80  ff 24 e0 e3                                      mvn r2, #0xff000000
0078de84  ff 14 cc e3                                      bic r1, ip, #0xff000000
0078de88  02 00 51 e1                                      cmp r1, r2
0078de8c  5c 70 b7 17                                      sbfxne r7, ip, #0, #0x18
0078de90  2c 00 00 0a                                      beq #0x78df48
0078de94  04 20 93 e5                                      ldr r2, [r3, #4]
0078de98  01 00 77 e3                                      cmn r7, #1
0078de9c  02 79 e0 03                                      mvneq r7, #0x8000
0078dea0  02 40 07 e0                                      and r4, r7, r2
0078dea4  06 80 a0 e3                                      mov r8, #6
0078dea8  98 04 08 e0                                      mul r8, r8, r4
0078deac  01 80 88 e2                                      add r8, r8, #1
0078deb0  88 11 93 e7                                      ldr r1, [r3, r8, lsl #3]
0078deb4  88 81 83 e0                                      add r8, r3, r8, lsl #3
0078deb8  02 00 71 e3                                      cmn r1, #2
0078debc  eb ff ff 0a                                      beq #0x78de70
0078dec0  04 30 98 e5                                      ldr r3, [r8, #4]
0078dec4  01 00 73 e3                                      cmn r3, #1
0078dec8  02 00 00 0a                                      beq #0x78ded8
0078decc  03 20 02 e0                                      and r2, r2, r3
0078ded0  04 00 52 e1                                      cmp r2, r4
0078ded4  e5 ff ff 1a                                      bne #0x78de70
0078ded8  01 90 86 e2                                      add sb, r6, #1
0078dedc  06 a0 a0 e3                                      mov sl, #6
0078dee0  07 00 00 ea                                      b #0x78df04
0078dee4  00 40 98 e5                                      ldr r4, [r8]
0078dee8  01 00 74 e3                                      cmn r4, #1
0078deec  e0 ff ff 0a                                      beq #0x78de74
0078def0  9a 04 08 e0                                      mul r8, sl, r4
0078def4  00 30 95 e5                                      ldr r3, [r5]
0078def8  01 80 88 e2                                      add r8, r8, #1
0078defc  88 81 83 e0                                      add r8, r3, r8, lsl #3
0078df00  04 30 98 e5                                      ldr r3, [r8, #4]
0078df04  03 00 57 e1                                      cmp r7, r3
0078df08  f5 ff ff 1a                                      bne #0x78dee4
0078df0c  08 30 88 e2                                      add r3, r8, #8
0078df10  03 00 56 e1                                      cmp r6, r3
0078df14  d6 ff ff 0a                                      beq #0x78de74
0078df18  d8 30 d8 e1                                      ldrsb r3, [r8, #8]
0078df1c  01 00 73 e3                                      cmn r3, #1
0078df20  d0 30 d6 e1                                      ldrsb r3, [r6]
0078df24  09 00 88 12                                      addne r0, r8, #9
0078df28  14 00 98 05                                      ldreq r0, [r8, #0x14]
0078df2c  01 00 73 e3                                      cmn r3, #1
0078df30  09 10 a0 11                                      movne r1, sb
0078df34  0c 10 96 05                                      ldreq r1, [r6, #0xc]
0078df38  74 0f ff eb                                      bl #0x751d10
0078df3c  00 00 50 e3                                      cmp r0, #0
0078df40  e7 ff ff 1a                                      bne #0x78dee4
0078df44  ca ff ff ea                                      b #0x78de74
0078df48  d0 30 d6 e1                                      ldrsb r3, [r6]
0078df4c  01 00 73 e3                                      cmn r3, #1
0078df50  04 30 96 05                                      ldreq r3, [r6, #4]
0078df54  01 30 43 12                                      subne r3, r3, #1
0078df58  01 40 86 12                                      addne r4, r6, #1
0078df5c  01 30 43 02                                      subeq r3, r3, #1
0078df60  0c 40 96 05                                      ldreq r4, [r6, #0xc]
0078df64  00 00 53 e3                                      cmp r3, #0
0078df68  05 75 01 d3                                      movwle r7, #0x1505
0078df6c  07 20 a0 d1                                      movle r2, r7
0078df70  0d 00 00 da                                      ble #0x78dfac
0078df74  03 30 84 e0                                      add r3, r4, r3
0078df78  05 25 01 e3                                      movw r2, #0x1505
0078df7c  01 10 53 e5                                      ldrb r1, [r3, #-1]
0078df80  01 30 43 e2                                      sub r3, r3, #1
0078df84  82 22 82 e0                                      add r2, r2, r2, lsl #5
0078df88  41 00 41 e2                                      sub r0, r1, #0x41
0078df8c  70 00 ef e6                                      uxtb r0, r0
0078df90  19 00 50 e3                                      cmp r0, #0x19
0078df94  20 10 81 92                                      addls r1, r1, #0x20
0078df98  04 00 53 e1                                      cmp r3, r4
0078df9c  02 20 21 e0                                      eor r2, r1, r2
0078dfa0  f5 ff ff 1a                                      bne #0x78df7c
0078dfa4  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0078dfa8  02 70 a0 e1                                      mov r7, r2
0078dfac  12 c0 d7 e7                                      bfi ip, r2, #0, #0x18
0078dfb0  10 c0 86 e5                                      str ip, [r6, #0x10]
0078dfb4  00 30 95 e5                                      ldr r3, [r5]
0078dfb8  b5 ff ff ea                                      b #0x78de94

; FUNCTION 0x0078dfbc, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_9tu_stringENS_20stringi_hash_functorIS1_EEE3getERKS1_PS2_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::get(gameswf::tu_stringi const&, gameswf::tu_string*) const
; decoder-mode: arm
0078dfbc  70 40 2d e9                                      push {r4, r5, r6, lr}
0078dfc0  02 40 a0 e1                                      mov r4, r2
0078dfc4  00 50 a0 e1                                      mov r5, r0
0078dfc8  a2 ff ff eb                                      bl #0x78de58
0078dfcc  00 00 50 e3                                      cmp r0, #0
0078dfd0  0a 00 00 ba                                      blt #0x78e000
0078dfd4  00 00 54 e3                                      cmp r4, #0
0078dfd8  0a 00 00 0a                                      beq #0x78e008
0078dfdc  06 10 a0 e3                                      mov r1, #6
0078dfe0  00 30 95 e5                                      ldr r3, [r5]
0078dfe4  91 00 01 e0                                      mul r1, r1, r0
0078dfe8  04 00 a0 e1                                      mov r0, r4
0078dfec  81 11 83 e0                                      add r1, r3, r1, lsl #3
0078dff0  24 10 81 e2                                      add r1, r1, #0x24
0078dff4  d5 13 ff eb                                      bl #0x752f50
0078dff8  01 00 a0 e3                                      mov r0, #1
0078dffc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078e000  00 00 a0 e3                                      mov r0, #0
0078e004  70 80 bd e8                                      pop {r4, r5, r6, pc}
0078e008  01 00 a0 e3                                      mov r0, #1
0078e00c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0078e010, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9tu_stringENS_20stringi_hash_functorIS1_EEE3setERKS1_RKS2_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set(gameswf::tu_stringi const&, gameswf::tu_string const&)
; decoder-mode: arm
0078e010  70 40 2d e9                                      push {r4, r5, r6, lr}
0078e014  02 40 a0 e1                                      mov r4, r2
0078e018  00 50 a0 e1                                      mov r5, r0
0078e01c  01 60 a0 e1                                      mov r6, r1
0078e020  8c ff ff eb                                      bl #0x78de58
0078e024  00 00 50 e3                                      cmp r0, #0
0078e028  07 00 00 ba                                      blt #0x78e04c
0078e02c  06 30 a0 e3                                      mov r3, #6
0078e030  93 00 00 e0                                      mul r0, r3, r0
0078e034  00 30 95 e5                                      ldr r3, [r5]
0078e038  04 10 a0 e1                                      mov r1, r4
0078e03c  80 01 83 e0                                      add r0, r3, r0, lsl #3
0078e040  24 00 80 e2                                      add r0, r0, #0x24
0078e044  70 40 bd e8                                      pop {r4, r5, r6, lr}
0078e048  c0 13 ff ea                                      b #0x752f50
0078e04c  05 00 a0 e1                                      mov r0, r5
0078e050  06 10 a0 e1                                      mov r1, r6
0078e054  04 20 a0 e1                                      mov r2, r4
0078e058  70 40 bd e8                                      pop {r4, r5, r6, lr}
0078e05c  12 fa ff ea                                      b #0x78c8ac
