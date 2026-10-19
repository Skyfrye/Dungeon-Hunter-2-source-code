; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00310d24, declared_size=108, range_size=108, mode=arm
; class-group: std::allocator<unsigned short>
; alias: _ZNSaItE11_M_allocateEjRj
; demangled: std::allocator<unsigned short>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00310d24  10 40 2d e9                                      push {r4, lr}
00310d28  00 00 51 e2                                      subs r0, r1, #0
00310d2c  08 d0 4d e2                                      sub sp, sp, #8
00310d30  02 40 a0 e1                                      mov r4, r2
00310d34  0f 00 00 ba                                      blt #0x310d78
00310d38  00 00 50 e3                                      cmp r0, #0
00310d3c  01 00 00 1a                                      bne #0x310d48
00310d40  08 d0 8d e2                                      add sp, sp, #8
00310d44  10 80 bd e8                                      pop {r4, pc}
00310d48  80 00 a0 e1                                      lsl r0, r0, #1
00310d4c  80 00 50 e3                                      cmp r0, #0x80
00310d50  04 00 8d e5                                      str r0, [sp, #4]
00310d54  05 00 00 8a                                      bhi #0x310d70
00310d58  04 00 8d e2                                      add r0, sp, #4
00310d5c  57 e0 0f eb                                      bl #0x708ec0
00310d60  04 30 9d e5                                      ldr r3, [sp, #4]
00310d64  a3 30 a0 e1                                      lsr r3, r3, #1
00310d68  00 30 84 e5                                      str r3, [r4]
00310d6c  f3 ff ff ea                                      b #0x310d40
00310d70  b7 fd ff eb                                      bl #0x310454
00310d74  f9 ff ff ea                                      b #0x310d60
00310d78  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00310d7c  00 00 8f e0                                      add r0, pc, r0
00310d80  cf f4 ff eb                                      bl #0x30e0c4
00310d84  01 00 a0 e3                                      mov r0, #1
00310d88  2e f4 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00310d8c  f4 d6 5a 00                                      .byte 0xf4, 0xd6, 0x5a, 0x00

; FUNCTION 0x0057a6b8, declared_size=28, range_size=28, mode=arm
; class-group: std::allocator<unsigned short>
; alias: _ZNSaItE10deallocateEPtj
; demangled: std::allocator<unsigned short>::deallocate(unsigned short*, unsigned int)
; decoder-mode: arm
0057a6b8  00 00 51 e2                                      subs r0, r1, #0
0057a6bc  1e ff 2f 01                                      bxeq lr
0057a6c0  82 10 a0 e1                                      lsl r1, r2, #1
0057a6c4  80 00 51 e3                                      cmp r1, #0x80
0057a6c8  00 00 00 8a                                      bhi #0x57a6d0
0057a6cc  0b 3a 06 ea                                      b #0x708f00
0057a6d0  f6 4e f6 ea                                      b #0x30e2b0
