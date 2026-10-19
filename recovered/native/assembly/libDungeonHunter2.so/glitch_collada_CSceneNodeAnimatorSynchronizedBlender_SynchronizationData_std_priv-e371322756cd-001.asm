; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00661d74, declared_size=152, range_size=152, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData* std::priv
; alias: _ZNSt4priv7__ucopyIPKN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataEPS4_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData* std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const*, glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData*, int>(glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const*, glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData const*, glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00661d74  01 30 60 e0                                      rsb r3, r0, r1
00661d78  43 31 a0 e1                                      asr r3, r3, #2
00661d7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00661d80  02 80 a0 e1                                      mov r8, r2
00661d84  83 21 a0 e1                                      lsl r2, r3, #3
00661d88  02 20 63 e0                                      rsb r2, r3, r2
00661d8c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00661d90  00 50 a0 e1                                      mov r5, r0
00661d94  82 21 83 e0                                      add r2, r3, r2, lsl #3
00661d98  82 77 a0 e1                                      lsl r7, r2, #0xf
00661d9c  07 70 62 e0                                      rsb r7, r2, r7
00661da0  87 71 83 e0                                      add r7, r3, r7, lsl #3
00661da4  00 00 57 e3                                      cmp r7, #0
00661da8  07 60 a0 c1                                      movgt r6, r7
00661dac  08 40 a0 c1                                      movgt r4, r8
00661db0  13 00 00 da                                      ble #0x661e04
00661db4  00 20 95 e5                                      ldr r2, [r5]
00661db8  08 30 84 e2                                      add r3, r4, #8
00661dbc  03 00 a0 e1                                      mov r0, r3
00661dc0  00 20 84 e5                                      str r2, [r4]
00661dc4  04 20 95 e5                                      ldr r2, [r5, #4]
00661dc8  18 30 84 e5                                      str r3, [r4, #0x18]
00661dcc  1c 30 84 e5                                      str r3, [r4, #0x1c]
00661dd0  04 20 84 e5                                      str r2, [r4, #4]
00661dd4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00661dd8  18 20 95 e5                                      ldr r2, [r5, #0x18]
00661ddc  41 be f2 eb                                      bl #0x3116e8
00661de0  20 30 95 e5                                      ldr r3, [r5, #0x20]
00661de4  01 60 56 e2                                      subs r6, r6, #1
00661de8  24 50 85 e2                                      add r5, r5, #0x24
00661dec  20 30 84 e5                                      str r3, [r4, #0x20]
00661df0  24 40 84 e2                                      add r4, r4, #0x24
00661df4  ee ff ff 1a                                      bne #0x661db4
00661df8  24 00 a0 e3                                      mov r0, #0x24
00661dfc  90 87 20 e0                                      mla r0, r0, r7, r8
00661e00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00661e04  08 00 a0 e1                                      mov r0, r8
00661e08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
