; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00763aa0, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_20bitmap_character_defEEENS_15fixed_size_hashIiEEE10find_indexERKi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >::find_index(int const&) const
; decoder-mode: arm
00763aa0  30 00 2d e9                                      push {r4, r5}
00763aa4  00 30 90 e5                                      ldr r3, [r0]
00763aa8  00 00 53 e3                                      cmp r3, #0
00763aac  02 00 00 1a                                      bne #0x763abc
00763ab0  00 00 e0 e3                                      mvn r0, #0
00763ab4  30 00 bd e8                                      pop {r4, r5}
00763ab8  1e ff 2f e1                                      bx lr
00763abc  05 25 01 e3                                      movw r2, #0x1505
00763ac0  04 00 a0 e3                                      mov r0, #4
00763ac4  01 00 40 e2                                      sub r0, r0, #1
00763ac8  00 40 d1 e7                                      ldrb r4, [r1, r0]
00763acc  02 c3 a0 e1                                      lsl ip, r2, #6
00763ad0  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00763ad4  04 c0 8c e0                                      add ip, ip, r4
00763ad8  00 00 50 e3                                      cmp r0, #0
00763adc  0c 20 62 e0                                      rsb r2, r2, ip
00763ae0  f7 ff ff 1a                                      bne #0x763ac4
00763ae4  04 00 93 e5                                      ldr r0, [r3, #4]
00763ae8  01 00 72 e3                                      cmn r2, #1
00763aec  02 29 e0 03                                      mvneq r2, #0x8000
00763af0  00 40 02 e0                                      and r4, r2, r0
00763af4  84 c0 a0 e1                                      lsl ip, r4, #1
00763af8  01 c0 8c e2                                      add ip, ip, #1
00763afc  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
00763b00  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00763b04  02 00 75 e3                                      cmn r5, #2
00763b08  e8 ff ff 0a                                      beq #0x763ab0
00763b0c  04 50 9c e5                                      ldr r5, [ip, #4]
00763b10  01 00 75 e3                                      cmn r5, #1
00763b14  04 00 a0 01                                      moveq r0, r4
00763b18  06 00 00 0a                                      beq #0x763b38
00763b1c  05 00 00 e0                                      and r0, r0, r5
00763b20  04 00 50 e1                                      cmp r0, r4
00763b24  e1 ff ff 1a                                      bne #0x763ab0
00763b28  02 00 00 ea                                      b #0x763b38
00763b2c  00 c2 83 e0                                      add ip, r3, r0, lsl #4
00763b30  08 c0 8c e2                                      add ip, ip, #8
00763b34  04 50 9c e5                                      ldr r5, [ip, #4]
00763b38  05 00 52 e1                                      cmp r2, r5
00763b3c  03 00 00 1a                                      bne #0x763b50
00763b40  08 50 9c e5                                      ldr r5, [ip, #8]
00763b44  00 40 91 e5                                      ldr r4, [r1]
00763b48  04 00 55 e1                                      cmp r5, r4
00763b4c  d8 ff ff 0a                                      beq #0x763ab4
00763b50  00 00 9c e5                                      ldr r0, [ip]
00763b54  01 00 70 e3                                      cmn r0, #1
00763b58  f3 ff ff 1a                                      bne #0x763b2c
00763b5c  d4 ff ff ea                                      b #0x763ab4

; FUNCTION 0x00763f28, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_20bitmap_character_defEEENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
00763f28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00763f2c  00 40 a0 e1                                      mov r4, r0
00763f30  00 00 90 e5                                      ldr r0, [r0]
00763f34  00 00 50 e3                                      cmp r0, #0
00763f38  1d 00 00 0a                                      beq #0x763fb4
00763f3c  04 80 90 e5                                      ldr r8, [r0, #4]
00763f40  00 00 58 e3                                      cmp r8, #0
00763f44  15 00 00 ba                                      blt #0x763fa0
00763f48  00 70 a0 e3                                      mov r7, #0
00763f4c  08 50 a0 e3                                      mov r5, #8
00763f50  01 90 e0 e3                                      mvn sb, #1
00763f54  07 a0 a0 e1                                      mov sl, r7
00763f58  05 30 90 e7                                      ldr r3, [r0, r5]
00763f5c  01 70 87 e2                                      add r7, r7, #1
00763f60  05 60 80 e0                                      add r6, r0, r5
00763f64  02 00 73 e3                                      cmn r3, #2
00763f68  08 00 00 0a                                      beq #0x763f90
00763f6c  04 30 96 e5                                      ldr r3, [r6, #4]
00763f70  01 00 73 e3                                      cmn r3, #1
00763f74  05 00 00 0a                                      beq #0x763f90
00763f78  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00763f7c  00 00 50 e3                                      cmp r0, #0
00763f80  00 00 00 0a                                      beq #0x763f88
00763f84  ad d8 ff eb                                      bl #0x75a240
00763f88  00 06 86 e8                                      stm r6, {sb, sl}
00763f8c  00 00 94 e5                                      ldr r0, [r4]
00763f90  07 00 58 e1                                      cmp r8, r7
00763f94  10 50 85 e2                                      add r5, r5, #0x10
00763f98  ee ff ff aa                                      bge #0x763f58
00763f9c  04 80 90 e5                                      ldr r8, [r0, #4]
00763fa0  08 12 a0 e1                                      lsl r1, r8, #4
00763fa4  18 10 81 e2                                      add r1, r1, #0x18
00763fa8  e2 ba ff eb                                      bl #0x752b38
00763fac  00 30 a0 e3                                      mov r3, #0
00763fb0  00 30 84 e5                                      str r3, [r4]
00763fb4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007641a4, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_20bitmap_character_defEEENS_15fixed_size_hashIiEEE3getERKiPS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >::get(int const&, gameswf::smart_ptr<gameswf::bitmap_character_def>*) const
; decoder-mode: arm
007641a4  70 40 2d e9                                      push {r4, r5, r6, lr}
007641a8  02 40 a0 e1                                      mov r4, r2
007641ac  00 50 a0 e1                                      mov r5, r0
007641b0  3a fe ff eb                                      bl #0x763aa0
007641b4  00 30 50 e2                                      subs r3, r0, #0
007641b8  08 00 00 ba                                      blt #0x7641e0
007641bc  00 00 54 e3                                      cmp r4, #0
007641c0  08 00 00 0a                                      beq #0x7641e8
007641c4  00 20 95 e5                                      ldr r2, [r5]
007641c8  04 00 a0 e1                                      mov r0, r4
007641cc  03 32 82 e0                                      add r3, r2, r3, lsl #4
007641d0  14 10 93 e5                                      ldr r1, [r3, #0x14]
007641d4  80 f5 ff eb                                      bl #0x7617dc
007641d8  01 00 a0 e3                                      mov r0, #1
007641dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007641e0  00 00 a0 e3                                      mov r0, #0
007641e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007641e8  01 00 a0 e3                                      mov r0, #1
007641ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00766960, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_20bitmap_character_defEEENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
00766960  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00766964  00 00 51 e3                                      cmp r1, #0
00766968  0c d0 4d e2                                      sub sp, sp, #0xc
0076696c  00 a0 a0 e1                                      mov sl, r0
00766970  51 00 00 da                                      ble #0x766abc
00766974  01 00 41 e2                                      sub r0, r1, #1
00766978  f9 9f ee eb                                      bl #0x30e964
0076697c  4c 9d ee eb                                      bl #0x30deb4
00766980  18 12 07 e3                                      movw r1, #0x7218
00766984  31 1f 43 e3                                      movt r1, #0x3f31
00766988  c1 a0 ee eb                                      bl #0x30ec94
0076698c  fe 15 a0 e3                                      mov r1, #0x3f800000
00766990  83 a0 ee eb                                      bl #0x30eba4
00766994  cc 9e ee eb                                      bl #0x30e4cc
00766998  01 40 a0 e3                                      mov r4, #1
0076699c  14 40 a0 e1                                      lsl r4, r4, r0
007669a0  00 30 9a e5                                      ldr r3, [sl]
007669a4  04 00 54 e3                                      cmp r4, #4
007669a8  04 40 a0 b3                                      movlt r4, #4
007669ac  00 00 53 e3                                      cmp r3, #0
007669b0  03 00 00 0a                                      beq #0x7669c4
007669b4  04 30 93 e5                                      ldr r3, [r3, #4]
007669b8  01 30 83 e2                                      add r3, r3, #1
007669bc  04 00 53 e1                                      cmp r3, r4
007669c0  3e 00 00 0a                                      beq #0x766ac0
007669c4  00 50 a0 e3                                      mov r5, #0
007669c8  04 02 a0 e1                                      lsl r0, r4, #4
007669cc  08 00 80 e2                                      add r0, r0, #8
007669d0  05 10 a0 e1                                      mov r1, r5
007669d4  04 50 8d e5                                      str r5, [sp, #4]
007669d8  6f b0 ff eb                                      bl #0x752b9c
007669dc  04 00 8d e5                                      str r0, [sp, #4]
007669e0  00 50 80 e5                                      str r5, [r0]
007669e4  04 30 9d e5                                      ldr r3, [sp, #4]
007669e8  01 20 44 e2                                      sub r2, r4, #1
007669ec  01 90 e0 e3                                      mvn sb, #1
007669f0  04 20 83 e5                                      str r2, [r3, #4]
007669f4  08 30 a0 e3                                      mov r3, #8
007669f8  04 20 9d e5                                      ldr r2, [sp, #4]
007669fc  01 50 85 e2                                      add r5, r5, #1
00766a00  05 00 54 e1                                      cmp r4, r5
00766a04  03 90 82 e7                                      str sb, [r2, r3]
00766a08  10 30 83 e2                                      add r3, r3, #0x10
00766a0c  f9 ff ff ca                                      bgt #0x7669f8
00766a10  00 30 9a e5                                      ldr r3, [sl]
00766a14  00 00 53 e3                                      cmp r3, #0
00766a18  04 80 8d 02                                      addeq r8, sp, #4
00766a1c  21 00 00 0a                                      beq #0x766aa8
00766a20  04 70 93 e5                                      ldr r7, [r3, #4]
00766a24  00 00 57 e3                                      cmp r7, #0
00766a28  04 80 8d b2                                      addlt r8, sp, #4
00766a2c  19 00 00 ba                                      blt #0x766a98
00766a30  00 60 a0 e3                                      mov r6, #0
00766a34  08 50 a0 e3                                      mov r5, #8
00766a38  04 80 8d e2                                      add r8, sp, #4
00766a3c  06 b0 a0 e1                                      mov fp, r6
00766a40  05 c0 93 e7                                      ldr ip, [r3, r5]
00766a44  05 40 83 e0                                      add r4, r3, r5
00766a48  08 00 a0 e1                                      mov r0, r8
00766a4c  02 00 7c e3                                      cmn ip, #2
00766a50  01 60 86 e2                                      add r6, r6, #1
00766a54  08 10 84 e2                                      add r1, r4, #8
00766a58  0c 20 84 e2                                      add r2, r4, #0xc
00766a5c  09 00 00 0a                                      beq #0x766a88
00766a60  04 c0 94 e5                                      ldr ip, [r4, #4]
00766a64  01 00 7c e3                                      cmn ip, #1
00766a68  06 00 00 0a                                      beq #0x766a88
00766a6c  22 00 00 eb                                      bl #0x766afc
00766a70  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00766a74  00 00 50 e3                                      cmp r0, #0
00766a78  00 00 00 0a                                      beq #0x766a80
00766a7c  ef cd ff eb                                      bl #0x75a240
00766a80  00 0a 84 e8                                      stm r4, {sb, fp}
00766a84  00 30 9a e5                                      ldr r3, [sl]
00766a88  06 00 57 e1                                      cmp r7, r6
00766a8c  10 50 85 e2                                      add r5, r5, #0x10
00766a90  ea ff ff aa                                      bge #0x766a40
00766a94  04 70 93 e5                                      ldr r7, [r3, #4]
00766a98  07 12 a0 e1                                      lsl r1, r7, #4
00766a9c  03 00 a0 e1                                      mov r0, r3
00766aa0  18 10 81 e2                                      add r1, r1, #0x18
00766aa4  23 b0 ff eb                                      bl #0x752b38
00766aa8  04 30 9d e5                                      ldr r3, [sp, #4]
00766aac  08 00 a0 e1                                      mov r0, r8
00766ab0  00 30 8a e5                                      str r3, [sl]
00766ab4  00 30 a0 e3                                      mov r3, #0
00766ab8  04 30 8d e5                                      str r3, [sp, #4]
00766abc  19 f5 ff eb                                      bl #0x763f28
00766ac0  0c d0 8d e2                                      add sp, sp, #0xc
00766ac4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00766ac8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_20bitmap_character_defEEENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
00766ac8  00 30 90 e5                                      ldr r3, [r0]
00766acc  00 00 53 e3                                      cmp r3, #0
00766ad0  07 00 00 0a                                      beq #0x766af4
00766ad4  04 10 93 e5                                      ldr r1, [r3, #4]
00766ad8  00 30 93 e5                                      ldr r3, [r3]
00766adc  01 10 81 e2                                      add r1, r1, #1
00766ae0  81 10 a0 e1                                      lsl r1, r1, #1
00766ae4  83 30 83 e0                                      add r3, r3, r3, lsl #1
00766ae8  01 00 53 e1                                      cmp r3, r1
00766aec  1e ff 2f d1                                      bxle lr
00766af0  9a ff ff ea                                      b #0x766960
00766af4  08 10 a0 e3                                      mov r1, #8
00766af8  98 ff ff ea                                      b #0x766960

; FUNCTION 0x00766afc, declared_size=412, range_size=412, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_20bitmap_character_defEEENS_15fixed_size_hashIiEEE3addERKiRKS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::smart_ptr<gameswf::bitmap_character_def> const&)
; decoder-mode: arm
00766afc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00766b00  00 40 a0 e1                                      mov r4, r0
00766b04  04 d0 4d e2                                      sub sp, sp, #4
00766b08  01 80 a0 e1                                      mov r8, r1
00766b0c  02 b0 a0 e1                                      mov fp, r2
00766b10  ec ff ff eb                                      bl #0x766ac8
00766b14  00 20 94 e5                                      ldr r2, [r4]
00766b18  05 55 01 e3                                      movw r5, #0x1505
00766b1c  04 30 a0 e3                                      mov r3, #4
00766b20  00 10 92 e5                                      ldr r1, [r2]
00766b24  01 10 81 e2                                      add r1, r1, #1
00766b28  00 10 82 e5                                      str r1, [r2]
00766b2c  01 30 43 e2                                      sub r3, r3, #1
00766b30  03 10 d8 e7                                      ldrb r1, [r8, r3]
00766b34  05 23 a0 e1                                      lsl r2, r5, #6
00766b38  05 28 82 e0                                      add r2, r2, r5, lsl #16
00766b3c  01 20 82 e0                                      add r2, r2, r1
00766b40  00 00 53 e3                                      cmp r3, #0
00766b44  02 50 65 e0                                      rsb r5, r5, r2
00766b48  f7 ff ff 1a                                      bne #0x766b2c
00766b4c  00 40 94 e5                                      ldr r4, [r4]
00766b50  01 00 75 e3                                      cmn r5, #1
00766b54  02 59 e0 03                                      mvneq r5, #0x8000
00766b58  04 20 94 e5                                      ldr r2, [r4, #4]
00766b5c  02 30 05 e0                                      and r3, r5, r2
00766b60  83 a0 a0 e1                                      lsl sl, r3, #1
00766b64  01 a0 8a e2                                      add sl, sl, #1
00766b68  8a 11 94 e7                                      ldr r1, [r4, sl, lsl #3]
00766b6c  8a 71 84 e0                                      add r7, r4, sl, lsl #3
00766b70  02 00 71 e3                                      cmn r1, #2
00766b74  00 30 e0 03                                      mvneq r3, #0
00766b78  8a 31 84 07                                      streq r3, [r4, sl, lsl #3]
00766b7c  29 00 00 0a                                      beq #0x766c28
00766b80  04 00 97 e5                                      ldr r0, [r7, #4]
00766b84  01 00 70 e3                                      cmn r0, #1
00766b88  03 60 a0 11                                      movne r6, r3
00766b8c  25 00 00 0a                                      beq #0x766c28
00766b90  01 60 86 e2                                      add r6, r6, #1
00766b94  02 60 06 e0                                      and r6, r6, r2
00766b98  86 c0 a0 e1                                      lsl ip, r6, #1
00766b9c  01 c0 8c e2                                      add ip, ip, #1
00766ba0  8c e1 94 e7                                      ldr lr, [r4, ip, lsl #3]
00766ba4  8c c1 84 e0                                      add ip, r4, ip, lsl #3
00766ba8  02 00 7e e3                                      cmn lr, #2
00766bac  f7 ff ff 1a                                      bne #0x766b90
00766bb0  00 20 02 e0                                      and r2, r2, r0
00766bb4  03 00 52 e1                                      cmp r2, r3
00766bb8  24 00 00 0a                                      beq #0x766c50
00766bbc  82 20 a0 e1                                      lsl r2, r2, #1
00766bc0  01 90 82 e2                                      add sb, r2, #1
00766bc4  89 21 94 e7                                      ldr r2, [r4, sb, lsl #3]
00766bc8  89 91 84 e0                                      add sb, r4, sb, lsl #3
00766bcc  03 00 52 e1                                      cmp r2, r3
00766bd0  f9 ff ff 1a                                      bne #0x766bbc
00766bd4  00 10 8c e5                                      str r1, [ip]
00766bd8  04 30 97 e5                                      ldr r3, [r7, #4]
00766bdc  04 30 8c e5                                      str r3, [ip, #4]
00766be0  08 30 97 e5                                      ldr r3, [r7, #8]
00766be4  08 30 8c e5                                      str r3, [ip, #8]
00766be8  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00766bec  00 00 50 e3                                      cmp r0, #0
00766bf0  0c 00 8c e5                                      str r0, [ip, #0xc]
00766bf4  00 00 00 0a                                      beq #0x766bfc
00766bf8  19 cc ff eb                                      bl #0x759c64
00766bfc  00 60 89 e5                                      str r6, [sb]
00766c00  00 30 98 e5                                      ldr r3, [r8]
00766c04  0c 00 87 e2                                      add r0, r7, #0xc
00766c08  08 30 87 e5                                      str r3, [r7, #8]
00766c0c  00 10 9b e5                                      ldr r1, [fp]
00766c10  f1 ea ff eb                                      bl #0x7617dc
00766c14  00 30 e0 e3                                      mvn r3, #0
00766c18  04 50 87 e5                                      str r5, [r7, #4]
00766c1c  8a 31 84 e7                                      str r3, [r4, sl, lsl #3]
00766c20  04 d0 8d e2                                      add sp, sp, #4
00766c24  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00766c28  04 50 87 e5                                      str r5, [r7, #4]
00766c2c  00 30 98 e5                                      ldr r3, [r8]
00766c30  08 30 87 e5                                      str r3, [r7, #8]
00766c34  00 00 9b e5                                      ldr r0, [fp]
00766c38  00 00 50 e3                                      cmp r0, #0
00766c3c  0c 00 87 e5                                      str r0, [r7, #0xc]
00766c40  f6 ff ff 0a                                      beq #0x766c20
00766c44  04 d0 8d e2                                      add sp, sp, #4
00766c48  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00766c4c  04 cc ff ea                                      b #0x759c64
00766c50  00 10 8c e5                                      str r1, [ip]
00766c54  04 30 97 e5                                      ldr r3, [r7, #4]
00766c58  04 30 8c e5                                      str r3, [ip, #4]
00766c5c  08 30 97 e5                                      ldr r3, [r7, #8]
00766c60  08 30 8c e5                                      str r3, [ip, #8]
00766c64  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00766c68  00 00 50 e3                                      cmp r0, #0
00766c6c  0c 00 8c e5                                      str r0, [ip, #0xc]
00766c70  00 00 00 0a                                      beq #0x766c78
00766c74  fa cb ff eb                                      bl #0x759c64
00766c78  00 30 98 e5                                      ldr r3, [r8]
00766c7c  0c 00 87 e2                                      add r0, r7, #0xc
00766c80  08 30 87 e5                                      str r3, [r7, #8]
00766c84  00 10 9b e5                                      ldr r1, [fp]
00766c88  d3 ea ff eb                                      bl #0x7617dc
00766c8c  8a 61 84 e7                                      str r6, [r4, sl, lsl #3]
00766c90  04 50 87 e5                                      str r5, [r7, #4]
00766c94  e1 ff ff ea                                      b #0x766c20
