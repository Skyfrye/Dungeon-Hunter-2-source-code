; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00661608, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIS_IN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEENS5_IS9_LS7_0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00661608  70 40 2d e9                                      push {r4, r5, r6, lr}
0066160c  14 00 90 e8                                      ldm r0, {r2, r4}
00661610  55 35 05 e3                                      movw r3, #0x5555
00661614  55 35 41 e3                                      movt r3, #0x1555
00661618  04 20 62 e0                                      rsb r2, r2, r4
0066161c  42 21 a0 e1                                      asr r2, r2, #2
00661620  01 50 a0 e1                                      mov r5, r1
00661624  02 41 82 e0                                      add r4, r2, r2, lsl #2
00661628  04 42 84 e0                                      add r4, r4, r4, lsl #4
0066162c  04 44 84 e0                                      add r4, r4, r4, lsl #8
00661630  04 48 84 e0                                      add r4, r4, r4, lsl #16
00661634  84 40 82 e0                                      add r4, r2, r4, lsl #1
00661638  03 30 64 e0                                      rsb r3, r4, r3
0066163c  01 00 53 e1                                      cmp r3, r1
00661640  0b 00 00 3a                                      blo #0x661674
00661644  55 35 05 e3                                      movw r3, #0x5555
00661648  05 00 54 e1                                      cmp r4, r5
0066164c  04 00 84 20                                      addhs r0, r4, r4
00661650  05 00 84 30                                      addlo r0, r4, r5
00661654  03 37 83 e1                                      orr r3, r3, r3, lsl #14
00661658  03 00 50 e1                                      cmp r0, r3
0066165c  01 00 00 8a                                      bhi #0x661668
00661660  04 00 50 e1                                      cmp r0, r4
00661664  01 00 00 2a                                      bhs #0x661670
00661668  55 05 05 e3                                      movw r0, #0x5555
0066166c  00 07 80 e1                                      orr r0, r0, r0, lsl #14
00661670  70 80 bd e8                                      pop {r4, r5, r6, pc}
00661674  08 00 9f e5                                      ldr r0, [pc, #8]
00661678  00 00 8f e0                                      add r0, pc, r0
0066167c  ef 9d 02 eb                                      bl #0x708e40
00661680  ef ff ff ea                                      b #0x661644
; mapping-symbol data/literal pool
00661684  f0 cd 25 00                                      .byte 0xf0, 0xcd, 0x25, 0x00

; FUNCTION 0x006616cc, declared_size=332, range_size=332, mode=arm
; class-group: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIS_IN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEENS5_IS9_LS7_0EEEE8_M_eraseEPS9_SC_RKSt11__true_type
; demangled: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >*, std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >*, std::__true_type const&)
; decoder-mode: arm
006616cc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006616d0  04 40 90 e5                                      ldr r4, [r0, #4]
006616d4  00 50 a0 e1                                      mov r5, r0
006616d8  02 60 a0 e1                                      mov r6, r2
006616dc  04 b0 52 e0                                      subs fp, r2, r4
006616e0  01 b0 a0 13                                      movne fp, #1
006616e4  02 00 51 e1                                      cmp r1, r2
006616e8  04 00 52 11                                      cmpne r2, r4
006616ec  01 90 a0 e1                                      mov sb, r1
006616f0  01 80 a0 01                                      moveq r8, r1
006616f4  02 70 a0 01                                      moveq r7, r2
006616f8  16 00 00 0a                                      beq #0x661758
006616fc  0c 70 82 e2                                      add r7, r2, #0xc
00661700  01 80 a0 e1                                      mov r8, r1
00661704  00 a0 a0 e3                                      mov sl, #0
00661708  08 00 a0 e1                                      mov r0, r8
0066170c  dd ff ff eb                                      bl #0x661688
00661710  0c 30 17 e5                                      ldr r3, [r7, #-0xc]
00661714  00 30 88 e5                                      str r3, [r8]
00661718  08 30 17 e5                                      ldr r3, [r7, #-8]
0066171c  04 30 88 e5                                      str r3, [r8, #4]
00661720  04 30 17 e5                                      ldr r3, [r7, #-4]
00661724  08 30 88 e5                                      str r3, [r8, #8]
00661728  0c 80 88 e2                                      add r8, r8, #0xc
0066172c  07 00 54 e1                                      cmp r4, r7
00661730  08 00 56 11                                      cmpne r6, r8
00661734  00 30 a0 03                                      moveq r3, #0
00661738  01 30 a0 13                                      movne r3, #1
0066173c  00 00 53 e3                                      cmp r3, #0
00661740  0c a0 07 e5                                      str sl, [r7, #-0xc]
00661744  04 a0 07 e5                                      str sl, [r7, #-4]
00661748  08 a0 07 e5                                      str sl, [r7, #-8]
0066174c  0c 70 87 e2                                      add r7, r7, #0xc
00661750  ec ff ff 1a                                      bne #0x661708
00661754  0c 70 47 e2                                      sub r7, r7, #0xc
00661758  06 00 58 e1                                      cmp r8, r6
0066175c  08 70 a0 11                                      movne r7, r8
00661760  0f 00 00 0a                                      beq #0x6617a4
00661764  07 00 a0 e1                                      mov r0, r7
00661768  0c 70 87 e2                                      add r7, r7, #0xc
0066176c  c5 ff ff eb                                      bl #0x661688
00661770  07 00 56 e1                                      cmp r6, r7
00661774  fa ff ff 1a                                      bne #0x661764
00661778  00 00 5b e3                                      cmp fp, #0
0066177c  04 00 00 0a                                      beq #0x661794
00661780  06 00 a0 e1                                      mov r0, r6
00661784  0c 60 86 e2                                      add r6, r6, #0xc
00661788  be ff ff eb                                      bl #0x661688
0066178c  06 00 54 e1                                      cmp r4, r6
00661790  fa ff ff 1a                                      bne #0x661780
00661794  08 40 a0 e1                                      mov r4, r8
00661798  04 40 85 e5                                      str r4, [r5, #4]
0066179c  09 00 a0 e1                                      mov r0, sb
006617a0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006617a4  07 00 54 e1                                      cmp r4, r7
006617a8  00 60 a0 13                                      movne r6, #0
006617ac  0e 00 00 0a                                      beq #0x6617ec
006617b0  08 00 a0 e1                                      mov r0, r8
006617b4  b3 ff ff eb                                      bl #0x661688
006617b8  00 30 97 e5                                      ldr r3, [r7]
006617bc  00 30 88 e5                                      str r3, [r8]
006617c0  04 30 97 e5                                      ldr r3, [r7, #4]
006617c4  04 30 88 e5                                      str r3, [r8, #4]
006617c8  08 30 97 e5                                      ldr r3, [r7, #8]
006617cc  08 30 88 e5                                      str r3, [r8, #8]
006617d0  00 60 87 e5                                      str r6, [r7]
006617d4  08 60 87 e5                                      str r6, [r7, #8]
006617d8  04 60 87 e5                                      str r6, [r7, #4]
006617dc  0c 70 87 e2                                      add r7, r7, #0xc
006617e0  04 00 57 e1                                      cmp r7, r4
006617e4  0c 80 88 e2                                      add r8, r8, #0xc
006617e8  f0 ff ff 1a                                      bne #0x6617b0
006617ec  07 00 58 e1                                      cmp r8, r7
006617f0  08 40 a0 e1                                      mov r4, r8
006617f4  e7 ff ff 0a                                      beq #0x661798
006617f8  08 00 a0 e1                                      mov r0, r8
006617fc  0c 80 88 e2                                      add r8, r8, #0xc
00661800  a0 ff ff eb                                      bl #0x661688
00661804  08 00 57 e1                                      cmp r7, r8
00661808  fa ff ff 1a                                      bne #0x6617f8
0066180c  04 40 85 e5                                      str r4, [r5, #4]
00661810  09 00 a0 e1                                      mov r0, sb
00661814  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00661818, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIS_IN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEENS5_IS9_LS7_0EEEED1Ev
; demangled: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00661818  70 40 2d e9                                      push {r4, r5, r6, lr}
0066181c  04 40 90 e5                                      ldr r4, [r0, #4]
00661820  00 50 90 e5                                      ldr r5, [r0]
00661824  00 60 a0 e1                                      mov r6, r0
00661828  05 00 54 e1                                      cmp r4, r5
0066182c  04 00 00 0a                                      beq #0x661844
00661830  0c 40 44 e2                                      sub r4, r4, #0xc
00661834  04 00 a0 e1                                      mov r0, r4
00661838  92 ff ff eb                                      bl #0x661688
0066183c  04 00 55 e1                                      cmp r5, r4
00661840  fa ff ff 1a                                      bne #0x661830
00661844  00 00 96 e5                                      ldr r0, [r6]
00661848  00 00 50 e3                                      cmp r0, #0
0066184c  00 00 00 0a                                      beq #0x661854
00661850  fe ba f2 eb                                      bl #0x310450
00661854  06 00 a0 e1                                      mov r0, r6
00661858  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00661ea0, declared_size=448, range_size=448, mode=arm
; class-group: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIS_IN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEENS5_IS9_LS7_0EEEE22_M_insert_overflow_auxEPS9_RKS9_RKSt12__false_typejb.clone.0
; demangled: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >*, std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.0]
; decoder-mode: arm
00661ea0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00661ea4  01 40 a0 e1                                      mov r4, r1
00661ea8  03 10 a0 e1                                      mov r1, r3
00661eac  03 50 a0 e1                                      mov r5, r3
00661eb0  02 80 a0 e1                                      mov r8, r2
00661eb4  00 a0 a0 e1                                      mov sl, r0
00661eb8  d2 fd ff eb                                      bl #0x661608
00661ebc  0c b0 a0 e3                                      mov fp, #0xc
00661ec0  9b 00 0b e0                                      mul fp, fp, r0
00661ec4  00 10 a0 e3                                      mov r1, #0
00661ec8  0b 00 a0 e1                                      mov r0, fp
00661ecc  a5 b9 f2 eb                                      bl #0x310568
00661ed0  00 30 9a e5                                      ldr r3, [sl]
00661ed4  00 90 a0 e1                                      mov sb, r0
00661ed8  04 20 63 e0                                      rsb r2, r3, r4
00661edc  42 21 a0 e1                                      asr r2, r2, #2
00661ee0  02 61 82 e0                                      add r6, r2, r2, lsl #2
00661ee4  06 62 86 e0                                      add r6, r6, r6, lsl #4
00661ee8  06 64 86 e0                                      add r6, r6, r6, lsl #8
00661eec  06 68 86 e0                                      add r6, r6, r6, lsl #16
00661ef0  86 60 82 e0                                      add r6, r2, r6, lsl #1
00661ef4  00 00 56 e3                                      cmp r6, #0
00661ef8  00 60 a0 d1                                      movle r6, r0
00661efc  12 00 00 da                                      ble #0x661f4c
00661f00  0c 30 83 e2                                      add r3, r3, #0xc
00661f04  06 00 a0 e1                                      mov r0, r6
00661f08  09 20 a0 e1                                      mov r2, sb
00661f0c  00 10 a0 e3                                      mov r1, #0
00661f10  0c c0 13 e5                                      ldr ip, [r3, #-0xc]
00661f14  01 00 50 e2                                      subs r0, r0, #1
00661f18  00 c0 82 e5                                      str ip, [r2]
00661f1c  08 c0 13 e5                                      ldr ip, [r3, #-8]
00661f20  04 c0 82 e5                                      str ip, [r2, #4]
00661f24  04 c0 13 e5                                      ldr ip, [r3, #-4]
00661f28  08 c0 82 e5                                      str ip, [r2, #8]
00661f2c  0c 10 03 e5                                      str r1, [r3, #-0xc]
00661f30  04 10 03 e5                                      str r1, [r3, #-4]
00661f34  08 10 03 e5                                      str r1, [r3, #-8]
00661f38  0c 20 82 e2                                      add r2, r2, #0xc
00661f3c  0c 30 83 e2                                      add r3, r3, #0xc
00661f40  f2 ff ff 1a                                      bne #0x661f10
00661f44  0c 30 a0 e3                                      mov r3, #0xc
00661f48  93 96 26 e0                                      mla r6, r3, r6, sb
00661f4c  01 00 55 e3                                      cmp r5, #1
00661f50  3d 00 00 0a                                      beq #0x66204c
00661f54  0c 30 a0 e3                                      mov r3, #0xc
00661f58  93 65 25 e0                                      mla r5, r3, r5, r6
00661f5c  05 30 66 e0                                      rsb r3, r6, r5
00661f60  43 31 a0 e1                                      asr r3, r3, #2
00661f64  03 71 83 e0                                      add r7, r3, r3, lsl #2
00661f68  07 72 87 e0                                      add r7, r7, r7, lsl #4
00661f6c  07 74 87 e0                                      add r7, r7, r7, lsl #8
00661f70  07 78 87 e0                                      add r7, r7, r7, lsl #16
00661f74  87 70 83 e0                                      add r7, r3, r7, lsl #1
00661f78  00 00 57 e3                                      cmp r7, #0
00661f7c  05 00 00 da                                      ble #0x661f98
00661f80  06 00 a0 e1                                      mov r0, r6
00661f84  08 10 a0 e1                                      mov r1, r8
00661f88  9f ff ff eb                                      bl #0x661e0c
00661f8c  01 70 57 e2                                      subs r7, r7, #1
00661f90  0c 60 86 e2                                      add r6, r6, #0xc
00661f94  f9 ff ff 1a                                      bne #0x661f80
00661f98  04 60 9a e5                                      ldr r6, [sl, #4]
00661f9c  06 30 64 e0                                      rsb r3, r4, r6
00661fa0  43 31 a0 e1                                      asr r3, r3, #2
00661fa4  03 c1 83 e0                                      add ip, r3, r3, lsl #2
00661fa8  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00661fac  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00661fb0  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00661fb4  8c c0 83 e0                                      add ip, r3, ip, lsl #1
00661fb8  00 00 5c e3                                      cmp ip, #0
00661fbc  13 00 00 da                                      ble #0x662010
00661fc0  0c 40 84 e2                                      add r4, r4, #0xc
00661fc4  0c 10 a0 e1                                      mov r1, ip
00661fc8  05 30 a0 e1                                      mov r3, r5
00661fcc  00 20 a0 e3                                      mov r2, #0
00661fd0  0c 00 14 e5                                      ldr r0, [r4, #-0xc]
00661fd4  01 10 51 e2                                      subs r1, r1, #1
00661fd8  00 00 83 e5                                      str r0, [r3]
00661fdc  08 00 14 e5                                      ldr r0, [r4, #-8]
00661fe0  04 00 83 e5                                      str r0, [r3, #4]
00661fe4  04 00 14 e5                                      ldr r0, [r4, #-4]
00661fe8  08 00 83 e5                                      str r0, [r3, #8]
00661fec  0c 20 04 e5                                      str r2, [r4, #-0xc]
00661ff0  04 20 04 e5                                      str r2, [r4, #-4]
00661ff4  08 20 04 e5                                      str r2, [r4, #-8]
00661ff8  0c 30 83 e2                                      add r3, r3, #0xc
00661ffc  0c 40 84 e2                                      add r4, r4, #0xc
00662000  f2 ff ff 1a                                      bne #0x661fd0
00662004  0c 30 a0 e3                                      mov r3, #0xc
00662008  93 5c 25 e0                                      mla r5, r3, ip, r5
0066200c  04 60 9a e5                                      ldr r6, [sl, #4]
00662010  00 40 9a e5                                      ldr r4, [sl]
00662014  04 00 56 e1                                      cmp r6, r4
00662018  06 00 a0 01                                      moveq r0, r6
0066201c  05 00 00 0a                                      beq #0x662038
00662020  0c 60 46 e2                                      sub r6, r6, #0xc
00662024  06 00 a0 e1                                      mov r0, r6
00662028  96 fd ff eb                                      bl #0x661688
0066202c  06 00 54 e1                                      cmp r4, r6
00662030  fa ff ff 1a                                      bne #0x662020
00662034  00 00 9a e5                                      ldr r0, [sl]
00662038  0b b0 89 e0                                      add fp, sb, fp
0066203c  03 b9 f2 eb                                      bl #0x310450
00662040  20 08 8a e9                                      stmib sl, {r5, fp}
00662044  00 90 8a e5                                      str sb, [sl]
00662048  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066204c  08 10 a0 e1                                      mov r1, r8
00662050  06 00 a0 e1                                      mov r0, r6
00662054  6c ff ff eb                                      bl #0x661e0c
00662058  0c 50 86 e2                                      add r5, r6, #0xc
0066205c  cd ff ff ea                                      b #0x661f98

; FUNCTION 0x00662060, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIS_IN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEENS5_IS9_LS7_0EEEE18_M_fill_insert_auxEPS9_jRKS9_RKSt11__true_type
; demangled: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >*, unsigned int, std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__true_type const&)
; decoder-mode: arm
00662060  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00662064  00 40 a0 e1                                      mov r4, r0
00662068  00 00 90 e5                                      ldr r0, [r0]
0066206c  20 d0 4d e2                                      sub sp, sp, #0x20
00662070  03 70 a0 e1                                      mov r7, r3
00662074  00 00 53 e1                                      cmp r3, r0
00662078  01 60 a0 e1                                      mov r6, r1
0066207c  04 50 94 35                                      ldrlo r5, [r4, #4]
00662080  02 00 00 3a                                      blo #0x662090
00662084  04 50 94 e5                                      ldr r5, [r4, #4]
00662088  05 00 53 e1                                      cmp r3, r5
0066208c  29 00 00 3a                                      blo #0x662138
00662090  0c 80 a0 e3                                      mov r8, #0xc
00662094  98 02 08 e0                                      mul r8, r8, r2
00662098  0c 50 45 e2                                      sub r5, r5, #0xc
0066209c  05 00 56 e1                                      cmp r6, r5
006620a0  08 a0 85 90                                      addls sl, r5, r8
006620a4  00 90 a0 93                                      movls sb, #0
006620a8  01 00 00 9a                                      bls #0x6620b4
006620ac  0e 00 00 ea                                      b #0x6620ec
006620b0  0c a0 4a e2                                      sub sl, sl, #0xc
006620b4  00 30 95 e5                                      ldr r3, [r5]
006620b8  05 00 a0 e1                                      mov r0, r5
006620bc  00 30 8a e5                                      str r3, [sl]
006620c0  04 30 95 e5                                      ldr r3, [r5, #4]
006620c4  04 30 8a e5                                      str r3, [sl, #4]
006620c8  08 30 95 e5                                      ldr r3, [r5, #8]
006620cc  08 30 8a e5                                      str r3, [sl, #8]
006620d0  00 90 85 e5                                      str sb, [r5]
006620d4  08 90 85 e5                                      str sb, [r5, #8]
006620d8  04 90 85 e5                                      str sb, [r5, #4]
006620dc  0c 50 45 e2                                      sub r5, r5, #0xc
006620e0  68 fd ff eb                                      bl #0x661688
006620e4  05 00 56 e1                                      cmp r6, r5
006620e8  f0 ff ff 9a                                      bls #0x6620b0
006620ec  48 31 a0 e1                                      asr r3, r8, #2
006620f0  03 51 83 e0                                      add r5, r3, r3, lsl #2
006620f4  05 52 85 e0                                      add r5, r5, r5, lsl #4
006620f8  05 54 85 e0                                      add r5, r5, r5, lsl #8
006620fc  05 58 85 e0                                      add r5, r5, r5, lsl #16
00662100  85 50 83 e0                                      add r5, r3, r5, lsl #1
00662104  00 00 55 e3                                      cmp r5, #0
00662108  05 00 00 da                                      ble #0x662124
0066210c  06 00 a0 e1                                      mov r0, r6
00662110  07 10 a0 e1                                      mov r1, r7
00662114  3c ff ff eb                                      bl #0x661e0c
00662118  01 50 55 e2                                      subs r5, r5, #1
0066211c  0c 60 86 e2                                      add r6, r6, #0xc
00662120  f9 ff ff 1a                                      bne #0x66210c
00662124  04 30 94 e5                                      ldr r3, [r4, #4]
00662128  08 80 83 e0                                      add r8, r3, r8
0066212c  04 80 84 e5                                      str r8, [r4, #4]
00662130  20 d0 8d e2                                      add sp, sp, #0x20
00662134  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00662138  10 50 8d e2                                      add r5, sp, #0x10
0066213c  03 10 a0 e1                                      mov r1, r3
00662140  05 00 a0 e1                                      mov r0, r5
00662144  0c 20 8d e5                                      str r2, [sp, #0xc]
00662148  2f ff ff eb                                      bl #0x661e0c
0066214c  04 00 a0 e1                                      mov r0, r4
00662150  1c c0 8d e2                                      add ip, sp, #0x1c
00662154  06 10 a0 e1                                      mov r1, r6
00662158  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0066215c  05 30 a0 e1                                      mov r3, r5
00662160  00 c0 8d e5                                      str ip, [sp]
00662164  bd ff ff eb                                      bl #0x662060
00662168  05 00 a0 e1                                      mov r0, r5
0066216c  45 fd ff eb                                      bl #0x661688
00662170  ee ff ff ea                                      b #0x662130

; FUNCTION 0x00662174, declared_size=180, range_size=180, mode=arm
; class-group: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIS_IN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEENS5_IS9_LS7_0EEEE14_M_fill_insertEPS9_jRKS9_
; demangled: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >*, unsigned int, std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00662174  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00662178  00 50 52 e2                                      subs r5, r2, #0
0066217c  18 d0 4d e2                                      sub sp, sp, #0x18
00662180  00 40 a0 e1                                      mov r4, r0
00662184  01 80 a0 e1                                      mov r8, r1
00662188  03 c0 a0 e1                                      mov ip, r3
0066218c  19 00 00 0a                                      beq #0x6621f8
00662190  80 40 90 e9                                      ldmib r0, {r7, lr}
00662194  0e e0 67 e0                                      rsb lr, r7, lr
00662198  4e e1 a0 e1                                      asr lr, lr, #2
0066219c  0e 61 8e e0                                      add r6, lr, lr, lsl #2
006621a0  06 62 86 e0                                      add r6, r6, r6, lsl #4
006621a4  06 64 86 e0                                      add r6, r6, r6, lsl #8
006621a8  06 68 86 e0                                      add r6, r6, r6, lsl #16
006621ac  86 60 8e e0                                      add r6, lr, r6, lsl #1
006621b0  06 00 55 e1                                      cmp r5, r6
006621b4  11 00 00 9a                                      bls #0x662200
006621b8  00 30 90 e5                                      ldr r3, [r0]
006621bc  03 00 5c e1                                      cmp ip, r3
006621c0  12 00 00 3a                                      blo #0x662210
006621c4  0c 00 57 e1                                      cmp r7, ip
006621c8  10 00 00 9a                                      bls #0x662210
006621cc  08 60 8d e2                                      add r6, sp, #8
006621d0  0c 10 a0 e1                                      mov r1, ip
006621d4  06 00 a0 e1                                      mov r0, r6
006621d8  0b ff ff eb                                      bl #0x661e0c
006621dc  04 00 a0 e1                                      mov r0, r4
006621e0  08 10 a0 e1                                      mov r1, r8
006621e4  06 20 a0 e1                                      mov r2, r6
006621e8  05 30 a0 e1                                      mov r3, r5
006621ec  2b ff ff eb                                      bl #0x661ea0
006621f0  06 00 a0 e1                                      mov r0, r6
006621f4  23 fd ff eb                                      bl #0x661688
006621f8  18 d0 8d e2                                      add sp, sp, #0x18
006621fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00662200  14 c0 8d e2                                      add ip, sp, #0x14
00662204  00 c0 8d e5                                      str ip, [sp]
00662208  94 ff ff eb                                      bl #0x662060
0066220c  f9 ff ff ea                                      b #0x6621f8
00662210  04 00 a0 e1                                      mov r0, r4
00662214  08 10 a0 e1                                      mov r1, r8
00662218  0c 20 a0 e1                                      mov r2, ip
0066221c  05 30 a0 e1                                      mov r3, r5
00662220  1e ff ff eb                                      bl #0x661ea0
00662224  f3 ff ff ea                                      b #0x6621f8

; FUNCTION 0x00662228, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIS_IN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEENS5_IS9_LS7_0EEEE6resizeEjRKS9_
; demangled: std::vector<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedBlender::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00662228  30 40 2d e9                                      push {r4, r5, lr}
0066222c  10 10 90 e8                                      ldm r0, {r4, ip}
00662230  02 30 a0 e1                                      mov r3, r2
00662234  0c d0 4d e2                                      sub sp, sp, #0xc
00662238  0c 20 64 e0                                      rsb r2, r4, ip
0066223c  42 21 a0 e1                                      asr r2, r2, #2
00662240  02 51 82 e0                                      add r5, r2, r2, lsl #2
00662244  05 52 85 e0                                      add r5, r5, r5, lsl #4
00662248  05 54 85 e0                                      add r5, r5, r5, lsl #8
0066224c  05 58 85 e0                                      add r5, r5, r5, lsl #16
00662250  85 20 82 e0                                      add r2, r2, r5, lsl #1
00662254  02 00 51 e1                                      cmp r1, r2
00662258  08 00 00 2a                                      bhs #0x662280
0066225c  0c 30 a0 e3                                      mov r3, #0xc
00662260  93 41 21 e0                                      mla r1, r3, r1, r4
00662264  0c 00 51 e1                                      cmp r1, ip
00662268  02 00 00 0a                                      beq #0x662278
0066226c  0c 20 a0 e1                                      mov r2, ip
00662270  04 30 8d e2                                      add r3, sp, #4
00662274  14 fd ff eb                                      bl #0x6616cc
00662278  0c d0 8d e2                                      add sp, sp, #0xc
0066227c  30 80 bd e8                                      pop {r4, r5, pc}
00662280  01 20 62 e0                                      rsb r2, r2, r1
00662284  0c 10 a0 e1                                      mov r1, ip
00662288  b9 ff ff eb                                      bl #0x662174
0066228c  f9 ff ff ea                                      b #0x662278
