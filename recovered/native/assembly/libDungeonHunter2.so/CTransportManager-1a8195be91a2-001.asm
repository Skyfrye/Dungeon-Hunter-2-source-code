; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081a9dc, declared_size=4, range_size=4, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager12AbortNetworkEv
; demangled: CTransportManager::AbortNetwork()
; decoder-mode: arm
0081a9dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a9e0, declared_size=32, range_size=32, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager11GetInstanceEv
; demangled: CTransportManager::GetInstance()
; decoder-mode: arm
0081a9e0  10 30 9f e5                                      ldr r3, [pc, #0x10]
0081a9e4  10 20 9f e5                                      ldr r2, [pc, #0x10]
0081a9e8  03 30 8f e0                                      add r3, pc, r3
0081a9ec  02 20 93 e7                                      ldr r2, [r3, r2]
0081a9f0  00 00 92 e5                                      ldr r0, [r2]
0081a9f4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0081a9f8  a8 a0 17 00 7c 3a 00 00                          .byte 0xa8, 0xa0, 0x17, 0x00, 0x7c, 0x3a, 0x00, 0x00

; FUNCTION 0x0081aa04, declared_size=40, range_size=40, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager13IsInitializedEv
; demangled: CTransportManager::IsInitialized()
; decoder-mode: arm
0081aa04  18 30 9f e5                                      ldr r3, [pc, #0x18]
0081aa08  18 20 9f e5                                      ldr r2, [pc, #0x18]
0081aa0c  03 30 8f e0                                      add r3, pc, r3
0081aa10  02 20 93 e7                                      ldr r2, [r3, r2]
0081aa14  00 00 92 e5                                      ldr r0, [r2]
0081aa18  00 00 50 e3                                      cmp r0, #0
0081aa1c  04 00 d0 15                                      ldrbne r0, [r0, #4]
0081aa20  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0081aa24  84 a0 17 00 7c 3a 00 00                          .byte 0x84, 0xa0, 0x17, 0x00, 0x7c, 0x3a, 0x00, 0x00

; FUNCTION 0x0081aa2c, declared_size=96, range_size=96, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager9TerminateEv
; demangled: CTransportManager::Terminate()
; decoder-mode: arm
0081aa2c  50 30 9f e5                                      ldr r3, [pc, #0x50]
0081aa30  50 20 9f e5                                      ldr r2, [pc, #0x50]
0081aa34  10 40 2d e9                                      push {r4, lr}
0081aa38  03 30 8f e0                                      add r3, pc, r3
0081aa3c  02 40 93 e7                                      ldr r4, [r3, r2]
0081aa40  00 30 94 e5                                      ldr r3, [r4]
0081aa44  00 00 53 e3                                      cmp r3, #0
0081aa48  0c 00 00 0a                                      beq #0x81aa80
0081aa4c  03 00 a0 e1                                      mov r0, r3
0081aa50  00 30 93 e5                                      ldr r3, [r3]
0081aa54  0f e0 a0 e1                                      mov lr, pc
0081aa58  04 f0 93 e5                                      ldr pc, [r3, #4]
0081aa5c  00 30 94 e5                                      ldr r3, [r4]
0081aa60  00 00 53 e3                                      cmp r3, #0
0081aa64  05 00 00 0a                                      beq #0x81aa80
0081aa68  03 00 a0 e1                                      mov r0, r3
0081aa6c  00 30 93 e5                                      ldr r3, [r3]
0081aa70  0f e0 a0 e1                                      mov lr, pc
0081aa74  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0081aa78  00 30 a0 e3                                      mov r3, #0
0081aa7c  00 30 84 e5                                      str r3, [r4]
0081aa80  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081aa84  58 a0 17 00 7c 3a 00 00                          .byte 0x58, 0xa0, 0x17, 0x00, 0x7c, 0x3a, 0x00, 0x00

; FUNCTION 0x0081aa8c, declared_size=128, range_size=128, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager15EnableBroadcastE10CNetworkId
; demangled: CTransportManager::EnableBroadcast(CNetworkId)
; decoder-mode: arm
0081aa8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081aa90  20 d0 4d e2                                      sub sp, sp, #0x20
0081aa94  00 80 a0 e1                                      mov r8, r0
0081aa98  01 70 a0 e1                                      mov r7, r1
0081aa9c  00 40 a0 e1                                      mov r4, r0
0081aaa0  00 50 a0 e3                                      mov r5, #0
0081aaa4  04 60 8d e2                                      add r6, sp, #4
0081aaa8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081aaac  06 00 a0 e1                                      mov r0, r6
0081aab0  04 40 84 e2                                      add r4, r4, #4
0081aab4  00 10 53 e2                                      subs r1, r3, #0
0081aab8  0f 00 00 0a                                      beq #0x81aafc
0081aabc  00 30 93 e5                                      ldr r3, [r3]
0081aac0  0f e0 a0 e1                                      mov lr, pc
0081aac4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0081aac8  06 00 a0 e1                                      mov r0, r6
0081aacc  07 10 a0 e1                                      mov r1, r7
0081aad0  99 83 ff eb                                      bl #0x7fb93c
0081aad4  00 00 50 e3                                      cmp r0, #0
0081aad8  07 00 00 0a                                      beq #0x81aafc
0081aadc  05 51 88 e0                                      add r5, r8, r5, lsl #2
0081aae0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0081aae4  03 00 a0 e1                                      mov r0, r3
0081aae8  00 30 93 e5                                      ldr r3, [r3]
0081aaec  0f e0 a0 e1                                      mov lr, pc
0081aaf0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0081aaf4  20 d0 8d e2                                      add sp, sp, #0x20
0081aaf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081aafc  01 50 85 e2                                      add r5, r5, #1
0081ab00  3c 00 55 e3                                      cmp r5, #0x3c
0081ab04  e7 ff ff 1a                                      bne #0x81aaa8
0081ab08  f9 ff ff ea                                      b #0x81aaf4

; FUNCTION 0x0081ab0c, declared_size=128, range_size=128, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager16DisableBroadcastE10CNetworkId
; demangled: CTransportManager::DisableBroadcast(CNetworkId)
; decoder-mode: arm
0081ab0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081ab10  20 d0 4d e2                                      sub sp, sp, #0x20
0081ab14  00 80 a0 e1                                      mov r8, r0
0081ab18  01 70 a0 e1                                      mov r7, r1
0081ab1c  00 40 a0 e1                                      mov r4, r0
0081ab20  00 50 a0 e3                                      mov r5, #0
0081ab24  04 60 8d e2                                      add r6, sp, #4
0081ab28  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081ab2c  06 00 a0 e1                                      mov r0, r6
0081ab30  04 40 84 e2                                      add r4, r4, #4
0081ab34  00 10 53 e2                                      subs r1, r3, #0
0081ab38  0f 00 00 0a                                      beq #0x81ab7c
0081ab3c  00 30 93 e5                                      ldr r3, [r3]
0081ab40  0f e0 a0 e1                                      mov lr, pc
0081ab44  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0081ab48  06 00 a0 e1                                      mov r0, r6
0081ab4c  07 10 a0 e1                                      mov r1, r7
0081ab50  79 83 ff eb                                      bl #0x7fb93c
0081ab54  00 00 50 e3                                      cmp r0, #0
0081ab58  07 00 00 0a                                      beq #0x81ab7c
0081ab5c  05 51 88 e0                                      add r5, r8, r5, lsl #2
0081ab60  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0081ab64  03 00 a0 e1                                      mov r0, r3
0081ab68  00 30 93 e5                                      ldr r3, [r3]
0081ab6c  0f e0 a0 e1                                      mov lr, pc
0081ab70  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0081ab74  20 d0 8d e2                                      add sp, sp, #0x20
0081ab78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081ab7c  01 50 85 e2                                      add r5, r5, #1
0081ab80  3c 00 55 e3                                      cmp r5, #0x3c
0081ab84  e7 ff ff 1a                                      bne #0x81ab28
0081ab88  f9 ff ff ea                                      b #0x81ab74

; FUNCTION 0x0081ab8c, declared_size=128, range_size=128, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager18GetTransportByPeerE15tTRANSPORT_TYPE10CNetworkId
; demangled: CTransportManager::GetTransportByPeer(tTRANSPORT_TYPE, CNetworkId)
; decoder-mode: arm
0081ab8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081ab90  00 50 a0 e1                                      mov r5, r0
0081ab94  01 40 a0 e1                                      mov r4, r1
0081ab98  02 80 a0 e1                                      mov r8, r2
0081ab9c  00 60 a0 e1                                      mov r6, r0
0081aba0  00 70 a0 e3                                      mov r7, #0
0081aba4  03 00 00 ea                                      b #0x81abb8
0081aba8  01 70 87 e2                                      add r7, r7, #1
0081abac  3c 00 57 e3                                      cmp r7, #0x3c
0081abb0  04 60 86 e2                                      add r6, r6, #4
0081abb4  12 00 00 0a                                      beq #0x81ac04
0081abb8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0081abbc  00 00 53 e2                                      subs r0, r3, #0
0081abc0  f8 ff ff 0a                                      beq #0x81aba8
0081abc4  00 30 93 e5                                      ldr r3, [r3]
0081abc8  0f e0 a0 e1                                      mov lr, pc
0081abcc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0081abd0  04 00 50 e1                                      cmp r0, r4
0081abd4  f3 ff ff 1a                                      bne #0x81aba8
0081abd8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0081abdc  08 10 a0 e1                                      mov r1, r8
0081abe0  03 00 a0 e1                                      mov r0, r3
0081abe4  00 30 93 e5                                      ldr r3, [r3]
0081abe8  0f e0 a0 e1                                      mov lr, pc
0081abec  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0081abf0  00 00 50 e3                                      cmp r0, #0
0081abf4  eb ff ff 0a                                      beq #0x81aba8
0081abf8  07 51 85 e0                                      add r5, r5, r7, lsl #2
0081abfc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0081ac00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081ac04  00 00 a0 e3                                      mov r0, #0
0081ac08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0081ac0c, declared_size=108, range_size=108, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager13IsConnectedToER10CNetworkId
; demangled: CTransportManager::IsConnectedTo(CNetworkId&)
; decoder-mode: arm
0081ac0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081ac10  00 70 a0 e1                                      mov r7, r0
0081ac14  01 60 a0 e1                                      mov r6, r1
0081ac18  00 40 a0 e1                                      mov r4, r0
0081ac1c  00 50 a0 e3                                      mov r5, #0
0081ac20  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081ac24  06 10 a0 e1                                      mov r1, r6
0081ac28  04 40 84 e2                                      add r4, r4, #4
0081ac2c  00 00 53 e2                                      subs r0, r3, #0
0081ac30  0b 00 00 0a                                      beq #0x81ac64
0081ac34  00 30 93 e5                                      ldr r3, [r3]
0081ac38  0f e0 a0 e1                                      mov lr, pc
0081ac3c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0081ac40  00 00 50 e3                                      cmp r0, #0
0081ac44  06 00 00 0a                                      beq #0x81ac64
0081ac48  05 51 87 e0                                      add r5, r7, r5, lsl #2
0081ac4c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0081ac50  03 00 a0 e1                                      mov r0, r3
0081ac54  00 30 93 e5                                      ldr r3, [r3]
0081ac58  0f e0 a0 e1                                      mov lr, pc
0081ac5c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0081ac60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081ac64  01 50 85 e2                                      add r5, r5, #1
0081ac68  3c 00 55 e3                                      cmp r5, #0x3c
0081ac6c  eb ff ff 1a                                      bne #0x81ac20
0081ac70  00 00 a0 e3                                      mov r0, #0
0081ac74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0081ac78, declared_size=8, range_size=8, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager19IsMainThreadBlockedEv
; demangled: CTransportManager::IsMainThreadBlocked()
; decoder-mode: arm
0081ac78  00 00 a0 e3                                      mov r0, #0
0081ac7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081ac80, declared_size=36, range_size=36, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager18SetThreadTimestampEv
; demangled: CTransportManager::SetThreadTimestamp()
; decoder-mode: arm
0081ac80  10 40 2d e9                                      push {r4, lr}
0081ac84  00 40 a0 e1                                      mov r4, r0
0081ac88  c1 8a ff eb                                      bl #0x7fd794
0081ac8c  00 30 90 e5                                      ldr r3, [r0]
0081ac90  0f e0 a0 e1                                      mov lr, pc
0081ac94  00 f0 93 e5                                      ldr pc, [r3]
0081ac98  01 3c a0 e3                                      mov r3, #0x100
0081ac9c  f3 00 84 e1                                      strd r0, r1, [r4, r3]
0081aca0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081aca4, declared_size=4, range_size=4, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager6UpdateEv
; demangled: CTransportManager::Update()
; decoder-mode: arm
0081aca4  f5 ff ff ea                                      b #0x81ac80

; FUNCTION 0x0081ad30, declared_size=356, range_size=356, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager18GetListenNetworkIdE15tTRANSPORT_TYPE
; demangled: CTransportManager::GetListenNetworkId(tTRANSPORT_TYPE)
; decoder-mode: arm
0081ad30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0081ad34  24 d0 4d e2                                      sub sp, sp, #0x24
0081ad38  01 40 a0 e1                                      mov r4, r1
0081ad3c  02 60 a0 e1                                      mov r6, r2
0081ad40  00 70 a0 e1                                      mov r7, r0
0081ad44  8e 85 ff eb                                      bl #0x7fc384
0081ad48  00 50 a0 e3                                      mov r5, #0
0081ad4c  04 a0 8d e2                                      add sl, sp, #4
0081ad50  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081ad54  00 00 53 e3                                      cmp r3, #0
0081ad58  1c 00 00 0a                                      beq #0x81add0
0081ad5c  00 00 56 e3                                      cmp r6, #0
0081ad60  43 00 00 1a                                      bne #0x81ae74
0081ad64  04 20 93 e5                                      ldr r2, [r3, #4]
0081ad68  01 00 12 e3                                      tst r2, #1
0081ad6c  17 00 00 0a                                      beq #0x81add0
0081ad70  03 00 a0 e1                                      mov r0, r3
0081ad74  00 30 93 e5                                      ldr r3, [r3]
0081ad78  0f e0 a0 e1                                      mov lr, pc
0081ad7c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0081ad80  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081ad84  00 80 a0 e1                                      mov r8, r0
0081ad88  01 80 48 e2                                      sub r8, r8, #1
0081ad8c  03 10 a0 e1                                      mov r1, r3
0081ad90  0a 00 a0 e1                                      mov r0, sl
0081ad94  00 30 93 e5                                      ldr r3, [r3]
0081ad98  0f e0 a0 e1                                      mov lr, pc
0081ad9c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0081ada0  03 00 58 e3                                      cmp r8, #3
0081ada4  08 f1 8f 90                                      addls pc, pc, r8, lsl #2
0081ada8  08 00 00 ea                                      b #0x81add0
0081adac  24 00 00 ea                                      b #0x81ae44
0081adb0  17 00 00 ea                                      b #0x81ae14
0081adb4  0c 00 00 ea                                      b #0x81adec
0081adb8  ff ff ff ea                                      b #0x81adbc
0081adbc  18 30 97 e5                                      ldr r3, [r7, #0x18]
0081adc0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0081adc4  08 30 83 e3                                      orr r3, r3, #8
0081adc8  14 20 87 e5                                      str r2, [r7, #0x14]
0081adcc  18 30 87 e5                                      str r3, [r7, #0x18]
0081add0  01 50 85 e2                                      add r5, r5, #1
0081add4  3c 00 55 e3                                      cmp r5, #0x3c
0081add8  04 40 84 e2                                      add r4, r4, #4
0081addc  db ff ff 1a                                      bne #0x81ad50
0081ade0  07 00 a0 e1                                      mov r0, r7
0081ade4  24 d0 8d e2                                      add sp, sp, #0x24
0081ade8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0081adec  18 30 97 e5                                      ldr r3, [r7, #0x18]
0081adf0  14 20 9d e5                                      ldr r2, [sp, #0x14]
0081adf4  01 50 85 e2                                      add r5, r5, #1
0081adf8  04 30 83 e3                                      orr r3, r3, #4
0081adfc  3c 00 55 e3                                      cmp r5, #0x3c
0081ae00  10 20 87 e5                                      str r2, [r7, #0x10]
0081ae04  18 30 87 e5                                      str r3, [r7, #0x18]
0081ae08  04 40 84 e2                                      add r4, r4, #4
0081ae0c  cf ff ff 1a                                      bne #0x81ad50
0081ae10  f2 ff ff ea                                      b #0x81ade0
0081ae14  18 30 97 e5                                      ldr r3, [r7, #0x18]
0081ae18  08 20 9d e5                                      ldr r2, [sp, #8]
0081ae1c  b4 10 dd e1                                      ldrh r1, [sp, #4]
0081ae20  01 50 85 e2                                      add r5, r5, #1
0081ae24  02 30 83 e3                                      orr r3, r3, #2
0081ae28  3c 00 55 e3                                      cmp r5, #0x3c
0081ae2c  b0 10 c7 e1                                      strh r1, [r7]
0081ae30  04 20 87 e5                                      str r2, [r7, #4]
0081ae34  18 30 87 e5                                      str r3, [r7, #0x18]
0081ae38  04 40 84 e2                                      add r4, r4, #4
0081ae3c  c3 ff ff 1a                                      bne #0x81ad50
0081ae40  e6 ff ff ea                                      b #0x81ade0
0081ae44  18 30 97 e5                                      ldr r3, [r7, #0x18]
0081ae48  10 20 9d e5                                      ldr r2, [sp, #0x10]
0081ae4c  bc 10 dd e1                                      ldrh r1, [sp, #0xc]
0081ae50  01 50 85 e2                                      add r5, r5, #1
0081ae54  01 30 83 e3                                      orr r3, r3, #1
0081ae58  3c 00 55 e3                                      cmp r5, #0x3c
0081ae5c  b8 10 c7 e1                                      strh r1, [r7, #8]
0081ae60  0c 20 87 e5                                      str r2, [r7, #0xc]
0081ae64  18 30 87 e5                                      str r3, [r7, #0x18]
0081ae68  04 40 84 e2                                      add r4, r4, #4
0081ae6c  b7 ff ff 1a                                      bne #0x81ad50
0081ae70  da ff ff ea                                      b #0x81ade0
0081ae74  03 00 a0 e1                                      mov r0, r3
0081ae78  00 30 93 e5                                      ldr r3, [r3]
0081ae7c  0f e0 a0 e1                                      mov lr, pc
0081ae80  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0081ae84  06 00 50 e1                                      cmp r0, r6
0081ae88  d0 ff ff 1a                                      bne #0x81add0
0081ae8c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081ae90  b3 ff ff ea                                      b #0x81ad64

; FUNCTION 0x0081ae94, declared_size=124, range_size=124, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager20IsTransportAvailableE15tTRANSPORT_TYPE
; demangled: CTransportManager::IsTransportAvailable(tTRANSPORT_TYPE)
; decoder-mode: arm
0081ae94  04 e0 2d e5                                      str lr, [sp, #-4]!
0081ae98  01 00 40 e2                                      sub r0, r0, #1
0081ae9c  3c d0 4d e2                                      sub sp, sp, #0x3c
0081aea0  03 00 50 e3                                      cmp r0, #3
0081aea4  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
0081aea8  16 00 00 ea                                      b #0x81af08
0081aeac  0c 00 00 ea                                      b #0x81aee4
0081aeb0  0b 00 00 ea                                      b #0x81aee4
0081aeb4  00 00 00 ea                                      b #0x81aebc
0081aeb8  ff ff ff ea                                      b #0x81aebc
0081aebc  cf fe ff eb                                      bl #0x81aa00
0081aec0  03 20 a0 e3                                      mov r2, #3
0081aec4  00 10 a0 e1                                      mov r1, r0
0081aec8  0d 00 a0 e1                                      mov r0, sp
0081aecc  97 ff ff eb                                      bl #0x81ad30
0081aed0  10 00 9d e5                                      ldr r0, [sp, #0x10]
0081aed4  00 00 50 e2                                      subs r0, r0, #0
0081aed8  01 00 a0 13                                      movne r0, #1
0081aedc  3c d0 8d e2                                      add sp, sp, #0x3c
0081aee0  00 80 bd e8                                      ldm sp!, {pc}
0081aee4  c5 fe ff eb                                      bl #0x81aa00
0081aee8  01 20 a0 e3                                      mov r2, #1
0081aeec  00 10 a0 e1                                      mov r1, r0
0081aef0  1c 00 8d e2                                      add r0, sp, #0x1c
0081aef4  8d ff ff eb                                      bl #0x81ad30
0081aef8  28 00 9d e5                                      ldr r0, [sp, #0x28]
0081aefc  00 00 50 e2                                      subs r0, r0, #0
0081af00  01 00 a0 13                                      movne r0, #1
0081af04  f4 ff ff ea                                      b #0x81aedc
0081af08  01 00 a0 e3                                      mov r0, #1
0081af0c  f2 ff ff ea                                      b #0x81aedc

; FUNCTION 0x0081af88, declared_size=136, range_size=136, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager26PrepareConnectionNetworkIdER10CNetworkId
; demangled: CTransportManager::PrepareConnectionNetworkId(CNetworkId&)
; decoder-mode: arm
0081af88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081af8c  00 50 a0 e1                                      mov r5, r0
0081af90  02 c0 a0 e1                                      mov ip, r2
0081af94  05 70 a0 e1                                      mov r7, r5
0081af98  02 40 a0 e1                                      mov r4, r2
0081af9c  01 60 a0 e1                                      mov r6, r1
0081afa0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0081afa4  0f 00 a7 e8                                      stm r7!, {r0, r1, r2, r3}
0081afa8  07 00 9c e8                                      ldm ip, {r0, r1, r2}
0081afac  07 00 87 e8                                      stm r7, {r0, r1, r2}
0081afb0  00 70 a0 e3                                      mov r7, #0
0081afb4  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0081afb8  04 10 a0 e1                                      mov r1, r4
0081afbc  01 70 87 e2                                      add r7, r7, #1
0081afc0  00 00 53 e2                                      subs r0, r3, #0
0081afc4  0c 00 00 0a                                      beq #0x81affc
0081afc8  00 30 93 e5                                      ldr r3, [r3]
0081afcc  0f e0 a0 e1                                      mov lr, pc
0081afd0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0081afd4  00 00 50 e3                                      cmp r0, #0
0081afd8  07 00 00 0a                                      beq #0x81affc
0081afdc  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0081afe0  03 00 a0 e1                                      mov r0, r3
0081afe4  00 30 93 e5                                      ldr r3, [r3]
0081afe8  0f e0 a0 e1                                      mov lr, pc
0081afec  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0081aff0  00 10 a0 e1                                      mov r1, r0
0081aff4  05 00 a0 e1                                      mov r0, r5
0081aff8  c4 ff ff eb                                      bl #0x81af10
0081affc  3c 00 57 e3                                      cmp r7, #0x3c
0081b000  04 60 86 e2                                      add r6, r6, #4
0081b004  ea ff ff 1a                                      bne #0x81afb4
0081b008  05 00 a0 e1                                      mov r0, r5
0081b00c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0081b010, declared_size=268, range_size=268, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager4SendEP10CTransportR10CNetworkId12tPACKET_TYPEPvi
; demangled: CTransportManager::Send(CTransport*, CNetworkId&, tPACKET_TYPE, void*, int)
; decoder-mode: arm
0081b010  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0081b014  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
0081b018  01 da 4d e2                                      sub sp, sp, #0x1000
0081b01c  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
0081b020  14 d0 4d e2                                      sub sp, sp, #0x14
0081b024  01 0a 8d e2                                      add r0, sp, #0x1000
0081b028  04 40 8f e0                                      add r4, pc, r4
0081b02c  34 c0 90 e5                                      ldr ip, [r0, #0x34]
0081b030  05 00 94 e7                                      ldr r0, [r4, r5]
0081b034  f8 6f 00 e3                                      movw r6, #0xff8
0081b038  06 00 5c e1                                      cmp ip, r6
0081b03c  00 00 90 e5                                      ldr r0, [r0]
0081b040  01 60 a0 e1                                      mov r6, r1
0081b044  01 1a 8d e2                                      add r1, sp, #0x1000
0081b048  0c 00 81 e5                                      str r0, [r1, #0xc]
0081b04c  02 70 a0 e1                                      mov r7, r2
0081b050  30 10 91 e5                                      ldr r1, [r1, #0x30]
0081b054  09 00 00 9a                                      bls #0x81b080
0081b058  00 00 e0 e3                                      mvn r0, #0
0081b05c  05 30 94 e7                                      ldr r3, [r4, r5]
0081b060  01 1a 8d e2                                      add r1, sp, #0x1000
0081b064  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0081b068  00 30 93 e5                                      ldr r3, [r3]
0081b06c  03 00 52 e1                                      cmp r2, r3
0081b070  26 00 00 1a                                      bne #0x81b110
0081b074  14 d0 8d e2                                      add sp, sp, #0x14
0081b078  01 da 8d e2                                      add sp, sp, #0x1000
0081b07c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0081b080  10 00 8d e2                                      add r0, sp, #0x10
0081b084  e5 2e 0b e3                                      movw r2, #0xbee5
0081b088  00 80 a0 e1                                      mov r8, r0
0081b08c  00 20 4b e3                                      movt r2, #0xb000
0081b090  08 a0 8c e2                                      add sl, ip, #8
0081b094  04 20 00 e5                                      str r2, [r0, #-4]
0081b098  00 00 5c e3                                      cmp ip, #0
0081b09c  b4 a0 48 e0                                      strh sl, [r8], #-4
0081b0a0  06 30 c8 e5                                      strb r3, [r8, #6]
0081b0a4  02 00 00 0a                                      beq #0x81b0b4
0081b0a8  04 00 80 e2                                      add r0, r0, #4
0081b0ac  0c 20 a0 e1                                      mov r2, ip
0081b0b0  ec cd eb eb                                      bl #0x30e868
0081b0b4  00 00 56 e3                                      cmp r6, #0
0081b0b8  e6 ff ff 0a                                      beq #0x81b058
0081b0bc  2c 83 ff eb                                      bl #0x7fbd74
0081b0c0  00 30 96 e5                                      ldr r3, [r6]
0081b0c4  00 a0 a0 e1                                      mov sl, r0
0081b0c8  06 00 a0 e1                                      mov r0, r6
0081b0cc  0f e0 a0 e1                                      mov lr, pc
0081b0d0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0081b0d4  f4 c0 d8 e1                                      ldrsh ip, [r8, #4]
0081b0d8  00 10 a0 e1                                      mov r1, r0
0081b0dc  07 20 a0 e1                                      mov r2, r7
0081b0e0  0a 00 a0 e1                                      mov r0, sl
0081b0e4  01 30 a0 e3                                      mov r3, #1
0081b0e8  00 c0 8d e5                                      str ip, [sp]
0081b0ec  e9 83 ff eb                                      bl #0x7fc098
0081b0f0  08 20 a0 e1                                      mov r2, r8
0081b0f4  06 00 a0 e1                                      mov r0, r6
0081b0f8  07 10 a0 e1                                      mov r1, r7
0081b0fc  00 c0 96 e5                                      ldr ip, [r6]
0081b100  f4 30 d8 e1                                      ldrsh r3, [r8, #4]
0081b104  0f e0 a0 e1                                      mov lr, pc
0081b108  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0081b10c  d2 ff ff ea                                      b #0x81b05c
0081b110  7e cc eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081b114  68 9a 17 00 ac 40 00 00                          .byte 0x68, 0x9a, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0081b11c, declared_size=372, range_size=372, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager16ReceiverCallbackEP10CTransportR10CNetworkIdPci
; demangled: CTransportManager::ReceiverCallback(CTransport*, CNetworkId&, char*, int)
; decoder-mode: arm
0081b11c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081b120  00 00 53 e3                                      cmp r3, #0
0081b124  14 d0 4d e2                                      sub sp, sp, #0x14
0081b128  0c 30 8d e5                                      str r3, [sp, #0xc]
0081b12c  00 80 a0 e1                                      mov r8, r0
0081b130  01 90 a0 e1                                      mov sb, r1
0081b134  45 00 00 da                                      ble #0x81b250
0081b138  f4 50 d2 e1                                      ldrsh r5, [r2, #4]
0081b13c  02 a0 a0 e1                                      mov sl, r2
0081b140  00 00 55 e3                                      cmp r5, #0
0081b144  41 00 00 ba                                      blt #0x81b250
0081b148  05 00 53 e1                                      cmp r3, r5
0081b14c  3f 00 00 ba                                      blt #0x81b250
0081b150  00 20 92 e5                                      ldr r2, [r2]
0081b154  e5 3e 0b e3                                      movw r3, #0xbee5
0081b158  00 30 4b e3                                      movt r3, #0xb000
0081b15c  03 00 52 e1                                      cmp r2, r3
0081b160  3a 00 00 1a                                      bne #0x81b250
0081b164  d6 30 da e1                                      ldrsb r3, [sl, #6]
0081b168  00 00 53 e3                                      cmp r3, #0
0081b16c  37 00 00 ba                                      blt #0x81b250
0081b170  08 b0 8a e2                                      add fp, sl, #8
0081b174  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0081b178  0a 40 a0 e1                                      mov r4, sl
0081b17c  1a 00 00 ea                                      b #0x81b1ec
0081b180  06 00 da e5                                      ldrb r0, [sl, #6]
0081b184  80 00 c0 e3                                      bic r0, r0, #0x80
0081b188  07 00 50 e3                                      cmp r0, #7
0081b18c  31 00 00 0a                                      beq #0x81b258
0081b190  0b 20 a0 e1                                      mov r2, fp
0081b194  06 60 65 e0                                      rsb r6, r5, r6
0081b198  09 10 a0 e1                                      mov r1, sb
0081b19c  08 30 45 e2                                      sub r3, r5, #8
0081b1a0  27 84 ff eb                                      bl #0x7fc244
0081b1a4  00 00 56 e3                                      cmp r6, #0
0081b1a8  28 00 00 da                                      ble #0x81b250
0081b1ac  05 40 84 e0                                      add r4, r4, r5
0081b1b0  f4 50 d4 e1                                      ldrsh r5, [r4, #4]
0081b1b4  04 a0 a0 e1                                      mov sl, r4
0081b1b8  00 00 55 e3                                      cmp r5, #0
0081b1bc  23 00 00 ba                                      blt #0x81b250
0081b1c0  06 00 55 e1                                      cmp r5, r6
0081b1c4  21 00 00 ca                                      bgt #0x81b250
0081b1c8  00 30 94 e5                                      ldr r3, [r4]
0081b1cc  e5 2e 0b e3                                      movw r2, #0xbee5
0081b1d0  00 20 4b e3                                      movt r2, #0xb000
0081b1d4  02 00 53 e1                                      cmp r3, r2
0081b1d8  1c 00 00 1a                                      bne #0x81b250
0081b1dc  d6 30 d4 e1                                      ldrsb r3, [r4, #6]
0081b1e0  00 00 53 e3                                      cmp r3, #0
0081b1e4  19 00 00 ba                                      blt #0x81b250
0081b1e8  08 b0 84 e2                                      add fp, r4, #8
0081b1ec  e0 82 ff eb                                      bl #0x7fbd74
0081b1f0  00 30 98 e5                                      ldr r3, [r8]
0081b1f4  00 70 a0 e1                                      mov r7, r0
0081b1f8  08 00 a0 e1                                      mov r0, r8
0081b1fc  0f e0 a0 e1                                      mov lr, pc
0081b200  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0081b204  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0081b208  00 10 a0 e1                                      mov r1, r0
0081b20c  09 20 a0 e1                                      mov r2, sb
0081b210  07 00 a0 e1                                      mov r0, r7
0081b214  00 30 a0 e3                                      mov r3, #0
0081b218  00 c0 8d e5                                      str ip, [sp]
0081b21c  9d 83 ff eb                                      bl #0x7fc098
0081b220  f7 fd ff eb                                      bl #0x81aa04
0081b224  00 00 50 e3                                      cmp r0, #0
0081b228  d4 ff ff 1a                                      bne #0x81b180
0081b22c  06 00 da e5                                      ldrb r0, [sl, #6]
0081b230  80 00 c0 e3                                      bic r0, r0, #0x80
0081b234  0b 20 a0 e1                                      mov r2, fp
0081b238  06 60 65 e0                                      rsb r6, r5, r6
0081b23c  09 10 a0 e1                                      mov r1, sb
0081b240  08 30 45 e2                                      sub r3, r5, #8
0081b244  fe 83 ff eb                                      bl #0x7fc244
0081b248  00 00 56 e3                                      cmp r6, #0
0081b24c  d6 ff ff ca                                      bgt #0x81b1ac
0081b250  14 d0 8d e2                                      add sp, sp, #0x14
0081b254  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081b258  e8 fd ff eb                                      bl #0x81aa00
0081b25c  85 fe ff eb                                      bl #0x81ac78
0081b260  00 70 50 e2                                      subs r7, r0, #0
0081b264  f0 ff ff 1a                                      bne #0x81b22c
0081b268  e4 fd ff eb                                      bl #0x81aa00
0081b26c  08 10 a0 e1                                      mov r1, r8
0081b270  09 20 a0 e1                                      mov r2, sb
0081b274  08 30 a0 e3                                      mov r3, #8
0081b278  04 70 8d e5                                      str r7, [sp, #4]
0081b27c  00 70 8d e5                                      str r7, [sp]
0081b280  62 ff ff eb                                      bl #0x81b010
0081b284  06 00 da e5                                      ldrb r0, [sl, #6]
0081b288  80 00 c0 e3                                      bic r0, r0, #0x80
0081b28c  e8 ff ff ea                                      b #0x81b234

; FUNCTION 0x0081b290, declared_size=108, range_size=108, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager4SendE15tTRANSPORT_TYPER10CNetworkId12tPACKET_TYPEPvi
; demangled: CTransportManager::Send(tTRANSPORT_TYPE, CNetworkId&, tPACKET_TYPE, void*, int)
; decoder-mode: arm
0081b290  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0081b294  2c d0 4d e2                                      sub sp, sp, #0x2c
0081b298  0c c0 8d e2                                      add ip, sp, #0xc
0081b29c  02 e0 a0 e1                                      mov lr, r2
0081b2a0  00 50 a0 e1                                      mov r5, r0
0081b2a4  02 40 a0 e1                                      mov r4, r2
0081b2a8  01 70 a0 e1                                      mov r7, r1
0081b2ac  03 60 a0 e1                                      mov r6, r3
0081b2b0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0081b2b4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0081b2b8  07 00 9e e8                                      ldm lr, {r0, r1, r2}
0081b2bc  07 00 8c e8                                      stm ip, {r0, r1, r2}
0081b2c0  07 10 a0 e1                                      mov r1, r7
0081b2c4  0c 20 8d e2                                      add r2, sp, #0xc
0081b2c8  05 00 a0 e1                                      mov r0, r5
0081b2cc  2e fe ff eb                                      bl #0x81ab8c
0081b2d0  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0081b2d4  00 10 a0 e1                                      mov r1, r0
0081b2d8  04 20 a0 e1                                      mov r2, r4
0081b2dc  00 c0 8d e5                                      str ip, [sp]
0081b2e0  44 c0 9d e5                                      ldr ip, [sp, #0x44]
0081b2e4  05 00 a0 e1                                      mov r0, r5
0081b2e8  06 30 a0 e1                                      mov r3, r6
0081b2ec  04 c0 8d e5                                      str ip, [sp, #4]
0081b2f0  46 ff ff eb                                      bl #0x81b010
0081b2f4  2c d0 8d e2                                      add sp, sp, #0x2c
0081b2f8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0081b2fc, declared_size=204, range_size=204, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager4SendE15tTRANSPORT_TYPE12tPACKET_TYPEPvi
; demangled: CTransportManager::Send(tTRANSPORT_TYPE, tPACKET_TYPE, void*, int)
; decoder-mode: arm
0081b2fc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0081b300  01 70 41 e2                                      sub r7, r1, #1
0081b304  28 d0 4d e2                                      sub sp, sp, #0x28
0081b308  01 60 a0 e1                                      mov r6, r1
0081b30c  00 80 a0 e1                                      mov r8, r0
0081b310  02 50 a0 e1                                      mov r5, r2
0081b314  03 40 a0 e1                                      mov r4, r3
0081b318  48 90 9d e5                                      ldr sb, [sp, #0x48]
0081b31c  03 00 57 e3                                      cmp r7, #3
0081b320  07 f1 8f 90                                      addls pc, pc, r7, lsl #2
0081b324  25 00 00 ea                                      b #0x81b3c0
0081b328  18 00 00 ea                                      b #0x81b390
0081b32c  17 00 00 ea                                      b #0x81b390
0081b330  00 00 00 ea                                      b #0x81b338
0081b334  ff ff ff ea                                      b #0x81b338
0081b338  0c a0 8d e2                                      add sl, sp, #0xc
0081b33c  0a 00 a0 e1                                      mov r0, sl
0081b340  0f 84 ff eb                                      bl #0x7fc384
0081b344  04 00 56 e3                                      cmp r6, #4
0081b348  00 30 e0 e3                                      mvn r3, #0
0081b34c  1c 30 8d 15                                      strne r3, [sp, #0x1c]
0081b350  20 30 8d 05                                      streq r3, [sp, #0x20]
0081b354  00 00 56 e3                                      cmp r6, #0
0081b358  01 20 a0 13                                      movne r2, #1
0081b35c  12 77 a0 11                                      lslne r7, r2, r7
0081b360  24 30 9d e5                                      ldr r3, [sp, #0x24]
0081b364  06 70 a0 01                                      moveq r7, r6
0081b368  08 00 a0 e1                                      mov r0, r8
0081b36c  03 70 87 e1                                      orr r7, r7, r3
0081b370  06 10 a0 e1                                      mov r1, r6
0081b374  0a 20 a0 e1                                      mov r2, sl
0081b378  05 30 a0 e1                                      mov r3, r5
0081b37c  24 70 8d e5                                      str r7, [sp, #0x24]
0081b380  10 02 8d e8                                      stm sp, {r4, sb}
0081b384  c1 ff ff eb                                      bl #0x81b290
0081b388  28 d0 8d e2                                      add sp, sp, #0x28
0081b38c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0081b390  0c a0 8d e2                                      add sl, sp, #0xc
0081b394  0a 00 a0 e1                                      mov r0, sl
0081b398  f9 83 ff eb                                      bl #0x7fc384
0081b39c  02 00 56 e3                                      cmp r6, #2
0081b3a0  78 3a 01 e3                                      movw r3, #0x1a78
0081b3a4  b4 31 cd 11                                      strhne r3, [sp, #0x14]
0081b3a8  bc 30 cd 01                                      strheq r3, [sp, #0xc]
0081b3ac  00 30 e0 13                                      mvnne r3, #0
0081b3b0  00 30 e0 03                                      mvneq r3, #0
0081b3b4  18 30 8d 15                                      strne r3, [sp, #0x18]
0081b3b8  10 30 8d 05                                      streq r3, [sp, #0x10]
0081b3bc  e4 ff ff ea                                      b #0x81b354
0081b3c0  00 00 a0 e3                                      mov r0, #0
0081b3c4  ef ff ff ea                                      b #0x81b388

; FUNCTION 0x0081b3c8, declared_size=120, range_size=120, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager7ReceiveEv
; demangled: CTransportManager::Receive()
; decoder-mode: arm
0081b3c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081b3cc  04 30 d0 e5                                      ldrb r3, [r0, #4]
0081b3d0  00 50 a0 e1                                      mov r5, r0
0081b3d4  00 00 53 e3                                      cmp r3, #0
0081b3d8  02 00 00 0a                                      beq #0x81b3e8
0081b3dc  fc 30 d0 e5                                      ldrb r3, [r0, #0xfc]
0081b3e0  00 00 53 e3                                      cmp r3, #0
0081b3e4  00 00 00 0a                                      beq #0x81b3ec
0081b3e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081b3ec  08 70 80 e2                                      add r7, r0, #8
0081b3f0  07 00 a0 e1                                      mov r0, r7
0081b3f4  dc cb ff eb                                      bl #0x80e36c
0081b3f8  05 40 a0 e1                                      mov r4, r5
0081b3fc  f0 60 85 e2                                      add r6, r5, #0xf0
0081b400  fc 30 d5 e5                                      ldrb r3, [r5, #0xfc]
0081b404  00 00 53 e3                                      cmp r3, #0
0081b408  06 00 00 1a                                      bne #0x81b428
0081b40c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081b410  00 00 53 e3                                      cmp r3, #0
0081b414  03 00 a0 e1                                      mov r0, r3
0081b418  02 00 00 0a                                      beq #0x81b428
0081b41c  00 30 93 e5                                      ldr r3, [r3]
0081b420  0f e0 a0 e1                                      mov lr, pc
0081b424  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0081b428  04 40 84 e2                                      add r4, r4, #4
0081b42c  06 00 54 e1                                      cmp r4, r6
0081b430  f2 ff ff 1a                                      bne #0x81b400
0081b434  07 00 a0 e1                                      mov r0, r7
0081b438  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0081b43c  c9 cb ff ea                                      b #0x80e368

; FUNCTION 0x0081b440, declared_size=132, range_size=132, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager10DisconnectER10CNetworkId
; demangled: CTransportManager::Disconnect(CNetworkId&)
; decoder-mode: arm
0081b440  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081b444  08 80 80 e2                                      add r8, r0, #8
0081b448  00 40 a0 e1                                      mov r4, r0
0081b44c  08 00 a0 e1                                      mov r0, r8
0081b450  01 60 a0 e1                                      mov r6, r1
0081b454  c4 cb ff eb                                      bl #0x80e36c
0081b458  00 50 a0 e3                                      mov r5, #0
0081b45c  05 70 a0 e1                                      mov r7, r5
0081b460  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081b464  06 10 a0 e1                                      mov r1, r6
0081b468  01 50 85 e2                                      add r5, r5, #1
0081b46c  00 00 53 e2                                      subs r0, r3, #0
0081b470  0c 00 00 0a                                      beq #0x81b4a8
0081b474  00 30 93 e5                                      ldr r3, [r3]
0081b478  0f e0 a0 e1                                      mov lr, pc
0081b47c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0081b480  00 00 50 e3                                      cmp r0, #0
0081b484  07 00 00 0a                                      beq #0x81b4a8
0081b488  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0081b48c  00 00 53 e3                                      cmp r3, #0
0081b490  04 00 00 0a                                      beq #0x81b4a8
0081b494  03 00 a0 e1                                      mov r0, r3
0081b498  00 30 93 e5                                      ldr r3, [r3]
0081b49c  0f e0 a0 e1                                      mov lr, pc
0081b4a0  04 f0 93 e5                                      ldr pc, [r3, #4]
0081b4a4  0c 70 84 e5                                      str r7, [r4, #0xc]
0081b4a8  3c 00 55 e3                                      cmp r5, #0x3c
0081b4ac  04 40 84 e2                                      add r4, r4, #4
0081b4b0  ea ff ff 1a                                      bne #0x81b460
0081b4b4  08 00 a0 e1                                      mov r0, r8
0081b4b8  aa cb ff eb                                      bl #0x80e368
0081b4bc  00 00 a0 e3                                      mov r0, #0
0081b4c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0081b4c4, declared_size=104, range_size=104, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager12AddTransportEP10CTransport
; demangled: CTransportManager::AddTransport(CTransport*)
; decoder-mode: arm
0081b4c4  70 40 2d e9                                      push {r4, r5, r6, lr}
0081b4c8  00 60 51 e2                                      subs r6, r1, #0
0081b4cc  00 40 a0 e1                                      mov r4, r0
0081b4d0  11 00 00 0a                                      beq #0x81b51c
0081b4d4  08 50 80 e2                                      add r5, r0, #8
0081b4d8  05 00 a0 e1                                      mov r0, r5
0081b4dc  a2 cb ff eb                                      bl #0x80e36c
0081b4e0  04 30 a0 e1                                      mov r3, r4
0081b4e4  00 20 a0 e3                                      mov r2, #0
0081b4e8  02 00 00 ea                                      b #0x81b4f8
0081b4ec  01 20 82 e2                                      add r2, r2, #1
0081b4f0  3c 00 52 e3                                      cmp r2, #0x3c
0081b4f4  09 00 00 0a                                      beq #0x81b520
0081b4f8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0081b4fc  04 30 83 e2                                      add r3, r3, #4
0081b500  00 00 51 e3                                      cmp r1, #0
0081b504  f8 ff ff 1a                                      bne #0x81b4ec
0081b508  02 21 84 e0                                      add r2, r4, r2, lsl #2
0081b50c  05 00 a0 e1                                      mov r0, r5
0081b510  0c 60 82 e5                                      str r6, [r2, #0xc]
0081b514  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081b518  92 cb ff ea                                      b #0x80e368
0081b51c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081b520  05 00 a0 e1                                      mov r0, r5
0081b524  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081b528  8e cb ff ea                                      b #0x80e368

; FUNCTION 0x0081b52c, declared_size=24, range_size=24, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager14AcceptCallbackE15tTRANSPORT_TYPEP10CTransport
; demangled: CTransportManager::AcceptCallback(tTRANSPORT_TYPE, CTransport*)
; decoder-mode: arm
0081b52c  10 40 2d e9                                      push {r4, lr}
0081b530  01 40 a0 e1                                      mov r4, r1
0081b534  31 fd ff eb                                      bl #0x81aa00
0081b538  04 10 a0 e1                                      mov r1, r4
0081b53c  10 40 bd e8                                      pop {r4, lr}
0081b540  df ff ff ea                                      b #0x81b4c4

; FUNCTION 0x0081b544, declared_size=112, range_size=112, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager18InitializeInternalEv
; demangled: CTransportManager::InitializeInternal()
; decoder-mode: arm
0081b544  70 40 2d e9                                      push {r4, r5, r6, lr}
0081b548  08 50 80 e2                                      add r5, r0, #8
0081b54c  00 40 a0 e1                                      mov r4, r0
0081b550  05 00 a0 e1                                      mov r0, r5
0081b554  84 cb ff eb                                      bl #0x80e36c
0081b558  00 10 a0 e3                                      mov r1, #0
0081b55c  f0 20 a0 e3                                      mov r2, #0xf0
0081b560  0c 00 84 e2                                      add r0, r4, #0xc
0081b564  bd cb eb eb                                      bl #0x30e460
0081b568  3c 60 9f e5                                      ldr r6, [pc, #0x3c]
0081b56c  04 00 a0 e1                                      mov r0, r4
0081b570  c2 fd ff eb                                      bl #0x81ac80
0081b574  34 30 9f e5                                      ldr r3, [pc, #0x34]
0081b578  06 60 8f e0                                      add r6, pc, r6
0081b57c  03 30 96 e7                                      ldr r3, [r6, r3]
0081b580  00 30 93 e5                                      ldr r3, [r3]
0081b584  03 00 a0 e1                                      mov r0, r3
0081b588  00 30 93 e5                                      ldr r3, [r3]
0081b58c  0f e0 a0 e1                                      mov lr, pc
0081b590  08 f0 93 e5                                      ldr pc, [r3, #8]
0081b594  01 30 a0 e3                                      mov r3, #1
0081b598  05 00 a0 e1                                      mov r0, r5
0081b59c  04 30 c4 e5                                      strb r3, [r4, #4]
0081b5a0  70 cb ff eb                                      bl #0x80e368
0081b5a4  00 00 a0 e3                                      mov r0, #0
0081b5a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081b5ac  18 95 17 00 7c 3a 00 00                          .byte 0x18, 0x95, 0x17, 0x00, 0x7c, 0x3a, 0x00, 0x00

; FUNCTION 0x0081b5b4, declared_size=80, range_size=80, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager21ReceiverThreadExecuteEv
; demangled: CTransportManager::ReceiverThreadExecute()
; decoder-mode: arm
0081b5b4  10 40 2d e9                                      push {r4, lr}
0081b5b8  00 40 a0 e1                                      mov r4, r0
0081b5bc  ad fd ff eb                                      bl #0x81ac78
0081b5c0  00 00 50 e3                                      cmp r0, #0
0081b5c4  04 00 00 0a                                      beq #0x81b5dc
0081b5c8  6f 96 ff eb                                      bl #0x800f8c
0081b5cc  c3 8b ff eb                                      bl #0x7fe4e0
0081b5d0  00 00 50 e3                                      cmp r0, #0
0081b5d4  05 00 00 1a                                      bne #0x81b5f0
0081b5d8  10 80 bd e8                                      pop {r4, pc}
0081b5dc  04 00 a0 e1                                      mov r0, r4
0081b5e0  78 ff ff eb                                      bl #0x81b3c8
0081b5e4  e2 81 ff eb                                      bl #0x7fbd74
0081b5e8  10 40 bd e8                                      pop {r4, lr}
0081b5ec  f9 82 ff ea                                      b #0x7fc1d8
0081b5f0  04 00 a0 e1                                      mov r0, r4
0081b5f4  00 30 94 e5                                      ldr r3, [r4]
0081b5f8  0f e0 a0 e1                                      mov lr, pc
0081b5fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0081b600  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081b604, declared_size=64, range_size=64, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager7ConnectER10CNetworkId
; demangled: CTransportManager::Connect(CNetworkId&)
; decoder-mode: arm
0081b604  10 40 2d e9                                      push {r4, lr}
0081b608  04 30 d0 e5                                      ldrb r3, [r0, #4]
0081b60c  20 d0 4d e2                                      sub sp, sp, #0x20
0081b610  01 20 a0 e1                                      mov r2, r1
0081b614  00 00 53 e3                                      cmp r3, #0
0081b618  00 00 e0 03                                      mvneq r0, #0
0081b61c  06 00 00 0a                                      beq #0x81b63c
0081b620  04 40 8d e2                                      add r4, sp, #4
0081b624  00 10 a0 e1                                      mov r1, r0
0081b628  04 00 a0 e1                                      mov r0, r4
0081b62c  55 fe ff eb                                      bl #0x81af88
0081b630  04 00 a0 e1                                      mov r0, r4
0081b634  22 2f 00 eb                                      bl #0x8272c4
0081b638  00 00 a0 e3                                      mov r0, #0
0081b63c  20 d0 8d e2                                      add sp, sp, #0x20
0081b640  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081b644, declared_size=8, range_size=8, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager19InitializeTransportE15tTRANSPORT_TYPE
; demangled: CTransportManager::InitializeTransport(tTRANSPORT_TYPE)
; decoder-mode: arm
0081b644  01 00 a0 e1                                      mov r0, r1
0081b648  f4 2e 00 ea                                      b #0x827220

; FUNCTION 0x0081b64c, declared_size=136, range_size=136, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager17TerminateInternalEv
; demangled: CTransportManager::TerminateInternal()
; decoder-mode: arm
0081b64c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081b650  01 30 a0 e3                                      mov r3, #1
0081b654  00 60 a0 e3                                      mov r6, #0
0081b658  00 40 a0 e1                                      mov r4, r0
0081b65c  fc 30 c0 e5                                      strb r3, [r0, #0xfc]
0081b660  04 60 c0 e5                                      strb r6, [r0, #4]
0081b664  08 30 94 e4                                      ldr r3, [r4], #8
0081b668  00 80 a0 e1                                      mov r8, r0
0081b66c  0f e0 a0 e1                                      mov lr, pc
0081b670  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0081b674  04 00 a0 e1                                      mov r0, r4
0081b678  3b cb ff eb                                      bl #0x80e36c
0081b67c  08 50 a0 e1                                      mov r5, r8
0081b680  06 70 a0 e1                                      mov r7, r6
0081b684  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0081b688  01 60 86 e2                                      add r6, r6, #1
0081b68c  00 00 53 e3                                      cmp r3, #0
0081b690  04 00 00 0a                                      beq #0x81b6a8
0081b694  03 00 a0 e1                                      mov r0, r3
0081b698  00 30 93 e5                                      ldr r3, [r3]
0081b69c  0f e0 a0 e1                                      mov lr, pc
0081b6a0  04 f0 93 e5                                      ldr pc, [r3, #4]
0081b6a4  0c 70 85 e5                                      str r7, [r5, #0xc]
0081b6a8  3c 00 56 e3                                      cmp r6, #0x3c
0081b6ac  04 50 85 e2                                      add r5, r5, #4
0081b6b0  f3 ff ff 1a                                      bne #0x81b684
0081b6b4  00 10 a0 e3                                      mov r1, #0
0081b6b8  f0 20 a0 e3                                      mov r2, #0xf0
0081b6bc  0c 00 88 e2                                      add r0, r8, #0xc
0081b6c0  66 cb eb eb                                      bl #0x30e460
0081b6c4  ce 2e 00 eb                                      bl #0x827204
0081b6c8  04 00 a0 e1                                      mov r0, r4
0081b6cc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0081b6d0  24 cb ff ea                                      b #0x80e368

; FUNCTION 0x0081b6d4, declared_size=52, range_size=52, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManagerD1Ev
; demangled: CTransportManager::~CTransportManager()
; decoder-mode: arm
0081b6d4  24 30 9f e5                                      ldr r3, [pc, #0x24]
0081b6d8  24 20 9f e5                                      ldr r2, [pc, #0x24]
0081b6dc  10 40 2d e9                                      push {r4, lr}
0081b6e0  03 30 8f e0                                      add r3, pc, r3
0081b6e4  02 20 93 e7                                      ldr r2, [r3, r2]
0081b6e8  00 40 a0 e1                                      mov r4, r0
0081b6ec  08 20 82 e2                                      add r2, r2, #8
0081b6f0  08 20 80 e4                                      str r2, [r0], #8
0081b6f4  1d cb ff eb                                      bl #0x80e370
0081b6f8  04 00 a0 e1                                      mov r0, r4
0081b6fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081b700  b0 93 17 00 54 0d 00 00                          .byte 0xb0, 0x93, 0x17, 0x00, 0x54, 0x0d, 0x00, 0x00

; FUNCTION 0x0081b708, declared_size=28, range_size=28, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManagerD0Ev
; demangled: CTransportManager::~CTransportManager()
; decoder-mode: arm
0081b708  10 40 2d e9                                      push {r4, lr}
0081b70c  00 40 a0 e1                                      mov r4, r0
0081b710  ef ff ff eb                                      bl #0x81b6d4
0081b714  04 00 a0 e1                                      mov r0, r4
0081b718  48 d3 eb eb                                      bl #0x310440
0081b71c  04 00 a0 e1                                      mov r0, r4
0081b720  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081b724, declared_size=52, range_size=52, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManagerD2Ev
; demangled: CTransportManager::~CTransportManager()
; decoder-mode: arm
0081b724  24 30 9f e5                                      ldr r3, [pc, #0x24]
0081b728  24 20 9f e5                                      ldr r2, [pc, #0x24]
0081b72c  10 40 2d e9                                      push {r4, lr}
0081b730  03 30 8f e0                                      add r3, pc, r3
0081b734  02 20 93 e7                                      ldr r2, [r3, r2]
0081b738  00 40 a0 e1                                      mov r4, r0
0081b73c  08 20 82 e2                                      add r2, r2, #8
0081b740  08 20 80 e4                                      str r2, [r0], #8
0081b744  09 cb ff eb                                      bl #0x80e370
0081b748  04 00 a0 e1                                      mov r0, r4
0081b74c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081b750  60 93 17 00 54 0d 00 00                          .byte 0x60, 0x93, 0x17, 0x00, 0x54, 0x0d, 0x00, 0x00

; FUNCTION 0x0081b758, declared_size=84, range_size=84, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManagerC1Ev
; demangled: CTransportManager::CTransportManager()
; decoder-mode: arm
0081b758  44 30 9f e5                                      ldr r3, [pc, #0x44]
0081b75c  44 20 9f e5                                      ldr r2, [pc, #0x44]
0081b760  70 40 2d e9                                      push {r4, r5, r6, lr}
0081b764  03 30 8f e0                                      add r3, pc, r3
0081b768  02 20 93 e7                                      ldr r2, [r3, r2]
0081b76c  00 50 a0 e3                                      mov r5, #0
0081b770  00 40 a0 e1                                      mov r4, r0
0081b774  08 20 82 e2                                      add r2, r2, #8
0081b778  04 50 c0 e5                                      strb r5, [r0, #4]
0081b77c  00 20 80 e5                                      str r2, [r0]
0081b780  08 00 80 e2                                      add r0, r0, #8
0081b784  03 cb ff eb                                      bl #0x80e398
0081b788  00 00 a0 e3                                      mov r0, #0
0081b78c  00 10 a0 e3                                      mov r1, #0
0081b790  01 3c a0 e3                                      mov r3, #0x100
0081b794  f3 00 84 e1                                      strd r0, r1, [r4, r3]
0081b798  fc 50 c4 e5                                      strb r5, [r4, #0xfc]
0081b79c  04 00 a0 e1                                      mov r0, r4
0081b7a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081b7a4  2c 93 17 00 54 0d 00 00                          .byte 0x2c, 0x93, 0x17, 0x00, 0x54, 0x0d, 0x00, 0x00

; FUNCTION 0x0081b7ac, declared_size=84, range_size=84, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManagerC2Ev
; demangled: CTransportManager::CTransportManager()
; decoder-mode: arm
0081b7ac  44 30 9f e5                                      ldr r3, [pc, #0x44]
0081b7b0  44 20 9f e5                                      ldr r2, [pc, #0x44]
0081b7b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0081b7b8  03 30 8f e0                                      add r3, pc, r3
0081b7bc  02 20 93 e7                                      ldr r2, [r3, r2]
0081b7c0  00 50 a0 e3                                      mov r5, #0
0081b7c4  00 40 a0 e1                                      mov r4, r0
0081b7c8  08 20 82 e2                                      add r2, r2, #8
0081b7cc  04 50 c0 e5                                      strb r5, [r0, #4]
0081b7d0  00 20 80 e5                                      str r2, [r0]
0081b7d4  08 00 80 e2                                      add r0, r0, #8
0081b7d8  ee ca ff eb                                      bl #0x80e398
0081b7dc  00 00 a0 e3                                      mov r0, #0
0081b7e0  00 10 a0 e3                                      mov r1, #0
0081b7e4  01 3c a0 e3                                      mov r3, #0x100
0081b7e8  f3 00 84 e1                                      strd r0, r1, [r4, r3]
0081b7ec  fc 50 c4 e5                                      strb r5, [r4, #0xfc]
0081b7f0  04 00 a0 e1                                      mov r0, r4
0081b7f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081b7f8  d8 92 17 00 54 0d 00 00                          .byte 0xd8, 0x92, 0x17, 0x00, 0x54, 0x0d, 0x00, 0x00

; FUNCTION 0x0081b800, declared_size=136, range_size=136, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager10InitializeEv
; demangled: CTransportManager::Initialize()
; decoder-mode: arm
0081b800  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081b804  70 40 9f e5                                      ldr r4, [pc, #0x70]
0081b808  70 50 9f e5                                      ldr r5, [pc, #0x70]
0081b80c  04 40 8f e0                                      add r4, pc, r4
0081b810  05 60 94 e7                                      ldr r6, [r4, r5]
0081b814  00 70 96 e5                                      ldr r7, [r6]
0081b818  00 00 57 e3                                      cmp r7, #0
0081b81c  09 00 00 0a                                      beq #0x81b848
0081b820  00 30 97 e5                                      ldr r3, [r7]
0081b824  07 00 a0 e1                                      mov r0, r7
0081b828  0f e0 a0 e1                                      mov lr, pc
0081b82c  00 f0 93 e5                                      ldr pc, [r3]
0081b830  05 30 94 e7                                      ldr r3, [r4, r5]
0081b834  00 30 93 e5                                      ldr r3, [r3]
0081b838  00 00 53 e3                                      cmp r3, #0
0081b83c  00 00 e0 03                                      mvneq r0, #0
0081b840  00 00 a0 13                                      movne r0, #0
0081b844  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081b848  02 10 a0 e3                                      mov r1, #2
0081b84c  11 0e a0 e3                                      mov r0, #0x110
0081b850  46 d3 eb eb                                      bl #0x310570
0081b854  00 70 a0 e1                                      mov r7, r0
0081b858  d3 ff ff eb                                      bl #0x81b7ac
0081b85c  20 30 9f e5                                      ldr r3, [pc, #0x20]
0081b860  00 20 a0 e3                                      mov r2, #0
0081b864  08 21 87 e5                                      str r2, [r7, #0x108]
0081b868  03 30 94 e7                                      ldr r3, [r4, r3]
0081b86c  08 30 83 e2                                      add r3, r3, #8
0081b870  00 30 87 e5                                      str r3, [r7]
0081b874  00 70 86 e5                                      str r7, [r6]
0081b878  e8 ff ff ea                                      b #0x81b820
; mapping-symbol data/literal pool
0081b87c  84 92 17 00 7c 3a 00 00 74 2f 00 00              .byte 0x84, 0x92, 0x17, 0x00, 0x7c, 0x3a, 0x00, 0x00, 0x74, 0x2f, 0x00, 0x00

; FUNCTION 0x0081baec, declared_size=156, range_size=156, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager18SendToAllTransportE12tPACKET_TYPER10CNetworkIdPvi
; demangled: CTransportManager::SendToAllTransport(tPACKET_TYPE, CNetworkId&, void*, int)
; decoder-mode: arm
0081baec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0081baf0  18 d0 4d e2                                      sub sp, sp, #0x18
0081baf4  0c 90 8d e2                                      add sb, sp, #0xc
0081baf8  00 80 a0 e1                                      mov r8, r0
0081bafc  01 60 a0 e1                                      mov r6, r1
0081bb00  09 00 a0 e1                                      mov r0, sb
0081bb04  02 10 a0 e1                                      mov r1, r2
0081bb08  02 50 a0 e1                                      mov r5, r2
0081bb0c  03 70 a0 e1                                      mov r7, r3
0081bb10  38 a0 9d e5                                      ldr sl, [sp, #0x38]
0081bb14  95 ff ff eb                                      bl #0x81b970
0081bb18  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0081bb1c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0081bb20  02 20 63 e0                                      rsb r2, r3, r2
0081bb24  22 21 b0 e1                                      lsrs r2, r2, #2
0081bb28  0c 00 00 0a                                      beq #0x81bb60
0081bb2c  00 40 a0 e3                                      mov r4, #0
0081bb30  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0081bb34  05 20 a0 e1                                      mov r2, r5
0081bb38  06 30 a0 e1                                      mov r3, r6
0081bb3c  08 00 a0 e1                                      mov r0, r8
0081bb40  80 04 8d e8                                      stm sp, {r7, sl}
0081bb44  d1 fd ff eb                                      bl #0x81b290
0081bb48  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0081bb4c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0081bb50  01 40 84 e2                                      add r4, r4, #1
0081bb54  02 20 63 e0                                      rsb r2, r3, r2
0081bb58  42 01 54 e1                                      cmp r4, r2, asr #2
0081bb5c  f3 ff ff 3a                                      blo #0x81bb30
0081bb60  00 00 53 e3                                      cmp r3, #0
0081bb64  05 00 00 0a                                      beq #0x81bb80
0081bb68  14 20 9d e5                                      ldr r2, [sp, #0x14]
0081bb6c  03 10 a0 e1                                      mov r1, r3
0081bb70  08 00 89 e2                                      add r0, sb, #8
0081bb74  02 30 63 e0                                      rsb r3, r3, r2
0081bb78  43 21 a0 e1                                      asr r2, r3, #2
0081bb7c  64 fc ff eb                                      bl #0x81ad14
0081bb80  18 d0 8d e2                                      add sp, sp, #0x18
0081bb84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0081bb88, declared_size=40, range_size=40, mode=arm
; class-group: CTransportManager
; alias: _ZN17CTransportManager9KeepAliveER10CNetworkId
; demangled: CTransportManager::KeepAlive(CNetworkId&)
; decoder-mode: arm
0081bb88  04 e0 2d e5                                      str lr, [sp, #-4]!
0081bb8c  00 c0 a0 e3                                      mov ip, #0
0081bb90  0c d0 4d e2                                      sub sp, sp, #0xc
0081bb94  01 20 a0 e1                                      mov r2, r1
0081bb98  0c 30 a0 e1                                      mov r3, ip
0081bb9c  07 10 a0 e3                                      mov r1, #7
0081bba0  00 c0 8d e5                                      str ip, [sp]
0081bba4  d0 ff ff eb                                      bl #0x81baec
0081bba8  0c d0 8d e2                                      add sp, sp, #0xc
0081bbac  00 80 bd e8                                      ldm sp!, {pc}
