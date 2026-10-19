; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007ce3d8, declared_size=208, range_size=208, mode=arm
; class-group: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >
; alias: _ZNK7gameswf4hashINS_4font12kerning_pairEfNS_15fixed_size_hashIS2_EEE10find_indexERKS2_
; demangled: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >::find_index(gameswf::font::kerning_pair const&) const
; decoder-mode: arm
007ce3d8  30 00 2d e9                                      push {r4, r5}
007ce3dc  00 30 90 e5                                      ldr r3, [r0]
007ce3e0  00 00 53 e3                                      cmp r3, #0
007ce3e4  02 00 00 1a                                      bne #0x7ce3f4
007ce3e8  00 00 e0 e3                                      mvn r0, #0
007ce3ec  30 00 bd e8                                      pop {r4, r5}
007ce3f0  1e ff 2f e1                                      bx lr
007ce3f4  05 25 01 e3                                      movw r2, #0x1505
007ce3f8  04 00 a0 e3                                      mov r0, #4
007ce3fc  01 00 40 e2                                      sub r0, r0, #1
007ce400  00 40 d1 e7                                      ldrb r4, [r1, r0]
007ce404  02 c3 a0 e1                                      lsl ip, r2, #6
007ce408  02 c8 8c e0                                      add ip, ip, r2, lsl #16
007ce40c  04 c0 8c e0                                      add ip, ip, r4
007ce410  00 00 50 e3                                      cmp r0, #0
007ce414  0c 20 62 e0                                      rsb r2, r2, ip
007ce418  f7 ff ff 1a                                      bne #0x7ce3fc
007ce41c  04 00 93 e5                                      ldr r0, [r3, #4]
007ce420  01 00 72 e3                                      cmn r2, #1
007ce424  02 29 e0 03                                      mvneq r2, #0x8000
007ce428  00 40 02 e0                                      and r4, r2, r0
007ce42c  84 c0 a0 e1                                      lsl ip, r4, #1
007ce430  01 c0 8c e2                                      add ip, ip, #1
007ce434  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
007ce438  8c c1 83 e0                                      add ip, r3, ip, lsl #3
007ce43c  02 00 75 e3                                      cmn r5, #2
007ce440  e8 ff ff 0a                                      beq #0x7ce3e8
007ce444  04 50 9c e5                                      ldr r5, [ip, #4]
007ce448  01 00 75 e3                                      cmn r5, #1
007ce44c  04 00 a0 01                                      moveq r0, r4
007ce450  09 00 00 0a                                      beq #0x7ce47c
007ce454  05 00 00 e0                                      and r0, r0, r5
007ce458  04 00 50 e1                                      cmp r0, r4
007ce45c  e1 ff ff 1a                                      bne #0x7ce3e8
007ce460  05 00 00 ea                                      b #0x7ce47c
007ce464  00 00 9c e5                                      ldr r0, [ip]
007ce468  01 00 70 e3                                      cmn r0, #1
007ce46c  de ff ff 0a                                      beq #0x7ce3ec
007ce470  00 c2 83 e0                                      add ip, r3, r0, lsl #4
007ce474  08 c0 8c e2                                      add ip, ip, #8
007ce478  04 50 9c e5                                      ldr r5, [ip, #4]
007ce47c  05 00 52 e1                                      cmp r2, r5
007ce480  f7 ff ff 1a                                      bne #0x7ce464
007ce484  b8 50 dc e1                                      ldrh r5, [ip, #8]
007ce488  b0 40 d1 e1                                      ldrh r4, [r1]
007ce48c  04 00 55 e1                                      cmp r5, r4
007ce490  f3 ff ff 1a                                      bne #0x7ce464
007ce494  ba 50 dc e1                                      ldrh r5, [ip, #0xa]
007ce498  b2 40 d1 e1                                      ldrh r4, [r1, #2]
007ce49c  04 00 55 e1                                      cmp r5, r4
007ce4a0  ef ff ff 1a                                      bne #0x7ce464
007ce4a4  d0 ff ff ea                                      b #0x7ce3ec

; FUNCTION 0x007ce568, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >
; alias: _ZN7gameswf4hashINS_4font12kerning_pairEfNS_15fixed_size_hashIS2_EEE5clearEv
; demangled: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >::clear()
; decoder-mode: arm
007ce568  70 40 2d e9                                      push {r4, r5, r6, lr}
007ce56c  00 40 a0 e1                                      mov r4, r0
007ce570  00 00 90 e5                                      ldr r0, [r0]
007ce574  00 00 50 e3                                      cmp r0, #0
007ce578  19 00 00 0a                                      beq #0x7ce5e4
007ce57c  04 10 90 e5                                      ldr r1, [r0, #4]
007ce580  00 00 51 e3                                      cmp r1, #0
007ce584  11 00 00 ba                                      blt #0x7ce5d0
007ce588  00 20 a0 e3                                      mov r2, #0
007ce58c  08 30 a0 e3                                      mov r3, #8
007ce590  01 60 e0 e3                                      mvn r6, #1
007ce594  02 50 a0 e1                                      mov r5, r2
007ce598  03 e0 90 e7                                      ldr lr, [r0, r3]
007ce59c  01 20 82 e2                                      add r2, r2, #1
007ce5a0  03 c0 80 e0                                      add ip, r0, r3
007ce5a4  02 00 7e e3                                      cmn lr, #2
007ce5a8  04 00 00 0a                                      beq #0x7ce5c0
007ce5ac  04 e0 9c e5                                      ldr lr, [ip, #4]
007ce5b0  01 00 7e e3                                      cmn lr, #1
007ce5b4  04 50 8c 15                                      strne r5, [ip, #4]
007ce5b8  00 60 8c 15                                      strne r6, [ip]
007ce5bc  00 00 94 15                                      ldrne r0, [r4]
007ce5c0  02 00 51 e1                                      cmp r1, r2
007ce5c4  10 30 83 e2                                      add r3, r3, #0x10
007ce5c8  f2 ff ff aa                                      bge #0x7ce598
007ce5cc  04 10 90 e5                                      ldr r1, [r0, #4]
007ce5d0  01 12 a0 e1                                      lsl r1, r1, #4
007ce5d4  18 10 81 e2                                      add r1, r1, #0x18
007ce5d8  56 11 fe eb                                      bl #0x752b38
007ce5dc  00 30 a0 e3                                      mov r3, #0
007ce5e0  00 30 84 e5                                      str r3, [r4]
007ce5e4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007ce998, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >
; alias: _ZN7gameswf4hashINS_4font12kerning_pairEfNS_15fixed_size_hashIS2_EEE16set_raw_capacityEi
; demangled: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >::set_raw_capacity(int)
; decoder-mode: arm
007ce998  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ce99c  00 00 51 e3                                      cmp r1, #0
007ce9a0  0c d0 4d e2                                      sub sp, sp, #0xc
007ce9a4  00 80 a0 e1                                      mov r8, r0
007ce9a8  4d 00 00 da                                      ble #0x7ceae4
007ce9ac  01 00 41 e2                                      sub r0, r1, #1
007ce9b0  eb ff ec eb                                      bl #0x30e964
007ce9b4  3e fd ec eb                                      bl #0x30deb4
007ce9b8  18 12 07 e3                                      movw r1, #0x7218
007ce9bc  31 1f 43 e3                                      movt r1, #0x3f31
007ce9c0  b3 00 ed eb                                      bl #0x30ec94
007ce9c4  fe 15 a0 e3                                      mov r1, #0x3f800000
007ce9c8  75 00 ed eb                                      bl #0x30eba4
007ce9cc  be fe ec eb                                      bl #0x30e4cc
007ce9d0  01 40 a0 e3                                      mov r4, #1
007ce9d4  14 40 a0 e1                                      lsl r4, r4, r0
007ce9d8  00 30 98 e5                                      ldr r3, [r8]
007ce9dc  04 00 54 e3                                      cmp r4, #4
007ce9e0  04 40 a0 b3                                      movlt r4, #4
007ce9e4  00 00 53 e3                                      cmp r3, #0
007ce9e8  03 00 00 0a                                      beq #0x7ce9fc
007ce9ec  04 30 93 e5                                      ldr r3, [r3, #4]
007ce9f0  01 30 83 e2                                      add r3, r3, #1
007ce9f4  04 00 53 e1                                      cmp r3, r4
007ce9f8  3a 00 00 0a                                      beq #0x7ceae8
007ce9fc  00 50 a0 e3                                      mov r5, #0
007cea00  04 02 a0 e1                                      lsl r0, r4, #4
007cea04  08 00 80 e2                                      add r0, r0, #8
007cea08  05 10 a0 e1                                      mov r1, r5
007cea0c  04 50 8d e5                                      str r5, [sp, #4]
007cea10  61 10 fe eb                                      bl #0x752b9c
007cea14  04 00 8d e5                                      str r0, [sp, #4]
007cea18  00 50 80 e5                                      str r5, [r0]
007cea1c  04 30 9d e5                                      ldr r3, [sp, #4]
007cea20  01 20 44 e2                                      sub r2, r4, #1
007cea24  01 90 e0 e3                                      mvn sb, #1
007cea28  04 20 83 e5                                      str r2, [r3, #4]
007cea2c  08 30 a0 e3                                      mov r3, #8
007cea30  04 20 9d e5                                      ldr r2, [sp, #4]
007cea34  01 50 85 e2                                      add r5, r5, #1
007cea38  05 00 54 e1                                      cmp r4, r5
007cea3c  03 90 82 e7                                      str sb, [r2, r3]
007cea40  10 30 83 e2                                      add r3, r3, #0x10
007cea44  f9 ff ff ca                                      bgt #0x7cea30
007cea48  00 30 98 e5                                      ldr r3, [r8]
007cea4c  00 00 53 e3                                      cmp r3, #0
007cea50  04 a0 8d 02                                      addeq sl, sp, #4
007cea54  1d 00 00 0a                                      beq #0x7cead0
007cea58  04 70 93 e5                                      ldr r7, [r3, #4]
007cea5c  00 00 57 e3                                      cmp r7, #0
007cea60  04 a0 8d b2                                      addlt sl, sp, #4
007cea64  15 00 00 ba                                      blt #0x7ceac0
007cea68  00 60 a0 e3                                      mov r6, #0
007cea6c  08 40 a0 e3                                      mov r4, #8
007cea70  04 a0 8d e2                                      add sl, sp, #4
007cea74  06 b0 a0 e1                                      mov fp, r6
007cea78  04 20 93 e7                                      ldr r2, [r3, r4]
007cea7c  01 60 86 e2                                      add r6, r6, #1
007cea80  04 50 83 e0                                      add r5, r3, r4
007cea84  02 00 72 e3                                      cmn r2, #2
007cea88  08 00 00 0a                                      beq #0x7ceab0
007cea8c  04 20 95 e5                                      ldr r2, [r5, #4]
007cea90  0a 00 a0 e1                                      mov r0, sl
007cea94  08 10 85 e2                                      add r1, r5, #8
007cea98  01 00 72 e3                                      cmn r2, #1
007cea9c  03 00 00 0a                                      beq #0x7ceab0
007ceaa0  0c 20 85 e2                                      add r2, r5, #0xc
007ceaa4  1e 00 00 eb                                      bl #0x7ceb24
007ceaa8  00 0a 85 e8                                      stm r5, {sb, fp}
007ceaac  00 30 98 e5                                      ldr r3, [r8]
007ceab0  06 00 57 e1                                      cmp r7, r6
007ceab4  10 40 84 e2                                      add r4, r4, #0x10
007ceab8  ee ff ff aa                                      bge #0x7cea78
007ceabc  04 70 93 e5                                      ldr r7, [r3, #4]
007ceac0  07 12 a0 e1                                      lsl r1, r7, #4
007ceac4  03 00 a0 e1                                      mov r0, r3
007ceac8  18 10 81 e2                                      add r1, r1, #0x18
007ceacc  19 10 fe eb                                      bl #0x752b38
007cead0  04 30 9d e5                                      ldr r3, [sp, #4]
007cead4  0a 00 a0 e1                                      mov r0, sl
007cead8  00 30 88 e5                                      str r3, [r8]
007ceadc  00 30 a0 e3                                      mov r3, #0
007ceae0  04 30 8d e5                                      str r3, [sp, #4]
007ceae4  9f fe ff eb                                      bl #0x7ce568
007ceae8  0c d0 8d e2                                      add sp, sp, #0xc
007ceaec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007ceaf0, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >
; alias: _ZN7gameswf4hashINS_4font12kerning_pairEfNS_15fixed_size_hashIS2_EEE12check_expandEv
; demangled: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >::check_expand()
; decoder-mode: arm
007ceaf0  00 30 90 e5                                      ldr r3, [r0]
007ceaf4  00 00 53 e3                                      cmp r3, #0
007ceaf8  07 00 00 0a                                      beq #0x7ceb1c
007ceafc  04 10 93 e5                                      ldr r1, [r3, #4]
007ceb00  00 30 93 e5                                      ldr r3, [r3]
007ceb04  01 10 81 e2                                      add r1, r1, #1
007ceb08  81 10 a0 e1                                      lsl r1, r1, #1
007ceb0c  83 30 83 e0                                      add r3, r3, r3, lsl #1
007ceb10  01 00 53 e1                                      cmp r3, r1
007ceb14  1e ff 2f d1                                      bxle lr
007ceb18  9e ff ff ea                                      b #0x7ce998
007ceb1c  08 10 a0 e3                                      mov r1, #8
007ceb20  9c ff ff ea                                      b #0x7ce998

; FUNCTION 0x007ceb24, declared_size=412, range_size=412, mode=arm
; class-group: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >
; alias: _ZN7gameswf4hashINS_4font12kerning_pairEfNS_15fixed_size_hashIS2_EEE3addERKS2_RKf
; demangled: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >::add(gameswf::font::kerning_pair const&, float const&)
; decoder-mode: arm
007ceb24  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ceb28  00 60 a0 e1                                      mov r6, r0
007ceb2c  01 40 a0 e1                                      mov r4, r1
007ceb30  02 50 a0 e1                                      mov r5, r2
007ceb34  ed ff ff eb                                      bl #0x7ceaf0
007ceb38  00 10 96 e5                                      ldr r1, [r6]
007ceb3c  05 25 01 e3                                      movw r2, #0x1505
007ceb40  04 30 a0 e3                                      mov r3, #4
007ceb44  00 00 91 e5                                      ldr r0, [r1]
007ceb48  01 00 80 e2                                      add r0, r0, #1
007ceb4c  00 00 81 e5                                      str r0, [r1]
007ceb50  01 30 43 e2                                      sub r3, r3, #1
007ceb54  03 00 d4 e7                                      ldrb r0, [r4, r3]
007ceb58  02 13 a0 e1                                      lsl r1, r2, #6
007ceb5c  02 18 81 e0                                      add r1, r1, r2, lsl #16
007ceb60  00 10 81 e0                                      add r1, r1, r0
007ceb64  00 00 53 e3                                      cmp r3, #0
007ceb68  01 20 62 e0                                      rsb r2, r2, r1
007ceb6c  f7 ff ff 1a                                      bne #0x7ceb50
007ceb70  00 30 96 e5                                      ldr r3, [r6]
007ceb74  01 00 72 e3                                      cmn r2, #1
007ceb78  02 29 e0 03                                      mvneq r2, #0x8000
007ceb7c  04 80 93 e5                                      ldr r8, [r3, #4]
007ceb80  08 60 02 e0                                      and r6, r2, r8
007ceb84  86 a0 a0 e1                                      lsl sl, r6, #1
007ceb88  01 a0 8a e2                                      add sl, sl, #1
007ceb8c  8a 91 93 e7                                      ldr sb, [r3, sl, lsl #3]
007ceb90  8a 71 83 e0                                      add r7, r3, sl, lsl #3
007ceb94  02 00 79 e3                                      cmn sb, #2
007ceb98  36 00 00 0a                                      beq #0x7cec78
007ceb9c  04 b0 97 e5                                      ldr fp, [r7, #4]
007ceba0  01 00 7b e3                                      cmn fp, #1
007ceba4  06 10 a0 11                                      movne r1, r6
007ceba8  3c 00 00 0a                                      beq #0x7ceca0
007cebac  01 10 81 e2                                      add r1, r1, #1
007cebb0  08 10 01 e0                                      and r1, r1, r8
007cebb4  81 00 a0 e1                                      lsl r0, r1, #1
007cebb8  01 00 80 e2                                      add r0, r0, #1
007cebbc  80 c1 93 e7                                      ldr ip, [r3, r0, lsl #3]
007cebc0  80 01 83 e0                                      add r0, r3, r0, lsl #3
007cebc4  02 00 7c e3                                      cmn ip, #2
007cebc8  f7 ff ff 1a                                      bne #0x7cebac
007cebcc  0b 80 08 e0                                      and r8, r8, fp
007cebd0  06 00 58 e1                                      cmp r8, r6
007cebd4  17 00 00 0a                                      beq #0x7cec38
007cebd8  88 80 a0 e1                                      lsl r8, r8, #1
007cebdc  01 b0 88 e2                                      add fp, r8, #1
007cebe0  8b 81 93 e7                                      ldr r8, [r3, fp, lsl #3]
007cebe4  8b b1 83 e0                                      add fp, r3, fp, lsl #3
007cebe8  06 00 58 e1                                      cmp r8, r6
007cebec  f9 ff ff 1a                                      bne #0x7cebd8
007cebf0  00 90 80 e5                                      str sb, [r0]
007cebf4  04 c0 97 e5                                      ldr ip, [r7, #4]
007cebf8  04 c0 80 e5                                      str ip, [r0, #4]
007cebfc  08 c0 97 e5                                      ldr ip, [r7, #8]
007cec00  08 c0 80 e5                                      str ip, [r0, #8]
007cec04  0c c0 97 e5                                      ldr ip, [r7, #0xc]
007cec08  0c c0 80 e5                                      str ip, [r0, #0xc]
007cec0c  00 10 8b e5                                      str r1, [fp]
007cec10  b0 10 d4 e1                                      ldrh r1, [r4]
007cec14  b8 10 c7 e1                                      strh r1, [r7, #8]
007cec18  b2 40 d4 e1                                      ldrh r4, [r4, #2]
007cec1c  ba 40 c7 e1                                      strh r4, [r7, #0xa]
007cec20  00 10 95 e5                                      ldr r1, [r5]
007cec24  04 20 87 e5                                      str r2, [r7, #4]
007cec28  00 20 e0 e3                                      mvn r2, #0
007cec2c  0c 10 87 e5                                      str r1, [r7, #0xc]
007cec30  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
007cec34  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007cec38  00 90 80 e5                                      str sb, [r0]
007cec3c  04 c0 97 e5                                      ldr ip, [r7, #4]
007cec40  04 c0 80 e5                                      str ip, [r0, #4]
007cec44  08 c0 97 e5                                      ldr ip, [r7, #8]
007cec48  08 c0 80 e5                                      str ip, [r0, #8]
007cec4c  0c c0 97 e5                                      ldr ip, [r7, #0xc]
007cec50  0c c0 80 e5                                      str ip, [r0, #0xc]
007cec54  b0 00 d4 e1                                      ldrh r0, [r4]
007cec58  b8 00 c7 e1                                      strh r0, [r7, #8]
007cec5c  b2 40 d4 e1                                      ldrh r4, [r4, #2]
007cec60  ba 40 c7 e1                                      strh r4, [r7, #0xa]
007cec64  00 00 95 e5                                      ldr r0, [r5]
007cec68  0c 00 87 e5                                      str r0, [r7, #0xc]
007cec6c  8a 11 83 e7                                      str r1, [r3, sl, lsl #3]
007cec70  04 20 87 e5                                      str r2, [r7, #4]
007cec74  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007cec78  00 10 e0 e3                                      mvn r1, #0
007cec7c  8a 11 83 e7                                      str r1, [r3, sl, lsl #3]
007cec80  04 20 87 e5                                      str r2, [r7, #4]
007cec84  b0 00 d4 e1                                      ldrh r0, [r4]
007cec88  b8 00 c7 e1                                      strh r0, [r7, #8]
007cec8c  b2 40 d4 e1                                      ldrh r4, [r4, #2]
007cec90  ba 40 c7 e1                                      strh r4, [r7, #0xa]
007cec94  00 30 95 e5                                      ldr r3, [r5]
007cec98  0c 30 87 e5                                      str r3, [r7, #0xc]
007cec9c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ceca0  04 20 87 e5                                      str r2, [r7, #4]
007ceca4  b0 10 d4 e1                                      ldrh r1, [r4]
007ceca8  b8 10 c7 e1                                      strh r1, [r7, #8]
007cecac  b2 40 d4 e1                                      ldrh r4, [r4, #2]
007cecb0  ba 40 c7 e1                                      strh r4, [r7, #0xa]
007cecb4  00 30 95 e5                                      ldr r3, [r5]
007cecb8  0c 30 87 e5                                      str r3, [r7, #0xc]
007cecbc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007cecc0, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >
; alias: _ZN7gameswf4hashINS_4font12kerning_pairEfNS_15fixed_size_hashIS2_EEEixERKS2_
; demangled: gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >::operator[](gameswf::font::kerning_pair const&)
; decoder-mode: arm
007cecc0  30 40 2d e9                                      push {r4, r5, lr}
007cecc4  0c d0 4d e2                                      sub sp, sp, #0xc
007cecc8  00 40 a0 e1                                      mov r4, r0
007ceccc  01 50 a0 e1                                      mov r5, r1
007cecd0  c0 fd ff eb                                      bl #0x7ce3d8
007cecd4  00 00 50 e3                                      cmp r0, #0
007cecd8  04 00 00 ba                                      blt #0x7cecf0
007cecdc  00 30 94 e5                                      ldr r3, [r4]
007cece0  00 02 83 e0                                      add r0, r3, r0, lsl #4
007cece4  14 00 80 e2                                      add r0, r0, #0x14
007cece8  0c d0 8d e2                                      add sp, sp, #0xc
007cecec  30 80 bd e8                                      pop {r4, r5, pc}
007cecf0  08 20 8d e2                                      add r2, sp, #8
007cecf4  00 30 a0 e3                                      mov r3, #0
007cecf8  04 00 a0 e1                                      mov r0, r4
007cecfc  04 30 22 e5                                      str r3, [r2, #-4]!
007ced00  05 10 a0 e1                                      mov r1, r5
007ced04  86 ff ff eb                                      bl #0x7ceb24
007ced08  04 00 a0 e1                                      mov r0, r4
007ced0c  05 10 a0 e1                                      mov r1, r5
007ced10  b0 fd ff eb                                      bl #0x7ce3d8
007ced14  f0 ff ff ea                                      b #0x7cecdc
