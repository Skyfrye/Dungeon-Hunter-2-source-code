; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00310d90, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<float>
; alias: _ZNSaIfE11_M_allocateEjRj
; demangled: std::allocator<float>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00310d90  10 40 2d e9                                      push {r4, lr}
00310d94  07 01 71 e3                                      cmn r1, #0xc0000001
00310d98  08 d0 4d e2                                      sub sp, sp, #8
00310d9c  02 40 a0 e1                                      mov r4, r2
00310da0  10 00 00 8a                                      bhi #0x310de8
00310da4  00 00 51 e3                                      cmp r1, #0
00310da8  01 00 a0 01                                      moveq r0, r1
00310dac  01 00 00 1a                                      bne #0x310db8
00310db0  08 d0 8d e2                                      add sp, sp, #8
00310db4  10 80 bd e8                                      pop {r4, pc}
00310db8  01 01 a0 e1                                      lsl r0, r1, #2
00310dbc  80 00 50 e3                                      cmp r0, #0x80
00310dc0  04 00 8d e5                                      str r0, [sp, #4]
00310dc4  05 00 00 8a                                      bhi #0x310de0
00310dc8  04 00 8d e2                                      add r0, sp, #4
00310dcc  3b e0 0f eb                                      bl #0x708ec0
00310dd0  04 30 9d e5                                      ldr r3, [sp, #4]
00310dd4  23 31 a0 e1                                      lsr r3, r3, #2
00310dd8  00 30 84 e5                                      str r3, [r4]
00310ddc  f3 ff ff ea                                      b #0x310db0
00310de0  9b fd ff eb                                      bl #0x310454
00310de4  f9 ff ff ea                                      b #0x310dd0
00310de8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00310dec  00 00 8f e0                                      add r0, pc, r0
00310df0  b3 f4 ff eb                                      bl #0x30e0c4
00310df4  01 00 a0 e3                                      mov r0, #1
00310df8  12 f4 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00310dfc  84 d6 5a 00                                      .byte 0x84, 0xd6, 0x5a, 0x00
