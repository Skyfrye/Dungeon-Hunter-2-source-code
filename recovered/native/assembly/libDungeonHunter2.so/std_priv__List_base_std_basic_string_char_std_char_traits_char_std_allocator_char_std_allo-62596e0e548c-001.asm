; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00328e20, declared_size=76, range_size=76, mode=arm
; class-group: std::priv::_List_base<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >
; alias: _ZNSt4priv10_List_baseISsSaISsEE5clearEv
; demangled: std::priv::_List_base<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >::clear()
; decoder-mode: arm
00328e20  70 40 2d e9                                      push {r4, r5, r6, lr}
00328e24  00 60 90 e5                                      ldr r6, [r0]
00328e28  00 50 a0 e1                                      mov r5, r0
00328e2c  00 00 56 e1                                      cmp r6, r0
00328e30  01 00 00 1a                                      bne #0x328e3c
00328e34  09 00 00 ea                                      b #0x328e60
00328e38  04 60 a0 e1                                      mov r6, r4
00328e3c  06 00 a0 e1                                      mov r0, r6
00328e40  08 40 90 e4                                      ldr r4, [r0], #8
00328e44  d8 aa ff eb                                      bl #0x3139ac
00328e48  06 00 a0 e1                                      mov r0, r6
00328e4c  20 10 a0 e3                                      mov r1, #0x20
00328e50  2a 80 0f eb                                      bl #0x708f00
00328e54  05 00 54 e1                                      cmp r4, r5
00328e58  f6 ff ff 1a                                      bne #0x328e38
00328e5c  05 60 a0 e1                                      mov r6, r5
00328e60  04 60 85 e5                                      str r6, [r5, #4]
00328e64  00 60 85 e5                                      str r6, [r5]
00328e68  70 80 bd e8                                      pop {r4, r5, r6, pc}
