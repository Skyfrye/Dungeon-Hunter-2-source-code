; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066bd00, declared_size=100, range_size=100, mode=arm
; class-group: glitch::core::CMatrix4<float>* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch4core8CMatrix4IfEES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::core::CMatrix4<float>* std::priv::__copy<glitch::core::CMatrix4<float>*, glitch::core::CMatrix4<float>*, int>(glitch::core::CMatrix4<float>*, glitch::core::CMatrix4<float>*, glitch::core::CMatrix4<float>*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0066bd00  01 30 60 e0                                      rsb r3, r0, r1
0066bd04  43 31 a0 e1                                      asr r3, r3, #2
0066bd08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066bd0c  03 82 a0 e1                                      lsl r8, r3, #4
0066bd10  08 80 63 e0                                      rsb r8, r3, r8
0066bd14  08 84 88 e0                                      add r8, r8, r8, lsl #8
0066bd18  00 70 a0 e1                                      mov r7, r0
0066bd1c  08 88 88 e0                                      add r8, r8, r8, lsl #16
0066bd20  02 60 a0 e1                                      mov r6, r2
0066bd24  08 82 83 e0                                      add r8, r3, r8, lsl #4
0066bd28  00 00 58 e3                                      cmp r8, #0
0066bd2c  0a 00 00 da                                      ble #0x66bd5c
0066bd30  08 50 a0 e1                                      mov r5, r8
0066bd34  00 40 a0 e3                                      mov r4, #0
0066bd38  04 00 86 e0                                      add r0, r6, r4
0066bd3c  04 10 87 e0                                      add r1, r7, r4
0066bd40  41 20 a0 e3                                      mov r2, #0x41
0066bd44  c7 8a f2 eb                                      bl #0x30e868
0066bd48  01 50 55 e2                                      subs r5, r5, #1
0066bd4c  44 40 84 e2                                      add r4, r4, #0x44
0066bd50  f8 ff ff 1a                                      bne #0x66bd38
0066bd54  44 30 a0 e3                                      mov r3, #0x44
0066bd58  93 68 26 e0                                      mla r6, r3, r8, r6
0066bd5c  06 00 a0 e1                                      mov r0, r6
0066bd60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066bd64, declared_size=116, range_size=116, mode=arm
; class-group: glitch::core::CMatrix4<float>* std::priv
; alias: _ZNSt4priv15__copy_backwardIPN6glitch4core8CMatrix4IfEES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::core::CMatrix4<float>* std::priv::__copy_backward<glitch::core::CMatrix4<float>*, glitch::core::CMatrix4<float>*, int>(glitch::core::CMatrix4<float>*, glitch::core::CMatrix4<float>*, glitch::core::CMatrix4<float>*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0066bd64  01 30 60 e0                                      rsb r3, r0, r1
0066bd68  43 31 a0 e1                                      asr r3, r3, #2
0066bd6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066bd70  03 82 a0 e1                                      lsl r8, r3, #4
0066bd74  08 80 63 e0                                      rsb r8, r3, r8
0066bd78  08 84 88 e0                                      add r8, r8, r8, lsl #8
0066bd7c  01 40 a0 e1                                      mov r4, r1
0066bd80  08 88 88 e0                                      add r8, r8, r8, lsl #16
0066bd84  02 70 a0 e1                                      mov r7, r2
0066bd88  08 82 83 e0                                      add r8, r3, r8, lsl #4
0066bd8c  00 00 58 e3                                      cmp r8, #0
0066bd90  0e 00 00 da                                      ble #0x66bdd0
0066bd94  02 60 a0 e1                                      mov r6, r2
0066bd98  08 50 a0 e1                                      mov r5, r8
0066bd9c  44 60 46 e2                                      sub r6, r6, #0x44
0066bda0  44 40 44 e2                                      sub r4, r4, #0x44
0066bda4  06 00 a0 e1                                      mov r0, r6
0066bda8  04 10 a0 e1                                      mov r1, r4
0066bdac  41 20 a0 e3                                      mov r2, #0x41
0066bdb0  ac 8a f2 eb                                      bl #0x30e868
0066bdb4  01 50 55 e2                                      subs r5, r5, #1
0066bdb8  f7 ff ff 1a                                      bne #0x66bd9c
0066bdbc  43 30 e0 e3                                      mvn r3, #0x43
0066bdc0  01 80 48 e2                                      sub r8, r8, #1
0066bdc4  93 08 08 e0                                      mul r8, r3, r8
0066bdc8  03 80 88 e0                                      add r8, r8, r3
0066bdcc  08 70 87 e0                                      add r7, r7, r8
0066bdd0  07 00 a0 e1                                      mov r0, r7
0066bdd4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0066bf44, declared_size=88, range_size=88, mode=arm
; class-group: glitch::core::CMatrix4<float>* std::priv
; alias: _ZNSt4priv22__uninitialized_fill_nIPN6glitch4core8CMatrix4IfEEjS4_EET_S6_T0_RKT1_
; demangled: glitch::core::CMatrix4<float>* std::priv::__uninitialized_fill_n<glitch::core::CMatrix4<float>*, unsigned int, glitch::core::CMatrix4<float> >(glitch::core::CMatrix4<float>*, unsigned int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0066bf44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066bf48  44 50 a0 e3                                      mov r5, #0x44
0066bf4c  95 01 25 e0                                      mla r5, r5, r1, r0
0066bf50  00 40 a0 e1                                      mov r4, r0
0066bf54  05 30 60 e0                                      rsb r3, r0, r5
0066bf58  43 31 a0 e1                                      asr r3, r3, #2
0066bf5c  02 70 a0 e1                                      mov r7, r2
0066bf60  03 62 a0 e1                                      lsl r6, r3, #4
0066bf64  06 60 63 e0                                      rsb r6, r3, r6
0066bf68  06 64 86 e0                                      add r6, r6, r6, lsl #8
0066bf6c  06 68 86 e0                                      add r6, r6, r6, lsl #16
0066bf70  06 62 83 e0                                      add r6, r3, r6, lsl #4
0066bf74  00 00 56 e3                                      cmp r6, #0
0066bf78  05 00 00 da                                      ble #0x66bf94
0066bf7c  04 00 a0 e1                                      mov r0, r4
0066bf80  07 10 a0 e1                                      mov r1, r7
0066bf84  e6 ff ff eb                                      bl #0x66bf24
0066bf88  01 60 56 e2                                      subs r6, r6, #1
0066bf8c  44 40 84 e2                                      add r4, r4, #0x44
0066bf90  f9 ff ff 1a                                      bne #0x66bf7c
0066bf94  05 00 a0 e1                                      mov r0, r5
0066bf98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006f67b4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::core::CMatrix4<float>* std::priv
; alias: _ZNSt4priv6__copyIPKN6glitch4core8CMatrix4IfEEPS4_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::core::CMatrix4<float>* std::priv::__copy<glitch::core::CMatrix4<float> const*, glitch::core::CMatrix4<float>*, int>(glitch::core::CMatrix4<float> const*, glitch::core::CMatrix4<float> const*, glitch::core::CMatrix4<float>*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006f67b4  01 30 60 e0                                      rsb r3, r0, r1
006f67b8  43 31 a0 e1                                      asr r3, r3, #2
006f67bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006f67c0  03 82 a0 e1                                      lsl r8, r3, #4
006f67c4  08 80 63 e0                                      rsb r8, r3, r8
006f67c8  08 84 88 e0                                      add r8, r8, r8, lsl #8
006f67cc  00 70 a0 e1                                      mov r7, r0
006f67d0  08 88 88 e0                                      add r8, r8, r8, lsl #16
006f67d4  02 60 a0 e1                                      mov r6, r2
006f67d8  08 82 83 e0                                      add r8, r3, r8, lsl #4
006f67dc  00 00 58 e3                                      cmp r8, #0
006f67e0  0a 00 00 da                                      ble #0x6f6810
006f67e4  08 50 a0 e1                                      mov r5, r8
006f67e8  00 40 a0 e3                                      mov r4, #0
006f67ec  04 00 86 e0                                      add r0, r6, r4
006f67f0  04 10 87 e0                                      add r1, r7, r4
006f67f4  41 20 a0 e3                                      mov r2, #0x41
006f67f8  1a 60 f0 eb                                      bl #0x30e868
006f67fc  01 50 55 e2                                      subs r5, r5, #1
006f6800  44 40 84 e2                                      add r4, r4, #0x44
006f6804  f8 ff ff 1a                                      bne #0x6f67ec
006f6808  44 30 a0 e3                                      mov r3, #0x44
006f680c  93 68 26 e0                                      mla r6, r3, r8, r6
006f6810  06 00 a0 e1                                      mov r0, r6
006f6814  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
