; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00342590, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<Module*>
; alias: _ZNSaIP6ModuleE11_M_allocateEjRj
; demangled: std::allocator<Module*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00342590  10 40 2d e9                                      push {r4, lr}
00342594  07 01 71 e3                                      cmn r1, #0xc0000001
00342598  08 d0 4d e2                                      sub sp, sp, #8
0034259c  02 40 a0 e1                                      mov r4, r2
003425a0  10 00 00 8a                                      bhi #0x3425e8
003425a4  00 00 51 e3                                      cmp r1, #0
003425a8  01 00 a0 01                                      moveq r0, r1
003425ac  01 00 00 1a                                      bne #0x3425b8
003425b0  08 d0 8d e2                                      add sp, sp, #8
003425b4  10 80 bd e8                                      pop {r4, pc}
003425b8  01 01 a0 e1                                      lsl r0, r1, #2
003425bc  80 00 50 e3                                      cmp r0, #0x80
003425c0  04 00 8d e5                                      str r0, [sp, #4]
003425c4  05 00 00 8a                                      bhi #0x3425e0
003425c8  04 00 8d e2                                      add r0, sp, #4
003425cc  3b 1a 0f eb                                      bl #0x708ec0
003425d0  04 30 9d e5                                      ldr r3, [sp, #4]
003425d4  23 31 a0 e1                                      lsr r3, r3, #2
003425d8  00 30 84 e5                                      str r3, [r4]
003425dc  f3 ff ff ea                                      b #0x3425b0
003425e0  9b 37 ff eb                                      bl #0x310454
003425e4  f9 ff ff ea                                      b #0x3425d0
003425e8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003425ec  00 00 8f e0                                      add r0, pc, r0
003425f0  b3 2e ff eb                                      bl #0x30e0c4
003425f4  01 00 a0 e3                                      mov r0, #1
003425f8  12 2e ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003425fc  84 be 57 00                                      .byte 0x84, 0xbe, 0x57, 0x00
