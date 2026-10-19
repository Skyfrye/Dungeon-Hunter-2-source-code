; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fe998, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >
; alias: _ZNSt6vectorIPN13ItemInventory8ItemSlotESaIS2_EEC1ERKS4_
; demangled: std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >::vector(std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > const&)
; decoder-mode: arm
003fe998  30 40 2d e9                                      push {r4, r5, lr}
003fe99c  01 50 a0 e1                                      mov r5, r1
003fe9a0  00 30 95 e5                                      ldr r3, [r5]
003fe9a4  04 10 91 e5                                      ldr r1, [r1, #4]
003fe9a8  0c d0 4d e2                                      sub sp, sp, #0xc
003fe9ac  00 40 a0 e1                                      mov r4, r0
003fe9b0  01 10 63 e0                                      rsb r1, r3, r1
003fe9b4  00 c0 a0 e3                                      mov ip, #0
003fe9b8  41 11 a0 e1                                      asr r1, r1, #2
003fe9bc  08 20 8d e2                                      add r2, sp, #8
003fe9c0  04 10 22 e5                                      str r1, [r2, #-4]!
003fe9c4  00 c0 84 e5                                      str ip, [r4]
003fe9c8  04 c0 84 e5                                      str ip, [r4, #4]
003fe9cc  08 c0 a0 e5                                      str ip, [r0, #8]!
003fe9d0  d4 ff ff eb                                      bl #0x3fe928
003fe9d4  04 20 9d e5                                      ldr r2, [sp, #4]
003fe9d8  00 00 84 e5                                      str r0, [r4]
003fe9dc  04 00 84 e5                                      str r0, [r4, #4]
003fe9e0  02 21 80 e0                                      add r2, r0, r2, lsl #2
003fe9e4  08 20 84 e5                                      str r2, [r4, #8]
003fe9e8  06 00 95 e8                                      ldm r5, {r1, r2}
003fe9ec  00 30 a0 e1                                      mov r3, r0
003fe9f0  02 00 51 e1                                      cmp r1, r2
003fe9f4  03 00 00 0a                                      beq #0x3fea08
003fe9f8  02 50 61 e0                                      rsb r5, r1, r2
003fe9fc  05 20 a0 e1                                      mov r2, r5
003fea00  98 3f fc eb                                      bl #0x30e868
003fea04  05 30 80 e0                                      add r3, r0, r5
003fea08  04 30 84 e5                                      str r3, [r4, #4]
003fea0c  04 00 a0 e1                                      mov r0, r4
003fea10  0c d0 8d e2                                      add sp, sp, #0xc
003fea14  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x003feaa0, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >
; alias: _ZNSt6vectorIPN13ItemInventory8ItemSlotESaIS2_EED1Ev
; demangled: std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >::~vector()
; decoder-mode: arm
003feaa0  10 40 2d e9                                      push {r4, lr}
003feaa4  00 40 a0 e1                                      mov r4, r0
003feaa8  00 00 90 e5                                      ldr r0, [r0]
003feaac  00 00 50 e3                                      cmp r0, #0
003feab0  05 00 00 0a                                      beq #0x3feacc
003feab4  08 10 94 e5                                      ldr r1, [r4, #8]
003feab8  01 10 60 e0                                      rsb r1, r0, r1
003feabc  03 10 c1 e3                                      bic r1, r1, #3
003feac0  80 00 51 e3                                      cmp r1, #0x80
003feac4  02 00 00 8a                                      bhi #0x3fead4
003feac8  0c 29 0c eb                                      bl #0x708f00
003feacc  04 00 a0 e1                                      mov r0, r4
003fead0  10 80 bd e8                                      pop {r4, pc}
003fead4  59 46 fc eb                                      bl #0x310440
003fead8  04 00 a0 e1                                      mov r0, r4
003feadc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003fef4c, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >
; alias: _ZNSt6vectorIPN13ItemInventory8ItemSlotESaIS2_EE18_M_insert_overflowEPS2_RKS2_RKSt11__true_typejb.clone.2
; demangled: std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >::_M_insert_overflow(ItemInventory::ItemSlot**, ItemInventory::ItemSlot* const&, std::__true_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
003fef4c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003fef50  00 40 a0 e1                                      mov r4, r0
003fef54  00 30 94 e5                                      ldr r3, [r4]
003fef58  04 00 90 e5                                      ldr r0, [r0, #4]
003fef5c  01 60 a0 e1                                      mov r6, r1
003fef60  0c d0 4d e2                                      sub sp, sp, #0xc
003fef64  00 30 63 e0                                      rsb r3, r3, r0
003fef68  43 31 a0 e1                                      asr r3, r3, #2
003fef6c  01 00 53 e3                                      cmp r3, #1
003fef70  03 10 83 20                                      addhs r1, r3, r3
003fef74  01 10 83 32                                      addlo r1, r3, #1
003fef78  07 01 71 e3                                      cmn r1, #0xc0000001
003fef7c  02 70 a0 e1                                      mov r7, r2
003fef80  1b 00 00 8a                                      bhi #0x3feff4
003fef84  01 00 53 e1                                      cmp r3, r1
003fef88  19 00 00 8a                                      bhi #0x3feff4
003fef8c  08 20 8d e2                                      add r2, sp, #8
003fef90  04 10 22 e5                                      str r1, [r2, #-4]!
003fef94  08 00 84 e2                                      add r0, r4, #8
003fef98  62 fe ff eb                                      bl #0x3fe928
003fef9c  00 10 94 e5                                      ldr r1, [r4]
003fefa0  00 50 a0 e1                                      mov r5, r0
003fefa4  01 60 56 e0                                      subs r6, r6, r1
003fefa8  00 60 a0 01                                      moveq r6, r0
003fefac  14 00 00 1a                                      bne #0x3ff004
003fefb0  00 30 97 e5                                      ldr r3, [r7]
003fefb4  04 30 86 e4                                      str r3, [r6], #4
003fefb8  00 00 94 e5                                      ldr r0, [r4]
003fefbc  08 10 94 e5                                      ldr r1, [r4, #8]
003fefc0  00 00 50 e3                                      cmp r0, #0
003fefc4  04 00 00 0a                                      beq #0x3fefdc
003fefc8  01 10 60 e0                                      rsb r1, r0, r1
003fefcc  03 10 c1 e3                                      bic r1, r1, #3
003fefd0  80 00 51 e3                                      cmp r1, #0x80
003fefd4  08 00 00 8a                                      bhi #0x3feffc
003fefd8  c8 27 0c eb                                      bl #0x708f00
003fefdc  04 30 9d e5                                      ldr r3, [sp, #4]
003fefe0  60 00 84 e8                                      stm r4, {r5, r6}
003fefe4  03 51 85 e0                                      add r5, r5, r3, lsl #2
003fefe8  08 50 84 e5                                      str r5, [r4, #8]
003fefec  0c d0 8d e2                                      add sp, sp, #0xc
003feff0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003feff4  03 11 e0 e3                                      mvn r1, #0xc0000000
003feff8  e3 ff ff ea                                      b #0x3fef8c
003feffc  0f 45 fc eb                                      bl #0x310440
003ff000  f5 ff ff ea                                      b #0x3fefdc
003ff004  06 20 a0 e1                                      mov r2, r6
003ff008  ca 3b fc eb                                      bl #0x30df38
003ff00c  06 60 80 e0                                      add r6, r0, r6
003ff010  e6 ff ff ea                                      b #0x3fefb0
