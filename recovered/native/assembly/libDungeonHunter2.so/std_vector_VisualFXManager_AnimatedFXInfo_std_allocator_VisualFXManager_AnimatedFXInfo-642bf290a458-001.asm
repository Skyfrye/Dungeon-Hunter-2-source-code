; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493fd4, declared_size=132, range_size=132, mode=arm
; class-group: std::vector<VisualFXManager::AnimatedFXInfo, std::allocator<VisualFXManager::AnimatedFXInfo> >
; alias: _ZNSt6vectorIN15VisualFXManager14AnimatedFXInfoESaIS1_EE19_M_clear_after_moveEv
; demangled: std::vector<VisualFXManager::AnimatedFXInfo, std::allocator<VisualFXManager::AnimatedFXInfo> >::_M_clear_after_move()
; decoder-mode: arm
00493fd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00493fd8  04 40 90 e5                                      ldr r4, [r0, #4]
00493fdc  00 50 90 e5                                      ldr r5, [r0]
00493fe0  00 60 a0 e1                                      mov r6, r0
00493fe4  05 00 54 e1                                      cmp r4, r5
00493fe8  05 00 00 0a                                      beq #0x494004
00493fec  18 40 44 e2                                      sub r4, r4, #0x18
00493ff0  04 00 a0 e1                                      mov r0, r4
00493ff4  e3 ff ff eb                                      bl #0x493f88
00493ff8  04 00 55 e1                                      cmp r5, r4
00493ffc  fa ff ff 1a                                      bne #0x493fec
00494000  00 40 96 e5                                      ldr r4, [r6]
00494004  00 00 54 e3                                      cmp r4, #0
00494008  08 30 96 e5                                      ldr r3, [r6, #8]
0049400c  10 00 00 0a                                      beq #0x494054
00494010  03 30 64 e0                                      rsb r3, r4, r3
00494014  c3 31 a0 e1                                      asr r3, r3, #3
00494018  03 11 83 e0                                      add r1, r3, r3, lsl #2
0049401c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00494020  01 14 81 e0                                      add r1, r1, r1, lsl #8
00494024  01 18 81 e0                                      add r1, r1, r1, lsl #16
00494028  81 30 83 e0                                      add r3, r3, r1, lsl #1
0049402c  18 10 a0 e3                                      mov r1, #0x18
00494030  91 03 01 e0                                      mul r1, r1, r3
00494034  80 00 51 e3                                      cmp r1, #0x80
00494038  02 00 00 8a                                      bhi #0x494048
0049403c  04 00 a0 e1                                      mov r0, r4
00494040  70 40 bd e8                                      pop {r4, r5, r6, lr}
00494044  ad d3 09 ea                                      b #0x708f00
00494048  04 00 a0 e1                                      mov r0, r4
0049404c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00494050  fa f0 f9 ea                                      b #0x310440
00494054  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00494058, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<VisualFXManager::AnimatedFXInfo, std::allocator<VisualFXManager::AnimatedFXInfo> >
; alias: _ZNSt6vectorIN15VisualFXManager14AnimatedFXInfoESaIS1_EED1Ev
; demangled: std::vector<VisualFXManager::AnimatedFXInfo, std::allocator<VisualFXManager::AnimatedFXInfo> >::~vector()
; decoder-mode: arm
00494058  70 40 2d e9                                      push {r4, r5, r6, lr}
0049405c  04 50 90 e5                                      ldr r5, [r0, #4]
00494060  00 60 90 e5                                      ldr r6, [r0]
00494064  00 40 a0 e1                                      mov r4, r0
00494068  06 00 55 e1                                      cmp r5, r6
0049406c  04 00 00 0a                                      beq #0x494084
00494070  18 50 45 e2                                      sub r5, r5, #0x18
00494074  05 00 a0 e1                                      mov r0, r5
00494078  c2 ff ff eb                                      bl #0x493f88
0049407c  05 00 56 e1                                      cmp r6, r5
00494080  fa ff ff 1a                                      bne #0x494070
00494084  00 00 94 e5                                      ldr r0, [r4]
00494088  00 00 50 e3                                      cmp r0, #0
0049408c  0c 00 00 0a                                      beq #0x4940c4
00494090  08 30 94 e5                                      ldr r3, [r4, #8]
00494094  03 30 60 e0                                      rsb r3, r0, r3
00494098  c3 31 a0 e1                                      asr r3, r3, #3
0049409c  03 11 83 e0                                      add r1, r3, r3, lsl #2
004940a0  01 12 81 e0                                      add r1, r1, r1, lsl #4
004940a4  01 14 81 e0                                      add r1, r1, r1, lsl #8
004940a8  01 18 81 e0                                      add r1, r1, r1, lsl #16
004940ac  81 30 83 e0                                      add r3, r3, r1, lsl #1
004940b0  18 10 a0 e3                                      mov r1, #0x18
004940b4  91 03 01 e0                                      mul r1, r1, r3
004940b8  80 00 51 e3                                      cmp r1, #0x80
004940bc  02 00 00 8a                                      bhi #0x4940cc
004940c0  8e d3 09 eb                                      bl #0x708f00
004940c4  04 00 a0 e1                                      mov r0, r4
004940c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004940cc  db f0 f9 eb                                      bl #0x310440
004940d0  04 00 a0 e1                                      mov r0, r4
004940d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00494dd4, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<VisualFXManager::AnimatedFXInfo, std::allocator<VisualFXManager::AnimatedFXInfo> >
; alias: _ZNSt6vectorIN15VisualFXManager14AnimatedFXInfoESaIS1_EE8_M_eraseEPS1_S4_RKSt12__false_type
; demangled: std::vector<VisualFXManager::AnimatedFXInfo, std::allocator<VisualFXManager::AnimatedFXInfo> >::_M_erase(VisualFXManager::AnimatedFXInfo*, VisualFXManager::AnimatedFXInfo*, std::__false_type const&)
; decoder-mode: arm
00494dd4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00494dd8  04 30 90 e5                                      ldr r3, [r0, #4]
00494ddc  10 d0 4d e2                                      sub sp, sp, #0x10
00494de0  01 50 a0 e1                                      mov r5, r1
00494de4  00 40 a0 e1                                      mov r4, r0
00494de8  03 10 a0 e1                                      mov r1, r3
00494dec  02 00 a0 e1                                      mov r0, r2
00494df0  00 c0 a0 e3                                      mov ip, #0
00494df4  05 20 a0 e1                                      mov r2, r5
00494df8  0c 30 8d e2                                      add r3, sp, #0xc
00494dfc  00 c0 8d e5                                      str ip, [sp]
00494e00  d4 ff ff eb                                      bl #0x494d58
00494e04  04 70 94 e5                                      ldr r7, [r4, #4]
00494e08  00 80 a0 e1                                      mov r8, r0
00494e0c  00 00 57 e1                                      cmp r7, r0
00494e10  05 00 00 0a                                      beq #0x494e2c
00494e14  00 60 a0 e1                                      mov r6, r0
00494e18  06 00 a0 e1                                      mov r0, r6
00494e1c  18 60 86 e2                                      add r6, r6, #0x18
00494e20  58 fc ff eb                                      bl #0x493f88
00494e24  06 00 57 e1                                      cmp r7, r6
00494e28  fa ff ff 1a                                      bne #0x494e18
00494e2c  04 80 84 e5                                      str r8, [r4, #4]
00494e30  05 00 a0 e1                                      mov r0, r5
00494e34  10 d0 8d e2                                      add sp, sp, #0x10
00494e38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00495240, declared_size=292, range_size=292, mode=arm
; class-group: std::vector<VisualFXManager::AnimatedFXInfo, std::allocator<VisualFXManager::AnimatedFXInfo> >
; alias: _ZNSt6vectorIN15VisualFXManager14AnimatedFXInfoESaIS1_EE9push_backERKS1_
; demangled: std::vector<VisualFXManager::AnimatedFXInfo, std::allocator<VisualFXManager::AnimatedFXInfo> >::push_back(VisualFXManager::AnimatedFXInfo const&)
; decoder-mode: arm
00495240  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00495244  00 40 a0 e1                                      mov r4, r0
00495248  08 50 94 e5                                      ldr r5, [r4, #8]
0049524c  04 00 90 e5                                      ldr r0, [r0, #4]
00495250  08 d0 4d e2                                      sub sp, sp, #8
00495254  01 60 a0 e1                                      mov r6, r1
00495258  05 00 50 e1                                      cmp r0, r5
0049525c  05 00 00 0a                                      beq #0x495278
00495260  dc ff ff eb                                      bl #0x4951d8
00495264  04 30 94 e5                                      ldr r3, [r4, #4]
00495268  18 30 83 e2                                      add r3, r3, #0x18
0049526c  04 30 84 e5                                      str r3, [r4, #4]
00495270  08 d0 8d e2                                      add sp, sp, #8
00495274  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00495278  00 20 94 e5                                      ldr r2, [r4]
0049527c  aa 3a 0a e3                                      movw r3, #0xaaaa
00495280  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00495284  05 20 62 e0                                      rsb r2, r2, r5
00495288  c2 21 a0 e1                                      asr r2, r2, #3
0049528c  02 11 82 e0                                      add r1, r2, r2, lsl #2
00495290  01 12 81 e0                                      add r1, r1, r1, lsl #4
00495294  01 14 81 e0                                      add r1, r1, r1, lsl #8
00495298  01 18 81 e0                                      add r1, r1, r1, lsl #16
0049529c  81 20 82 e0                                      add r2, r2, r1, lsl #1
004952a0  01 00 52 e3                                      cmp r2, #1
004952a4  02 10 82 20                                      addhs r1, r2, r2
004952a8  01 10 82 32                                      addlo r1, r2, #1
004952ac  03 00 51 e1                                      cmp r1, r3
004952b0  28 00 00 9a                                      bls #0x495358
004952b4  aa 1a 0a e3                                      movw r1, #0xaaaa
004952b8  01 16 81 e1                                      orr r1, r1, r1, lsl #12
004952bc  08 20 8d e2                                      add r2, sp, #8
004952c0  04 10 22 e5                                      str r1, [r2, #-4]!
004952c4  08 00 84 e2                                      add r0, r4, #8
004952c8  2b fa ff eb                                      bl #0x493b7c
004952cc  00 90 94 e5                                      ldr sb, [r4]
004952d0  00 a0 a0 e1                                      mov sl, r0
004952d4  05 50 69 e0                                      rsb r5, sb, r5
004952d8  c5 31 a0 e1                                      asr r3, r5, #3
004952dc  03 51 83 e0                                      add r5, r3, r3, lsl #2
004952e0  05 52 85 e0                                      add r5, r5, r5, lsl #4
004952e4  05 54 85 e0                                      add r5, r5, r5, lsl #8
004952e8  05 58 85 e0                                      add r5, r5, r5, lsl #16
004952ec  85 50 83 e0                                      add r5, r3, r5, lsl #1
004952f0  00 00 55 e3                                      cmp r5, #0
004952f4  00 50 a0 d1                                      movle r5, r0
004952f8  09 00 00 da                                      ble #0x495324
004952fc  05 80 a0 e1                                      mov r8, r5
00495300  00 70 a0 e3                                      mov r7, #0
00495304  07 00 8a e0                                      add r0, sl, r7
00495308  07 10 89 e0                                      add r1, sb, r7
0049530c  b1 ff ff eb                                      bl #0x4951d8
00495310  01 80 58 e2                                      subs r8, r8, #1
00495314  18 70 87 e2                                      add r7, r7, #0x18
00495318  f9 ff ff 1a                                      bne #0x495304
0049531c  18 30 a0 e3                                      mov r3, #0x18
00495320  93 a5 25 e0                                      mla r5, r3, r5, sl
00495324  06 10 a0 e1                                      mov r1, r6
00495328  05 00 a0 e1                                      mov r0, r5
0049532c  a9 ff ff eb                                      bl #0x4951d8
00495330  04 00 a0 e1                                      mov r0, r4
00495334  26 fb ff eb                                      bl #0x493fd4
00495338  04 30 9d e5                                      ldr r3, [sp, #4]
0049533c  18 20 a0 e3                                      mov r2, #0x18
00495340  18 50 85 e2                                      add r5, r5, #0x18
00495344  92 a3 23 e0                                      mla r3, r2, r3, sl
00495348  00 a0 84 e5                                      str sl, [r4]
0049534c  08 30 84 e5                                      str r3, [r4, #8]
00495350  04 50 84 e5                                      str r5, [r4, #4]
00495354  c5 ff ff ea                                      b #0x495270
00495358  01 00 52 e1                                      cmp r2, r1
0049535c  d6 ff ff 9a                                      bls #0x4952bc
00495360  d3 ff ff ea                                      b #0x4952b4
