; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ba818, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch5scene24CDefaultSceneNodeFactory18SSceneNodeTypePairES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair* std::priv::__ucopy<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair*, glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair*, int>(glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair*, glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair*, glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006ba818  01 30 60 e0                                      rsb r3, r0, r1
006ba81c  43 31 a0 e1                                      asr r3, r3, #2
006ba820  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ba824  83 71 83 e0                                      add r7, r3, r3, lsl #3
006ba828  00 50 a0 e1                                      mov r5, r0
006ba82c  07 73 87 e0                                      add r7, r7, r7, lsl #6
006ba830  02 80 a0 e1                                      mov r8, r2
006ba834  87 71 83 e0                                      add r7, r3, r7, lsl #3
006ba838  87 77 87 e0                                      add r7, r7, r7, lsl #15
006ba83c  87 71 83 e0                                      add r7, r3, r7, lsl #3
006ba840  00 70 67 e2                                      rsb r7, r7, #0
006ba844  00 00 57 e3                                      cmp r7, #0
006ba848  07 60 a0 c1                                      movgt r6, r7
006ba84c  02 40 a0 c1                                      movgt r4, r2
006ba850  01 00 00 ca                                      bgt #0x6ba85c
006ba854  0e 00 00 ea                                      b #0x6ba894
006ba858  1c 50 85 e2                                      add r5, r5, #0x1c
006ba85c  00 30 95 e5                                      ldr r3, [r5]
006ba860  04 00 a0 e1                                      mov r0, r4
006ba864  04 30 80 e4                                      str r3, [r0], #4
006ba868  14 00 84 e5                                      str r0, [r4, #0x14]
006ba86c  18 00 84 e5                                      str r0, [r4, #0x18]
006ba870  18 10 95 e5                                      ldr r1, [r5, #0x18]
006ba874  14 20 95 e5                                      ldr r2, [r5, #0x14]
006ba878  dd ad f1 eb                                      bl #0x325ff4
006ba87c  01 60 56 e2                                      subs r6, r6, #1
006ba880  1c 40 84 e2                                      add r4, r4, #0x1c
006ba884  f3 ff ff 1a                                      bne #0x6ba858
006ba888  1c 00 a0 e3                                      mov r0, #0x1c
006ba88c  90 87 20 e0                                      mla r0, r0, r7, r8
006ba890  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006ba894  02 00 a0 e1                                      mov r0, r2
006ba898  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
