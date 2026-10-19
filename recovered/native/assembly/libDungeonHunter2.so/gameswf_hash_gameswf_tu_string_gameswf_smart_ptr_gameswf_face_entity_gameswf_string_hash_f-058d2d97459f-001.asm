; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007aa790, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE5clearEv
; demangled: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::clear()
; decoder-mode: arm
007aa790  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007aa794  00 80 a0 e1                                      mov r8, r0
007aa798  00 00 90 e5                                      ldr r0, [r0]
007aa79c  00 00 50 e3                                      cmp r0, #0
007aa7a0  25 00 00 0a                                      beq #0x7aa83c
007aa7a4  04 70 90 e5                                      ldr r7, [r0, #4]
007aa7a8  00 00 57 e3                                      cmp r7, #0
007aa7ac  1d 00 00 ba                                      blt #0x7aa828
007aa7b0  00 60 a0 e3                                      mov r6, #0
007aa7b4  08 40 a0 e3                                      mov r4, #8
007aa7b8  01 90 e0 e3                                      mvn sb, #1
007aa7bc  06 a0 a0 e1                                      mov sl, r6
007aa7c0  08 00 00 ea                                      b #0x7aa7e8
007aa7c4  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007aa7c8  00 00 50 e3                                      cmp r0, #0
007aa7cc  00 00 00 0a                                      beq #0x7aa7d4
007aa7d0  9a be fe eb                                      bl #0x75a240
007aa7d4  00 06 85 e8                                      stm r5, {sb, sl}
007aa7d8  00 00 98 e5                                      ldr r0, [r8]
007aa7dc  06 00 57 e1                                      cmp r7, r6
007aa7e0  20 40 84 e2                                      add r4, r4, #0x20
007aa7e4  0e 00 00 ba                                      blt #0x7aa824
007aa7e8  04 30 90 e7                                      ldr r3, [r0, r4]
007aa7ec  01 60 86 e2                                      add r6, r6, #1
007aa7f0  04 50 80 e0                                      add r5, r0, r4
007aa7f4  02 00 73 e3                                      cmn r3, #2
007aa7f8  f7 ff ff 0a                                      beq #0x7aa7dc
007aa7fc  04 30 95 e5                                      ldr r3, [r5, #4]
007aa800  01 00 73 e3                                      cmn r3, #1
007aa804  f4 ff ff 0a                                      beq #0x7aa7dc
007aa808  d8 30 d5 e1                                      ldrsb r3, [r5, #8]
007aa80c  01 00 73 e3                                      cmn r3, #1
007aa810  eb ff ff 1a                                      bne #0x7aa7c4
007aa814  14 00 95 e5                                      ldr r0, [r5, #0x14]
007aa818  10 10 95 e5                                      ldr r1, [r5, #0x10]
007aa81c  c5 a0 fe eb                                      bl #0x752b38
007aa820  e7 ff ff ea                                      b #0x7aa7c4
007aa824  04 70 90 e5                                      ldr r7, [r0, #4]
007aa828  87 12 a0 e1                                      lsl r1, r7, #5
007aa82c  28 10 81 e2                                      add r1, r1, #0x28
007aa830  c0 a0 fe eb                                      bl #0x752b38
007aa834  00 30 a0 e3                                      mov r3, #0
007aa838  00 30 88 e5                                      str r3, [r8]
007aa83c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007d089c, declared_size=388, range_size=388, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE3addERKS1_RKS4_
; demangled: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::add(gameswf::tu_string const&, gameswf::smart_ptr<gameswf::face_entity> const&)
; decoder-mode: arm
007d089c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d08a0  00 60 a0 e1                                      mov r6, r0
007d08a4  0c d0 4d e2                                      sub sp, sp, #0xc
007d08a8  01 50 a0 e1                                      mov r5, r1
007d08ac  02 90 a0 e1                                      mov sb, r2
007d08b0  af 00 00 eb                                      bl #0x7d0b74
007d08b4  00 30 96 e5                                      ldr r3, [r6]
007d08b8  00 20 93 e5                                      ldr r2, [r3]
007d08bc  01 20 82 e2                                      add r2, r2, #1
007d08c0  00 20 83 e5                                      str r2, [r3]
007d08c4  d0 30 d5 e1                                      ldrsb r3, [r5]
007d08c8  01 00 73 e3                                      cmn r3, #1
007d08cc  04 30 95 05                                      ldreq r3, [r5, #4]
007d08d0  01 30 43 12                                      subne r3, r3, #1
007d08d4  01 10 85 12                                      addne r1, r5, #1
007d08d8  01 30 43 02                                      subeq r3, r3, #1
007d08dc  0c 10 95 05                                      ldreq r1, [r5, #0xc]
007d08e0  00 00 53 e3                                      cmp r3, #0
007d08e4  05 45 01 d3                                      movwle r4, #0x1505
007d08e8  08 00 00 da                                      ble #0x7d0910
007d08ec  03 30 81 e0                                      add r3, r1, r3
007d08f0  05 45 01 e3                                      movw r4, #0x1505
007d08f4  01 20 73 e5                                      ldrb r2, [r3, #-1]!
007d08f8  84 42 84 e0                                      add r4, r4, r4, lsl #5
007d08fc  01 00 53 e1                                      cmp r3, r1
007d0900  02 40 24 e0                                      eor r4, r4, r2
007d0904  fa ff ff 1a                                      bne #0x7d08f4
007d0908  01 00 74 e3                                      cmn r4, #1
007d090c  02 49 e0 03                                      mvneq r4, #0x8000
007d0910  00 60 96 e5                                      ldr r6, [r6]
007d0914  04 c0 96 e5                                      ldr ip, [r6, #4]
007d0918  0c 20 04 e0                                      and r2, r4, ip
007d091c  02 b1 a0 e1                                      lsl fp, r2, #2
007d0920  01 b0 8b e2                                      add fp, fp, #1
007d0924  8b 31 96 e7                                      ldr r3, [r6, fp, lsl #3]
007d0928  8b a1 86 e0                                      add sl, r6, fp, lsl #3
007d092c  02 00 73 e3                                      cmn r3, #2
007d0930  22 00 00 0a                                      beq #0x7d09c0
007d0934  04 e0 9a e5                                      ldr lr, [sl, #4]
007d0938  01 00 7e e3                                      cmn lr, #1
007d093c  02 70 a0 11                                      movne r7, r2
007d0940  25 00 00 0a                                      beq #0x7d09dc
007d0944  01 70 87 e2                                      add r7, r7, #1
007d0948  0c 70 07 e0                                      and r7, r7, ip
007d094c  07 01 a0 e1                                      lsl r0, r7, #2
007d0950  01 00 80 e2                                      add r0, r0, #1
007d0954  80 11 96 e7                                      ldr r1, [r6, r0, lsl #3]
007d0958  80 01 86 e0                                      add r0, r6, r0, lsl #3
007d095c  02 00 71 e3                                      cmn r1, #2
007d0960  f7 ff ff 1a                                      bne #0x7d0944
007d0964  0e 30 0c e0                                      and r3, ip, lr
007d0968  02 00 53 e1                                      cmp r3, r2
007d096c  20 00 00 0a                                      beq #0x7d09f4
007d0970  03 81 a0 e1                                      lsl r8, r3, #2
007d0974  01 80 88 e2                                      add r8, r8, #1
007d0978  88 31 96 e7                                      ldr r3, [r6, r8, lsl #3]
007d097c  88 81 86 e0                                      add r8, r6, r8, lsl #3
007d0980  02 00 53 e1                                      cmp r3, r2
007d0984  f9 ff ff 1a                                      bne #0x7d0970
007d0988  0a 10 a0 e1                                      mov r1, sl
007d098c  b1 ff ff eb                                      bl #0x7d0858
007d0990  05 10 a0 e1                                      mov r1, r5
007d0994  08 00 8a e2                                      add r0, sl, #8
007d0998  00 70 88 e5                                      str r7, [r8]
007d099c  6b 09 fe eb                                      bl #0x752f50
007d09a0  00 10 99 e5                                      ldr r1, [sb]
007d09a4  1c 00 8a e2                                      add r0, sl, #0x1c
007d09a8  8b ff ff eb                                      bl #0x7d07dc
007d09ac  00 30 e0 e3                                      mvn r3, #0
007d09b0  04 40 8a e5                                      str r4, [sl, #4]
007d09b4  8b 31 86 e7                                      str r3, [r6, fp, lsl #3]
007d09b8  0c d0 8d e2                                      add sp, sp, #0xc
007d09bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d09c0  0a 00 a0 e1                                      mov r0, sl
007d09c4  05 10 a0 e1                                      mov r1, r5
007d09c8  09 20 a0 e1                                      mov r2, sb
007d09cc  00 30 e0 e3                                      mvn r3, #0
007d09d0  00 40 8d e5                                      str r4, [sp]
007d09d4  90 ff ff eb                                      bl #0x7d081c
007d09d8  f6 ff ff ea                                      b #0x7d09b8
007d09dc  0a 00 a0 e1                                      mov r0, sl
007d09e0  05 10 a0 e1                                      mov r1, r5
007d09e4  09 20 a0 e1                                      mov r2, sb
007d09e8  00 40 8d e5                                      str r4, [sp]
007d09ec  8a ff ff eb                                      bl #0x7d081c
007d09f0  f0 ff ff ea                                      b #0x7d09b8
007d09f4  0a 10 a0 e1                                      mov r1, sl
007d09f8  96 ff ff eb                                      bl #0x7d0858
007d09fc  05 10 a0 e1                                      mov r1, r5
007d0a00  08 00 8a e2                                      add r0, sl, #8
007d0a04  51 09 fe eb                                      bl #0x752f50
007d0a08  00 10 99 e5                                      ldr r1, [sb]
007d0a0c  1c 00 8a e2                                      add r0, sl, #0x1c
007d0a10  71 ff ff eb                                      bl #0x7d07dc
007d0a14  8b 71 86 e7                                      str r7, [r6, fp, lsl #3]
007d0a18  04 40 8a e5                                      str r4, [sl, #4]
007d0a1c  e5 ff ff ea                                      b #0x7d09b8

; FUNCTION 0x007d0a20, declared_size=340, range_size=340, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::set_raw_capacity(int)
; decoder-mode: arm
007d0a20  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007d0a24  00 00 51 e3                                      cmp r1, #0
007d0a28  0c d0 4d e2                                      sub sp, sp, #0xc
007d0a2c  00 80 a0 e1                                      mov r8, r0
007d0a30  4c 00 00 da                                      ble #0x7d0b68
007d0a34  01 00 41 e2                                      sub r0, r1, #1
007d0a38  c9 f7 ec eb                                      bl #0x30e964
007d0a3c  1c f5 ec eb                                      bl #0x30deb4
007d0a40  18 12 07 e3                                      movw r1, #0x7218
007d0a44  31 1f 43 e3                                      movt r1, #0x3f31
007d0a48  91 f8 ec eb                                      bl #0x30ec94
007d0a4c  fe 15 a0 e3                                      mov r1, #0x3f800000
007d0a50  53 f8 ec eb                                      bl #0x30eba4
007d0a54  9c f6 ec eb                                      bl #0x30e4cc
007d0a58  01 40 a0 e3                                      mov r4, #1
007d0a5c  14 40 a0 e1                                      lsl r4, r4, r0
007d0a60  00 30 98 e5                                      ldr r3, [r8]
007d0a64  04 00 54 e3                                      cmp r4, #4
007d0a68  04 40 a0 b3                                      movlt r4, #4
007d0a6c  00 00 53 e3                                      cmp r3, #0
007d0a70  03 00 00 0a                                      beq #0x7d0a84
007d0a74  04 30 93 e5                                      ldr r3, [r3, #4]
007d0a78  01 30 83 e2                                      add r3, r3, #1
007d0a7c  04 00 53 e1                                      cmp r3, r4
007d0a80  39 00 00 0a                                      beq #0x7d0b6c
007d0a84  00 50 a0 e3                                      mov r5, #0
007d0a88  84 02 a0 e1                                      lsl r0, r4, #5
007d0a8c  05 10 a0 e1                                      mov r1, r5
007d0a90  08 00 80 e2                                      add r0, r0, #8
007d0a94  04 50 8d e5                                      str r5, [sp, #4]
007d0a98  3f 08 fe eb                                      bl #0x752b9c
007d0a9c  04 00 8d e5                                      str r0, [sp, #4]
007d0aa0  00 50 80 e5                                      str r5, [r0]
007d0aa4  04 30 9d e5                                      ldr r3, [sp, #4]
007d0aa8  01 20 44 e2                                      sub r2, r4, #1
007d0aac  01 10 e0 e3                                      mvn r1, #1
007d0ab0  04 20 83 e5                                      str r2, [r3, #4]
007d0ab4  08 30 a0 e3                                      mov r3, #8
007d0ab8  04 20 9d e5                                      ldr r2, [sp, #4]
007d0abc  01 50 85 e2                                      add r5, r5, #1
007d0ac0  05 00 54 e1                                      cmp r4, r5
007d0ac4  03 10 82 e7                                      str r1, [r2, r3]
007d0ac8  20 30 83 e2                                      add r3, r3, #0x20
007d0acc  f9 ff ff ca                                      bgt #0x7d0ab8
007d0ad0  00 00 98 e5                                      ldr r0, [r8]
007d0ad4  00 00 50 e3                                      cmp r0, #0
007d0ad8  04 a0 8d 02                                      addeq sl, sp, #4
007d0adc  1c 00 00 0a                                      beq #0x7d0b54
007d0ae0  04 70 90 e5                                      ldr r7, [r0, #4]
007d0ae4  00 00 57 e3                                      cmp r7, #0
007d0ae8  04 a0 8d b2                                      addlt sl, sp, #4
007d0aec  15 00 00 ba                                      blt #0x7d0b48
007d0af0  08 40 a0 e3                                      mov r4, #8
007d0af4  00 60 a0 e3                                      mov r6, #0
007d0af8  04 a0 8d e2                                      add sl, sp, #4
007d0afc  04 30 90 e7                                      ldr r3, [r0, r4]
007d0b00  01 60 86 e2                                      add r6, r6, #1
007d0b04  04 50 80 e0                                      add r5, r0, r4
007d0b08  02 00 73 e3                                      cmn r3, #2
007d0b0c  09 00 00 0a                                      beq #0x7d0b38
007d0b10  04 30 95 e5                                      ldr r3, [r5, #4]
007d0b14  08 10 85 e2                                      add r1, r5, #8
007d0b18  1c 20 85 e2                                      add r2, r5, #0x1c
007d0b1c  01 00 73 e3                                      cmn r3, #1
007d0b20  04 00 00 0a                                      beq #0x7d0b38
007d0b24  0a 00 a0 e1                                      mov r0, sl
007d0b28  5b ff ff eb                                      bl #0x7d089c
007d0b2c  05 00 a0 e1                                      mov r0, r5
007d0b30  17 ff ff eb                                      bl #0x7d0794
007d0b34  00 00 98 e5                                      ldr r0, [r8]
007d0b38  06 00 57 e1                                      cmp r7, r6
007d0b3c  20 40 84 e2                                      add r4, r4, #0x20
007d0b40  ed ff ff aa                                      bge #0x7d0afc
007d0b44  04 70 90 e5                                      ldr r7, [r0, #4]
007d0b48  87 12 a0 e1                                      lsl r1, r7, #5
007d0b4c  28 10 81 e2                                      add r1, r1, #0x28
007d0b50  f8 07 fe eb                                      bl #0x752b38
007d0b54  04 30 9d e5                                      ldr r3, [sp, #4]
007d0b58  0a 00 a0 e1                                      mov r0, sl
007d0b5c  00 30 88 e5                                      str r3, [r8]
007d0b60  00 30 a0 e3                                      mov r3, #0
007d0b64  04 30 8d e5                                      str r3, [sp, #4]
007d0b68  08 67 ff eb                                      bl #0x7aa790
007d0b6c  0c d0 8d e2                                      add sp, sp, #0xc
007d0b70  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x007d0b74, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZN7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::check_expand()
; decoder-mode: arm
007d0b74  00 30 90 e5                                      ldr r3, [r0]
007d0b78  00 00 53 e3                                      cmp r3, #0
007d0b7c  07 00 00 0a                                      beq #0x7d0ba0
007d0b80  04 10 93 e5                                      ldr r1, [r3, #4]
007d0b84  00 30 93 e5                                      ldr r3, [r3]
007d0b88  01 10 81 e2                                      add r1, r1, #1
007d0b8c  81 10 a0 e1                                      lsl r1, r1, #1
007d0b90  83 30 83 e0                                      add r3, r3, r3, lsl #1
007d0b94  01 00 53 e1                                      cmp r3, r1
007d0b98  1e ff 2f d1                                      bxle lr
007d0b9c  9f ff ff ea                                      b #0x7d0a20
007d0ba0  08 10 a0 e3                                      mov r1, #8
007d0ba4  9d ff ff ea                                      b #0x7d0a20

; FUNCTION 0x007d0ba8, declared_size=260, range_size=260, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZNK7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE10find_indexERKS1_
; demangled: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::find_index(gameswf::tu_string const&) const
; decoder-mode: arm
007d0ba8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007d0bac  00 50 90 e5                                      ldr r5, [r0]
007d0bb0  01 70 a0 e1                                      mov r7, r1
007d0bb4  00 00 55 e3                                      cmp r5, #0
007d0bb8  02 00 00 1a                                      bne #0x7d0bc8
007d0bbc  00 60 e0 e3                                      mvn r6, #0
007d0bc0  06 00 a0 e1                                      mov r0, r6
007d0bc4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007d0bc8  d0 a0 d1 e1                                      ldrsb sl, [r1]
007d0bcc  01 00 7a e3                                      cmn sl, #1
007d0bd0  01 10 a0 11                                      movne r1, r1
007d0bd4  d1 30 d1 10                                      ldrsbne r3, [r1], #1
007d0bd8  04 30 97 05                                      ldreq r3, [r7, #4]
007d0bdc  0c 10 97 05                                      ldreq r1, [r7, #0xc]
007d0be0  01 30 43 e2                                      sub r3, r3, #1
007d0be4  00 00 53 e3                                      cmp r3, #0
007d0be8  05 45 01 d3                                      movwle r4, #0x1505
007d0bec  08 00 00 da                                      ble #0x7d0c14
007d0bf0  03 30 81 e0                                      add r3, r1, r3
007d0bf4  05 45 01 e3                                      movw r4, #0x1505
007d0bf8  01 20 73 e5                                      ldrb r2, [r3, #-1]!
007d0bfc  84 42 84 e0                                      add r4, r4, r4, lsl #5
007d0c00  01 00 53 e1                                      cmp r3, r1
007d0c04  02 40 24 e0                                      eor r4, r4, r2
007d0c08  fa ff ff 1a                                      bne #0x7d0bf8
007d0c0c  01 00 74 e3                                      cmn r4, #1
007d0c10  02 49 e0 03                                      mvneq r4, #0x8000
007d0c14  04 30 95 e5                                      ldr r3, [r5, #4]
007d0c18  03 60 04 e0                                      and r6, r4, r3
007d0c1c  06 81 a0 e1                                      lsl r8, r6, #2
007d0c20  01 80 88 e2                                      add r8, r8, #1
007d0c24  88 21 95 e7                                      ldr r2, [r5, r8, lsl #3]
007d0c28  88 81 85 e0                                      add r8, r5, r8, lsl #3
007d0c2c  02 00 72 e3                                      cmn r2, #2
007d0c30  e1 ff ff 0a                                      beq #0x7d0bbc
007d0c34  04 20 98 e5                                      ldr r2, [r8, #4]
007d0c38  01 00 72 e3                                      cmn r2, #1
007d0c3c  02 00 00 0a                                      beq #0x7d0c4c
007d0c40  02 30 03 e0                                      and r3, r3, r2
007d0c44  06 00 53 e1                                      cmp r3, r6
007d0c48  db ff ff 1a                                      bne #0x7d0bbc
007d0c4c  01 90 87 e2                                      add sb, r7, #1
007d0c50  05 00 00 ea                                      b #0x7d0c6c
007d0c54  00 60 98 e5                                      ldr r6, [r8]
007d0c58  01 00 76 e3                                      cmn r6, #1
007d0c5c  d7 ff ff 0a                                      beq #0x7d0bc0
007d0c60  86 82 85 e0                                      add r8, r5, r6, lsl #5
007d0c64  08 80 88 e2                                      add r8, r8, #8
007d0c68  04 20 98 e5                                      ldr r2, [r8, #4]
007d0c6c  02 00 54 e1                                      cmp r4, r2
007d0c70  f7 ff ff 1a                                      bne #0x7d0c54
007d0c74  08 30 88 e2                                      add r3, r8, #8
007d0c78  03 00 57 e1                                      cmp r7, r3
007d0c7c  cf ff ff 0a                                      beq #0x7d0bc0
007d0c80  d8 30 d8 e1                                      ldrsb r3, [r8, #8]
007d0c84  01 00 73 e3                                      cmn r3, #1
007d0c88  09 00 88 12                                      addne r0, r8, #9
007d0c8c  14 00 98 05                                      ldreq r0, [r8, #0x14]
007d0c90  01 00 7a e3                                      cmn sl, #1
007d0c94  09 10 a0 11                                      movne r1, sb
007d0c98  0c 10 97 05                                      ldreq r1, [r7, #0xc]
007d0c9c  9e f5 ec eb                                      bl #0x30e31c
007d0ca0  00 00 50 e3                                      cmp r0, #0
007d0ca4  ea ff ff 1a                                      bne #0x7d0c54
007d0ca8  c4 ff ff ea                                      b #0x7d0bc0

; FUNCTION 0x007d0cac, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >
; alias: _ZNK7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE3getERKS1_PS4_
; demangled: gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::get(gameswf::tu_string const&, gameswf::smart_ptr<gameswf::face_entity>*) const
; decoder-mode: arm
007d0cac  70 40 2d e9                                      push {r4, r5, r6, lr}
007d0cb0  02 40 a0 e1                                      mov r4, r2
007d0cb4  00 50 a0 e1                                      mov r5, r0
007d0cb8  ba ff ff eb                                      bl #0x7d0ba8
007d0cbc  00 30 50 e2                                      subs r3, r0, #0
007d0cc0  08 00 00 ba                                      blt #0x7d0ce8
007d0cc4  00 00 54 e3                                      cmp r4, #0
007d0cc8  08 00 00 0a                                      beq #0x7d0cf0
007d0ccc  00 20 95 e5                                      ldr r2, [r5]
007d0cd0  04 00 a0 e1                                      mov r0, r4
007d0cd4  83 32 82 e0                                      add r3, r2, r3, lsl #5
007d0cd8  24 10 93 e5                                      ldr r1, [r3, #0x24]
007d0cdc  be fe ff eb                                      bl #0x7d07dc
007d0ce0  01 00 a0 e3                                      mov r0, #1
007d0ce4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d0ce8  00 00 a0 e3                                      mov r0, #0
007d0cec  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d0cf0  01 00 a0 e3                                      mov r0, #1
007d0cf4  70 80 bd e8                                      pop {r4, r5, r6, pc}
