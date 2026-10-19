; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081da68, declared_size=176, range_size=176, mode=arm
; class-group: tMemberInfo* std::priv
; alias: _ZNSt4priv7__ucopyIPK11tMemberInfoPS1_iEET0_T_S6_S5_RKSt26random_access_iterator_tagPT1_
; demangled: tMemberInfo* std::priv::__ucopy<tMemberInfo const*, tMemberInfo*, int>(tMemberInfo const*, tMemberInfo const*, tMemberInfo*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0081da68  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0081da6c  3d 3f 0c e3                                      movw r3, #0xcf3d
0081da70  01 80 60 e0                                      rsb r8, r0, r1
0081da74  48 81 a0 e1                                      asr r8, r8, #2
0081da78  f3 3c 43 e3                                      movt r3, #0x3cf3
0081da7c  93 08 08 e0                                      mul r8, r3, r8
0081da80  00 50 a0 e1                                      mov r5, r0
0081da84  00 00 58 e3                                      cmp r8, #0
0081da88  02 a0 a0 e1                                      mov sl, r2
0081da8c  08 70 a0 c1                                      movgt r7, r8
0081da90  02 60 a0 c1                                      movgt r6, r2
0081da94  1d 00 00 da                                      ble #0x81db10
0081da98  00 30 95 e5                                      ldr r3, [r5]
0081da9c  0c 10 85 e2                                      add r1, r5, #0xc
0081daa0  0c 00 86 e2                                      add r0, r6, #0xc
0081daa4  00 30 86 e5                                      str r3, [r6]
0081daa8  04 30 95 e5                                      ldr r3, [r5, #4]
0081daac  28 40 85 e2                                      add r4, r5, #0x28
0081dab0  04 30 86 e5                                      str r3, [r6, #4]
0081dab4  08 30 95 e5                                      ldr r3, [r5, #8]
0081dab8  08 30 86 e5                                      str r3, [r6, #8]
0081dabc  95 37 ec eb                                      bl #0x32b918
0081dac0  24 30 95 e5                                      ldr r3, [r5, #0x24]
0081dac4  28 c0 86 e2                                      add ip, r6, #0x28
0081dac8  01 70 57 e2                                      subs r7, r7, #1
0081dacc  24 30 86 e5                                      str r3, [r6, #0x24]
0081dad0  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0081dad4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0081dad8  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0081dadc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0081dae0  00 30 94 e5                                      ldr r3, [r4]
0081dae4  00 30 cc e5                                      strb r3, [ip]
0081dae8  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
0081daec  4c 30 86 e5                                      str r3, [r6, #0x4c]
0081daf0  50 30 d5 e5                                      ldrb r3, [r5, #0x50]
0081daf4  54 50 85 e2                                      add r5, r5, #0x54
0081daf8  50 30 c6 e5                                      strb r3, [r6, #0x50]
0081dafc  54 60 86 e2                                      add r6, r6, #0x54
0081db00  e4 ff ff 1a                                      bne #0x81da98
0081db04  54 00 a0 e3                                      mov r0, #0x54
0081db08  90 a8 20 e0                                      mla r0, r0, r8, sl
0081db0c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0081db10  02 00 a0 e1                                      mov r0, r2
0081db14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00822688, declared_size=188, range_size=188, mode=arm
; class-group: tMemberInfo* std::priv
; alias: _ZNSt4priv6__copyIPK11tMemberInfoPS1_iEET0_T_S6_S5_RKSt26random_access_iterator_tagPT1_
; demangled: tMemberInfo* std::priv::__copy<tMemberInfo const*, tMemberInfo*, int>(tMemberInfo const*, tMemberInfo const*, tMemberInfo*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00822688  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0082268c  3d 3f 0c e3                                      movw r3, #0xcf3d
00822690  01 a0 60 e0                                      rsb sl, r0, r1
00822694  4a a1 a0 e1                                      asr sl, sl, #2
00822698  f3 3c 43 e3                                      movt r3, #0x3cf3
0082269c  93 0a 0a e0                                      mul sl, r3, sl
008226a0  00 50 a0 e1                                      mov r5, r0
008226a4  00 00 5a e3                                      cmp sl, #0
008226a8  02 80 a0 e1                                      mov r8, r2
008226ac  22 00 00 da                                      ble #0x82273c
008226b0  0a 70 a0 e1                                      mov r7, sl
008226b4  02 60 a0 e1                                      mov r6, r2
008226b8  00 30 95 e5                                      ldr r3, [r5]
008226bc  0c 00 86 e2                                      add r0, r6, #0xc
008226c0  0c 20 85 e2                                      add r2, r5, #0xc
008226c4  00 30 86 e5                                      str r3, [r6]
008226c8  04 30 95 e5                                      ldr r3, [r5, #4]
008226cc  02 00 50 e1                                      cmp r0, r2
008226d0  04 30 86 e5                                      str r3, [r6, #4]
008226d4  08 30 95 e5                                      ldr r3, [r5, #8]
008226d8  08 30 86 e5                                      str r3, [r6, #8]
008226dc  02 00 00 0a                                      beq #0x8226ec
008226e0  20 10 95 e5                                      ldr r1, [r5, #0x20]
008226e4  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
008226e8  bc b8 eb eb                                      bl #0x3109e0
008226ec  24 30 95 e5                                      ldr r3, [r5, #0x24]
008226f0  28 c0 86 e2                                      add ip, r6, #0x28
008226f4  28 40 85 e2                                      add r4, r5, #0x28
008226f8  24 30 86 e5                                      str r3, [r6, #0x24]
008226fc  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00822700  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00822704  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00822708  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0082270c  00 30 94 e5                                      ldr r3, [r4]
00822710  01 70 57 e2                                      subs r7, r7, #1
00822714  00 30 cc e5                                      strb r3, [ip]
00822718  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
0082271c  4c 30 86 e5                                      str r3, [r6, #0x4c]
00822720  50 30 d5 e5                                      ldrb r3, [r5, #0x50]
00822724  54 50 85 e2                                      add r5, r5, #0x54
00822728  50 30 c6 e5                                      strb r3, [r6, #0x50]
0082272c  54 60 86 e2                                      add r6, r6, #0x54
00822730  e0 ff ff 1a                                      bne #0x8226b8
00822734  54 30 a0 e3                                      mov r3, #0x54
00822738  93 8a 28 e0                                      mla r8, r3, sl, r8
0082273c  08 00 a0 e1                                      mov r0, r8
00822740  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00822a0c, declared_size=188, range_size=188, mode=arm
; class-group: tMemberInfo* std::priv
; alias: _ZNSt4priv6__copyIP11tMemberInfoS2_iEET0_T_S4_S3_RKSt26random_access_iterator_tagPT1_
; demangled: tMemberInfo* std::priv::__copy<tMemberInfo*, tMemberInfo*, int>(tMemberInfo*, tMemberInfo*, tMemberInfo*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00822a0c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00822a10  3d 3f 0c e3                                      movw r3, #0xcf3d
00822a14  01 a0 60 e0                                      rsb sl, r0, r1
00822a18  4a a1 a0 e1                                      asr sl, sl, #2
00822a1c  f3 3c 43 e3                                      movt r3, #0x3cf3
00822a20  93 0a 0a e0                                      mul sl, r3, sl
00822a24  00 50 a0 e1                                      mov r5, r0
00822a28  00 00 5a e3                                      cmp sl, #0
00822a2c  02 80 a0 e1                                      mov r8, r2
00822a30  22 00 00 da                                      ble #0x822ac0
00822a34  02 60 a0 e1                                      mov r6, r2
00822a38  0a 70 a0 e1                                      mov r7, sl
00822a3c  00 30 95 e5                                      ldr r3, [r5]
00822a40  0c 00 86 e2                                      add r0, r6, #0xc
00822a44  0c 20 85 e2                                      add r2, r5, #0xc
00822a48  00 30 86 e5                                      str r3, [r6]
00822a4c  04 30 95 e5                                      ldr r3, [r5, #4]
00822a50  02 00 50 e1                                      cmp r0, r2
00822a54  04 30 86 e5                                      str r3, [r6, #4]
00822a58  08 30 95 e5                                      ldr r3, [r5, #8]
00822a5c  08 30 86 e5                                      str r3, [r6, #8]
00822a60  02 00 00 0a                                      beq #0x822a70
00822a64  20 10 95 e5                                      ldr r1, [r5, #0x20]
00822a68  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
00822a6c  db b7 eb eb                                      bl #0x3109e0
00822a70  24 30 95 e5                                      ldr r3, [r5, #0x24]
00822a74  28 c0 86 e2                                      add ip, r6, #0x28
00822a78  28 40 85 e2                                      add r4, r5, #0x28
00822a7c  24 30 86 e5                                      str r3, [r6, #0x24]
00822a80  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00822a84  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00822a88  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00822a8c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00822a90  00 30 94 e5                                      ldr r3, [r4]
00822a94  01 70 57 e2                                      subs r7, r7, #1
00822a98  00 30 cc e5                                      strb r3, [ip]
00822a9c  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00822aa0  4c 30 86 e5                                      str r3, [r6, #0x4c]
00822aa4  50 30 d5 e5                                      ldrb r3, [r5, #0x50]
00822aa8  54 50 85 e2                                      add r5, r5, #0x54
00822aac  50 30 c6 e5                                      strb r3, [r6, #0x50]
00822ab0  54 60 86 e2                                      add r6, r6, #0x54
00822ab4  e0 ff ff 1a                                      bne #0x822a3c
00822ab8  54 30 a0 e3                                      mov r3, #0x54
00822abc  93 8a 28 e0                                      mla r8, r3, sl, r8
00822ac0  08 00 a0 e1                                      mov r0, r8
00822ac4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
