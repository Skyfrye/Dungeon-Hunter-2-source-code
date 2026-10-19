; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060b454, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::CAnimationBlock** std::priv
; alias: _ZNSt4priv13__lower_boundIPPN6glitch7collada15CAnimationBlockENS2_24SAnimationBlockSearchKeyENS2_21CAnimationBlockSearchES7_iEET_S8_S8_RKT0_T1_T2_PT3_
; demangled: glitch::collada::CAnimationBlock** std::priv::__lower_bound<glitch::collada::CAnimationBlock**, glitch::collada::SAnimationBlockSearchKey, glitch::collada::CAnimationBlockSearch, glitch::collada::CAnimationBlockSearch, int>(glitch::collada::CAnimationBlock**, glitch::collada::CAnimationBlock**, glitch::collada::SAnimationBlockSearchKey const&, glitch::collada::CAnimationBlockSearch, glitch::collada::CAnimationBlockSearch, int*)
; decoder-mode: arm
0060b454  01 10 60 e0                                      rsb r1, r0, r1
0060b458  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
0060b45c  41 51 a0 e1                                      asr r5, r1, #2
0060b460  00 00 55 e3                                      cmp r5, #0
0060b464  13 00 00 da                                      ble #0x60b4b8
0060b468  c5 30 a0 e1                                      asr r3, r5, #1
0060b46c  03 11 90 e7                                      ldr r1, [r0, r3, lsl #2]
0060b470  00 70 92 e5                                      ldr r7, [r2]
0060b474  03 a1 80 e0                                      add sl, r0, r3, lsl #2
0060b478  04 40 91 e5                                      ldr r4, [r1, #4]
0060b47c  00 70 57 e2                                      subs r7, r7, #0
0060b480  01 70 a0 13                                      movne r7, #1
0060b484  07 90 a0 e1                                      mov sb, r7
0060b488  00 c0 54 e2                                      subs ip, r4, #0
0060b48c  01 c0 a0 13                                      movne ip, #1
0060b490  07 00 5c e1                                      cmp ip, r7
0060b494  0c 80 91 e5                                      ldr r8, [r1, #0xc]
0060b498  08 b0 92 e5                                      ldr fp, [r2, #8]
0060b49c  0c 40 a0 a1                                      movge r4, ip
0060b4a0  09 00 00 aa                                      bge #0x60b4cc
0060b4a4  01 50 45 e2                                      sub r5, r5, #1
0060b4a8  05 50 63 e0                                      rsb r5, r3, r5
0060b4ac  00 00 55 e3                                      cmp r5, #0
0060b4b0  04 00 8a e2                                      add r0, sl, #4
0060b4b4  eb ff ff ca                                      bgt #0x60b468
0060b4b8  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
0060b4bc  1e ff 2f e1                                      bx lr
0060b4c0  00 40 54 e2                                      subs r4, r4, #0
0060b4c4  01 40 a0 13                                      movne r4, #1
0060b4c8  0c 30 a0 e1                                      mov r3, ip
0060b4cc  04 00 59 e1                                      cmp sb, r4
0060b4d0  c3 c0 a0 e1                                      asr ip, r3, #1
0060b4d4  0c 00 00 0a                                      beq #0x60b50c
0060b4d8  00 00 53 e3                                      cmp r3, #0
0060b4dc  f5 ff ff 0a                                      beq #0x60b4b8
0060b4e0  0c 11 90 e7                                      ldr r1, [r0, ip, lsl #2]
0060b4e4  0c a1 80 e0                                      add sl, r0, ip, lsl #2
0060b4e8  03 50 a0 e1                                      mov r5, r3
0060b4ec  04 40 91 e5                                      ldr r4, [r1, #4]
0060b4f0  0c 80 91 e5                                      ldr r8, [r1, #0xc]
0060b4f4  00 60 54 e2                                      subs r6, r4, #0
0060b4f8  01 60 a0 13                                      movne r6, #1
0060b4fc  07 00 56 e1                                      cmp r6, r7
0060b500  ee ff ff aa                                      bge #0x60b4c0
0060b504  0c 30 a0 e1                                      mov r3, ip
0060b508  e5 ff ff ea                                      b #0x60b4a4
0060b50c  08 00 5b e1                                      cmp fp, r8
0060b510  e3 ff ff 8a                                      bhi #0x60b4a4
0060b514  ef ff ff 1a                                      bne #0x60b4d8
0060b518  10 40 91 e5                                      ldr r4, [r1, #0x10]
0060b51c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0060b520  04 40 94 e5                                      ldr r4, [r4, #4]
0060b524  01 00 54 e1                                      cmp r4, r1
0060b528  ea ff ff aa                                      bge #0x60b4d8
0060b52c  dc ff ff ea                                      b #0x60b4a4

; FUNCTION 0x0060b530, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::CAnimationBlock** std::priv
; alias: _ZNSt4priv13__lower_boundIPPN6glitch7collada15CAnimationBlockES4_NS2_28CAnimationBlockSearchCompareES6_iEET_S7_S7_RKT0_T1_T2_PT3_
; demangled: glitch::collada::CAnimationBlock** std::priv::__lower_bound<glitch::collada::CAnimationBlock**, glitch::collada::CAnimationBlock*, glitch::collada::CAnimationBlockSearchCompare, glitch::collada::CAnimationBlockSearchCompare, int>(glitch::collada::CAnimationBlock**, glitch::collada::CAnimationBlock**, glitch::collada::CAnimationBlock* const&, glitch::collada::CAnimationBlockSearchCompare, glitch::collada::CAnimationBlockSearchCompare, int*)
; decoder-mode: arm
0060b530  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
0060b534  01 10 60 e0                                      rsb r1, r0, r1
0060b538  41 41 a0 e1                                      asr r4, r1, #2
0060b53c  08 d0 4d e2                                      sub sp, sp, #8
0060b540  00 00 54 e3                                      cmp r4, #0
0060b544  04 20 8d e5                                      str r2, [sp, #4]
0060b548  15 00 00 da                                      ble #0x60b5a4
0060b54c  04 10 9d e5                                      ldr r1, [sp, #4]
0060b550  c4 30 a0 e1                                      asr r3, r4, #1
0060b554  03 21 90 e7                                      ldr r2, [r0, r3, lsl #2]
0060b558  00 90 91 e5                                      ldr sb, [r1]
0060b55c  03 81 80 e0                                      add r8, r0, r3, lsl #2
0060b560  04 c0 92 e5                                      ldr ip, [r2, #4]
0060b564  04 60 99 e5                                      ldr r6, [sb, #4]
0060b568  0c 70 92 e5                                      ldr r7, [r2, #0xc]
0060b56c  00 10 5c e2                                      subs r1, ip, #0
0060b570  01 10 a0 13                                      movne r1, #1
0060b574  00 60 56 e2                                      subs r6, r6, #0
0060b578  01 60 a0 13                                      movne r6, #1
0060b57c  06 00 51 e1                                      cmp r1, r6
0060b580  06 a0 a0 e1                                      mov sl, r6
0060b584  0c b0 99 e5                                      ldr fp, [sb, #0xc]
0060b588  01 c0 a0 a1                                      movge ip, r1
0060b58c  0a 00 00 aa                                      bge #0x60b5bc
0060b590  01 40 44 e2                                      sub r4, r4, #1
0060b594  04 40 63 e0                                      rsb r4, r3, r4
0060b598  00 00 54 e3                                      cmp r4, #0
0060b59c  04 00 88 e2                                      add r0, r8, #4
0060b5a0  e9 ff ff ca                                      bgt #0x60b54c
0060b5a4  08 d0 8d e2                                      add sp, sp, #8
0060b5a8  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
0060b5ac  1e ff 2f e1                                      bx lr
0060b5b0  00 c0 5c e2                                      subs ip, ip, #0
0060b5b4  01 c0 a0 13                                      movne ip, #1
0060b5b8  01 30 a0 e1                                      mov r3, r1
0060b5bc  0c 00 5a e1                                      cmp sl, ip
0060b5c0  c3 10 a0 e1                                      asr r1, r3, #1
0060b5c4  0c 00 00 0a                                      beq #0x60b5fc
0060b5c8  00 00 53 e3                                      cmp r3, #0
0060b5cc  f4 ff ff 0a                                      beq #0x60b5a4
0060b5d0  01 21 90 e7                                      ldr r2, [r0, r1, lsl #2]
0060b5d4  01 81 80 e0                                      add r8, r0, r1, lsl #2
0060b5d8  03 40 a0 e1                                      mov r4, r3
0060b5dc  04 c0 92 e5                                      ldr ip, [r2, #4]
0060b5e0  0c 70 92 e5                                      ldr r7, [r2, #0xc]
0060b5e4  00 50 5c e2                                      subs r5, ip, #0
0060b5e8  01 50 a0 13                                      movne r5, #1
0060b5ec  06 00 55 e1                                      cmp r5, r6
0060b5f0  ee ff ff aa                                      bge #0x60b5b0
0060b5f4  01 30 a0 e1                                      mov r3, r1
0060b5f8  e4 ff ff ea                                      b #0x60b590
0060b5fc  07 00 5b e1                                      cmp fp, r7
0060b600  e2 ff ff 8a                                      bhi #0x60b590
0060b604  ef ff ff 1a                                      bne #0x60b5c8
0060b608  10 c0 92 e5                                      ldr ip, [r2, #0x10]
0060b60c  10 20 99 e5                                      ldr r2, [sb, #0x10]
0060b610  00 c0 9c e5                                      ldr ip, [ip]
0060b614  00 20 92 e5                                      ldr r2, [r2]
0060b618  02 00 5c e1                                      cmp ip, r2
0060b61c  e9 ff ff aa                                      bge #0x60b5c8
0060b620  da ff ff ea                                      b #0x60b590
