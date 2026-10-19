; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042242c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<gameswf::rect>
; alias: _ZNSaIN7gameswf4rectEE11_M_allocateEjRj
; demangled: std::allocator<gameswf::rect>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0042242c  10 40 2d e9                                      push {r4, lr}
00422430  1f 02 71 e3                                      cmn r1, #0xf0000001
00422434  08 d0 4d e2                                      sub sp, sp, #8
00422438  02 40 a0 e1                                      mov r4, r2
0042243c  10 00 00 8a                                      bhi #0x422484
00422440  00 00 51 e3                                      cmp r1, #0
00422444  01 00 a0 01                                      moveq r0, r1
00422448  01 00 00 1a                                      bne #0x422454
0042244c  08 d0 8d e2                                      add sp, sp, #8
00422450  10 80 bd e8                                      pop {r4, pc}
00422454  01 02 a0 e1                                      lsl r0, r1, #4
00422458  80 00 50 e3                                      cmp r0, #0x80
0042245c  04 00 8d e5                                      str r0, [sp, #4]
00422460  05 00 00 8a                                      bhi #0x42247c
00422464  04 00 8d e2                                      add r0, sp, #4
00422468  94 9a 0b eb                                      bl #0x708ec0
0042246c  04 30 9d e5                                      ldr r3, [sp, #4]
00422470  23 32 a0 e1                                      lsr r3, r3, #4
00422474  00 30 84 e5                                      str r3, [r4]
00422478  f3 ff ff ea                                      b #0x42244c
0042247c  f4 b7 fb eb                                      bl #0x310454
00422480  f9 ff ff ea                                      b #0x42246c
00422484  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00422488  00 00 8f e0                                      add r0, pc, r0
0042248c  0c af fb eb                                      bl #0x30e0c4
00422490  01 00 a0 e3                                      mov r0, #1
00422494  6b ae fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00422498  e8 bf 49 00                                      .byte 0xe8, 0xbf, 0x49, 0x00
