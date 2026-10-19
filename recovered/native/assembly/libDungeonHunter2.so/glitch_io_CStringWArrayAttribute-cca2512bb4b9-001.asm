; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005606f0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CStringWArrayAttribute
; alias: _ZNK6glitch2io22CStringWArrayAttribute7getTypeEv
; demangled: glitch::io::CStringWArrayAttribute::getType() const
; decoder-mode: arm
005606f0  16 00 a0 e3                                      mov r0, #0x16
005606f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005606f8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CStringWArrayAttribute
; alias: _ZNK6glitch2io22CStringWArrayAttribute13getTypeStringEv
; demangled: glitch::io::CStringWArrayAttribute::getTypeString() const
; decoder-mode: arm
005606f8  04 00 9f e5                                      ldr r0, [pc, #4]
005606fc  00 00 8f e0                                      add r0, pc, r0
00560700  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560704  0c e8 37 00                                      .byte 0x0c, 0xe8, 0x37, 0x00

; FUNCTION 0x00562f10, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CStringWArrayAttribute
; alias: _ZN6glitch2io22CStringWArrayAttribute8getArrayEv
; demangled: glitch::io::CStringWArrayAttribute::getArray()
; decoder-mode: arm
00562f10  10 40 2d e9                                      push {r4, lr}
00562f14  24 10 81 e2                                      add r1, r1, #0x24
00562f18  00 40 a0 e1                                      mov r4, r0
00562f1c  d6 ff ff eb                                      bl #0x562e7c
00562f20  04 00 a0 e1                                      mov r0, r4
00562f24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005632a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CStringWArrayAttribute
; alias: _ZN6glitch2io22CStringWArrayAttribute8setArrayESt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS6_ISA_LS8_0EEEE
; demangled: glitch::io::CStringWArrayAttribute::setArray(std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >)
; decoder-mode: arm
005632a4  24 00 80 e2                                      add r0, r0, #0x24
005632a8  84 ff ff ea                                      b #0x5630c0

; FUNCTION 0x00563380, declared_size=108, range_size=108, mode=arm
; class-group: glitch::io::CStringWArrayAttribute
; alias: _ZN6glitch2io22CStringWArrayAttributeD0Ev
; demangled: glitch::io::CStringWArrayAttribute::~CStringWArrayAttribute()
; decoder-mode: arm
00563380  70 40 2d e9                                      push {r4, r5, r6, lr}
00563384  54 40 9f e5                                      ldr r4, [pc, #0x54]
00563388  54 30 9f e5                                      ldr r3, [pc, #0x54]
0056338c  00 50 a0 e1                                      mov r5, r0
00563390  04 40 8f e0                                      add r4, pc, r4
00563394  03 30 94 e7                                      ldr r3, [r4, r3]
00563398  08 30 83 e2                                      add r3, r3, #8
0056339c  24 30 80 e4                                      str r3, [r0], #0x24
005633a0  d8 b5 ff eb                                      bl #0x550b08
005633a4  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
005633a8  05 30 a0 e1                                      mov r3, r5
005633ac  02 20 94 e7                                      ldr r2, [r4, r2]
005633b0  08 20 82 e2                                      add r2, r2, #8
005633b4  08 20 83 e4                                      str r2, [r3], #8
005633b8  14 00 93 e5                                      ldr r0, [r3, #0x14]
005633bc  03 00 50 e1                                      cmp r0, r3
005633c0  02 00 00 0a                                      beq #0x5633d0
005633c4  00 00 50 e3                                      cmp r0, #0
005633c8  00 00 00 0a                                      beq #0x5633d0
005633cc  1f b4 f6 eb                                      bl #0x310450
005633d0  05 00 a0 e1                                      mov r0, r5
005633d4  b5 ab f6 eb                                      bl #0x30e2b0
005633d8  05 00 a0 e1                                      mov r0, r5
005633dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005633e0  00 17 43 00 b0 40 00 00 44 2c 00 00              .byte 0x00, 0x17, 0x43, 0x00, 0xb0, 0x40, 0x00, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x005649bc, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CStringWArrayAttribute
; alias: _ZN6glitch2io22CStringWArrayAttributeD1Ev
; demangled: glitch::io::CStringWArrayAttribute::~CStringWArrayAttribute()
; decoder-mode: arm
005649bc  70 40 2d e9                                      push {r4, r5, r6, lr}
005649c0  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
005649c4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005649c8  00 50 a0 e1                                      mov r5, r0
005649cc  04 40 8f e0                                      add r4, pc, r4
005649d0  03 30 94 e7                                      ldr r3, [r4, r3]
005649d4  08 30 83 e2                                      add r3, r3, #8
005649d8  24 30 80 e4                                      str r3, [r0], #0x24
005649dc  49 b0 ff eb                                      bl #0x550b08
005649e0  34 20 9f e5                                      ldr r2, [pc, #0x34]
005649e4  05 30 a0 e1                                      mov r3, r5
005649e8  02 20 94 e7                                      ldr r2, [r4, r2]
005649ec  08 20 82 e2                                      add r2, r2, #8
005649f0  08 20 83 e4                                      str r2, [r3], #8
005649f4  14 00 93 e5                                      ldr r0, [r3, #0x14]
005649f8  03 00 50 e1                                      cmp r0, r3
005649fc  02 00 00 0a                                      beq #0x564a0c
00564a00  00 00 50 e3                                      cmp r0, #0
00564a04  00 00 00 0a                                      beq #0x564a0c
00564a08  90 ae f6 eb                                      bl #0x310450
00564a0c  05 00 a0 e1                                      mov r0, r5
00564a10  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00564a14  c4 00 43 00 b0 40 00 00 44 2c 00 00              .byte 0xc4, 0x00, 0x43, 0x00, 0xb0, 0x40, 0x00, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x005657b0, declared_size=208, range_size=208, mode=arm
; class-group: glitch::io::CStringWArrayAttribute
; alias: _ZN6glitch2io22CStringWArrayAttributeC1EPKcSt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS8_ISC_LSA_0EEEEb
; demangled: glitch::io::CStringWArrayAttribute::CStringWArrayAttribute(char const*, std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >, bool)
; decoder-mode: arm
005657b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005657b4  b8 60 9f e5                                      ldr r6, [pc, #0xb8]
005657b8  b8 c0 9f e5                                      ldr ip, [pc, #0xb8]
005657bc  00 40 a0 e1                                      mov r4, r0
005657c0  06 60 8f e0                                      add r6, pc, r6
005657c4  0c c0 96 e7                                      ldr ip, [r6, ip]
005657c8  00 50 a0 e1                                      mov r5, r0
005657cc  01 00 a0 e3                                      mov r0, #1
005657d0  08 c0 8c e2                                      add ip, ip, #8
005657d4  04 00 84 e5                                      str r0, [r4, #4]
005657d8  08 c0 85 e4                                      str ip, [r5], #8
005657dc  14 d0 4d e2                                      sub sp, sp, #0x14
005657e0  01 70 a0 e1                                      mov r7, r1
005657e4  18 50 84 e5                                      str r5, [r4, #0x18]
005657e8  1c 50 84 e5                                      str r5, [r4, #0x1c]
005657ec  05 00 a0 e1                                      mov r0, r5
005657f0  10 10 a0 e3                                      mov r1, #0x10
005657f4  03 a0 a0 e1                                      mov sl, r3
005657f8  02 80 a0 e1                                      mov r8, r2
005657fc  69 ec f6 eb                                      bl #0x3209a8
00565800  74 20 9f e5                                      ldr r2, [pc, #0x74]
00565804  18 10 94 e5                                      ldr r1, [r4, #0x18]
00565808  00 30 a0 e3                                      mov r3, #0
0056580c  02 20 96 e7                                      ldr r2, [r6, r2]
00565810  00 30 c1 e5                                      strb r3, [r1]
00565814  07 00 a0 e1                                      mov r0, r7
00565818  08 20 82 e2                                      add r2, r2, #8
0056581c  2c 30 84 e5                                      str r3, [r4, #0x2c]
00565820  24 30 84 e5                                      str r3, [r4, #0x24]
00565824  28 30 84 e5                                      str r3, [r4, #0x28]
00565828  00 20 84 e5                                      str r2, [r4]
0056582c  20 a0 c4 e5                                      strb sl, [r4, #0x20]
00565830  87 a1 f6 eb                                      bl #0x30de54
00565834  07 10 a0 e1                                      mov r1, r7
00565838  00 20 87 e0                                      add r2, r7, r0
0056583c  05 00 a0 e1                                      mov r0, r5
00565840  04 50 8d e2                                      add r5, sp, #4
00565844  cf ec f6 eb                                      bl #0x320b88
00565848  08 10 a0 e1                                      mov r1, r8
0056584c  05 00 a0 e1                                      mov r0, r5
00565850  89 f5 ff eb                                      bl #0x562e7c
00565854  05 10 a0 e1                                      mov r1, r5
00565858  24 00 84 e2                                      add r0, r4, #0x24
0056585c  17 f6 ff eb                                      bl #0x5630c0
00565860  05 00 a0 e1                                      mov r0, r5
00565864  a7 ac ff eb                                      bl #0x550b08
00565868  04 00 a0 e1                                      mov r0, r4
0056586c  14 d0 8d e2                                      add sp, sp, #0x14
00565870  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00565874  d0 f2 42 00 44 2c 00 00 b0 40 00 00              .byte 0xd0, 0xf2, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0xb0, 0x40, 0x00, 0x00
