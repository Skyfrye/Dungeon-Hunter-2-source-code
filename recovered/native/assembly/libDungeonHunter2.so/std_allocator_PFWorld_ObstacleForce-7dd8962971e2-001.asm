; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00526c90, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<PFWorld::ObstacleForce>
; alias: _ZNSaIN7PFWorld13ObstacleForceEE11_M_allocateEjRj
; demangled: std::allocator<PFWorld::ObstacleForce>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00526c90  10 40 2d e9                                      push {r4, lr}
00526c94  cc 3c 0c e3                                      movw r3, #0xcccc
00526c98  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00526c9c  03 00 51 e1                                      cmp r1, r3
00526ca0  08 d0 4d e2                                      sub sp, sp, #8
00526ca4  02 40 a0 e1                                      mov r4, r2
00526ca8  14 00 00 8a                                      bhi #0x526d00
00526cac  00 00 51 e3                                      cmp r1, #0
00526cb0  01 00 a0 01                                      moveq r0, r1
00526cb4  01 00 00 1a                                      bne #0x526cc0
00526cb8  08 d0 8d e2                                      add sp, sp, #8
00526cbc  10 80 bd e8                                      pop {r4, pc}
00526cc0  14 00 a0 e3                                      mov r0, #0x14
00526cc4  90 01 00 e0                                      mul r0, r0, r1
00526cc8  80 00 50 e3                                      cmp r0, #0x80
00526ccc  04 00 8d e5                                      str r0, [sp, #4]
00526cd0  08 00 00 8a                                      bhi #0x526cf8
00526cd4  04 00 8d e2                                      add r0, sp, #4
00526cd8  78 88 07 eb                                      bl #0x708ec0
00526cdc  04 20 9d e5                                      ldr r2, [sp, #4]
00526ce0  cd 3c 0c e3                                      movw r3, #0xcccd
00526ce4  cc 3c 4c e3                                      movt r3, #0xcccc
00526ce8  93 12 83 e0                                      umull r1, r3, r3, r2
00526cec  23 32 a0 e1                                      lsr r3, r3, #4
00526cf0  00 30 84 e5                                      str r3, [r4]
00526cf4  ef ff ff ea                                      b #0x526cb8
00526cf8  d5 a5 f7 eb                                      bl #0x310454
00526cfc  f6 ff ff ea                                      b #0x526cdc
00526d00  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00526d04  00 00 8f e0                                      add r0, pc, r0
00526d08  ed 9c f7 eb                                      bl #0x30e0c4
00526d0c  01 00 a0 e3                                      mov r0, #1
00526d10  4c 9c f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00526d14  6c 77 39 00                                      .byte 0x6c, 0x77, 0x39, 0x00
