; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004938a4, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> >
; alias: _ZNSt6vectorIPN15VisualFXManager10AnimFXStepESaIS2_EEC1ERKS4_
; demangled: std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> >::vector(std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> > const&)
; decoder-mode: arm
004938a4  30 40 2d e9                                      push {r4, r5, lr}
004938a8  01 50 a0 e1                                      mov r5, r1
004938ac  00 30 95 e5                                      ldr r3, [r5]
004938b0  04 10 91 e5                                      ldr r1, [r1, #4]
004938b4  0c d0 4d e2                                      sub sp, sp, #0xc
004938b8  00 40 a0 e1                                      mov r4, r0
004938bc  01 10 63 e0                                      rsb r1, r3, r1
004938c0  00 c0 a0 e3                                      mov ip, #0
004938c4  41 11 a0 e1                                      asr r1, r1, #2
004938c8  08 20 8d e2                                      add r2, sp, #8
004938cc  04 10 22 e5                                      str r1, [r2, #-4]!
004938d0  00 c0 84 e5                                      str ip, [r4]
004938d4  04 c0 84 e5                                      str ip, [r4, #4]
004938d8  08 c0 a0 e5                                      str ip, [r0, #8]!
004938dc  d4 ff ff eb                                      bl #0x493834
004938e0  04 20 9d e5                                      ldr r2, [sp, #4]
004938e4  00 00 84 e5                                      str r0, [r4]
004938e8  04 00 84 e5                                      str r0, [r4, #4]
004938ec  02 21 80 e0                                      add r2, r0, r2, lsl #2
004938f0  08 20 84 e5                                      str r2, [r4, #8]
004938f4  06 00 95 e8                                      ldm r5, {r1, r2}
004938f8  00 30 a0 e1                                      mov r3, r0
004938fc  02 00 51 e1                                      cmp r1, r2
00493900  03 00 00 0a                                      beq #0x493914
00493904  02 50 61 e0                                      rsb r5, r1, r2
00493908  05 20 a0 e1                                      mov r2, r5
0049390c  d5 eb f9 eb                                      bl #0x30e868
00493910  05 30 80 e0                                      add r3, r0, r5
00493914  04 30 84 e5                                      str r3, [r4, #4]
00493918  04 00 a0 e1                                      mov r0, r4
0049391c  0c d0 8d e2                                      add sp, sp, #0xc
00493920  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00493d18, declared_size=312, range_size=312, mode=arm
; class-group: std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> >
; alias: _ZNSt6vectorIPN15VisualFXManager10AnimFXStepESaIS2_EEaSERKS4_
; demangled: std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> >::operator=(std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> > const&)
; decoder-mode: arm
00493d18  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00493d1c  00 00 51 e1                                      cmp r1, r0
00493d20  0c d0 4d e2                                      sub sp, sp, #0xc
00493d24  01 60 a0 e1                                      mov r6, r1
00493d28  00 40 a0 e1                                      mov r4, r0
00493d2c  10 00 00 0a                                      beq #0x493d74
00493d30  0c 00 91 e8                                      ldm r1, {r2, r3}
00493d34  00 70 90 e5                                      ldr r7, [r0]
00493d38  08 10 90 e5                                      ldr r1, [r0, #8]
00493d3c  03 c0 62 e0                                      rsb ip, r2, r3
00493d40  4c 51 a0 e1                                      asr r5, ip, #2
00493d44  01 10 67 e0                                      rsb r1, r7, r1
00493d48  41 01 55 e1                                      cmp r5, r1, asr #2
00493d4c  16 00 00 8a                                      bhi #0x493dac
00493d50  04 00 90 e5                                      ldr r0, [r0, #4]
00493d54  00 10 67 e0                                      rsb r1, r7, r0
00493d58  41 11 a0 e1                                      asr r1, r1, #2
00493d5c  01 00 55 e1                                      cmp r5, r1
00493d60  06 00 00 8a                                      bhi #0x493d80
00493d64  00 00 5c e3                                      cmp ip, #0
00493d68  23 00 00 1a                                      bne #0x493dfc
00493d6c  05 51 87 e0                                      add r5, r7, r5, lsl #2
00493d70  04 50 84 e5                                      str r5, [r4, #4]
00493d74  04 00 a0 e1                                      mov r0, r4
00493d78  0c d0 8d e2                                      add sp, sp, #0xc
00493d7c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00493d80  01 11 82 e0                                      add r1, r2, r1, lsl #2
00493d84  02 c0 51 e0                                      subs ip, r1, r2
00493d88  23 00 00 1a                                      bne #0x493e1c
00493d8c  03 00 51 e1                                      cmp r1, r3
00493d90  f5 ff ff 0a                                      beq #0x493d6c
00493d94  03 20 61 e0                                      rsb r2, r1, r3
00493d98  b2 ea f9 eb                                      bl #0x30e868
00493d9c  00 70 94 e5                                      ldr r7, [r4]
00493da0  05 51 87 e0                                      add r5, r7, r5, lsl #2
00493da4  04 50 84 e5                                      str r5, [r4, #4]
00493da8  f1 ff ff ea                                      b #0x493d74
00493dac  08 10 8d e2                                      add r1, sp, #8
00493db0  04 50 21 e5                                      str r5, [r1, #-4]!
00493db4  f4 fe ff eb                                      bl #0x49398c
00493db8  00 70 a0 e1                                      mov r7, r0
00493dbc  00 00 94 e5                                      ldr r0, [r4]
00493dc0  08 10 94 e5                                      ldr r1, [r4, #8]
00493dc4  00 00 50 e3                                      cmp r0, #0
00493dc8  04 00 00 0a                                      beq #0x493de0
00493dcc  01 10 60 e0                                      rsb r1, r0, r1
00493dd0  03 10 c1 e3                                      bic r1, r1, #3
00493dd4  80 00 51 e3                                      cmp r1, #0x80
00493dd8  1a 00 00 8a                                      bhi #0x493e48
00493ddc  47 d4 09 eb                                      bl #0x708f00
00493de0  04 30 9d e5                                      ldr r3, [sp, #4]
00493de4  05 51 87 e0                                      add r5, r7, r5, lsl #2
00493de8  00 70 84 e5                                      str r7, [r4]
00493dec  03 31 87 e0                                      add r3, r7, r3, lsl #2
00493df0  08 30 84 e5                                      str r3, [r4, #8]
00493df4  04 50 84 e5                                      str r5, [r4, #4]
00493df8  dd ff ff ea                                      b #0x493d74
00493dfc  07 00 a0 e1                                      mov r0, r7
00493e00  02 10 a0 e1                                      mov r1, r2
00493e04  0c 20 a0 e1                                      mov r2, ip
00493e08  4a e8 f9 eb                                      bl #0x30df38
00493e0c  00 70 94 e5                                      ldr r7, [r4]
00493e10  05 51 87 e0                                      add r5, r7, r5, lsl #2
00493e14  04 50 84 e5                                      str r5, [r4, #4]
00493e18  d5 ff ff ea                                      b #0x493d74
00493e1c  02 10 a0 e1                                      mov r1, r2
00493e20  07 00 a0 e1                                      mov r0, r7
00493e24  0c 20 a0 e1                                      mov r2, ip
00493e28  42 e8 f9 eb                                      bl #0x30df38
00493e2c  04 00 94 e5                                      ldr r0, [r4, #4]
00493e30  00 70 94 e5                                      ldr r7, [r4]
00493e34  0c 00 96 e8                                      ldm r6, {r2, r3}
00493e38  00 10 67 e0                                      rsb r1, r7, r0
00493e3c  03 10 c1 e3                                      bic r1, r1, #3
00493e40  01 10 82 e0                                      add r1, r2, r1
00493e44  d0 ff ff ea                                      b #0x493d8c
00493e48  7c f1 f9 eb                                      bl #0x310440
00493e4c  e3 ff ff ea                                      b #0x493de0

; FUNCTION 0x0049448c, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> >
; alias: _ZNSt6vectorIPN15VisualFXManager10AnimFXStepESaIS2_EE18_M_insert_overflowEPS2_RKS2_RKSt11__true_typejb.clone.2
; demangled: std::vector<VisualFXManager::AnimFXStep*, std::allocator<VisualFXManager::AnimFXStep*> >::_M_insert_overflow(VisualFXManager::AnimFXStep**, VisualFXManager::AnimFXStep* const&, std::__true_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
0049448c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00494490  00 40 a0 e1                                      mov r4, r0
00494494  00 30 94 e5                                      ldr r3, [r4]
00494498  04 00 90 e5                                      ldr r0, [r0, #4]
0049449c  01 60 a0 e1                                      mov r6, r1
004944a0  0c d0 4d e2                                      sub sp, sp, #0xc
004944a4  00 30 63 e0                                      rsb r3, r3, r0
004944a8  43 31 a0 e1                                      asr r3, r3, #2
004944ac  01 00 53 e3                                      cmp r3, #1
004944b0  03 10 83 20                                      addhs r1, r3, r3
004944b4  01 10 83 32                                      addlo r1, r3, #1
004944b8  07 01 71 e3                                      cmn r1, #0xc0000001
004944bc  02 70 a0 e1                                      mov r7, r2
004944c0  1e 00 00 8a                                      bhi #0x494540
004944c4  01 00 53 e1                                      cmp r3, r1
004944c8  1c 00 00 8a                                      bhi #0x494540
004944cc  08 20 8d e2                                      add r2, sp, #8
004944d0  04 10 22 e5                                      str r1, [r2, #-4]!
004944d4  08 00 84 e2                                      add r0, r4, #8
004944d8  d5 fc ff eb                                      bl #0x493834
004944dc  00 10 94 e5                                      ldr r1, [r4]
004944e0  00 50 a0 e1                                      mov r5, r0
004944e4  01 60 56 e0                                      subs r6, r6, r1
004944e8  00 60 a0 01                                      moveq r6, r0
004944ec  02 00 00 0a                                      beq #0x4944fc
004944f0  06 20 a0 e1                                      mov r2, r6
004944f4  8f e6 f9 eb                                      bl #0x30df38
004944f8  06 60 80 e0                                      add r6, r0, r6
004944fc  00 30 97 e5                                      ldr r3, [r7]
00494500  04 30 86 e4                                      str r3, [r6], #4
00494504  00 00 94 e5                                      ldr r0, [r4]
00494508  08 10 94 e5                                      ldr r1, [r4, #8]
0049450c  00 00 50 e3                                      cmp r0, #0
00494510  04 00 00 0a                                      beq #0x494528
00494514  01 10 60 e0                                      rsb r1, r0, r1
00494518  03 10 c1 e3                                      bic r1, r1, #3
0049451c  80 00 51 e3                                      cmp r1, #0x80
00494520  08 00 00 8a                                      bhi #0x494548
00494524  75 d2 09 eb                                      bl #0x708f00
00494528  04 30 9d e5                                      ldr r3, [sp, #4]
0049452c  60 00 84 e8                                      stm r4, {r5, r6}
00494530  03 51 85 e0                                      add r5, r5, r3, lsl #2
00494534  08 50 84 e5                                      str r5, [r4, #8]
00494538  0c d0 8d e2                                      add sp, sp, #0xc
0049453c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00494540  03 11 e0 e3                                      mvn r1, #0xc0000000
00494544  e0 ff ff ea                                      b #0x4944cc
00494548  bc ef f9 eb                                      bl #0x310440
0049454c  f5 ff ff ea                                      b #0x494528
