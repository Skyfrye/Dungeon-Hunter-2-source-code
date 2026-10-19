; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077e08c, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_11as_functionEEENS_15fixed_size_hashIiEEE10find_indexERKi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >::find_index(int const&) const
; decoder-mode: arm
0077e08c  30 00 2d e9                                      push {r4, r5}
0077e090  00 30 90 e5                                      ldr r3, [r0]
0077e094  00 00 53 e3                                      cmp r3, #0
0077e098  02 00 00 1a                                      bne #0x77e0a8
0077e09c  00 00 e0 e3                                      mvn r0, #0
0077e0a0  30 00 bd e8                                      pop {r4, r5}
0077e0a4  1e ff 2f e1                                      bx lr
0077e0a8  05 25 01 e3                                      movw r2, #0x1505
0077e0ac  04 00 a0 e3                                      mov r0, #4
0077e0b0  01 00 40 e2                                      sub r0, r0, #1
0077e0b4  00 40 d1 e7                                      ldrb r4, [r1, r0]
0077e0b8  02 c3 a0 e1                                      lsl ip, r2, #6
0077e0bc  02 c8 8c e0                                      add ip, ip, r2, lsl #16
0077e0c0  04 c0 8c e0                                      add ip, ip, r4
0077e0c4  00 00 50 e3                                      cmp r0, #0
0077e0c8  0c 20 62 e0                                      rsb r2, r2, ip
0077e0cc  f7 ff ff 1a                                      bne #0x77e0b0
0077e0d0  04 00 93 e5                                      ldr r0, [r3, #4]
0077e0d4  01 00 72 e3                                      cmn r2, #1
0077e0d8  02 29 e0 03                                      mvneq r2, #0x8000
0077e0dc  00 40 02 e0                                      and r4, r2, r0
0077e0e0  84 c0 a0 e1                                      lsl ip, r4, #1
0077e0e4  01 c0 8c e2                                      add ip, ip, #1
0077e0e8  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
0077e0ec  8c c1 83 e0                                      add ip, r3, ip, lsl #3
0077e0f0  02 00 75 e3                                      cmn r5, #2
0077e0f4  e8 ff ff 0a                                      beq #0x77e09c
0077e0f8  04 50 9c e5                                      ldr r5, [ip, #4]
0077e0fc  01 00 75 e3                                      cmn r5, #1
0077e100  04 00 a0 01                                      moveq r0, r4
0077e104  06 00 00 0a                                      beq #0x77e124
0077e108  05 00 00 e0                                      and r0, r0, r5
0077e10c  04 00 50 e1                                      cmp r0, r4
0077e110  e1 ff ff 1a                                      bne #0x77e09c
0077e114  02 00 00 ea                                      b #0x77e124
0077e118  00 c2 83 e0                                      add ip, r3, r0, lsl #4
0077e11c  08 c0 8c e2                                      add ip, ip, #8
0077e120  04 50 9c e5                                      ldr r5, [ip, #4]
0077e124  05 00 52 e1                                      cmp r2, r5
0077e128  03 00 00 1a                                      bne #0x77e13c
0077e12c  08 50 9c e5                                      ldr r5, [ip, #8]
0077e130  00 40 91 e5                                      ldr r4, [r1]
0077e134  04 00 55 e1                                      cmp r5, r4
0077e138  d8 ff ff 0a                                      beq #0x77e0a0
0077e13c  00 00 9c e5                                      ldr r0, [ip]
0077e140  01 00 70 e3                                      cmn r0, #1
0077e144  f3 ff ff 1a                                      bne #0x77e118
0077e148  d4 ff ff ea                                      b #0x77e0a0

; FUNCTION 0x0077e25c, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_11as_functionEEENS_15fixed_size_hashIiEEE3getERKiPS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >::get(int const&, gameswf::smart_ptr<gameswf::as_function>*) const
; decoder-mode: arm
0077e25c  70 40 2d e9                                      push {r4, r5, r6, lr}
0077e260  02 40 a0 e1                                      mov r4, r2
0077e264  00 50 a0 e1                                      mov r5, r0
0077e268  87 ff ff eb                                      bl #0x77e08c
0077e26c  00 30 50 e2                                      subs r3, r0, #0
0077e270  08 00 00 ba                                      blt #0x77e298
0077e274  00 00 54 e3                                      cmp r4, #0
0077e278  08 00 00 0a                                      beq #0x77e2a0
0077e27c  00 20 95 e5                                      ldr r2, [r5]
0077e280  04 00 a0 e1                                      mov r0, r4
0077e284  03 32 82 e0                                      add r3, r2, r3, lsl #4
0077e288  14 10 93 e5                                      ldr r1, [r3, #0x14]
0077e28c  e2 ff ff eb                                      bl #0x77e21c
0077e290  01 00 a0 e3                                      mov r0, #1
0077e294  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077e298  00 00 a0 e3                                      mov r0, #0
0077e29c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077e2a0  01 00 a0 e3                                      mov r0, #1
0077e2a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0077e328, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_11as_functionEEENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
0077e328  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077e32c  00 40 a0 e1                                      mov r4, r0
0077e330  00 00 90 e5                                      ldr r0, [r0]
0077e334  00 00 50 e3                                      cmp r0, #0
0077e338  1d 00 00 0a                                      beq #0x77e3b4
0077e33c  04 80 90 e5                                      ldr r8, [r0, #4]
0077e340  00 00 58 e3                                      cmp r8, #0
0077e344  15 00 00 ba                                      blt #0x77e3a0
0077e348  00 70 a0 e3                                      mov r7, #0
0077e34c  08 50 a0 e3                                      mov r5, #8
0077e350  01 90 e0 e3                                      mvn sb, #1
0077e354  07 a0 a0 e1                                      mov sl, r7
0077e358  05 30 90 e7                                      ldr r3, [r0, r5]
0077e35c  01 70 87 e2                                      add r7, r7, #1
0077e360  05 60 80 e0                                      add r6, r0, r5
0077e364  02 00 73 e3                                      cmn r3, #2
0077e368  08 00 00 0a                                      beq #0x77e390
0077e36c  04 30 96 e5                                      ldr r3, [r6, #4]
0077e370  01 00 73 e3                                      cmn r3, #1
0077e374  05 00 00 0a                                      beq #0x77e390
0077e378  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0077e37c  00 00 50 e3                                      cmp r0, #0
0077e380  00 00 00 0a                                      beq #0x77e388
0077e384  ad 6f ff eb                                      bl #0x75a240
0077e388  00 06 86 e8                                      stm r6, {sb, sl}
0077e38c  00 00 94 e5                                      ldr r0, [r4]
0077e390  07 00 58 e1                                      cmp r8, r7
0077e394  10 50 85 e2                                      add r5, r5, #0x10
0077e398  ee ff ff aa                                      bge #0x77e358
0077e39c  04 80 90 e5                                      ldr r8, [r0, #4]
0077e3a0  08 12 a0 e1                                      lsl r1, r8, #4
0077e3a4  18 10 81 e2                                      add r1, r1, #0x18
0077e3a8  e2 51 ff eb                                      bl #0x752b38
0077e3ac  00 30 a0 e3                                      mov r3, #0
0077e3b0  00 30 84 e5                                      str r3, [r4]
0077e3b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0077e3b8, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_11as_functionEEENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
0077e3b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077e3bc  00 00 51 e3                                      cmp r1, #0
0077e3c0  0c d0 4d e2                                      sub sp, sp, #0xc
0077e3c4  00 a0 a0 e1                                      mov sl, r0
0077e3c8  51 00 00 da                                      ble #0x77e514
0077e3cc  01 00 41 e2                                      sub r0, r1, #1
0077e3d0  63 41 ee eb                                      bl #0x30e964
0077e3d4  b6 3e ee eb                                      bl #0x30deb4
0077e3d8  18 12 07 e3                                      movw r1, #0x7218
0077e3dc  31 1f 43 e3                                      movt r1, #0x3f31
0077e3e0  2b 42 ee eb                                      bl #0x30ec94
0077e3e4  fe 15 a0 e3                                      mov r1, #0x3f800000
0077e3e8  ed 41 ee eb                                      bl #0x30eba4
0077e3ec  36 40 ee eb                                      bl #0x30e4cc
0077e3f0  01 40 a0 e3                                      mov r4, #1
0077e3f4  14 40 a0 e1                                      lsl r4, r4, r0
0077e3f8  00 30 9a e5                                      ldr r3, [sl]
0077e3fc  04 00 54 e3                                      cmp r4, #4
0077e400  04 40 a0 b3                                      movlt r4, #4
0077e404  00 00 53 e3                                      cmp r3, #0
0077e408  03 00 00 0a                                      beq #0x77e41c
0077e40c  04 30 93 e5                                      ldr r3, [r3, #4]
0077e410  01 30 83 e2                                      add r3, r3, #1
0077e414  04 00 53 e1                                      cmp r3, r4
0077e418  3e 00 00 0a                                      beq #0x77e518
0077e41c  00 50 a0 e3                                      mov r5, #0
0077e420  04 02 a0 e1                                      lsl r0, r4, #4
0077e424  08 00 80 e2                                      add r0, r0, #8
0077e428  05 10 a0 e1                                      mov r1, r5
0077e42c  04 50 8d e5                                      str r5, [sp, #4]
0077e430  d9 51 ff eb                                      bl #0x752b9c
0077e434  04 00 8d e5                                      str r0, [sp, #4]
0077e438  00 50 80 e5                                      str r5, [r0]
0077e43c  04 30 9d e5                                      ldr r3, [sp, #4]
0077e440  01 20 44 e2                                      sub r2, r4, #1
0077e444  01 90 e0 e3                                      mvn sb, #1
0077e448  04 20 83 e5                                      str r2, [r3, #4]
0077e44c  08 30 a0 e3                                      mov r3, #8
0077e450  04 20 9d e5                                      ldr r2, [sp, #4]
0077e454  01 50 85 e2                                      add r5, r5, #1
0077e458  05 00 54 e1                                      cmp r4, r5
0077e45c  03 90 82 e7                                      str sb, [r2, r3]
0077e460  10 30 83 e2                                      add r3, r3, #0x10
0077e464  f9 ff ff ca                                      bgt #0x77e450
0077e468  00 30 9a e5                                      ldr r3, [sl]
0077e46c  00 00 53 e3                                      cmp r3, #0
0077e470  04 80 8d 02                                      addeq r8, sp, #4
0077e474  21 00 00 0a                                      beq #0x77e500
0077e478  04 70 93 e5                                      ldr r7, [r3, #4]
0077e47c  00 00 57 e3                                      cmp r7, #0
0077e480  04 80 8d b2                                      addlt r8, sp, #4
0077e484  19 00 00 ba                                      blt #0x77e4f0
0077e488  00 60 a0 e3                                      mov r6, #0
0077e48c  08 50 a0 e3                                      mov r5, #8
0077e490  04 80 8d e2                                      add r8, sp, #4
0077e494  06 b0 a0 e1                                      mov fp, r6
0077e498  05 c0 93 e7                                      ldr ip, [r3, r5]
0077e49c  05 40 83 e0                                      add r4, r3, r5
0077e4a0  08 00 a0 e1                                      mov r0, r8
0077e4a4  02 00 7c e3                                      cmn ip, #2
0077e4a8  01 60 86 e2                                      add r6, r6, #1
0077e4ac  08 10 84 e2                                      add r1, r4, #8
0077e4b0  0c 20 84 e2                                      add r2, r4, #0xc
0077e4b4  09 00 00 0a                                      beq #0x77e4e0
0077e4b8  04 c0 94 e5                                      ldr ip, [r4, #4]
0077e4bc  01 00 7c e3                                      cmn ip, #1
0077e4c0  06 00 00 0a                                      beq #0x77e4e0
0077e4c4  22 00 00 eb                                      bl #0x77e554
0077e4c8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0077e4cc  00 00 50 e3                                      cmp r0, #0
0077e4d0  00 00 00 0a                                      beq #0x77e4d8
0077e4d4  59 6f ff eb                                      bl #0x75a240
0077e4d8  00 0a 84 e8                                      stm r4, {sb, fp}
0077e4dc  00 30 9a e5                                      ldr r3, [sl]
0077e4e0  06 00 57 e1                                      cmp r7, r6
0077e4e4  10 50 85 e2                                      add r5, r5, #0x10
0077e4e8  ea ff ff aa                                      bge #0x77e498
0077e4ec  04 70 93 e5                                      ldr r7, [r3, #4]
0077e4f0  07 12 a0 e1                                      lsl r1, r7, #4
0077e4f4  03 00 a0 e1                                      mov r0, r3
0077e4f8  18 10 81 e2                                      add r1, r1, #0x18
0077e4fc  8d 51 ff eb                                      bl #0x752b38
0077e500  04 30 9d e5                                      ldr r3, [sp, #4]
0077e504  08 00 a0 e1                                      mov r0, r8
0077e508  00 30 8a e5                                      str r3, [sl]
0077e50c  00 30 a0 e3                                      mov r3, #0
0077e510  04 30 8d e5                                      str r3, [sp, #4]
0077e514  83 ff ff eb                                      bl #0x77e328
0077e518  0c d0 8d e2                                      add sp, sp, #0xc
0077e51c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0077e520, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_11as_functionEEENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
0077e520  00 30 90 e5                                      ldr r3, [r0]
0077e524  00 00 53 e3                                      cmp r3, #0
0077e528  07 00 00 0a                                      beq #0x77e54c
0077e52c  04 10 93 e5                                      ldr r1, [r3, #4]
0077e530  00 30 93 e5                                      ldr r3, [r3]
0077e534  01 10 81 e2                                      add r1, r1, #1
0077e538  81 10 a0 e1                                      lsl r1, r1, #1
0077e53c  83 30 83 e0                                      add r3, r3, r3, lsl #1
0077e540  01 00 53 e1                                      cmp r3, r1
0077e544  1e ff 2f d1                                      bxle lr
0077e548  9a ff ff ea                                      b #0x77e3b8
0077e54c  08 10 a0 e3                                      mov r1, #8
0077e550  98 ff ff ea                                      b #0x77e3b8

; FUNCTION 0x0077e554, declared_size=412, range_size=412, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_11as_functionEEENS_15fixed_size_hashIiEEE3addERKiRKS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::smart_ptr<gameswf::as_function> const&)
; decoder-mode: arm
0077e554  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077e558  00 40 a0 e1                                      mov r4, r0
0077e55c  04 d0 4d e2                                      sub sp, sp, #4
0077e560  01 80 a0 e1                                      mov r8, r1
0077e564  02 b0 a0 e1                                      mov fp, r2
0077e568  ec ff ff eb                                      bl #0x77e520
0077e56c  00 20 94 e5                                      ldr r2, [r4]
0077e570  05 55 01 e3                                      movw r5, #0x1505
0077e574  04 30 a0 e3                                      mov r3, #4
0077e578  00 10 92 e5                                      ldr r1, [r2]
0077e57c  01 10 81 e2                                      add r1, r1, #1
0077e580  00 10 82 e5                                      str r1, [r2]
0077e584  01 30 43 e2                                      sub r3, r3, #1
0077e588  03 10 d8 e7                                      ldrb r1, [r8, r3]
0077e58c  05 23 a0 e1                                      lsl r2, r5, #6
0077e590  05 28 82 e0                                      add r2, r2, r5, lsl #16
0077e594  01 20 82 e0                                      add r2, r2, r1
0077e598  00 00 53 e3                                      cmp r3, #0
0077e59c  02 50 65 e0                                      rsb r5, r5, r2
0077e5a0  f7 ff ff 1a                                      bne #0x77e584
0077e5a4  00 40 94 e5                                      ldr r4, [r4]
0077e5a8  01 00 75 e3                                      cmn r5, #1
0077e5ac  02 59 e0 03                                      mvneq r5, #0x8000
0077e5b0  04 20 94 e5                                      ldr r2, [r4, #4]
0077e5b4  02 30 05 e0                                      and r3, r5, r2
0077e5b8  83 a0 a0 e1                                      lsl sl, r3, #1
0077e5bc  01 a0 8a e2                                      add sl, sl, #1
0077e5c0  8a 11 94 e7                                      ldr r1, [r4, sl, lsl #3]
0077e5c4  8a 71 84 e0                                      add r7, r4, sl, lsl #3
0077e5c8  02 00 71 e3                                      cmn r1, #2
0077e5cc  00 30 e0 03                                      mvneq r3, #0
0077e5d0  8a 31 84 07                                      streq r3, [r4, sl, lsl #3]
0077e5d4  29 00 00 0a                                      beq #0x77e680
0077e5d8  04 00 97 e5                                      ldr r0, [r7, #4]
0077e5dc  01 00 70 e3                                      cmn r0, #1
0077e5e0  03 60 a0 11                                      movne r6, r3
0077e5e4  25 00 00 0a                                      beq #0x77e680
0077e5e8  01 60 86 e2                                      add r6, r6, #1
0077e5ec  02 60 06 e0                                      and r6, r6, r2
0077e5f0  86 c0 a0 e1                                      lsl ip, r6, #1
0077e5f4  01 c0 8c e2                                      add ip, ip, #1
0077e5f8  8c e1 94 e7                                      ldr lr, [r4, ip, lsl #3]
0077e5fc  8c c1 84 e0                                      add ip, r4, ip, lsl #3
0077e600  02 00 7e e3                                      cmn lr, #2
0077e604  f7 ff ff 1a                                      bne #0x77e5e8
0077e608  00 20 02 e0                                      and r2, r2, r0
0077e60c  03 00 52 e1                                      cmp r2, r3
0077e610  24 00 00 0a                                      beq #0x77e6a8
0077e614  82 20 a0 e1                                      lsl r2, r2, #1
0077e618  01 90 82 e2                                      add sb, r2, #1
0077e61c  89 21 94 e7                                      ldr r2, [r4, sb, lsl #3]
0077e620  89 91 84 e0                                      add sb, r4, sb, lsl #3
0077e624  03 00 52 e1                                      cmp r2, r3
0077e628  f9 ff ff 1a                                      bne #0x77e614
0077e62c  00 10 8c e5                                      str r1, [ip]
0077e630  04 30 97 e5                                      ldr r3, [r7, #4]
0077e634  04 30 8c e5                                      str r3, [ip, #4]
0077e638  08 30 97 e5                                      ldr r3, [r7, #8]
0077e63c  08 30 8c e5                                      str r3, [ip, #8]
0077e640  0c 00 97 e5                                      ldr r0, [r7, #0xc]
0077e644  00 00 50 e3                                      cmp r0, #0
0077e648  0c 00 8c e5                                      str r0, [ip, #0xc]
0077e64c  00 00 00 0a                                      beq #0x77e654
0077e650  83 6d ff eb                                      bl #0x759c64
0077e654  00 60 89 e5                                      str r6, [sb]
0077e658  00 30 98 e5                                      ldr r3, [r8]
0077e65c  0c 00 87 e2                                      add r0, r7, #0xc
0077e660  08 30 87 e5                                      str r3, [r7, #8]
0077e664  00 10 9b e5                                      ldr r1, [fp]
0077e668  eb fe ff eb                                      bl #0x77e21c
0077e66c  00 30 e0 e3                                      mvn r3, #0
0077e670  04 50 87 e5                                      str r5, [r7, #4]
0077e674  8a 31 84 e7                                      str r3, [r4, sl, lsl #3]
0077e678  04 d0 8d e2                                      add sp, sp, #4
0077e67c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077e680  04 50 87 e5                                      str r5, [r7, #4]
0077e684  00 30 98 e5                                      ldr r3, [r8]
0077e688  08 30 87 e5                                      str r3, [r7, #8]
0077e68c  00 00 9b e5                                      ldr r0, [fp]
0077e690  00 00 50 e3                                      cmp r0, #0
0077e694  0c 00 87 e5                                      str r0, [r7, #0xc]
0077e698  f6 ff ff 0a                                      beq #0x77e678
0077e69c  04 d0 8d e2                                      add sp, sp, #4
0077e6a0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077e6a4  6e 6d ff ea                                      b #0x759c64
0077e6a8  00 10 8c e5                                      str r1, [ip]
0077e6ac  04 30 97 e5                                      ldr r3, [r7, #4]
0077e6b0  04 30 8c e5                                      str r3, [ip, #4]
0077e6b4  08 30 97 e5                                      ldr r3, [r7, #8]
0077e6b8  08 30 8c e5                                      str r3, [ip, #8]
0077e6bc  0c 00 97 e5                                      ldr r0, [r7, #0xc]
0077e6c0  00 00 50 e3                                      cmp r0, #0
0077e6c4  0c 00 8c e5                                      str r0, [ip, #0xc]
0077e6c8  00 00 00 0a                                      beq #0x77e6d0
0077e6cc  64 6d ff eb                                      bl #0x759c64
0077e6d0  00 30 98 e5                                      ldr r3, [r8]
0077e6d4  0c 00 87 e2                                      add r0, r7, #0xc
0077e6d8  08 30 87 e5                                      str r3, [r7, #8]
0077e6dc  00 10 9b e5                                      ldr r1, [fp]
0077e6e0  cd fe ff eb                                      bl #0x77e21c
0077e6e4  8a 61 84 e7                                      str r6, [r4, sl, lsl #3]
0077e6e8  04 50 87 e5                                      str r5, [r7, #4]
0077e6ec  e1 ff ff ea                                      b #0x77e678

; FUNCTION 0x0077e6f0, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_11as_functionEEENS_15fixed_size_hashIiEEE3setERKiRKS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >::set(int const&, gameswf::smart_ptr<gameswf::as_function> const&)
; decoder-mode: arm
0077e6f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0077e6f4  02 40 a0 e1                                      mov r4, r2
0077e6f8  00 50 a0 e1                                      mov r5, r0
0077e6fc  01 60 a0 e1                                      mov r6, r1
0077e700  61 fe ff eb                                      bl #0x77e08c
0077e704  00 00 50 e3                                      cmp r0, #0
0077e708  05 00 00 ba                                      blt #0x77e724
0077e70c  00 30 95 e5                                      ldr r3, [r5]
0077e710  00 10 94 e5                                      ldr r1, [r4]
0077e714  00 02 83 e0                                      add r0, r3, r0, lsl #4
0077e718  14 00 80 e2                                      add r0, r0, #0x14
0077e71c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0077e720  bd fe ff ea                                      b #0x77e21c
0077e724  05 00 a0 e1                                      mov r0, r5
0077e728  06 10 a0 e1                                      mov r1, r6
0077e72c  04 20 a0 e1                                      mov r2, r4
0077e730  70 40 bd e8                                      pop {r4, r5, r6, lr}
0077e734  86 ff ff ea                                      b #0x77e554
