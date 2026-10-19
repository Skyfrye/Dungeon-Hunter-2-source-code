; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00494d58, declared_size=124, range_size=124, mode=arm
; class-group: VisualFXManager::AnimatedFXInfo* std::priv
; alias: _ZNSt4priv6__copyIPN15VisualFXManager14AnimatedFXInfoES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: VisualFXManager::AnimatedFXInfo* std::priv::__copy<VisualFXManager::AnimatedFXInfo*, VisualFXManager::AnimatedFXInfo*, int>(VisualFXManager::AnimatedFXInfo*, VisualFXManager::AnimatedFXInfo*, VisualFXManager::AnimatedFXInfo*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00494d58  01 30 60 e0                                      rsb r3, r0, r1
00494d5c  c3 31 a0 e1                                      asr r3, r3, #3
00494d60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00494d64  03 91 83 e0                                      add sb, r3, r3, lsl #2
00494d68  00 40 a0 e1                                      mov r4, r0
00494d6c  09 92 89 e0                                      add sb, sb, sb, lsl #4
00494d70  02 a0 a0 e1                                      mov sl, r2
00494d74  09 94 89 e0                                      add sb, sb, sb, lsl #8
00494d78  09 98 89 e0                                      add sb, sb, sb, lsl #16
00494d7c  89 90 83 e0                                      add sb, r3, sb, lsl #1
00494d80  00 00 59 e3                                      cmp sb, #0
00494d84  10 00 00 da                                      ble #0x494dcc
00494d88  09 60 a0 e1                                      mov r6, sb
00494d8c  00 50 a0 e3                                      mov r5, #0
00494d90  05 30 94 e7                                      ldr r3, [r4, r5]
00494d94  05 70 84 e0                                      add r7, r4, r5
00494d98  05 80 8a e0                                      add r8, sl, r5
00494d9c  05 30 8a e7                                      str r3, [sl, r5]
00494da0  04 10 87 e2                                      add r1, r7, #4
00494da4  04 00 88 e2                                      add r0, r8, #4
00494da8  28 fc ff eb                                      bl #0x493e50
00494dac  10 00 88 e2                                      add r0, r8, #0x10
00494db0  10 10 87 e2                                      add r1, r7, #0x10
00494db4  c0 ff ff eb                                      bl #0x494cbc
00494db8  01 60 56 e2                                      subs r6, r6, #1
00494dbc  18 50 85 e2                                      add r5, r5, #0x18
00494dc0  f2 ff ff 1a                                      bne #0x494d90
00494dc4  18 30 a0 e3                                      mov r3, #0x18
00494dc8  93 a9 2a e0                                      mla sl, r3, sb, sl
00494dcc  0a 00 a0 e1                                      mov r0, sl
00494dd0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
