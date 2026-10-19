; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037fd80, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<TrophyData*>
; alias: _ZNSaIP10TrophyDataE11_M_allocateEjRj
; demangled: std::allocator<TrophyData*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0037fd80  10 40 2d e9                                      push {r4, lr}
0037fd84  07 01 71 e3                                      cmn r1, #0xc0000001
0037fd88  08 d0 4d e2                                      sub sp, sp, #8
0037fd8c  02 40 a0 e1                                      mov r4, r2
0037fd90  10 00 00 8a                                      bhi #0x37fdd8
0037fd94  00 00 51 e3                                      cmp r1, #0
0037fd98  01 00 a0 01                                      moveq r0, r1
0037fd9c  01 00 00 1a                                      bne #0x37fda8
0037fda0  08 d0 8d e2                                      add sp, sp, #8
0037fda4  10 80 bd e8                                      pop {r4, pc}
0037fda8  01 01 a0 e1                                      lsl r0, r1, #2
0037fdac  80 00 50 e3                                      cmp r0, #0x80
0037fdb0  04 00 8d e5                                      str r0, [sp, #4]
0037fdb4  05 00 00 8a                                      bhi #0x37fdd0
0037fdb8  04 00 8d e2                                      add r0, sp, #4
0037fdbc  3f 24 0e eb                                      bl #0x708ec0
0037fdc0  04 30 9d e5                                      ldr r3, [sp, #4]
0037fdc4  23 31 a0 e1                                      lsr r3, r3, #2
0037fdc8  00 30 84 e5                                      str r3, [r4]
0037fdcc  f3 ff ff ea                                      b #0x37fda0
0037fdd0  9f 41 fe eb                                      bl #0x310454
0037fdd4  f9 ff ff ea                                      b #0x37fdc0
0037fdd8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0037fddc  00 00 8f e0                                      add r0, pc, r0
0037fde0  b7 38 fe eb                                      bl #0x30e0c4
0037fde4  01 00 a0 e3                                      mov r0, #1
0037fde8  16 38 fe eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0037fdec  94 e6 53 00                                      .byte 0x94, 0xe6, 0x53, 0x00
