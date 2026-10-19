; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fe928, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<ItemInventory::ItemSlot*>
; alias: _ZNSaIPN13ItemInventory8ItemSlotEE11_M_allocateEjRj
; demangled: std::allocator<ItemInventory::ItemSlot*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003fe928  10 40 2d e9                                      push {r4, lr}
003fe92c  07 01 71 e3                                      cmn r1, #0xc0000001
003fe930  08 d0 4d e2                                      sub sp, sp, #8
003fe934  02 40 a0 e1                                      mov r4, r2
003fe938  10 00 00 8a                                      bhi #0x3fe980
003fe93c  00 00 51 e3                                      cmp r1, #0
003fe940  01 00 a0 01                                      moveq r0, r1
003fe944  01 00 00 1a                                      bne #0x3fe950
003fe948  08 d0 8d e2                                      add sp, sp, #8
003fe94c  10 80 bd e8                                      pop {r4, pc}
003fe950  01 01 a0 e1                                      lsl r0, r1, #2
003fe954  80 00 50 e3                                      cmp r0, #0x80
003fe958  04 00 8d e5                                      str r0, [sp, #4]
003fe95c  05 00 00 8a                                      bhi #0x3fe978
003fe960  04 00 8d e2                                      add r0, sp, #4
003fe964  55 29 0c eb                                      bl #0x708ec0
003fe968  04 30 9d e5                                      ldr r3, [sp, #4]
003fe96c  23 31 a0 e1                                      lsr r3, r3, #2
003fe970  00 30 84 e5                                      str r3, [r4]
003fe974  f3 ff ff ea                                      b #0x3fe948
003fe978  b5 46 fc eb                                      bl #0x310454
003fe97c  f9 ff ff ea                                      b #0x3fe968
003fe980  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003fe984  00 00 8f e0                                      add r0, pc, r0
003fe988  cd 3d fc eb                                      bl #0x30e0c4
003fe98c  01 00 a0 e3                                      mov r0, #1
003fe990  2c 3d fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003fe994  ec fa 4b 00                                      .byte 0xec, 0xfa, 0x4b, 0x00
