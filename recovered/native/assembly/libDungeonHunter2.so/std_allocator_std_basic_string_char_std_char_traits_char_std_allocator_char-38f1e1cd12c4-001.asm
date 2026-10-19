; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329488, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZNSaISsE11_M_allocateEjRj
; demangled: std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00329488  10 40 2d e9                                      push {r4, lr}
0032948c  aa 3a 0a e3                                      movw r3, #0xaaaa
00329490  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00329494  03 00 51 e1                                      cmp r1, r3
00329498  08 d0 4d e2                                      sub sp, sp, #8
0032949c  02 40 a0 e1                                      mov r4, r2
003294a0  14 00 00 8a                                      bhi #0x3294f8
003294a4  00 00 51 e3                                      cmp r1, #0
003294a8  01 00 a0 01                                      moveq r0, r1
003294ac  01 00 00 1a                                      bne #0x3294b8
003294b0  08 d0 8d e2                                      add sp, sp, #8
003294b4  10 80 bd e8                                      pop {r4, pc}
003294b8  18 00 a0 e3                                      mov r0, #0x18
003294bc  90 01 00 e0                                      mul r0, r0, r1
003294c0  80 00 50 e3                                      cmp r0, #0x80
003294c4  04 00 8d e5                                      str r0, [sp, #4]
003294c8  08 00 00 8a                                      bhi #0x3294f0
003294cc  04 00 8d e2                                      add r0, sp, #4
003294d0  7a 7e 0f eb                                      bl #0x708ec0
003294d4  04 20 9d e5                                      ldr r2, [sp, #4]
003294d8  ab 3a 0a e3                                      movw r3, #0xaaab
003294dc  aa 3a 4a e3                                      movt r3, #0xaaaa
003294e0  93 12 83 e0                                      umull r1, r3, r3, r2
003294e4  23 32 a0 e1                                      lsr r3, r3, #4
003294e8  00 30 84 e5                                      str r3, [r4]
003294ec  ef ff ff ea                                      b #0x3294b0
003294f0  d7 9b ff eb                                      bl #0x310454
003294f4  f6 ff ff ea                                      b #0x3294d4
003294f8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003294fc  00 00 8f e0                                      add r0, pc, r0
00329500  ef 92 ff eb                                      bl #0x30e0c4
00329504  01 00 a0 e3                                      mov r0, #1
00329508  4e 92 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0032950c  74 4f 59 00                                      .byte 0x74, 0x4f, 0x59, 0x00
