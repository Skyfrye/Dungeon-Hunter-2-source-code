; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00863e54, declared_size=128, range_size=128, mode=arm
; class-group: vox::PriorityBank* std::priv
; alias: _ZNSt4priv7__ucopyIPN3vox12PriorityBankES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: vox::PriorityBank* std::priv::__ucopy<vox::PriorityBank*, vox::PriorityBank*, int>(vox::PriorityBank*, vox::PriorityBank*, vox::PriorityBank*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00863e54  01 30 60 e0                                      rsb r3, r0, r1
00863e58  c3 31 a0 e1                                      asr r3, r3, #3
00863e5c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00863e60  03 71 83 e0                                      add r7, r3, r3, lsl #2
00863e64  00 40 a0 e1                                      mov r4, r0
00863e68  07 72 87 e0                                      add r7, r7, r7, lsl #4
00863e6c  02 80 a0 e1                                      mov r8, r2
00863e70  07 74 87 e0                                      add r7, r7, r7, lsl #8
00863e74  07 78 87 e0                                      add r7, r7, r7, lsl #16
00863e78  87 70 83 e0                                      add r7, r3, r7, lsl #1
00863e7c  00 00 57 e3                                      cmp r7, #0
00863e80  07 60 a0 c1                                      movgt r6, r7
00863e84  02 50 a0 c1                                      movgt r5, r2
00863e88  0f 00 00 da                                      ble #0x863ecc
00863e8c  00 30 94 e5                                      ldr r3, [r4]
00863e90  0c 00 85 e2                                      add r0, r5, #0xc
00863e94  0c 10 84 e2                                      add r1, r4, #0xc
00863e98  00 30 85 e5                                      str r3, [r5]
00863e9c  04 30 94 e5                                      ldr r3, [r4, #4]
00863ea0  04 30 85 e5                                      str r3, [r5, #4]
00863ea4  08 30 94 e5                                      ldr r3, [r4, #8]
00863ea8  18 40 84 e2                                      add r4, r4, #0x18
00863eac  08 30 85 e5                                      str r3, [r5, #8]
00863eb0  a8 ff ff eb                                      bl #0x863d58
00863eb4  01 60 56 e2                                      subs r6, r6, #1
00863eb8  18 50 85 e2                                      add r5, r5, #0x18
00863ebc  f2 ff ff 1a                                      bne #0x863e8c
00863ec0  18 00 a0 e3                                      mov r0, #0x18
00863ec4  90 87 20 e0                                      mla r0, r0, r7, r8
00863ec8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00863ecc  02 00 a0 e1                                      mov r0, r2
00863ed0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008640a8, declared_size=124, range_size=124, mode=arm
; class-group: vox::PriorityBank* std::priv
; alias: _ZNSt4priv6__copyIPN3vox12PriorityBankES3_iEET0_T_S5_S4_RKSt26random_access_iterator_tagPT1_
; demangled: vox::PriorityBank* std::priv::__copy<vox::PriorityBank*, vox::PriorityBank*, int>(vox::PriorityBank*, vox::PriorityBank*, vox::PriorityBank*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
008640a8  01 30 60 e0                                      rsb r3, r0, r1
008640ac  c3 31 a0 e1                                      asr r3, r3, #3
008640b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008640b4  03 81 83 e0                                      add r8, r3, r3, lsl #2
008640b8  00 40 a0 e1                                      mov r4, r0
008640bc  08 82 88 e0                                      add r8, r8, r8, lsl #4
008640c0  02 70 a0 e1                                      mov r7, r2
008640c4  08 84 88 e0                                      add r8, r8, r8, lsl #8
008640c8  08 88 88 e0                                      add r8, r8, r8, lsl #16
008640cc  88 80 83 e0                                      add r8, r3, r8, lsl #1
008640d0  00 00 58 e3                                      cmp r8, #0
008640d4  10 00 00 da                                      ble #0x86411c
008640d8  02 50 a0 e1                                      mov r5, r2
008640dc  08 60 a0 e1                                      mov r6, r8
008640e0  00 30 94 e5                                      ldr r3, [r4]
008640e4  0c 00 85 e2                                      add r0, r5, #0xc
008640e8  0c 10 84 e2                                      add r1, r4, #0xc
008640ec  00 30 85 e5                                      str r3, [r5]
008640f0  04 30 94 e5                                      ldr r3, [r4, #4]
008640f4  04 30 85 e5                                      str r3, [r5, #4]
008640f8  08 30 94 e5                                      ldr r3, [r4, #8]
008640fc  18 40 84 e2                                      add r4, r4, #0x18
00864100  08 30 85 e5                                      str r3, [r5, #8]
00864104  88 ff ff eb                                      bl #0x863f2c
00864108  01 60 56 e2                                      subs r6, r6, #1
0086410c  18 50 85 e2                                      add r5, r5, #0x18
00864110  f2 ff ff 1a                                      bne #0x8640e0
00864114  18 30 a0 e3                                      mov r3, #0x18
00864118  93 78 27 e0                                      mla r7, r3, r8, r7
0086411c  07 00 a0 e1                                      mov r0, r7
00864120  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
