; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00310fa8, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<glitch::video::SColor>
; alias: _ZNSaIN6glitch5video6SColorEE11_M_allocateEjRj
; demangled: std::allocator<glitch::video::SColor>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00310fa8  10 40 2d e9                                      push {r4, lr}
00310fac  07 01 71 e3                                      cmn r1, #0xc0000001
00310fb0  08 d0 4d e2                                      sub sp, sp, #8
00310fb4  02 40 a0 e1                                      mov r4, r2
00310fb8  10 00 00 8a                                      bhi #0x311000
00310fbc  00 00 51 e3                                      cmp r1, #0
00310fc0  01 00 a0 01                                      moveq r0, r1
00310fc4  01 00 00 1a                                      bne #0x310fd0
00310fc8  08 d0 8d e2                                      add sp, sp, #8
00310fcc  10 80 bd e8                                      pop {r4, pc}
00310fd0  01 01 a0 e1                                      lsl r0, r1, #2
00310fd4  80 00 50 e3                                      cmp r0, #0x80
00310fd8  04 00 8d e5                                      str r0, [sp, #4]
00310fdc  05 00 00 8a                                      bhi #0x310ff8
00310fe0  04 00 8d e2                                      add r0, sp, #4
00310fe4  b5 df 0f eb                                      bl #0x708ec0
00310fe8  04 30 9d e5                                      ldr r3, [sp, #4]
00310fec  23 31 a0 e1                                      lsr r3, r3, #2
00310ff0  00 30 84 e5                                      str r3, [r4]
00310ff4  f3 ff ff ea                                      b #0x310fc8
00310ff8  15 fd ff eb                                      bl #0x310454
00310ffc  f9 ff ff ea                                      b #0x310fe8
00311000  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00311004  00 00 8f e0                                      add r0, pc, r0
00311008  2d f4 ff eb                                      bl #0x30e0c4
0031100c  01 00 a0 e3                                      mov r0, #1
00311010  8c f3 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00311014  6c d4 5a 00                                      .byte 0x6c, 0xd4, 0x5a, 0x00
