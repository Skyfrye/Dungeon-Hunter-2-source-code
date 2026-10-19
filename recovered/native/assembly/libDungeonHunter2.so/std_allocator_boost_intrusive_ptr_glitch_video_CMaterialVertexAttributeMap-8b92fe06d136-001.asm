; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035fcec, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> >
; alias: _ZNSaIN5boost13intrusive_ptrIN6glitch5video27CMaterialVertexAttributeMapEEEE11_M_allocateEjRj
; demangled: std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0035fcec  10 40 2d e9                                      push {r4, lr}
0035fcf0  07 01 71 e3                                      cmn r1, #0xc0000001
0035fcf4  08 d0 4d e2                                      sub sp, sp, #8
0035fcf8  02 40 a0 e1                                      mov r4, r2
0035fcfc  10 00 00 8a                                      bhi #0x35fd44
0035fd00  00 00 51 e3                                      cmp r1, #0
0035fd04  01 00 a0 01                                      moveq r0, r1
0035fd08  01 00 00 1a                                      bne #0x35fd14
0035fd0c  08 d0 8d e2                                      add sp, sp, #8
0035fd10  10 80 bd e8                                      pop {r4, pc}
0035fd14  01 01 a0 e1                                      lsl r0, r1, #2
0035fd18  80 00 50 e3                                      cmp r0, #0x80
0035fd1c  04 00 8d e5                                      str r0, [sp, #4]
0035fd20  05 00 00 8a                                      bhi #0x35fd3c
0035fd24  04 00 8d e2                                      add r0, sp, #4
0035fd28  64 a4 0e eb                                      bl #0x708ec0
0035fd2c  04 30 9d e5                                      ldr r3, [sp, #4]
0035fd30  23 31 a0 e1                                      lsr r3, r3, #2
0035fd34  00 30 84 e5                                      str r3, [r4]
0035fd38  f3 ff ff ea                                      b #0x35fd0c
0035fd3c  c4 c1 fe eb                                      bl #0x310454
0035fd40  f9 ff ff ea                                      b #0x35fd2c
0035fd44  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0035fd48  00 00 8f e0                                      add r0, pc, r0
0035fd4c  dc b8 fe eb                                      bl #0x30e0c4
0035fd50  01 00 a0 e3                                      mov r0, #1
0035fd54  3b b8 fe eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0035fd58  28 e7 55 00                                      .byte 0x28, 0xe7, 0x55, 0x00
