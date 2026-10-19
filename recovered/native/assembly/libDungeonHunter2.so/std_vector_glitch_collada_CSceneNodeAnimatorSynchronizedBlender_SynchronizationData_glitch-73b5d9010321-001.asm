; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00661688, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00661688  70 40 2d e9                                      push {r4, r5, r6, lr}
0066168c  04 40 90 e5                                      ldr r4, [r0, #4]
00661690  00 50 90 e5                                      ldr r5, [r0]
00661694  00 60 a0 e1                                      mov r6, r0
00661698  05 00 54 e1                                      cmp r4, r5
0066169c  04 00 00 0a                                      beq #0x6616b4
006616a0  24 40 44 e2                                      sub r4, r4, #0x24
006616a4  08 00 84 e2                                      add r0, r4, #8
006616a8  bf c8 f2 eb                                      bl #0x3139ac
006616ac  04 00 55 e1                                      cmp r5, r4
006616b0  fa ff ff 1a                                      bne #0x6616a0
006616b4  00 00 96 e5                                      ldr r0, [r6]
006616b8  00 00 50 e3                                      cmp r0, #0
006616bc  00 00 00 0a                                      beq #0x6616c4
006616c0  62 bb f2 eb                                      bl #0x310450
006616c4  06 00 a0 e1                                      mov r0, r6
006616c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00661e0c, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS9_
; demangled: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00661e0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00661e10  88 00 91 e8                                      ldm r1, {r3, r7}
00661e14  00 50 a0 e3                                      mov r5, #0
00661e18  00 40 a0 e1                                      mov r4, r0
00661e1c  07 30 63 e0                                      rsb r3, r3, r7
00661e20  43 31 a0 e1                                      asr r3, r3, #2
00661e24  14 d0 4d e2                                      sub sp, sp, #0x14
00661e28  83 21 a0 e1                                      lsl r2, r3, #3
00661e2c  02 20 63 e0                                      rsb r2, r3, r2
00661e30  02 23 82 e0                                      add r2, r2, r2, lsl #6
00661e34  01 60 a0 e1                                      mov r6, r1
00661e38  82 21 83 e0                                      add r2, r3, r2, lsl #3
00661e3c  00 50 80 e5                                      str r5, [r0]
00661e40  82 77 a0 e1                                      lsl r7, r2, #0xf
00661e44  07 20 62 e0                                      rsb r2, r2, r7
00661e48  82 31 83 e0                                      add r3, r3, r2, lsl #3
00661e4c  24 70 a0 e3                                      mov r7, #0x24
00661e50  97 03 07 e0                                      mul r7, r7, r3
00661e54  04 50 80 e5                                      str r5, [r0, #4]
00661e58  08 50 80 e5                                      str r5, [r0, #8]
00661e5c  05 10 a0 e1                                      mov r1, r5
00661e60  07 00 a0 e1                                      mov r0, r7
00661e64  bf b9 f2 eb                                      bl #0x310568
00661e68  07 70 80 e0                                      add r7, r0, r7
00661e6c  00 00 84 e5                                      str r0, [r4]
00661e70  81 00 84 e9                                      stmib r4, {r0, r7}
00661e74  00 30 96 e5                                      ldr r3, [r6]
00661e78  00 20 a0 e1                                      mov r2, r0
00661e7c  04 10 96 e5                                      ldr r1, [r6, #4]
00661e80  03 00 a0 e1                                      mov r0, r3
00661e84  0c 30 8d e2                                      add r3, sp, #0xc
00661e88  00 50 8d e5                                      str r5, [sp]
00661e8c  b8 ff ff eb                                      bl #0x661d74
00661e90  04 00 84 e5                                      str r0, [r4, #4]
00661e94  04 00 a0 e1                                      mov r0, r4
00661e98  14 d0 8d e2                                      add sp, sp, #0x14
00661e9c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
