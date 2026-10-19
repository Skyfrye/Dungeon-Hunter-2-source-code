; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00415708, declared_size=116, range_size=116, mode=arm
; class-group: FSCommandParam* std::priv
; alias: _ZNSt4priv6__copyIP14FSCommandParamS2_iEET0_T_S4_S3_RKSt26random_access_iterator_tagPT1_
; demangled: FSCommandParam* std::priv::__copy<FSCommandParam*, FSCommandParam*, int>(FSCommandParam*, FSCommandParam*, FSCommandParam*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00415708  01 30 60 e0                                      rsb r3, r0, r1
0041570c  c3 31 a0 e1                                      asr r3, r3, #3
00415710  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00415714  03 81 83 e0                                      add r8, r3, r3, lsl #2
00415718  00 40 a0 e1                                      mov r4, r0
0041571c  08 82 88 e0                                      add r8, r8, r8, lsl #4
00415720  02 70 a0 e1                                      mov r7, r2
00415724  08 84 88 e0                                      add r8, r8, r8, lsl #8
00415728  08 88 88 e0                                      add r8, r8, r8, lsl #16
0041572c  88 80 83 e0                                      add r8, r3, r8, lsl #1
00415730  00 00 58 e3                                      cmp r8, #0
00415734  0e 00 00 da                                      ble #0x415774
00415738  08 60 a0 e1                                      mov r6, r8
0041573c  02 50 a0 e1                                      mov r5, r2
00415740  00 00 00 ea                                      b #0x415748
00415744  18 40 84 e2                                      add r4, r4, #0x18
00415748  04 00 55 e1                                      cmp r5, r4
0041574c  05 00 a0 e1                                      mov r0, r5
00415750  02 00 00 0a                                      beq #0x415760
00415754  14 10 94 e5                                      ldr r1, [r4, #0x14]
00415758  10 20 94 e5                                      ldr r2, [r4, #0x10]
0041575c  9f ec fb eb                                      bl #0x3109e0
00415760  01 60 56 e2                                      subs r6, r6, #1
00415764  18 50 85 e2                                      add r5, r5, #0x18
00415768  f5 ff ff 1a                                      bne #0x415744
0041576c  18 30 a0 e3                                      mov r3, #0x18
00415770  93 78 27 e0                                      mla r7, r3, r8, r7
00415774  07 00 a0 e1                                      mov r0, r7
00415778  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
