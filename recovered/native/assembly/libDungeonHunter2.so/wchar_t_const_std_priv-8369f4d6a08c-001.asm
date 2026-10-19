; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005728d4, declared_size=304, range_size=304, mode=arm
; class-group: wchar_t const* std::priv
; alias: _ZNSt4priv9__find_ifIPKwNS_14_Eq_char_boundISt11char_traitsIwEEEEET_S7_S7_T0_RKSt26random_access_iterator_tag
; demangled: wchar_t const* std::priv::__find_if<wchar_t const*, std::priv::_Eq_char_bound<std::char_traits<wchar_t> > >(wchar_t const*, wchar_t const*, std::priv::_Eq_char_bound<std::char_traits<wchar_t> >, std::random_access_iterator_tag const&)
; decoder-mode: arm
005728d4  00 30 a0 e1                                      mov r3, r0
005728d8  01 00 60 e0                                      rsb r0, r0, r1
005728dc  40 c2 a0 e1                                      asr ip, r0, #4
005728e0  00 00 5c e3                                      cmp ip, #0
005728e4  30 00 2d e9                                      push {r4, r5}
005728e8  40 41 a0 e1                                      asr r4, r0, #2
005728ec  03 00 a0 d1                                      movle r0, r3
005728f0  21 00 00 da                                      ble #0x57297c
005728f4  00 00 93 e5                                      ldr r0, [r3]
005728f8  00 40 92 e5                                      ldr r4, [r2]
005728fc  04 00 50 e1                                      cmp r0, r4
00572900  03 00 a0 01                                      moveq r0, r3
00572904  23 00 00 0a                                      beq #0x572998
00572908  04 50 93 e5                                      ldr r5, [r3, #4]
0057290c  04 00 83 e2                                      add r0, r3, #4
00572910  05 00 54 e1                                      cmp r4, r5
00572914  1f 00 00 0a                                      beq #0x572998
00572918  04 50 b0 e5                                      ldr r5, [r0, #4]!
0057291c  05 00 54 e1                                      cmp r4, r5
00572920  1c 00 00 0a                                      beq #0x572998
00572924  04 50 b0 e5                                      ldr r5, [r0, #4]!
00572928  05 00 54 e1                                      cmp r4, r5
0057292c  0d 00 00 1a                                      bne #0x572968
00572930  18 00 00 ea                                      b #0x572998
00572934  10 00 93 e5                                      ldr r0, [r3, #0x10]
00572938  04 00 50 e1                                      cmp r0, r4
0057293c  22 00 00 0a                                      beq #0x5729cc
00572940  14 00 93 e5                                      ldr r0, [r3, #0x14]
00572944  04 00 50 e1                                      cmp r0, r4
00572948  21 00 00 0a                                      beq #0x5729d4
0057294c  18 00 93 e5                                      ldr r0, [r3, #0x18]
00572950  00 00 54 e1                                      cmp r4, r0
00572954  20 00 00 0a                                      beq #0x5729dc
00572958  10 30 83 e2                                      add r3, r3, #0x10
0057295c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00572960  00 00 54 e1                                      cmp r4, r0
00572964  1e 00 00 0a                                      beq #0x5729e4
00572968  01 c0 5c e2                                      subs ip, ip, #1
0057296c  f0 ff ff 1a                                      bne #0x572934
00572970  10 00 83 e2                                      add r0, r3, #0x10
00572974  01 40 60 e0                                      rsb r4, r0, r1
00572978  44 41 a0 e1                                      asr r4, r4, #2
0057297c  02 00 54 e3                                      cmp r4, #2
00572980  06 00 00 0a                                      beq #0x5729a0
00572984  03 00 54 e3                                      cmp r4, #3
00572988  17 00 00 0a                                      beq #0x5729ec
0057298c  01 00 54 e3                                      cmp r4, #1
00572990  0b 00 00 0a                                      beq #0x5729c4
00572994  01 00 a0 e1                                      mov r0, r1
00572998  30 00 bd e8                                      pop {r4, r5}
0057299c  1e ff 2f e1                                      bx lr
005729a0  00 30 92 e5                                      ldr r3, [r2]
005729a4  00 20 90 e5                                      ldr r2, [r0]
005729a8  03 00 52 e1                                      cmp r2, r3
005729ac  f9 ff ff 0a                                      beq #0x572998
005729b0  04 00 80 e2                                      add r0, r0, #4
005729b4  00 20 90 e5                                      ldr r2, [r0]
005729b8  03 00 52 e1                                      cmp r2, r3
005729bc  01 00 a0 11                                      movne r0, r1
005729c0  f4 ff ff ea                                      b #0x572998
005729c4  00 30 92 e5                                      ldr r3, [r2]
005729c8  f9 ff ff ea                                      b #0x5729b4
005729cc  10 00 83 e2                                      add r0, r3, #0x10
005729d0  f0 ff ff ea                                      b #0x572998
005729d4  14 00 83 e2                                      add r0, r3, #0x14
005729d8  ee ff ff ea                                      b #0x572998
005729dc  18 00 83 e2                                      add r0, r3, #0x18
005729e0  ec ff ff ea                                      b #0x572998
005729e4  0c 00 83 e2                                      add r0, r3, #0xc
005729e8  ea ff ff ea                                      b #0x572998
005729ec  00 30 92 e5                                      ldr r3, [r2]
005729f0  00 20 90 e5                                      ldr r2, [r0]
005729f4  03 00 52 e1                                      cmp r2, r3
005729f8  e6 ff ff 0a                                      beq #0x572998
005729fc  04 00 80 e2                                      add r0, r0, #4
00572a00  e7 ff ff ea                                      b #0x5729a4

; FUNCTION 0x008a3158, declared_size=190, range_size=190, mode=thumb
; class-group: wchar_t const* std::priv
; alias: _ZNSt4priv9__find_ifIPKwSt16_Ctype_w_is_maskEET_S4_S4_T0_RKSt26random_access_iterator_tag
; demangled: wchar_t const* std::priv::__find_if<wchar_t const*, std::_Ctype_w_is_mask>(wchar_t const*, wchar_t const*, std::_Ctype_w_is_mask, std::random_access_iterator_tag const&)
; decoder-mode: thumb
008a3158  30 b5                                            push {r4, r5, lr}
008a315a  0c 1a                                            subs r4, r1, r0
008a315c  a3 10                                            asrs r3, r4, #2
008a315e  24 11                                            asrs r4, r4, #4
008a3160  00 2c                                            cmp r4, #0
008a3162  30 dd                                            ble #0x8a31c6
008a3164  03 68                                            ldr r3, [r0]
008a3166  ff 2b                                            cmp r3, #0xff
008a3168  06 d8                                            bhi #0x8a3178
008a316a  55 68                                            ldr r5, [r2, #4]
008a316c  9b 00                                            lsls r3, r3, #2
008a316e  5d 59                                            ldr r5, [r3, r5]
008a3170  13 68                                            ldr r3, [r2]
008a3172  1d 42                                            tst r5, r3
008a3174  00 d0                                            beq #0x8a3178
008a3176  30 bd                                            pop {r4, r5, pc}
008a3178  43 68                                            ldr r3, [r0, #4]
008a317a  ff 2b                                            cmp r3, #0xff
008a317c  07 d8                                            bhi #0x8a318e
008a317e  55 68                                            ldr r5, [r2, #4]
008a3180  9b 00                                            lsls r3, r3, #2
008a3182  5d 59                                            ldr r5, [r3, r5]
008a3184  13 68                                            ldr r3, [r2]
008a3186  1d 42                                            tst r5, r3
008a3188  01 d0                                            beq #0x8a318e
008a318a  04 30                                            adds r0, #4
008a318c  f3 e7                                            b #0x8a3176
008a318e  83 68                                            ldr r3, [r0, #8]
008a3190  ff 2b                                            cmp r3, #0xff
008a3192  07 d8                                            bhi #0x8a31a4
008a3194  55 68                                            ldr r5, [r2, #4]
008a3196  9b 00                                            lsls r3, r3, #2
008a3198  5d 59                                            ldr r5, [r3, r5]
008a319a  13 68                                            ldr r3, [r2]
008a319c  1d 42                                            tst r5, r3
008a319e  01 d0                                            beq #0x8a31a4
008a31a0  08 30                                            adds r0, #8
008a31a2  e8 e7                                            b #0x8a3176
008a31a4  c3 68                                            ldr r3, [r0, #0xc]
008a31a6  ff 2b                                            cmp r3, #0xff
008a31a8  07 d8                                            bhi #0x8a31ba
008a31aa  55 68                                            ldr r5, [r2, #4]
008a31ac  9b 00                                            lsls r3, r3, #2
008a31ae  5d 59                                            ldr r5, [r3, r5]
008a31b0  13 68                                            ldr r3, [r2]
008a31b2  1d 42                                            tst r5, r3
008a31b4  01 d0                                            beq #0x8a31ba
008a31b6  0c 30                                            adds r0, #0xc
008a31b8  dd e7                                            b #0x8a3176
008a31ba  01 3c                                            subs r4, #1
008a31bc  10 30                                            adds r0, #0x10
008a31be  00 2c                                            cmp r4, #0
008a31c0  d0 d1                                            bne #0x8a3164
008a31c2  0b 1a                                            subs r3, r1, r0
008a31c4  9b 10                                            asrs r3, r3, #2
008a31c6  02 2b                                            cmp r3, #2
008a31c8  09 d0                                            beq #0x8a31de
008a31ca  03 2b                                            cmp r3, #3
008a31cc  03 d0                                            beq #0x8a31d6
008a31ce  01 2b                                            cmp r3, #1
008a31d0  09 d0                                            beq #0x8a31e6
008a31d2  08 1c                                            adds r0, r1, #0
008a31d4  cf e7                                            b #0x8a3176
008a31d6  03 68                                            ldr r3, [r0]
008a31d8  ff 2b                                            cmp r3, #0xff
008a31da  15 d9                                            bls #0x8a3208
008a31dc  04 30                                            adds r0, #4
008a31de  03 68                                            ldr r3, [r0]
008a31e0  ff 2b                                            cmp r3, #0xff
008a31e2  0a d9                                            bls #0x8a31fa
008a31e4  04 30                                            adds r0, #4
008a31e6  03 68                                            ldr r3, [r0]
008a31e8  ff 2b                                            cmp r3, #0xff
008a31ea  f2 d8                                            bhi #0x8a31d2
008a31ec  54 68                                            ldr r4, [r2, #4]
008a31ee  9b 00                                            lsls r3, r3, #2
008a31f0  1c 59                                            ldr r4, [r3, r4]
008a31f2  13 68                                            ldr r3, [r2]
008a31f4  1c 42                                            tst r4, r3
008a31f6  be d1                                            bne #0x8a3176
008a31f8  eb e7                                            b #0x8a31d2
008a31fa  54 68                                            ldr r4, [r2, #4]
008a31fc  9b 00                                            lsls r3, r3, #2
008a31fe  1c 59                                            ldr r4, [r3, r4]
008a3200  13 68                                            ldr r3, [r2]
008a3202  1c 42                                            tst r4, r3
008a3204  b7 d1                                            bne #0x8a3176
008a3206  ed e7                                            b #0x8a31e4
008a3208  54 68                                            ldr r4, [r2, #4]
008a320a  9b 00                                            lsls r3, r3, #2
008a320c  1c 59                                            ldr r4, [r3, r4]
008a320e  13 68                                            ldr r3, [r2]
008a3210  1c 42                                            tst r4, r3
008a3212  b0 d1                                            bne #0x8a3176
008a3214  e2 e7                                            b #0x8a31dc

; FUNCTION 0x008a323c, declared_size=214, range_size=214, mode=thumb
; class-group: wchar_t const* std::priv
; alias: _ZNSt4priv9__find_ifIPKwSt12unary_negateISt16_Ctype_w_is_maskEEET_S6_S6_T0_RKSt26random_access_iterator_tag
; demangled: wchar_t const* std::priv::__find_if<wchar_t const*, std::unary_negate<std::_Ctype_w_is_mask> >(wchar_t const*, wchar_t const*, std::unary_negate<std::_Ctype_w_is_mask>, std::random_access_iterator_tag const&)
; decoder-mode: thumb
008a323c  70 b5                                            push {r4, r5, r6, lr}
008a323e  0e 1a                                            subs r6, r1, r0
008a3240  b3 10                                            asrs r3, r6, #2
008a3242  36 11                                            asrs r6, r6, #4
008a3244  00 2e                                            cmp r6, #0
008a3246  3e dd                                            ble #0x8a32c6
008a3248  03 68                                            ldr r3, [r0]
008a324a  ff 2b                                            cmp r3, #0xff
008a324c  31 d8                                            bhi #0x8a32b2
008a324e  95 68                                            ldr r5, [r2, #8]
008a3250  9b 00                                            lsls r3, r3, #2
008a3252  54 68                                            ldr r4, [r2, #4]
008a3254  5b 59                                            ldr r3, [r3, r5]
008a3256  1c 42                                            tst r4, r3
008a3258  2b d0                                            beq #0x8a32b2
008a325a  04 30                                            adds r0, #4
008a325c  03 68                                            ldr r3, [r0]
008a325e  ff 2b                                            cmp r3, #0xff
008a3260  27 d8                                            bhi #0x8a32b2
008a3262  9b 00                                            lsls r3, r3, #2
008a3264  5b 59                                            ldr r3, [r3, r5]
008a3266  1c 42                                            tst r4, r3
008a3268  23 d0                                            beq #0x8a32b2
008a326a  04 30                                            adds r0, #4
008a326c  03 68                                            ldr r3, [r0]
008a326e  ff 2b                                            cmp r3, #0xff
008a3270  1f d8                                            bhi #0x8a32b2
008a3272  9b 00                                            lsls r3, r3, #2
008a3274  5b 59                                            ldr r3, [r3, r5]
008a3276  1c 42                                            tst r4, r3
008a3278  1b d0                                            beq #0x8a32b2
008a327a  43 68                                            ldr r3, [r0, #4]
008a327c  ff 2b                                            cmp r3, #0xff
008a327e  19 d8                                            bhi #0x8a32b4
008a3280  9b 00                                            lsls r3, r3, #2
008a3282  5b 59                                            ldr r3, [r3, r5]
008a3284  1c 42                                            tst r4, r3
008a3286  15 d0                                            beq #0x8a32b4
008a3288  01 3e                                            subs r6, #1
008a328a  00 2e                                            cmp r6, #0
008a328c  18 d0                                            beq #0x8a32c0
008a328e  83 68                                            ldr r3, [r0, #8]
008a3290  ff 2b                                            cmp r3, #0xff
008a3292  13 d8                                            bhi #0x8a32bc
008a3294  9b 00                                            lsls r3, r3, #2
008a3296  5b 59                                            ldr r3, [r3, r5]
008a3298  1c 42                                            tst r4, r3
008a329a  0f d0                                            beq #0x8a32bc
008a329c  c3 68                                            ldr r3, [r0, #0xc]
008a329e  ff 2b                                            cmp r3, #0xff
008a32a0  0a d8                                            bhi #0x8a32b8
008a32a2  9b 00                                            lsls r3, r3, #2
008a32a4  5b 59                                            ldr r3, [r3, r5]
008a32a6  1c 42                                            tst r4, r3
008a32a8  06 d0                                            beq #0x8a32b8
008a32aa  10 30                                            adds r0, #0x10
008a32ac  03 68                                            ldr r3, [r0]
008a32ae  ff 2b                                            cmp r3, #0xff
008a32b0  df d9                                            bls #0x8a3272
008a32b2  70 bd                                            pop {r4, r5, r6, pc}
008a32b4  04 30                                            adds r0, #4
008a32b6  fc e7                                            b #0x8a32b2
008a32b8  0c 30                                            adds r0, #0xc
008a32ba  fa e7                                            b #0x8a32b2
008a32bc  08 30                                            adds r0, #8
008a32be  f8 e7                                            b #0x8a32b2
008a32c0  08 30                                            adds r0, #8
008a32c2  0b 1a                                            subs r3, r1, r0
008a32c4  9b 10                                            asrs r3, r3, #2
008a32c6  02 2b                                            cmp r3, #2
008a32c8  0f d0                                            beq #0x8a32ea
008a32ca  03 2b                                            cmp r3, #3
008a32cc  03 d0                                            beq #0x8a32d6
008a32ce  01 2b                                            cmp r3, #1
008a32d0  15 d0                                            beq #0x8a32fe
008a32d2  08 1c                                            adds r0, r1, #0
008a32d4  ed e7                                            b #0x8a32b2
008a32d6  03 68                                            ldr r3, [r0]
008a32d8  ff 2b                                            cmp r3, #0xff
008a32da  ea d8                                            bhi #0x8a32b2
008a32dc  94 68                                            ldr r4, [r2, #8]
008a32de  9b 00                                            lsls r3, r3, #2
008a32e0  1c 59                                            ldr r4, [r3, r4]
008a32e2  53 68                                            ldr r3, [r2, #4]
008a32e4  1c 42                                            tst r4, r3
008a32e6  e4 d0                                            beq #0x8a32b2
008a32e8  04 30                                            adds r0, #4
008a32ea  03 68                                            ldr r3, [r0]
008a32ec  ff 2b                                            cmp r3, #0xff
008a32ee  e0 d8                                            bhi #0x8a32b2
008a32f0  94 68                                            ldr r4, [r2, #8]
008a32f2  9b 00                                            lsls r3, r3, #2
008a32f4  1c 59                                            ldr r4, [r3, r4]
008a32f6  53 68                                            ldr r3, [r2, #4]
008a32f8  1c 42                                            tst r4, r3
008a32fa  da d0                                            beq #0x8a32b2
008a32fc  04 30                                            adds r0, #4
008a32fe  03 68                                            ldr r3, [r0]
008a3300  ff 2b                                            cmp r3, #0xff
008a3302  d6 d8                                            bhi #0x8a32b2
008a3304  94 68                                            ldr r4, [r2, #8]
008a3306  9b 00                                            lsls r3, r3, #2
008a3308  1c 59                                            ldr r4, [r3, r4]
008a330a  53 68                                            ldr r3, [r2, #4]
008a330c  1c 42                                            tst r4, r3
008a330e  d0 d0                                            beq #0x8a32b2
008a3310  df e7                                            b #0x8a32d2

; FUNCTION 0x008b54f8, declared_size=170, range_size=170, mode=thumb
; class-group: wchar_t const* std::priv
; alias: _ZNSt4priv9__find_ifIPKwSt12unary_negateINS_23_Ctype_byname_w_is_maskEEEET_S6_S6_T0_RKSt26random_access_iterator_tag
; demangled: wchar_t const* std::priv::__find_if<wchar_t const*, std::unary_negate<std::priv::_Ctype_byname_w_is_mask> >(wchar_t const*, wchar_t const*, std::unary_negate<std::priv::_Ctype_byname_w_is_mask>, std::random_access_iterator_tag const&)
; decoder-mode: thumb
008b54f8  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b54fa  0e 1a                                            subs r6, r1, r0
008b54fc  b3 10                                            asrs r3, r6, #2
008b54fe  36 11                                            asrs r6, r6, #4
008b5500  05 1c                                            adds r5, r0, #0
008b5502  0f 1c                                            adds r7, r1, #0
008b5504  14 1c                                            adds r4, r2, #0
008b5506  00 2e                                            cmp r6, #0
008b5508  19 dc                                            bgt #0x8b553e
008b550a  23 e0                                            b #0x8b5554
008b550c  a0 68                                            ldr r0, [r4, #8]
008b550e  69 68                                            ldr r1, [r5, #4]
008b5510  a2 88                                            ldrh r2, [r4, #4]
008b5512  01 f0 89 fc                                      bl #0x8b6e28
008b5516  00 28                                            cmp r0, #0
008b5518  24 d0                                            beq #0x8b5564
008b551a  a0 68                                            ldr r0, [r4, #8]
008b551c  a9 68                                            ldr r1, [r5, #8]
008b551e  a2 88                                            ldrh r2, [r4, #4]
008b5520  01 f0 82 fc                                      bl #0x8b6e28
008b5524  00 28                                            cmp r0, #0
008b5526  38 d0                                            beq #0x8b559a
008b5528  a0 68                                            ldr r0, [r4, #8]
008b552a  e9 68                                            ldr r1, [r5, #0xc]
008b552c  a2 88                                            ldrh r2, [r4, #4]
008b552e  01 f0 7b fc                                      bl #0x8b6e28
008b5532  00 28                                            cmp r0, #0
008b5534  33 d0                                            beq #0x8b559e
008b5536  01 3e                                            subs r6, #1
008b5538  10 35                                            adds r5, #0x10
008b553a  00 2e                                            cmp r6, #0
008b553c  08 d0                                            beq #0x8b5550
008b553e  a0 68                                            ldr r0, [r4, #8]
008b5540  29 68                                            ldr r1, [r5]
008b5542  a2 88                                            ldrh r2, [r4, #4]
008b5544  01 f0 70 fc                                      bl #0x8b6e28
008b5548  00 28                                            cmp r0, #0
008b554a  df d1                                            bne #0x8b550c
008b554c  28 1c                                            adds r0, r5, #0
008b554e  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b5550  7b 1b                                            subs r3, r7, r5
008b5552  9b 10                                            asrs r3, r3, #2
008b5554  02 2b                                            cmp r3, #2
008b5556  0f d0                                            beq #0x8b5578
008b5558  03 2b                                            cmp r3, #3
008b555a  05 d0                                            beq #0x8b5568
008b555c  01 2b                                            cmp r3, #1
008b555e  13 d0                                            beq #0x8b5588
008b5560  3d 1c                                            adds r5, r7, #0
008b5562  f3 e7                                            b #0x8b554c
008b5564  04 35                                            adds r5, #4
008b5566  f1 e7                                            b #0x8b554c
008b5568  a0 68                                            ldr r0, [r4, #8]
008b556a  29 68                                            ldr r1, [r5]
008b556c  a2 88                                            ldrh r2, [r4, #4]
008b556e  01 f0 5b fc                                      bl #0x8b6e28
008b5572  00 28                                            cmp r0, #0
008b5574  ea d0                                            beq #0x8b554c
008b5576  04 35                                            adds r5, #4
008b5578  a0 68                                            ldr r0, [r4, #8]
008b557a  29 68                                            ldr r1, [r5]
008b557c  a2 88                                            ldrh r2, [r4, #4]
008b557e  01 f0 53 fc                                      bl #0x8b6e28
008b5582  00 28                                            cmp r0, #0
008b5584  e2 d0                                            beq #0x8b554c
008b5586  04 35                                            adds r5, #4
008b5588  a0 68                                            ldr r0, [r4, #8]
008b558a  29 68                                            ldr r1, [r5]
008b558c  a2 88                                            ldrh r2, [r4, #4]
008b558e  01 f0 4b fc                                      bl #0x8b6e28
008b5592  00 28                                            cmp r0, #0
008b5594  da d0                                            beq #0x8b554c
008b5596  3d 1c                                            adds r5, r7, #0
008b5598  d8 e7                                            b #0x8b554c
008b559a  08 35                                            adds r5, #8
008b559c  d6 e7                                            b #0x8b554c
008b559e  0c 35                                            adds r5, #0xc
008b55a0  d4 e7                                            b #0x8b554c

; FUNCTION 0x008b55c0, declared_size=170, range_size=170, mode=thumb
; class-group: wchar_t const* std::priv
; alias: _ZNSt4priv9__find_ifIPKwNS_23_Ctype_byname_w_is_maskEEET_S4_S4_T0_RKSt26random_access_iterator_tag
; demangled: wchar_t const* std::priv::__find_if<wchar_t const*, std::priv::_Ctype_byname_w_is_mask>(wchar_t const*, wchar_t const*, std::priv::_Ctype_byname_w_is_mask, std::random_access_iterator_tag const&)
; decoder-mode: thumb
008b55c0  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b55c2  0e 1a                                            subs r6, r1, r0
008b55c4  b3 10                                            asrs r3, r6, #2
008b55c6  36 11                                            asrs r6, r6, #4
008b55c8  05 1c                                            adds r5, r0, #0
008b55ca  0f 1c                                            adds r7, r1, #0
008b55cc  14 1c                                            adds r4, r2, #0
008b55ce  00 2e                                            cmp r6, #0
008b55d0  19 dc                                            bgt #0x8b5606
008b55d2  23 e0                                            b #0x8b561c
008b55d4  60 68                                            ldr r0, [r4, #4]
008b55d6  69 68                                            ldr r1, [r5, #4]
008b55d8  22 88                                            ldrh r2, [r4]
008b55da  01 f0 25 fc                                      bl #0x8b6e28
008b55de  00 28                                            cmp r0, #0
008b55e0  24 d1                                            bne #0x8b562c
008b55e2  60 68                                            ldr r0, [r4, #4]
008b55e4  a9 68                                            ldr r1, [r5, #8]
008b55e6  22 88                                            ldrh r2, [r4]
008b55e8  01 f0 1e fc                                      bl #0x8b6e28
008b55ec  00 28                                            cmp r0, #0
008b55ee  38 d1                                            bne #0x8b5662
008b55f0  60 68                                            ldr r0, [r4, #4]
008b55f2  e9 68                                            ldr r1, [r5, #0xc]
008b55f4  22 88                                            ldrh r2, [r4]
008b55f6  01 f0 17 fc                                      bl #0x8b6e28
008b55fa  00 28                                            cmp r0, #0
008b55fc  33 d1                                            bne #0x8b5666
008b55fe  01 3e                                            subs r6, #1
008b5600  10 35                                            adds r5, #0x10
008b5602  00 2e                                            cmp r6, #0
008b5604  08 d0                                            beq #0x8b5618
008b5606  60 68                                            ldr r0, [r4, #4]
008b5608  29 68                                            ldr r1, [r5]
008b560a  22 88                                            ldrh r2, [r4]
008b560c  01 f0 0c fc                                      bl #0x8b6e28
008b5610  00 28                                            cmp r0, #0
008b5612  df d0                                            beq #0x8b55d4
008b5614  28 1c                                            adds r0, r5, #0
008b5616  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b5618  7b 1b                                            subs r3, r7, r5
008b561a  9b 10                                            asrs r3, r3, #2
008b561c  02 2b                                            cmp r3, #2
008b561e  0f d0                                            beq #0x8b5640
008b5620  03 2b                                            cmp r3, #3
008b5622  05 d0                                            beq #0x8b5630
008b5624  01 2b                                            cmp r3, #1
008b5626  13 d0                                            beq #0x8b5650
008b5628  3d 1c                                            adds r5, r7, #0
008b562a  f3 e7                                            b #0x8b5614
008b562c  04 35                                            adds r5, #4
008b562e  f1 e7                                            b #0x8b5614
008b5630  60 68                                            ldr r0, [r4, #4]
008b5632  29 68                                            ldr r1, [r5]
008b5634  22 88                                            ldrh r2, [r4]
008b5636  01 f0 f7 fb                                      bl #0x8b6e28
008b563a  00 28                                            cmp r0, #0
008b563c  ea d1                                            bne #0x8b5614
008b563e  04 35                                            adds r5, #4
008b5640  60 68                                            ldr r0, [r4, #4]
008b5642  29 68                                            ldr r1, [r5]
008b5644  22 88                                            ldrh r2, [r4]
008b5646  01 f0 ef fb                                      bl #0x8b6e28
008b564a  00 28                                            cmp r0, #0
008b564c  e2 d1                                            bne #0x8b5614
008b564e  04 35                                            adds r5, #4
008b5650  60 68                                            ldr r0, [r4, #4]
008b5652  29 68                                            ldr r1, [r5]
008b5654  22 88                                            ldrh r2, [r4]
008b5656  01 f0 e7 fb                                      bl #0x8b6e28
008b565a  00 28                                            cmp r0, #0
008b565c  da d1                                            bne #0x8b5614
008b565e  3d 1c                                            adds r5, r7, #0
008b5660  d8 e7                                            b #0x8b5614
008b5662  08 35                                            adds r5, #8
008b5664  d6 e7                                            b #0x8b5614
008b5666  0c 35                                            adds r5, #0xc
008b5668  d4 e7                                            b #0x8b5614

; FUNCTION 0x008b98d4, declared_size=148, range_size=148, mode=thumb
; class-group: wchar_t const* std::priv
; alias: _ZNSt4priv6__findIPKwwEET_S3_S3_RKT0_RKSt26random_access_iterator_tag
; demangled: wchar_t const* std::priv::__find<wchar_t const*, wchar_t>(wchar_t const*, wchar_t const*, wchar_t const&, std::random_access_iterator_tag const&)
; decoder-mode: thumb
008b98d4  30 b5                                            push {r4, r5, lr}
008b98d6  0c 1a                                            subs r4, r1, r0
008b98d8  a3 10                                            asrs r3, r4, #2
008b98da  24 11                                            asrs r4, r4, #4
008b98dc  00 2c                                            cmp r4, #0
008b98de  23 dd                                            ble #0x8b9928
008b98e0  13 68                                            ldr r3, [r2]
008b98e2  05 68                                            ldr r5, [r0]
008b98e4  9d 42                                            cmp r5, r3
008b98e6  26 d0                                            beq #0x8b9936
008b98e8  04 30                                            adds r0, #4
008b98ea  05 68                                            ldr r5, [r0]
008b98ec  ab 42                                            cmp r3, r5
008b98ee  22 d0                                            beq #0x8b9936
008b98f0  04 30                                            adds r0, #4
008b98f2  05 68                                            ldr r5, [r0]
008b98f4  ab 42                                            cmp r3, r5
008b98f6  1e d0                                            beq #0x8b9936
008b98f8  04 30                                            adds r0, #4
008b98fa  05 68                                            ldr r5, [r0]
008b98fc  ab 42                                            cmp r3, r5
008b98fe  0d d1                                            bne #0x8b991c
008b9900  19 e0                                            b #0x8b9936
008b9902  45 68                                            ldr r5, [r0, #4]
008b9904  9d 42                                            cmp r5, r3
008b9906  23 d0                                            beq #0x8b9950
008b9908  85 68                                            ldr r5, [r0, #8]
008b990a  9d 42                                            cmp r5, r3
008b990c  22 d0                                            beq #0x8b9954
008b990e  c5 68                                            ldr r5, [r0, #0xc]
008b9910  ab 42                                            cmp r3, r5
008b9912  21 d0                                            beq #0x8b9958
008b9914  10 30                                            adds r0, #0x10
008b9916  05 68                                            ldr r5, [r0]
008b9918  ab 42                                            cmp r3, r5
008b991a  0c d0                                            beq #0x8b9936
008b991c  01 3c                                            subs r4, #1
008b991e  00 2c                                            cmp r4, #0
008b9920  ef d1                                            bne #0x8b9902
008b9922  04 30                                            adds r0, #4
008b9924  0b 1a                                            subs r3, r1, r0
008b9926  9b 10                                            asrs r3, r3, #2
008b9928  02 2b                                            cmp r3, #2
008b992a  05 d0                                            beq #0x8b9938
008b992c  03 2b                                            cmp r3, #3
008b992e  15 d0                                            beq #0x8b995c
008b9930  01 2b                                            cmp r3, #1
008b9932  0b d0                                            beq #0x8b994c
008b9934  08 1c                                            adds r0, r1, #0
008b9936  30 bd                                            pop {r4, r5, pc}
008b9938  13 68                                            ldr r3, [r2]
008b993a  02 68                                            ldr r2, [r0]
008b993c  9a 42                                            cmp r2, r3
008b993e  fa d0                                            beq #0x8b9936
008b9940  04 30                                            adds r0, #4
008b9942  02 68                                            ldr r2, [r0]
008b9944  9a 42                                            cmp r2, r3
008b9946  f6 d0                                            beq #0x8b9936
008b9948  08 1c                                            adds r0, r1, #0
008b994a  f4 e7                                            b #0x8b9936
008b994c  13 68                                            ldr r3, [r2]
008b994e  f8 e7                                            b #0x8b9942
008b9950  04 30                                            adds r0, #4
008b9952  f0 e7                                            b #0x8b9936
008b9954  08 30                                            adds r0, #8
008b9956  ee e7                                            b #0x8b9936
008b9958  0c 30                                            adds r0, #0xc
008b995a  ec e7                                            b #0x8b9936
008b995c  13 68                                            ldr r3, [r2]
008b995e  02 68                                            ldr r2, [r0]
008b9960  9a 42                                            cmp r2, r3
008b9962  e8 d0                                            beq #0x8b9936
008b9964  04 30                                            adds r0, #4
008b9966  e8 e7                                            b #0x8b993a
