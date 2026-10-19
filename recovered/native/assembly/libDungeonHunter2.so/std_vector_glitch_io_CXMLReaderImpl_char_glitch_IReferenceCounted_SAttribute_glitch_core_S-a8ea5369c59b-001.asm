; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00573c44, declared_size=344, range_size=344, mode=arm
; class-group: std::vector<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io14CXMLReaderImplIcNS0_17IReferenceCountedEE10SAttributeENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS5_
; demangled: std::vector<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute const&)
; decoder-mode: arm
00573c44  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00573c48  04 80 90 e5                                      ldr r8, [r0, #4]
00573c4c  08 30 90 e5                                      ldr r3, [r0, #8]
00573c50  14 d0 4d e2                                      sub sp, sp, #0x14
00573c54  00 40 a0 e1                                      mov r4, r0
00573c58  03 00 58 e1                                      cmp r8, r3
00573c5c  01 50 a0 e1                                      mov r5, r1
00573c60  09 00 00 0a                                      beq #0x573c8c
00573c64  08 00 a0 e1                                      mov r0, r8
00573c68  1e bc ff eb                                      bl #0x562ce8
00573c6c  18 00 88 e2                                      add r0, r8, #0x18
00573c70  18 10 85 e2                                      add r1, r5, #0x18
00573c74  1b bc ff eb                                      bl #0x562ce8
00573c78  04 30 94 e5                                      ldr r3, [r4, #4]
00573c7c  30 30 83 e2                                      add r3, r3, #0x30
00573c80  04 30 84 e5                                      str r3, [r4, #4]
00573c84  14 d0 8d e2                                      add sp, sp, #0x14
00573c88  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00573c8c  00 20 90 e5                                      ldr r2, [r0]
00573c90  55 35 05 e3                                      movw r3, #0x5555
00573c94  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00573c98  08 20 62 e0                                      rsb r2, r2, r8
00573c9c  42 22 a0 e1                                      asr r2, r2, #4
00573ca0  02 11 82 e0                                      add r1, r2, r2, lsl #2
00573ca4  01 12 81 e0                                      add r1, r1, r1, lsl #4
00573ca8  01 14 81 e0                                      add r1, r1, r1, lsl #8
00573cac  01 18 81 e0                                      add r1, r1, r1, lsl #16
00573cb0  81 20 82 e0                                      add r2, r2, r1, lsl #1
00573cb4  01 00 52 e3                                      cmp r2, #1
00573cb8  02 10 82 20                                      addhs r1, r2, r2
00573cbc  01 10 82 32                                      addlo r1, r2, #1
00573cc0  03 00 51 e1                                      cmp r1, r3
00573cc4  2f 00 00 9a                                      bls #0x573d88
00573cc8  0f 70 e0 e3                                      mvn r7, #0xf
00573ccc  00 10 a0 e3                                      mov r1, #0
00573cd0  07 00 a0 e1                                      mov r0, r7
00573cd4  23 72 f6 eb                                      bl #0x310568
00573cd8  00 60 a0 e1                                      mov r6, r0
00573cdc  00 c0 a0 e3                                      mov ip, #0
00573ce0  08 10 a0 e1                                      mov r1, r8
00573ce4  06 20 a0 e1                                      mov r2, r6
00573ce8  0c 30 8d e2                                      add r3, sp, #0xc
00573cec  00 00 94 e5                                      ldr r0, [r4]
00573cf0  00 c0 8d e5                                      str ip, [sp]
00573cf4  70 fb ff eb                                      bl #0x572abc
00573cf8  05 10 a0 e1                                      mov r1, r5
00573cfc  00 80 a0 e1                                      mov r8, r0
00573d00  f8 bb ff eb                                      bl #0x562ce8
00573d04  18 10 85 e2                                      add r1, r5, #0x18
00573d08  18 00 88 e2                                      add r0, r8, #0x18
00573d0c  f5 bb ff eb                                      bl #0x562ce8
00573d10  04 50 94 e5                                      ldr r5, [r4, #4]
00573d14  00 a0 94 e5                                      ldr sl, [r4]
00573d18  30 80 88 e2                                      add r8, r8, #0x30
00573d1c  0a 00 55 e1                                      cmp r5, sl
00573d20  12 00 00 0a                                      beq #0x573d70
00573d24  30 50 45 e2                                      sub r5, r5, #0x30
00573d28  18 20 85 e2                                      add r2, r5, #0x18
00573d2c  14 30 92 e5                                      ldr r3, [r2, #0x14]
00573d30  02 00 53 e1                                      cmp r3, r2
00573d34  03 00 a0 e1                                      mov r0, r3
00573d38  02 00 00 0a                                      beq #0x573d48
00573d3c  00 00 53 e3                                      cmp r3, #0
00573d40  00 00 00 0a                                      beq #0x573d48
00573d44  c1 71 f6 eb                                      bl #0x310450
00573d48  14 30 95 e5                                      ldr r3, [r5, #0x14]
00573d4c  05 00 53 e1                                      cmp r3, r5
00573d50  03 00 a0 e1                                      mov r0, r3
00573d54  02 00 00 0a                                      beq #0x573d64
00573d58  00 00 53 e3                                      cmp r3, #0
00573d5c  00 00 00 0a                                      beq #0x573d64
00573d60  ba 71 f6 eb                                      bl #0x310450
00573d64  05 00 5a e1                                      cmp sl, r5
00573d68  ed ff ff 1a                                      bne #0x573d24
00573d6c  00 a0 94 e5                                      ldr sl, [r4]
00573d70  0a 00 a0 e1                                      mov r0, sl
00573d74  07 70 86 e0                                      add r7, r6, r7
00573d78  b4 71 f6 eb                                      bl #0x310450
00573d7c  08 70 84 e5                                      str r7, [r4, #8]
00573d80  40 01 84 e8                                      stm r4, {r6, r8}
00573d84  be ff ff ea                                      b #0x573c84
00573d88  01 00 52 e1                                      cmp r2, r1
00573d8c  cd ff ff 8a                                      bhi #0x573cc8
00573d90  30 70 a0 e3                                      mov r7, #0x30
00573d94  97 01 07 e0                                      mul r7, r7, r1
00573d98  cb ff ff ea                                      b #0x573ccc

; FUNCTION 0x00573d9c, declared_size=156, range_size=156, mode=arm
; class-group: std::vector<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io14CXMLReaderImplIcNS0_17IReferenceCountedEE10SAttributeENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS5_SC_RKSt12__false_type
; demangled: std::vector<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, std::__false_type const&)
; decoder-mode: arm
00573d9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00573da0  04 30 90 e5                                      ldr r3, [r0, #4]
00573da4  10 d0 4d e2                                      sub sp, sp, #0x10
00573da8  01 50 a0 e1                                      mov r5, r1
00573dac  00 40 a0 e1                                      mov r4, r0
00573db0  03 10 a0 e1                                      mov r1, r3
00573db4  02 00 a0 e1                                      mov r0, r2
00573db8  00 c0 a0 e3                                      mov ip, #0
00573dbc  05 20 a0 e1                                      mov r2, r5
00573dc0  0c 30 8d e2                                      add r3, sp, #0xc
00573dc4  00 c0 8d e5                                      str ip, [sp]
00573dc8  6d fd ff eb                                      bl #0x573384
00573dcc  04 70 94 e5                                      ldr r7, [r4, #4]
00573dd0  00 80 a0 e1                                      mov r8, r0
00573dd4  00 00 57 e1                                      cmp r7, r0
00573dd8  12 00 00 0a                                      beq #0x573e28
00573ddc  00 60 a0 e1                                      mov r6, r0
00573de0  18 20 86 e2                                      add r2, r6, #0x18
00573de4  14 30 92 e5                                      ldr r3, [r2, #0x14]
00573de8  02 00 53 e1                                      cmp r3, r2
00573dec  03 00 a0 e1                                      mov r0, r3
00573df0  02 00 00 0a                                      beq #0x573e00
00573df4  00 00 53 e3                                      cmp r3, #0
00573df8  00 00 00 0a                                      beq #0x573e00
00573dfc  93 71 f6 eb                                      bl #0x310450
00573e00  14 30 96 e5                                      ldr r3, [r6, #0x14]
00573e04  06 00 53 e1                                      cmp r3, r6
00573e08  03 00 a0 e1                                      mov r0, r3
00573e0c  30 60 86 e2                                      add r6, r6, #0x30
00573e10  02 00 00 0a                                      beq #0x573e20
00573e14  00 00 53 e3                                      cmp r3, #0
00573e18  00 00 00 0a                                      beq #0x573e20
00573e1c  8b 71 f6 eb                                      bl #0x310450
00573e20  06 00 57 e1                                      cmp r7, r6
00573e24  ed ff ff 1a                                      bne #0x573de0
00573e28  04 80 84 e5                                      str r8, [r4, #4]
00573e2c  05 00 a0 e1                                      mov r0, r5
00573e30  10 d0 8d e2                                      add sp, sp, #0x10
00573e34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00573e38, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io14CXMLReaderImplIcNS0_17IReferenceCountedEE10SAttributeENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00573e38  70 40 2d e9                                      push {r4, r5, r6, lr}
00573e3c  04 40 90 e5                                      ldr r4, [r0, #4]
00573e40  00 50 90 e5                                      ldr r5, [r0]
00573e44  00 60 a0 e1                                      mov r6, r0
00573e48  05 00 54 e1                                      cmp r4, r5
00573e4c  11 00 00 0a                                      beq #0x573e98
00573e50  30 40 44 e2                                      sub r4, r4, #0x30
00573e54  18 20 84 e2                                      add r2, r4, #0x18
00573e58  14 30 92 e5                                      ldr r3, [r2, #0x14]
00573e5c  02 00 53 e1                                      cmp r3, r2
00573e60  03 00 a0 e1                                      mov r0, r3
00573e64  02 00 00 0a                                      beq #0x573e74
00573e68  00 00 53 e3                                      cmp r3, #0
00573e6c  00 00 00 0a                                      beq #0x573e74
00573e70  76 71 f6 eb                                      bl #0x310450
00573e74  14 30 94 e5                                      ldr r3, [r4, #0x14]
00573e78  04 00 53 e1                                      cmp r3, r4
00573e7c  03 00 a0 e1                                      mov r0, r3
00573e80  02 00 00 0a                                      beq #0x573e90
00573e84  00 00 53 e3                                      cmp r3, #0
00573e88  00 00 00 0a                                      beq #0x573e90
00573e8c  6f 71 f6 eb                                      bl #0x310450
00573e90  04 00 55 e1                                      cmp r5, r4
00573e94  ed ff ff 1a                                      bne #0x573e50
00573e98  00 00 96 e5                                      ldr r0, [r6]
00573e9c  00 00 50 e3                                      cmp r0, #0
00573ea0  00 00 00 0a                                      beq #0x573ea8
00573ea4  69 71 f6 eb                                      bl #0x310450
00573ea8  06 00 a0 e1                                      mov r0, r6
00573eac  70 80 bd e8                                      pop {r4, r5, r6, pc}
