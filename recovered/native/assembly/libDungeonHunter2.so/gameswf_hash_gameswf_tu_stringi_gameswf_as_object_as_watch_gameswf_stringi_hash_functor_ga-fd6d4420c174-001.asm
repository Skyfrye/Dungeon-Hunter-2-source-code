; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007699f0, declared_size=172, range_size=172, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::clear()
; decoder-mode: arm
007699f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007699f4  00 80 a0 e1                                      mov r8, r0
007699f8  00 00 90 e5                                      ldr r0, [r0]
007699fc  00 00 50 e3                                      cmp r0, #0
00769a00  24 00 00 0a                                      beq #0x769a98
00769a04  04 70 90 e5                                      ldr r7, [r0, #4]
00769a08  00 00 57 e3                                      cmp r7, #0
00769a0c  1b 00 00 ba                                      blt #0x769a80
00769a10  00 60 a0 e3                                      mov r6, #0
00769a14  08 40 a0 e3                                      mov r4, #8
00769a18  01 90 e0 e3                                      mvn sb, #1
00769a1c  06 a0 a0 e1                                      mov sl, r6
00769a20  06 00 00 ea                                      b #0x769a40
00769a24  20 00 85 e2                                      add r0, r5, #0x20
00769a28  bd b5 00 eb                                      bl #0x797124
00769a2c  00 06 85 e8                                      stm r5, {sb, sl}
00769a30  00 00 98 e5                                      ldr r0, [r8]
00769a34  06 00 57 e1                                      cmp r7, r6
00769a38  2c 40 84 e2                                      add r4, r4, #0x2c
00769a3c  0e 00 00 ba                                      blt #0x769a7c
00769a40  04 30 90 e7                                      ldr r3, [r0, r4]
00769a44  01 60 86 e2                                      add r6, r6, #1
00769a48  04 50 80 e0                                      add r5, r0, r4
00769a4c  02 00 73 e3                                      cmn r3, #2
00769a50  f7 ff ff 0a                                      beq #0x769a34
00769a54  04 30 95 e5                                      ldr r3, [r5, #4]
00769a58  01 00 73 e3                                      cmn r3, #1
00769a5c  f4 ff ff 0a                                      beq #0x769a34
00769a60  d8 30 d5 e1                                      ldrsb r3, [r5, #8]
00769a64  01 00 73 e3                                      cmn r3, #1
00769a68  ed ff ff 1a                                      bne #0x769a24
00769a6c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00769a70  10 10 95 e5                                      ldr r1, [r5, #0x10]
00769a74  2f a4 ff eb                                      bl #0x752b38
00769a78  e9 ff ff ea                                      b #0x769a24
00769a7c  04 70 90 e5                                      ldr r7, [r0, #4]
00769a80  2c 30 a0 e3                                      mov r3, #0x2c
00769a84  97 33 27 e0                                      mla r7, r7, r3, r3
00769a88  08 10 87 e2                                      add r1, r7, #8
00769a8c  29 a4 ff eb                                      bl #0x752b38
00769a90  00 30 a0 e3                                      mov r3, #0
00769a94  00 30 88 e5                                      str r3, [r8]
00769a98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0076a508, declared_size=484, range_size=484, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE3addERKS1_RKS3_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::add(gameswf::tu_stringi const&, gameswf::as_object::as_watch const&)
; decoder-mode: arm
0076a508  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076a50c  00 60 a0 e1                                      mov r6, r0
0076a510  0c d0 4d e2                                      sub sp, sp, #0xc
0076a514  01 50 a0 e1                                      mov r5, r1
0076a518  02 90 a0 e1                                      mov sb, r2
0076a51c  d4 00 00 eb                                      bl #0x76a874
0076a520  00 30 96 e5                                      ldr r3, [r6]
0076a524  00 20 93 e5                                      ldr r2, [r3]
0076a528  01 20 82 e2                                      add r2, r2, #1
0076a52c  00 20 83 e5                                      str r2, [r3]
0076a530  10 e0 95 e5                                      ldr lr, [r5, #0x10]
0076a534  ff 34 e0 e3                                      mvn r3, #0xff000000
0076a538  ff 24 ce e3                                      bic r2, lr, #0xff000000
0076a53c  03 00 52 e1                                      cmp r2, r3
0076a540  5e 40 b7 17                                      sbfxne r4, lr, #0, #0x18
0076a544  32 00 00 0a                                      beq #0x76a614
0076a548  00 60 96 e5                                      ldr r6, [r6]
0076a54c  01 00 74 e3                                      cmn r4, #1
0076a550  02 49 e0 03                                      mvneq r4, #0x8000
0076a554  04 c0 96 e5                                      ldr ip, [r6, #4]
0076a558  2c 10 a0 e3                                      mov r1, #0x2c
0076a55c  0c 20 04 e0                                      and r2, r4, ip
0076a560  91 02 0b e0                                      mul fp, r1, r2
0076a564  08 b0 8b e2                                      add fp, fp, #8
0076a568  0b 30 96 e7                                      ldr r3, [r6, fp]
0076a56c  0b a0 86 e0                                      add sl, r6, fp
0076a570  02 00 73 e3                                      cmn r3, #2
0076a574  42 00 00 0a                                      beq #0x76a684
0076a578  04 e0 9a e5                                      ldr lr, [sl, #4]
0076a57c  01 00 7e e3                                      cmn lr, #1
0076a580  01 30 a0 11                                      movne r3, r1
0076a584  02 70 a0 11                                      movne r7, r2
0076a588  44 00 00 0a                                      beq #0x76a6a0
0076a58c  01 70 87 e2                                      add r7, r7, #1
0076a590  0c 70 07 e0                                      and r7, r7, ip
0076a594  93 07 00 e0                                      mul r0, r3, r7
0076a598  08 00 80 e2                                      add r0, r0, #8
0076a59c  00 10 96 e7                                      ldr r1, [r6, r0]
0076a5a0  00 00 86 e0                                      add r0, r6, r0
0076a5a4  02 00 71 e3                                      cmn r1, #2
0076a5a8  f7 ff ff 1a                                      bne #0x76a58c
0076a5ac  0e 30 0c e0                                      and r3, ip, lr
0076a5b0  02 00 53 e1                                      cmp r3, r2
0076a5b4  2c 10 a0 13                                      movne r1, #0x2c
0076a5b8  3e 00 00 0a                                      beq #0x76a6b8
0076a5bc  91 03 08 e0                                      mul r8, r1, r3
0076a5c0  08 80 88 e2                                      add r8, r8, #8
0076a5c4  08 30 96 e7                                      ldr r3, [r6, r8]
0076a5c8  08 80 86 e0                                      add r8, r6, r8
0076a5cc  02 00 53 e1                                      cmp r3, r2
0076a5d0  f9 ff ff 1a                                      bne #0x76a5bc
0076a5d4  0a 10 a0 e1                                      mov r1, sl
0076a5d8  c0 fe ff eb                                      bl #0x76a0e0
0076a5dc  05 10 a0 e1                                      mov r1, r5
0076a5e0  08 00 8a e2                                      add r0, sl, #8
0076a5e4  00 70 88 e5                                      str r7, [r8]
0076a5e8  58 a2 ff eb                                      bl #0x752f50
0076a5ec  09 10 a0 e1                                      mov r1, sb
0076a5f0  04 30 91 e4                                      ldr r3, [r1], #4
0076a5f4  20 00 8a e2                                      add r0, sl, #0x20
0076a5f8  1c 30 8a e5                                      str r3, [sl, #0x1c]
0076a5fc  4e b4 00 eb                                      bl #0x79773c
0076a600  00 30 e0 e3                                      mvn r3, #0
0076a604  04 40 8a e5                                      str r4, [sl, #4]
0076a608  0b 30 86 e7                                      str r3, [r6, fp]
0076a60c  0c d0 8d e2                                      add sp, sp, #0xc
0076a610  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076a614  d0 30 d5 e1                                      ldrsb r3, [r5]
0076a618  01 00 73 e3                                      cmn r3, #1
0076a61c  04 30 95 05                                      ldreq r3, [r5, #4]
0076a620  01 30 43 12                                      subne r3, r3, #1
0076a624  01 c0 85 12                                      addne ip, r5, #1
0076a628  01 30 43 02                                      subeq r3, r3, #1
0076a62c  0c c0 95 05                                      ldreq ip, [r5, #0xc]
0076a630  00 00 53 e3                                      cmp r3, #0
0076a634  05 45 01 d3                                      movwle r4, #0x1505
0076a638  04 20 a0 d1                                      movle r2, r4
0076a63c  0d 00 00 da                                      ble #0x76a678
0076a640  03 30 8c e0                                      add r3, ip, r3
0076a644  05 25 01 e3                                      movw r2, #0x1505
0076a648  01 10 53 e5                                      ldrb r1, [r3, #-1]
0076a64c  01 30 43 e2                                      sub r3, r3, #1
0076a650  82 22 82 e0                                      add r2, r2, r2, lsl #5
0076a654  41 00 41 e2                                      sub r0, r1, #0x41
0076a658  70 00 ef e6                                      uxtb r0, r0
0076a65c  19 00 50 e3                                      cmp r0, #0x19
0076a660  20 10 81 92                                      addls r1, r1, #0x20
0076a664  0c 00 53 e1                                      cmp r3, ip
0076a668  02 20 21 e0                                      eor r2, r1, r2
0076a66c  f5 ff ff 1a                                      bne #0x76a648
0076a670  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0076a674  02 40 a0 e1                                      mov r4, r2
0076a678  12 e0 d7 e7                                      bfi lr, r2, #0, #0x18
0076a67c  10 e0 85 e5                                      str lr, [r5, #0x10]
0076a680  b0 ff ff ea                                      b #0x76a548
0076a684  0a 00 a0 e1                                      mov r0, sl
0076a688  05 10 a0 e1                                      mov r1, r5
0076a68c  09 20 a0 e1                                      mov r2, sb
0076a690  00 30 e0 e3                                      mvn r3, #0
0076a694  00 40 8d e5                                      str r4, [sp]
0076a698  7e fe ff eb                                      bl #0x76a098
0076a69c  da ff ff ea                                      b #0x76a60c
0076a6a0  0a 00 a0 e1                                      mov r0, sl
0076a6a4  05 10 a0 e1                                      mov r1, r5
0076a6a8  09 20 a0 e1                                      mov r2, sb
0076a6ac  00 40 8d e5                                      str r4, [sp]
0076a6b0  78 fe ff eb                                      bl #0x76a098
0076a6b4  d4 ff ff ea                                      b #0x76a60c
0076a6b8  0a 10 a0 e1                                      mov r1, sl
0076a6bc  87 fe ff eb                                      bl #0x76a0e0
0076a6c0  05 10 a0 e1                                      mov r1, r5
0076a6c4  08 00 8a e2                                      add r0, sl, #8
0076a6c8  20 a2 ff eb                                      bl #0x752f50
0076a6cc  09 10 a0 e1                                      mov r1, sb
0076a6d0  04 30 91 e4                                      ldr r3, [r1], #4
0076a6d4  20 00 8a e2                                      add r0, sl, #0x20
0076a6d8  1c 30 8a e5                                      str r3, [sl, #0x1c]
0076a6dc  16 b4 00 eb                                      bl #0x79773c
0076a6e0  0b 70 86 e7                                      str r7, [r6, fp]
0076a6e4  04 40 8a e5                                      str r4, [sl, #4]
0076a6e8  c7 ff ff ea                                      b #0x76a60c

; FUNCTION 0x0076a6ec, declared_size=392, range_size=392, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
; decoder-mode: arm
0076a6ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076a6f0  00 00 51 e3                                      cmp r1, #0
0076a6f4  0c d0 4d e2                                      sub sp, sp, #0xc
0076a6f8  00 a0 a0 e1                                      mov sl, r0
0076a6fc  59 00 00 da                                      ble #0x76a868
0076a700  01 00 41 e2                                      sub r0, r1, #1
0076a704  96 90 ee eb                                      bl #0x30e964
0076a708  e9 8d ee eb                                      bl #0x30deb4
0076a70c  18 12 07 e3                                      movw r1, #0x7218
0076a710  31 1f 43 e3                                      movt r1, #0x3f31
0076a714  5e 91 ee eb                                      bl #0x30ec94
0076a718  fe 15 a0 e3                                      mov r1, #0x3f800000
0076a71c  20 91 ee eb                                      bl #0x30eba4
0076a720  69 8f ee eb                                      bl #0x30e4cc
0076a724  01 40 a0 e3                                      mov r4, #1
0076a728  14 40 a0 e1                                      lsl r4, r4, r0
0076a72c  00 30 9a e5                                      ldr r3, [sl]
0076a730  04 00 54 e3                                      cmp r4, #4
0076a734  04 40 a0 b3                                      movlt r4, #4
0076a738  00 00 53 e3                                      cmp r3, #0
0076a73c  03 00 00 0a                                      beq #0x76a750
0076a740  04 30 93 e5                                      ldr r3, [r3, #4]
0076a744  01 30 83 e2                                      add r3, r3, #1
0076a748  04 00 53 e1                                      cmp r3, r4
0076a74c  46 00 00 0a                                      beq #0x76a86c
0076a750  2c 00 a0 e3                                      mov r0, #0x2c
0076a754  90 04 00 e0                                      mul r0, r0, r4
0076a758  00 50 a0 e3                                      mov r5, #0
0076a75c  08 00 80 e2                                      add r0, r0, #8
0076a760  05 10 a0 e1                                      mov r1, r5
0076a764  04 50 8d e5                                      str r5, [sp, #4]
0076a768  0b a1 ff eb                                      bl #0x752b9c
0076a76c  04 00 8d e5                                      str r0, [sp, #4]
0076a770  00 50 80 e5                                      str r5, [r0]
0076a774  04 30 9d e5                                      ldr r3, [sp, #4]
0076a778  01 20 44 e2                                      sub r2, r4, #1
0076a77c  01 90 e0 e3                                      mvn sb, #1
0076a780  04 20 83 e5                                      str r2, [r3, #4]
0076a784  08 30 a0 e3                                      mov r3, #8
0076a788  04 20 9d e5                                      ldr r2, [sp, #4]
0076a78c  01 50 85 e2                                      add r5, r5, #1
0076a790  05 00 54 e1                                      cmp r4, r5
0076a794  03 90 82 e7                                      str sb, [r2, r3]
0076a798  2c 30 83 e2                                      add r3, r3, #0x2c
0076a79c  f9 ff ff ca                                      bgt #0x76a788
0076a7a0  00 30 9a e5                                      ldr r3, [sl]
0076a7a4  00 00 53 e3                                      cmp r3, #0
0076a7a8  04 80 8d 02                                      addeq r8, sp, #4
0076a7ac  28 00 00 0a                                      beq #0x76a854
0076a7b0  04 70 93 e5                                      ldr r7, [r3, #4]
0076a7b4  00 00 57 e3                                      cmp r7, #0
0076a7b8  04 80 8d b2                                      addlt r8, sp, #4
0076a7bc  1f 00 00 ba                                      blt #0x76a840
0076a7c0  00 60 a0 e3                                      mov r6, #0
0076a7c4  08 50 a0 e3                                      mov r5, #8
0076a7c8  04 80 8d e2                                      add r8, sp, #4
0076a7cc  06 b0 a0 e1                                      mov fp, r6
0076a7d0  06 00 00 ea                                      b #0x76a7f0
0076a7d4  20 00 84 e2                                      add r0, r4, #0x20
0076a7d8  51 b2 00 eb                                      bl #0x797124
0076a7dc  00 0a 84 e8                                      stm r4, {sb, fp}
0076a7e0  00 30 9a e5                                      ldr r3, [sl]
0076a7e4  06 00 57 e1                                      cmp r7, r6
0076a7e8  2c 50 85 e2                                      add r5, r5, #0x2c
0076a7ec  12 00 00 ba                                      blt #0x76a83c
0076a7f0  05 c0 93 e7                                      ldr ip, [r3, r5]
0076a7f4  05 40 83 e0                                      add r4, r3, r5
0076a7f8  08 00 a0 e1                                      mov r0, r8
0076a7fc  02 00 7c e3                                      cmn ip, #2
0076a800  01 60 86 e2                                      add r6, r6, #1
0076a804  08 10 84 e2                                      add r1, r4, #8
0076a808  1c 20 84 e2                                      add r2, r4, #0x1c
0076a80c  f4 ff ff 0a                                      beq #0x76a7e4
0076a810  04 c0 94 e5                                      ldr ip, [r4, #4]
0076a814  01 00 7c e3                                      cmn ip, #1
0076a818  f1 ff ff 0a                                      beq #0x76a7e4
0076a81c  39 ff ff eb                                      bl #0x76a508
0076a820  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
0076a824  01 00 73 e3                                      cmn r3, #1
0076a828  e9 ff ff 1a                                      bne #0x76a7d4
0076a82c  14 00 94 e5                                      ldr r0, [r4, #0x14]
0076a830  10 10 94 e5                                      ldr r1, [r4, #0x10]
0076a834  bf a0 ff eb                                      bl #0x752b38
0076a838  e5 ff ff ea                                      b #0x76a7d4
0076a83c  04 70 93 e5                                      ldr r7, [r3, #4]
0076a840  2c 20 a0 e3                                      mov r2, #0x2c
0076a844  97 22 27 e0                                      mla r7, r7, r2, r2
0076a848  03 00 a0 e1                                      mov r0, r3
0076a84c  08 10 87 e2                                      add r1, r7, #8
0076a850  b8 a0 ff eb                                      bl #0x752b38
0076a854  04 30 9d e5                                      ldr r3, [sp, #4]
0076a858  08 00 a0 e1                                      mov r0, r8
0076a85c  00 30 8a e5                                      str r3, [sl]
0076a860  00 30 a0 e3                                      mov r3, #0
0076a864  04 30 8d e5                                      str r3, [sp, #4]
0076a868  60 fc ff eb                                      bl #0x7699f0
0076a86c  0c d0 8d e2                                      add sp, sp, #0xc
0076a870  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0076a874, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::check_expand()
; decoder-mode: arm
0076a874  00 30 90 e5                                      ldr r3, [r0]
0076a878  00 00 53 e3                                      cmp r3, #0
0076a87c  07 00 00 0a                                      beq #0x76a8a0
0076a880  04 10 93 e5                                      ldr r1, [r3, #4]
0076a884  00 30 93 e5                                      ldr r3, [r3]
0076a888  01 10 81 e2                                      add r1, r1, #1
0076a88c  81 10 a0 e1                                      lsl r1, r1, #1
0076a890  83 30 83 e0                                      add r3, r3, r3, lsl #1
0076a894  01 00 53 e1                                      cmp r3, r1
0076a898  1e ff 2f d1                                      bxle lr
0076a89c  92 ff ff ea                                      b #0x76a6ec
0076a8a0  08 10 a0 e3                                      mov r1, #8
0076a8a4  90 ff ff ea                                      b #0x76a6ec

; FUNCTION 0x0076b108, declared_size=380, range_size=380, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE5eraseERKNS6_8iteratorE
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::erase(gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::iterator const&)
; decoder-mode: arm
0076b108  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076b10c  00 30 91 e5                                      ldr r3, [r1]
0076b110  00 50 a0 e1                                      mov r5, r0
0076b114  00 00 53 e3                                      cmp r3, #0
0076b118  06 00 00 0a                                      beq #0x76b138
0076b11c  00 40 93 e5                                      ldr r4, [r3]
0076b120  00 00 54 e3                                      cmp r4, #0
0076b124  03 00 00 0a                                      beq #0x76b138
0076b128  04 20 91 e5                                      ldr r2, [r1, #4]
0076b12c  04 00 94 e5                                      ldr r0, [r4, #4]
0076b130  00 00 52 e1                                      cmp r2, r0
0076b134  00 00 00 da                                      ble #0x76b13c
0076b138  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076b13c  03 00 55 e1                                      cmp r5, r3
0076b140  fc ff ff 1a                                      bne #0x76b138
0076b144  2c c0 a0 e3                                      mov ip, #0x2c
0076b148  9c 02 06 e0                                      mul r6, ip, r2
0076b14c  08 60 86 e2                                      add r6, r6, #8
0076b150  06 70 84 e0                                      add r7, r4, r6
0076b154  04 30 97 e5                                      ldr r3, [r7, #4]
0076b158  03 00 00 e0                                      and r0, r0, r3
0076b15c  02 00 50 e1                                      cmp r0, r2
0076b160  22 00 00 0a                                      beq #0x76b1f0
0076b164  9c 00 00 e0                                      mul r0, ip, r0
0076b168  08 00 80 e2                                      add r0, r0, #8
0076b16c  00 30 94 e7                                      ldr r3, [r4, r0]
0076b170  00 00 84 e0                                      add r0, r4, r0
0076b174  03 00 52 e1                                      cmp r2, r3
0076b178  05 00 00 0a                                      beq #0x76b194
0076b17c  9c 03 03 e0                                      mul r3, ip, r3
0076b180  08 00 83 e2                                      add r0, r3, #8
0076b184  00 30 94 e7                                      ldr r3, [r4, r0]
0076b188  00 00 84 e0                                      add r0, r4, r0
0076b18c  02 00 53 e1                                      cmp r3, r2
0076b190  f9 ff ff 1a                                      bne #0x76b17c
0076b194  06 30 94 e7                                      ldr r3, [r4, r6]
0076b198  2c 60 a0 e3                                      mov r6, #0x2c
0076b19c  00 30 80 e5                                      str r3, [r0]
0076b1a0  04 20 91 e5                                      ldr r2, [r1, #4]
0076b1a4  00 30 91 e5                                      ldr r3, [r1]
0076b1a8  96 02 06 e0                                      mul r6, r6, r2
0076b1ac  00 70 93 e5                                      ldr r7, [r3]
0076b1b0  08 60 86 e2                                      add r6, r6, #8
0076b1b4  06 40 87 e0                                      add r4, r7, r6
0076b1b8  d8 30 d4 e1                                      ldrsb r3, [r4, #8]
0076b1bc  01 00 73 e3                                      cmn r3, #1
0076b1c0  19 00 00 0a                                      beq #0x76b22c
0076b1c4  20 00 84 e2                                      add r0, r4, #0x20
0076b1c8  d5 af 00 eb                                      bl #0x797124
0076b1cc  01 30 e0 e3                                      mvn r3, #1
0076b1d0  06 30 87 e7                                      str r3, [r7, r6]
0076b1d4  00 30 a0 e3                                      mov r3, #0
0076b1d8  04 30 84 e5                                      str r3, [r4, #4]
0076b1dc  00 30 95 e5                                      ldr r3, [r5]
0076b1e0  00 20 93 e5                                      ldr r2, [r3]
0076b1e4  01 20 42 e2                                      sub r2, r2, #1
0076b1e8  00 20 83 e5                                      str r2, [r3]
0076b1ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076b1f0  06 30 94 e7                                      ldr r3, [r4, r6]
0076b1f4  01 00 73 e3                                      cmn r3, #1
0076b1f8  0f 00 00 0a                                      beq #0x76b23c
0076b1fc  d8 30 d7 e1                                      ldrsb r3, [r7, #8]
0076b200  01 00 73 e3                                      cmn r3, #1
0076b204  16 00 00 0a                                      beq #0x76b264
0076b208  20 00 87 e2                                      add r0, r7, #0x20
0076b20c  c4 af 00 eb                                      bl #0x797124
0076b210  00 30 e0 e3                                      mvn r3, #0
0076b214  04 30 87 e5                                      str r3, [r7, #4]
0076b218  00 30 95 e5                                      ldr r3, [r5]
0076b21c  00 20 93 e5                                      ldr r2, [r3]
0076b220  01 20 42 e2                                      sub r2, r2, #1
0076b224  00 20 83 e5                                      str r2, [r3]
0076b228  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076b22c  14 00 94 e5                                      ldr r0, [r4, #0x14]
0076b230  10 10 94 e5                                      ldr r1, [r4, #0x10]
0076b234  3f 9e ff eb                                      bl #0x752b38
0076b238  e1 ff ff ea                                      b #0x76b1c4
0076b23c  d8 30 d7 e1                                      ldrsb r3, [r7, #8]
0076b240  01 00 73 e3                                      cmn r3, #1
0076b244  0a 00 00 0a                                      beq #0x76b274
0076b248  20 00 87 e2                                      add r0, r7, #0x20
0076b24c  b4 af 00 eb                                      bl #0x797124
0076b250  01 30 e0 e3                                      mvn r3, #1
0076b254  06 30 84 e7                                      str r3, [r4, r6]
0076b258  00 30 a0 e3                                      mov r3, #0
0076b25c  04 30 87 e5                                      str r3, [r7, #4]
0076b260  dd ff ff ea                                      b #0x76b1dc
0076b264  14 00 97 e5                                      ldr r0, [r7, #0x14]
0076b268  10 10 97 e5                                      ldr r1, [r7, #0x10]
0076b26c  31 9e ff eb                                      bl #0x752b38
0076b270  e4 ff ff ea                                      b #0x76b208
0076b274  14 00 97 e5                                      ldr r0, [r7, #0x14]
0076b278  10 10 97 e5                                      ldr r1, [r7, #0x10]
0076b27c  2d 9e ff eb                                      bl #0x752b38
0076b280  f0 ff ff ea                                      b #0x76b248

; FUNCTION 0x0076bd70, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::find_index(gameswf::tu_stringi const&) const
; decoder-mode: arm
0076bd70  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0076bd74  00 30 90 e5                                      ldr r3, [r0]
0076bd78  00 50 a0 e1                                      mov r5, r0
0076bd7c  01 60 a0 e1                                      mov r6, r1
0076bd80  00 00 53 e3                                      cmp r3, #0
0076bd84  02 00 00 1a                                      bne #0x76bd94
0076bd88  00 40 e0 e3                                      mvn r4, #0
0076bd8c  04 00 a0 e1                                      mov r0, r4
0076bd90  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0076bd94  10 c0 91 e5                                      ldr ip, [r1, #0x10]
0076bd98  ff 24 e0 e3                                      mvn r2, #0xff000000
0076bd9c  ff 14 cc e3                                      bic r1, ip, #0xff000000
0076bda0  02 00 51 e1                                      cmp r1, r2
0076bda4  5c 70 b7 17                                      sbfxne r7, ip, #0, #0x18
0076bda8  2c 00 00 0a                                      beq #0x76be60
0076bdac  04 20 93 e5                                      ldr r2, [r3, #4]
0076bdb0  01 00 77 e3                                      cmn r7, #1
0076bdb4  02 79 e0 03                                      mvneq r7, #0x8000
0076bdb8  02 40 07 e0                                      and r4, r7, r2
0076bdbc  2c 80 a0 e3                                      mov r8, #0x2c
0076bdc0  98 04 08 e0                                      mul r8, r8, r4
0076bdc4  08 80 88 e2                                      add r8, r8, #8
0076bdc8  08 10 93 e7                                      ldr r1, [r3, r8]
0076bdcc  08 80 83 e0                                      add r8, r3, r8
0076bdd0  02 00 71 e3                                      cmn r1, #2
0076bdd4  eb ff ff 0a                                      beq #0x76bd88
0076bdd8  04 30 98 e5                                      ldr r3, [r8, #4]
0076bddc  01 00 73 e3                                      cmn r3, #1
0076bde0  02 00 00 0a                                      beq #0x76bdf0
0076bde4  03 20 02 e0                                      and r2, r2, r3
0076bde8  04 00 52 e1                                      cmp r2, r4
0076bdec  e5 ff ff 1a                                      bne #0x76bd88
0076bdf0  01 90 86 e2                                      add sb, r6, #1
0076bdf4  2c a0 a0 e3                                      mov sl, #0x2c
0076bdf8  07 00 00 ea                                      b #0x76be1c
0076bdfc  00 40 98 e5                                      ldr r4, [r8]
0076be00  01 00 74 e3                                      cmn r4, #1
0076be04  e0 ff ff 0a                                      beq #0x76bd8c
0076be08  9a 04 03 e0                                      mul r3, sl, r4
0076be0c  00 80 95 e5                                      ldr r8, [r5]
0076be10  08 30 83 e2                                      add r3, r3, #8
0076be14  03 80 88 e0                                      add r8, r8, r3
0076be18  04 30 98 e5                                      ldr r3, [r8, #4]
0076be1c  03 00 57 e1                                      cmp r7, r3
0076be20  f5 ff ff 1a                                      bne #0x76bdfc
0076be24  08 30 88 e2                                      add r3, r8, #8
0076be28  03 00 56 e1                                      cmp r6, r3
0076be2c  d6 ff ff 0a                                      beq #0x76bd8c
0076be30  d8 30 d8 e1                                      ldrsb r3, [r8, #8]
0076be34  01 00 73 e3                                      cmn r3, #1
0076be38  d0 30 d6 e1                                      ldrsb r3, [r6]
0076be3c  09 00 88 12                                      addne r0, r8, #9
0076be40  14 00 98 05                                      ldreq r0, [r8, #0x14]
0076be44  01 00 73 e3                                      cmn r3, #1
0076be48  09 10 a0 11                                      movne r1, sb
0076be4c  0c 10 96 05                                      ldreq r1, [r6, #0xc]
0076be50  ae 97 ff eb                                      bl #0x751d10
0076be54  00 00 50 e3                                      cmp r0, #0
0076be58  e7 ff ff 1a                                      bne #0x76bdfc
0076be5c  ca ff ff ea                                      b #0x76bd8c
0076be60  d0 30 d6 e1                                      ldrsb r3, [r6]
0076be64  01 00 73 e3                                      cmn r3, #1
0076be68  04 30 96 05                                      ldreq r3, [r6, #4]
0076be6c  01 30 43 12                                      subne r3, r3, #1
0076be70  01 40 86 12                                      addne r4, r6, #1
0076be74  01 30 43 02                                      subeq r3, r3, #1
0076be78  0c 40 96 05                                      ldreq r4, [r6, #0xc]
0076be7c  00 00 53 e3                                      cmp r3, #0
0076be80  05 75 01 d3                                      movwle r7, #0x1505
0076be84  07 20 a0 d1                                      movle r2, r7
0076be88  0d 00 00 da                                      ble #0x76bec4
0076be8c  03 30 84 e0                                      add r3, r4, r3
0076be90  05 25 01 e3                                      movw r2, #0x1505
0076be94  01 10 53 e5                                      ldrb r1, [r3, #-1]
0076be98  01 30 43 e2                                      sub r3, r3, #1
0076be9c  82 22 82 e0                                      add r2, r2, r2, lsl #5
0076bea0  41 00 41 e2                                      sub r0, r1, #0x41
0076bea4  70 00 ef e6                                      uxtb r0, r0
0076bea8  19 00 50 e3                                      cmp r0, #0x19
0076beac  20 10 81 92                                      addls r1, r1, #0x20
0076beb0  04 00 53 e1                                      cmp r3, r4
0076beb4  02 20 21 e0                                      eor r2, r1, r2
0076beb8  f5 ff ff 1a                                      bne #0x76be94
0076bebc  52 20 b7 e7                                      sbfx r2, r2, #0, #0x18
0076bec0  02 70 a0 e1                                      mov r7, r2
0076bec4  12 c0 d7 e7                                      bfi ip, r2, #0, #0x18
0076bec8  10 c0 86 e5                                      str ip, [r6, #0x10]
0076becc  00 30 95 e5                                      ldr r3, [r5]
0076bed0  b5 ff ff ea                                      b #0x76bdac

; FUNCTION 0x0076bed4, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZNK7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE3getERKS1_PS3_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::get(gameswf::tu_stringi const&, gameswf::as_object::as_watch*) const
; decoder-mode: arm
0076bed4  70 40 2d e9                                      push {r4, r5, r6, lr}
0076bed8  02 40 a0 e1                                      mov r4, r2
0076bedc  00 50 a0 e1                                      mov r5, r0
0076bee0  a2 ff ff eb                                      bl #0x76bd70
0076bee4  00 00 50 e3                                      cmp r0, #0
0076bee8  0d 00 00 ba                                      blt #0x76bf24
0076beec  00 00 54 e3                                      cmp r4, #0
0076bef0  0d 00 00 0a                                      beq #0x76bf2c
0076bef4  2c 10 a0 e3                                      mov r1, #0x2c
0076bef8  91 00 01 e0                                      mul r1, r1, r0
0076befc  00 30 95 e5                                      ldr r3, [r5]
0076bf00  08 10 81 e2                                      add r1, r1, #8
0076bf04  04 00 a0 e1                                      mov r0, r4
0076bf08  01 10 83 e0                                      add r1, r3, r1
0076bf0c  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
0076bf10  20 10 81 e2                                      add r1, r1, #0x20
0076bf14  04 30 80 e4                                      str r3, [r0], #4
0076bf18  07 ae 00 eb                                      bl #0x79773c
0076bf1c  01 00 a0 e3                                      mov r0, #1
0076bf20  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076bf24  00 00 a0 e3                                      mov r0, #0
0076bf28  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076bf2c  01 00 a0 e3                                      mov r0, #1
0076bf30  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0076bf34, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE5eraseERKS1_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::erase(gameswf::tu_stringi const&)
; decoder-mode: arm
0076bf34  10 40 2d e9                                      push {r4, lr}
0076bf38  08 d0 4d e2                                      sub sp, sp, #8
0076bf3c  00 40 a0 e1                                      mov r4, r0
0076bf40  8a ff ff eb                                      bl #0x76bd70
0076bf44  00 00 50 e3                                      cmp r0, #0
0076bf48  09 00 00 ba                                      blt #0x76bf74
0076bf4c  00 00 54 e3                                      cmp r4, #0
0076bf50  00 40 8d e5                                      str r4, [sp]
0076bf54  04 00 8d e5                                      str r0, [sp, #4]
0076bf58  05 00 00 0a                                      beq #0x76bf74
0076bf5c  00 30 94 e5                                      ldr r3, [r4]
0076bf60  00 00 53 e3                                      cmp r3, #0
0076bf64  02 00 00 0a                                      beq #0x76bf74
0076bf68  04 30 93 e5                                      ldr r3, [r3, #4]
0076bf6c  03 00 50 e1                                      cmp r0, r3
0076bf70  01 00 00 da                                      ble #0x76bf7c
0076bf74  08 d0 8d e2                                      add sp, sp, #8
0076bf78  10 80 bd e8                                      pop {r4, pc}
0076bf7c  04 00 a0 e1                                      mov r0, r4
0076bf80  0d 10 a0 e1                                      mov r1, sp
0076bf84  5f fc ff eb                                      bl #0x76b108
0076bf88  f9 ff ff ea                                      b #0x76bf74

; FUNCTION 0x0076c098, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE3setERKS1_RKS3_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set(gameswf::tu_stringi const&, gameswf::as_object::as_watch const&)
; decoder-mode: arm
0076c098  70 40 2d e9                                      push {r4, r5, r6, lr}
0076c09c  02 40 a0 e1                                      mov r4, r2
0076c0a0  00 50 a0 e1                                      mov r5, r0
0076c0a4  01 60 a0 e1                                      mov r6, r1
0076c0a8  30 ff ff eb                                      bl #0x76bd70
0076c0ac  00 00 50 e3                                      cmp r0, #0
0076c0b0  0a 00 00 ba                                      blt #0x76c0e0
0076c0b4  2c 30 a0 e3                                      mov r3, #0x2c
0076c0b8  93 00 00 e0                                      mul r0, r3, r0
0076c0bc  00 20 95 e5                                      ldr r2, [r5]
0076c0c0  04 10 a0 e1                                      mov r1, r4
0076c0c4  04 30 91 e4                                      ldr r3, [r1], #4
0076c0c8  08 00 80 e2                                      add r0, r0, #8
0076c0cc  00 00 82 e0                                      add r0, r2, r0
0076c0d0  1c 30 80 e5                                      str r3, [r0, #0x1c]
0076c0d4  20 00 80 e2                                      add r0, r0, #0x20
0076c0d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076c0dc  96 ad 00 ea                                      b #0x79773c
0076c0e0  05 00 a0 e1                                      mov r0, r5
0076c0e4  06 10 a0 e1                                      mov r1, r6
0076c0e8  04 20 a0 e1                                      mov r2, r4
0076c0ec  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076c0f0  04 f9 ff ea                                      b #0x76a508
