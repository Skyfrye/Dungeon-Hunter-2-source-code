; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00662950, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00662950  70 40 2d e9                                      push {r4, r5, r6, lr}
00662954  14 00 90 e8                                      ldm r0, {r2, r4}
00662958  ff 3f 0f e3                                      movw r3, #0xffff
0066295c  ff 37 40 e3                                      movt r3, #0x7ff
00662960  04 40 62 e0                                      rsb r4, r2, r4
00662964  c4 42 a0 e1                                      asr r4, r4, #5
00662968  03 30 64 e0                                      rsb r3, r4, r3
0066296c  01 00 53 e1                                      cmp r3, r1
00662970  01 50 a0 e1                                      mov r5, r1
00662974  08 00 00 3a                                      blo #0x66299c
00662978  05 00 54 e1                                      cmp r4, r5
0066297c  04 00 84 20                                      addhs r0, r4, r4
00662980  05 00 84 30                                      addlo r0, r4, r5
00662984  7e 03 70 e3                                      cmn r0, #0xf8000001
00662988  01 00 00 8a                                      bhi #0x662994
0066298c  04 00 50 e1                                      cmp r0, r4
00662990  00 00 00 2a                                      bhs #0x662998
00662994  3e 03 e0 e3                                      mvn r0, #0xf8000000
00662998  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066299c  08 00 9f e5                                      ldr r0, [pc, #8]
006629a0  00 00 8f e0                                      add r0, pc, r0
006629a4  25 99 02 eb                                      bl #0x708e40
006629a8  f2 ff ff ea                                      b #0x662978
; mapping-symbol data/literal pool
006629ac  c8 ba 25 00                                      .byte 0xc8, 0xba, 0x25, 0x00

; FUNCTION 0x00662b0c, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00662b0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00662b10  04 40 90 e5                                      ldr r4, [r0, #4]
00662b14  00 50 90 e5                                      ldr r5, [r0]
00662b18  00 60 a0 e1                                      mov r6, r0
00662b1c  05 00 54 e1                                      cmp r4, r5
00662b20  04 00 00 0a                                      beq #0x662b38
00662b24  20 40 44 e2                                      sub r4, r4, #0x20
00662b28  08 00 84 e2                                      add r0, r4, #8
00662b2c  9e c3 f2 eb                                      bl #0x3139ac
00662b30  04 00 55 e1                                      cmp r5, r4
00662b34  fa ff ff 1a                                      bne #0x662b24
00662b38  00 00 96 e5                                      ldr r0, [r6]
00662b3c  00 00 50 e3                                      cmp r0, #0
00662b40  00 00 00 0a                                      beq #0x662b48
00662b44  41 b6 f2 eb                                      bl #0x310450
00662b48  06 00 a0 e1                                      mov r0, r6
00662b4c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00662ec4, declared_size=164, range_size=164, mode=arm
; class-group: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, std::__false_type const&)
; decoder-mode: arm
00662ec4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00662ec8  04 50 90 e5                                      ldr r5, [r0, #4]
00662ecc  00 70 a0 e1                                      mov r7, r0
00662ed0  02 40 a0 e1                                      mov r4, r2
00662ed4  05 a0 62 e0                                      rsb sl, r2, r5
00662ed8  ca a2 a0 e1                                      asr sl, sl, #5
00662edc  00 00 5a e3                                      cmp sl, #0
00662ee0  01 80 a0 e1                                      mov r8, r1
00662ee4  01 a0 a0 d1                                      movle sl, r1
00662ee8  13 00 00 da                                      ble #0x662f3c
00662eec  0a 60 a0 e1                                      mov r6, sl
00662ef0  01 50 a0 e1                                      mov r5, r1
00662ef4  00 00 00 ea                                      b #0x662efc
00662ef8  20 40 84 e2                                      add r4, r4, #0x20
00662efc  00 30 94 e5                                      ldr r3, [r4]
00662f00  08 00 85 e2                                      add r0, r5, #8
00662f04  08 20 84 e2                                      add r2, r4, #8
00662f08  00 30 85 e5                                      str r3, [r5]
00662f0c  04 30 94 e5                                      ldr r3, [r4, #4]
00662f10  02 00 50 e1                                      cmp r0, r2
00662f14  04 30 85 e5                                      str r3, [r5, #4]
00662f18  02 00 00 0a                                      beq #0x662f28
00662f1c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00662f20  18 20 94 e5                                      ldr r2, [r4, #0x18]
00662f24  ad b6 f2 eb                                      bl #0x3109e0
00662f28  01 60 56 e2                                      subs r6, r6, #1
00662f2c  20 50 85 e2                                      add r5, r5, #0x20
00662f30  f0 ff ff 1a                                      bne #0x662ef8
00662f34  04 50 97 e5                                      ldr r5, [r7, #4]
00662f38  8a a2 88 e0                                      add sl, r8, sl, lsl #5
00662f3c  0a 00 55 e1                                      cmp r5, sl
00662f40  05 00 00 0a                                      beq #0x662f5c
00662f44  0a 40 a0 e1                                      mov r4, sl
00662f48  08 00 84 e2                                      add r0, r4, #8
00662f4c  20 40 84 e2                                      add r4, r4, #0x20
00662f50  95 c2 f2 eb                                      bl #0x3139ac
00662f54  04 00 55 e1                                      cmp r5, r4
00662f58  fa ff ff 1a                                      bne #0x662f48
00662f5c  04 a0 87 e5                                      str sl, [r7, #4]
00662f60  08 00 a0 e1                                      mov r0, r8
00662f64  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00662f68, declared_size=572, range_size=572, mode=arm
; class-group: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, unsigned int, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData const&, std::__false_type const&)
; decoder-mode: arm
00662f68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00662f6c  28 92 9f e5                                      ldr sb, [pc, #0x228]
00662f70  28 b2 9f e5                                      ldr fp, [pc, #0x228]
00662f74  00 80 a0 e1                                      mov r8, r0
00662f78  09 90 8f e0                                      add sb, pc, sb
00662f7c  0b c0 99 e7                                      ldr ip, [sb, fp]
00662f80  00 00 90 e5                                      ldr r0, [r0]
00662f84  03 50 a0 e1                                      mov r5, r3
00662f88  00 30 9c e5                                      ldr r3, [ip]
00662f8c  4c d0 4d e2                                      sub sp, sp, #0x4c
00662f90  00 00 55 e1                                      cmp r5, r0
00662f94  44 30 8d e5                                      str r3, [sp, #0x44]
00662f98  01 40 a0 e1                                      mov r4, r1
00662f9c  02 a0 a0 e1                                      mov sl, r2
00662fa0  04 70 98 35                                      ldrlo r7, [r8, #4]
00662fa4  1d 00 00 3a                                      blo #0x663020
00662fa8  04 70 98 e5                                      ldr r7, [r8, #4]
00662fac  07 00 55 e1                                      cmp r5, r7
00662fb0  1a 00 00 2a                                      bhs #0x663020
00662fb4  08 10 95 e8                                      ldm r5, {r3, ip}
00662fb8  24 70 8d e2                                      add r7, sp, #0x24
00662fbc  08 60 87 e2                                      add r6, r7, #8
00662fc0  18 20 95 e5                                      ldr r2, [r5, #0x18]
00662fc4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00662fc8  06 00 a0 e1                                      mov r0, r6
00662fcc  24 30 8d e5                                      str r3, [sp, #0x24]
00662fd0  28 c0 8d e5                                      str ip, [sp, #0x28]
00662fd4  3c 60 8d e5                                      str r6, [sp, #0x3c]
00662fd8  40 60 8d e5                                      str r6, [sp, #0x40]
00662fdc  c1 b9 f2 eb                                      bl #0x3116e8
00662fe0  08 00 a0 e1                                      mov r0, r8
00662fe4  20 c0 8d e2                                      add ip, sp, #0x20
00662fe8  04 10 a0 e1                                      mov r1, r4
00662fec  0a 20 a0 e1                                      mov r2, sl
00662ff0  07 30 a0 e1                                      mov r3, r7
00662ff4  00 c0 8d e5                                      str ip, [sp]
00662ff8  da ff ff eb                                      bl #0x662f68
00662ffc  06 00 a0 e1                                      mov r0, r6
00663000  69 c2 f2 eb                                      bl #0x3139ac
00663004  0b 30 99 e7                                      ldr r3, [sb, fp]
00663008  44 20 9d e5                                      ldr r2, [sp, #0x44]
0066300c  00 30 93 e5                                      ldr r3, [r3]
00663010  03 00 52 e1                                      cmp r2, r3
00663014  5f 00 00 1a                                      bne #0x663198
00663018  4c d0 8d e2                                      add sp, sp, #0x4c
0066301c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00663020  07 60 64 e0                                      rsb r6, r4, r7
00663024  c6 62 a0 e1                                      asr r6, r6, #5
00663028  06 00 5a e1                                      cmp sl, r6
0066302c  26 00 00 3a                                      blo #0x6630cc
00663030  0a a0 66 e0                                      rsb sl, r6, sl
00663034  8a a2 87 e0                                      add sl, r7, sl, lsl #5
00663038  00 c0 a0 e3                                      mov ip, #0
0066303c  07 00 a0 e1                                      mov r0, r7
00663040  0a 10 a0 e1                                      mov r1, sl
00663044  05 20 a0 e1                                      mov r2, r5
00663048  18 30 8d e2                                      add r3, sp, #0x18
0066304c  00 c0 8d e5                                      str ip, [sp]
00663050  08 c0 8d e5                                      str ip, [sp, #8]
00663054  55 fe ff eb                                      bl #0x6629b0
00663058  04 a0 88 e5                                      str sl, [r8, #4]
0066305c  08 c0 9d e5                                      ldr ip, [sp, #8]
00663060  14 30 8d e2                                      add r3, sp, #0x14
00663064  07 10 a0 e1                                      mov r1, r7
00663068  0a 20 a0 e1                                      mov r2, sl
0066306c  04 00 a0 e1                                      mov r0, r4
00663070  00 c0 8d e5                                      str ip, [sp]
00663074  64 fe ff eb                                      bl #0x662a0c
00663078  04 30 98 e5                                      ldr r3, [r8, #4]
0066307c  00 00 56 e3                                      cmp r6, #0
00663080  86 32 83 e0                                      add r3, r3, r6, lsl #5
00663084  04 30 88 e5                                      str r3, [r8, #4]
00663088  dd ff ff da                                      ble #0x663004
0066308c  08 70 85 e2                                      add r7, r5, #8
00663090  00 00 00 ea                                      b #0x663098
00663094  20 40 84 e2                                      add r4, r4, #0x20
00663098  00 30 95 e5                                      ldr r3, [r5]
0066309c  08 00 84 e2                                      add r0, r4, #8
006630a0  07 00 50 e1                                      cmp r0, r7
006630a4  00 30 84 e5                                      str r3, [r4]
006630a8  04 30 95 e5                                      ldr r3, [r5, #4]
006630ac  04 30 84 e5                                      str r3, [r4, #4]
006630b0  02 00 00 0a                                      beq #0x6630c0
006630b4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
006630b8  18 20 95 e5                                      ldr r2, [r5, #0x18]
006630bc  47 b6 f2 eb                                      bl #0x3109e0
006630c0  01 60 56 e2                                      subs r6, r6, #1
006630c4  f2 ff ff 1a                                      bne #0x663094
006630c8  cd ff ff ea                                      b #0x663004
006630cc  8a a2 a0 e1                                      lsl sl, sl, #5
006630d0  07 60 6a e0                                      rsb r6, sl, r7
006630d4  07 20 a0 e1                                      mov r2, r7
006630d8  1c 30 8d e2                                      add r3, sp, #0x1c
006630dc  00 c0 a0 e3                                      mov ip, #0
006630e0  06 00 a0 e1                                      mov r0, r6
006630e4  07 10 a0 e1                                      mov r1, r7
006630e8  0c a0 8d e5                                      str sl, [sp, #0xc]
006630ec  00 c0 8d e5                                      str ip, [sp]
006630f0  45 fe ff eb                                      bl #0x662a0c
006630f4  04 30 98 e5                                      ldr r3, [r8, #4]
006630f8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006630fc  06 a0 64 e0                                      rsb sl, r4, r6
00663100  ca a2 a0 e1                                      asr sl, sl, #5
00663104  02 30 83 e0                                      add r3, r3, r2
00663108  00 00 5a e3                                      cmp sl, #0
0066310c  04 30 88 e5                                      str r3, [r8, #4]
00663110  0c 00 00 da                                      ble #0x663148
00663114  20 30 36 e5                                      ldr r3, [r6, #-0x20]!
00663118  20 30 27 e5                                      str r3, [r7, #-0x20]!
0066311c  04 30 96 e5                                      ldr r3, [r6, #4]
00663120  08 00 87 e2                                      add r0, r7, #8
00663124  08 20 86 e2                                      add r2, r6, #8
00663128  02 00 50 e1                                      cmp r0, r2
0066312c  04 30 87 e5                                      str r3, [r7, #4]
00663130  02 00 00 0a                                      beq #0x663140
00663134  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
00663138  18 20 96 e5                                      ldr r2, [r6, #0x18]
0066313c  27 b6 f2 eb                                      bl #0x3109e0
00663140  01 a0 5a e2                                      subs sl, sl, #1
00663144  f2 ff ff 1a                                      bne #0x663114
00663148  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0066314c  c3 a2 a0 e1                                      asr sl, r3, #5
00663150  00 00 5a e3                                      cmp sl, #0
00663154  aa ff ff da                                      ble #0x663004
00663158  08 60 85 e2                                      add r6, r5, #8
0066315c  00 00 00 ea                                      b #0x663164
00663160  20 40 84 e2                                      add r4, r4, #0x20
00663164  00 30 95 e5                                      ldr r3, [r5]
00663168  08 00 84 e2                                      add r0, r4, #8
0066316c  06 00 50 e1                                      cmp r0, r6
00663170  00 30 84 e5                                      str r3, [r4]
00663174  04 30 95 e5                                      ldr r3, [r5, #4]
00663178  04 30 84 e5                                      str r3, [r4, #4]
0066317c  02 00 00 0a                                      beq #0x66318c
00663180  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00663184  18 20 95 e5                                      ldr r2, [r5, #0x18]
00663188  14 b6 f2 eb                                      bl #0x3109e0
0066318c  01 a0 5a e2                                      subs sl, sl, #1
00663190  f2 ff ff 1a                                      bne #0x663160
00663194  9a ff ff ea                                      b #0x663004
00663198  5c ac f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0066319c  18 1b 33 00 ac 40 00 00                          .byte 0x18, 0x1b, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006631a4, declared_size=304, range_size=304, mode=arm
; class-group: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, unsigned int, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData const&)
; decoder-mode: arm
006631a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006631a8  00 50 52 e2                                      subs r5, r2, #0
006631ac  1c d0 4d e2                                      sub sp, sp, #0x1c
006631b0  00 40 a0 e1                                      mov r4, r0
006631b4  01 70 a0 e1                                      mov r7, r1
006631b8  03 60 a0 e1                                      mov r6, r3
006631bc  31 00 00 0a                                      beq #0x663288
006631c0  00 50 90 e9                                      ldmib r0, {ip, lr}
006631c4  0e c0 6c e0                                      rsb ip, ip, lr
006631c8  cc 02 55 e1                                      cmp r5, ip, asr #5
006631cc  2f 00 00 9a                                      bls #0x663290
006631d0  05 10 a0 e1                                      mov r1, r5
006631d4  dd fd ff eb                                      bl #0x662950
006631d8  80 92 a0 e1                                      lsl sb, r0, #5
006631dc  00 10 a0 e3                                      mov r1, #0
006631e0  09 00 a0 e1                                      mov r0, sb
006631e4  df b4 f2 eb                                      bl #0x310568
006631e8  00 80 a0 e1                                      mov r8, r0
006631ec  00 b0 a0 e3                                      mov fp, #0
006631f0  00 00 94 e5                                      ldr r0, [r4]
006631f4  07 10 a0 e1                                      mov r1, r7
006631f8  08 20 a0 e1                                      mov r2, r8
006631fc  10 30 8d e2                                      add r3, sp, #0x10
00663200  00 b0 8d e5                                      str fp, [sp]
00663204  00 fe ff eb                                      bl #0x662a0c
00663208  01 00 55 e3                                      cmp r5, #1
0066320c  00 a0 a0 e1                                      mov sl, r0
00663210  22 00 00 0a                                      beq #0x6632a0
00663214  85 a2 80 e0                                      add sl, r0, r5, lsl #5
00663218  06 20 a0 e1                                      mov r2, r6
0066321c  0a 10 a0 e1                                      mov r1, sl
00663220  0c 30 8d e2                                      add r3, sp, #0xc
00663224  00 b0 8d e5                                      str fp, [sp]
00663228  e0 fd ff eb                                      bl #0x6629b0
0066322c  04 10 94 e5                                      ldr r1, [r4, #4]
00663230  07 00 a0 e1                                      mov r0, r7
00663234  00 c0 a0 e3                                      mov ip, #0
00663238  0a 20 a0 e1                                      mov r2, sl
0066323c  08 30 8d e2                                      add r3, sp, #8
00663240  00 c0 8d e5                                      str ip, [sp]
00663244  f0 fd ff eb                                      bl #0x662a0c
00663248  04 50 94 e5                                      ldr r5, [r4, #4]
0066324c  00 60 94 e5                                      ldr r6, [r4]
00663250  00 70 a0 e1                                      mov r7, r0
00663254  06 00 55 e1                                      cmp r5, r6
00663258  05 00 00 0a                                      beq #0x663274
0066325c  20 50 45 e2                                      sub r5, r5, #0x20
00663260  08 00 85 e2                                      add r0, r5, #8
00663264  d0 c1 f2 eb                                      bl #0x3139ac
00663268  05 00 56 e1                                      cmp r6, r5
0066326c  fa ff ff 1a                                      bne #0x66325c
00663270  00 60 94 e5                                      ldr r6, [r4]
00663274  06 00 a0 e1                                      mov r0, r6
00663278  09 90 88 e0                                      add sb, r8, sb
0066327c  73 b4 f2 eb                                      bl #0x310450
00663280  80 02 84 e9                                      stmib r4, {r7, sb}
00663284  00 80 84 e5                                      str r8, [r4]
00663288  1c d0 8d e2                                      add sp, sp, #0x1c
0066328c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00663290  14 c0 8d e2                                      add ip, sp, #0x14
00663294  00 c0 8d e5                                      str ip, [sp]
00663298  32 ff ff eb                                      bl #0x662f68
0066329c  f9 ff ff ea                                      b #0x663288
006632a0  00 20 96 e5                                      ldr r2, [r6]
006632a4  08 30 80 e2                                      add r3, r0, #8
006632a8  03 00 a0 e1                                      mov r0, r3
006632ac  00 20 8a e5                                      str r2, [sl]
006632b0  04 20 96 e5                                      ldr r2, [r6, #4]
006632b4  18 30 8a e5                                      str r3, [sl, #0x18]
006632b8  1c 30 8a e5                                      str r3, [sl, #0x1c]
006632bc  04 20 8a e5                                      str r2, [sl, #4]
006632c0  18 20 96 e5                                      ldr r2, [r6, #0x18]
006632c4  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
006632c8  06 b9 f2 eb                                      bl #0x3116e8
006632cc  20 a0 8a e2                                      add sl, sl, #0x20
006632d0  d5 ff ff ea                                      b #0x66322c

; FUNCTION 0x006632d4, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19SynchronizationDataENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_
; demangled: std::vector<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, glitch::core::SAllocator<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData const&)
; decoder-mode: arm
006632d4  10 40 2d e9                                      push {r4, lr}
006632d8  10 10 90 e8                                      ldm r0, {r4, ip}
006632dc  02 30 a0 e1                                      mov r3, r2
006632e0  08 d0 4d e2                                      sub sp, sp, #8
006632e4  0c 20 64 e0                                      rsb r2, r4, ip
006632e8  c2 22 a0 e1                                      asr r2, r2, #5
006632ec  02 00 51 e1                                      cmp r1, r2
006632f0  07 00 00 2a                                      bhs #0x663314
006632f4  81 12 84 e0                                      add r1, r4, r1, lsl #5
006632f8  0c 00 51 e1                                      cmp r1, ip
006632fc  02 00 00 0a                                      beq #0x66330c
00663300  0c 20 a0 e1                                      mov r2, ip
00663304  04 30 8d e2                                      add r3, sp, #4
00663308  ed fe ff eb                                      bl #0x662ec4
0066330c  08 d0 8d e2                                      add sp, sp, #8
00663310  10 80 bd e8                                      pop {r4, pc}
00663314  01 20 62 e0                                      rsb r2, r2, r1
00663318  0c 10 a0 e1                                      mov r1, ip
0066331c  a0 ff ff eb                                      bl #0x6631a4
00663320  f9 ff ff ea                                      b #0x66330c
