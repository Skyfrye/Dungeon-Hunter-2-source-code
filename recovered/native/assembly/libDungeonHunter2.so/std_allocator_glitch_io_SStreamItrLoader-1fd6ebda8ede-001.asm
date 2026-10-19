; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b6874, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<glitch::io::SStreamItrLoader>
; alias: _ZNSaIN6glitch2io16SStreamItrLoaderEE11_M_allocateEjRj
; demangled: std::allocator<glitch::io::SStreamItrLoader>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
006b6874  10 40 2d e9                                      push {r4, lr}
006b6878  7e 03 71 e3                                      cmn r1, #0xf8000001
006b687c  08 d0 4d e2                                      sub sp, sp, #8
006b6880  02 40 a0 e1                                      mov r4, r2
006b6884  10 00 00 8a                                      bhi #0x6b68cc
006b6888  00 00 51 e3                                      cmp r1, #0
006b688c  01 00 a0 01                                      moveq r0, r1
006b6890  01 00 00 1a                                      bne #0x6b689c
006b6894  08 d0 8d e2                                      add sp, sp, #8
006b6898  10 80 bd e8                                      pop {r4, pc}
006b689c  81 02 a0 e1                                      lsl r0, r1, #5
006b68a0  80 00 50 e3                                      cmp r0, #0x80
006b68a4  04 00 8d e5                                      str r0, [sp, #4]
006b68a8  05 00 00 8a                                      bhi #0x6b68c4
006b68ac  04 00 8d e2                                      add r0, sp, #4
006b68b0  82 49 01 eb                                      bl #0x708ec0
006b68b4  04 30 9d e5                                      ldr r3, [sp, #4]
006b68b8  a3 32 a0 e1                                      lsr r3, r3, #5
006b68bc  00 30 84 e5                                      str r3, [r4]
006b68c0  f3 ff ff ea                                      b #0x6b6894
006b68c4  f0 5f f1 eb                                      bl #0x30e88c
006b68c8  f9 ff ff ea                                      b #0x6b68b4
006b68cc  0c 00 9f e5                                      ldr r0, [pc, #0xc]
006b68d0  00 00 8f e0                                      add r0, pc, r0
006b68d4  fa 5d f1 eb                                      bl #0x30e0c4
006b68d8  01 00 a0 e3                                      mov r0, #1
006b68dc  59 5d f1 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
006b68e0  a0 7b 20 00                                      .byte 0xa0, 0x7b, 0x20, 0x00
