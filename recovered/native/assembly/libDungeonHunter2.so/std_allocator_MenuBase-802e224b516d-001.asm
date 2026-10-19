; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042dea0, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<MenuBase*>
; alias: _ZNSaIP8MenuBaseE11_M_allocateEjRj
; demangled: std::allocator<MenuBase*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0042dea0  10 40 2d e9                                      push {r4, lr}
0042dea4  07 01 71 e3                                      cmn r1, #0xc0000001
0042dea8  08 d0 4d e2                                      sub sp, sp, #8
0042deac  02 40 a0 e1                                      mov r4, r2
0042deb0  10 00 00 8a                                      bhi #0x42def8
0042deb4  00 00 51 e3                                      cmp r1, #0
0042deb8  01 00 a0 01                                      moveq r0, r1
0042debc  01 00 00 1a                                      bne #0x42dec8
0042dec0  08 d0 8d e2                                      add sp, sp, #8
0042dec4  10 80 bd e8                                      pop {r4, pc}
0042dec8  01 01 a0 e1                                      lsl r0, r1, #2
0042decc  80 00 50 e3                                      cmp r0, #0x80
0042ded0  04 00 8d e5                                      str r0, [sp, #4]
0042ded4  05 00 00 8a                                      bhi #0x42def0
0042ded8  04 00 8d e2                                      add r0, sp, #4
0042dedc  f7 6b 0b eb                                      bl #0x708ec0
0042dee0  04 30 9d e5                                      ldr r3, [sp, #4]
0042dee4  23 31 a0 e1                                      lsr r3, r3, #2
0042dee8  00 30 84 e5                                      str r3, [r4]
0042deec  f3 ff ff ea                                      b #0x42dec0
0042def0  57 89 fb eb                                      bl #0x310454
0042def4  f9 ff ff ea                                      b #0x42dee0
0042def8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0042defc  00 00 8f e0                                      add r0, pc, r0
0042df00  6f 80 fb eb                                      bl #0x30e0c4
0042df04  01 00 a0 e3                                      mov r0, #1
0042df08  ce 7f fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0042df0c  74 05 49 00                                      .byte 0x74, 0x05, 0x49, 0x00
