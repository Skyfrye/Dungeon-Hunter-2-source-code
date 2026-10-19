; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031677c, declared_size=28, range_size=28, mode=arm
; class-group: std::allocator<unsigned char*>
; alias: _ZNSaIPhE10deallocateEPS_j
; demangled: std::allocator<unsigned char*>::deallocate(unsigned char**, unsigned int)
; decoder-mode: arm
0031677c  00 00 51 e2                                      subs r0, r1, #0
00316780  1e ff 2f 01                                      bxeq lr
00316784  02 11 a0 e1                                      lsl r1, r2, #2
00316788  80 00 51 e3                                      cmp r1, #0x80
0031678c  00 00 00 8a                                      bhi #0x316794
00316790  da c9 0f ea                                      b #0x708f00
00316794  29 e7 ff ea                                      b #0x310440

; FUNCTION 0x003167cc, declared_size=108, range_size=108, mode=arm
; class-group: std::allocator<unsigned char*>
; alias: _ZNSaIPhE11_M_allocateEjRj
; demangled: std::allocator<unsigned char*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003167cc  10 40 2d e9                                      push {r4, lr}
003167d0  07 01 71 e3                                      cmn r1, #0xc0000001
003167d4  08 d0 4d e2                                      sub sp, sp, #8
003167d8  02 40 a0 e1                                      mov r4, r2
003167dc  0f 00 00 8a                                      bhi #0x316820
003167e0  00 00 51 e3                                      cmp r1, #0
003167e4  01 00 a0 01                                      moveq r0, r1
003167e8  08 00 00 0a                                      beq #0x316810
003167ec  01 01 a0 e1                                      lsl r0, r1, #2
003167f0  80 00 50 e3                                      cmp r0, #0x80
003167f4  04 00 8d e5                                      str r0, [sp, #4]
003167f8  06 00 00 8a                                      bhi #0x316818
003167fc  04 00 8d e2                                      add r0, sp, #4
00316800  ae c9 0f eb                                      bl #0x708ec0
00316804  04 30 9d e5                                      ldr r3, [sp, #4]
00316808  23 31 a0 e1                                      lsr r3, r3, #2
0031680c  00 30 84 e5                                      str r3, [r4]
00316810  08 d0 8d e2                                      add sp, sp, #8
00316814  10 80 bd e8                                      pop {r4, pc}
00316818  0d e7 ff eb                                      bl #0x310454
0031681c  f8 ff ff ea                                      b #0x316804
00316820  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00316824  00 00 8f e0                                      add r0, pc, r0
00316828  25 de ff eb                                      bl #0x30e0c4
0031682c  01 00 a0 e3                                      mov r0, #1
00316830  84 dd ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00316834  4c 7c 5a 00                                      .byte 0x4c, 0x7c, 0x5a, 0x00
