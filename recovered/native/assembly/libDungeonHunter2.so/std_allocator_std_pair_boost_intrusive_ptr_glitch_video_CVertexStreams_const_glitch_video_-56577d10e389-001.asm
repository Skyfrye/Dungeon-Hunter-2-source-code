; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a46d4, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream> >
; alias: _ZNSaISt4pairIN5boost13intrusive_ptrIKN6glitch5video14CVertexStreamsEEENS3_16CPrimitiveStreamEEE11_M_allocateEjRj
; demangled: std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream> >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
005a46d4  10 40 2d e9                                      push {r4, lr}
005a46d8  49 32 09 e3                                      movw r3, #0x9249
005a46dc  03 36 83 e1                                      orr r3, r3, r3, lsl #12
005a46e0  03 00 51 e1                                      cmp r1, r3
005a46e4  08 d0 4d e2                                      sub sp, sp, #8
005a46e8  02 40 a0 e1                                      mov r4, r2
005a46ec  14 00 00 8a                                      bhi #0x5a4744
005a46f0  00 00 51 e3                                      cmp r1, #0
005a46f4  01 00 a0 01                                      moveq r0, r1
005a46f8  01 00 00 1a                                      bne #0x5a4704
005a46fc  08 d0 8d e2                                      add sp, sp, #8
005a4700  10 80 bd e8                                      pop {r4, pc}
005a4704  1c 00 a0 e3                                      mov r0, #0x1c
005a4708  90 01 00 e0                                      mul r0, r0, r1
005a470c  80 00 50 e3                                      cmp r0, #0x80
005a4710  04 00 8d e5                                      str r0, [sp, #4]
005a4714  08 00 00 8a                                      bhi #0x5a473c
005a4718  04 00 8d e2                                      add r0, sp, #4
005a471c  e7 91 05 eb                                      bl #0x708ec0
005a4720  04 20 9d e5                                      ldr r2, [sp, #4]
005a4724  25 39 04 e3                                      movw r3, #0x4925
005a4728  92 34 42 e3                                      movt r3, #0x2492
005a472c  22 21 a0 e1                                      lsr r2, r2, #2
005a4730  93 12 83 e0                                      umull r1, r3, r3, r2
005a4734  00 30 84 e5                                      str r3, [r4]
005a4738  ef ff ff ea                                      b #0x5a46fc
005a473c  52 a8 f5 eb                                      bl #0x30e88c
005a4740  f6 ff ff ea                                      b #0x5a4720
005a4744  0c 00 9f e5                                      ldr r0, [pc, #0xc]
005a4748  00 00 8f e0                                      add r0, pc, r0
005a474c  5c a6 f5 eb                                      bl #0x30e0c4
005a4750  01 00 a0 e3                                      mov r0, #1
005a4754  bb a5 f5 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
005a4758  28 9d 31 00                                      .byte 0x28, 0x9d, 0x31, 0x00
