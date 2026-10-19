; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006db774, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>*>
; alias: _ZNSaIPSt4pairIPKcN6glitch5video18E_VERTEX_ATTRIBUTEEEE8allocateEjPKv
; demangled: std::allocator<std::pair<char const*, glitch::video::E_VERTEX_ATTRIBUTE>*>::allocate(unsigned int, void const*)
; decoder-mode: arm
006db774  04 e0 2d e5                                      str lr, [sp, #-4]!
006db778  07 01 71 e3                                      cmn r1, #0xc0000001
006db77c  0c d0 4d e2                                      sub sp, sp, #0xc
006db780  0d 00 00 8a                                      bhi #0x6db7bc
006db784  00 00 51 e3                                      cmp r1, #0
006db788  01 00 a0 01                                      moveq r0, r1
006db78c  01 00 00 1a                                      bne #0x6db798
006db790  0c d0 8d e2                                      add sp, sp, #0xc
006db794  00 80 bd e8                                      ldm sp!, {pc}
006db798  01 01 a0 e1                                      lsl r0, r1, #2
006db79c  80 00 50 e3                                      cmp r0, #0x80
006db7a0  04 00 8d e5                                      str r0, [sp, #4]
006db7a4  02 00 00 8a                                      bhi #0x6db7b4
006db7a8  04 00 8d e2                                      add r0, sp, #4
006db7ac  c3 b5 00 eb                                      bl #0x708ec0
006db7b0  f6 ff ff ea                                      b #0x6db790
006db7b4  34 cc f0 eb                                      bl #0x30e88c
006db7b8  f4 ff ff ea                                      b #0x6db790
006db7bc  0c 00 9f e5                                      ldr r0, [pc, #0xc]
006db7c0  00 00 8f e0                                      add r0, pc, r0
006db7c4  3e ca f0 eb                                      bl #0x30e0c4
006db7c8  01 00 a0 e3                                      mov r0, #1
006db7cc  9d c9 f0 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
006db7d0  b0 2c 1e 00                                      .byte 0xb0, 0x2c, 0x1e, 0x00
