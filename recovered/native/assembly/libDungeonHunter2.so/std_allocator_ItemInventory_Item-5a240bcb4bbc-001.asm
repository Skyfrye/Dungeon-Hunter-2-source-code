; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fe8a0, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<ItemInventory::Item>
; alias: _ZNSaIN13ItemInventory4ItemEE11_M_allocateEjRj
; demangled: std::allocator<ItemInventory::Item>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003fe8a0  10 40 2d e9                                      push {r4, lr}
003fe8a4  55 35 05 e3                                      movw r3, #0x5555
003fe8a8  03 37 83 e1                                      orr r3, r3, r3, lsl #14
003fe8ac  03 00 51 e1                                      cmp r1, r3
003fe8b0  08 d0 4d e2                                      sub sp, sp, #8
003fe8b4  02 40 a0 e1                                      mov r4, r2
003fe8b8  14 00 00 8a                                      bhi #0x3fe910
003fe8bc  00 00 51 e3                                      cmp r1, #0
003fe8c0  01 00 a0 01                                      moveq r0, r1
003fe8c4  01 00 00 1a                                      bne #0x3fe8d0
003fe8c8  08 d0 8d e2                                      add sp, sp, #8
003fe8cc  10 80 bd e8                                      pop {r4, pc}
003fe8d0  0c 00 a0 e3                                      mov r0, #0xc
003fe8d4  90 01 00 e0                                      mul r0, r0, r1
003fe8d8  80 00 50 e3                                      cmp r0, #0x80
003fe8dc  04 00 8d e5                                      str r0, [sp, #4]
003fe8e0  08 00 00 8a                                      bhi #0x3fe908
003fe8e4  04 00 8d e2                                      add r0, sp, #4
003fe8e8  74 29 0c eb                                      bl #0x708ec0
003fe8ec  04 20 9d e5                                      ldr r2, [sp, #4]
003fe8f0  ab 3a 0a e3                                      movw r3, #0xaaab
003fe8f4  aa 3a 4a e3                                      movt r3, #0xaaaa
003fe8f8  93 12 83 e0                                      umull r1, r3, r3, r2
003fe8fc  a3 31 a0 e1                                      lsr r3, r3, #3
003fe900  00 30 84 e5                                      str r3, [r4]
003fe904  ef ff ff ea                                      b #0x3fe8c8
003fe908  d1 46 fc eb                                      bl #0x310454
003fe90c  f6 ff ff ea                                      b #0x3fe8ec
003fe910  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003fe914  00 00 8f e0                                      add r0, pc, r0
003fe918  e9 3d fc eb                                      bl #0x30e0c4
003fe91c  01 00 a0 e3                                      mov r0, #1
003fe920  48 3d fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003fe924  5c fb 4b 00                                      .byte 0x5c, 0xfb, 0x4b, 0x00

; FUNCTION 0x004016c4, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<ItemInventory::Item>
; alias: _ZNSaIN13ItemInventory4ItemEE10deallocateEPS0_j
; demangled: std::allocator<ItemInventory::Item>::deallocate(ItemInventory::Item*, unsigned int)
; decoder-mode: arm
004016c4  00 00 51 e2                                      subs r0, r1, #0
004016c8  1e ff 2f 01                                      bxeq lr
004016cc  0c 10 a0 e3                                      mov r1, #0xc
004016d0  91 02 01 e0                                      mul r1, r1, r2
004016d4  80 00 51 e3                                      cmp r1, #0x80
004016d8  00 00 00 8a                                      bhi #0x4016e0
004016dc  07 1e 0c ea                                      b #0x708f00
004016e0  56 3b fc ea                                      b #0x310440
