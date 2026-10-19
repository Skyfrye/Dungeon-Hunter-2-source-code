; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006636c4, declared_size=188, range_size=188, mode=arm
; class-group: glitch::collada::SSkinBuffer* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch7collada11SSkinBufferES4_iEET0_T_S6_S5_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::collada::SSkinBuffer* std::priv::__ucopy<glitch::collada::SSkinBuffer*, glitch::collada::SSkinBuffer*, int>(glitch::collada::SSkinBuffer*, glitch::collada::SSkinBuffer*, glitch::collada::SSkinBuffer*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006636c4  01 30 60 e0                                      rsb r3, r0, r1
006636c8  43 31 a0 e1                                      asr r3, r3, #2
006636cc  30 00 2d e9                                      push {r4, r5}
006636d0  83 10 83 e0                                      add r1, r3, r3, lsl #1
006636d4  01 12 81 e0                                      add r1, r1, r1, lsl #4
006636d8  01 14 81 e0                                      add r1, r1, r1, lsl #8
006636dc  01 18 81 e0                                      add r1, r1, r1, lsl #16
006636e0  01 31 83 e0                                      add r3, r3, r1, lsl #2
006636e4  00 00 53 e3                                      cmp r3, #0
006636e8  02 00 a0 d1                                      movle r0, r2
006636ec  21 00 00 da                                      ble #0x663778
006636f0  03 40 a0 e1                                      mov r4, r3
006636f4  02 10 a0 e1                                      mov r1, r2
006636f8  00 c0 90 e5                                      ldr ip, [r0]
006636fc  00 c0 81 e5                                      str ip, [r1]
00663700  00 00 5c e3                                      cmp ip, #0
00663704  04 50 9c 15                                      ldrne r5, [ip, #4]
00663708  01 50 85 12                                      addne r5, r5, #1
0066370c  04 50 8c 15                                      strne r5, [ip, #4]
00663710  04 c0 90 e5                                      ldr ip, [r0, #4]
00663714  04 c0 81 e5                                      str ip, [r1, #4]
00663718  00 00 5c e3                                      cmp ip, #0
0066371c  00 50 9c 15                                      ldrne r5, [ip]
00663720  01 50 85 12                                      addne r5, r5, #1
00663724  00 50 8c 15                                      strne r5, [ip]
00663728  08 c0 90 e5                                      ldr ip, [r0, #8]
0066372c  08 c0 81 e5                                      str ip, [r1, #8]
00663730  00 00 5c e3                                      cmp ip, #0
00663734  00 50 9c 15                                      ldrne r5, [ip]
00663738  01 50 85 12                                      addne r5, r5, #1
0066373c  00 50 8c 15                                      strne r5, [ip]
00663740  0c c0 90 e5                                      ldr ip, [r0, #0xc]
00663744  01 40 54 e2                                      subs r4, r4, #1
00663748  0c c0 81 e5                                      str ip, [r1, #0xc]
0066374c  10 c0 d0 e5                                      ldrb ip, [r0, #0x10]
00663750  10 c0 c1 e5                                      strb ip, [r1, #0x10]
00663754  11 c0 d0 e5                                      ldrb ip, [r0, #0x11]
00663758  11 c0 c1 e5                                      strb ip, [r1, #0x11]
0066375c  12 c0 d0 e5                                      ldrb ip, [r0, #0x12]
00663760  14 00 80 e2                                      add r0, r0, #0x14
00663764  12 c0 c1 e5                                      strb ip, [r1, #0x12]
00663768  14 10 81 e2                                      add r1, r1, #0x14
0066376c  e1 ff ff 1a                                      bne #0x6636f8
00663770  14 00 a0 e3                                      mov r0, #0x14
00663774  90 23 20 e0                                      mla r0, r0, r3, r2
00663778  30 00 bd e8                                      pop {r4, r5}
0066377c  1e ff 2f e1                                      bx lr
