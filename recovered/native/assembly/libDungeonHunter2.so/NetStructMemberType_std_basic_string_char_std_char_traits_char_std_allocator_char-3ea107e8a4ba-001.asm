; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d2f8, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN19NetStructMemberTypeISsE8GetValueEv
; demangled: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::GetValue()
; decoder-mode: arm
0036d2f8  20 00 80 e2                                      add r0, r0, #0x20
0036d2fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d46c, declared_size=8, range_size=8, mode=arm
; class-group: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN19NetStructMemberTypeISsE9TestValueERKSs
; demangled: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::TestValue(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0036d46c  01 00 a0 e3                                      mov r0, #1
0036d470  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036fc4c, declared_size=100, range_size=100, mode=arm
; class-group: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN19NetStructMemberTypeISsE8SetValueERKSs
; demangled: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::SetValue(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0036fc4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036fc50  00 40 a0 e1                                      mov r4, r0
0036fc54  30 20 94 e5                                      ldr r2, [r4, #0x30]
0036fc58  34 00 90 e5                                      ldr r0, [r0, #0x34]
0036fc5c  10 70 91 e5                                      ldr r7, [r1, #0x10]
0036fc60  14 60 91 e5                                      ldr r6, [r1, #0x14]
0036fc64  02 20 60 e0                                      rsb r2, r0, r2
0036fc68  01 50 a0 e1                                      mov r5, r1
0036fc6c  07 30 66 e0                                      rsb r3, r6, r7
0036fc70  03 00 52 e1                                      cmp r2, r3
0036fc74  08 00 00 0a                                      beq #0x36fc9c
0036fc78  20 00 84 e2                                      add r0, r4, #0x20
0036fc7c  00 00 55 e1                                      cmp r5, r0
0036fc80  02 00 00 0a                                      beq #0x36fc90
0036fc84  06 10 a0 e1                                      mov r1, r6
0036fc88  07 20 a0 e1                                      mov r2, r7
0036fc8c  53 83 fe eb                                      bl #0x3109e0
0036fc90  04 00 a0 e1                                      mov r0, r4
0036fc94  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0036fc98  b9 94 12 ea                                      b #0x814f84
0036fc9c  06 10 a0 e1                                      mov r1, r6
0036fca0  4e 7a fe eb                                      bl #0x30e5e0
0036fca4  00 00 50 e3                                      cmp r0, #0
0036fca8  f2 ff ff 1a                                      bne #0x36fc78
0036fcac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0037111c, declared_size=52, range_size=52, mode=arm
; class-group: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN19NetStructMemberTypeISsED1Ev
; demangled: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::~NetStructMemberType()
; decoder-mode: arm
0037111c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00371120  24 20 9f e5                                      ldr r2, [pc, #0x24]
00371124  10 40 2d e9                                      push {r4, lr}
00371128  03 30 8f e0                                      add r3, pc, r3
0037112c  02 20 93 e7                                      ldr r2, [r3, r2]
00371130  00 40 a0 e1                                      mov r4, r0
00371134  08 20 82 e2                                      add r2, r2, #8
00371138  20 20 80 e4                                      str r2, [r0], #0x20
0037113c  44 9c fe eb                                      bl #0x318254
00371140  04 00 a0 e1                                      mov r0, r4
00371144  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00371148  68 39 62 00 30 3e 00 00                          .byte 0x68, 0x39, 0x62, 0x00, 0x30, 0x3e, 0x00, 0x00

; FUNCTION 0x003711f4, declared_size=80, range_size=80, mode=arm
; class-group: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN19NetStructMemberTypeISsED0Ev
; demangled: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::~NetStructMemberType()
; decoder-mode: arm
003711f4  70 40 2d e9                                      push {r4, r5, r6, lr}
003711f8  38 40 9f e5                                      ldr r4, [pc, #0x38]
003711fc  38 30 9f e5                                      ldr r3, [pc, #0x38]
00371200  00 50 a0 e1                                      mov r5, r0
00371204  04 40 8f e0                                      add r4, pc, r4
00371208  03 30 94 e7                                      ldr r3, [r4, r3]
0037120c  08 30 83 e2                                      add r3, r3, #8
00371210  20 30 80 e4                                      str r3, [r0], #0x20
00371214  0e 9c fe eb                                      bl #0x318254
00371218  20 30 9f e5                                      ldr r3, [pc, #0x20]
0037121c  05 00 a0 e1                                      mov r0, r5
00371220  03 30 94 e7                                      ldr r3, [r4, r3]
00371224  08 30 83 e2                                      add r3, r3, #8
00371228  00 30 85 e5                                      str r3, [r5]
0037122c  83 7c fe eb                                      bl #0x310440
00371230  05 00 a0 e1                                      mov r0, r5
00371234  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00371238  8c 38 62 00 30 3e 00 00 a8 10 00 00              .byte 0x8c, 0x38, 0x62, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00371ae8, declared_size=144, range_size=144, mode=arm
; class-group: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >
; alias: _ZN19NetStructMemberTypeISsE5EraseER12NetBitStream
; demangled: NetStructMemberType<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >::Erase(NetBitStream&)
; decoder-mode: arm
00371ae8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00371aec  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
00371af0  7c 60 9f e5                                      ldr r6, [pc, #0x7c]
00371af4  24 d0 4d e2                                      sub sp, sp, #0x24
00371af8  04 40 8f e0                                      add r4, pc, r4
00371afc  06 30 94 e7                                      ldr r3, [r4, r6]
00371b00  20 70 80 e2                                      add r7, r0, #0x20
00371b04  04 50 8d e2                                      add r5, sp, #4
00371b08  00 30 93 e5                                      ldr r3, [r3]
00371b0c  00 80 a0 e1                                      mov r8, r0
00371b10  01 a0 a0 e1                                      mov sl, r1
00371b14  05 00 a0 e1                                      mov r0, r5
00371b18  07 10 a0 e1                                      mov r1, r7
00371b1c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00371b20  7c e7 fe eb                                      bl #0x32b918
00371b24  08 00 a0 e1                                      mov r0, r8
00371b28  0a 10 a0 e1                                      mov r1, sl
00371b2c  76 8d 12 eb                                      bl #0x81510c
00371b30  05 00 57 e1                                      cmp r7, r5
00371b34  03 00 00 0a                                      beq #0x371b48
00371b38  07 00 a0 e1                                      mov r0, r7
00371b3c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00371b40  14 20 9d e5                                      ldr r2, [sp, #0x14]
00371b44  a5 7b fe eb                                      bl #0x3109e0
00371b48  05 00 a0 e1                                      mov r0, r5
00371b4c  c0 99 fe eb                                      bl #0x318254
00371b50  06 30 94 e7                                      ldr r3, [r4, r6]
00371b54  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00371b58  00 30 93 e5                                      ldr r3, [r3]
00371b5c  03 00 52 e1                                      cmp r2, r3
00371b60  01 00 00 1a                                      bne #0x371b6c
00371b64  24 d0 8d e2                                      add sp, sp, #0x24
00371b68  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00371b6c  e7 71 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00371b70  98 2f 62 00 ac 40 00 00                          .byte 0x98, 0x2f, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00
