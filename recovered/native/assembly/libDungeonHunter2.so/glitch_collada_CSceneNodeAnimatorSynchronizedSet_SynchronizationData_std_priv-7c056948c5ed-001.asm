; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00662a0c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19SynchronizationDataES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData* std::priv::__ucopy<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, int>(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00662a0c  01 10 60 e0                                      rsb r1, r0, r1
00662a10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00662a14  c1 72 a0 e1                                      asr r7, r1, #5
00662a18  00 00 57 e3                                      cmp r7, #0
00662a1c  00 50 a0 e1                                      mov r5, r0
00662a20  02 80 a0 e1                                      mov r8, r2
00662a24  07 60 a0 c1                                      movgt r6, r7
00662a28  02 40 a0 c1                                      movgt r4, r2
00662a2c  01 00 00 ca                                      bgt #0x662a38
00662a30  10 00 00 ea                                      b #0x662a78
00662a34  20 50 85 e2                                      add r5, r5, #0x20
00662a38  00 20 95 e5                                      ldr r2, [r5]
00662a3c  08 30 84 e2                                      add r3, r4, #8
00662a40  03 00 a0 e1                                      mov r0, r3
00662a44  00 20 84 e5                                      str r2, [r4]
00662a48  04 20 95 e5                                      ldr r2, [r5, #4]
00662a4c  18 30 84 e5                                      str r3, [r4, #0x18]
00662a50  1c 30 84 e5                                      str r3, [r4, #0x1c]
00662a54  04 20 84 e5                                      str r2, [r4, #4]
00662a58  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00662a5c  18 20 95 e5                                      ldr r2, [r5, #0x18]
00662a60  20 bb f2 eb                                      bl #0x3116e8
00662a64  01 60 56 e2                                      subs r6, r6, #1
00662a68  20 40 84 e2                                      add r4, r4, #0x20
00662a6c  f0 ff ff 1a                                      bne #0x662a34
00662a70  87 02 88 e0                                      add r0, r8, r7, lsl #5
00662a74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00662a78  02 00 a0 e1                                      mov r0, r2
00662a7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
