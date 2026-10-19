; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004939c8, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<AnimatedFX*>
; alias: _ZNSaIP10AnimatedFXE11_M_allocateEjRj
; demangled: std::allocator<AnimatedFX*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
004939c8  10 40 2d e9                                      push {r4, lr}
004939cc  07 01 71 e3                                      cmn r1, #0xc0000001
004939d0  08 d0 4d e2                                      sub sp, sp, #8
004939d4  02 40 a0 e1                                      mov r4, r2
004939d8  10 00 00 8a                                      bhi #0x493a20
004939dc  00 00 51 e3                                      cmp r1, #0
004939e0  01 00 a0 01                                      moveq r0, r1
004939e4  01 00 00 1a                                      bne #0x4939f0
004939e8  08 d0 8d e2                                      add sp, sp, #8
004939ec  10 80 bd e8                                      pop {r4, pc}
004939f0  01 01 a0 e1                                      lsl r0, r1, #2
004939f4  80 00 50 e3                                      cmp r0, #0x80
004939f8  04 00 8d e5                                      str r0, [sp, #4]
004939fc  05 00 00 8a                                      bhi #0x493a18
00493a00  04 00 8d e2                                      add r0, sp, #4
00493a04  2d d5 09 eb                                      bl #0x708ec0
00493a08  04 30 9d e5                                      ldr r3, [sp, #4]
00493a0c  23 31 a0 e1                                      lsr r3, r3, #2
00493a10  00 30 84 e5                                      str r3, [r4]
00493a14  f3 ff ff ea                                      b #0x4939e8
00493a18  8d f2 f9 eb                                      bl #0x310454
00493a1c  f9 ff ff ea                                      b #0x493a08
00493a20  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00493a24  00 00 8f e0                                      add r0, pc, r0
00493a28  a5 e9 f9 eb                                      bl #0x30e0c4
00493a2c  01 00 a0 e3                                      mov r0, #1
00493a30  04 e9 f9 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00493a34  4c aa 42 00                                      .byte 0x4c, 0xaa, 0x42, 0x00
