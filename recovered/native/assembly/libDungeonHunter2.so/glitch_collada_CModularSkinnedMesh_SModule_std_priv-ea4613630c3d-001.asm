; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00646cfc, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh::SModule* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch7collada19CModularSkinnedMesh7SModuleES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::collada::CModularSkinnedMesh::SModule* std::priv::__copy<glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule*, int>(glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00646cfc  01 10 60 e0                                      rsb r1, r0, r1
00646d00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00646d04  c1 51 a0 e1                                      asr r5, r1, #3
00646d08  00 00 55 e3                                      cmp r5, #0
00646d0c  00 40 a0 e1                                      mov r4, r0
00646d10  02 80 a0 e1                                      mov r8, r2
00646d14  13 00 00 da                                      ble #0x646d68
00646d18  05 70 a0 e1                                      mov r7, r5
00646d1c  00 60 a0 e3                                      mov r6, #0
00646d20  04 30 a0 e1                                      mov r3, r4
00646d24  06 10 b3 e7                                      ldr r1, [r3, r6]!
00646d28  06 20 88 e0                                      add r2, r8, r6
00646d2c  06 10 88 e7                                      str r1, [r8, r6]
00646d30  04 30 93 e5                                      ldr r3, [r3, #4]
00646d34  08 60 86 e2                                      add r6, r6, #8
00646d38  00 00 53 e3                                      cmp r3, #0
00646d3c  04 10 93 15                                      ldrne r1, [r3, #4]
00646d40  01 10 81 12                                      addne r1, r1, #1
00646d44  04 10 83 15                                      strne r1, [r3, #4]
00646d48  04 00 92 e5                                      ldr r0, [r2, #4]
00646d4c  04 30 82 e5                                      str r3, [r2, #4]
00646d50  00 00 50 e3                                      cmp r0, #0
00646d54  00 00 00 0a                                      beq #0x646d5c
00646d58  09 5a f3 eb                                      bl #0x31d584
00646d5c  01 70 57 e2                                      subs r7, r7, #1
00646d60  ee ff ff 1a                                      bne #0x646d20
00646d64  85 81 88 e0                                      add r8, r8, r5, lsl #3
00646d68  08 00 a0 e1                                      mov r0, r8
00646d6c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00646de0, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh::SModule* std::priv
; alias: _ZNSt4priv15__copy_backwardIPN6glitch7collada19CModularSkinnedMesh7SModuleES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::collada::CModularSkinnedMesh::SModule* std::priv::__copy_backward<glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule*, int>(glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00646de0  01 00 60 e0                                      rsb r0, r0, r1
00646de4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00646de8  c0 41 a0 e1                                      asr r4, r0, #3
00646dec  00 00 54 e3                                      cmp r4, #0
00646df0  02 80 a0 e1                                      mov r8, r2
00646df4  14 00 00 da                                      ble #0x646e4c
00646df8  01 60 a0 e1                                      mov r6, r1
00646dfc  02 50 a0 e1                                      mov r5, r2
00646e00  04 70 a0 e1                                      mov r7, r4
00646e04  08 30 16 e5                                      ldr r3, [r6, #-8]
00646e08  08 30 05 e5                                      str r3, [r5, #-8]
00646e0c  04 30 16 e5                                      ldr r3, [r6, #-4]
00646e10  08 60 46 e2                                      sub r6, r6, #8
00646e14  00 00 53 e3                                      cmp r3, #0
00646e18  04 20 93 15                                      ldrne r2, [r3, #4]
00646e1c  01 20 82 12                                      addne r2, r2, #1
00646e20  04 20 83 15                                      strne r2, [r3, #4]
00646e24  04 00 15 e5                                      ldr r0, [r5, #-4]
00646e28  04 30 05 e5                                      str r3, [r5, #-4]
00646e2c  08 50 45 e2                                      sub r5, r5, #8
00646e30  00 00 50 e3                                      cmp r0, #0
00646e34  00 00 00 0a                                      beq #0x646e3c
00646e38  d1 59 f3 eb                                      bl #0x31d584
00646e3c  01 70 57 e2                                      subs r7, r7, #1
00646e40  ef ff ff 1a                                      bne #0x646e04
00646e44  07 30 e0 e3                                      mvn r3, #7
00646e48  93 84 28 e0                                      mla r8, r3, r4, r8
00646e4c  08 00 a0 e1                                      mov r0, r8
00646e50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
