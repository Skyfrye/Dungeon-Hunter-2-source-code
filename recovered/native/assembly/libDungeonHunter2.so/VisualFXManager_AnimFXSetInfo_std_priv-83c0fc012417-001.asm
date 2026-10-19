; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00494894, declared_size=124, range_size=124, mode=arm
; class-group: VisualFXManager::AnimFXSetInfo* std::priv
; alias: _ZNSt4priv6__copyIPN15VisualFXManager13AnimFXSetInfoES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: VisualFXManager::AnimFXSetInfo* std::priv::__copy<VisualFXManager::AnimFXSetInfo*, VisualFXManager::AnimFXSetInfo*, int>(VisualFXManager::AnimFXSetInfo*, VisualFXManager::AnimFXSetInfo*, VisualFXManager::AnimFXSetInfo*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00494894  01 30 60 e0                                      rsb r3, r0, r1
00494898  c3 31 a0 e1                                      asr r3, r3, #3
0049489c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004948a0  03 91 83 e0                                      add sb, r3, r3, lsl #2
004948a4  00 40 a0 e1                                      mov r4, r0
004948a8  09 92 89 e0                                      add sb, sb, sb, lsl #4
004948ac  02 a0 a0 e1                                      mov sl, r2
004948b0  09 94 89 e0                                      add sb, sb, sb, lsl #8
004948b4  09 98 89 e0                                      add sb, sb, sb, lsl #16
004948b8  89 90 83 e0                                      add sb, r3, sb, lsl #1
004948bc  00 00 59 e3                                      cmp sb, #0
004948c0  10 00 00 da                                      ble #0x494908
004948c4  09 60 a0 e1                                      mov r6, sb
004948c8  00 50 a0 e3                                      mov r5, #0
004948cc  05 30 94 e7                                      ldr r3, [r4, r5]
004948d0  05 70 84 e0                                      add r7, r4, r5
004948d4  05 80 8a e0                                      add r8, sl, r5
004948d8  05 30 8a e7                                      str r3, [sl, r5]
004948dc  04 10 87 e2                                      add r1, r7, #4
004948e0  04 00 88 e2                                      add r0, r8, #4
004948e4  0b fd ff eb                                      bl #0x493d18
004948e8  10 00 88 e2                                      add r0, r8, #0x10
004948ec  10 10 87 e2                                      add r1, r7, #0x10
004948f0  c0 ff ff eb                                      bl #0x4947f8
004948f4  01 60 56 e2                                      subs r6, r6, #1
004948f8  18 50 85 e2                                      add r5, r5, #0x18
004948fc  f2 ff ff 1a                                      bne #0x4948cc
00494900  18 30 a0 e3                                      mov r3, #0x18
00494904  93 a9 2a e0                                      mla sl, r3, sb, sl
00494908  0a 00 a0 e1                                      mov r0, sl
0049490c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
