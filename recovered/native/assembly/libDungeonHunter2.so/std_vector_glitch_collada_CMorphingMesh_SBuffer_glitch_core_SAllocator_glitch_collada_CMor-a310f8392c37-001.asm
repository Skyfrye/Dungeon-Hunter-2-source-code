; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00649c50, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00649c50  70 40 2d e9                                      push {r4, r5, r6, lr}
00649c54  14 00 90 e8                                      ldm r0, {r2, r4}
00649c58  55 35 05 e3                                      movw r3, #0x5555
00649c5c  55 35 41 e3                                      movt r3, #0x1555
00649c60  04 20 62 e0                                      rsb r2, r2, r4
00649c64  42 21 a0 e1                                      asr r2, r2, #2
00649c68  01 50 a0 e1                                      mov r5, r1
00649c6c  02 41 82 e0                                      add r4, r2, r2, lsl #2
00649c70  04 42 84 e0                                      add r4, r4, r4, lsl #4
00649c74  04 44 84 e0                                      add r4, r4, r4, lsl #8
00649c78  04 48 84 e0                                      add r4, r4, r4, lsl #16
00649c7c  84 40 82 e0                                      add r4, r2, r4, lsl #1
00649c80  03 30 64 e0                                      rsb r3, r4, r3
00649c84  01 00 53 e1                                      cmp r3, r1
00649c88  0b 00 00 3a                                      blo #0x649cbc
00649c8c  55 35 05 e3                                      movw r3, #0x5555
00649c90  05 00 54 e1                                      cmp r4, r5
00649c94  04 00 84 20                                      addhs r0, r4, r4
00649c98  05 00 84 30                                      addlo r0, r4, r5
00649c9c  03 37 83 e1                                      orr r3, r3, r3, lsl #14
00649ca0  03 00 50 e1                                      cmp r0, r3
00649ca4  01 00 00 8a                                      bhi #0x649cb0
00649ca8  04 00 50 e1                                      cmp r0, r4
00649cac  01 00 00 2a                                      bhs #0x649cb8
00649cb0  55 05 05 e3                                      movw r0, #0x5555
00649cb4  00 07 80 e1                                      orr r0, r0, r0, lsl #14
00649cb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00649cbc  08 00 9f e5                                      ldr r0, [pc, #8]
00649cc0  00 00 8f e0                                      add r0, pc, r0
00649cc4  5d fc 02 eb                                      bl #0x708e40
00649cc8  ef ff ff ea                                      b #0x649c8c
; mapping-symbol data/literal pool
00649ccc  a8 47 27 00                                      .byte 0xa8, 0x47, 0x27, 0x00

; FUNCTION 0x0064a0e0, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::collada::CMorphingMesh::SBuffer*, glitch::collada::CMorphingMesh::SBuffer*, std::__false_type const&)
; decoder-mode: arm
0064a0e0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0064a0e4  04 40 90 e5                                      ldr r4, [r0, #4]
0064a0e8  00 50 a0 e1                                      mov r5, r0
0064a0ec  02 80 a0 e1                                      mov r8, r2
0064a0f0  04 30 62 e0                                      rsb r3, r2, r4
0064a0f4  43 31 a0 e1                                      asr r3, r3, #2
0064a0f8  01 70 a0 e1                                      mov r7, r1
0064a0fc  03 a1 83 e0                                      add sl, r3, r3, lsl #2
0064a100  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0064a104  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0064a108  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0064a10c  8a a0 83 e0                                      add sl, r3, sl, lsl #1
0064a110  00 00 5a e3                                      cmp sl, #0
0064a114  01 a0 a0 d1                                      movle sl, r1
0064a118  0a 00 00 da                                      ble #0x64a148
0064a11c  0a 60 a0 e1                                      mov r6, sl
0064a120  00 40 a0 e3                                      mov r4, #0
0064a124  04 00 87 e0                                      add r0, r7, r4
0064a128  04 10 88 e0                                      add r1, r8, r4
0064a12c  b5 ff ff eb                                      bl #0x64a008
0064a130  01 60 56 e2                                      subs r6, r6, #1
0064a134  0c 40 84 e2                                      add r4, r4, #0xc
0064a138  f9 ff ff 1a                                      bne #0x64a124
0064a13c  0c 30 a0 e3                                      mov r3, #0xc
0064a140  93 7a 2a e0                                      mla sl, r3, sl, r7
0064a144  04 40 95 e5                                      ldr r4, [r5, #4]
0064a148  0a 00 54 e1                                      cmp r4, sl
0064a14c  05 00 00 0a                                      beq #0x64a168
0064a150  0a 60 a0 e1                                      mov r6, sl
0064a154  06 00 a0 e1                                      mov r0, r6
0064a158  0c 60 86 e2                                      add r6, r6, #0xc
0064a15c  d3 ff ff eb                                      bl #0x64a0b0
0064a160  06 00 54 e1                                      cmp r4, r6
0064a164  fa ff ff 1a                                      bne #0x64a154
0064a168  04 a0 85 e5                                      str sl, [r5, #4]
0064a16c  07 00 a0 e1                                      mov r0, r7
0064a170  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0064a174, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0064a174  70 40 2d e9                                      push {r4, r5, r6, lr}
0064a178  04 40 90 e5                                      ldr r4, [r0, #4]
0064a17c  00 50 90 e5                                      ldr r5, [r0]
0064a180  00 60 a0 e1                                      mov r6, r0
0064a184  05 00 54 e1                                      cmp r4, r5
0064a188  04 00 00 0a                                      beq #0x64a1a0
0064a18c  0c 40 44 e2                                      sub r4, r4, #0xc
0064a190  04 00 a0 e1                                      mov r0, r4
0064a194  c5 ff ff eb                                      bl #0x64a0b0
0064a198  04 00 55 e1                                      cmp r5, r4
0064a19c  fa ff ff 1a                                      bne #0x64a18c
0064a1a0  00 00 96 e5                                      ldr r0, [r6]
0064a1a4  00 00 50 e3                                      cmp r0, #0
0064a1a8  00 00 00 0a                                      beq #0x64a1b0
0064a1ac  a7 18 f3 eb                                      bl #0x310450
0064a1b0  06 00 a0 e1                                      mov r0, r6
0064a1b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064b1b4, declared_size=672, range_size=672, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::CMorphingMesh::SBuffer*, unsigned int, glitch::collada::CMorphingMesh::SBuffer const&, std::__false_type const&)
; decoder-mode: arm
0064b1b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0064b1b8  00 40 a0 e1                                      mov r4, r0
0064b1bc  00 00 90 e5                                      ldr r0, [r0]
0064b1c0  18 d0 4d e2                                      sub sp, sp, #0x18
0064b1c4  03 70 a0 e1                                      mov r7, r3
0064b1c8  00 00 53 e1                                      cmp r3, r0
0064b1cc  01 60 a0 e1                                      mov r6, r1
0064b1d0  04 80 94 35                                      ldrlo r8, [r4, #4]
0064b1d4  1f 00 00 3a                                      blo #0x64b258
0064b1d8  04 80 94 e5                                      ldr r8, [r4, #4]
0064b1dc  08 00 53 e1                                      cmp r3, r8
0064b1e0  1c 00 00 2a                                      bhs #0x64b258
0064b1e4  00 30 93 e5                                      ldr r3, [r3]
0064b1e8  08 50 8d e2                                      add r5, sp, #8
0064b1ec  04 00 a0 e1                                      mov r0, r4
0064b1f0  08 30 8d e5                                      str r3, [sp, #8]
0064b1f4  00 00 53 e3                                      cmp r3, #0
0064b1f8  04 10 93 15                                      ldrne r1, [r3, #4]
0064b1fc  14 c0 8d e2                                      add ip, sp, #0x14
0064b200  01 10 81 12                                      addne r1, r1, #1
0064b204  04 10 83 15                                      strne r1, [r3, #4]
0064b208  04 30 97 e5                                      ldr r3, [r7, #4]
0064b20c  0c 30 8d e5                                      str r3, [sp, #0xc]
0064b210  00 00 53 e3                                      cmp r3, #0
0064b214  00 10 93 15                                      ldrne r1, [r3]
0064b218  01 10 81 12                                      addne r1, r1, #1
0064b21c  00 10 83 15                                      strne r1, [r3]
0064b220  08 30 97 e5                                      ldr r3, [r7, #8]
0064b224  00 00 53 e3                                      cmp r3, #0
0064b228  10 30 8d e5                                      str r3, [sp, #0x10]
0064b22c  00 10 93 15                                      ldrne r1, [r3]
0064b230  01 10 81 12                                      addne r1, r1, #1
0064b234  00 10 83 15                                      strne r1, [r3]
0064b238  06 10 a0 e1                                      mov r1, r6
0064b23c  05 30 a0 e1                                      mov r3, r5
0064b240  00 c0 8d e5                                      str ip, [sp]
0064b244  da ff ff eb                                      bl #0x64b1b4
0064b248  05 00 a0 e1                                      mov r0, r5
0064b24c  97 fb ff eb                                      bl #0x64a0b0
0064b250  18 d0 8d e2                                      add sp, sp, #0x18
0064b254  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0064b258  08 30 66 e0                                      rsb r3, r6, r8
0064b25c  43 31 a0 e1                                      asr r3, r3, #2
0064b260  03 51 83 e0                                      add r5, r3, r3, lsl #2
0064b264  05 52 85 e0                                      add r5, r5, r5, lsl #4
0064b268  05 54 85 e0                                      add r5, r5, r5, lsl #8
0064b26c  05 58 85 e0                                      add r5, r5, r5, lsl #16
0064b270  85 50 83 e0                                      add r5, r3, r5, lsl #1
0064b274  05 00 52 e1                                      cmp r2, r5
0064b278  46 00 00 2a                                      bhs #0x64b398
0064b27c  0c 90 a0 e3                                      mov sb, #0xc
0064b280  99 02 09 e0                                      mul sb, sb, r2
0064b284  49 31 a0 e1                                      asr r3, sb, #2
0064b288  08 50 69 e0                                      rsb r5, sb, r8
0064b28c  03 01 83 e0                                      add r0, r3, r3, lsl #2
0064b290  00 02 80 e0                                      add r0, r0, r0, lsl #4
0064b294  00 04 80 e0                                      add r0, r0, r0, lsl #8
0064b298  00 08 80 e0                                      add r0, r0, r0, lsl #16
0064b29c  80 00 83 e0                                      add r0, r3, r0, lsl #1
0064b2a0  00 00 50 e3                                      cmp r0, #0
0064b2a4  08 20 a0 d1                                      movle r2, r8
0064b2a8  19 00 00 da                                      ble #0x64b314
0064b2ac  05 30 a0 e1                                      mov r3, r5
0064b2b0  08 20 a0 e1                                      mov r2, r8
0064b2b4  00 00 00 ea                                      b #0x64b2bc
0064b2b8  0c 20 82 e2                                      add r2, r2, #0xc
0064b2bc  00 10 93 e5                                      ldr r1, [r3]
0064b2c0  00 10 82 e5                                      str r1, [r2]
0064b2c4  00 00 51 e3                                      cmp r1, #0
0064b2c8  04 c0 91 15                                      ldrne ip, [r1, #4]
0064b2cc  01 c0 8c 12                                      addne ip, ip, #1
0064b2d0  04 c0 81 15                                      strne ip, [r1, #4]
0064b2d4  04 10 93 e5                                      ldr r1, [r3, #4]
0064b2d8  00 00 51 e3                                      cmp r1, #0
0064b2dc  04 10 82 e5                                      str r1, [r2, #4]
0064b2e0  00 c0 91 15                                      ldrne ip, [r1]
0064b2e4  01 c0 8c 12                                      addne ip, ip, #1
0064b2e8  00 c0 81 15                                      strne ip, [r1]
0064b2ec  08 10 93 e5                                      ldr r1, [r3, #8]
0064b2f0  0c 30 83 e2                                      add r3, r3, #0xc
0064b2f4  00 00 51 e3                                      cmp r1, #0
0064b2f8  08 10 82 e5                                      str r1, [r2, #8]
0064b2fc  00 c0 91 15                                      ldrne ip, [r1]
0064b300  01 c0 8c 12                                      addne ip, ip, #1
0064b304  00 c0 81 15                                      strne ip, [r1]
0064b308  01 00 50 e2                                      subs r0, r0, #1
0064b30c  e9 ff ff 1a                                      bne #0x64b2b8
0064b310  04 20 94 e5                                      ldr r2, [r4, #4]
0064b314  05 30 66 e0                                      rsb r3, r6, r5
0064b318  43 31 a0 e1                                      asr r3, r3, #2
0064b31c  09 20 82 e0                                      add r2, r2, sb
0064b320  03 a1 83 e0                                      add sl, r3, r3, lsl #2
0064b324  04 20 84 e5                                      str r2, [r4, #4]
0064b328  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0064b32c  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0064b330  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0064b334  8a a0 83 e0                                      add sl, r3, sl, lsl #1
0064b338  00 00 5a e3                                      cmp sl, #0
0064b33c  06 00 00 da                                      ble #0x64b35c
0064b340  0c 80 48 e2                                      sub r8, r8, #0xc
0064b344  0c 50 45 e2                                      sub r5, r5, #0xc
0064b348  08 00 a0 e1                                      mov r0, r8
0064b34c  05 10 a0 e1                                      mov r1, r5
0064b350  2c fb ff eb                                      bl #0x64a008
0064b354  01 a0 5a e2                                      subs sl, sl, #1
0064b358  f8 ff ff 1a                                      bne #0x64b340
0064b35c  49 91 a0 e1                                      asr sb, sb, #2
0064b360  09 41 89 e0                                      add r4, sb, sb, lsl #2
0064b364  04 42 84 e0                                      add r4, r4, r4, lsl #4
0064b368  04 44 84 e0                                      add r4, r4, r4, lsl #8
0064b36c  04 48 84 e0                                      add r4, r4, r4, lsl #16
0064b370  84 40 89 e0                                      add r4, sb, r4, lsl #1
0064b374  00 00 54 e3                                      cmp r4, #0
0064b378  b4 ff ff da                                      ble #0x64b250
0064b37c  06 00 a0 e1                                      mov r0, r6
0064b380  07 10 a0 e1                                      mov r1, r7
0064b384  1f fb ff eb                                      bl #0x64a008
0064b388  01 40 54 e2                                      subs r4, r4, #1
0064b38c  0c 60 86 e2                                      add r6, r6, #0xc
0064b390  f9 ff ff 1a                                      bne #0x64b37c
0064b394  ad ff ff ea                                      b #0x64b250
0064b398  02 10 65 e0                                      rsb r1, r5, r2
0064b39c  08 00 a0 e1                                      mov r0, r8
0064b3a0  07 20 a0 e1                                      mov r2, r7
0064b3a4  8a f9 ff eb                                      bl #0x6499d4
0064b3a8  00 00 55 e3                                      cmp r5, #0
0064b3ac  04 00 84 e5                                      str r0, [r4, #4]
0064b3b0  23 00 00 da                                      ble #0x64b444
0064b3b4  05 10 a0 e1                                      mov r1, r5
0064b3b8  06 30 a0 e1                                      mov r3, r6
0064b3bc  00 00 00 ea                                      b #0x64b3c4
0064b3c0  0c 00 80 e2                                      add r0, r0, #0xc
0064b3c4  00 20 93 e5                                      ldr r2, [r3]
0064b3c8  00 20 80 e5                                      str r2, [r0]
0064b3cc  00 00 52 e3                                      cmp r2, #0
0064b3d0  04 c0 92 15                                      ldrne ip, [r2, #4]
0064b3d4  01 c0 8c 12                                      addne ip, ip, #1
0064b3d8  04 c0 82 15                                      strne ip, [r2, #4]
0064b3dc  04 20 93 e5                                      ldr r2, [r3, #4]
0064b3e0  00 00 52 e3                                      cmp r2, #0
0064b3e4  04 20 80 e5                                      str r2, [r0, #4]
0064b3e8  00 c0 92 15                                      ldrne ip, [r2]
0064b3ec  01 c0 8c 12                                      addne ip, ip, #1
0064b3f0  00 c0 82 15                                      strne ip, [r2]
0064b3f4  08 20 93 e5                                      ldr r2, [r3, #8]
0064b3f8  0c 30 83 e2                                      add r3, r3, #0xc
0064b3fc  00 00 52 e3                                      cmp r2, #0
0064b400  08 20 80 e5                                      str r2, [r0, #8]
0064b404  00 c0 92 15                                      ldrne ip, [r2]
0064b408  01 c0 8c 12                                      addne ip, ip, #1
0064b40c  00 c0 82 15                                      strne ip, [r2]
0064b410  01 10 51 e2                                      subs r1, r1, #1
0064b414  e9 ff ff 1a                                      bne #0x64b3c0
0064b418  04 30 94 e5                                      ldr r3, [r4, #4]
0064b41c  0c 20 a0 e3                                      mov r2, #0xc
0064b420  92 35 23 e0                                      mla r3, r2, r5, r3
0064b424  04 30 84 e5                                      str r3, [r4, #4]
0064b428  06 00 a0 e1                                      mov r0, r6
0064b42c  07 10 a0 e1                                      mov r1, r7
0064b430  f4 fa ff eb                                      bl #0x64a008
0064b434  01 50 55 e2                                      subs r5, r5, #1
0064b438  0c 60 86 e2                                      add r6, r6, #0xc
0064b43c  f9 ff ff 1a                                      bne #0x64b428
0064b440  82 ff ff ea                                      b #0x64b250
0064b444  0c 30 a0 e3                                      mov r3, #0xc
0064b448  93 05 20 e0                                      mla r0, r3, r5, r0
0064b44c  04 00 84 e5                                      str r0, [r4, #4]
0064b450  7e ff ff ea                                      b #0x64b250

; FUNCTION 0x0064b454, declared_size=580, range_size=580, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::collada::CMorphingMesh::SBuffer*, unsigned int, glitch::collada::CMorphingMesh::SBuffer const&)
; decoder-mode: arm
0064b454  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0064b458  00 60 52 e2                                      subs r6, r2, #0
0064b45c  14 d0 4d e2                                      sub sp, sp, #0x14
0064b460  00 50 a0 e1                                      mov r5, r0
0064b464  01 40 a0 e1                                      mov r4, r1
0064b468  03 70 a0 e1                                      mov r7, r3
0064b46c  6f 00 00 0a                                      beq #0x64b630
0064b470  00 50 90 e9                                      ldmib r0, {ip, lr}
0064b474  0e c0 6c e0                                      rsb ip, ip, lr
0064b478  4c c1 a0 e1                                      asr ip, ip, #2
0064b47c  0c e1 8c e0                                      add lr, ip, ip, lsl #2
0064b480  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0064b484  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0064b488  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0064b48c  8e c0 8c e0                                      add ip, ip, lr, lsl #1
0064b490  0c 00 56 e1                                      cmp r6, ip
0064b494  67 00 00 9a                                      bls #0x64b638
0064b498  06 10 a0 e1                                      mov r1, r6
0064b49c  eb f9 ff eb                                      bl #0x649c50
0064b4a0  0c a0 a0 e3                                      mov sl, #0xc
0064b4a4  9a 00 0a e0                                      mul sl, sl, r0
0064b4a8  00 10 a0 e3                                      mov r1, #0
0064b4ac  0a 00 a0 e1                                      mov r0, sl
0064b4b0  2c 14 f3 eb                                      bl #0x310568
0064b4b4  00 30 95 e5                                      ldr r3, [r5]
0064b4b8  00 80 a0 e1                                      mov r8, r0
0064b4bc  04 20 63 e0                                      rsb r2, r3, r4
0064b4c0  42 21 a0 e1                                      asr r2, r2, #2
0064b4c4  02 01 82 e0                                      add r0, r2, r2, lsl #2
0064b4c8  00 02 80 e0                                      add r0, r0, r0, lsl #4
0064b4cc  00 04 80 e0                                      add r0, r0, r0, lsl #8
0064b4d0  00 08 80 e0                                      add r0, r0, r0, lsl #16
0064b4d4  80 00 82 e0                                      add r0, r2, r0, lsl #1
0064b4d8  00 00 50 e3                                      cmp r0, #0
0064b4dc  08 00 a0 d1                                      movle r0, r8
0064b4e0  19 00 00 da                                      ble #0x64b54c
0064b4e4  00 c0 a0 e1                                      mov ip, r0
0064b4e8  08 20 a0 e1                                      mov r2, r8
0064b4ec  00 10 93 e5                                      ldr r1, [r3]
0064b4f0  00 10 82 e5                                      str r1, [r2]
0064b4f4  00 00 51 e3                                      cmp r1, #0
0064b4f8  04 e0 91 15                                      ldrne lr, [r1, #4]
0064b4fc  01 e0 8e 12                                      addne lr, lr, #1
0064b500  04 e0 81 15                                      strne lr, [r1, #4]
0064b504  04 10 93 e5                                      ldr r1, [r3, #4]
0064b508  04 10 82 e5                                      str r1, [r2, #4]
0064b50c  00 00 51 e3                                      cmp r1, #0
0064b510  00 e0 91 15                                      ldrne lr, [r1]
0064b514  01 e0 8e 12                                      addne lr, lr, #1
0064b518  00 e0 81 15                                      strne lr, [r1]
0064b51c  08 10 93 e5                                      ldr r1, [r3, #8]
0064b520  0c 30 83 e2                                      add r3, r3, #0xc
0064b524  00 00 51 e3                                      cmp r1, #0
0064b528  08 10 82 e5                                      str r1, [r2, #8]
0064b52c  00 e0 91 15                                      ldrne lr, [r1]
0064b530  0c 20 82 e2                                      add r2, r2, #0xc
0064b534  01 e0 8e 12                                      addne lr, lr, #1
0064b538  00 e0 81 15                                      strne lr, [r1]
0064b53c  01 c0 5c e2                                      subs ip, ip, #1
0064b540  e9 ff ff 1a                                      bne #0x64b4ec
0064b544  0c 30 a0 e3                                      mov r3, #0xc
0064b548  93 80 20 e0                                      mla r0, r3, r0, r8
0064b54c  01 00 56 e3                                      cmp r6, #1
0064b550  3c 00 00 0a                                      beq #0x64b648
0064b554  07 20 a0 e1                                      mov r2, r7
0064b558  06 10 a0 e1                                      mov r1, r6
0064b55c  1c f9 ff eb                                      bl #0x6499d4
0064b560  00 70 a0 e1                                      mov r7, r0
0064b564  04 60 95 e5                                      ldr r6, [r5, #4]
0064b568  06 30 64 e0                                      rsb r3, r4, r6
0064b56c  43 31 a0 e1                                      asr r3, r3, #2
0064b570  03 c1 83 e0                                      add ip, r3, r3, lsl #2
0064b574  0c c2 8c e0                                      add ip, ip, ip, lsl #4
0064b578  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0064b57c  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0064b580  8c c0 83 e0                                      add ip, r3, ip, lsl #1
0064b584  00 00 5c e3                                      cmp ip, #0
0064b588  1a 00 00 da                                      ble #0x64b5f8
0064b58c  0c 10 a0 e1                                      mov r1, ip
0064b590  07 30 a0 e1                                      mov r3, r7
0064b594  00 20 94 e5                                      ldr r2, [r4]
0064b598  00 20 83 e5                                      str r2, [r3]
0064b59c  00 00 52 e3                                      cmp r2, #0
0064b5a0  04 00 92 15                                      ldrne r0, [r2, #4]
0064b5a4  01 00 80 12                                      addne r0, r0, #1
0064b5a8  04 00 82 15                                      strne r0, [r2, #4]
0064b5ac  04 20 94 e5                                      ldr r2, [r4, #4]
0064b5b0  04 20 83 e5                                      str r2, [r3, #4]
0064b5b4  00 00 52 e3                                      cmp r2, #0
0064b5b8  00 00 92 15                                      ldrne r0, [r2]
0064b5bc  01 00 80 12                                      addne r0, r0, #1
0064b5c0  00 00 82 15                                      strne r0, [r2]
0064b5c4  08 20 94 e5                                      ldr r2, [r4, #8]
0064b5c8  0c 40 84 e2                                      add r4, r4, #0xc
0064b5cc  00 00 52 e3                                      cmp r2, #0
0064b5d0  08 20 83 e5                                      str r2, [r3, #8]
0064b5d4  00 00 92 15                                      ldrne r0, [r2]
0064b5d8  0c 30 83 e2                                      add r3, r3, #0xc
0064b5dc  01 00 80 12                                      addne r0, r0, #1
0064b5e0  00 00 82 15                                      strne r0, [r2]
0064b5e4  01 10 51 e2                                      subs r1, r1, #1
0064b5e8  e9 ff ff 1a                                      bne #0x64b594
0064b5ec  0c 30 a0 e3                                      mov r3, #0xc
0064b5f0  93 7c 27 e0                                      mla r7, r3, ip, r7
0064b5f4  04 60 95 e5                                      ldr r6, [r5, #4]
0064b5f8  00 40 95 e5                                      ldr r4, [r5]
0064b5fc  06 00 54 e1                                      cmp r4, r6
0064b600  06 00 a0 01                                      moveq r0, r6
0064b604  05 00 00 0a                                      beq #0x64b620
0064b608  0c 60 46 e2                                      sub r6, r6, #0xc
0064b60c  06 00 a0 e1                                      mov r0, r6
0064b610  a6 fa ff eb                                      bl #0x64a0b0
0064b614  06 00 54 e1                                      cmp r4, r6
0064b618  fa ff ff 1a                                      bne #0x64b608
0064b61c  00 00 95 e5                                      ldr r0, [r5]
0064b620  0a a0 88 e0                                      add sl, r8, sl
0064b624  89 13 f3 eb                                      bl #0x310450
0064b628  80 04 85 e9                                      stmib r5, {r7, sl}
0064b62c  00 80 85 e5                                      str r8, [r5]
0064b630  14 d0 8d e2                                      add sp, sp, #0x14
0064b634  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0064b638  0c c0 8d e2                                      add ip, sp, #0xc
0064b63c  00 c0 8d e5                                      str ip, [sp]
0064b640  db fe ff eb                                      bl #0x64b1b4
0064b644  f9 ff ff ea                                      b #0x64b630
0064b648  00 30 97 e5                                      ldr r3, [r7]
0064b64c  00 30 80 e5                                      str r3, [r0]
0064b650  00 00 53 e3                                      cmp r3, #0
0064b654  04 20 93 15                                      ldrne r2, [r3, #4]
0064b658  01 20 82 12                                      addne r2, r2, #1
0064b65c  04 20 83 15                                      strne r2, [r3, #4]
0064b660  04 30 97 e5                                      ldr r3, [r7, #4]
0064b664  00 00 53 e3                                      cmp r3, #0
0064b668  04 30 80 e5                                      str r3, [r0, #4]
0064b66c  00 20 93 15                                      ldrne r2, [r3]
0064b670  01 20 82 12                                      addne r2, r2, #1
0064b674  00 20 83 15                                      strne r2, [r3]
0064b678  08 30 97 e5                                      ldr r3, [r7, #8]
0064b67c  0c 70 80 e2                                      add r7, r0, #0xc
0064b680  00 00 53 e3                                      cmp r3, #0
0064b684  08 30 80 e5                                      str r3, [r0, #8]
0064b688  00 20 93 15                                      ldrne r2, [r3]
0064b68c  01 20 82 12                                      addne r2, r2, #1
0064b690  00 20 83 15                                      strne r2, [r3]
0064b694  b2 ff ff ea                                      b #0x64b564

; FUNCTION 0x0064b698, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_
; demangled: std::vector<glitch::collada::CMorphingMesh::SBuffer, glitch::core::SAllocator<glitch::collada::CMorphingMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::collada::CMorphingMesh::SBuffer const&)
; decoder-mode: arm
0064b698  30 40 2d e9                                      push {r4, r5, lr}
0064b69c  10 10 90 e8                                      ldm r0, {r4, ip}
0064b6a0  02 30 a0 e1                                      mov r3, r2
0064b6a4  0c d0 4d e2                                      sub sp, sp, #0xc
0064b6a8  0c 20 64 e0                                      rsb r2, r4, ip
0064b6ac  42 21 a0 e1                                      asr r2, r2, #2
0064b6b0  02 51 82 e0                                      add r5, r2, r2, lsl #2
0064b6b4  05 52 85 e0                                      add r5, r5, r5, lsl #4
0064b6b8  05 54 85 e0                                      add r5, r5, r5, lsl #8
0064b6bc  05 58 85 e0                                      add r5, r5, r5, lsl #16
0064b6c0  85 20 82 e0                                      add r2, r2, r5, lsl #1
0064b6c4  02 00 51 e1                                      cmp r1, r2
0064b6c8  08 00 00 2a                                      bhs #0x64b6f0
0064b6cc  0c 30 a0 e3                                      mov r3, #0xc
0064b6d0  93 41 21 e0                                      mla r1, r3, r1, r4
0064b6d4  0c 00 51 e1                                      cmp r1, ip
0064b6d8  02 00 00 0a                                      beq #0x64b6e8
0064b6dc  0c 20 a0 e1                                      mov r2, ip
0064b6e0  04 30 8d e2                                      add r3, sp, #4
0064b6e4  7d fa ff eb                                      bl #0x64a0e0
0064b6e8  0c d0 8d e2                                      add sp, sp, #0xc
0064b6ec  30 80 bd e8                                      pop {r4, r5, pc}
0064b6f0  01 20 62 e0                                      rsb r2, r2, r1
0064b6f4  0c 10 a0 e1                                      mov r1, ip
0064b6f8  55 ff ff eb                                      bl #0x64b454
0064b6fc  f9 ff ff ea                                      b #0x64b6e8
