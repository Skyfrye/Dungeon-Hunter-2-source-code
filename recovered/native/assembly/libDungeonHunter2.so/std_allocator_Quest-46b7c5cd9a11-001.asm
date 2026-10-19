; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043e3b8, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<Quest*>
; alias: _ZNSaIP5QuestE11_M_allocateEjRj
; demangled: std::allocator<Quest*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0043e3b8  10 40 2d e9                                      push {r4, lr}
0043e3bc  07 01 71 e3                                      cmn r1, #0xc0000001
0043e3c0  08 d0 4d e2                                      sub sp, sp, #8
0043e3c4  02 40 a0 e1                                      mov r4, r2
0043e3c8  10 00 00 8a                                      bhi #0x43e410
0043e3cc  00 00 51 e3                                      cmp r1, #0
0043e3d0  01 00 a0 01                                      moveq r0, r1
0043e3d4  01 00 00 1a                                      bne #0x43e3e0
0043e3d8  08 d0 8d e2                                      add sp, sp, #8
0043e3dc  10 80 bd e8                                      pop {r4, pc}
0043e3e0  01 01 a0 e1                                      lsl r0, r1, #2
0043e3e4  80 00 50 e3                                      cmp r0, #0x80
0043e3e8  04 00 8d e5                                      str r0, [sp, #4]
0043e3ec  05 00 00 8a                                      bhi #0x43e408
0043e3f0  04 00 8d e2                                      add r0, sp, #4
0043e3f4  b1 2a 0b eb                                      bl #0x708ec0
0043e3f8  04 30 9d e5                                      ldr r3, [sp, #4]
0043e3fc  23 31 a0 e1                                      lsr r3, r3, #2
0043e400  00 30 84 e5                                      str r3, [r4]
0043e404  f3 ff ff ea                                      b #0x43e3d8
0043e408  11 48 fb eb                                      bl #0x310454
0043e40c  f9 ff ff ea                                      b #0x43e3f8
0043e410  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0043e414  00 00 8f e0                                      add r0, pc, r0
0043e418  29 3f fb eb                                      bl #0x30e0c4
0043e41c  01 00 a0 e3                                      mov r0, #1
0043e420  88 3e fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0043e424  5c 00 48 00                                      .byte 0x5c, 0x00, 0x48, 0x00
