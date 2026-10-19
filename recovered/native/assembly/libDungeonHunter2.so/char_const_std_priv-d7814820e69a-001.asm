; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034ec04, declared_size=296, range_size=296, mode=arm
; class-group: char const* std::priv
; alias: _ZNSt4priv9__find_ifIPKcNS_14_Eq_char_boundISt11char_traitsIcEEEEET_S7_S7_T0_RKSt26random_access_iterator_tag
; demangled: char const* std::priv::__find_if<char const*, std::priv::_Eq_char_bound<std::char_traits<char> > >(char const*, char const*, std::priv::_Eq_char_bound<std::char_traits<char> >, std::random_access_iterator_tag const&)
; decoder-mode: arm
0034ec04  30 00 2d e9                                      push {r4, r5}
0034ec08  01 40 60 e0                                      rsb r4, r0, r1
0034ec0c  44 c1 a0 e1                                      asr ip, r4, #2
0034ec10  00 00 5c e3                                      cmp ip, #0
0034ec14  00 30 a0 e1                                      mov r3, r0
0034ec18  00 00 a0 d1                                      movle r0, r0
0034ec1c  20 00 00 da                                      ble #0x34eca4
0034ec20  d0 00 d3 e1                                      ldrsb r0, [r3]
0034ec24  d0 40 d2 e1                                      ldrsb r4, [r2]
0034ec28  04 00 50 e1                                      cmp r0, r4
0034ec2c  03 00 a0 01                                      moveq r0, r3
0034ec30  22 00 00 0a                                      beq #0x34ecc0
0034ec34  d1 50 d3 e1                                      ldrsb r5, [r3, #1]
0034ec38  01 00 83 e2                                      add r0, r3, #1
0034ec3c  04 00 55 e1                                      cmp r5, r4
0034ec40  1e 00 00 0a                                      beq #0x34ecc0
0034ec44  d1 50 f0 e1                                      ldrsb r5, [r0, #1]!
0034ec48  04 00 55 e1                                      cmp r5, r4
0034ec4c  1b 00 00 0a                                      beq #0x34ecc0
0034ec50  d1 50 f0 e1                                      ldrsb r5, [r0, #1]!
0034ec54  04 00 55 e1                                      cmp r5, r4
0034ec58  0d 00 00 1a                                      bne #0x34ec94
0034ec5c  17 00 00 ea                                      b #0x34ecc0
0034ec60  d4 00 d3 e1                                      ldrsb r0, [r3, #4]
0034ec64  04 00 50 e1                                      cmp r0, r4
0034ec68  21 00 00 0a                                      beq #0x34ecf4
0034ec6c  d5 00 d3 e1                                      ldrsb r0, [r3, #5]
0034ec70  04 00 50 e1                                      cmp r0, r4
0034ec74  20 00 00 0a                                      beq #0x34ecfc
0034ec78  d6 00 d3 e1                                      ldrsb r0, [r3, #6]
0034ec7c  04 00 50 e1                                      cmp r0, r4
0034ec80  1f 00 00 0a                                      beq #0x34ed04
0034ec84  04 30 83 e2                                      add r3, r3, #4
0034ec88  d3 00 d3 e1                                      ldrsb r0, [r3, #3]
0034ec8c  04 00 50 e1                                      cmp r0, r4
0034ec90  1d 00 00 0a                                      beq #0x34ed0c
0034ec94  01 c0 5c e2                                      subs ip, ip, #1
0034ec98  f0 ff ff 1a                                      bne #0x34ec60
0034ec9c  04 00 83 e2                                      add r0, r3, #4
0034eca0  01 40 60 e0                                      rsb r4, r0, r1
0034eca4  02 00 54 e3                                      cmp r4, #2
0034eca8  06 00 00 0a                                      beq #0x34ecc8
0034ecac  03 00 54 e3                                      cmp r4, #3
0034ecb0  17 00 00 0a                                      beq #0x34ed14
0034ecb4  01 00 54 e3                                      cmp r4, #1
0034ecb8  0b 00 00 0a                                      beq #0x34ecec
0034ecbc  01 00 a0 e1                                      mov r0, r1
0034ecc0  30 00 bd e8                                      pop {r4, r5}
0034ecc4  1e ff 2f e1                                      bx lr
0034ecc8  d0 30 d2 e1                                      ldrsb r3, [r2]
0034eccc  d0 20 d0 e1                                      ldrsb r2, [r0]
0034ecd0  03 00 52 e1                                      cmp r2, r3
0034ecd4  f9 ff ff 0a                                      beq #0x34ecc0
0034ecd8  01 00 80 e2                                      add r0, r0, #1
0034ecdc  d0 20 d0 e1                                      ldrsb r2, [r0]
0034ece0  03 00 52 e1                                      cmp r2, r3
0034ece4  01 00 a0 11                                      movne r0, r1
0034ece8  f4 ff ff ea                                      b #0x34ecc0
0034ecec  d0 30 d2 e1                                      ldrsb r3, [r2]
0034ecf0  f9 ff ff ea                                      b #0x34ecdc
0034ecf4  04 00 83 e2                                      add r0, r3, #4
0034ecf8  f0 ff ff ea                                      b #0x34ecc0
0034ecfc  05 00 83 e2                                      add r0, r3, #5
0034ed00  ee ff ff ea                                      b #0x34ecc0
0034ed04  06 00 83 e2                                      add r0, r3, #6
0034ed08  ec ff ff ea                                      b #0x34ecc0
0034ed0c  03 00 83 e2                                      add r0, r3, #3
0034ed10  ea ff ff ea                                      b #0x34ecc0
0034ed14  d0 30 d2 e1                                      ldrsb r3, [r2]
0034ed18  d0 20 d0 e1                                      ldrsb r2, [r0]
0034ed1c  03 00 52 e1                                      cmp r2, r3
0034ed20  e6 ff ff 0a                                      beq #0x34ecc0
0034ed24  01 00 80 e2                                      add r0, r0, #1
0034ed28  e7 ff ff ea                                      b #0x34eccc

; FUNCTION 0x004157d4, declared_size=240, range_size=240, mode=arm
; class-group: char const* std::priv
; alias: _ZNSt4priv20__find_first_of_aux2IPKcS2_cNS_9_IdentityIbEEEET_S5_S5_T0_S6_PT1_T2_RKSt11__true_type.clone.0
; demangled: char const* std::priv::__find_first_of_aux2<char const*, char const*, char, std::priv::_Identity<bool> >(char const*, char const*, char const*, char const*, char*, std::priv::_Identity<bool>, std::__true_type const&) [clone .clone.0]
; decoder-mode: arm
004157d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004157d8  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
004157dc  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
004157e0  28 d0 4d e2                                      sub sp, sp, #0x28
004157e4  04 40 8f e0                                      add r4, pc, r4
004157e8  06 70 94 e7                                      ldr r7, [r4, r6]
004157ec  00 c0 a0 e3                                      mov ip, #0
004157f0  0c 30 8d e2                                      add r3, sp, #0xc
004157f4  00 70 97 e5                                      ldr r7, [r7]
004157f8  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004157fc  04 c0 8d e5                                      str ip, [sp, #4]
00415800  24 70 8d e5                                      str r7, [sp, #0x24]
00415804  04 c0 83 e4                                      str ip, [r3], #4
00415808  04 c0 83 e4                                      str ip, [r3], #4
0041580c  04 c0 83 e4                                      str ip, [r3], #4
00415810  04 c0 83 e4                                      str ip, [r3], #4
00415814  05 50 8f e0                                      add r5, pc, r5
00415818  04 c0 83 e4                                      str ip, [r3], #4
0041581c  05 00 52 e1                                      cmp r2, r5
00415820  00 c0 83 e5                                      str ip, [r3]
00415824  08 c0 8d e5                                      str ip, [sp, #8]
00415828  09 00 00 0a                                      beq #0x415854
0041582c  01 80 a0 e3                                      mov r8, #1
00415830  01 c0 d5 e4                                      ldrb ip, [r5], #1
00415834  28 70 8d e2                                      add r7, sp, #0x28
00415838  ac 31 87 e0                                      add r3, r7, ip, lsr #3
0041583c  24 70 53 e5                                      ldrb r7, [r3, #-0x24]
00415840  07 c0 0c e2                                      and ip, ip, #7
00415844  02 00 55 e1                                      cmp r5, r2
00415848  18 cc 87 e1                                      orr ip, r7, r8, lsl ip
0041584c  24 c0 43 e5                                      strb ip, [r3, #-0x24]
00415850  f6 ff ff 1a                                      bne #0x415830
00415854  00 00 51 e1                                      cmp r1, r0
00415858  07 00 00 0a                                      beq #0x41587c
0041585c  00 30 d0 e5                                      ldrb r3, [r0]
00415860  28 70 8d e2                                      add r7, sp, #0x28
00415864  a3 21 87 e0                                      add r2, r7, r3, lsr #3
00415868  24 20 52 e5                                      ldrb r2, [r2, #-0x24]
0041586c  07 30 03 e2                                      and r3, r3, #7
00415870  52 33 a0 e1                                      asr r3, r2, r3
00415874  01 00 13 e3                                      tst r3, #1
00415878  06 00 00 0a                                      beq #0x415898
0041587c  06 30 94 e7                                      ldr r3, [r4, r6]
00415880  24 20 9d e5                                      ldr r2, [sp, #0x24]
00415884  00 30 93 e5                                      ldr r3, [r3]
00415888  03 00 52 e1                                      cmp r2, r3
0041588c  08 00 00 1a                                      bne #0x4158b4
00415890  28 d0 8d e2                                      add sp, sp, #0x28
00415894  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00415898  01 00 80 e2                                      add r0, r0, #1
0041589c  01 00 50 e1                                      cmp r0, r1
004158a0  f5 ff ff 0a                                      beq #0x41587c
004158a4  00 30 d0 e5                                      ldrb r3, [r0]
004158a8  28 c0 8d e2                                      add ip, sp, #0x28
004158ac  a3 21 8c e0                                      add r2, ip, r3, lsr #3
004158b0  ec ff ff ea                                      b #0x415868
004158b4  95 e2 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004158b8  ac f2 57 00 ac 40 00 00 d4 6c 4f 00              .byte 0xac, 0xf2, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd4, 0x6c, 0x4f, 0x00

; FUNCTION 0x004158c4, declared_size=240, range_size=240, mode=arm
; class-group: char const* std::priv
; alias: _ZNSt4priv20__find_first_of_aux2IPKcS2_S1_St12unary_negateINS_9_IdentityIbEEEEET_S7_S7_T0_S8_PT1_T2_RKSt11__true_type.clone.5
; demangled: char const* std::priv::__find_first_of_aux2<char const*, char const*, char const, std::unary_negate<std::priv::_Identity<bool> > >(char const*, char const*, char const*, char const*, char const*, std::unary_negate<std::priv::_Identity<bool> >, std::__true_type const&) [clone .clone.5]
; decoder-mode: arm
004158c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004158c8  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
004158cc  d8 60 9f e5                                      ldr r6, [pc, #0xd8]
004158d0  28 d0 4d e2                                      sub sp, sp, #0x28
004158d4  04 40 8f e0                                      add r4, pc, r4
004158d8  06 70 94 e7                                      ldr r7, [r4, r6]
004158dc  00 c0 a0 e3                                      mov ip, #0
004158e0  0c 30 8d e2                                      add r3, sp, #0xc
004158e4  00 70 97 e5                                      ldr r7, [r7]
004158e8  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
004158ec  04 c0 8d e5                                      str ip, [sp, #4]
004158f0  24 70 8d e5                                      str r7, [sp, #0x24]
004158f4  04 c0 83 e4                                      str ip, [r3], #4
004158f8  04 c0 83 e4                                      str ip, [r3], #4
004158fc  04 c0 83 e4                                      str ip, [r3], #4
00415900  04 c0 83 e4                                      str ip, [r3], #4
00415904  05 50 8f e0                                      add r5, pc, r5
00415908  04 c0 83 e4                                      str ip, [r3], #4
0041590c  05 00 52 e1                                      cmp r2, r5
00415910  00 c0 83 e5                                      str ip, [r3]
00415914  08 c0 8d e5                                      str ip, [sp, #8]
00415918  09 00 00 0a                                      beq #0x415944
0041591c  01 80 a0 e3                                      mov r8, #1
00415920  01 c0 d5 e4                                      ldrb ip, [r5], #1
00415924  28 70 8d e2                                      add r7, sp, #0x28
00415928  ac 31 87 e0                                      add r3, r7, ip, lsr #3
0041592c  24 70 53 e5                                      ldrb r7, [r3, #-0x24]
00415930  07 c0 0c e2                                      and ip, ip, #7
00415934  02 00 55 e1                                      cmp r5, r2
00415938  18 cc 87 e1                                      orr ip, r7, r8, lsl ip
0041593c  24 c0 43 e5                                      strb ip, [r3, #-0x24]
00415940  f6 ff ff 1a                                      bne #0x415920
00415944  00 00 51 e1                                      cmp r1, r0
00415948  07 00 00 0a                                      beq #0x41596c
0041594c  00 30 d0 e5                                      ldrb r3, [r0]
00415950  28 70 8d e2                                      add r7, sp, #0x28
00415954  a3 21 87 e0                                      add r2, r7, r3, lsr #3
00415958  24 20 52 e5                                      ldrb r2, [r2, #-0x24]
0041595c  07 30 03 e2                                      and r3, r3, #7
00415960  52 33 a0 e1                                      asr r3, r2, r3
00415964  01 00 13 e3                                      tst r3, #1
00415968  06 00 00 1a                                      bne #0x415988
0041596c  06 30 94 e7                                      ldr r3, [r4, r6]
00415970  24 20 9d e5                                      ldr r2, [sp, #0x24]
00415974  00 30 93 e5                                      ldr r3, [r3]
00415978  03 00 52 e1                                      cmp r2, r3
0041597c  08 00 00 1a                                      bne #0x4159a4
00415980  28 d0 8d e2                                      add sp, sp, #0x28
00415984  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00415988  01 00 80 e2                                      add r0, r0, #1
0041598c  01 00 50 e1                                      cmp r0, r1
00415990  f5 ff ff 0a                                      beq #0x41596c
00415994  00 30 d0 e5                                      ldrb r3, [r0]
00415998  28 c0 8d e2                                      add ip, sp, #0x28
0041599c  a3 21 8c e0                                      add r2, ip, r3, lsr #3
004159a0  ec ff ff ea                                      b #0x415958
004159a4  59 e2 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004159a8  bc f1 57 00 ac 40 00 00 e4 6b 4f 00              .byte 0xbc, 0xf1, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x6b, 0x4f, 0x00

; FUNCTION 0x008a2fb0, declared_size=184, range_size=184, mode=thumb
; class-group: char const* std::priv
; alias: _ZNSt4priv9__find_ifIPKcSt14_Ctype_is_maskEET_S4_S4_T0_RKSt26random_access_iterator_tag
; demangled: char const* std::priv::__find_if<char const*, std::_Ctype_is_mask>(char const*, char const*, std::_Ctype_is_mask, std::random_access_iterator_tag const&)
; decoder-mode: thumb
008a2fb0  70 b5                                            push {r4, r5, r6, lr}
008a2fb2  0b 1a                                            subs r3, r1, r0
008a2fb4  9d 10                                            asrs r5, r3, #2
008a2fb6  00 2d                                            cmp r5, #0
008a2fb8  2f dd                                            ble #0x8a301a
008a2fba  06 78                                            ldrb r6, [r0]
008a2fbc  54 68                                            ldr r4, [r2, #4]
008a2fbe  13 68                                            ldr r3, [r2]
008a2fc0  b6 00                                            lsls r6, r6, #2
008a2fc2  36 59                                            ldr r6, [r6, r4]
008a2fc4  33 42                                            tst r3, r6
008a2fc6  25 d1                                            bne #0x8a3014
008a2fc8  01 30                                            adds r0, #1
008a2fca  06 78                                            ldrb r6, [r0]
008a2fcc  b6 00                                            lsls r6, r6, #2
008a2fce  36 59                                            ldr r6, [r6, r4]
008a2fd0  33 42                                            tst r3, r6
008a2fd2  1f d1                                            bne #0x8a3014
008a2fd4  01 30                                            adds r0, #1
008a2fd6  06 78                                            ldrb r6, [r0]
008a2fd8  b6 00                                            lsls r6, r6, #2
008a2fda  36 59                                            ldr r6, [r6, r4]
008a2fdc  33 42                                            tst r3, r6
008a2fde  13 d0                                            beq #0x8a3008
008a2fe0  18 e0                                            b #0x8a3014
008a2fe2  01 3d                                            subs r5, #1
008a2fe4  00 2d                                            cmp r5, #0
008a2fe6  16 d0                                            beq #0x8a3016
008a2fe8  86 78                                            ldrb r6, [r0, #2]
008a2fea  b6 00                                            lsls r6, r6, #2
008a2fec  36 59                                            ldr r6, [r6, r4]
008a2fee  33 42                                            tst r3, r6
008a2ff0  2d d1                                            bne #0x8a304e
008a2ff2  c6 78                                            ldrb r6, [r0, #3]
008a2ff4  b6 00                                            lsls r6, r6, #2
008a2ff6  36 59                                            ldr r6, [r6, r4]
008a2ff8  33 42                                            tst r3, r6
008a2ffa  2a d1                                            bne #0x8a3052
008a2ffc  04 30                                            adds r0, #4
008a2ffe  06 78                                            ldrb r6, [r0]
008a3000  b6 00                                            lsls r6, r6, #2
008a3002  36 59                                            ldr r6, [r6, r4]
008a3004  33 42                                            tst r3, r6
008a3006  05 d1                                            bne #0x8a3014
008a3008  46 78                                            ldrb r6, [r0, #1]
008a300a  b6 00                                            lsls r6, r6, #2
008a300c  36 59                                            ldr r6, [r6, r4]
008a300e  33 42                                            tst r3, r6
008a3010  e7 d0                                            beq #0x8a2fe2
008a3012  01 30                                            adds r0, #1
008a3014  70 bd                                            pop {r4, r5, r6, pc}
008a3016  02 30                                            adds r0, #2
008a3018  0b 1a                                            subs r3, r1, r0
008a301a  02 2b                                            cmp r3, #2
008a301c  05 d0                                            beq #0x8a302a
008a301e  03 2b                                            cmp r3, #3
008a3020  19 d0                                            beq #0x8a3056
008a3022  01 2b                                            cmp r3, #1
008a3024  10 d0                                            beq #0x8a3048
008a3026  08 1c                                            adds r0, r1, #0
008a3028  f4 e7                                            b #0x8a3014
008a302a  54 68                                            ldr r4, [r2, #4]
008a302c  13 68                                            ldr r3, [r2]
008a302e  02 78                                            ldrb r2, [r0]
008a3030  92 00                                            lsls r2, r2, #2
008a3032  12 59                                            ldr r2, [r2, r4]
008a3034  13 42                                            tst r3, r2
008a3036  ed d1                                            bne #0x8a3014
008a3038  01 30                                            adds r0, #1
008a303a  02 78                                            ldrb r2, [r0]
008a303c  92 00                                            lsls r2, r2, #2
008a303e  12 59                                            ldr r2, [r2, r4]
008a3040  13 42                                            tst r3, r2
008a3042  e7 d1                                            bne #0x8a3014
008a3044  08 1c                                            adds r0, r1, #0
008a3046  e5 e7                                            b #0x8a3014
008a3048  54 68                                            ldr r4, [r2, #4]
008a304a  13 68                                            ldr r3, [r2]
008a304c  f5 e7                                            b #0x8a303a
008a304e  02 30                                            adds r0, #2
008a3050  e0 e7                                            b #0x8a3014
008a3052  03 30                                            adds r0, #3
008a3054  de e7                                            b #0x8a3014
008a3056  54 68                                            ldr r4, [r2, #4]
008a3058  13 68                                            ldr r3, [r2]
008a305a  02 78                                            ldrb r2, [r0]
008a305c  92 00                                            lsls r2, r2, #2
008a305e  12 59                                            ldr r2, [r2, r4]
008a3060  13 42                                            tst r3, r2
008a3062  d7 d1                                            bne #0x8a3014
008a3064  01 30                                            adds r0, #1
008a3066  e2 e7                                            b #0x8a302e

; FUNCTION 0x008a3084, declared_size=184, range_size=184, mode=thumb
; class-group: char const* std::priv
; alias: _ZNSt4priv9__find_ifIPKcSt15_Ctype_not_maskEET_S4_S4_T0_RKSt26random_access_iterator_tag
; demangled: char const* std::priv::__find_if<char const*, std::_Ctype_not_mask>(char const*, char const*, std::_Ctype_not_mask, std::random_access_iterator_tag const&)
; decoder-mode: thumb
008a3084  70 b5                                            push {r4, r5, r6, lr}
008a3086  0b 1a                                            subs r3, r1, r0
008a3088  9d 10                                            asrs r5, r3, #2
008a308a  00 2d                                            cmp r5, #0
008a308c  2f dd                                            ble #0x8a30ee
008a308e  06 78                                            ldrb r6, [r0]
008a3090  54 68                                            ldr r4, [r2, #4]
008a3092  13 68                                            ldr r3, [r2]
008a3094  b6 00                                            lsls r6, r6, #2
008a3096  36 59                                            ldr r6, [r6, r4]
008a3098  33 42                                            tst r3, r6
008a309a  25 d0                                            beq #0x8a30e8
008a309c  01 30                                            adds r0, #1
008a309e  06 78                                            ldrb r6, [r0]
008a30a0  b6 00                                            lsls r6, r6, #2
008a30a2  36 59                                            ldr r6, [r6, r4]
008a30a4  33 42                                            tst r3, r6
008a30a6  1f d0                                            beq #0x8a30e8
008a30a8  01 30                                            adds r0, #1
008a30aa  06 78                                            ldrb r6, [r0]
008a30ac  b6 00                                            lsls r6, r6, #2
008a30ae  36 59                                            ldr r6, [r6, r4]
008a30b0  33 42                                            tst r3, r6
008a30b2  13 d1                                            bne #0x8a30dc
008a30b4  18 e0                                            b #0x8a30e8
008a30b6  01 3d                                            subs r5, #1
008a30b8  00 2d                                            cmp r5, #0
008a30ba  16 d0                                            beq #0x8a30ea
008a30bc  86 78                                            ldrb r6, [r0, #2]
008a30be  b6 00                                            lsls r6, r6, #2
008a30c0  36 59                                            ldr r6, [r6, r4]
008a30c2  33 42                                            tst r3, r6
008a30c4  2d d0                                            beq #0x8a3122
008a30c6  c6 78                                            ldrb r6, [r0, #3]
008a30c8  b6 00                                            lsls r6, r6, #2
008a30ca  36 59                                            ldr r6, [r6, r4]
008a30cc  33 42                                            tst r3, r6
008a30ce  2a d0                                            beq #0x8a3126
008a30d0  04 30                                            adds r0, #4
008a30d2  06 78                                            ldrb r6, [r0]
008a30d4  b6 00                                            lsls r6, r6, #2
008a30d6  36 59                                            ldr r6, [r6, r4]
008a30d8  33 42                                            tst r3, r6
008a30da  05 d0                                            beq #0x8a30e8
008a30dc  46 78                                            ldrb r6, [r0, #1]
008a30de  b6 00                                            lsls r6, r6, #2
008a30e0  36 59                                            ldr r6, [r6, r4]
008a30e2  33 42                                            tst r3, r6
008a30e4  e7 d1                                            bne #0x8a30b6
008a30e6  01 30                                            adds r0, #1
008a30e8  70 bd                                            pop {r4, r5, r6, pc}
008a30ea  02 30                                            adds r0, #2
008a30ec  0b 1a                                            subs r3, r1, r0
008a30ee  02 2b                                            cmp r3, #2
008a30f0  05 d0                                            beq #0x8a30fe
008a30f2  03 2b                                            cmp r3, #3
008a30f4  19 d0                                            beq #0x8a312a
008a30f6  01 2b                                            cmp r3, #1
008a30f8  10 d0                                            beq #0x8a311c
008a30fa  08 1c                                            adds r0, r1, #0
008a30fc  f4 e7                                            b #0x8a30e8
008a30fe  13 68                                            ldr r3, [r2]
008a3100  54 68                                            ldr r4, [r2, #4]
008a3102  02 78                                            ldrb r2, [r0]
008a3104  92 00                                            lsls r2, r2, #2
008a3106  12 59                                            ldr r2, [r2, r4]
008a3108  13 42                                            tst r3, r2
008a310a  ed d0                                            beq #0x8a30e8
008a310c  01 30                                            adds r0, #1
008a310e  02 78                                            ldrb r2, [r0]
008a3110  92 00                                            lsls r2, r2, #2
008a3112  12 59                                            ldr r2, [r2, r4]
008a3114  13 42                                            tst r3, r2
008a3116  e7 d0                                            beq #0x8a30e8
008a3118  08 1c                                            adds r0, r1, #0
008a311a  e5 e7                                            b #0x8a30e8
008a311c  13 68                                            ldr r3, [r2]
008a311e  54 68                                            ldr r4, [r2, #4]
008a3120  f5 e7                                            b #0x8a310e
008a3122  02 30                                            adds r0, #2
008a3124  e0 e7                                            b #0x8a30e8
008a3126  03 30                                            adds r0, #3
008a3128  de e7                                            b #0x8a30e8
008a312a  54 68                                            ldr r4, [r2, #4]
008a312c  13 68                                            ldr r3, [r2]
008a312e  02 78                                            ldrb r2, [r0]
008a3130  92 00                                            lsls r2, r2, #2
008a3132  12 59                                            ldr r2, [r2, r4]
008a3134  13 42                                            tst r3, r2
008a3136  d7 d0                                            beq #0x8a30e8
008a3138  01 30                                            adds r0, #1
008a313a  e2 e7                                            b #0x8a3102

; FUNCTION 0x008aa5f8, declared_size=688, range_size=688, mode=thumb
; class-group: char const* std::priv
; alias: _ZNSt4priv20__get_formatted_timeISt19istreambuf_iteratorIcSt11char_traitsIcEEcNS_10_Time_InfoEEEPKcT_S8_S7_S7_PT0_RKT1_RKSt8ios_baseRiP2tm
; demangled: char const* std::priv::__get_formatted_time<std::istreambuf_iterator<char, std::char_traits<char> >, char, std::priv::_Time_Info>(std::istreambuf_iterator<char, std::char_traits<char> >, std::istreambuf_iterator<char, std::char_traits<char> >, char const*, char const*, char*, std::priv::_Time_Info const&, std::ios_base const&, int&, tm*)
; decoder-mode: thumb
008aa5f8  f0 b5                                            push {r4, r5, r6, r7, lr}
008aa5fa  5f 46                                            mov r7, fp
008aa5fc  56 46                                            mov r6, sl
008aa5fe  4d 46                                            mov r5, sb
008aa600  44 46                                            mov r4, r8
008aa602  f0 b4                                            push {r4, r5, r6, r7}
008aa604  93 b0                                            sub sp, #0x4c
008aa606  0c af                                            add r7, sp, #0x30
008aa608  79 60                                            str r1, [r7, #4]
008aa60a  0a a9                                            add r1, sp, #0x28
008aa60c  4b 60                                            str r3, [r1, #4]
008aa60e  88 46                                            mov r8, r1
008aa610  20 99                                            ldr r1, [sp, #0x80]
008aa612  0a 92                                            str r2, [sp, #0x28]
008aa614  22 9a                                            ldr r2, [sp, #0x88]
008aa616  11 ab                                            add r3, sp, #0x44
008aa618  0c 90                                            str r0, [sp, #0x30]
008aa61a  20 31                                            adds r1, #0x20
008aa61c  18 1c                                            adds r0, r3, #0
008aa61e  9e 4d                                            ldr r5, [pc, #0x278]
008aa620  92 46                                            mov sl, r2
008aa622  99 46                                            mov sb, r3
008aa624  1c 9c                                            ldr r4, [sp, #0x70]
008aa626  f8 f7 9b ff                                      bl #0x8a3560
008aa62a  9c 4b                                            ldr r3, [pc, #0x270]
008aa62c  7d 44                                            add r5, pc
008aa62e  48 46                                            mov r0, sb
008aa630  e9 58                                            ldr r1, [r5, r3]
008aa632  f8 f7 bd ff                                      bl #0x8a35b0
008aa636  06 1c                                            adds r6, r0, #0
008aa638  48 46                                            mov r0, sb
008aa63a  f8 f7 5b ff                                      bl #0x8a34f4
008aa63e  1f 9a                                            ldr r2, [sp, #0x7c]
008aa640  1f 99                                            ldr r1, [sp, #0x7c]
008aa642  53 46                                            mov r3, sl
008aa644  c9 32                                            adds r2, #0xc9
008aa646  ff 32                                            adds r2, #0xff
008aa648  01 92                                            str r2, [sp, #4]
008aa64a  52 46                                            mov r2, sl
008aa64c  0c 33                                            adds r3, #0xc
008aa64e  1c 32                                            adds r2, #0x1c
008aa650  78 31                                            adds r1, #0x78
008aa652  09 93                                            str r3, [sp, #0x24]
008aa654  07 92                                            str r2, [sp, #0x1c]
008aa656  04 33                                            adds r3, #4
008aa658  1f 9a                                            ldr r2, [sp, #0x7c]
008aa65a  02 91                                            str r1, [sp, #8]
008aa65c  06 93                                            str r3, [sp, #0x18]
008aa65e  51 46                                            mov r1, sl
008aa660  81 23                                            movs r3, #0x81
008aa662  08 31                                            adds r1, #8
008aa664  db 00                                            lsls r3, r3, #3
008aa666  d3 18                                            adds r3, r2, r3
008aa668  08 91                                            str r1, [sp, #0x20]
008aa66a  04 39                                            subs r1, #4
008aa66c  05 91                                            str r1, [sp, #0x14]
008aa66e  04 93                                            str r3, [sp, #0x10]
008aa670  87 21                                            movs r1, #0x87
008aa672  8b 4b                                            ldr r3, [pc, #0x22c]
008aa674  c9 00                                            lsls r1, r1, #3
008aa676  51 18                                            adds r1, r2, r1
008aa678  52 46                                            mov r2, sl
008aa67a  14 32                                            adds r2, #0x14
008aa67c  9b 46                                            mov fp, r3
008aa67e  03 91                                            str r1, [sp, #0xc]
008aa680  00 92                                            str r2, [sp]
008aa682  0f ad                                            add r5, sp, #0x3c
008aa684  fb 44                                            add fp, pc
008aa686  38 1c                                            adds r0, r7, #0
008aa688  41 46                                            mov r1, r8
008aa68a  fe f7 ad ff                                      bl #0x8a95e8
008aa68e  00 28                                            cmp r0, #0
008aa690  07 d0                                            beq #0x8aa6a2
008aa692  13 b0                                            add sp, #0x4c
008aa694  20 1c                                            adds r0, r4, #0
008aa696  3c bc                                            pop {r2, r3, r4, r5}
008aa698  90 46                                            mov r8, r2
008aa69a  99 46                                            mov sb, r3
008aa69c  a2 46                                            mov sl, r4
008aa69e  ab 46                                            mov fp, r5
008aa6a0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008aa6a2  1d 9b                                            ldr r3, [sp, #0x74]
008aa6a4  9c 42                                            cmp r4, r3
008aa6a6  f4 d0                                            beq #0x8aa692
008aa6a8  23 78                                            ldrb r3, [r4]
008aa6aa  25 2b                                            cmp r3, #0x25
008aa6ac  00 d0                                            beq #0x8aa6b0
008aa6ae  c2 e0                                            b #0x8aa836
008aa6b0  01 34                                            adds r4, #1
008aa6b2  23 78                                            ldrb r3, [r4]
008aa6b4  23 2b                                            cmp r3, #0x23
008aa6b6  00 d1                                            bne #0x8aa6ba
008aa6b8  de e0                                            b #0x8aa878
008aa6ba  41 3b                                            subs r3, #0x41
008aa6bc  1b 06                                            lsls r3, r3, #0x18
008aa6be  1b 0e                                            lsrs r3, r3, #0x18
008aa6c0  38 2b                                            cmp r3, #0x38
008aa6c2  18 d8                                            bhi #0x8aa6f6
008aa6c4  9b 00                                            lsls r3, r3, #2
008aa6c6  59 46                                            mov r1, fp
008aa6c8  5b 58                                            ldr r3, [r3, r1]
008aa6ca  5b 44                                            add r3, fp
008aa6cc  9f 46                                            mov pc, r3
008aa6ce  90 23                                            movs r3, #0x90
008aa6d0  5b 00                                            lsls r3, r3, #1
008aa6d2  00 22                                            movs r2, #0
008aa6d4  51 00                                            lsls r1, r2, #1
008aa6d6  8a 18                                            adds r2, r1, r2
008aa6d8  d2 00                                            lsls r2, r2, #3
008aa6da  1f 99                                            ldr r1, [sp, #0x7c]
008aa6dc  c9 32                                            adds r2, #0xc9
008aa6de  ff 32                                            adds r2, #0xff
008aa6e0  8a 18                                            adds r2, r1, r2
008aa6e2  01 99                                            ldr r1, [sp, #4]
008aa6e4  38 1c                                            adds r0, r7, #0
008aa6e6  cb 18                                            adds r3, r1, r3
008aa6e8  41 46                                            mov r1, r8
008aa6ea  ff f7 4b fa                                      bl #0x8a9b84
008aa6ee  0c 28                                            cmp r0, #0xc
008aa6f0  cf d0                                            beq #0x8aa692
008aa6f2  52 46                                            mov r2, sl
008aa6f4  10 61                                            str r0, [r2, #0x10]
008aa6f6  01 34                                            adds r4, #1
008aa6f8  c5 e7                                            b #0x8aa686
008aa6fa  38 1c                                            adds r0, r7, #0
008aa6fc  41 46                                            mov r1, r8
008aa6fe  00 9a                                            ldr r2, [sp]
008aa700  00 23                                            movs r3, #0
008aa702  ff f7 ab fe                                      bl #0x8aa45c
008aa706  00 28                                            cmp r0, #0
008aa708  c3 d0                                            beq #0x8aa692
008aa70a  01 34                                            adds r4, #1
008aa70c  bb e7                                            b #0x8aa686
008aa70e  38 1c                                            adds r0, r7, #0
008aa710  41 46                                            mov r1, r8
008aa712  04 9a                                            ldr r2, [sp, #0x10]
008aa714  03 9b                                            ldr r3, [sp, #0xc]
008aa716  ff f7 35 fa                                      bl #0x8a9b84
008aa71a  02 28                                            cmp r0, #2
008aa71c  b9 d0                                            beq #0x8aa692
008aa71e  01 28                                            cmp r0, #1
008aa720  00 d1                                            bne #0x8aa724
008aa722  b0 e0                                            b #0x8aa886
008aa724  00 28                                            cmp r0, #0
008aa726  e6 d1                                            bne #0x8aa6f6
008aa728  51 46                                            mov r1, sl
008aa72a  8b 68                                            ldr r3, [r1, #8]
008aa72c  0c 2b                                            cmp r3, #0xc
008aa72e  e2 d1                                            bne #0x8aa6f6
008aa730  88 60                                            str r0, [r1, #8]
008aa732  01 34                                            adds r4, #1
008aa734  a7 e7                                            b #0x8aa686
008aa736  06 9a                                            ldr r2, [sp, #0x18]
008aa738  00 23                                            movs r3, #0
008aa73a  38 1c                                            adds r0, r7, #0
008aa73c  41 46                                            mov r1, r8
008aa73e  ff f7 8d fe                                      bl #0x8aa45c
008aa742  52 46                                            mov r2, sl
008aa744  13 69                                            ldr r3, [r2, #0x10]
008aa746  01 3b                                            subs r3, #1
008aa748  13 61                                            str r3, [r2, #0x10]
008aa74a  00 28                                            cmp r0, #0
008aa74c  03 d0                                            beq #0x8aa756
008aa74e  00 2b                                            cmp r3, #0
008aa750  01 db                                            blt #0x8aa756
008aa752  0b 2b                                            cmp r3, #0xb
008aa754  cf dd                                            ble #0x8aa6f6
008aa756  21 9b                                            ldr r3, [sp, #0x84]
008aa758  21 99                                            ldr r1, [sp, #0x84]
008aa75a  1a 68                                            ldr r2, [r3]
008aa75c  04 23                                            movs r3, #4
008aa75e  13 43                                            orrs r3, r2
008aa760  0b 60                                            str r3, [r1]
008aa762  96 e7                                            b #0x8aa692
008aa764  38 1c                                            adds r0, r7, #0
008aa766  41 46                                            mov r1, r8
008aa768  07 9a                                            ldr r2, [sp, #0x1c]
008aa76a  00 23                                            movs r3, #0
008aa76c  ff f7 76 fe                                      bl #0x8aa45c
008aa770  00 28                                            cmp r0, #0
008aa772  00 d1                                            bne #0x8aa776
008aa774  8d e7                                            b #0x8aa692
008aa776  01 34                                            adds r4, #1
008aa778  85 e7                                            b #0x8aa686
008aa77a  38 1c                                            adds r0, r7, #0
008aa77c  41 46                                            mov r1, r8
008aa77e  09 9a                                            ldr r2, [sp, #0x24]
008aa780  00 23                                            movs r3, #0
008aa782  ff f7 6b fe                                      bl #0x8aa45c
008aa786  00 28                                            cmp r0, #0
008aa788  e5 d0                                            beq #0x8aa756
008aa78a  51 46                                            mov r1, sl
008aa78c  cb 68                                            ldr r3, [r1, #0xc]
008aa78e  00 2b                                            cmp r3, #0
008aa790  e1 dd                                            ble #0x8aa756
008aa792  1f 2b                                            cmp r3, #0x1f
008aa794  df dc                                            bgt #0x8aa756
008aa796  01 34                                            adds r4, #1
008aa798  75 e7                                            b #0x8aa686
008aa79a  a8 23                                            movs r3, #0xa8
008aa79c  00 22                                            movs r2, #0
008aa79e  51 00                                            lsls r1, r2, #1
008aa7a0  8a 18                                            adds r2, r1, r2
008aa7a2  1f 99                                            ldr r1, [sp, #0x7c]
008aa7a4  d2 00                                            lsls r2, r2, #3
008aa7a6  78 32                                            adds r2, #0x78
008aa7a8  8a 18                                            adds r2, r1, r2
008aa7aa  02 99                                            ldr r1, [sp, #8]
008aa7ac  38 1c                                            adds r0, r7, #0
008aa7ae  cb 18                                            adds r3, r1, r3
008aa7b0  41 46                                            mov r1, r8
008aa7b2  ff f7 e7 f9                                      bl #0x8a9b84
008aa7b6  07 28                                            cmp r0, #7
008aa7b8  00 d1                                            bne #0x8aa7bc
008aa7ba  6a e7                                            b #0x8aa692
008aa7bc  52 46                                            mov r2, sl
008aa7be  90 61                                            str r0, [r2, #0x18]
008aa7c0  01 34                                            adds r4, #1
008aa7c2  60 e7                                            b #0x8aa686
008aa7c4  41 46                                            mov r1, r8
008aa7c6  00 9a                                            ldr r2, [sp]
008aa7c8  00 23                                            movs r3, #0
008aa7ca  38 1c                                            adds r0, r7, #0
008aa7cc  ff f7 46 fe                                      bl #0x8aa45c
008aa7d0  52 46                                            mov r2, sl
008aa7d2  53 69                                            ldr r3, [r2, #0x14]
008aa7d4  33 49                                            ldr r1, [pc, #0xcc]
008aa7d6  5b 18                                            adds r3, r3, r1
008aa7d8  53 61                                            str r3, [r2, #0x14]
008aa7da  00 28                                            cmp r0, #0
008aa7dc  00 d1                                            bne #0x8aa7e0
008aa7de  58 e7                                            b #0x8aa692
008aa7e0  01 34                                            adds r4, #1
008aa7e2  50 e7                                            b #0x8aa686
008aa7e4  38 1c                                            adds r0, r7, #0
008aa7e6  41 46                                            mov r1, r8
008aa7e8  52 46                                            mov r2, sl
008aa7ea  00 23                                            movs r3, #0
008aa7ec  ff f7 36 fe                                      bl #0x8aa45c
008aa7f0  00 28                                            cmp r0, #0
008aa7f2  00 d1                                            bne #0x8aa7f6
008aa7f4  4d e7                                            b #0x8aa692
008aa7f6  01 34                                            adds r4, #1
008aa7f8  45 e7                                            b #0x8aa686
008aa7fa  38 1c                                            adds r0, r7, #0
008aa7fc  41 46                                            mov r1, r8
008aa7fe  05 9a                                            ldr r2, [sp, #0x14]
008aa800  00 23                                            movs r3, #0
008aa802  ff f7 2b fe                                      bl #0x8aa45c
008aa806  00 28                                            cmp r0, #0
008aa808  00 d1                                            bne #0x8aa80c
008aa80a  42 e7                                            b #0x8aa692
008aa80c  01 34                                            adds r4, #1
008aa80e  3a e7                                            b #0x8aa686
008aa810  38 1c                                            adds r0, r7, #0
008aa812  41 46                                            mov r1, r8
008aa814  08 9a                                            ldr r2, [sp, #0x20]
008aa816  00 23                                            movs r3, #0
008aa818  ff f7 20 fe                                      bl #0x8aa45c
008aa81c  00 28                                            cmp r0, #0
008aa81e  00 d1                                            bne #0x8aa822
008aa820  37 e7                                            b #0x8aa692
008aa822  01 34                                            adds r4, #1
008aa824  2f e7                                            b #0x8aa686
008aa826  90 23                                            movs r3, #0x90
008aa828  9b 00                                            lsls r3, r3, #2
008aa82a  0c 22                                            movs r2, #0xc
008aa82c  52 e7                                            b #0x8aa6d4
008aa82e  a8 23                                            movs r3, #0xa8
008aa830  5b 00                                            lsls r3, r3, #1
008aa832  07 22                                            movs r2, #7
008aa834  b3 e7                                            b #0x8aa79e
008aa836  00 22                                            movs r2, #0
008aa838  28 1c                                            adds r0, r5, #0
008aa83a  39 1c                                            adds r1, r7, #0
008aa83c  fe f7 78 fd                                      bl #0x8a9330
008aa840  2a 79                                            ldrb r2, [r5, #4]
008aa842  ab 79                                            ldrb r3, [r5, #6]
008aa844  91 46                                            mov sb, r2
008aa846  00 2b                                            cmp r3, #0
008aa848  0c d1                                            bne #0x8aa864
008aa84a  28 68                                            ldr r0, [r5]
008aa84c  83 68                                            ldr r3, [r0, #8]
008aa84e  c2 68                                            ldr r2, [r0, #0xc]
008aa850  93 42                                            cmp r3, r2
008aa852  14 d2                                            bhs #0x8aa87e
008aa854  18 78                                            ldrb r0, [r3]
008aa856  03 06                                            lsls r3, r0, #0x18
008aa858  1b 0e                                            lsrs r3, r3, #0x18
008aa85a  01 30                                            adds r0, #1
008aa85c  99 46                                            mov sb, r3
008aa85e  43 42                                            rsbs r3, r0, #0
008aa860  43 41                                            adcs r3, r0
008aa862  6b 71                                            strb r3, [r5, #5]
008aa864  33 68                                            ldr r3, [r6]
008aa866  21 78                                            ldrb r1, [r4]
008aa868  30 1c                                            adds r0, r6, #0
008aa86a  9b 69                                            ldr r3, [r3, #0x18]
008aa86c  98 47                                            blx r3
008aa86e  48 45                                            cmp r0, sb
008aa870  00 d0                                            beq #0x8aa874
008aa872  0e e7                                            b #0x8aa692
008aa874  01 34                                            adds r4, #1
008aa876  06 e7                                            b #0x8aa686
008aa878  01 34                                            adds r4, #1
008aa87a  23 78                                            ldrb r3, [r4]
008aa87c  1d e7                                            b #0x8aa6ba
008aa87e  03 68                                            ldr r3, [r0]
008aa880  1b 6a                                            ldr r3, [r3, #0x20]
008aa882  98 47                                            blx r3
008aa884  e7 e7                                            b #0x8aa856
008aa886  52 46                                            mov r2, sl
008aa888  93 68                                            ldr r3, [r2, #8]
008aa88a  0c 2b                                            cmp r3, #0xc
008aa88c  00 d1                                            bne #0x8aa890
008aa88e  32 e7                                            b #0x8aa6f6
008aa890  0c 33                                            adds r3, #0xc
008aa892  93 60                                            str r3, [r2, #8]
008aa894  01 34                                            adds r4, #1
008aa896  f6 e6                                            b #0x8aa686
; mapping-symbol data/literal pool
008aa898  68 a4 0e 00 e4 1c 00 00 c0 b2 06 00 94 f8 ff ff  .byte 0x68, 0xa4, 0x0e, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0xc0, 0xb2, 0x06, 0x00, 0x94, 0xf8, 0xff, 0xff

; FUNCTION 0x008ab670, declared_size=704, range_size=704, mode=thumb
; class-group: char const* std::priv
; alias: _ZNSt4priv20__get_formatted_timeISt19istreambuf_iteratorIwSt11char_traitsIwEEwNS_11_WTime_InfoEEEPKcT_S8_S7_S7_PT0_RKT1_RKSt8ios_baseRiP2tm
; demangled: char const* std::priv::__get_formatted_time<std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, wchar_t, std::priv::_WTime_Info>(std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, std::istreambuf_iterator<wchar_t, std::char_traits<wchar_t> >, char const*, char const*, wchar_t*, std::priv::_WTime_Info const&, std::ios_base const&, int&, tm*)
; decoder-mode: thumb
008ab670  82 b0                                            sub sp, #8
008ab672  f0 b5                                            push {r4, r5, r6, r7, lr}
008ab674  5f 46                                            mov r7, fp
008ab676  56 46                                            mov r6, sl
008ab678  4d 46                                            mov r5, sb
008ab67a  44 46                                            mov r4, r8
008ab67c  f0 b4                                            push {r4, r5, r6, r7}
008ab67e  93 b0                                            sub sp, #0x4c
008ab680  0b af                                            add r7, sp, #0x2c
008ab682  79 60                                            str r1, [r7, #4]
008ab684  26 99                                            ldr r1, [sp, #0x98]
008ab686  ba 60                                            str r2, [r7, #8]
008ab688  11 aa                                            add r2, sp, #0x44
008ab68a  8a 46                                            mov sl, r1
008ab68c  24 99                                            ldr r1, [sp, #0x90]
008ab68e  0b 90                                            str r0, [sp, #0x2c]
008ab690  a1 4d                                            ldr r5, [pc, #0x284]
008ab692  10 1c                                            adds r0, r2, #0
008ab694  20 31                                            adds r1, #0x20
008ab696  90 46                                            mov r8, r2
008ab698  1d 93                                            str r3, [sp, #0x74]
008ab69a  20 9c                                            ldr r4, [sp, #0x80]
008ab69c  f7 f7 60 ff                                      bl #0x8a3560
008ab6a0  9e 4b                                            ldr r3, [pc, #0x278]
008ab6a2  7d 44                                            add r5, pc
008ab6a4  40 46                                            mov r0, r8
008ab6a6  e9 58                                            ldr r1, [r5, r3]
008ab6a8  f7 f7 82 ff                                      bl #0x8a35b0
008ab6ac  06 1c                                            adds r6, r0, #0
008ab6ae  40 46                                            mov r0, r8
008ab6b0  f7 f7 20 ff                                      bl #0x8a34f4
008ab6b4  23 99                                            ldr r1, [sp, #0x8c]
008ab6b6  8d 22                                            movs r2, #0x8d
008ab6b8  23 9b                                            ldr r3, [sp, #0x8c]
008ab6ba  d2 00                                            lsls r2, r2, #3
008ab6bc  8a 18                                            adds r2, r1, r2
008ab6be  51 46                                            mov r1, sl
008ab6c0  08 31                                            adds r1, #8
008ab6c2  02 92                                            str r2, [sp, #8]
008ab6c4  52 46                                            mov r2, sl
008ab6c6  78 33                                            adds r3, #0x78
008ab6c8  1c 32                                            adds r2, #0x1c
008ab6ca  09 91                                            str r1, [sp, #0x24]
008ab6cc  04 39                                            subs r1, #4
008ab6ce  03 93                                            str r3, [sp, #0xc]
008ab6d0  08 92                                            str r2, [sp, #0x20]
008ab6d2  53 46                                            mov r3, sl
008ab6d4  23 9a                                            ldr r2, [sp, #0x8c]
008ab6d6  06 91                                            str r1, [sp, #0x18]
008ab6d8  91 49                                            ldr r1, [pc, #0x244]
008ab6da  0c 33                                            adds r3, #0xc
008ab6dc  0a 93                                            str r3, [sp, #0x28]
008ab6de  04 33                                            adds r3, #4
008ab6e0  51 18                                            adds r1, r2, r1
008ab6e2  07 93                                            str r3, [sp, #0x1c]
008ab6e4  8f 4b                                            ldr r3, [pc, #0x23c]
008ab6e6  04 91                                            str r1, [sp, #0x10]
008ab6e8  8f 49                                            ldr r1, [pc, #0x23c]
008ab6ea  d3 18                                            adds r3, r2, r3
008ab6ec  52 46                                            mov r2, sl
008ab6ee  05 93                                            str r3, [sp, #0x14]
008ab6f0  14 32                                            adds r2, #0x14
008ab6f2  1d ab                                            add r3, sp, #0x74
008ab6f4  8b 46                                            mov fp, r1
008ab6f6  01 92                                            str r2, [sp, #4]
008ab6f8  99 46                                            mov sb, r3
008ab6fa  0e ad                                            add r5, sp, #0x38
008ab6fc  fb 44                                            add fp, pc
008ab6fe  38 1c                                            adds r0, r7, #0
008ab700  49 46                                            mov r1, sb
008ab702  ff f7 d1 f8                                      bl #0x8aa8a8
008ab706  00 28                                            cmp r0, #0
008ab708  0a d0                                            beq #0x8ab720
008ab70a  13 b0                                            add sp, #0x4c
008ab70c  20 1c                                            adds r0, r4, #0
008ab70e  3c bc                                            pop {r2, r3, r4, r5}
008ab710  90 46                                            mov r8, r2
008ab712  99 46                                            mov sb, r3
008ab714  a2 46                                            mov sl, r4
008ab716  ab 46                                            mov fp, r5
008ab718  f0 bc                                            pop {r4, r5, r6, r7}
008ab71a  08 bc                                            pop {r3}
008ab71c  02 b0                                            add sp, #8
008ab71e  18 47                                            bx r3
008ab720  21 9b                                            ldr r3, [sp, #0x84]
008ab722  9c 42                                            cmp r4, r3
008ab724  f1 d0                                            beq #0x8ab70a
008ab726  23 78                                            ldrb r3, [r4]
008ab728  25 2b                                            cmp r3, #0x25
008ab72a  00 d0                                            beq #0x8ab72e
008ab72c  c4 e0                                            b #0x8ab8b8
008ab72e  01 34                                            adds r4, #1
008ab730  23 78                                            ldrb r3, [r4]
008ab732  23 2b                                            cmp r3, #0x23
008ab734  00 d1                                            bne #0x8ab738
008ab736  df e0                                            b #0x8ab8f8
008ab738  41 3b                                            subs r3, #0x41
008ab73a  1b 06                                            lsls r3, r3, #0x18
008ab73c  1b 0e                                            lsrs r3, r3, #0x18
008ab73e  38 2b                                            cmp r3, #0x38
008ab740  19 d8                                            bhi #0x8ab776
008ab742  9b 00                                            lsls r3, r3, #2
008ab744  5a 46                                            mov r2, fp
008ab746  9b 58                                            ldr r3, [r3, r2]
008ab748  5b 44                                            add r3, fp
008ab74a  9f 46                                            mov pc, r3
008ab74c  d8 23                                            movs r3, #0xd8
008ab74e  9b 00                                            lsls r3, r3, #2
008ab750  00 22                                            movs r2, #0
008ab752  d1 00                                            lsls r1, r2, #3
008ab754  8a 18                                            adds r2, r1, r2
008ab756  8d 21                                            movs r1, #0x8d
008ab758  c9 00                                            lsls r1, r1, #3
008ab75a  d2 00                                            lsls r2, r2, #3
008ab75c  52 18                                            adds r2, r2, r1
008ab75e  23 99                                            ldr r1, [sp, #0x8c]
008ab760  38 1c                                            adds r0, r7, #0
008ab762  8a 18                                            adds r2, r1, r2
008ab764  02 99                                            ldr r1, [sp, #8]
008ab766  cb 18                                            adds r3, r1, r3
008ab768  49 46                                            mov r1, sb
008ab76a  ff f7 d3 f8                                      bl #0x8aa914
008ab76e  0c 28                                            cmp r0, #0xc
008ab770  cb d0                                            beq #0x8ab70a
008ab772  52 46                                            mov r2, sl
008ab774  10 61                                            str r0, [r2, #0x10]
008ab776  01 34                                            adds r4, #1
008ab778  c1 e7                                            b #0x8ab6fe
008ab77a  38 1c                                            adds r0, r7, #0
008ab77c  49 46                                            mov r1, sb
008ab77e  01 9a                                            ldr r2, [sp, #4]
008ab780  00 23                                            movs r3, #0
008ab782  ff f7 cd fb                                      bl #0x8aaf20
008ab786  00 28                                            cmp r0, #0
008ab788  bf d0                                            beq #0x8ab70a
008ab78a  01 34                                            adds r4, #1
008ab78c  b7 e7                                            b #0x8ab6fe
008ab78e  38 1c                                            adds r0, r7, #0
008ab790  49 46                                            mov r1, sb
008ab792  05 9a                                            ldr r2, [sp, #0x14]
008ab794  04 9b                                            ldr r3, [sp, #0x10]
008ab796  ff f7 bd f8                                      bl #0x8aa914
008ab79a  02 28                                            cmp r0, #2
008ab79c  b5 d0                                            beq #0x8ab70a
008ab79e  01 28                                            cmp r0, #1
008ab7a0  00 d1                                            bne #0x8ab7a4
008ab7a2  b0 e0                                            b #0x8ab906
008ab7a4  00 28                                            cmp r0, #0
008ab7a6  e6 d1                                            bne #0x8ab776
008ab7a8  51 46                                            mov r1, sl
008ab7aa  8b 68                                            ldr r3, [r1, #8]
008ab7ac  0c 2b                                            cmp r3, #0xc
008ab7ae  e2 d1                                            bne #0x8ab776
008ab7b0  88 60                                            str r0, [r1, #8]
008ab7b2  01 34                                            adds r4, #1
008ab7b4  a3 e7                                            b #0x8ab6fe
008ab7b6  07 9a                                            ldr r2, [sp, #0x1c]
008ab7b8  00 23                                            movs r3, #0
008ab7ba  38 1c                                            adds r0, r7, #0
008ab7bc  49 46                                            mov r1, sb
008ab7be  ff f7 af fb                                      bl #0x8aaf20
008ab7c2  52 46                                            mov r2, sl
008ab7c4  13 69                                            ldr r3, [r2, #0x10]
008ab7c6  01 3b                                            subs r3, #1
008ab7c8  13 61                                            str r3, [r2, #0x10]
008ab7ca  00 28                                            cmp r0, #0
008ab7cc  03 d0                                            beq #0x8ab7d6
008ab7ce  00 2b                                            cmp r3, #0
008ab7d0  01 db                                            blt #0x8ab7d6
008ab7d2  0b 2b                                            cmp r3, #0xb
008ab7d4  cf dd                                            ble #0x8ab776
008ab7d6  25 9b                                            ldr r3, [sp, #0x94]
008ab7d8  25 99                                            ldr r1, [sp, #0x94]
008ab7da  1a 68                                            ldr r2, [r3]
008ab7dc  04 23                                            movs r3, #4
008ab7de  13 43                                            orrs r3, r2
008ab7e0  0b 60                                            str r3, [r1]
008ab7e2  92 e7                                            b #0x8ab70a
008ab7e4  38 1c                                            adds r0, r7, #0
008ab7e6  49 46                                            mov r1, sb
008ab7e8  08 9a                                            ldr r2, [sp, #0x20]
008ab7ea  00 23                                            movs r3, #0
008ab7ec  ff f7 98 fb                                      bl #0x8aaf20
008ab7f0  00 28                                            cmp r0, #0
008ab7f2  00 d1                                            bne #0x8ab7f6
008ab7f4  89 e7                                            b #0x8ab70a
008ab7f6  01 34                                            adds r4, #1
008ab7f8  81 e7                                            b #0x8ab6fe
008ab7fa  38 1c                                            adds r0, r7, #0
008ab7fc  49 46                                            mov r1, sb
008ab7fe  0a 9a                                            ldr r2, [sp, #0x28]
008ab800  00 23                                            movs r3, #0
008ab802  ff f7 8d fb                                      bl #0x8aaf20
008ab806  00 28                                            cmp r0, #0
008ab808  e5 d0                                            beq #0x8ab7d6
008ab80a  51 46                                            mov r1, sl
008ab80c  cb 68                                            ldr r3, [r1, #0xc]
008ab80e  00 2b                                            cmp r3, #0
008ab810  e1 dd                                            ble #0x8ab7d6
008ab812  1f 2b                                            cmp r3, #0x1f
008ab814  df dc                                            bgt #0x8ab7d6
008ab816  01 34                                            adds r4, #1
008ab818  71 e7                                            b #0x8ab6fe
008ab81a  fc 23                                            movs r3, #0xfc
008ab81c  5b 00                                            lsls r3, r3, #1
008ab81e  00 22                                            movs r2, #0
008ab820  d1 00                                            lsls r1, r2, #3
008ab822  8a 18                                            adds r2, r1, r2
008ab824  23 99                                            ldr r1, [sp, #0x8c]
008ab826  d2 00                                            lsls r2, r2, #3
008ab828  78 32                                            adds r2, #0x78
008ab82a  8a 18                                            adds r2, r1, r2
008ab82c  03 99                                            ldr r1, [sp, #0xc]
008ab82e  38 1c                                            adds r0, r7, #0
008ab830  cb 18                                            adds r3, r1, r3
008ab832  49 46                                            mov r1, sb
008ab834  ff f7 6e f8                                      bl #0x8aa914
008ab838  07 28                                            cmp r0, #7
008ab83a  00 d1                                            bne #0x8ab83e
008ab83c  65 e7                                            b #0x8ab70a
008ab83e  52 46                                            mov r2, sl
008ab840  90 61                                            str r0, [r2, #0x18]
008ab842  01 34                                            adds r4, #1
008ab844  5b e7                                            b #0x8ab6fe
008ab846  49 46                                            mov r1, sb
008ab848  01 9a                                            ldr r2, [sp, #4]
008ab84a  00 23                                            movs r3, #0
008ab84c  38 1c                                            adds r0, r7, #0
008ab84e  ff f7 67 fb                                      bl #0x8aaf20
008ab852  52 46                                            mov r2, sl
008ab854  53 69                                            ldr r3, [r2, #0x14]
008ab856  35 49                                            ldr r1, [pc, #0xd4]
008ab858  5b 18                                            adds r3, r3, r1
008ab85a  53 61                                            str r3, [r2, #0x14]
008ab85c  00 28                                            cmp r0, #0
008ab85e  00 d1                                            bne #0x8ab862
008ab860  53 e7                                            b #0x8ab70a
008ab862  01 34                                            adds r4, #1
008ab864  4b e7                                            b #0x8ab6fe
008ab866  38 1c                                            adds r0, r7, #0
008ab868  49 46                                            mov r1, sb
008ab86a  52 46                                            mov r2, sl
008ab86c  00 23                                            movs r3, #0
008ab86e  ff f7 57 fb                                      bl #0x8aaf20
008ab872  00 28                                            cmp r0, #0
008ab874  00 d1                                            bne #0x8ab878
008ab876  48 e7                                            b #0x8ab70a
008ab878  01 34                                            adds r4, #1
008ab87a  40 e7                                            b #0x8ab6fe
008ab87c  38 1c                                            adds r0, r7, #0
008ab87e  49 46                                            mov r1, sb
008ab880  06 9a                                            ldr r2, [sp, #0x18]
008ab882  00 23                                            movs r3, #0
008ab884  ff f7 4c fb                                      bl #0x8aaf20
008ab888  00 28                                            cmp r0, #0
008ab88a  00 d1                                            bne #0x8ab88e
008ab88c  3d e7                                            b #0x8ab70a
008ab88e  01 34                                            adds r4, #1
008ab890  35 e7                                            b #0x8ab6fe
008ab892  38 1c                                            adds r0, r7, #0
008ab894  49 46                                            mov r1, sb
008ab896  09 9a                                            ldr r2, [sp, #0x24]
008ab898  00 23                                            movs r3, #0
008ab89a  ff f7 41 fb                                      bl #0x8aaf20
008ab89e  00 28                                            cmp r0, #0
008ab8a0  00 d1                                            bne #0x8ab8a4
008ab8a2  32 e7                                            b #0x8ab70a
008ab8a4  01 34                                            adds r4, #1
008ab8a6  2a e7                                            b #0x8ab6fe
008ab8a8  d8 23                                            movs r3, #0xd8
008ab8aa  db 00                                            lsls r3, r3, #3
008ab8ac  0c 22                                            movs r2, #0xc
008ab8ae  50 e7                                            b #0x8ab752
008ab8b0  fc 23                                            movs r3, #0xfc
008ab8b2  9b 00                                            lsls r3, r3, #2
008ab8b4  07 22                                            movs r2, #7
008ab8b6  b3 e7                                            b #0x8ab820
008ab8b8  00 22                                            movs r2, #0
008ab8ba  28 1c                                            adds r0, r5, #0
008ab8bc  39 1c                                            adds r1, r7, #0
008ab8be  fd f7 0b fd                                      bl #0x8a92d8
008ab8c2  6a 68                                            ldr r2, [r5, #4]
008ab8c4  6b 7a                                            ldrb r3, [r5, #9]
008ab8c6  90 46                                            mov r8, r2
008ab8c8  00 2b                                            cmp r3, #0
008ab8ca  0b d1                                            bne #0x8ab8e4
008ab8cc  28 68                                            ldr r0, [r5]
008ab8ce  83 68                                            ldr r3, [r0, #8]
008ab8d0  c2 68                                            ldr r2, [r0, #0xc]
008ab8d2  93 42                                            cmp r3, r2
008ab8d4  13 d2                                            bhs #0x8ab8fe
008ab8d6  18 68                                            ldr r0, [r3]
008ab8d8  02 1c                                            adds r2, r0, #0
008ab8da  01 32                                            adds r2, #1
008ab8dc  53 42                                            rsbs r3, r2, #0
008ab8de  53 41                                            adcs r3, r2
008ab8e0  80 46                                            mov r8, r0
008ab8e2  2b 72                                            strb r3, [r5, #8]
008ab8e4  33 68                                            ldr r3, [r6]
008ab8e6  21 78                                            ldrb r1, [r4]
008ab8e8  30 1c                                            adds r0, r6, #0
008ab8ea  9b 6a                                            ldr r3, [r3, #0x28]
008ab8ec  98 47                                            blx r3
008ab8ee  40 45                                            cmp r0, r8
008ab8f0  00 d0                                            beq #0x8ab8f4
008ab8f2  0a e7                                            b #0x8ab70a
008ab8f4  01 34                                            adds r4, #1
008ab8f6  02 e7                                            b #0x8ab6fe
008ab8f8  01 34                                            adds r4, #1
008ab8fa  23 78                                            ldrb r3, [r4]
008ab8fc  1c e7                                            b #0x8ab738
008ab8fe  03 68                                            ldr r3, [r0]
008ab900  1b 6a                                            ldr r3, [r3, #0x20]
008ab902  98 47                                            blx r3
008ab904  e8 e7                                            b #0x8ab8d8
008ab906  52 46                                            mov r2, sl
008ab908  93 68                                            ldr r3, [r2, #8]
008ab90a  0c 2b                                            cmp r3, #0xc
008ab90c  00 d1                                            bne #0x8ab910
008ab90e  32 e7                                            b #0x8ab776
008ab910  0c 33                                            adds r3, #0xc
008ab912  93 60                                            str r3, [r2, #8]
008ab914  01 34                                            adds r4, #1
008ab916  f2 e6                                            b #0x8ab6fe
; mapping-symbol data/literal pool
008ab918  f2 93 0e 00 44 1e 00 00 b8 0b 00 00 28 0b 00 00  .byte 0xf2, 0x93, 0x0e, 0x00, 0x44, 0x1e, 0x00, 0x00, 0xb8, 0x0b, 0x00, 0x00, 0x28, 0x0b, 0x00, 0x00
008ab928  2c a3 06 00 94 f8 ff ff                          .byte 0x2c, 0xa3, 0x06, 0x00, 0x94, 0xf8, 0xff, 0xff
