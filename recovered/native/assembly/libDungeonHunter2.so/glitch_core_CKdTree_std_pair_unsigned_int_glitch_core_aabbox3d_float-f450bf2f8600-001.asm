; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a24f8, declared_size=232, range_size=232, mode=arm
; class-group: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >
; alias: _ZNK6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE24findFarthestElemInternalERPKS5_RfPKNS6_7SKdNodeE
; demangled: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::findFarthestElemInternal(std::pair<unsigned int, glitch::core::aabbox3d<float> > const*&, float&, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdNode const*) const
; decoder-mode: arm
005a24f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005a24fc  00 40 53 e2                                      subs r4, r3, #0
005a2500  00 70 a0 e1                                      mov r7, r0
005a2504  01 60 a0 e1                                      mov r6, r1
005a2508  02 50 a0 e1                                      mov r5, r2
005a250c  09 00 00 0a                                      beq #0x5a2538
005a2510  10 c0 94 e5                                      ldr ip, [r4, #0x10]
005a2514  07 00 a0 e1                                      mov r0, r7
005a2518  06 10 a0 e1                                      mov r1, r6
005a251c  00 30 5c e2                                      subs r3, ip, #0
005a2520  05 20 a0 e1                                      mov r2, r5
005a2524  04 00 00 0a                                      beq #0x5a253c
005a2528  f2 ff ff eb                                      bl #0x5a24f8
005a252c  14 40 94 e5                                      ldr r4, [r4, #0x14]
005a2530  00 00 54 e3                                      cmp r4, #0
005a2534  f5 ff ff 1a                                      bne #0x5a2510
005a2538  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005a253c  14 80 94 e5                                      ldr r8, [r4, #0x14]
005a2540  00 00 58 e3                                      cmp r8, #0
005a2544  08 40 a0 11                                      movne r4, r8
005a2548  f0 ff ff 1a                                      bne #0x5a2510
005a254c  09 00 94 e8                                      ldm r4, {r0, r3}
005a2550  03 30 60 e0                                      rsb r3, r0, r3
005a2554  43 31 a0 e1                                      asr r3, r3, #2
005a2558  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a255c  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a2560  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a2564  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a2568  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a256c  00 00 53 e3                                      cmp r3, #0
005a2570  f0 ff ff 0a                                      beq #0x5a2538
005a2574  38 70 87 e2                                      add r7, r7, #0x38
005a2578  08 a0 a0 e1                                      mov sl, r8
005a257c  08 00 80 e0                                      add r0, r0, r8
005a2580  07 10 a0 e1                                      mov r1, r7
005a2584  f5 fe ff eb                                      bl #0x5a2160
005a2588  00 10 95 e5                                      ldr r1, [r5]
005a258c  00 90 a0 e1                                      mov sb, r0
005a2590  58 af f5 eb                                      bl #0x30e2f8
005a2594  00 00 50 e3                                      cmp r0, #0
005a2598  00 90 85 15                                      strne sb, [r5]
005a259c  00 30 94 15                                      ldrne r3, [r4]
005a25a0  01 a0 8a e2                                      add sl, sl, #1
005a25a4  08 30 83 10                                      addne r3, r3, r8
005a25a8  00 30 86 15                                      strne r3, [r6]
005a25ac  09 00 94 e8                                      ldm r4, {r0, r3}
005a25b0  1c 80 88 e2                                      add r8, r8, #0x1c
005a25b4  03 30 60 e0                                      rsb r3, r0, r3
005a25b8  43 31 a0 e1                                      asr r3, r3, #2
005a25bc  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a25c0  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a25c4  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a25c8  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a25cc  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a25d0  00 30 63 e2                                      rsb r3, r3, #0
005a25d4  03 00 5a e1                                      cmp sl, r3
005a25d8  e7 ff ff 3a                                      blo #0x5a257c
005a25dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005a3120, declared_size=648, range_size=648, mode=arm
; class-group: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >
; alias: _ZN6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE15addElemInternalERKS5_PNS6_7SKdNodeEjRKS4_
; demangled: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::addElemInternal(std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdNode*, unsigned int, glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
005a3120  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a3124  00 a0 53 e2                                      subs sl, r3, #0
005a3128  54 d0 4d e2                                      sub sp, sp, #0x54
005a312c  00 80 a0 e1                                      mov r8, r0
005a3130  01 70 a0 e1                                      mov r7, r1
005a3134  02 60 a0 e1                                      mov r6, r2
005a3138  78 50 9d e5                                      ldr r5, [sp, #0x78]
005a313c  38 00 00 0a                                      beq #0x5a3224
005a3140  d8 41 d2 e1                                      ldrsb r4, [r2, #0x18]
005a3144  56 35 05 e3                                      movw r3, #0x5556
005a3148  55 35 45 e3                                      movt r3, #0x5555
005a314c  01 20 84 e2                                      add r2, r4, #1
005a3150  93 12 c3 e0                                      smull r1, r3, r3, r2
005a3154  14 10 95 e5                                      ldr r1, [r5, #0x14]
005a3158  c2 3f 43 e0                                      sub r3, r3, r2, asr #31
005a315c  0c 90 95 e5                                      ldr sb, [r5, #0xc]
005a3160  83 30 83 e0                                      add r3, r3, r3, lsl #1
005a3164  02 30 63 e0                                      rsb r3, r3, r2
005a3168  04 c0 95 e5                                      ldr ip, [r5, #4]
005a316c  08 e0 95 e5                                      ldr lr, [r5, #8]
005a3170  10 b0 95 e5                                      ldr fp, [r5, #0x10]
005a3174  1c 10 8d e5                                      str r1, [sp, #0x1c]
005a3178  0c 30 8d e5                                      str r3, [sp, #0xc]
005a317c  00 30 95 e5                                      ldr r3, [r5]
005a3180  0c 10 96 e5                                      ldr r1, [r6, #0xc]
005a3184  07 00 a0 e1                                      mov r0, r7
005a3188  20 30 8d e5                                      str r3, [sp, #0x20]
005a318c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005a3190  04 20 a0 e1                                      mov r2, r4
005a3194  2c 90 8d e5                                      str sb, [sp, #0x2c]
005a3198  34 30 8d e5                                      str r3, [sp, #0x34]
005a319c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005a31a0  24 c0 8d e5                                      str ip, [sp, #0x24]
005a31a4  28 e0 8d e5                                      str lr, [sp, #0x28]
005a31a8  30 b0 8d e5                                      str fp, [sp, #0x30]
005a31ac  73 90 ef e6                                      uxtb sb, r3
005a31b0  c7 fb ff eb                                      bl #0x5a20d4
005a31b4  00 00 50 e3                                      cmp r0, #0
005a31b8  0c 00 00 1a                                      bne #0x5a31f0
005a31bc  14 20 96 e5                                      ldr r2, [r6, #0x14]
005a31c0  00 00 52 e3                                      cmp r2, #0
005a31c4  53 00 00 0a                                      beq #0x5a3318
005a31c8  0c e0 96 e5                                      ldr lr, [r6, #0xc]
005a31cc  20 c0 8d e2                                      add ip, sp, #0x20
005a31d0  08 00 a0 e1                                      mov r0, r8
005a31d4  04 e1 8c e7                                      str lr, [ip, r4, lsl #2]
005a31d8  07 10 a0 e1                                      mov r1, r7
005a31dc  01 30 4a e2                                      sub r3, sl, #1
005a31e0  00 c0 8d e5                                      str ip, [sp]
005a31e4  cd ff ff eb                                      bl #0x5a3120
005a31e8  54 d0 8d e2                                      add sp, sp, #0x54
005a31ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a31f0  10 20 96 e5                                      ldr r2, [r6, #0x10]
005a31f4  00 00 52 e3                                      cmp r2, #0
005a31f8  22 00 00 0a                                      beq #0x5a3288
005a31fc  0c e0 96 e5                                      ldr lr, [r6, #0xc]
005a3200  20 c0 8d e2                                      add ip, sp, #0x20
005a3204  04 41 8c e0                                      add r4, ip, r4, lsl #2
005a3208  0c e0 84 e5                                      str lr, [r4, #0xc]
005a320c  08 00 a0 e1                                      mov r0, r8
005a3210  07 10 a0 e1                                      mov r1, r7
005a3214  01 30 4a e2                                      sub r3, sl, #1
005a3218  00 c0 8d e5                                      str ip, [sp]
005a321c  bf ff ff eb                                      bl #0x5a3120
005a3220  f0 ff ff ea                                      b #0x5a31e8
005a3224  0a 00 92 e9                                      ldmib r2, {r1, r3}
005a3228  03 00 51 e1                                      cmp r1, r3
005a322c  11 00 00 0a                                      beq #0x5a3278
005a3230  00 30 97 e5                                      ldr r3, [r7]
005a3234  00 30 81 e5                                      str r3, [r1]
005a3238  04 30 97 e5                                      ldr r3, [r7, #4]
005a323c  04 30 81 e5                                      str r3, [r1, #4]
005a3240  08 30 97 e5                                      ldr r3, [r7, #8]
005a3244  08 30 81 e5                                      str r3, [r1, #8]
005a3248  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005a324c  0c 30 81 e5                                      str r3, [r1, #0xc]
005a3250  10 30 97 e5                                      ldr r3, [r7, #0x10]
005a3254  10 30 81 e5                                      str r3, [r1, #0x10]
005a3258  14 30 97 e5                                      ldr r3, [r7, #0x14]
005a325c  14 30 81 e5                                      str r3, [r1, #0x14]
005a3260  18 30 97 e5                                      ldr r3, [r7, #0x18]
005a3264  18 30 81 e5                                      str r3, [r1, #0x18]
005a3268  04 30 92 e5                                      ldr r3, [r2, #4]
005a326c  1c 30 83 e2                                      add r3, r3, #0x1c
005a3270  04 30 82 e5                                      str r3, [r2, #4]
005a3274  db ff ff ea                                      b #0x5a31e8
005a3278  02 00 a0 e1                                      mov r0, r2
005a327c  07 20 a0 e1                                      mov r2, r7
005a3280  42 ff ff eb                                      bl #0x5a2f90
005a3284  d7 ff ff ea                                      b #0x5a31e8
005a3288  1c 00 88 e2                                      add r0, r8, #0x1c
005a328c  d0 fe ff eb                                      bl #0x5a2dd4
005a3290  10 00 86 e5                                      str r0, [r6, #0x10]
005a3294  10 10 95 e5                                      ldr r1, [r5, #0x10]
005a3298  00 b0 a0 e1                                      mov fp, r0
005a329c  04 00 95 e5                                      ldr r0, [r5, #4]
005a32a0  3f ae f5 eb                                      bl #0x30eba4
005a32a4  3f 14 a0 e3                                      mov r1, #0x3f000000
005a32a8  af ae f5 eb                                      bl #0x30ed6c
005a32ac  14 10 95 e5                                      ldr r1, [r5, #0x14]
005a32b0  00 30 a0 e1                                      mov r3, r0
005a32b4  08 00 95 e5                                      ldr r0, [r5, #8]
005a32b8  14 30 8d e5                                      str r3, [sp, #0x14]
005a32bc  38 ae f5 eb                                      bl #0x30eba4
005a32c0  3f 14 a0 e3                                      mov r1, #0x3f000000
005a32c4  a8 ae f5 eb                                      bl #0x30ed6c
005a32c8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005a32cc  00 20 a0 e1                                      mov r2, r0
005a32d0  00 00 95 e5                                      ldr r0, [r5]
005a32d4  18 20 8d e5                                      str r2, [sp, #0x18]
005a32d8  31 ae f5 eb                                      bl #0x30eba4
005a32dc  3f 14 a0 e3                                      mov r1, #0x3f000000
005a32e0  a1 ae f5 eb                                      bl #0x30ed6c
005a32e4  14 30 9d e5                                      ldr r3, [sp, #0x14]
005a32e8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005a32ec  44 00 8d e5                                      str r0, [sp, #0x44]
005a32f0  48 30 8d e5                                      str r3, [sp, #0x48]
005a32f4  4c 20 8d e5                                      str r2, [sp, #0x4c]
005a32f8  44 30 8d e2                                      add r3, sp, #0x44
005a32fc  79 20 af e6                                      sxtb r2, sb
005a3300  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005a3304  0c 30 8b e5                                      str r3, [fp, #0xc]
005a3308  10 30 96 e5                                      ldr r3, [r6, #0x10]
005a330c  18 90 c3 e5                                      strb sb, [r3, #0x18]
005a3310  10 20 96 e5                                      ldr r2, [r6, #0x10]
005a3314  b8 ff ff ea                                      b #0x5a31fc
005a3318  1c 00 88 e2                                      add r0, r8, #0x1c
005a331c  ac fe ff eb                                      bl #0x5a2dd4
005a3320  14 00 86 e5                                      str r0, [r6, #0x14]
005a3324  10 10 95 e5                                      ldr r1, [r5, #0x10]
005a3328  00 b0 a0 e1                                      mov fp, r0
005a332c  04 00 95 e5                                      ldr r0, [r5, #4]
005a3330  1b ae f5 eb                                      bl #0x30eba4
005a3334  3f 14 a0 e3                                      mov r1, #0x3f000000
005a3338  8b ae f5 eb                                      bl #0x30ed6c
005a333c  14 10 95 e5                                      ldr r1, [r5, #0x14]
005a3340  00 30 a0 e1                                      mov r3, r0
005a3344  08 00 95 e5                                      ldr r0, [r5, #8]
005a3348  14 30 8d e5                                      str r3, [sp, #0x14]
005a334c  14 ae f5 eb                                      bl #0x30eba4
005a3350  3f 14 a0 e3                                      mov r1, #0x3f000000
005a3354  84 ae f5 eb                                      bl #0x30ed6c
005a3358  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005a335c  00 20 a0 e1                                      mov r2, r0
005a3360  00 00 95 e5                                      ldr r0, [r5]
005a3364  18 20 8d e5                                      str r2, [sp, #0x18]
005a3368  0d ae f5 eb                                      bl #0x30eba4
005a336c  3f 14 a0 e3                                      mov r1, #0x3f000000
005a3370  7d ae f5 eb                                      bl #0x30ed6c
005a3374  14 30 9d e5                                      ldr r3, [sp, #0x14]
005a3378  18 20 9d e5                                      ldr r2, [sp, #0x18]
005a337c  38 00 8d e5                                      str r0, [sp, #0x38]
005a3380  3c 30 8d e5                                      str r3, [sp, #0x3c]
005a3384  40 20 8d e5                                      str r2, [sp, #0x40]
005a3388  38 30 8d e2                                      add r3, sp, #0x38
005a338c  79 20 af e6                                      sxtb r2, sb
005a3390  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005a3394  0c 30 8b e5                                      str r3, [fp, #0xc]
005a3398  14 30 96 e5                                      ldr r3, [r6, #0x14]
005a339c  18 90 c3 e5                                      strb sb, [r3, #0x18]
005a33a0  14 20 96 e5                                      ldr r2, [r6, #0x14]
005a33a4  87 ff ff ea                                      b #0x5a31c8

; FUNCTION 0x005a44b4, declared_size=544, range_size=544, mode=arm
; class-group: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >
; alias: _ZN6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE18removeElemInternalERKS5_PNS6_7SKdNodeE
; demangled: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::removeElemInternal(std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdNode*)
; decoder-mode: arm
005a44b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a44b8  01 50 a0 e1                                      mov r5, r1
005a44bc  02 40 a0 e1                                      mov r4, r2
005a44c0  00 60 a0 e1                                      mov r6, r0
005a44c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a44c8  d8 21 d4 e1                                      ldrsb r2, [r4, #0x18]
005a44cc  05 00 a0 e1                                      mov r0, r5
005a44d0  ff f6 ff eb                                      bl #0x5a20d4
005a44d4  00 00 50 e3                                      cmp r0, #0
005a44d8  09 00 00 0a                                      beq #0x5a4504
005a44dc  10 30 94 e5                                      ldr r3, [r4, #0x10]
005a44e0  00 00 53 e3                                      cmp r3, #0
005a44e4  47 00 00 0a                                      beq #0x5a4608
005a44e8  03 40 a0 e1                                      mov r4, r3
005a44ec  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a44f0  d8 21 d4 e1                                      ldrsb r2, [r4, #0x18]
005a44f4  05 00 a0 e1                                      mov r0, r5
005a44f8  f5 f6 ff eb                                      bl #0x5a20d4
005a44fc  00 00 50 e3                                      cmp r0, #0
005a4500  f5 ff ff 1a                                      bne #0x5a44dc
005a4504  14 30 94 e5                                      ldr r3, [r4, #0x14]
005a4508  00 00 53 e3                                      cmp r3, #0
005a450c  f5 ff ff 1a                                      bne #0x5a44e8
005a4510  81 00 94 e8                                      ldm r4, {r0, r7}
005a4514  05 20 a0 e1                                      mov r2, r5
005a4518  07 10 a0 e1                                      mov r1, r7
005a451c  07 30 60 e0                                      rsb r3, r0, r7
005a4520  43 31 a0 e1                                      asr r3, r3, #2
005a4524  83 c1 83 e0                                      add ip, r3, r3, lsl #3
005a4528  0c c3 8c e0                                      add ip, ip, ip, lsl #6
005a452c  8c c1 83 e0                                      add ip, r3, ip, lsl #3
005a4530  8c c7 8c e0                                      add ip, ip, ip, lsl #15
005a4534  8c 31 83 e0                                      add r3, r3, ip, lsl #3
005a4538  00 50 63 e2                                      rsb r5, r3, #0
005a453c  8c ff ff eb                                      bl #0x5a4374
005a4540  07 00 50 e1                                      cmp r0, r7
005a4544  60 00 00 0a                                      beq #0x5a46cc
005a4548  04 30 94 e5                                      ldr r3, [r4, #4]
005a454c  03 30 67 e0                                      rsb r3, r7, r3
005a4550  43 31 a0 e1                                      asr r3, r3, #2
005a4554  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a4558  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a455c  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a4560  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a4564  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a4568  00 c0 63 e2                                      rsb ip, r3, #0
005a456c  00 00 5c e3                                      cmp ip, #0
005a4570  16 00 00 da                                      ble #0x5a45d0
005a4574  1c 70 87 e2                                      add r7, r7, #0x1c
005a4578  1c 30 80 e2                                      add r3, r0, #0x1c
005a457c  0c 20 a0 e1                                      mov r2, ip
005a4580  1c 10 17 e5                                      ldr r1, [r7, #-0x1c]
005a4584  01 20 52 e2                                      subs r2, r2, #1
005a4588  1c 10 03 e5                                      str r1, [r3, #-0x1c]
005a458c  18 10 17 e5                                      ldr r1, [r7, #-0x18]
005a4590  18 10 03 e5                                      str r1, [r3, #-0x18]
005a4594  14 10 17 e5                                      ldr r1, [r7, #-0x14]
005a4598  14 10 03 e5                                      str r1, [r3, #-0x14]
005a459c  10 10 17 e5                                      ldr r1, [r7, #-0x10]
005a45a0  10 10 03 e5                                      str r1, [r3, #-0x10]
005a45a4  0c 10 17 e5                                      ldr r1, [r7, #-0xc]
005a45a8  0c 10 03 e5                                      str r1, [r3, #-0xc]
005a45ac  08 10 17 e5                                      ldr r1, [r7, #-8]
005a45b0  08 10 03 e5                                      str r1, [r3, #-8]
005a45b4  04 10 17 e5                                      ldr r1, [r7, #-4]
005a45b8  1c 70 87 e2                                      add r7, r7, #0x1c
005a45bc  04 10 03 e5                                      str r1, [r3, #-4]
005a45c0  1c 30 83 e2                                      add r3, r3, #0x1c
005a45c4  ed ff ff 1a                                      bne #0x5a4580
005a45c8  1c 30 a0 e3                                      mov r3, #0x1c
005a45cc  93 0c 20 e0                                      mla r0, r3, ip, r0
005a45d0  04 00 84 e5                                      str r0, [r4, #4]
005a45d4  00 30 94 e5                                      ldr r3, [r4]
005a45d8  50 20 96 e5                                      ldr r2, [r6, #0x50]
005a45dc  00 00 63 e0                                      rsb r0, r3, r0
005a45e0  40 01 a0 e1                                      asr r0, r0, #2
005a45e4  80 31 80 e0                                      add r3, r0, r0, lsl #3
005a45e8  03 33 83 e0                                      add r3, r3, r3, lsl #6
005a45ec  83 31 80 e0                                      add r3, r0, r3, lsl #3
005a45f0  83 37 83 e0                                      add r3, r3, r3, lsl #15
005a45f4  83 01 80 e0                                      add r0, r0, r3, lsl #3
005a45f8  00 50 85 e0                                      add r5, r5, r0
005a45fc  02 50 65 e0                                      rsb r5, r5, r2
005a4600  50 50 86 e5                                      str r5, [r6, #0x50]
005a4604  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a4608  81 00 94 e8                                      ldm r4, {r0, r7}
005a460c  05 20 a0 e1                                      mov r2, r5
005a4610  07 10 a0 e1                                      mov r1, r7
005a4614  07 30 60 e0                                      rsb r3, r0, r7
005a4618  43 31 a0 e1                                      asr r3, r3, #2
005a461c  83 c1 83 e0                                      add ip, r3, r3, lsl #3
005a4620  0c c3 8c e0                                      add ip, ip, ip, lsl #6
005a4624  8c c1 83 e0                                      add ip, r3, ip, lsl #3
005a4628  8c c7 8c e0                                      add ip, ip, ip, lsl #15
005a462c  8c 31 83 e0                                      add r3, r3, ip, lsl #3
005a4630  00 50 63 e2                                      rsb r5, r3, #0
005a4634  4e ff ff eb                                      bl #0x5a4374
005a4638  07 00 50 e1                                      cmp r0, r7
005a463c  22 00 00 0a                                      beq #0x5a46cc
005a4640  04 30 94 e5                                      ldr r3, [r4, #4]
005a4644  03 30 67 e0                                      rsb r3, r7, r3
005a4648  43 31 a0 e1                                      asr r3, r3, #2
005a464c  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a4650  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a4654  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a4658  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a465c  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a4660  00 c0 63 e2                                      rsb ip, r3, #0
005a4664  00 00 5c e3                                      cmp ip, #0
005a4668  d8 ff ff da                                      ble #0x5a45d0
005a466c  1c 70 87 e2                                      add r7, r7, #0x1c
005a4670  1c 30 80 e2                                      add r3, r0, #0x1c
005a4674  0c 20 a0 e1                                      mov r2, ip
005a4678  1c 10 17 e5                                      ldr r1, [r7, #-0x1c]
005a467c  01 20 52 e2                                      subs r2, r2, #1
005a4680  1c 10 03 e5                                      str r1, [r3, #-0x1c]
005a4684  18 10 17 e5                                      ldr r1, [r7, #-0x18]
005a4688  18 10 03 e5                                      str r1, [r3, #-0x18]
005a468c  14 10 17 e5                                      ldr r1, [r7, #-0x14]
005a4690  14 10 03 e5                                      str r1, [r3, #-0x14]
005a4694  10 10 17 e5                                      ldr r1, [r7, #-0x10]
005a4698  10 10 03 e5                                      str r1, [r3, #-0x10]
005a469c  0c 10 17 e5                                      ldr r1, [r7, #-0xc]
005a46a0  0c 10 03 e5                                      str r1, [r3, #-0xc]
005a46a4  08 10 17 e5                                      ldr r1, [r7, #-8]
005a46a8  08 10 03 e5                                      str r1, [r3, #-8]
005a46ac  04 10 17 e5                                      ldr r1, [r7, #-4]
005a46b0  1c 70 87 e2                                      add r7, r7, #0x1c
005a46b4  04 10 03 e5                                      str r1, [r3, #-4]
005a46b8  1c 30 83 e2                                      add r3, r3, #0x1c
005a46bc  ed ff ff 1a                                      bne #0x5a4678
005a46c0  1c 30 a0 e3                                      mov r3, #0x1c
005a46c4  93 0c 20 e0                                      mla r0, r3, ip, r0
005a46c8  c0 ff ff ea                                      b #0x5a45d0
005a46cc  04 00 94 e5                                      ldr r0, [r4, #4]
005a46d0  bf ff ff ea                                      b #0x5a45d4

; FUNCTION 0x005a4e24, declared_size=524, range_size=524, mode=arm
; class-group: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >
; alias: _ZNK6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE25findKNearestElemsInternalERjRKS5_RSt14priority_queueINS6_11SKdDistanceESt6vectorISB_SaISB_EESt4lessISB_EEPKNS6_7SKdNodeERf
; demangled: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::findKNearestElemsInternal(unsigned int&, std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, std::priority_queue<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::vector<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::allocator<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >, std::less<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >&, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdNode const*, float&) const
; decoder-mode: arm
005a4e24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a4e28  2c d0 4d e2                                      sub sp, sp, #0x2c
005a4e2c  50 40 9d e5                                      ldr r4, [sp, #0x50]
005a4e30  00 a0 a0 e1                                      mov sl, r0
005a4e34  01 60 a0 e1                                      mov r6, r1
005a4e38  00 00 54 e3                                      cmp r4, #0
005a4e3c  02 50 a0 e1                                      mov r5, r2
005a4e40  03 80 a0 e1                                      mov r8, r3
005a4e44  54 90 9d e5                                      ldr sb, [sp, #0x54]
005a4e48  25 00 00 0a                                      beq #0x5a4ee4
005a4e4c  10 30 94 e5                                      ldr r3, [r4, #0x10]
005a4e50  00 00 53 e3                                      cmp r3, #0
005a4e54  24 00 00 0a                                      beq #0x5a4eec
005a4e58  d8 71 d4 e1                                      ldrsb r7, [r4, #0x18]
005a4e5c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a4e60  05 00 a0 e1                                      mov r0, r5
005a4e64  07 20 a0 e1                                      mov r2, r7
005a4e68  99 f4 ff eb                                      bl #0x5a20d4
005a4e6c  00 00 50 e3                                      cmp r0, #0
005a4e70  10 c0 94 15                                      ldrne ip, [r4, #0x10]
005a4e74  14 c0 94 05                                      ldreq ip, [r4, #0x14]
005a4e78  08 30 a0 e1                                      mov r3, r8
005a4e7c  06 10 a0 e1                                      mov r1, r6
005a4e80  05 20 a0 e1                                      mov r2, r5
005a4e84  0a 00 a0 e1                                      mov r0, sl
005a4e88  14 b0 94 15                                      ldrne fp, [r4, #0x14]
005a4e8c  10 b0 94 05                                      ldreq fp, [r4, #0x10]
005a4e90  00 c0 8d e5                                      str ip, [sp]
005a4e94  04 90 8d e5                                      str sb, [sp, #4]
005a4e98  e1 ff ff eb                                      bl #0x5a4e24
005a4e9c  05 00 a0 e1                                      mov r0, r5
005a4ea0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a4ea4  07 20 a0 e1                                      mov r2, r7
005a4ea8  30 f5 ff eb                                      bl #0x5a2370
005a4eac  00 30 96 e5                                      ldr r3, [r6]
005a4eb0  00 00 53 e3                                      cmp r3, #0
005a4eb4  03 00 00 1a                                      bne #0x5a4ec8
005a4eb8  00 10 99 e5                                      ldr r1, [sb]
005a4ebc  12 a6 f5 eb                                      bl #0x30e70c
005a4ec0  00 00 50 e3                                      cmp r0, #0
005a4ec4  06 00 00 0a                                      beq #0x5a4ee4
005a4ec8  0a 00 a0 e1                                      mov r0, sl
005a4ecc  06 10 a0 e1                                      mov r1, r6
005a4ed0  05 20 a0 e1                                      mov r2, r5
005a4ed4  08 30 a0 e1                                      mov r3, r8
005a4ed8  00 b0 8d e5                                      str fp, [sp]
005a4edc  04 90 8d e5                                      str sb, [sp, #4]
005a4ee0  cf ff ff eb                                      bl #0x5a4e24
005a4ee4  2c d0 8d e2                                      add sp, sp, #0x2c
005a4ee8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a4eec  14 20 94 e5                                      ldr r2, [r4, #0x14]
005a4ef0  00 00 52 e3                                      cmp r2, #0
005a4ef4  d7 ff ff 1a                                      bne #0x5a4e58
005a4ef8  00 30 94 e5                                      ldr r3, [r4]
005a4efc  04 10 94 e5                                      ldr r1, [r4, #4]
005a4f00  01 10 63 e0                                      rsb r1, r3, r1
005a4f04  41 11 a0 e1                                      asr r1, r1, #2
005a4f08  81 01 81 e0                                      add r0, r1, r1, lsl #3
005a4f0c  00 03 80 e0                                      add r0, r0, r0, lsl #6
005a4f10  80 01 81 e0                                      add r0, r1, r0, lsl #3
005a4f14  80 07 80 e0                                      add r0, r0, r0, lsl #15
005a4f18  80 11 81 e0                                      add r1, r1, r0, lsl #3
005a4f1c  00 00 51 e3                                      cmp r1, #0
005a4f20  ef ff ff 0a                                      beq #0x5a4ee4
005a4f24  02 a0 a0 e1                                      mov sl, r2
005a4f28  02 b0 a0 e1                                      mov fp, r2
005a4f2c  1c 20 8d e2                                      add r2, sp, #0x1c
005a4f30  10 20 8d e5                                      str r2, [sp, #0x10]
005a4f34  24 20 8d e2                                      add r2, sp, #0x24
005a4f38  14 20 8d e5                                      str r2, [sp, #0x14]
005a4f3c  22 00 00 ea                                      b #0x5a4fcc
005a4f40  00 70 98 e5                                      ldr r7, [r8]
005a4f44  00 10 97 e5                                      ldr r1, [r7]
005a4f48  0c 20 8d e5                                      str r2, [sp, #0xc]
005a4f4c  ee a5 f5 eb                                      bl #0x30e70c
005a4f50  00 00 50 e3                                      cmp r0, #0
005a4f54  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005a4f58  14 30 9d e5                                      ldr r3, [sp, #0x14]
005a4f5c  07 00 a0 e1                                      mov r0, r7
005a4f60  0c 00 00 0a                                      beq #0x5a4f98
005a4f64  04 10 98 e5                                      ldr r1, [r8, #4]
005a4f68  29 fa ff eb                                      bl #0x5a3814
005a4f6c  04 20 98 e5                                      ldr r2, [r8, #4]
005a4f70  00 30 98 e5                                      ldr r3, [r8]
005a4f74  08 20 42 e2                                      sub r2, r2, #8
005a4f78  04 20 88 e5                                      str r2, [r8, #4]
005a4f7c  00 30 93 e5                                      ldr r3, [r3]
005a4f80  00 30 89 e5                                      str r3, [sb]
005a4f84  00 30 96 e5                                      ldr r3, [r6]
005a4f88  01 30 83 e2                                      add r3, r3, #1
005a4f8c  00 00 53 e3                                      cmp r3, #0
005a4f90  00 30 86 e5                                      str r3, [r6]
005a4f94  23 00 00 1a                                      bne #0x5a5028
005a4f98  00 30 94 e5                                      ldr r3, [r4]
005a4f9c  04 20 94 e5                                      ldr r2, [r4, #4]
005a4fa0  1c a0 8a e2                                      add sl, sl, #0x1c
005a4fa4  02 20 63 e0                                      rsb r2, r3, r2
005a4fa8  42 21 a0 e1                                      asr r2, r2, #2
005a4fac  82 11 82 e0                                      add r1, r2, r2, lsl #3
005a4fb0  01 13 81 e0                                      add r1, r1, r1, lsl #6
005a4fb4  81 11 82 e0                                      add r1, r2, r1, lsl #3
005a4fb8  81 17 81 e0                                      add r1, r1, r1, lsl #15
005a4fbc  81 21 82 e0                                      add r2, r2, r1, lsl #3
005a4fc0  00 20 62 e2                                      rsb r2, r2, #0
005a4fc4  02 00 5b e1                                      cmp fp, r2
005a4fc8  c5 ff ff 2a                                      bhs #0x5a4ee4
005a4fcc  0a 30 83 e0                                      add r3, r3, sl
005a4fd0  03 10 a0 e1                                      mov r1, r3
005a4fd4  05 00 a0 e1                                      mov r0, r5
005a4fd8  20 30 8d e5                                      str r3, [sp, #0x20]
005a4fdc  a1 f4 ff eb                                      bl #0x5a2268
005a4fe0  00 20 96 e5                                      ldr r2, [r6]
005a4fe4  00 70 a0 e1                                      mov r7, r0
005a4fe8  01 b0 8b e2                                      add fp, fp, #1
005a4fec  00 00 52 e3                                      cmp r2, #0
005a4ff0  1c 00 8d e5                                      str r0, [sp, #0x1c]
005a4ff4  d1 ff ff 0a                                      beq #0x5a4f40
005a4ff8  00 00 99 e5                                      ldr r0, [sb]
005a4ffc  07 10 a0 e1                                      mov r1, r7
005a5000  c1 a5 f5 eb                                      bl #0x30e70c
005a5004  00 00 50 e3                                      cmp r0, #0
005a5008  00 70 89 15                                      strne r7, [sb]
005a500c  08 00 a0 e1                                      mov r0, r8
005a5010  10 10 9d e5                                      ldr r1, [sp, #0x10]
005a5014  2c ff ff eb                                      bl #0x5a4ccc
005a5018  00 30 96 e5                                      ldr r3, [r6]
005a501c  01 30 43 e2                                      sub r3, r3, #1
005a5020  00 30 86 e5                                      str r3, [r6]
005a5024  db ff ff ea                                      b #0x5a4f98
005a5028  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005a502c  f1 ff ff ea                                      b #0x5a4ff8

; FUNCTION 0x005a5030, declared_size=248, range_size=248, mode=arm
; class-group: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >
; alias: _ZNK6glitch4core7CKdTreeISt4pairIjNS0_8aabbox3dIfEEEE12findKNearestEjRKS5_RSt6vectorIS5_NS0_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::findKNearest(unsigned int, std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, glitch::core::SAllocator<std::pair<unsigned int, glitch::core::aabbox3d<float> >, (glitch::memory::E_MEMORY_HINT)0> >&) const
; decoder-mode: arm
005a5030  70 40 2d e9                                      push {r4, r5, r6, lr}
005a5034  28 d0 4d e2                                      sub sp, sp, #0x28
005a5038  00 e0 a0 e3                                      mov lr, #0
005a503c  0c 60 8d e2                                      add r6, sp, #0xc
005a5040  00 c0 a0 e3                                      mov ip, #0
005a5044  20 10 8d e5                                      str r1, [sp, #0x20]
005a5048  1c e0 8d e5                                      str lr, [sp, #0x1c]
005a504c  03 40 a0 e1                                      mov r4, r3
005a5050  1c e0 8d e2                                      add lr, sp, #0x1c
005a5054  06 30 a0 e1                                      mov r3, r6
005a5058  20 10 8d e2                                      add r1, sp, #0x20
005a505c  14 c0 8d e5                                      str ip, [sp, #0x14]
005a5060  04 e0 8d e5                                      str lr, [sp, #4]
005a5064  0c c0 8d e5                                      str ip, [sp, #0xc]
005a5068  10 c0 8d e5                                      str ip, [sp, #0x10]
005a506c  00 00 8d e5                                      str r0, [sp]
005a5070  6b ff ff eb                                      bl #0x5a4e24
005a5074  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005a5078  10 20 9d e5                                      ldr r2, [sp, #0x10]
005a507c  02 00 53 e1                                      cmp r3, r2
005a5080  21 00 00 0a                                      beq #0x5a510c
005a5084  24 50 8d e2                                      add r5, sp, #0x24
005a5088  04 10 94 e5                                      ldr r1, [r4, #4]
005a508c  08 00 94 e5                                      ldr r0, [r4, #8]
005a5090  04 20 93 e5                                      ldr r2, [r3, #4]
005a5094  00 00 51 e1                                      cmp r1, r0
005a5098  1f 00 00 0a                                      beq #0x5a511c
005a509c  00 30 92 e5                                      ldr r3, [r2]
005a50a0  00 30 81 e5                                      str r3, [r1]
005a50a4  04 30 92 e5                                      ldr r3, [r2, #4]
005a50a8  04 30 81 e5                                      str r3, [r1, #4]
005a50ac  08 30 92 e5                                      ldr r3, [r2, #8]
005a50b0  08 30 81 e5                                      str r3, [r1, #8]
005a50b4  0c 30 92 e5                                      ldr r3, [r2, #0xc]
005a50b8  0c 30 81 e5                                      str r3, [r1, #0xc]
005a50bc  10 30 92 e5                                      ldr r3, [r2, #0x10]
005a50c0  10 30 81 e5                                      str r3, [r1, #0x10]
005a50c4  14 30 92 e5                                      ldr r3, [r2, #0x14]
005a50c8  14 30 81 e5                                      str r3, [r1, #0x14]
005a50cc  18 30 92 e5                                      ldr r3, [r2, #0x18]
005a50d0  18 30 81 e5                                      str r3, [r1, #0x18]
005a50d4  04 30 94 e5                                      ldr r3, [r4, #4]
005a50d8  1c 30 83 e2                                      add r3, r3, #0x1c
005a50dc  04 30 84 e5                                      str r3, [r4, #4]
005a50e0  00 20 a0 e3                                      mov r2, #0
005a50e4  05 30 a0 e1                                      mov r3, r5
005a50e8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005a50ec  10 10 9d e5                                      ldr r1, [sp, #0x10]
005a50f0  c7 f9 ff eb                                      bl #0x5a3814
005a50f4  10 20 9d e5                                      ldr r2, [sp, #0x10]
005a50f8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005a50fc  08 20 42 e2                                      sub r2, r2, #8
005a5100  03 00 52 e1                                      cmp r2, r3
005a5104  10 20 8d e5                                      str r2, [sp, #0x10]
005a5108  de ff ff 1a                                      bne #0x5a5088
005a510c  06 00 a0 e1                                      mov r0, r6
005a5110  fe fa ff eb                                      bl #0x5a3d10
005a5114  28 d0 8d e2                                      add sp, sp, #0x28
005a5118  70 80 bd e8                                      pop {r4, r5, r6, pc}
005a511c  04 00 a0 e1                                      mov r0, r4
005a5120  9a f7 ff eb                                      bl #0x5a2f90
005a5124  ed ff ff ea                                      b #0x5a50e0
