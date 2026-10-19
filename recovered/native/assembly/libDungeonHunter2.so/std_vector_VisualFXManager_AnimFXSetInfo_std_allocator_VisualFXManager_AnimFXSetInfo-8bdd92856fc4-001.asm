; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00494154, declared_size=132, range_size=132, mode=arm
; class-group: std::vector<VisualFXManager::AnimFXSetInfo, std::allocator<VisualFXManager::AnimFXSetInfo> >
; alias: _ZNSt6vectorIN15VisualFXManager13AnimFXSetInfoESaIS1_EE19_M_clear_after_moveEv
; demangled: std::vector<VisualFXManager::AnimFXSetInfo, std::allocator<VisualFXManager::AnimFXSetInfo> >::_M_clear_after_move()
; decoder-mode: arm
00494154  70 40 2d e9                                      push {r4, r5, r6, lr}
00494158  04 40 90 e5                                      ldr r4, [r0, #4]
0049415c  00 50 90 e5                                      ldr r5, [r0]
00494160  00 60 a0 e1                                      mov r6, r0
00494164  05 00 54 e1                                      cmp r4, r5
00494168  05 00 00 0a                                      beq #0x494184
0049416c  18 40 44 e2                                      sub r4, r4, #0x18
00494170  04 00 a0 e1                                      mov r0, r4
00494174  d7 ff ff eb                                      bl #0x4940d8
00494178  04 00 55 e1                                      cmp r5, r4
0049417c  fa ff ff 1a                                      bne #0x49416c
00494180  00 40 96 e5                                      ldr r4, [r6]
00494184  00 00 54 e3                                      cmp r4, #0
00494188  08 30 96 e5                                      ldr r3, [r6, #8]
0049418c  10 00 00 0a                                      beq #0x4941d4
00494190  03 30 64 e0                                      rsb r3, r4, r3
00494194  c3 31 a0 e1                                      asr r3, r3, #3
00494198  03 11 83 e0                                      add r1, r3, r3, lsl #2
0049419c  01 12 81 e0                                      add r1, r1, r1, lsl #4
004941a0  01 14 81 e0                                      add r1, r1, r1, lsl #8
004941a4  01 18 81 e0                                      add r1, r1, r1, lsl #16
004941a8  81 30 83 e0                                      add r3, r3, r1, lsl #1
004941ac  18 10 a0 e3                                      mov r1, #0x18
004941b0  91 03 01 e0                                      mul r1, r1, r3
004941b4  80 00 51 e3                                      cmp r1, #0x80
004941b8  02 00 00 8a                                      bhi #0x4941c8
004941bc  04 00 a0 e1                                      mov r0, r4
004941c0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004941c4  4d d3 09 ea                                      b #0x708f00
004941c8  04 00 a0 e1                                      mov r0, r4
004941cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
004941d0  9a f0 f9 ea                                      b #0x310440
004941d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004941d8, declared_size=292, range_size=292, mode=arm
; class-group: std::vector<VisualFXManager::AnimFXSetInfo, std::allocator<VisualFXManager::AnimFXSetInfo> >
; alias: _ZNSt6vectorIN15VisualFXManager13AnimFXSetInfoESaIS1_EE9push_backERKS1_
; demangled: std::vector<VisualFXManager::AnimFXSetInfo, std::allocator<VisualFXManager::AnimFXSetInfo> >::push_back(VisualFXManager::AnimFXSetInfo const&)
; decoder-mode: arm
004941d8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004941dc  00 40 a0 e1                                      mov r4, r0
004941e0  08 50 94 e5                                      ldr r5, [r4, #8]
004941e4  04 00 90 e5                                      ldr r0, [r0, #4]
004941e8  08 d0 4d e2                                      sub sp, sp, #8
004941ec  01 60 a0 e1                                      mov r6, r1
004941f0  05 00 50 e1                                      cmp r0, r5
004941f4  05 00 00 0a                                      beq #0x494210
004941f8  c9 fd ff eb                                      bl #0x493924
004941fc  04 30 94 e5                                      ldr r3, [r4, #4]
00494200  18 30 83 e2                                      add r3, r3, #0x18
00494204  04 30 84 e5                                      str r3, [r4, #4]
00494208  08 d0 8d e2                                      add sp, sp, #8
0049420c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00494210  00 20 94 e5                                      ldr r2, [r4]
00494214  aa 3a 0a e3                                      movw r3, #0xaaaa
00494218  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0049421c  05 20 62 e0                                      rsb r2, r2, r5
00494220  c2 21 a0 e1                                      asr r2, r2, #3
00494224  02 11 82 e0                                      add r1, r2, r2, lsl #2
00494228  01 12 81 e0                                      add r1, r1, r1, lsl #4
0049422c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00494230  01 18 81 e0                                      add r1, r1, r1, lsl #16
00494234  81 20 82 e0                                      add r2, r2, r1, lsl #1
00494238  01 00 52 e3                                      cmp r2, #1
0049423c  02 10 82 20                                      addhs r1, r2, r2
00494240  01 10 82 32                                      addlo r1, r2, #1
00494244  03 00 51 e1                                      cmp r1, r3
00494248  28 00 00 9a                                      bls #0x4942f0
0049424c  aa 1a 0a e3                                      movw r1, #0xaaaa
00494250  01 16 81 e1                                      orr r1, r1, r1, lsl #12
00494254  08 20 8d e2                                      add r2, sp, #8
00494258  04 10 22 e5                                      str r1, [r2, #-4]!
0049425c  08 00 84 e2                                      add r0, r4, #8
00494260  23 fe ff eb                                      bl #0x493af4
00494264  00 90 94 e5                                      ldr sb, [r4]
00494268  00 a0 a0 e1                                      mov sl, r0
0049426c  05 50 69 e0                                      rsb r5, sb, r5
00494270  c5 31 a0 e1                                      asr r3, r5, #3
00494274  03 51 83 e0                                      add r5, r3, r3, lsl #2
00494278  05 52 85 e0                                      add r5, r5, r5, lsl #4
0049427c  05 54 85 e0                                      add r5, r5, r5, lsl #8
00494280  05 58 85 e0                                      add r5, r5, r5, lsl #16
00494284  85 50 83 e0                                      add r5, r3, r5, lsl #1
00494288  00 00 55 e3                                      cmp r5, #0
0049428c  00 50 a0 d1                                      movle r5, r0
00494290  09 00 00 da                                      ble #0x4942bc
00494294  05 80 a0 e1                                      mov r8, r5
00494298  00 70 a0 e3                                      mov r7, #0
0049429c  07 00 8a e0                                      add r0, sl, r7
004942a0  07 10 89 e0                                      add r1, sb, r7
004942a4  9e fd ff eb                                      bl #0x493924
004942a8  01 80 58 e2                                      subs r8, r8, #1
004942ac  18 70 87 e2                                      add r7, r7, #0x18
004942b0  f9 ff ff 1a                                      bne #0x49429c
004942b4  18 30 a0 e3                                      mov r3, #0x18
004942b8  93 a5 25 e0                                      mla r5, r3, r5, sl
004942bc  06 10 a0 e1                                      mov r1, r6
004942c0  05 00 a0 e1                                      mov r0, r5
004942c4  96 fd ff eb                                      bl #0x493924
004942c8  04 00 a0 e1                                      mov r0, r4
004942cc  a0 ff ff eb                                      bl #0x494154
004942d0  04 30 9d e5                                      ldr r3, [sp, #4]
004942d4  18 20 a0 e3                                      mov r2, #0x18
004942d8  18 50 85 e2                                      add r5, r5, #0x18
004942dc  92 a3 23 e0                                      mla r3, r2, r3, sl
004942e0  00 a0 84 e5                                      str sl, [r4]
004942e4  08 30 84 e5                                      str r3, [r4, #8]
004942e8  04 50 84 e5                                      str r5, [r4, #4]
004942ec  c5 ff ff ea                                      b #0x494208
004942f0  01 00 52 e1                                      cmp r2, r1
004942f4  d6 ff ff 9a                                      bls #0x494254
004942f8  d3 ff ff ea                                      b #0x49424c

; FUNCTION 0x004942fc, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<VisualFXManager::AnimFXSetInfo, std::allocator<VisualFXManager::AnimFXSetInfo> >
; alias: _ZNSt6vectorIN15VisualFXManager13AnimFXSetInfoESaIS1_EED1Ev
; demangled: std::vector<VisualFXManager::AnimFXSetInfo, std::allocator<VisualFXManager::AnimFXSetInfo> >::~vector()
; decoder-mode: arm
004942fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00494300  04 50 90 e5                                      ldr r5, [r0, #4]
00494304  00 60 90 e5                                      ldr r6, [r0]
00494308  00 40 a0 e1                                      mov r4, r0
0049430c  06 00 55 e1                                      cmp r5, r6
00494310  04 00 00 0a                                      beq #0x494328
00494314  18 50 45 e2                                      sub r5, r5, #0x18
00494318  05 00 a0 e1                                      mov r0, r5
0049431c  6d ff ff eb                                      bl #0x4940d8
00494320  05 00 56 e1                                      cmp r6, r5
00494324  fa ff ff 1a                                      bne #0x494314
00494328  00 00 94 e5                                      ldr r0, [r4]
0049432c  00 00 50 e3                                      cmp r0, #0
00494330  0c 00 00 0a                                      beq #0x494368
00494334  08 30 94 e5                                      ldr r3, [r4, #8]
00494338  03 30 60 e0                                      rsb r3, r0, r3
0049433c  c3 31 a0 e1                                      asr r3, r3, #3
00494340  03 11 83 e0                                      add r1, r3, r3, lsl #2
00494344  01 12 81 e0                                      add r1, r1, r1, lsl #4
00494348  01 14 81 e0                                      add r1, r1, r1, lsl #8
0049434c  01 18 81 e0                                      add r1, r1, r1, lsl #16
00494350  81 30 83 e0                                      add r3, r3, r1, lsl #1
00494354  18 10 a0 e3                                      mov r1, #0x18
00494358  91 03 01 e0                                      mul r1, r1, r3
0049435c  80 00 51 e3                                      cmp r1, #0x80
00494360  02 00 00 8a                                      bhi #0x494370
00494364  e5 d2 09 eb                                      bl #0x708f00
00494368  04 00 a0 e1                                      mov r0, r4
0049436c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00494370  32 f0 f9 eb                                      bl #0x310440
00494374  04 00 a0 e1                                      mov r0, r4
00494378  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00494910, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<VisualFXManager::AnimFXSetInfo, std::allocator<VisualFXManager::AnimFXSetInfo> >
; alias: _ZNSt6vectorIN15VisualFXManager13AnimFXSetInfoESaIS1_EE8_M_eraseEPS1_S4_RKSt12__false_type
; demangled: std::vector<VisualFXManager::AnimFXSetInfo, std::allocator<VisualFXManager::AnimFXSetInfo> >::_M_erase(VisualFXManager::AnimFXSetInfo*, VisualFXManager::AnimFXSetInfo*, std::__false_type const&)
; decoder-mode: arm
00494910  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00494914  04 30 90 e5                                      ldr r3, [r0, #4]
00494918  10 d0 4d e2                                      sub sp, sp, #0x10
0049491c  01 50 a0 e1                                      mov r5, r1
00494920  00 40 a0 e1                                      mov r4, r0
00494924  03 10 a0 e1                                      mov r1, r3
00494928  02 00 a0 e1                                      mov r0, r2
0049492c  00 c0 a0 e3                                      mov ip, #0
00494930  05 20 a0 e1                                      mov r2, r5
00494934  0c 30 8d e2                                      add r3, sp, #0xc
00494938  00 c0 8d e5                                      str ip, [sp]
0049493c  d4 ff ff eb                                      bl #0x494894
00494940  04 70 94 e5                                      ldr r7, [r4, #4]
00494944  00 80 a0 e1                                      mov r8, r0
00494948  00 00 57 e1                                      cmp r7, r0
0049494c  05 00 00 0a                                      beq #0x494968
00494950  00 60 a0 e1                                      mov r6, r0
00494954  06 00 a0 e1                                      mov r0, r6
00494958  18 60 86 e2                                      add r6, r6, #0x18
0049495c  dd fd ff eb                                      bl #0x4940d8
00494960  06 00 57 e1                                      cmp r7, r6
00494964  fa ff ff 1a                                      bne #0x494954
00494968  04 80 84 e5                                      str r8, [r4, #4]
0049496c  05 00 a0 e1                                      mov r0, r5
00494970  10 d0 8d e2                                      add sp, sp, #0x10
00494974  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
