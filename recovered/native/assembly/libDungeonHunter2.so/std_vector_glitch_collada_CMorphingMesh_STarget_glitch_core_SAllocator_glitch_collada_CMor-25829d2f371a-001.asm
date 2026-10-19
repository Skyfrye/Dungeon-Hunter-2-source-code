; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00649cd0, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7STargetENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_clearEv
; demangled: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear()
; decoder-mode: arm
00649cd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00649cd4  00 60 a0 e1                                      mov r6, r0
00649cd8  00 50 96 e5                                      ldr r5, [r6]
00649cdc  04 00 90 e5                                      ldr r0, [r0, #4]
00649ce0  05 00 50 e1                                      cmp r0, r5
00649ce4  08 00 00 0a                                      beq #0x649d0c
00649ce8  00 40 a0 e1                                      mov r4, r0
00649cec  08 00 14 e5                                      ldr r0, [r4, #-8]
00649cf0  08 40 44 e2                                      sub r4, r4, #8
00649cf4  00 00 50 e3                                      cmp r0, #0
00649cf8  00 00 00 0a                                      beq #0x649d00
00649cfc  20 4e f3 eb                                      bl #0x31d584
00649d00  04 00 55 e1                                      cmp r5, r4
00649d04  f8 ff ff 1a                                      bne #0x649cec
00649d08  00 00 96 e5                                      ldr r0, [r6]
00649d0c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00649d10  ce 19 f3 ea                                      b #0x310450

; FUNCTION 0x00649d14, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7STargetENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE19_M_clear_after_moveEv
; demangled: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
00649d14  70 40 2d e9                                      push {r4, r5, r6, lr}
00649d18  00 60 a0 e1                                      mov r6, r0
00649d1c  00 50 96 e5                                      ldr r5, [r6]
00649d20  04 00 90 e5                                      ldr r0, [r0, #4]
00649d24  05 00 50 e1                                      cmp r0, r5
00649d28  08 00 00 0a                                      beq #0x649d50
00649d2c  00 40 a0 e1                                      mov r4, r0
00649d30  08 00 14 e5                                      ldr r0, [r4, #-8]
00649d34  08 40 44 e2                                      sub r4, r4, #8
00649d38  00 00 50 e3                                      cmp r0, #0
00649d3c  00 00 00 0a                                      beq #0x649d44
00649d40  0f 4e f3 eb                                      bl #0x31d584
00649d44  04 00 55 e1                                      cmp r5, r4
00649d48  f8 ff ff 1a                                      bne #0x649d30
00649d4c  00 00 96 e5                                      ldr r0, [r6]
00649d50  70 40 bd e8                                      pop {r4, r5, r6, lr}
00649d54  bd 19 f3 ea                                      b #0x310450

; FUNCTION 0x00649d58, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7STargetENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00649d58  70 40 2d e9                                      push {r4, r5, r6, lr}
00649d5c  04 40 90 e5                                      ldr r4, [r0, #4]
00649d60  00 50 90 e5                                      ldr r5, [r0]
00649d64  00 60 a0 e1                                      mov r6, r0
00649d68  05 00 54 e1                                      cmp r4, r5
00649d6c  06 00 00 0a                                      beq #0x649d8c
00649d70  08 00 14 e5                                      ldr r0, [r4, #-8]
00649d74  08 40 44 e2                                      sub r4, r4, #8
00649d78  00 00 50 e3                                      cmp r0, #0
00649d7c  00 00 00 0a                                      beq #0x649d84
00649d80  ff 4d f3 eb                                      bl #0x31d584
00649d84  04 00 55 e1                                      cmp r5, r4
00649d88  f8 ff ff 1a                                      bne #0x649d70
00649d8c  00 00 96 e5                                      ldr r0, [r6]
00649d90  00 00 50 e3                                      cmp r0, #0
00649d94  00 00 00 0a                                      beq #0x649d9c
00649d98  ac 19 f3 eb                                      bl #0x310450
00649d9c  06 00 a0 e1                                      mov r0, r6
00649da0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00649e0c, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7STargetENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
00649e0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00649e10  00 40 a0 e1                                      mov r4, r0
00649e14  00 20 90 e5                                      ldr r2, [r0]
00649e18  08 00 90 e5                                      ldr r0, [r0, #8]
00649e1c  08 d0 4d e2                                      sub sp, sp, #8
00649e20  04 10 8d e5                                      str r1, [sp, #4]
00649e24  00 00 62 e0                                      rsb r0, r2, r0
00649e28  c0 01 51 e1                                      cmp r1, r0, asr #3
00649e2c  12 00 00 9a                                      bls #0x649e7c
00649e30  1e 02 71 e3                                      cmn r1, #0xe0000001
00649e34  12 00 00 8a                                      bhi #0x649e84
00649e38  04 30 94 e5                                      ldr r3, [r4, #4]
00649e3c  00 00 52 e3                                      cmp r2, #0
00649e40  03 50 62 e0                                      rsb r5, r2, r3
00649e44  c5 51 a0 e1                                      asr r5, r5, #3
00649e48  12 00 00 0a                                      beq #0x649e98
00649e4c  04 00 a0 e1                                      mov r0, r4
00649e50  04 10 8d e2                                      add r1, sp, #4
00649e54  d2 ff ff eb                                      bl #0x649da4
00649e58  00 60 a0 e1                                      mov r6, r0
00649e5c  04 00 a0 e1                                      mov r0, r4
00649e60  9a ff ff eb                                      bl #0x649cd0
00649e64  04 30 9d e5                                      ldr r3, [sp, #4]
00649e68  85 51 86 e0                                      add r5, r6, r5, lsl #3
00649e6c  04 50 84 e5                                      str r5, [r4, #4]
00649e70  83 31 86 e0                                      add r3, r6, r3, lsl #3
00649e74  08 30 84 e5                                      str r3, [r4, #8]
00649e78  00 60 84 e5                                      str r6, [r4]
00649e7c  08 d0 8d e2                                      add sp, sp, #8
00649e80  70 80 bd e8                                      pop {r4, r5, r6, pc}
00649e84  24 00 9f e5                                      ldr r0, [pc, #0x24]
00649e88  00 00 8f e0                                      add r0, pc, r0
00649e8c  eb fb 02 eb                                      bl #0x708e40
00649e90  00 20 94 e5                                      ldr r2, [r4]
00649e94  e7 ff ff ea                                      b #0x649e38
00649e98  04 00 9d e5                                      ldr r0, [sp, #4]
00649e9c  02 10 a0 e1                                      mov r1, r2
00649ea0  80 01 a0 e1                                      lsl r0, r0, #3
00649ea4  af 19 f3 eb                                      bl #0x310568
00649ea8  00 60 a0 e1                                      mov r6, r0
00649eac  ec ff ff ea                                      b #0x649e64
; mapping-symbol data/literal pool
00649eb0  e0 45 27 00                                      .byte 0xe0, 0x45, 0x27, 0x00

; FUNCTION 0x00649f1c, declared_size=236, range_size=236, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7STargetENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.5
; demangled: std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::collada::CMorphingMesh::STarget*, glitch::collada::CMorphingMesh::STarget const&, std::__false_type const&, unsigned int, bool) [clone .clone.5]
; decoder-mode: arm
00649f1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00649f20  00 40 a0 e1                                      mov r4, r0
00649f24  00 30 94 e5                                      ldr r3, [r4]
00649f28  04 00 90 e5                                      ldr r0, [r0, #4]
00649f2c  01 50 a0 e1                                      mov r5, r1
00649f30  02 70 a0 e1                                      mov r7, r2
00649f34  00 30 63 e0                                      rsb r3, r3, r0
00649f38  c3 31 a0 e1                                      asr r3, r3, #3
00649f3c  01 00 53 e3                                      cmp r3, #1
00649f40  03 60 83 20                                      addhs r6, r3, r3
00649f44  01 60 83 32                                      addlo r6, r3, #1
00649f48  1e 02 76 e3                                      cmn r6, #0xe0000001
00649f4c  2b 00 00 8a                                      bhi #0x64a000
00649f50  06 00 53 e1                                      cmp r3, r6
00649f54  86 61 a0 91                                      lslls r6, r6, #3
00649f58  28 00 00 8a                                      bhi #0x64a000
00649f5c  06 00 a0 e1                                      mov r0, r6
00649f60  00 10 a0 e3                                      mov r1, #0
00649f64  7f 19 f3 eb                                      bl #0x310568
00649f68  00 80 a0 e1                                      mov r8, r0
00649f6c  00 00 94 e5                                      ldr r0, [r4]
00649f70  05 50 60 e0                                      rsb r5, r0, r5
00649f74  c5 51 a0 e1                                      asr r5, r5, #3
00649f78  00 00 55 e3                                      cmp r5, #0
00649f7c  08 50 a0 d1                                      movle r5, r8
00649f80  0f 00 00 da                                      ble #0x649fc4
00649f84  05 10 a0 e1                                      mov r1, r5
00649f88  00 30 a0 e3                                      mov r3, #0
00649f8c  03 20 90 e7                                      ldr r2, [r0, r3]
00649f90  03 e0 80 e0                                      add lr, r0, r3
00649f94  03 c0 88 e0                                      add ip, r8, r3
00649f98  00 00 52 e3                                      cmp r2, #0
00649f9c  03 20 88 e7                                      str r2, [r8, r3]
00649fa0  04 a0 92 15                                      ldrne sl, [r2, #4]
00649fa4  08 30 83 e2                                      add r3, r3, #8
00649fa8  01 a0 8a 12                                      addne sl, sl, #1
00649fac  04 a0 82 15                                      strne sl, [r2, #4]
00649fb0  04 20 9e e5                                      ldr r2, [lr, #4]
00649fb4  01 10 51 e2                                      subs r1, r1, #1
00649fb8  04 20 8c e5                                      str r2, [ip, #4]
00649fbc  f2 ff ff 1a                                      bne #0x649f8c
00649fc0  85 51 88 e0                                      add r5, r8, r5, lsl #3
00649fc4  00 30 97 e5                                      ldr r3, [r7]
00649fc8  04 00 a0 e1                                      mov r0, r4
00649fcc  06 60 88 e0                                      add r6, r8, r6
00649fd0  00 00 53 e3                                      cmp r3, #0
00649fd4  00 30 85 e5                                      str r3, [r5]
00649fd8  04 20 93 15                                      ldrne r2, [r3, #4]
00649fdc  01 20 82 12                                      addne r2, r2, #1
00649fe0  04 20 83 15                                      strne r2, [r3, #4]
00649fe4  04 30 97 e5                                      ldr r3, [r7, #4]
00649fe8  04 30 85 e5                                      str r3, [r5, #4]
00649fec  08 50 85 e2                                      add r5, r5, #8
00649ff0  47 ff ff eb                                      bl #0x649d14
00649ff4  60 00 84 e9                                      stmib r4, {r5, r6}
00649ff8  00 80 84 e5                                      str r8, [r4]
00649ffc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0064a000  07 60 e0 e3                                      mvn r6, #7
0064a004  d4 ff ff ea                                      b #0x649f5c
