; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e6570, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<ProjectileManager::_LaserTypeProjectile>
; alias: _ZNSaIN17ProjectileManager20_LaserTypeProjectileEE11_M_allocateEjRj
; demangled: std::allocator<ProjectileManager::_LaserTypeProjectile>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003e6570  10 40 2d e9                                      push {r4, lr}
003e6574  1e 02 71 e3                                      cmn r1, #0xe0000001
003e6578  08 d0 4d e2                                      sub sp, sp, #8
003e657c  02 40 a0 e1                                      mov r4, r2
003e6580  10 00 00 8a                                      bhi #0x3e65c8
003e6584  00 00 51 e3                                      cmp r1, #0
003e6588  01 00 a0 01                                      moveq r0, r1
003e658c  01 00 00 1a                                      bne #0x3e6598
003e6590  08 d0 8d e2                                      add sp, sp, #8
003e6594  10 80 bd e8                                      pop {r4, pc}
003e6598  81 01 a0 e1                                      lsl r0, r1, #3
003e659c  80 00 50 e3                                      cmp r0, #0x80
003e65a0  04 00 8d e5                                      str r0, [sp, #4]
003e65a4  05 00 00 8a                                      bhi #0x3e65c0
003e65a8  04 00 8d e2                                      add r0, sp, #4
003e65ac  43 8a 0c eb                                      bl #0x708ec0
003e65b0  04 30 9d e5                                      ldr r3, [sp, #4]
003e65b4  a3 31 a0 e1                                      lsr r3, r3, #3
003e65b8  00 30 84 e5                                      str r3, [r4]
003e65bc  f3 ff ff ea                                      b #0x3e6590
003e65c0  a3 a7 fc eb                                      bl #0x310454
003e65c4  f9 ff ff ea                                      b #0x3e65b0
003e65c8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003e65cc  00 00 8f e0                                      add r0, pc, r0
003e65d0  bb 9e fc eb                                      bl #0x30e0c4
003e65d4  01 00 a0 e3                                      mov r0, #1
003e65d8  1a 9e fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003e65dc  a4 7e 4d 00                                      .byte 0xa4, 0x7e, 0x4d, 0x00
