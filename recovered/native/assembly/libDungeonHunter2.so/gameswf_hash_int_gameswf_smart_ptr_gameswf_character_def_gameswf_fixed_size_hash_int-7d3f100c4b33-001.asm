; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00763920, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_13character_defEEENS_15fixed_size_hashIiEEE10find_indexERKi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >::find_index(int const&) const
; decoder-mode: arm
00763920  30 00 2d e9                                      push {r4, r5}
00763924  00 30 90 e5                                      ldr r3, [r0]
00763928  00 00 53 e3                                      cmp r3, #0
0076392c  02 00 00 1a                                      bne #0x76393c
00763930  00 00 e0 e3                                      mvn r0, #0
00763934  30 00 bd e8                                      pop {r4, r5}
00763938  1e ff 2f e1                                      bx lr
0076393c  05 25 01 e3                                      movw r2, #0x1505
00763940  04 00 a0 e3                                      mov r0, #4
00763944  01 00 40 e2                                      sub r0, r0, #1
00763948  00 40 d1 e7                                      ldrb r4, [r1, r0]
0076394c  02 c3 a0 e1                                      lsl ip, r2, #6
00763950  02 c8 8c e0                                      add ip, ip, r2, lsl #16
00763954  04 c0 8c e0                                      add ip, ip, r4
00763958  00 00 50 e3                                      cmp r0, #0
0076395c  0c 20 62 e0                                      rsb r2, r2, ip
00763960  f7 ff ff 1a                                      bne #0x763944
00763964  04 00 93 e5                                      ldr r0, [r3, #4]
00763968  01 00 72 e3                                      cmn r2, #1
0076396c  02 29 e0 03                                      mvneq r2, #0x8000
00763970  00 40 02 e0                                      and r4, r2, r0
00763974  84 c0 a0 e1                                      lsl ip, r4, #1
00763978  01 c0 8c e2                                      add ip, ip, #1
0076397c  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
00763980  8c c1 83 e0                                      add ip, r3, ip, lsl #3
00763984  02 00 75 e3                                      cmn r5, #2
00763988  e8 ff ff 0a                                      beq #0x763930
0076398c  04 50 9c e5                                      ldr r5, [ip, #4]
00763990  01 00 75 e3                                      cmn r5, #1
00763994  04 00 a0 01                                      moveq r0, r4
00763998  06 00 00 0a                                      beq #0x7639b8
0076399c  05 00 00 e0                                      and r0, r0, r5
007639a0  04 00 50 e1                                      cmp r0, r4
007639a4  e1 ff ff 1a                                      bne #0x763930
007639a8  02 00 00 ea                                      b #0x7639b8
007639ac  00 c2 83 e0                                      add ip, r3, r0, lsl #4
007639b0  08 c0 8c e2                                      add ip, ip, #8
007639b4  04 50 9c e5                                      ldr r5, [ip, #4]
007639b8  05 00 52 e1                                      cmp r2, r5
007639bc  03 00 00 1a                                      bne #0x7639d0
007639c0  08 50 9c e5                                      ldr r5, [ip, #8]
007639c4  00 40 91 e5                                      ldr r4, [r1]
007639c8  04 00 55 e1                                      cmp r5, r4
007639cc  d8 ff ff 0a                                      beq #0x763934
007639d0  00 00 9c e5                                      ldr r0, [ip]
007639d4  01 00 70 e3                                      cmn r0, #1
007639d8  f3 ff ff 1a                                      bne #0x7639ac
007639dc  d4 ff ff ea                                      b #0x763934

; FUNCTION 0x00764088, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiNS_9smart_ptrINS_13character_defEEENS_15fixed_size_hashIiEEE3getERKiPS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >::get(int const&, gameswf::smart_ptr<gameswf::character_def>*) const
; decoder-mode: arm
00764088  70 40 2d e9                                      push {r4, r5, r6, lr}
0076408c  02 40 a0 e1                                      mov r4, r2
00764090  00 50 a0 e1                                      mov r5, r0
00764094  21 fe ff eb                                      bl #0x763920
00764098  00 30 50 e2                                      subs r3, r0, #0
0076409c  08 00 00 ba                                      blt #0x7640c4
007640a0  00 00 54 e3                                      cmp r4, #0
007640a4  08 00 00 0a                                      beq #0x7640cc
007640a8  00 20 95 e5                                      ldr r2, [r5]
007640ac  04 00 a0 e1                                      mov r0, r4
007640b0  03 32 82 e0                                      add r3, r2, r3, lsl #4
007640b4  14 10 93 e5                                      ldr r1, [r3, #0x14]
007640b8  e2 ff ff eb                                      bl #0x764048
007640bc  01 00 a0 e3                                      mov r0, #1
007640c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007640c4  00 00 a0 e3                                      mov r0, #0
007640c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007640cc  01 00 a0 e3                                      mov r0, #1
007640d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007653d4, declared_size=144, range_size=144, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_13character_defEEENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
007653d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007653d8  00 40 a0 e1                                      mov r4, r0
007653dc  00 00 90 e5                                      ldr r0, [r0]
007653e0  00 00 50 e3                                      cmp r0, #0
007653e4  1d 00 00 0a                                      beq #0x765460
007653e8  04 80 90 e5                                      ldr r8, [r0, #4]
007653ec  00 00 58 e3                                      cmp r8, #0
007653f0  15 00 00 ba                                      blt #0x76544c
007653f4  00 60 a0 e3                                      mov r6, #0
007653f8  08 50 a0 e3                                      mov r5, #8
007653fc  01 90 e0 e3                                      mvn sb, #1
00765400  06 a0 a0 e1                                      mov sl, r6
00765404  05 30 90 e7                                      ldr r3, [r0, r5]
00765408  01 60 86 e2                                      add r6, r6, #1
0076540c  05 70 80 e0                                      add r7, r0, r5
00765410  02 00 73 e3                                      cmn r3, #2
00765414  08 00 00 0a                                      beq #0x76543c
00765418  04 30 97 e5                                      ldr r3, [r7, #4]
0076541c  01 00 73 e3                                      cmn r3, #1
00765420  05 00 00 0a                                      beq #0x76543c
00765424  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00765428  00 00 50 e3                                      cmp r0, #0
0076542c  00 00 00 0a                                      beq #0x765434
00765430  82 d3 ff eb                                      bl #0x75a240
00765434  00 06 87 e8                                      stm r7, {sb, sl}
00765438  00 00 94 e5                                      ldr r0, [r4]
0076543c  06 00 58 e1                                      cmp r8, r6
00765440  10 50 85 e2                                      add r5, r5, #0x10
00765444  ee ff ff aa                                      bge #0x765404
00765448  04 80 90 e5                                      ldr r8, [r0, #4]
0076544c  08 12 a0 e1                                      lsl r1, r8, #4
00765450  18 10 81 e2                                      add r1, r1, #0x18
00765454  b7 b5 ff eb                                      bl #0x752b38
00765458  00 30 a0 e3                                      mov r3, #0
0076545c  00 30 84 e5                                      str r3, [r4]
00765460  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00767094, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_13character_defEEENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
00767094  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00767098  00 00 51 e3                                      cmp r1, #0
0076709c  0c d0 4d e2                                      sub sp, sp, #0xc
007670a0  00 a0 a0 e1                                      mov sl, r0
007670a4  51 00 00 da                                      ble #0x7671f0
007670a8  01 00 41 e2                                      sub r0, r1, #1
007670ac  2c 9e ee eb                                      bl #0x30e964
007670b0  7f 9b ee eb                                      bl #0x30deb4
007670b4  18 12 07 e3                                      movw r1, #0x7218
007670b8  31 1f 43 e3                                      movt r1, #0x3f31
007670bc  f4 9e ee eb                                      bl #0x30ec94
007670c0  fe 15 a0 e3                                      mov r1, #0x3f800000
007670c4  b6 9e ee eb                                      bl #0x30eba4
007670c8  ff 9c ee eb                                      bl #0x30e4cc
007670cc  01 40 a0 e3                                      mov r4, #1
007670d0  14 40 a0 e1                                      lsl r4, r4, r0
007670d4  00 30 9a e5                                      ldr r3, [sl]
007670d8  04 00 54 e3                                      cmp r4, #4
007670dc  04 40 a0 b3                                      movlt r4, #4
007670e0  00 00 53 e3                                      cmp r3, #0
007670e4  03 00 00 0a                                      beq #0x7670f8
007670e8  04 30 93 e5                                      ldr r3, [r3, #4]
007670ec  01 30 83 e2                                      add r3, r3, #1
007670f0  04 00 53 e1                                      cmp r3, r4
007670f4  3e 00 00 0a                                      beq #0x7671f4
007670f8  00 50 a0 e3                                      mov r5, #0
007670fc  04 02 a0 e1                                      lsl r0, r4, #4
00767100  08 00 80 e2                                      add r0, r0, #8
00767104  05 10 a0 e1                                      mov r1, r5
00767108  04 50 8d e5                                      str r5, [sp, #4]
0076710c  a2 ae ff eb                                      bl #0x752b9c
00767110  04 00 8d e5                                      str r0, [sp, #4]
00767114  00 50 80 e5                                      str r5, [r0]
00767118  04 30 9d e5                                      ldr r3, [sp, #4]
0076711c  01 20 44 e2                                      sub r2, r4, #1
00767120  01 90 e0 e3                                      mvn sb, #1
00767124  04 20 83 e5                                      str r2, [r3, #4]
00767128  08 30 a0 e3                                      mov r3, #8
0076712c  04 20 9d e5                                      ldr r2, [sp, #4]
00767130  01 50 85 e2                                      add r5, r5, #1
00767134  05 00 54 e1                                      cmp r4, r5
00767138  03 90 82 e7                                      str sb, [r2, r3]
0076713c  10 30 83 e2                                      add r3, r3, #0x10
00767140  f9 ff ff ca                                      bgt #0x76712c
00767144  00 30 9a e5                                      ldr r3, [sl]
00767148  00 00 53 e3                                      cmp r3, #0
0076714c  04 80 8d 02                                      addeq r8, sp, #4
00767150  21 00 00 0a                                      beq #0x7671dc
00767154  04 70 93 e5                                      ldr r7, [r3, #4]
00767158  00 00 57 e3                                      cmp r7, #0
0076715c  04 80 8d b2                                      addlt r8, sp, #4
00767160  19 00 00 ba                                      blt #0x7671cc
00767164  00 60 a0 e3                                      mov r6, #0
00767168  08 50 a0 e3                                      mov r5, #8
0076716c  04 80 8d e2                                      add r8, sp, #4
00767170  06 b0 a0 e1                                      mov fp, r6
00767174  05 c0 93 e7                                      ldr ip, [r3, r5]
00767178  05 40 83 e0                                      add r4, r3, r5
0076717c  08 00 a0 e1                                      mov r0, r8
00767180  02 00 7c e3                                      cmn ip, #2
00767184  01 60 86 e2                                      add r6, r6, #1
00767188  08 10 84 e2                                      add r1, r4, #8
0076718c  0c 20 84 e2                                      add r2, r4, #0xc
00767190  09 00 00 0a                                      beq #0x7671bc
00767194  04 c0 94 e5                                      ldr ip, [r4, #4]
00767198  01 00 7c e3                                      cmn ip, #1
0076719c  06 00 00 0a                                      beq #0x7671bc
007671a0  22 00 00 eb                                      bl #0x767230
007671a4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007671a8  00 00 50 e3                                      cmp r0, #0
007671ac  00 00 00 0a                                      beq #0x7671b4
007671b0  22 cc ff eb                                      bl #0x75a240
007671b4  00 0a 84 e8                                      stm r4, {sb, fp}
007671b8  00 30 9a e5                                      ldr r3, [sl]
007671bc  06 00 57 e1                                      cmp r7, r6
007671c0  10 50 85 e2                                      add r5, r5, #0x10
007671c4  ea ff ff aa                                      bge #0x767174
007671c8  04 70 93 e5                                      ldr r7, [r3, #4]
007671cc  07 12 a0 e1                                      lsl r1, r7, #4
007671d0  03 00 a0 e1                                      mov r0, r3
007671d4  18 10 81 e2                                      add r1, r1, #0x18
007671d8  56 ae ff eb                                      bl #0x752b38
007671dc  04 30 9d e5                                      ldr r3, [sp, #4]
007671e0  08 00 a0 e1                                      mov r0, r8
007671e4  00 30 8a e5                                      str r3, [sl]
007671e8  00 30 a0 e3                                      mov r3, #0
007671ec  04 30 8d e5                                      str r3, [sp, #4]
007671f0  77 f8 ff eb                                      bl #0x7653d4
007671f4  0c d0 8d e2                                      add sp, sp, #0xc
007671f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007671fc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_13character_defEEENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
007671fc  00 30 90 e5                                      ldr r3, [r0]
00767200  00 00 53 e3                                      cmp r3, #0
00767204  07 00 00 0a                                      beq #0x767228
00767208  04 10 93 e5                                      ldr r1, [r3, #4]
0076720c  00 30 93 e5                                      ldr r3, [r3]
00767210  01 10 81 e2                                      add r1, r1, #1
00767214  81 10 a0 e1                                      lsl r1, r1, #1
00767218  83 30 83 e0                                      add r3, r3, r3, lsl #1
0076721c  01 00 53 e1                                      cmp r3, r1
00767220  1e ff 2f d1                                      bxle lr
00767224  9a ff ff ea                                      b #0x767094
00767228  08 10 a0 e3                                      mov r1, #8
0076722c  98 ff ff ea                                      b #0x767094

; FUNCTION 0x00767230, declared_size=412, range_size=412, mode=arm
; class-group: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiNS_9smart_ptrINS_13character_defEEENS_15fixed_size_hashIiEEE3addERKiRKS3_
; demangled: gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::smart_ptr<gameswf::character_def> const&)
; decoder-mode: arm
00767230  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00767234  00 40 a0 e1                                      mov r4, r0
00767238  04 d0 4d e2                                      sub sp, sp, #4
0076723c  01 80 a0 e1                                      mov r8, r1
00767240  02 b0 a0 e1                                      mov fp, r2
00767244  ec ff ff eb                                      bl #0x7671fc
00767248  00 20 94 e5                                      ldr r2, [r4]
0076724c  05 55 01 e3                                      movw r5, #0x1505
00767250  04 30 a0 e3                                      mov r3, #4
00767254  00 10 92 e5                                      ldr r1, [r2]
00767258  01 10 81 e2                                      add r1, r1, #1
0076725c  00 10 82 e5                                      str r1, [r2]
00767260  01 30 43 e2                                      sub r3, r3, #1
00767264  03 10 d8 e7                                      ldrb r1, [r8, r3]
00767268  05 23 a0 e1                                      lsl r2, r5, #6
0076726c  05 28 82 e0                                      add r2, r2, r5, lsl #16
00767270  01 20 82 e0                                      add r2, r2, r1
00767274  00 00 53 e3                                      cmp r3, #0
00767278  02 50 65 e0                                      rsb r5, r5, r2
0076727c  f7 ff ff 1a                                      bne #0x767260
00767280  00 40 94 e5                                      ldr r4, [r4]
00767284  01 00 75 e3                                      cmn r5, #1
00767288  02 59 e0 03                                      mvneq r5, #0x8000
0076728c  04 20 94 e5                                      ldr r2, [r4, #4]
00767290  02 30 05 e0                                      and r3, r5, r2
00767294  83 a0 a0 e1                                      lsl sl, r3, #1
00767298  01 a0 8a e2                                      add sl, sl, #1
0076729c  8a 11 94 e7                                      ldr r1, [r4, sl, lsl #3]
007672a0  8a 71 84 e0                                      add r7, r4, sl, lsl #3
007672a4  02 00 71 e3                                      cmn r1, #2
007672a8  00 30 e0 03                                      mvneq r3, #0
007672ac  8a 31 84 07                                      streq r3, [r4, sl, lsl #3]
007672b0  29 00 00 0a                                      beq #0x76735c
007672b4  04 00 97 e5                                      ldr r0, [r7, #4]
007672b8  01 00 70 e3                                      cmn r0, #1
007672bc  03 60 a0 11                                      movne r6, r3
007672c0  25 00 00 0a                                      beq #0x76735c
007672c4  01 60 86 e2                                      add r6, r6, #1
007672c8  02 60 06 e0                                      and r6, r6, r2
007672cc  86 c0 a0 e1                                      lsl ip, r6, #1
007672d0  01 c0 8c e2                                      add ip, ip, #1
007672d4  8c e1 94 e7                                      ldr lr, [r4, ip, lsl #3]
007672d8  8c c1 84 e0                                      add ip, r4, ip, lsl #3
007672dc  02 00 7e e3                                      cmn lr, #2
007672e0  f7 ff ff 1a                                      bne #0x7672c4
007672e4  00 20 02 e0                                      and r2, r2, r0
007672e8  03 00 52 e1                                      cmp r2, r3
007672ec  24 00 00 0a                                      beq #0x767384
007672f0  82 20 a0 e1                                      lsl r2, r2, #1
007672f4  01 90 82 e2                                      add sb, r2, #1
007672f8  89 21 94 e7                                      ldr r2, [r4, sb, lsl #3]
007672fc  89 91 84 e0                                      add sb, r4, sb, lsl #3
00767300  03 00 52 e1                                      cmp r2, r3
00767304  f9 ff ff 1a                                      bne #0x7672f0
00767308  00 10 8c e5                                      str r1, [ip]
0076730c  04 30 97 e5                                      ldr r3, [r7, #4]
00767310  04 30 8c e5                                      str r3, [ip, #4]
00767314  08 30 97 e5                                      ldr r3, [r7, #8]
00767318  08 30 8c e5                                      str r3, [ip, #8]
0076731c  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00767320  00 00 50 e3                                      cmp r0, #0
00767324  0c 00 8c e5                                      str r0, [ip, #0xc]
00767328  00 00 00 0a                                      beq #0x767330
0076732c  4c ca ff eb                                      bl #0x759c64
00767330  00 60 89 e5                                      str r6, [sb]
00767334  00 30 98 e5                                      ldr r3, [r8]
00767338  0c 00 87 e2                                      add r0, r7, #0xc
0076733c  08 30 87 e5                                      str r3, [r7, #8]
00767340  00 10 9b e5                                      ldr r1, [fp]
00767344  3f f3 ff eb                                      bl #0x764048
00767348  00 30 e0 e3                                      mvn r3, #0
0076734c  04 50 87 e5                                      str r5, [r7, #4]
00767350  8a 31 84 e7                                      str r3, [r4, sl, lsl #3]
00767354  04 d0 8d e2                                      add sp, sp, #4
00767358  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0076735c  04 50 87 e5                                      str r5, [r7, #4]
00767360  00 30 98 e5                                      ldr r3, [r8]
00767364  08 30 87 e5                                      str r3, [r7, #8]
00767368  00 00 9b e5                                      ldr r0, [fp]
0076736c  00 00 50 e3                                      cmp r0, #0
00767370  0c 00 87 e5                                      str r0, [r7, #0xc]
00767374  f6 ff ff 0a                                      beq #0x767354
00767378  04 d0 8d e2                                      add sp, sp, #4
0076737c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00767380  37 ca ff ea                                      b #0x759c64
00767384  00 10 8c e5                                      str r1, [ip]
00767388  04 30 97 e5                                      ldr r3, [r7, #4]
0076738c  04 30 8c e5                                      str r3, [ip, #4]
00767390  08 30 97 e5                                      ldr r3, [r7, #8]
00767394  08 30 8c e5                                      str r3, [ip, #8]
00767398  0c 00 97 e5                                      ldr r0, [r7, #0xc]
0076739c  00 00 50 e3                                      cmp r0, #0
007673a0  0c 00 8c e5                                      str r0, [ip, #0xc]
007673a4  00 00 00 0a                                      beq #0x7673ac
007673a8  2d ca ff eb                                      bl #0x759c64
007673ac  00 30 98 e5                                      ldr r3, [r8]
007673b0  0c 00 87 e2                                      add r0, r7, #0xc
007673b4  08 30 87 e5                                      str r3, [r7, #8]
007673b8  00 10 9b e5                                      ldr r1, [fp]
007673bc  21 f3 ff eb                                      bl #0x764048
007673c0  8a 61 84 e7                                      str r6, [r4, sl, lsl #3]
007673c4  04 50 87 e5                                      str r5, [r7, #4]
007673c8  e1 ff ff ea                                      b #0x767354
