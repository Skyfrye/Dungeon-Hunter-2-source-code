; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00310f38, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<glitch::core::position2d<int> >
; alias: _ZNSaIN6glitch4core10position2dIiEEE11_M_allocateEjRj
; demangled: std::allocator<glitch::core::position2d<int> >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00310f38  10 40 2d e9                                      push {r4, lr}
00310f3c  1e 02 71 e3                                      cmn r1, #0xe0000001
00310f40  08 d0 4d e2                                      sub sp, sp, #8
00310f44  02 40 a0 e1                                      mov r4, r2
00310f48  10 00 00 8a                                      bhi #0x310f90
00310f4c  00 00 51 e3                                      cmp r1, #0
00310f50  01 00 a0 01                                      moveq r0, r1
00310f54  01 00 00 1a                                      bne #0x310f60
00310f58  08 d0 8d e2                                      add sp, sp, #8
00310f5c  10 80 bd e8                                      pop {r4, pc}
00310f60  81 01 a0 e1                                      lsl r0, r1, #3
00310f64  80 00 50 e3                                      cmp r0, #0x80
00310f68  04 00 8d e5                                      str r0, [sp, #4]
00310f6c  05 00 00 8a                                      bhi #0x310f88
00310f70  04 00 8d e2                                      add r0, sp, #4
00310f74  d1 df 0f eb                                      bl #0x708ec0
00310f78  04 30 9d e5                                      ldr r3, [sp, #4]
00310f7c  a3 31 a0 e1                                      lsr r3, r3, #3
00310f80  00 30 84 e5                                      str r3, [r4]
00310f84  f3 ff ff ea                                      b #0x310f58
00310f88  31 fd ff eb                                      bl #0x310454
00310f8c  f9 ff ff ea                                      b #0x310f78
00310f90  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00310f94  00 00 8f e0                                      add r0, pc, r0
00310f98  49 f4 ff eb                                      bl #0x30e0c4
00310f9c  01 00 a0 e3                                      mov r0, #1
00310fa0  a8 f3 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00310fa4  dc d4 5a 00                                      .byte 0xdc, 0xd4, 0x5a, 0x00
