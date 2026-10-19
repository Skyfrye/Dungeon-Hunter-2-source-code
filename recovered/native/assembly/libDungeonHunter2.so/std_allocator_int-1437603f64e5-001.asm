; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035fd5c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<int>
; alias: _ZNSaIiE11_M_allocateEjRj
; demangled: std::allocator<int>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0035fd5c  10 40 2d e9                                      push {r4, lr}
0035fd60  07 01 71 e3                                      cmn r1, #0xc0000001
0035fd64  08 d0 4d e2                                      sub sp, sp, #8
0035fd68  02 40 a0 e1                                      mov r4, r2
0035fd6c  10 00 00 8a                                      bhi #0x35fdb4
0035fd70  00 00 51 e3                                      cmp r1, #0
0035fd74  01 00 a0 01                                      moveq r0, r1
0035fd78  01 00 00 1a                                      bne #0x35fd84
0035fd7c  08 d0 8d e2                                      add sp, sp, #8
0035fd80  10 80 bd e8                                      pop {r4, pc}
0035fd84  01 01 a0 e1                                      lsl r0, r1, #2
0035fd88  80 00 50 e3                                      cmp r0, #0x80
0035fd8c  04 00 8d e5                                      str r0, [sp, #4]
0035fd90  05 00 00 8a                                      bhi #0x35fdac
0035fd94  04 00 8d e2                                      add r0, sp, #4
0035fd98  48 a4 0e eb                                      bl #0x708ec0
0035fd9c  04 30 9d e5                                      ldr r3, [sp, #4]
0035fda0  23 31 a0 e1                                      lsr r3, r3, #2
0035fda4  00 30 84 e5                                      str r3, [r4]
0035fda8  f3 ff ff ea                                      b #0x35fd7c
0035fdac  a8 c1 fe eb                                      bl #0x310454
0035fdb0  f9 ff ff ea                                      b #0x35fd9c
0035fdb4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0035fdb8  00 00 8f e0                                      add r0, pc, r0
0035fdbc  c0 b8 fe eb                                      bl #0x30e0c4
0035fdc0  01 00 a0 e3                                      mov r0, #1
0035fdc4  1f b8 fe eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0035fdc8  b8 e6 55 00                                      .byte 0xb8, 0xe6, 0x55, 0x00
