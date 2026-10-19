; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047578c, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISsN6glitch4core10SAllocatorISsLNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0047578c  70 40 2d e9                                      push {r4, r5, r6, lr}
00475790  04 40 90 e5                                      ldr r4, [r0, #4]
00475794  00 50 90 e5                                      ldr r5, [r0]
00475798  00 60 a0 e1                                      mov r6, r0
0047579c  05 00 54 e1                                      cmp r4, r5
004757a0  03 00 00 1a                                      bne #0x4757b4
004757a4  10 00 00 ea                                      b #0x4757ec
004757a8  d4 4d 0a eb                                      bl #0x708f00
004757ac  04 00 55 e1                                      cmp r5, r4
004757b0  0d 00 00 0a                                      beq #0x4757ec
004757b4  18 40 44 e2                                      sub r4, r4, #0x18
004757b8  14 30 94 e5                                      ldr r3, [r4, #0x14]
004757bc  04 00 53 e1                                      cmp r3, r4
004757c0  03 00 a0 e1                                      mov r0, r3
004757c4  f8 ff ff 0a                                      beq #0x4757ac
004757c8  00 00 53 e3                                      cmp r3, #0
004757cc  f6 ff ff 0a                                      beq #0x4757ac
004757d0  00 10 94 e5                                      ldr r1, [r4]
004757d4  01 10 63 e0                                      rsb r1, r3, r1
004757d8  80 00 51 e3                                      cmp r1, #0x80
004757dc  f1 ff ff 9a                                      bls #0x4757a8
004757e0  16 6b fa eb                                      bl #0x310440
004757e4  04 00 55 e1                                      cmp r5, r4
004757e8  f1 ff ff 1a                                      bne #0x4757b4
004757ec  00 00 96 e5                                      ldr r0, [r6]
004757f0  00 00 50 e3                                      cmp r0, #0
004757f4  00 00 00 0a                                      beq #0x4757fc
004757f8  14 6b fa eb                                      bl #0x310450
004757fc  06 00 a0 e1                                      mov r0, r6
00475800  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00662a80, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISsN6glitch4core10SAllocatorISsLNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS6_
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00662a80  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00662a84  88 00 91 e8                                      ldm r1, {r3, r7}
00662a88  00 50 a0 e3                                      mov r5, #0
00662a8c  00 40 a0 e1                                      mov r4, r0
00662a90  07 30 63 e0                                      rsb r3, r3, r7
00662a94  c3 31 a0 e1                                      asr r3, r3, #3
00662a98  14 d0 4d e2                                      sub sp, sp, #0x14
00662a9c  03 71 83 e0                                      add r7, r3, r3, lsl #2
00662aa0  01 60 a0 e1                                      mov r6, r1
00662aa4  07 72 87 e0                                      add r7, r7, r7, lsl #4
00662aa8  00 50 80 e5                                      str r5, [r0]
00662aac  07 74 87 e0                                      add r7, r7, r7, lsl #8
00662ab0  04 50 80 e5                                      str r5, [r0, #4]
00662ab4  07 78 87 e0                                      add r7, r7, r7, lsl #16
00662ab8  08 50 80 e5                                      str r5, [r0, #8]
00662abc  87 30 83 e0                                      add r3, r3, r7, lsl #1
00662ac0  18 70 a0 e3                                      mov r7, #0x18
00662ac4  97 03 07 e0                                      mul r7, r7, r3
00662ac8  05 10 a0 e1                                      mov r1, r5
00662acc  07 00 a0 e1                                      mov r0, r7
00662ad0  a4 b6 f2 eb                                      bl #0x310568
00662ad4  07 70 80 e0                                      add r7, r0, r7
00662ad8  00 00 84 e5                                      str r0, [r4]
00662adc  81 00 84 e9                                      stmib r4, {r0, r7}
00662ae0  00 30 96 e5                                      ldr r3, [r6]
00662ae4  00 20 a0 e1                                      mov r2, r0
00662ae8  04 10 96 e5                                      ldr r1, [r6, #4]
00662aec  03 00 a0 e1                                      mov r0, r3
00662af0  0c 30 8d e2                                      add r3, sp, #0xc
00662af4  00 50 8d e5                                      str r5, [sp]
00662af8  de 9d f8 eb                                      bl #0x48a278
00662afc  04 00 84 e5                                      str r0, [r4, #4]
00662b00  04 00 a0 e1                                      mov r0, r4
00662b04  14 d0 8d e2                                      add sp, sp, #0x14
00662b08  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
