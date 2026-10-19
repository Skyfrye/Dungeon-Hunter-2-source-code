; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081b888, declared_size=232, range_size=232, mode=arm
; class-group: std::vector<tTRANSPORT_TYPE, std::allocator<tTRANSPORT_TYPE> >
; alias: _ZNSt6vectorI15tTRANSPORT_TYPESaIS0_EE22_M_insert_overflow_auxEPS0_RKS0_RKSt12__false_typejb.clone.1
; demangled: std::vector<tTRANSPORT_TYPE, std::allocator<tTRANSPORT_TYPE> >::_M_insert_overflow_aux(tTRANSPORT_TYPE*, tTRANSPORT_TYPE const&, std::__false_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
0081b888  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081b88c  00 50 a0 e1                                      mov r5, r0
0081b890  00 30 95 e5                                      ldr r3, [r5]
0081b894  04 00 90 e5                                      ldr r0, [r0, #4]
0081b898  01 70 a0 e1                                      mov r7, r1
0081b89c  08 d0 4d e2                                      sub sp, sp, #8
0081b8a0  00 30 63 e0                                      rsb r3, r3, r0
0081b8a4  43 31 a0 e1                                      asr r3, r3, #2
0081b8a8  01 00 53 e3                                      cmp r3, #1
0081b8ac  03 10 83 20                                      addhs r1, r3, r3
0081b8b0  01 10 83 32                                      addlo r1, r3, #1
0081b8b4  07 01 71 e3                                      cmn r1, #0xc0000001
0081b8b8  02 80 a0 e1                                      mov r8, r2
0081b8bc  29 00 00 8a                                      bhi #0x81b968
0081b8c0  01 00 53 e1                                      cmp r3, r1
0081b8c4  27 00 00 8a                                      bhi #0x81b968
0081b8c8  08 20 8d e2                                      add r2, sp, #8
0081b8cc  08 60 85 e2                                      add r6, r5, #8
0081b8d0  04 10 22 e5                                      str r1, [r2, #-4]!
0081b8d4  06 00 a0 e1                                      mov r0, r6
0081b8d8  f2 fc ff eb                                      bl #0x81aca8
0081b8dc  00 40 a0 e1                                      mov r4, r0
0081b8e0  00 00 95 e5                                      ldr r0, [r5]
0081b8e4  07 70 60 e0                                      rsb r7, r0, r7
0081b8e8  47 71 a0 e1                                      asr r7, r7, #2
0081b8ec  00 00 57 e3                                      cmp r7, #0
0081b8f0  04 70 a0 d1                                      movle r7, r4
0081b8f4  07 00 00 da                                      ble #0x81b918
0081b8f8  07 20 a0 e1                                      mov r2, r7
0081b8fc  00 30 a0 e3                                      mov r3, #0
0081b900  03 10 90 e7                                      ldr r1, [r0, r3]
0081b904  01 20 52 e2                                      subs r2, r2, #1
0081b908  03 10 84 e7                                      str r1, [r4, r3]
0081b90c  04 30 83 e2                                      add r3, r3, #4
0081b910  fa ff ff 1a                                      bne #0x81b900
0081b914  07 71 84 e0                                      add r7, r4, r7, lsl #2
0081b918  00 30 98 e5                                      ldr r3, [r8]
0081b91c  06 00 a0 e1                                      mov r0, r6
0081b920  04 30 87 e4                                      str r3, [r7], #4
0081b924  0a 00 95 e8                                      ldm r5, {r1, r3}
0081b928  01 00 53 e1                                      cmp r3, r1
0081b92c  04 20 43 12                                      subne r2, r3, #4
0081b930  02 20 61 10                                      rsbne r2, r1, r2
0081b934  22 21 e0 11                                      mvnne r2, r2, lsr #2
0081b938  02 31 83 10                                      addne r3, r3, r2, lsl #2
0081b93c  08 20 95 e5                                      ldr r2, [r5, #8]
0081b940  03 10 a0 e1                                      mov r1, r3
0081b944  02 30 63 e0                                      rsb r3, r3, r2
0081b948  43 21 a0 e1                                      asr r2, r3, #2
0081b94c  f0 fc ff eb                                      bl #0x81ad14
0081b950  04 30 9d e5                                      ldr r3, [sp, #4]
0081b954  90 00 85 e8                                      stm r5, {r4, r7}
0081b958  03 41 84 e0                                      add r4, r4, r3, lsl #2
0081b95c  08 40 85 e5                                      str r4, [r5, #8]
0081b960  08 d0 8d e2                                      add sp, sp, #8
0081b964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081b968  03 11 e0 e3                                      mvn r1, #0xc0000000
0081b96c  d5 ff ff ea                                      b #0x81b8c8
