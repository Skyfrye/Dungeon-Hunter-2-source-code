; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00647ab8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh14SModularBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00647ab8  70 40 2d e9                                      push {r4, r5, r6, lr}
00647abc  04 40 90 e5                                      ldr r4, [r0, #4]
00647ac0  00 50 90 e5                                      ldr r5, [r0]
00647ac4  00 60 a0 e1                                      mov r6, r0
00647ac8  05 00 54 e1                                      cmp r4, r5
00647acc  04 00 00 0a                                      beq #0x647ae4
00647ad0  20 40 44 e2                                      sub r4, r4, #0x20
00647ad4  04 00 a0 e1                                      mov r0, r4
00647ad8  e2 ff ff eb                                      bl #0x647a68
00647adc  04 00 55 e1                                      cmp r5, r4
00647ae0  fa ff ff 1a                                      bne #0x647ad0
00647ae4  00 00 96 e5                                      ldr r0, [r6]
00647ae8  00 00 50 e3                                      cmp r0, #0
00647aec  00 00 00 0a                                      beq #0x647af4
00647af0  56 22 f3 eb                                      bl #0x310450
00647af4  06 00 a0 e1                                      mov r0, r6
00647af8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00647bc8, declared_size=256, range_size=256, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh14SModularBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::collada::CModularSkinnedMesh::SModularBuffer const&)
; decoder-mode: arm
00647bc8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00647bcc  00 60 a0 e1                                      mov r6, r0
00647bd0  08 40 96 e5                                      ldr r4, [r6, #8]
00647bd4  04 00 90 e5                                      ldr r0, [r0, #4]
00647bd8  01 a0 a0 e1                                      mov sl, r1
00647bdc  04 00 50 e1                                      cmp r0, r4
00647be0  04 00 00 0a                                      beq #0x647bf8
00647be4  11 fe ff eb                                      bl #0x647430
00647be8  04 30 96 e5                                      ldr r3, [r6, #4]
00647bec  20 30 83 e2                                      add r3, r3, #0x20
00647bf0  04 30 86 e5                                      str r3, [r6, #4]
00647bf4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00647bf8  00 30 96 e5                                      ldr r3, [r6]
00647bfc  04 30 63 e0                                      rsb r3, r3, r4
00647c00  c3 32 a0 e1                                      asr r3, r3, #5
00647c04  01 00 53 e3                                      cmp r3, #1
00647c08  03 90 83 20                                      addhs sb, r3, r3
00647c0c  01 90 83 32                                      addlo sb, r3, #1
00647c10  7e 03 79 e3                                      cmn sb, #0xf8000001
00647c14  27 00 00 9a                                      bls #0x647cb8
00647c18  1f 90 e0 e3                                      mvn sb, #0x1f
00647c1c  09 00 a0 e1                                      mov r0, sb
00647c20  00 10 a0 e3                                      mov r1, #0
00647c24  4f 22 f3 eb                                      bl #0x310568
00647c28  00 80 96 e5                                      ldr r8, [r6]
00647c2c  00 70 a0 e1                                      mov r7, r0
00647c30  04 40 68 e0                                      rsb r4, r8, r4
00647c34  c4 b2 a0 e1                                      asr fp, r4, #5
00647c38  00 00 5b e3                                      cmp fp, #0
00647c3c  00 b0 a0 d1                                      movle fp, r0
00647c40  08 00 00 da                                      ble #0x647c68
00647c44  0b 50 a0 e1                                      mov r5, fp
00647c48  00 40 a0 e3                                      mov r4, #0
00647c4c  04 00 87 e0                                      add r0, r7, r4
00647c50  04 10 88 e0                                      add r1, r8, r4
00647c54  f5 fd ff eb                                      bl #0x647430
00647c58  01 50 55 e2                                      subs r5, r5, #1
00647c5c  20 40 84 e2                                      add r4, r4, #0x20
00647c60  f9 ff ff 1a                                      bne #0x647c4c
00647c64  8b b2 87 e0                                      add fp, r7, fp, lsl #5
00647c68  0b 00 a0 e1                                      mov r0, fp
00647c6c  0a 10 a0 e1                                      mov r1, sl
00647c70  ee fd ff eb                                      bl #0x647430
00647c74  04 40 96 e5                                      ldr r4, [r6, #4]
00647c78  00 50 96 e5                                      ldr r5, [r6]
00647c7c  20 b0 8b e2                                      add fp, fp, #0x20
00647c80  05 00 54 e1                                      cmp r4, r5
00647c84  05 00 00 0a                                      beq #0x647ca0
00647c88  20 40 44 e2                                      sub r4, r4, #0x20
00647c8c  04 00 a0 e1                                      mov r0, r4
00647c90  74 ff ff eb                                      bl #0x647a68
00647c94  04 00 55 e1                                      cmp r5, r4
00647c98  fa ff ff 1a                                      bne #0x647c88
00647c9c  00 50 96 e5                                      ldr r5, [r6]
00647ca0  05 00 a0 e1                                      mov r0, r5
00647ca4  09 90 87 e0                                      add sb, r7, sb
00647ca8  e8 21 f3 eb                                      bl #0x310450
00647cac  08 90 86 e5                                      str sb, [r6, #8]
00647cb0  80 08 86 e8                                      stm r6, {r7, fp}
00647cb4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00647cb8  09 00 53 e1                                      cmp r3, sb
00647cbc  89 92 a0 91                                      lslls sb, sb, #5
00647cc0  d5 ff ff 9a                                      bls #0x647c1c
00647cc4  d3 ff ff ea                                      b #0x647c18

; FUNCTION 0x00647dfc, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada19CModularSkinnedMesh14SModularBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::collada::CModularSkinnedMesh::SModularBuffer, glitch::core::SAllocator<glitch::collada::CModularSkinnedMesh::SModularBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::collada::CModularSkinnedMesh::SModularBuffer*, glitch::collada::CModularSkinnedMesh::SModularBuffer*, std::__false_type const&)
; decoder-mode: arm
00647dfc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00647e00  04 40 90 e5                                      ldr r4, [r0, #4]
00647e04  00 50 a0 e1                                      mov r5, r0
00647e08  02 80 a0 e1                                      mov r8, r2
00647e0c  04 a0 62 e0                                      rsb sl, r2, r4
00647e10  ca a2 a0 e1                                      asr sl, sl, #5
00647e14  00 00 5a e3                                      cmp sl, #0
00647e18  01 70 a0 e1                                      mov r7, r1
00647e1c  01 a0 a0 d1                                      movle sl, r1
00647e20  09 00 00 da                                      ble #0x647e4c
00647e24  0a 60 a0 e1                                      mov r6, sl
00647e28  00 40 a0 e3                                      mov r4, #0
00647e2c  04 00 87 e0                                      add r0, r7, r4
00647e30  04 10 88 e0                                      add r1, r8, r4
00647e34  b7 ff ff eb                                      bl #0x647d18
00647e38  01 60 56 e2                                      subs r6, r6, #1
00647e3c  20 40 84 e2                                      add r4, r4, #0x20
00647e40  f9 ff ff 1a                                      bne #0x647e2c
00647e44  04 40 95 e5                                      ldr r4, [r5, #4]
00647e48  8a a2 87 e0                                      add sl, r7, sl, lsl #5
00647e4c  0a 00 54 e1                                      cmp r4, sl
00647e50  05 00 00 0a                                      beq #0x647e6c
00647e54  0a 60 a0 e1                                      mov r6, sl
00647e58  06 00 a0 e1                                      mov r0, r6
00647e5c  20 60 86 e2                                      add r6, r6, #0x20
00647e60  00 ff ff eb                                      bl #0x647a68
00647e64  06 00 54 e1                                      cmp r4, r6
00647e68  fa ff ff 1a                                      bne #0x647e58
00647e6c  04 a0 85 e5                                      str sl, [r5, #4]
00647e70  07 00 a0 e1                                      mov r0, r7
00647e74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
