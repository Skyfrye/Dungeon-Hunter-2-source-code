; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0030f408, declared_size=232, range_size=232, mode=arm
; class-group: void std
; alias: _ZSt20_M_ignore_unbufferedIcSt11char_traitsIcENSt4priv14_Is_not_wspaceIS1_EEEvPSt13basic_istreamIT_T0_EPSt15basic_streambufIS6_S7_ET1_bb.clone.0
; demangled: void std::_M_ignore_unbuffered<char, std::char_traits<char>, std::priv::_Is_not_wspace<std::char_traits<char> > >(std::basic_istream<char, std::char_traits<char> >*, std::basic_streambuf<char, std::char_traits<char> >*, std::priv::_Is_not_wspace<std::char_traits<char> >, bool, bool) [clone .clone.0]
; decoder-mode: arm
0030f408  70 40 2d e9                                      push {r4, r5, r6, lr}
0030f40c  08 30 91 e5                                      ldr r3, [r1, #8]
0030f410  01 40 a0 e1                                      mov r4, r1
0030f414  00 50 a0 e1                                      mov r5, r0
0030f418  02 60 a0 e1                                      mov r6, r2
0030f41c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0030f420  01 20 83 e2                                      add r2, r3, #1
0030f424  03 00 51 e1                                      cmp r1, r3
0030f428  24 00 00 9a                                      bls #0x30f4c0
0030f42c  08 20 84 e5                                      str r2, [r4, #8]
0030f430  00 00 d3 e5                                      ldrb r0, [r3]
0030f434  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0030f438  70 00 ef e6                                      uxtb r0, r0
0030f43c  70 10 ef e6                                      uxtb r1, r0
0030f440  01 c1 93 e7                                      ldr ip, [r3, r1, lsl #2]
0030f444  02 30 a0 e1                                      mov r3, r2
0030f448  01 c0 1c e2                                      ands ip, ip, #1
0030f44c  f2 ff ff 1a                                      bne #0x30f41c
0030f450  04 30 94 e5                                      ldr r3, [r4, #4]
0030f454  02 00 53 e1                                      cmp r3, r2
0030f458  04 00 00 2a                                      bhs #0x30f470
0030f45c  01 30 52 e5                                      ldrb r3, [r2, #-1]
0030f460  01 20 42 e2                                      sub r2, r2, #1
0030f464  03 00 50 e1                                      cmp r0, r3
0030f468  08 20 84 05                                      streq r2, [r4, #8]
0030f46c  06 00 00 0a                                      beq #0x30f48c
0030f470  04 00 a0 e1                                      mov r0, r4
0030f474  00 30 94 e5                                      ldr r3, [r4]
0030f478  0f e0 a0 e1                                      mov lr, pc
0030f47c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0030f480  01 00 70 e3                                      cmn r0, #1
0030f484  04 c0 a0 03                                      moveq ip, #4
0030f488  00 c0 a0 13                                      movne ip, #0
0030f48c  00 30 95 e5                                      ldr r3, [r5]
0030f490  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0030f494  00 00 85 e0                                      add r0, r5, r0
0030f498  08 30 90 e5                                      ldr r3, [r0, #8]
0030f49c  48 20 90 e5                                      ldr r2, [r0, #0x48]
0030f4a0  03 c0 8c e1                                      orr ip, ip, r3
0030f4a4  14 30 90 e5                                      ldr r3, [r0, #0x14]
0030f4a8  00 00 52 e3                                      cmp r2, #0
0030f4ac  01 c0 8c 03                                      orreq ip, ip, #1
0030f4b0  03 00 1c e1                                      tst ip, r3
0030f4b4  08 c0 80 e5                                      str ip, [r0, #8]
0030f4b8  08 00 00 1a                                      bne #0x30f4e0
0030f4bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0030f4c0  00 30 94 e5                                      ldr r3, [r4]
0030f4c4  04 00 a0 e1                                      mov r0, r4
0030f4c8  0f e0 a0 e1                                      mov lr, pc
0030f4cc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0030f4d0  01 00 70 e3                                      cmn r0, #1
0030f4d4  03 00 00 1a                                      bne #0x30f4e8
0030f4d8  06 c0 a0 e3                                      mov ip, #6
0030f4dc  ea ff ff ea                                      b #0x30f48c
0030f4e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0030f4e4  8d e6 0f ea                                      b #0x708f20
0030f4e8  08 20 94 e5                                      ldr r2, [r4, #8]
0030f4ec  d0 ff ff ea                                      b #0x30f434

; FUNCTION 0x00313068, declared_size=232, range_size=232, mode=arm
; class-group: void std
; alias: _ZSt20_M_ignore_unbufferedIcSt11char_traitsIcENSt4priv14_Is_not_wspaceIS1_EEEvPSt13basic_istreamIT_T0_EPSt15basic_streambufIS6_S7_ET1_bb.clone.0
; demangled: void std::_M_ignore_unbuffered<char, std::char_traits<char>, std::priv::_Is_not_wspace<std::char_traits<char> > >(std::basic_istream<char, std::char_traits<char> >*, std::basic_streambuf<char, std::char_traits<char> >*, std::priv::_Is_not_wspace<std::char_traits<char> >, bool, bool) [clone .clone.0]
; decoder-mode: arm
00313068  70 40 2d e9                                      push {r4, r5, r6, lr}
0031306c  08 30 91 e5                                      ldr r3, [r1, #8]
00313070  01 40 a0 e1                                      mov r4, r1
00313074  00 50 a0 e1                                      mov r5, r0
00313078  02 60 a0 e1                                      mov r6, r2
0031307c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00313080  01 20 83 e2                                      add r2, r3, #1
00313084  03 00 51 e1                                      cmp r1, r3
00313088  24 00 00 9a                                      bls #0x313120
0031308c  08 20 84 e5                                      str r2, [r4, #8]
00313090  00 00 d3 e5                                      ldrb r0, [r3]
00313094  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00313098  70 00 ef e6                                      uxtb r0, r0
0031309c  70 10 ef e6                                      uxtb r1, r0
003130a0  01 c1 93 e7                                      ldr ip, [r3, r1, lsl #2]
003130a4  02 30 a0 e1                                      mov r3, r2
003130a8  01 c0 1c e2                                      ands ip, ip, #1
003130ac  f2 ff ff 1a                                      bne #0x31307c
003130b0  04 30 94 e5                                      ldr r3, [r4, #4]
003130b4  02 00 53 e1                                      cmp r3, r2
003130b8  04 00 00 2a                                      bhs #0x3130d0
003130bc  01 30 52 e5                                      ldrb r3, [r2, #-1]
003130c0  01 20 42 e2                                      sub r2, r2, #1
003130c4  03 00 50 e1                                      cmp r0, r3
003130c8  08 20 84 05                                      streq r2, [r4, #8]
003130cc  06 00 00 0a                                      beq #0x3130ec
003130d0  04 00 a0 e1                                      mov r0, r4
003130d4  00 30 94 e5                                      ldr r3, [r4]
003130d8  0f e0 a0 e1                                      mov lr, pc
003130dc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003130e0  01 00 70 e3                                      cmn r0, #1
003130e4  04 c0 a0 03                                      moveq ip, #4
003130e8  00 c0 a0 13                                      movne ip, #0
003130ec  00 30 95 e5                                      ldr r3, [r5]
003130f0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
003130f4  00 00 85 e0                                      add r0, r5, r0
003130f8  08 30 90 e5                                      ldr r3, [r0, #8]
003130fc  48 20 90 e5                                      ldr r2, [r0, #0x48]
00313100  03 c0 8c e1                                      orr ip, ip, r3
00313104  14 30 90 e5                                      ldr r3, [r0, #0x14]
00313108  00 00 52 e3                                      cmp r2, #0
0031310c  01 c0 8c 03                                      orreq ip, ip, #1
00313110  03 00 1c e1                                      tst ip, r3
00313114  08 c0 80 e5                                      str ip, [r0, #8]
00313118  08 00 00 1a                                      bne #0x313140
0031311c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00313120  00 30 94 e5                                      ldr r3, [r4]
00313124  04 00 a0 e1                                      mov r0, r4
00313128  0f e0 a0 e1                                      mov lr, pc
0031312c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00313130  01 00 70 e3                                      cmn r0, #1
00313134  03 00 00 1a                                      bne #0x313148
00313138  06 c0 a0 e3                                      mov ip, #6
0031313c  ea ff ff ea                                      b #0x3130ec
00313140  70 40 bd e8                                      pop {r4, r5, r6, lr}
00313144  75 d7 0f ea                                      b #0x708f20
00313148  08 20 94 e5                                      ldr r2, [r4, #8]
0031314c  d0 ff ff ea                                      b #0x313094

; FUNCTION 0x0031fdc0, declared_size=120, range_size=120, mode=arm
; class-group: void std
; alias: _ZSt19__destroy_range_auxINSt4priv15_Deque_iteratorI14AchievementMsgSt16_Nonconst_traitsIS2_EEES2_EvT_S6_PT0_RKSt12__false_type
; demangled: void std::__destroy_range_aux<std::priv::_Deque_iterator<AchievementMsg, std::_Nonconst_traits<AchievementMsg> >, AchievementMsg>(std::priv::_Deque_iterator<AchievementMsg, std::_Nonconst_traits<AchievementMsg> >, std::priv::_Deque_iterator<AchievementMsg, std::_Nonconst_traits<AchievementMsg> >, AchievementMsg*, std::__false_type const&)
; decoder-mode: arm
0031fdc0  70 40 2d e9                                      push {r4, r5, r6, lr}
0031fdc4  00 50 90 e5                                      ldr r5, [r0]
0031fdc8  00 40 a0 e1                                      mov r4, r0
0031fdcc  01 60 a0 e1                                      mov r6, r1
0031fdd0  00 30 96 e5                                      ldr r3, [r6]
0031fdd4  18 00 85 e2                                      add r0, r5, #0x18
0031fdd8  03 00 55 e1                                      cmp r5, r3
0031fddc  14 00 00 0a                                      beq #0x31fe34
0031fde0  f1 ce ff eb                                      bl #0x3139ac
0031fde4  05 00 a0 e1                                      mov r0, r5
0031fde8  ef ce ff eb                                      bl #0x3139ac
0031fdec  00 50 94 e5                                      ldr r5, [r4]
0031fdf0  08 30 94 e5                                      ldr r3, [r4, #8]
0031fdf4  3c 50 85 e2                                      add r5, r5, #0x3c
0031fdf8  03 00 55 e1                                      cmp r5, r3
0031fdfc  00 50 84 e5                                      str r5, [r4]
0031fe00  f2 ff ff 1a                                      bne #0x31fdd0
0031fe04  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031fe08  04 20 83 e2                                      add r2, r3, #4
0031fe0c  0c 20 84 e5                                      str r2, [r4, #0xc]
0031fe10  04 50 93 e5                                      ldr r5, [r3, #4]
0031fe14  78 30 85 e2                                      add r3, r5, #0x78
0031fe18  08 30 84 e5                                      str r3, [r4, #8]
0031fe1c  04 50 84 e5                                      str r5, [r4, #4]
0031fe20  00 50 84 e5                                      str r5, [r4]
0031fe24  00 30 96 e5                                      ldr r3, [r6]
0031fe28  18 00 85 e2                                      add r0, r5, #0x18
0031fe2c  03 00 55 e1                                      cmp r5, r3
0031fe30  ea ff ff 1a                                      bne #0x31fde0
0031fe34  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031fe38, declared_size=120, range_size=120, mode=arm
; class-group: void std
; alias: _ZSt19__destroy_range_auxINSt4priv15_Deque_iteratorI19CharMenuTutorialMsgSt16_Nonconst_traitsIS2_EEES2_EvT_S6_PT0_RKSt12__false_type
; demangled: void std::__destroy_range_aux<std::priv::_Deque_iterator<CharMenuTutorialMsg, std::_Nonconst_traits<CharMenuTutorialMsg> >, CharMenuTutorialMsg>(std::priv::_Deque_iterator<CharMenuTutorialMsg, std::_Nonconst_traits<CharMenuTutorialMsg> >, std::priv::_Deque_iterator<CharMenuTutorialMsg, std::_Nonconst_traits<CharMenuTutorialMsg> >, CharMenuTutorialMsg*, std::__false_type const&)
; decoder-mode: arm
0031fe38  70 40 2d e9                                      push {r4, r5, r6, lr}
0031fe3c  00 50 90 e5                                      ldr r5, [r0]
0031fe40  00 40 a0 e1                                      mov r4, r0
0031fe44  01 60 a0 e1                                      mov r6, r1
0031fe48  00 30 96 e5                                      ldr r3, [r6]
0031fe4c  1c 00 85 e2                                      add r0, r5, #0x1c
0031fe50  03 00 55 e1                                      cmp r5, r3
0031fe54  14 00 00 0a                                      beq #0x31feac
0031fe58  d3 ce ff eb                                      bl #0x3139ac
0031fe5c  04 00 85 e2                                      add r0, r5, #4
0031fe60  d1 ce ff eb                                      bl #0x3139ac
0031fe64  00 50 94 e5                                      ldr r5, [r4]
0031fe68  08 30 94 e5                                      ldr r3, [r4, #8]
0031fe6c  34 50 85 e2                                      add r5, r5, #0x34
0031fe70  03 00 55 e1                                      cmp r5, r3
0031fe74  00 50 84 e5                                      str r5, [r4]
0031fe78  f2 ff ff 1a                                      bne #0x31fe48
0031fe7c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0031fe80  04 20 83 e2                                      add r2, r3, #4
0031fe84  0c 20 84 e5                                      str r2, [r4, #0xc]
0031fe88  04 50 93 e5                                      ldr r5, [r3, #4]
0031fe8c  68 30 85 e2                                      add r3, r5, #0x68
0031fe90  08 30 84 e5                                      str r3, [r4, #8]
0031fe94  04 50 84 e5                                      str r5, [r4, #4]
0031fe98  00 50 84 e5                                      str r5, [r4]
0031fe9c  00 30 96 e5                                      ldr r3, [r6]
0031fea0  1c 00 85 e2                                      add r0, r5, #0x1c
0031fea4  03 00 55 e1                                      cmp r5, r3
0031fea8  ea ff ff 1a                                      bne #0x31fe58
0031feac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003411c4, declared_size=156, range_size=156, mode=arm
; class-group: void std
; alias: _ZSt14random_shuffleIP7Point3DIfEEvT_S3_
; demangled: void std::random_shuffle<Point3D<float>*>(Point3D<float>*, Point3D<float>*)
; decoder-mode: arm
003411c4  01 00 50 e1                                      cmp r0, r1
003411c8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003411cc  00 40 a0 e1                                      mov r4, r0
003411d0  01 70 a0 e1                                      mov r7, r1
003411d4  20 00 00 0a                                      beq #0x34125c
003411d8  0c 50 80 e2                                      add r5, r0, #0xc
003411dc  05 00 51 e1                                      cmp r1, r5
003411e0  1d 00 00 0a                                      beq #0x34125c
003411e4  0c 60 a0 e3                                      mov r6, #0xc
003411e8  06 80 a0 e1                                      mov r8, r6
003411ec  ed 36 ff eb                                      bl #0x30eda8
003411f0  46 31 a0 e1                                      asr r3, r6, #2
003411f4  03 21 83 e0                                      add r2, r3, r3, lsl #2
003411f8  02 22 82 e0                                      add r2, r2, r2, lsl #4
003411fc  02 24 82 e0                                      add r2, r2, r2, lsl #8
00341200  02 28 82 e0                                      add r2, r2, r2, lsl #16
00341204  82 30 83 e0                                      add r3, r3, r2, lsl #1
00341208  01 10 83 e2                                      add r1, r3, #1
0034120c  bc 35 ff eb                                      bl #0x30e904
00341210  98 01 01 e0                                      mul r1, r8, r1
00341214  04 20 a0 e1                                      mov r2, r4
00341218  06 a0 b2 e7                                      ldr sl, [r2, r6]!
0034121c  01 30 94 e7                                      ldr r3, [r4, r1]
00341220  08 c0 95 e5                                      ldr ip, [r5, #8]
00341224  04 00 92 e5                                      ldr r0, [r2, #4]
00341228  06 30 84 e7                                      str r3, [r4, r6]
0034122c  01 30 84 e0                                      add r3, r4, r1
00341230  04 90 93 e5                                      ldr sb, [r3, #4]
00341234  0c 60 86 e2                                      add r6, r6, #0xc
00341238  04 90 82 e5                                      str sb, [r2, #4]
0034123c  08 20 93 e5                                      ldr r2, [r3, #8]
00341240  08 20 85 e5                                      str r2, [r5, #8]
00341244  0c 50 85 e2                                      add r5, r5, #0xc
00341248  05 00 57 e1                                      cmp r7, r5
0034124c  01 a0 84 e7                                      str sl, [r4, r1]
00341250  08 c0 83 e5                                      str ip, [r3, #8]
00341254  04 00 83 e5                                      str r0, [r3, #4]
00341258  e3 ff ff 1a                                      bne #0x3411ec
0034125c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00341cf8, declared_size=148, range_size=148, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPP6ModuleiS1_20SortModuleByDistanceEvT_T0_S5_T1_T2_
; demangled: void std::__push_heap<Module**, int, Module*, SortModuleByDistance>(Module**, int, int, Module*, SortModuleByDistance)
; decoder-mode: arm
00341cf8  02 00 51 e1                                      cmp r1, r2
00341cfc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00341d00  01 50 a0 e1                                      mov r5, r1
00341d04  02 60 a0 e1                                      mov r6, r2
00341d08  00 40 a0 e1                                      mov r4, r0
00341d0c  03 70 a0 e1                                      mov r7, r3
00341d10  02 00 00 ca                                      bgt #0x341d20
00341d14  05 31 84 e0                                      add r3, r4, r5, lsl #2
00341d18  00 70 83 e5                                      str r7, [r3]
00341d1c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00341d20  01 80 41 e2                                      sub r8, r1, #1
00341d24  a8 8f 88 e0                                      add r8, r8, r8, lsr #31
00341d28  20 a0 8d e2                                      add sl, sp, #0x20
00341d2c  c8 80 a0 e1                                      asr r8, r8, #1
00341d30  08 11 94 e7                                      ldr r1, [r4, r8, lsl #2]
00341d34  0a 00 a0 e1                                      mov r0, sl
00341d38  07 20 a0 e1                                      mov r2, r7
00341d3c  a2 ff ff eb                                      bl #0x341bcc
00341d40  00 00 50 e3                                      cmp r0, #0
00341d44  08 31 84 e0                                      add r3, r4, r8, lsl #2
00341d48  f1 ff ff 0a                                      beq #0x341d14
00341d4c  08 21 94 e7                                      ldr r2, [r4, r8, lsl #2]
00341d50  08 00 56 e1                                      cmp r6, r8
00341d54  05 21 84 e7                                      str r2, [r4, r5, lsl #2]
00341d58  ee ff ff aa                                      bge #0x341d18
00341d5c  01 30 48 e2                                      sub r3, r8, #1
00341d60  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
00341d64  08 50 a0 e1                                      mov r5, r8
00341d68  c3 80 a0 e1                                      asr r8, r3, #1
00341d6c  08 11 94 e7                                      ldr r1, [r4, r8, lsl #2]
00341d70  0a 00 a0 e1                                      mov r0, sl
00341d74  07 20 a0 e1                                      mov r2, r7
00341d78  93 ff ff eb                                      bl #0x341bcc
00341d7c  00 00 50 e3                                      cmp r0, #0
00341d80  08 31 84 e0                                      add r3, r4, r8, lsl #2
00341d84  f0 ff ff 1a                                      bne #0x341d4c
00341d88  e1 ff ff ea                                      b #0x341d14

; FUNCTION 0x00341d8c, declared_size=172, range_size=172, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPP6ModuleiS1_20SortModuleByDistanceEvT_T0_S5_T1_T2_
; demangled: void std::__adjust_heap<Module**, int, Module*, SortModuleByDistance>(Module**, int, int, Module*, SortModuleByDistance)
; decoder-mode: arm
00341d8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00341d90  01 40 81 e2                                      add r4, r1, #1
00341d94  84 40 a0 e1                                      lsl r4, r4, #1
00341d98  02 00 54 e1                                      cmp r4, r2
00341d9c  01 90 a0 e1                                      mov sb, r1
00341da0  0c d0 4d e2                                      sub sp, sp, #0xc
00341da4  02 60 a0 e1                                      mov r6, r2
00341da8  00 50 a0 e1                                      mov r5, r0
00341dac  03 b0 a0 e1                                      mov fp, r3
00341db0  01 10 a0 a1                                      movge r1, r1
00341db4  12 00 00 aa                                      bge #0x341e04
00341db8  09 80 a0 e1                                      mov r8, sb
00341dbc  30 a0 8d e2                                      add sl, sp, #0x30
00341dc0  01 70 44 e2                                      sub r7, r4, #1
00341dc4  04 11 95 e7                                      ldr r1, [r5, r4, lsl #2]
00341dc8  07 21 95 e7                                      ldr r2, [r5, r7, lsl #2]
00341dcc  0a 00 a0 e1                                      mov r0, sl
00341dd0  7d ff ff eb                                      bl #0x341bcc
00341dd4  00 00 50 e3                                      cmp r0, #0
00341dd8  04 31 85 e0                                      add r3, r5, r4, lsl #2
00341ddc  04 70 a0 01                                      moveq r7, r4
00341de0  07 31 85 10                                      addne r3, r5, r7, lsl #2
00341de4  00 30 93 e5                                      ldr r3, [r3]
00341de8  01 40 87 e2                                      add r4, r7, #1
00341dec  84 40 a0 e1                                      lsl r4, r4, #1
00341df0  04 00 56 e1                                      cmp r6, r4
00341df4  08 31 85 e7                                      str r3, [r5, r8, lsl #2]
00341df8  07 80 a0 e1                                      mov r8, r7
00341dfc  ef ff ff ca                                      bgt #0x341dc0
00341e00  07 10 a0 e1                                      mov r1, r7
00341e04  06 00 54 e1                                      cmp r4, r6
00341e08  01 40 44 02                                      subeq r4, r4, #1
00341e0c  04 31 95 07                                      ldreq r3, [r5, r4, lsl #2]
00341e10  05 00 a0 e1                                      mov r0, r5
00341e14  09 20 a0 e1                                      mov r2, sb
00341e18  01 31 85 07                                      streq r3, [r5, r1, lsl #2]
00341e1c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00341e20  04 10 a0 01                                      moveq r1, r4
00341e24  0b 30 a0 e1                                      mov r3, fp
00341e28  00 c0 8d e5                                      str ip, [sp]
00341e2c  b1 ff ff eb                                      bl #0x341cf8
00341e30  0c d0 8d e2                                      add sp, sp, #0xc
00341e34  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00341e38, declared_size=100, range_size=100, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPP6Module20SortModuleByDistanceS1_iEvT_S4_T0_PT1_PT2_
; demangled: void std::__make_heap<Module**, SortModuleByDistance, Module*, int>(Module**, Module**, SortModuleByDistance, Module**, int*)
; decoder-mode: arm
00341e38  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00341e3c  01 10 60 e0                                      rsb r1, r0, r1
00341e40  07 00 51 e3                                      cmp r1, #7
00341e44  0c d0 4d e2                                      sub sp, sp, #0xc
00341e48  00 60 a0 e1                                      mov r6, r0
00341e4c  02 a0 a0 e1                                      mov sl, r2
00341e50  0f 00 00 da                                      ble #0x341e94
00341e54  41 81 a0 e1                                      asr r8, r1, #2
00341e58  02 40 48 e2                                      sub r4, r8, #2
00341e5c  c4 40 a0 e1                                      asr r4, r4, #1
00341e60  00 50 a0 e3                                      mov r5, #0
00341e64  04 71 80 e0                                      add r7, r0, r4, lsl #2
00341e68  00 00 00 ea                                      b #0x341e70
00341e6c  01 40 44 e2                                      sub r4, r4, #1
00341e70  05 30 97 e7                                      ldr r3, [r7, r5]
00341e74  04 10 a0 e1                                      mov r1, r4
00341e78  06 00 a0 e1                                      mov r0, r6
00341e7c  08 20 a0 e1                                      mov r2, r8
00341e80  00 a0 8d e5                                      str sl, [sp]
00341e84  c0 ff ff eb                                      bl #0x341d8c
00341e88  00 00 54 e3                                      cmp r4, #0
00341e8c  04 50 45 e2                                      sub r5, r5, #4
00341e90  f5 ff ff 1a                                      bne #0x341e6c
00341e94  0c d0 8d e2                                      add sp, sp, #0xc
00341e98  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00341e9c, declared_size=84, range_size=84, mode=arm
; class-group: void std
; alias: _ZSt9sort_heapIPP6Module20SortModuleByDistanceEvT_S4_T0_
; demangled: void std::sort_heap<Module**, SortModuleByDistance>(Module**, Module**, SortModuleByDistance)
; decoder-mode: arm
00341e9c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00341ea0  01 50 60 e0                                      rsb r5, r0, r1
00341ea4  07 00 55 e3                                      cmp r5, #7
00341ea8  0c d0 4d e2                                      sub sp, sp, #0xc
00341eac  00 60 a0 e1                                      mov r6, r0
00341eb0  02 70 a0 e1                                      mov r7, r2
00341eb4  0b 00 00 da                                      ble #0x341ee8
00341eb8  01 40 a0 e1                                      mov r4, r1
00341ebc  00 20 96 e5                                      ldr r2, [r6]
00341ec0  04 50 45 e2                                      sub r5, r5, #4
00341ec4  04 30 14 e5                                      ldr r3, [r4, #-4]
00341ec8  06 00 a0 e1                                      mov r0, r6
00341ecc  04 20 24 e5                                      str r2, [r4, #-4]!
00341ed0  00 10 a0 e3                                      mov r1, #0
00341ed4  45 21 a0 e1                                      asr r2, r5, #2
00341ed8  00 70 8d e5                                      str r7, [sp]
00341edc  aa ff ff eb                                      bl #0x341d8c
00341ee0  07 00 55 e3                                      cmp r5, #7
00341ee4  f4 ff ff ca                                      bgt #0x341ebc
00341ee8  0c d0 8d e2                                      add sp, sp, #0xc
00341eec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00342314, declared_size=124, range_size=124, mode=arm
; class-group: void std
; alias: _ZSt4sortIPP6Module20SortModuleByDistanceEvT_S4_T0_
; demangled: void std::sort<Module**, SortModuleByDistance>(Module**, Module**, SortModuleByDistance)
; decoder-mode: arm
00342314  70 40 2d e9                                      push {r4, r5, r6, lr}
00342318  01 00 50 e1                                      cmp r0, r1
0034231c  08 d0 4d e2                                      sub sp, sp, #8
00342320  00 50 a0 e1                                      mov r5, r0
00342324  01 40 a0 e1                                      mov r4, r1
00342328  02 60 a0 e1                                      mov r6, r2
0034232c  15 00 00 0a                                      beq #0x342388
00342330  01 20 60 e0                                      rsb r2, r0, r1
00342334  42 21 a0 e1                                      asr r2, r2, #2
00342338  01 00 52 e3                                      cmp r2, #1
0034233c  00 30 a0 03                                      moveq r3, #0
00342340  05 00 00 0a                                      beq #0x34235c
00342344  00 30 a0 e3                                      mov r3, #0
00342348  c2 20 a0 e1                                      asr r2, r2, #1
0034234c  01 00 52 e3                                      cmp r2, #1
00342350  01 30 83 e2                                      add r3, r3, #1
00342354  fb ff ff 1a                                      bne #0x342348
00342358  83 30 a0 e1                                      lsl r3, r3, #1
0034235c  05 00 a0 e1                                      mov r0, r5
00342360  04 10 a0 e1                                      mov r1, r4
00342364  00 20 a0 e3                                      mov r2, #0
00342368  00 60 8d e5                                      str r6, [sp]
0034236c  58 ff ff eb                                      bl #0x3420d4
00342370  05 00 a0 e1                                      mov r0, r5
00342374  04 10 a0 e1                                      mov r1, r4
00342378  06 20 a0 e1                                      mov r2, r6
0034237c  08 d0 8d e2                                      add sp, sp, #8
00342380  70 40 bd e8                                      pop {r4, r5, r6, lr}
00342384  a8 ff ff ea                                      b #0x34222c
00342388  08 d0 8d e2                                      add sp, sp, #8
0034238c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00342390, declared_size=232, range_size=232, mode=arm
; class-group: void std
; alias: _ZSt20_M_ignore_unbufferedIcSt11char_traitsIcENSt4priv14_Is_not_wspaceIS1_EEEvPSt13basic_istreamIT_T0_EPSt15basic_streambufIS6_S7_ET1_bb.clone.10
; demangled: void std::_M_ignore_unbuffered<char, std::char_traits<char>, std::priv::_Is_not_wspace<std::char_traits<char> > >(std::basic_istream<char, std::char_traits<char> >*, std::basic_streambuf<char, std::char_traits<char> >*, std::priv::_Is_not_wspace<std::char_traits<char> >, bool, bool) [clone .clone.10]
; decoder-mode: arm
00342390  70 40 2d e9                                      push {r4, r5, r6, lr}
00342394  08 30 91 e5                                      ldr r3, [r1, #8]
00342398  01 40 a0 e1                                      mov r4, r1
0034239c  00 50 a0 e1                                      mov r5, r0
003423a0  02 60 a0 e1                                      mov r6, r2
003423a4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003423a8  01 20 83 e2                                      add r2, r3, #1
003423ac  03 00 51 e1                                      cmp r1, r3
003423b0  24 00 00 9a                                      bls #0x342448
003423b4  08 20 84 e5                                      str r2, [r4, #8]
003423b8  00 00 d3 e5                                      ldrb r0, [r3]
003423bc  0c 30 96 e5                                      ldr r3, [r6, #0xc]
003423c0  70 00 ef e6                                      uxtb r0, r0
003423c4  70 10 ef e6                                      uxtb r1, r0
003423c8  01 c1 93 e7                                      ldr ip, [r3, r1, lsl #2]
003423cc  02 30 a0 e1                                      mov r3, r2
003423d0  01 c0 1c e2                                      ands ip, ip, #1
003423d4  f2 ff ff 1a                                      bne #0x3423a4
003423d8  04 30 94 e5                                      ldr r3, [r4, #4]
003423dc  02 00 53 e1                                      cmp r3, r2
003423e0  04 00 00 2a                                      bhs #0x3423f8
003423e4  01 30 52 e5                                      ldrb r3, [r2, #-1]
003423e8  01 20 42 e2                                      sub r2, r2, #1
003423ec  03 00 50 e1                                      cmp r0, r3
003423f0  08 20 84 05                                      streq r2, [r4, #8]
003423f4  06 00 00 0a                                      beq #0x342414
003423f8  04 00 a0 e1                                      mov r0, r4
003423fc  00 30 94 e5                                      ldr r3, [r4]
00342400  0f e0 a0 e1                                      mov lr, pc
00342404  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00342408  01 00 70 e3                                      cmn r0, #1
0034240c  04 c0 a0 03                                      moveq ip, #4
00342410  00 c0 a0 13                                      movne ip, #0
00342414  00 30 95 e5                                      ldr r3, [r5]
00342418  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0034241c  00 00 85 e0                                      add r0, r5, r0
00342420  08 30 90 e5                                      ldr r3, [r0, #8]
00342424  48 20 90 e5                                      ldr r2, [r0, #0x48]
00342428  03 c0 8c e1                                      orr ip, ip, r3
0034242c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00342430  00 00 52 e3                                      cmp r2, #0
00342434  01 c0 8c 03                                      orreq ip, ip, #1
00342438  03 00 1c e1                                      tst ip, r3
0034243c  08 c0 80 e5                                      str ip, [r0, #8]
00342440  08 00 00 1a                                      bne #0x342468
00342444  70 80 bd e8                                      pop {r4, r5, r6, pc}
00342448  00 30 94 e5                                      ldr r3, [r4]
0034244c  04 00 a0 e1                                      mov r0, r4
00342450  0f e0 a0 e1                                      mov lr, pc
00342454  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00342458  01 00 70 e3                                      cmn r0, #1
0034245c  03 00 00 1a                                      bne #0x342470
00342460  06 c0 a0 e3                                      mov ip, #6
00342464  ea ff ff ea                                      b #0x342414
00342468  70 40 bd e8                                      pop {r4, r5, r6, lr}
0034246c  ab 1a 0f ea                                      b #0x708f20
00342470  08 20 94 e5                                      ldr r2, [r4, #8]
00342474  d0 ff ff ea                                      b #0x3423bc

; FUNCTION 0x0037915c, declared_size=120, range_size=120, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPSt4pairIiiEiS1_N17PlayerStatManager9_StatCompEEvT_T0_S6_T1_T2_
; demangled: void std::__push_heap<std::pair<int, int>*, int, std::pair<int, int>, PlayerStatManager::_StatComp>(std::pair<int, int>*, int, int, std::pair<int, int>, PlayerStatManager::_StatComp)
; decoder-mode: arm
0037915c  02 00 51 e1                                      cmp r1, r2
00379160  f0 00 2d e9                                      push {r4, r5, r6, r7}
00379164  81 51 80 d0                                      addle r5, r0, r1, lsl #3
00379168  09 00 00 da                                      ble #0x379194
0037916c  01 c0 41 e2                                      sub ip, r1, #1
00379170  ac cf 8c e0                                      add ip, ip, ip, lsr #31
00379174  cc c0 a0 e1                                      asr ip, ip, #1
00379178  8c 41 90 e7                                      ldr r4, [r0, ip, lsl #3]
0037917c  00 60 93 e5                                      ldr r6, [r3]
00379180  81 71 80 e0                                      add r7, r0, r1, lsl #3
00379184  8c 51 80 e0                                      add r5, r0, ip, lsl #3
00379188  06 00 54 e1                                      cmp r4, r6
0037918c  06 00 00 ca                                      bgt #0x3791ac
00379190  07 50 a0 e1                                      mov r5, r7
00379194  00 20 93 e5                                      ldr r2, [r3]
00379198  00 20 85 e5                                      str r2, [r5]
0037919c  04 30 93 e5                                      ldr r3, [r3, #4]
003791a0  04 30 85 e5                                      str r3, [r5, #4]
003791a4  f0 00 bd e8                                      pop {r4, r5, r6, r7}
003791a8  1e ff 2f e1                                      bx lr
003791ac  81 41 80 e7                                      str r4, [r0, r1, lsl #3]
003791b0  04 40 95 e5                                      ldr r4, [r5, #4]
003791b4  0c 00 52 e1                                      cmp r2, ip
003791b8  01 10 4c e2                                      sub r1, ip, #1
003791bc  04 40 87 e5                                      str r4, [r7, #4]
003791c0  f3 ff ff aa                                      bge #0x379194
003791c4  a1 4f 81 e0                                      add r4, r1, r1, lsr #31
003791c8  0c 10 a0 e1                                      mov r1, ip
003791cc  c4 c0 a0 e1                                      asr ip, r4, #1
003791d0  e8 ff ff ea                                      b #0x379178

; FUNCTION 0x003791d4, declared_size=188, range_size=188, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPSt4pairIiiEiS1_N17PlayerStatManager9_StatCompEEvT_T0_S6_T1_T2_
; demangled: void std::__adjust_heap<std::pair<int, int>*, int, std::pair<int, int>, PlayerStatManager::_StatComp>(std::pair<int, int>*, int, int, std::pair<int, int>, PlayerStatManager::_StatComp)
; decoder-mode: arm
003791d4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003791d8  01 c0 a0 e1                                      mov ip, r1
003791dc  01 10 81 e2                                      add r1, r1, #1
003791e0  81 e0 a0 e1                                      lsl lr, r1, #1
003791e4  02 00 5e e1                                      cmp lr, r2
003791e8  14 d0 4d e2                                      sub sp, sp, #0x14
003791ec  0c 10 a0 a1                                      movge r1, ip
003791f0  11 00 00 aa                                      bge #0x37923c
003791f4  0c 50 a0 e1                                      mov r5, ip
003791f8  01 10 4e e2                                      sub r1, lr, #1
003791fc  81 61 90 e7                                      ldr r6, [r0, r1, lsl #3]
00379200  8e 71 90 e7                                      ldr r7, [r0, lr, lsl #3]
00379204  8e 41 80 e0                                      add r4, r0, lr, lsl #3
00379208  06 00 57 e1                                      cmp r7, r6
0037920c  81 41 80 c0                                      addgt r4, r0, r1, lsl #3
00379210  00 60 94 e5                                      ldr r6, [r4]
00379214  0e 10 a0 d1                                      movle r1, lr
00379218  01 e0 81 e2                                      add lr, r1, #1
0037921c  85 61 80 e7                                      str r6, [r0, r5, lsl #3]
00379220  04 40 94 e5                                      ldr r4, [r4, #4]
00379224  8e e0 a0 e1                                      lsl lr, lr, #1
00379228  85 51 80 e0                                      add r5, r0, r5, lsl #3
0037922c  0e 00 52 e1                                      cmp r2, lr
00379230  04 40 85 e5                                      str r4, [r5, #4]
00379234  01 50 a0 e1                                      mov r5, r1
00379238  ee ff ff ca                                      bgt #0x3791f8
0037923c  02 00 5e e1                                      cmp lr, r2
00379240  09 00 00 0a                                      beq #0x37926c
00379244  10 40 93 e8                                      ldm r3, {r4, lr}
00379248  0c 20 a0 e1                                      mov r2, ip
0037924c  08 30 8d e2                                      add r3, sp, #8
00379250  00 c0 a0 e3                                      mov ip, #0
00379254  08 40 8d e5                                      str r4, [sp, #8]
00379258  0c e0 8d e5                                      str lr, [sp, #0xc]
0037925c  00 c0 cd e5                                      strb ip, [sp]
00379260  bd ff ff eb                                      bl #0x37915c
00379264  14 d0 8d e2                                      add sp, sp, #0x14
00379268  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0037926c  01 e0 4e e2                                      sub lr, lr, #1
00379270  8e 51 90 e7                                      ldr r5, [r0, lr, lsl #3]
00379274  8e 41 80 e0                                      add r4, r0, lr, lsl #3
00379278  81 21 80 e0                                      add r2, r0, r1, lsl #3
0037927c  81 51 80 e7                                      str r5, [r0, r1, lsl #3]
00379280  04 40 94 e5                                      ldr r4, [r4, #4]
00379284  0e 10 a0 e1                                      mov r1, lr
00379288  04 40 82 e5                                      str r4, [r2, #4]
0037928c  ec ff ff ea                                      b #0x379244

; FUNCTION 0x00379290, declared_size=116, range_size=116, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPSt4pairIiiEN17PlayerStatManager9_StatCompES1_iEvT_S5_T0_PT1_PT2_
; demangled: void std::__make_heap<std::pair<int, int>*, PlayerStatManager::_StatComp, std::pair<int, int>, int>(std::pair<int, int>*, std::pair<int, int>*, PlayerStatManager::_StatComp, std::pair<int, int>*, int*)
; decoder-mode: arm
00379290  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00379294  01 10 60 e0                                      rsb r1, r0, r1
00379298  0f 00 51 e3                                      cmp r1, #0xf
0037929c  10 d0 4d e2                                      sub sp, sp, #0x10
003792a0  00 60 a0 e1                                      mov r6, r0
003792a4  14 00 00 da                                      ble #0x3792fc
003792a8  c1 71 a0 e1                                      asr r7, r1, #3
003792ac  02 50 47 e2                                      sub r5, r7, #2
003792b0  c5 50 a0 e1                                      asr r5, r5, #1
003792b4  08 80 8d e2                                      add r8, sp, #8
003792b8  85 41 80 e0                                      add r4, r0, r5, lsl #3
003792bc  00 00 00 ea                                      b #0x3792c4
003792c0  01 50 45 e2                                      sub r5, r5, #1
003792c4  00 30 94 e5                                      ldr r3, [r4]
003792c8  05 10 a0 e1                                      mov r1, r5
003792cc  06 00 a0 e1                                      mov r0, r6
003792d0  08 30 8d e5                                      str r3, [sp, #8]
003792d4  04 c0 94 e5                                      ldr ip, [r4, #4]
003792d8  07 20 a0 e1                                      mov r2, r7
003792dc  08 30 a0 e1                                      mov r3, r8
003792e0  0c c0 8d e5                                      str ip, [sp, #0xc]
003792e4  00 c0 a0 e3                                      mov ip, #0
003792e8  00 c0 cd e5                                      strb ip, [sp]
003792ec  b8 ff ff eb                                      bl #0x3791d4
003792f0  00 00 55 e3                                      cmp r5, #0
003792f4  08 40 44 e2                                      sub r4, r4, #8
003792f8  f0 ff ff 1a                                      bne #0x3792c0
003792fc  10 d0 8d e2                                      add sp, sp, #0x10
00379300  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00379304, declared_size=80, range_size=80, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPSt4pairIiiES1_N17PlayerStatManager9_StatCompEiEvT_S5_S5_T0_T1_PT2_
; demangled: void std::__pop_heap<std::pair<int, int>*, std::pair<int, int>, PlayerStatManager::_StatComp, int>(std::pair<int, int>*, std::pair<int, int>*, std::pair<int, int>*, std::pair<int, int>, PlayerStatManager::_StatComp, int*)
; decoder-mode: arm
00379304  10 40 2d e9                                      push {r4, lr}
00379308  00 40 90 e5                                      ldr r4, [r0]
0037930c  02 e0 a0 e1                                      mov lr, r2
00379310  10 d0 4d e2                                      sub sp, sp, #0x10
00379314  00 40 82 e5                                      str r4, [r2]
00379318  04 40 90 e5                                      ldr r4, [r0, #4]
0037931c  01 20 60 e0                                      rsb r2, r0, r1
00379320  c2 21 a0 e1                                      asr r2, r2, #3
00379324  04 40 8e e5                                      str r4, [lr, #4]
00379328  04 c0 93 e5                                      ldr ip, [r3, #4]
0037932c  00 e0 93 e5                                      ldr lr, [r3]
00379330  00 10 a0 e3                                      mov r1, #0
00379334  0c c0 8d e5                                      str ip, [sp, #0xc]
00379338  08 30 8d e2                                      add r3, sp, #8
0037933c  00 c0 a0 e3                                      mov ip, #0
00379340  08 e0 8d e5                                      str lr, [sp, #8]
00379344  00 c0 cd e5                                      strb ip, [sp]
00379348  a1 ff ff eb                                      bl #0x3791d4
0037934c  10 d0 8d e2                                      add sp, sp, #0x10
00379350  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00388fac, declared_size=228, range_size=228, mode=arm
; class-group: void std
; alias: _ZSt20_M_ignore_unbufferedIcSt11char_traitsIcENSt4priv14_Is_not_wspaceIS1_EEEvPSt13basic_istreamIT_T0_EPSt15basic_streambufIS6_S7_ET1_bb.clone.11
; demangled: void std::_M_ignore_unbuffered<char, std::char_traits<char>, std::priv::_Is_not_wspace<std::char_traits<char> > >(std::basic_istream<char, std::char_traits<char> >*, std::basic_streambuf<char, std::char_traits<char> >*, std::priv::_Is_not_wspace<std::char_traits<char> >, bool, bool) [clone .clone.11]
; decoder-mode: arm
00388fac  70 40 2d e9                                      push {r4, r5, r6, lr}
00388fb0  08 30 91 e5                                      ldr r3, [r1, #8]
00388fb4  01 40 a0 e1                                      mov r4, r1
00388fb8  00 50 a0 e1                                      mov r5, r0
00388fbc  02 60 a0 e1                                      mov r6, r2
00388fc0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00388fc4  01 20 83 e2                                      add r2, r3, #1
00388fc8  03 00 51 e1                                      cmp r1, r3
00388fcc  24 00 00 9a                                      bls #0x389064
00388fd0  08 20 84 e5                                      str r2, [r4, #8]
00388fd4  00 00 d3 e5                                      ldrb r0, [r3]
00388fd8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00388fdc  70 00 ef e6                                      uxtb r0, r0
00388fe0  70 10 ef e6                                      uxtb r1, r0
00388fe4  01 c1 93 e7                                      ldr ip, [r3, r1, lsl #2]
00388fe8  02 30 a0 e1                                      mov r3, r2
00388fec  01 c0 1c e2                                      ands ip, ip, #1
00388ff0  f2 ff ff 1a                                      bne #0x388fc0
00388ff4  04 30 94 e5                                      ldr r3, [r4, #4]
00388ff8  02 00 53 e1                                      cmp r3, r2
00388ffc  04 00 00 2a                                      bhs #0x389014
00389000  01 30 52 e5                                      ldrb r3, [r2, #-1]
00389004  01 20 42 e2                                      sub r2, r2, #1
00389008  03 00 50 e1                                      cmp r0, r3
0038900c  08 20 84 05                                      streq r2, [r4, #8]
00389010  06 00 00 0a                                      beq #0x389030
00389014  04 00 a0 e1                                      mov r0, r4
00389018  00 30 94 e5                                      ldr r3, [r4]
0038901c  0f e0 a0 e1                                      mov lr, pc
00389020  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00389024  01 00 70 e3                                      cmn r0, #1
00389028  04 c0 a0 03                                      moveq ip, #4
0038902c  00 c0 a0 13                                      movne ip, #0
00389030  00 30 95 e5                                      ldr r3, [r5]
00389034  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00389038  00 00 85 e0                                      add r0, r5, r0
0038903c  08 30 90 e5                                      ldr r3, [r0, #8]
00389040  48 20 90 e5                                      ldr r2, [r0, #0x48]
00389044  03 c0 8c e1                                      orr ip, ip, r3
00389048  14 30 90 e5                                      ldr r3, [r0, #0x14]
0038904c  00 00 52 e3                                      cmp r2, #0
00389050  01 c0 8c 03                                      orreq ip, ip, #1
00389054  03 00 1c e1                                      tst ip, r3
00389058  08 c0 80 e5                                      str ip, [r0, #8]
0038905c  09 00 00 1a                                      bne #0x389088
00389060  70 80 bd e8                                      pop {r4, r5, r6, pc}
00389064  00 30 94 e5                                      ldr r3, [r4]
00389068  04 00 a0 e1                                      mov r0, r4
0038906c  0f e0 a0 e1                                      mov lr, pc
00389070  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00389074  01 00 70 e3                                      cmn r0, #1
00389078  06 c0 a0 03                                      moveq ip, #6
0038907c  eb ff ff 0a                                      beq #0x389030
00389080  08 20 94 e5                                      ldr r2, [r4, #8]
00389084  d3 ff ff ea                                      b #0x388fd8
00389088  70 40 bd e8                                      pop {r4, r5, r6, lr}
0038908c  a3 ff 0d ea                                      b #0x708f20

; FUNCTION 0x0038f7cc, declared_size=648, range_size=648, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapINSt4priv15_Deque_iteratorIN14ObjectSearcher10TargetInfoESt16_Nonconst_traitsIS3_EEES3_NS2_12TargetSorterEiEvT_S8_S8_T0_T1_PT2_
; demangled: void std::__pop_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetInfo, ObjectSearcher::TargetSorter, int>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetInfo, ObjectSearcher::TargetSorter, int*)
; decoder-mode: arm
0038f7cc  08 d0 4d e2                                      sub sp, sp, #8
0038f7d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038f7d4  74 d0 4d e2                                      sub sp, sp, #0x74
0038f7d8  9c 30 8d e5                                      str r3, [sp, #0x9c]
0038f7dc  00 e0 92 e5                                      ldr lr, [r2]
0038f7e0  00 50 90 e5                                      ldr r5, [r0]
0038f7e4  00 c0 a0 e1                                      mov ip, r0
0038f7e8  b0 b0 9d e5                                      ldr fp, [sp, #0xb0]
0038f7ec  01 40 a0 e1                                      mov r4, r1
0038f7f0  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
0038f7f4  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0038f7f8  00 20 95 e5                                      ldr r2, [r5]
0038f7fc  0e 30 a0 e1                                      mov r3, lr
0038f800  50 50 8d e2                                      add r5, sp, #0x50
0038f804  00 20 83 e5                                      str r2, [r3]
0038f808  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0038f80c  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
0038f810  60 e0 8d e2                                      add lr, sp, #0x60
0038f814  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0038f818  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0038f81c  0e 10 a0 e1                                      mov r1, lr
0038f820  04 00 a0 e1                                      mov r0, r4
0038f824  79 f7 ff eb                                      bl #0x38d610
0038f828  1c 30 8d e2                                      add r3, sp, #0x1c
0038f82c  04 30 8d e5                                      str r3, [sp, #4]
0038f830  04 e0 9d e5                                      ldr lr, [sp, #4]
0038f834  9c c0 8d e2                                      add ip, sp, #0x9c
0038f838  00 90 a0 e1                                      mov sb, r0
0038f83c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0038f840  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0038f844  00 20 9c e5                                      ldr r2, [ip]
0038f848  02 00 59 e3                                      cmp sb, #2
0038f84c  00 20 8e e5                                      str r2, [lr]
0038f850  7b 00 00 da                                      ble #0x38fa44
0038f854  00 80 a0 e3                                      mov r8, #0
0038f858  02 60 a0 e3                                      mov r6, #2
0038f85c  30 40 8d e2                                      add r4, sp, #0x30
0038f860  00 00 00 ea                                      b #0x38f868
0038f864  0c 60 a0 e1                                      mov r6, ip
0038f868  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038f86c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038f870  06 10 a0 e1                                      mov r1, r6
0038f874  04 00 a0 e1                                      mov r0, r4
0038f878  81 f7 ff eb                                      bl #0x38d684
0038f87c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038f880  30 a0 9d e5                                      ldr sl, [sp, #0x30]
0038f884  01 70 46 e2                                      sub r7, r6, #1
0038f888  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038f88c  07 10 a0 e1                                      mov r1, r7
0038f890  04 00 a0 e1                                      mov r0, r4
0038f894  7a f7 ff eb                                      bl #0x38d684
0038f898  30 10 9d e5                                      ldr r1, [sp, #0x30]
0038f89c  0a 00 a0 e1                                      mov r0, sl
0038f8a0  3b ff 2f e1                                      blx fp
0038f8a4  00 00 50 e3                                      cmp r0, #0
0038f8a8  07 60 a0 11                                      movne r6, r7
0038f8ac  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038f8b0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038f8b4  08 10 a0 e1                                      mov r1, r8
0038f8b8  04 00 a0 e1                                      mov r0, r4
0038f8bc  70 f7 ff eb                                      bl #0x38d684
0038f8c0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038f8c4  30 70 9d e5                                      ldr r7, [sp, #0x30]
0038f8c8  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038f8cc  04 00 a0 e1                                      mov r0, r4
0038f8d0  06 10 a0 e1                                      mov r1, r6
0038f8d4  6a f7 ff eb                                      bl #0x38d684
0038f8d8  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0038f8dc  01 c0 86 e2                                      add ip, r6, #1
0038f8e0  8c c0 a0 e1                                      lsl ip, ip, #1
0038f8e4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0038f8e8  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
0038f8ec  00 20 9e e5                                      ldr r2, [lr]
0038f8f0  0c 00 59 e1                                      cmp sb, ip
0038f8f4  06 80 a0 e1                                      mov r8, r6
0038f8f8  00 20 87 e5                                      str r2, [r7]
0038f8fc  d8 ff ff ca                                      bgt #0x38f864
0038f900  0c 00 59 e1                                      cmp sb, ip
0038f904  3c 00 00 0a                                      beq #0x38f9fc
0038f908  40 70 8d e2                                      add r7, sp, #0x40
0038f90c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038f910  0f 00 87 e8                                      stm r7, {r0, r1, r2, r3}
0038f914  04 c0 9d e5                                      ldr ip, [sp, #4]
0038f918  08 80 8d e2                                      add r8, sp, #8
0038f91c  08 e0 a0 e1                                      mov lr, r8
0038f920  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0038f924  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0038f928  00 20 9c e5                                      ldr r2, [ip]
0038f92c  00 00 56 e3                                      cmp r6, #0
0038f930  01 50 46 c2                                      subgt r5, r6, #1
0038f934  00 20 8e e5                                      str r2, [lr]
0038f938  c5 50 a0 c1                                      asrgt r5, r5, #1
0038f93c  10 00 00 ca                                      bgt #0x38f984
0038f940  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
0038f944  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038f948  04 00 a0 e1                                      mov r0, r4
0038f94c  06 10 a0 e1                                      mov r1, r6
0038f950  4b f7 ff eb                                      bl #0x38d684
0038f954  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
0038f958  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0038f95c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0038f960  00 20 98 e5                                      ldr r2, [r8]
0038f964  00 20 8c e5                                      str r2, [ip]
0038f968  74 d0 8d e2                                      add sp, sp, #0x74
0038f96c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038f970  08 d0 8d e2                                      add sp, sp, #8
0038f974  1e ff 2f e1                                      bx lr
0038f978  01 30 45 e2                                      sub r3, r5, #1
0038f97c  05 60 a0 e1                                      mov r6, r5
0038f980  c3 50 a0 e1                                      asr r5, r3, #1
0038f984  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
0038f988  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038f98c  05 10 a0 e1                                      mov r1, r5
0038f990  04 00 a0 e1                                      mov r0, r4
0038f994  3a f7 ff eb                                      bl #0x38d684
0038f998  08 10 a0 e1                                      mov r1, r8
0038f99c  30 00 9d e5                                      ldr r0, [sp, #0x30]
0038f9a0  3b ff 2f e1                                      blx fp
0038f9a4  00 00 50 e3                                      cmp r0, #0
0038f9a8  e4 ff ff 0a                                      beq #0x38f940
0038f9ac  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
0038f9b0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038f9b4  06 10 a0 e1                                      mov r1, r6
0038f9b8  04 00 a0 e1                                      mov r0, r4
0038f9bc  30 f7 ff eb                                      bl #0x38d684
0038f9c0  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
0038f9c4  30 60 9d e5                                      ldr r6, [sp, #0x30]
0038f9c8  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038f9cc  05 10 a0 e1                                      mov r1, r5
0038f9d0  04 00 a0 e1                                      mov r0, r4
0038f9d4  2a f7 ff eb                                      bl #0x38d684
0038f9d8  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0038f9dc  00 00 55 e3                                      cmp r5, #0
0038f9e0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0038f9e4  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
0038f9e8  00 20 9c e5                                      ldr r2, [ip]
0038f9ec  00 20 86 e5                                      str r2, [r6]
0038f9f0  e0 ff ff 1a                                      bne #0x38f978
0038f9f4  05 60 a0 e1                                      mov r6, r5
0038f9f8  d0 ff ff ea                                      b #0x38f940
0038f9fc  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038fa00  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038fa04  06 10 a0 e1                                      mov r1, r6
0038fa08  04 00 a0 e1                                      mov r0, r4
0038fa0c  01 60 49 e2                                      sub r6, sb, #1
0038fa10  1b f7 ff eb                                      bl #0x38d684
0038fa14  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038fa18  30 70 9d e5                                      ldr r7, [sp, #0x30]
0038fa1c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038fa20  04 00 a0 e1                                      mov r0, r4
0038fa24  06 10 a0 e1                                      mov r1, r6
0038fa28  15 f7 ff eb                                      bl #0x38d684
0038fa2c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0038fa30  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0038fa34  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
0038fa38  00 20 9c e5                                      ldr r2, [ip]
0038fa3c  00 20 87 e5                                      str r2, [r7]
0038fa40  b0 ff ff ea                                      b #0x38f908
0038fa44  00 60 a0 e3                                      mov r6, #0
0038fa48  02 c0 a0 e3                                      mov ip, #2
0038fa4c  30 40 8d e2                                      add r4, sp, #0x30
0038fa50  aa ff ff ea                                      b #0x38f900

; FUNCTION 0x0038fa54, declared_size=196, range_size=196, mode=arm
; class-group: void std
; alias: _ZSt14__pop_heap_auxINSt4priv15_Deque_iteratorIN14ObjectSearcher10TargetInfoESt16_Nonconst_traitsIS3_EEES3_NS2_12TargetSorterEEvT_S8_PT0_T1_
; demangled: void std::__pop_heap_aux<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetInfo, ObjectSearcher::TargetSorter>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetInfo*, ObjectSearcher::TargetSorter)
; decoder-mode: arm
0038fa54  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0038fa58  74 d0 4d e2                                      sub sp, sp, #0x74
0038fa5c  40 70 8d e2                                      add r7, sp, #0x40
0038fa60  01 50 a0 e1                                      mov r5, r1
0038fa64  03 a0 a0 e1                                      mov sl, r3
0038fa68  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
0038fa6c  0f 00 87 e8                                      stm r7, {r0, r1, r2, r3}
0038fa70  30 40 8d e2                                      add r4, sp, #0x30
0038fa74  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038fa78  60 60 8d e2                                      add r6, sp, #0x60
0038fa7c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038fa80  04 00 a0 e1                                      mov r0, r4
0038fa84  00 10 e0 e3                                      mvn r1, #0
0038fa88  fd f6 ff eb                                      bl #0x38d684
0038fa8c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0038fa90  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
0038fa94  50 80 8d e2                                      add r8, sp, #0x50
0038fa98  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038fa9c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038faa0  04 00 a0 e1                                      mov r0, r4
0038faa4  00 10 e0 e3                                      mvn r1, #0
0038faa8  f5 f6 ff eb                                      bl #0x38d684
0038faac  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0038fab0  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
0038fab4  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0038fab8  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0038fabc  04 00 a0 e1                                      mov r0, r4
0038fac0  00 10 e0 e3                                      mvn r1, #0
0038fac4  ee f6 ff eb                                      bl #0x38d684
0038fac8  30 40 9d e5                                      ldr r4, [sp, #0x30]
0038facc  1c c0 8d e2                                      add ip, sp, #0x1c
0038fad0  20 e0 8d e2                                      add lr, sp, #0x20
0038fad4  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0038fad8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0038fadc  00 30 94 e5                                      ldr r3, [r4]
0038fae0  10 a0 8d e5                                      str sl, [sp, #0x10]
0038fae4  00 30 8c e5                                      str r3, [ip]
0038fae8  0d c0 a0 e1                                      mov ip, sp
0038faec  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0038faf0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0038faf4  00 c0 a0 e3                                      mov ip, #0
0038faf8  07 00 a0 e1                                      mov r0, r7
0038fafc  06 10 a0 e1                                      mov r1, r6
0038fb00  08 20 a0 e1                                      mov r2, r8
0038fb04  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0038fb08  14 c0 8d e5                                      str ip, [sp, #0x14]
0038fb0c  2e ff ff eb                                      bl #0x38f7cc
0038fb10  74 d0 8d e2                                      add sp, sp, #0x74
0038fb14  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x003a2304, declared_size=228, range_size=228, mode=arm
; class-group: void std
; alias: _ZSt20_M_ignore_unbufferedIcSt11char_traitsIcENSt4priv14_Is_not_wspaceIS1_EEEvPSt13basic_istreamIT_T0_EPSt15basic_streambufIS6_S7_ET1_bb.clone.8
; demangled: void std::_M_ignore_unbuffered<char, std::char_traits<char>, std::priv::_Is_not_wspace<std::char_traits<char> > >(std::basic_istream<char, std::char_traits<char> >*, std::basic_streambuf<char, std::char_traits<char> >*, std::priv::_Is_not_wspace<std::char_traits<char> >, bool, bool) [clone .clone.8]
; decoder-mode: arm
003a2304  70 40 2d e9                                      push {r4, r5, r6, lr}
003a2308  08 30 91 e5                                      ldr r3, [r1, #8]
003a230c  01 40 a0 e1                                      mov r4, r1
003a2310  00 50 a0 e1                                      mov r5, r0
003a2314  02 60 a0 e1                                      mov r6, r2
003a2318  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003a231c  01 20 83 e2                                      add r2, r3, #1
003a2320  03 00 51 e1                                      cmp r1, r3
003a2324  24 00 00 9a                                      bls #0x3a23bc
003a2328  08 20 84 e5                                      str r2, [r4, #8]
003a232c  00 00 d3 e5                                      ldrb r0, [r3]
003a2330  0c 30 96 e5                                      ldr r3, [r6, #0xc]
003a2334  70 00 ef e6                                      uxtb r0, r0
003a2338  70 10 ef e6                                      uxtb r1, r0
003a233c  01 c1 93 e7                                      ldr ip, [r3, r1, lsl #2]
003a2340  02 30 a0 e1                                      mov r3, r2
003a2344  01 c0 1c e2                                      ands ip, ip, #1
003a2348  f2 ff ff 1a                                      bne #0x3a2318
003a234c  04 30 94 e5                                      ldr r3, [r4, #4]
003a2350  02 00 53 e1                                      cmp r3, r2
003a2354  04 00 00 2a                                      bhs #0x3a236c
003a2358  01 30 52 e5                                      ldrb r3, [r2, #-1]
003a235c  01 20 42 e2                                      sub r2, r2, #1
003a2360  03 00 50 e1                                      cmp r0, r3
003a2364  08 20 84 05                                      streq r2, [r4, #8]
003a2368  06 00 00 0a                                      beq #0x3a2388
003a236c  04 00 a0 e1                                      mov r0, r4
003a2370  00 30 94 e5                                      ldr r3, [r4]
003a2374  0f e0 a0 e1                                      mov lr, pc
003a2378  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003a237c  01 00 70 e3                                      cmn r0, #1
003a2380  04 c0 a0 03                                      moveq ip, #4
003a2384  00 c0 a0 13                                      movne ip, #0
003a2388  00 30 95 e5                                      ldr r3, [r5]
003a238c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
003a2390  00 00 85 e0                                      add r0, r5, r0
003a2394  08 30 90 e5                                      ldr r3, [r0, #8]
003a2398  48 20 90 e5                                      ldr r2, [r0, #0x48]
003a239c  03 c0 8c e1                                      orr ip, ip, r3
003a23a0  14 30 90 e5                                      ldr r3, [r0, #0x14]
003a23a4  00 00 52 e3                                      cmp r2, #0
003a23a8  01 c0 8c 03                                      orreq ip, ip, #1
003a23ac  03 00 1c e1                                      tst ip, r3
003a23b0  08 c0 80 e5                                      str ip, [r0, #8]
003a23b4  09 00 00 1a                                      bne #0x3a23e0
003a23b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003a23bc  00 30 94 e5                                      ldr r3, [r4]
003a23c0  04 00 a0 e1                                      mov r0, r4
003a23c4  0f e0 a0 e1                                      mov lr, pc
003a23c8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003a23cc  01 00 70 e3                                      cmn r0, #1
003a23d0  06 c0 a0 03                                      moveq ip, #6
003a23d4  eb ff ff 0a                                      beq #0x3a2388
003a23d8  08 20 94 e5                                      ldr r2, [r4, #8]
003a23dc  d3 ff ff ea                                      b #0x3a2330
003a23e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
003a23e4  cd 9a 0d ea                                      b #0x708f20

; FUNCTION 0x00400c88, declared_size=236, range_size=236, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN13ItemInventory4ItemEiS1_19SortByValueAndClassEvT_T0_S5_T1_T2_
; demangled: void std::__push_heap<ItemInventory::Item*, int, ItemInventory::Item, SortByValueAndClass>(ItemInventory::Item*, int, int, ItemInventory::Item, SortByValueAndClass)
; decoder-mode: arm
00400c88  08 d0 4d e2                                      sub sp, sp, #8
00400c8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00400c90  02 00 51 e1                                      cmp r1, r2
00400c94  0c d0 4d e2                                      sub sp, sp, #0xc
00400c98  01 40 a0 e1                                      mov r4, r1
00400c9c  04 20 8d e5                                      str r2, [sp, #4]
00400ca0  34 30 8d e5                                      str r3, [sp, #0x34]
00400ca4  00 70 a0 e1                                      mov r7, r0
00400ca8  0e 00 00 ca                                      bgt #0x400ce8
00400cac  0c 50 a0 e3                                      mov r5, #0xc
00400cb0  95 01 25 e0                                      mla r5, r5, r1, r0
00400cb4  34 60 8d e2                                      add r6, sp, #0x34
00400cb8  04 30 85 e2                                      add r3, r5, #4
00400cbc  04 60 86 e2                                      add r6, r6, #4
00400cc0  04 00 96 e4                                      ldr r0, [r6], #4
00400cc4  34 10 9d e5                                      ldr r1, [sp, #0x34]
00400cc8  00 20 96 e5                                      ldr r2, [r6]
00400ccc  04 00 85 e5                                      str r0, [r5, #4]
00400cd0  00 10 85 e5                                      str r1, [r5]
00400cd4  04 20 83 e5                                      str r2, [r3, #4]
00400cd8  0c d0 8d e2                                      add sp, sp, #0xc
00400cdc  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00400ce0  08 d0 8d e2                                      add sp, sp, #8
00400ce4  1e ff 2f e1                                      bx lr
00400ce8  01 90 41 e2                                      sub sb, r1, #1
00400cec  a9 9f 89 e0                                      add sb, sb, sb, lsr #31
00400cf0  40 b0 8d e2                                      add fp, sp, #0x40
00400cf4  c9 90 a0 e1                                      asr sb, sb, #1
00400cf8  34 60 8d e2                                      add r6, sp, #0x34
00400cfc  0c a0 a0 e3                                      mov sl, #0xc
00400d00  9a 09 08 e0                                      mul r8, sl, sb
00400d04  06 20 a0 e1                                      mov r2, r6
00400d08  08 50 87 e0                                      add r5, r7, r8
00400d0c  05 10 a0 e1                                      mov r1, r5
00400d10  0b 00 a0 e1                                      mov r0, fp
00400d14  33 f1 ff eb                                      bl #0x3fd1e8
00400d18  9a 04 02 e0                                      mul r2, sl, r4
00400d1c  00 00 50 e3                                      cmp r0, #0
00400d20  04 30 85 e2                                      add r3, r5, #4
00400d24  02 10 87 e0                                      add r1, r7, r2
00400d28  03 00 00 1a                                      bne #0x400d3c
00400d2c  0c 50 a0 e3                                      mov r5, #0xc
00400d30  95 74 25 e0                                      mla r5, r5, r4, r7
00400d34  04 30 85 e2                                      add r3, r5, #4
00400d38  df ff ff ea                                      b #0x400cbc
00400d3c  08 00 97 e7                                      ldr r0, [r7, r8]
00400d40  04 c0 9d e5                                      ldr ip, [sp, #4]
00400d44  02 00 87 e7                                      str r0, [r7, r2]
00400d48  04 20 95 e5                                      ldr r2, [r5, #4]
00400d4c  09 00 5c e1                                      cmp ip, sb
00400d50  04 20 81 e5                                      str r2, [r1, #4]
00400d54  04 20 93 e5                                      ldr r2, [r3, #4]
00400d58  08 20 81 e5                                      str r2, [r1, #8]
00400d5c  d6 ff ff aa                                      bge #0x400cbc
00400d60  01 30 49 e2                                      sub r3, sb, #1
00400d64  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
00400d68  09 40 a0 e1                                      mov r4, sb
00400d6c  c3 90 a0 e1                                      asr sb, r3, #1
00400d70  e2 ff ff ea                                      b #0x400d00

; FUNCTION 0x00400d74, declared_size=276, range_size=276, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPN13ItemInventory4ItemEiS1_19SortByValueAndClassEvT_T0_S5_T1_T2_
; demangled: void std::__adjust_heap<ItemInventory::Item*, int, ItemInventory::Item, SortByValueAndClass>(ItemInventory::Item*, int, int, ItemInventory::Item, SortByValueAndClass)
; decoder-mode: arm
00400d74  08 d0 4d e2                                      sub sp, sp, #8
00400d78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00400d7c  01 40 81 e2                                      add r4, r1, #1
00400d80  84 40 a0 e1                                      lsl r4, r4, #1
00400d84  1c d0 4d e2                                      sub sp, sp, #0x1c
00400d88  02 00 54 e1                                      cmp r4, r2
00400d8c  14 10 8d e5                                      str r1, [sp, #0x14]
00400d90  02 b0 a0 e1                                      mov fp, r2
00400d94  44 30 8d e5                                      str r3, [sp, #0x44]
00400d98  00 60 a0 e1                                      mov r6, r0
00400d9c  1c 00 00 aa                                      bge #0x400e14
00400da0  14 90 9d e5                                      ldr sb, [sp, #0x14]
00400da4  50 10 8d e2                                      add r1, sp, #0x50
00400da8  10 10 8d e5                                      str r1, [sp, #0x10]
00400dac  0c 70 a0 e3                                      mov r7, #0xc
00400db0  01 a0 44 e2                                      sub sl, r4, #1
00400db4  97 64 25 e0                                      mla r5, r7, r4, r6
00400db8  97 6a 28 e0                                      mla r8, r7, sl, r6
00400dbc  05 10 a0 e1                                      mov r1, r5
00400dc0  08 20 a0 e1                                      mov r2, r8
00400dc4  10 00 9d e5                                      ldr r0, [sp, #0x10]
00400dc8  06 f1 ff eb                                      bl #0x3fd1e8
00400dcc  00 00 50 e3                                      cmp r0, #0
00400dd0  08 50 a0 11                                      movne r5, r8
00400dd4  05 30 a0 e1                                      mov r3, r5
00400dd8  04 10 93 e4                                      ldr r1, [r3], #4
00400ddc  97 09 09 e0                                      mul sb, r7, sb
00400de0  04 a0 a0 01                                      moveq sl, r4
00400de4  09 10 86 e7                                      str r1, [r6, sb]
00400de8  04 10 95 e5                                      ldr r1, [r5, #4]
00400dec  09 20 86 e0                                      add r2, r6, sb
00400df0  01 40 8a e2                                      add r4, sl, #1
00400df4  04 10 82 e5                                      str r1, [r2, #4]
00400df8  04 30 93 e5                                      ldr r3, [r3, #4]
00400dfc  84 40 a0 e1                                      lsl r4, r4, #1
00400e00  04 00 5b e1                                      cmp fp, r4
00400e04  0a 90 a0 e1                                      mov sb, sl
00400e08  08 30 82 e5                                      str r3, [r2, #8]
00400e0c  e7 ff ff ca                                      bgt #0x400db0
00400e10  0a 10 a0 e1                                      mov r1, sl
00400e14  0b 00 54 e1                                      cmp r4, fp
00400e18  0c 00 00 1a                                      bne #0x400e50
00400e1c  0c 30 a0 e3                                      mov r3, #0xc
00400e20  01 40 44 e2                                      sub r4, r4, #1
00400e24  93 04 02 e0                                      mul r2, r3, r4
00400e28  93 01 01 e0                                      mul r1, r3, r1
00400e2c  02 00 96 e7                                      ldr r0, [r6, r2]
00400e30  02 20 86 e0                                      add r2, r6, r2
00400e34  01 30 86 e0                                      add r3, r6, r1
00400e38  01 00 86 e7                                      str r0, [r6, r1]
00400e3c  04 00 92 e5                                      ldr r0, [r2, #4]
00400e40  04 10 a0 e1                                      mov r1, r4
00400e44  04 00 83 e5                                      str r0, [r3, #4]
00400e48  08 20 92 e5                                      ldr r2, [r2, #8]
00400e4c  08 20 83 e5                                      str r2, [r3, #8]
00400e50  50 c0 9d e5                                      ldr ip, [sp, #0x50]
00400e54  06 00 a0 e1                                      mov r0, r6
00400e58  14 20 9d e5                                      ldr r2, [sp, #0x14]
00400e5c  08 c0 8d e5                                      str ip, [sp, #8]
00400e60  48 c0 9d e5                                      ldr ip, [sp, #0x48]
00400e64  44 30 9d e5                                      ldr r3, [sp, #0x44]
00400e68  00 c0 8d e5                                      str ip, [sp]
00400e6c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
00400e70  04 c0 8d e5                                      str ip, [sp, #4]
00400e74  83 ff ff eb                                      bl #0x400c88
00400e78  1c d0 8d e2                                      add sp, sp, #0x1c
00400e7c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00400e80  08 d0 8d e2                                      add sp, sp, #8
00400e84  1e ff 2f e1                                      bx lr

; FUNCTION 0x00400e88, declared_size=188, range_size=188, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPN13ItemInventory4ItemE19SortByValueAndClassS1_iEvT_S4_T0_PT1_PT2_
; demangled: void std::__make_heap<ItemInventory::Item*, SortByValueAndClass, ItemInventory::Item, int>(ItemInventory::Item*, ItemInventory::Item*, SortByValueAndClass, ItemInventory::Item*, int*)
; decoder-mode: arm
00400e88  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00400e8c  01 10 60 e0                                      rsb r1, r0, r1
00400e90  17 00 51 e3                                      cmp r1, #0x17
00400e94  2c d0 4d e2                                      sub sp, sp, #0x2c
00400e98  00 70 a0 e1                                      mov r7, r0
00400e9c  02 b0 a0 e1                                      mov fp, r2
00400ea0  25 00 00 da                                      ble #0x400f3c
00400ea4  41 11 a0 e1                                      asr r1, r1, #2
00400ea8  1c 80 8d e2                                      add r8, sp, #0x1c
00400eac  01 91 81 e0                                      add sb, r1, r1, lsl #2
00400eb0  04 a0 88 e2                                      add sl, r8, #4
00400eb4  09 92 89 e0                                      add sb, sb, sb, lsl #4
00400eb8  04 30 8a e2                                      add r3, sl, #4
00400ebc  09 94 89 e0                                      add sb, sb, sb, lsl #8
00400ec0  0c 60 a0 e3                                      mov r6, #0xc
00400ec4  09 98 89 e0                                      add sb, sb, sb, lsl #16
00400ec8  00 40 a0 e3                                      mov r4, #0
00400ecc  89 90 81 e0                                      add sb, r1, sb, lsl #1
00400ed0  02 50 49 e2                                      sub r5, sb, #2
00400ed4  c5 50 a0 e1                                      asr r5, r5, #1
00400ed8  14 30 8d e5                                      str r3, [sp, #0x14]
00400edc  96 05 26 e0                                      mla r6, r6, r5, r0
00400ee0  00 00 00 ea                                      b #0x400ee8
00400ee4  01 50 45 e2                                      sub r5, r5, #1
00400ee8  04 30 96 e7                                      ldr r3, [r6, r4]
00400eec  04 20 86 e0                                      add r2, r6, r4
00400ef0  04 20 82 e2                                      add r2, r2, #4
00400ef4  00 30 88 e5                                      str r3, [r8]
00400ef8  04 00 92 e4                                      ldr r0, [r2], #4
00400efc  05 10 a0 e1                                      mov r1, r5
00400f00  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00400f04  00 00 8a e5                                      str r0, [sl]
00400f08  20 e0 9d e5                                      ldr lr, [sp, #0x20]
00400f0c  00 c0 92 e5                                      ldr ip, [r2]
00400f10  07 00 a0 e1                                      mov r0, r7
00400f14  00 e0 8d e5                                      str lr, [sp]
00400f18  14 e0 9d e5                                      ldr lr, [sp, #0x14]
00400f1c  04 c0 8d e5                                      str ip, [sp, #4]
00400f20  09 20 a0 e1                                      mov r2, sb
00400f24  00 c0 8e e5                                      str ip, [lr]
00400f28  08 b0 8d e5                                      str fp, [sp, #8]
00400f2c  90 ff ff eb                                      bl #0x400d74
00400f30  00 00 55 e3                                      cmp r5, #0
00400f34  0c 40 44 e2                                      sub r4, r4, #0xc
00400f38  e9 ff ff 1a                                      bne #0x400ee4
00400f3c  2c d0 8d e2                                      add sp, sp, #0x2c
00400f40  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00400f44, declared_size=124, range_size=124, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN13ItemInventory4ItemES1_19SortByValueAndClassiEvT_S4_S4_T0_T1_PT2_
; demangled: void std::__pop_heap<ItemInventory::Item*, ItemInventory::Item, SortByValueAndClass, int>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item, SortByValueAndClass, int*)
; decoder-mode: arm
00400f44  08 d0 4d e2                                      sub sp, sp, #8
00400f48  70 40 2d e9                                      push {r4, r5, r6, lr}
00400f4c  00 c0 a0 e1                                      mov ip, r0
00400f50  04 40 9c e4                                      ldr r4, [ip], #4
00400f54  02 50 a0 e1                                      mov r5, r2
00400f58  01 10 60 e0                                      rsb r1, r0, r1
00400f5c  04 40 85 e4                                      str r4, [r5], #4
00400f60  41 11 a0 e1                                      asr r1, r1, #2
00400f64  04 60 90 e5                                      ldr r6, [r0, #4]
00400f68  01 41 81 e0                                      add r4, r1, r1, lsl #2
00400f6c  10 d0 4d e2                                      sub sp, sp, #0x10
00400f70  04 60 82 e5                                      str r6, [r2, #4]
00400f74  04 e2 84 e0                                      add lr, r4, r4, lsl #4
00400f78  04 40 9c e5                                      ldr r4, [ip, #4]
00400f7c  0e 24 8e e0                                      add r2, lr, lr, lsl #8
00400f80  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00400f84  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00400f88  04 40 85 e5                                      str r4, [r5, #4]
00400f8c  30 40 9d e5                                      ldr r4, [sp, #0x30]
00400f90  02 28 82 e0                                      add r2, r2, r2, lsl #16
00400f94  00 e0 8d e5                                      str lr, [sp]
00400f98  82 20 81 e0                                      add r2, r1, r2, lsl #1
00400f9c  00 10 a0 e3                                      mov r1, #0
00400fa0  08 40 8d e5                                      str r4, [sp, #8]
00400fa4  04 c0 8d e5                                      str ip, [sp, #4]
00400fa8  24 30 8d e5                                      str r3, [sp, #0x24]
00400fac  70 ff ff eb                                      bl #0x400d74
00400fb0  10 d0 8d e2                                      add sp, sp, #0x10
00400fb4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00400fb8  08 d0 8d e2                                      add sp, sp, #8
00400fbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00401634, declared_size=144, range_size=144, mode=arm
; class-group: void std
; alias: _ZSt4sortIPN13ItemInventory4ItemE19SortByValueAndClassEvT_S4_T0_
; demangled: void std::sort<ItemInventory::Item*, SortByValueAndClass>(ItemInventory::Item*, ItemInventory::Item*, SortByValueAndClass)
; decoder-mode: arm
00401634  70 40 2d e9                                      push {r4, r5, r6, lr}
00401638  01 00 50 e1                                      cmp r0, r1
0040163c  08 d0 4d e2                                      sub sp, sp, #8
00401640  00 50 a0 e1                                      mov r5, r0
00401644  01 40 a0 e1                                      mov r4, r1
00401648  02 60 a0 e1                                      mov r6, r2
0040164c  1a 00 00 0a                                      beq #0x4016bc
00401650  01 30 60 e0                                      rsb r3, r0, r1
00401654  43 31 a0 e1                                      asr r3, r3, #2
00401658  03 21 83 e0                                      add r2, r3, r3, lsl #2
0040165c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00401660  02 24 82 e0                                      add r2, r2, r2, lsl #8
00401664  02 28 82 e0                                      add r2, r2, r2, lsl #16
00401668  82 20 83 e0                                      add r2, r3, r2, lsl #1
0040166c  01 00 52 e3                                      cmp r2, #1
00401670  00 30 a0 03                                      moveq r3, #0
00401674  05 00 00 0a                                      beq #0x401690
00401678  00 30 a0 e3                                      mov r3, #0
0040167c  c2 20 a0 e1                                      asr r2, r2, #1
00401680  01 00 52 e3                                      cmp r2, #1
00401684  01 30 83 e2                                      add r3, r3, #1
00401688  fb ff ff 1a                                      bne #0x40167c
0040168c  83 30 a0 e1                                      lsl r3, r3, #1
00401690  05 00 a0 e1                                      mov r0, r5
00401694  04 10 a0 e1                                      mov r1, r4
00401698  00 20 a0 e3                                      mov r2, #0
0040169c  00 60 8d e5                                      str r6, [sp]
004016a0  f2 fe ff eb                                      bl #0x401270
004016a4  05 00 a0 e1                                      mov r0, r5
004016a8  04 10 a0 e1                                      mov r1, r4
004016ac  06 20 a0 e1                                      mov r2, r6
004016b0  08 d0 8d e2                                      add sp, sp, #8
004016b4  70 40 bd e8                                      pop {r4, r5, r6, lr}
004016b8  b2 ff ff ea                                      b #0x401588
004016bc  08 d0 8d e2                                      add sp, sp, #8
004016c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041c280, declared_size=228, range_size=228, mode=arm
; class-group: void std
; alias: _ZSt20_M_ignore_unbufferedIcSt11char_traitsIcENSt4priv14_Is_not_wspaceIS1_EEEvPSt13basic_istreamIT_T0_EPSt15basic_streambufIS6_S7_ET1_bb.clone.8
; demangled: void std::_M_ignore_unbuffered<char, std::char_traits<char>, std::priv::_Is_not_wspace<std::char_traits<char> > >(std::basic_istream<char, std::char_traits<char> >*, std::basic_streambuf<char, std::char_traits<char> >*, std::priv::_Is_not_wspace<std::char_traits<char> >, bool, bool) [clone .clone.8]
; decoder-mode: arm
0041c280  70 40 2d e9                                      push {r4, r5, r6, lr}
0041c284  08 30 91 e5                                      ldr r3, [r1, #8]
0041c288  01 40 a0 e1                                      mov r4, r1
0041c28c  00 50 a0 e1                                      mov r5, r0
0041c290  02 60 a0 e1                                      mov r6, r2
0041c294  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0041c298  01 20 83 e2                                      add r2, r3, #1
0041c29c  03 00 51 e1                                      cmp r1, r3
0041c2a0  24 00 00 9a                                      bls #0x41c338
0041c2a4  08 20 84 e5                                      str r2, [r4, #8]
0041c2a8  00 00 d3 e5                                      ldrb r0, [r3]
0041c2ac  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0041c2b0  70 00 ef e6                                      uxtb r0, r0
0041c2b4  70 10 ef e6                                      uxtb r1, r0
0041c2b8  01 c1 93 e7                                      ldr ip, [r3, r1, lsl #2]
0041c2bc  02 30 a0 e1                                      mov r3, r2
0041c2c0  01 c0 1c e2                                      ands ip, ip, #1
0041c2c4  f2 ff ff 1a                                      bne #0x41c294
0041c2c8  04 30 94 e5                                      ldr r3, [r4, #4]
0041c2cc  02 00 53 e1                                      cmp r3, r2
0041c2d0  04 00 00 2a                                      bhs #0x41c2e8
0041c2d4  01 30 52 e5                                      ldrb r3, [r2, #-1]
0041c2d8  01 20 42 e2                                      sub r2, r2, #1
0041c2dc  03 00 50 e1                                      cmp r0, r3
0041c2e0  08 20 84 05                                      streq r2, [r4, #8]
0041c2e4  06 00 00 0a                                      beq #0x41c304
0041c2e8  04 00 a0 e1                                      mov r0, r4
0041c2ec  00 30 94 e5                                      ldr r3, [r4]
0041c2f0  0f e0 a0 e1                                      mov lr, pc
0041c2f4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0041c2f8  01 00 70 e3                                      cmn r0, #1
0041c2fc  04 c0 a0 03                                      moveq ip, #4
0041c300  00 c0 a0 13                                      movne ip, #0
0041c304  00 30 95 e5                                      ldr r3, [r5]
0041c308  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0041c30c  00 00 85 e0                                      add r0, r5, r0
0041c310  08 30 90 e5                                      ldr r3, [r0, #8]
0041c314  48 20 90 e5                                      ldr r2, [r0, #0x48]
0041c318  03 c0 8c e1                                      orr ip, ip, r3
0041c31c  14 30 90 e5                                      ldr r3, [r0, #0x14]
0041c320  00 00 52 e3                                      cmp r2, #0
0041c324  01 c0 8c 03                                      orreq ip, ip, #1
0041c328  03 00 1c e1                                      tst ip, r3
0041c32c  08 c0 80 e5                                      str ip, [r0, #8]
0041c330  09 00 00 1a                                      bne #0x41c35c
0041c334  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041c338  00 30 94 e5                                      ldr r3, [r4]
0041c33c  04 00 a0 e1                                      mov r0, r4
0041c340  0f e0 a0 e1                                      mov lr, pc
0041c344  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0041c348  01 00 70 e3                                      cmn r0, #1
0041c34c  06 c0 a0 03                                      moveq ip, #6
0041c350  eb ff ff 0a                                      beq #0x41c304
0041c354  08 20 94 e5                                      ldr r2, [r4, #8]
0041c358  d3 ff ff ea                                      b #0x41c2ac
0041c35c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041c360  ee b2 0b ea                                      b #0x708f20

; FUNCTION 0x0043b540, declared_size=236, range_size=236, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN13ItemInventory4ItemEiS1_18SortByEquipabilityEvT_T0_S5_T1_T2_
; demangled: void std::__push_heap<ItemInventory::Item*, int, ItemInventory::Item, SortByEquipability>(ItemInventory::Item*, int, int, ItemInventory::Item, SortByEquipability)
; decoder-mode: arm
0043b540  08 d0 4d e2                                      sub sp, sp, #8
0043b544  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043b548  02 00 51 e1                                      cmp r1, r2
0043b54c  0c d0 4d e2                                      sub sp, sp, #0xc
0043b550  01 40 a0 e1                                      mov r4, r1
0043b554  04 20 8d e5                                      str r2, [sp, #4]
0043b558  34 30 8d e5                                      str r3, [sp, #0x34]
0043b55c  00 70 a0 e1                                      mov r7, r0
0043b560  0e 00 00 ca                                      bgt #0x43b5a0
0043b564  0c 50 a0 e3                                      mov r5, #0xc
0043b568  95 01 25 e0                                      mla r5, r5, r1, r0
0043b56c  34 60 8d e2                                      add r6, sp, #0x34
0043b570  04 30 85 e2                                      add r3, r5, #4
0043b574  04 60 86 e2                                      add r6, r6, #4
0043b578  04 00 96 e4                                      ldr r0, [r6], #4
0043b57c  34 10 9d e5                                      ldr r1, [sp, #0x34]
0043b580  00 20 96 e5                                      ldr r2, [r6]
0043b584  04 00 85 e5                                      str r0, [r5, #4]
0043b588  00 10 85 e5                                      str r1, [r5]
0043b58c  04 20 83 e5                                      str r2, [r3, #4]
0043b590  0c d0 8d e2                                      add sp, sp, #0xc
0043b594  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043b598  08 d0 8d e2                                      add sp, sp, #8
0043b59c  1e ff 2f e1                                      bx lr
0043b5a0  01 90 41 e2                                      sub sb, r1, #1
0043b5a4  a9 9f 89 e0                                      add sb, sb, sb, lsr #31
0043b5a8  40 b0 8d e2                                      add fp, sp, #0x40
0043b5ac  c9 90 a0 e1                                      asr sb, sb, #1
0043b5b0  34 60 8d e2                                      add r6, sp, #0x34
0043b5b4  0c a0 a0 e3                                      mov sl, #0xc
0043b5b8  9a 09 08 e0                                      mul r8, sl, sb
0043b5bc  06 20 a0 e1                                      mov r2, r6
0043b5c0  08 50 87 e0                                      add r5, r7, r8
0043b5c4  05 10 a0 e1                                      mov r1, r5
0043b5c8  0b 00 a0 e1                                      mov r0, fp
0043b5cc  ff 07 ff eb                                      bl #0x3fd5d0
0043b5d0  9a 04 02 e0                                      mul r2, sl, r4
0043b5d4  00 00 50 e3                                      cmp r0, #0
0043b5d8  04 30 85 e2                                      add r3, r5, #4
0043b5dc  02 10 87 e0                                      add r1, r7, r2
0043b5e0  03 00 00 1a                                      bne #0x43b5f4
0043b5e4  0c 50 a0 e3                                      mov r5, #0xc
0043b5e8  95 74 25 e0                                      mla r5, r5, r4, r7
0043b5ec  04 30 85 e2                                      add r3, r5, #4
0043b5f0  df ff ff ea                                      b #0x43b574
0043b5f4  08 00 97 e7                                      ldr r0, [r7, r8]
0043b5f8  04 c0 9d e5                                      ldr ip, [sp, #4]
0043b5fc  02 00 87 e7                                      str r0, [r7, r2]
0043b600  04 20 95 e5                                      ldr r2, [r5, #4]
0043b604  09 00 5c e1                                      cmp ip, sb
0043b608  04 20 81 e5                                      str r2, [r1, #4]
0043b60c  04 20 93 e5                                      ldr r2, [r3, #4]
0043b610  08 20 81 e5                                      str r2, [r1, #8]
0043b614  d6 ff ff aa                                      bge #0x43b574
0043b618  01 30 49 e2                                      sub r3, sb, #1
0043b61c  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0043b620  09 40 a0 e1                                      mov r4, sb
0043b624  c3 90 a0 e1                                      asr sb, r3, #1
0043b628  e2 ff ff ea                                      b #0x43b5b8

; FUNCTION 0x0043b62c, declared_size=284, range_size=284, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPN13ItemInventory4ItemEiS1_18SortByEquipabilityEvT_T0_S5_T1_T2_
; demangled: void std::__adjust_heap<ItemInventory::Item*, int, ItemInventory::Item, SortByEquipability>(ItemInventory::Item*, int, int, ItemInventory::Item, SortByEquipability)
; decoder-mode: arm
0043b62c  08 d0 4d e2                                      sub sp, sp, #8
0043b630  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043b634  01 40 81 e2                                      add r4, r1, #1
0043b638  84 40 a0 e1                                      lsl r4, r4, #1
0043b63c  1c d0 4d e2                                      sub sp, sp, #0x1c
0043b640  02 00 54 e1                                      cmp r4, r2
0043b644  14 10 8d e5                                      str r1, [sp, #0x14]
0043b648  02 b0 a0 e1                                      mov fp, r2
0043b64c  44 30 8d e5                                      str r3, [sp, #0x44]
0043b650  00 60 a0 e1                                      mov r6, r0
0043b654  1c 00 00 aa                                      bge #0x43b6cc
0043b658  14 90 9d e5                                      ldr sb, [sp, #0x14]
0043b65c  50 10 8d e2                                      add r1, sp, #0x50
0043b660  10 10 8d e5                                      str r1, [sp, #0x10]
0043b664  0c 70 a0 e3                                      mov r7, #0xc
0043b668  01 a0 44 e2                                      sub sl, r4, #1
0043b66c  97 64 25 e0                                      mla r5, r7, r4, r6
0043b670  97 6a 28 e0                                      mla r8, r7, sl, r6
0043b674  05 10 a0 e1                                      mov r1, r5
0043b678  08 20 a0 e1                                      mov r2, r8
0043b67c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0043b680  d2 07 ff eb                                      bl #0x3fd5d0
0043b684  00 00 50 e3                                      cmp r0, #0
0043b688  08 50 a0 11                                      movne r5, r8
0043b68c  05 30 a0 e1                                      mov r3, r5
0043b690  04 10 93 e4                                      ldr r1, [r3], #4
0043b694  97 09 09 e0                                      mul sb, r7, sb
0043b698  04 a0 a0 01                                      moveq sl, r4
0043b69c  09 10 86 e7                                      str r1, [r6, sb]
0043b6a0  04 10 95 e5                                      ldr r1, [r5, #4]
0043b6a4  09 20 86 e0                                      add r2, r6, sb
0043b6a8  01 40 8a e2                                      add r4, sl, #1
0043b6ac  04 10 82 e5                                      str r1, [r2, #4]
0043b6b0  04 30 93 e5                                      ldr r3, [r3, #4]
0043b6b4  84 40 a0 e1                                      lsl r4, r4, #1
0043b6b8  04 00 5b e1                                      cmp fp, r4
0043b6bc  0a 90 a0 e1                                      mov sb, sl
0043b6c0  08 30 82 e5                                      str r3, [r2, #8]
0043b6c4  e7 ff ff ca                                      bgt #0x43b668
0043b6c8  0a 10 a0 e1                                      mov r1, sl
0043b6cc  0b 00 54 e1                                      cmp r4, fp
0043b6d0  0c 00 00 1a                                      bne #0x43b708
0043b6d4  0c 30 a0 e3                                      mov r3, #0xc
0043b6d8  01 40 44 e2                                      sub r4, r4, #1
0043b6dc  93 04 02 e0                                      mul r2, r3, r4
0043b6e0  93 01 01 e0                                      mul r1, r3, r1
0043b6e4  02 00 96 e7                                      ldr r0, [r6, r2]
0043b6e8  02 20 86 e0                                      add r2, r6, r2
0043b6ec  01 30 86 e0                                      add r3, r6, r1
0043b6f0  01 00 86 e7                                      str r0, [r6, r1]
0043b6f4  04 00 92 e5                                      ldr r0, [r2, #4]
0043b6f8  04 10 a0 e1                                      mov r1, r4
0043b6fc  04 00 83 e5                                      str r0, [r3, #4]
0043b700  08 20 92 e5                                      ldr r2, [r2, #8]
0043b704  08 20 83 e5                                      str r2, [r3, #8]
0043b708  50 c0 9d e5                                      ldr ip, [sp, #0x50]
0043b70c  06 00 a0 e1                                      mov r0, r6
0043b710  14 20 9d e5                                      ldr r2, [sp, #0x14]
0043b714  08 c0 8d e5                                      str ip, [sp, #8]
0043b718  54 c0 9d e5                                      ldr ip, [sp, #0x54]
0043b71c  44 30 9d e5                                      ldr r3, [sp, #0x44]
0043b720  0c c0 8d e5                                      str ip, [sp, #0xc]
0043b724  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0043b728  00 c0 8d e5                                      str ip, [sp]
0043b72c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0043b730  04 c0 8d e5                                      str ip, [sp, #4]
0043b734  81 ff ff eb                                      bl #0x43b540
0043b738  1c d0 8d e2                                      add sp, sp, #0x1c
0043b73c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043b740  08 d0 8d e2                                      add sp, sp, #8
0043b744  1e ff 2f e1                                      bx lr

; FUNCTION 0x0043b748, declared_size=196, range_size=196, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPN13ItemInventory4ItemE18SortByEquipabilityS1_iEvT_S4_T0_PT1_PT2_
; demangled: void std::__make_heap<ItemInventory::Item*, SortByEquipability, ItemInventory::Item, int>(ItemInventory::Item*, ItemInventory::Item*, SortByEquipability, ItemInventory::Item*, int*)
; decoder-mode: arm
0043b748  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043b74c  01 10 60 e0                                      rsb r1, r0, r1
0043b750  2c d0 4d e2                                      sub sp, sp, #0x2c
0043b754  17 00 51 e3                                      cmp r1, #0x17
0043b758  00 70 a0 e1                                      mov r7, r0
0043b75c  10 20 8d e5                                      str r2, [sp, #0x10]
0043b760  14 30 8d e5                                      str r3, [sp, #0x14]
0043b764  26 00 00 da                                      ble #0x43b804
0043b768  41 11 a0 e1                                      asr r1, r1, #2
0043b76c  1c 80 8d e2                                      add r8, sp, #0x1c
0043b770  01 91 81 e0                                      add sb, r1, r1, lsl #2
0043b774  04 a0 88 e2                                      add sl, r8, #4
0043b778  09 92 89 e0                                      add sb, sb, sb, lsl #4
0043b77c  0c 60 a0 e3                                      mov r6, #0xc
0043b780  09 94 89 e0                                      add sb, sb, sb, lsl #8
0043b784  00 40 a0 e3                                      mov r4, #0
0043b788  09 98 89 e0                                      add sb, sb, sb, lsl #16
0043b78c  04 b0 8a e2                                      add fp, sl, #4
0043b790  89 90 81 e0                                      add sb, r1, sb, lsl #1
0043b794  02 50 49 e2                                      sub r5, sb, #2
0043b798  c5 50 a0 e1                                      asr r5, r5, #1
0043b79c  96 05 26 e0                                      mla r6, r6, r5, r0
0043b7a0  00 00 00 ea                                      b #0x43b7a8
0043b7a4  01 50 45 e2                                      sub r5, r5, #1
0043b7a8  04 20 96 e7                                      ldr r2, [r6, r4]
0043b7ac  04 30 86 e0                                      add r3, r6, r4
0043b7b0  04 30 83 e2                                      add r3, r3, #4
0043b7b4  00 20 88 e5                                      str r2, [r8]
0043b7b8  04 20 93 e4                                      ldr r2, [r3], #4
0043b7bc  05 10 a0 e1                                      mov r1, r5
0043b7c0  07 00 a0 e1                                      mov r0, r7
0043b7c4  00 20 8a e5                                      str r2, [sl]
0043b7c8  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0043b7cc  00 c0 93 e5                                      ldr ip, [r3]
0043b7d0  09 20 a0 e1                                      mov r2, sb
0043b7d4  08 e0 8d e5                                      str lr, [sp, #8]
0043b7d8  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0043b7dc  04 c0 8d e5                                      str ip, [sp, #4]
0043b7e0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0043b7e4  0c e0 8d e5                                      str lr, [sp, #0xc]
0043b7e8  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0043b7ec  0c 40 44 e2                                      sub r4, r4, #0xc
0043b7f0  00 e0 8d e5                                      str lr, [sp]
0043b7f4  00 c0 8b e5                                      str ip, [fp]
0043b7f8  8b ff ff eb                                      bl #0x43b62c
0043b7fc  00 00 55 e3                                      cmp r5, #0
0043b800  e7 ff ff 1a                                      bne #0x43b7a4
0043b804  2c d0 8d e2                                      add sp, sp, #0x2c
0043b808  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0043b80c, declared_size=132, range_size=132, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN13ItemInventory4ItemES1_18SortByEquipabilityiEvT_S4_S4_T0_T1_PT2_
; demangled: void std::__pop_heap<ItemInventory::Item*, ItemInventory::Item, SortByEquipability, int>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item, SortByEquipability, int*)
; decoder-mode: arm
0043b80c  08 d0 4d e2                                      sub sp, sp, #8
0043b810  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0043b814  00 c0 a0 e1                                      mov ip, r0
0043b818  04 40 9c e4                                      ldr r4, [ip], #4
0043b81c  01 10 60 e0                                      rsb r1, r0, r1
0043b820  41 11 a0 e1                                      asr r1, r1, #2
0043b824  02 60 a0 e1                                      mov r6, r2
0043b828  04 40 86 e4                                      str r4, [r6], #4
0043b82c  01 41 81 e0                                      add r4, r1, r1, lsl #2
0043b830  04 70 90 e5                                      ldr r7, [r0, #4]
0043b834  04 e2 84 e0                                      add lr, r4, r4, lsl #4
0043b838  14 d0 4d e2                                      sub sp, sp, #0x14
0043b83c  38 50 9d e5                                      ldr r5, [sp, #0x38]
0043b840  04 70 82 e5                                      str r7, [r2, #4]
0043b844  0e 24 8e e0                                      add r2, lr, lr, lsl #8
0043b848  04 70 9c e5                                      ldr r7, [ip, #4]
0043b84c  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
0043b850  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0043b854  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0043b858  02 28 82 e0                                      add r2, r2, r2, lsl #16
0043b85c  04 70 86 e5                                      str r7, [r6, #4]
0043b860  82 20 81 e0                                      add r2, r1, r2, lsl #1
0043b864  00 10 a0 e3                                      mov r1, #0
0043b868  08 50 8d e5                                      str r5, [sp, #8]
0043b86c  0c 40 8d e5                                      str r4, [sp, #0xc]
0043b870  00 e0 8d e5                                      str lr, [sp]
0043b874  04 c0 8d e5                                      str ip, [sp, #4]
0043b878  2c 30 8d e5                                      str r3, [sp, #0x2c]
0043b87c  6a ff ff eb                                      bl #0x43b62c
0043b880  14 d0 8d e2                                      add sp, sp, #0x14
0043b884  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
0043b888  08 d0 8d e2                                      add sp, sp, #8
0043b88c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0043b890, declared_size=164, range_size=164, mode=arm
; class-group: void std
; alias: _ZSt9sort_heapIPN13ItemInventory4ItemE18SortByEquipabilityEvT_S4_T0_
; demangled: void std::sort_heap<ItemInventory::Item*, SortByEquipability>(ItemInventory::Item*, ItemInventory::Item*, SortByEquipability)
; decoder-mode: arm
0043b890  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043b894  01 50 60 e0                                      rsb r5, r0, r1
0043b898  3c d0 4d e2                                      sub sp, sp, #0x3c
0043b89c  17 00 55 e3                                      cmp r5, #0x17
0043b8a0  00 80 a0 e1                                      mov r8, r0
0043b8a4  01 40 a0 e1                                      mov r4, r1
0043b8a8  18 20 8d e5                                      str r2, [sp, #0x18]
0043b8ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
0043b8b0  02 70 a0 e1                                      mov r7, r2
0043b8b4  03 60 a0 e1                                      mov r6, r3
0043b8b8  1b 00 00 da                                      ble #0x43b92c
0043b8bc  24 a0 8d e2                                      add sl, sp, #0x24
0043b8c0  04 90 8a e2                                      add sb, sl, #4
0043b8c4  04 b0 89 e2                                      add fp, sb, #4
0043b8c8  0c 40 44 e2                                      sub r4, r4, #0xc
0043b8cc  04 10 94 e5                                      ldr r1, [r4, #4]
0043b8d0  04 30 a0 e1                                      mov r3, r4
0043b8d4  04 20 93 e4                                      ldr r2, [r3], #4
0043b8d8  00 10 89 e5                                      str r1, [sb]
0043b8dc  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0043b8e0  04 c0 93 e5                                      ldr ip, [r3, #4]
0043b8e4  00 20 8a e5                                      str r2, [sl]
0043b8e8  0c 50 45 e2                                      sub r5, r5, #0xc
0043b8ec  04 c0 8d e5                                      str ip, [sp, #4]
0043b8f0  00 e0 8d e5                                      str lr, [sp]
0043b8f4  34 60 8d e5                                      str r6, [sp, #0x34]
0043b8f8  30 70 8d e5                                      str r7, [sp, #0x30]
0043b8fc  24 30 9d e5                                      ldr r3, [sp, #0x24]
0043b900  00 c0 8b e5                                      str ip, [fp]
0043b904  08 00 a0 e1                                      mov r0, r8
0043b908  00 c0 a0 e3                                      mov ip, #0
0043b90c  04 10 a0 e1                                      mov r1, r4
0043b910  04 20 a0 e1                                      mov r2, r4
0043b914  08 70 8d e5                                      str r7, [sp, #8]
0043b918  0c 60 8d e5                                      str r6, [sp, #0xc]
0043b91c  10 c0 8d e5                                      str ip, [sp, #0x10]
0043b920  b9 ff ff eb                                      bl #0x43b80c
0043b924  17 00 55 e3                                      cmp r5, #0x17
0043b928  e6 ff ff ca                                      bgt #0x43b8c8
0043b92c  3c d0 8d e2                                      add sp, sp, #0x3c
0043b930  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0043bff4, declared_size=164, range_size=164, mode=arm
; class-group: void std
; alias: _ZSt4sortIPN13ItemInventory4ItemE18SortByEquipabilityEvT_S4_T0_
; demangled: void std::sort<ItemInventory::Item*, SortByEquipability>(ItemInventory::Item*, ItemInventory::Item*, SortByEquipability)
; decoder-mode: arm
0043bff4  30 40 2d e9                                      push {r4, r5, lr}
0043bff8  01 00 50 e1                                      cmp r0, r1
0043bffc  14 d0 4d e2                                      sub sp, sp, #0x14
0043c000  00 50 a0 e1                                      mov r5, r0
0043c004  01 40 a0 e1                                      mov r4, r1
0043c008  08 20 8d e5                                      str r2, [sp, #8]
0043c00c  0c 30 8d e5                                      str r3, [sp, #0xc]
0043c010  1e 00 00 0a                                      beq #0x43c090
0043c014  01 30 60 e0                                      rsb r3, r0, r1
0043c018  43 31 a0 e1                                      asr r3, r3, #2
0043c01c  03 21 83 e0                                      add r2, r3, r3, lsl #2
0043c020  02 22 82 e0                                      add r2, r2, r2, lsl #4
0043c024  02 24 82 e0                                      add r2, r2, r2, lsl #8
0043c028  02 28 82 e0                                      add r2, r2, r2, lsl #16
0043c02c  82 20 83 e0                                      add r2, r3, r2, lsl #1
0043c030  01 00 52 e3                                      cmp r2, #1
0043c034  00 30 a0 03                                      moveq r3, #0
0043c038  05 00 00 0a                                      beq #0x43c054
0043c03c  00 30 a0 e3                                      mov r3, #0
0043c040  c2 20 a0 e1                                      asr r2, r2, #1
0043c044  01 00 52 e3                                      cmp r2, #1
0043c048  01 30 83 e2                                      add r3, r3, #1
0043c04c  fb ff ff 1a                                      bne #0x43c040
0043c050  83 30 a0 e1                                      lsl r3, r3, #1
0043c054  08 c0 9d e5                                      ldr ip, [sp, #8]
0043c058  05 00 a0 e1                                      mov r0, r5
0043c05c  04 10 a0 e1                                      mov r1, r4
0043c060  00 c0 8d e5                                      str ip, [sp]
0043c064  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0043c068  00 20 a0 e3                                      mov r2, #0
0043c06c  04 c0 8d e5                                      str ip, [sp, #4]
0043c070  cb fe ff eb                                      bl #0x43bba4
0043c074  08 20 9d e5                                      ldr r2, [sp, #8]
0043c078  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0043c07c  05 00 a0 e1                                      mov r0, r5
0043c080  04 10 a0 e1                                      mov r1, r4
0043c084  14 d0 8d e2                                      add sp, sp, #0x14
0043c088  30 40 bd e8                                      pop {r4, r5, lr}
0043c08c  9e ff ff ea                                      b #0x43bf0c
0043c090  14 d0 8d e2                                      add sp, sp, #0x14
0043c094  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0043c5cc, declared_size=472, range_size=472, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPN13ItemInventory4ItemEiS1_PFbRKS1_S4_EEvT_T0_S8_T1_T2_.clone.47
; demangled: void std::__adjust_heap<ItemInventory::Item*, int, ItemInventory::Item, bool (*)(ItemInventory::Item const&, ItemInventory::Item const&)>(ItemInventory::Item*, int, int, ItemInventory::Item, bool (*)(ItemInventory::Item const&, ItemInventory::Item const&)) [clone .clone.47]
; decoder-mode: arm
0043c5cc  08 d0 4d e2                                      sub sp, sp, #8
0043c5d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043c5d4  2c d0 4d e2                                      sub sp, sp, #0x2c
0043c5d8  01 50 81 e2                                      add r5, r1, #1
0043c5dc  04 10 8d e5                                      str r1, [sp, #4]
0043c5e0  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
0043c5e4  54 30 8d e5                                      str r3, [sp, #0x54]
0043c5e8  14 30 8d e5                                      str r3, [sp, #0x14]
0043c5ec  08 10 8d e5                                      str r1, [sp, #8]
0043c5f0  59 30 dd e5                                      ldrb r3, [sp, #0x59]
0043c5f4  58 10 dd e5                                      ldrb r1, [sp, #0x58]
0043c5f8  85 50 a0 e1                                      lsl r5, r5, #1
0043c5fc  02 00 55 e1                                      cmp r5, r2
0043c600  02 60 a0 e1                                      mov r6, r2
0043c604  00 40 a0 e1                                      mov r4, r0
0043c608  0c 30 8d e5                                      str r3, [sp, #0xc]
0043c60c  10 10 8d e5                                      str r1, [sp, #0x10]
0043c610  5e 00 00 aa                                      bge #0x43c790
0043c614  04 b0 9d e5                                      ldr fp, [sp, #4]
0043c618  0c a0 a0 e3                                      mov sl, #0xc
0043c61c  01 80 45 e2                                      sub r8, r5, #1
0043c620  9a 45 27 e0                                      mla r7, sl, r5, r4
0043c624  9a 48 29 e0                                      mla sb, sl, r8, r4
0043c628  07 00 a0 e1                                      mov r0, r7
0043c62c  09 10 a0 e1                                      mov r1, sb
0043c630  f0 04 ff eb                                      bl #0x3fd9f8
0043c634  00 00 50 e3                                      cmp r0, #0
0043c638  09 70 a0 11                                      movne r7, sb
0043c63c  07 30 a0 e1                                      mov r3, r7
0043c640  04 10 93 e4                                      ldr r1, [r3], #4
0043c644  9a 0b 0b e0                                      mul fp, sl, fp
0043c648  05 80 a0 01                                      moveq r8, r5
0043c64c  0b 10 84 e7                                      str r1, [r4, fp]
0043c650  04 10 97 e5                                      ldr r1, [r7, #4]
0043c654  0b 20 84 e0                                      add r2, r4, fp
0043c658  01 50 88 e2                                      add r5, r8, #1
0043c65c  04 10 82 e5                                      str r1, [r2, #4]
0043c660  04 30 93 e5                                      ldr r3, [r3, #4]
0043c664  85 50 a0 e1                                      lsl r5, r5, #1
0043c668  06 00 55 e1                                      cmp r5, r6
0043c66c  08 b0 a0 e1                                      mov fp, r8
0043c670  08 30 82 e5                                      str r3, [r2, #8]
0043c674  e8 ff ff ba                                      blt #0x43c61c
0043c678  06 00 55 e1                                      cmp r5, r6
0043c67c  0b 00 00 1a                                      bne #0x43c6b0
0043c680  01 80 45 e2                                      sub r8, r5, #1
0043c684  0c 20 a0 e3                                      mov r2, #0xc
0043c688  92 08 02 e0                                      mul r2, r2, r8
0043c68c  07 30 a0 e1                                      mov r3, r7
0043c690  02 10 94 e7                                      ldr r1, [r4, r2]
0043c694  02 20 84 e0                                      add r2, r4, r2
0043c698  04 10 83 e4                                      str r1, [r3], #4
0043c69c  04 10 92 e5                                      ldr r1, [r2, #4]
0043c6a0  04 10 87 e5                                      str r1, [r7, #4]
0043c6a4  08 10 92 e5                                      ldr r1, [r2, #8]
0043c6a8  02 70 a0 e1                                      mov r7, r2
0043c6ac  04 10 83 e5                                      str r1, [r3, #4]
0043c6b0  0a 00 9d e9                                      ldmib sp, {r1, r3}
0043c6b4  08 00 51 e1                                      cmp r1, r8
0043c6b8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0043c6bc  24 30 8d e5                                      str r3, [sp, #0x24]
0043c6c0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0043c6c4  21 10 cd e5                                      strb r1, [sp, #0x21]
0043c6c8  14 10 9d e5                                      ldr r1, [sp, #0x14]
0043c6cc  20 30 cd e5                                      strb r3, [sp, #0x20]
0043c6d0  1c 50 8d a2                                      addge r5, sp, #0x1c
0043c6d4  1c 10 8d e5                                      str r1, [sp, #0x1c]
0043c6d8  04 30 87 a2                                      addge r3, r7, #4
0043c6dc  0a 00 00 ba                                      blt #0x43c70c
0043c6e0  04 50 85 e2                                      add r5, r5, #4
0043c6e4  04 00 95 e4                                      ldr r0, [r5], #4
0043c6e8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0043c6ec  00 20 95 e5                                      ldr r2, [r5]
0043c6f0  04 00 87 e5                                      str r0, [r7, #4]
0043c6f4  00 10 87 e5                                      str r1, [r7]
0043c6f8  04 20 83 e5                                      str r2, [r3, #4]
0043c6fc  2c d0 8d e2                                      add sp, sp, #0x2c
0043c700  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043c704  08 d0 8d e2                                      add sp, sp, #8
0043c708  1e ff 2f e1                                      bx lr
0043c70c  01 90 48 e2                                      sub sb, r8, #1
0043c710  a9 9f 89 e0                                      add sb, sb, sb, lsr #31
0043c714  04 b0 9d e5                                      ldr fp, [sp, #4]
0043c718  1c 50 8d e2                                      add r5, sp, #0x1c
0043c71c  c9 90 a0 e1                                      asr sb, sb, #1
0043c720  0c a0 a0 e3                                      mov sl, #0xc
0043c724  9a 09 06 e0                                      mul r6, sl, sb
0043c728  05 10 a0 e1                                      mov r1, r5
0043c72c  06 70 84 e0                                      add r7, r4, r6
0043c730  07 00 a0 e1                                      mov r0, r7
0043c734  af 04 ff eb                                      bl #0x3fd9f8
0043c738  9a 08 02 e0                                      mul r2, sl, r8
0043c73c  00 00 50 e3                                      cmp r0, #0
0043c740  04 30 87 e2                                      add r3, r7, #4
0043c744  02 10 84 e0                                      add r1, r4, r2
0043c748  03 00 00 1a                                      bne #0x43c75c
0043c74c  0c 70 a0 e3                                      mov r7, #0xc
0043c750  97 48 27 e0                                      mla r7, r7, r8, r4
0043c754  04 30 87 e2                                      add r3, r7, #4
0043c758  e0 ff ff ea                                      b #0x43c6e0
0043c75c  06 00 94 e7                                      ldr r0, [r4, r6]
0043c760  09 00 5b e1                                      cmp fp, sb
0043c764  02 00 84 e7                                      str r0, [r4, r2]
0043c768  04 20 97 e5                                      ldr r2, [r7, #4]
0043c76c  04 20 81 e5                                      str r2, [r1, #4]
0043c770  04 20 93 e5                                      ldr r2, [r3, #4]
0043c774  08 20 81 e5                                      str r2, [r1, #8]
0043c778  d8 ff ff aa                                      bge #0x43c6e0
0043c77c  01 30 49 e2                                      sub r3, sb, #1
0043c780  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0043c784  09 80 a0 e1                                      mov r8, sb
0043c788  c3 90 a0 e1                                      asr sb, r3, #1
0043c78c  e4 ff ff ea                                      b #0x43c724
0043c790  04 30 9d e5                                      ldr r3, [sp, #4]
0043c794  0c 70 a0 e3                                      mov r7, #0xc
0043c798  97 03 27 e0                                      mla r7, r7, r3, r0
0043c79c  03 80 a0 e1                                      mov r8, r3
0043c7a0  b4 ff ff ea                                      b #0x43c678

; FUNCTION 0x0043c7a4, declared_size=116, range_size=116, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN13ItemInventory4ItemES1_PFbRKS1_S4_EiEvT_S7_S7_T0_T1_PT2_.clone.45
; demangled: void std::__pop_heap<ItemInventory::Item*, ItemInventory::Item, bool (*)(ItemInventory::Item const&, ItemInventory::Item const&), int>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item, bool (*)(ItemInventory::Item const&, ItemInventory::Item const&), int*) [clone .clone.45]
; decoder-mode: arm
0043c7a4  08 d0 4d e2                                      sub sp, sp, #8
0043c7a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0043c7ac  00 c0 a0 e1                                      mov ip, r0
0043c7b0  04 40 9c e4                                      ldr r4, [ip], #4
0043c7b4  01 10 60 e0                                      rsb r1, r0, r1
0043c7b8  41 11 a0 e1                                      asr r1, r1, #2
0043c7bc  02 50 a0 e1                                      mov r5, r2
0043c7c0  04 40 85 e4                                      str r4, [r5], #4
0043c7c4  01 41 81 e0                                      add r4, r1, r1, lsl #2
0043c7c8  04 60 90 e5                                      ldr r6, [r0, #4]
0043c7cc  04 42 84 e0                                      add r4, r4, r4, lsl #4
0043c7d0  08 d0 4d e2                                      sub sp, sp, #8
0043c7d4  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0043c7d8  04 60 82 e5                                      str r6, [r2, #4]
0043c7dc  04 24 84 e0                                      add r2, r4, r4, lsl #8
0043c7e0  04 40 9c e5                                      ldr r4, [ip, #4]
0043c7e4  02 28 82 e0                                      add r2, r2, r2, lsl #16
0043c7e8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0043c7ec  82 20 81 e0                                      add r2, r1, r2, lsl #1
0043c7f0  04 40 85 e5                                      str r4, [r5, #4]
0043c7f4  00 10 a0 e3                                      mov r1, #0
0043c7f8  00 e0 8d e5                                      str lr, [sp]
0043c7fc  04 c0 8d e5                                      str ip, [sp, #4]
0043c800  1c 30 8d e5                                      str r3, [sp, #0x1c]
0043c804  70 ff ff eb                                      bl #0x43c5cc
0043c808  08 d0 8d e2                                      add sp, sp, #8
0043c80c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0043c810  08 d0 8d e2                                      add sp, sp, #8
0043c814  1e ff 2f e1                                      bx lr

; FUNCTION 0x0043f920, declared_size=52, range_size=52, mode=arm
; class-group: void std
; alias: _ZSt15__destroy_rangeISt16reverse_iteratorIP9tRoomInfoES1_EvT_S4_PT0_.clone.23
; demangled: void std::__destroy_range<std::reverse_iterator<tRoomInfo*>, tRoomInfo>(std::reverse_iterator<tRoomInfo*>, std::reverse_iterator<tRoomInfo*>, tRoomInfo*) [clone .clone.23]
; decoder-mode: arm
0043f920  70 40 2d e9                                      push {r4, r5, r6, lr}
0043f924  00 50 91 e5                                      ldr r5, [r1]
0043f928  00 40 90 e5                                      ldr r4, [r0]
0043f92c  05 00 54 e1                                      cmp r4, r5
0043f930  06 00 00 0a                                      beq #0x43f950
0043f934  f2 4f 44 e2                                      sub r4, r4, #0x3c8
0043f938  28 00 84 e2                                      add r0, r4, #0x28
0043f93c  b4 64 0f eb                                      bl #0x818c14
0043f940  08 00 84 e2                                      add r0, r4, #8
0043f944  18 50 fb eb                                      bl #0x3139ac
0043f948  04 00 55 e1                                      cmp r5, r4
0043f94c  f8 ff ff 1a                                      bne #0x43f934
0043f950  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00463aec, declared_size=272, range_size=272, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPSsiSsSt4lessISsEEvT_T0_S4_T1_T2_
; demangled: void std::__push_heap<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, int, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
00463aec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00463af0  02 00 51 e1                                      cmp r1, r2
00463af4  01 60 41 c2                                      subgt r6, r1, #1
00463af8  a6 6f 86 c0                                      addgt r6, r6, r6, lsr #31
00463afc  0c d0 4d e2                                      sub sp, sp, #0xc
00463b00  01 90 a0 e1                                      mov sb, r1
00463b04  02 40 a0 e1                                      mov r4, r2
00463b08  04 00 8d e5                                      str r0, [sp, #4]
00463b0c  03 70 a0 e1                                      mov r7, r3
00463b10  c6 60 a0 c1                                      asrgt r6, r6, #1
00463b14  19 00 00 ca                                      bgt #0x463b80
00463b18  04 20 9d e5                                      ldr r2, [sp, #4]
00463b1c  18 50 a0 e3                                      mov r5, #0x18
00463b20  95 21 25 e0                                      mla r5, r5, r1, r2
00463b24  05 00 57 e1                                      cmp r7, r5
00463b28  2e 00 00 0a                                      beq #0x463be8
00463b2c  10 20 97 e5                                      ldr r2, [r7, #0x10]
00463b30  14 10 97 e5                                      ldr r1, [r7, #0x14]
00463b34  05 00 a0 e1                                      mov r0, r5
00463b38  0c d0 8d e2                                      add sp, sp, #0xc
00463b3c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00463b40  a6 b3 fa ea                                      b #0x3109e0
00463b44  29 00 00 aa                                      bge #0x463bf0
00463b48  04 10 9d e5                                      ldr r1, [sp, #4]
00463b4c  18 20 a0 e3                                      mov r2, #0x18
00463b50  92 19 20 e0                                      mla r0, r2, sb, r1
00463b54  08 10 a0 e1                                      mov r1, r8
00463b58  00 00 55 e1                                      cmp r5, r0
00463b5c  03 20 a0 e1                                      mov r2, r3
00463b60  00 00 00 0a                                      beq #0x463b68
00463b64  9d b3 fa eb                                      bl #0x3109e0
00463b68  06 00 54 e1                                      cmp r4, r6
00463b6c  ec ff ff aa                                      bge #0x463b24
00463b70  01 30 46 e2                                      sub r3, r6, #1
00463b74  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
00463b78  06 90 a0 e1                                      mov sb, r6
00463b7c  c3 60 a0 e1                                      asr r6, r3, #1
00463b80  04 20 9d e5                                      ldr r2, [sp, #4]
00463b84  18 10 a0 e3                                      mov r1, #0x18
00463b88  10 b0 97 e5                                      ldr fp, [r7, #0x10]
00463b8c  91 26 25 e0                                      mla r5, r1, r6, r2
00463b90  14 20 97 e5                                      ldr r2, [r7, #0x14]
00463b94  10 30 95 e5                                      ldr r3, [r5, #0x10]
00463b98  14 80 95 e5                                      ldr r8, [r5, #0x14]
00463b9c  0b b0 62 e0                                      rsb fp, r2, fp
00463ba0  02 10 a0 e1                                      mov r1, r2
00463ba4  03 a0 68 e0                                      rsb sl, r8, r3
00463ba8  0a 00 5b e1                                      cmp fp, sl
00463bac  0b 20 a0 b1                                      movlt r2, fp
00463bb0  0a 20 a0 a1                                      movge r2, sl
00463bb4  08 00 a0 e1                                      mov r0, r8
00463bb8  00 30 8d e5                                      str r3, [sp]
00463bbc  87 aa fa eb                                      bl #0x30e5e0
00463bc0  00 00 50 e3                                      cmp r0, #0
00463bc4  18 20 a0 e3                                      mov r2, #0x18
00463bc8  00 30 9d e5                                      ldr r3, [sp]
00463bcc  dc ff ff 1a                                      bne #0x463b44
00463bd0  0b 00 5a e1                                      cmp sl, fp
00463bd4  db ff ff ba                                      blt #0x463b48
00463bd8  04 30 9d e5                                      ldr r3, [sp, #4]
00463bdc  92 39 25 e0                                      mla r5, r2, sb, r3
00463be0  05 00 57 e1                                      cmp r7, r5
00463be4  d0 ff ff 1a                                      bne #0x463b2c
00463be8  0c d0 8d e2                                      add sp, sp, #0xc
00463bec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00463bf0  04 10 9d e5                                      ldr r1, [sp, #4]
00463bf4  92 19 25 e0                                      mla r5, r2, sb, r1
00463bf8  c9 ff ff ea                                      b #0x463b24

; FUNCTION 0x004642d8, declared_size=384, range_size=384, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPSsiSsSt4lessISsEEvT_T0_S4_T1_T2_
; demangled: void std::__adjust_heap<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, int, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
004642d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004642dc  6c c1 9f e5                                      ldr ip, [pc, #0x16c]
004642e0  6c e1 9f e5                                      ldr lr, [pc, #0x16c]
004642e4  44 d0 4d e2                                      sub sp, sp, #0x44
004642e8  0c c0 8f e0                                      add ip, pc, ip
004642ec  14 10 8d e5                                      str r1, [sp, #0x14]
004642f0  10 c0 8d e5                                      str ip, [sp, #0x10]
004642f4  0e 10 9c e7                                      ldr r1, [ip, lr]
004642f8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
004642fc  0c 20 8d e5                                      str r2, [sp, #0xc]
00464300  18 e0 8d e5                                      str lr, [sp, #0x18]
00464304  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00464308  01 40 8c e2                                      add r4, ip, #1
0046430c  00 20 91 e5                                      ldr r2, [r1]
00464310  84 40 a0 e1                                      lsl r4, r4, #1
00464314  0e 00 54 e1                                      cmp r4, lr
00464318  3c 20 8d e5                                      str r2, [sp, #0x3c]
0046431c  00 50 a0 e1                                      mov r5, r0
00464320  1c 30 8d e5                                      str r3, [sp, #0x1c]
00464324  0c 90 a0 a1                                      movge sb, ip
00464328  20 00 00 aa                                      bge #0x4643b0
0046432c  14 b0 9d e5                                      ldr fp, [sp, #0x14]
00464330  18 70 a0 e3                                      mov r7, #0x18
00464334  01 90 44 e2                                      sub sb, r4, #1
00464338  97 59 22 e0                                      mla r2, r7, sb, r5
0046433c  97 54 26 e0                                      mla r6, r7, r4, r5
00464340  14 10 92 e5                                      ldr r1, [r2, #0x14]
00464344  14 30 96 e5                                      ldr r3, [r6, #0x14]
00464348  10 80 92 e5                                      ldr r8, [r2, #0x10]
0046434c  10 a0 96 e5                                      ldr sl, [r6, #0x10]
00464350  03 00 a0 e1                                      mov r0, r3
00464354  08 80 61 e0                                      rsb r8, r1, r8
00464358  0a a0 63 e0                                      rsb sl, r3, sl
0046435c  0a 00 58 e1                                      cmp r8, sl
00464360  08 20 a0 b1                                      movlt r2, r8
00464364  0a 20 a0 a1                                      movge r2, sl
00464368  9c a8 fa eb                                      bl #0x30e5e0
0046436c  00 00 50 e3                                      cmp r0, #0
00464370  27 00 00 1a                                      bne #0x464414
00464374  08 00 5a e1                                      cmp sl, r8
00464378  26 00 00 ba                                      blt #0x464418
0046437c  04 90 a0 e1                                      mov sb, r4
00464380  97 5b 20 e0                                      mla r0, r7, fp, r5
00464384  06 00 50 e1                                      cmp r0, r6
00464388  02 00 00 0a                                      beq #0x464398
0046438c  10 20 96 e5                                      ldr r2, [r6, #0x10]
00464390  14 10 96 e5                                      ldr r1, [r6, #0x14]
00464394  91 b1 fa eb                                      bl #0x3109e0
00464398  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0046439c  01 40 89 e2                                      add r4, sb, #1
004643a0  84 40 a0 e1                                      lsl r4, r4, #1
004643a4  04 00 51 e1                                      cmp r1, r4
004643a8  09 b0 a0 e1                                      mov fp, sb
004643ac  e0 ff ff ca                                      bgt #0x464334
004643b0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004643b4  02 00 54 e1                                      cmp r4, r2
004643b8  18 00 00 0a                                      beq #0x464420
004643bc  24 40 8d e2                                      add r4, sp, #0x24
004643c0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
004643c4  04 00 a0 e1                                      mov r0, r4
004643c8  52 1d fb eb                                      bl #0x32b918
004643cc  20 c0 8d e2                                      add ip, sp, #0x20
004643d0  09 10 a0 e1                                      mov r1, sb
004643d4  14 20 9d e5                                      ldr r2, [sp, #0x14]
004643d8  04 30 a0 e1                                      mov r3, r4
004643dc  05 00 a0 e1                                      mov r0, r5
004643e0  00 c0 8d e5                                      str ip, [sp]
004643e4  c0 fd ff eb                                      bl #0x463aec
004643e8  04 00 a0 e1                                      mov r0, r4
004643ec  6e bd fa eb                                      bl #0x3139ac
004643f0  10 10 9d e5                                      ldr r1, [sp, #0x10]
004643f4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
004643f8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
004643fc  0c 30 91 e7                                      ldr r3, [r1, ip]
00464400  00 30 93 e5                                      ldr r3, [r3]
00464404  03 00 52 e1                                      cmp r2, r3
00464408  0f 00 00 1a                                      bne #0x46444c
0046440c  44 d0 8d e2                                      add sp, sp, #0x44
00464410  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00464414  d8 ff ff aa                                      bge #0x46437c
00464418  97 59 26 e0                                      mla r6, r7, sb, r5
0046441c  d7 ff ff ea                                      b #0x464380
00464420  18 30 a0 e3                                      mov r3, #0x18
00464424  01 40 44 e2                                      sub r4, r4, #1
00464428  93 59 20 e0                                      mla r0, r3, sb, r5
0046442c  93 54 23 e0                                      mla r3, r3, r4, r5
00464430  03 00 50 e1                                      cmp r0, r3
00464434  02 00 00 0a                                      beq #0x464444
00464438  10 20 93 e5                                      ldr r2, [r3, #0x10]
0046443c  14 10 93 e5                                      ldr r1, [r3, #0x14]
00464440  66 b1 fa eb                                      bl #0x3109e0
00464444  04 90 a0 e1                                      mov sb, r4
00464448  db ff ff ea                                      b #0x4643bc
0046444c  af a7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00464450  a8 07 53 00 ac 40 00 00                          .byte 0xa8, 0x07, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00464458, declared_size=200, range_size=200, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPSsSt4lessISsESsiEvT_S3_T0_PT1_PT2_
; demangled: void std::__make_heap<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, int*)
; decoder-mode: arm
00464458  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046445c  b4 90 9f e5                                      ldr sb, [pc, #0xb4]
00464460  b4 b0 9f e5                                      ldr fp, [pc, #0xb4]
00464464  01 10 60 e0                                      rsb r1, r0, r1
00464468  09 90 8f e0                                      add sb, pc, sb
0046446c  0b 30 99 e7                                      ldr r3, [sb, fp]
00464470  2c d0 4d e2                                      sub sp, sp, #0x2c
00464474  2f 00 51 e3                                      cmp r1, #0x2f
00464478  00 30 93 e5                                      ldr r3, [r3]
0046447c  00 70 a0 e1                                      mov r7, r0
00464480  24 30 8d e5                                      str r3, [sp, #0x24]
00464484  1b 00 00 da                                      ble #0x4644f8
00464488  c1 11 a0 e1                                      asr r1, r1, #3
0046448c  18 50 a0 e3                                      mov r5, #0x18
00464490  01 81 81 e0                                      add r8, r1, r1, lsl #2
00464494  0c 60 8d e2                                      add r6, sp, #0xc
00464498  08 82 88 e0                                      add r8, r8, r8, lsl #4
0046449c  08 a0 8d e2                                      add sl, sp, #8
004644a0  08 84 88 e0                                      add r8, r8, r8, lsl #8
004644a4  08 88 88 e0                                      add r8, r8, r8, lsl #16
004644a8  88 80 81 e0                                      add r8, r1, r8, lsl #1
004644ac  02 40 48 e2                                      sub r4, r8, #2
004644b0  c4 40 a0 e1                                      asr r4, r4, #1
004644b4  95 04 25 e0                                      mla r5, r5, r4, r0
004644b8  00 00 00 ea                                      b #0x4644c0
004644bc  01 40 44 e2                                      sub r4, r4, #1
004644c0  05 10 a0 e1                                      mov r1, r5
004644c4  06 00 a0 e1                                      mov r0, r6
004644c8  12 1d fb eb                                      bl #0x32b918
004644cc  04 10 a0 e1                                      mov r1, r4
004644d0  08 20 a0 e1                                      mov r2, r8
004644d4  06 30 a0 e1                                      mov r3, r6
004644d8  07 00 a0 e1                                      mov r0, r7
004644dc  00 a0 8d e5                                      str sl, [sp]
004644e0  7c ff ff eb                                      bl #0x4642d8
004644e4  06 00 a0 e1                                      mov r0, r6
004644e8  2f bd fa eb                                      bl #0x3139ac
004644ec  00 00 54 e3                                      cmp r4, #0
004644f0  18 50 45 e2                                      sub r5, r5, #0x18
004644f4  f0 ff ff 1a                                      bne #0x4644bc
004644f8  0b 30 99 e7                                      ldr r3, [sb, fp]
004644fc  24 20 9d e5                                      ldr r2, [sp, #0x24]
00464500  00 30 93 e5                                      ldr r3, [r3]
00464504  03 00 52 e1                                      cmp r2, r3
00464508  01 00 00 1a                                      bne #0x464514
0046450c  2c d0 8d e2                                      add sp, sp, #0x2c
00464510  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00464514  7d a7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00464518  28 06 53 00 ac 40 00 00                          .byte 0x28, 0x06, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00464520, declared_size=184, range_size=184, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPSsSsSt4lessISsEiEvT_S3_S3_T0_T1_PT2_
; demangled: void std::__pop_heap<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, int>(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, int*)
; decoder-mode: arm
00464520  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00464524  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
00464528  a4 70 9f e5                                      ldr r7, [pc, #0xa4]
0046452c  00 50 a0 e1                                      mov r5, r0
00464530  04 40 8f e0                                      add r4, pc, r4
00464534  07 c0 94 e7                                      ldr ip, [r4, r7]
00464538  00 00 52 e1                                      cmp r2, r0
0046453c  2c d0 4d e2                                      sub sp, sp, #0x2c
00464540  00 00 9c e5                                      ldr r0, [ip]
00464544  01 80 a0 e1                                      mov r8, r1
00464548  03 a0 a0 e1                                      mov sl, r3
0046454c  24 00 8d e5                                      str r0, [sp, #0x24]
00464550  03 00 00 0a                                      beq #0x464564
00464554  02 00 a0 e1                                      mov r0, r2
00464558  14 10 95 e5                                      ldr r1, [r5, #0x14]
0046455c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00464560  1e b1 fa eb                                      bl #0x3109e0
00464564  08 80 65 e0                                      rsb r8, r5, r8
00464568  0c 60 8d e2                                      add r6, sp, #0xc
0046456c  c8 81 a0 e1                                      asr r8, r8, #3
00464570  0a 10 a0 e1                                      mov r1, sl
00464574  06 00 a0 e1                                      mov r0, r6
00464578  e6 1c fb eb                                      bl #0x32b918
0046457c  08 21 88 e0                                      add r2, r8, r8, lsl #2
00464580  06 30 a0 e1                                      mov r3, r6
00464584  02 22 82 e0                                      add r2, r2, r2, lsl #4
00464588  08 c0 8d e2                                      add ip, sp, #8
0046458c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00464590  05 00 a0 e1                                      mov r0, r5
00464594  02 28 82 e0                                      add r2, r2, r2, lsl #16
00464598  00 10 a0 e3                                      mov r1, #0
0046459c  82 20 88 e0                                      add r2, r8, r2, lsl #1
004645a0  00 c0 8d e5                                      str ip, [sp]
004645a4  4b ff ff eb                                      bl #0x4642d8
004645a8  06 00 a0 e1                                      mov r0, r6
004645ac  fe bc fa eb                                      bl #0x3139ac
004645b0  07 30 94 e7                                      ldr r3, [r4, r7]
004645b4  24 20 9d e5                                      ldr r2, [sp, #0x24]
004645b8  00 30 93 e5                                      ldr r3, [r3]
004645bc  03 00 52 e1                                      cmp r2, r3
004645c0  01 00 00 1a                                      bne #0x4645cc
004645c4  2c d0 8d e2                                      add sp, sp, #0x2c
004645c8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004645cc  4f a7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004645d0  60 05 53 00 ac 40 00 00                          .byte 0x60, 0x05, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004645d8, declared_size=136, range_size=136, mode=arm
; class-group: void std
; alias: _ZSt14__pop_heap_auxIPSsSsSt4lessISsEEvT_S3_PT0_T1_
; demangled: void std::__pop_heap_aux<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
004645d8  78 30 9f e5                                      ldr r3, [pc, #0x78]
004645dc  78 20 9f e5                                      ldr r2, [pc, #0x78]
004645e0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004645e4  03 30 8f e0                                      add r3, pc, r3
004645e8  02 50 93 e7                                      ldr r5, [r3, r2]
004645ec  2c d0 4d e2                                      sub sp, sp, #0x2c
004645f0  18 60 41 e2                                      sub r6, r1, #0x18
004645f4  00 20 95 e5                                      ldr r2, [r5]
004645f8  0c 40 8d e2                                      add r4, sp, #0xc
004645fc  00 70 a0 e1                                      mov r7, r0
00464600  06 10 a0 e1                                      mov r1, r6
00464604  04 00 a0 e1                                      mov r0, r4
00464608  24 20 8d e5                                      str r2, [sp, #0x24]
0046460c  c1 1c fb eb                                      bl #0x32b918
00464610  08 c0 8d e2                                      add ip, sp, #8
00464614  06 20 a0 e1                                      mov r2, r6
00464618  04 30 a0 e1                                      mov r3, r4
0046461c  06 10 a0 e1                                      mov r1, r6
00464620  07 00 a0 e1                                      mov r0, r7
00464624  00 c0 8d e5                                      str ip, [sp]
00464628  00 c0 a0 e3                                      mov ip, #0
0046462c  04 c0 8d e5                                      str ip, [sp, #4]
00464630  ba ff ff eb                                      bl #0x464520
00464634  04 00 a0 e1                                      mov r0, r4
00464638  db bc fa eb                                      bl #0x3139ac
0046463c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00464640  00 30 95 e5                                      ldr r3, [r5]
00464644  03 00 52 e1                                      cmp r2, r3
00464648  01 00 00 1a                                      bne #0x464654
0046464c  2c d0 8d e2                                      add sp, sp, #0x2c
00464650  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00464654  2d a7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00464658  ac 04 53 00 ac 40 00 00                          .byte 0xac, 0x04, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00466040, declared_size=136, range_size=136, mode=arm
; class-group: void std
; alias: _ZSt4sortIPSsEvT_S1_
; demangled: void std::sort<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*>(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
00466040  30 40 2d e9                                      push {r4, r5, lr}
00466044  01 00 50 e1                                      cmp r0, r1
00466048  14 d0 4d e2                                      sub sp, sp, #0x14
0046604c  00 50 a0 e1                                      mov r5, r0
00466050  01 40 a0 e1                                      mov r4, r1
00466054  19 00 00 0a                                      beq #0x4660c0
00466058  01 30 60 e0                                      rsb r3, r0, r1
0046605c  c3 31 a0 e1                                      asr r3, r3, #3
00466060  03 21 83 e0                                      add r2, r3, r3, lsl #2
00466064  02 22 82 e0                                      add r2, r2, r2, lsl #4
00466068  02 24 82 e0                                      add r2, r2, r2, lsl #8
0046606c  02 28 82 e0                                      add r2, r2, r2, lsl #16
00466070  82 20 83 e0                                      add r2, r3, r2, lsl #1
00466074  01 00 52 e3                                      cmp r2, #1
00466078  00 30 a0 03                                      moveq r3, #0
0046607c  05 00 00 0a                                      beq #0x466098
00466080  00 30 a0 e3                                      mov r3, #0
00466084  c2 20 a0 e1                                      asr r2, r2, #1
00466088  01 00 52 e3                                      cmp r2, #1
0046608c  01 30 83 e2                                      add r3, r3, #1
00466090  fb ff ff 1a                                      bne #0x466084
00466094  83 30 a0 e1                                      lsl r3, r3, #1
00466098  00 20 a0 e3                                      mov r2, #0
0046609c  05 00 a0 e1                                      mov r0, r5
004660a0  04 10 a0 e1                                      mov r1, r4
004660a4  0c c0 8d e2                                      add ip, sp, #0xc
004660a8  00 c0 8d e5                                      str ip, [sp]
004660ac  90 ff ff eb                                      bl #0x465ef4
004660b0  05 00 a0 e1                                      mov r0, r5
004660b4  04 10 a0 e1                                      mov r1, r4
004660b8  08 20 8d e2                                      add r2, sp, #8
004660bc  52 fa ff eb                                      bl #0x464a0c
004660c0  14 d0 8d e2                                      add sp, sp, #0x14
004660c4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00483de8, declared_size=108, range_size=108, mode=arm
; class-group: void std
; alias: _ZSt18uninitialized_fillINSt4priv15_Deque_iteratorIPN3rnd4TileESt16_Nonconst_traitsIS4_EEES4_EvT_S8_RKT0_
; demangled: void std::uninitialized_fill<std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, rnd::Tile*>(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, rnd::Tile* const&)
; decoder-mode: arm
00483de8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00483dec  24 d0 4d e2                                      sub sp, sp, #0x24
00483df0  0c 70 90 e5                                      ldr r7, [r0, #0xc]
00483df4  10 40 90 e8                                      ldm r0, {r4, lr}
00483df8  08 50 90 e5                                      ldr r5, [r0, #8]
00483dfc  10 c0 8d e2                                      add ip, sp, #0x10
00483e00  02 60 a0 e1                                      mov r6, r2
00483e04  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00483e08  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00483e0c  0c 00 a0 e1                                      mov r0, ip
00483e10  0d 10 a0 e1                                      mov r1, sp
00483e14  10 40 8d e8                                      stm sp, {r4, lr}
00483e18  08 50 8d e5                                      str r5, [sp, #8]
00483e1c  0c 70 8d e5                                      str r7, [sp, #0xc]
00483e20  c2 ff ff eb                                      bl #0x483d30
00483e24  00 00 50 e3                                      cmp r0, #0
00483e28  07 00 00 da                                      ble #0x483e4c
00483e2c  00 30 96 e5                                      ldr r3, [r6]
00483e30  01 00 40 e2                                      sub r0, r0, #1
00483e34  04 30 84 e4                                      str r3, [r4], #4
00483e38  05 00 54 e1                                      cmp r4, r5
00483e3c  04 40 b7 05                                      ldreq r4, [r7, #4]!
00483e40  80 50 84 02                                      addeq r5, r4, #0x80
00483e44  00 00 50 e3                                      cmp r0, #0
00483e48  f7 ff ff 1a                                      bne #0x483e2c
00483e4c  24 d0 8d e2                                      add sp, sp, #0x24
00483e50  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0048c31c, declared_size=88, range_size=88, mode=arm
; class-group: void std
; alias: _ZSt14random_shuffleIPPKcN3rnd15RandomGeneratorEEvT_S5_RT0_
; demangled: void std::random_shuffle<char const**, rnd::RandomGenerator>(char const**, char const**, rnd::RandomGenerator&)
; decoder-mode: arm
0048c31c  01 00 50 e1                                      cmp r0, r1
0048c320  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048c324  00 40 a0 e1                                      mov r4, r0
0048c328  01 50 a0 e1                                      mov r5, r1
0048c32c  02 80 a0 e1                                      mov r8, r2
0048c330  0e 00 00 0a                                      beq #0x48c370
0048c334  04 60 80 e2                                      add r6, r0, #4
0048c338  06 00 51 e1                                      cmp r1, r6
0048c33c  0b 00 00 0a                                      beq #0x48c370
0048c340  04 70 a0 e3                                      mov r7, #4
0048c344  47 11 a0 e1                                      asr r1, r7, #2
0048c348  01 10 81 e2                                      add r1, r1, #1
0048c34c  08 00 a0 e1                                      mov r0, r8
0048c350  e8 dd ff eb                                      bl #0x483af8
0048c354  00 21 94 e7                                      ldr r2, [r4, r0, lsl #2]
0048c358  00 30 96 e5                                      ldr r3, [r6]
0048c35c  04 70 87 e2                                      add r7, r7, #4
0048c360  04 20 86 e4                                      str r2, [r6], #4
0048c364  06 00 55 e1                                      cmp r5, r6
0048c368  00 31 84 e7                                      str r3, [r4, r0, lsl #2]
0048c36c  f4 ff ff 1a                                      bne #0x48c344
0048c370  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0048e588, declared_size=160, range_size=160, mode=arm
; class-group: void std
; alias: _ZSt4swapISt4pairIPKN3rnd4ExitENS1_8ListElemEEEvRT_S8_
; demangled: void std::swap<std::pair<rnd::Exit const*, rnd::ListElem> >(std::pair<rnd::Exit const*, rnd::ListElem>&, std::pair<rnd::Exit const*, rnd::ListElem>&)
; decoder-mode: arm
0048e588  90 30 9f e5                                      ldr r3, [pc, #0x90]
0048e58c  90 20 9f e5                                      ldr r2, [pc, #0x90]
0048e590  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0048e594  03 30 8f e0                                      add r3, pc, r3
0048e598  02 70 93 e7                                      ldr r7, [r3, r2]
0048e59c  00 50 a0 e1                                      mov r5, r0
0048e5a0  04 20 95 e4                                      ldr r2, [r5], #4
0048e5a4  00 a0 a0 e1                                      mov sl, r0
0048e5a8  00 00 97 e5                                      ldr r0, [r7]
0048e5ac  5c d0 4d e2                                      sub sp, sp, #0x5c
0048e5b0  58 60 8d e2                                      add r6, sp, #0x58
0048e5b4  54 00 8d e5                                      str r0, [sp, #0x54]
0048e5b8  58 20 26 e5                                      str r2, [r6, #-0x58]!
0048e5bc  04 60 86 e2                                      add r6, r6, #4
0048e5c0  01 40 a0 e1                                      mov r4, r1
0048e5c4  01 80 a0 e1                                      mov r8, r1
0048e5c8  06 00 a0 e1                                      mov r0, r6
0048e5cc  05 10 a0 e1                                      mov r1, r5
0048e5d0  2a ff ff eb                                      bl #0x48e280
0048e5d4  04 30 94 e4                                      ldr r3, [r4], #4
0048e5d8  05 00 a0 e1                                      mov r0, r5
0048e5dc  00 30 8a e5                                      str r3, [sl]
0048e5e0  04 10 a0 e1                                      mov r1, r4
0048e5e4  b4 f6 ff eb                                      bl #0x48c0bc
0048e5e8  00 30 9d e5                                      ldr r3, [sp]
0048e5ec  06 10 a0 e1                                      mov r1, r6
0048e5f0  04 00 a0 e1                                      mov r0, r4
0048e5f4  00 30 88 e5                                      str r3, [r8]
0048e5f8  af f6 ff eb                                      bl #0x48c0bc
0048e5fc  06 00 a0 e1                                      mov r0, r6
0048e600  f2 e6 ff eb                                      bl #0x4881d0
0048e604  54 20 9d e5                                      ldr r2, [sp, #0x54]
0048e608  00 30 97 e5                                      ldr r3, [r7]
0048e60c  03 00 52 e1                                      cmp r2, r3
0048e610  01 00 00 1a                                      bne #0x48e61c
0048e614  5c d0 8d e2                                      add sp, sp, #0x5c
0048e618  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0048e61c  3b ff f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048e620  fc 64 50 00 ac 40 00 00                          .byte 0xfc, 0x64, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0048e628, declared_size=104, range_size=104, mode=arm
; class-group: void std
; alias: _ZSt14random_shuffleIPSt4pairIPKN3rnd4ExitENS1_8ListElemEENS1_15RandomGeneratorEEvT_S9_RT0_
; demangled: void std::random_shuffle<std::pair<rnd::Exit const*, rnd::ListElem>*, rnd::RandomGenerator>(std::pair<rnd::Exit const*, rnd::ListElem>*, std::pair<rnd::Exit const*, rnd::ListElem>*, rnd::RandomGenerator&)
; decoder-mode: arm
0048e628  01 00 50 e1                                      cmp r0, r1
0048e62c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048e630  00 40 a0 e1                                      mov r4, r0
0048e634  01 50 a0 e1                                      mov r5, r1
0048e638  02 a0 a0 e1                                      mov sl, r2
0048e63c  12 00 00 0a                                      beq #0x48e68c
0048e640  54 60 80 e2                                      add r6, r0, #0x54
0048e644  06 00 51 e1                                      cmp r1, r6
0048e648  0f 00 00 0a                                      beq #0x48e68c
0048e64c  54 70 a0 e3                                      mov r7, #0x54
0048e650  3d 8f 0c e3                                      movw r8, #0xcf3d
0048e654  f3 8c 43 e3                                      movt r8, #0x3cf3
0048e658  07 90 a0 e1                                      mov sb, r7
0048e65c  47 11 a0 e1                                      asr r1, r7, #2
0048e660  98 01 01 e0                                      mul r1, r8, r1
0048e664  0a 00 a0 e1                                      mov r0, sl
0048e668  01 10 81 e2                                      add r1, r1, #1
0048e66c  21 d5 ff eb                                      bl #0x483af8
0048e670  99 40 21 e0                                      mla r1, sb, r0, r4
0048e674  06 00 a0 e1                                      mov r0, r6
0048e678  54 60 86 e2                                      add r6, r6, #0x54
0048e67c  c1 ff ff eb                                      bl #0x48e588
0048e680  06 00 55 e1                                      cmp r5, r6
0048e684  54 70 87 e2                                      add r7, r7, #0x54
0048e688  f3 ff ff 1a                                      bne #0x48e65c
0048e68c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0048e7c0, declared_size=124, range_size=124, mode=arm
; class-group: void std
; alias: _ZSt4swapIN3rnd8ListElemEEvRT_S3_
; demangled: void std::swap<rnd::ListElem>(rnd::ListElem&, rnd::ListElem&)
; decoder-mode: arm
0048e7c0  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0048e7c4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0048e7c8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0048e7cc  03 30 8f e0                                      add r3, pc, r3
0048e7d0  02 50 93 e7                                      ldr r5, [r3, r2]
0048e7d4  5c d0 4d e2                                      sub sp, sp, #0x5c
0048e7d8  00 70 a0 e1                                      mov r7, r0
0048e7dc  00 20 95 e5                                      ldr r2, [r5]
0048e7e0  04 40 8d e2                                      add r4, sp, #4
0048e7e4  01 60 a0 e1                                      mov r6, r1
0048e7e8  04 00 a0 e1                                      mov r0, r4
0048e7ec  07 10 a0 e1                                      mov r1, r7
0048e7f0  54 20 8d e5                                      str r2, [sp, #0x54]
0048e7f4  a1 fe ff eb                                      bl #0x48e280
0048e7f8  06 10 a0 e1                                      mov r1, r6
0048e7fc  07 00 a0 e1                                      mov r0, r7
0048e800  2d f6 ff eb                                      bl #0x48c0bc
0048e804  04 10 a0 e1                                      mov r1, r4
0048e808  06 00 a0 e1                                      mov r0, r6
0048e80c  2a f6 ff eb                                      bl #0x48c0bc
0048e810  04 00 a0 e1                                      mov r0, r4
0048e814  6d e6 ff eb                                      bl #0x4881d0
0048e818  54 20 9d e5                                      ldr r2, [sp, #0x54]
0048e81c  00 30 95 e5                                      ldr r3, [r5]
0048e820  03 00 52 e1                                      cmp r2, r3
0048e824  01 00 00 1a                                      bne #0x48e830
0048e828  5c d0 8d e2                                      add sp, sp, #0x5c
0048e82c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0048e830  b6 fe f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048e834  c4 62 50 00 ac 40 00 00                          .byte 0xc4, 0x62, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0048e83c, declared_size=112, range_size=112, mode=arm
; class-group: void std
; alias: _ZSt14random_shuffleIPN3rnd8ListElemENS0_15RandomGeneratorEEvT_S4_RT0_
; demangled: void std::random_shuffle<rnd::ListElem*, rnd::RandomGenerator>(rnd::ListElem*, rnd::ListElem*, rnd::RandomGenerator&)
; decoder-mode: arm
0048e83c  01 00 50 e1                                      cmp r0, r1
0048e840  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048e844  00 40 a0 e1                                      mov r4, r0
0048e848  01 50 a0 e1                                      mov r5, r1
0048e84c  02 80 a0 e1                                      mov r8, r2
0048e850  14 00 00 0a                                      beq #0x48e8a8
0048e854  50 60 80 e2                                      add r6, r0, #0x50
0048e858  06 00 51 e1                                      cmp r1, r6
0048e85c  11 00 00 0a                                      beq #0x48e8a8
0048e860  50 70 a0 e3                                      mov r7, #0x50
0048e864  07 a0 a0 e1                                      mov sl, r7
0048e868  47 32 a0 e1                                      asr r3, r7, #4
0048e86c  08 00 a0 e1                                      mov r0, r8
0048e870  83 20 83 e0                                      add r2, r3, r3, lsl #1
0048e874  50 70 87 e2                                      add r7, r7, #0x50
0048e878  02 22 82 e0                                      add r2, r2, r2, lsl #4
0048e87c  02 24 82 e0                                      add r2, r2, r2, lsl #8
0048e880  02 28 82 e0                                      add r2, r2, r2, lsl #16
0048e884  02 31 83 e0                                      add r3, r3, r2, lsl #2
0048e888  01 10 83 e2                                      add r1, r3, #1
0048e88c  99 d4 ff eb                                      bl #0x483af8
0048e890  9a 40 21 e0                                      mla r1, sl, r0, r4
0048e894  06 00 a0 e1                                      mov r0, r6
0048e898  50 60 86 e2                                      add r6, r6, #0x50
0048e89c  c7 ff ff eb                                      bl #0x48e7c0
0048e8a0  06 00 55 e1                                      cmp r5, r6
0048e8a4  ef ff ff 1a                                      bne #0x48e868
0048e8a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0049b924, declared_size=108, range_size=108, mode=arm
; class-group: void std
; alias: _ZSt15__destroy_rangeISt16reverse_iteratorIP9tRoomInfoES1_EvT_S4_PT0_.clone.4
; demangled: void std::__destroy_range<std::reverse_iterator<tRoomInfo*>, tRoomInfo>(std::reverse_iterator<tRoomInfo*>, std::reverse_iterator<tRoomInfo*>, tRoomInfo*) [clone .clone.4]
; decoder-mode: arm
0049b924  70 40 2d e9                                      push {r4, r5, r6, lr}
0049b928  00 40 90 e5                                      ldr r4, [r0]
0049b92c  00 50 91 e5                                      ldr r5, [r1]
0049b930  05 00 54 e1                                      cmp r4, r5
0049b934  14 00 00 0a                                      beq #0x49b98c
0049b938  02 00 00 ea                                      b #0x49b948
0049b93c  6f b5 09 eb                                      bl #0x708f00
0049b940  04 00 55 e1                                      cmp r5, r4
0049b944  10 00 00 0a                                      beq #0x49b98c
0049b948  f2 4f 44 e2                                      sub r4, r4, #0x3c8
0049b94c  28 00 84 e2                                      add r0, r4, #0x28
0049b950  af f4 0d eb                                      bl #0x818c14
0049b954  08 20 84 e2                                      add r2, r4, #8
0049b958  14 30 92 e5                                      ldr r3, [r2, #0x14]
0049b95c  02 00 53 e1                                      cmp r3, r2
0049b960  03 00 a0 e1                                      mov r0, r3
0049b964  f5 ff ff 0a                                      beq #0x49b940
0049b968  00 00 53 e3                                      cmp r3, #0
0049b96c  f3 ff ff 0a                                      beq #0x49b940
0049b970  00 10 92 e5                                      ldr r1, [r2]
0049b974  01 10 63 e0                                      rsb r1, r3, r1
0049b978  80 00 51 e3                                      cmp r1, #0x80
0049b97c  ee ff ff 9a                                      bls #0x49b93c
0049b980  ae d2 f9 eb                                      bl #0x310440
0049b984  04 00 55 e1                                      cmp r5, r4
0049b988  ee ff ff 1a                                      bne #0x49b948
0049b98c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0049d244, declared_size=108, range_size=108, mode=arm
; class-group: void std
; alias: _ZSt15__destroy_rangeISt16reverse_iteratorIP9tRoomInfoES1_EvT_S4_PT0_.clone.15
; demangled: void std::__destroy_range<std::reverse_iterator<tRoomInfo*>, tRoomInfo>(std::reverse_iterator<tRoomInfo*>, std::reverse_iterator<tRoomInfo*>, tRoomInfo*) [clone .clone.15]
; decoder-mode: arm
0049d244  70 40 2d e9                                      push {r4, r5, r6, lr}
0049d248  00 40 90 e5                                      ldr r4, [r0]
0049d24c  00 50 91 e5                                      ldr r5, [r1]
0049d250  05 00 54 e1                                      cmp r4, r5
0049d254  14 00 00 0a                                      beq #0x49d2ac
0049d258  02 00 00 ea                                      b #0x49d268
0049d25c  27 af 09 eb                                      bl #0x708f00
0049d260  04 00 55 e1                                      cmp r5, r4
0049d264  10 00 00 0a                                      beq #0x49d2ac
0049d268  f2 4f 44 e2                                      sub r4, r4, #0x3c8
0049d26c  28 00 84 e2                                      add r0, r4, #0x28
0049d270  67 ee 0d eb                                      bl #0x818c14
0049d274  08 20 84 e2                                      add r2, r4, #8
0049d278  14 30 92 e5                                      ldr r3, [r2, #0x14]
0049d27c  02 00 53 e1                                      cmp r3, r2
0049d280  03 00 a0 e1                                      mov r0, r3
0049d284  f5 ff ff 0a                                      beq #0x49d260
0049d288  00 00 53 e3                                      cmp r3, #0
0049d28c  f3 ff ff 0a                                      beq #0x49d260
0049d290  00 10 92 e5                                      ldr r1, [r2]
0049d294  01 10 63 e0                                      rsb r1, r3, r1
0049d298  80 00 51 e3                                      cmp r1, #0x80
0049d29c  ee ff ff 9a                                      bls #0x49d25c
0049d2a0  66 cc f9 eb                                      bl #0x310440
0049d2a4  04 00 55 e1                                      cmp r5, r4
0049d2a8  ee ff ff 1a                                      bne #0x49d268
0049d2ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004a1e2c, declared_size=260, range_size=260, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapINSt4priv15_Deque_iteratorIN14ObjectSearcher10TargetInfoESt16_Nonconst_traitsIS3_EEEiS3_NS2_12TargetSorterEEvT_T0_S9_T1_T2_
; demangled: void std::__push_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, int, ObjectSearcher::TargetInfo, ObjectSearcher::TargetSorter>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, int, int, ObjectSearcher::TargetInfo, ObjectSearcher::TargetSorter)
; decoder-mode: arm
004a1e2c  08 d0 4d e2                                      sub sp, sp, #8
004a1e30  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004a1e34  02 00 51 e1                                      cmp r1, r2
004a1e38  10 d0 4d e2                                      sub sp, sp, #0x10
004a1e3c  01 60 a0 e1                                      mov r6, r1
004a1e40  02 a0 a0 e1                                      mov sl, r2
004a1e44  34 30 8d e5                                      str r3, [sp, #0x34]
004a1e48  00 50 a0 e1                                      mov r5, r0
004a1e4c  48 90 9d e5                                      ldr sb, [sp, #0x48]
004a1e50  0d 40 a0 d1                                      movle r4, sp
004a1e54  34 80 8d d2                                      addle r8, sp, #0x34
004a1e58  0d 00 00 ca                                      bgt #0x4a1e94
004a1e5c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a1e60  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a1e64  0d 00 a0 e1                                      mov r0, sp
004a1e68  06 10 a0 e1                                      mov r1, r6
004a1e6c  04 ae fb eb                                      bl #0x38d684
004a1e70  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
004a1e74  00 c0 9d e5                                      ldr ip, [sp]
004a1e78  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
004a1e7c  00 20 98 e5                                      ldr r2, [r8]
004a1e80  00 20 8c e5                                      str r2, [ip]
004a1e84  10 d0 8d e2                                      add sp, sp, #0x10
004a1e88  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
004a1e8c  08 d0 8d e2                                      add sp, sp, #8
004a1e90  1e ff 2f e1                                      bx lr
004a1e94  01 70 41 e2                                      sub r7, r1, #1
004a1e98  a7 7f 87 e0                                      add r7, r7, r7, lsr #31
004a1e9c  0d 40 a0 e1                                      mov r4, sp
004a1ea0  c7 70 a0 e1                                      asr r7, r7, #1
004a1ea4  34 80 8d e2                                      add r8, sp, #0x34
004a1ea8  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a1eac  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a1eb0  07 10 a0 e1                                      mov r1, r7
004a1eb4  0d 00 a0 e1                                      mov r0, sp
004a1eb8  f1 ad fb eb                                      bl #0x38d684
004a1ebc  08 10 a0 e1                                      mov r1, r8
004a1ec0  00 00 9d e5                                      ldr r0, [sp]
004a1ec4  39 ff 2f e1                                      blx sb
004a1ec8  00 00 50 e3                                      cmp r0, #0
004a1ecc  e2 ff ff 0a                                      beq #0x4a1e5c
004a1ed0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a1ed4  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a1ed8  06 10 a0 e1                                      mov r1, r6
004a1edc  0d 00 a0 e1                                      mov r0, sp
004a1ee0  e7 ad fb eb                                      bl #0x38d684
004a1ee4  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a1ee8  00 60 9d e5                                      ldr r6, [sp]
004a1eec  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a1ef0  07 10 a0 e1                                      mov r1, r7
004a1ef4  0d 00 a0 e1                                      mov r0, sp
004a1ef8  e1 ad fb eb                                      bl #0x38d684
004a1efc  00 c0 9d e5                                      ldr ip, [sp]
004a1f00  07 00 5a e1                                      cmp sl, r7
004a1f04  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
004a1f08  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
004a1f0c  00 20 9c e5                                      ldr r2, [ip]
004a1f10  00 20 86 e5                                      str r2, [r6]
004a1f14  07 60 a0 a1                                      movge r6, r7
004a1f18  cf ff ff aa                                      bge #0x4a1e5c
004a1f1c  01 30 47 e2                                      sub r3, r7, #1
004a1f20  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
004a1f24  07 60 a0 e1                                      mov r6, r7
004a1f28  c3 70 a0 e1                                      asr r7, r3, #1
004a1f2c  dd ff ff ea                                      b #0x4a1ea8

; FUNCTION 0x004a1f30, declared_size=156, range_size=156, mode=arm
; class-group: void std
; alias: _ZSt15__push_heap_auxINSt4priv15_Deque_iteratorIN14ObjectSearcher10TargetInfoESt16_Nonconst_traitsIS3_EEENS2_12TargetSorterEiS3_EvT_S8_T0_PT1_PT2_
; demangled: void std::__push_heap_aux<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetSorter, int, ObjectSearcher::TargetInfo>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetSorter, int*, ObjectSearcher::TargetInfo*)
; decoder-mode: arm
004a1f30  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004a1f34  64 d0 4d e2                                      sub sp, sp, #0x64
004a1f38  40 40 8d e2                                      add r4, sp, #0x40
004a1f3c  01 50 a0 e1                                      mov r5, r1
004a1f40  00 c0 a0 e1                                      mov ip, r0
004a1f44  02 70 a0 e1                                      mov r7, r2
004a1f48  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
004a1f4c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a1f50  50 e0 8d e2                                      add lr, sp, #0x50
004a1f54  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
004a1f58  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
004a1f5c  0e 10 a0 e1                                      mov r1, lr
004a1f60  05 00 a0 e1                                      mov r0, r5
004a1f64  a9 ad fb eb                                      bl #0x38d610
004a1f68  30 c0 8d e2                                      add ip, sp, #0x30
004a1f6c  01 60 40 e2                                      sub r6, r0, #1
004a1f70  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a1f74  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004a1f78  0c 00 a0 e1                                      mov r0, ip
004a1f7c  00 10 e0 e3                                      mvn r1, #0
004a1f80  bf ad fb eb                                      bl #0x38d684
004a1f84  30 50 9d e5                                      ldr r5, [sp, #0x30]
004a1f88  1c c0 8d e2                                      add ip, sp, #0x1c
004a1f8c  20 e0 8d e2                                      add lr, sp, #0x20
004a1f90  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
004a1f94  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
004a1f98  00 30 95 e5                                      ldr r3, [r5]
004a1f9c  10 70 8d e5                                      str r7, [sp, #0x10]
004a1fa0  00 30 8c e5                                      str r3, [ip]
004a1fa4  0d c0 a0 e1                                      mov ip, sp
004a1fa8  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
004a1fac  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004a1fb0  04 00 a0 e1                                      mov r0, r4
004a1fb4  06 10 a0 e1                                      mov r1, r6
004a1fb8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
004a1fbc  00 20 a0 e3                                      mov r2, #0
004a1fc0  99 ff ff eb                                      bl #0x4a1e2c
004a1fc4  64 d0 8d e2                                      add sp, sp, #0x64
004a1fc8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x004a24e4, declared_size=368, range_size=368, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapINSt4priv15_Deque_iteratorIN14ObjectSearcher10TargetInfoESt16_Nonconst_traitsIS3_EEEiS3_NS2_12TargetSorterEEvT_T0_S9_T1_T2_
; demangled: void std::__adjust_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, int, ObjectSearcher::TargetInfo, ObjectSearcher::TargetSorter>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, int, int, ObjectSearcher::TargetInfo, ObjectSearcher::TargetSorter)
; decoder-mode: arm
004a24e4  08 d0 4d e2                                      sub sp, sp, #8
004a24e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004a24ec  01 70 81 e2                                      add r7, r1, #1
004a24f0  87 70 a0 e1                                      lsl r7, r7, #1
004a24f4  44 d0 4d e2                                      sub sp, sp, #0x44
004a24f8  02 00 57 e1                                      cmp r7, r2
004a24fc  1c 10 8d e5                                      str r1, [sp, #0x1c]
004a2500  02 90 a0 e1                                      mov sb, r2
004a2504  6c 30 8d e5                                      str r3, [sp, #0x6c]
004a2508  00 50 a0 e1                                      mov r5, r0
004a250c  80 b0 9d e5                                      ldr fp, [sp, #0x80]
004a2510  01 80 a0 a1                                      movge r8, r1
004a2514  28 00 00 aa                                      bge #0x4a25bc
004a2518  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
004a251c  20 40 8d e2                                      add r4, sp, #0x20
004a2520  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a2524  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a2528  07 10 a0 e1                                      mov r1, r7
004a252c  04 00 a0 e1                                      mov r0, r4
004a2530  53 ac fb eb                                      bl #0x38d684
004a2534  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a2538  20 a0 9d e5                                      ldr sl, [sp, #0x20]
004a253c  01 60 47 e2                                      sub r6, r7, #1
004a2540  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a2544  06 10 a0 e1                                      mov r1, r6
004a2548  04 00 a0 e1                                      mov r0, r4
004a254c  4c ac fb eb                                      bl #0x38d684
004a2550  20 10 9d e5                                      ldr r1, [sp, #0x20]
004a2554  0a 00 a0 e1                                      mov r0, sl
004a2558  3b ff 2f e1                                      blx fp
004a255c  00 00 50 e3                                      cmp r0, #0
004a2560  07 60 a0 01                                      moveq r6, r7
004a2564  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a2568  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a256c  08 10 a0 e1                                      mov r1, r8
004a2570  04 00 a0 e1                                      mov r0, r4
004a2574  42 ac fb eb                                      bl #0x38d684
004a2578  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a257c  20 80 9d e5                                      ldr r8, [sp, #0x20]
004a2580  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a2584  04 00 a0 e1                                      mov r0, r4
004a2588  06 10 a0 e1                                      mov r1, r6
004a258c  3c ac fb eb                                      bl #0x38d684
004a2590  20 c0 9d e5                                      ldr ip, [sp, #0x20]
004a2594  01 70 86 e2                                      add r7, r6, #1
004a2598  87 70 a0 e1                                      lsl r7, r7, #1
004a259c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
004a25a0  0f 00 a8 e8                                      stm r8!, {r0, r1, r2, r3}
004a25a4  00 20 9c e5                                      ldr r2, [ip]
004a25a8  08 30 a0 e1                                      mov r3, r8
004a25ac  07 00 59 e1                                      cmp sb, r7
004a25b0  06 80 a0 e1                                      mov r8, r6
004a25b4  00 20 83 e5                                      str r2, [r3]
004a25b8  d8 ff ff ca                                      bgt #0x4a2520
004a25bc  09 00 57 e1                                      cmp r7, sb
004a25c0  10 00 00 0a                                      beq #0x4a2608
004a25c4  30 c0 8d e2                                      add ip, sp, #0x30
004a25c8  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a25cc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004a25d0  70 e0 8d e2                                      add lr, sp, #0x70
004a25d4  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
004a25d8  0d e0 a0 e1                                      mov lr, sp
004a25dc  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
004a25e0  0c 00 a0 e1                                      mov r0, ip
004a25e4  08 10 a0 e1                                      mov r1, r8
004a25e8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004a25ec  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
004a25f0  10 b0 8d e5                                      str fp, [sp, #0x10]
004a25f4  0c fe ff eb                                      bl #0x4a1e2c
004a25f8  44 d0 8d e2                                      add sp, sp, #0x44
004a25fc  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004a2600  08 d0 8d e2                                      add sp, sp, #8
004a2604  1e ff 2f e1                                      bx lr
004a2608  20 40 8d e2                                      add r4, sp, #0x20
004a260c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a2610  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a2614  08 10 a0 e1                                      mov r1, r8
004a2618  04 00 a0 e1                                      mov r0, r4
004a261c  01 80 47 e2                                      sub r8, r7, #1
004a2620  17 ac fb eb                                      bl #0x38d684
004a2624  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004a2628  20 60 9d e5                                      ldr r6, [sp, #0x20]
004a262c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004a2630  04 00 a0 e1                                      mov r0, r4
004a2634  08 10 a0 e1                                      mov r1, r8
004a2638  11 ac fb eb                                      bl #0x38d684
004a263c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
004a2640  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
004a2644  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
004a2648  00 20 9c e5                                      ldr r2, [ip]
004a264c  00 20 86 e5                                      str r2, [r6]
004a2650  db ff ff ea                                      b #0x4a25c4

; FUNCTION 0x004a2654, declared_size=220, range_size=220, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapINSt4priv15_Deque_iteratorIN14ObjectSearcher10TargetInfoESt16_Nonconst_traitsIS3_EEENS2_12TargetSorterES3_iEvT_S8_T0_PT1_PT2_
; demangled: void std::__make_heap<std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetSorter, ObjectSearcher::TargetInfo, int>(std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, std::priv::_Deque_iterator<ObjectSearcher::TargetInfo, std::_Nonconst_traits<ObjectSearcher::TargetInfo> >, ObjectSearcher::TargetSorter, ObjectSearcher::TargetInfo*, int*)
; decoder-mode: arm
004a2654  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004a2658  74 d0 4d e2                                      sub sp, sp, #0x74
004a265c  60 c0 8d e2                                      add ip, sp, #0x60
004a2660  01 50 a0 e1                                      mov r5, r1
004a2664  00 40 a0 e1                                      mov r4, r0
004a2668  02 a0 a0 e1                                      mov sl, r2
004a266c  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
004a2670  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004a2674  0c 10 a0 e1                                      mov r1, ip
004a2678  05 00 a0 e1                                      mov r0, r5
004a267c  e3 ab fb eb                                      bl #0x38d610
004a2680  01 00 50 e3                                      cmp r0, #1
004a2684  27 00 00 da                                      ble #0x4a2728
004a2688  50 c0 8d e2                                      add ip, sp, #0x50
004a268c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
004a2690  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004a2694  05 00 a0 e1                                      mov r0, r5
004a2698  0c 10 a0 e1                                      mov r1, ip
004a269c  db ab fb eb                                      bl #0x38d610
004a26a0  02 70 40 e2                                      sub r7, r0, #2
004a26a4  a7 7f 87 e0                                      add r7, r7, r7, lsr #31
004a26a8  00 80 a0 e1                                      mov r8, r0
004a26ac  40 60 8d e2                                      add r6, sp, #0x40
004a26b0  c7 70 a0 e1                                      asr r7, r7, #1
004a26b4  30 50 8d e2                                      add r5, sp, #0x30
004a26b8  1c 90 8d e2                                      add sb, sp, #0x1c
004a26bc  20 b0 8d e2                                      add fp, sp, #0x20
004a26c0  00 00 00 ea                                      b #0x4a26c8
004a26c4  01 70 47 e2                                      sub r7, r7, #1
004a26c8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
004a26cc  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
004a26d0  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
004a26d4  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
004a26d8  05 00 a0 e1                                      mov r0, r5
004a26dc  07 10 a0 e1                                      mov r1, r7
004a26e0  e7 ab fb eb                                      bl #0x38d684
004a26e4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
004a26e8  09 e0 a0 e1                                      mov lr, sb
004a26ec  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
004a26f0  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
004a26f4  00 20 9c e5                                      ldr r2, [ip]
004a26f8  10 a0 8d e5                                      str sl, [sp, #0x10]
004a26fc  0d c0 a0 e1                                      mov ip, sp
004a2700  00 20 8e e5                                      str r2, [lr]
004a2704  0f 00 9b e8                                      ldm fp, {r0, r1, r2, r3}
004a2708  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004a270c  07 10 a0 e1                                      mov r1, r7
004a2710  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
004a2714  06 00 a0 e1                                      mov r0, r6
004a2718  08 20 a0 e1                                      mov r2, r8
004a271c  70 ff ff eb                                      bl #0x4a24e4
004a2720  00 00 57 e3                                      cmp r7, #0
004a2724  e6 ff ff 1a                                      bne #0x4a26c4
004a2728  74 d0 8d e2                                      add sp, sp, #0x74
004a272c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0052929c, declared_size=164, range_size=164, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeEiS7_NS6_6_ECompEEvT_T0_SB_T1_T2_.clone.10
; demangled: void std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*, int, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_EComp>(sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*, int, int, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_EComp) [clone .clone.10]
; decoder-mode: arm
0052929c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005292a0  00 50 51 e2                                      subs r5, r1, #0
005292a4  00 40 a0 e1                                      mov r4, r0
005292a8  02 90 a0 e1                                      mov sb, r2
005292ac  1f 00 00 da                                      ble #0x529330
005292b0  01 70 45 e2                                      sub r7, r5, #1
005292b4  c7 70 a0 e1                                      asr r7, r7, #1
005292b8  0c a0 a0 e3                                      mov sl, #0xc
005292bc  9a 07 08 e0                                      mul r8, sl, r7
005292c0  08 10 99 e5                                      ldr r1, [sb, #8]
005292c4  08 60 84 e0                                      add r6, r4, r8
005292c8  08 00 96 e5                                      ldr r0, [r6, #8]
005292cc  09 94 f7 eb                                      bl #0x30e2f8
005292d0  9a 05 03 e0                                      mul r3, sl, r5
005292d4  00 00 50 e3                                      cmp r0, #0
005292d8  04 20 86 e2                                      add r2, r6, #4
005292dc  03 10 84 e0                                      add r1, r4, r3
005292e0  12 00 00 0a                                      beq #0x529330
005292e4  08 c0 94 e7                                      ldr ip, [r4, r8]
005292e8  00 00 57 e3                                      cmp r7, #0
005292ec  01 00 47 e2                                      sub r0, r7, #1
005292f0  03 c0 84 e7                                      str ip, [r4, r3]
005292f4  04 30 96 e5                                      ldr r3, [r6, #4]
005292f8  07 50 a0 e1                                      mov r5, r7
005292fc  c0 70 a0 e1                                      asr r7, r0, #1
00529300  04 30 81 e5                                      str r3, [r1, #4]
00529304  04 30 92 e5                                      ldr r3, [r2, #4]
00529308  08 30 81 e5                                      str r3, [r1, #8]
0052930c  ea ff ff 1a                                      bne #0x5292bc
00529310  09 30 a0 e1                                      mov r3, sb
00529314  04 10 93 e4                                      ldr r1, [r3], #4
00529318  00 10 86 e5                                      str r1, [r6]
0052931c  04 10 99 e5                                      ldr r1, [sb, #4]
00529320  04 10 86 e5                                      str r1, [r6, #4]
00529324  04 30 93 e5                                      ldr r3, [r3, #4]
00529328  04 30 82 e5                                      str r3, [r2, #4]
0052932c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00529330  0c 60 a0 e3                                      mov r6, #0xc
00529334  96 45 26 e0                                      mla r6, r6, r5, r4
00529338  04 20 86 e2                                      add r2, r6, #4
0052933c  f3 ff ff ea                                      b #0x529310

; FUNCTION 0x00529340, declared_size=88, range_size=88, mode=arm
; class-group: void std
; alias: _ZSt15__push_heap_auxIPN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeENS6_6_ECompEiS7_EvT_SA_T0_PT1_PT2_
; demangled: void std::__push_heap_aux<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_EComp, int, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge>(sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_EComp, int*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*)
; decoder-mode: arm
00529340  10 40 2d e9                                      push {r4, lr}
00529344  01 30 60 e0                                      rsb r3, r0, r1
00529348  43 31 a0 e1                                      asr r3, r3, #2
0052934c  0c 40 11 e5                                      ldr r4, [r1, #-0xc]
00529350  03 c1 83 e0                                      add ip, r3, r3, lsl #2
00529354  0c 20 41 e2                                      sub r2, r1, #0xc
00529358  0c 12 8c e0                                      add r1, ip, ip, lsl #4
0052935c  04 e0 92 e5                                      ldr lr, [r2, #4]
00529360  01 14 81 e0                                      add r1, r1, r1, lsl #8
00529364  08 c0 92 e5                                      ldr ip, [r2, #8]
00529368  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052936c  10 d0 4d e2                                      sub sp, sp, #0x10
00529370  81 30 83 e0                                      add r3, r3, r1, lsl #1
00529374  01 10 43 e2                                      sub r1, r3, #1
00529378  04 20 8d e2                                      add r2, sp, #4
0052937c  00 30 a0 e3                                      mov r3, #0
00529380  04 40 8d e5                                      str r4, [sp, #4]
00529384  08 e0 8d e5                                      str lr, [sp, #8]
00529388  0c c0 8d e5                                      str ip, [sp, #0xc]
0052938c  c2 ff ff eb                                      bl #0x52929c
00529390  10 d0 8d e2                                      add sp, sp, #0x10
00529394  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00529398, declared_size=164, range_size=164, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE7_InEdgeEiS7_NS6_6_ECompEEvT_T0_SB_T1_T2_.clone.15
; demangled: void std::__push_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*, int, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_EComp>(sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*, int, int, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_EComp) [clone .clone.15]
; decoder-mode: arm
00529398  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0052939c  00 50 51 e2                                      subs r5, r1, #0
005293a0  00 40 a0 e1                                      mov r4, r0
005293a4  02 90 a0 e1                                      mov sb, r2
005293a8  1f 00 00 da                                      ble #0x52942c
005293ac  01 70 45 e2                                      sub r7, r5, #1
005293b0  c7 70 a0 e1                                      asr r7, r7, #1
005293b4  0c a0 a0 e3                                      mov sl, #0xc
005293b8  9a 07 08 e0                                      mul r8, sl, r7
005293bc  08 10 99 e5                                      ldr r1, [sb, #8]
005293c0  08 60 84 e0                                      add r6, r4, r8
005293c4  08 00 96 e5                                      ldr r0, [r6, #8]
005293c8  ca 93 f7 eb                                      bl #0x30e2f8
005293cc  9a 05 03 e0                                      mul r3, sl, r5
005293d0  00 00 50 e3                                      cmp r0, #0
005293d4  04 20 86 e2                                      add r2, r6, #4
005293d8  03 10 84 e0                                      add r1, r4, r3
005293dc  12 00 00 0a                                      beq #0x52942c
005293e0  08 c0 94 e7                                      ldr ip, [r4, r8]
005293e4  00 00 57 e3                                      cmp r7, #0
005293e8  01 00 47 e2                                      sub r0, r7, #1
005293ec  03 c0 84 e7                                      str ip, [r4, r3]
005293f0  04 30 96 e5                                      ldr r3, [r6, #4]
005293f4  07 50 a0 e1                                      mov r5, r7
005293f8  c0 70 a0 e1                                      asr r7, r0, #1
005293fc  04 30 81 e5                                      str r3, [r1, #4]
00529400  04 30 92 e5                                      ldr r3, [r2, #4]
00529404  08 30 81 e5                                      str r3, [r1, #8]
00529408  ea ff ff 1a                                      bne #0x5293b8
0052940c  09 30 a0 e1                                      mov r3, sb
00529410  04 10 93 e4                                      ldr r1, [r3], #4
00529414  00 10 86 e5                                      str r1, [r6]
00529418  04 10 99 e5                                      ldr r1, [sb, #4]
0052941c  04 10 86 e5                                      str r1, [r6, #4]
00529420  04 30 93 e5                                      ldr r3, [r3, #4]
00529424  04 30 82 e5                                      str r3, [r2, #4]
00529428  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0052942c  0c 60 a0 e3                                      mov r6, #0xc
00529430  96 45 26 e0                                      mla r6, r6, r5, r4
00529434  04 20 86 e2                                      add r2, r6, #4
00529438  f3 ff ff ea                                      b #0x52940c

; FUNCTION 0x0052943c, declared_size=336, range_size=336, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE7_InEdgeES7_NS6_6_ECompEiEvT_SA_SA_T0_T1_PT2_
; demangled: void std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_EComp, int>(sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_EComp, int*)
; decoder-mode: arm
0052943c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00529440  01 10 60 e0                                      rsb r1, r0, r1
00529444  00 40 a0 e1                                      mov r4, r0
00529448  04 c0 90 e4                                      ldr ip, [r0], #4
0052944c  02 e0 a0 e1                                      mov lr, r2
00529450  41 11 a0 e1                                      asr r1, r1, #2
00529454  04 c0 8e e4                                      str ip, [lr], #4
00529458  04 c0 94 e5                                      ldr ip, [r4, #4]
0052945c  01 b1 81 e0                                      add fp, r1, r1, lsl #2
00529460  24 d0 4d e2                                      sub sp, sp, #0x24
00529464  04 c0 82 e5                                      str ip, [r2, #4]
00529468  04 20 90 e5                                      ldr r2, [r0, #4]
0052946c  0b b2 8b e0                                      add fp, fp, fp, lsl #4
00529470  04 20 8e e5                                      str r2, [lr, #4]
00529474  08 20 93 e5                                      ldr r2, [r3, #8]
00529478  0b b4 8b e0                                      add fp, fp, fp, lsl #8
0052947c  0c 20 8d e5                                      str r2, [sp, #0xc]
00529480  00 c0 93 e5                                      ldr ip, [r3]
00529484  0b b8 8b e0                                      add fp, fp, fp, lsl #16
00529488  04 c0 8d e5                                      str ip, [sp, #4]
0052948c  04 30 93 e5                                      ldr r3, [r3, #4]
00529490  8b b0 81 e0                                      add fp, r1, fp, lsl #1
00529494  02 00 5b e3                                      cmp fp, #2
00529498  08 30 8d e5                                      str r3, [sp, #8]
0052949c  00 50 a0 d3                                      movle r5, #0
005294a0  02 20 a0 d3                                      movle r2, #2
005294a4  1b 00 00 da                                      ble #0x529518
005294a8  00 90 a0 e3                                      mov sb, #0
005294ac  02 50 a0 e3                                      mov r5, #2
005294b0  0c 70 a0 e3                                      mov r7, #0xc
005294b4  00 00 00 ea                                      b #0x5294bc
005294b8  02 50 a0 e1                                      mov r5, r2
005294bc  01 80 45 e2                                      sub r8, r5, #1
005294c0  97 45 26 e0                                      mla r6, r7, r5, r4
005294c4  97 48 2a e0                                      mla sl, r7, r8, r4
005294c8  08 00 96 e5                                      ldr r0, [r6, #8]
005294cc  08 10 9a e5                                      ldr r1, [sl, #8]
005294d0  88 93 f7 eb                                      bl #0x30e2f8
005294d4  00 00 50 e3                                      cmp r0, #0
005294d8  0a 60 a0 11                                      movne r6, sl
005294dc  06 30 a0 e1                                      mov r3, r6
005294e0  04 20 93 e4                                      ldr r2, [r3], #4
005294e4  97 09 09 e0                                      mul sb, r7, sb
005294e8  08 50 a0 11                                      movne r5, r8
005294ec  09 20 84 e7                                      str r2, [r4, sb]
005294f0  04 00 96 e5                                      ldr r0, [r6, #4]
005294f4  09 10 84 e0                                      add r1, r4, sb
005294f8  01 20 85 e2                                      add r2, r5, #1
005294fc  04 00 81 e5                                      str r0, [r1, #4]
00529500  04 30 93 e5                                      ldr r3, [r3, #4]
00529504  82 20 a0 e1                                      lsl r2, r2, #1
00529508  02 00 5b e1                                      cmp fp, r2
0052950c  05 90 a0 e1                                      mov sb, r5
00529510  08 30 81 e5                                      str r3, [r1, #8]
00529514  e7 ff ff ca                                      bgt #0x5294b8
00529518  02 00 5b e1                                      cmp fp, r2
0052951c  0c 00 00 0a                                      beq #0x529554
00529520  04 c0 9d e5                                      ldr ip, [sp, #4]
00529524  04 00 a0 e1                                      mov r0, r4
00529528  05 10 a0 e1                                      mov r1, r5
0052952c  14 c0 8d e5                                      str ip, [sp, #0x14]
00529530  08 c0 9d e5                                      ldr ip, [sp, #8]
00529534  14 20 8d e2                                      add r2, sp, #0x14
00529538  00 30 a0 e3                                      mov r3, #0
0052953c  18 c0 8d e5                                      str ip, [sp, #0x18]
00529540  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00529544  1c c0 8d e5                                      str ip, [sp, #0x1c]
00529548  92 ff ff eb                                      bl #0x529398
0052954c  24 d0 8d e2                                      add sp, sp, #0x24
00529550  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00529554  0c 30 a0 e3                                      mov r3, #0xc
00529558  01 b0 4b e2                                      sub fp, fp, #1
0052955c  93 0b 02 e0                                      mul r2, r3, fp
00529560  93 05 05 e0                                      mul r5, r3, r5
00529564  02 10 94 e7                                      ldr r1, [r4, r2]
00529568  02 20 84 e0                                      add r2, r4, r2
0052956c  05 30 84 e0                                      add r3, r4, r5
00529570  05 10 84 e7                                      str r1, [r4, r5]
00529574  04 10 92 e5                                      ldr r1, [r2, #4]
00529578  0b 50 a0 e1                                      mov r5, fp
0052957c  04 10 83 e5                                      str r1, [r3, #4]
00529580  08 20 92 e5                                      ldr r2, [r2, #8]
00529584  08 20 83 e5                                      str r2, [r3, #8]
00529588  e4 ff ff ea                                      b #0x529520

; FUNCTION 0x0052958c, declared_size=88, range_size=88, mode=arm
; class-group: void std
; alias: _ZSt15__push_heap_auxIPN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE7_InEdgeENS6_6_ECompEiS7_EvT_SA_T0_PT1_PT2_
; demangled: void std::__push_heap_aux<sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_EComp, int, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge>(sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_EComp, int*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge*)
; decoder-mode: arm
0052958c  10 40 2d e9                                      push {r4, lr}
00529590  01 30 60 e0                                      rsb r3, r0, r1
00529594  43 31 a0 e1                                      asr r3, r3, #2
00529598  0c 40 11 e5                                      ldr r4, [r1, #-0xc]
0052959c  03 c1 83 e0                                      add ip, r3, r3, lsl #2
005295a0  0c 20 41 e2                                      sub r2, r1, #0xc
005295a4  0c 12 8c e0                                      add r1, ip, ip, lsl #4
005295a8  04 e0 92 e5                                      ldr lr, [r2, #4]
005295ac  01 14 81 e0                                      add r1, r1, r1, lsl #8
005295b0  08 c0 92 e5                                      ldr ip, [r2, #8]
005295b4  01 18 81 e0                                      add r1, r1, r1, lsl #16
005295b8  10 d0 4d e2                                      sub sp, sp, #0x10
005295bc  81 30 83 e0                                      add r3, r3, r1, lsl #1
005295c0  01 10 43 e2                                      sub r1, r3, #1
005295c4  04 20 8d e2                                      add r2, sp, #4
005295c8  00 30 a0 e3                                      mov r3, #0
005295cc  04 40 8d e5                                      str r4, [sp, #4]
005295d0  08 e0 8d e5                                      str lr, [sp, #8]
005295d4  0c c0 8d e5                                      str ip, [sp, #0xc]
005295d8  6e ff ff eb                                      bl #0x529398
005295dc  10 d0 8d e2                                      add sp, sp, #0x10
005295e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005295e4, declared_size=336, range_size=336, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN3sfc4math5graph9AlgoAStarI13PFGInnerGraph17DijkstraHeuristicE7_InEdgeES7_NS6_6_ECompEiEvT_SA_SA_T0_T1_PT2_
; demangled: void std::__pop_heap<sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_EComp, int>(sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge*, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_InEdge, sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::_EComp, int*)
; decoder-mode: arm
005295e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005295e8  01 10 60 e0                                      rsb r1, r0, r1
005295ec  00 40 a0 e1                                      mov r4, r0
005295f0  04 c0 90 e4                                      ldr ip, [r0], #4
005295f4  02 e0 a0 e1                                      mov lr, r2
005295f8  41 11 a0 e1                                      asr r1, r1, #2
005295fc  04 c0 8e e4                                      str ip, [lr], #4
00529600  04 c0 94 e5                                      ldr ip, [r4, #4]
00529604  01 b1 81 e0                                      add fp, r1, r1, lsl #2
00529608  24 d0 4d e2                                      sub sp, sp, #0x24
0052960c  04 c0 82 e5                                      str ip, [r2, #4]
00529610  04 20 90 e5                                      ldr r2, [r0, #4]
00529614  0b b2 8b e0                                      add fp, fp, fp, lsl #4
00529618  04 20 8e e5                                      str r2, [lr, #4]
0052961c  08 20 93 e5                                      ldr r2, [r3, #8]
00529620  0b b4 8b e0                                      add fp, fp, fp, lsl #8
00529624  0c 20 8d e5                                      str r2, [sp, #0xc]
00529628  00 c0 93 e5                                      ldr ip, [r3]
0052962c  0b b8 8b e0                                      add fp, fp, fp, lsl #16
00529630  04 c0 8d e5                                      str ip, [sp, #4]
00529634  04 30 93 e5                                      ldr r3, [r3, #4]
00529638  8b b0 81 e0                                      add fp, r1, fp, lsl #1
0052963c  02 00 5b e3                                      cmp fp, #2
00529640  08 30 8d e5                                      str r3, [sp, #8]
00529644  00 50 a0 d3                                      movle r5, #0
00529648  02 20 a0 d3                                      movle r2, #2
0052964c  1b 00 00 da                                      ble #0x5296c0
00529650  00 90 a0 e3                                      mov sb, #0
00529654  02 50 a0 e3                                      mov r5, #2
00529658  0c 70 a0 e3                                      mov r7, #0xc
0052965c  00 00 00 ea                                      b #0x529664
00529660  02 50 a0 e1                                      mov r5, r2
00529664  01 80 45 e2                                      sub r8, r5, #1
00529668  97 45 26 e0                                      mla r6, r7, r5, r4
0052966c  97 48 2a e0                                      mla sl, r7, r8, r4
00529670  08 00 96 e5                                      ldr r0, [r6, #8]
00529674  08 10 9a e5                                      ldr r1, [sl, #8]
00529678  1e 93 f7 eb                                      bl #0x30e2f8
0052967c  00 00 50 e3                                      cmp r0, #0
00529680  0a 60 a0 11                                      movne r6, sl
00529684  06 30 a0 e1                                      mov r3, r6
00529688  04 20 93 e4                                      ldr r2, [r3], #4
0052968c  97 09 09 e0                                      mul sb, r7, sb
00529690  08 50 a0 11                                      movne r5, r8
00529694  09 20 84 e7                                      str r2, [r4, sb]
00529698  04 00 96 e5                                      ldr r0, [r6, #4]
0052969c  09 10 84 e0                                      add r1, r4, sb
005296a0  01 20 85 e2                                      add r2, r5, #1
005296a4  04 00 81 e5                                      str r0, [r1, #4]
005296a8  04 30 93 e5                                      ldr r3, [r3, #4]
005296ac  82 20 a0 e1                                      lsl r2, r2, #1
005296b0  02 00 5b e1                                      cmp fp, r2
005296b4  05 90 a0 e1                                      mov sb, r5
005296b8  08 30 81 e5                                      str r3, [r1, #8]
005296bc  e7 ff ff ca                                      bgt #0x529660
005296c0  02 00 5b e1                                      cmp fp, r2
005296c4  0c 00 00 0a                                      beq #0x5296fc
005296c8  04 c0 9d e5                                      ldr ip, [sp, #4]
005296cc  04 00 a0 e1                                      mov r0, r4
005296d0  05 10 a0 e1                                      mov r1, r5
005296d4  14 c0 8d e5                                      str ip, [sp, #0x14]
005296d8  08 c0 9d e5                                      ldr ip, [sp, #8]
005296dc  14 20 8d e2                                      add r2, sp, #0x14
005296e0  00 30 a0 e3                                      mov r3, #0
005296e4  18 c0 8d e5                                      str ip, [sp, #0x18]
005296e8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005296ec  1c c0 8d e5                                      str ip, [sp, #0x1c]
005296f0  e9 fe ff eb                                      bl #0x52929c
005296f4  24 d0 8d e2                                      add sp, sp, #0x24
005296f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005296fc  0c 30 a0 e3                                      mov r3, #0xc
00529700  01 b0 4b e2                                      sub fp, fp, #1
00529704  93 0b 02 e0                                      mul r2, r3, fp
00529708  93 05 05 e0                                      mul r5, r3, r5
0052970c  02 10 94 e7                                      ldr r1, [r4, r2]
00529710  02 20 84 e0                                      add r2, r4, r2
00529714  05 30 84 e0                                      add r3, r4, r5
00529718  05 10 84 e7                                      str r1, [r4, r5]
0052971c  04 10 92 e5                                      ldr r1, [r2, #4]
00529720  0b 50 a0 e1                                      mov r5, fp
00529724  04 10 83 e5                                      str r1, [r3, #4]
00529728  08 20 92 e5                                      ldr r2, [r2, #8]
0052972c  08 20 83 e5                                      str r2, [r3, #8]
00529730  e4 ff ff ea                                      b #0x5296c8

; FUNCTION 0x0057bbe0, declared_size=152, range_size=152, mode=arm
; class-group: void std
; alias: _ZSt4swapIN6glitch5scene10CBatchMesh6SBatchEEvRT_S5_
; demangled: void std::swap<glitch::scene::CBatchMesh::SBatch>(glitch::scene::CBatchMesh::SBatch&, glitch::scene::CBatchMesh::SBatch&)
; decoder-mode: arm
0057bbe0  30 40 2d e9                                      push {r4, r5, lr}
0057bbe4  00 20 90 e5                                      ldr r2, [r0]
0057bbe8  1c d0 4d e2                                      sub sp, sp, #0x1c
0057bbec  01 50 a0 e1                                      mov r5, r1
0057bbf0  04 20 8d e5                                      str r2, [sp, #4]
0057bbf4  00 00 52 e3                                      cmp r2, #0
0057bbf8  04 10 92 15                                      ldrne r1, [r2, #4]
0057bbfc  00 30 a0 e1                                      mov r3, r0
0057bc00  04 40 8d e2                                      add r4, sp, #4
0057bc04  01 10 81 12                                      addne r1, r1, #1
0057bc08  04 10 82 15                                      strne r1, [r2, #4]
0057bc0c  04 20 90 e5                                      ldr r2, [r0, #4]
0057bc10  08 20 8d e5                                      str r2, [sp, #8]
0057bc14  00 00 52 e3                                      cmp r2, #0
0057bc18  00 10 92 15                                      ldrne r1, [r2]
0057bc1c  01 10 81 12                                      addne r1, r1, #1
0057bc20  00 10 82 15                                      strne r1, [r2]
0057bc24  08 20 90 e5                                      ldr r2, [r0, #8]
0057bc28  00 00 52 e3                                      cmp r2, #0
0057bc2c  0c 20 8d e5                                      str r2, [sp, #0xc]
0057bc30  00 10 92 15                                      ldrne r1, [r2]
0057bc34  01 10 81 12                                      addne r1, r1, #1
0057bc38  00 10 82 15                                      strne r1, [r2]
0057bc3c  bc 20 d3 e1                                      ldrh r2, [r3, #0xc]
0057bc40  05 10 a0 e1                                      mov r1, r5
0057bc44  b0 21 cd e1                                      strh r2, [sp, #0x10]
0057bc48  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
0057bc4c  b2 21 cd e1                                      strh r2, [sp, #0x12]
0057bc50  b0 31 d3 e1                                      ldrh r3, [r3, #0x10]
0057bc54  b4 31 cd e1                                      strh r3, [sp, #0x14]
0057bc58  8b ff ff eb                                      bl #0x57ba8c
0057bc5c  05 00 a0 e1                                      mov r0, r5
0057bc60  04 10 a0 e1                                      mov r1, r4
0057bc64  88 ff ff eb                                      bl #0x57ba8c
0057bc68  04 00 a0 e1                                      mov r0, r4
0057bc6c  bd f9 ff eb                                      bl #0x57a368
0057bc70  1c d0 8d e2                                      add sp, sp, #0x1c
0057bc74  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005a3738, declared_size=156, range_size=156, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN6glitch4core7CKdTreeISt4pairIjNS1_8aabbox3dIfEEEE11SKdDistanceEiS8_St4lessIS8_EEvT_T0_SD_T1_T2_.clone.16
; demangled: void std::__push_heap<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*, int, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::less<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >(glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*, int, int, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::less<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance>) [clone .clone.16]
; decoder-mode: arm
005a3738  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005a373c  08 d0 4d e2                                      sub sp, sp, #8
005a3740  00 20 8d e5                                      str r2, [sp]
005a3744  00 50 51 e2                                      subs r5, r1, #0
005a3748  00 40 a0 e1                                      mov r4, r0
005a374c  03 90 a0 e1                                      mov sb, r3
005a3750  00 a0 9d e5                                      ldr sl, [sp]
005a3754  15 00 00 da                                      ble #0x5a37b0
005a3758  01 60 45 e2                                      sub r6, r5, #1
005a375c  c6 60 a0 e1                                      asr r6, r6, #1
005a3760  0a 00 a0 e1                                      mov r0, sl
005a3764  86 11 94 e7                                      ldr r1, [r4, r6, lsl #3]
005a3768  e2 aa f5 eb                                      bl #0x30e2f8
005a376c  00 00 50 e3                                      cmp r0, #0
005a3770  0e 00 00 0a                                      beq #0x5a37b0
005a3774  86 31 94 e7                                      ldr r3, [r4, r6, lsl #3]
005a3778  86 81 84 e0                                      add r8, r4, r6, lsl #3
005a377c  01 70 46 e2                                      sub r7, r6, #1
005a3780  85 31 84 e7                                      str r3, [r4, r5, lsl #3]
005a3784  04 30 98 e5                                      ldr r3, [r8, #4]
005a3788  85 51 84 e0                                      add r5, r4, r5, lsl #3
005a378c  00 00 56 e3                                      cmp r6, #0
005a3790  c7 70 a0 e1                                      asr r7, r7, #1
005a3794  0a 10 a0 e1                                      mov r1, sl
005a3798  04 30 85 e5                                      str r3, [r5, #4]
005a379c  05 00 00 1a                                      bne #0x5a37b8
005a37a0  00 a0 88 e5                                      str sl, [r8]
005a37a4  04 90 88 e5                                      str sb, [r8, #4]
005a37a8  08 d0 8d e2                                      add sp, sp, #8
005a37ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005a37b0  85 81 84 e0                                      add r8, r4, r5, lsl #3
005a37b4  f9 ff ff ea                                      b #0x5a37a0
005a37b8  87 01 94 e7                                      ldr r0, [r4, r7, lsl #3]
005a37bc  d2 ab f5 eb                                      bl #0x30e70c
005a37c0  00 00 50 e3                                      cmp r0, #0
005a37c4  f5 ff ff 0a                                      beq #0x5a37a0
005a37c8  06 50 a0 e1                                      mov r5, r6
005a37cc  07 60 a0 e1                                      mov r6, r7
005a37d0  e7 ff ff ea                                      b #0x5a3774

; FUNCTION 0x005a37d4, declared_size=64, range_size=64, mode=arm
; class-group: void std
; alias: _ZSt15__push_heap_auxIPN6glitch4core7CKdTreeISt4pairIjNS1_8aabbox3dIfEEEE11SKdDistanceESt4lessIS8_EiS8_EvT_SC_T0_PT1_PT2_
; demangled: void std::__push_heap_aux<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*, std::less<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance>, int, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance>(glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*, std::less<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance>, int*, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*)
; decoder-mode: arm
005a37d4  10 40 2d e9                                      push {r4, lr}
005a37d8  08 e0 11 e5                                      ldr lr, [r1, #-8]
005a37dc  04 c0 11 e5                                      ldr ip, [r1, #-4]
005a37e0  01 10 60 e0                                      rsb r1, r0, r1
005a37e4  18 d0 4d e2                                      sub sp, sp, #0x18
005a37e8  c1 11 a0 e1                                      asr r1, r1, #3
005a37ec  14 40 8d e2                                      add r4, sp, #0x14
005a37f0  01 10 41 e2                                      sub r1, r1, #1
005a37f4  0e 20 a0 e1                                      mov r2, lr
005a37f8  0c 30 a0 e1                                      mov r3, ip
005a37fc  00 40 8d e5                                      str r4, [sp]
005a3800  0c e0 8d e5                                      str lr, [sp, #0xc]
005a3804  10 c0 8d e5                                      str ip, [sp, #0x10]
005a3808  ca ff ff eb                                      bl #0x5a3738
005a380c  18 d0 8d e2                                      add sp, sp, #0x18
005a3810  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a3814, declared_size=240, range_size=240, mode=arm
; class-group: void std
; alias: _ZSt14__pop_heap_auxIPN6glitch4core7CKdTreeISt4pairIjNS1_8aabbox3dIfEEEE11SKdDistanceES8_St4lessIS8_EEvT_SC_PT0_T1_
; demangled: void std::__pop_heap_aux<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::less<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >(glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance*, std::less<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance>)
; decoder-mode: arm
005a3814  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a3818  00 30 90 e5                                      ldr r3, [r0]
005a381c  08 20 41 e2                                      sub r2, r1, #8
005a3820  08 c0 11 e5                                      ldr ip, [r1, #-8]
005a3824  00 50 a0 e1                                      mov r5, r0
005a3828  04 00 92 e5                                      ldr r0, [r2, #4]
005a382c  08 30 01 e5                                      str r3, [r1, #-8]
005a3830  04 30 95 e5                                      ldr r3, [r5, #4]
005a3834  02 80 65 e0                                      rsb r8, r5, r2
005a3838  c8 81 a0 e1                                      asr r8, r8, #3
005a383c  18 d0 4d e2                                      sub sp, sp, #0x18
005a3840  02 00 58 e3                                      cmp r8, #2
005a3844  04 30 82 e5                                      str r3, [r2, #4]
005a3848  00 40 a0 d3                                      movle r4, #0
005a384c  0c c0 8d e5                                      str ip, [sp, #0xc]
005a3850  10 00 8d e5                                      str r0, [sp, #0x10]
005a3854  02 20 a0 d3                                      movle r2, #2
005a3858  15 00 00 da                                      ble #0x5a38b4
005a385c  00 60 a0 e3                                      mov r6, #0
005a3860  02 40 a0 e3                                      mov r4, #2
005a3864  00 00 00 ea                                      b #0x5a386c
005a3868  02 40 a0 e1                                      mov r4, r2
005a386c  01 70 44 e2                                      sub r7, r4, #1
005a3870  84 01 95 e7                                      ldr r0, [r5, r4, lsl #3]
005a3874  87 11 95 e7                                      ldr r1, [r5, r7, lsl #3]
005a3878  a3 ab f5 eb                                      bl #0x30e70c
005a387c  00 00 50 e3                                      cmp r0, #0
005a3880  84 31 85 e0                                      add r3, r5, r4, lsl #3
005a3884  07 40 a0 11                                      movne r4, r7
005a3888  84 31 85 10                                      addne r3, r5, r4, lsl #3
005a388c  00 00 93 e5                                      ldr r0, [r3]
005a3890  01 20 84 e2                                      add r2, r4, #1
005a3894  82 20 a0 e1                                      lsl r2, r2, #1
005a3898  86 01 85 e7                                      str r0, [r5, r6, lsl #3]
005a389c  04 30 93 e5                                      ldr r3, [r3, #4]
005a38a0  86 11 85 e0                                      add r1, r5, r6, lsl #3
005a38a4  02 00 58 e1                                      cmp r8, r2
005a38a8  04 60 a0 e1                                      mov r6, r4
005a38ac  04 30 81 e5                                      str r3, [r1, #4]
005a38b0  ec ff ff ca                                      bgt #0x5a3868
005a38b4  02 00 58 e1                                      cmp r8, r2
005a38b8  08 00 00 0a                                      beq #0x5a38e0
005a38bc  14 c0 8d e2                                      add ip, sp, #0x14
005a38c0  05 00 a0 e1                                      mov r0, r5
005a38c4  04 10 a0 e1                                      mov r1, r4
005a38c8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005a38cc  10 30 9d e5                                      ldr r3, [sp, #0x10]
005a38d0  00 c0 8d e5                                      str ip, [sp]
005a38d4  97 ff ff eb                                      bl #0x5a3738
005a38d8  18 d0 8d e2                                      add sp, sp, #0x18
005a38dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a38e0  01 80 48 e2                                      sub r8, r8, #1
005a38e4  88 11 95 e7                                      ldr r1, [r5, r8, lsl #3]
005a38e8  88 21 85 e0                                      add r2, r5, r8, lsl #3
005a38ec  84 31 85 e0                                      add r3, r5, r4, lsl #3
005a38f0  84 11 85 e7                                      str r1, [r5, r4, lsl #3]
005a38f4  04 20 92 e5                                      ldr r2, [r2, #4]
005a38f8  08 40 a0 e1                                      mov r4, r8
005a38fc  04 20 83 e5                                      str r2, [r3, #4]
005a3900  ed ff ff ea                                      b #0x5a38bc

; FUNCTION 0x00637f6c, declared_size=64, range_size=64, mode=arm
; class-group: void std
; alias: _ZSt4swapIN6glitch2ps12GNPSParticleEEvRT_S4_
; demangled: void std::swap<glitch::ps::GNPSParticle>(glitch::ps::GNPSParticle&, glitch::ps::GNPSParticle&)
; decoder-mode: arm
00637f6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00637f70  a0 d0 4d e2                                      sub sp, sp, #0xa0
00637f74  00 60 a0 e1                                      mov r6, r0
00637f78  04 40 8d e2                                      add r4, sp, #4
00637f7c  01 50 a0 e1                                      mov r5, r1
00637f80  04 00 a0 e1                                      mov r0, r4
00637f84  06 10 a0 e1                                      mov r1, r6
00637f88  59 ff ff eb                                      bl #0x637cf4
00637f8c  05 10 a0 e1                                      mov r1, r5
00637f90  06 00 a0 e1                                      mov r0, r6
00637f94  a5 ff ff eb                                      bl #0x637e30
00637f98  05 00 a0 e1                                      mov r0, r5
00637f9c  04 10 a0 e1                                      mov r1, r4
00637fa0  a2 ff ff eb                                      bl #0x637e30
00637fa4  a0 d0 8d e2                                      add sp, sp, #0xa0
00637fa8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006392bc, declared_size=180, range_size=180, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN6glitch2ps12GNPSParticleEiS2_NS1_9AlphaSortIS2_EEEvT_T0_S7_T1_T2_
; demangled: void std::__push_heap<glitch::ps::GNPSParticle*, int, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, int, int, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
006392bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006392c0  02 00 51 e1                                      cmp r1, r2
006392c4  04 d0 4d e2                                      sub sp, sp, #4
006392c8  01 40 a0 e1                                      mov r4, r1
006392cc  02 60 a0 e1                                      mov r6, r2
006392d0  00 50 a0 e1                                      mov r5, r0
006392d4  03 90 a0 e1                                      mov sb, r3
006392d8  06 00 00 ca                                      bgt #0x6392f8
006392dc  9c b0 a0 e3                                      mov fp, #0x9c
006392e0  9b 01 2b e0                                      mla fp, fp, r1, r0
006392e4  0b 00 a0 e1                                      mov r0, fp
006392e8  09 10 a0 e1                                      mov r1, sb
006392ec  04 d0 8d e2                                      add sp, sp, #4
006392f0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006392f4  cd fa ff ea                                      b #0x637e30
006392f8  01 70 41 e2                                      sub r7, r1, #1
006392fc  a7 7f 87 e0                                      add r7, r7, r7, lsr #31
00639300  9c 80 a0 e3                                      mov r8, #0x9c
00639304  c7 70 a0 e1                                      asr r7, r7, #1
00639308  98 07 23 e0                                      mla r3, r8, r7, r0
0063930c  98 00 99 e5                                      ldr r0, [sb, #0x98]
00639310  98 10 93 e5                                      ldr r1, [r3, #0x98]
00639314  fc 54 f3 eb                                      bl #0x30e70c
00639318  00 00 50 e3                                      cmp r0, #0
0063931c  98 54 2b 00                                      mlaeq fp, r8, r4, r5
00639320  ef ff ff 0a                                      beq #0x6392e4
00639324  00 00 00 ea                                      b #0x63932c
00639328  0a 70 a0 e1                                      mov r7, sl
0063932c  98 57 2b e0                                      mla fp, r8, r7, r5
00639330  01 a0 47 e2                                      sub sl, r7, #1
00639334  aa af 8a e0                                      add sl, sl, sl, lsr #31
00639338  98 54 20 e0                                      mla r0, r8, r4, r5
0063933c  0b 10 a0 e1                                      mov r1, fp
00639340  ba fa ff eb                                      bl #0x637e30
00639344  ca a0 a0 e1                                      asr sl, sl, #1
00639348  07 00 56 e1                                      cmp r6, r7
0063934c  98 5a 23 e0                                      mla r3, r8, sl, r5
00639350  e3 ff ff aa                                      bge #0x6392e4
00639354  98 10 93 e5                                      ldr r1, [r3, #0x98]
00639358  98 00 99 e5                                      ldr r0, [sb, #0x98]
0063935c  ea 54 f3 eb                                      bl #0x30e70c
00639360  00 00 50 e3                                      cmp r0, #0
00639364  07 40 a0 e1                                      mov r4, r7
00639368  dd ff ff 0a                                      beq #0x6392e4
0063936c  ed ff ff ea                                      b #0x639328

; FUNCTION 0x00639370, declared_size=208, range_size=208, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPN6glitch2ps12GNPSParticleEiS2_NS1_9AlphaSortIS2_EEEvT_T0_S7_T1_T2_
; demangled: void std::__adjust_heap<glitch::ps::GNPSParticle*, int, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, int, int, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639370  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00639374  01 40 81 e2                                      add r4, r1, #1
00639378  84 40 a0 e1                                      lsl r4, r4, #1
0063937c  b4 d0 4d e2                                      sub sp, sp, #0xb4
00639380  02 00 54 e1                                      cmp r4, r2
00639384  08 10 8d e5                                      str r1, [sp, #8]
00639388  02 60 a0 e1                                      mov r6, r2
0063938c  00 50 a0 e1                                      mov r5, r0
00639390  0c 30 8d e5                                      str r3, [sp, #0xc]
00639394  01 80 a0 a1                                      movge r8, r1
00639398  12 00 00 aa                                      bge #0x6393e8
0063939c  08 b0 9d e5                                      ldr fp, [sp, #8]
006393a0  9c a0 a0 e3                                      mov sl, #0x9c
006393a4  01 80 44 e2                                      sub r8, r4, #1
006393a8  9a 54 27 e0                                      mla r7, sl, r4, r5
006393ac  9a 58 29 e0                                      mla sb, sl, r8, r5
006393b0  98 10 97 e5                                      ldr r1, [r7, #0x98]
006393b4  98 00 99 e5                                      ldr r0, [sb, #0x98]
006393b8  d3 54 f3 eb                                      bl #0x30e70c
006393bc  00 00 50 e3                                      cmp r0, #0
006393c0  04 80 a0 01                                      moveq r8, r4
006393c4  09 70 a0 11                                      movne r7, sb
006393c8  01 40 88 e2                                      add r4, r8, #1
006393cc  9a 5b 20 e0                                      mla r0, sl, fp, r5
006393d0  07 10 a0 e1                                      mov r1, r7
006393d4  84 40 a0 e1                                      lsl r4, r4, #1
006393d8  94 fa ff eb                                      bl #0x637e30
006393dc  04 00 56 e1                                      cmp r6, r4
006393e0  08 b0 a0 e1                                      mov fp, r8
006393e4  ee ff ff ca                                      bgt #0x6393a4
006393e8  06 00 54 e1                                      cmp r4, r6
006393ec  0c 00 00 0a                                      beq #0x639424
006393f0  10 40 8d e2                                      add r4, sp, #0x10
006393f4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006393f8  04 00 a0 e1                                      mov r0, r4
006393fc  3c fa ff eb                                      bl #0x637cf4
00639400  ac c0 8d e2                                      add ip, sp, #0xac
00639404  05 00 a0 e1                                      mov r0, r5
00639408  08 10 a0 e1                                      mov r1, r8
0063940c  08 20 9d e5                                      ldr r2, [sp, #8]
00639410  04 30 a0 e1                                      mov r3, r4
00639414  00 c0 8d e5                                      str ip, [sp]
00639418  a7 ff ff eb                                      bl #0x6392bc
0063941c  b4 d0 8d e2                                      add sp, sp, #0xb4
00639420  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00639424  01 40 44 e2                                      sub r4, r4, #1
00639428  9c 10 a0 e3                                      mov r1, #0x9c
0063942c  91 58 20 e0                                      mla r0, r1, r8, r5
00639430  91 54 21 e0                                      mla r1, r1, r4, r5
00639434  7d fa ff eb                                      bl #0x637e30
00639438  04 80 a0 e1                                      mov r8, r4
0063943c  eb ff ff ea                                      b #0x6393f0

; FUNCTION 0x00639440, declared_size=128, range_size=128, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPN6glitch2ps12GNPSParticleENS1_9AlphaSortIS2_EES2_iEvT_S6_T0_PT1_PT2_
; demangled: void std::__make_heap<glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>, glitch::ps::GNPSParticle, int>(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>, glitch::ps::GNPSParticle*, int*)
; decoder-mode: arm
00639440  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00639444  01 10 60 e0                                      rsb r1, r0, r1
00639448  4e 0f 51 e3                                      cmp r1, #0x138
0063944c  ac d0 4d e2                                      sub sp, sp, #0xac
00639450  00 70 a0 e1                                      mov r7, r0
00639454  17 00 00 ba                                      blt #0x6394b8
00639458  97 3f 06 e3                                      movw r3, #0x6f97
0063945c  41 81 a0 e1                                      asr r8, r1, #2
00639460  f9 36 49 e3                                      movt r3, #0x96f9
00639464  93 08 08 e0                                      mul r8, r3, r8
00639468  9c 50 a0 e3                                      mov r5, #0x9c
0063946c  02 40 48 e2                                      sub r4, r8, #2
00639470  c4 40 a0 e1                                      asr r4, r4, #1
00639474  95 04 25 e0                                      mla r5, r5, r4, r0
00639478  08 60 8d e2                                      add r6, sp, #8
0063947c  a4 a0 8d e2                                      add sl, sp, #0xa4
00639480  00 00 00 ea                                      b #0x639488
00639484  01 40 44 e2                                      sub r4, r4, #1
00639488  05 10 a0 e1                                      mov r1, r5
0063948c  06 00 a0 e1                                      mov r0, r6
00639490  17 fa ff eb                                      bl #0x637cf4
00639494  04 10 a0 e1                                      mov r1, r4
00639498  07 00 a0 e1                                      mov r0, r7
0063949c  08 20 a0 e1                                      mov r2, r8
006394a0  06 30 a0 e1                                      mov r3, r6
006394a4  00 a0 8d e5                                      str sl, [sp]
006394a8  b0 ff ff eb                                      bl #0x639370
006394ac  00 00 54 e3                                      cmp r4, #0
006394b0  9c 50 45 e2                                      sub r5, r5, #0x9c
006394b4  f2 ff ff 1a                                      bne #0x639484
006394b8  ac d0 8d e2                                      add sp, sp, #0xac
006394bc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x006394c0, declared_size=100, range_size=100, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN6glitch2ps12GNPSParticleES2_NS1_9AlphaSortIS2_EEiEvT_S6_S6_T0_T1_PT2_
; demangled: void std::__pop_heap<glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>, int>(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>, int*)
; decoder-mode: arm
006394c0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006394c4  00 40 a0 e1                                      mov r4, r0
006394c8  ac d0 4d e2                                      sub sp, sp, #0xac
006394cc  03 60 a0 e1                                      mov r6, r3
006394d0  02 00 a0 e1                                      mov r0, r2
006394d4  08 50 8d e2                                      add r5, sp, #8
006394d8  01 70 a0 e1                                      mov r7, r1
006394dc  04 10 a0 e1                                      mov r1, r4
006394e0  52 fa ff eb                                      bl #0x637e30
006394e4  06 10 a0 e1                                      mov r1, r6
006394e8  05 00 a0 e1                                      mov r0, r5
006394ec  00 fa ff eb                                      bl #0x637cf4
006394f0  07 70 64 e0                                      rsb r7, r4, r7
006394f4  97 3f 06 e3                                      movw r3, #0x6f97
006394f8  47 21 a0 e1                                      asr r2, r7, #2
006394fc  f9 36 49 e3                                      movt r3, #0x96f9
00639500  93 02 02 e0                                      mul r2, r3, r2
00639504  a4 c0 8d e2                                      add ip, sp, #0xa4
00639508  04 00 a0 e1                                      mov r0, r4
0063950c  05 30 a0 e1                                      mov r3, r5
00639510  00 10 a0 e3                                      mov r1, #0
00639514  00 c0 8d e5                                      str ip, [sp]
00639518  94 ff ff eb                                      bl #0x639370
0063951c  ac d0 8d e2                                      add sp, sp, #0xac
00639520  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00639524, declared_size=76, range_size=76, mode=arm
; class-group: void std
; alias: _ZSt14__pop_heap_auxIPN6glitch2ps12GNPSParticleES2_NS1_9AlphaSortIS2_EEEvT_S6_PT0_T1_
; demangled: void std::__pop_heap_aux<glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639524  70 40 2d e9                                      push {r4, r5, r6, lr}
00639528  a8 d0 4d e2                                      sub sp, sp, #0xa8
0063952c  9c 50 41 e2                                      sub r5, r1, #0x9c
00639530  08 40 8d e2                                      add r4, sp, #8
00639534  00 60 a0 e1                                      mov r6, r0
00639538  05 10 a0 e1                                      mov r1, r5
0063953c  04 00 a0 e1                                      mov r0, r4
00639540  eb f9 ff eb                                      bl #0x637cf4
00639544  a4 c0 8d e2                                      add ip, sp, #0xa4
00639548  00 c0 8d e5                                      str ip, [sp]
0063954c  05 10 a0 e1                                      mov r1, r5
00639550  00 c0 a0 e3                                      mov ip, #0
00639554  06 00 a0 e1                                      mov r0, r6
00639558  04 30 a0 e1                                      mov r3, r4
0063955c  05 20 a0 e1                                      mov r2, r5
00639560  04 c0 8d e5                                      str ip, [sp, #4]
00639564  d5 ff ff eb                                      bl #0x6394c0
00639568  a8 d0 8d e2                                      add sp, sp, #0xa8
0063956c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00639804, declared_size=128, range_size=128, mode=arm
; class-group: void std
; alias: _ZSt4sortIPN6glitch2ps12GNPSParticleENS1_9AlphaSortIS2_EEEvT_S6_T0_
; demangled: void std::sort<glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639804  30 40 2d e9                                      push {r4, r5, lr}
00639808  01 00 50 e1                                      cmp r0, r1
0063980c  14 d0 4d e2                                      sub sp, sp, #0x14
00639810  00 50 a0 e1                                      mov r5, r0
00639814  01 40 a0 e1                                      mov r4, r1
00639818  17 00 00 0a                                      beq #0x63987c
0063981c  01 20 60 e0                                      rsb r2, r0, r1
00639820  97 3f 06 e3                                      movw r3, #0x6f97
00639824  f9 36 49 e3                                      movt r3, #0x96f9
00639828  42 21 a0 e1                                      asr r2, r2, #2
0063982c  93 02 02 e0                                      mul r2, r3, r2
00639830  01 00 52 e3                                      cmp r2, #1
00639834  00 30 a0 03                                      moveq r3, #0
00639838  05 00 00 0a                                      beq #0x639854
0063983c  00 30 a0 e3                                      mov r3, #0
00639840  c2 20 a0 e1                                      asr r2, r2, #1
00639844  01 00 52 e3                                      cmp r2, #1
00639848  01 30 83 e2                                      add r3, r3, #1
0063984c  fb ff ff 1a                                      bne #0x639840
00639850  83 30 a0 e1                                      lsl r3, r3, #1
00639854  00 20 a0 e3                                      mov r2, #0
00639858  05 00 a0 e1                                      mov r0, r5
0063985c  04 10 a0 e1                                      mov r1, r4
00639860  0c c0 8d e2                                      add ip, sp, #0xc
00639864  00 c0 8d e5                                      str ip, [sp]
00639868  75 ff ff eb                                      bl #0x639644
0063986c  05 00 a0 e1                                      mov r0, r5
00639870  04 10 a0 e1                                      mov r1, r4
00639874  08 20 8d e2                                      add r2, sp, #8
00639878  77 fe ff eb                                      bl #0x63925c
0063987c  14 d0 8d e2                                      add sp, sp, #0x14
00639880  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00639d1c, declared_size=124, range_size=124, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPPN6glitch2ps6PForceINS1_12GNPSParticleEEEiS5_NS1_17SortPriorityForceIS3_EEEvT_T0_SA_T1_T2_
; demangled: void std::__push_heap<glitch::ps::PForce<glitch::ps::GNPSParticle>**, int, glitch::ps::PForce<glitch::ps::GNPSParticle>*, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle> >(glitch::ps::PForce<glitch::ps::GNPSParticle>**, int, int, glitch::ps::PForce<glitch::ps::GNPSParticle>*, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639d1c  02 00 51 e1                                      cmp r1, r2
00639d20  f0 00 2d e9                                      push {r4, r5, r6, r7}
00639d24  12 00 00 da                                      ble #0x639d74
00639d28  01 c0 41 e2                                      sub ip, r1, #1
00639d2c  ac cf 8c e0                                      add ip, ip, ip, lsr #31
00639d30  08 50 93 e5                                      ldr r5, [r3, #8]
00639d34  cc c0 a0 e1                                      asr ip, ip, #1
00639d38  0c 41 90 e7                                      ldr r4, [r0, ip, lsl #2]
00639d3c  08 60 94 e5                                      ldr r6, [r4, #8]
00639d40  05 00 56 e1                                      cmp r6, r5
00639d44  0a 00 00 aa                                      bge #0x639d74
00639d48  01 50 4c e2                                      sub r5, ip, #1
00639d4c  a5 5f 85 e0                                      add r5, r5, r5, lsr #31
00639d50  0c 00 52 e1                                      cmp r2, ip
00639d54  01 41 80 e7                                      str r4, [r0, r1, lsl #2]
00639d58  c5 50 a0 e1                                      asr r5, r5, #1
00639d5c  0c 10 a0 e1                                      mov r1, ip
00639d60  0c 71 80 e0                                      add r7, r0, ip, lsl #2
00639d64  04 00 00 ba                                      blt #0x639d7c
00639d68  00 30 87 e5                                      str r3, [r7]
00639d6c  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00639d70  1e ff 2f e1                                      bx lr
00639d74  01 71 80 e0                                      add r7, r0, r1, lsl #2
00639d78  fa ff ff ea                                      b #0x639d68
00639d7c  05 41 90 e7                                      ldr r4, [r0, r5, lsl #2]
00639d80  08 60 93 e5                                      ldr r6, [r3, #8]
00639d84  05 c0 a0 e1                                      mov ip, r5
00639d88  08 50 94 e5                                      ldr r5, [r4, #8]
00639d8c  06 00 55 e1                                      cmp r5, r6
00639d90  f4 ff ff aa                                      bge #0x639d68
00639d94  eb ff ff ea                                      b #0x639d48

; FUNCTION 0x00639d98, declared_size=136, range_size=136, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPPN6glitch2ps6PForceINS1_12GNPSParticleEEEiS5_NS1_17SortPriorityForceIS3_EEEvT_T0_SA_T1_T2_
; demangled: void std::__adjust_heap<glitch::ps::PForce<glitch::ps::GNPSParticle>**, int, glitch::ps::PForce<glitch::ps::GNPSParticle>*, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle> >(glitch::ps::PForce<glitch::ps::GNPSParticle>**, int, int, glitch::ps::PForce<glitch::ps::GNPSParticle>*, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639d98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00639d9c  01 c0 a0 e1                                      mov ip, r1
00639da0  01 10 81 e2                                      add r1, r1, #1
00639da4  81 e0 a0 e1                                      lsl lr, r1, #1
00639da8  02 00 5e e1                                      cmp lr, r2
00639dac  10 d0 4d e2                                      sub sp, sp, #0x10
00639db0  0c 10 a0 a1                                      movge r1, ip
00639db4  0e 00 00 aa                                      bge #0x639df4
00639db8  0c 60 a0 e1                                      mov r6, ip
00639dbc  01 10 4e e2                                      sub r1, lr, #1
00639dc0  0e 41 90 e7                                      ldr r4, [r0, lr, lsl #2]
00639dc4  01 51 90 e7                                      ldr r5, [r0, r1, lsl #2]
00639dc8  08 80 94 e5                                      ldr r8, [r4, #8]
00639dcc  08 70 95 e5                                      ldr r7, [r5, #8]
00639dd0  07 00 58 e1                                      cmp r8, r7
00639dd4  0e 10 a0 a1                                      movge r1, lr
00639dd8  01 e0 81 e2                                      add lr, r1, #1
00639ddc  8e e0 a0 e1                                      lsl lr, lr, #1
00639de0  05 40 a0 b1                                      movlt r4, r5
00639de4  0e 00 52 e1                                      cmp r2, lr
00639de8  06 41 80 e7                                      str r4, [r0, r6, lsl #2]
00639dec  01 60 a0 e1                                      mov r6, r1
00639df0  f1 ff ff ca                                      bgt #0x639dbc
00639df4  02 00 5e e1                                      cmp lr, r2
00639df8  01 e0 4e 02                                      subeq lr, lr, #1
00639dfc  0e 21 90 07                                      ldreq r2, [r0, lr, lsl #2]
00639e00  01 21 80 07                                      streq r2, [r0, r1, lsl #2]
00639e04  0c 20 a0 e1                                      mov r2, ip
00639e08  0e 10 a0 01                                      moveq r1, lr
00639e0c  0c c0 8d e2                                      add ip, sp, #0xc
00639e10  00 c0 8d e5                                      str ip, [sp]
00639e14  c0 ff ff eb                                      bl #0x639d1c
00639e18  10 d0 8d e2                                      add sp, sp, #0x10
00639e1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00639e20, declared_size=100, range_size=100, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPPN6glitch2ps6PForceINS1_12GNPSParticleEEENS1_17SortPriorityForceIS3_EES5_iEvT_S9_T0_PT1_PT2_
; demangled: void std::__make_heap<glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>, glitch::ps::PForce<glitch::ps::GNPSParticle>*, int>(glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>, glitch::ps::PForce<glitch::ps::GNPSParticle>**, int*)
; decoder-mode: arm
00639e20  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00639e24  01 10 60 e0                                      rsb r1, r0, r1
00639e28  07 00 51 e3                                      cmp r1, #7
00639e2c  14 d0 4d e2                                      sub sp, sp, #0x14
00639e30  00 60 a0 e1                                      mov r6, r0
00639e34  10 00 00 da                                      ble #0x639e7c
00639e38  41 81 a0 e1                                      asr r8, r1, #2
00639e3c  02 40 48 e2                                      sub r4, r8, #2
00639e40  c4 40 a0 e1                                      asr r4, r4, #1
00639e44  00 50 a0 e3                                      mov r5, #0
00639e48  0c a0 8d e2                                      add sl, sp, #0xc
00639e4c  04 71 80 e0                                      add r7, r0, r4, lsl #2
00639e50  00 00 00 ea                                      b #0x639e58
00639e54  01 40 44 e2                                      sub r4, r4, #1
00639e58  05 30 97 e7                                      ldr r3, [r7, r5]
00639e5c  04 10 a0 e1                                      mov r1, r4
00639e60  06 00 a0 e1                                      mov r0, r6
00639e64  08 20 a0 e1                                      mov r2, r8
00639e68  00 a0 8d e5                                      str sl, [sp]
00639e6c  c9 ff ff eb                                      bl #0x639d98
00639e70  00 00 54 e3                                      cmp r4, #0
00639e74  04 50 45 e2                                      sub r5, r5, #4
00639e78  f5 ff ff 1a                                      bne #0x639e54
00639e7c  14 d0 8d e2                                      add sp, sp, #0x14
00639e80  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00639e84, declared_size=84, range_size=84, mode=arm
; class-group: void std
; alias: _ZSt9sort_heapIPPN6glitch2ps6PForceINS1_12GNPSParticleEEENS1_17SortPriorityForceIS3_EEEvT_S9_T0_
; demangled: void std::sort_heap<glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle> >(glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639e84  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00639e88  01 50 60 e0                                      rsb r5, r0, r1
00639e8c  07 00 55 e3                                      cmp r5, #7
00639e90  14 d0 4d e2                                      sub sp, sp, #0x14
00639e94  00 60 a0 e1                                      mov r6, r0
00639e98  0c 00 00 da                                      ble #0x639ed0
00639e9c  01 40 a0 e1                                      mov r4, r1
00639ea0  0c 70 8d e2                                      add r7, sp, #0xc
00639ea4  00 20 96 e5                                      ldr r2, [r6]
00639ea8  04 50 45 e2                                      sub r5, r5, #4
00639eac  04 30 14 e5                                      ldr r3, [r4, #-4]
00639eb0  06 00 a0 e1                                      mov r0, r6
00639eb4  04 20 24 e5                                      str r2, [r4, #-4]!
00639eb8  00 10 a0 e3                                      mov r1, #0
00639ebc  45 21 a0 e1                                      asr r2, r5, #2
00639ec0  00 70 8d e5                                      str r7, [sp]
00639ec4  b3 ff ff eb                                      bl #0x639d98
00639ec8  07 00 55 e3                                      cmp r5, #7
00639ecc  f4 ff ff ca                                      bgt #0x639ea4
00639ed0  14 d0 8d e2                                      add sp, sp, #0x14
00639ed4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0063b088, declared_size=116, range_size=116, mode=arm
; class-group: void std
; alias: _ZSt4sortIPPN6glitch2ps6PForceINS1_12GNPSParticleEEENS1_17SortPriorityForceIS3_EEEvT_S9_T0_
; demangled: void std::sort<glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle> >(glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>)
; decoder-mode: arm
0063b088  30 40 2d e9                                      push {r4, r5, lr}
0063b08c  01 00 50 e1                                      cmp r0, r1
0063b090  14 d0 4d e2                                      sub sp, sp, #0x14
0063b094  00 50 a0 e1                                      mov r5, r0
0063b098  01 40 a0 e1                                      mov r4, r1
0063b09c  14 00 00 0a                                      beq #0x63b0f4
0063b0a0  01 20 60 e0                                      rsb r2, r0, r1
0063b0a4  42 21 a0 e1                                      asr r2, r2, #2
0063b0a8  01 00 52 e3                                      cmp r2, #1
0063b0ac  00 30 a0 03                                      moveq r3, #0
0063b0b0  05 00 00 0a                                      beq #0x63b0cc
0063b0b4  00 30 a0 e3                                      mov r3, #0
0063b0b8  c2 20 a0 e1                                      asr r2, r2, #1
0063b0bc  01 00 52 e3                                      cmp r2, #1
0063b0c0  01 30 83 e2                                      add r3, r3, #1
0063b0c4  fb ff ff 1a                                      bne #0x63b0b8
0063b0c8  83 30 a0 e1                                      lsl r3, r3, #1
0063b0cc  00 20 a0 e3                                      mov r2, #0
0063b0d0  05 00 a0 e1                                      mov r0, r5
0063b0d4  04 10 a0 e1                                      mov r1, r4
0063b0d8  0c c0 8d e2                                      add ip, sp, #0xc
0063b0dc  00 c0 8d e5                                      str ip, [sp]
0063b0e0  a5 fb ff eb                                      bl #0x639f7c
0063b0e4  05 00 a0 e1                                      mov r0, r5
0063b0e8  04 10 a0 e1                                      mov r1, r4
0063b0ec  08 20 8d e2                                      add r2, sp, #8
0063b0f0  bc ff ff eb                                      bl #0x63afe8
0063b0f4  14 d0 8d e2                                      add sp, sp, #0x14
0063b0f8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0064ca74, declared_size=124, range_size=124, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPPN6glitch2ps6PForceINS1_9SParticleEEEiS5_NS1_17SortPriorityForceIS3_EEEvT_T0_SA_T1_T2_
; demangled: void std::__push_heap<glitch::ps::PForce<glitch::ps::SParticle>**, int, glitch::ps::PForce<glitch::ps::SParticle>*, glitch::ps::SortPriorityForce<glitch::ps::SParticle> >(glitch::ps::PForce<glitch::ps::SParticle>**, int, int, glitch::ps::PForce<glitch::ps::SParticle>*, glitch::ps::SortPriorityForce<glitch::ps::SParticle>)
; decoder-mode: arm
0064ca74  02 00 51 e1                                      cmp r1, r2
0064ca78  f0 00 2d e9                                      push {r4, r5, r6, r7}
0064ca7c  12 00 00 da                                      ble #0x64cacc
0064ca80  01 c0 41 e2                                      sub ip, r1, #1
0064ca84  ac cf 8c e0                                      add ip, ip, ip, lsr #31
0064ca88  08 50 93 e5                                      ldr r5, [r3, #8]
0064ca8c  cc c0 a0 e1                                      asr ip, ip, #1
0064ca90  0c 41 90 e7                                      ldr r4, [r0, ip, lsl #2]
0064ca94  08 60 94 e5                                      ldr r6, [r4, #8]
0064ca98  05 00 56 e1                                      cmp r6, r5
0064ca9c  0a 00 00 aa                                      bge #0x64cacc
0064caa0  01 50 4c e2                                      sub r5, ip, #1
0064caa4  a5 5f 85 e0                                      add r5, r5, r5, lsr #31
0064caa8  0c 00 52 e1                                      cmp r2, ip
0064caac  01 41 80 e7                                      str r4, [r0, r1, lsl #2]
0064cab0  c5 50 a0 e1                                      asr r5, r5, #1
0064cab4  0c 10 a0 e1                                      mov r1, ip
0064cab8  0c 71 80 e0                                      add r7, r0, ip, lsl #2
0064cabc  04 00 00 ba                                      blt #0x64cad4
0064cac0  00 30 87 e5                                      str r3, [r7]
0064cac4  f0 00 bd e8                                      pop {r4, r5, r6, r7}
0064cac8  1e ff 2f e1                                      bx lr
0064cacc  01 71 80 e0                                      add r7, r0, r1, lsl #2
0064cad0  fa ff ff ea                                      b #0x64cac0
0064cad4  05 41 90 e7                                      ldr r4, [r0, r5, lsl #2]
0064cad8  08 60 93 e5                                      ldr r6, [r3, #8]
0064cadc  05 c0 a0 e1                                      mov ip, r5
0064cae0  08 50 94 e5                                      ldr r5, [r4, #8]
0064cae4  06 00 55 e1                                      cmp r5, r6
0064cae8  f4 ff ff aa                                      bge #0x64cac0
0064caec  eb ff ff ea                                      b #0x64caa0

; FUNCTION 0x0064caf0, declared_size=136, range_size=136, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPPN6glitch2ps6PForceINS1_9SParticleEEEiS5_NS1_17SortPriorityForceIS3_EEEvT_T0_SA_T1_T2_
; demangled: void std::__adjust_heap<glitch::ps::PForce<glitch::ps::SParticle>**, int, glitch::ps::PForce<glitch::ps::SParticle>*, glitch::ps::SortPriorityForce<glitch::ps::SParticle> >(glitch::ps::PForce<glitch::ps::SParticle>**, int, int, glitch::ps::PForce<glitch::ps::SParticle>*, glitch::ps::SortPriorityForce<glitch::ps::SParticle>)
; decoder-mode: arm
0064caf0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064caf4  01 c0 a0 e1                                      mov ip, r1
0064caf8  01 10 81 e2                                      add r1, r1, #1
0064cafc  81 e0 a0 e1                                      lsl lr, r1, #1
0064cb00  02 00 5e e1                                      cmp lr, r2
0064cb04  10 d0 4d e2                                      sub sp, sp, #0x10
0064cb08  0c 10 a0 a1                                      movge r1, ip
0064cb0c  0e 00 00 aa                                      bge #0x64cb4c
0064cb10  0c 60 a0 e1                                      mov r6, ip
0064cb14  01 10 4e e2                                      sub r1, lr, #1
0064cb18  0e 41 90 e7                                      ldr r4, [r0, lr, lsl #2]
0064cb1c  01 51 90 e7                                      ldr r5, [r0, r1, lsl #2]
0064cb20  08 80 94 e5                                      ldr r8, [r4, #8]
0064cb24  08 70 95 e5                                      ldr r7, [r5, #8]
0064cb28  07 00 58 e1                                      cmp r8, r7
0064cb2c  0e 10 a0 a1                                      movge r1, lr
0064cb30  01 e0 81 e2                                      add lr, r1, #1
0064cb34  8e e0 a0 e1                                      lsl lr, lr, #1
0064cb38  05 40 a0 b1                                      movlt r4, r5
0064cb3c  0e 00 52 e1                                      cmp r2, lr
0064cb40  06 41 80 e7                                      str r4, [r0, r6, lsl #2]
0064cb44  01 60 a0 e1                                      mov r6, r1
0064cb48  f1 ff ff ca                                      bgt #0x64cb14
0064cb4c  02 00 5e e1                                      cmp lr, r2
0064cb50  01 e0 4e 02                                      subeq lr, lr, #1
0064cb54  0e 21 90 07                                      ldreq r2, [r0, lr, lsl #2]
0064cb58  01 21 80 07                                      streq r2, [r0, r1, lsl #2]
0064cb5c  0c 20 a0 e1                                      mov r2, ip
0064cb60  0e 10 a0 01                                      moveq r1, lr
0064cb64  0c c0 8d e2                                      add ip, sp, #0xc
0064cb68  00 c0 8d e5                                      str ip, [sp]
0064cb6c  c0 ff ff eb                                      bl #0x64ca74
0064cb70  10 d0 8d e2                                      add sp, sp, #0x10
0064cb74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0064cb78, declared_size=100, range_size=100, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPPN6glitch2ps6PForceINS1_9SParticleEEENS1_17SortPriorityForceIS3_EES5_iEvT_S9_T0_PT1_PT2_
; demangled: void std::__make_heap<glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle>, glitch::ps::PForce<glitch::ps::SParticle>*, int>(glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle>, glitch::ps::PForce<glitch::ps::SParticle>**, int*)
; decoder-mode: arm
0064cb78  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0064cb7c  01 10 60 e0                                      rsb r1, r0, r1
0064cb80  07 00 51 e3                                      cmp r1, #7
0064cb84  14 d0 4d e2                                      sub sp, sp, #0x14
0064cb88  00 60 a0 e1                                      mov r6, r0
0064cb8c  10 00 00 da                                      ble #0x64cbd4
0064cb90  41 81 a0 e1                                      asr r8, r1, #2
0064cb94  02 40 48 e2                                      sub r4, r8, #2
0064cb98  c4 40 a0 e1                                      asr r4, r4, #1
0064cb9c  00 50 a0 e3                                      mov r5, #0
0064cba0  0c a0 8d e2                                      add sl, sp, #0xc
0064cba4  04 71 80 e0                                      add r7, r0, r4, lsl #2
0064cba8  00 00 00 ea                                      b #0x64cbb0
0064cbac  01 40 44 e2                                      sub r4, r4, #1
0064cbb0  05 30 97 e7                                      ldr r3, [r7, r5]
0064cbb4  04 10 a0 e1                                      mov r1, r4
0064cbb8  06 00 a0 e1                                      mov r0, r6
0064cbbc  08 20 a0 e1                                      mov r2, r8
0064cbc0  00 a0 8d e5                                      str sl, [sp]
0064cbc4  c9 ff ff eb                                      bl #0x64caf0
0064cbc8  00 00 54 e3                                      cmp r4, #0
0064cbcc  04 50 45 e2                                      sub r5, r5, #4
0064cbd0  f5 ff ff 1a                                      bne #0x64cbac
0064cbd4  14 d0 8d e2                                      add sp, sp, #0x14
0064cbd8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0064cbdc, declared_size=84, range_size=84, mode=arm
; class-group: void std
; alias: _ZSt9sort_heapIPPN6glitch2ps6PForceINS1_9SParticleEEENS1_17SortPriorityForceIS3_EEEvT_S9_T0_
; demangled: void std::sort_heap<glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle> >(glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle>)
; decoder-mode: arm
0064cbdc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0064cbe0  01 50 60 e0                                      rsb r5, r0, r1
0064cbe4  07 00 55 e3                                      cmp r5, #7
0064cbe8  14 d0 4d e2                                      sub sp, sp, #0x14
0064cbec  00 60 a0 e1                                      mov r6, r0
0064cbf0  0c 00 00 da                                      ble #0x64cc28
0064cbf4  01 40 a0 e1                                      mov r4, r1
0064cbf8  0c 70 8d e2                                      add r7, sp, #0xc
0064cbfc  00 20 96 e5                                      ldr r2, [r6]
0064cc00  04 50 45 e2                                      sub r5, r5, #4
0064cc04  04 30 14 e5                                      ldr r3, [r4, #-4]
0064cc08  06 00 a0 e1                                      mov r0, r6
0064cc0c  04 20 24 e5                                      str r2, [r4, #-4]!
0064cc10  00 10 a0 e3                                      mov r1, #0
0064cc14  45 21 a0 e1                                      asr r2, r5, #2
0064cc18  00 70 8d e5                                      str r7, [sp]
0064cc1c  b3 ff ff eb                                      bl #0x64caf0
0064cc20  07 00 55 e3                                      cmp r5, #7
0064cc24  f4 ff ff ca                                      bgt #0x64cbfc
0064cc28  14 d0 8d e2                                      add sp, sp, #0x14
0064cc2c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0064d8d4, declared_size=116, range_size=116, mode=arm
; class-group: void std
; alias: _ZSt4sortIPPN6glitch2ps6PForceINS1_9SParticleEEENS1_17SortPriorityForceIS3_EEEvT_S9_T0_
; demangled: void std::sort<glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle> >(glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle>)
; decoder-mode: arm
0064d8d4  30 40 2d e9                                      push {r4, r5, lr}
0064d8d8  01 00 50 e1                                      cmp r0, r1
0064d8dc  14 d0 4d e2                                      sub sp, sp, #0x14
0064d8e0  00 50 a0 e1                                      mov r5, r0
0064d8e4  01 40 a0 e1                                      mov r4, r1
0064d8e8  14 00 00 0a                                      beq #0x64d940
0064d8ec  01 20 60 e0                                      rsb r2, r0, r1
0064d8f0  42 21 a0 e1                                      asr r2, r2, #2
0064d8f4  01 00 52 e3                                      cmp r2, #1
0064d8f8  00 30 a0 03                                      moveq r3, #0
0064d8fc  05 00 00 0a                                      beq #0x64d918
0064d900  00 30 a0 e3                                      mov r3, #0
0064d904  c2 20 a0 e1                                      asr r2, r2, #1
0064d908  01 00 52 e3                                      cmp r2, #1
0064d90c  01 30 83 e2                                      add r3, r3, #1
0064d910  fb ff ff 1a                                      bne #0x64d904
0064d914  83 30 a0 e1                                      lsl r3, r3, #1
0064d918  00 20 a0 e3                                      mov r2, #0
0064d91c  05 00 a0 e1                                      mov r0, r5
0064d920  04 10 a0 e1                                      mov r1, r4
0064d924  0c c0 8d e2                                      add ip, sp, #0xc
0064d928  00 c0 8d e5                                      str ip, [sp]
0064d92c  e8 fc ff eb                                      bl #0x64ccd4
0064d930  05 00 a0 e1                                      mov r0, r5
0064d934  04 10 a0 e1                                      mov r1, r4
0064d938  08 20 8d e2                                      add r2, sp, #8
0064d93c  bc ff ff eb                                      bl #0x64d834
0064d940  14 d0 8d e2                                      add sp, sp, #0x14
0064d944  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0065092c, declared_size=560, range_size=560, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN6glitch2ps9SParticleEiS2_NS1_9AlphaSortIS2_EEEvT_T0_S7_T1_T2_
; demangled: void std::__push_heap<glitch::ps::SParticle*, int, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, int, int, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
0065092c  02 00 51 e1                                      cmp r1, r2
00650930  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00650934  01 40 a0 e1                                      mov r4, r1
00650938  02 60 a0 e1                                      mov r6, r2
0065093c  00 50 a0 e1                                      mov r5, r0
00650940  03 80 a0 e1                                      mov r8, r3
00650944  34 00 00 ca                                      bgt #0x650a1c
00650948  64 70 a0 e3                                      mov r7, #0x64
0065094c  97 01 27 e0                                      mla r7, r7, r1, r0
00650950  00 30 98 e5                                      ldr r3, [r8]
00650954  00 30 87 e5                                      str r3, [r7]
00650958  04 30 98 e5                                      ldr r3, [r8, #4]
0065095c  04 30 87 e5                                      str r3, [r7, #4]
00650960  08 30 98 e5                                      ldr r3, [r8, #8]
00650964  08 30 87 e5                                      str r3, [r7, #8]
00650968  0c 30 98 e5                                      ldr r3, [r8, #0xc]
0065096c  0c 30 87 e5                                      str r3, [r7, #0xc]
00650970  10 30 98 e5                                      ldr r3, [r8, #0x10]
00650974  10 30 87 e5                                      str r3, [r7, #0x10]
00650978  14 30 98 e5                                      ldr r3, [r8, #0x14]
0065097c  14 30 87 e5                                      str r3, [r7, #0x14]
00650980  18 30 98 e5                                      ldr r3, [r8, #0x18]
00650984  18 30 87 e5                                      str r3, [r7, #0x18]
00650988  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
0065098c  1c 30 87 e5                                      str r3, [r7, #0x1c]
00650990  20 30 98 e5                                      ldr r3, [r8, #0x20]
00650994  20 30 87 e5                                      str r3, [r7, #0x20]
00650998  24 30 98 e5                                      ldr r3, [r8, #0x24]
0065099c  24 30 87 e5                                      str r3, [r7, #0x24]
006509a0  28 30 98 e5                                      ldr r3, [r8, #0x28]
006509a4  28 30 87 e5                                      str r3, [r7, #0x28]
006509a8  2c 30 98 e5                                      ldr r3, [r8, #0x2c]
006509ac  2c 30 87 e5                                      str r3, [r7, #0x2c]
006509b0  30 30 98 e5                                      ldr r3, [r8, #0x30]
006509b4  30 30 87 e5                                      str r3, [r7, #0x30]
006509b8  34 30 98 e5                                      ldr r3, [r8, #0x34]
006509bc  34 30 87 e5                                      str r3, [r7, #0x34]
006509c0  38 30 98 e5                                      ldr r3, [r8, #0x38]
006509c4  38 30 87 e5                                      str r3, [r7, #0x38]
006509c8  3c 30 98 e5                                      ldr r3, [r8, #0x3c]
006509cc  3c 30 87 e5                                      str r3, [r7, #0x3c]
006509d0  40 30 98 e5                                      ldr r3, [r8, #0x40]
006509d4  40 30 87 e5                                      str r3, [r7, #0x40]
006509d8  44 30 98 e5                                      ldr r3, [r8, #0x44]
006509dc  44 30 87 e5                                      str r3, [r7, #0x44]
006509e0  48 30 98 e5                                      ldr r3, [r8, #0x48]
006509e4  48 30 87 e5                                      str r3, [r7, #0x48]
006509e8  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
006509ec  4c 30 87 e5                                      str r3, [r7, #0x4c]
006509f0  50 30 98 e5                                      ldr r3, [r8, #0x50]
006509f4  50 30 87 e5                                      str r3, [r7, #0x50]
006509f8  54 30 98 e5                                      ldr r3, [r8, #0x54]
006509fc  54 30 87 e5                                      str r3, [r7, #0x54]
00650a00  58 30 98 e5                                      ldr r3, [r8, #0x58]
00650a04  58 30 87 e5                                      str r3, [r7, #0x58]
00650a08  5c 30 98 e5                                      ldr r3, [r8, #0x5c]
00650a0c  5c 30 87 e5                                      str r3, [r7, #0x5c]
00650a10  60 30 98 e5                                      ldr r3, [r8, #0x60]
00650a14  60 30 87 e5                                      str r3, [r7, #0x60]
00650a18  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00650a1c  01 a0 41 e2                                      sub sl, r1, #1
00650a20  aa af 8a e0                                      add sl, sl, sl, lsr #31
00650a24  64 90 a0 e3                                      mov sb, #0x64
00650a28  ca a0 a0 e1                                      asr sl, sl, #1
00650a2c  99 0a 23 e0                                      mla r3, sb, sl, r0
00650a30  60 00 98 e5                                      ldr r0, [r8, #0x60]
00650a34  60 10 93 e5                                      ldr r1, [r3, #0x60]
00650a38  33 f7 f2 eb                                      bl #0x30e70c
00650a3c  00 00 50 e3                                      cmp r0, #0
00650a40  99 54 27 00                                      mlaeq r7, sb, r4, r5
00650a44  c1 ff ff 0a                                      beq #0x650950
00650a48  00 00 00 ea                                      b #0x650a50
00650a4c  0b a0 a0 e1                                      mov sl, fp
00650a50  99 0a 07 e0                                      mul r7, sb, sl
00650a54  99 04 04 e0                                      mul r4, sb, r4
00650a58  07 20 95 e7                                      ldr r2, [r5, r7]
00650a5c  07 70 85 e0                                      add r7, r5, r7
00650a60  04 30 85 e0                                      add r3, r5, r4
00650a64  04 20 85 e7                                      str r2, [r5, r4]
00650a68  04 20 97 e5                                      ldr r2, [r7, #4]
00650a6c  01 b0 4a e2                                      sub fp, sl, #1
00650a70  ab bf 8b e0                                      add fp, fp, fp, lsr #31
00650a74  04 20 83 e5                                      str r2, [r3, #4]
00650a78  08 10 97 e5                                      ldr r1, [r7, #8]
00650a7c  cb b0 a0 e1                                      asr fp, fp, #1
00650a80  0a 00 56 e1                                      cmp r6, sl
00650a84  08 10 83 e5                                      str r1, [r3, #8]
00650a88  0c 10 97 e5                                      ldr r1, [r7, #0xc]
00650a8c  99 5b 22 e0                                      mla r2, sb, fp, r5
00650a90  0c 10 83 e5                                      str r1, [r3, #0xc]
00650a94  10 10 97 e5                                      ldr r1, [r7, #0x10]
00650a98  0a 40 a0 e1                                      mov r4, sl
00650a9c  10 10 83 e5                                      str r1, [r3, #0x10]
00650aa0  14 10 97 e5                                      ldr r1, [r7, #0x14]
00650aa4  14 10 83 e5                                      str r1, [r3, #0x14]
00650aa8  18 10 97 e5                                      ldr r1, [r7, #0x18]
00650aac  18 10 83 e5                                      str r1, [r3, #0x18]
00650ab0  1c 10 97 e5                                      ldr r1, [r7, #0x1c]
00650ab4  1c 10 83 e5                                      str r1, [r3, #0x1c]
00650ab8  20 10 97 e5                                      ldr r1, [r7, #0x20]
00650abc  20 10 83 e5                                      str r1, [r3, #0x20]
00650ac0  24 10 97 e5                                      ldr r1, [r7, #0x24]
00650ac4  24 10 83 e5                                      str r1, [r3, #0x24]
00650ac8  28 10 97 e5                                      ldr r1, [r7, #0x28]
00650acc  28 10 83 e5                                      str r1, [r3, #0x28]
00650ad0  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
00650ad4  2c 10 83 e5                                      str r1, [r3, #0x2c]
00650ad8  30 10 97 e5                                      ldr r1, [r7, #0x30]
00650adc  30 10 83 e5                                      str r1, [r3, #0x30]
00650ae0  34 10 97 e5                                      ldr r1, [r7, #0x34]
00650ae4  34 10 83 e5                                      str r1, [r3, #0x34]
00650ae8  38 10 97 e5                                      ldr r1, [r7, #0x38]
00650aec  38 10 83 e5                                      str r1, [r3, #0x38]
00650af0  3c 10 97 e5                                      ldr r1, [r7, #0x3c]
00650af4  3c 10 83 e5                                      str r1, [r3, #0x3c]
00650af8  40 10 97 e5                                      ldr r1, [r7, #0x40]
00650afc  40 10 83 e5                                      str r1, [r3, #0x40]
00650b00  44 10 97 e5                                      ldr r1, [r7, #0x44]
00650b04  44 10 83 e5                                      str r1, [r3, #0x44]
00650b08  48 10 97 e5                                      ldr r1, [r7, #0x48]
00650b0c  48 10 83 e5                                      str r1, [r3, #0x48]
00650b10  4c 10 97 e5                                      ldr r1, [r7, #0x4c]
00650b14  4c 10 83 e5                                      str r1, [r3, #0x4c]
00650b18  50 10 97 e5                                      ldr r1, [r7, #0x50]
00650b1c  50 10 83 e5                                      str r1, [r3, #0x50]
00650b20  54 10 97 e5                                      ldr r1, [r7, #0x54]
00650b24  54 10 83 e5                                      str r1, [r3, #0x54]
00650b28  58 10 97 e5                                      ldr r1, [r7, #0x58]
00650b2c  58 10 83 e5                                      str r1, [r3, #0x58]
00650b30  5c 10 97 e5                                      ldr r1, [r7, #0x5c]
00650b34  5c 10 83 e5                                      str r1, [r3, #0x5c]
00650b38  60 10 97 e5                                      ldr r1, [r7, #0x60]
00650b3c  60 10 83 e5                                      str r1, [r3, #0x60]
00650b40  82 ff ff aa                                      bge #0x650950
00650b44  60 10 92 e5                                      ldr r1, [r2, #0x60]
00650b48  60 00 98 e5                                      ldr r0, [r8, #0x60]
00650b4c  ee f6 f2 eb                                      bl #0x30e70c
00650b50  00 00 50 e3                                      cmp r0, #0
00650b54  7d ff ff 0a                                      beq #0x650950
00650b58  bb ff ff ea                                      b #0x650a4c

; FUNCTION 0x00650b5c, declared_size=856, range_size=856, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPN6glitch2ps9SParticleEiS2_NS1_9AlphaSortIS2_EEEvT_T0_S7_T1_T2_
; demangled: void std::__adjust_heap<glitch::ps::SParticle*, int, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, int, int, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
00650b5c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00650b60  01 40 81 e2                                      add r4, r1, #1
00650b64  84 40 a0 e1                                      lsl r4, r4, #1
00650b68  94 d0 4d e2                                      sub sp, sp, #0x94
00650b6c  02 00 54 e1                                      cmp r4, r2
00650b70  14 10 8d e5                                      str r1, [sp, #0x14]
00650b74  0c 20 8d e5                                      str r2, [sp, #0xc]
00650b78  00 50 a0 e1                                      mov r5, r0
00650b7c  03 80 a0 e1                                      mov r8, r3
00650b80  10 10 8d a5                                      strge r1, [sp, #0x10]
00650b84  47 00 00 aa                                      bge #0x650ca8
00650b88  14 b0 9d e5                                      ldr fp, [sp, #0x14]
00650b8c  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00650b90  64 70 a0 e3                                      mov r7, #0x64
00650b94  10 30 8d e5                                      str r3, [sp, #0x10]
00650b98  01 a0 44 e2                                      sub sl, r4, #1
00650b9c  97 54 26 e0                                      mla r6, r7, r4, r5
00650ba0  97 5a 28 e0                                      mla r8, r7, sl, r5
00650ba4  60 10 96 e5                                      ldr r1, [r6, #0x60]
00650ba8  60 00 98 e5                                      ldr r0, [r8, #0x60]
00650bac  d6 f6 f2 eb                                      bl #0x30e70c
00650bb0  00 00 50 e3                                      cmp r0, #0
00650bb4  08 60 a0 11                                      movne r6, r8
00650bb8  00 20 96 e5                                      ldr r2, [r6]
00650bbc  97 0b 0b e0                                      mul fp, r7, fp
00650bc0  04 a0 a0 01                                      moveq sl, r4
00650bc4  0b 20 85 e7                                      str r2, [r5, fp]
00650bc8  04 20 96 e5                                      ldr r2, [r6, #4]
00650bcc  0b 30 85 e0                                      add r3, r5, fp
00650bd0  01 40 8a e2                                      add r4, sl, #1
00650bd4  04 20 83 e5                                      str r2, [r3, #4]
00650bd8  08 20 96 e5                                      ldr r2, [r6, #8]
00650bdc  84 40 a0 e1                                      lsl r4, r4, #1
00650be0  04 00 59 e1                                      cmp sb, r4
00650be4  08 20 83 e5                                      str r2, [r3, #8]
00650be8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00650bec  0a b0 a0 e1                                      mov fp, sl
00650bf0  0c 20 83 e5                                      str r2, [r3, #0xc]
00650bf4  10 20 96 e5                                      ldr r2, [r6, #0x10]
00650bf8  10 20 83 e5                                      str r2, [r3, #0x10]
00650bfc  14 20 96 e5                                      ldr r2, [r6, #0x14]
00650c00  14 20 83 e5                                      str r2, [r3, #0x14]
00650c04  18 20 96 e5                                      ldr r2, [r6, #0x18]
00650c08  18 20 83 e5                                      str r2, [r3, #0x18]
00650c0c  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
00650c10  1c 20 83 e5                                      str r2, [r3, #0x1c]
00650c14  20 20 96 e5                                      ldr r2, [r6, #0x20]
00650c18  20 20 83 e5                                      str r2, [r3, #0x20]
00650c1c  24 20 96 e5                                      ldr r2, [r6, #0x24]
00650c20  24 20 83 e5                                      str r2, [r3, #0x24]
00650c24  28 20 96 e5                                      ldr r2, [r6, #0x28]
00650c28  28 20 83 e5                                      str r2, [r3, #0x28]
00650c2c  2c 20 96 e5                                      ldr r2, [r6, #0x2c]
00650c30  2c 20 83 e5                                      str r2, [r3, #0x2c]
00650c34  30 20 96 e5                                      ldr r2, [r6, #0x30]
00650c38  30 20 83 e5                                      str r2, [r3, #0x30]
00650c3c  34 20 96 e5                                      ldr r2, [r6, #0x34]
00650c40  34 20 83 e5                                      str r2, [r3, #0x34]
00650c44  38 20 96 e5                                      ldr r2, [r6, #0x38]
00650c48  38 20 83 e5                                      str r2, [r3, #0x38]
00650c4c  3c 20 96 e5                                      ldr r2, [r6, #0x3c]
00650c50  3c 20 83 e5                                      str r2, [r3, #0x3c]
00650c54  40 20 96 e5                                      ldr r2, [r6, #0x40]
00650c58  40 20 83 e5                                      str r2, [r3, #0x40]
00650c5c  44 20 96 e5                                      ldr r2, [r6, #0x44]
00650c60  44 20 83 e5                                      str r2, [r3, #0x44]
00650c64  48 20 96 e5                                      ldr r2, [r6, #0x48]
00650c68  48 20 83 e5                                      str r2, [r3, #0x48]
00650c6c  4c 20 96 e5                                      ldr r2, [r6, #0x4c]
00650c70  4c 20 83 e5                                      str r2, [r3, #0x4c]
00650c74  50 20 96 e5                                      ldr r2, [r6, #0x50]
00650c78  50 20 83 e5                                      str r2, [r3, #0x50]
00650c7c  54 20 96 e5                                      ldr r2, [r6, #0x54]
00650c80  54 20 83 e5                                      str r2, [r3, #0x54]
00650c84  58 20 96 e5                                      ldr r2, [r6, #0x58]
00650c88  58 20 83 e5                                      str r2, [r3, #0x58]
00650c8c  5c 20 96 e5                                      ldr r2, [r6, #0x5c]
00650c90  5c 20 83 e5                                      str r2, [r3, #0x5c]
00650c94  60 20 96 e5                                      ldr r2, [r6, #0x60]
00650c98  60 20 83 e5                                      str r2, [r3, #0x60]
00650c9c  bd ff ff ca                                      bgt #0x650b98
00650ca0  10 80 9d e5                                      ldr r8, [sp, #0x10]
00650ca4  10 a0 8d e5                                      str sl, [sp, #0x10]
00650ca8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00650cac  01 00 54 e1                                      cmp r4, r1
00650cb0  44 00 00 0a                                      beq #0x650dc8
00650cb4  28 10 98 e5                                      ldr r1, [r8, #0x28]
00650cb8  04 b0 98 e5                                      ldr fp, [r8, #4]
00650cbc  08 90 98 e5                                      ldr sb, [r8, #8]
00650cc0  0c a0 98 e5                                      ldr sl, [r8, #0xc]
00650cc4  10 70 98 e5                                      ldr r7, [r8, #0x10]
00650cc8  14 60 98 e5                                      ldr r6, [r8, #0x14]
00650ccc  18 40 98 e5                                      ldr r4, [r8, #0x18]
00650cd0  1c e0 98 e5                                      ldr lr, [r8, #0x1c]
00650cd4  20 c0 98 e5                                      ldr ip, [r8, #0x20]
00650cd8  24 00 98 e5                                      ldr r0, [r8, #0x24]
00650cdc  0c 10 8d e5                                      str r1, [sp, #0xc]
00650ce0  34 10 98 e5                                      ldr r1, [r8, #0x34]
00650ce4  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
00650ce8  30 30 98 e5                                      ldr r3, [r8, #0x30]
00650cec  18 10 8d e5                                      str r1, [sp, #0x18]
00650cf0  38 10 98 e5                                      ldr r1, [r8, #0x38]
00650cf4  1c 10 8d e5                                      str r1, [sp, #0x1c]
00650cf8  3c 10 98 e5                                      ldr r1, [r8, #0x3c]
00650cfc  20 10 8d e5                                      str r1, [sp, #0x20]
00650d00  40 10 98 e5                                      ldr r1, [r8, #0x40]
00650d04  24 10 8d e5                                      str r1, [sp, #0x24]
00650d08  00 10 98 e5                                      ldr r1, [r8]
00650d0c  30 90 8d e5                                      str sb, [sp, #0x30]
00650d10  34 a0 8d e5                                      str sl, [sp, #0x34]
00650d14  28 10 8d e5                                      str r1, [sp, #0x28]
00650d18  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00650d1c  38 70 8d e5                                      str r7, [sp, #0x38]
00650d20  3c 60 8d e5                                      str r6, [sp, #0x3c]
00650d24  40 40 8d e5                                      str r4, [sp, #0x40]
00650d28  44 e0 8d e5                                      str lr, [sp, #0x44]
00650d2c  48 c0 8d e5                                      str ip, [sp, #0x48]
00650d30  4c 00 8d e5                                      str r0, [sp, #0x4c]
00650d34  2c b0 8d e5                                      str fp, [sp, #0x2c]
00650d38  50 10 8d e5                                      str r1, [sp, #0x50]
00650d3c  54 20 8d e5                                      str r2, [sp, #0x54]
00650d40  18 20 9d e5                                      ldr r2, [sp, #0x18]
00650d44  58 30 8d e5                                      str r3, [sp, #0x58]
00650d48  20 10 9d e5                                      ldr r1, [sp, #0x20]
00650d4c  5c 20 8d e5                                      str r2, [sp, #0x5c]
00650d50  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00650d54  24 20 9d e5                                      ldr r2, [sp, #0x24]
00650d58  64 10 8d e5                                      str r1, [sp, #0x64]
00650d5c  60 30 8d e5                                      str r3, [sp, #0x60]
00650d60  68 20 8d e5                                      str r2, [sp, #0x68]
00650d64  50 c0 98 e5                                      ldr ip, [r8, #0x50]
00650d68  60 90 98 e5                                      ldr sb, [r8, #0x60]
00650d6c  44 60 98 e5                                      ldr r6, [r8, #0x44]
00650d70  48 40 98 e5                                      ldr r4, [r8, #0x48]
00650d74  4c e0 98 e5                                      ldr lr, [r8, #0x4c]
00650d78  54 70 98 e5                                      ldr r7, [r8, #0x54]
00650d7c  58 a0 98 e5                                      ldr sl, [r8, #0x58]
00650d80  5c 80 98 e5                                      ldr r8, [r8, #0x5c]
00650d84  05 00 a0 e1                                      mov r0, r5
00650d88  78 c0 8d e5                                      str ip, [sp, #0x78]
00650d8c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00650d90  8c c0 8d e2                                      add ip, sp, #0x8c
00650d94  14 20 9d e5                                      ldr r2, [sp, #0x14]
00650d98  28 30 8d e2                                      add r3, sp, #0x28
00650d9c  6c 60 8d e5                                      str r6, [sp, #0x6c]
00650da0  70 40 8d e5                                      str r4, [sp, #0x70]
00650da4  74 e0 8d e5                                      str lr, [sp, #0x74]
00650da8  7c 70 8d e5                                      str r7, [sp, #0x7c]
00650dac  80 a0 8d e5                                      str sl, [sp, #0x80]
00650db0  84 80 8d e5                                      str r8, [sp, #0x84]
00650db4  88 90 8d e5                                      str sb, [sp, #0x88]
00650db8  00 c0 8d e5                                      str ip, [sp]
00650dbc  da fe ff eb                                      bl #0x65092c
00650dc0  94 d0 8d e2                                      add sp, sp, #0x94
00650dc4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00650dc8  01 40 44 e2                                      sub r4, r4, #1
00650dcc  64 10 a0 e3                                      mov r1, #0x64
00650dd0  10 30 9d e5                                      ldr r3, [sp, #0x10]
00650dd4  91 04 02 e0                                      mul r2, r1, r4
00650dd8  91 03 01 e0                                      mul r1, r1, r3
00650ddc  02 00 95 e7                                      ldr r0, [r5, r2]
00650de0  02 20 85 e0                                      add r2, r5, r2
00650de4  01 30 85 e0                                      add r3, r5, r1
00650de8  01 00 85 e7                                      str r0, [r5, r1]
00650dec  04 10 92 e5                                      ldr r1, [r2, #4]
00650df0  10 40 8d e5                                      str r4, [sp, #0x10]
00650df4  04 10 83 e5                                      str r1, [r3, #4]
00650df8  08 10 92 e5                                      ldr r1, [r2, #8]
00650dfc  08 10 83 e5                                      str r1, [r3, #8]
00650e00  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00650e04  0c 10 83 e5                                      str r1, [r3, #0xc]
00650e08  10 10 92 e5                                      ldr r1, [r2, #0x10]
00650e0c  10 10 83 e5                                      str r1, [r3, #0x10]
00650e10  14 10 92 e5                                      ldr r1, [r2, #0x14]
00650e14  14 10 83 e5                                      str r1, [r3, #0x14]
00650e18  18 10 92 e5                                      ldr r1, [r2, #0x18]
00650e1c  18 10 83 e5                                      str r1, [r3, #0x18]
00650e20  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
00650e24  1c 10 83 e5                                      str r1, [r3, #0x1c]
00650e28  20 10 92 e5                                      ldr r1, [r2, #0x20]
00650e2c  20 10 83 e5                                      str r1, [r3, #0x20]
00650e30  24 10 92 e5                                      ldr r1, [r2, #0x24]
00650e34  24 10 83 e5                                      str r1, [r3, #0x24]
00650e38  28 10 92 e5                                      ldr r1, [r2, #0x28]
00650e3c  28 10 83 e5                                      str r1, [r3, #0x28]
00650e40  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
00650e44  2c 10 83 e5                                      str r1, [r3, #0x2c]
00650e48  30 10 92 e5                                      ldr r1, [r2, #0x30]
00650e4c  30 10 83 e5                                      str r1, [r3, #0x30]
00650e50  34 10 92 e5                                      ldr r1, [r2, #0x34]
00650e54  34 10 83 e5                                      str r1, [r3, #0x34]
00650e58  38 10 92 e5                                      ldr r1, [r2, #0x38]
00650e5c  38 10 83 e5                                      str r1, [r3, #0x38]
00650e60  3c 10 92 e5                                      ldr r1, [r2, #0x3c]
00650e64  3c 10 83 e5                                      str r1, [r3, #0x3c]
00650e68  40 10 92 e5                                      ldr r1, [r2, #0x40]
00650e6c  40 10 83 e5                                      str r1, [r3, #0x40]
00650e70  44 10 92 e5                                      ldr r1, [r2, #0x44]
00650e74  44 10 83 e5                                      str r1, [r3, #0x44]
00650e78  48 10 92 e5                                      ldr r1, [r2, #0x48]
00650e7c  48 10 83 e5                                      str r1, [r3, #0x48]
00650e80  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
00650e84  4c 10 83 e5                                      str r1, [r3, #0x4c]
00650e88  50 10 92 e5                                      ldr r1, [r2, #0x50]
00650e8c  50 10 83 e5                                      str r1, [r3, #0x50]
00650e90  54 10 92 e5                                      ldr r1, [r2, #0x54]
00650e94  54 10 83 e5                                      str r1, [r3, #0x54]
00650e98  58 10 92 e5                                      ldr r1, [r2, #0x58]
00650e9c  58 10 83 e5                                      str r1, [r3, #0x58]
00650ea0  5c 10 92 e5                                      ldr r1, [r2, #0x5c]
00650ea4  5c 10 83 e5                                      str r1, [r3, #0x5c]
00650ea8  60 20 92 e5                                      ldr r2, [r2, #0x60]
00650eac  60 20 83 e5                                      str r2, [r3, #0x60]
00650eb0  7f ff ff ea                                      b #0x650cb4

; FUNCTION 0x00650eb4, declared_size=316, range_size=316, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPN6glitch2ps9SParticleENS1_9AlphaSortIS2_EES2_iEvT_S6_T0_PT1_PT2_
; demangled: void std::__make_heap<glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle>, glitch::ps::SParticle, int>(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle>, glitch::ps::SParticle*, int*)
; decoder-mode: arm
00650eb4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00650eb8  01 10 60 e0                                      rsb r1, r0, r1
00650ebc  c7 00 51 e3                                      cmp r1, #0xc7
00650ec0  74 d0 4d e2                                      sub sp, sp, #0x74
00650ec4  00 60 a0 e1                                      mov r6, r0
00650ec8  46 00 00 da                                      ble #0x650fe8
00650ecc  29 3c 05 e3                                      movw r3, #0x5c29
00650ed0  41 71 a0 e1                                      asr r7, r1, #2
00650ed4  8f 32 4c e3                                      movt r3, #0xc28f
00650ed8  93 07 07 e0                                      mul r7, r3, r7
00650edc  64 40 a0 e3                                      mov r4, #0x64
00650ee0  02 50 47 e2                                      sub r5, r7, #2
00650ee4  c5 50 a0 e1                                      asr r5, r5, #1
00650ee8  94 05 24 e0                                      mla r4, r4, r5, r0
00650eec  08 80 8d e2                                      add r8, sp, #8
00650ef0  6c a0 8d e2                                      add sl, sp, #0x6c
00650ef4  00 00 00 ea                                      b #0x650efc
00650ef8  01 50 45 e2                                      sub r5, r5, #1
00650efc  00 30 94 e5                                      ldr r3, [r4]
00650f00  05 10 a0 e1                                      mov r1, r5
00650f04  06 00 a0 e1                                      mov r0, r6
00650f08  08 30 8d e5                                      str r3, [sp, #8]
00650f0c  04 c0 94 e5                                      ldr ip, [r4, #4]
00650f10  07 20 a0 e1                                      mov r2, r7
00650f14  08 30 a0 e1                                      mov r3, r8
00650f18  0c c0 8d e5                                      str ip, [sp, #0xc]
00650f1c  08 c0 94 e5                                      ldr ip, [r4, #8]
00650f20  10 c0 8d e5                                      str ip, [sp, #0x10]
00650f24  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00650f28  14 c0 8d e5                                      str ip, [sp, #0x14]
00650f2c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00650f30  18 c0 8d e5                                      str ip, [sp, #0x18]
00650f34  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00650f38  1c c0 8d e5                                      str ip, [sp, #0x1c]
00650f3c  18 c0 94 e5                                      ldr ip, [r4, #0x18]
00650f40  20 c0 8d e5                                      str ip, [sp, #0x20]
00650f44  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
00650f48  24 c0 8d e5                                      str ip, [sp, #0x24]
00650f4c  20 c0 94 e5                                      ldr ip, [r4, #0x20]
00650f50  28 c0 8d e5                                      str ip, [sp, #0x28]
00650f54  24 c0 94 e5                                      ldr ip, [r4, #0x24]
00650f58  2c c0 8d e5                                      str ip, [sp, #0x2c]
00650f5c  28 c0 94 e5                                      ldr ip, [r4, #0x28]
00650f60  30 c0 8d e5                                      str ip, [sp, #0x30]
00650f64  2c c0 94 e5                                      ldr ip, [r4, #0x2c]
00650f68  34 c0 8d e5                                      str ip, [sp, #0x34]
00650f6c  30 c0 94 e5                                      ldr ip, [r4, #0x30]
00650f70  38 c0 8d e5                                      str ip, [sp, #0x38]
00650f74  34 c0 94 e5                                      ldr ip, [r4, #0x34]
00650f78  3c c0 8d e5                                      str ip, [sp, #0x3c]
00650f7c  38 c0 94 e5                                      ldr ip, [r4, #0x38]
00650f80  40 c0 8d e5                                      str ip, [sp, #0x40]
00650f84  3c c0 94 e5                                      ldr ip, [r4, #0x3c]
00650f88  44 c0 8d e5                                      str ip, [sp, #0x44]
00650f8c  40 c0 94 e5                                      ldr ip, [r4, #0x40]
00650f90  48 c0 8d e5                                      str ip, [sp, #0x48]
00650f94  44 c0 94 e5                                      ldr ip, [r4, #0x44]
00650f98  4c c0 8d e5                                      str ip, [sp, #0x4c]
00650f9c  48 c0 94 e5                                      ldr ip, [r4, #0x48]
00650fa0  50 c0 8d e5                                      str ip, [sp, #0x50]
00650fa4  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
00650fa8  54 c0 8d e5                                      str ip, [sp, #0x54]
00650fac  50 c0 94 e5                                      ldr ip, [r4, #0x50]
00650fb0  58 c0 8d e5                                      str ip, [sp, #0x58]
00650fb4  54 c0 94 e5                                      ldr ip, [r4, #0x54]
00650fb8  5c c0 8d e5                                      str ip, [sp, #0x5c]
00650fbc  58 c0 94 e5                                      ldr ip, [r4, #0x58]
00650fc0  60 c0 8d e5                                      str ip, [sp, #0x60]
00650fc4  5c c0 94 e5                                      ldr ip, [r4, #0x5c]
00650fc8  64 c0 8d e5                                      str ip, [sp, #0x64]
00650fcc  60 c0 94 e5                                      ldr ip, [r4, #0x60]
00650fd0  00 a0 8d e5                                      str sl, [sp]
00650fd4  64 40 44 e2                                      sub r4, r4, #0x64
00650fd8  68 c0 8d e5                                      str ip, [sp, #0x68]
00650fdc  de fe ff eb                                      bl #0x650b5c
00650fe0  00 00 55 e3                                      cmp r5, #0
00650fe4  c3 ff ff 1a                                      bne #0x650ef8
00650fe8  74 d0 8d e2                                      add sp, sp, #0x74
00650fec  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00650ff0, declared_size=588, range_size=588, mode=arm
; class-group: void std
; alias: _ZSt4swapIN6glitch2ps9SParticleEEvRT_S4_
; demangled: void std::swap<glitch::ps::SParticle>(glitch::ps::SParticle&, glitch::ps::SParticle&)
; decoder-mode: arm
00650ff0  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
00650ff4  1c b0 90 e5                                      ldr fp, [r0, #0x1c]
00650ff8  50 d0 4d e2                                      sub sp, sp, #0x50
00650ffc  00 30 91 e5                                      ldr r3, [r1]
00651000  04 b0 8d e5                                      str fp, [sp, #4]
00651004  20 b0 90 e5                                      ldr fp, [r0, #0x20]
00651008  00 90 90 e5                                      ldr sb, [r0]
0065100c  00 30 80 e5                                      str r3, [r0]
00651010  0c b0 8d e5                                      str fp, [sp, #0xc]
00651014  24 b0 90 e5                                      ldr fp, [r0, #0x24]
00651018  04 30 91 e5                                      ldr r3, [r1, #4]
0065101c  04 a0 90 e5                                      ldr sl, [r0, #4]
00651020  10 b0 8d e5                                      str fp, [sp, #0x10]
00651024  28 b0 90 e5                                      ldr fp, [r0, #0x28]
00651028  08 80 90 e5                                      ldr r8, [r0, #8]
0065102c  04 30 80 e5                                      str r3, [r0, #4]
00651030  14 b0 8d e5                                      str fp, [sp, #0x14]
00651034  2c b0 90 e5                                      ldr fp, [r0, #0x2c]
00651038  18 30 d0 e5                                      ldrb r3, [r0, #0x18]
0065103c  0c 70 90 e5                                      ldr r7, [r0, #0xc]
00651040  18 b0 8d e5                                      str fp, [sp, #0x18]
00651044  30 b0 90 e5                                      ldr fp, [r0, #0x30]
00651048  10 60 90 e5                                      ldr r6, [r0, #0x10]
0065104c  14 50 90 e5                                      ldr r5, [r0, #0x14]
00651050  1c b0 8d e5                                      str fp, [sp, #0x1c]
00651054  34 b0 90 e5                                      ldr fp, [r0, #0x34]
00651058  1b 40 d0 e5                                      ldrb r4, [r0, #0x1b]
0065105c  1a c0 d0 e5                                      ldrb ip, [r0, #0x1a]
00651060  20 b0 8d e5                                      str fp, [sp, #0x20]
00651064  38 b0 90 e5                                      ldr fp, [r0, #0x38]
00651068  19 20 d0 e5                                      ldrb r2, [r0, #0x19]
0065106c  24 b0 8d e5                                      str fp, [sp, #0x24]
00651070  3c b0 90 e5                                      ldr fp, [r0, #0x3c]
00651074  28 b0 8d e5                                      str fp, [sp, #0x28]
00651078  40 b0 90 e5                                      ldr fp, [r0, #0x40]
0065107c  2c b0 8d e5                                      str fp, [sp, #0x2c]
00651080  44 b0 90 e5                                      ldr fp, [r0, #0x44]
00651084  30 b0 8d e5                                      str fp, [sp, #0x30]
00651088  48 b0 90 e5                                      ldr fp, [r0, #0x48]
0065108c  34 b0 8d e5                                      str fp, [sp, #0x34]
00651090  4c b0 90 e5                                      ldr fp, [r0, #0x4c]
00651094  38 b0 8d e5                                      str fp, [sp, #0x38]
00651098  50 b0 90 e5                                      ldr fp, [r0, #0x50]
0065109c  3c b0 8d e5                                      str fp, [sp, #0x3c]
006510a0  54 b0 90 e5                                      ldr fp, [r0, #0x54]
006510a4  40 b0 8d e5                                      str fp, [sp, #0x40]
006510a8  58 b0 90 e5                                      ldr fp, [r0, #0x58]
006510ac  44 b0 8d e5                                      str fp, [sp, #0x44]
006510b0  5c b0 90 e5                                      ldr fp, [r0, #0x5c]
006510b4  48 b0 8d e5                                      str fp, [sp, #0x48]
006510b8  60 b0 90 e5                                      ldr fp, [r0, #0x60]
006510bc  4c b0 8d e5                                      str fp, [sp, #0x4c]
006510c0  08 b0 91 e5                                      ldr fp, [r1, #8]
006510c4  08 b0 80 e5                                      str fp, [r0, #8]
006510c8  0c b0 91 e5                                      ldr fp, [r1, #0xc]
006510cc  0c b0 80 e5                                      str fp, [r0, #0xc]
006510d0  10 b0 91 e5                                      ldr fp, [r1, #0x10]
006510d4  10 b0 80 e5                                      str fp, [r0, #0x10]
006510d8  14 b0 91 e5                                      ldr fp, [r1, #0x14]
006510dc  14 b0 80 e5                                      str fp, [r0, #0x14]
006510e0  18 b0 91 e5                                      ldr fp, [r1, #0x18]
006510e4  18 b0 80 e5                                      str fp, [r0, #0x18]
006510e8  1c b0 91 e5                                      ldr fp, [r1, #0x1c]
006510ec  1c b0 80 e5                                      str fp, [r0, #0x1c]
006510f0  20 b0 91 e5                                      ldr fp, [r1, #0x20]
006510f4  20 b0 80 e5                                      str fp, [r0, #0x20]
006510f8  24 b0 91 e5                                      ldr fp, [r1, #0x24]
006510fc  24 b0 80 e5                                      str fp, [r0, #0x24]
00651100  28 b0 91 e5                                      ldr fp, [r1, #0x28]
00651104  28 b0 80 e5                                      str fp, [r0, #0x28]
00651108  2c b0 91 e5                                      ldr fp, [r1, #0x2c]
0065110c  2c b0 80 e5                                      str fp, [r0, #0x2c]
00651110  30 b0 91 e5                                      ldr fp, [r1, #0x30]
00651114  30 b0 80 e5                                      str fp, [r0, #0x30]
00651118  34 b0 91 e5                                      ldr fp, [r1, #0x34]
0065111c  34 b0 80 e5                                      str fp, [r0, #0x34]
00651120  38 b0 91 e5                                      ldr fp, [r1, #0x38]
00651124  38 b0 80 e5                                      str fp, [r0, #0x38]
00651128  3c b0 91 e5                                      ldr fp, [r1, #0x3c]
0065112c  3c b0 80 e5                                      str fp, [r0, #0x3c]
00651130  40 b0 91 e5                                      ldr fp, [r1, #0x40]
00651134  40 b0 80 e5                                      str fp, [r0, #0x40]
00651138  44 b0 91 e5                                      ldr fp, [r1, #0x44]
0065113c  44 b0 80 e5                                      str fp, [r0, #0x44]
00651140  48 b0 91 e5                                      ldr fp, [r1, #0x48]
00651144  48 b0 80 e5                                      str fp, [r0, #0x48]
00651148  4c b0 91 e5                                      ldr fp, [r1, #0x4c]
0065114c  4c b0 80 e5                                      str fp, [r0, #0x4c]
00651150  50 b0 91 e5                                      ldr fp, [r1, #0x50]
00651154  50 b0 80 e5                                      str fp, [r0, #0x50]
00651158  54 b0 91 e5                                      ldr fp, [r1, #0x54]
0065115c  54 b0 80 e5                                      str fp, [r0, #0x54]
00651160  58 b0 91 e5                                      ldr fp, [r1, #0x58]
00651164  58 b0 80 e5                                      str fp, [r0, #0x58]
00651168  5c b0 91 e5                                      ldr fp, [r1, #0x5c]
0065116c  5c b0 80 e5                                      str fp, [r0, #0x5c]
00651170  60 b0 91 e5                                      ldr fp, [r1, #0x60]
00651174  60 b0 80 e5                                      str fp, [r0, #0x60]
00651178  00 90 81 e5                                      str sb, [r1]
0065117c  04 a0 81 e5                                      str sl, [r1, #4]
00651180  08 80 81 e5                                      str r8, [r1, #8]
00651184  0c 70 81 e5                                      str r7, [r1, #0xc]
00651188  10 60 81 e5                                      str r6, [r1, #0x10]
0065118c  14 50 81 e5                                      str r5, [r1, #0x14]
00651190  18 30 c1 e5                                      strb r3, [r1, #0x18]
00651194  04 30 9d e5                                      ldr r3, [sp, #4]
00651198  0c b0 9d e5                                      ldr fp, [sp, #0xc]
0065119c  1b 40 c1 e5                                      strb r4, [r1, #0x1b]
006511a0  1c 30 81 e5                                      str r3, [r1, #0x1c]
006511a4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006511a8  20 b0 81 e5                                      str fp, [r1, #0x20]
006511ac  14 b0 9d e5                                      ldr fp, [sp, #0x14]
006511b0  24 30 81 e5                                      str r3, [r1, #0x24]
006511b4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006511b8  28 b0 81 e5                                      str fp, [r1, #0x28]
006511bc  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
006511c0  2c 30 81 e5                                      str r3, [r1, #0x2c]
006511c4  20 30 9d e5                                      ldr r3, [sp, #0x20]
006511c8  30 b0 81 e5                                      str fp, [r1, #0x30]
006511cc  24 b0 9d e5                                      ldr fp, [sp, #0x24]
006511d0  34 30 81 e5                                      str r3, [r1, #0x34]
006511d4  28 30 9d e5                                      ldr r3, [sp, #0x28]
006511d8  38 b0 81 e5                                      str fp, [r1, #0x38]
006511dc  2c b0 9d e5                                      ldr fp, [sp, #0x2c]
006511e0  3c 30 81 e5                                      str r3, [r1, #0x3c]
006511e4  30 30 9d e5                                      ldr r3, [sp, #0x30]
006511e8  40 b0 81 e5                                      str fp, [r1, #0x40]
006511ec  34 b0 9d e5                                      ldr fp, [sp, #0x34]
006511f0  44 30 81 e5                                      str r3, [r1, #0x44]
006511f4  38 30 9d e5                                      ldr r3, [sp, #0x38]
006511f8  48 b0 81 e5                                      str fp, [r1, #0x48]
006511fc  3c b0 9d e5                                      ldr fp, [sp, #0x3c]
00651200  4c 30 81 e5                                      str r3, [r1, #0x4c]
00651204  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00651208  50 b0 81 e5                                      str fp, [r1, #0x50]
0065120c  1a c0 c1 e5                                      strb ip, [r1, #0x1a]
00651210  19 20 c1 e5                                      strb r2, [r1, #0x19]
00651214  60 30 81 e5                                      str r3, [r1, #0x60]
00651218  40 b0 9d e5                                      ldr fp, [sp, #0x40]
0065121c  44 30 9d e5                                      ldr r3, [sp, #0x44]
00651220  54 b0 81 e5                                      str fp, [r1, #0x54]
00651224  48 b0 9d e5                                      ldr fp, [sp, #0x48]
00651228  58 30 81 e5                                      str r3, [r1, #0x58]
0065122c  5c b0 81 e5                                      str fp, [r1, #0x5c]
00651230  50 d0 8d e2                                      add sp, sp, #0x50
00651234  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
00651238  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065123c, declared_size=520, range_size=520, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN6glitch2ps9SParticleES2_NS1_9AlphaSortIS2_EEiEvT_S6_S6_T0_T1_PT2_
; demangled: void std::__pop_heap<glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle>, int>(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle>, int*)
; decoder-mode: arm
0065123c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00651240  00 50 90 e5                                      ldr r5, [r0]
00651244  03 c0 a0 e1                                      mov ip, r3
00651248  02 40 a0 e1                                      mov r4, r2
0065124c  00 50 82 e5                                      str r5, [r2]
00651250  04 30 90 e5                                      ldr r3, [r0, #4]
00651254  01 20 60 e0                                      rsb r2, r0, r1
00651258  29 5c 05 e3                                      movw r5, #0x5c29
0065125c  04 30 84 e5                                      str r3, [r4, #4]
00651260  08 30 90 e5                                      ldr r3, [r0, #8]
00651264  8f 52 4c e3                                      movt r5, #0xc28f
00651268  42 21 a0 e1                                      asr r2, r2, #2
0065126c  08 30 84 e5                                      str r3, [r4, #8]
00651270  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00651274  95 02 02 e0                                      mul r2, r5, r2
00651278  0c 30 84 e5                                      str r3, [r4, #0xc]
0065127c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00651280  94 d0 4d e2                                      sub sp, sp, #0x94
00651284  00 10 a0 e3                                      mov r1, #0
00651288  10 30 84 e5                                      str r3, [r4, #0x10]
0065128c  14 50 90 e5                                      ldr r5, [r0, #0x14]
00651290  28 30 8d e2                                      add r3, sp, #0x28
00651294  14 50 84 e5                                      str r5, [r4, #0x14]
00651298  18 50 90 e5                                      ldr r5, [r0, #0x18]
0065129c  18 50 84 e5                                      str r5, [r4, #0x18]
006512a0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
006512a4  1c 50 84 e5                                      str r5, [r4, #0x1c]
006512a8  20 50 90 e5                                      ldr r5, [r0, #0x20]
006512ac  20 50 84 e5                                      str r5, [r4, #0x20]
006512b0  24 50 90 e5                                      ldr r5, [r0, #0x24]
006512b4  24 50 84 e5                                      str r5, [r4, #0x24]
006512b8  28 50 90 e5                                      ldr r5, [r0, #0x28]
006512bc  28 50 84 e5                                      str r5, [r4, #0x28]
006512c0  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
006512c4  2c 50 84 e5                                      str r5, [r4, #0x2c]
006512c8  30 50 90 e5                                      ldr r5, [r0, #0x30]
006512cc  30 50 84 e5                                      str r5, [r4, #0x30]
006512d0  34 50 90 e5                                      ldr r5, [r0, #0x34]
006512d4  34 50 84 e5                                      str r5, [r4, #0x34]
006512d8  38 50 90 e5                                      ldr r5, [r0, #0x38]
006512dc  38 50 84 e5                                      str r5, [r4, #0x38]
006512e0  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
006512e4  3c 50 84 e5                                      str r5, [r4, #0x3c]
006512e8  40 50 90 e5                                      ldr r5, [r0, #0x40]
006512ec  40 50 84 e5                                      str r5, [r4, #0x40]
006512f0  44 50 90 e5                                      ldr r5, [r0, #0x44]
006512f4  44 50 84 e5                                      str r5, [r4, #0x44]
006512f8  48 50 90 e5                                      ldr r5, [r0, #0x48]
006512fc  48 50 84 e5                                      str r5, [r4, #0x48]
00651300  4c 50 90 e5                                      ldr r5, [r0, #0x4c]
00651304  4c 50 84 e5                                      str r5, [r4, #0x4c]
00651308  50 50 90 e5                                      ldr r5, [r0, #0x50]
0065130c  50 50 84 e5                                      str r5, [r4, #0x50]
00651310  54 50 90 e5                                      ldr r5, [r0, #0x54]
00651314  54 50 84 e5                                      str r5, [r4, #0x54]
00651318  58 50 90 e5                                      ldr r5, [r0, #0x58]
0065131c  58 50 84 e5                                      str r5, [r4, #0x58]
00651320  5c 50 90 e5                                      ldr r5, [r0, #0x5c]
00651324  5c 50 84 e5                                      str r5, [r4, #0x5c]
00651328  60 e0 90 e5                                      ldr lr, [r0, #0x60]
0065132c  60 e0 84 e5                                      str lr, [r4, #0x60]
00651330  00 b0 9c e5                                      ldr fp, [ip]
00651334  04 70 9c e5                                      ldr r7, [ip, #4]
00651338  08 60 9c e5                                      ldr r6, [ip, #8]
0065133c  0c 50 9c e5                                      ldr r5, [ip, #0xc]
00651340  10 40 9c e5                                      ldr r4, [ip, #0x10]
00651344  14 e0 9c e5                                      ldr lr, [ip, #0x14]
00651348  18 80 9c e5                                      ldr r8, [ip, #0x18]
0065134c  1c a0 9c e5                                      ldr sl, [ip, #0x1c]
00651350  20 90 9c e5                                      ldr sb, [ip, #0x20]
00651354  28 b0 8d e5                                      str fp, [sp, #0x28]
00651358  2c 70 8d e5                                      str r7, [sp, #0x2c]
0065135c  30 60 8d e5                                      str r6, [sp, #0x30]
00651360  34 50 8d e5                                      str r5, [sp, #0x34]
00651364  38 40 8d e5                                      str r4, [sp, #0x38]
00651368  3c e0 8d e5                                      str lr, [sp, #0x3c]
0065136c  40 80 8d e5                                      str r8, [sp, #0x40]
00651370  44 a0 8d e5                                      str sl, [sp, #0x44]
00651374  48 90 8d e5                                      str sb, [sp, #0x48]
00651378  60 80 9c e5                                      ldr r8, [ip, #0x60]
0065137c  24 80 8d e5                                      str r8, [sp, #0x24]
00651380  38 80 9c e5                                      ldr r8, [ip, #0x38]
00651384  24 70 9c e5                                      ldr r7, [ip, #0x24]
00651388  28 60 9c e5                                      ldr r6, [ip, #0x28]
0065138c  2c 50 9c e5                                      ldr r5, [ip, #0x2c]
00651390  30 40 9c e5                                      ldr r4, [ip, #0x30]
00651394  34 e0 9c e5                                      ldr lr, [ip, #0x34]
00651398  0c 80 8d e5                                      str r8, [sp, #0xc]
0065139c  48 80 9c e5                                      ldr r8, [ip, #0x48]
006513a0  3c a0 9c e5                                      ldr sl, [ip, #0x3c]
006513a4  40 90 9c e5                                      ldr sb, [ip, #0x40]
006513a8  44 b0 9c e5                                      ldr fp, [ip, #0x44]
006513ac  10 80 8d e5                                      str r8, [sp, #0x10]
006513b0  4c 80 9c e5                                      ldr r8, [ip, #0x4c]
006513b4  14 80 8d e5                                      str r8, [sp, #0x14]
006513b8  50 80 9c e5                                      ldr r8, [ip, #0x50]
006513bc  18 80 8d e5                                      str r8, [sp, #0x18]
006513c0  54 80 9c e5                                      ldr r8, [ip, #0x54]
006513c4  1c 80 8d e5                                      str r8, [sp, #0x1c]
006513c8  58 80 9c e5                                      ldr r8, [ip, #0x58]
006513cc  20 80 8d e5                                      str r8, [sp, #0x20]
006513d0  5c c0 9c e5                                      ldr ip, [ip, #0x5c]
006513d4  10 80 9d e5                                      ldr r8, [sp, #0x10]
006513d8  5c e0 8d e5                                      str lr, [sp, #0x5c]
006513dc  0c e0 9d e5                                      ldr lr, [sp, #0xc]
006513e0  4c 70 8d e5                                      str r7, [sp, #0x4c]
006513e4  50 60 8d e5                                      str r6, [sp, #0x50]
006513e8  60 e0 8d e5                                      str lr, [sp, #0x60]
006513ec  54 50 8d e5                                      str r5, [sp, #0x54]
006513f0  58 40 8d e5                                      str r4, [sp, #0x58]
006513f4  64 a0 8d e5                                      str sl, [sp, #0x64]
006513f8  68 90 8d e5                                      str sb, [sp, #0x68]
006513fc  6c b0 8d e5                                      str fp, [sp, #0x6c]
00651400  70 80 8d e5                                      str r8, [sp, #0x70]
00651404  14 e0 9d e5                                      ldr lr, [sp, #0x14]
00651408  18 80 9d e5                                      ldr r8, [sp, #0x18]
0065140c  84 c0 8d e5                                      str ip, [sp, #0x84]
00651410  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00651414  74 e0 8d e5                                      str lr, [sp, #0x74]
00651418  78 80 8d e5                                      str r8, [sp, #0x78]
0065141c  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00651420  20 80 9d e5                                      ldr r8, [sp, #0x20]
00651424  88 c0 8d e5                                      str ip, [sp, #0x88]
00651428  8c c0 8d e2                                      add ip, sp, #0x8c
0065142c  7c e0 8d e5                                      str lr, [sp, #0x7c]
00651430  80 80 8d e5                                      str r8, [sp, #0x80]
00651434  00 c0 8d e5                                      str ip, [sp]
00651438  c7 fd ff eb                                      bl #0x650b5c
0065143c  94 d0 8d e2                                      add sp, sp, #0x94
00651440  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00651444, declared_size=292, range_size=292, mode=arm
; class-group: void std
; alias: _ZSt14__pop_heap_auxIPN6glitch2ps9SParticleES2_NS1_9AlphaSortIS2_EEEvT_S6_PT0_T1_
; demangled: void std::__pop_heap_aux<glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
00651444  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00651448  64 30 41 e2                                      sub r3, r1, #0x64
0065144c  28 20 93 e5                                      ldr r2, [r3, #0x28]
00651450  8c d0 4d e2                                      sub sp, sp, #0x8c
00651454  64 90 11 e5                                      ldr sb, [r1, #-0x64]
00651458  04 a0 93 e5                                      ldr sl, [r3, #4]
0065145c  08 80 93 e5                                      ldr r8, [r3, #8]
00651460  0c 70 93 e5                                      ldr r7, [r3, #0xc]
00651464  10 60 93 e5                                      ldr r6, [r3, #0x10]
00651468  14 50 93 e5                                      ldr r5, [r3, #0x14]
0065146c  18 40 93 e5                                      ldr r4, [r3, #0x18]
00651470  1c e0 93 e5                                      ldr lr, [r3, #0x1c]
00651474  20 c0 93 e5                                      ldr ip, [r3, #0x20]
00651478  24 10 93 e5                                      ldr r1, [r3, #0x24]
0065147c  0c 20 8d e5                                      str r2, [sp, #0xc]
00651480  30 20 93 e5                                      ldr r2, [r3, #0x30]
00651484  2c b0 93 e5                                      ldr fp, [r3, #0x2c]
00651488  10 20 8d e5                                      str r2, [sp, #0x10]
0065148c  34 20 93 e5                                      ldr r2, [r3, #0x34]
00651490  14 20 8d e5                                      str r2, [sp, #0x14]
00651494  38 20 93 e5                                      ldr r2, [r3, #0x38]
00651498  18 20 8d e5                                      str r2, [sp, #0x18]
0065149c  3c 20 93 e5                                      ldr r2, [r3, #0x3c]
006514a0  1c 20 8d e5                                      str r2, [sp, #0x1c]
006514a4  40 20 93 e5                                      ldr r2, [r3, #0x40]
006514a8  24 a0 8d e5                                      str sl, [sp, #0x24]
006514ac  28 80 8d e5                                      str r8, [sp, #0x28]
006514b0  60 20 8d e5                                      str r2, [sp, #0x60]
006514b4  2c 70 8d e5                                      str r7, [sp, #0x2c]
006514b8  30 60 8d e5                                      str r6, [sp, #0x30]
006514bc  34 50 8d e5                                      str r5, [sp, #0x34]
006514c0  38 40 8d e5                                      str r4, [sp, #0x38]
006514c4  3c e0 8d e5                                      str lr, [sp, #0x3c]
006514c8  40 c0 8d e5                                      str ip, [sp, #0x40]
006514cc  20 90 8d e5                                      str sb, [sp, #0x20]
006514d0  44 10 8d e5                                      str r1, [sp, #0x44]
006514d4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006514d8  4c b0 8d e5                                      str fp, [sp, #0x4c]
006514dc  03 10 a0 e1                                      mov r1, r3
006514e0  48 20 8d e5                                      str r2, [sp, #0x48]
006514e4  10 20 9d e5                                      ldr r2, [sp, #0x10]
006514e8  50 20 8d e5                                      str r2, [sp, #0x50]
006514ec  14 20 9d e5                                      ldr r2, [sp, #0x14]
006514f0  54 20 8d e5                                      str r2, [sp, #0x54]
006514f4  18 20 9d e5                                      ldr r2, [sp, #0x18]
006514f8  58 20 8d e5                                      str r2, [sp, #0x58]
006514fc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00651500  5c 20 8d e5                                      str r2, [sp, #0x5c]
00651504  58 c0 93 e5                                      ldr ip, [r3, #0x58]
00651508  44 70 93 e5                                      ldr r7, [r3, #0x44]
0065150c  48 60 93 e5                                      ldr r6, [r3, #0x48]
00651510  4c 50 93 e5                                      ldr r5, [r3, #0x4c]
00651514  50 40 93 e5                                      ldr r4, [r3, #0x50]
00651518  54 e0 93 e5                                      ldr lr, [r3, #0x54]
0065151c  5c 80 93 e5                                      ldr r8, [r3, #0x5c]
00651520  60 a0 93 e5                                      ldr sl, [r3, #0x60]
00651524  78 c0 8d e5                                      str ip, [sp, #0x78]
00651528  84 c0 8d e2                                      add ip, sp, #0x84
0065152c  03 20 a0 e1                                      mov r2, r3
00651530  00 c0 8d e5                                      str ip, [sp]
00651534  20 30 8d e2                                      add r3, sp, #0x20
00651538  00 c0 a0 e3                                      mov ip, #0
0065153c  64 70 8d e5                                      str r7, [sp, #0x64]
00651540  68 60 8d e5                                      str r6, [sp, #0x68]
00651544  6c 50 8d e5                                      str r5, [sp, #0x6c]
00651548  70 40 8d e5                                      str r4, [sp, #0x70]
0065154c  74 e0 8d e5                                      str lr, [sp, #0x74]
00651550  7c 80 8d e5                                      str r8, [sp, #0x7c]
00651554  80 a0 8d e5                                      str sl, [sp, #0x80]
00651558  04 c0 8d e5                                      str ip, [sp, #4]
0065155c  36 ff ff eb                                      bl #0x65123c
00651560  8c d0 8d e2                                      add sp, sp, #0x8c
00651564  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00651e6c, declared_size=128, range_size=128, mode=arm
; class-group: void std
; alias: _ZSt4sortIPN6glitch2ps9SParticleENS1_9AlphaSortIS2_EEEvT_S6_T0_
; demangled: void std::sort<glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
00651e6c  30 40 2d e9                                      push {r4, r5, lr}
00651e70  01 00 50 e1                                      cmp r0, r1
00651e74  14 d0 4d e2                                      sub sp, sp, #0x14
00651e78  00 50 a0 e1                                      mov r5, r0
00651e7c  01 40 a0 e1                                      mov r4, r1
00651e80  17 00 00 0a                                      beq #0x651ee4
00651e84  01 20 60 e0                                      rsb r2, r0, r1
00651e88  29 3c 05 e3                                      movw r3, #0x5c29
00651e8c  8f 32 4c e3                                      movt r3, #0xc28f
00651e90  42 21 a0 e1                                      asr r2, r2, #2
00651e94  93 02 02 e0                                      mul r2, r3, r2
00651e98  01 00 52 e3                                      cmp r2, #1
00651e9c  00 30 a0 03                                      moveq r3, #0
00651ea0  05 00 00 0a                                      beq #0x651ebc
00651ea4  00 30 a0 e3                                      mov r3, #0
00651ea8  c2 20 a0 e1                                      asr r2, r2, #1
00651eac  01 00 52 e3                                      cmp r2, #1
00651eb0  01 30 83 e2                                      add r3, r3, #1
00651eb4  fb ff ff 1a                                      bne #0x651ea8
00651eb8  83 30 a0 e1                                      lsl r3, r3, #1
00651ebc  00 20 a0 e3                                      mov r2, #0
00651ec0  05 00 a0 e1                                      mov r0, r5
00651ec4  04 10 a0 e1                                      mov r1, r4
00651ec8  0c c0 8d e2                                      add ip, sp, #0xc
00651ecc  00 c0 8d e5                                      str ip, [sp]
00651ed0  1c fe ff eb                                      bl #0x651748
00651ed4  05 00 a0 e1                                      mov r0, r5
00651ed8  04 10 a0 e1                                      mov r1, r4
00651edc  08 20 8d e2                                      add r2, sp, #8
00651ee0  c9 ff ff eb                                      bl #0x651e0c
00651ee4  14 d0 8d e2                                      add sp, sp, #0x14
00651ee8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x007988a0, declared_size=148, range_size=148, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN7gameswf8as_valueEiS1_NS0_21standard_array_sorterEEvT_T0_S5_T1_T2_
; demangled: void std::__push_heap<gameswf::as_value*, int, gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value*, int, int, gameswf::as_value, gameswf::standard_array_sorter)
; decoder-mode: arm
007988a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007988a4  02 00 51 e1                                      cmp r1, r2
007988a8  04 d0 4d e2                                      sub sp, sp, #4
007988ac  01 50 a0 e1                                      mov r5, r1
007988b0  02 b0 a0 e1                                      mov fp, r2
007988b4  00 40 a0 e1                                      mov r4, r0
007988b8  03 70 a0 e1                                      mov r7, r3
007988bc  28 90 9d e5                                      ldr sb, [sp, #0x28]
007988c0  06 00 00 ca                                      bgt #0x7988e0
007988c4  0c 60 a0 e3                                      mov r6, #0xc
007988c8  96 45 26 e0                                      mla r6, r6, r5, r4
007988cc  06 00 a0 e1                                      mov r0, r6
007988d0  07 10 a0 e1                                      mov r1, r7
007988d4  04 d0 8d e2                                      add sp, sp, #4
007988d8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007988dc  96 fb ff ea                                      b #0x79773c
007988e0  01 a0 41 e2                                      sub sl, r1, #1
007988e4  aa af 8a e0                                      add sl, sl, sl, lsr #31
007988e8  0c 80 a0 e3                                      mov r8, #0xc
007988ec  ca a0 a0 e1                                      asr sl, sl, #1
007988f0  98 4a 26 e0                                      mla r6, r8, sl, r4
007988f4  07 20 a0 e1                                      mov r2, r7
007988f8  06 10 a0 e1                                      mov r1, r6
007988fc  09 00 a0 e1                                      mov r0, sb
00798900  77 ff ff eb                                      bl #0x7986e4
00798904  00 00 50 e3                                      cmp r0, #0
00798908  06 10 a0 e1                                      mov r1, r6
0079890c  98 45 20 e0                                      mla r0, r8, r5, r4
00798910  eb ff ff 0a                                      beq #0x7988c4
00798914  88 fb ff eb                                      bl #0x79773c
00798918  0a 00 5b e1                                      cmp fp, sl
0079891c  ea ff ff aa                                      bge #0x7988cc
00798920  01 30 4a e2                                      sub r3, sl, #1
00798924  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
00798928  0a 50 a0 e1                                      mov r5, sl
0079892c  c3 a0 a0 e1                                      asr sl, r3, #1
00798930  ee ff ff ea                                      b #0x7988f0

; FUNCTION 0x007995b0, declared_size=140, range_size=140, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN7gameswf8as_valueEiS1_NS0_19custom_array_sorterEEvT_T0_S5_T1_T2_
; demangled: void std::__push_heap<gameswf::as_value*, int, gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value*, int, int, gameswf::as_value, gameswf::custom_array_sorter)
; decoder-mode: arm
007995b0  02 00 51 e1                                      cmp r1, r2
007995b4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007995b8  01 50 a0 e1                                      mov r5, r1
007995bc  02 b0 a0 e1                                      mov fp, r2
007995c0  00 40 a0 e1                                      mov r4, r0
007995c4  03 70 a0 e1                                      mov r7, r3
007995c8  05 00 00 ca                                      bgt #0x7995e4
007995cc  0c 60 a0 e3                                      mov r6, #0xc
007995d0  96 45 26 e0                                      mla r6, r6, r5, r4
007995d4  06 00 a0 e1                                      mov r0, r6
007995d8  07 10 a0 e1                                      mov r1, r7
007995dc  56 f8 ff eb                                      bl #0x79773c
007995e0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007995e4  01 a0 41 e2                                      sub sl, r1, #1
007995e8  aa af 8a e0                                      add sl, sl, sl, lsr #31
007995ec  28 90 8d e2                                      add sb, sp, #0x28
007995f0  ca a0 a0 e1                                      asr sl, sl, #1
007995f4  0c 80 a0 e3                                      mov r8, #0xc
007995f8  98 4a 26 e0                                      mla r6, r8, sl, r4
007995fc  07 20 a0 e1                                      mov r2, r7
00799600  06 10 a0 e1                                      mov r1, r6
00799604  09 00 a0 e1                                      mov r0, sb
00799608  c1 ff ff eb                                      bl #0x799514
0079960c  00 00 50 e3                                      cmp r0, #0
00799610  06 10 a0 e1                                      mov r1, r6
00799614  98 45 20 e0                                      mla r0, r8, r5, r4
00799618  eb ff ff 0a                                      beq #0x7995cc
0079961c  46 f8 ff eb                                      bl #0x79773c
00799620  0a 00 5b e1                                      cmp fp, sl
00799624  ea ff ff aa                                      bge #0x7995d4
00799628  01 30 4a e2                                      sub r3, sl, #1
0079962c  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
00799630  0a 50 a0 e1                                      mov r5, sl
00799634  c3 a0 a0 e1                                      asr sl, r3, #1
00799638  ee ff ff ea                                      b #0x7995f8

; FUNCTION 0x00799994, declared_size=248, range_size=248, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPN7gameswf8as_valueEiS1_NS0_19custom_array_sorterEEvT_T0_S5_T1_T2_
; demangled: void std::__adjust_heap<gameswf::as_value*, int, gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value*, int, int, gameswf::as_value, gameswf::custom_array_sorter)
; decoder-mode: arm
00799994  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00799998  01 40 81 e2                                      add r4, r1, #1
0079999c  84 40 a0 e1                                      lsl r4, r4, #1
007999a0  2c d0 4d e2                                      sub sp, sp, #0x2c
007999a4  02 00 54 e1                                      cmp r4, r2
007999a8  10 10 8d e5                                      str r1, [sp, #0x10]
007999ac  02 b0 a0 e1                                      mov fp, r2
007999b0  00 50 a0 e1                                      mov r5, r0
007999b4  14 30 8d e5                                      str r3, [sp, #0x14]
007999b8  01 a0 a0 a1                                      movge sl, r1
007999bc  15 00 00 aa                                      bge #0x799a18
007999c0  10 90 9d e5                                      ldr sb, [sp, #0x10]
007999c4  50 10 8d e2                                      add r1, sp, #0x50
007999c8  0c 10 8d e5                                      str r1, [sp, #0xc]
007999cc  0c 70 a0 e3                                      mov r7, #0xc
007999d0  01 a0 44 e2                                      sub sl, r4, #1
007999d4  97 54 26 e0                                      mla r6, r7, r4, r5
007999d8  97 5a 28 e0                                      mla r8, r7, sl, r5
007999dc  06 10 a0 e1                                      mov r1, r6
007999e0  08 20 a0 e1                                      mov r2, r8
007999e4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007999e8  c9 fe ff eb                                      bl #0x799514
007999ec  00 00 50 e3                                      cmp r0, #0
007999f0  04 a0 a0 01                                      moveq sl, r4
007999f4  08 60 a0 11                                      movne r6, r8
007999f8  01 40 8a e2                                      add r4, sl, #1
007999fc  97 59 20 e0                                      mla r0, r7, sb, r5
00799a00  06 10 a0 e1                                      mov r1, r6
00799a04  84 40 a0 e1                                      lsl r4, r4, #1
00799a08  4b f7 ff eb                                      bl #0x79773c
00799a0c  04 00 5b e1                                      cmp fp, r4
00799a10  0a 90 a0 e1                                      mov sb, sl
00799a14  ed ff ff ca                                      bgt #0x7999d0
00799a18  0b 00 54 e1                                      cmp r4, fp
00799a1c  13 00 00 0a                                      beq #0x799a70
00799a20  1c 40 8d e2                                      add r4, sp, #0x1c
00799a24  00 30 a0 e3                                      mov r3, #0
00799a28  14 10 9d e5                                      ldr r1, [sp, #0x14]
00799a2c  04 00 a0 e1                                      mov r0, r4
00799a30  1d 30 cd e5                                      strb r3, [sp, #0x1d]
00799a34  1c 30 cd e5                                      strb r3, [sp, #0x1c]
00799a38  3f f7 ff eb                                      bl #0x79773c
00799a3c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
00799a40  05 00 a0 e1                                      mov r0, r5
00799a44  0a 10 a0 e1                                      mov r1, sl
00799a48  00 c0 8d e5                                      str ip, [sp]
00799a4c  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00799a50  10 20 9d e5                                      ldr r2, [sp, #0x10]
00799a54  04 30 a0 e1                                      mov r3, r4
00799a58  04 c0 8d e5                                      str ip, [sp, #4]
00799a5c  d3 fe ff eb                                      bl #0x7995b0
00799a60  04 00 a0 e1                                      mov r0, r4
00799a64  ae f5 ff eb                                      bl #0x797124
00799a68  2c d0 8d e2                                      add sp, sp, #0x2c
00799a6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00799a70  01 40 44 e2                                      sub r4, r4, #1
00799a74  0c 10 a0 e3                                      mov r1, #0xc
00799a78  91 5a 20 e0                                      mla r0, r1, sl, r5
00799a7c  91 54 21 e0                                      mla r1, r1, r4, r5
00799a80  2d f7 ff eb                                      bl #0x79773c
00799a84  04 a0 a0 e1                                      mov sl, r4
00799a88  e4 ff ff ea                                      b #0x799a20

; FUNCTION 0x00799a8c, declared_size=172, range_size=172, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPN7gameswf8as_valueENS0_19custom_array_sorterES1_iEvT_S4_T0_PT1_PT2_
; demangled: void std::__make_heap<gameswf::as_value*, gameswf::custom_array_sorter, gameswf::as_value, int>(gameswf::as_value*, gameswf::as_value*, gameswf::custom_array_sorter, gameswf::as_value*, int*)
; decoder-mode: arm
00799a8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00799a90  01 10 60 e0                                      rsb r1, r0, r1
00799a94  24 d0 4d e2                                      sub sp, sp, #0x24
00799a98  17 00 51 e3                                      cmp r1, #0x17
00799a9c  00 80 a0 e1                                      mov r8, r0
00799aa0  08 20 8d e5                                      str r2, [sp, #8]
00799aa4  0c 30 8d e5                                      str r3, [sp, #0xc]
00799aa8  20 00 00 da                                      ble #0x799b30
00799aac  41 11 a0 e1                                      asr r1, r1, #2
00799ab0  0c 50 a0 e3                                      mov r5, #0xc
00799ab4  01 a1 81 e0                                      add sl, r1, r1, lsl #2
00799ab8  14 60 8d e2                                      add r6, sp, #0x14
00799abc  0a a2 8a e0                                      add sl, sl, sl, lsl #4
00799ac0  00 70 a0 e3                                      mov r7, #0
00799ac4  0a a4 8a e0                                      add sl, sl, sl, lsl #8
00799ac8  0a a8 8a e0                                      add sl, sl, sl, lsl #16
00799acc  8a a0 81 e0                                      add sl, r1, sl, lsl #1
00799ad0  02 40 4a e2                                      sub r4, sl, #2
00799ad4  c4 40 a0 e1                                      asr r4, r4, #1
00799ad8  95 04 25 e0                                      mla r5, r5, r4, r0
00799adc  00 00 00 ea                                      b #0x799ae4
00799ae0  01 40 44 e2                                      sub r4, r4, #1
00799ae4  05 10 a0 e1                                      mov r1, r5
00799ae8  06 00 a0 e1                                      mov r0, r6
00799aec  14 70 cd e5                                      strb r7, [sp, #0x14]
00799af0  15 70 cd e5                                      strb r7, [sp, #0x15]
00799af4  10 f7 ff eb                                      bl #0x79773c
00799af8  08 c0 9d e5                                      ldr ip, [sp, #8]
00799afc  04 10 a0 e1                                      mov r1, r4
00799b00  0a 20 a0 e1                                      mov r2, sl
00799b04  00 c0 8d e5                                      str ip, [sp]
00799b08  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00799b0c  06 30 a0 e1                                      mov r3, r6
00799b10  08 00 a0 e1                                      mov r0, r8
00799b14  04 c0 8d e5                                      str ip, [sp, #4]
00799b18  9d ff ff eb                                      bl #0x799994
00799b1c  06 00 a0 e1                                      mov r0, r6
00799b20  7f f5 ff eb                                      bl #0x797124
00799b24  00 00 54 e3                                      cmp r4, #0
00799b28  0c 50 45 e2                                      sub r5, r5, #0xc
00799b2c  eb ff ff 1a                                      bne #0x799ae0
00799b30  24 d0 8d e2                                      add sp, sp, #0x24
00799b34  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00799b38, declared_size=84, range_size=84, mode=arm
; class-group: void std
; alias: _ZSt4swapIN7gameswf8as_valueEEvRT_S3_
; demangled: void std::swap<gameswf::as_value>(gameswf::as_value&, gameswf::as_value&)
; decoder-mode: arm
00799b38  70 40 2d e9                                      push {r4, r5, r6, lr}
00799b3c  10 d0 4d e2                                      sub sp, sp, #0x10
00799b40  00 60 a0 e1                                      mov r6, r0
00799b44  04 40 8d e2                                      add r4, sp, #4
00799b48  00 30 a0 e3                                      mov r3, #0
00799b4c  01 50 a0 e1                                      mov r5, r1
00799b50  04 00 a0 e1                                      mov r0, r4
00799b54  06 10 a0 e1                                      mov r1, r6
00799b58  05 30 cd e5                                      strb r3, [sp, #5]
00799b5c  04 30 cd e5                                      strb r3, [sp, #4]
00799b60  f5 f6 ff eb                                      bl #0x79773c
00799b64  06 00 a0 e1                                      mov r0, r6
00799b68  05 10 a0 e1                                      mov r1, r5
00799b6c  f2 f6 ff eb                                      bl #0x79773c
00799b70  05 00 a0 e1                                      mov r0, r5
00799b74  04 10 a0 e1                                      mov r1, r4
00799b78  ef f6 ff eb                                      bl #0x79773c
00799b7c  04 00 a0 e1                                      mov r0, r4
00799b80  67 f5 ff eb                                      bl #0x797124
00799b84  10 d0 8d e2                                      add sp, sp, #0x10
00799b88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00799c7c, declared_size=140, range_size=140, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN7gameswf8as_valueES1_NS0_19custom_array_sorterEiEvT_S4_S4_T0_T1_PT2_
; demangled: void std::__pop_heap<gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter, int>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter, int*)
; decoder-mode: arm
00799c7c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00799c80  00 50 a0 e1                                      mov r5, r0
00799c84  01 40 a0 e1                                      mov r4, r1
00799c88  1c d0 4d e2                                      sub sp, sp, #0x1c
00799c8c  02 00 a0 e1                                      mov r0, r2
00799c90  05 10 a0 e1                                      mov r1, r5
00799c94  04 40 65 e0                                      rsb r4, r5, r4
00799c98  03 60 a0 e1                                      mov r6, r3
00799c9c  a6 f6 ff eb                                      bl #0x79773c
00799ca0  44 31 a0 e1                                      asr r3, r4, #2
00799ca4  0c 40 8d e2                                      add r4, sp, #0xc
00799ca8  03 71 83 e0                                      add r7, r3, r3, lsl #2
00799cac  06 10 a0 e1                                      mov r1, r6
00799cb0  07 72 87 e0                                      add r7, r7, r7, lsl #4
00799cb4  00 60 a0 e3                                      mov r6, #0
00799cb8  07 74 87 e0                                      add r7, r7, r7, lsl #8
00799cbc  04 00 a0 e1                                      mov r0, r4
00799cc0  07 78 87 e0                                      add r7, r7, r7, lsl #16
00799cc4  0c 60 cd e5                                      strb r6, [sp, #0xc]
00799cc8  87 70 83 e0                                      add r7, r3, r7, lsl #1
00799ccc  0d 60 cd e5                                      strb r6, [sp, #0xd]
00799cd0  99 f6 ff eb                                      bl #0x79773c
00799cd4  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00799cd8  05 00 a0 e1                                      mov r0, r5
00799cdc  06 10 a0 e1                                      mov r1, r6
00799ce0  00 c0 8d e5                                      str ip, [sp]
00799ce4  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00799ce8  07 20 a0 e1                                      mov r2, r7
00799cec  04 30 a0 e1                                      mov r3, r4
00799cf0  04 c0 8d e5                                      str ip, [sp, #4]
00799cf4  26 ff ff eb                                      bl #0x799994
00799cf8  04 00 a0 e1                                      mov r0, r4
00799cfc  08 f5 ff eb                                      bl #0x797124
00799d00  1c d0 8d e2                                      add sp, sp, #0x1c
00799d04  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00799d08, declared_size=116, range_size=116, mode=arm
; class-group: void std
; alias: _ZSt14__pop_heap_auxIPN7gameswf8as_valueES1_NS0_19custom_array_sorterEEvT_S4_PT0_T1_
; demangled: void std::__pop_heap_aux<gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::custom_array_sorter)
; decoder-mode: arm
00799d08  08 d0 4d e2                                      sub sp, sp, #8
00799d0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00799d10  24 d0 4d e2                                      sub sp, sp, #0x24
00799d14  0c 60 41 e2                                      sub r6, r1, #0xc
00799d18  14 40 8d e2                                      add r4, sp, #0x14
00799d1c  00 50 a0 e3                                      mov r5, #0
00799d20  00 70 a0 e1                                      mov r7, r0
00799d24  06 10 a0 e1                                      mov r1, r6
00799d28  04 00 a0 e1                                      mov r0, r4
00799d2c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00799d30  14 50 cd e5                                      strb r5, [sp, #0x14]
00799d34  15 50 cd e5                                      strb r5, [sp, #0x15]
00799d38  7f f6 ff eb                                      bl #0x79773c
00799d3c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00799d40  07 00 a0 e1                                      mov r0, r7
00799d44  06 10 a0 e1                                      mov r1, r6
00799d48  00 c0 8d e5                                      str ip, [sp]
00799d4c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00799d50  06 20 a0 e1                                      mov r2, r6
00799d54  04 30 a0 e1                                      mov r3, r4
00799d58  04 c0 8d e5                                      str ip, [sp, #4]
00799d5c  08 50 8d e5                                      str r5, [sp, #8]
00799d60  c5 ff ff eb                                      bl #0x799c7c
00799d64  04 00 a0 e1                                      mov r0, r4
00799d68  ed f4 ff eb                                      bl #0x797124
00799d6c  24 d0 8d e2                                      add sp, sp, #0x24
00799d70  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
00799d74  08 d0 8d e2                                      add sp, sp, #8
00799d78  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079a310, declared_size=164, range_size=164, mode=arm
; class-group: void std
; alias: _ZSt4sortIPN7gameswf8as_valueENS0_19custom_array_sorterEEvT_S4_T0_
; demangled: void std::sort<gameswf::as_value*, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::custom_array_sorter)
; decoder-mode: arm
0079a310  30 40 2d e9                                      push {r4, r5, lr}
0079a314  01 00 50 e1                                      cmp r0, r1
0079a318  14 d0 4d e2                                      sub sp, sp, #0x14
0079a31c  00 50 a0 e1                                      mov r5, r0
0079a320  01 40 a0 e1                                      mov r4, r1
0079a324  08 20 8d e5                                      str r2, [sp, #8]
0079a328  0c 30 8d e5                                      str r3, [sp, #0xc]
0079a32c  1e 00 00 0a                                      beq #0x79a3ac
0079a330  01 30 60 e0                                      rsb r3, r0, r1
0079a334  43 31 a0 e1                                      asr r3, r3, #2
0079a338  03 21 83 e0                                      add r2, r3, r3, lsl #2
0079a33c  02 22 82 e0                                      add r2, r2, r2, lsl #4
0079a340  02 24 82 e0                                      add r2, r2, r2, lsl #8
0079a344  02 28 82 e0                                      add r2, r2, r2, lsl #16
0079a348  82 20 83 e0                                      add r2, r3, r2, lsl #1
0079a34c  01 00 52 e3                                      cmp r2, #1
0079a350  00 30 a0 03                                      moveq r3, #0
0079a354  05 00 00 0a                                      beq #0x79a370
0079a358  00 30 a0 e3                                      mov r3, #0
0079a35c  c2 20 a0 e1                                      asr r2, r2, #1
0079a360  01 00 52 e3                                      cmp r2, #1
0079a364  01 30 83 e2                                      add r3, r3, #1
0079a368  fb ff ff 1a                                      bne #0x79a35c
0079a36c  83 30 a0 e1                                      lsl r3, r3, #1
0079a370  08 c0 9d e5                                      ldr ip, [sp, #8]
0079a374  05 00 a0 e1                                      mov r0, r5
0079a378  04 10 a0 e1                                      mov r1, r4
0079a37c  00 c0 8d e5                                      str ip, [sp]
0079a380  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0079a384  00 20 a0 e3                                      mov r2, #0
0079a388  04 c0 8d e5                                      str ip, [sp, #4]
0079a38c  c0 fe ff eb                                      bl #0x799e94
0079a390  08 20 9d e5                                      ldr r2, [sp, #8]
0079a394  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0079a398  05 00 a0 e1                                      mov r0, r5
0079a39c  04 10 a0 e1                                      mov r1, r4
0079a3a0  14 d0 8d e2                                      add sp, sp, #0x14
0079a3a4  30 40 bd e8                                      pop {r4, r5, lr}
0079a3a8  b8 ff ff ea                                      b #0x79a290
0079a3ac  14 d0 8d e2                                      add sp, sp, #0x14
0079a3b0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0079a76c, declared_size=280, range_size=280, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPN7gameswf8as_valueEiS1_NS0_21standard_array_sorterEEvT_T0_S5_T1_T2_
; demangled: void std::__adjust_heap<gameswf::as_value*, int, gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value*, int, int, gameswf::as_value, gameswf::standard_array_sorter)
; decoder-mode: arm
0079a76c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0079a770  01 40 81 e2                                      add r4, r1, #1
0079a774  84 40 a0 e1                                      lsl r4, r4, #1
0079a778  3c d0 4d e2                                      sub sp, sp, #0x3c
0079a77c  02 00 54 e1                                      cmp r4, r2
0079a780  10 10 8d e5                                      str r1, [sp, #0x10]
0079a784  0c 20 8d e5                                      str r2, [sp, #0xc]
0079a788  00 50 a0 e1                                      mov r5, r0
0079a78c  14 30 8d e5                                      str r3, [sp, #0x14]
0079a790  60 b0 9d e5                                      ldr fp, [sp, #0x60]
0079a794  01 a0 a0 a1                                      movge sl, r1
0079a798  14 00 00 aa                                      bge #0x79a7f0
0079a79c  10 90 9d e5                                      ldr sb, [sp, #0x10]
0079a7a0  0c 70 a0 e3                                      mov r7, #0xc
0079a7a4  01 a0 44 e2                                      sub sl, r4, #1
0079a7a8  97 54 26 e0                                      mla r6, r7, r4, r5
0079a7ac  97 5a 28 e0                                      mla r8, r7, sl, r5
0079a7b0  06 10 a0 e1                                      mov r1, r6
0079a7b4  08 20 a0 e1                                      mov r2, r8
0079a7b8  0b 00 a0 e1                                      mov r0, fp
0079a7bc  c8 f7 ff eb                                      bl #0x7986e4
0079a7c0  00 00 50 e3                                      cmp r0, #0
0079a7c4  08 60 a0 11                                      movne r6, r8
0079a7c8  97 59 20 e0                                      mla r0, r7, sb, r5
0079a7cc  06 10 a0 e1                                      mov r1, r6
0079a7d0  04 a0 a0 01                                      moveq sl, r4
0079a7d4  d8 f3 ff eb                                      bl #0x79773c
0079a7d8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0079a7dc  01 40 8a e2                                      add r4, sl, #1
0079a7e0  84 40 a0 e1                                      lsl r4, r4, #1
0079a7e4  04 00 51 e1                                      cmp r1, r4
0079a7e8  0a 90 a0 e1                                      mov sb, sl
0079a7ec  ec ff ff ca                                      bgt #0x79a7a4
0079a7f0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0079a7f4  02 00 54 e1                                      cmp r4, r2
0079a7f8  1a 00 00 0a                                      beq #0x79a868
0079a7fc  2c 40 8d e2                                      add r4, sp, #0x2c
0079a800  00 70 a0 e3                                      mov r7, #0
0079a804  1c 60 8d e2                                      add r6, sp, #0x1c
0079a808  14 10 9d e5                                      ldr r1, [sp, #0x14]
0079a80c  04 00 a0 e1                                      mov r0, r4
0079a810  2c 70 cd e5                                      strb r7, [sp, #0x2c]
0079a814  2d 70 cd e5                                      strb r7, [sp, #0x2d]
0079a818  c7 f3 ff eb                                      bl #0x79773c
0079a81c  06 00 a0 e1                                      mov r0, r6
0079a820  0b 10 a0 e1                                      mov r1, fp
0079a824  1d 70 cd e5                                      strb r7, [sp, #0x1d]
0079a828  1c 70 cd e5                                      strb r7, [sp, #0x1c]
0079a82c  c2 f3 ff eb                                      bl #0x79773c
0079a830  0c c0 9b e5                                      ldr ip, [fp, #0xc]
0079a834  0a 10 a0 e1                                      mov r1, sl
0079a838  10 20 9d e5                                      ldr r2, [sp, #0x10]
0079a83c  05 00 a0 e1                                      mov r0, r5
0079a840  04 30 a0 e1                                      mov r3, r4
0079a844  28 c0 8d e5                                      str ip, [sp, #0x28]
0079a848  00 60 8d e5                                      str r6, [sp]
0079a84c  13 f8 ff eb                                      bl #0x7988a0
0079a850  06 00 a0 e1                                      mov r0, r6
0079a854  32 f2 ff eb                                      bl #0x797124
0079a858  04 00 a0 e1                                      mov r0, r4
0079a85c  30 f2 ff eb                                      bl #0x797124
0079a860  3c d0 8d e2                                      add sp, sp, #0x3c
0079a864  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0079a868  01 40 44 e2                                      sub r4, r4, #1
0079a86c  0c 10 a0 e3                                      mov r1, #0xc
0079a870  91 5a 20 e0                                      mla r0, r1, sl, r5
0079a874  91 54 21 e0                                      mla r1, r1, r4, r5
0079a878  af f3 ff eb                                      bl #0x79773c
0079a87c  04 a0 a0 e1                                      mov sl, r4
0079a880  dd ff ff ea                                      b #0x79a7fc

; FUNCTION 0x0079a884, declared_size=196, range_size=196, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPN7gameswf8as_valueENS0_21standard_array_sorterES1_iEvT_S4_T0_PT1_PT2_
; demangled: void std::__make_heap<gameswf::as_value*, gameswf::standard_array_sorter, gameswf::as_value, int>(gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter, gameswf::as_value*, int*)
; decoder-mode: arm
0079a884  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0079a888  01 10 60 e0                                      rsb r1, r0, r1
0079a88c  17 00 51 e3                                      cmp r1, #0x17
0079a890  2c d0 4d e2                                      sub sp, sp, #0x2c
0079a894  00 90 a0 e1                                      mov sb, r0
0079a898  02 70 a0 e1                                      mov r7, r2
0079a89c  27 00 00 da                                      ble #0x79a940
0079a8a0  41 11 a0 e1                                      asr r1, r1, #2
0079a8a4  0c a0 a0 e3                                      mov sl, #0xc
0079a8a8  01 b1 81 e0                                      add fp, r1, r1, lsl #2
0079a8ac  1c 60 8d e2                                      add r6, sp, #0x1c
0079a8b0  0b b2 8b e0                                      add fp, fp, fp, lsl #4
0079a8b4  0c 80 8d e2                                      add r8, sp, #0xc
0079a8b8  0b b4 8b e0                                      add fp, fp, fp, lsl #8
0079a8bc  00 40 a0 e3                                      mov r4, #0
0079a8c0  0b b8 8b e0                                      add fp, fp, fp, lsl #16
0079a8c4  8b b0 81 e0                                      add fp, r1, fp, lsl #1
0079a8c8  02 50 4b e2                                      sub r5, fp, #2
0079a8cc  c5 50 a0 e1                                      asr r5, r5, #1
0079a8d0  9a 05 2a e0                                      mla sl, sl, r5, r0
0079a8d4  00 00 00 ea                                      b #0x79a8dc
0079a8d8  01 50 45 e2                                      sub r5, r5, #1
0079a8dc  0a 10 a0 e1                                      mov r1, sl
0079a8e0  06 00 a0 e1                                      mov r0, r6
0079a8e4  1c 40 cd e5                                      strb r4, [sp, #0x1c]
0079a8e8  1d 40 cd e5                                      strb r4, [sp, #0x1d]
0079a8ec  92 f3 ff eb                                      bl #0x79773c
0079a8f0  08 00 a0 e1                                      mov r0, r8
0079a8f4  07 10 a0 e1                                      mov r1, r7
0079a8f8  0c 40 cd e5                                      strb r4, [sp, #0xc]
0079a8fc  0d 40 cd e5                                      strb r4, [sp, #0xd]
0079a900  8d f3 ff eb                                      bl #0x79773c
0079a904  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0079a908  05 10 a0 e1                                      mov r1, r5
0079a90c  0b 20 a0 e1                                      mov r2, fp
0079a910  06 30 a0 e1                                      mov r3, r6
0079a914  09 00 a0 e1                                      mov r0, sb
0079a918  18 c0 8d e5                                      str ip, [sp, #0x18]
0079a91c  00 80 8d e5                                      str r8, [sp]
0079a920  91 ff ff eb                                      bl #0x79a76c
0079a924  08 00 a0 e1                                      mov r0, r8
0079a928  fd f1 ff eb                                      bl #0x797124
0079a92c  06 00 a0 e1                                      mov r0, r6
0079a930  fb f1 ff eb                                      bl #0x797124
0079a934  00 00 55 e3                                      cmp r5, #0
0079a938  0c a0 4a e2                                      sub sl, sl, #0xc
0079a93c  e5 ff ff 1a                                      bne #0x79a8d8
0079a940  2c d0 8d e2                                      add sp, sp, #0x2c
0079a944  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0079a948, declared_size=96, range_size=96, mode=arm
; class-group: void std
; alias: _ZSt9make_heapIPN7gameswf8as_valueENS0_21standard_array_sorterEEvT_S4_T0_
; demangled: void std::make_heap<gameswf::as_value*, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079a948  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079a94c  18 d0 4d e2                                      sub sp, sp, #0x18
0079a950  08 50 8d e2                                      add r5, sp, #8
0079a954  00 40 a0 e3                                      mov r4, #0
0079a958  02 60 a0 e1                                      mov r6, r2
0079a95c  00 80 a0 e1                                      mov r8, r0
0079a960  01 70 a0 e1                                      mov r7, r1
0079a964  05 00 a0 e1                                      mov r0, r5
0079a968  02 10 a0 e1                                      mov r1, r2
0079a96c  08 40 cd e5                                      strb r4, [sp, #8]
0079a970  09 40 cd e5                                      strb r4, [sp, #9]
0079a974  70 f3 ff eb                                      bl #0x79773c
0079a978  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0079a97c  08 00 a0 e1                                      mov r0, r8
0079a980  07 10 a0 e1                                      mov r1, r7
0079a984  04 30 a0 e1                                      mov r3, r4
0079a988  05 20 a0 e1                                      mov r2, r5
0079a98c  14 c0 8d e5                                      str ip, [sp, #0x14]
0079a990  00 40 8d e5                                      str r4, [sp]
0079a994  ba ff ff eb                                      bl #0x79a884
0079a998  05 00 a0 e1                                      mov r0, r5
0079a99c  e0 f1 ff eb                                      bl #0x797124
0079a9a0  18 d0 8d e2                                      add sp, sp, #0x18
0079a9a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0079aa04, declared_size=172, range_size=172, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN7gameswf8as_valueES1_NS0_21standard_array_sorterEiEvT_S4_S4_T0_T1_PT2_
; demangled: void std::__pop_heap<gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter, int>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter, int*)
; decoder-mode: arm
0079aa04  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0079aa08  00 60 a0 e1                                      mov r6, r0
0079aa0c  01 40 a0 e1                                      mov r4, r1
0079aa10  2c d0 4d e2                                      sub sp, sp, #0x2c
0079aa14  02 00 a0 e1                                      mov r0, r2
0079aa18  06 10 a0 e1                                      mov r1, r6
0079aa1c  04 40 66 e0                                      rsb r4, r6, r4
0079aa20  03 50 a0 e1                                      mov r5, r3
0079aa24  48 80 9d e5                                      ldr r8, [sp, #0x48]
0079aa28  43 f3 ff eb                                      bl #0x79773c
0079aa2c  44 31 a0 e1                                      asr r3, r4, #2
0079aa30  1c 40 8d e2                                      add r4, sp, #0x1c
0079aa34  03 a1 83 e0                                      add sl, r3, r3, lsl #2
0079aa38  00 70 a0 e3                                      mov r7, #0
0079aa3c  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0079aa40  05 10 a0 e1                                      mov r1, r5
0079aa44  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0079aa48  0c 50 8d e2                                      add r5, sp, #0xc
0079aa4c  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0079aa50  04 00 a0 e1                                      mov r0, r4
0079aa54  8a a0 83 e0                                      add sl, r3, sl, lsl #1
0079aa58  1c 70 cd e5                                      strb r7, [sp, #0x1c]
0079aa5c  1d 70 cd e5                                      strb r7, [sp, #0x1d]
0079aa60  35 f3 ff eb                                      bl #0x79773c
0079aa64  05 00 a0 e1                                      mov r0, r5
0079aa68  08 10 a0 e1                                      mov r1, r8
0079aa6c  0c 70 cd e5                                      strb r7, [sp, #0xc]
0079aa70  0d 70 cd e5                                      strb r7, [sp, #0xd]
0079aa74  30 f3 ff eb                                      bl #0x79773c
0079aa78  0c c0 98 e5                                      ldr ip, [r8, #0xc]
0079aa7c  07 10 a0 e1                                      mov r1, r7
0079aa80  0a 20 a0 e1                                      mov r2, sl
0079aa84  06 00 a0 e1                                      mov r0, r6
0079aa88  04 30 a0 e1                                      mov r3, r4
0079aa8c  18 c0 8d e5                                      str ip, [sp, #0x18]
0079aa90  00 50 8d e5                                      str r5, [sp]
0079aa94  34 ff ff eb                                      bl #0x79a76c
0079aa98  05 00 a0 e1                                      mov r0, r5
0079aa9c  a0 f1 ff eb                                      bl #0x797124
0079aaa0  04 00 a0 e1                                      mov r0, r4
0079aaa4  9e f1 ff eb                                      bl #0x797124
0079aaa8  2c d0 8d e2                                      add sp, sp, #0x2c
0079aaac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0079aab0, declared_size=132, range_size=132, mode=arm
; class-group: void std
; alias: _ZSt14__pop_heap_auxIPN7gameswf8as_valueES1_NS0_21standard_array_sorterEEvT_S4_PT0_T1_
; demangled: void std::__pop_heap_aux<gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079aab0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0079aab4  2c d0 4d e2                                      sub sp, sp, #0x2c
0079aab8  0c 70 41 e2                                      sub r7, r1, #0xc
0079aabc  1c 50 8d e2                                      add r5, sp, #0x1c
0079aac0  03 80 a0 e1                                      mov r8, r3
0079aac4  00 40 a0 e3                                      mov r4, #0
0079aac8  0c 60 8d e2                                      add r6, sp, #0xc
0079aacc  00 a0 a0 e1                                      mov sl, r0
0079aad0  07 10 a0 e1                                      mov r1, r7
0079aad4  05 00 a0 e1                                      mov r0, r5
0079aad8  1c 40 cd e5                                      strb r4, [sp, #0x1c]
0079aadc  1d 40 cd e5                                      strb r4, [sp, #0x1d]
0079aae0  15 f3 ff eb                                      bl #0x79773c
0079aae4  06 00 a0 e1                                      mov r0, r6
0079aae8  08 10 a0 e1                                      mov r1, r8
0079aaec  0c 40 cd e5                                      strb r4, [sp, #0xc]
0079aaf0  0d 40 cd e5                                      strb r4, [sp, #0xd]
0079aaf4  10 f3 ff eb                                      bl #0x79773c
0079aaf8  0c c0 98 e5                                      ldr ip, [r8, #0xc]
0079aafc  07 10 a0 e1                                      mov r1, r7
0079ab00  0a 00 a0 e1                                      mov r0, sl
0079ab04  07 20 a0 e1                                      mov r2, r7
0079ab08  05 30 a0 e1                                      mov r3, r5
0079ab0c  18 c0 8d e5                                      str ip, [sp, #0x18]
0079ab10  04 40 8d e5                                      str r4, [sp, #4]
0079ab14  00 60 8d e5                                      str r6, [sp]
0079ab18  b9 ff ff eb                                      bl #0x79aa04
0079ab1c  06 00 a0 e1                                      mov r0, r6
0079ab20  7f f1 ff eb                                      bl #0x797124
0079ab24  05 00 a0 e1                                      mov r0, r5
0079ab28  7d f1 ff eb                                      bl #0x797124
0079ab2c  2c d0 8d e2                                      add sp, sp, #0x2c
0079ab30  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0079ab34, declared_size=92, range_size=92, mode=arm
; class-group: void std
; alias: _ZSt8pop_heapIPN7gameswf8as_valueENS0_21standard_array_sorterEEvT_S4_T0_
; demangled: void std::pop_heap<gameswf::as_value*, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079ab34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079ab38  10 d0 4d e2                                      sub sp, sp, #0x10
0079ab3c  02 60 a0 e1                                      mov r6, r2
0079ab40  00 50 a0 e3                                      mov r5, #0
0079ab44  00 80 a0 e1                                      mov r8, r0
0079ab48  01 70 a0 e1                                      mov r7, r1
0079ab4c  0d 00 a0 e1                                      mov r0, sp
0079ab50  02 10 a0 e1                                      mov r1, r2
0079ab54  00 50 cd e5                                      strb r5, [sp]
0079ab58  01 50 cd e5                                      strb r5, [sp, #1]
0079ab5c  f6 f2 ff eb                                      bl #0x79773c
0079ab60  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0079ab64  08 00 a0 e1                                      mov r0, r8
0079ab68  07 10 a0 e1                                      mov r1, r7
0079ab6c  05 20 a0 e1                                      mov r2, r5
0079ab70  0d 30 a0 e1                                      mov r3, sp
0079ab74  0c c0 8d e5                                      str ip, [sp, #0xc]
0079ab78  cc ff ff eb                                      bl #0x79aab0
0079ab7c  0d 00 a0 e1                                      mov r0, sp
0079ab80  0d 40 a0 e1                                      mov r4, sp
0079ab84  66 f1 ff eb                                      bl #0x797124
0079ab88  10 d0 8d e2                                      add sp, sp, #0x10
0079ab8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0079ab90, declared_size=120, range_size=120, mode=arm
; class-group: void std
; alias: _ZSt9sort_heapIPN7gameswf8as_valueENS0_21standard_array_sorterEEvT_S4_T0_
; demangled: void std::sort_heap<gameswf::as_value*, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079ab90  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0079ab94  01 a0 60 e0                                      rsb sl, r0, r1
0079ab98  17 00 5a e3                                      cmp sl, #0x17
0079ab9c  10 d0 4d e2                                      sub sp, sp, #0x10
0079aba0  00 90 a0 e1                                      mov sb, r0
0079aba4  01 80 a0 e1                                      mov r8, r1
0079aba8  02 60 a0 e1                                      mov r6, r2
0079abac  13 00 00 da                                      ble #0x79ac00
0079abb0  00 40 a0 e3                                      mov r4, #0
0079abb4  0d 50 a0 e1                                      mov r5, sp
0079abb8  04 70 a0 e1                                      mov r7, r4
0079abbc  0d 00 a0 e1                                      mov r0, sp
0079abc0  06 10 a0 e1                                      mov r1, r6
0079abc4  00 70 cd e5                                      strb r7, [sp]
0079abc8  01 70 cd e5                                      strb r7, [sp, #1]
0079abcc  da f2 ff eb                                      bl #0x79773c
0079abd0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0079abd4  08 10 84 e0                                      add r1, r4, r8
0079abd8  0d 20 a0 e1                                      mov r2, sp
0079abdc  09 00 a0 e1                                      mov r0, sb
0079abe0  0c 30 8d e5                                      str r3, [sp, #0xc]
0079abe4  0c 40 44 e2                                      sub r4, r4, #0xc
0079abe8  d1 ff ff eb                                      bl #0x79ab34
0079abec  0d 00 a0 e1                                      mov r0, sp
0079abf0  4b f1 ff eb                                      bl #0x797124
0079abf4  04 30 8a e0                                      add r3, sl, r4
0079abf8  17 00 53 e3                                      cmp r3, #0x17
0079abfc  ee ff ff ca                                      bgt #0x79abbc
0079ac00  10 d0 8d e2                                      add sp, sp, #0x10
0079ac04  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0079ad44, declared_size=100, range_size=100, mode=arm
; class-group: void std
; alias: _ZSt12partial_sortIPN7gameswf8as_valueENS0_21standard_array_sorterEEvT_S4_S4_T0_
; demangled: void std::partial_sort<gameswf::as_value*, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079ad44  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0079ad48  1c d0 4d e2                                      sub sp, sp, #0x1c
0079ad4c  08 40 8d e2                                      add r4, sp, #8
0079ad50  03 60 a0 e1                                      mov r6, r3
0079ad54  00 50 a0 e3                                      mov r5, #0
0079ad58  00 80 a0 e1                                      mov r8, r0
0079ad5c  01 70 a0 e1                                      mov r7, r1
0079ad60  04 00 a0 e1                                      mov r0, r4
0079ad64  03 10 a0 e1                                      mov r1, r3
0079ad68  02 a0 a0 e1                                      mov sl, r2
0079ad6c  08 50 cd e5                                      strb r5, [sp, #8]
0079ad70  09 50 cd e5                                      strb r5, [sp, #9]
0079ad74  70 f2 ff eb                                      bl #0x79773c
0079ad78  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0079ad7c  08 00 a0 e1                                      mov r0, r8
0079ad80  07 10 a0 e1                                      mov r1, r7
0079ad84  0a 20 a0 e1                                      mov r2, sl
0079ad88  05 30 a0 e1                                      mov r3, r5
0079ad8c  14 c0 8d e5                                      str ip, [sp, #0x14]
0079ad90  00 40 8d e5                                      str r4, [sp]
0079ad94  9b ff ff eb                                      bl #0x79ac08
0079ad98  04 00 a0 e1                                      mov r0, r4
0079ad9c  e0 f0 ff eb                                      bl #0x797124
0079ada0  1c d0 8d e2                                      add sp, sp, #0x1c
0079ada4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0079b044, declared_size=224, range_size=224, mode=arm
; class-group: void std
; alias: _ZSt4sortIPN7gameswf8as_valueENS0_21standard_array_sorterEEvT_S4_T0_
; demangled: void std::sort<gameswf::as_value*, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079b044  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0079b048  01 00 50 e1                                      cmp r0, r1
0079b04c  2c d0 4d e2                                      sub sp, sp, #0x2c
0079b050  00 60 a0 e1                                      mov r6, r0
0079b054  01 50 a0 e1                                      mov r5, r1
0079b058  02 70 a0 e1                                      mov r7, r2
0079b05c  2e 00 00 0a                                      beq #0x79b11c
0079b060  01 20 60 e0                                      rsb r2, r0, r1
0079b064  42 21 a0 e1                                      asr r2, r2, #2
0079b068  02 31 82 e0                                      add r3, r2, r2, lsl #2
0079b06c  03 32 83 e0                                      add r3, r3, r3, lsl #4
0079b070  03 34 83 e0                                      add r3, r3, r3, lsl #8
0079b074  03 38 83 e0                                      add r3, r3, r3, lsl #16
0079b078  83 30 82 e0                                      add r3, r2, r3, lsl #1
0079b07c  01 00 53 e3                                      cmp r3, #1
0079b080  00 a0 a0 03                                      moveq sl, #0
0079b084  05 00 00 0a                                      beq #0x79b0a0
0079b088  00 a0 a0 e3                                      mov sl, #0
0079b08c  c3 30 a0 e1                                      asr r3, r3, #1
0079b090  01 00 53 e3                                      cmp r3, #1
0079b094  01 a0 8a e2                                      add sl, sl, #1
0079b098  fb ff ff 1a                                      bne #0x79b08c
0079b09c  8a a0 a0 e1                                      lsl sl, sl, #1
0079b0a0  18 80 8d e2                                      add r8, sp, #0x18
0079b0a4  00 40 a0 e3                                      mov r4, #0
0079b0a8  08 00 a0 e1                                      mov r0, r8
0079b0ac  07 10 a0 e1                                      mov r1, r7
0079b0b0  18 40 cd e5                                      strb r4, [sp, #0x18]
0079b0b4  19 40 cd e5                                      strb r4, [sp, #0x19]
0079b0b8  9f f1 ff eb                                      bl #0x79773c
0079b0bc  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0079b0c0  0a 30 a0 e1                                      mov r3, sl
0079b0c4  04 20 a0 e1                                      mov r2, r4
0079b0c8  05 10 a0 e1                                      mov r1, r5
0079b0cc  06 00 a0 e1                                      mov r0, r6
0079b0d0  24 c0 8d e5                                      str ip, [sp, #0x24]
0079b0d4  00 80 8d e5                                      str r8, [sp]
0079b0d8  6c ff ff eb                                      bl #0x79ae90
0079b0dc  08 00 a0 e1                                      mov r0, r8
0079b0e0  08 80 8d e2                                      add r8, sp, #8
0079b0e4  0e f0 ff eb                                      bl #0x797124
0079b0e8  08 00 a0 e1                                      mov r0, r8
0079b0ec  07 10 a0 e1                                      mov r1, r7
0079b0f0  09 40 cd e5                                      strb r4, [sp, #9]
0079b0f4  08 40 cd e5                                      strb r4, [sp, #8]
0079b0f8  8f f1 ff eb                                      bl #0x79773c
0079b0fc  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0079b100  06 00 a0 e1                                      mov r0, r6
0079b104  05 10 a0 e1                                      mov r1, r5
0079b108  08 20 a0 e1                                      mov r2, r8
0079b10c  14 30 8d e5                                      str r3, [sp, #0x14]
0079b110  24 ff ff eb                                      bl #0x79ada8
0079b114  08 00 a0 e1                                      mov r0, r8
0079b118  01 f0 ff eb                                      bl #0x797124
0079b11c  2c d0 8d e2                                      add sp, sp, #0x2c
0079b120  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x007b16d8, declared_size=180, range_size=180, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPN7gameswf16ear_clip_wrapperIfNS0_20ear_clip_triangulate17ear_clip_array_ioIfEES4_E9path_infoEiS6_St4lessIS6_EEvT_T0_SB_T1_T2_
; demangled: void std::__push_heap<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info> >(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, int, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>)
; decoder-mode: arm
007b16d8  08 d0 4d e2                                      sub sp, sp, #8
007b16dc  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
007b16e0  02 00 51 e1                                      cmp r1, r2
007b16e4  24 30 8d e5                                      str r3, [sp, #0x24]
007b16e8  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
007b16ec  28 b0 9d e5                                      ldr fp, [sp, #0x28]
007b16f0  06 00 00 ca                                      bgt #0x7b1710
007b16f4  0c 40 a0 e3                                      mov r4, #0xc
007b16f8  94 01 24 e0                                      mla r4, r4, r1, r0
007b16fc  08 a0 84 e5                                      str sl, [r4, #8]
007b1700  08 08 84 e8                                      stm r4, {r3, fp}
007b1704  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
007b1708  08 d0 8d e2                                      add sp, sp, #8
007b170c  1e ff 2f e1                                      bx lr
007b1710  01 c0 41 e2                                      sub ip, r1, #1
007b1714  ac cf 8c e0                                      add ip, ip, ip, lsr #31
007b1718  0c 60 a0 e3                                      mov r6, #0xc
007b171c  cc c0 a0 e1                                      asr ip, ip, #1
007b1720  96 0c 24 e0                                      mla r4, r6, ip, r0
007b1724  08 40 94 e5                                      ldr r4, [r4, #8]
007b1728  04 00 5a e1                                      cmp sl, r4
007b172c  96 01 24 d0                                      mlale r4, r6, r1, r0
007b1730  f1 ff ff da                                      ble #0x7b16fc
007b1734  96 0c 04 e0                                      mul r4, r6, ip
007b1738  96 01 01 e0                                      mul r1, r6, r1
007b173c  04 70 90 e7                                      ldr r7, [r0, r4]
007b1740  04 40 80 e0                                      add r4, r0, r4
007b1744  01 50 4c e2                                      sub r5, ip, #1
007b1748  01 70 80 e7                                      str r7, [r0, r1]
007b174c  04 90 94 e5                                      ldr sb, [r4, #4]
007b1750  01 70 80 e0                                      add r7, r0, r1
007b1754  a5 5f 85 e0                                      add r5, r5, r5, lsr #31
007b1758  04 90 87 e5                                      str sb, [r7, #4]
007b175c  08 90 94 e5                                      ldr sb, [r4, #8]
007b1760  c5 50 a0 e1                                      asr r5, r5, #1
007b1764  0c 00 52 e1                                      cmp r2, ip
007b1768  96 05 28 e0                                      mla r8, r6, r5, r0
007b176c  0c 10 a0 e1                                      mov r1, ip
007b1770  08 90 87 e5                                      str sb, [r7, #8]
007b1774  e0 ff ff aa                                      bge #0x7b16fc
007b1778  08 70 98 e5                                      ldr r7, [r8, #8]
007b177c  05 c0 a0 e1                                      mov ip, r5
007b1780  0a 00 57 e1                                      cmp r7, sl
007b1784  dc ff ff aa                                      bge #0x7b16fc
007b1788  e9 ff ff ea                                      b #0x7b1734

; FUNCTION 0x007b178c, declared_size=252, range_size=252, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPN7gameswf16ear_clip_wrapperIfNS0_20ear_clip_triangulate17ear_clip_array_ioIfEES4_E9path_infoEiS6_St4lessIS6_EEvT_T0_SB_T1_T2_
; demangled: void std::__adjust_heap<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info> >(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, int, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>)
; decoder-mode: arm
007b178c  08 d0 4d e2                                      sub sp, sp, #8
007b1790  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b1794  01 c0 a0 e1                                      mov ip, r1
007b1798  01 10 81 e2                                      add r1, r1, #1
007b179c  81 e0 a0 e1                                      lsl lr, r1, #1
007b17a0  18 d0 4d e2                                      sub sp, sp, #0x18
007b17a4  02 00 5e e1                                      cmp lr, r2
007b17a8  34 30 8d e5                                      str r3, [sp, #0x34]
007b17ac  0c 10 a0 a1                                      movge r1, ip
007b17b0  17 00 00 aa                                      bge #0x7b1814
007b17b4  0c 70 a0 e1                                      mov r7, ip
007b17b8  0c 50 a0 e3                                      mov r5, #0xc
007b17bc  01 10 4e e2                                      sub r1, lr, #1
007b17c0  95 0e 23 e0                                      mla r3, r5, lr, r0
007b17c4  95 01 24 e0                                      mla r4, r5, r1, r0
007b17c8  08 80 93 e5                                      ldr r8, [r3, #8]
007b17cc  08 60 94 e5                                      ldr r6, [r4, #8]
007b17d0  95 07 07 e0                                      mul r7, r5, r7
007b17d4  06 00 58 e1                                      cmp r8, r6
007b17d8  04 30 a0 b1                                      movlt r3, r4
007b17dc  03 40 a0 e1                                      mov r4, r3
007b17e0  04 80 94 e4                                      ldr r8, [r4], #4
007b17e4  07 60 80 e0                                      add r6, r0, r7
007b17e8  0e 10 a0 a1                                      movge r1, lr
007b17ec  07 80 80 e7                                      str r8, [r0, r7]
007b17f0  04 30 93 e5                                      ldr r3, [r3, #4]
007b17f4  01 e0 81 e2                                      add lr, r1, #1
007b17f8  8e e0 a0 e1                                      lsl lr, lr, #1
007b17fc  04 30 86 e5                                      str r3, [r6, #4]
007b1800  04 30 94 e5                                      ldr r3, [r4, #4]
007b1804  0e 00 52 e1                                      cmp r2, lr
007b1808  01 70 a0 e1                                      mov r7, r1
007b180c  08 30 86 e5                                      str r3, [r6, #8]
007b1810  e9 ff ff ca                                      bgt #0x7b17bc
007b1814  02 00 5e e1                                      cmp lr, r2
007b1818  0c 00 00 0a                                      beq #0x7b1850
007b181c  0c 20 a0 e1                                      mov r2, ip
007b1820  14 c0 8d e2                                      add ip, sp, #0x14
007b1824  08 c0 8d e5                                      str ip, [sp, #8]
007b1828  38 c0 9d e5                                      ldr ip, [sp, #0x38]
007b182c  34 30 9d e5                                      ldr r3, [sp, #0x34]
007b1830  00 c0 8d e5                                      str ip, [sp]
007b1834  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
007b1838  04 c0 8d e5                                      str ip, [sp, #4]
007b183c  a5 ff ff eb                                      bl #0x7b16d8
007b1840  18 d0 8d e2                                      add sp, sp, #0x18
007b1844  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007b1848  08 d0 8d e2                                      add sp, sp, #8
007b184c  1e ff 2f e1                                      bx lr
007b1850  0c 30 a0 e3                                      mov r3, #0xc
007b1854  01 e0 4e e2                                      sub lr, lr, #1
007b1858  93 0e 02 e0                                      mul r2, r3, lr
007b185c  93 01 01 e0                                      mul r1, r3, r1
007b1860  02 40 90 e7                                      ldr r4, [r0, r2]
007b1864  02 20 80 e0                                      add r2, r0, r2
007b1868  01 30 80 e0                                      add r3, r0, r1
007b186c  01 40 80 e7                                      str r4, [r0, r1]
007b1870  04 40 92 e5                                      ldr r4, [r2, #4]
007b1874  0e 10 a0 e1                                      mov r1, lr
007b1878  04 40 83 e5                                      str r4, [r3, #4]
007b187c  08 20 92 e5                                      ldr r2, [r2, #8]
007b1880  08 20 83 e5                                      str r2, [r3, #8]
007b1884  e4 ff ff ea                                      b #0x7b181c

; FUNCTION 0x007b1888, declared_size=188, range_size=188, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPN7gameswf16ear_clip_wrapperIfNS0_20ear_clip_triangulate17ear_clip_array_ioIfEES4_E9path_infoESt4lessIS6_ES6_iEvT_SA_T0_PT1_PT2_
; demangled: void std::__make_heap<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, int>(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, int*)
; decoder-mode: arm
007b1888  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b188c  01 10 60 e0                                      rsb r1, r0, r1
007b1890  17 00 51 e3                                      cmp r1, #0x17
007b1894  2c d0 4d e2                                      sub sp, sp, #0x2c
007b1898  00 70 a0 e1                                      mov r7, r0
007b189c  26 00 00 da                                      ble #0x7b193c
007b18a0  41 11 a0 e1                                      asr r1, r1, #2
007b18a4  18 80 8d e2                                      add r8, sp, #0x18
007b18a8  01 a1 81 e0                                      add sl, r1, r1, lsl #2
007b18ac  04 90 88 e2                                      add sb, r8, #4
007b18b0  0a a2 8a e0                                      add sl, sl, sl, lsl #4
007b18b4  0c 60 a0 e3                                      mov r6, #0xc
007b18b8  0a a4 8a e0                                      add sl, sl, sl, lsl #8
007b18bc  04 30 89 e2                                      add r3, sb, #4
007b18c0  0a a8 8a e0                                      add sl, sl, sl, lsl #16
007b18c4  00 40 a0 e3                                      mov r4, #0
007b18c8  8a a0 81 e0                                      add sl, r1, sl, lsl #1
007b18cc  02 50 4a e2                                      sub r5, sl, #2
007b18d0  c5 50 a0 e1                                      asr r5, r5, #1
007b18d4  24 b0 8d e2                                      add fp, sp, #0x24
007b18d8  96 05 26 e0                                      mla r6, r6, r5, r0
007b18dc  14 30 8d e5                                      str r3, [sp, #0x14]
007b18e0  00 00 00 ea                                      b #0x7b18e8
007b18e4  01 50 45 e2                                      sub r5, r5, #1
007b18e8  04 30 96 e7                                      ldr r3, [r6, r4]
007b18ec  04 20 86 e0                                      add r2, r6, r4
007b18f0  04 20 82 e2                                      add r2, r2, #4
007b18f4  00 30 88 e5                                      str r3, [r8]
007b18f8  04 00 92 e4                                      ldr r0, [r2], #4
007b18fc  05 10 a0 e1                                      mov r1, r5
007b1900  18 30 9d e5                                      ldr r3, [sp, #0x18]
007b1904  00 00 89 e5                                      str r0, [sb]
007b1908  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
007b190c  00 c0 92 e5                                      ldr ip, [r2]
007b1910  07 00 a0 e1                                      mov r0, r7
007b1914  00 e0 8d e5                                      str lr, [sp]
007b1918  14 e0 9d e5                                      ldr lr, [sp, #0x14]
007b191c  04 c0 8d e5                                      str ip, [sp, #4]
007b1920  0a 20 a0 e1                                      mov r2, sl
007b1924  00 c0 8e e5                                      str ip, [lr]
007b1928  08 b0 8d e5                                      str fp, [sp, #8]
007b192c  96 ff ff eb                                      bl #0x7b178c
007b1930  00 00 55 e3                                      cmp r5, #0
007b1934  0c 40 44 e2                                      sub r4, r4, #0xc
007b1938  e9 ff ff 1a                                      bne #0x7b18e4
007b193c  2c d0 8d e2                                      add sp, sp, #0x2c
007b1940  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007b1944, declared_size=124, range_size=124, mode=arm
; class-group: void std
; alias: _ZSt10__pop_heapIPN7gameswf16ear_clip_wrapperIfNS0_20ear_clip_triangulate17ear_clip_array_ioIfEES4_E9path_infoES6_St4lessIS6_EiEvT_SA_SA_T0_T1_PT2_
; demangled: void std::__pop_heap<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>, int>(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>, int*)
; decoder-mode: arm
007b1944  08 d0 4d e2                                      sub sp, sp, #8
007b1948  70 40 2d e9                                      push {r4, r5, r6, lr}
007b194c  00 c0 a0 e1                                      mov ip, r0
007b1950  04 40 9c e4                                      ldr r4, [ip], #4
007b1954  01 10 60 e0                                      rsb r1, r0, r1
007b1958  41 11 a0 e1                                      asr r1, r1, #2
007b195c  02 50 a0 e1                                      mov r5, r2
007b1960  04 40 85 e4                                      str r4, [r5], #4
007b1964  01 41 81 e0                                      add r4, r1, r1, lsl #2
007b1968  04 60 90 e5                                      ldr r6, [r0, #4]
007b196c  04 42 84 e0                                      add r4, r4, r4, lsl #4
007b1970  18 d0 4d e2                                      sub sp, sp, #0x18
007b1974  30 e0 9d e5                                      ldr lr, [sp, #0x30]
007b1978  04 60 82 e5                                      str r6, [r2, #4]
007b197c  04 24 84 e0                                      add r2, r4, r4, lsl #8
007b1980  04 40 9c e5                                      ldr r4, [ip, #4]
007b1984  02 28 82 e0                                      add r2, r2, r2, lsl #16
007b1988  34 c0 9d e5                                      ldr ip, [sp, #0x34]
007b198c  82 20 81 e0                                      add r2, r1, r2, lsl #1
007b1990  04 40 85 e5                                      str r4, [r5, #4]
007b1994  00 10 a0 e3                                      mov r1, #0
007b1998  14 40 8d e2                                      add r4, sp, #0x14
007b199c  08 40 8d e5                                      str r4, [sp, #8]
007b19a0  00 e0 8d e5                                      str lr, [sp]
007b19a4  04 c0 8d e5                                      str ip, [sp, #4]
007b19a8  2c 30 8d e5                                      str r3, [sp, #0x2c]
007b19ac  76 ff ff eb                                      bl #0x7b178c
007b19b0  18 d0 8d e2                                      add sp, sp, #0x18
007b19b4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007b19b8  08 d0 8d e2                                      add sp, sp, #8
007b19bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007b1c80, declared_size=136, range_size=136, mode=arm
; class-group: void std
; alias: _ZSt4sortIPN7gameswf16ear_clip_wrapperIfNS0_20ear_clip_triangulate17ear_clip_array_ioIfEES4_E9path_infoEEvT_S8_
; demangled: void std::sort<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*>(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*)
; decoder-mode: arm
007b1c80  30 40 2d e9                                      push {r4, r5, lr}
007b1c84  01 00 50 e1                                      cmp r0, r1
007b1c88  14 d0 4d e2                                      sub sp, sp, #0x14
007b1c8c  00 50 a0 e1                                      mov r5, r0
007b1c90  01 40 a0 e1                                      mov r4, r1
007b1c94  19 00 00 0a                                      beq #0x7b1d00
007b1c98  01 30 60 e0                                      rsb r3, r0, r1
007b1c9c  43 31 a0 e1                                      asr r3, r3, #2
007b1ca0  03 21 83 e0                                      add r2, r3, r3, lsl #2
007b1ca4  02 22 82 e0                                      add r2, r2, r2, lsl #4
007b1ca8  02 24 82 e0                                      add r2, r2, r2, lsl #8
007b1cac  02 28 82 e0                                      add r2, r2, r2, lsl #16
007b1cb0  82 20 83 e0                                      add r2, r3, r2, lsl #1
007b1cb4  01 00 52 e3                                      cmp r2, #1
007b1cb8  00 30 a0 03                                      moveq r3, #0
007b1cbc  05 00 00 0a                                      beq #0x7b1cd8
007b1cc0  00 30 a0 e3                                      mov r3, #0
007b1cc4  c2 20 a0 e1                                      asr r2, r2, #1
007b1cc8  01 00 52 e3                                      cmp r2, #1
007b1ccc  01 30 83 e2                                      add r3, r3, #1
007b1cd0  fb ff ff 1a                                      bne #0x7b1cc4
007b1cd4  83 30 a0 e1                                      lsl r3, r3, #1
007b1cd8  00 20 a0 e3                                      mov r2, #0
007b1cdc  05 00 a0 e1                                      mov r0, r5
007b1ce0  04 10 a0 e1                                      mov r1, r4
007b1ce4  0c c0 8d e2                                      add ip, sp, #0xc
007b1ce8  00 c0 8d e5                                      str ip, [sp]
007b1cec  82 ff ff eb                                      bl #0x7b1afc
007b1cf0  05 00 a0 e1                                      mov r0, r5
007b1cf4  04 10 a0 e1                                      mov r1, r4
007b1cf8  08 20 8d e2                                      add r2, sp, #8
007b1cfc  f3 fc ff eb                                      bl #0x7b10d0
007b1d00  14 d0 8d e2                                      add sp, sp, #0x14
007b1d04  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x007b27c4, declared_size=260, range_size=260, mode=arm
; class-group: void std
; alias: _ZSt11__push_heapIPiiiN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E17vert_index_sorterEEvT_T0_S9_T1_T2_
; demangled: void std::__push_heap<int*, int, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int*, int, int, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b27c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b27c8  02 00 51 e1                                      cmp r1, r2
007b27cc  1c d0 4d e2                                      sub sp, sp, #0x1c
007b27d0  08 10 8d e5                                      str r1, [sp, #8]
007b27d4  10 20 8d e5                                      str r2, [sp, #0x10]
007b27d8  00 40 a0 e1                                      mov r4, r0
007b27dc  14 30 8d e5                                      str r3, [sp, #0x14]
007b27e0  40 b0 9d e5                                      ldr fp, [sp, #0x40]
007b27e4  06 00 00 ca                                      bgt #0x7b2804
007b27e8  01 41 84 e0                                      add r4, r4, r1, lsl #2
007b27ec  04 40 8d e5                                      str r4, [sp, #4]
007b27f0  14 10 9d e5                                      ldr r1, [sp, #0x14]
007b27f4  04 20 9d e5                                      ldr r2, [sp, #4]
007b27f8  00 10 82 e5                                      str r1, [r2]
007b27fc  1c d0 8d e2                                      add sp, sp, #0x1c
007b2800  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b2804  08 10 9d e5                                      ldr r1, [sp, #8]
007b2808  14 20 9d e5                                      ldr r2, [sp, #0x14]
007b280c  14 30 a0 e3                                      mov r3, #0x14
007b2810  01 70 41 e2                                      sub r7, r1, #1
007b2814  a7 7f 87 e0                                      add r7, r7, r7, lsr #31
007b2818  93 02 0a e0                                      mul sl, r3, r2
007b281c  c7 70 a0 e1                                      asr r7, r7, #1
007b2820  07 81 94 e7                                      ldr r8, [r4, r7, lsl #2]
007b2824  07 31 84 e0                                      add r3, r4, r7, lsl #2
007b2828  14 10 a0 e3                                      mov r1, #0x14
007b282c  00 90 9b e5                                      ldr sb, [fp]
007b2830  04 30 8d e5                                      str r3, [sp, #4]
007b2834  91 08 03 e0                                      mul r3, r1, r8
007b2838  0a 60 99 e7                                      ldr r6, [sb, sl]
007b283c  03 50 99 e7                                      ldr r5, [sb, r3]
007b2840  03 30 89 e0                                      add r3, sb, r3
007b2844  06 10 a0 e1                                      mov r1, r6
007b2848  05 00 a0 e1                                      mov r0, r5
007b284c  0c 30 8d e5                                      str r3, [sp, #0xc]
007b2850  ad 6f ed eb                                      bl #0x30e70c
007b2854  00 00 50 e3                                      cmp r0, #0
007b2858  0a 90 89 e0                                      add sb, sb, sl
007b285c  06 10 a0 e1                                      mov r1, r6
007b2860  05 00 a0 e1                                      mov r0, r5
007b2864  09 00 00 1a                                      bne #0x7b2890
007b2868  a2 6e ed eb                                      bl #0x30e2f8
007b286c  00 00 50 e3                                      cmp r0, #0
007b2870  10 00 00 1a                                      bne #0x7b28b8
007b2874  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007b2878  04 10 99 e5                                      ldr r1, [sb, #4]
007b287c  04 00 93 e5                                      ldr r0, [r3, #4]
007b2880  a1 6f ed eb                                      bl #0x30e70c
007b2884  00 00 50 e3                                      cmp r0, #0
007b2888  08 10 9d 05                                      ldreq r1, [sp, #8]
007b288c  d5 ff ff 0a                                      beq #0x7b27e8
007b2890  10 20 9d e5                                      ldr r2, [sp, #0x10]
007b2894  08 30 9d e5                                      ldr r3, [sp, #8]
007b2898  07 00 52 e1                                      cmp r2, r7
007b289c  03 81 84 e7                                      str r8, [r4, r3, lsl #2]
007b28a0  d2 ff ff aa                                      bge #0x7b27f0
007b28a4  01 30 47 e2                                      sub r3, r7, #1
007b28a8  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
007b28ac  08 70 8d e5                                      str r7, [sp, #8]
007b28b0  c3 70 a0 e1                                      asr r7, r3, #1
007b28b4  d9 ff ff ea                                      b #0x7b2820
007b28b8  08 20 9d e5                                      ldr r2, [sp, #8]
007b28bc  02 41 84 e0                                      add r4, r4, r2, lsl #2
007b28c0  04 40 8d e5                                      str r4, [sp, #4]
007b28c4  c9 ff ff ea                                      b #0x7b27f0

; FUNCTION 0x007b28c8, declared_size=272, range_size=272, mode=arm
; class-group: void std
; alias: _ZSt13__adjust_heapIPiiiN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E17vert_index_sorterEEvT_T0_S9_T1_T2_
; demangled: void std::__adjust_heap<int*, int, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int*, int, int, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b28c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b28cc  1c d0 4d e2                                      sub sp, sp, #0x1c
007b28d0  10 10 8d e5                                      str r1, [sp, #0x10]
007b28d4  01 40 81 e2                                      add r4, r1, #1
007b28d8  40 10 9d e5                                      ldr r1, [sp, #0x40]
007b28dc  84 40 a0 e1                                      lsl r4, r4, #1
007b28e0  02 00 54 e1                                      cmp r4, r2
007b28e4  0c 10 8d e5                                      str r1, [sp, #0xc]
007b28e8  08 20 8d e5                                      str r2, [sp, #8]
007b28ec  00 50 a0 e1                                      mov r5, r0
007b28f0  14 30 8d e5                                      str r3, [sp, #0x14]
007b28f4  10 10 9d a5                                      ldrge r1, [sp, #0x10]
007b28f8  26 00 00 aa                                      bge #0x7b2998
007b28fc  10 90 9d e5                                      ldr sb, [sp, #0x10]
007b2900  01 a0 44 e2                                      sub sl, r4, #1
007b2904  04 61 95 e7                                      ldr r6, [r5, r4, lsl #2]
007b2908  0a b1 95 e7                                      ldr fp, [r5, sl, lsl #2]
007b290c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007b2910  14 c0 a0 e3                                      mov ip, #0x14
007b2914  9c 0b 0b e0                                      mul fp, ip, fp
007b2918  00 30 92 e5                                      ldr r3, [r2]
007b291c  9c 06 02 e0                                      mul r2, ip, r6
007b2920  0b 80 93 e7                                      ldr r8, [r3, fp]
007b2924  02 70 93 e7                                      ldr r7, [r3, r2]
007b2928  02 20 83 e0                                      add r2, r3, r2
007b292c  08 10 a0 e1                                      mov r1, r8
007b2930  07 00 a0 e1                                      mov r0, r7
007b2934  04 20 8d e5                                      str r2, [sp, #4]
007b2938  0b b0 83 e0                                      add fp, r3, fp
007b293c  72 6f ed eb                                      bl #0x30e70c
007b2940  00 00 50 e3                                      cmp r0, #0
007b2944  08 10 a0 e1                                      mov r1, r8
007b2948  07 00 a0 e1                                      mov r0, r7
007b294c  1f 00 00 1a                                      bne #0x7b29d0
007b2950  68 6e ed eb                                      bl #0x30e2f8
007b2954  00 00 50 e3                                      cmp r0, #0
007b2958  05 00 00 1a                                      bne #0x7b2974
007b295c  04 10 9d e5                                      ldr r1, [sp, #4]
007b2960  04 00 91 e5                                      ldr r0, [r1, #4]
007b2964  04 10 9b e5                                      ldr r1, [fp, #4]
007b2968  67 6f ed eb                                      bl #0x30e70c
007b296c  00 00 50 e3                                      cmp r0, #0
007b2970  16 00 00 1a                                      bne #0x7b29d0
007b2974  04 a0 a0 e1                                      mov sl, r4
007b2978  08 20 9d e5                                      ldr r2, [sp, #8]
007b297c  01 40 8a e2                                      add r4, sl, #1
007b2980  84 40 a0 e1                                      lsl r4, r4, #1
007b2984  04 00 52 e1                                      cmp r2, r4
007b2988  09 61 85 e7                                      str r6, [r5, sb, lsl #2]
007b298c  0a 90 a0 e1                                      mov sb, sl
007b2990  da ff ff ca                                      bgt #0x7b2900
007b2994  0a 10 a0 e1                                      mov r1, sl
007b2998  08 30 9d e5                                      ldr r3, [sp, #8]
007b299c  05 00 a0 e1                                      mov r0, r5
007b29a0  03 00 54 e1                                      cmp r4, r3
007b29a4  01 40 44 02                                      subeq r4, r4, #1
007b29a8  04 31 95 07                                      ldreq r3, [r5, r4, lsl #2]
007b29ac  01 31 85 07                                      streq r3, [r5, r1, lsl #2]
007b29b0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007b29b4  10 20 9d e5                                      ldr r2, [sp, #0x10]
007b29b8  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b29bc  04 10 a0 01                                      moveq r1, r4
007b29c0  40 c0 8d e5                                      str ip, [sp, #0x40]
007b29c4  1c d0 8d e2                                      add sp, sp, #0x1c
007b29c8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b29cc  7c ff ff ea                                      b #0x7b27c4
007b29d0  0a 61 95 e7                                      ldr r6, [r5, sl, lsl #2]
007b29d4  e7 ff ff ea                                      b #0x7b2978

; FUNCTION 0x007b29d8, declared_size=100, range_size=100, mode=arm
; class-group: void std
; alias: _ZSt11__make_heapIPiN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E17vert_index_sorterEiiEvT_S8_T0_PT1_PT2_
; demangled: void std::__make_heap<int*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter, int, int>(int*, int*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter, int*, int*)
; decoder-mode: arm
007b29d8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007b29dc  01 10 60 e0                                      rsb r1, r0, r1
007b29e0  07 00 51 e3                                      cmp r1, #7
007b29e4  0c d0 4d e2                                      sub sp, sp, #0xc
007b29e8  00 60 a0 e1                                      mov r6, r0
007b29ec  02 a0 a0 e1                                      mov sl, r2
007b29f0  0f 00 00 da                                      ble #0x7b2a34
007b29f4  41 81 a0 e1                                      asr r8, r1, #2
007b29f8  02 40 48 e2                                      sub r4, r8, #2
007b29fc  c4 40 a0 e1                                      asr r4, r4, #1
007b2a00  00 50 a0 e3                                      mov r5, #0
007b2a04  04 71 80 e0                                      add r7, r0, r4, lsl #2
007b2a08  00 00 00 ea                                      b #0x7b2a10
007b2a0c  01 40 44 e2                                      sub r4, r4, #1
007b2a10  05 30 97 e7                                      ldr r3, [r7, r5]
007b2a14  04 10 a0 e1                                      mov r1, r4
007b2a18  06 00 a0 e1                                      mov r0, r6
007b2a1c  08 20 a0 e1                                      mov r2, r8
007b2a20  00 a0 8d e5                                      str sl, [sp]
007b2a24  a7 ff ff eb                                      bl #0x7b28c8
007b2a28  00 00 54 e3                                      cmp r4, #0
007b2a2c  04 50 45 e2                                      sub r5, r5, #4
007b2a30  f5 ff ff 1a                                      bne #0x7b2a0c
007b2a34  0c d0 8d e2                                      add sp, sp, #0xc
007b2a38  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x007b2a3c, declared_size=84, range_size=84, mode=arm
; class-group: void std
; alias: _ZSt9sort_heapIPiN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E17vert_index_sorterEEvT_S8_T0_
; demangled: void std::sort_heap<int*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int*, int*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b2a3c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007b2a40  01 50 60 e0                                      rsb r5, r0, r1
007b2a44  07 00 55 e3                                      cmp r5, #7
007b2a48  0c d0 4d e2                                      sub sp, sp, #0xc
007b2a4c  00 60 a0 e1                                      mov r6, r0
007b2a50  02 70 a0 e1                                      mov r7, r2
007b2a54  0b 00 00 da                                      ble #0x7b2a88
007b2a58  01 40 a0 e1                                      mov r4, r1
007b2a5c  00 20 96 e5                                      ldr r2, [r6]
007b2a60  04 50 45 e2                                      sub r5, r5, #4
007b2a64  04 30 14 e5                                      ldr r3, [r4, #-4]
007b2a68  06 00 a0 e1                                      mov r0, r6
007b2a6c  04 20 24 e5                                      str r2, [r4, #-4]!
007b2a70  00 10 a0 e3                                      mov r1, #0
007b2a74  45 21 a0 e1                                      asr r2, r5, #2
007b2a78  00 70 8d e5                                      str r7, [sp]
007b2a7c  91 ff ff eb                                      bl #0x7b28c8
007b2a80  07 00 55 e3                                      cmp r5, #7
007b2a84  f4 ff ff ca                                      bgt #0x7b2a5c
007b2a88  0c d0 8d e2                                      add sp, sp, #0xc
007b2a8c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007b3094, declared_size=124, range_size=124, mode=arm
; class-group: void std
; alias: _ZSt4sortIPiN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E17vert_index_sorterEEvT_S8_T0_
; demangled: void std::sort<int*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int*, int*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b3094  70 40 2d e9                                      push {r4, r5, r6, lr}
007b3098  01 00 50 e1                                      cmp r0, r1
007b309c  08 d0 4d e2                                      sub sp, sp, #8
007b30a0  00 50 a0 e1                                      mov r5, r0
007b30a4  01 40 a0 e1                                      mov r4, r1
007b30a8  02 60 a0 e1                                      mov r6, r2
007b30ac  15 00 00 0a                                      beq #0x7b3108
007b30b0  01 20 60 e0                                      rsb r2, r0, r1
007b30b4  42 21 a0 e1                                      asr r2, r2, #2
007b30b8  01 00 52 e3                                      cmp r2, #1
007b30bc  00 30 a0 03                                      moveq r3, #0
007b30c0  05 00 00 0a                                      beq #0x7b30dc
007b30c4  00 30 a0 e3                                      mov r3, #0
007b30c8  c2 20 a0 e1                                      asr r2, r2, #1
007b30cc  01 00 52 e3                                      cmp r2, #1
007b30d0  01 30 83 e2                                      add r3, r3, #1
007b30d4  fb ff ff 1a                                      bne #0x7b30c8
007b30d8  83 30 a0 e1                                      lsl r3, r3, #1
007b30dc  05 00 a0 e1                                      mov r0, r5
007b30e0  04 10 a0 e1                                      mov r1, r4
007b30e4  00 20 a0 e3                                      mov r2, #0
007b30e8  00 60 8d e5                                      str r6, [sp]
007b30ec  ba ff ff eb                                      bl #0x7b2fdc
007b30f0  05 00 a0 e1                                      mov r0, r5
007b30f4  04 10 a0 e1                                      mov r1, r4
007b30f8  06 20 a0 e1                                      mov r2, r6
007b30fc  08 d0 8d e2                                      add sp, sp, #8
007b3100  70 40 bd e8                                      pop {r4, r5, r6, lr}
007b3104  f0 fe ff ea                                      b #0x7b2ccc
007b3108  08 d0 8d e2                                      add sp, sp, #8
007b310c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088c228, declared_size=100, range_size=100, mode=arm
; class-group: void std
; alias: _ZSt15__destroy_rangeISt16reverse_iteratorIPN3vox11GroupXMLDefEES2_EvT_S5_PT0_.clone.2
; demangled: void std::__destroy_range<std::reverse_iterator<vox::GroupXMLDef*>, vox::GroupXMLDef>(std::reverse_iterator<vox::GroupXMLDef*>, std::reverse_iterator<vox::GroupXMLDef*>, vox::GroupXMLDef*) [clone .clone.2]
; decoder-mode: arm
0088c228  70 40 2d e9                                      push {r4, r5, r6, lr}
0088c22c  00 50 91 e5                                      ldr r5, [r1]
0088c230  00 40 90 e5                                      ldr r4, [r0]
0088c234  05 00 54 e1                                      cmp r4, r5
0088c238  12 00 00 0a                                      beq #0x88c288
0088c23c  38 40 44 e2                                      sub r4, r4, #0x38
0088c240  1c 20 84 e2                                      add r2, r4, #0x1c
0088c244  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088c248  02 00 53 e1                                      cmp r3, r2
0088c24c  03 00 a0 e1                                      mov r0, r3
0088c250  02 00 00 0a                                      beq #0x88c260
0088c254  00 00 53 e3                                      cmp r3, #0
0088c258  00 00 00 0a                                      beq #0x88c260
0088c25c  78 10 ea eb                                      bl #0x310444
0088c260  04 20 84 e2                                      add r2, r4, #4
0088c264  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088c268  02 00 53 e1                                      cmp r3, r2
0088c26c  03 00 a0 e1                                      mov r0, r3
0088c270  02 00 00 0a                                      beq #0x88c280
0088c274  00 00 53 e3                                      cmp r3, #0
0088c278  00 00 00 0a                                      beq #0x88c280
0088c27c  70 10 ea eb                                      bl #0x310444
0088c280  04 00 55 e1                                      cmp r5, r4
0088c284  ec ff ff 1a                                      bne #0x88c23c
0088c288  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088c40c, declared_size=100, range_size=100, mode=arm
; class-group: void std
; alias: _ZSt14_Destroy_RangeIPN3vox11GroupXMLDefEEvT_S3_
; demangled: void std::_Destroy_Range<vox::GroupXMLDef*>(vox::GroupXMLDef*, vox::GroupXMLDef*)
; decoder-mode: arm
0088c40c  01 00 50 e1                                      cmp r0, r1
0088c410  70 40 2d e9                                      push {r4, r5, r6, lr}
0088c414  00 40 a0 e1                                      mov r4, r0
0088c418  01 50 a0 e1                                      mov r5, r1
0088c41c  12 00 00 0a                                      beq #0x88c46c
0088c420  1c 20 84 e2                                      add r2, r4, #0x1c
0088c424  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088c428  02 00 53 e1                                      cmp r3, r2
0088c42c  03 00 a0 e1                                      mov r0, r3
0088c430  02 00 00 0a                                      beq #0x88c440
0088c434  00 00 53 e3                                      cmp r3, #0
0088c438  00 00 00 0a                                      beq #0x88c440
0088c43c  00 10 ea eb                                      bl #0x310444
0088c440  04 20 84 e2                                      add r2, r4, #4
0088c444  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088c448  38 40 84 e2                                      add r4, r4, #0x38
0088c44c  02 00 53 e1                                      cmp r3, r2
0088c450  03 00 a0 e1                                      mov r0, r3
0088c454  02 00 00 0a                                      beq #0x88c464
0088c458  00 00 53 e3                                      cmp r3, #0
0088c45c  00 00 00 0a                                      beq #0x88c464
0088c460  f7 0f ea eb                                      bl #0x310444
0088c464  04 00 55 e1                                      cmp r5, r4
0088c468  ec ff ff 1a                                      bne #0x88c420
0088c46c  70 80 bd e8                                      pop {r4, r5, r6, pc}
