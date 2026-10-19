; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e6768, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<ProjectileManager::_Projectile>
; alias: _ZNSaIN17ProjectileManager11_ProjectileEE11_M_allocateEjRj
; demangled: std::allocator<ProjectileManager::_Projectile>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003e6768  10 40 2d e9                                      push {r4, lr}
003e676c  1e 02 71 e3                                      cmn r1, #0xe0000001
003e6770  08 d0 4d e2                                      sub sp, sp, #8
003e6774  02 40 a0 e1                                      mov r4, r2
003e6778  10 00 00 8a                                      bhi #0x3e67c0
003e677c  00 00 51 e3                                      cmp r1, #0
003e6780  01 00 a0 01                                      moveq r0, r1
003e6784  01 00 00 1a                                      bne #0x3e6790
003e6788  08 d0 8d e2                                      add sp, sp, #8
003e678c  10 80 bd e8                                      pop {r4, pc}
003e6790  81 01 a0 e1                                      lsl r0, r1, #3
003e6794  80 00 50 e3                                      cmp r0, #0x80
003e6798  04 00 8d e5                                      str r0, [sp, #4]
003e679c  05 00 00 8a                                      bhi #0x3e67b8
003e67a0  04 00 8d e2                                      add r0, sp, #4
003e67a4  c5 89 0c eb                                      bl #0x708ec0
003e67a8  04 30 9d e5                                      ldr r3, [sp, #4]
003e67ac  a3 31 a0 e1                                      lsr r3, r3, #3
003e67b0  00 30 84 e5                                      str r3, [r4]
003e67b4  f3 ff ff ea                                      b #0x3e6788
003e67b8  25 a7 fc eb                                      bl #0x310454
003e67bc  f9 ff ff ea                                      b #0x3e67a8
003e67c0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003e67c4  00 00 8f e0                                      add r0, pc, r0
003e67c8  3d 9e fc eb                                      bl #0x30e0c4
003e67cc  01 00 a0 e3                                      mov r0, #1
003e67d0  9c 9d fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003e67d4  ac 7c 4d 00                                      .byte 0xac, 0x7c, 0x4d, 0x00
