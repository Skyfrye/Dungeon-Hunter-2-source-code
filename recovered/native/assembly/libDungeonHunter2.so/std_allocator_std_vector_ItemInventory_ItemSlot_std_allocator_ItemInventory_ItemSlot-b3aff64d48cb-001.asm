; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fea18, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > >
; alias: _ZNSaISt6vectorIPN13ItemInventory8ItemSlotESaIS2_EEE11_M_allocateEjRj
; demangled: std::allocator<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003fea18  10 40 2d e9                                      push {r4, lr}
003fea1c  55 35 05 e3                                      movw r3, #0x5555
003fea20  03 37 83 e1                                      orr r3, r3, r3, lsl #14
003fea24  03 00 51 e1                                      cmp r1, r3
003fea28  08 d0 4d e2                                      sub sp, sp, #8
003fea2c  02 40 a0 e1                                      mov r4, r2
003fea30  14 00 00 8a                                      bhi #0x3fea88
003fea34  00 00 51 e3                                      cmp r1, #0
003fea38  01 00 a0 01                                      moveq r0, r1
003fea3c  01 00 00 1a                                      bne #0x3fea48
003fea40  08 d0 8d e2                                      add sp, sp, #8
003fea44  10 80 bd e8                                      pop {r4, pc}
003fea48  0c 00 a0 e3                                      mov r0, #0xc
003fea4c  90 01 00 e0                                      mul r0, r0, r1
003fea50  80 00 50 e3                                      cmp r0, #0x80
003fea54  04 00 8d e5                                      str r0, [sp, #4]
003fea58  08 00 00 8a                                      bhi #0x3fea80
003fea5c  04 00 8d e2                                      add r0, sp, #4
003fea60  16 29 0c eb                                      bl #0x708ec0
003fea64  04 20 9d e5                                      ldr r2, [sp, #4]
003fea68  ab 3a 0a e3                                      movw r3, #0xaaab
003fea6c  aa 3a 4a e3                                      movt r3, #0xaaaa
003fea70  93 12 83 e0                                      umull r1, r3, r3, r2
003fea74  a3 31 a0 e1                                      lsr r3, r3, #3
003fea78  00 30 84 e5                                      str r3, [r4]
003fea7c  ef ff ff ea                                      b #0x3fea40
003fea80  73 46 fc eb                                      bl #0x310454
003fea84  f6 ff ff ea                                      b #0x3fea64
003fea88  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003fea8c  00 00 8f e0                                      add r0, pc, r0
003fea90  8b 3d fc eb                                      bl #0x30e0c4
003fea94  01 00 a0 e3                                      mov r0, #1
003fea98  ea 3c fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003fea9c  e4 f9 4b 00                                      .byte 0xe4, 0xf9, 0x4b, 0x00
