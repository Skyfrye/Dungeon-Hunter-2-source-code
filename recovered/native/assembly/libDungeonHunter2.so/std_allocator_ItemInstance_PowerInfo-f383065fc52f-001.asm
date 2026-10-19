; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fabe4, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<ItemInstance::PowerInfo>
; alias: _ZNSaIN12ItemInstance9PowerInfoEE11_M_allocateEjRj
; demangled: std::allocator<ItemInstance::PowerInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003fabe4  10 40 2d e9                                      push {r4, lr}
003fabe8  7e 03 71 e3                                      cmn r1, #0xf8000001
003fabec  08 d0 4d e2                                      sub sp, sp, #8
003fabf0  02 40 a0 e1                                      mov r4, r2
003fabf4  10 00 00 8a                                      bhi #0x3fac3c
003fabf8  00 00 51 e3                                      cmp r1, #0
003fabfc  01 00 a0 01                                      moveq r0, r1
003fac00  01 00 00 1a                                      bne #0x3fac0c
003fac04  08 d0 8d e2                                      add sp, sp, #8
003fac08  10 80 bd e8                                      pop {r4, pc}
003fac0c  81 02 a0 e1                                      lsl r0, r1, #5
003fac10  80 00 50 e3                                      cmp r0, #0x80
003fac14  04 00 8d e5                                      str r0, [sp, #4]
003fac18  05 00 00 8a                                      bhi #0x3fac34
003fac1c  04 00 8d e2                                      add r0, sp, #4
003fac20  a6 38 0c eb                                      bl #0x708ec0
003fac24  04 30 9d e5                                      ldr r3, [sp, #4]
003fac28  a3 32 a0 e1                                      lsr r3, r3, #5
003fac2c  00 30 84 e5                                      str r3, [r4]
003fac30  f3 ff ff ea                                      b #0x3fac04
003fac34  06 56 fc eb                                      bl #0x310454
003fac38  f9 ff ff ea                                      b #0x3fac24
003fac3c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003fac40  00 00 8f e0                                      add r0, pc, r0
003fac44  1e 4d fc eb                                      bl #0x30e0c4
003fac48  01 00 a0 e3                                      mov r0, #1
003fac4c  7d 4c fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003fac50  30 38 4c 00                                      .byte 0x30, 0x38, 0x4c, 0x00
