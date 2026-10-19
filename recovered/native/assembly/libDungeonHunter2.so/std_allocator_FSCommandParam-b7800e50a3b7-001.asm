; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00415bcc, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<FSCommandParam>
; alias: _ZNSaI14FSCommandParamE11_M_allocateEjRj
; demangled: std::allocator<FSCommandParam>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00415bcc  10 40 2d e9                                      push {r4, lr}
00415bd0  aa 3a 0a e3                                      movw r3, #0xaaaa
00415bd4  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00415bd8  03 00 51 e1                                      cmp r1, r3
00415bdc  08 d0 4d e2                                      sub sp, sp, #8
00415be0  02 40 a0 e1                                      mov r4, r2
00415be4  14 00 00 8a                                      bhi #0x415c3c
00415be8  00 00 51 e3                                      cmp r1, #0
00415bec  01 00 a0 01                                      moveq r0, r1
00415bf0  01 00 00 1a                                      bne #0x415bfc
00415bf4  08 d0 8d e2                                      add sp, sp, #8
00415bf8  10 80 bd e8                                      pop {r4, pc}
00415bfc  18 00 a0 e3                                      mov r0, #0x18
00415c00  90 01 00 e0                                      mul r0, r0, r1
00415c04  80 00 50 e3                                      cmp r0, #0x80
00415c08  04 00 8d e5                                      str r0, [sp, #4]
00415c0c  08 00 00 8a                                      bhi #0x415c34
00415c10  04 00 8d e2                                      add r0, sp, #4
00415c14  a9 cc 0b eb                                      bl #0x708ec0
00415c18  04 20 9d e5                                      ldr r2, [sp, #4]
00415c1c  ab 3a 0a e3                                      movw r3, #0xaaab
00415c20  aa 3a 4a e3                                      movt r3, #0xaaaa
00415c24  93 12 83 e0                                      umull r1, r3, r3, r2
00415c28  23 32 a0 e1                                      lsr r3, r3, #4
00415c2c  00 30 84 e5                                      str r3, [r4]
00415c30  ef ff ff ea                                      b #0x415bf4
00415c34  06 ea fb eb                                      bl #0x310454
00415c38  f6 ff ff ea                                      b #0x415c18
00415c3c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00415c40  00 00 8f e0                                      add r0, pc, r0
00415c44  1e e1 fb eb                                      bl #0x30e0c4
00415c48  01 00 a0 e3                                      mov r0, #1
00415c4c  7d e0 fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00415c50  30 88 4a 00                                      .byte 0x30, 0x88, 0x4a, 0x00
