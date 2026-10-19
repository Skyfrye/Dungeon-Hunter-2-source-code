; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035fac0, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> >
; alias: _ZNSaIN5boost13intrusive_ptrIN6glitch5video9CMaterialEEEE11_M_allocateEjRj
; demangled: std::allocator<boost::intrusive_ptr<glitch::video::CMaterial> >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0035fac0  10 40 2d e9                                      push {r4, lr}
0035fac4  07 01 71 e3                                      cmn r1, #0xc0000001
0035fac8  08 d0 4d e2                                      sub sp, sp, #8
0035facc  02 40 a0 e1                                      mov r4, r2
0035fad0  10 00 00 8a                                      bhi #0x35fb18
0035fad4  00 00 51 e3                                      cmp r1, #0
0035fad8  01 00 a0 01                                      moveq r0, r1
0035fadc  01 00 00 1a                                      bne #0x35fae8
0035fae0  08 d0 8d e2                                      add sp, sp, #8
0035fae4  10 80 bd e8                                      pop {r4, pc}
0035fae8  01 01 a0 e1                                      lsl r0, r1, #2
0035faec  80 00 50 e3                                      cmp r0, #0x80
0035faf0  04 00 8d e5                                      str r0, [sp, #4]
0035faf4  05 00 00 8a                                      bhi #0x35fb10
0035faf8  04 00 8d e2                                      add r0, sp, #4
0035fafc  ef a4 0e eb                                      bl #0x708ec0
0035fb00  04 30 9d e5                                      ldr r3, [sp, #4]
0035fb04  23 31 a0 e1                                      lsr r3, r3, #2
0035fb08  00 30 84 e5                                      str r3, [r4]
0035fb0c  f3 ff ff ea                                      b #0x35fae0
0035fb10  4f c2 fe eb                                      bl #0x310454
0035fb14  f9 ff ff ea                                      b #0x35fb00
0035fb18  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0035fb1c  00 00 8f e0                                      add r0, pc, r0
0035fb20  67 b9 fe eb                                      bl #0x30e0c4
0035fb24  01 00 a0 e3                                      mov r0, #1
0035fb28  c6 b8 fe eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0035fb2c  54 e9 55 00                                      .byte 0x54, 0xe9, 0x55, 0x00
