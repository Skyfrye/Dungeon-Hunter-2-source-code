; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003feae0, declared_size=180, range_size=180, mode=arm
; class-group: std::vector<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >, std::allocator<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > > >
; alias: _ZNSt6vectorIS_IPN13ItemInventory8ItemSlotESaIS2_EESaIS4_EED1Ev
; demangled: std::vector<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >, std::allocator<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > > >::~vector()
; decoder-mode: arm
003feae0  70 40 2d e9                                      push {r4, r5, r6, lr}
003feae4  04 40 90 e5                                      ldr r4, [r0, #4]
003feae8  00 50 90 e5                                      ldr r5, [r0]
003feaec  00 60 a0 e1                                      mov r6, r0
003feaf0  05 00 54 e1                                      cmp r4, r5
003feaf4  04 00 00 1a                                      bne #0x3feb0c
003feaf8  10 00 00 ea                                      b #0x3feb40
003feafc  ff 28 0c eb                                      bl #0x708f00
003feb00  0c 40 44 e2                                      sub r4, r4, #0xc
003feb04  04 00 55 e1                                      cmp r5, r4
003feb08  0c 00 00 0a                                      beq #0x3feb40
003feb0c  0c 30 14 e5                                      ldr r3, [r4, #-0xc]
003feb10  00 00 53 e3                                      cmp r3, #0
003feb14  03 00 a0 e1                                      mov r0, r3
003feb18  f8 ff ff 0a                                      beq #0x3feb00
003feb1c  04 10 14 e5                                      ldr r1, [r4, #-4]
003feb20  01 10 63 e0                                      rsb r1, r3, r1
003feb24  03 10 c1 e3                                      bic r1, r1, #3
003feb28  80 00 51 e3                                      cmp r1, #0x80
003feb2c  f2 ff ff 9a                                      bls #0x3feafc
003feb30  0c 40 44 e2                                      sub r4, r4, #0xc
003feb34  41 46 fc eb                                      bl #0x310440
003feb38  04 00 55 e1                                      cmp r5, r4
003feb3c  f2 ff ff 1a                                      bne #0x3feb0c
003feb40  00 00 96 e5                                      ldr r0, [r6]
003feb44  00 00 50 e3                                      cmp r0, #0
003feb48  0c 00 00 0a                                      beq #0x3feb80
003feb4c  08 30 96 e5                                      ldr r3, [r6, #8]
003feb50  03 30 60 e0                                      rsb r3, r0, r3
003feb54  43 31 a0 e1                                      asr r3, r3, #2
003feb58  03 11 83 e0                                      add r1, r3, r3, lsl #2
003feb5c  01 12 81 e0                                      add r1, r1, r1, lsl #4
003feb60  01 14 81 e0                                      add r1, r1, r1, lsl #8
003feb64  01 18 81 e0                                      add r1, r1, r1, lsl #16
003feb68  81 30 83 e0                                      add r3, r3, r1, lsl #1
003feb6c  0c 10 a0 e3                                      mov r1, #0xc
003feb70  91 03 01 e0                                      mul r1, r1, r3
003feb74  80 00 51 e3                                      cmp r1, #0x80
003feb78  02 00 00 8a                                      bhi #0x3feb88
003feb7c  df 28 0c eb                                      bl #0x708f00
003feb80  06 00 a0 e1                                      mov r0, r6
003feb84  70 80 bd e8                                      pop {r4, r5, r6, pc}
003feb88  2c 46 fc eb                                      bl #0x310440
003feb8c  06 00 a0 e1                                      mov r0, r6
003feb90  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003ff014, declared_size=356, range_size=356, mode=arm
; class-group: std::vector<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >, std::allocator<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > > >
; alias: _ZNSt6vectorIS_IPN13ItemInventory8ItemSlotESaIS2_EESaIS4_EE22_M_insert_overflow_auxEPS4_RKS4_RKSt12__false_typejb.clone.5
; demangled: std::vector<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >, std::allocator<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > > >::_M_insert_overflow_aux(std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >*, std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.5]
; decoder-mode: arm
003ff014  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003ff018  00 40 a0 e1                                      mov r4, r0
003ff01c  01 10 90 e8                                      ldm r0, {r0, ip}
003ff020  01 50 a0 e1                                      mov r5, r1
003ff024  55 35 05 e3                                      movw r3, #0x5555
003ff028  0c 00 60 e0                                      rsb r0, r0, ip
003ff02c  40 01 a0 e1                                      asr r0, r0, #2
003ff030  03 37 83 e1                                      orr r3, r3, r3, lsl #14
003ff034  00 11 80 e0                                      add r1, r0, r0, lsl #2
003ff038  0c d0 4d e2                                      sub sp, sp, #0xc
003ff03c  01 12 81 e0                                      add r1, r1, r1, lsl #4
003ff040  02 60 a0 e1                                      mov r6, r2
003ff044  01 14 81 e0                                      add r1, r1, r1, lsl #8
003ff048  01 18 81 e0                                      add r1, r1, r1, lsl #16
003ff04c  81 00 80 e0                                      add r0, r0, r1, lsl #1
003ff050  01 00 50 e3                                      cmp r0, #1
003ff054  00 10 80 20                                      addhs r1, r0, r0
003ff058  01 10 80 32                                      addlo r1, r0, #1
003ff05c  03 00 51 e1                                      cmp r1, r3
003ff060  3f 00 00 8a                                      bhi #0x3ff164
003ff064  01 00 50 e1                                      cmp r0, r1
003ff068  3d 00 00 8a                                      bhi #0x3ff164
003ff06c  08 20 8d e2                                      add r2, sp, #8
003ff070  04 10 22 e5                                      str r1, [r2, #-4]!
003ff074  08 00 84 e2                                      add r0, r4, #8
003ff078  66 fe ff eb                                      bl #0x3fea18
003ff07c  00 30 94 e5                                      ldr r3, [r4]
003ff080  00 70 a0 e1                                      mov r7, r0
003ff084  05 50 63 e0                                      rsb r5, r3, r5
003ff088  45 51 a0 e1                                      asr r5, r5, #2
003ff08c  05 21 85 e0                                      add r2, r5, r5, lsl #2
003ff090  02 22 82 e0                                      add r2, r2, r2, lsl #4
003ff094  02 24 82 e0                                      add r2, r2, r2, lsl #8
003ff098  02 28 82 e0                                      add r2, r2, r2, lsl #16
003ff09c  82 50 85 e0                                      add r5, r5, r2, lsl #1
003ff0a0  00 00 55 e3                                      cmp r5, #0
003ff0a4  00 50 a0 d1                                      movle r5, r0
003ff0a8  12 00 00 da                                      ble #0x3ff0f8
003ff0ac  0c 30 83 e2                                      add r3, r3, #0xc
003ff0b0  05 00 a0 e1                                      mov r0, r5
003ff0b4  07 20 a0 e1                                      mov r2, r7
003ff0b8  00 10 a0 e3                                      mov r1, #0
003ff0bc  0c c0 13 e5                                      ldr ip, [r3, #-0xc]
003ff0c0  01 00 50 e2                                      subs r0, r0, #1
003ff0c4  00 c0 82 e5                                      str ip, [r2]
003ff0c8  08 c0 13 e5                                      ldr ip, [r3, #-8]
003ff0cc  04 c0 82 e5                                      str ip, [r2, #4]
003ff0d0  04 c0 13 e5                                      ldr ip, [r3, #-4]
003ff0d4  08 c0 82 e5                                      str ip, [r2, #8]
003ff0d8  0c 10 03 e5                                      str r1, [r3, #-0xc]
003ff0dc  04 10 03 e5                                      str r1, [r3, #-4]
003ff0e0  08 10 03 e5                                      str r1, [r3, #-8]
003ff0e4  0c 20 82 e2                                      add r2, r2, #0xc
003ff0e8  0c 30 83 e2                                      add r3, r3, #0xc
003ff0ec  f2 ff ff 1a                                      bne #0x3ff0bc
003ff0f0  0c 30 a0 e3                                      mov r3, #0xc
003ff0f4  93 75 25 e0                                      mla r5, r3, r5, r7
003ff0f8  05 00 a0 e1                                      mov r0, r5
003ff0fc  06 10 a0 e1                                      mov r1, r6
003ff100  24 fe ff eb                                      bl #0x3fe998
003ff104  00 00 94 e5                                      ldr r0, [r4]
003ff108  0c 50 85 e2                                      add r5, r5, #0xc
003ff10c  08 30 94 e5                                      ldr r3, [r4, #8]
003ff110  00 00 50 e3                                      cmp r0, #0
003ff114  0b 00 00 0a                                      beq #0x3ff148
003ff118  03 30 60 e0                                      rsb r3, r0, r3
003ff11c  43 31 a0 e1                                      asr r3, r3, #2
003ff120  03 11 83 e0                                      add r1, r3, r3, lsl #2
003ff124  01 12 81 e0                                      add r1, r1, r1, lsl #4
003ff128  01 14 81 e0                                      add r1, r1, r1, lsl #8
003ff12c  01 18 81 e0                                      add r1, r1, r1, lsl #16
003ff130  81 30 83 e0                                      add r3, r3, r1, lsl #1
003ff134  0c 10 a0 e3                                      mov r1, #0xc
003ff138  91 03 01 e0                                      mul r1, r1, r3
003ff13c  80 00 51 e3                                      cmp r1, #0x80
003ff140  0a 00 00 8a                                      bhi #0x3ff170
003ff144  6d 27 0c eb                                      bl #0x708f00
003ff148  04 30 9d e5                                      ldr r3, [sp, #4]
003ff14c  0c 20 a0 e3                                      mov r2, #0xc
003ff150  00 70 84 e5                                      str r7, [r4]
003ff154  92 73 27 e0                                      mla r7, r2, r3, r7
003ff158  a0 00 84 e9                                      stmib r4, {r5, r7}
003ff15c  0c d0 8d e2                                      add sp, sp, #0xc
003ff160  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003ff164  55 15 05 e3                                      movw r1, #0x5555
003ff168  01 17 81 e1                                      orr r1, r1, r1, lsl #14
003ff16c  be ff ff ea                                      b #0x3ff06c
003ff170  b2 44 fc eb                                      bl #0x310440
003ff174  f3 ff ff ea                                      b #0x3ff148

; FUNCTION 0x003ff178, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >, std::allocator<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > > >
; alias: _ZNSt6vectorIS_IPN13ItemInventory8ItemSlotESaIS2_EESaIS4_EE9push_backERKS4_
; demangled: std::vector<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> >, std::allocator<std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > > >::push_back(std::vector<ItemInventory::ItemSlot*, std::allocator<ItemInventory::ItemSlot*> > const&)
; decoder-mode: arm
003ff178  70 40 2d e9                                      push {r4, r5, r6, lr}
003ff17c  04 60 90 e5                                      ldr r6, [r0, #4]
003ff180  08 30 90 e5                                      ldr r3, [r0, #8]
003ff184  10 d0 4d e2                                      sub sp, sp, #0x10
003ff188  00 50 a0 e1                                      mov r5, r0
003ff18c  03 00 56 e1                                      cmp r6, r3
003ff190  01 20 a0 e1                                      mov r2, r1
003ff194  06 00 00 0a                                      beq #0x3ff1b4
003ff198  06 00 a0 e1                                      mov r0, r6
003ff19c  fd fd ff eb                                      bl #0x3fe998
003ff1a0  04 30 95 e5                                      ldr r3, [r5, #4]
003ff1a4  0c 30 83 e2                                      add r3, r3, #0xc
003ff1a8  04 30 85 e5                                      str r3, [r5, #4]
003ff1ac  10 d0 8d e2                                      add sp, sp, #0x10
003ff1b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003ff1b4  00 30 90 e5                                      ldr r3, [r0]
003ff1b8  03 00 51 e1                                      cmp r1, r3
003ff1bc  0b 00 00 3a                                      blo #0x3ff1f0
003ff1c0  01 00 56 e1                                      cmp r6, r1
003ff1c4  09 00 00 9a                                      bls #0x3ff1f0
003ff1c8  04 40 8d e2                                      add r4, sp, #4
003ff1cc  04 00 a0 e1                                      mov r0, r4
003ff1d0  f0 fd ff eb                                      bl #0x3fe998
003ff1d4  05 00 a0 e1                                      mov r0, r5
003ff1d8  06 10 a0 e1                                      mov r1, r6
003ff1dc  04 20 a0 e1                                      mov r2, r4
003ff1e0  8b ff ff eb                                      bl #0x3ff014
003ff1e4  04 00 a0 e1                                      mov r0, r4
003ff1e8  2c fe ff eb                                      bl #0x3feaa0
003ff1ec  ee ff ff ea                                      b #0x3ff1ac
003ff1f0  05 00 a0 e1                                      mov r0, r5
003ff1f4  06 10 a0 e1                                      mov r1, r6
003ff1f8  85 ff ff eb                                      bl #0x3ff014
003ff1fc  ea ff ff ea                                      b #0x3ff1ac
