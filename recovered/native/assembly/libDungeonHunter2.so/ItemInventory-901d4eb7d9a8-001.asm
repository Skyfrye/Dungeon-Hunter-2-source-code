; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003fc608, declared_size=20, range_size=20, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory11GetNumItemsEv
; demangled: ItemInventory::GetNumItems() const
; decoder-mode: arm
003fc608  08 30 90 e5                                      ldr r3, [r0, #8]
003fc60c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003fc610  00 00 63 e0                                      rsb r0, r3, r0
003fc614  40 01 a0 e1                                      asr r0, r0, #2
003fc618  1e ff 2f e1                                      bx lr

; FUNCTION 0x003fc61c, declared_size=32, range_size=32, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory7GetItemEj
; demangled: ItemInventory::GetItem(unsigned int)
; decoder-mode: arm
003fc61c  08 30 90 e5                                      ldr r3, [r0, #8]
003fc620  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003fc624  02 20 63 e0                                      rsb r2, r3, r2
003fc628  42 01 51 e1                                      cmp r1, r2, asr #2
003fc62c  01 31 93 37                                      ldrlo r3, [r3, r1, lsl #2]
003fc630  00 00 a0 23                                      movhs r0, #0
003fc634  00 00 93 35                                      ldrlo r0, [r3]
003fc638  1e ff 2f e1                                      bx lr

; FUNCTION 0x003fc63c, declared_size=84, range_size=84, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory12GetItemIndexEPK12ItemInstance
; demangled: ItemInventory::GetItemIndex(ItemInstance const*) const
; decoder-mode: arm
003fc63c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003fc640  08 30 90 e5                                      ldr r3, [r0, #8]
003fc644  02 20 63 e0                                      rsb r2, r3, r2
003fc648  42 21 b0 e1                                      asrs r2, r2, #2
003fc64c  0d 00 00 0a                                      beq #0x3fc688
003fc650  00 00 93 e5                                      ldr r0, [r3]
003fc654  00 00 90 e5                                      ldr r0, [r0]
003fc658  01 00 50 e1                                      cmp r0, r1
003fc65c  00 00 a0 03                                      moveq r0, #0
003fc660  00 00 a0 13                                      movne r0, #0
003fc664  04 00 00 1a                                      bne #0x3fc67c
003fc668  1e ff 2f e1                                      bx lr
003fc66c  00 c1 93 e7                                      ldr ip, [r3, r0, lsl #2]
003fc670  00 c0 9c e5                                      ldr ip, [ip]
003fc674  01 00 5c e1                                      cmp ip, r1
003fc678  1e ff 2f 01                                      bxeq lr
003fc67c  01 00 80 e2                                      add r0, r0, #1
003fc680  02 00 50 e1                                      cmp r0, r2
003fc684  f8 ff ff 1a                                      bne #0x3fc66c
003fc688  00 00 e0 e3                                      mvn r0, #0
003fc68c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003fc690, declared_size=16, range_size=16, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory13GetNumPotionsEv
; demangled: ItemInventory::GetNumPotions() const
; decoder-mode: arm
003fc690  24 00 90 e5                                      ldr r0, [r0, #0x24]
003fc694  00 00 50 e3                                      cmp r0, #0
003fc698  f0 05 d0 11                                      ldrshne r0, [r0, #0x50]
003fc69c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003fc6a0, declared_size=8, range_size=8, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory18GetCurrentSkillSetEi
; demangled: ItemInventory::GetCurrentSkillSet(int)
; decoder-mode: arm
003fc6a0  00 00 a0 e3                                      mov r0, #0
003fc6a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003fc6a8, declared_size=32, range_size=32, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory18GetCurrentEquipSetEi
; demangled: ItemInventory::GetCurrentEquipSet(int) const
; decoder-mode: arm
003fc6a8  00 00 51 e3                                      cmp r1, #0
003fc6ac  03 00 00 ba                                      blt #0x3fc6c0
003fc6b0  01 10 41 e2                                      sub r1, r1, #1
003fc6b4  01 00 51 e3                                      cmp r1, #1
003fc6b8  00 00 a0 83                                      movhi r0, #0
003fc6bc  1e ff 2f 81                                      bxhi lr
003fc6c0  de 02 d0 e1                                      ldrsb r0, [r0, #0x2e]
003fc6c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003fc6c8, declared_size=32, range_size=32, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory16SwapEquipmentSetEv
; demangled: ItemInventory::SwapEquipmentSet()
; decoder-mode: arm
003fc6c8  de 22 d0 e1                                      ldrsb r2, [r0, #0x2e]
003fc6cc  01 20 82 e2                                      add r2, r2, #1
003fc6d0  a2 3f a0 e1                                      lsr r3, r2, #0x1f
003fc6d4  03 20 82 e0                                      add r2, r2, r3
003fc6d8  01 20 02 e2                                      and r2, r2, #1
003fc6dc  02 30 63 e0                                      rsb r3, r3, r2
003fc6e0  2e 30 c0 e5                                      strb r3, [r0, #0x2e]
003fc6e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003fcff8, declared_size=356, range_size=356, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory19TrophyCheckArmorSetEv
; demangled: ItemInventory::TrophyCheckArmorSet()
; decoder-mode: arm
003fcff8  70 40 2d e9                                      push {r4, r5, r6, lr}
003fcffc  03 10 a0 e3                                      mov r1, #3
003fd000  00 50 a0 e1                                      mov r5, r0
003fd004  b3 0c 00 eb                                      bl #0x4002d8
003fd008  44 41 9f e5                                      ldr r4, [pc, #0x144]
003fd00c  00 00 50 e3                                      cmp r0, #0
003fd010  04 40 8f e0                                      add r4, pc, r4
003fd014  00 00 00 1a                                      bne #0x3fd01c
003fd018  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fd01c  05 00 a0 e1                                      mov r0, r5
003fd020  04 10 a0 e3                                      mov r1, #4
003fd024  ab 0c 00 eb                                      bl #0x4002d8
003fd028  00 00 50 e3                                      cmp r0, #0
003fd02c  f9 ff ff 0a                                      beq #0x3fd018
003fd030  05 00 a0 e1                                      mov r0, r5
003fd034  08 10 a0 e3                                      mov r1, #8
003fd038  a6 0c 00 eb                                      bl #0x4002d8
003fd03c  00 00 50 e3                                      cmp r0, #0
003fd040  f4 ff ff 0a                                      beq #0x3fd018
003fd044  05 00 a0 e1                                      mov r0, r5
003fd048  00 10 a0 e3                                      mov r1, #0
003fd04c  a1 0c 00 eb                                      bl #0x4002d8
003fd050  00 00 50 e3                                      cmp r0, #0
003fd054  ef ff ff 0a                                      beq #0x3fd018
003fd058  05 00 a0 e1                                      mov r0, r5
003fd05c  07 10 a0 e3                                      mov r1, #7
003fd060  9c 0c 00 eb                                      bl #0x4002d8
003fd064  00 00 50 e3                                      cmp r0, #0
003fd068  ea ff ff 0a                                      beq #0x3fd018
003fd06c  04 20 95 e5                                      ldr r2, [r5, #4]
003fd070  c8 33 01 e3                                      movw r3, #0x13c8
003fd074  f3 30 92 e1                                      ldrsh r3, [r2, r3]
003fd078  23 21 00 e3                                      movw r2, #0x123
003fd07c  02 00 53 e1                                      cmp r3, r2
003fd080  1f 00 00 0a                                      beq #0x3fd104
003fd084  21 00 00 ca                                      bgt #0x3fd110
003fd088  42 0f 53 e3                                      cmp r3, #0x108
003fd08c  19 00 00 0a                                      beq #0x3fd0f8
003fd090  1a 20 42 e2                                      sub r2, r2, #0x1a
003fd094  02 00 53 e1                                      cmp r3, r2
003fd098  11 00 00 0a                                      beq #0x3fd0e4
003fd09c  05 00 a0 e1                                      mov r0, r5
003fd0a0  68 ff ff eb                                      bl #0x3fce48
003fd0a4  01 00 70 e3                                      cmn r0, #1
003fd0a8  07 00 00 1a                                      bne #0x3fd0cc
003fd0ac  05 00 a0 e1                                      mov r0, r5
003fd0b0  f8 fe ff eb                                      bl #0x3fcc98
003fd0b4  01 00 70 e3                                      cmn r0, #1
003fd0b8  03 00 00 1a                                      bne #0x3fd0cc
003fd0bc  05 00 a0 e1                                      mov r0, r5
003fd0c0  89 fe ff eb                                      bl #0x3fcaec
003fd0c4  01 00 70 e3                                      cmn r0, #1
003fd0c8  d2 ff ff 0a                                      beq #0x3fd018
003fd0cc  84 30 9f e5                                      ldr r3, [pc, #0x84]
003fd0d0  00 10 a0 e1                                      mov r1, r0
003fd0d4  03 30 94 e7                                      ldr r3, [r4, r3]
003fd0d8  00 00 93 e5                                      ldr r0, [r3]
003fd0dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003fd0e0  b4 10 fe ea                                      b #0x3813b8
003fd0e4  05 00 a0 e1                                      mov r0, r5
003fd0e8  29 fe ff eb                                      bl #0x3fc994
003fd0ec  01 00 70 e3                                      cmn r0, #1
003fd0f0  f5 ff ff 1a                                      bne #0x3fd0cc
003fd0f4  e8 ff ff ea                                      b #0x3fd09c
003fd0f8  05 00 a0 e1                                      mov r0, r5
003fd0fc  4f fe ff eb                                      bl #0x3fca40
003fd100  f9 ff ff ea                                      b #0x3fd0ec
003fd104  05 00 a0 e1                                      mov r0, r5
003fd108  a0 fd ff eb                                      bl #0x3fc790
003fd10c  f6 ff ff ea                                      b #0x3fd0ec
003fd110  46 21 00 e3                                      movw r2, #0x146
003fd114  02 00 53 e1                                      cmp r3, r2
003fd118  07 00 00 0a                                      beq #0x3fd13c
003fd11c  01 20 82 e2                                      add r2, r2, #1
003fd120  02 00 53 e1                                      cmp r3, r2
003fd124  07 00 00 0a                                      beq #0x3fd148
003fd128  49 0f 53 e3                                      cmp r3, #0x124
003fd12c  da ff ff 1a                                      bne #0x3fd09c
003fd130  05 00 a0 e1                                      mov r0, r5
003fd134  6b fd ff eb                                      bl #0x3fc6e8
003fd138  eb ff ff ea                                      b #0x3fd0ec
003fd13c  05 00 a0 e1                                      mov r0, r5
003fd140  e8 fd ff eb                                      bl #0x3fc8e8
003fd144  e8 ff ff ea                                      b #0x3fd0ec
003fd148  05 00 a0 e1                                      mov r0, r5
003fd14c  ba fd ff eb                                      bl #0x3fc83c
003fd150  e5 ff ff ea                                      b #0x3fd0ec
; mapping-symbol data/literal pool
003fd154  80 7a 59 00 70 1d 00 00                          .byte 0x80, 0x7a, 0x59, 0x00, 0x70, 0x1d, 0x00, 0x00

; FUNCTION 0x003fd15c, declared_size=128, range_size=128, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory8FindItemEi
; demangled: ItemInventory::FindItem(int)
; decoder-mode: arm
003fd15c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fd160  00 40 a0 e1                                      mov r4, r0
003fd164  24 00 90 e5                                      ldr r0, [r0, #0x24]
003fd168  01 70 a0 e1                                      mov r7, r1
003fd16c  00 00 50 e3                                      cmp r0, #0
003fd170  02 00 00 0a                                      beq #0x3fd180
003fd174  21 f3 ff eb                                      bl #0x3f9e00
003fd178  07 00 50 e1                                      cmp r0, r7
003fd17c  14 00 00 0a                                      beq #0x3fd1d4
003fd180  08 50 94 e5                                      ldr r5, [r4, #8]
003fd184  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003fd188  03 00 55 e1                                      cmp r5, r3
003fd18c  0c 00 00 0a                                      beq #0x3fd1c4
003fd190  00 60 95 e5                                      ldr r6, [r5]
003fd194  00 00 56 e3                                      cmp r6, #0
003fd198  06 00 00 0a                                      beq #0x3fd1b8
003fd19c  00 20 96 e5                                      ldr r2, [r6]
003fd1a0  00 00 52 e2                                      subs r0, r2, #0
003fd1a4  03 00 00 0a                                      beq #0x3fd1b8
003fd1a8  14 f3 ff eb                                      bl #0x3f9e00
003fd1ac  07 00 50 e1                                      cmp r0, r7
003fd1b0  05 00 00 0a                                      beq #0x3fd1cc
003fd1b4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003fd1b8  04 50 85 e2                                      add r5, r5, #4
003fd1bc  03 00 55 e1                                      cmp r5, r3
003fd1c0  f2 ff ff 1a                                      bne #0x3fd190
003fd1c4  00 00 a0 e3                                      mov r0, #0
003fd1c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fd1cc  00 00 96 e5                                      ldr r0, [r6]
003fd1d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fd1d4  24 00 94 e5                                      ldr r0, [r4, #0x24]
003fd1d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003fda20, declared_size=208, range_size=208, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory20IsItemEquippedInSlotEjj
; demangled: ItemInventory::IsItemEquippedInSlot(unsigned int, unsigned int) const
; decoder-mode: arm
003fda20  70 40 2d e9                                      push {r4, r5, r6, lr}
003fda24  00 40 a0 e1                                      mov r4, r0
003fda28  0c c0 90 e5                                      ldr ip, [r0, #0xc]
003fda2c  08 00 90 e5                                      ldr r0, [r0, #8]
003fda30  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
003fda34  08 d0 4d e2                                      sub sp, sp, #8
003fda38  0c 00 60 e0                                      rsb r0, r0, ip
003fda3c  40 01 51 e1                                      cmp r1, r0, asr #2
003fda40  01 60 a0 e1                                      mov r6, r1
003fda44  03 30 8f e0                                      add r3, pc, r3
003fda48  02 50 a0 e1                                      mov r5, r2
003fda4c  08 00 00 3a                                      blo #0x3fda74
003fda50  84 20 9f e5                                      ldr r2, [pc, #0x84]
003fda54  02 20 93 e7                                      ldr r2, [r3, r2]
003fda58  00 20 92 e5                                      ldr r2, [r2]
003fda5c  02 00 52 e3                                      cmp r2, #2
003fda60  00 30 a0 03                                      moveq r3, #0
003fda64  00 30 83 05                                      streq r3, [r3]
003fda68  01 00 00 0a                                      beq #0x3fda74
003fda6c  01 00 52 e3                                      cmp r2, #1
003fda70  0b 00 00 0a                                      beq #0x3fdaa4
003fda74  04 00 a0 e1                                      mov r0, r4
003fda78  05 10 a0 e1                                      mov r1, r5
003fda7c  09 fb ff eb                                      bl #0x3fc6a8
003fda80  08 30 94 e5                                      ldr r3, [r4, #8]
003fda84  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
003fda88  00 30 83 e0                                      add r3, r3, r0
003fda8c  d4 00 d3 e1                                      ldrsb r0, [r3, #4]
003fda90  05 00 50 e1                                      cmp r0, r5
003fda94  00 00 a0 13                                      movne r0, #0
003fda98  01 00 a0 03                                      moveq r0, #1
003fda9c  08 d0 8d e2                                      add sp, sp, #8
003fdaa0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fdaa4  34 00 9f e5                                      ldr r0, [pc, #0x34]
003fdaa8  34 10 9f e5                                      ldr r1, [pc, #0x34]
003fdaac  34 20 9f e5                                      ldr r2, [pc, #0x34]
003fdab0  00 00 93 e7                                      ldr r0, [r3, r0]
003fdab4  30 30 9f e5                                      ldr r3, [pc, #0x30]
003fdab8  9a cf a0 e3                                      mov ip, #0x268
003fdabc  01 10 8f e0                                      add r1, pc, r1
003fdac0  02 20 8f e0                                      add r2, pc, r2
003fdac4  03 30 8f e0                                      add r3, pc, r3
003fdac8  a8 00 80 e2                                      add r0, r0, #0xa8
003fdacc  00 c0 8d e5                                      str ip, [sp]
003fdad0  4b 41 fc eb                                      bl #0x30e004
003fdad4  e6 ff ff ea                                      b #0x3fda74
; mapping-symbol data/literal pool
003fdad8  4c 70 59 00 c0 39 00 00 c0 19 00 00 1c 09 4c 00  .byte 0x4c, 0x70, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x1c, 0x09, 0x4c, 0x00
003fdae8  c8 98 4c 00 e4 98 4c 00                          .byte 0xc8, 0x98, 0x4c, 0x00, 0xe4, 0x98, 0x4c, 0x00

; FUNCTION 0x003fdaf0, declared_size=264, range_size=264, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory14IsItemEquippedEj
; demangled: ItemInventory::IsItemEquipped(unsigned int) const
; decoder-mode: arm
003fdaf0  30 40 2d e9                                      push {r4, r5, lr}
003fdaf4  00 40 a0 e1                                      mov r4, r0
003fdaf8  08 20 90 e5                                      ldr r2, [r0, #8]
003fdafc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003fdb00  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003fdb04  0c d0 4d e2                                      sub sp, sp, #0xc
003fdb08  00 00 62 e0                                      rsb r0, r2, r0
003fdb0c  40 01 51 e1                                      cmp r1, r0, asr #2
003fdb10  01 50 a0 e1                                      mov r5, r1
003fdb14  03 30 8f e0                                      add r3, pc, r3
003fdb18  08 00 00 3a                                      blo #0x3fdb40
003fdb1c  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
003fdb20  01 10 93 e7                                      ldr r1, [r3, r1]
003fdb24  00 10 91 e5                                      ldr r1, [r1]
003fdb28  02 00 51 e3                                      cmp r1, #2
003fdb2c  00 30 a0 03                                      moveq r3, #0
003fdb30  00 30 83 05                                      streq r3, [r3]
003fdb34  01 00 00 0a                                      beq #0x3fdb40
003fdb38  01 00 51 e3                                      cmp r1, #1
003fdb3c  19 00 00 0a                                      beq #0x3fdba8
003fdb40  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
003fdb44  00 00 93 e5                                      ldr r0, [r3]
003fdb48  00 00 50 e3                                      cmp r0, #0
003fdb4c  0b 00 00 0a                                      beq #0x3fdb80
003fdb50  ac f0 ff eb                                      bl #0x3f9e08
003fdb54  68 10 90 e5                                      ldr r1, [r0, #0x68]
003fdb58  00 00 51 e3                                      cmp r1, #0
003fdb5c  09 00 00 ba                                      blt #0x3fdb88
003fdb60  04 00 a0 e1                                      mov r0, r4
003fdb64  cf fa ff eb                                      bl #0x3fc6a8
003fdb68  08 30 94 e5                                      ldr r3, [r4, #8]
003fdb6c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
003fdb70  00 30 83 e0                                      add r3, r3, r0
003fdb74  d4 00 d3 e1                                      ldrsb r0, [r3, #4]
003fdb78  01 00 90 e2                                      adds r0, r0, #1
003fdb7c  01 00 a0 13                                      movne r0, #1
003fdb80  0c d0 8d e2                                      add sp, sp, #0xc
003fdb84  30 80 bd e8                                      pop {r4, r5, pc}
003fdb88  04 00 71 e3                                      cmn r1, #4
003fdb8c  f3 ff ff ba                                      blt #0x3fdb60
003fdb90  03 00 71 e3                                      cmn r1, #3
003fdb94  01 10 a0 d3                                      movle r1, #1
003fdb98  f0 ff ff da                                      ble #0x3fdb60
003fdb9c  02 00 71 e3                                      cmn r1, #2
003fdba0  05 10 a0 03                                      moveq r1, #5
003fdba4  ed ff ff ea                                      b #0x3fdb60
003fdba8  38 00 9f e5                                      ldr r0, [pc, #0x38]
003fdbac  38 10 9f e5                                      ldr r1, [pc, #0x38]
003fdbb0  38 20 9f e5                                      ldr r2, [pc, #0x38]
003fdbb4  00 00 93 e7                                      ldr r0, [r3, r0]
003fdbb8  34 30 9f e5                                      ldr r3, [pc, #0x34]
003fdbbc  02 20 8f e0                                      add r2, pc, r2
003fdbc0  93 cf a0 e3                                      mov ip, #0x24c
003fdbc4  01 10 8f e0                                      add r1, pc, r1
003fdbc8  a8 00 80 e2                                      add r0, r0, #0xa8
003fdbcc  03 30 8f e0                                      add r3, pc, r3
003fdbd0  00 c0 8d e5                                      str ip, [sp]
003fdbd4  0a 41 fc eb                                      bl #0x30e004
003fdbd8  08 20 94 e5                                      ldr r2, [r4, #8]
003fdbdc  d7 ff ff ea                                      b #0x3fdb40
; mapping-symbol data/literal pool
003fdbe0  7c 6f 59 00 c0 39 00 00 c0 19 00 00 14 08 4c 00  .byte 0x7c, 0x6f, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x14, 0x08, 0x4c, 0x00
003fdbf0  cc 97 4c 00 dc 97 4c 00                          .byte 0xcc, 0x97, 0x4c, 0x00, 0xdc, 0x97, 0x4c, 0x00

; FUNCTION 0x003fdbf8, declared_size=196, range_size=196, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory7GetItemEj
; demangled: ItemInventory::GetItem(unsigned int) const
; decoder-mode: arm
003fdbf8  30 40 2d e9                                      push {r4, r5, lr}
003fdbfc  00 40 a0 e1                                      mov r4, r0
003fdc00  08 20 90 e5                                      ldr r2, [r0, #8]
003fdc04  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003fdc08  94 30 9f e5                                      ldr r3, [pc, #0x94]
003fdc0c  0c d0 4d e2                                      sub sp, sp, #0xc
003fdc10  00 00 62 e0                                      rsb r0, r2, r0
003fdc14  40 01 51 e1                                      cmp r1, r0, asr #2
003fdc18  01 50 a0 e1                                      mov r5, r1
003fdc1c  03 30 8f e0                                      add r3, pc, r3
003fdc20  1c 00 00 3a                                      blo #0x3fdc98
003fdc24  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
003fdc28  02 20 93 e7                                      ldr r2, [r3, r2]
003fdc2c  00 20 92 e5                                      ldr r2, [r2]
003fdc30  02 00 52 e3                                      cmp r2, #2
003fdc34  00 00 a0 03                                      moveq r0, #0
003fdc38  00 00 80 05                                      streq r0, [r0]
003fdc3c  02 00 00 0a                                      beq #0x3fdc4c
003fdc40  01 00 52 e3                                      cmp r2, #1
003fdc44  02 00 00 0a                                      beq #0x3fdc54
003fdc48  00 00 a0 e3                                      mov r0, #0
003fdc4c  0c d0 8d e2                                      add sp, sp, #0xc
003fdc50  30 80 bd e8                                      pop {r4, r5, pc}
003fdc54  50 00 9f e5                                      ldr r0, [pc, #0x50]
003fdc58  50 10 9f e5                                      ldr r1, [pc, #0x50]
003fdc5c  50 20 9f e5                                      ldr r2, [pc, #0x50]
003fdc60  00 00 93 e7                                      ldr r0, [r3, r0]
003fdc64  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003fdc68  02 20 8f e0                                      add r2, pc, r2
003fdc6c  2b c2 00 e3                                      movw ip, #0x22b
003fdc70  03 30 8f e0                                      add r3, pc, r3
003fdc74  01 10 8f e0                                      add r1, pc, r1
003fdc78  a8 00 80 e2                                      add r0, r0, #0xa8
003fdc7c  00 c0 8d e5                                      str ip, [sp]
003fdc80  df 40 fc eb                                      bl #0x30e004
003fdc84  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003fdc88  08 20 94 e5                                      ldr r2, [r4, #8]
003fdc8c  03 30 62 e0                                      rsb r3, r2, r3
003fdc90  43 01 55 e1                                      cmp r5, r3, asr #2
003fdc94  eb ff ff 2a                                      bhs #0x3fdc48
003fdc98  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
003fdc9c  00 00 93 e5                                      ldr r0, [r3]
003fdca0  e9 ff ff ea                                      b #0x3fdc4c
; mapping-symbol data/literal pool
003fdca4  74 6e 59 00 c0 39 00 00 c0 19 00 00 64 07 4c 00  .byte 0x74, 0x6e, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x64, 0x07, 0x4c, 0x00
003fdcb4  20 97 4c 00 38 97 4c 00                          .byte 0x20, 0x97, 0x4c, 0x00, 0x38, 0x97, 0x4c, 0x00

; FUNCTION 0x003fdcbc, declared_size=560, range_size=560, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory16IsItemEquippableEjj
; demangled: ItemInventory::IsItemEquippable(unsigned int, unsigned int) const
; decoder-mode: arm
003fdcbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fdcc0  00 40 a0 e1                                      mov r4, r0
003fdcc4  08 30 94 e5                                      ldr r3, [r4, #8]
003fdcc8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003fdccc  f4 51 9f e5                                      ldr r5, [pc, #0x1f4]
003fdcd0  08 d0 4d e2                                      sub sp, sp, #8
003fdcd4  00 30 63 e0                                      rsb r3, r3, r0
003fdcd8  43 01 51 e1                                      cmp r1, r3, asr #2
003fdcdc  01 60 a0 e1                                      mov r6, r1
003fdce0  05 50 8f e0                                      add r5, pc, r5
003fdce4  02 70 a0 e1                                      mov r7, r2
003fdce8  08 00 00 3a                                      blo #0x3fdd10
003fdcec  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
003fdcf0  03 30 95 e7                                      ldr r3, [r5, r3]
003fdcf4  00 30 93 e5                                      ldr r3, [r3]
003fdcf8  02 00 53 e3                                      cmp r3, #2
003fdcfc  00 30 a0 03                                      moveq r3, #0
003fdd00  00 30 83 05                                      streq r3, [r3]
003fdd04  01 00 00 0a                                      beq #0x3fdd10
003fdd08  01 00 53 e3                                      cmp r3, #1
003fdd0c  4d 00 00 0a                                      beq #0x3fde48
003fdd10  14 30 94 e5                                      ldr r3, [r4, #0x14]
003fdd14  0c 00 93 e8                                      ldm r3, {r2, r3}
003fdd18  03 30 62 e0                                      rsb r3, r2, r3
003fdd1c  43 01 57 e1                                      cmp r7, r3, asr #2
003fdd20  08 00 00 3a                                      blo #0x3fdd48
003fdd24  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
003fdd28  03 30 95 e7                                      ldr r3, [r5, r3]
003fdd2c  00 30 93 e5                                      ldr r3, [r3]
003fdd30  02 00 53 e3                                      cmp r3, #2
003fdd34  00 30 a0 03                                      moveq r3, #0
003fdd38  00 30 83 05                                      streq r3, [r3]
003fdd3c  01 00 00 0a                                      beq #0x3fdd48
003fdd40  01 00 53 e3                                      cmp r3, #1
003fdd44  4c 00 00 0a                                      beq #0x3fde7c
003fdd48  08 30 94 e5                                      ldr r3, [r4, #8]
003fdd4c  06 51 93 e7                                      ldr r5, [r3, r6, lsl #2]
003fdd50  00 00 95 e5                                      ldr r0, [r5]
003fdd54  00 00 50 e3                                      cmp r0, #0
003fdd58  02 00 00 0a                                      beq #0x3fdd68
003fdd5c  41 f0 ff eb                                      bl #0x3f9e68
003fdd60  00 00 50 e3                                      cmp r0, #0
003fdd64  02 00 00 1a                                      bne #0x3fdd74
003fdd68  00 00 a0 e3                                      mov r0, #0
003fdd6c  08 d0 8d e2                                      add sp, sp, #8
003fdd70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fdd74  00 00 95 e5                                      ldr r0, [r5]
003fdd78  22 f0 ff eb                                      bl #0x3f9e08
003fdd7c  68 60 90 e5                                      ldr r6, [r0, #0x68]
003fdd80  00 00 95 e5                                      ldr r0, [r5]
003fdd84  04 80 94 e5                                      ldr r8, [r4, #4]
003fdd88  1e f0 ff eb                                      bl #0x3f9e08
003fdd8c  58 30 90 e5                                      ldr r3, [r0, #0x58]
003fdd90  05 00 53 e3                                      cmp r3, #5
003fdd94  08 00 00 0a                                      beq #0x3fddbc
003fdd98  00 00 95 e5                                      ldr r0, [r5]
003fdd9c  19 f0 ff eb                                      bl #0x3f9e08
003fdda0  58 30 90 e5                                      ldr r3, [r0, #0x58]
003fdda4  04 00 53 e3                                      cmp r3, #4
003fdda8  03 00 00 0a                                      beq #0x3fddbc
003fddac  01 00 56 e3                                      cmp r6, #1
003fddb0  16 00 00 0a                                      beq #0x3fde10
003fddb4  04 00 76 e3                                      cmn r6, #4
003fddb8  3c 00 00 0a                                      beq #0x3fdeb0
003fddbc  00 00 56 e3                                      cmp r6, #0
003fddc0  08 00 00 ba                                      blt #0x3fdde8
003fddc4  14 30 94 e5                                      ldr r3, [r4, #0x14]
003fddc8  0c 00 93 e8                                      ldm r3, {r2, r3}
003fddcc  03 30 62 e0                                      rsb r3, r2, r3
003fddd0  43 01 56 e1                                      cmp r6, r3, asr #2
003fddd4  03 00 00 aa                                      bge #0x3fdde8
003fddd8  07 00 56 e1                                      cmp r6, r7
003fdddc  00 00 a0 13                                      movne r0, #0
003fdde0  01 00 a0 03                                      moveq r0, #1
003fdde4  e0 ff ff ea                                      b #0x3fdd6c
003fdde8  03 00 76 e3                                      cmn r6, #3
003fddec  0b 00 00 0a                                      beq #0x3fde20
003fddf0  02 00 76 e3                                      cmn r6, #2
003fddf4  0e 00 00 0a                                      beq #0x3fde34
003fddf8  04 00 76 e3                                      cmn r6, #4
003fddfc  d9 ff ff 1a                                      bne #0x3fdd68
003fde00  01 00 57 e3                                      cmp r7, #1
003fde04  00 00 a0 13                                      movne r0, #0
003fde08  01 00 a0 03                                      moveq r0, #1
003fde0c  d6 ff ff ea                                      b #0x3fdd6c
003fde10  20 33 01 e3                                      movw r3, #0x1320
003fde14  03 30 98 e7                                      ldr r3, [r8, r3]
003fde18  00 00 53 e3                                      cmp r3, #0
003fde1c  e8 ff ff 0a                                      beq #0x3fddc4
003fde20  01 70 47 e2                                      sub r7, r7, #1
003fde24  01 00 57 e3                                      cmp r7, #1
003fde28  00 00 a0 83                                      movhi r0, #0
003fde2c  01 00 a0 93                                      movls r0, #1
003fde30  cd ff ff ea                                      b #0x3fdd6c
003fde34  05 70 47 e2                                      sub r7, r7, #5
003fde38  01 00 57 e3                                      cmp r7, #1
003fde3c  00 00 a0 83                                      movhi r0, #0
003fde40  01 00 a0 93                                      movls r0, #1
003fde44  c8 ff ff ea                                      b #0x3fdd6c
003fde48  80 00 9f e5                                      ldr r0, [pc, #0x80]
003fde4c  80 10 9f e5                                      ldr r1, [pc, #0x80]
003fde50  80 20 9f e5                                      ldr r2, [pc, #0x80]
003fde54  00 00 95 e7                                      ldr r0, [r5, r0]
003fde58  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003fde5c  7a c2 00 e3                                      movw ip, #0x27a
003fde60  01 10 8f e0                                      add r1, pc, r1
003fde64  02 20 8f e0                                      add r2, pc, r2
003fde68  03 30 8f e0                                      add r3, pc, r3
003fde6c  a8 00 80 e2                                      add r0, r0, #0xa8
003fde70  00 c0 8d e5                                      str ip, [sp]
003fde74  62 40 fc eb                                      bl #0x30e004
003fde78  a4 ff ff ea                                      b #0x3fdd10
003fde7c  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
003fde80  58 10 9f e5                                      ldr r1, [pc, #0x58]
003fde84  58 20 9f e5                                      ldr r2, [pc, #0x58]
003fde88  00 00 95 e7                                      ldr r0, [r5, r0]
003fde8c  54 30 9f e5                                      ldr r3, [pc, #0x54]
003fde90  7b c2 00 e3                                      movw ip, #0x27b
003fde94  01 10 8f e0                                      add r1, pc, r1
003fde98  02 20 8f e0                                      add r2, pc, r2
003fde9c  03 30 8f e0                                      add r3, pc, r3
003fdea0  a8 00 80 e2                                      add r0, r0, #0xa8
003fdea4  00 c0 8d e5                                      str ip, [sp]
003fdea8  55 40 fc eb                                      bl #0x30e004
003fdeac  a5 ff ff ea                                      b #0x3fdd48
003fdeb0  24 33 01 e3                                      movw r3, #0x1324
003fdeb4  03 30 98 e7                                      ldr r3, [r8, r3]
003fdeb8  00 00 53 e3                                      cmp r3, #0
003fdebc  01 60 a0 13                                      movne r6, #1
003fdec0  bf ff ff 1a                                      bne #0x3fddc4
003fdec4  cd ff ff ea                                      b #0x3fde00
; mapping-symbol data/literal pool
003fdec8  b0 6d 59 00 c0 39 00 00 c0 19 00 00 78 05 4c 00  .byte 0xb0, 0x6d, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x78, 0x05, 0x4c, 0x00
003fded8  24 95 4c 00 40 95 4c 00 44 05 4c 00 58 95 4c 00  .byte 0x24, 0x95, 0x4c, 0x00, 0x40, 0x95, 0x4c, 0x00, 0x44, 0x05, 0x4c, 0x00, 0x58, 0x95, 0x4c, 0x00
003fdee8  0c 95 4c 00                                      .byte 0x0c, 0x95, 0x4c, 0x00

; FUNCTION 0x003fdeec, declared_size=180, range_size=180, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory16IsItemEquippableEj
; demangled: ItemInventory::IsItemEquippable(unsigned int) const
; decoder-mode: arm
003fdeec  30 40 2d e9                                      push {r4, r5, lr}
003fdef0  00 40 a0 e1                                      mov r4, r0
003fdef4  08 20 90 e5                                      ldr r2, [r0, #8]
003fdef8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003fdefc  84 30 9f e5                                      ldr r3, [pc, #0x84]
003fdf00  0c d0 4d e2                                      sub sp, sp, #0xc
003fdf04  00 00 62 e0                                      rsb r0, r2, r0
003fdf08  40 01 51 e1                                      cmp r1, r0, asr #2
003fdf0c  01 50 a0 e1                                      mov r5, r1
003fdf10  03 30 8f e0                                      add r3, pc, r3
003fdf14  08 00 00 3a                                      blo #0x3fdf3c
003fdf18  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003fdf1c  01 10 93 e7                                      ldr r1, [r3, r1]
003fdf20  00 10 91 e5                                      ldr r1, [r1]
003fdf24  02 00 51 e3                                      cmp r1, #2
003fdf28  00 30 a0 03                                      moveq r3, #0
003fdf2c  00 30 83 05                                      streq r3, [r3]
003fdf30  01 00 00 0a                                      beq #0x3fdf3c
003fdf34  01 00 51 e3                                      cmp r1, #1
003fdf38  04 00 00 0a                                      beq #0x3fdf50
003fdf3c  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
003fdf40  00 00 93 e5                                      ldr r0, [r3]
003fdf44  0c d0 8d e2                                      add sp, sp, #0xc
003fdf48  30 40 bd e8                                      pop {r4, r5, lr}
003fdf4c  c5 ef ff ea                                      b #0x3f9e68
003fdf50  38 00 9f e5                                      ldr r0, [pc, #0x38]
003fdf54  38 10 9f e5                                      ldr r1, [pc, #0x38]
003fdf58  38 20 9f e5                                      ldr r2, [pc, #0x38]
003fdf5c  00 00 93 e7                                      ldr r0, [r3, r0]
003fdf60  34 30 9f e5                                      ldr r3, [pc, #0x34]
003fdf64  02 20 8f e0                                      add r2, pc, r2
003fdf68  71 c2 00 e3                                      movw ip, #0x271
003fdf6c  01 10 8f e0                                      add r1, pc, r1
003fdf70  a8 00 80 e2                                      add r0, r0, #0xa8
003fdf74  03 30 8f e0                                      add r3, pc, r3
003fdf78  00 c0 8d e5                                      str ip, [sp]
003fdf7c  20 40 fc eb                                      bl #0x30e004
003fdf80  08 20 94 e5                                      ldr r2, [r4, #8]
003fdf84  ec ff ff ea                                      b #0x3fdf3c
; mapping-symbol data/literal pool
003fdf88  80 6b 59 00 c0 39 00 00 c0 19 00 00 6c 04 4c 00  .byte 0x80, 0x6b, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x6c, 0x04, 0x4c, 0x00
003fdf98  24 94 4c 00 34 94 4c 00                          .byte 0x24, 0x94, 0x4c, 0x00, 0x34, 0x94, 0x4c, 0x00

; FUNCTION 0x003fdfa0, declared_size=56, range_size=56, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory26UpdateLocalizationForItemsEv
; demangled: ItemInventory::UpdateLocalizationForItems()
; decoder-mode: arm
003fdfa0  70 40 2d e9                                      push {r4, r5, r6, lr}
003fdfa4  00 60 a0 e1                                      mov r6, r0
003fdfa8  96 f9 ff eb                                      bl #0x3fc608
003fdfac  00 50 50 e2                                      subs r5, r0, #0
003fdfb0  07 00 00 da                                      ble #0x3fdfd4
003fdfb4  00 40 a0 e3                                      mov r4, #0
003fdfb8  04 10 a0 e1                                      mov r1, r4
003fdfbc  06 00 a0 e1                                      mov r0, r6
003fdfc0  95 f9 ff eb                                      bl #0x3fc61c
003fdfc4  01 40 84 e2                                      add r4, r4, #1
003fdfc8  79 f8 ff eb                                      bl #0x3fc1b4
003fdfcc  04 00 55 e1                                      cmp r5, r4
003fdfd0  f8 ff ff 1a                                      bne #0x3fdfb8
003fdfd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003fdfd8, declared_size=396, range_size=396, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory7SetGoldEi
; demangled: ItemInventory::SetGold(int)
; decoder-mode: arm
003fdfd8  70 40 2d e9                                      push {r4, r5, r6, lr}
003fdfdc  54 41 9f e5                                      ldr r4, [pc, #0x154]
003fdfe0  00 60 51 e2                                      subs r6, r1, #0
003fdfe4  08 d0 4d e2                                      sub sp, sp, #8
003fdfe8  00 50 a0 e1                                      mov r5, r0
003fdfec  04 40 8f e0                                      add r4, pc, r4
003fdff0  3a 00 00 ba                                      blt #0x3fe0e0
003fdff4  40 21 9f e5                                      ldr r2, [pc, #0x140]
003fdff8  28 10 95 e5                                      ldr r1, [r5, #0x28]
003fdffc  04 30 95 e5                                      ldr r3, [r5, #4]
003fe000  02 20 94 e7                                      ldr r2, [r4, r2]
003fe004  01 00 56 e1                                      cmp r6, r1
003fe008  20 60 85 d5                                      strle r6, [r5, #0x20]
003fe00c  20 10 85 c5                                      strgt r1, [r5, #0x20]
003fe010  00 00 53 e3                                      cmp r3, #0
003fe014  00 60 92 e5                                      ldr r6, [r2]
003fe018  05 00 00 0a                                      beq #0x3fe034
003fe01c  03 00 a0 e1                                      mov r0, r3
003fe020  00 30 93 e5                                      ldr r3, [r3]
003fe024  0f e0 a0 e1                                      mov lr, pc
003fe028  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003fe02c  00 00 50 e3                                      cmp r0, #0
003fe030  01 00 00 1a                                      bne #0x3fe03c
003fe034  08 d0 8d e2                                      add sp, sp, #8
003fe038  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fe03c  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
003fe040  04 10 95 e5                                      ldr r1, [r5, #4]
003fe044  03 30 94 e7                                      ldr r3, [r4, r3]
003fe048  40 00 93 e5                                      ldr r0, [r3, #0x40]
003fe04c  ea c3 fd eb                                      bl #0x36effc
003fe050  00 00 50 e3                                      cmp r0, #0
003fe054  f6 ff ff 0a                                      beq #0x3fe034
003fe058  20 20 95 e5                                      ldr r2, [r5, #0x20]
003fe05c  0f 37 02 e3                                      movw r3, #0x270f
003fe060  03 00 52 e1                                      cmp r2, r3
003fe064  f2 ff ff da                                      ble #0x3fe034
003fe068  d4 00 9f e5                                      ldr r0, [pc, #0xd4]
003fe06c  00 00 8f e0                                      add r0, pc, r0
003fe070  be 97 fe eb                                      bl #0x3a3f70
003fe074  00 10 a0 e1                                      mov r1, r0
003fe078  06 00 a0 e1                                      mov r0, r6
003fe07c  cd 0c fe eb                                      bl #0x3813b8
003fe080  20 20 95 e5                                      ldr r2, [r5, #0x20]
003fe084  9f 36 08 e3                                      movw r3, #0x869f
003fe088  01 30 40 e3                                      movt r3, #1
003fe08c  03 00 52 e1                                      cmp r2, r3
003fe090  e7 ff ff da                                      ble #0x3fe034
003fe094  ac 00 9f e5                                      ldr r0, [pc, #0xac]
003fe098  00 00 8f e0                                      add r0, pc, r0
003fe09c  b3 97 fe eb                                      bl #0x3a3f70
003fe0a0  00 10 a0 e1                                      mov r1, r0
003fe0a4  06 00 a0 e1                                      mov r0, r6
003fe0a8  c2 0c fe eb                                      bl #0x3813b8
003fe0ac  20 20 95 e5                                      ldr r2, [r5, #0x20]
003fe0b0  3f 32 04 e3                                      movw r3, #0x423f
003fe0b4  0f 30 40 e3                                      movt r3, #0xf
003fe0b8  03 00 52 e1                                      cmp r2, r3
003fe0bc  dc ff ff da                                      ble #0x3fe034
003fe0c0  84 00 9f e5                                      ldr r0, [pc, #0x84]
003fe0c4  00 00 8f e0                                      add r0, pc, r0
003fe0c8  a8 97 fe eb                                      bl #0x3a3f70
003fe0cc  00 10 a0 e1                                      mov r1, r0
003fe0d0  06 00 a0 e1                                      mov r0, r6
003fe0d4  08 d0 8d e2                                      add sp, sp, #8
003fe0d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
003fe0dc  b5 0c fe ea                                      b #0x3813b8
003fe0e0  68 30 9f e5                                      ldr r3, [pc, #0x68]
003fe0e4  03 30 94 e7                                      ldr r3, [r4, r3]
003fe0e8  00 30 93 e5                                      ldr r3, [r3]
003fe0ec  02 00 53 e3                                      cmp r3, #2
003fe0f0  00 30 a0 03                                      moveq r3, #0
003fe0f4  00 30 83 05                                      streq r3, [r3]
003fe0f8  bd ff ff 0a                                      beq #0x3fdff4
003fe0fc  01 00 53 e3                                      cmp r3, #1
003fe100  bb ff ff 1a                                      bne #0x3fdff4
003fe104  48 00 9f e5                                      ldr r0, [pc, #0x48]
003fe108  48 10 9f e5                                      ldr r1, [pc, #0x48]
003fe10c  48 20 9f e5                                      ldr r2, [pc, #0x48]
003fe110  00 00 94 e7                                      ldr r0, [r4, r0]
003fe114  44 30 9f e5                                      ldr r3, [pc, #0x44]
003fe118  42 c1 00 e3                                      movw ip, #0x142
003fe11c  01 10 8f e0                                      add r1, pc, r1
003fe120  02 20 8f e0                                      add r2, pc, r2
003fe124  03 30 8f e0                                      add r3, pc, r3
003fe128  a8 00 80 e2                                      add r0, r0, #0xa8
003fe12c  00 c0 8d e5                                      str ip, [sp]
003fe130  b3 3f fc eb                                      bl #0x30e004
003fe134  ae ff ff ea                                      b #0x3fdff4
; mapping-symbol data/literal pool
003fe138  a4 6a 59 00 70 1d 00 00 f4 37 00 00 ac 93 4c 00  .byte 0xa4, 0x6a, 0x59, 0x00, 0x70, 0x1d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xac, 0x93, 0x4c, 0x00
003fe148  90 93 4c 00 74 93 4c 00 c0 39 00 00 c0 19 00 00  .byte 0x90, 0x93, 0x4c, 0x00, 0x74, 0x93, 0x4c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003fe158  bc 02 4c 00 d0 67 4c 00 84 92 4c 00              .byte 0xbc, 0x02, 0x4c, 0x00, 0xd0, 0x67, 0x4c, 0x00, 0x84, 0x92, 0x4c, 0x00

; FUNCTION 0x003fe164, declared_size=68, range_size=68, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory7AddGoldEi
; demangled: ItemInventory::AddGold(int)
; decoder-mode: arm
003fe164  00 00 51 e3                                      cmp r1, #0
003fe168  20 30 90 a5                                      ldrge r3, [r0, #0x20]
003fe16c  07 00 00 ba                                      blt #0x3fe190
003fe170  00 00 51 e3                                      cmp r1, #0
003fe174  03 00 00 da                                      ble #0x3fe188
003fe178  28 20 90 e5                                      ldr r2, [r0, #0x28]
003fe17c  02 20 63 e0                                      rsb r2, r3, r2
003fe180  02 00 51 e1                                      cmp r1, r2
003fe184  c2 1f c2 c1                                      bicgt r1, r2, r2, asr #31
003fe188  01 10 83 e0                                      add r1, r3, r1
003fe18c  91 ff ff ea                                      b #0x3fdfd8
003fe190  20 30 90 e5                                      ldr r3, [r0, #0x20]
003fe194  00 20 61 e2                                      rsb r2, r1, #0
003fe198  02 00 53 e1                                      cmp r3, r2
003fe19c  f9 ff ff aa                                      bge #0x3fe188
003fe1a0  00 10 63 e2                                      rsb r1, r3, #0
003fe1a4  f1 ff ff ea                                      b #0x3fe170

; FUNCTION 0x003fe1a8, declared_size=36, range_size=36, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory14TransferGoldToEiRS_
; demangled: ItemInventory::TransferGoldTo(int, ItemInventory&)
; decoder-mode: arm
003fe1a8  70 40 2d e9                                      push {r4, r5, r6, lr}
003fe1ac  00 40 a0 e1                                      mov r4, r0
003fe1b0  02 00 a0 e1                                      mov r0, r2
003fe1b4  01 50 a0 e1                                      mov r5, r1
003fe1b8  e9 ff ff eb                                      bl #0x3fe164
003fe1bc  04 00 a0 e1                                      mov r0, r4
003fe1c0  00 10 65 e2                                      rsb r1, r5, #0
003fe1c4  70 40 bd e8                                      pop {r4, r5, r6, lr}
003fe1c8  e5 ff ff ea                                      b #0x3fe164

; FUNCTION 0x003fe1cc, declared_size=136, range_size=136, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory20_HasItemInstanceLikeEPK12ItemInstanceRj
; demangled: ItemInventory::_HasItemInstanceLike(ItemInstance const*, unsigned int&)
; decoder-mode: arm
003fe1cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fe1d0  08 40 90 e5                                      ldr r4, [r0, #8]
003fe1d4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
003fe1d8  00 60 a0 e1                                      mov r6, r0
003fe1dc  01 50 a0 e1                                      mov r5, r1
003fe1e0  04 00 53 e1                                      cmp r3, r4
003fe1e4  02 80 a0 e1                                      mov r8, r2
003fe1e8  17 00 00 0a                                      beq #0x3fe24c
003fe1ec  00 70 a0 e3                                      mov r7, #0
003fe1f0  00 20 94 e5                                      ldr r2, [r4]
003fe1f4  05 10 a0 e1                                      mov r1, r5
003fe1f8  00 c0 92 e5                                      ldr ip, [r2]
003fe1fc  05 00 5c e1                                      cmp ip, r5
003fe200  0c 00 a0 e1                                      mov r0, ip
003fe204  03 00 00 0a                                      beq #0x3fe218
003fe208  da ee ff eb                                      bl #0x3f9d78
003fe20c  00 00 50 e3                                      cmp r0, #0
003fe210  05 00 00 1a                                      bne #0x3fe22c
003fe214  0c 30 96 e5                                      ldr r3, [r6, #0xc]
003fe218  04 40 84 e2                                      add r4, r4, #4
003fe21c  03 00 54 e1                                      cmp r4, r3
003fe220  09 00 00 0a                                      beq #0x3fe24c
003fe224  01 70 87 e2                                      add r7, r7, #1
003fe228  f0 ff ff ea                                      b #0x3fe1f0
003fe22c  06 00 a0 e1                                      mov r0, r6
003fe230  07 10 a0 e1                                      mov r1, r7
003fe234  2d fe ff eb                                      bl #0x3fdaf0
003fe238  00 00 50 e3                                      cmp r0, #0
003fe23c  f4 ff ff 1a                                      bne #0x3fe214
003fe240  00 70 88 e5                                      str r7, [r8]
003fe244  01 00 a0 e3                                      mov r0, #1
003fe248  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fe24c  00 00 a0 e3                                      mov r0, #0
003fe250  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003fe330, declared_size=280, range_size=280, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory15IsInventoryFullEv
; demangled: ItemInventory::IsInventoryFull() const
; decoder-mode: arm
003fe330  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fe334  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
003fe338  fc 60 9f e5                                      ldr r6, [pc, #0xfc]
003fe33c  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
003fe340  04 40 8f e0                                      add r4, pc, r4
003fe344  06 30 94 e7                                      ldr r3, [r4, r6]
003fe348  02 70 94 e7                                      ldr r7, [r4, r2]
003fe34c  20 d0 4d e2                                      sub sp, sp, #0x20
003fe350  00 30 93 e5                                      ldr r3, [r3]
003fe354  04 50 8d e2                                      add r5, sp, #4
003fe358  00 80 a0 e1                                      mov r8, r0
003fe35c  07 00 a0 e1                                      mov r0, r7
003fe360  1c 30 8d e5                                      str r3, [sp, #0x1c]
003fe364  47 e5 fc eb                                      bl #0x337888
003fe368  05 00 a0 e1                                      mov r0, r5
003fe36c  12 10 a0 e3                                      mov r1, #0x12
003fe370  14 50 8d e5                                      str r5, [sp, #0x14]
003fe374  18 50 8d e5                                      str r5, [sp, #0x18]
003fe378  bf 4c fc eb                                      bl #0x31167c
003fe37c  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
003fe380  11 20 a0 e3                                      mov r2, #0x11
003fe384  18 00 9d e5                                      ldr r0, [sp, #0x18]
003fe388  01 10 8f e0                                      add r1, pc, r1
003fe38c  35 41 fc eb                                      bl #0x30e868
003fe390  11 30 80 e2                                      add r3, r0, #0x11
003fe394  14 30 8d e5                                      str r3, [sp, #0x14]
003fe398  00 30 a0 e3                                      mov r3, #0
003fe39c  11 30 c0 e5                                      strb r3, [r0, #0x11]
003fe3a0  05 10 a0 e1                                      mov r1, r5
003fe3a4  07 00 a0 e1                                      mov r0, r7
003fe3a8  b6 e5 fc eb                                      bl #0x337a88
003fe3ac  00 70 a0 e1                                      mov r7, r0
003fe3b0  18 00 9d e5                                      ldr r0, [sp, #0x18]
003fe3b4  05 00 50 e1                                      cmp r0, r5
003fe3b8  06 00 00 0a                                      beq #0x3fe3d8
003fe3bc  00 00 50 e3                                      cmp r0, #0
003fe3c0  04 00 00 0a                                      beq #0x3fe3d8
003fe3c4  04 10 9d e5                                      ldr r1, [sp, #4]
003fe3c8  01 10 60 e0                                      rsb r1, r0, r1
003fe3cc  80 00 51 e3                                      cmp r1, #0x80
003fe3d0  15 00 00 8a                                      bhi #0x3fe42c
003fe3d4  c9 2a 0c eb                                      bl #0x708f00
003fe3d8  00 00 57 e3                                      cmp r7, #0
003fe3dc  0a 00 00 1a                                      bne #0x3fe40c
003fe3e0  2f 30 d8 e5                                      ldrb r3, [r8, #0x2f]
003fe3e4  00 00 53 e3                                      cmp r3, #0
003fe3e8  07 00 00 1a                                      bne #0x3fe40c
003fe3ec  08 30 98 e5                                      ldr r3, [r8, #8]
003fe3f0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
003fe3f4  00 00 63 e0                                      rsb r0, r3, r0
003fe3f8  40 01 a0 e1                                      asr r0, r0, #2
003fe3fc  63 00 50 e3                                      cmp r0, #0x63
003fe400  00 00 a0 93                                      movls r0, #0
003fe404  01 00 a0 83                                      movhi r0, #1
003fe408  00 00 00 ea                                      b #0x3fe410
003fe40c  00 00 a0 e3                                      mov r0, #0
003fe410  06 30 94 e7                                      ldr r3, [r4, r6]
003fe414  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003fe418  00 30 93 e5                                      ldr r3, [r3]
003fe41c  03 00 52 e1                                      cmp r2, r3
003fe420  03 00 00 1a                                      bne #0x3fe434
003fe424  20 d0 8d e2                                      add sp, sp, #0x20
003fe428  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fe42c  03 48 fc eb                                      bl #0x310440
003fe430  e8 ff ff ea                                      b #0x3fe3d8
003fe434  b5 3f fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003fe438  50 67 59 00 ac 40 00 00 84 08 00 00 c0 90 4c 00  .byte 0x50, 0x67, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0x90, 0x4c, 0x00

; FUNCTION 0x003fe448, declared_size=528, range_size=528, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory10RemoveItemEj
; demangled: ItemInventory::RemoveItem(unsigned int)
; decoder-mode: arm
003fe448  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fe44c  08 60 90 e5                                      ldr r6, [r0, #8]
003fe450  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003fe454  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
003fe458  08 d0 4d e2                                      sub sp, sp, #8
003fe45c  02 20 66 e0                                      rsb r2, r6, r2
003fe460  42 01 51 e1                                      cmp r1, r2, asr #2
003fe464  00 40 a0 e1                                      mov r4, r0
003fe468  01 50 a0 e1                                      mov r5, r1
003fe46c  03 30 8f e0                                      add r3, pc, r3
003fe470  08 00 00 3a                                      blo #0x3fe498
003fe474  c8 21 9f e5                                      ldr r2, [pc, #0x1c8]
003fe478  02 20 93 e7                                      ldr r2, [r3, r2]
003fe47c  00 20 92 e5                                      ldr r2, [r2]
003fe480  02 00 52 e3                                      cmp r2, #2
003fe484  00 30 a0 03                                      moveq r3, #0
003fe488  00 30 83 05                                      streq r3, [r3]
003fe48c  01 00 00 0a                                      beq #0x3fe498
003fe490  01 00 52 e3                                      cmp r2, #1
003fe494  5b 00 00 0a                                      beq #0x3fe608
003fe498  00 00 55 e3                                      cmp r5, #0
003fe49c  05 61 86 10                                      addne r6, r6, r5, lsl #2
003fe4a0  00 30 96 e5                                      ldr r3, [r6]
003fe4a4  00 00 93 e5                                      ldr r0, [r3]
003fe4a8  56 ee ff eb                                      bl #0x3f9e08
003fe4ac  68 70 90 e5                                      ldr r7, [r0, #0x68]
003fe4b0  00 00 57 e3                                      cmp r7, #0
003fe4b4  4b 00 00 ba                                      blt #0x3fe5e8
003fe4b8  07 10 a0 e1                                      mov r1, r7
003fe4bc  04 00 a0 e1                                      mov r0, r4
003fe4c0  78 f8 ff eb                                      bl #0x3fc6a8
003fe4c4  05 10 a0 e1                                      mov r1, r5
003fe4c8  00 80 a0 e1                                      mov r8, r0
003fe4cc  04 00 a0 e1                                      mov r0, r4
003fe4d0  86 fd ff eb                                      bl #0x3fdaf0
003fe4d4  00 00 50 e3                                      cmp r0, #0
003fe4d8  08 00 00 0a                                      beq #0x3fe500
003fe4dc  00 20 96 e5                                      ldr r2, [r6]
003fe4e0  0c 30 a0 e3                                      mov r3, #0xc
003fe4e4  14 10 94 e5                                      ldr r1, [r4, #0x14]
003fe4e8  93 08 03 e0                                      mul r3, r3, r8
003fe4ec  08 80 82 e0                                      add r8, r2, r8
003fe4f0  03 30 91 e7                                      ldr r3, [r1, r3]
003fe4f4  d4 20 d8 e1                                      ldrsb r2, [r8, #4]
003fe4f8  00 10 a0 e3                                      mov r1, #0
003fe4fc  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
003fe500  04 00 a0 e1                                      mov r0, r4
003fe504  6f f8 ff eb                                      bl #0x3fc6c8
003fe508  04 00 a0 e1                                      mov r0, r4
003fe50c  05 10 a0 e1                                      mov r1, r5
003fe510  76 fd ff eb                                      bl #0x3fdaf0
003fe514  00 00 50 e3                                      cmp r0, #0
003fe518  22 00 00 1a                                      bne #0x3fe5a8
003fe51c  04 00 a0 e1                                      mov r0, r4
003fe520  68 f8 ff eb                                      bl #0x3fc6c8
003fe524  00 50 96 e5                                      ldr r5, [r6]
003fe528  24 20 94 e5                                      ldr r2, [r4, #0x24]
003fe52c  00 30 95 e5                                      ldr r3, [r5]
003fe530  02 00 53 e1                                      cmp r3, r2
003fe534  00 30 a0 03                                      moveq r3, #0
003fe538  24 30 84 05                                      streq r3, [r4, #0x24]
003fe53c  00 50 96 05                                      ldreq r5, [r6]
003fe540  00 30 95 05                                      ldreq r3, [r5]
003fe544  00 00 53 e3                                      cmp r3, #0
003fe548  06 00 00 0a                                      beq #0x3fe568
003fe54c  03 00 a0 e1                                      mov r0, r3
003fe550  00 30 93 e5                                      ldr r3, [r3]
003fe554  0f e0 a0 e1                                      mov lr, pc
003fe558  04 f0 93 e5                                      ldr pc, [r3, #4]
003fe55c  00 30 a0 e3                                      mov r3, #0
003fe560  00 30 85 e5                                      str r3, [r5]
003fe564  00 50 96 e5                                      ldr r5, [r6]
003fe568  05 00 a0 e1                                      mov r0, r5
003fe56c  b3 47 fc eb                                      bl #0x310440
003fe570  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003fe574  04 10 86 e2                                      add r1, r6, #4
003fe578  03 00 51 e1                                      cmp r1, r3
003fe57c  05 00 00 0a                                      beq #0x3fe598
003fe580  01 20 53 e0                                      subs r2, r3, r1
003fe584  03 10 a0 01                                      moveq r1, r3
003fe588  02 00 00 0a                                      beq #0x3fe598
003fe58c  06 00 a0 e1                                      mov r0, r6
003fe590  68 3e fc eb                                      bl #0x30df38
003fe594  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003fe598  04 10 41 e2                                      sub r1, r1, #4
003fe59c  0c 10 84 e5                                      str r1, [r4, #0xc]
003fe5a0  08 d0 8d e2                                      add sp, sp, #8
003fe5a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fe5a8  07 10 a0 e1                                      mov r1, r7
003fe5ac  04 00 a0 e1                                      mov r0, r4
003fe5b0  3c f8 ff eb                                      bl #0x3fc6a8
003fe5b4  0c 50 a0 e3                                      mov r5, #0xc
003fe5b8  07 10 a0 e1                                      mov r1, r7
003fe5bc  95 00 05 e0                                      mul r5, r5, r0
003fe5c0  04 00 a0 e1                                      mov r0, r4
003fe5c4  14 70 94 e5                                      ldr r7, [r4, #0x14]
003fe5c8  00 80 96 e5                                      ldr r8, [r6]
003fe5cc  35 f8 ff eb                                      bl #0x3fc6a8
003fe5d0  00 00 88 e0                                      add r0, r8, r0
003fe5d4  05 30 97 e7                                      ldr r3, [r7, r5]
003fe5d8  d4 20 d0 e1                                      ldrsb r2, [r0, #4]
003fe5dc  00 10 a0 e3                                      mov r1, #0
003fe5e0  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
003fe5e4  cc ff ff ea                                      b #0x3fe51c
003fe5e8  04 00 77 e3                                      cmn r7, #4
003fe5ec  b1 ff ff ba                                      blt #0x3fe4b8
003fe5f0  03 00 77 e3                                      cmn r7, #3
003fe5f4  01 70 a0 d3                                      movle r7, #1
003fe5f8  ae ff ff da                                      ble #0x3fe4b8
003fe5fc  02 00 77 e3                                      cmn r7, #2
003fe600  05 70 a0 03                                      moveq r7, #5
003fe604  ab ff ff ea                                      b #0x3fe4b8
003fe608  38 00 9f e5                                      ldr r0, [pc, #0x38]
003fe60c  38 10 9f e5                                      ldr r1, [pc, #0x38]
003fe610  38 20 9f e5                                      ldr r2, [pc, #0x38]
003fe614  00 00 93 e7                                      ldr r0, [r3, r0]
003fe618  34 30 9f e5                                      ldr r3, [pc, #0x34]
003fe61c  0d c1 00 e3                                      movw ip, #0x10d
003fe620  01 10 8f e0                                      add r1, pc, r1
003fe624  a8 00 80 e2                                      add r0, r0, #0xa8
003fe628  02 20 8f e0                                      add r2, pc, r2
003fe62c  03 30 8f e0                                      add r3, pc, r3
003fe630  00 c0 8d e5                                      str ip, [sp]
003fe634  72 3e fc eb                                      bl #0x30e004
003fe638  08 60 94 e5                                      ldr r6, [r4, #8]
003fe63c  95 ff ff ea                                      b #0x3fe498
; mapping-symbol data/literal pool
003fe640  24 66 59 00 c0 39 00 00 c0 19 00 00 b8 fd 4b 00  .byte 0x24, 0x66, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb8, 0xfd, 0x4b, 0x00
003fe650  60 8d 4c 00 7c 8d 4c 00                          .byte 0x60, 0x8d, 0x4c, 0x00, 0x7c, 0x8d, 0x4c, 0x00

; FUNCTION 0x003fe658, declared_size=100, range_size=100, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory12TryConsumingEii
; demangled: ItemInventory::TryConsuming(int, int)
; decoder-mode: arm
003fe658  70 40 2d e9                                      push {r4, r5, r6, lr}
003fe65c  02 50 a0 e1                                      mov r5, r2
003fe660  00 60 a0 e1                                      mov r6, r0
003fe664  bc fa ff eb                                      bl #0x3fd15c
003fe668  00 40 50 e2                                      subs r4, r0, #0
003fe66c  09 00 00 0a                                      beq #0x3fe698
003fe670  f0 15 d4 e1                                      ldrsh r1, [r4, #0x50]
003fe674  01 00 55 e1                                      cmp r5, r1
003fe678  06 00 00 ca                                      bgt #0x3fe698
003fe67c  01 10 65 e0                                      rsb r1, r5, r1
003fe680  97 ee ff eb                                      bl #0x3fa0e4
003fe684  f0 35 d4 e1                                      ldrsh r3, [r4, #0x50]
003fe688  00 00 53 e3                                      cmp r3, #0
003fe68c  03 00 00 da                                      ble #0x3fe6a0
003fe690  01 00 a0 e3                                      mov r0, #1
003fe694  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fe698  00 00 a0 e3                                      mov r0, #0
003fe69c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fe6a0  04 10 a0 e1                                      mov r1, r4
003fe6a4  06 00 a0 e1                                      mov r0, r6
003fe6a8  e3 f7 ff eb                                      bl #0x3fc63c
003fe6ac  00 10 a0 e1                                      mov r1, r0
003fe6b0  06 00 a0 e1                                      mov r0, r6
003fe6b4  63 ff ff eb                                      bl #0x3fe448
003fe6b8  f4 ff ff ea                                      b #0x3fe690

; FUNCTION 0x003fe6bc, declared_size=284, range_size=284, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory14RemoveAllItemsEb
; demangled: ItemInventory::RemoveAllItems(bool)
; decoder-mode: arm
003fe6bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fe6c0  00 50 51 e2                                      subs r5, r1, #0
003fe6c4  00 40 a0 e1                                      mov r4, r0
003fe6c8  36 00 00 0a                                      beq #0x3fe7a8
003fe6cc  14 20 94 e5                                      ldr r2, [r4, #0x14]
003fe6d0  00 00 a0 e3                                      mov r0, #0
003fe6d4  00 e0 a0 e1                                      mov lr, r0
003fe6d8  00 30 82 e0                                      add r3, r2, r0
003fe6dc  04 30 93 e5                                      ldr r3, [r3, #4]
003fe6e0  00 10 92 e7                                      ldr r1, [r2, r0]
003fe6e4  03 30 61 e0                                      rsb r3, r1, r3
003fe6e8  23 31 b0 e1                                      lsrs r3, r3, #2
003fe6ec  00 30 a0 13                                      movne r3, #0
003fe6f0  08 00 00 0a                                      beq #0x3fe718
003fe6f4  03 e1 81 e7                                      str lr, [r1, r3, lsl #2]
003fe6f8  14 20 94 e5                                      ldr r2, [r4, #0x14]
003fe6fc  01 30 83 e2                                      add r3, r3, #1
003fe700  00 10 82 e0                                      add r1, r2, r0
003fe704  04 c0 91 e5                                      ldr ip, [r1, #4]
003fe708  00 10 92 e7                                      ldr r1, [r2, r0]
003fe70c  0c c0 61 e0                                      rsb ip, r1, ip
003fe710  4c 01 53 e1                                      cmp r3, ip, asr #2
003fe714  f6 ff ff 3a                                      blo #0x3fe6f4
003fe718  0c 00 80 e2                                      add r0, r0, #0xc
003fe71c  18 00 50 e3                                      cmp r0, #0x18
003fe720  ec ff ff 1a                                      bne #0x3fe6d8
003fe724  08 50 94 e5                                      ldr r5, [r4, #8]
003fe728  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003fe72c  05 00 53 e1                                      cmp r3, r5
003fe730  13 00 00 0a                                      beq #0x3fe784
003fe734  00 70 a0 e3                                      mov r7, #0
003fe738  00 60 95 e5                                      ldr r6, [r5]
003fe73c  00 30 96 e5                                      ldr r3, [r6]
003fe740  00 00 53 e3                                      cmp r3, #0
003fe744  05 00 00 0a                                      beq #0x3fe760
003fe748  03 00 a0 e1                                      mov r0, r3
003fe74c  00 30 93 e5                                      ldr r3, [r3]
003fe750  0f e0 a0 e1                                      mov lr, pc
003fe754  04 f0 93 e5                                      ldr pc, [r3, #4]
003fe758  00 70 86 e5                                      str r7, [r6]
003fe75c  00 60 95 e5                                      ldr r6, [r5]
003fe760  06 00 a0 e1                                      mov r0, r6
003fe764  35 47 fc eb                                      bl #0x310440
003fe768  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003fe76c  04 50 85 e2                                      add r5, r5, #4
003fe770  03 00 55 e1                                      cmp r5, r3
003fe774  ef ff ff 1a                                      bne #0x3fe738
003fe778  08 30 94 e5                                      ldr r3, [r4, #8]
003fe77c  03 00 55 e1                                      cmp r5, r3
003fe780  0c 30 84 15                                      strne r3, [r4, #0xc]
003fe784  04 00 a0 e1                                      mov r0, r4
003fe788  00 10 a0 e3                                      mov r1, #0
003fe78c  11 fe ff eb                                      bl #0x3fdfd8
003fe790  00 30 a0 e3                                      mov r3, #0
003fe794  24 30 84 e5                                      str r3, [r4, #0x24]
003fe798  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fe79c  04 00 a0 e1                                      mov r0, r4
003fe7a0  05 10 a0 e1                                      mov r1, r5
003fe7a4  27 ff ff eb                                      bl #0x3fe448
003fe7a8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003fe7ac  08 30 94 e5                                      ldr r3, [r4, #8]
003fe7b0  05 10 a0 e1                                      mov r1, r5
003fe7b4  04 00 a0 e1                                      mov r0, r4
003fe7b8  02 30 63 e0                                      rsb r3, r3, r2
003fe7bc  43 01 55 e1                                      cmp r5, r3, asr #2
003fe7c0  f2 ff ff 2a                                      bhs #0x3fe790
003fe7c4  c9 fc ff eb                                      bl #0x3fdaf0
003fe7c8  00 00 50 e3                                      cmp r0, #0
003fe7cc  01 50 85 12                                      addne r5, r5, #1
003fe7d0  f4 ff ff 1a                                      bne #0x3fe7a8
003fe7d4  f0 ff ff ea                                      b #0x3fe79c

; FUNCTION 0x003fe7d8, declared_size=160, range_size=160, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory16_DelItemInstanceEP12ItemInstance
; demangled: ItemInventory::_DelItemInstance(ItemInstance*)
; decoder-mode: arm
003fe7d8  70 40 2d e9                                      push {r4, r5, r6, lr}
003fe7dc  24 30 90 e5                                      ldr r3, [r0, #0x24]
003fe7e0  08 50 90 e5                                      ldr r5, [r0, #8]
003fe7e4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003fe7e8  01 00 53 e1                                      cmp r3, r1
003fe7ec  00 30 a0 03                                      moveq r3, #0
003fe7f0  24 30 80 05                                      streq r3, [r0, #0x24]
003fe7f4  02 00 55 e1                                      cmp r5, r2
003fe7f8  00 40 a0 e1                                      mov r4, r0
003fe7fc  03 00 00 1a                                      bne #0x3fe810
003fe800  1b 00 00 ea                                      b #0x3fe874
003fe804  04 50 85 e2                                      add r5, r5, #4
003fe808  02 00 55 e1                                      cmp r5, r2
003fe80c  18 00 00 0a                                      beq #0x3fe874
003fe810  00 00 95 e5                                      ldr r0, [r5]
003fe814  00 30 90 e5                                      ldr r3, [r0]
003fe818  01 00 53 e1                                      cmp r3, r1
003fe81c  f8 ff ff 1a                                      bne #0x3fe804
003fe820  00 00 51 e3                                      cmp r1, #0
003fe824  04 00 00 0a                                      beq #0x3fe83c
003fe828  01 00 a0 e1                                      mov r0, r1
003fe82c  00 30 91 e5                                      ldr r3, [r1]
003fe830  0f e0 a0 e1                                      mov lr, pc
003fe834  04 f0 93 e5                                      ldr pc, [r3, #4]
003fe838  00 00 95 e5                                      ldr r0, [r5]
003fe83c  ff 46 fc eb                                      bl #0x310440
003fe840  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003fe844  04 10 85 e2                                      add r1, r5, #4
003fe848  03 00 51 e1                                      cmp r1, r3
003fe84c  05 00 00 0a                                      beq #0x3fe868
003fe850  01 20 53 e0                                      subs r2, r3, r1
003fe854  03 10 a0 01                                      moveq r1, r3
003fe858  02 00 00 0a                                      beq #0x3fe868
003fe85c  05 00 a0 e1                                      mov r0, r5
003fe860  b4 3d fc eb                                      bl #0x30df38
003fe864  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003fe868  04 10 41 e2                                      sub r1, r1, #4
003fe86c  0c 10 84 e5                                      str r1, [r4, #0xc]
003fe870  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fe874  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003fe878, declared_size=40, range_size=40, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory15RemoveOnePotionEv
; demangled: ItemInventory::RemoveOnePotion()
; decoder-mode: arm
003fe878  24 10 90 e5                                      ldr r1, [r0, #0x24]
003fe87c  00 00 51 e3                                      cmp r1, #0
003fe880  1e ff 2f 01                                      bxeq lr
003fe884  f0 35 d1 e1                                      ldrsh r3, [r1, #0x50]
003fe888  01 00 53 e3                                      cmp r3, #1
003fe88c  02 00 00 da                                      ble #0x3fe89c
003fe890  01 00 a0 e1                                      mov r0, r1
003fe894  00 10 e0 e3                                      mvn r1, #0
003fe898  37 ee ff ea                                      b #0x3fa17c
003fe89c  cd ff ff ea                                      b #0x3fe7d8

; FUNCTION 0x003fed48, declared_size=264, range_size=264, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory18GetItemListForSlotEjPSt6vectorINS_4ItemESaIS1_EE
; demangled: ItemInventory::GetItemListForSlot(unsigned int, std::vector<ItemInventory::Item, std::allocator<ItemInventory::Item> >*)
; decoder-mode: arm
003fed48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003fed4c  00 60 52 e2                                      subs r6, r2, #0
003fed50  1c d0 4d e2                                      sub sp, sp, #0x1c
003fed54  00 70 a0 e1                                      mov r7, r0
003fed58  01 90 a0 e1                                      mov sb, r1
003fed5c  03 00 00 0a                                      beq #0x3fed70
003fed60  00 30 96 e5                                      ldr r3, [r6]
003fed64  04 20 96 e5                                      ldr r2, [r6, #4]
003fed68  02 00 53 e1                                      cmp r3, r2
003fed6c  04 30 86 15                                      strne r3, [r6, #4]
003fed70  08 40 97 e5                                      ldr r4, [r7, #8]
003fed74  0c a0 97 e5                                      ldr sl, [r7, #0xc]
003fed78  0a 00 54 e1                                      cmp r4, sl
003fed7c  00 80 a0 03                                      moveq r8, #0
003fed80  2b 00 00 0a                                      beq #0x3fee34
003fed84  0c b0 8d e2                                      add fp, sp, #0xc
003fed88  04 00 8b e2                                      add r0, fp, #4
003fed8c  00 80 a0 e3                                      mov r8, #0
003fed90  04 10 80 e2                                      add r1, r0, #4
003fed94  00 00 8d e5                                      str r0, [sp]
003fed98  08 50 a0 e1                                      mov r5, r8
003fed9c  04 10 8d e5                                      str r1, [sp, #4]
003feda0  00 00 00 ea                                      b #0x3feda8
003feda4  01 50 85 e2                                      add r5, r5, #1
003feda8  05 10 a0 e1                                      mov r1, r5
003fedac  09 20 a0 e1                                      mov r2, sb
003fedb0  07 00 a0 e1                                      mov r0, r7
003fedb4  c0 fb ff eb                                      bl #0x3fdcbc
003fedb8  00 00 50 e3                                      cmp r0, #0
003fedbc  19 00 00 0a                                      beq #0x3fee28
003fedc0  00 00 56 e3                                      cmp r6, #0
003fedc4  01 80 88 e2                                      add r8, r8, #1
003fedc8  16 00 00 0a                                      beq #0x3fee28
003fedcc  00 30 94 e5                                      ldr r3, [r4]
003fedd0  00 10 93 e5                                      ldr r1, [r3]
003fedd4  04 20 d3 e5                                      ldrb r2, [r3, #4]
003fedd8  05 30 d3 e5                                      ldrb r3, [r3, #5]
003feddc  0c 10 8d e5                                      str r1, [sp, #0xc]
003fede0  10 20 cd e5                                      strb r2, [sp, #0x10]
003fede4  11 30 cd e5                                      strb r3, [sp, #0x11]
003fede8  14 50 8d e5                                      str r5, [sp, #0x14]
003fedec  06 00 96 e9                                      ldmib r6, {r1, r2}
003fedf0  01 30 a0 e1                                      mov r3, r1
003fedf4  02 00 51 e1                                      cmp r1, r2
003fedf8  10 00 00 0a                                      beq #0x3fee40
003fedfc  00 20 9b e5                                      ldr r2, [fp]
003fee00  04 20 83 e4                                      str r2, [r3], #4
003fee04  00 00 9d e5                                      ldr r0, [sp]
003fee08  00 20 90 e5                                      ldr r2, [r0]
003fee0c  04 20 81 e5                                      str r2, [r1, #4]
003fee10  04 10 9d e5                                      ldr r1, [sp, #4]
003fee14  00 20 91 e5                                      ldr r2, [r1]
003fee18  04 20 83 e5                                      str r2, [r3, #4]
003fee1c  04 30 96 e5                                      ldr r3, [r6, #4]
003fee20  0c 30 83 e2                                      add r3, r3, #0xc
003fee24  04 30 86 e5                                      str r3, [r6, #4]
003fee28  04 40 84 e2                                      add r4, r4, #4
003fee2c  0a 00 54 e1                                      cmp r4, sl
003fee30  db ff ff 1a                                      bne #0x3feda4
003fee34  08 00 a0 e1                                      mov r0, r8
003fee38  1c d0 8d e2                                      add sp, sp, #0x1c
003fee3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003fee40  06 00 a0 e1                                      mov r0, r6
003fee44  0b 20 a0 e1                                      mov r2, fp
003fee48  51 ff ff eb                                      bl #0x3feb94
003fee4c  f5 ff ff ea                                      b #0x3fee28

; FUNCTION 0x003fee50, declared_size=252, range_size=252, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory16GetValuableItemsEPSt6vectorINS_4ItemESaIS1_EE
; demangled: ItemInventory::GetValuableItems(std::vector<ItemInventory::Item, std::allocator<ItemInventory::Item> >*)
; decoder-mode: arm
003fee50  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003fee54  00 60 51 e2                                      subs r6, r1, #0
003fee58  14 d0 4d e2                                      sub sp, sp, #0x14
003fee5c  03 00 00 0a                                      beq #0x3fee70
003fee60  00 30 96 e5                                      ldr r3, [r6]
003fee64  04 20 96 e5                                      ldr r2, [r6, #4]
003fee68  02 00 53 e1                                      cmp r3, r2
003fee6c  04 30 86 15                                      strne r3, [r6, #4]
003fee70  0c 70 90 e5                                      ldr r7, [r0, #0xc]
003fee74  08 40 90 e5                                      ldr r4, [r0, #8]
003fee78  07 00 54 e1                                      cmp r4, r7
003fee7c  00 80 a0 03                                      moveq r8, #0
003fee80  2a 00 00 0a                                      beq #0x3fef30
003fee84  04 a0 8d e2                                      add sl, sp, #4
003fee88  00 80 a0 e3                                      mov r8, #0
003fee8c  04 90 8a e2                                      add sb, sl, #4
003fee90  08 50 a0 e1                                      mov r5, r8
003fee94  04 b0 89 e2                                      add fp, sb, #4
003fee98  03 00 00 ea                                      b #0x3feeac
003fee9c  04 40 84 e2                                      add r4, r4, #4
003feea0  07 00 54 e1                                      cmp r4, r7
003feea4  21 00 00 0a                                      beq #0x3fef30
003feea8  01 50 85 e2                                      add r5, r5, #1
003feeac  00 30 94 e5                                      ldr r3, [r4]
003feeb0  00 00 93 e5                                      ldr r0, [r3]
003feeb4  d3 eb ff eb                                      bl #0x3f9e08
003feeb8  68 30 90 e5                                      ldr r3, [r0, #0x68]
003feebc  01 00 73 e3                                      cmn r3, #1
003feec0  f5 ff ff 1a                                      bne #0x3fee9c
003feec4  00 00 56 e3                                      cmp r6, #0
003feec8  01 80 88 e2                                      add r8, r8, #1
003feecc  f2 ff ff 0a                                      beq #0x3fee9c
003feed0  00 30 94 e5                                      ldr r3, [r4]
003feed4  00 10 93 e5                                      ldr r1, [r3]
003feed8  04 20 d3 e5                                      ldrb r2, [r3, #4]
003feedc  05 30 d3 e5                                      ldrb r3, [r3, #5]
003feee0  04 10 8d e5                                      str r1, [sp, #4]
003feee4  08 20 cd e5                                      strb r2, [sp, #8]
003feee8  09 30 cd e5                                      strb r3, [sp, #9]
003feeec  0c 50 8d e5                                      str r5, [sp, #0xc]
003feef0  06 00 96 e9                                      ldmib r6, {r1, r2}
003feef4  01 30 a0 e1                                      mov r3, r1
003feef8  02 00 51 e1                                      cmp r1, r2
003feefc  0e 00 00 0a                                      beq #0x3fef3c
003fef00  00 20 9a e5                                      ldr r2, [sl]
003fef04  04 40 84 e2                                      add r4, r4, #4
003fef08  07 00 54 e1                                      cmp r4, r7
003fef0c  04 20 83 e4                                      str r2, [r3], #4
003fef10  00 20 99 e5                                      ldr r2, [sb]
003fef14  04 20 81 e5                                      str r2, [r1, #4]
003fef18  00 20 9b e5                                      ldr r2, [fp]
003fef1c  04 20 83 e5                                      str r2, [r3, #4]
003fef20  04 30 96 e5                                      ldr r3, [r6, #4]
003fef24  0c 30 83 e2                                      add r3, r3, #0xc
003fef28  04 30 86 e5                                      str r3, [r6, #4]
003fef2c  dd ff ff 1a                                      bne #0x3feea8
003fef30  08 00 a0 e1                                      mov r0, r8
003fef34  14 d0 8d e2                                      add sp, sp, #0x14
003fef38  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003fef3c  06 00 a0 e1                                      mov r0, r6
003fef40  0a 20 a0 e1                                      mov r2, sl
003fef44  12 ff ff eb                                      bl #0x3feb94
003fef48  d3 ff ff ea                                      b #0x3fee9c

; FUNCTION 0x003ff200, declared_size=304, range_size=304, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventoryC1Ev
; demangled: ItemInventory::ItemInventory()
; decoder-mode: arm
003ff200  20 31 9f e5                                      ldr r3, [pc, #0x120]
003ff204  20 21 9f e5                                      ldr r2, [pc, #0x120]
003ff208  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ff20c  03 30 8f e0                                      add r3, pc, r3
003ff210  02 20 93 e7                                      ldr r2, [r3, r2]
003ff214  00 60 a0 e1                                      mov r6, r0
003ff218  00 10 a0 e3                                      mov r1, #0
003ff21c  08 20 82 e2                                      add r2, r2, #8
003ff220  00 20 86 e5                                      str r2, [r6]
003ff224  02 21 e0 e3                                      mvn r2, #0x80000000
003ff228  10 d0 4d e2                                      sub sp, sp, #0x10
003ff22c  30 00 80 e2                                      add r0, r0, #0x30
003ff230  28 20 86 e5                                      str r2, [r6, #0x28]
003ff234  00 20 e0 e3                                      mvn r2, #0
003ff238  01 70 a0 e1                                      mov r7, r1
003ff23c  2c 20 c6 e5                                      strb r2, [r6, #0x2c]
003ff240  34 00 86 e5                                      str r0, [r6, #0x34]
003ff244  04 10 86 e5                                      str r1, [r6, #4]
003ff248  08 10 86 e5                                      str r1, [r6, #8]
003ff24c  0c 10 86 e5                                      str r1, [r6, #0xc]
003ff250  10 10 86 e5                                      str r1, [r6, #0x10]
003ff254  14 10 86 e5                                      str r1, [r6, #0x14]
003ff258  18 10 86 e5                                      str r1, [r6, #0x18]
003ff25c  1c 10 86 e5                                      str r1, [r6, #0x1c]
003ff260  20 10 86 e5                                      str r1, [r6, #0x20]
003ff264  24 10 86 e5                                      str r1, [r6, #0x24]
003ff268  2d 10 c6 e5                                      strb r1, [r6, #0x2d]
003ff26c  2e 10 c6 e5                                      strb r1, [r6, #0x2e]
003ff270  2f 10 c6 e5                                      strb r1, [r6, #0x2f]
003ff274  30 00 86 e5                                      str r0, [r6, #0x30]
003ff278  14 a0 86 e2                                      add sl, r6, #0x14
003ff27c  0d 80 a0 e1                                      mov r8, sp
003ff280  01 50 a0 e1                                      mov r5, r1
003ff284  0c 90 8d e2                                      add sb, sp, #0xc
003ff288  0a 00 a0 e1                                      mov r0, sl
003ff28c  0d 10 a0 e1                                      mov r1, sp
003ff290  00 50 8d e5                                      str r5, [sp]
003ff294  04 50 8d e5                                      str r5, [sp, #4]
003ff298  08 50 8d e5                                      str r5, [sp, #8]
003ff29c  b5 ff ff eb                                      bl #0x3ff178
003ff2a0  00 00 9d e5                                      ldr r0, [sp]
003ff2a4  00 00 50 e3                                      cmp r0, #0
003ff2a8  05 00 00 0a                                      beq #0x3ff2c4
003ff2ac  08 10 9d e5                                      ldr r1, [sp, #8]
003ff2b0  01 10 60 e0                                      rsb r1, r0, r1
003ff2b4  03 10 c1 e3                                      bic r1, r1, #3
003ff2b8  80 00 51 e3                                      cmp r1, #0x80
003ff2bc  17 00 00 8a                                      bhi #0x3ff320
003ff2c0  0e 27 0c eb                                      bl #0x708f00
003ff2c4  00 40 a0 e3                                      mov r4, #0
003ff2c8  14 00 96 e5                                      ldr r0, [r6, #0x14]
003ff2cc  0c 50 8d e5                                      str r5, [sp, #0xc]
003ff2d0  07 00 80 e0                                      add r0, r0, r7
003ff2d4  0a 00 90 e9                                      ldmib r0, {r1, r3}
003ff2d8  03 00 51 e1                                      cmp r1, r3
003ff2dc  0c 00 00 0a                                      beq #0x3ff314
003ff2e0  00 50 81 e5                                      str r5, [r1]
003ff2e4  04 30 90 e5                                      ldr r3, [r0, #4]
003ff2e8  04 30 83 e2                                      add r3, r3, #4
003ff2ec  04 30 80 e5                                      str r3, [r0, #4]
003ff2f0  01 40 84 e2                                      add r4, r4, #1
003ff2f4  09 00 54 e3                                      cmp r4, #9
003ff2f8  f2 ff ff 1a                                      bne #0x3ff2c8
003ff2fc  0c 70 87 e2                                      add r7, r7, #0xc
003ff300  18 00 57 e3                                      cmp r7, #0x18
003ff304  df ff ff 1a                                      bne #0x3ff288
003ff308  06 00 a0 e1                                      mov r0, r6
003ff30c  10 d0 8d e2                                      add sp, sp, #0x10
003ff310  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ff314  09 20 a0 e1                                      mov r2, sb
003ff318  0b ff ff eb                                      bl #0x3fef4c
003ff31c  f3 ff ff ea                                      b #0x3ff2f0
003ff320  46 44 fc eb                                      bl #0x310440
003ff324  e6 ff ff ea                                      b #0x3ff2c4
; mapping-symbol data/literal pool
003ff328  84 58 59 00 fc 21 00 00                          .byte 0x84, 0x58, 0x59, 0x00, 0xfc, 0x21, 0x00, 0x00

; FUNCTION 0x003ff330, declared_size=304, range_size=304, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventoryC2Ev
; demangled: ItemInventory::ItemInventory()
; decoder-mode: arm
003ff330  20 31 9f e5                                      ldr r3, [pc, #0x120]
003ff334  20 21 9f e5                                      ldr r2, [pc, #0x120]
003ff338  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ff33c  03 30 8f e0                                      add r3, pc, r3
003ff340  02 20 93 e7                                      ldr r2, [r3, r2]
003ff344  00 60 a0 e1                                      mov r6, r0
003ff348  00 10 a0 e3                                      mov r1, #0
003ff34c  08 20 82 e2                                      add r2, r2, #8
003ff350  00 20 86 e5                                      str r2, [r6]
003ff354  02 21 e0 e3                                      mvn r2, #0x80000000
003ff358  10 d0 4d e2                                      sub sp, sp, #0x10
003ff35c  30 00 80 e2                                      add r0, r0, #0x30
003ff360  28 20 86 e5                                      str r2, [r6, #0x28]
003ff364  00 20 e0 e3                                      mvn r2, #0
003ff368  01 70 a0 e1                                      mov r7, r1
003ff36c  2c 20 c6 e5                                      strb r2, [r6, #0x2c]
003ff370  34 00 86 e5                                      str r0, [r6, #0x34]
003ff374  04 10 86 e5                                      str r1, [r6, #4]
003ff378  08 10 86 e5                                      str r1, [r6, #8]
003ff37c  0c 10 86 e5                                      str r1, [r6, #0xc]
003ff380  10 10 86 e5                                      str r1, [r6, #0x10]
003ff384  14 10 86 e5                                      str r1, [r6, #0x14]
003ff388  18 10 86 e5                                      str r1, [r6, #0x18]
003ff38c  1c 10 86 e5                                      str r1, [r6, #0x1c]
003ff390  20 10 86 e5                                      str r1, [r6, #0x20]
003ff394  24 10 86 e5                                      str r1, [r6, #0x24]
003ff398  2d 10 c6 e5                                      strb r1, [r6, #0x2d]
003ff39c  2e 10 c6 e5                                      strb r1, [r6, #0x2e]
003ff3a0  2f 10 c6 e5                                      strb r1, [r6, #0x2f]
003ff3a4  30 00 86 e5                                      str r0, [r6, #0x30]
003ff3a8  14 a0 86 e2                                      add sl, r6, #0x14
003ff3ac  0d 80 a0 e1                                      mov r8, sp
003ff3b0  01 50 a0 e1                                      mov r5, r1
003ff3b4  0c 90 8d e2                                      add sb, sp, #0xc
003ff3b8  0a 00 a0 e1                                      mov r0, sl
003ff3bc  0d 10 a0 e1                                      mov r1, sp
003ff3c0  00 50 8d e5                                      str r5, [sp]
003ff3c4  04 50 8d e5                                      str r5, [sp, #4]
003ff3c8  08 50 8d e5                                      str r5, [sp, #8]
003ff3cc  69 ff ff eb                                      bl #0x3ff178
003ff3d0  00 00 9d e5                                      ldr r0, [sp]
003ff3d4  00 00 50 e3                                      cmp r0, #0
003ff3d8  05 00 00 0a                                      beq #0x3ff3f4
003ff3dc  08 10 9d e5                                      ldr r1, [sp, #8]
003ff3e0  01 10 60 e0                                      rsb r1, r0, r1
003ff3e4  03 10 c1 e3                                      bic r1, r1, #3
003ff3e8  80 00 51 e3                                      cmp r1, #0x80
003ff3ec  17 00 00 8a                                      bhi #0x3ff450
003ff3f0  c2 26 0c eb                                      bl #0x708f00
003ff3f4  00 40 a0 e3                                      mov r4, #0
003ff3f8  14 00 96 e5                                      ldr r0, [r6, #0x14]
003ff3fc  0c 50 8d e5                                      str r5, [sp, #0xc]
003ff400  07 00 80 e0                                      add r0, r0, r7
003ff404  0a 00 90 e9                                      ldmib r0, {r1, r3}
003ff408  03 00 51 e1                                      cmp r1, r3
003ff40c  0c 00 00 0a                                      beq #0x3ff444
003ff410  00 50 81 e5                                      str r5, [r1]
003ff414  04 30 90 e5                                      ldr r3, [r0, #4]
003ff418  04 30 83 e2                                      add r3, r3, #4
003ff41c  04 30 80 e5                                      str r3, [r0, #4]
003ff420  01 40 84 e2                                      add r4, r4, #1
003ff424  09 00 54 e3                                      cmp r4, #9
003ff428  f2 ff ff 1a                                      bne #0x3ff3f8
003ff42c  0c 70 87 e2                                      add r7, r7, #0xc
003ff430  18 00 57 e3                                      cmp r7, #0x18
003ff434  df ff ff 1a                                      bne #0x3ff3b8
003ff438  06 00 a0 e1                                      mov r0, r6
003ff43c  10 d0 8d e2                                      add sp, sp, #0x10
003ff440  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ff444  09 20 a0 e1                                      mov r2, sb
003ff448  bf fe ff eb                                      bl #0x3fef4c
003ff44c  f3 ff ff ea                                      b #0x3ff420
003ff450  fa 43 fc eb                                      bl #0x310440
003ff454  e6 ff ff ea                                      b #0x3ff3f4
; mapping-symbol data/literal pool
003ff458  54 57 59 00 fc 21 00 00                          .byte 0x54, 0x57, 0x59, 0x00, 0xfc, 0x21, 0x00, 0x00

; FUNCTION 0x003ff460, declared_size=172, range_size=172, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventoryD1Ev
; demangled: ItemInventory::~ItemInventory()
; decoder-mode: arm
003ff460  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003ff464  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
003ff468  70 40 2d e9                                      push {r4, r5, r6, lr}
003ff46c  03 30 8f e0                                      add r3, pc, r3
003ff470  02 20 93 e7                                      ldr r2, [r3, r2]
003ff474  00 50 a0 e1                                      mov r5, r0
003ff478  00 60 a0 e1                                      mov r6, r0
003ff47c  08 20 82 e2                                      add r2, r2, #8
003ff480  30 20 85 e4                                      str r2, [r5], #0x30
003ff484  01 10 a0 e3                                      mov r1, #1
003ff488  8b fc ff eb                                      bl #0x3fe6bc
003ff48c  30 00 96 e5                                      ldr r0, [r6, #0x30]
003ff490  05 00 50 e1                                      cmp r0, r5
003ff494  01 00 00 1a                                      bne #0x3ff4a0
003ff498  06 00 00 ea                                      b #0x3ff4b8
003ff49c  04 00 a0 e1                                      mov r0, r4
003ff4a0  00 40 90 e5                                      ldr r4, [r0]
003ff4a4  10 10 a0 e3                                      mov r1, #0x10
003ff4a8  94 26 0c eb                                      bl #0x708f00
003ff4ac  05 00 54 e1                                      cmp r4, r5
003ff4b0  f9 ff ff 1a                                      bne #0x3ff49c
003ff4b4  05 00 a0 e1                                      mov r0, r5
003ff4b8  30 00 86 e5                                      str r0, [r6, #0x30]
003ff4bc  04 00 85 e5                                      str r0, [r5, #4]
003ff4c0  14 00 86 e2                                      add r0, r6, #0x14
003ff4c4  85 fd ff eb                                      bl #0x3feae0
003ff4c8  08 00 96 e5                                      ldr r0, [r6, #8]
003ff4cc  08 30 86 e2                                      add r3, r6, #8
003ff4d0  00 00 50 e3                                      cmp r0, #0
003ff4d4  05 00 00 0a                                      beq #0x3ff4f0
003ff4d8  08 10 93 e5                                      ldr r1, [r3, #8]
003ff4dc  01 10 60 e0                                      rsb r1, r0, r1
003ff4e0  03 10 c1 e3                                      bic r1, r1, #3
003ff4e4  80 00 51 e3                                      cmp r1, #0x80
003ff4e8  02 00 00 8a                                      bhi #0x3ff4f8
003ff4ec  83 26 0c eb                                      bl #0x708f00
003ff4f0  06 00 a0 e1                                      mov r0, r6
003ff4f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003ff4f8  d0 43 fc eb                                      bl #0x310440
003ff4fc  06 00 a0 e1                                      mov r0, r6
003ff500  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ff504  24 56 59 00 fc 21 00 00                          .byte 0x24, 0x56, 0x59, 0x00, 0xfc, 0x21, 0x00, 0x00

; FUNCTION 0x003ff50c, declared_size=28, range_size=28, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventoryD0Ev
; demangled: ItemInventory::~ItemInventory()
; decoder-mode: arm
003ff50c  10 40 2d e9                                      push {r4, lr}
003ff510  00 40 a0 e1                                      mov r4, r0
003ff514  d1 ff ff eb                                      bl #0x3ff460
003ff518  04 00 a0 e1                                      mov r0, r4
003ff51c  c7 43 fc eb                                      bl #0x310440
003ff520  04 00 a0 e1                                      mov r0, r4
003ff524  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ff528, declared_size=172, range_size=172, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventoryD2Ev
; demangled: ItemInventory::~ItemInventory()
; decoder-mode: arm
003ff528  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003ff52c  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
003ff530  70 40 2d e9                                      push {r4, r5, r6, lr}
003ff534  03 30 8f e0                                      add r3, pc, r3
003ff538  02 20 93 e7                                      ldr r2, [r3, r2]
003ff53c  00 50 a0 e1                                      mov r5, r0
003ff540  00 60 a0 e1                                      mov r6, r0
003ff544  08 20 82 e2                                      add r2, r2, #8
003ff548  30 20 85 e4                                      str r2, [r5], #0x30
003ff54c  01 10 a0 e3                                      mov r1, #1
003ff550  59 fc ff eb                                      bl #0x3fe6bc
003ff554  30 00 96 e5                                      ldr r0, [r6, #0x30]
003ff558  05 00 50 e1                                      cmp r0, r5
003ff55c  01 00 00 1a                                      bne #0x3ff568
003ff560  06 00 00 ea                                      b #0x3ff580
003ff564  04 00 a0 e1                                      mov r0, r4
003ff568  00 40 90 e5                                      ldr r4, [r0]
003ff56c  10 10 a0 e3                                      mov r1, #0x10
003ff570  62 26 0c eb                                      bl #0x708f00
003ff574  05 00 54 e1                                      cmp r4, r5
003ff578  f9 ff ff 1a                                      bne #0x3ff564
003ff57c  05 00 a0 e1                                      mov r0, r5
003ff580  30 00 86 e5                                      str r0, [r6, #0x30]
003ff584  04 00 85 e5                                      str r0, [r5, #4]
003ff588  14 00 86 e2                                      add r0, r6, #0x14
003ff58c  53 fd ff eb                                      bl #0x3feae0
003ff590  08 00 96 e5                                      ldr r0, [r6, #8]
003ff594  08 30 86 e2                                      add r3, r6, #8
003ff598  00 00 50 e3                                      cmp r0, #0
003ff59c  05 00 00 0a                                      beq #0x3ff5b8
003ff5a0  08 10 93 e5                                      ldr r1, [r3, #8]
003ff5a4  01 10 60 e0                                      rsb r1, r0, r1
003ff5a8  03 10 c1 e3                                      bic r1, r1, #3
003ff5ac  80 00 51 e3                                      cmp r1, #0x80
003ff5b0  02 00 00 8a                                      bhi #0x3ff5c0
003ff5b4  51 26 0c eb                                      bl #0x708f00
003ff5b8  06 00 a0 e1                                      mov r0, r6
003ff5bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
003ff5c0  9e 43 fc eb                                      bl #0x310440
003ff5c4  06 00 a0 e1                                      mov r0, r6
003ff5c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ff5cc  5c 55 59 00 fc 21 00 00                          .byte 0x5c, 0x55, 0x59, 0x00, 0xfc, 0x21, 0x00, 0x00

; FUNCTION 0x003ff5d4, declared_size=644, range_size=644, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory16_AddItemInstanceEP12ItemInstancebb
; demangled: ItemInventory::_AddItemInstance(ItemInstance*, bool, bool)
; decoder-mode: arm
003ff5d4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003ff5d8  00 40 a0 e1                                      mov r4, r0
003ff5dc  dc 02 d0 e1                                      ldrsb r0, [r0, #0x2c]
003ff5e0  60 62 9f e5                                      ldr r6, [pc, #0x260]
003ff5e4  0c d0 4d e2                                      sub sp, sp, #0xc
003ff5e8  00 00 50 e3                                      cmp r0, #0
003ff5ec  06 60 8f e0                                      add r6, pc, r6
003ff5f0  01 50 a0 e1                                      mov r5, r1
003ff5f4  02 80 a0 e1                                      mov r8, r2
003ff5f8  03 70 a0 e1                                      mov r7, r3
003ff5fc  3b 00 00 0a                                      beq #0x3ff6f0
003ff600  24 30 94 e5                                      ldr r3, [r4, #0x24]
003ff604  00 00 53 e3                                      cmp r3, #0
003ff608  83 00 00 0a                                      beq #0x3ff81c
003ff60c  00 00 57 e3                                      cmp r7, #0
003ff610  43 00 00 1a                                      bne #0x3ff724
003ff614  05 00 a0 e1                                      mov r0, r5
003ff618  0e ea ff eb                                      bl #0x3f9e58
003ff61c  00 00 50 e3                                      cmp r0, #0
003ff620  13 00 00 0a                                      beq #0x3ff674
003ff624  00 00 58 e3                                      cmp r8, #0
003ff628  11 00 00 1a                                      bne #0x3ff674
003ff62c  08 70 94 e5                                      ldr r7, [r4, #8]
003ff630  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003ff634  02 00 57 e1                                      cmp r7, r2
003ff638  0d 00 00 0a                                      beq #0x3ff674
003ff63c  00 a0 97 e5                                      ldr sl, [r7]
003ff640  08 10 a0 e1                                      mov r1, r8
003ff644  04 00 a0 e1                                      mov r0, r4
003ff648  00 30 9a e5                                      ldr r3, [sl]
003ff64c  00 00 53 e3                                      cmp r3, #0
003ff650  03 00 00 0a                                      beq #0x3ff664
003ff654  25 f9 ff eb                                      bl #0x3fdaf0
003ff658  00 00 50 e3                                      cmp r0, #0
003ff65c  3e 00 00 0a                                      beq #0x3ff75c
003ff660  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003ff664  04 70 87 e2                                      add r7, r7, #4
003ff668  02 00 57 e1                                      cmp r7, r2
003ff66c  01 80 88 12                                      addne r8, r8, #1
003ff670  f1 ff ff 1a                                      bne #0x3ff63c
003ff674  00 10 a0 e3                                      mov r1, #0
003ff678  08 00 a0 e3                                      mov r0, #8
003ff67c  bb 43 fc eb                                      bl #0x310570
003ff680  00 30 e0 e3                                      mvn r3, #0
003ff684  00 50 80 e5                                      str r5, [r0]
003ff688  05 30 c0 e5                                      strb r3, [r0, #5]
003ff68c  04 30 c0 e5                                      strb r3, [r0, #4]
003ff690  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003ff694  10 30 94 e5                                      ldr r3, [r4, #0x10]
003ff698  04 00 8d e5                                      str r0, [sp, #4]
003ff69c  03 00 51 e1                                      cmp r1, r3
003ff6a0  64 00 00 0a                                      beq #0x3ff838
003ff6a4  00 00 81 e5                                      str r0, [r1]
003ff6a8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003ff6ac  04 30 83 e2                                      add r3, r3, #4
003ff6b0  0c 30 84 e5                                      str r3, [r4, #0xc]
003ff6b4  90 31 9f e5                                      ldr r3, [pc, #0x190]
003ff6b8  04 00 a0 e1                                      mov r0, r4
003ff6bc  03 30 96 e7                                      ldr r3, [r6, r3]
003ff6c0  00 50 93 e5                                      ldr r5, [r3]
003ff6c4  19 fb ff eb                                      bl #0x3fe330
003ff6c8  00 00 50 e3                                      cmp r0, #0
003ff6cc  35 00 00 1a                                      bne #0x3ff7a8
003ff6d0  08 30 94 e5                                      ldr r3, [r4, #8]
003ff6d4  0c 80 94 e5                                      ldr r8, [r4, #0xc]
003ff6d8  08 80 63 e0                                      rsb r8, r3, r8
003ff6dc  48 81 a0 e1                                      asr r8, r8, #2
003ff6e0  01 80 48 e2                                      sub r8, r8, #1
003ff6e4  08 00 a0 e1                                      mov r0, r8
003ff6e8  0c d0 8d e2                                      add sp, sp, #0xc
003ff6ec  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003ff6f0  01 00 a0 e1                                      mov r0, r1
003ff6f4  c3 e9 ff eb                                      bl #0x3f9e08
003ff6f8  58 30 90 e5                                      ldr r3, [r0, #0x58]
003ff6fc  0e 00 53 e3                                      cmp r3, #0xe
003ff700  be ff ff 1a                                      bne #0x3ff600
003ff704  00 00 55 e3                                      cmp r5, #0
003ff708  11 00 00 0a                                      beq #0x3ff754
003ff70c  05 00 a0 e1                                      mov r0, r5
003ff710  00 30 95 e5                                      ldr r3, [r5]
003ff714  0f e0 a0 e1                                      mov lr, pc
003ff718  04 f0 93 e5                                      ldr pc, [r3, #4]
003ff71c  00 80 e0 e3                                      mvn r8, #0
003ff720  ef ff ff ea                                      b #0x3ff6e4
003ff724  05 00 a0 e1                                      mov r0, r5
003ff728  b6 e9 ff eb                                      bl #0x3f9e08
003ff72c  58 30 90 e5                                      ldr r3, [r0, #0x58]
003ff730  0d 00 53 e3                                      cmp r3, #0xd
003ff734  b6 ff ff 1a                                      bne #0x3ff614
003ff738  04 00 a0 e1                                      mov r0, r4
003ff73c  54 10 95 e5                                      ldr r1, [r5, #0x54]
003ff740  87 fa ff eb                                      bl #0x3fe164
003ff744  05 00 a0 e1                                      mov r0, r5
003ff748  00 30 95 e5                                      ldr r3, [r5]
003ff74c  0f e0 a0 e1                                      mov lr, pc
003ff750  04 f0 93 e5                                      ldr pc, [r3, #4]
003ff754  00 80 e0 e3                                      mvn r8, #0
003ff758  e1 ff ff ea                                      b #0x3ff6e4
003ff75c  00 00 9a e5                                      ldr r0, [sl]
003ff760  05 10 a0 e1                                      mov r1, r5
003ff764  83 e9 ff eb                                      bl #0x3f9d78
003ff768  00 00 50 e3                                      cmp r0, #0
003ff76c  bb ff ff 0a                                      beq #0x3ff660
003ff770  05 00 a0 e1                                      mov r0, r5
003ff774  f0 65 d5 e1                                      ldrsh r6, [r5, #0x50]
003ff778  a2 e9 ff eb                                      bl #0x3f9e08
003ff77c  58 30 90 e5                                      ldr r3, [r0, #0x58]
003ff780  0e 00 53 e3                                      cmp r3, #0xe
003ff784  1c 00 00 0a                                      beq #0x3ff7fc
003ff788  00 00 9a e5                                      ldr r0, [sl]
003ff78c  06 10 a0 e1                                      mov r1, r6
003ff790  79 ea ff eb                                      bl #0x3fa17c
003ff794  05 00 a0 e1                                      mov r0, r5
003ff798  00 30 95 e5                                      ldr r3, [r5]
003ff79c  0f e0 a0 e1                                      mov lr, pc
003ff7a0  04 f0 93 e5                                      ldr pc, [r3, #4]
003ff7a4  ce ff ff ea                                      b #0x3ff6e4
003ff7a8  04 30 94 e5                                      ldr r3, [r4, #4]
003ff7ac  03 00 a0 e1                                      mov r0, r3
003ff7b0  00 30 93 e5                                      ldr r3, [r3]
003ff7b4  0f e0 a0 e1                                      mov lr, pc
003ff7b8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003ff7bc  00 00 50 e3                                      cmp r0, #0
003ff7c0  c2 ff ff 0a                                      beq #0x3ff6d0
003ff7c4  84 30 9f e5                                      ldr r3, [pc, #0x84]
003ff7c8  04 10 94 e5                                      ldr r1, [r4, #4]
003ff7cc  03 30 96 e7                                      ldr r3, [r6, r3]
003ff7d0  40 00 93 e5                                      ldr r0, [r3, #0x40]
003ff7d4  08 be fd eb                                      bl #0x36effc
003ff7d8  00 00 50 e3                                      cmp r0, #0
003ff7dc  bb ff ff 0a                                      beq #0x3ff6d0
003ff7e0  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
003ff7e4  00 00 8f e0                                      add r0, pc, r0
003ff7e8  e0 91 fe eb                                      bl #0x3a3f70
003ff7ec  00 10 a0 e1                                      mov r1, r0
003ff7f0  05 00 a0 e1                                      mov r0, r5
003ff7f4  ef 06 fe eb                                      bl #0x3813b8
003ff7f8  b4 ff ff ea                                      b #0x3ff6d0
003ff7fc  00 00 9a e5                                      ldr r0, [sl]
003ff800  dc 12 d4 e1                                      ldrsb r1, [r4, #0x2c]
003ff804  f0 35 d0 e1                                      ldrsh r3, [r0, #0x50]
003ff808  01 10 63 e0                                      rsb r1, r3, r1
003ff80c  06 00 51 e1                                      cmp r1, r6
003ff810  06 10 a0 a1                                      movge r1, r6
003ff814  c1 1f c1 b1                                      biclt r1, r1, r1, asr #31
003ff818  dc ff ff ea                                      b #0x3ff790
003ff81c  05 00 a0 e1                                      mov r0, r5
003ff820  78 e9 ff eb                                      bl #0x3f9e08
003ff824  58 30 90 e5                                      ldr r3, [r0, #0x58]
003ff828  0e 00 53 e3                                      cmp r3, #0xe
003ff82c  24 50 84 05                                      streq r5, [r4, #0x24]
003ff830  75 ff ff 1a                                      bne #0x3ff60c
003ff834  76 ff ff ea                                      b #0x3ff614
003ff838  08 00 84 e2                                      add r0, r4, #8
003ff83c  04 20 8d e2                                      add r2, sp, #4
003ff840  c1 fd ff eb                                      bl #0x3fef4c
003ff844  9a ff ff ea                                      b #0x3ff6b4
; mapping-symbol data/literal pool
003ff848  a4 54 59 00 70 1d 00 00 f4 37 00 00 7c 7c 4c 00  .byte 0xa4, 0x54, 0x59, 0x00, 0x70, 0x1d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x7c, 0x7c, 0x4c, 0x00

; FUNCTION 0x003ff858, declared_size=492, range_size=492, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory14TransferItemToEjRS_ibb
; demangled: ItemInventory::TransferItemTo(unsigned int, ItemInventory&, int, bool, bool)
; decoder-mode: arm
003ff858  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ff85c  00 40 a0 e1                                      mov r4, r0
003ff860  0c 50 90 e5                                      ldr r5, [r0, #0xc]
003ff864  08 00 90 e5                                      ldr r0, [r0, #8]
003ff868  bc c1 9f e5                                      ldr ip, [pc, #0x1bc]
003ff86c  08 d0 4d e2                                      sub sp, sp, #8
003ff870  05 00 60 e0                                      rsb r0, r0, r5
003ff874  40 01 51 e1                                      cmp r1, r0, asr #2
003ff878  0c c0 8f e0                                      add ip, pc, ip
003ff87c  01 60 a0 e1                                      mov r6, r1
003ff880  02 90 a0 e1                                      mov sb, r2
003ff884  03 70 a0 e1                                      mov r7, r3
003ff888  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
003ff88c  2c 80 dd e5                                      ldrb r8, [sp, #0x2c]
003ff890  08 00 00 3a                                      blo #0x3ff8b8
003ff894  94 31 9f e5                                      ldr r3, [pc, #0x194]
003ff898  03 30 9c e7                                      ldr r3, [ip, r3]
003ff89c  00 30 93 e5                                      ldr r3, [r3]
003ff8a0  02 00 53 e3                                      cmp r3, #2
003ff8a4  00 30 a0 03                                      moveq r3, #0
003ff8a8  00 30 83 05                                      streq r3, [r3]
003ff8ac  01 00 00 0a                                      beq #0x3ff8b8
003ff8b0  01 00 53 e3                                      cmp r3, #1
003ff8b4  4d 00 00 0a                                      beq #0x3ff9f0
003ff8b8  00 00 57 e3                                      cmp r7, #0
003ff8bc  58 00 00 da                                      ble #0x3ffa24
003ff8c0  08 50 94 e5                                      ldr r5, [r4, #8]
003ff8c4  00 00 56 e3                                      cmp r6, #0
003ff8c8  06 51 85 10                                      addne r5, r5, r6, lsl #2
003ff8cc  00 30 95 e5                                      ldr r3, [r5]
003ff8d0  00 00 93 e5                                      ldr r0, [r3]
003ff8d4  f0 65 d0 e1                                      ldrsh r6, [r0, #0x50]
003ff8d8  07 00 56 e1                                      cmp r6, r7
003ff8dc  05 00 00 aa                                      bge #0x3ff8f8
003ff8e0  00 00 56 e3                                      cmp r6, #0
003ff8e4  06 70 a0 01                                      moveq r7, r6
003ff8e8  10 00 00 1a                                      bne #0x3ff930
003ff8ec  07 00 a0 e1                                      mov r0, r7
003ff8f0  08 d0 8d e2                                      add sp, sp, #8
003ff8f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ff8f8  42 e9 ff eb                                      bl #0x3f9e08
003ff8fc  07 00 56 e1                                      cmp r6, r7
003ff900  0b 00 00 0a                                      beq #0x3ff934
003ff904  00 30 95 e5                                      ldr r3, [r5]
003ff908  07 10 a0 e1                                      mov r1, r7
003ff90c  00 00 93 e5                                      ldr r0, [r3]
003ff910  b2 f2 ff eb                                      bl #0x3fc3e0
003ff914  0a 20 a0 e1                                      mov r2, sl
003ff918  00 10 a0 e1                                      mov r1, r0
003ff91c  08 30 a0 e1                                      mov r3, r8
003ff920  09 00 a0 e1                                      mov r0, sb
003ff924  08 d0 8d e2                                      add sp, sp, #8
003ff928  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003ff92c  28 ff ff ea                                      b #0x3ff5d4
003ff930  34 e9 ff eb                                      bl #0x3f9e08
003ff934  00 30 95 e5                                      ldr r3, [r5]
003ff938  d4 10 d3 e1                                      ldrsb r1, [r3, #4]
003ff93c  01 00 71 e3                                      cmn r1, #1
003ff940  05 00 00 0a                                      beq #0x3ff95c
003ff944  00 30 94 e5                                      ldr r3, [r4]
003ff948  04 00 a0 e1                                      mov r0, r4
003ff94c  00 20 a0 e3                                      mov r2, #0
003ff950  0f e0 a0 e1                                      mov lr, pc
003ff954  20 f0 93 e5                                      ldr pc, [r3, #0x20]
003ff958  00 30 95 e5                                      ldr r3, [r5]
003ff95c  d5 10 d3 e1                                      ldrsb r1, [r3, #5]
003ff960  01 00 71 e3                                      cmn r1, #1
003ff964  05 00 00 0a                                      beq #0x3ff980
003ff968  00 30 94 e5                                      ldr r3, [r4]
003ff96c  04 00 a0 e1                                      mov r0, r4
003ff970  01 20 a0 e3                                      mov r2, #1
003ff974  0f e0 a0 e1                                      mov lr, pc
003ff978  20 f0 93 e5                                      ldr pc, [r3, #0x20]
003ff97c  00 30 95 e5                                      ldr r3, [r5]
003ff980  00 10 93 e5                                      ldr r1, [r3]
003ff984  24 30 94 e5                                      ldr r3, [r4, #0x24]
003ff988  0a 20 a0 e1                                      mov r2, sl
003ff98c  09 00 a0 e1                                      mov r0, sb
003ff990  03 00 51 e1                                      cmp r1, r3
003ff994  00 30 a0 03                                      moveq r3, #0
003ff998  24 30 84 05                                      streq r3, [r4, #0x24]
003ff99c  00 30 95 05                                      ldreq r3, [r5]
003ff9a0  05 60 a0 e1                                      mov r6, r5
003ff9a4  00 10 93 05                                      ldreq r1, [r3]
003ff9a8  08 30 a0 e1                                      mov r3, r8
003ff9ac  08 ff ff eb                                      bl #0x3ff5d4
003ff9b0  00 70 a0 e1                                      mov r7, r0
003ff9b4  04 00 96 e4                                      ldr r0, [r6], #4
003ff9b8  a0 42 fc eb                                      bl #0x310440
003ff9bc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003ff9c0  03 00 56 e1                                      cmp r6, r3
003ff9c4  06 00 00 0a                                      beq #0x3ff9e4
003ff9c8  06 20 53 e0                                      subs r2, r3, r6
003ff9cc  03 60 a0 01                                      moveq r6, r3
003ff9d0  03 00 00 0a                                      beq #0x3ff9e4
003ff9d4  06 10 a0 e1                                      mov r1, r6
003ff9d8  05 00 a0 e1                                      mov r0, r5
003ff9dc  55 39 fc eb                                      bl #0x30df38
003ff9e0  0c 60 94 e5                                      ldr r6, [r4, #0xc]
003ff9e4  04 60 46 e2                                      sub r6, r6, #4
003ff9e8  0c 60 84 e5                                      str r6, [r4, #0xc]
003ff9ec  be ff ff ea                                      b #0x3ff8ec
003ff9f0  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003ff9f4  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003ff9f8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003ff9fc  00 00 9c e7                                      ldr r0, [ip, r0]
003ffa00  38 30 9f e5                                      ldr r3, [pc, #0x38]
003ffa04  aa c1 00 e3                                      movw ip, #0x1aa
003ffa08  01 10 8f e0                                      add r1, pc, r1
003ffa0c  02 20 8f e0                                      add r2, pc, r2
003ffa10  03 30 8f e0                                      add r3, pc, r3
003ffa14  a8 00 80 e2                                      add r0, r0, #0xa8
003ffa18  00 c0 8d e5                                      str ip, [sp]
003ffa1c  78 39 fc eb                                      bl #0x30e004
003ffa20  a4 ff ff ea                                      b #0x3ff8b8
003ffa24  00 70 e0 e3                                      mvn r7, #0
003ffa28  af ff ff ea                                      b #0x3ff8ec
; mapping-symbol data/literal pool
003ffa2c  18 52 59 00 c0 39 00 00 c0 19 00 00 d0 e9 4b 00  .byte 0x18, 0x52, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xd0, 0xe9, 0x4b, 0x00
003ffa3c  7c 79 4c 00 98 79 4c 00                          .byte 0x7c, 0x79, 0x4c, 0x00, 0x98, 0x79, 0x4c, 0x00

; FUNCTION 0x003ffa44, declared_size=36, range_size=36, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory14TransferItemToEjRS_bb
; demangled: ItemInventory::TransferItemTo(unsigned int, ItemInventory&, bool, bool)
; decoder-mode: arm
003ffa44  04 e0 2d e5                                      str lr, [sp, #-4]!
003ffa48  0c d0 4d e2                                      sub sp, sp, #0xc
003ffa4c  10 c0 dd e5                                      ldrb ip, [sp, #0x10]
003ffa50  00 30 8d e5                                      str r3, [sp]
003ffa54  02 31 e0 e3                                      mvn r3, #0x80000000
003ffa58  04 c0 8d e5                                      str ip, [sp, #4]
003ffa5c  7d ff ff eb                                      bl #0x3ff858
003ffa60  0c d0 8d e2                                      add sp, sp, #0xc
003ffa64  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x003ffa68, declared_size=472, range_size=472, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory19TransferInventoryToERS_bb
; demangled: ItemInventory::TransferInventoryTo(ItemInventory&, bool, bool)
; decoder-mode: arm
003ffa68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003ffa6c  00 70 a0 e1                                      mov r7, r0
003ffa70  08 40 90 e5                                      ldr r4, [r0, #8]
003ffa74  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003ffa78  a8 b1 9f e5                                      ldr fp, [pc, #0x1a8]
003ffa7c  44 d0 4d e2                                      sub sp, sp, #0x44
003ffa80  04 00 50 e1                                      cmp r0, r4
003ffa84  0b b0 8f e0                                      add fp, pc, fp
003ffa88  01 60 a0 e1                                      mov r6, r1
003ffa8c  02 90 a0 e1                                      mov sb, r2
003ffa90  03 80 a0 e1                                      mov r8, r3
003ffa94  5d 00 00 0a                                      beq #0x3ffc10
003ffa98  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
003ffa9c  8c 11 9f e5                                      ldr r1, [pc, #0x18c]
003ffaa0  8c 21 9f e5                                      ldr r2, [pc, #0x18c]
003ffaa4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003ffaa8  88 31 9f e5                                      ldr r3, [pc, #0x188]
003ffaac  08 10 8d e5                                      str r1, [sp, #8]
003ffab0  24 10 8d e2                                      add r1, sp, #0x24
003ffab4  03 30 8f e0                                      add r3, pc, r3
003ffab8  0c 30 8d e5                                      str r3, [sp, #0xc]
003ffabc  78 31 9f e5                                      ldr r3, [pc, #0x178]
003ffac0  14 20 8d e5                                      str r2, [sp, #0x14]
003ffac4  04 40 84 e2                                      add r4, r4, #4
003ffac8  03 30 8f e0                                      add r3, pc, r3
003ffacc  10 30 8d e5                                      str r3, [sp, #0x10]
003ffad0  30 50 86 e2                                      add r5, r6, #0x30
003ffad4  18 10 8d e5                                      str r1, [sp, #0x18]
003ffad8  04 10 14 e5                                      ldr r1, [r4, #-4]
003ffadc  09 20 a0 e1                                      mov r2, sb
003ffae0  08 30 a0 e1                                      mov r3, r8
003ffae4  00 10 91 e5                                      ldr r1, [r1]
003ffae8  06 00 a0 e1                                      mov r0, r6
003ffaec  b8 fe ff eb                                      bl #0x3ff5d4
003ffaf0  04 30 14 e5                                      ldr r3, [r4, #-4]
003ffaf4  00 00 93 e5                                      ldr r0, [r3]
003ffaf8  c0 e8 ff eb                                      bl #0x3f9e00
003ffafc  04 30 96 e5                                      ldr r3, [r6, #4]
003ffb00  00 a0 a0 e1                                      mov sl, r0
003ffb04  00 00 53 e3                                      cmp r3, #0
003ffb08  36 00 00 0a                                      beq #0x3ffbe8
003ffb0c  03 00 a0 e1                                      mov r0, r3
003ffb10  00 30 93 e5                                      ldr r3, [r3]
003ffb14  0f e0 a0 e1                                      mov lr, pc
003ffb18  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003ffb1c  00 00 50 e3                                      cmp r0, #0
003ffb20  30 00 00 0a                                      beq #0x3ffbe8
003ffb24  30 30 96 e5                                      ldr r3, [r6, #0x30]
003ffb28  05 00 53 e1                                      cmp r3, r5
003ffb2c  06 00 00 0a                                      beq #0x3ffb4c
003ffb30  08 20 93 e5                                      ldr r2, [r3, #8]
003ffb34  02 00 5a e1                                      cmp sl, r2
003ffb38  03 00 00 0a                                      beq #0x3ffb4c
003ffb3c  00 30 93 e5                                      ldr r3, [r3]
003ffb40  03 00 55 e1                                      cmp r5, r3
003ffb44  f9 ff ff 1a                                      bne #0x3ffb30
003ffb48  05 30 a0 e1                                      mov r3, r5
003ffb4c  03 00 55 e1                                      cmp r5, r3
003ffb50  24 00 00 0a                                      beq #0x3ffbe8
003ffb54  08 30 9d e5                                      ldr r3, [sp, #8]
003ffb58  03 20 9b e7                                      ldr r2, [fp, r3]
003ffb5c  02 00 a0 e1                                      mov r0, r2
003ffb60  04 20 8d e5                                      str r2, [sp, #4]
003ffb64  8a 7e fc eb                                      bl #0x31f594
003ffb68  00 30 50 e2                                      subs r3, r0, #0
003ffb6c  04 20 9d e5                                      ldr r2, [sp, #4]
003ffb70  1c 00 00 0a                                      beq #0x3ffbe8
003ffb74  04 c0 96 e5                                      ldr ip, [r6, #4]
003ffb78  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003ffb7c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003ffb80  10 20 9d e5                                      ldr r2, [sp, #0x10]
003ffb84  04 30 8d e5                                      str r3, [sp, #4]
003ffb88  00 c0 8d e5                                      str ip, [sp]
003ffb8c  12 14 03 eb                                      bl #0x4c4bdc
003ffb90  14 10 9d e5                                      ldr r1, [sp, #0x14]
003ffb94  04 30 9d e5                                      ldr r3, [sp, #4]
003ffb98  00 c0 9d e5                                      ldr ip, [sp]
003ffb9c  01 20 9b e7                                      ldr r2, [fp, r1]
003ffba0  28 00 8d e5                                      str r0, [sp, #0x28]
003ffba4  18 10 9d e5                                      ldr r1, [sp, #0x18]
003ffba8  08 20 82 e2                                      add r2, r2, #8
003ffbac  03 00 a0 e1                                      mov r0, r3
003ffbb0  24 20 8d e5                                      str r2, [sp, #0x24]
003ffbb4  00 30 a0 e3                                      mov r3, #0
003ffbb8  00 20 e0 e3                                      mvn r2, #0
003ffbbc  35 30 cd e5                                      strb r3, [sp, #0x35]
003ffbc0  34 30 cd e5                                      strb r3, [sp, #0x34]
003ffbc4  2c c0 8d e5                                      str ip, [sp, #0x2c]
003ffbc8  3c a0 8d e5                                      str sl, [sp, #0x3c]
003ffbcc  30 20 8d e5                                      str r2, [sp, #0x30]
003ffbd0  38 20 8d e5                                      str r2, [sp, #0x38]
003ffbd4  2d e5 fc eb                                      bl #0x339090
003ffbd8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003ffbdc  01 30 9b e7                                      ldr r3, [fp, r1]
003ffbe0  08 30 83 e2                                      add r3, r3, #8
003ffbe4  24 30 8d e5                                      str r3, [sp, #0x24]
003ffbe8  04 00 14 e5                                      ldr r0, [r4, #-4]
003ffbec  13 42 fc eb                                      bl #0x310440
003ffbf0  0c 30 97 e5                                      ldr r3, [r7, #0xc]
003ffbf4  04 20 a0 e1                                      mov r2, r4
003ffbf8  04 40 84 e2                                      add r4, r4, #4
003ffbfc  02 00 53 e1                                      cmp r3, r2
003ffc00  b4 ff ff 1a                                      bne #0x3ffad8
003ffc04  08 20 97 e5                                      ldr r2, [r7, #8]
003ffc08  02 00 53 e1                                      cmp r3, r2
003ffc0c  0c 20 87 15                                      strne r2, [r7, #0xc]
003ffc10  07 00 a0 e1                                      mov r0, r7
003ffc14  06 20 a0 e1                                      mov r2, r6
003ffc18  20 10 97 e5                                      ldr r1, [r7, #0x20]
003ffc1c  61 f9 ff eb                                      bl #0x3fe1a8
003ffc20  44 d0 8d e2                                      add sp, sp, #0x44
003ffc24  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003ffc28  0c 50 59 00 b0 0b 00 00 f4 37 00 00 34 14 00 00  .byte 0x0c, 0x50, 0x59, 0x00, 0xb0, 0x0b, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x34, 0x14, 0x00, 0x00
003ffc38  b4 2e 4c 00 a8 79 4c 00                          .byte 0xb4, 0x2e, 0x4c, 0x00, 0xa8, 0x79, 0x4c, 0x00

; FUNCTION 0x003ffc40, declared_size=220, range_size=220, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory12SetPotionQtyEi
; demangled: ItemInventory::SetPotionQty(int)
; decoder-mode: arm
003ffc40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ffc44  24 50 90 e5                                      ldr r5, [r0, #0x24]
003ffc48  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003ffc4c  00 40 a0 e1                                      mov r4, r0
003ffc50  00 00 55 e3                                      cmp r5, #0
003ffc54  01 60 a0 e1                                      mov r6, r1
003ffc58  03 30 8f e0                                      add r3, pc, r3
003ffc5c  07 00 00 0a                                      beq #0x3ffc80
003ffc60  00 00 51 e3                                      cmp r1, #0
003ffc64  02 00 00 1a                                      bne #0x3ffc74
003ffc68  05 10 a0 e1                                      mov r1, r5
003ffc6c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003ffc70  d8 fa ff ea                                      b #0x3fe7d8
003ffc74  05 00 a0 e1                                      mov r0, r5
003ffc78  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003ffc7c  18 e9 ff ea                                      b #0x3fa0e4
003ffc80  88 20 9f e5                                      ldr r2, [pc, #0x88]
003ffc84  02 20 93 e7                                      ldr r2, [r3, r2]
003ffc88  00 70 92 e5                                      ldr r7, [r2]
003ffc8c  00 00 57 e3                                      cmp r7, #0
003ffc90  1b 00 00 0a                                      beq #0x3ffd04
003ffc94  78 20 9f e5                                      ldr r2, [pc, #0x78]
003ffc98  78 a0 9f e5                                      ldr sl, [pc, #0x78]
003ffc9c  02 30 93 e7                                      ldr r3, [r3, r2]
003ffca0  0a a0 8f e0                                      add sl, pc, sl
003ffca4  00 80 93 e5                                      ldr r8, [r3]
003ffca8  02 00 00 ea                                      b #0x3ffcb8
003ffcac  01 50 85 e2                                      add r5, r5, #1
003ffcb0  07 00 55 e1                                      cmp r5, r7
003ffcb4  12 00 00 0a                                      beq #0x3ffd04
003ffcb8  05 11 98 e7                                      ldr r1, [r8, r5, lsl #2]
003ffcbc  0a 00 a0 e1                                      mov r0, sl
003ffcc0  95 39 fc eb                                      bl #0x30e31c
003ffcc4  00 00 50 e3                                      cmp r0, #0
003ffcc8  f7 ff ff 1a                                      bne #0x3ffcac
003ffccc  05 70 a0 e1                                      mov r7, r5
003ffcd0  00 10 a0 e3                                      mov r1, #0
003ffcd4  6c 00 a0 e3                                      mov r0, #0x6c
003ffcd8  24 42 fc eb                                      bl #0x310570
003ffcdc  07 10 a0 e1                                      mov r1, r7
003ffce0  06 20 a0 e1                                      mov r2, r6
003ffce4  00 50 a0 e1                                      mov r5, r0
003ffce8  5f f1 ff eb                                      bl #0x3fc26c
003ffcec  04 00 a0 e1                                      mov r0, r4
003ffcf0  05 10 a0 e1                                      mov r1, r5
003ffcf4  01 20 a0 e3                                      mov r2, #1
003ffcf8  00 30 a0 e3                                      mov r3, #0
003ffcfc  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003ffd00  33 fe ff ea                                      b #0x3ff5d4
003ffd04  00 70 e0 e3                                      mvn r7, #0
003ffd08  f0 ff ff ea                                      b #0x3ffcd0
; mapping-symbol data/literal pool
003ffd0c  38 4e 59 00 60 0d 00 00 54 1c 00 00 e0 77 4c 00  .byte 0x38, 0x4e, 0x59, 0x00, 0x60, 0x0d, 0x00, 0x00, 0x54, 0x1c, 0x00, 0x00, 0xe0, 0x77, 0x4c, 0x00

; FUNCTION 0x003ffd1c, declared_size=4, range_size=4, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory15AddItemInstanceEP12ItemInstancebb
; demangled: ItemInventory::AddItemInstance(ItemInstance*, bool, bool)
; decoder-mode: arm
003ffd1c  2c fe ff ea                                      b #0x3ff5d4

; FUNCTION 0x003ffd20, declared_size=24, range_size=24, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory20GetNumEquipmentSlotsEv
; demangled: ItemInventory::GetNumEquipmentSlots() const
; decoder-mode: arm
003ffd20  14 30 90 e5                                      ldr r3, [r0, #0x14]
003ffd24  00 20 93 e5                                      ldr r2, [r3]
003ffd28  04 00 93 e5                                      ldr r0, [r3, #4]
003ffd2c  00 00 62 e0                                      rsb r0, r2, r0
003ffd30  40 01 a0 e1                                      asr r0, r0, #2
003ffd34  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ffd38, declared_size=28, range_size=28, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory14CanMeleeAttackEv
; demangled: ItemInventory::CanMeleeAttack() const
; decoder-mode: arm
003ffd38  10 40 2d e9                                      push {r4, lr}
003ffd3c  00 30 90 e5                                      ldr r3, [r0]
003ffd40  0f e0 a0 e1                                      mov lr, pc
003ffd44  08 f0 93 e5                                      ldr pc, [r3, #8]
003ffd48  01 00 20 e2                                      eor r0, r0, #1
003ffd4c  70 00 ef e6                                      uxtb r0, r0
003ffd50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ffd54, declared_size=152, range_size=152, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory22GetModularCategoryNameEj
; demangled: ItemInventory::GetModularCategoryName(unsigned int) const
; decoder-mode: arm
003ffd54  08 00 51 e3                                      cmp r1, #8
003ffd58  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
003ffd5c  08 00 00 ea                                      b #0x3ffd84
003ffd60  0f 00 00 ea                                      b #0x3ffda4
003ffd64  11 00 00 ea                                      b #0x3ffdb0
003ffd68  13 00 00 ea                                      b #0x3ffdbc
003ffd6c  15 00 00 ea                                      b #0x3ffdc8
003ffd70  05 00 00 ea                                      b #0x3ffd8c
003ffd74  02 00 00 ea                                      b #0x3ffd84
003ffd78  01 00 00 ea                                      b #0x3ffd84
003ffd7c  00 00 00 ea                                      b #0x3ffd84
003ffd80  04 00 00 ea                                      b #0x3ffd98
003ffd84  00 00 a0 e3                                      mov r0, #0
003ffd88  1e ff 2f e1                                      bx lr
003ffd8c  40 00 9f e5                                      ldr r0, [pc, #0x40]
003ffd90  00 00 8f e0                                      add r0, pc, r0
003ffd94  1e ff 2f e1                                      bx lr
003ffd98  38 00 9f e5                                      ldr r0, [pc, #0x38]
003ffd9c  00 00 8f e0                                      add r0, pc, r0
003ffda0  1e ff 2f e1                                      bx lr
003ffda4  30 00 9f e5                                      ldr r0, [pc, #0x30]
003ffda8  00 00 8f e0                                      add r0, pc, r0
003ffdac  1e ff 2f e1                                      bx lr
003ffdb0  28 00 9f e5                                      ldr r0, [pc, #0x28]
003ffdb4  00 00 8f e0                                      add r0, pc, r0
003ffdb8  1e ff 2f e1                                      bx lr
003ffdbc  20 00 9f e5                                      ldr r0, [pc, #0x20]
003ffdc0  00 00 8f e0                                      add r0, pc, r0
003ffdc4  1e ff 2f e1                                      bx lr
003ffdc8  18 00 9f e5                                      ldr r0, [pc, #0x18]
003ffdcc  00 00 8f e0                                      add r0, pc, r0
003ffdd0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003ffdd4  30 77 4c 00 34 77 4c 00 f0 76 4c 00 d4 76 4c 00  .byte 0x30, 0x77, 0x4c, 0x00, 0x34, 0x77, 0x4c, 0x00, 0xf0, 0x76, 0x4c, 0x00, 0xd4, 0x76, 0x4c, 0x00
003ffde4  e8 76 4c 00 ec 76 4c 00                          .byte 0xe8, 0x76, 0x4c, 0x00, 0xec, 0x76, 0x4c, 0x00

; FUNCTION 0x003ffdec, declared_size=80, range_size=80, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory15GetEquippedItemEj
; demangled: ItemInventory::GetEquippedItem(unsigned int) const
; decoder-mode: arm
003ffdec  70 40 2d e9                                      push {r4, r5, r6, lr}
003ffdf0  14 30 90 e5                                      ldr r3, [r0, #0x14]
003ffdf4  00 50 a0 e1                                      mov r5, r0
003ffdf8  01 40 a0 e1                                      mov r4, r1
003ffdfc  0c 00 93 e8                                      ldm r3, {r2, r3}
003ffe00  03 30 62 e0                                      rsb r3, r2, r3
003ffe04  43 01 51 e1                                      cmp r1, r3, asr #2
003ffe08  01 00 00 3a                                      blo #0x3ffe14
003ffe0c  00 00 a0 e3                                      mov r0, #0
003ffe10  70 80 bd e8                                      pop {r4, r5, r6, pc}
003ffe14  23 f2 ff eb                                      bl #0x3fc6a8
003ffe18  0c 30 a0 e3                                      mov r3, #0xc
003ffe1c  93 00 03 e0                                      mul r3, r3, r0
003ffe20  14 20 95 e5                                      ldr r2, [r5, #0x14]
003ffe24  03 30 92 e7                                      ldr r3, [r2, r3]
003ffe28  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
003ffe2c  00 00 53 e3                                      cmp r3, #0
003ffe30  f5 ff ff 0a                                      beq #0x3ffe0c
003ffe34  00 00 93 e5                                      ldr r0, [r3]
003ffe38  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003ffe3c, declared_size=80, range_size=80, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory15GetEquippedItemEj
; demangled: ItemInventory::GetEquippedItem(unsigned int)
; decoder-mode: arm
003ffe3c  70 40 2d e9                                      push {r4, r5, r6, lr}
003ffe40  14 30 90 e5                                      ldr r3, [r0, #0x14]
003ffe44  00 50 a0 e1                                      mov r5, r0
003ffe48  01 40 a0 e1                                      mov r4, r1
003ffe4c  0c 00 93 e8                                      ldm r3, {r2, r3}
003ffe50  03 30 62 e0                                      rsb r3, r2, r3
003ffe54  43 01 51 e1                                      cmp r1, r3, asr #2
003ffe58  01 00 00 3a                                      blo #0x3ffe64
003ffe5c  00 00 a0 e3                                      mov r0, #0
003ffe60  70 80 bd e8                                      pop {r4, r5, r6, pc}
003ffe64  0f f2 ff eb                                      bl #0x3fc6a8
003ffe68  0c 30 a0 e3                                      mov r3, #0xc
003ffe6c  93 00 03 e0                                      mul r3, r3, r0
003ffe70  14 20 95 e5                                      ldr r2, [r5, #0x14]
003ffe74  03 30 92 e7                                      ldr r3, [r2, r3]
003ffe78  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
003ffe7c  00 00 53 e3                                      cmp r3, #0
003ffe80  f5 ff ff 0a                                      beq #0x3ffe5c
003ffe84  00 00 93 e5                                      ldr r0, [r3]
003ffe88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003ffe8c, declared_size=48, range_size=48, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory17HasMainHandWeaponEv
; demangled: ItemInventory::HasMainHandWeapon() const
; decoder-mode: arm
003ffe8c  10 40 2d e9                                      push {r4, lr}
003ffe90  01 10 a0 e3                                      mov r1, #1
003ffe94  00 40 a0 e1                                      mov r4, r0
003ffe98  02 f2 ff eb                                      bl #0x3fc6a8
003ffe9c  0c 30 a0 e3                                      mov r3, #0xc
003ffea0  93 00 03 e0                                      mul r3, r3, r0
003ffea4  14 20 94 e5                                      ldr r2, [r4, #0x14]
003ffea8  03 30 92 e7                                      ldr r3, [r2, r3]
003ffeac  04 00 93 e5                                      ldr r0, [r3, #4]
003ffeb0  00 00 50 e2                                      subs r0, r0, #0
003ffeb4  01 00 a0 13                                      movne r0, #1
003ffeb8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ffebc, declared_size=116, range_size=116, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory14CanRangeAttackERiS0_S0_
; demangled: ItemInventory::CanRangeAttack(int&, int&, int&) const
; decoder-mode: arm
003ffebc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003ffec0  00 c0 90 e5                                      ldr ip, [r0]
003ffec4  00 40 a0 e1                                      mov r4, r0
003ffec8  01 50 a0 e1                                      mov r5, r1
003ffecc  02 60 a0 e1                                      mov r6, r2
003ffed0  03 70 a0 e1                                      mov r7, r3
003ffed4  0f e0 a0 e1                                      mov lr, pc
003ffed8  08 f0 9c e5                                      ldr pc, [ip, #8]
003ffedc  00 00 50 e3                                      cmp r0, #0
003ffee0  11 00 00 0a                                      beq #0x3fff2c
003ffee4  01 10 a0 e3                                      mov r1, #1
003ffee8  04 00 a0 e1                                      mov r0, r4
003ffeec  ed f1 ff eb                                      bl #0x3fc6a8
003ffef0  0c 30 a0 e3                                      mov r3, #0xc
003ffef4  14 20 94 e5                                      ldr r2, [r4, #0x14]
003ffef8  93 00 03 e0                                      mul r3, r3, r0
003ffefc  03 30 92 e7                                      ldr r3, [r2, r3]
003fff00  04 30 93 e5                                      ldr r3, [r3, #4]
003fff04  00 00 93 e5                                      ldr r0, [r3]
003fff08  be e7 ff eb                                      bl #0x3f9e08
003fff0c  98 20 90 e5                                      ldr r2, [r0, #0x98]
003fff10  00 30 a0 e1                                      mov r3, r0
003fff14  01 00 a0 e3                                      mov r0, #1
003fff18  00 20 85 e5                                      str r2, [r5]
003fff1c  9c 20 93 e5                                      ldr r2, [r3, #0x9c]
003fff20  00 20 86 e5                                      str r2, [r6]
003fff24  a0 30 93 e5                                      ldr r3, [r3, #0xa0]
003fff28  00 30 87 e5                                      str r3, [r7]
003fff2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003fff30, declared_size=116, range_size=116, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory14CanMeleeAttackERi
; demangled: ItemInventory::CanMeleeAttack(int&) const
; decoder-mode: arm
003fff30  70 40 2d e9                                      push {r4, r5, r6, lr}
003fff34  00 30 90 e5                                      ldr r3, [r0]
003fff38  00 40 a0 e1                                      mov r4, r0
003fff3c  01 50 a0 e1                                      mov r5, r1
003fff40  0f e0 a0 e1                                      mov lr, pc
003fff44  08 f0 93 e5                                      ldr pc, [r3, #8]
003fff48  00 00 50 e3                                      cmp r0, #0
003fff4c  01 00 00 0a                                      beq #0x3fff58
003fff50  00 00 a0 e3                                      mov r0, #0
003fff54  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fff58  04 00 a0 e1                                      mov r0, r4
003fff5c  01 10 a0 e3                                      mov r1, #1
003fff60  d0 f1 ff eb                                      bl #0x3fc6a8
003fff64  0c 30 a0 e3                                      mov r3, #0xc
003fff68  93 00 03 e0                                      mul r3, r3, r0
003fff6c  14 20 94 e5                                      ldr r2, [r4, #0x14]
003fff70  03 30 92 e7                                      ldr r3, [r2, r3]
003fff74  04 30 93 e5                                      ldr r3, [r3, #4]
003fff78  00 00 53 e3                                      cmp r3, #0
003fff7c  05 00 00 0a                                      beq #0x3fff98
003fff80  00 00 93 e5                                      ldr r0, [r3]
003fff84  9f e7 ff eb                                      bl #0x3f9e08
003fff88  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
003fff8c  01 00 a0 e3                                      mov r0, #1
003fff90  00 30 85 e5                                      str r3, [r5]
003fff94  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fff98  00 30 85 e5                                      str r3, [r5]
003fff9c  01 00 a0 e3                                      mov r0, #1
003fffa0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003fffa4, declared_size=112, range_size=112, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory15HasRangedWeaponEv
; demangled: ItemInventory::HasRangedWeapon() const
; decoder-mode: arm
003fffa4  70 40 2d e9                                      push {r4, r5, r6, lr}
003fffa8  01 10 a0 e3                                      mov r1, #1
003fffac  00 40 a0 e1                                      mov r4, r0
003fffb0  bc f1 ff eb                                      bl #0x3fc6a8
003fffb4  0c 50 a0 e3                                      mov r5, #0xc
003fffb8  95 00 05 e0                                      mul r5, r5, r0
003fffbc  14 30 94 e5                                      ldr r3, [r4, #0x14]
003fffc0  05 30 93 e7                                      ldr r3, [r3, r5]
003fffc4  04 00 93 e5                                      ldr r0, [r3, #4]
003fffc8  00 00 50 e3                                      cmp r0, #0
003fffcc  0d 00 00 0a                                      beq #0x400008
003fffd0  00 00 90 e5                                      ldr r0, [r0]
003fffd4  8b e7 ff eb                                      bl #0x3f9e08
003fffd8  58 30 90 e5                                      ldr r3, [r0, #0x58]
003fffdc  04 00 53 e3                                      cmp r3, #4
003fffe0  09 00 00 0a                                      beq #0x40000c
003fffe4  14 30 94 e5                                      ldr r3, [r4, #0x14]
003fffe8  05 30 93 e7                                      ldr r3, [r3, r5]
003fffec  04 30 93 e5                                      ldr r3, [r3, #4]
003ffff0  00 00 93 e5                                      ldr r0, [r3]
003ffff4  83 e7 ff eb                                      bl #0x3f9e08
003ffff8  58 00 90 e5                                      ldr r0, [r0, #0x58]
003ffffc  05 00 50 e3                                      cmp r0, #5
00400000  00 00 a0 13                                      movne r0, #0
00400004  01 00 a0 03                                      moveq r0, #1
00400008  70 80 bd e8                                      pop {r4, r5, r6, pc}
0040000c  01 00 a0 e3                                      mov r0, #1
00400010  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00400014, declared_size=4, range_size=4, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory14CanRangeAttackEv
; demangled: ItemInventory::CanRangeAttack() const
; decoder-mode: arm
00400014  e2 ff ff ea                                      b #0x3fffa4

; FUNCTION 0x00400018, declared_size=104, range_size=104, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory12HasAxeOrMaceEv
; demangled: ItemInventory::HasAxeOrMace() const
; decoder-mode: arm
00400018  70 40 2d e9                                      push {r4, r5, r6, lr}
0040001c  01 10 a0 e3                                      mov r1, #1
00400020  00 40 a0 e1                                      mov r4, r0
00400024  9f f1 ff eb                                      bl #0x3fc6a8
00400028  0c 50 a0 e3                                      mov r5, #0xc
0040002c  95 00 05 e0                                      mul r5, r5, r0
00400030  14 30 94 e5                                      ldr r3, [r4, #0x14]
00400034  05 30 93 e7                                      ldr r3, [r3, r5]
00400038  04 00 93 e5                                      ldr r0, [r3, #4]
0040003c  00 00 50 e3                                      cmp r0, #0
00400040  0d 00 00 0a                                      beq #0x40007c
00400044  00 00 90 e5                                      ldr r0, [r0]
00400048  6e e7 ff eb                                      bl #0x3f9e08
0040004c  94 00 90 e5                                      ldr r0, [r0, #0x94]
00400050  01 00 50 e3                                      cmp r0, #1
00400054  08 00 00 0a                                      beq #0x40007c
00400058  14 30 94 e5                                      ldr r3, [r4, #0x14]
0040005c  05 30 93 e7                                      ldr r3, [r3, r5]
00400060  04 30 93 e5                                      ldr r3, [r3, #4]
00400064  00 00 93 e5                                      ldr r0, [r3]
00400068  66 e7 ff eb                                      bl #0x3f9e08
0040006c  94 00 90 e5                                      ldr r0, [r0, #0x94]
00400070  02 00 50 e3                                      cmp r0, #2
00400074  00 00 a0 13                                      movne r0, #0
00400078  01 00 a0 03                                      moveq r0, #1
0040007c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00400080, declared_size=72, range_size=72, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory6HasBowEv
; demangled: ItemInventory::HasBow() const
; decoder-mode: arm
00400080  10 40 2d e9                                      push {r4, lr}
00400084  01 10 a0 e3                                      mov r1, #1
00400088  00 40 a0 e1                                      mov r4, r0
0040008c  85 f1 ff eb                                      bl #0x3fc6a8
00400090  0c 30 a0 e3                                      mov r3, #0xc
00400094  93 00 03 e0                                      mul r3, r3, r0
00400098  14 20 94 e5                                      ldr r2, [r4, #0x14]
0040009c  03 30 92 e7                                      ldr r3, [r2, r3]
004000a0  04 00 93 e5                                      ldr r0, [r3, #4]
004000a4  00 00 50 e3                                      cmp r0, #0
004000a8  05 00 00 0a                                      beq #0x4000c4
004000ac  00 00 90 e5                                      ldr r0, [r0]
004000b0  54 e7 ff eb                                      bl #0x3f9e08
004000b4  94 00 90 e5                                      ldr r0, [r0, #0x94]
004000b8  04 00 50 e3                                      cmp r0, #4
004000bc  00 00 a0 13                                      movne r0, #0
004000c0  01 00 a0 03                                      moveq r0, #1
004000c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004000c8, declared_size=72, range_size=72, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory8HasStaffEv
; demangled: ItemInventory::HasStaff() const
; decoder-mode: arm
004000c8  10 40 2d e9                                      push {r4, lr}
004000cc  01 10 a0 e3                                      mov r1, #1
004000d0  00 40 a0 e1                                      mov r4, r0
004000d4  73 f1 ff eb                                      bl #0x3fc6a8
004000d8  0c 30 a0 e3                                      mov r3, #0xc
004000dc  93 00 03 e0                                      mul r3, r3, r0
004000e0  14 20 94 e5                                      ldr r2, [r4, #0x14]
004000e4  03 30 92 e7                                      ldr r3, [r2, r3]
004000e8  04 00 93 e5                                      ldr r0, [r3, #4]
004000ec  00 00 50 e3                                      cmp r0, #0
004000f0  05 00 00 0a                                      beq #0x40010c
004000f4  00 00 90 e5                                      ldr r0, [r0]
004000f8  42 e7 ff eb                                      bl #0x3f9e08
004000fc  94 00 90 e5                                      ldr r0, [r0, #0x94]
00400100  05 00 50 e3                                      cmp r0, #5
00400104  00 00 a0 13                                      movne r0, #0
00400108  01 00 a0 03                                      moveq r0, #1
0040010c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00400110, declared_size=72, range_size=72, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory9HasShieldEv
; demangled: ItemInventory::HasShield() const
; decoder-mode: arm
00400110  10 40 2d e9                                      push {r4, lr}
00400114  02 10 a0 e3                                      mov r1, #2
00400118  00 40 a0 e1                                      mov r4, r0
0040011c  61 f1 ff eb                                      bl #0x3fc6a8
00400120  0c 30 a0 e3                                      mov r3, #0xc
00400124  93 00 03 e0                                      mul r3, r3, r0
00400128  14 20 94 e5                                      ldr r2, [r4, #0x14]
0040012c  03 30 92 e7                                      ldr r3, [r2, r3]
00400130  08 00 93 e5                                      ldr r0, [r3, #8]
00400134  00 00 50 e3                                      cmp r0, #0
00400138  05 00 00 0a                                      beq #0x400154
0040013c  00 00 90 e5                                      ldr r0, [r0]
00400140  30 e7 ff eb                                      bl #0x3f9e08
00400144  58 00 90 e5                                      ldr r0, [r0, #0x58]
00400148  06 00 50 e3                                      cmp r0, #6
0040014c  00 00 a0 13                                      movne r0, #0
00400150  01 00 a0 03                                      moveq r0, #1
00400154  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00400158, declared_size=68, range_size=68, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory16HasOffHandWeaponEv
; demangled: ItemInventory::HasOffHandWeapon() const
; decoder-mode: arm
00400158  10 40 2d e9                                      push {r4, lr}
0040015c  02 10 a0 e3                                      mov r1, #2
00400160  00 40 a0 e1                                      mov r4, r0
00400164  4f f1 ff eb                                      bl #0x3fc6a8
00400168  0c 30 a0 e3                                      mov r3, #0xc
0040016c  93 00 03 e0                                      mul r3, r3, r0
00400170  14 20 94 e5                                      ldr r2, [r4, #0x14]
00400174  03 30 92 e7                                      ldr r3, [r2, r3]
00400178  08 00 93 e5                                      ldr r0, [r3, #8]
0040017c  00 00 50 e3                                      cmp r0, #0
00400180  04 00 00 0a                                      beq #0x400198
00400184  00 00 90 e5                                      ldr r0, [r0]
00400188  1e e7 ff eb                                      bl #0x3f9e08
0040018c  58 00 90 e5                                      ldr r0, [r0, #0x58]
00400190  06 00 50 e2                                      subs r0, r0, #6
00400194  01 00 a0 13                                      movne r0, #1
00400198  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0040019c, declared_size=4, range_size=4, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory14IsDualWieldingEv
; demangled: ItemInventory::IsDualWielding() const
; decoder-mode: arm
0040019c  ed ff ff ea                                      b #0x400158

; FUNCTION 0x004001a0, declared_size=140, range_size=140, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory12HasTwoHanderEb
; demangled: ItemInventory::HasTwoHander(bool) const
; decoder-mode: arm
004001a0  70 40 2d e9                                      push {r4, r5, r6, lr}
004001a4  01 50 a0 e1                                      mov r5, r1
004001a8  01 10 a0 e3                                      mov r1, #1
004001ac  00 40 a0 e1                                      mov r4, r0
004001b0  3c f1 ff eb                                      bl #0x3fc6a8
004001b4  0c 30 a0 e3                                      mov r3, #0xc
004001b8  93 00 03 e0                                      mul r3, r3, r0
004001bc  14 20 94 e5                                      ldr r2, [r4, #0x14]
004001c0  03 30 92 e7                                      ldr r3, [r2, r3]
004001c4  04 00 93 e5                                      ldr r0, [r3, #4]
004001c8  00 00 50 e3                                      cmp r0, #0
004001cc  11 00 00 0a                                      beq #0x400218
004001d0  00 00 90 e5                                      ldr r0, [r0]
004001d4  0b e7 ff eb                                      bl #0x3f9e08
004001d8  58 30 90 e5                                      ldr r3, [r0, #0x58]
004001dc  04 20 94 e5                                      ldr r2, [r4, #4]
004001e0  68 00 90 e5                                      ldr r0, [r0, #0x68]
004001e4  04 30 43 e2                                      sub r3, r3, #4
004001e8  01 00 53 e3                                      cmp r3, #1
004001ec  0a 00 00 9a                                      bls #0x40021c
004001f0  00 00 55 e3                                      cmp r5, #0
004001f4  08 00 00 1a                                      bne #0x40021c
004001f8  04 00 70 e3                                      cmn r0, #4
004001fc  01 00 00 0a                                      beq #0x400208
00400200  05 00 a0 e1                                      mov r0, r5
00400204  70 80 bd e8                                      pop {r4, r5, r6, pc}
00400208  24 33 01 e3                                      movw r3, #0x1324
0040020c  03 00 92 e7                                      ldr r0, [r2, r3]
00400210  01 00 70 e2                                      rsbs r0, r0, #1
00400214  00 00 a0 33                                      movlo r0, #0
00400218  70 80 bd e8                                      pop {r4, r5, r6, pc}
0040021c  04 00 70 e3                                      cmn r0, #4
00400220  00 00 a0 13                                      movne r0, #0
00400224  01 00 a0 03                                      moveq r0, #1
00400228  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0040022c, declared_size=172, range_size=172, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory23IsEquipmentSlotLeftHandEj
; demangled: ItemInventory::IsEquipmentSlotLeftHand(unsigned int) const
; decoder-mode: arm
0040022c  10 40 2d e9                                      push {r4, lr}
00400230  14 20 90 e5                                      ldr r2, [r0, #0x14]
00400234  01 40 a0 e1                                      mov r4, r1
00400238  80 30 9f e5                                      ldr r3, [pc, #0x80]
0040023c  06 00 92 e8                                      ldm r2, {r1, r2}
00400240  03 30 8f e0                                      add r3, pc, r3
00400244  08 d0 4d e2                                      sub sp, sp, #8
00400248  02 20 61 e0                                      rsb r2, r1, r2
0040024c  42 01 54 e1                                      cmp r4, r2, asr #2
00400250  08 00 00 3a                                      blo #0x400278
00400254  68 20 9f e5                                      ldr r2, [pc, #0x68]
00400258  02 20 93 e7                                      ldr r2, [r3, r2]
0040025c  00 20 92 e5                                      ldr r2, [r2]
00400260  02 00 52 e3                                      cmp r2, #2
00400264  00 30 a0 03                                      moveq r3, #0
00400268  00 30 83 05                                      streq r3, [r3]
0040026c  01 00 00 0a                                      beq #0x400278
00400270  01 00 52 e3                                      cmp r2, #1
00400274  04 00 00 0a                                      beq #0x40028c
00400278  02 00 54 e3                                      cmp r4, #2
0040027c  00 00 a0 13                                      movne r0, #0
00400280  01 00 a0 03                                      moveq r0, #1
00400284  08 d0 8d e2                                      add sp, sp, #8
00400288  10 80 bd e8                                      pop {r4, pc}
0040028c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00400290  34 10 9f e5                                      ldr r1, [pc, #0x34]
00400294  34 20 9f e5                                      ldr r2, [pc, #0x34]
00400298  00 00 93 e7                                      ldr r0, [r3, r0]
0040029c  30 30 9f e5                                      ldr r3, [pc, #0x30]
004002a0  4a c1 00 e3                                      movw ip, #0x14a
004002a4  01 10 8f e0                                      add r1, pc, r1
004002a8  02 20 8f e0                                      add r2, pc, r2
004002ac  03 30 8f e0                                      add r3, pc, r3
004002b0  a8 00 80 e2                                      add r0, r0, #0xa8
004002b4  00 c0 8d e5                                      str ip, [sp]
004002b8  51 37 fc eb                                      bl #0x30e004
004002bc  ed ff ff ea                                      b #0x400278
; mapping-symbol data/literal pool
004002c0  50 48 59 00 c0 39 00 00 c0 19 00 00 34 e1 4b 00  .byte 0x50, 0x48, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x34, 0xe1, 0x4b, 0x00
004002d0  48 71 4c 00 2c 72 4c 00                          .byte 0x48, 0x71, 0x4c, 0x00, 0x2c, 0x72, 0x4c, 0x00

; FUNCTION 0x004002d8, declared_size=204, range_size=204, mode=arm
; class-group: ItemInventory
; alias: _ZNK13ItemInventory20IsEquipmentSlotTakenEj
; demangled: ItemInventory::IsEquipmentSlotTaken(unsigned int) const
; decoder-mode: arm
004002d8  30 40 2d e9                                      push {r4, r5, lr}
004002dc  14 20 90 e5                                      ldr r2, [r0, #0x14]
004002e0  01 40 a0 e1                                      mov r4, r1
004002e4  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
004002e8  06 00 92 e8                                      ldm r2, {r1, r2}
004002ec  03 30 8f e0                                      add r3, pc, r3
004002f0  0c d0 4d e2                                      sub sp, sp, #0xc
004002f4  02 20 61 e0                                      rsb r2, r1, r2
004002f8  42 01 54 e1                                      cmp r4, r2, asr #2
004002fc  00 50 a0 e1                                      mov r5, r0
00400300  08 00 00 3a                                      blo #0x400328
00400304  84 20 9f e5                                      ldr r2, [pc, #0x84]
00400308  02 20 93 e7                                      ldr r2, [r3, r2]
0040030c  00 20 92 e5                                      ldr r2, [r2]
00400310  02 00 52 e3                                      cmp r2, #2
00400314  00 30 a0 03                                      moveq r3, #0
00400318  00 30 83 05                                      streq r3, [r3]
0040031c  01 00 00 0a                                      beq #0x400328
00400320  01 00 52 e3                                      cmp r2, #1
00400324  0b 00 00 0a                                      beq #0x400358
00400328  05 00 a0 e1                                      mov r0, r5
0040032c  04 10 a0 e1                                      mov r1, r4
00400330  dc f0 ff eb                                      bl #0x3fc6a8
00400334  0c 30 a0 e3                                      mov r3, #0xc
00400338  93 00 03 e0                                      mul r3, r3, r0
0040033c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00400340  03 30 92 e7                                      ldr r3, [r2, r3]
00400344  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00400348  00 00 50 e2                                      subs r0, r0, #0
0040034c  01 00 a0 13                                      movne r0, #1
00400350  0c d0 8d e2                                      add sp, sp, #0xc
00400354  30 80 bd e8                                      pop {r4, r5, pc}
00400358  34 00 9f e5                                      ldr r0, [pc, #0x34]
0040035c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00400360  34 20 9f e5                                      ldr r2, [pc, #0x34]
00400364  00 00 93 e7                                      ldr r0, [r3, r0]
00400368  30 30 9f e5                                      ldr r3, [pc, #0x30]
0040036c  05 cd a0 e3                                      mov ip, #0x140
00400370  01 10 8f e0                                      add r1, pc, r1
00400374  02 20 8f e0                                      add r2, pc, r2
00400378  03 30 8f e0                                      add r3, pc, r3
0040037c  a8 00 80 e2                                      add r0, r0, #0xa8
00400380  00 c0 8d e5                                      str ip, [sp]
00400384  1e 37 fc eb                                      bl #0x30e004
00400388  e6 ff ff ea                                      b #0x400328
; mapping-symbol data/literal pool
0040038c  a4 47 59 00 c0 39 00 00 c0 19 00 00 68 e0 4b 00  .byte 0xa4, 0x47, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x68, 0xe0, 0x4b, 0x00
0040039c  7c 70 4c 00 60 71 4c 00                          .byte 0x7c, 0x70, 0x4c, 0x00, 0x60, 0x71, 0x4c, 0x00

; FUNCTION 0x004003a4, declared_size=360, range_size=360, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory20_UnEquipItemFromSlotEji
; demangled: ItemInventory::_UnEquipItemFromSlot(unsigned int, int)
; decoder-mode: arm
004003a4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004003a8  00 60 a0 e1                                      mov r6, r0
004003ac  14 00 90 e5                                      ldr r0, [r0, #0x14]
004003b0  01 40 a0 e1                                      mov r4, r1
004003b4  38 31 9f e5                                      ldr r3, [pc, #0x138]
004003b8  00 10 90 e5                                      ldr r1, [r0]
004003bc  04 00 90 e5                                      ldr r0, [r0, #4]
004003c0  14 d0 4d e2                                      sub sp, sp, #0x14
004003c4  03 30 8f e0                                      add r3, pc, r3
004003c8  00 10 61 e0                                      rsb r1, r1, r0
004003cc  41 01 54 e1                                      cmp r4, r1, asr #2
004003d0  02 50 a0 e1                                      mov r5, r2
004003d4  08 00 00 3a                                      blo #0x4003fc
004003d8  18 21 9f e5                                      ldr r2, [pc, #0x118]
004003dc  02 20 93 e7                                      ldr r2, [r3, r2]
004003e0  00 20 92 e5                                      ldr r2, [r2]
004003e4  02 00 52 e3                                      cmp r2, #2
004003e8  00 30 a0 03                                      moveq r3, #0
004003ec  00 30 83 05                                      streq r3, [r3]
004003f0  01 00 00 0a                                      beq #0x4003fc
004003f4  01 00 52 e3                                      cmp r2, #1
004003f8  30 00 00 0a                                      beq #0x4004c0
004003fc  01 00 75 e3                                      cmn r5, #1
00400400  29 00 00 0a                                      beq #0x4004ac
00400404  0c 30 a0 e3                                      mov r3, #0xc
00400408  14 20 96 e5                                      ldr r2, [r6, #0x14]
0040040c  93 05 03 e0                                      mul r3, r3, r5
00400410  03 30 92 e7                                      ldr r3, [r2, r3]
00400414  00 20 a0 e3                                      mov r2, #0
00400418  04 71 93 e7                                      ldr r7, [r3, r4, lsl #2]
0040041c  04 21 83 e7                                      str r2, [r3, r4, lsl #2]
00400420  02 00 57 e1                                      cmp r7, r2
00400424  05 00 00 0a                                      beq #0x400440
00400428  00 30 e0 e3                                      mvn r3, #0
0040042c  05 50 87 e0                                      add r5, r7, r5
00400430  04 30 c5 e5                                      strb r3, [r5, #4]
00400434  f4 30 d7 e1                                      ldrsh r3, [r7, #4]
00400438  01 00 73 e3                                      cmn r3, #1
0040043c  01 00 00 0a                                      beq #0x400448
00400440  14 d0 8d e2                                      add sp, sp, #0x14
00400444  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00400448  00 00 97 e5                                      ldr r0, [r7]
0040044c  81 e6 ff eb                                      bl #0x3f9e58
00400450  00 00 50 e3                                      cmp r0, #0
00400454  f9 ff ff 0a                                      beq #0x400440
00400458  06 00 a0 e1                                      mov r0, r6
0040045c  00 10 97 e5                                      ldr r1, [r7]
00400460  0c 20 8d e2                                      add r2, sp, #0xc
00400464  58 f7 ff eb                                      bl #0x3fe1cc
00400468  00 00 50 e3                                      cmp r0, #0
0040046c  f3 ff ff 0a                                      beq #0x400440
00400470  06 00 a0 e1                                      mov r0, r6
00400474  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00400478  9c f5 ff eb                                      bl #0x3fdaf0
0040047c  00 00 50 e3                                      cmp r0, #0
00400480  ee ff ff 1a                                      bne #0x400440
00400484  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00400488  06 00 a0 e1                                      mov r0, r6
0040048c  62 f0 ff eb                                      bl #0x3fc61c
00400490  00 30 97 e5                                      ldr r3, [r7]
00400494  f0 15 d3 e1                                      ldrsh r1, [r3, #0x50]
00400498  37 e7 ff eb                                      bl #0x3fa17c
0040049c  06 00 a0 e1                                      mov r0, r6
004004a0  00 10 97 e5                                      ldr r1, [r7]
004004a4  cb f8 ff eb                                      bl #0x3fe7d8
004004a8  e4 ff ff ea                                      b #0x400440
004004ac  06 00 a0 e1                                      mov r0, r6
004004b0  04 10 a0 e1                                      mov r1, r4
004004b4  7b f0 ff eb                                      bl #0x3fc6a8
004004b8  00 50 a0 e1                                      mov r5, r0
004004bc  d0 ff ff ea                                      b #0x400404
004004c0  34 00 9f e5                                      ldr r0, [pc, #0x34]
004004c4  34 10 9f e5                                      ldr r1, [pc, #0x34]
004004c8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004004cc  00 00 93 e7                                      ldr r0, [r3, r0]
004004d0  30 30 9f e5                                      ldr r3, [pc, #0x30]
004004d4  11 c1 00 e3                                      movw ip, #0x111
004004d8  01 10 8f e0                                      add r1, pc, r1
004004dc  02 20 8f e0                                      add r2, pc, r2
004004e0  03 30 8f e0                                      add r3, pc, r3
004004e4  a8 00 80 e2                                      add r0, r0, #0xa8
004004e8  00 c0 8d e5                                      str ip, [sp]
004004ec  c4 36 fc eb                                      bl #0x30e004
004004f0  c1 ff ff ea                                      b #0x4003fc
; mapping-symbol data/literal pool
004004f4  cc 46 59 00 c0 39 00 00 c0 19 00 00 00 df 4b 00  .byte 0xcc, 0x46, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x00, 0xdf, 0x4b, 0x00
00400504  14 6f 4c 00 f8 6f 4c 00                          .byte 0x14, 0x6f, 0x4c, 0x00, 0xf8, 0x6f, 0x4c, 0x00

; FUNCTION 0x0040050c, declared_size=4, range_size=4, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory19UnEquipItemFromSlotEji
; demangled: ItemInventory::UnEquipItemFromSlot(unsigned int, int)
; decoder-mode: arm
0040050c  a4 ff ff ea                                      b #0x4003a4

; FUNCTION 0x00400510, declared_size=288, range_size=288, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory16_UnEquipItemAutoEj
; demangled: ItemInventory::_UnEquipItemAuto(unsigned int)
; decoder-mode: arm
00400510  30 40 2d e9                                      push {r4, r5, lr}
00400514  00 40 a0 e1                                      mov r4, r0
00400518  08 20 94 e5                                      ldr r2, [r4, #8]
0040051c  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00400520  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00400524  0c d0 4d e2                                      sub sp, sp, #0xc
00400528  00 20 62 e0                                      rsb r2, r2, r0
0040052c  42 01 51 e1                                      cmp r1, r2, asr #2
00400530  01 50 a0 e1                                      mov r5, r1
00400534  03 30 8f e0                                      add r3, pc, r3
00400538  08 00 00 3a                                      blo #0x400560
0040053c  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
00400540  02 20 93 e7                                      ldr r2, [r3, r2]
00400544  00 20 92 e5                                      ldr r2, [r2]
00400548  02 00 52 e3                                      cmp r2, #2
0040054c  00 30 a0 03                                      moveq r3, #0
00400550  00 30 83 05                                      streq r3, [r3]
00400554  01 00 00 0a                                      beq #0x400560
00400558  01 00 52 e3                                      cmp r2, #1
0040055c  20 00 00 0a                                      beq #0x4005e4
00400560  04 00 a0 e1                                      mov r0, r4
00400564  05 10 a0 e1                                      mov r1, r5
00400568  60 f5 ff eb                                      bl #0x3fdaf0
0040056c  00 00 50 e3                                      cmp r0, #0
00400570  01 00 00 1a                                      bne #0x40057c
00400574  0c d0 8d e2                                      add sp, sp, #0xc
00400578  30 80 bd e8                                      pop {r4, r5, pc}
0040057c  08 30 94 e5                                      ldr r3, [r4, #8]
00400580  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00400584  00 00 93 e5                                      ldr r0, [r3]
00400588  1e e6 ff eb                                      bl #0x3f9e08
0040058c  68 10 90 e5                                      ldr r1, [r0, #0x68]
00400590  00 00 51 e3                                      cmp r1, #0
00400594  0a 00 00 ba                                      blt #0x4005c4
00400598  04 00 a0 e1                                      mov r0, r4
0040059c  41 f0 ff eb                                      bl #0x3fc6a8
004005a0  08 30 94 e5                                      ldr r3, [r4, #8]
004005a4  00 20 e0 e3                                      mvn r2, #0
004005a8  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
004005ac  00 30 83 e0                                      add r3, r3, r0
004005b0  d4 10 d3 e1                                      ldrsb r1, [r3, #4]
004005b4  04 00 a0 e1                                      mov r0, r4
004005b8  0c d0 8d e2                                      add sp, sp, #0xc
004005bc  30 40 bd e8                                      pop {r4, r5, lr}
004005c0  77 ff ff ea                                      b #0x4003a4
004005c4  04 00 71 e3                                      cmn r1, #4
004005c8  f2 ff ff ba                                      blt #0x400598
004005cc  03 00 71 e3                                      cmn r1, #3
004005d0  01 10 a0 d3                                      movle r1, #1
004005d4  ef ff ff da                                      ble #0x400598
004005d8  02 00 71 e3                                      cmn r1, #2
004005dc  05 10 a0 03                                      moveq r1, #5
004005e0  ec ff ff ea                                      b #0x400598
004005e4  34 00 9f e5                                      ldr r0, [pc, #0x34]
004005e8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004005ec  34 20 9f e5                                      ldr r2, [pc, #0x34]
004005f0  00 00 93 e7                                      ldr r0, [r3, r0]
004005f4  30 30 9f e5                                      ldr r3, [pc, #0x30]
004005f8  73 c0 a0 e3                                      mov ip, #0x73
004005fc  01 10 8f e0                                      add r1, pc, r1
00400600  02 20 8f e0                                      add r2, pc, r2
00400604  03 30 8f e0                                      add r3, pc, r3
00400608  a8 00 80 e2                                      add r0, r0, #0xa8
0040060c  00 c0 8d e5                                      str ip, [sp]
00400610  7b 36 fc eb                                      bl #0x30e004
00400614  d1 ff ff ea                                      b #0x400560
; mapping-symbol data/literal pool
00400618  5c 45 59 00 c0 39 00 00 c0 19 00 00 dc dd 4b 00  .byte 0x5c, 0x45, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xdc, 0xdd, 0x4b, 0x00
00400628  88 6d 4c 00 d4 6e 4c 00                          .byte 0x88, 0x6d, 0x4c, 0x00, 0xd4, 0x6e, 0x4c, 0x00

; FUNCTION 0x00400630, declared_size=4, range_size=4, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory15UnEquipItemAutoEj
; demangled: ItemInventory::UnEquipItemAuto(unsigned int)
; decoder-mode: arm
00400630  b6 ff ff ea                                      b #0x400510

; FUNCTION 0x00400634, declared_size=956, range_size=956, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory16_EquipItemToSlotEjjb
; demangled: ItemInventory::_EquipItemToSlot(unsigned int, unsigned int, bool)
; decoder-mode: arm
00400634  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00400638  00 40 a0 e1                                      mov r4, r0
0040063c  14 00 90 e5                                      ldr r0, [r0, #0x14]
00400640  01 70 a0 e1                                      mov r7, r1
00400644  74 53 9f e5                                      ldr r5, [pc, #0x374]
00400648  00 10 90 e5                                      ldr r1, [r0]
0040064c  04 00 90 e5                                      ldr r0, [r0, #4]
00400650  05 50 8f e0                                      add r5, pc, r5
00400654  14 d0 4d e2                                      sub sp, sp, #0x14
00400658  00 10 61 e0                                      rsb r1, r1, r0
0040065c  41 01 57 e1                                      cmp r7, r1, asr #2
00400660  02 60 a0 e1                                      mov r6, r2
00400664  03 a0 a0 e1                                      mov sl, r3
00400668  08 00 00 3a                                      blo #0x400690
0040066c  50 33 9f e5                                      ldr r3, [pc, #0x350]
00400670  03 30 95 e7                                      ldr r3, [r5, r3]
00400674  00 30 93 e5                                      ldr r3, [r3]
00400678  02 00 53 e3                                      cmp r3, #2
0040067c  00 30 a0 03                                      moveq r3, #0
00400680  00 30 83 05                                      streq r3, [r3]
00400684  01 00 00 0a                                      beq #0x400690
00400688  01 00 53 e3                                      cmp r3, #1
0040068c  80 00 00 0a                                      beq #0x400894
00400690  08 30 94 e5                                      ldr r3, [r4, #8]
00400694  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00400698  02 20 63 e0                                      rsb r2, r3, r2
0040069c  42 01 56 e1                                      cmp r6, r2, asr #2
004006a0  1b 00 00 3a                                      blo #0x400714
004006a4  18 33 9f e5                                      ldr r3, [pc, #0x318]
004006a8  03 30 95 e7                                      ldr r3, [r5, r3]
004006ac  00 30 93 e5                                      ldr r3, [r3]
004006b0  02 00 53 e3                                      cmp r3, #2
004006b4  00 30 a0 03                                      moveq r3, #0
004006b8  00 30 83 05                                      streq r3, [r3]
004006bc  01 00 00 0a                                      beq #0x4006c8
004006c0  01 00 53 e3                                      cmp r3, #1
004006c4  01 00 00 0a                                      beq #0x4006d0
004006c8  14 d0 8d e2                                      add sp, sp, #0x14
004006cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004006d0  f0 02 9f e5                                      ldr r0, [pc, #0x2f0]
004006d4  f0 12 9f e5                                      ldr r1, [pc, #0x2f0]
004006d8  f0 22 9f e5                                      ldr r2, [pc, #0x2f0]
004006dc  00 00 95 e7                                      ldr r0, [r5, r0]
004006e0  ec 32 9f e5                                      ldr r3, [pc, #0x2ec]
004006e4  02 20 8f e0                                      add r2, pc, r2
004006e8  bd c0 a0 e3                                      mov ip, #0xbd
004006ec  03 30 8f e0                                      add r3, pc, r3
004006f0  01 10 8f e0                                      add r1, pc, r1
004006f4  a8 00 80 e2                                      add r0, r0, #0xa8
004006f8  00 c0 8d e5                                      str ip, [sp]
004006fc  40 36 fc eb                                      bl #0x30e004
00400700  08 30 94 e5                                      ldr r3, [r4, #8]
00400704  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00400708  02 20 63 e0                                      rsb r2, r3, r2
0040070c  42 01 56 e1                                      cmp r6, r2, asr #2
00400710  ec ff ff 2a                                      bhs #0x4006c8
00400714  06 61 93 e7                                      ldr r6, [r3, r6, lsl #2]
00400718  00 00 56 e3                                      cmp r6, #0
0040071c  e9 ff ff 0a                                      beq #0x4006c8
00400720  00 30 96 e5                                      ldr r3, [r6]
00400724  00 00 53 e3                                      cmp r3, #0
00400728  e6 ff ff 0a                                      beq #0x4006c8
0040072c  07 10 a0 e1                                      mov r1, r7
00400730  04 00 a0 e1                                      mov r0, r4
00400734  db ef ff eb                                      bl #0x3fc6a8
00400738  00 80 a0 e1                                      mov r8, r0
0040073c  00 00 96 e5                                      ldr r0, [r6]
00400740  b0 e5 ff eb                                      bl #0x3f9e08
00400744  68 90 90 e5                                      ldr sb, [r0, #0x68]
00400748  00 00 96 e5                                      ldr r0, [r6]
0040074c  04 b0 94 e5                                      ldr fp, [r4, #4]
00400750  ac e5 ff eb                                      bl #0x3f9e08
00400754  58 30 90 e5                                      ldr r3, [r0, #0x58]
00400758  05 00 53 e3                                      cmp r3, #5
0040075c  06 00 00 0a                                      beq #0x40077c
00400760  00 00 96 e5                                      ldr r0, [r6]
00400764  a7 e5 ff eb                                      bl #0x3f9e08
00400768  58 30 90 e5                                      ldr r3, [r0, #0x58]
0040076c  04 00 53 e3                                      cmp r3, #4
00400770  01 00 00 0a                                      beq #0x40077c
00400774  04 00 79 e3                                      cmn sb, #4
00400778  40 00 00 0a                                      beq #0x400880
0040077c  00 00 96 e5                                      ldr r0, [r6]
00400780  b8 e5 ff eb                                      bl #0x3f9e68
00400784  00 00 50 e3                                      cmp r0, #0
00400788  ce ff ff 0a                                      beq #0x4006c8
0040078c  08 b0 86 e0                                      add fp, r6, r8
00400790  d4 30 db e1                                      ldrsb r3, [fp, #4]
00400794  07 00 53 e1                                      cmp r3, r7
00400798  2e 00 00 0a                                      beq #0x400858
0040079c  0c 30 a0 e3                                      mov r3, #0xc
004007a0  93 08 03 e0                                      mul r3, r3, r8
004007a4  0c 30 8d e5                                      str r3, [sp, #0xc]
004007a8  07 10 a0 e1                                      mov r1, r7
004007ac  04 00 a0 e1                                      mov r0, r4
004007b0  00 20 e0 e3                                      mvn r2, #0
004007b4  fa fe ff eb                                      bl #0x4003a4
004007b8  d4 10 db e1                                      ldrsb r1, [fp, #4]
004007bc  01 00 71 e3                                      cmn r1, #1
004007c0  05 00 00 0a                                      beq #0x4007dc
004007c4  14 30 94 e5                                      ldr r3, [r4, #0x14]
004007c8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004007cc  02 30 93 e7                                      ldr r3, [r3, r2]
004007d0  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
004007d4  06 00 53 e1                                      cmp r3, r6
004007d8  4d 00 00 0a                                      beq #0x400914
004007dc  04 00 79 e3                                      cmn sb, #4
004007e0  42 00 00 0a                                      beq #0x4008f0
004007e4  02 00 57 e3                                      cmp r7, #2
004007e8  4d 00 00 0a                                      beq #0x400924
004007ec  07 a1 a0 e1                                      lsl sl, r7, #2
004007f0  77 70 ef e6                                      uxtb r7, r7
004007f4  00 00 96 e5                                      ldr r0, [r6]
004007f8  f0 15 d0 e1                                      ldrsh r1, [r0, #0x50]
004007fc  01 00 51 e3                                      cmp r1, #1
00400800  30 00 00 0a                                      beq #0x4008c8
00400804  01 10 41 e2                                      sub r1, r1, #1
00400808  f4 ee ff eb                                      bl #0x3fc3e0
0040080c  00 90 50 e2                                      subs sb, r0, #0
00400810  50 00 00 0a                                      beq #0x400958
00400814  14 30 94 e5                                      ldr r3, [r4, #0x14]
00400818  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0040081c  04 00 a0 e1                                      mov r0, r4
00400820  01 20 a0 e3                                      mov r2, #1
00400824  01 c0 93 e7                                      ldr ip, [r3, r1]
00400828  09 10 a0 e1                                      mov r1, sb
0040082c  02 30 a0 e1                                      mov r3, r2
00400830  0a 60 8c e7                                      str r6, [ip, sl]
00400834  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00400838  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0040083c  04 c0 9c e7                                      ldr ip, [ip, r4]
00400840  0a c0 9c e7                                      ldr ip, [ip, sl]
00400844  08 80 8c e0                                      add r8, ip, r8
00400848  04 70 c8 e5                                      strb r7, [r8, #4]
0040084c  14 d0 8d e2                                      add sp, sp, #0x14
00400850  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00400854  5e fb ff ea                                      b #0x3ff5d4
00400858  0c 30 a0 e3                                      mov r3, #0xc
0040085c  93 08 03 e0                                      mul r3, r3, r8
00400860  0c 30 8d e5                                      str r3, [sp, #0xc]
00400864  14 30 94 e5                                      ldr r3, [r4, #0x14]
00400868  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0040086c  01 30 93 e7                                      ldr r3, [r3, r1]
00400870  07 31 93 e7                                      ldr r3, [r3, r7, lsl #2]
00400874  06 00 53 e1                                      cmp r3, r6
00400878  ca ff ff 1a                                      bne #0x4007a8
0040087c  91 ff ff ea                                      b #0x4006c8
00400880  24 33 01 e3                                      movw r3, #0x1324
00400884  03 30 9b e7                                      ldr r3, [fp, r3]
00400888  00 00 53 e3                                      cmp r3, #0
0040088c  01 90 a0 13                                      movne sb, #1
00400890  b9 ff ff ea                                      b #0x40077c
00400894  2c 01 9f e5                                      ldr r0, [pc, #0x12c]
00400898  38 11 9f e5                                      ldr r1, [pc, #0x138]
0040089c  38 21 9f e5                                      ldr r2, [pc, #0x138]
004008a0  00 00 95 e7                                      ldr r0, [r5, r0]
004008a4  34 31 9f e5                                      ldr r3, [pc, #0x134]
004008a8  bc c0 a0 e3                                      mov ip, #0xbc
004008ac  01 10 8f e0                                      add r1, pc, r1
004008b0  02 20 8f e0                                      add r2, pc, r2
004008b4  03 30 8f e0                                      add r3, pc, r3
004008b8  a8 00 80 e2                                      add r0, r0, #0xa8
004008bc  00 c0 8d e5                                      str ip, [sp]
004008c0  cf 35 fc eb                                      bl #0x30e004
004008c4  71 ff ff ea                                      b #0x400690
004008c8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004008cc  14 30 94 e5                                      ldr r3, [r4, #0x14]
004008d0  01 30 93 e7                                      ldr r3, [r3, r1]
004008d4  0a 60 83 e7                                      str r6, [r3, sl]
004008d8  14 30 94 e5                                      ldr r3, [r4, #0x14]
004008dc  01 30 93 e7                                      ldr r3, [r3, r1]
004008e0  0a 30 93 e7                                      ldr r3, [r3, sl]
004008e4  08 80 83 e0                                      add r8, r3, r8
004008e8  04 70 c8 e5                                      strb r7, [r8, #4]
004008ec  75 ff ff ea                                      b #0x4006c8
004008f0  00 00 5a e3                                      cmp sl, #0
004008f4  2c 00 00 0a                                      beq #0x4009ac
004008f8  04 00 a0 e1                                      mov r0, r4
004008fc  01 10 a0 e3                                      mov r1, #1
00400900  00 20 e0 e3                                      mvn r2, #0
00400904  a6 fe ff eb                                      bl #0x4003a4
00400908  04 a0 a0 e3                                      mov sl, #4
0040090c  01 70 a0 e3                                      mov r7, #1
00400910  b7 ff ff ea                                      b #0x4007f4
00400914  04 00 a0 e1                                      mov r0, r4
00400918  00 20 e0 e3                                      mvn r2, #0
0040091c  a0 fe ff eb                                      bl #0x4003a4
00400920  ad ff ff ea                                      b #0x4007dc
00400924  04 00 a0 e1                                      mov r0, r4
00400928  00 10 a0 e3                                      mov r1, #0
0040092c  1b fe ff eb                                      bl #0x4001a0
00400930  00 00 50 e3                                      cmp r0, #0
00400934  ac ff ff 0a                                      beq #0x4007ec
00400938  00 00 5a e3                                      cmp sl, #0
0040093c  aa ff ff 1a                                      bne #0x4007ec
00400940  04 00 a0 e1                                      mov r0, r4
00400944  01 10 a0 e3                                      mov r1, #1
00400948  00 20 e0 e3                                      mvn r2, #0
0040094c  94 fe ff eb                                      bl #0x4003a4
00400950  08 a0 a0 e3                                      mov sl, #8
00400954  a6 ff ff ea                                      b #0x4007f4
00400958  64 30 9f e5                                      ldr r3, [pc, #0x64]
0040095c  03 30 95 e7                                      ldr r3, [r5, r3]
00400960  00 30 93 e5                                      ldr r3, [r3]
00400964  02 00 53 e3                                      cmp r3, #2
00400968  00 90 89 05                                      streq sb, [sb]
0040096c  a8 ff ff 0a                                      beq #0x400814
00400970  01 00 53 e3                                      cmp r3, #1
00400974  a6 ff ff 1a                                      bne #0x400814
00400978  48 00 9f e5                                      ldr r0, [pc, #0x48]
0040097c  60 10 9f e5                                      ldr r1, [pc, #0x60]
00400980  60 20 9f e5                                      ldr r2, [pc, #0x60]
00400984  00 00 95 e7                                      ldr r0, [r5, r0]
00400988  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0040098c  01 cc a0 e3                                      mov ip, #0x100
00400990  01 10 8f e0                                      add r1, pc, r1
00400994  02 20 8f e0                                      add r2, pc, r2
00400998  03 30 8f e0                                      add r3, pc, r3
0040099c  a8 00 80 e2                                      add r0, r0, #0xa8
004009a0  00 c0 8d e5                                      str ip, [sp]
004009a4  96 35 fc eb                                      bl #0x30e004
004009a8  99 ff ff ea                                      b #0x400814
004009ac  04 00 a0 e1                                      mov r0, r4
004009b0  02 10 a0 e3                                      mov r1, #2
004009b4  00 20 e0 e3                                      mvn r2, #0
004009b8  79 fe ff eb                                      bl #0x4003a4
004009bc  cd ff ff ea                                      b #0x4008f8
; mapping-symbol data/literal pool
004009c0  40 44 59 00 c0 39 00 00 c0 19 00 00 e8 dc 4b 00  .byte 0x40, 0x44, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xe8, 0xdc, 0x4b, 0x00
004009d0  a4 6c 4c 00 ec 6d 4c 00 2c db 4b 00 40 6b 4c 00  .byte 0xa4, 0x6c, 0x4c, 0x00, 0xec, 0x6d, 0x4c, 0x00, 0x2c, 0xdb, 0x4b, 0x00, 0x40, 0x6b, 0x4c, 0x00
004009e0  24 6c 4c 00 48 da 4b 00 94 6b 4c 00 40 6b 4c 00  .byte 0x24, 0x6c, 0x4c, 0x00, 0x48, 0xda, 0x4b, 0x00, 0x94, 0x6b, 0x4c, 0x00, 0x40, 0x6b, 0x4c, 0x00

; FUNCTION 0x004009f0, declared_size=8, range_size=8, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory15EquipItemToSlotEjj
; demangled: ItemInventory::EquipItemToSlot(unsigned int, unsigned int)
; decoder-mode: arm
004009f0  00 30 a0 e3                                      mov r3, #0
004009f4  0e ff ff ea                                      b #0x400634

; FUNCTION 0x004009f8, declared_size=652, range_size=652, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory14_EquipItemAutoEj
; demangled: ItemInventory::_EquipItemAuto(unsigned int)
; decoder-mode: arm
004009f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004009fc  00 40 a0 e1                                      mov r4, r0
00400a00  08 20 90 e5                                      ldr r2, [r0, #8]
00400a04  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00400a08  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
00400a0c  08 d0 4d e2                                      sub sp, sp, #8
00400a10  00 00 62 e0                                      rsb r0, r2, r0
00400a14  40 01 51 e1                                      cmp r1, r0, asr #2
00400a18  01 50 a0 e1                                      mov r5, r1
00400a1c  03 30 8f e0                                      add r3, pc, r3
00400a20  08 00 00 3a                                      blo #0x400a48
00400a24  44 12 9f e5                                      ldr r1, [pc, #0x244]
00400a28  01 10 93 e7                                      ldr r1, [r3, r1]
00400a2c  00 10 91 e5                                      ldr r1, [r1]
00400a30  02 00 51 e3                                      cmp r1, #2
00400a34  00 30 a0 03                                      moveq r3, #0
00400a38  00 30 83 05                                      streq r3, [r3]
00400a3c  01 00 00 0a                                      beq #0x400a48
00400a40  01 00 51 e3                                      cmp r1, #1
00400a44  44 00 00 0a                                      beq #0x400b5c
00400a48  05 71 92 e7                                      ldr r7, [r2, r5, lsl #2]
00400a4c  00 00 97 e5                                      ldr r0, [r7]
00400a50  04 e5 ff eb                                      bl #0x3f9e68
00400a54  00 00 50 e3                                      cmp r0, #0
00400a58  02 00 00 1a                                      bne #0x400a68
00400a5c  00 00 a0 e3                                      mov r0, #0
00400a60  08 d0 8d e2                                      add sp, sp, #8
00400a64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00400a68  00 00 97 e5                                      ldr r0, [r7]
00400a6c  04 80 94 e5                                      ldr r8, [r4, #4]
00400a70  e4 e4 ff eb                                      bl #0x3f9e08
00400a74  68 60 90 e5                                      ldr r6, [r0, #0x68]
00400a78  00 00 97 e5                                      ldr r0, [r7]
00400a7c  e1 e4 ff eb                                      bl #0x3f9e08
00400a80  58 30 90 e5                                      ldr r3, [r0, #0x58]
00400a84  05 00 53 e3                                      cmp r3, #5
00400a88  08 00 00 0a                                      beq #0x400ab0
00400a8c  00 00 97 e5                                      ldr r0, [r7]
00400a90  dc e4 ff eb                                      bl #0x3f9e08
00400a94  58 30 90 e5                                      ldr r3, [r0, #0x58]
00400a98  04 00 53 e3                                      cmp r3, #4
00400a9c  03 00 00 0a                                      beq #0x400ab0
00400aa0  01 00 56 e3                                      cmp r6, #1
00400aa4  18 00 00 0a                                      beq #0x400b0c
00400aa8  04 00 76 e3                                      cmn r6, #4
00400aac  38 00 00 0a                                      beq #0x400b94
00400ab0  00 00 56 e3                                      cmp r6, #0
00400ab4  0d 00 00 ba                                      blt #0x400af0
00400ab8  14 30 94 e5                                      ldr r3, [r4, #0x14]
00400abc  0c 00 93 e8                                      ldm r3, {r2, r3}
00400ac0  03 30 62 e0                                      rsb r3, r2, r3
00400ac4  43 01 56 e1                                      cmp r6, r3, asr #2
00400ac8  08 00 00 aa                                      bge #0x400af0
00400acc  02 00 56 e3                                      cmp r6, #2
00400ad0  4f 00 00 0a                                      beq #0x400c14
00400ad4  04 00 a0 e1                                      mov r0, r4
00400ad8  06 10 a0 e1                                      mov r1, r6
00400adc  05 20 a0 e1                                      mov r2, r5
00400ae0  00 30 a0 e3                                      mov r3, #0
00400ae4  d2 fe ff eb                                      bl #0x400634
00400ae8  01 00 a0 e3                                      mov r0, #1
00400aec  db ff ff ea                                      b #0x400a60
00400af0  03 00 76 e3                                      cmn r6, #3
00400af4  08 00 00 0a                                      beq #0x400b1c
00400af8  02 00 76 e3                                      cmn r6, #2
00400afc  34 00 00 0a                                      beq #0x400bd4
00400b00  04 00 76 e3                                      cmn r6, #4
00400b04  d4 ff ff 1a                                      bne #0x400a5c
00400b08  26 00 00 ea                                      b #0x400ba8
00400b0c  20 33 01 e3                                      movw r3, #0x1320
00400b10  03 30 98 e7                                      ldr r3, [r8, r3]
00400b14  00 00 53 e3                                      cmp r3, #0
00400b18  e6 ff ff 0a                                      beq #0x400ab8
00400b1c  04 00 a0 e1                                      mov r0, r4
00400b20  01 10 a0 e3                                      mov r1, #1
00400b24  eb fd ff eb                                      bl #0x4002d8
00400b28  00 30 50 e2                                      subs r3, r0, #0
00400b2c  42 00 00 0a                                      beq #0x400c3c
00400b30  04 00 a0 e1                                      mov r0, r4
00400b34  02 10 a0 e3                                      mov r1, #2
00400b38  e6 fd ff eb                                      bl #0x4002d8
00400b3c  00 30 50 e2                                      subs r3, r0, #0
00400b40  c5 ff ff 1a                                      bne #0x400a5c
00400b44  04 00 a0 e1                                      mov r0, r4
00400b48  05 20 a0 e1                                      mov r2, r5
00400b4c  02 10 a0 e3                                      mov r1, #2
00400b50  b7 fe ff eb                                      bl #0x400634
00400b54  01 00 a0 e3                                      mov r0, #1
00400b58  c0 ff ff ea                                      b #0x400a60
00400b5c  10 01 9f e5                                      ldr r0, [pc, #0x110]
00400b60  10 11 9f e5                                      ldr r1, [pc, #0x110]
00400b64  10 21 9f e5                                      ldr r2, [pc, #0x110]
00400b68  00 00 93 e7                                      ldr r0, [r3, r0]
00400b6c  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
00400b70  02 20 8f e0                                      add r2, pc, r2
00400b74  23 c0 a0 e3                                      mov ip, #0x23
00400b78  01 10 8f e0                                      add r1, pc, r1
00400b7c  a8 00 80 e2                                      add r0, r0, #0xa8
00400b80  03 30 8f e0                                      add r3, pc, r3
00400b84  00 c0 8d e5                                      str ip, [sp]
00400b88  1d 35 fc eb                                      bl #0x30e004
00400b8c  08 20 94 e5                                      ldr r2, [r4, #8]
00400b90  ac ff ff ea                                      b #0x400a48
00400b94  24 33 01 e3                                      movw r3, #0x1324
00400b98  03 30 98 e7                                      ldr r3, [r8, r3]
00400b9c  00 00 53 e3                                      cmp r3, #0
00400ba0  01 60 a0 13                                      movne r6, #1
00400ba4  c3 ff ff 1a                                      bne #0x400ab8
00400ba8  02 10 a0 e3                                      mov r1, #2
00400bac  00 20 e0 e3                                      mvn r2, #0
00400bb0  04 00 a0 e1                                      mov r0, r4
00400bb4  fa fd ff eb                                      bl #0x4003a4
00400bb8  04 00 a0 e1                                      mov r0, r4
00400bbc  05 20 a0 e1                                      mov r2, r5
00400bc0  01 10 a0 e3                                      mov r1, #1
00400bc4  00 30 a0 e3                                      mov r3, #0
00400bc8  99 fe ff eb                                      bl #0x400634
00400bcc  01 00 a0 e3                                      mov r0, #1
00400bd0  a2 ff ff ea                                      b #0x400a60
00400bd4  04 00 a0 e1                                      mov r0, r4
00400bd8  05 10 a0 e3                                      mov r1, #5
00400bdc  bd fd ff eb                                      bl #0x4002d8
00400be0  00 30 50 e2                                      subs r3, r0, #0
00400be4  1a 00 00 0a                                      beq #0x400c54
00400be8  04 00 a0 e1                                      mov r0, r4
00400bec  06 10 a0 e3                                      mov r1, #6
00400bf0  b8 fd ff eb                                      bl #0x4002d8
00400bf4  00 30 50 e2                                      subs r3, r0, #0
00400bf8  97 ff ff 1a                                      bne #0x400a5c
00400bfc  04 00 a0 e1                                      mov r0, r4
00400c00  05 20 a0 e1                                      mov r2, r5
00400c04  06 10 a0 e3                                      mov r1, #6
00400c08  89 fe ff eb                                      bl #0x400634
00400c0c  01 00 a0 e3                                      mov r0, #1
00400c10  92 ff ff ea                                      b #0x400a60
00400c14  04 00 a0 e1                                      mov r0, r4
00400c18  00 10 a0 e3                                      mov r1, #0
00400c1c  5f fd ff eb                                      bl #0x4001a0
00400c20  00 00 50 e3                                      cmp r0, #0
00400c24  aa ff ff 0a                                      beq #0x400ad4
00400c28  04 00 a0 e1                                      mov r0, r4
00400c2c  01 10 a0 e3                                      mov r1, #1
00400c30  00 20 e0 e3                                      mvn r2, #0
00400c34  da fd ff eb                                      bl #0x4003a4
00400c38  a5 ff ff ea                                      b #0x400ad4
00400c3c  04 00 a0 e1                                      mov r0, r4
00400c40  05 20 a0 e1                                      mov r2, r5
00400c44  01 10 a0 e3                                      mov r1, #1
00400c48  79 fe ff eb                                      bl #0x400634
00400c4c  01 00 a0 e3                                      mov r0, #1
00400c50  82 ff ff ea                                      b #0x400a60
00400c54  04 00 a0 e1                                      mov r0, r4
00400c58  05 20 a0 e1                                      mov r2, r5
00400c5c  05 10 a0 e3                                      mov r1, #5
00400c60  73 fe ff eb                                      bl #0x400634
00400c64  01 00 a0 e3                                      mov r0, #1
00400c68  7c ff ff ea                                      b #0x400a60
; mapping-symbol data/literal pool
00400c6c  74 40 59 00 c0 39 00 00 c0 19 00 00 60 d8 4b 00  .byte 0x74, 0x40, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x60, 0xd8, 0x4b, 0x00
00400c7c  18 68 4c 00 58 69 4c 00                          .byte 0x18, 0x68, 0x4c, 0x00, 0x58, 0x69, 0x4c, 0x00

; FUNCTION 0x00400c84, declared_size=4, range_size=4, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory13EquipItemAutoEj
; demangled: ItemInventory::EquipItemAuto(unsigned int)
; decoder-mode: arm
00400c84  5b ff ff ea                                      b #0x4009f8

; FUNCTION 0x004016e4, declared_size=604, range_size=604, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory14_EquipSlotAutoEjP9Character
; demangled: ItemInventory::_EquipSlotAuto(unsigned int, Character*)
; decoder-mode: arm
004016e4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004016e8  00 50 a0 e1                                      mov r5, r0
004016ec  14 00 90 e5                                      ldr r0, [r0, #0x14]
004016f0  01 60 a0 e1                                      mov r6, r1
004016f4  2c 32 9f e5                                      ldr r3, [pc, #0x22c]
004016f8  00 10 90 e5                                      ldr r1, [r0]
004016fc  04 00 90 e5                                      ldr r0, [r0, #4]
00401700  1c d0 4d e2                                      sub sp, sp, #0x1c
00401704  03 30 8f e0                                      add r3, pc, r3
00401708  00 10 61 e0                                      rsb r1, r1, r0
0040170c  41 01 56 e1                                      cmp r6, r1, asr #2
00401710  02 40 a0 e1                                      mov r4, r2
00401714  08 00 00 3a                                      blo #0x40173c
00401718  0c 22 9f e5                                      ldr r2, [pc, #0x20c]
0040171c  02 20 93 e7                                      ldr r2, [r3, r2]
00401720  00 20 92 e5                                      ldr r2, [r2]
00401724  02 00 52 e3                                      cmp r2, #2
00401728  00 30 a0 03                                      moveq r3, #0
0040172c  00 30 83 05                                      streq r3, [r3]
00401730  01 00 00 0a                                      beq #0x40173c
00401734  01 00 52 e3                                      cmp r2, #1
00401738  6d 00 00 0a                                      beq #0x4018f4
0040173c  0c 70 8d e2                                      add r7, sp, #0xc
00401740  00 80 a0 e3                                      mov r8, #0
00401744  05 00 a0 e1                                      mov r0, r5
00401748  06 10 a0 e1                                      mov r1, r6
0040174c  07 20 a0 e1                                      mov r2, r7
00401750  0c 80 8d e5                                      str r8, [sp, #0xc]
00401754  10 80 8d e5                                      str r8, [sp, #0x10]
00401758  14 80 8d e5                                      str r8, [sp, #0x14]
0040175c  79 f5 ff eb                                      bl #0x3fed48
00401760  08 00 54 e1                                      cmp r4, r8
00401764  43 00 00 0a                                      beq #0x401878
00401768  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0040176c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00401770  04 20 a0 e1                                      mov r2, r4
00401774  ae ff ff eb                                      bl #0x401634
00401778  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0040177c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00401780  03 00 5a e1                                      cmp sl, r3
00401784  03 a0 a0 01                                      moveq sl, r3
00401788  04 00 00 1a                                      bne #0x4017a0
0040178c  14 00 00 ea                                      b #0x4017e4
00401790  10 30 9d e5                                      ldr r3, [sp, #0x10]
00401794  0c a0 8a e2                                      add sl, sl, #0xc
00401798  03 00 5a e1                                      cmp sl, r3
0040179c  32 00 00 0a                                      beq #0x40186c
004017a0  00 00 9a e5                                      ldr r0, [sl]
004017a4  04 10 a0 e1                                      mov r1, r4
004017a8  e0 e2 ff eb                                      bl #0x3fa330
004017ac  00 00 50 e3                                      cmp r0, #0
004017b0  f6 ff ff 0a                                      beq #0x401790
004017b4  08 10 9a e5                                      ldr r1, [sl, #8]
004017b8  05 00 a0 e1                                      mov r0, r5
004017bc  cb f0 ff eb                                      bl #0x3fdaf0
004017c0  00 30 50 e2                                      subs r3, r0, #0
004017c4  f1 ff ff 1a                                      bne #0x401790
004017c8  08 20 9a e5                                      ldr r2, [sl, #8]
004017cc  05 00 a0 e1                                      mov r0, r5
004017d0  06 10 a0 e1                                      mov r1, r6
004017d4  96 fb ff eb                                      bl #0x400634
004017d8  10 a0 9d e5                                      ldr sl, [sp, #0x10]
004017dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004017e0  01 80 a0 e3                                      mov r8, #1
004017e4  03 00 5a e1                                      cmp sl, r3
004017e8  03 a0 a0 01                                      moveq sl, r3
004017ec  0e 00 00 0a                                      beq #0x40182c
004017f0  0c 20 4a e2                                      sub r2, sl, #0xc
004017f4  02 20 63 e0                                      rsb r2, r3, r2
004017f8  22 21 a0 e1                                      lsr r2, r2, #2
004017fc  02 11 82 e0                                      add r1, r2, r2, lsl #2
00401800  81 12 81 e0                                      add r1, r1, r1, lsl #5
00401804  81 10 82 e0                                      add r1, r2, r1, lsl #1
00401808  81 12 81 e0                                      add r1, r1, r1, lsl #5
0040180c  81 07 a0 e1                                      lsl r0, r1, #0xf
00401810  00 10 61 e0                                      rsb r1, r1, r0
00401814  81 20 82 e0                                      add r2, r2, r1, lsl #1
00401818  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0040181c  0b 10 e0 e3                                      mvn r1, #0xb
00401820  91 02 02 e0                                      mul r2, r1, r2
00401824  01 20 82 e0                                      add r2, r2, r1
00401828  02 a0 8a e0                                      add sl, sl, r2
0040182c  00 00 5a e3                                      cmp sl, #0
00401830  0a 00 00 0a                                      beq #0x401860
00401834  14 20 9d e5                                      ldr r2, [sp, #0x14]
00401838  03 10 a0 e1                                      mov r1, r3
0040183c  08 00 87 e2                                      add r0, r7, #8
00401840  02 30 63 e0                                      rsb r3, r3, r2
00401844  43 31 a0 e1                                      asr r3, r3, #2
00401848  03 21 83 e0                                      add r2, r3, r3, lsl #2
0040184c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00401850  02 24 82 e0                                      add r2, r2, r2, lsl #8
00401854  02 28 82 e0                                      add r2, r2, r2, lsl #16
00401858  82 20 83 e0                                      add r2, r3, r2, lsl #1
0040185c  98 ff ff eb                                      bl #0x4016c4
00401860  08 00 a0 e1                                      mov r0, r8
00401864  1c d0 8d e2                                      add sp, sp, #0x1c
00401868  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0040186c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00401870  00 80 a0 e3                                      mov r8, #0
00401874  da ff ff ea                                      b #0x4017e4
00401878  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0040187c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00401880  04 20 95 e5                                      ldr r2, [r5, #4]
00401884  6a ff ff eb                                      bl #0x401634
00401888  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0040188c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00401890  03 00 5a e1                                      cmp sl, r3
00401894  04 80 a0 01                                      moveq r8, r4
00401898  04 00 00 1a                                      bne #0x4018b0
0040189c  d0 ff ff ea                                      b #0x4017e4
004018a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
004018a4  0c a0 8a e2                                      add sl, sl, #0xc
004018a8  03 00 5a e1                                      cmp sl, r3
004018ac  ee ff ff 0a                                      beq #0x40186c
004018b0  00 00 9a e5                                      ldr r0, [sl]
004018b4  6b e1 ff eb                                      bl #0x3f9e68
004018b8  00 00 50 e3                                      cmp r0, #0
004018bc  f7 ff ff 0a                                      beq #0x4018a0
004018c0  08 10 9a e5                                      ldr r1, [sl, #8]
004018c4  05 00 a0 e1                                      mov r0, r5
004018c8  88 f0 ff eb                                      bl #0x3fdaf0
004018cc  00 30 50 e2                                      subs r3, r0, #0
004018d0  f2 ff ff 1a                                      bne #0x4018a0
004018d4  08 20 9a e5                                      ldr r2, [sl, #8]
004018d8  05 00 a0 e1                                      mov r0, r5
004018dc  06 10 a0 e1                                      mov r1, r6
004018e0  53 fb ff eb                                      bl #0x400634
004018e4  01 80 a0 e3                                      mov r8, #1
004018e8  10 a0 9d e5                                      ldr sl, [sp, #0x10]
004018ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004018f0  bb ff ff ea                                      b #0x4017e4
004018f4  34 00 9f e5                                      ldr r0, [pc, #0x34]
004018f8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004018fc  34 20 9f e5                                      ldr r2, [pc, #0x34]
00401900  00 00 93 e7                                      ldr r0, [r3, r0]
00401904  30 30 9f e5                                      ldr r3, [pc, #0x30]
00401908  91 c0 a0 e3                                      mov ip, #0x91
0040190c  01 10 8f e0                                      add r1, pc, r1
00401910  02 20 8f e0                                      add r2, pc, r2
00401914  03 30 8f e0                                      add r3, pc, r3
00401918  a8 00 80 e2                                      add r0, r0, #0xa8
0040191c  00 c0 8d e5                                      str ip, [sp]
00401920  b7 31 fc eb                                      bl #0x30e004
00401924  84 ff ff ea                                      b #0x40173c
; mapping-symbol data/literal pool
00401928  8c 33 59 00 c0 39 00 00 c0 19 00 00 cc ca 4b 00  .byte 0x8c, 0x33, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xcc, 0xca, 0x4b, 0x00
00401938  e0 5a 4c 00 c4 5b 4c 00                          .byte 0xe0, 0x5a, 0x4c, 0x00, 0xc4, 0x5b, 0x4c, 0x00

; FUNCTION 0x00401940, declared_size=4, range_size=4, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory13EquipSlotAutoEjP9Character
; demangled: ItemInventory::EquipSlotAuto(unsigned int, Character*)
; decoder-mode: arm
00401940  67 ff ff ea                                      b #0x4016e4

; FUNCTION 0x00401b90, declared_size=556, range_size=556, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory16_GetProbQuantityEii
; demangled: ItemInventory::_GetProbQuantity(int, int)
; decoder-mode: arm
00401b90  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00401b94  e8 41 9f e5                                      ldr r4, [pc, #0x1e8]
00401b98  00 50 50 e2                                      subs r5, r0, #0
00401b9c  0c d0 4d e2                                      sub sp, sp, #0xc
00401ba0  01 60 a0 e1                                      mov r6, r1
00401ba4  04 40 8f e0                                      add r4, pc, r4
00401ba8  21 00 00 ba                                      blt #0x401c34
00401bac  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
00401bb0  03 30 94 e7                                      ldr r3, [r4, r3]
00401bb4  00 30 93 e5                                      ldr r3, [r3]
00401bb8  03 00 55 e1                                      cmp r5, r3
00401bbc  1c 00 00 aa                                      bge #0x401c34
00401bc0  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
00401bc4  0c 20 a0 e3                                      mov r2, #0xc
00401bc8  03 30 94 e7                                      ldr r3, [r4, r3]
00401bcc  00 30 93 e5                                      ldr r3, [r3]
00401bd0  92 35 25 e0                                      mla r5, r2, r5, r3
00401bd4  04 10 95 e5                                      ldr r1, [r5, #4]
00401bd8  00 00 51 e3                                      cmp r1, #0
00401bdc  0a 00 00 0a                                      beq #0x401c0c
00401be0  08 00 95 e5                                      ldr r0, [r5, #8]
00401be4  00 30 a0 e3                                      mov r3, #0
00401be8  03 70 a0 e1                                      mov r7, r3
00401bec  83 21 80 e0                                      add r2, r0, r3, lsl #3
00401bf0  f6 20 d2 e1                                      ldrsh r2, [r2, #6]
00401bf4  01 30 83 e2                                      add r3, r3, #1
00401bf8  01 00 53 e1                                      cmp r3, r1
00401bfc  02 70 87 e0                                      add r7, r7, r2
00401c00  f9 ff ff 1a                                      bne #0x401bec
00401c04  00 00 57 e3                                      cmp r7, #0
00401c08  1f 00 00 1a                                      bne #0x401c8c
00401c0c  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
00401c10  03 30 94 e7                                      ldr r3, [r4, r3]
00401c14  00 30 93 e5                                      ldr r3, [r3]
00401c18  02 00 53 e3                                      cmp r3, #2
00401c1c  53 00 00 0a                                      beq #0x401d70
00401c20  01 00 53 e3                                      cmp r3, #1
00401c24  43 00 00 0a                                      beq #0x401d38
00401c28  00 00 a0 e3                                      mov r0, #0
00401c2c  0c d0 8d e2                                      add sp, sp, #0xc
00401c30  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00401c34  54 31 9f e5                                      ldr r3, [pc, #0x154]
00401c38  03 30 94 e7                                      ldr r3, [r4, r3]
00401c3c  00 30 93 e5                                      ldr r3, [r3]
00401c40  02 00 53 e3                                      cmp r3, #2
00401c44  00 30 a0 03                                      moveq r3, #0
00401c48  00 30 83 05                                      streq r3, [r3]
00401c4c  db ff ff 0a                                      beq #0x401bc0
00401c50  01 00 53 e3                                      cmp r3, #1
00401c54  d9 ff ff 1a                                      bne #0x401bc0
00401c58  34 01 9f e5                                      ldr r0, [pc, #0x134]
00401c5c  34 11 9f e5                                      ldr r1, [pc, #0x134]
00401c60  34 21 9f e5                                      ldr r2, [pc, #0x134]
00401c64  00 00 94 e7                                      ldr r0, [r4, r0]
00401c68  30 31 9f e5                                      ldr r3, [pc, #0x130]
00401c6c  77 c0 a0 e3                                      mov ip, #0x77
00401c70  01 10 8f e0                                      add r1, pc, r1
00401c74  02 20 8f e0                                      add r2, pc, r2
00401c78  03 30 8f e0                                      add r3, pc, r3
00401c7c  a8 00 80 e2                                      add r0, r0, #0xa8
00401c80  00 c0 8d e5                                      str ip, [sp]
00401c84  de 30 fc eb                                      bl #0x30e004
00401c88  cc ff ff ea                                      b #0x401bc0
00401c8c  07 00 a0 e1                                      mov r0, r7
00401c90  99 ff ff eb                                      bl #0x401afc
00401c94  04 c0 95 e5                                      ldr ip, [r5, #4]
00401c98  06 00 80 e0                                      add r0, r0, r6
00401c9c  07 00 50 e1                                      cmp r0, r7
00401ca0  01 00 47 22                                      subhs r0, r7, #1
00401ca4  00 00 5c e3                                      cmp ip, #0
00401ca8  0d 00 00 0a                                      beq #0x401ce4
00401cac  08 10 95 e5                                      ldr r1, [r5, #8]
00401cb0  f6 30 d1 e1                                      ldrsh r3, [r1, #6]
00401cb4  03 00 50 e1                                      cmp r0, r3
00401cb8  00 20 a0 23                                      movhs r2, #0
00401cbc  04 00 00 2a                                      bhs #0x401cd4
00401cc0  2d 00 00 ea                                      b #0x401d7c
00401cc4  fe 30 d1 e1                                      ldrsh r3, [r1, #0xe]
00401cc8  08 10 81 e2                                      add r1, r1, #8
00401ccc  00 00 53 e1                                      cmp r3, r0
00401cd0  29 00 00 8a                                      bhi #0x401d7c
00401cd4  01 20 82 e2                                      add r2, r2, #1
00401cd8  0c 00 52 e1                                      cmp r2, ip
00401cdc  00 00 63 e0                                      rsb r0, r3, r0
00401ce0  f7 ff ff 1a                                      bne #0x401cc4
00401ce4  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00401ce8  03 30 94 e7                                      ldr r3, [r4, r3]
00401cec  00 30 93 e5                                      ldr r3, [r3]
00401cf0  02 00 53 e3                                      cmp r3, #2
00401cf4  1d 00 00 0a                                      beq #0x401d70
00401cf8  01 00 53 e3                                      cmp r3, #1
00401cfc  c9 ff ff 1a                                      bne #0x401c28
00401d00  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
00401d04  98 10 9f e5                                      ldr r1, [pc, #0x98]
00401d08  98 20 9f e5                                      ldr r2, [pc, #0x98]
00401d0c  00 00 94 e7                                      ldr r0, [r4, r0]
00401d10  94 30 9f e5                                      ldr r3, [pc, #0x94]
00401d14  98 c0 a0 e3                                      mov ip, #0x98
00401d18  01 10 8f e0                                      add r1, pc, r1
00401d1c  a8 00 80 e2                                      add r0, r0, #0xa8
00401d20  02 20 8f e0                                      add r2, pc, r2
00401d24  03 30 8f e0                                      add r3, pc, r3
00401d28  00 c0 8d e5                                      str ip, [sp]
00401d2c  b4 30 fc eb                                      bl #0x30e004
00401d30  00 00 a0 e3                                      mov r0, #0
00401d34  bc ff ff ea                                      b #0x401c2c
00401d38  54 00 9f e5                                      ldr r0, [pc, #0x54]
00401d3c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00401d40  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00401d44  00 00 94 e7                                      ldr r0, [r4, r0]
00401d48  68 30 9f e5                                      ldr r3, [pc, #0x68]
00401d4c  84 c0 a0 e3                                      mov ip, #0x84
00401d50  01 10 8f e0                                      add r1, pc, r1
00401d54  a8 00 80 e2                                      add r0, r0, #0xa8
00401d58  02 20 8f e0                                      add r2, pc, r2
00401d5c  03 30 8f e0                                      add r3, pc, r3
00401d60  00 c0 8d e5                                      str ip, [sp]
00401d64  a6 30 fc eb                                      bl #0x30e004
00401d68  00 00 a0 e3                                      mov r0, #0
00401d6c  ae ff ff ea                                      b #0x401c2c
00401d70  00 00 a0 e3                                      mov r0, #0
00401d74  00 00 80 e5                                      str r0, [r0]
00401d78  ab ff ff ea                                      b #0x401c2c
00401d7c  f4 00 d1 e1                                      ldrsh r0, [r1, #4]
00401d80  a9 ff ff ea                                      b #0x401c2c
; mapping-symbol data/literal pool
00401d84  ec 2e 59 00 54 4b 00 00 54 07 00 00 c0 39 00 00  .byte 0xec, 0x2e, 0x59, 0x00, 0x54, 0x4b, 0x00, 0x00, 0x54, 0x07, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00401d94  c0 19 00 00 68 c7 4b 00 c4 58 4c 00 08 59 4c 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x68, 0xc7, 0x4b, 0x00, 0xc4, 0x58, 0x4c, 0x00, 0x08, 0x59, 0x4c, 0x00
00401da4  c0 c6 4b 00 e0 58 4c 00 5c 58 4c 00 88 c6 4b 00  .byte 0xc0, 0xc6, 0x4b, 0x00, 0xe0, 0x58, 0x4c, 0x00, 0x5c, 0x58, 0x4c, 0x00, 0x88, 0xc6, 0x4b, 0x00
00401db4  78 58 4c 00 24 58 4c 00                          .byte 0x78, 0x58, 0x4c, 0x00, 0x24, 0x58, 0x4c, 0x00

; FUNCTION 0x00401dbc, declared_size=380, range_size=380, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory14_GetRandomItemERKN7Structs17ItemListEntryListE
; demangled: ItemInventory::_GetRandomItem(Structs::ItemListEntryList const&)
; decoder-mode: arm
00401dbc  30 40 2d e9                                      push {r4, r5, lr}
00401dc0  04 c0 90 e5                                      ldr ip, [r0, #4]
00401dc4  48 41 9f e5                                      ldr r4, [pc, #0x148]
00401dc8  0c d0 4d e2                                      sub sp, sp, #0xc
00401dcc  00 00 5c e3                                      cmp ip, #0
00401dd0  00 50 a0 e1                                      mov r5, r0
00401dd4  04 40 8f e0                                      add r4, pc, r4
00401dd8  0a 00 00 0a                                      beq #0x401e08
00401ddc  00 30 a0 e3                                      mov r3, #0
00401de0  08 20 90 e5                                      ldr r2, [r0, #8]
00401de4  03 00 a0 e1                                      mov r0, r3
00401de8  f8 10 d2 e1                                      ldrsh r1, [r2, #8]
00401dec  01 30 83 e2                                      add r3, r3, #1
00401df0  0c 00 53 e1                                      cmp r3, ip
00401df4  01 00 80 e0                                      add r0, r0, r1
00401df8  0c 20 82 e2                                      add r2, r2, #0xc
00401dfc  f9 ff ff 1a                                      bne #0x401de8
00401e00  00 00 50 e3                                      cmp r0, #0
00401e04  09 00 00 1a                                      bne #0x401e30
00401e08  08 31 9f e5                                      ldr r3, [pc, #0x108]
00401e0c  03 30 94 e7                                      ldr r3, [r4, r3]
00401e10  00 30 93 e5                                      ldr r3, [r3]
00401e14  02 00 53 e3                                      cmp r3, #2
00401e18  3a 00 00 0a                                      beq #0x401f08
00401e1c  01 00 53 e3                                      cmp r3, #1
00401e20  2a 00 00 0a                                      beq #0x401ed0
00401e24  00 00 a0 e3                                      mov r0, #0
00401e28  0c d0 8d e2                                      add sp, sp, #0xc
00401e2c  30 80 bd e8                                      pop {r4, r5, pc}
00401e30  31 ff ff eb                                      bl #0x401afc
00401e34  04 c0 95 e5                                      ldr ip, [r5, #4]
00401e38  00 00 5c e3                                      cmp ip, #0
00401e3c  0e 00 00 0a                                      beq #0x401e7c
00401e40  08 10 95 e5                                      ldr r1, [r5, #8]
00401e44  00 30 a0 e1                                      mov r3, r0
00401e48  f8 20 d1 e1                                      ldrsh r2, [r1, #8]
00401e4c  02 00 50 e1                                      cmp r0, r2
00401e50  00 00 a0 23                                      movhs r0, #0
00401e54  04 00 00 2a                                      bhs #0x401e6c
00401e58  f1 ff ff ea                                      b #0x401e24
00401e5c  f4 21 d1 e1                                      ldrsh r2, [r1, #0x14]
00401e60  0c 10 81 e2                                      add r1, r1, #0xc
00401e64  03 00 52 e1                                      cmp r2, r3
00401e68  ee ff ff 8a                                      bhi #0x401e28
00401e6c  01 00 80 e2                                      add r0, r0, #1
00401e70  0c 00 50 e1                                      cmp r0, ip
00401e74  03 30 62 e0                                      rsb r3, r2, r3
00401e78  f7 ff ff 1a                                      bne #0x401e5c
00401e7c  94 30 9f e5                                      ldr r3, [pc, #0x94]
00401e80  03 30 94 e7                                      ldr r3, [r4, r3]
00401e84  00 30 93 e5                                      ldr r3, [r3]
00401e88  02 00 53 e3                                      cmp r3, #2
00401e8c  1d 00 00 0a                                      beq #0x401f08
00401e90  01 00 53 e3                                      cmp r3, #1
00401e94  e2 ff ff 1a                                      bne #0x401e24
00401e98  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
00401e9c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00401ea0  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00401ea4  00 00 94 e7                                      ldr r0, [r4, r0]
00401ea8  78 30 9f e5                                      ldr r3, [pc, #0x78]
00401eac  63 cf a0 e3                                      mov ip, #0x18c
00401eb0  01 10 8f e0                                      add r1, pc, r1
00401eb4  a8 00 80 e2                                      add r0, r0, #0xa8
00401eb8  02 20 8f e0                                      add r2, pc, r2
00401ebc  03 30 8f e0                                      add r3, pc, r3
00401ec0  00 c0 8d e5                                      str ip, [sp]
00401ec4  4e 30 fc eb                                      bl #0x30e004
00401ec8  00 00 a0 e3                                      mov r0, #0
00401ecc  d5 ff ff ea                                      b #0x401e28
00401ed0  44 00 9f e5                                      ldr r0, [pc, #0x44]
00401ed4  50 10 9f e5                                      ldr r1, [pc, #0x50]
00401ed8  50 20 9f e5                                      ldr r2, [pc, #0x50]
00401edc  00 00 94 e7                                      ldr r0, [r4, r0]
00401ee0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00401ee4  7e c1 00 e3                                      movw ip, #0x17e
00401ee8  01 10 8f e0                                      add r1, pc, r1
00401eec  a8 00 80 e2                                      add r0, r0, #0xa8
00401ef0  02 20 8f e0                                      add r2, pc, r2
00401ef4  03 30 8f e0                                      add r3, pc, r3
00401ef8  00 c0 8d e5                                      str ip, [sp]
00401efc  40 30 fc eb                                      bl #0x30e004
00401f00  00 00 a0 e3                                      mov r0, #0
00401f04  c7 ff ff ea                                      b #0x401e28
00401f08  00 00 a0 e3                                      mov r0, #0
00401f0c  00 00 80 e5                                      str r0, [r0]
00401f10  c4 ff ff ea                                      b #0x401e28
; mapping-symbol data/literal pool
00401f14  bc 2c 59 00 c0 39 00 00 c0 19 00 00 28 c5 4b 00  .byte 0xbc, 0x2c, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x28, 0xc5, 0x4b, 0x00
00401f24  b0 57 4c 00 c4 56 4c 00 f0 c4 4b 00 48 57 4c 00  .byte 0xb0, 0x57, 0x4c, 0x00, 0xc4, 0x56, 0x4c, 0x00, 0xf0, 0xc4, 0x4b, 0x00, 0x48, 0x57, 0x4c, 0x00
00401f34  8c 56 4c 00                                      .byte 0x8c, 0x56, 0x4c, 0x00

; FUNCTION 0x00401f38, declared_size=380, range_size=380, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory24_GetRandomItemPowerEntryERKN7Structs18ItemPowerEntryListE
; demangled: ItemInventory::_GetRandomItemPowerEntry(Structs::ItemPowerEntryList const&)
; decoder-mode: arm
00401f38  30 40 2d e9                                      push {r4, r5, lr}
00401f3c  04 c0 90 e5                                      ldr ip, [r0, #4]
00401f40  48 41 9f e5                                      ldr r4, [pc, #0x148]
00401f44  0c d0 4d e2                                      sub sp, sp, #0xc
00401f48  00 00 5c e3                                      cmp ip, #0
00401f4c  00 50 a0 e1                                      mov r5, r0
00401f50  04 40 8f e0                                      add r4, pc, r4
00401f54  0a 00 00 0a                                      beq #0x401f84
00401f58  00 30 a0 e3                                      mov r3, #0
00401f5c  08 20 90 e5                                      ldr r2, [r0, #8]
00401f60  03 00 a0 e1                                      mov r0, r3
00401f64  d8 10 d2 e1                                      ldrsb r1, [r2, #8]
00401f68  01 30 83 e2                                      add r3, r3, #1
00401f6c  0c 00 53 e1                                      cmp r3, ip
00401f70  01 00 80 e0                                      add r0, r0, r1
00401f74  0c 20 82 e2                                      add r2, r2, #0xc
00401f78  f9 ff ff 1a                                      bne #0x401f64
00401f7c  00 00 50 e3                                      cmp r0, #0
00401f80  09 00 00 1a                                      bne #0x401fac
00401f84  08 31 9f e5                                      ldr r3, [pc, #0x108]
00401f88  03 30 94 e7                                      ldr r3, [r4, r3]
00401f8c  00 30 93 e5                                      ldr r3, [r3]
00401f90  02 00 53 e3                                      cmp r3, #2
00401f94  3a 00 00 0a                                      beq #0x402084
00401f98  01 00 53 e3                                      cmp r3, #1
00401f9c  2a 00 00 0a                                      beq #0x40204c
00401fa0  00 00 a0 e3                                      mov r0, #0
00401fa4  0c d0 8d e2                                      add sp, sp, #0xc
00401fa8  30 80 bd e8                                      pop {r4, r5, pc}
00401fac  d2 fe ff eb                                      bl #0x401afc
00401fb0  04 c0 95 e5                                      ldr ip, [r5, #4]
00401fb4  00 00 5c e3                                      cmp ip, #0
00401fb8  0e 00 00 0a                                      beq #0x401ff8
00401fbc  08 10 95 e5                                      ldr r1, [r5, #8]
00401fc0  00 30 a0 e1                                      mov r3, r0
00401fc4  d8 20 d1 e1                                      ldrsb r2, [r1, #8]
00401fc8  02 00 50 e1                                      cmp r0, r2
00401fcc  00 00 a0 23                                      movhs r0, #0
00401fd0  04 00 00 2a                                      bhs #0x401fe8
00401fd4  f1 ff ff ea                                      b #0x401fa0
00401fd8  d4 21 d1 e1                                      ldrsb r2, [r1, #0x14]
00401fdc  0c 10 81 e2                                      add r1, r1, #0xc
00401fe0  03 00 52 e1                                      cmp r2, r3
00401fe4  ee ff ff 8a                                      bhi #0x401fa4
00401fe8  01 00 80 e2                                      add r0, r0, #1
00401fec  0c 00 50 e1                                      cmp r0, ip
00401ff0  03 30 62 e0                                      rsb r3, r2, r3
00401ff4  f7 ff ff 1a                                      bne #0x401fd8
00401ff8  94 30 9f e5                                      ldr r3, [pc, #0x94]
00401ffc  03 30 94 e7                                      ldr r3, [r4, r3]
00402000  00 30 93 e5                                      ldr r3, [r3]
00402004  02 00 53 e3                                      cmp r3, #2
00402008  1d 00 00 0a                                      beq #0x402084
0040200c  01 00 53 e3                                      cmp r3, #1
00402010  e2 ff ff 1a                                      bne #0x401fa0
00402014  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
00402018  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0040201c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00402020  00 00 94 e7                                      ldr r0, [r4, r0]
00402024  78 30 9f e5                                      ldr r3, [pc, #0x78]
00402028  2d c2 00 e3                                      movw ip, #0x22d
0040202c  01 10 8f e0                                      add r1, pc, r1
00402030  a8 00 80 e2                                      add r0, r0, #0xa8
00402034  02 20 8f e0                                      add r2, pc, r2
00402038  03 30 8f e0                                      add r3, pc, r3
0040203c  00 c0 8d e5                                      str ip, [sp]
00402040  ef 2f fc eb                                      bl #0x30e004
00402044  00 00 a0 e3                                      mov r0, #0
00402048  d5 ff ff ea                                      b #0x401fa4
0040204c  44 00 9f e5                                      ldr r0, [pc, #0x44]
00402050  50 10 9f e5                                      ldr r1, [pc, #0x50]
00402054  50 20 9f e5                                      ldr r2, [pc, #0x50]
00402058  00 00 94 e7                                      ldr r0, [r4, r0]
0040205c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00402060  1f c2 00 e3                                      movw ip, #0x21f
00402064  01 10 8f e0                                      add r1, pc, r1
00402068  a8 00 80 e2                                      add r0, r0, #0xa8
0040206c  02 20 8f e0                                      add r2, pc, r2
00402070  03 30 8f e0                                      add r3, pc, r3
00402074  00 c0 8d e5                                      str ip, [sp]
00402078  e1 2f fc eb                                      bl #0x30e004
0040207c  00 00 a0 e3                                      mov r0, #0
00402080  c7 ff ff ea                                      b #0x401fa4
00402084  00 00 a0 e3                                      mov r0, #0
00402088  00 00 80 e5                                      str r0, [r0]
0040208c  c4 ff ff ea                                      b #0x401fa4
; mapping-symbol data/literal pool
00402090  40 2b 59 00 c0 39 00 00 c0 19 00 00 ac c3 4b 00  .byte 0x40, 0x2b, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xac, 0xc3, 0x4b, 0x00
004020a0  a4 56 4c 00 48 55 4c 00 74 c3 4b 00 34 56 4c 00  .byte 0xa4, 0x56, 0x4c, 0x00, 0x48, 0x55, 0x4c, 0x00, 0x74, 0xc3, 0x4b, 0x00, 0x34, 0x56, 0x4c, 0x00
004020b0  10 55 4c 00                                      .byte 0x10, 0x55, 0x4c, 0x00

; FUNCTION 0x004020b4, declared_size=208, range_size=208, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory17CalcLootItemValueEP12ItemInstancei
; demangled: ItemInventory::CalcLootItemValue(ItemInstance*, int)
; decoder-mode: arm
004020b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004020b8  01 60 a0 e1                                      mov r6, r1
004020bc  00 50 a0 e1                                      mov r5, r0
004020c0  50 df ff eb                                      bl #0x3f9e08
004020c4  58 30 90 e5                                      ldr r3, [r0, #0x58]
004020c8  0d 00 53 e3                                      cmp r3, #0xd
004020cc  16 00 00 0a                                      beq #0x40212c
004020d0  6c 60 90 e5                                      ldr r6, [r0, #0x6c]
004020d4  70 30 90 e5                                      ldr r3, [r0, #0x70]
004020d8  00 40 a0 e3                                      mov r4, #0
004020dc  96 03 06 e0                                      mul r6, r6, r3
004020e0  07 00 00 ea                                      b #0x402104
004020e4  76 df ff eb                                      bl #0x3f9ec4
004020e8  04 10 a0 e1                                      mov r1, r4
004020ec  20 70 90 e5                                      ldr r7, [r0, #0x20]
004020f0  05 00 a0 e1                                      mov r0, r5
004020f4  72 df ff eb                                      bl #0x3f9ec4
004020f8  18 30 90 e5                                      ldr r3, [r0, #0x18]
004020fc  01 40 84 e2                                      add r4, r4, #1
00402100  93 67 26 e0                                      mla r6, r3, r7, r6
00402104  05 00 a0 e1                                      mov r0, r5
00402108  5c df ff eb                                      bl #0x3f9e80
0040210c  00 00 54 e1                                      cmp r4, r0
00402110  04 10 a0 e1                                      mov r1, r4
00402114  05 00 a0 e1                                      mov r0, r5
00402118  f1 ff ff 3a                                      blo #0x4020e4
0040211c  05 00 a0 e1                                      mov r0, r5
00402120  06 10 a0 e1                                      mov r1, r6
00402124  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00402128  ca e6 ff ea                                      b #0x3fbc58
0040212c  70 30 90 e5                                      ldr r3, [r0, #0x70]
00402130  6c 40 90 e5                                      ldr r4, [r0, #0x6c]
00402134  01 00 83 e2                                      add r0, r3, #1
00402138  00 00 64 e0                                      rsb r0, r4, r0
0040213c  6e fe ff eb                                      bl #0x401afc
00402140  04 00 80 e0                                      add r0, r0, r4
00402144  06 32 fc eb                                      bl #0x30e964
00402148  00 40 a0 e1                                      mov r4, r0
0040214c  46 04 a0 e1                                      asr r0, r6, #8
00402150  03 32 fc eb                                      bl #0x30e964
00402154  42 14 a0 e3                                      mov r1, #0x42000000
00402158  32 17 81 e2                                      add r1, r1, #0xc80000
0040215c  90 32 fc eb                                      bl #0x30eba4
00402160  42 14 a0 e3                                      mov r1, #0x42000000
00402164  32 17 81 e2                                      add r1, r1, #0xc80000
00402168  c9 32 fc eb                                      bl #0x30ec94
0040216c  00 10 a0 e1                                      mov r1, r0
00402170  04 00 a0 e1                                      mov r0, r4
00402174  fc 32 fc eb                                      bl #0x30ed6c
00402178  d3 30 fc eb                                      bl #0x30e4cc
0040217c  00 60 a0 e1                                      mov r6, r0
00402180  e5 ff ff ea                                      b #0x40211c

; FUNCTION 0x004027a4, declared_size=176, range_size=176, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory20_IsLootEntryUsingPctERKN7Structs9LootEntryE
; demangled: ItemInventory::_IsLootEntryUsingPct(Structs::LootEntry const&)
; decoder-mode: arm
004027a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004027a8  94 40 9f e5                                      ldr r4, [pc, #0x94]
004027ac  94 60 9f e5                                      ldr r6, [pc, #0x94]
004027b0  94 20 9f e5                                      ldr r2, [pc, #0x94]
004027b4  04 40 8f e0                                      add r4, pc, r4
004027b8  06 30 94 e7                                      ldr r3, [r4, r6]
004027bc  02 70 94 e7                                      ldr r7, [r4, r2]
004027c0  20 d0 4d e2                                      sub sp, sp, #0x20
004027c4  00 30 93 e5                                      ldr r3, [r3]
004027c8  00 80 a0 e1                                      mov r8, r0
004027cc  07 00 a0 e1                                      mov r0, r7
004027d0  1c 30 8d e5                                      str r3, [sp, #0x1c]
004027d4  2b d4 fc eb                                      bl #0x337888
004027d8  70 10 9f e5                                      ldr r1, [pc, #0x70]
004027dc  04 50 8d e2                                      add r5, sp, #4
004027e0  0d 20 a0 e1                                      mov r2, sp
004027e4  01 10 8f e0                                      add r1, pc, r1
004027e8  05 00 a0 e1                                      mov r0, r5
004027ec  3e 46 fc eb                                      bl #0x3140ec
004027f0  07 00 a0 e1                                      mov r0, r7
004027f4  05 10 a0 e1                                      mov r1, r5
004027f8  a2 d4 fc eb                                      bl #0x337a88
004027fc  00 70 a0 e1                                      mov r7, r0
00402800  05 00 a0 e1                                      mov r0, r5
00402804  92 56 fc eb                                      bl #0x318254
00402808  00 00 57 e3                                      cmp r7, #0
0040280c  01 00 a0 13                                      movne r0, #1
00402810  03 00 00 1a                                      bne #0x402824
00402814  14 00 98 e5                                      ldr r0, [r8, #0x14]
00402818  64 00 50 e3                                      cmp r0, #0x64
0040281c  00 00 a0 83                                      movhi r0, #0
00402820  01 00 a0 93                                      movls r0, #1
00402824  06 30 94 e7                                      ldr r3, [r4, r6]
00402828  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0040282c  00 30 93 e5                                      ldr r3, [r3]
00402830  03 00 52 e1                                      cmp r2, r3
00402834  01 00 00 1a                                      bne #0x402840
00402838  20 d0 8d e2                                      add sp, sp, #0x20
0040283c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00402840  b2 2e fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00402844  dc 22 59 00 ac 40 00 00 84 08 00 00 34 4f 4c 00  .byte 0xdc, 0x22, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x34, 0x4f, 0x4c, 0x00

; FUNCTION 0x00402854, declared_size=124, range_size=124, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory17_GetEffectiveProbERKN7Structs9LootEntryE
; demangled: ItemInventory::_GetEffectiveProb(Structs::LootEntry const&)
; decoder-mode: arm
00402854  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00402858  00 40 a0 e1                                      mov r4, r0
0040285c  d0 ff ff eb                                      bl #0x4027a4
00402860  60 30 9f e5                                      ldr r3, [pc, #0x60]
00402864  00 00 50 e3                                      cmp r0, #0
00402868  03 30 8f e0                                      add r3, pc, r3
0040286c  01 00 00 0a                                      beq #0x402878
00402870  00 00 a0 e3                                      mov r0, #0
00402874  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00402878  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0040287c  20 50 94 e5                                      ldr r5, [r4, #0x20]
00402880  18 60 94 e5                                      ldr r6, [r4, #0x18]
00402884  02 30 93 e7                                      ldr r3, [r3, r2]
00402888  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0040288c  1c 90 94 e5                                      ldr sb, [r4, #0x1c]
00402890  40 40 93 e5                                      ldr r4, [r3, #0x40]
00402894  04 00 a0 e1                                      mov r0, r4
00402898  8a b0 fd eb                                      bl #0x36eac8
0040289c  00 70 a0 e1                                      mov r7, r0
004028a0  04 00 a0 e1                                      mov r0, r4
004028a4  85 b0 fd eb                                      bl #0x36eac0
004028a8  00 a0 a0 e1                                      mov sl, r0
004028ac  04 00 a0 e1                                      mov r0, r4
004028b0  80 b0 fd eb                                      bl #0x36eab8
004028b4  99 0a 02 e0                                      mul r2, sb, sl
004028b8  98 27 23 e0                                      mla r3, r8, r7, r2
004028bc  06 30 83 e0                                      add r3, r3, r6
004028c0  95 30 20 e0                                      mla r0, r5, r0, r3
004028c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
004028c8  28 22 59 00 f4 37 00 00                          .byte 0x28, 0x22, 0x59, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004028d0, declared_size=400, range_size=400, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory19_GetRandomLootEntryERKSt6vectorIPKN7Structs9LootEntryESaIS4_EE
; demangled: ItemInventory::_GetRandomLootEntry(std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> > const&)
; decoder-mode: arm
004028d0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004028d4  00 30 90 e5                                      ldr r3, [r0]
004028d8  04 20 90 e5                                      ldr r2, [r0, #4]
004028dc  64 71 9f e5                                      ldr r7, [pc, #0x164]
004028e0  0c d0 4d e2                                      sub sp, sp, #0xc
004028e4  02 20 63 e0                                      rsb r2, r3, r2
004028e8  22 21 b0 e1                                      lsrs r2, r2, #2
004028ec  00 50 a0 e1                                      mov r5, r0
004028f0  07 70 8f e0                                      add r7, pc, r7
004028f4  18 00 00 0a                                      beq #0x40295c
004028f8  00 40 a0 e3                                      mov r4, #0
004028fc  04 60 a0 e1                                      mov r6, r4
00402900  05 00 00 ea                                      b #0x40291c
00402904  00 30 95 e5                                      ldr r3, [r5]
00402908  04 20 95 e5                                      ldr r2, [r5, #4]
0040290c  01 40 84 e2                                      add r4, r4, #1
00402910  02 20 63 e0                                      rsb r2, r3, r2
00402914  42 01 54 e1                                      cmp r4, r2, asr #2
00402918  0d 00 00 2a                                      bhs #0x402954
0040291c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00402920  9f ff ff eb                                      bl #0x4027a4
00402924  00 00 50 e3                                      cmp r0, #0
00402928  f5 ff ff 1a                                      bne #0x402904
0040292c  00 30 95 e5                                      ldr r3, [r5]
00402930  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00402934  c6 ff ff eb                                      bl #0x402854
00402938  00 30 95 e5                                      ldr r3, [r5]
0040293c  04 20 95 e5                                      ldr r2, [r5, #4]
00402940  01 40 84 e2                                      add r4, r4, #1
00402944  00 60 86 e0                                      add r6, r6, r0
00402948  02 20 63 e0                                      rsb r2, r3, r2
0040294c  42 01 54 e1                                      cmp r4, r2, asr #2
00402950  f1 ff ff 3a                                      blo #0x40291c
00402954  00 00 56 e3                                      cmp r6, #0
00402958  03 00 00 1a                                      bne #0x40296c
0040295c  00 40 a0 e3                                      mov r4, #0
00402960  04 00 a0 e1                                      mov r0, r4
00402964  0c d0 8d e2                                      add sp, sp, #0xc
00402968  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0040296c  06 00 a0 e1                                      mov r0, r6
00402970  61 fc ff eb                                      bl #0x401afc
00402974  00 30 95 e5                                      ldr r3, [r5]
00402978  04 20 95 e5                                      ldr r2, [r5, #4]
0040297c  02 20 63 e0                                      rsb r2, r3, r2
00402980  22 21 b0 e1                                      lsrs r2, r2, #2
00402984  18 00 00 0a                                      beq #0x4029ec
00402988  00 60 a0 e1                                      mov r6, r0
0040298c  00 40 a0 e3                                      mov r4, #0
00402990  05 00 00 ea                                      b #0x4029ac
00402994  00 30 95 e5                                      ldr r3, [r5]
00402998  04 20 95 e5                                      ldr r2, [r5, #4]
0040299c  01 40 84 e2                                      add r4, r4, #1
004029a0  02 20 63 e0                                      rsb r2, r3, r2
004029a4  42 01 54 e1                                      cmp r4, r2, asr #2
004029a8  0f 00 00 2a                                      bhs #0x4029ec
004029ac  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004029b0  7b ff ff eb                                      bl #0x4027a4
004029b4  00 00 50 e3                                      cmp r0, #0
004029b8  f5 ff ff 1a                                      bne #0x402994
004029bc  00 30 95 e5                                      ldr r3, [r5]
004029c0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004029c4  a2 ff ff eb                                      bl #0x402854
004029c8  06 00 50 e1                                      cmp r0, r6
004029cc  e3 ff ff 8a                                      bhi #0x402960
004029d0  00 30 95 e5                                      ldr r3, [r5]
004029d4  04 20 95 e5                                      ldr r2, [r5, #4]
004029d8  01 40 84 e2                                      add r4, r4, #1
004029dc  06 60 60 e0                                      rsb r6, r0, r6
004029e0  02 20 63 e0                                      rsb r2, r3, r2
004029e4  42 01 54 e1                                      cmp r4, r2, asr #2
004029e8  ef ff ff 3a                                      blo #0x4029ac
004029ec  58 30 9f e5                                      ldr r3, [pc, #0x58]
004029f0  03 30 97 e7                                      ldr r3, [r7, r3]
004029f4  00 30 93 e5                                      ldr r3, [r3]
004029f8  02 00 53 e3                                      cmp r3, #2
004029fc  00 40 a0 03                                      moveq r4, #0
00402a00  00 40 84 05                                      streq r4, [r4]
00402a04  d5 ff ff 0a                                      beq #0x402960
00402a08  01 00 53 e3                                      cmp r3, #1
00402a0c  d2 ff ff 1a                                      bne #0x40295c
00402a10  38 00 9f e5                                      ldr r0, [pc, #0x38]
00402a14  38 10 9f e5                                      ldr r1, [pc, #0x38]
00402a18  38 20 9f e5                                      ldr r2, [pc, #0x38]
00402a1c  00 00 97 e7                                      ldr r0, [r7, r0]
00402a20  34 30 9f e5                                      ldr r3, [pc, #0x34]
00402a24  47 c1 00 e3                                      movw ip, #0x147
00402a28  01 10 8f e0                                      add r1, pc, r1
00402a2c  a8 00 80 e2                                      add r0, r0, #0xa8
00402a30  02 20 8f e0                                      add r2, pc, r2
00402a34  03 30 8f e0                                      add r3, pc, r3
00402a38  00 c0 8d e5                                      str ip, [sp]
00402a3c  00 40 a0 e3                                      mov r4, #0
00402a40  6f 2d fc eb                                      bl #0x30e004
00402a44  c5 ff ff ea                                      b #0x402960
; mapping-symbol data/literal pool
00402a48  a0 21 59 00 c0 39 00 00 c0 19 00 00 b0 b9 4b 00  .byte 0xa0, 0x21, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb0, 0xb9, 0x4b, 0x00
00402a58  00 4d 4c 00 4c 4b 4c 00                          .byte 0x00, 0x4d, 0x4c, 0x00, 0x4c, 0x4b, 0x4c, 0x00

; FUNCTION 0x00402a60, declared_size=380, range_size=380, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory19_GetRandomLootEntryERKN7Structs4LootE
; demangled: ItemInventory::_GetRandomLootEntry(Structs::Loot const&)
; decoder-mode: arm
00402a60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00402a64  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00402a68  54 81 9f e5                                      ldr r8, [pc, #0x154]
00402a6c  08 d0 4d e2                                      sub sp, sp, #8
00402a70  00 00 53 e3                                      cmp r3, #0
00402a74  00 40 a0 e1                                      mov r4, r0
00402a78  08 80 8f e0                                      add r8, pc, r8
00402a7c  17 00 00 0a                                      beq #0x402ae0
00402a80  00 50 a0 e3                                      mov r5, #0
00402a84  05 60 a0 e1                                      mov r6, r5
00402a88  05 70 a0 e1                                      mov r7, r5
00402a8c  03 00 00 ea                                      b #0x402aa0
00402a90  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00402a94  24 50 85 e2                                      add r5, r5, #0x24
00402a98  06 00 53 e1                                      cmp r3, r6
00402a9c  0d 00 00 9a                                      bls #0x402ad8
00402aa0  10 00 94 e5                                      ldr r0, [r4, #0x10]
00402aa4  01 60 86 e2                                      add r6, r6, #1
00402aa8  05 00 80 e0                                      add r0, r0, r5
00402aac  3c ff ff eb                                      bl #0x4027a4
00402ab0  00 00 50 e3                                      cmp r0, #0
00402ab4  f5 ff ff 1a                                      bne #0x402a90
00402ab8  10 00 94 e5                                      ldr r0, [r4, #0x10]
00402abc  05 00 80 e0                                      add r0, r0, r5
00402ac0  63 ff ff eb                                      bl #0x402854
00402ac4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00402ac8  00 70 87 e0                                      add r7, r7, r0
00402acc  24 50 85 e2                                      add r5, r5, #0x24
00402ad0  06 00 53 e1                                      cmp r3, r6
00402ad4  f1 ff ff 8a                                      bhi #0x402aa0
00402ad8  00 00 57 e3                                      cmp r7, #0
00402adc  03 00 00 1a                                      bne #0x402af0
00402ae0  00 60 a0 e3                                      mov r6, #0
00402ae4  06 00 a0 e1                                      mov r0, r6
00402ae8  08 d0 8d e2                                      add sp, sp, #8
00402aec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00402af0  07 00 a0 e1                                      mov r0, r7
00402af4  00 fc ff eb                                      bl #0x401afc
00402af8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00402afc  00 00 53 e3                                      cmp r3, #0
00402b00  18 00 00 0a                                      beq #0x402b68
00402b04  00 50 a0 e3                                      mov r5, #0
00402b08  00 70 a0 e1                                      mov r7, r0
00402b0c  05 60 a0 e1                                      mov r6, r5
00402b10  04 00 00 ea                                      b #0x402b28
00402b14  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00402b18  01 60 86 e2                                      add r6, r6, #1
00402b1c  24 50 85 e2                                      add r5, r5, #0x24
00402b20  06 00 53 e1                                      cmp r3, r6
00402b24  0f 00 00 9a                                      bls #0x402b68
00402b28  10 00 94 e5                                      ldr r0, [r4, #0x10]
00402b2c  05 00 80 e0                                      add r0, r0, r5
00402b30  1b ff ff eb                                      bl #0x4027a4
00402b34  00 00 50 e3                                      cmp r0, #0
00402b38  f5 ff ff 1a                                      bne #0x402b14
00402b3c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00402b40  05 00 80 e0                                      add r0, r0, r5
00402b44  42 ff ff eb                                      bl #0x402854
00402b48  07 00 50 e1                                      cmp r0, r7
00402b4c  e4 ff ff 8a                                      bhi #0x402ae4
00402b50  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00402b54  01 60 86 e2                                      add r6, r6, #1
00402b58  07 70 60 e0                                      rsb r7, r0, r7
00402b5c  06 00 53 e1                                      cmp r3, r6
00402b60  24 50 85 e2                                      add r5, r5, #0x24
00402b64  ef ff ff 8a                                      bhi #0x402b28
00402b68  58 30 9f e5                                      ldr r3, [pc, #0x58]
00402b6c  03 30 98 e7                                      ldr r3, [r8, r3]
00402b70  00 30 93 e5                                      ldr r3, [r3]
00402b74  02 00 53 e3                                      cmp r3, #2
00402b78  00 60 a0 03                                      moveq r6, #0
00402b7c  00 60 86 05                                      streq r6, [r6]
00402b80  d7 ff ff 0a                                      beq #0x402ae4
00402b84  01 00 53 e3                                      cmp r3, #1
00402b88  d4 ff ff 1a                                      bne #0x402ae0
00402b8c  38 00 9f e5                                      ldr r0, [pc, #0x38]
00402b90  38 10 9f e5                                      ldr r1, [pc, #0x38]
00402b94  38 20 9f e5                                      ldr r2, [pc, #0x38]
00402b98  00 00 98 e7                                      ldr r0, [r8, r0]
00402b9c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00402ba0  22 c1 00 e3                                      movw ip, #0x122
00402ba4  01 10 8f e0                                      add r1, pc, r1
00402ba8  a8 00 80 e2                                      add r0, r0, #0xa8
00402bac  02 20 8f e0                                      add r2, pc, r2
00402bb0  03 30 8f e0                                      add r3, pc, r3
00402bb4  00 c0 8d e5                                      str ip, [sp]
00402bb8  00 60 a0 e3                                      mov r6, #0
00402bbc  10 2d fc eb                                      bl #0x30e004
00402bc0  c7 ff ff ea                                      b #0x402ae4
; mapping-symbol data/literal pool
00402bc4  18 20 59 00 c0 39 00 00 c0 19 00 00 34 b8 4b 00  .byte 0x18, 0x20, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x34, 0xb8, 0x4b, 0x00
00402bd4  84 4b 4c 00 d0 49 4c 00                          .byte 0x84, 0x4b, 0x4c, 0x00, 0xd0, 0x49, 0x4c, 0x00

; FUNCTION 0x00402bdc, declared_size=264, range_size=264, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory10_DoPctRollERKN7Structs9LootEntryE
; demangled: ItemInventory::_DoPctRoll(Structs::LootEntry const&)
; decoder-mode: arm
00402bdc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00402be0  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
00402be4  e8 70 9f e5                                      ldr r7, [pc, #0xe8]
00402be8  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
00402bec  04 40 8f e0                                      add r4, pc, r4
00402bf0  07 30 94 e7                                      ldr r3, [r4, r7]
00402bf4  02 60 94 e7                                      ldr r6, [r4, r2]
00402bf8  44 d0 4d e2                                      sub sp, sp, #0x44
00402bfc  00 30 93 e5                                      ldr r3, [r3]
00402c00  00 80 a0 e1                                      mov r8, r0
00402c04  06 00 a0 e1                                      mov r0, r6
00402c08  3c 30 8d e5                                      str r3, [sp, #0x3c]
00402c0c  1d d3 fc eb                                      bl #0x337888
00402c10  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00402c14  24 50 8d e2                                      add r5, sp, #0x24
00402c18  08 20 8d e2                                      add r2, sp, #8
00402c1c  01 10 8f e0                                      add r1, pc, r1
00402c20  05 00 a0 e1                                      mov r0, r5
00402c24  30 45 fc eb                                      bl #0x3140ec
00402c28  05 10 a0 e1                                      mov r1, r5
00402c2c  06 00 a0 e1                                      mov r0, r6
00402c30  94 d3 fc eb                                      bl #0x337a88
00402c34  00 a0 a0 e1                                      mov sl, r0
00402c38  05 00 a0 e1                                      mov r0, r5
00402c3c  84 55 fc eb                                      bl #0x318254
00402c40  00 00 5a e3                                      cmp sl, #0
00402c44  07 00 00 0a                                      beq #0x402c68
00402c48  01 00 a0 e3                                      mov r0, #1
00402c4c  07 30 94 e7                                      ldr r3, [r4, r7]
00402c50  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00402c54  00 30 93 e5                                      ldr r3, [r3]
00402c58  03 00 52 e1                                      cmp r2, r3
00402c5c  1a 00 00 1a                                      bne #0x402ccc
00402c60  44 d0 8d e2                                      add sp, sp, #0x44
00402c64  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00402c68  08 00 a0 e1                                      mov r0, r8
00402c6c  cc fe ff eb                                      bl #0x4027a4
00402c70  00 00 50 e3                                      cmp r0, #0
00402c74  01 00 00 1a                                      bne #0x402c80
00402c78  00 00 a0 e3                                      mov r0, #0
00402c7c  f2 ff ff ea                                      b #0x402c4c
00402c80  64 00 a0 e3                                      mov r0, #0x64
00402c84  9c fb ff eb                                      bl #0x401afc
00402c88  14 30 98 e5                                      ldr r3, [r8, #0x14]
00402c8c  03 00 50 e1                                      cmp r0, r3
00402c90  f8 ff ff ca                                      bgt #0x402c78
00402c94  06 00 a0 e1                                      mov r0, r6
00402c98  fa d2 fc eb                                      bl #0x337888
00402c9c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00402ca0  0c 50 8d e2                                      add r5, sp, #0xc
00402ca4  04 20 8d e2                                      add r2, sp, #4
00402ca8  01 10 8f e0                                      add r1, pc, r1
00402cac  05 00 a0 e1                                      mov r0, r5
00402cb0  0d 45 fc eb                                      bl #0x3140ec
00402cb4  06 00 a0 e1                                      mov r0, r6
00402cb8  05 10 a0 e1                                      mov r1, r5
00402cbc  71 d3 fc eb                                      bl #0x337a88
00402cc0  05 00 a0 e1                                      mov r0, r5
00402cc4  62 55 fc eb                                      bl #0x318254
00402cc8  de ff ff ea                                      b #0x402c48
00402ccc  8f 2d fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00402cd0  a4 1e 59 00 ac 40 00 00 84 08 00 00 fc 4a 4c 00  .byte 0xa4, 0x1e, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xfc, 0x4a, 0x4c, 0x00
00402ce0  70 ce 4b 00                                      .byte 0x70, 0xce, 0x4b, 0x00

; FUNCTION 0x00402ce4, declared_size=140, range_size=140, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory11_DoPctRollsERSt6vectorIPKN7Structs9LootEntryESaIS4_EERKS6_
; demangled: ItemInventory::_DoPctRolls(std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> >&, std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> > const&)
; decoder-mode: arm
00402ce4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00402ce8  88 00 91 e8                                      ldm r1, {r3, r7}
00402cec  01 50 a0 e1                                      mov r5, r1
00402cf0  00 60 a0 e1                                      mov r6, r0
00402cf4  07 70 63 e0                                      rsb r7, r3, r7
00402cf8  47 71 b0 e1                                      asrs r7, r7, #2
00402cfc  17 00 00 0a                                      beq #0x402d60
00402d00  00 40 a0 e3                                      mov r4, #0
00402d04  03 00 00 ea                                      b #0x402d18
00402d08  01 40 84 e2                                      add r4, r4, #1
00402d0c  07 00 54 e1                                      cmp r4, r7
00402d10  12 00 00 0a                                      beq #0x402d60
00402d14  00 30 95 e5                                      ldr r3, [r5]
00402d18  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00402d1c  ae ff ff eb                                      bl #0x402bdc
00402d20  00 00 50 e3                                      cmp r0, #0
00402d24  04 31 a0 e1                                      lsl r3, r4, #2
00402d28  f6 ff ff 0a                                      beq #0x402d08
00402d2c  06 00 96 e9                                      ldmib r6, {r1, r2}
00402d30  00 00 95 e5                                      ldr r0, [r5]
00402d34  02 00 51 e1                                      cmp r1, r2
00402d38  03 20 80 e0                                      add r2, r0, r3
00402d3c  08 00 00 0a                                      beq #0x402d64
00402d40  03 30 90 e7                                      ldr r3, [r0, r3]
00402d44  01 40 84 e2                                      add r4, r4, #1
00402d48  07 00 54 e1                                      cmp r4, r7
00402d4c  00 30 81 e5                                      str r3, [r1]
00402d50  04 30 96 e5                                      ldr r3, [r6, #4]
00402d54  04 30 83 e2                                      add r3, r3, #4
00402d58  04 30 86 e5                                      str r3, [r6, #4]
00402d5c  ec ff ff 1a                                      bne #0x402d14
00402d60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00402d64  06 00 a0 e1                                      mov r0, r6
00402d68  5b fe ff eb                                      bl #0x4026dc
00402d6c  e5 ff ff ea                                      b #0x402d08

; FUNCTION 0x00402d70, declared_size=140, range_size=140, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory11_DoPctRollsERSt6vectorIPKN7Structs9LootEntryESaIS4_EES4_i
; demangled: ItemInventory::_DoPctRolls(std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> >&, Structs::LootEntry const*, int)
; decoder-mode: arm
00402d70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00402d74  00 70 52 e2                                      subs r7, r2, #0
00402d78  08 d0 4d e2                                      sub sp, sp, #8
00402d7c  00 60 a0 e1                                      mov r6, r0
00402d80  17 00 00 da                                      ble #0x402de4
00402d84  01 40 a0 e1                                      mov r4, r1
00402d88  00 50 a0 e3                                      mov r5, #0
00402d8c  04 80 8d e2                                      add r8, sp, #4
00402d90  03 00 00 ea                                      b #0x402da4
00402d94  01 50 85 e2                                      add r5, r5, #1
00402d98  07 00 55 e1                                      cmp r5, r7
00402d9c  24 40 84 e2                                      add r4, r4, #0x24
00402da0  0f 00 00 0a                                      beq #0x402de4
00402da4  04 00 a0 e1                                      mov r0, r4
00402da8  8b ff ff eb                                      bl #0x402bdc
00402dac  00 00 50 e3                                      cmp r0, #0
00402db0  f7 ff ff 0a                                      beq #0x402d94
00402db4  0a 00 96 e9                                      ldmib r6, {r1, r3}
00402db8  04 40 8d e5                                      str r4, [sp, #4]
00402dbc  03 00 51 e1                                      cmp r1, r3
00402dc0  09 00 00 0a                                      beq #0x402dec
00402dc4  00 40 81 e5                                      str r4, [r1]
00402dc8  04 30 96 e5                                      ldr r3, [r6, #4]
00402dcc  01 50 85 e2                                      add r5, r5, #1
00402dd0  07 00 55 e1                                      cmp r5, r7
00402dd4  04 30 83 e2                                      add r3, r3, #4
00402dd8  04 30 86 e5                                      str r3, [r6, #4]
00402ddc  24 40 84 e2                                      add r4, r4, #0x24
00402de0  ef ff ff 1a                                      bne #0x402da4
00402de4  08 d0 8d e2                                      add sp, sp, #8
00402de8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00402dec  06 00 a0 e1                                      mov r0, r6
00402df0  08 20 a0 e1                                      mov r2, r8
00402df4  38 fe ff eb                                      bl #0x4026dc
00402df8  e5 ff ff ea                                      b #0x402d94

; FUNCTION 0x00402dfc, declared_size=1300, range_size=1300, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory13_AddLootItemsERKSt6vectorIPKN7Structs9LootEntryESaIS4_EERS0_INS_8LootInfoESaIS9_EEb
; demangled: ItemInventory::_AddLootItems(std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> > const&, std::vector<ItemInventory::LootInfo, std::allocator<ItemInventory::LootInfo> >&, bool)
; decoder-mode: arm
00402dfc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00402e00  ac 34 9f e5                                      ldr r3, [pc, #0x4ac]
00402e04  b4 d0 4d e2                                      sub sp, sp, #0xb4
00402e08  a8 64 9f e5                                      ldr r6, [pc, #0x4a8]
00402e0c  4c 30 8d e5                                      str r3, [sp, #0x4c]
00402e10  30 00 8d e5                                      str r0, [sp, #0x30]
00402e14  00 50 90 e5                                      ldr r5, [r0]
00402e18  06 60 8f e0                                      add r6, pc, r6
00402e1c  03 30 96 e7                                      ldr r3, [r6, r3]
00402e20  2c 50 8d e5                                      str r5, [sp, #0x2c]
00402e24  04 00 90 e5                                      ldr r0, [r0, #4]
00402e28  00 30 93 e5                                      ldr r3, [r3]
00402e2c  01 40 a0 e1                                      mov r4, r1
00402e30  00 00 55 e1                                      cmp r5, r0
00402e34  ac 30 8d e5                                      str r3, [sp, #0xac]
00402e38  34 20 8d e5                                      str r2, [sp, #0x34]
00402e3c  83 00 00 0a                                      beq #0x403050
00402e40  74 34 9f e5                                      ldr r3, [pc, #0x474]
00402e44  74 c4 9f e5                                      ldr ip, [pc, #0x474]
00402e48  03 30 8f e0                                      add r3, pc, r3
00402e4c  40 30 8d e5                                      str r3, [sp, #0x40]
00402e50  6c 34 9f e5                                      ldr r3, [pc, #0x46c]
00402e54  3c c0 8d e5                                      str ip, [sp, #0x3c]
00402e58  03 30 8f e0                                      add r3, pc, r3
00402e5c  44 30 8d e5                                      str r3, [sp, #0x44]
00402e60  60 34 9f e5                                      ldr r3, [pc, #0x460]
00402e64  03 30 8f e0                                      add r3, pc, r3
00402e68  48 30 8d e5                                      str r3, [sp, #0x48]
00402e6c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00402e70  00 00 90 e5                                      ldr r0, [r0]
00402e74  00 00 50 e3                                      cmp r0, #0
00402e78  10 00 8d e5                                      str r0, [sp, #0x10]
00402e7c  ce 00 00 0a                                      beq #0x4031bc
00402e80  10 10 9d e5                                      ldr r1, [sp, #0x10]
00402e84  04 30 91 e5                                      ldr r3, [r1, #4]
00402e88  00 00 53 e3                                      cmp r3, #0
00402e8c  04 00 00 ba                                      blt #0x402ea4
00402e90  34 24 9f e5                                      ldr r2, [pc, #0x434]
00402e94  02 20 96 e7                                      ldr r2, [r6, r2]
00402e98  00 20 92 e5                                      ldr r2, [r2]
00402e9c  02 00 53 e1                                      cmp r3, r2
00402ea0  08 00 00 ba                                      blt #0x402ec8
00402ea4  24 24 9f e5                                      ldr r2, [pc, #0x424]
00402ea8  02 20 96 e7                                      ldr r2, [r6, r2]
00402eac  00 20 92 e5                                      ldr r2, [r2]
00402eb0  02 00 52 e3                                      cmp r2, #2
00402eb4  00 20 a0 03                                      moveq r2, #0
00402eb8  00 20 82 05                                      streq r2, [r2]
00402ebc  01 00 00 0a                                      beq #0x402ec8
00402ec0  01 00 52 e3                                      cmp r2, #1
00402ec4  d1 00 00 0a                                      beq #0x403210
00402ec8  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
00402ecc  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00402ed0  05 20 96 e7                                      ldr r2, [r6, r5]
00402ed4  00 00 5c e3                                      cmp ip, #0
00402ed8  0c 50 a0 e3                                      mov r5, #0xc
00402edc  00 70 92 e5                                      ldr r7, [r2]
00402ee0  95 73 27 e0                                      mla r7, r5, r3, r7
00402ee4  70 00 00 0a                                      beq #0x4030ac
00402ee8  04 30 97 e5                                      ldr r3, [r7, #4]
00402eec  00 00 53 e3                                      cmp r3, #0
00402ef0  4f 00 00 0a                                      beq #0x403034
00402ef4  d8 03 9f e5                                      ldr r0, [pc, #0x3d8]
00402ef8  d8 13 9f e5                                      ldr r1, [pc, #0x3d8]
00402efc  d8 23 9f e5                                      ldr r2, [pc, #0x3d8]
00402f00  c8 33 9f e5                                      ldr r3, [pc, #0x3c8]
00402f04  d4 53 9f e5                                      ldr r5, [pc, #0x3d4]
00402f08  d4 c3 9f e5                                      ldr ip, [pc, #0x3d4]
00402f0c  00 80 a0 e3                                      mov r8, #0
00402f10  14 00 8d e5                                      str r0, [sp, #0x14]
00402f14  1c 10 8d e5                                      str r1, [sp, #0x1c]
00402f18  78 00 8d e2                                      add r0, sp, #0x78
00402f1c  64 10 8d e2                                      add r1, sp, #0x64
00402f20  18 20 8d e5                                      str r2, [sp, #0x18]
00402f24  28 30 8d e5                                      str r3, [sp, #0x28]
00402f28  38 50 8d e5                                      str r5, [sp, #0x38]
00402f2c  24 c0 8d e5                                      str ip, [sp, #0x24]
00402f30  08 90 a0 e1                                      mov sb, r8
00402f34  94 b0 8d e2                                      add fp, sp, #0x94
00402f38  20 00 8d e5                                      str r0, [sp, #0x20]
00402f3c  0c 10 8d e5                                      str r1, [sp, #0xc]
00402f40  08 a0 a0 e1                                      mov sl, r8
00402f44  08 50 97 e5                                      ldr r5, [r7, #8]
00402f48  0a 50 85 e0                                      add r5, r5, sl
00402f4c  04 30 95 e5                                      ldr r3, [r5, #4]
00402f50  00 00 53 e3                                      cmp r3, #0
00402f54  04 00 00 ba                                      blt #0x402f6c
00402f58  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00402f5c  0c 20 96 e7                                      ldr r2, [r6, ip]
00402f60  00 20 92 e5                                      ldr r2, [r2]
00402f64  02 00 53 e1                                      cmp r3, r2
00402f68  08 00 00 ba                                      blt #0x402f90
00402f6c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00402f70  00 30 96 e7                                      ldr r3, [r6, r0]
00402f74  00 30 93 e5                                      ldr r3, [r3]
00402f78  02 00 53 e3                                      cmp r3, #2
00402f7c  00 30 a0 03                                      moveq r3, #0
00402f80  00 30 83 05                                      streq r3, [r3]
00402f84  01 00 00 0a                                      beq #0x402f90
00402f88  01 00 53 e3                                      cmp r3, #1
00402f8c  3c 00 00 0a                                      beq #0x403084
00402f90  14 20 9d e5                                      ldr r2, [sp, #0x14]
00402f94  02 80 96 e7                                      ldr r8, [r6, r2]
00402f98  08 00 a0 e1                                      mov r0, r8
00402f9c  39 d2 fc eb                                      bl #0x337888
00402fa0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00402fa4  20 20 9d e5                                      ldr r2, [sp, #0x20]
00402fa8  0b 00 a0 e1                                      mov r0, fp
00402fac  03 10 8f e0                                      add r1, pc, r3
00402fb0  4d 44 fc eb                                      bl #0x3140ec
00402fb4  0b 10 a0 e1                                      mov r1, fp
00402fb8  08 00 a0 e1                                      mov r0, r8
00402fbc  b1 d2 fc eb                                      bl #0x337a88
00402fc0  0b 00 a0 e1                                      mov r0, fp
00402fc4  a2 54 fc eb                                      bl #0x318254
00402fc8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00402fcc  04 30 95 e5                                      ldr r3, [r5, #4]
00402fd0  a4 00 a0 e3                                      mov r0, #0xa4
00402fd4  0c 20 96 e7                                      ldr r2, [r6, ip]
00402fd8  04 c0 94 e5                                      ldr ip, [r4, #4]
00402fdc  00 10 92 e5                                      ldr r1, [r2]
00402fe0  08 20 94 e5                                      ldr r2, [r4, #8]
00402fe4  90 13 21 e0                                      mla r1, r0, r3, r1
00402fe8  0a 00 d5 e5                                      ldrb r0, [r5, #0xa]
00402fec  02 00 5c e1                                      cmp ip, r2
00402ff0  b4 36 cd e1                                      strh r3, [sp, #0x64]
00402ff4  6c 00 cd e5                                      strb r0, [sp, #0x6c]
00402ff8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00402ffc  70 10 8d e5                                      str r1, [sp, #0x70]
00403000  68 00 8d e5                                      str r0, [sp, #0x68]
00403004  19 00 00 0a                                      beq #0x403070
00403008  0c 50 9d e5                                      ldr r5, [sp, #0xc]
0040300c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00403010  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00403014  04 30 94 e5                                      ldr r3, [r4, #4]
00403018  10 30 83 e2                                      add r3, r3, #0x10
0040301c  04 30 84 e5                                      str r3, [r4, #4]
00403020  04 30 97 e5                                      ldr r3, [r7, #4]
00403024  01 90 89 e2                                      add sb, sb, #1
00403028  0c a0 8a e2                                      add sl, sl, #0xc
0040302c  09 00 53 e1                                      cmp r3, sb
00403030  c3 ff ff 8a                                      bhi #0x402f44
00403034  30 50 9d e5                                      ldr r5, [sp, #0x30]
00403038  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0040303c  04 30 95 e5                                      ldr r3, [r5, #4]
00403040  04 c0 8c e2                                      add ip, ip, #4
00403044  2c c0 8d e5                                      str ip, [sp, #0x2c]
00403048  03 00 5c e1                                      cmp ip, r3
0040304c  86 ff ff 1a                                      bne #0x402e6c
00403050  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00403054  ac 20 9d e5                                      ldr r2, [sp, #0xac]
00403058  00 30 96 e7                                      ldr r3, [r6, r0]
0040305c  00 30 93 e5                                      ldr r3, [r3]
00403060  03 00 52 e1                                      cmp r2, r3
00403064  91 00 00 1a                                      bne #0x4032b0
00403068  b4 d0 8d e2                                      add sp, sp, #0xb4
0040306c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00403070  0c 10 a0 e1                                      mov r1, ip
00403074  04 00 a0 e1                                      mov r0, r4
00403078  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0040307c  3a fd ff eb                                      bl #0x40256c
00403080  e6 ff ff ea                                      b #0x403020
00403084  38 10 9d e5                                      ldr r1, [sp, #0x38]
00403088  5e c1 00 e3                                      movw ip, #0x15e
0040308c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00403090  01 00 96 e7                                      ldr r0, [r6, r1]
00403094  48 30 9d e5                                      ldr r3, [sp, #0x48]
00403098  40 10 9d e5                                      ldr r1, [sp, #0x40]
0040309c  a8 00 80 e2                                      add r0, r0, #0xa8
004030a0  00 c0 8d e5                                      str ip, [sp]
004030a4  d6 2b fc eb                                      bl #0x30e004
004030a8  b8 ff ff ea                                      b #0x402f90
004030ac  07 00 a0 e1                                      mov r0, r7
004030b0  41 fb ff eb                                      bl #0x401dbc
004030b4  08 70 97 e5                                      ldr r7, [r7, #8]
004030b8  95 70 27 e0                                      mla r7, r5, r0, r7
004030bc  04 30 97 e5                                      ldr r3, [r7, #4]
004030c0  00 00 53 e3                                      cmp r3, #0
004030c4  04 00 00 ba                                      blt #0x4030dc
004030c8  14 22 9f e5                                      ldr r2, [pc, #0x214]
004030cc  02 20 96 e7                                      ldr r2, [r6, r2]
004030d0  00 20 92 e5                                      ldr r2, [r2]
004030d4  02 00 53 e1                                      cmp r3, r2
004030d8  08 00 00 ba                                      blt #0x403100
004030dc  ec 31 9f e5                                      ldr r3, [pc, #0x1ec]
004030e0  03 30 96 e7                                      ldr r3, [r6, r3]
004030e4  00 30 93 e5                                      ldr r3, [r3]
004030e8  02 00 53 e3                                      cmp r3, #2
004030ec  00 30 a0 03                                      moveq r3, #0
004030f0  00 30 83 05                                      streq r3, [r3]
004030f4  01 00 00 0a                                      beq #0x403100
004030f8  01 00 53 e3                                      cmp r3, #1
004030fc  5e 00 00 0a                                      beq #0x40327c
00403100  cc c1 9f e5                                      ldr ip, [pc, #0x1cc]
00403104  d0 01 9f e5                                      ldr r0, [pc, #0x1d0]
00403108  7c 50 8d e2                                      add r5, sp, #0x7c
0040310c  0c 80 96 e7                                      ldr r8, [r6, ip]
00403110  18 00 8d e5                                      str r0, [sp, #0x18]
00403114  08 00 a0 e1                                      mov r0, r8
00403118  da d1 fc eb                                      bl #0x337888
0040311c  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
00403120  74 20 8d e2                                      add r2, sp, #0x74
00403124  05 00 a0 e1                                      mov r0, r5
00403128  01 10 8f e0                                      add r1, pc, r1
0040312c  ee 43 fc eb                                      bl #0x3140ec
00403130  05 10 a0 e1                                      mov r1, r5
00403134  08 00 a0 e1                                      mov r0, r8
00403138  52 d2 fc eb                                      bl #0x337a88
0040313c  05 00 a0 e1                                      mov r0, r5
00403140  43 54 fc eb                                      bl #0x318254
00403144  18 10 9d e5                                      ldr r1, [sp, #0x18]
00403148  04 30 97 e5                                      ldr r3, [r7, #4]
0040314c  04 c0 94 e5                                      ldr ip, [r4, #4]
00403150  01 20 96 e7                                      ldr r2, [r6, r1]
00403154  a4 00 a0 e3                                      mov r0, #0xa4
00403158  00 10 92 e5                                      ldr r1, [r2]
0040315c  08 20 94 e5                                      ldr r2, [r4, #8]
00403160  90 13 21 e0                                      mla r1, r0, r3, r1
00403164  02 00 5c e1                                      cmp ip, r2
00403168  0a 00 d7 e5                                      ldrb r0, [r7, #0xa]
0040316c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00403170  b4 35 cd e1                                      strh r3, [sp, #0x54]
00403174  5c 00 cd e5                                      strb r0, [sp, #0x5c]
00403178  58 20 8d e5                                      str r2, [sp, #0x58]
0040317c  60 10 8d e5                                      str r1, [sp, #0x60]
00403180  31 00 00 0a                                      beq #0x40324c
00403184  54 30 8d e2                                      add r3, sp, #0x54
00403188  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0040318c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00403190  04 30 94 e5                                      ldr r3, [r4, #4]
00403194  10 30 83 e2                                      add r3, r3, #0x10
00403198  04 30 84 e5                                      str r3, [r4, #4]
0040319c  30 50 9d e5                                      ldr r5, [sp, #0x30]
004031a0  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
004031a4  04 30 95 e5                                      ldr r3, [r5, #4]
004031a8  04 c0 8c e2                                      add ip, ip, #4
004031ac  2c c0 8d e5                                      str ip, [sp, #0x2c]
004031b0  03 00 5c e1                                      cmp ip, r3
004031b4  2c ff ff 1a                                      bne #0x402e6c
004031b8  a4 ff ff ea                                      b #0x403050
004031bc  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
004031c0  03 30 96 e7                                      ldr r3, [r6, r3]
004031c4  00 30 93 e5                                      ldr r3, [r3]
004031c8  02 00 53 e3                                      cmp r3, #2
004031cc  00 00 80 05                                      streq r0, [r0]
004031d0  2a ff ff 0a                                      beq #0x402e80
004031d4  01 00 53 e3                                      cmp r3, #1
004031d8  28 ff ff 1a                                      bne #0x402e80
004031dc  fc 00 9f e5                                      ldr r0, [pc, #0xfc]
004031e0  04 11 9f e5                                      ldr r1, [pc, #0x104]
004031e4  04 21 9f e5                                      ldr r2, [pc, #0x104]
004031e8  00 00 96 e7                                      ldr r0, [r6, r0]
004031ec  00 31 9f e5                                      ldr r3, [pc, #0x100]
004031f0  53 c1 00 e3                                      movw ip, #0x153
004031f4  01 10 8f e0                                      add r1, pc, r1
004031f8  02 20 8f e0                                      add r2, pc, r2
004031fc  03 30 8f e0                                      add r3, pc, r3
00403200  a8 00 80 e2                                      add r0, r0, #0xa8
00403204  00 c0 8d e5                                      str ip, [sp]
00403208  7d 2b fc eb                                      bl #0x30e004
0040320c  1b ff ff ea                                      b #0x402e80
00403210  c8 00 9f e5                                      ldr r0, [pc, #0xc8]
00403214  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00403218  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0040321c  00 00 96 e7                                      ldr r0, [r6, r0]
00403220  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00403224  02 20 8f e0                                      add r2, pc, r2
00403228  55 cf a0 e3                                      mov ip, #0x154
0040322c  03 30 8f e0                                      add r3, pc, r3
00403230  01 10 8f e0                                      add r1, pc, r1
00403234  a8 00 80 e2                                      add r0, r0, #0xa8
00403238  00 c0 8d e5                                      str ip, [sp]
0040323c  70 2b fc eb                                      bl #0x30e004
00403240  10 20 9d e5                                      ldr r2, [sp, #0x10]
00403244  04 30 92 e5                                      ldr r3, [r2, #4]
00403248  1e ff ff ea                                      b #0x402ec8
0040324c  0c 10 a0 e1                                      mov r1, ip
00403250  04 00 a0 e1                                      mov r0, r4
00403254  54 20 8d e2                                      add r2, sp, #0x54
00403258  c3 fc ff eb                                      bl #0x40256c
0040325c  30 50 9d e5                                      ldr r5, [sp, #0x30]
00403260  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00403264  04 30 95 e5                                      ldr r3, [r5, #4]
00403268  04 c0 8c e2                                      add ip, ip, #4
0040326c  2c c0 8d e5                                      str ip, [sp, #0x2c]
00403270  03 00 5c e1                                      cmp ip, r3
00403274  fc fe ff 1a                                      bne #0x402e6c
00403278  74 ff ff ea                                      b #0x403050
0040327c  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
00403280  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00403284  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00403288  00 00 96 e7                                      ldr r0, [r6, r0]
0040328c  78 30 9f e5                                      ldr r3, [pc, #0x78]
00403290  69 c1 00 e3                                      movw ip, #0x169
00403294  01 10 8f e0                                      add r1, pc, r1
00403298  02 20 8f e0                                      add r2, pc, r2
0040329c  03 30 8f e0                                      add r3, pc, r3
004032a0  a8 00 80 e2                                      add r0, r0, #0xa8
004032a4  00 c0 8d e5                                      str ip, [sp]
004032a8  55 2b fc eb                                      bl #0x30e004
004032ac  93 ff ff ea                                      b #0x403100
004032b0  16 2c fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004032b4  ac 40 00 00 78 1c 59 00 90 b5 4b 00 a8 16 00 00  .byte 0xac, 0x40, 0x00, 0x00, 0x78, 0x1c, 0x59, 0x00, 0x90, 0xb5, 0x4b, 0x00, 0xa8, 0x16, 0x00, 0x00
004032c4  80 49 4c 00 1c 47 4c 00 d0 2a 00 00 c0 39 00 00  .byte 0x80, 0x49, 0x4c, 0x00, 0x1c, 0x47, 0x4c, 0x00, 0xd0, 0x2a, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
004032d4  84 08 00 00 7c 48 4c 00 6c 28 00 00 c0 19 00 00  .byte 0x84, 0x08, 0x00, 0x00, 0x7c, 0x48, 0x4c, 0x00, 0x6c, 0x28, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
004032e4  60 0d 00 00 00 47 4c 00 e4 b1 4b 00 78 45 4c 00  .byte 0x60, 0x0d, 0x00, 0x00, 0x00, 0x47, 0x4c, 0x00, 0xe4, 0xb1, 0x4b, 0x00, 0x78, 0x45, 0x4c, 0x00
004032f4  84 43 4c 00 a8 b1 4b 00 5c 45 4c 00 54 43 4c 00  .byte 0x84, 0x43, 0x4c, 0x00, 0xa8, 0xb1, 0x4b, 0x00, 0x5c, 0x45, 0x4c, 0x00, 0x54, 0x43, 0x4c, 0x00
00403304  44 b1 4b 00 40 45 4c 00 e4 42 4c 00              .byte 0x44, 0xb1, 0x4b, 0x00, 0x40, 0x45, 0x4c, 0x00, 0xe4, 0x42, 0x4c, 0x00

; FUNCTION 0x00403310, declared_size=1680, range_size=1680, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory18_AddLootItemPowersEPKN7Structs9LootEntryEP12ItemInstanceiii
; demangled: ItemInventory::_AddLootItemPowers(Structs::LootEntry const*, ItemInstance*, int, int, int)
; decoder-mode: arm
00403310  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00403314  2c 66 9f e5                                      ldr r6, [pc, #0x62c]
00403318  2c c6 9f e5                                      ldr ip, [pc, #0x62c]
0040331c  b4 d0 4d e2                                      sub sp, sp, #0xb4
00403320  06 60 8f e0                                      add r6, pc, r6
00403324  20 c0 8d e5                                      str ip, [sp, #0x20]
00403328  0c c0 96 e7                                      ldr ip, [r6, ip]
0040332c  00 40 a0 e1                                      mov r4, r0
00403330  08 00 90 e5                                      ldr r0, [r0, #8]
00403334  0c 10 8d e5                                      str r1, [sp, #0xc]
00403338  00 10 9c e5                                      ldr r1, [ip]
0040333c  01 00 70 e3                                      cmn r0, #1
00403340  02 70 a0 e1                                      mov r7, r2
00403344  ac 10 8d e5                                      str r1, [sp, #0xac]
00403348  03 50 a0 e1                                      mov r5, r3
0040334c  40 01 00 0a                                      beq #0x403854
00403350  00 00 50 e3                                      cmp r0, #0
00403354  ad 00 00 ba                                      blt #0x403610
00403358  f0 35 9f e5                                      ldr r3, [pc, #0x5f0]
0040335c  03 30 96 e7                                      ldr r3, [r6, r3]
00403360  00 30 93 e5                                      ldr r3, [r3]
00403364  03 00 50 e1                                      cmp r0, r3
00403368  a8 00 00 aa                                      bge #0x403610
0040336c  01 00 75 e3                                      cmn r5, #1
00403370  18 50 8d 15                                      strne r5, [sp, #0x18]
00403374  6d 01 00 0a                                      beq #0x403930
00403378  d4 35 9f e5                                      ldr r3, [pc, #0x5d4]
0040337c  d4 05 9f e5                                      ldr r0, [pc, #0x5d4]
00403380  d4 85 9f e5                                      ldr r8, [pc, #0x5d4]
00403384  03 30 96 e7                                      ldr r3, [r6, r3]
00403388  00 50 96 e7                                      ldr r5, [r6, r0]
0040338c  14 00 8d e5                                      str r0, [sp, #0x14]
00403390  00 30 93 e5                                      ldr r3, [r3]
00403394  08 20 94 e5                                      ldr r2, [r4, #8]
00403398  08 80 8f e0                                      add r8, pc, r8
0040339c  94 40 8d e2                                      add r4, sp, #0x94
004033a0  05 00 a0 e1                                      mov r0, r5
004033a4  0c 70 a0 e3                                      mov r7, #0xc
004033a8  97 32 27 e0                                      mla r7, r7, r2, r3
004033ac  35 d1 fc eb                                      bl #0x337888
004033b0  60 20 8d e2                                      add r2, sp, #0x60
004033b4  04 00 a0 e1                                      mov r0, r4
004033b8  08 10 a0 e1                                      mov r1, r8
004033bc  4a 43 fc eb                                      bl #0x3140ec
004033c0  04 10 a0 e1                                      mov r1, r4
004033c4  05 00 a0 e1                                      mov r0, r5
004033c8  ae d1 fc eb                                      bl #0x337a88
004033cc  04 00 a0 e1                                      mov r0, r4
004033d0  9f 53 fc eb                                      bl #0x318254
004033d4  7c 40 8d e2                                      add r4, sp, #0x7c
004033d8  05 00 a0 e1                                      mov r0, r5
004033dc  29 d1 fc eb                                      bl #0x337888
004033e0  5c 20 8d e2                                      add r2, sp, #0x5c
004033e4  08 10 a0 e1                                      mov r1, r8
004033e8  04 00 a0 e1                                      mov r0, r4
004033ec  3e 43 fc eb                                      bl #0x3140ec
004033f0  04 10 a0 e1                                      mov r1, r4
004033f4  05 00 a0 e1                                      mov r0, r5
004033f8  a2 d1 fc eb                                      bl #0x337a88
004033fc  04 00 a0 e1                                      mov r0, r4
00403400  93 53 fc eb                                      bl #0x318254
00403404  04 30 97 e5                                      ldr r3, [r7, #4]
00403408  18 10 9d e5                                      ldr r1, [sp, #0x18]
0040340c  03 00 51 e1                                      cmp r1, r3
00403410  17 01 00 2a                                      bhs #0x403874
00403414  44 35 9f e5                                      ldr r3, [pc, #0x544]
00403418  00 b0 a0 e3                                      mov fp, #0
0040341c  b0 40 8d e2                                      add r4, sp, #0xb0
00403420  03 30 8f e0                                      add r3, pc, r3
00403424  24 30 8d e5                                      str r3, [sp, #0x24]
00403428  34 35 9f e5                                      ldr r3, [pc, #0x534]
0040342c  80 b0 64 e5                                      strb fp, [r4, #-0x80]!
00403430  34 b0 8d e5                                      str fp, [sp, #0x34]
00403434  03 30 8f e0                                      add r3, pc, r3
00403438  28 30 8d e5                                      str r3, [sp, #0x28]
0040343c  24 35 9f e5                                      ldr r3, [pc, #0x524]
00403440  38 40 8d e5                                      str r4, [sp, #0x38]
00403444  3c 40 8d e5                                      str r4, [sp, #0x3c]
00403448  03 30 8f e0                                      add r3, pc, r3
0040344c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00403450  14 35 9f e5                                      ldr r3, [pc, #0x514]
00403454  40 b0 8d e5                                      str fp, [sp, #0x40]
00403458  03 30 8f e0                                      add r3, pc, r3
0040345c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00403460  08 35 9f e5                                      ldr r3, [pc, #0x508]
00403464  10 30 8d e5                                      str r3, [sp, #0x10]
00403468  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0040346c  83 da ff eb                                      bl #0x3f9e80
00403470  18 20 9d e5                                      ldr r2, [sp, #0x18]
00403474  00 00 52 e1                                      cmp r2, r0
00403478  8b 00 00 9a                                      bls #0x4036ac
0040347c  07 00 a0 e1                                      mov r0, r7
00403480  ac fa ff eb                                      bl #0x401f38
00403484  08 30 97 e5                                      ldr r3, [r7, #8]
00403488  0c 80 a0 e3                                      mov r8, #0xc
0040348c  98 30 28 e0                                      mla r8, r8, r0, r3
00403490  04 30 98 e5                                      ldr r3, [r8, #4]
00403494  00 00 53 e3                                      cmp r3, #0
00403498  04 00 00 ba                                      blt #0x4034b0
0040349c  d0 24 9f e5                                      ldr r2, [pc, #0x4d0]
004034a0  02 20 96 e7                                      ldr r2, [r6, r2]
004034a4  00 20 92 e5                                      ldr r2, [r2]
004034a8  02 00 53 e1                                      cmp r3, r2
004034ac  08 00 00 ba                                      blt #0x4034d4
004034b0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
004034b4  0c 20 96 e7                                      ldr r2, [r6, ip]
004034b8  00 20 92 e5                                      ldr r2, [r2]
004034bc  02 00 52 e3                                      cmp r2, #2
004034c0  00 20 a0 03                                      moveq r2, #0
004034c4  00 20 82 05                                      streq r2, [r2]
004034c8  01 00 00 0a                                      beq #0x4034d4
004034cc  01 00 52 e3                                      cmp r2, #1
004034d0  0b 01 00 0a                                      beq #0x403904
004034d4  9c 24 9f e5                                      ldr r2, [pc, #0x49c]
004034d8  28 50 a0 e3                                      mov r5, #0x28
004034dc  02 20 96 e7                                      ldr r2, [r6, r2]
004034e0  00 20 92 e5                                      ldr r2, [r2]
004034e4  95 23 25 e0                                      mla r5, r5, r3, r2
004034e8  24 30 95 e5                                      ldr r3, [r5, #0x24]
004034ec  00 00 53 e3                                      cmp r3, #0
004034f0  04 00 00 ba                                      blt #0x403508
004034f4  80 24 9f e5                                      ldr r2, [pc, #0x480]
004034f8  02 20 96 e7                                      ldr r2, [r6, r2]
004034fc  00 20 92 e5                                      ldr r2, [r2]
00403500  02 00 53 e1                                      cmp r3, r2
00403504  08 00 00 ba                                      blt #0x40352c
00403508  10 00 9d e5                                      ldr r0, [sp, #0x10]
0040350c  00 20 96 e7                                      ldr r2, [r6, r0]
00403510  00 20 92 e5                                      ldr r2, [r2]
00403514  02 00 52 e3                                      cmp r2, #2
00403518  00 20 a0 03                                      moveq r2, #0
0040351c  00 20 82 05                                      streq r2, [r2]
00403520  01 00 00 0a                                      beq #0x40352c
00403524  01 00 52 e3                                      cmp r2, #1
00403528  e7 00 00 0a                                      beq #0x4038cc
0040352c  4c 24 9f e5                                      ldr r2, [pc, #0x44c]
00403530  0c 10 a0 e3                                      mov r1, #0xc
00403534  02 20 96 e7                                      ldr r2, [r6, r2]
00403538  00 20 92 e5                                      ldr r2, [r2]
0040353c  91 23 23 e0                                      mla r3, r1, r3, r2
00403540  04 a0 93 e5                                      ldr sl, [r3, #4]
00403544  00 00 5a e3                                      cmp sl, #0
00403548  1b 00 00 0a                                      beq #0x4035bc
0040354c  08 90 93 e5                                      ldr sb, [r3, #8]
00403550  34 e0 9d e5                                      ldr lr, [sp, #0x34]
00403554  00 c0 a0 e3                                      mov ip, #0
00403558  00 00 5e e3                                      cmp lr, #0
0040355c  d6 00 00 0a                                      beq #0x4038bc
00403560  0c 01 99 e7                                      ldr r0, [sb, ip, lsl #2]
00403564  0e 30 a0 e1                                      mov r3, lr
00403568  04 10 a0 e1                                      mov r1, r4
0040356c  01 00 00 ea                                      b #0x403578
00403570  03 10 a0 e1                                      mov r1, r3
00403574  02 30 a0 e1                                      mov r3, r2
00403578  10 20 93 e5                                      ldr r2, [r3, #0x10]
0040357c  00 00 52 e1                                      cmp r2, r0
00403580  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00403584  08 20 93 a5                                      ldrge r2, [r3, #8]
00403588  01 30 a0 b1                                      movlt r3, r1
0040358c  00 00 52 e3                                      cmp r2, #0
00403590  f6 ff ff 1a                                      bne #0x403570
00403594  04 00 53 e1                                      cmp r3, r4
00403598  c7 00 00 0a                                      beq #0x4038bc
0040359c  10 20 93 e5                                      ldr r2, [r3, #0x10]
004035a0  00 00 52 e1                                      cmp r2, r0
004035a4  04 30 a0 c1                                      movgt r3, r4
004035a8  04 00 53 e1                                      cmp r3, r4
004035ac  2d 00 00 1a                                      bne #0x403668
004035b0  01 c0 8c e2                                      add ip, ip, #1
004035b4  0a 00 5c e1                                      cmp ip, sl
004035b8  e6 ff ff 1a                                      bne #0x403558
004035bc  04 10 98 e5                                      ldr r1, [r8, #4]
004035c0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004035c4  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
004035c8  a4 e1 ff eb                                      bl #0x3fbc60
004035cc  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004035d0  00 00 53 e3                                      cmp r3, #0
004035d4  00 80 a0 13                                      movne r8, #0
004035d8  50 a0 8d 12                                      addne sl, sp, #0x50
004035dc  09 00 00 0a                                      beq #0x403608
004035e0  10 20 95 e5                                      ldr r2, [r5, #0x10]
004035e4  0a 00 a0 e1                                      mov r0, sl
004035e8  04 10 a0 e1                                      mov r1, r4
004035ec  08 22 82 e0                                      add r2, r2, r8, lsl #4
004035f0  04 20 82 e2                                      add r2, r2, #4
004035f4  32 fb ff eb                                      bl #0x4022c4
004035f8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004035fc  01 80 88 e2                                      add r8, r8, #1
00403600  08 00 53 e1                                      cmp r3, r8
00403604  f5 ff ff 8a                                      bhi #0x4035e0
00403608  00 b0 a0 e3                                      mov fp, #0
0040360c  95 ff ff ea                                      b #0x403468
00403610  58 33 9f e5                                      ldr r3, [pc, #0x358]
00403614  03 30 96 e7                                      ldr r3, [r6, r3]
00403618  00 30 93 e5                                      ldr r3, [r3]
0040361c  02 00 53 e3                                      cmp r3, #2
00403620  00 30 a0 03                                      moveq r3, #0
00403624  00 30 83 05                                      streq r3, [r3]
00403628  4f ff ff 0a                                      beq #0x40336c
0040362c  01 00 53 e3                                      cmp r3, #1
00403630  4d ff ff 1a                                      bne #0x40336c
00403634  48 03 9f e5                                      ldr r0, [pc, #0x348]
00403638  48 13 9f e5                                      ldr r1, [pc, #0x348]
0040363c  48 23 9f e5                                      ldr r2, [pc, #0x348]
00403640  00 00 96 e7                                      ldr r0, [r6, r0]
00403644  44 33 9f e5                                      ldr r3, [pc, #0x344]
00403648  66 cf a0 e3                                      mov ip, #0x198
0040364c  01 10 8f e0                                      add r1, pc, r1
00403650  02 20 8f e0                                      add r2, pc, r2
00403654  03 30 8f e0                                      add r3, pc, r3
00403658  a8 00 80 e2                                      add r0, r0, #0xa8
0040365c  00 c0 8d e5                                      str ip, [sp]
00403660  67 2a fc eb                                      bl #0x30e004
00403664  40 ff ff ea                                      b #0x40336c
00403668  14 10 9d e5                                      ldr r1, [sp, #0x14]
0040366c  64 50 8d e2                                      add r5, sp, #0x64
00403670  01 b0 8b e2                                      add fp, fp, #1
00403674  01 80 96 e7                                      ldr r8, [r6, r1]
00403678  08 00 a0 e1                                      mov r0, r8
0040367c  81 d0 fc eb                                      bl #0x337888
00403680  58 20 8d e2                                      add r2, sp, #0x58
00403684  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00403688  05 00 a0 e1                                      mov r0, r5
0040368c  96 42 fc eb                                      bl #0x3140ec
00403690  05 10 a0 e1                                      mov r1, r5
00403694  08 00 a0 e1                                      mov r0, r8
00403698  fa d0 fc eb                                      bl #0x337a88
0040369c  05 00 a0 e1                                      mov r0, r5
004036a0  eb 52 fc eb                                      bl #0x318254
004036a4  09 00 5b e3                                      cmp fp, #9
004036a8  6e ff ff 9a                                      bls #0x403468
004036ac  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004036b0  f2 d9 ff eb                                      bl #0x3f9e80
004036b4  18 30 9d e5                                      ldr r3, [sp, #0x18]
004036b8  00 00 53 e1                                      cmp r3, r0
004036bc  5c 00 00 9a                                      bls #0x403834
004036c0  04 c0 97 e5                                      ldr ip, [r7, #4]
004036c4  00 00 5c e3                                      cmp ip, #0
004036c8  10 c0 8d e5                                      str ip, [sp, #0x10]
004036cc  58 00 00 0a                                      beq #0x403834
004036d0  a0 22 9f e5                                      ldr r2, [pc, #0x2a0]
004036d4  a4 32 9f e5                                      ldr r3, [pc, #0x2a4]
004036d8  00 a0 a0 e3                                      mov sl, #0
004036dc  02 20 96 e7                                      ldr r2, [r6, r2]
004036e0  03 30 96 e7                                      ldr r3, [r6, r3]
004036e4  48 00 8d e2                                      add r0, sp, #0x48
004036e8  14 20 8d e5                                      str r2, [sp, #0x14]
004036ec  1c 30 8d e5                                      str r3, [sp, #0x1c]
004036f0  0a 80 a0 e1                                      mov r8, sl
004036f4  24 00 8d e5                                      str r0, [sp, #0x24]
004036f8  28 60 8d e5                                      str r6, [sp, #0x28]
004036fc  08 20 97 e5                                      ldr r2, [r7, #8]
00403700  14 10 9d e5                                      ldr r1, [sp, #0x14]
00403704  28 00 a0 e3                                      mov r0, #0x28
00403708  0a 20 82 e0                                      add r2, r2, sl
0040370c  00 60 91 e5                                      ldr r6, [r1]
00403710  04 10 92 e5                                      ldr r1, [r2, #4]
00403714  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00403718  90 61 26 e0                                      mla r6, r0, r1, r6
0040371c  00 30 9c e5                                      ldr r3, [ip]
00403720  24 20 96 e5                                      ldr r2, [r6, #0x24]
00403724  0c c0 a0 e3                                      mov ip, #0xc
00403728  9c 32 23 e0                                      mla r3, ip, r2, r3
0040372c  04 90 93 e5                                      ldr sb, [r3, #4]
00403730  00 00 59 e3                                      cmp sb, #0
00403734  1b 00 00 0a                                      beq #0x4037a8
00403738  08 b0 93 e5                                      ldr fp, [r3, #8]
0040373c  34 50 9d e5                                      ldr r5, [sp, #0x34]
00403740  00 e0 a0 e3                                      mov lr, #0
00403744  00 00 55 e3                                      cmp r5, #0
00403748  5d 00 00 0a                                      beq #0x4038c4
0040374c  0e c1 9b e7                                      ldr ip, [fp, lr, lsl #2]
00403750  05 30 a0 e1                                      mov r3, r5
00403754  04 00 a0 e1                                      mov r0, r4
00403758  01 00 00 ea                                      b #0x403764
0040375c  03 00 a0 e1                                      mov r0, r3
00403760  02 30 a0 e1                                      mov r3, r2
00403764  10 20 93 e5                                      ldr r2, [r3, #0x10]
00403768  02 00 5c e1                                      cmp ip, r2
0040376c  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
00403770  08 20 93 d5                                      ldrle r2, [r3, #8]
00403774  00 30 a0 c1                                      movgt r3, r0
00403778  00 00 52 e3                                      cmp r2, #0
0040377c  f6 ff ff 1a                                      bne #0x40375c
00403780  04 00 53 e1                                      cmp r3, r4
00403784  4e 00 00 0a                                      beq #0x4038c4
00403788  10 20 93 e5                                      ldr r2, [r3, #0x10]
0040378c  02 00 5c e1                                      cmp ip, r2
00403790  04 30 a0 b1                                      movlt r3, r4
00403794  04 00 53 e1                                      cmp r3, r4
00403798  1f 00 00 1a                                      bne #0x40381c
0040379c  01 e0 8e e2                                      add lr, lr, #1
004037a0  09 00 5e e1                                      cmp lr, sb
004037a4  e6 ff ff 1a                                      bne #0x403744
004037a8  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
004037ac  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004037b0  2a e1 ff eb                                      bl #0x3fbc60
004037b4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004037b8  b0 d9 ff eb                                      bl #0x3f9e80
004037bc  18 30 9d e5                                      ldr r3, [sp, #0x18]
004037c0  00 00 53 e1                                      cmp r3, r0
004037c4  19 00 00 9a                                      bls #0x403830
004037c8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
004037cc  00 00 53 e3                                      cmp r3, #0
004037d0  04 00 97 05                                      ldreq r0, [r7, #4]
004037d4  10 00 8d 05                                      streq r0, [sp, #0x10]
004037d8  0f 00 00 0a                                      beq #0x40381c
004037dc  0a 90 a0 e1                                      mov sb, sl
004037e0  24 a0 9d e5                                      ldr sl, [sp, #0x24]
004037e4  00 50 a0 e3                                      mov r5, #0
004037e8  10 20 96 e5                                      ldr r2, [r6, #0x10]
004037ec  0a 00 a0 e1                                      mov r0, sl
004037f0  04 10 a0 e1                                      mov r1, r4
004037f4  05 22 82 e0                                      add r2, r2, r5, lsl #4
004037f8  04 20 82 e2                                      add r2, r2, #4
004037fc  b0 fa ff eb                                      bl #0x4022c4
00403800  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00403804  01 50 85 e2                                      add r5, r5, #1
00403808  05 00 53 e1                                      cmp r3, r5
0040380c  f5 ff ff 8a                                      bhi #0x4037e8
00403810  04 10 97 e5                                      ldr r1, [r7, #4]
00403814  09 a0 a0 e1                                      mov sl, sb
00403818  10 10 8d e5                                      str r1, [sp, #0x10]
0040381c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00403820  01 80 88 e2                                      add r8, r8, #1
00403824  0c a0 8a e2                                      add sl, sl, #0xc
00403828  08 00 52 e1                                      cmp r2, r8
0040382c  b2 ff ff 8a                                      bhi #0x4036fc
00403830  28 60 9d e5                                      ldr r6, [sp, #0x28]
00403834  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00403838  90 d9 ff eb                                      bl #0x3f9e80
0040383c  40 30 9d e5                                      ldr r3, [sp, #0x40]
00403840  00 00 53 e3                                      cmp r3, #0
00403844  02 00 00 0a                                      beq #0x403854
00403848  04 00 a0 e1                                      mov r0, r4
0040384c  34 10 9d e5                                      ldr r1, [sp, #0x34]
00403850  fb fa ff eb                                      bl #0x402444
00403854  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00403858  ac 20 9d e5                                      ldr r2, [sp, #0xac]
0040385c  0c 30 96 e7                                      ldr r3, [r6, ip]
00403860  00 30 93 e5                                      ldr r3, [r3]
00403864  03 00 52 e1                                      cmp r2, r3
00403868  35 00 00 1a                                      bne #0x403944
0040386c  b4 d0 8d e2                                      add sp, sp, #0xb4
00403870  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00403874  00 00 53 e3                                      cmp r3, #0
00403878  f5 ff ff 0a                                      beq #0x403854
0040387c  0c 80 9d e5                                      ldr r8, [sp, #0xc]
00403880  d8 a0 9d e5                                      ldr sl, [sp, #0xd8]
00403884  00 40 a0 e3                                      mov r4, #0
00403888  04 50 a0 e1                                      mov r5, r4
0040388c  08 30 97 e5                                      ldr r3, [r7, #8]
00403890  08 00 a0 e1                                      mov r0, r8
00403894  0a 20 a0 e1                                      mov r2, sl
00403898  04 30 83 e0                                      add r3, r3, r4
0040389c  04 10 93 e5                                      ldr r1, [r3, #4]
004038a0  ee e0 ff eb                                      bl #0x3fbc60
004038a4  04 30 97 e5                                      ldr r3, [r7, #4]
004038a8  01 50 85 e2                                      add r5, r5, #1
004038ac  0c 40 84 e2                                      add r4, r4, #0xc
004038b0  05 00 53 e1                                      cmp r3, r5
004038b4  f4 ff ff 8a                                      bhi #0x40388c
004038b8  e5 ff ff ea                                      b #0x403854
004038bc  04 30 a0 e1                                      mov r3, r4
004038c0  38 ff ff ea                                      b #0x4035a8
004038c4  04 30 a0 e1                                      mov r3, r4
004038c8  b1 ff ff ea                                      b #0x403794
004038cc  b0 00 9f e5                                      ldr r0, [pc, #0xb0]
004038d0  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
004038d4  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
004038d8  00 00 96 e7                                      ldr r0, [r6, r0]
004038dc  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
004038e0  be c1 00 e3                                      movw ip, #0x1be
004038e4  01 10 8f e0                                      add r1, pc, r1
004038e8  03 30 8f e0                                      add r3, pc, r3
004038ec  a8 00 80 e2                                      add r0, r0, #0xa8
004038f0  02 20 8f e0                                      add r2, pc, r2
004038f4  00 c0 8d e5                                      str ip, [sp]
004038f8  c1 29 fc eb                                      bl #0x30e004
004038fc  24 30 95 e5                                      ldr r3, [r5, #0x24]
00403900  09 ff ff ea                                      b #0x40352c
00403904  78 00 9f e5                                      ldr r0, [pc, #0x78]
00403908  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0040390c  bb c1 00 e3                                      movw ip, #0x1bb
00403910  00 00 96 e7                                      ldr r0, [r6, r0]
00403914  24 10 9d e5                                      ldr r1, [sp, #0x24]
00403918  28 20 9d e5                                      ldr r2, [sp, #0x28]
0040391c  a8 00 80 e2                                      add r0, r0, #0xa8
00403920  00 c0 8d e5                                      str ip, [sp]
00403924  b6 29 fc eb                                      bl #0x30e004
00403928  04 30 98 e5                                      ldr r3, [r8, #4]
0040392c  e8 fe ff ea                                      b #0x4034d4
00403930  47 14 a0 e1                                      asr r1, r7, #8
00403934  10 00 94 e5                                      ldr r0, [r4, #0x10]
00403938  94 f8 ff eb                                      bl #0x401b90
0040393c  18 00 8d e5                                      str r0, [sp, #0x18]
00403940  8c fe ff ea                                      b #0x403378
00403944  71 2a fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00403948  70 17 59 00 ac 40 00 00 48 0b 00 00 a8 07 00 00  .byte 0x70, 0x17, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x0b, 0x00, 0x00, 0xa8, 0x07, 0x00, 0x00
00403958  84 08 00 00 90 44 4c 00 b8 af 4b 00 74 44 4c 00  .byte 0x84, 0x08, 0x00, 0x00, 0x90, 0x44, 0x4c, 0x00, 0xb8, 0xaf, 0x4b, 0x00, 0x74, 0x44, 0x4c, 0x00
00403968  38 41 4c 00 d0 43 4c 00 c0 39 00 00 88 11 00 00  .byte 0x38, 0x41, 0x4c, 0x00, 0xd0, 0x43, 0x4c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x88, 0x11, 0x00, 0x00
00403978  e8 3b 00 00 1c 1c 00 00 28 30 00 00 c0 19 00 00  .byte 0xe8, 0x3b, 0x00, 0x00, 0x1c, 0x1c, 0x00, 0x00, 0x28, 0x30, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00403988  8c ad 4b 00 f8 41 4c 00 2c 3f 4c 00 f4 aa 4b 00  .byte 0x8c, 0xad, 0x4b, 0x00, 0xf8, 0x41, 0x4c, 0x00, 0x2c, 0x3f, 0x4c, 0x00, 0xf4, 0xaa, 0x4b, 0x00
00403998  08 40 4c 00 98 3c 4c 00                          .byte 0x08, 0x40, 0x4c, 0x00, 0x98, 0x3c, 0x4c, 0x00

; FUNCTION 0x004039a0, declared_size=1756, range_size=1756, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory13_AddLootTableEiRSt6vectorIPKN7Structs9LootEntryESaIS4_EEPS6_
; demangled: ItemInventory::_AddLootTable(int, std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> >&, std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> >*)
; decoder-mode: arm
004039a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004039a4  94 b6 9f e5                                      ldr fp, [pc, #0x694]
004039a8  94 36 9f e5                                      ldr r3, [pc, #0x694]
004039ac  6b df 4d e2                                      sub sp, sp, #0x1ac
004039b0  0b b0 8f e0                                      add fp, pc, fp
004039b4  14 30 8d e5                                      str r3, [sp, #0x14]
004039b8  03 30 9b e7                                      ldr r3, [fp, r3]
004039bc  00 a0 50 e2                                      subs sl, r0, #0
004039c0  01 40 a0 e1                                      mov r4, r1
004039c4  00 30 93 e5                                      ldr r3, [r3]
004039c8  02 50 a0 e1                                      mov r5, r2
004039cc  a4 31 8d e5                                      str r3, [sp, #0x1a4]
004039d0  ba 00 00 ba                                      blt #0x403cc0
004039d4  6c 36 9f e5                                      ldr r3, [pc, #0x66c]
004039d8  03 30 9b e7                                      ldr r3, [fp, r3]
004039dc  00 30 93 e5                                      ldr r3, [r3]
004039e0  03 00 5a e1                                      cmp sl, r3
004039e4  b5 00 00 aa                                      bge #0x403cc0
004039e8  5c 06 9f e5                                      ldr r0, [pc, #0x65c]
004039ec  5c 86 9f e5                                      ldr r8, [pc, #0x65c]
004039f0  63 7f 8d e2                                      add r7, sp, #0x18c
004039f4  00 90 9b e7                                      ldr sb, [fp, r0]
004039f8  08 80 8f e0                                      add r8, pc, r8
004039fc  08 00 8d e5                                      str r0, [sp, #8]
00403a00  09 00 a0 e1                                      mov r0, sb
00403a04  9f cf fc eb                                      bl #0x337888
00403a08  68 20 8d e2                                      add r2, sp, #0x68
00403a0c  07 00 a0 e1                                      mov r0, r7
00403a10  08 10 a0 e1                                      mov r1, r8
00403a14  b4 41 fc eb                                      bl #0x3140ec
00403a18  07 10 a0 e1                                      mov r1, r7
00403a1c  09 00 a0 e1                                      mov r0, sb
00403a20  18 d0 fc eb                                      bl #0x337a88
00403a24  07 00 a0 e1                                      mov r0, r7
00403a28  09 52 fc eb                                      bl #0x318254
00403a2c  5d 6f 8d e2                                      add r6, sp, #0x174
00403a30  09 00 a0 e1                                      mov r0, sb
00403a34  93 cf fc eb                                      bl #0x337888
00403a38  64 20 8d e2                                      add r2, sp, #0x64
00403a3c  06 00 a0 e1                                      mov r0, r6
00403a40  08 10 a0 e1                                      mov r1, r8
00403a44  a8 41 fc eb                                      bl #0x3140ec
00403a48  06 10 a0 e1                                      mov r1, r6
00403a4c  09 00 a0 e1                                      mov r0, sb
00403a50  0c d0 fc eb                                      bl #0x337a88
00403a54  06 00 a0 e1                                      mov r0, r6
00403a58  fd 51 fc eb                                      bl #0x318254
00403a5c  f0 35 9f e5                                      ldr r3, [pc, #0x5f0]
00403a60  57 7f 8d e2                                      add r7, sp, #0x15c
00403a64  09 00 a0 e1                                      mov r0, sb
00403a68  03 30 9b e7                                      ldr r3, [fp, r3]
00403a6c  24 60 a0 e3                                      mov r6, #0x24
00403a70  00 30 93 e5                                      ldr r3, [r3]
00403a74  96 3a 26 e0                                      mla r6, r6, sl, r3
00403a78  82 cf fc eb                                      bl #0x337888
00403a7c  60 20 8d e2                                      add r2, sp, #0x60
00403a80  08 10 a0 e1                                      mov r1, r8
00403a84  07 00 a0 e1                                      mov r0, r7
00403a88  97 41 fc eb                                      bl #0x3140ec
00403a8c  07 10 a0 e1                                      mov r1, r7
00403a90  09 00 a0 e1                                      mov r0, sb
00403a94  fb cf fc eb                                      bl #0x337a88
00403a98  07 00 a0 e1                                      mov r0, r7
00403a9c  ec 51 fc eb                                      bl #0x318254
00403aa0  14 30 96 e5                                      ldr r3, [r6, #0x14]
00403aa4  00 00 53 e3                                      cmp r3, #0
00403aa8  2f 00 00 0a                                      beq #0x403b6c
00403aac  08 20 a0 e1                                      mov r2, r8
00403ab0  00 70 a0 e3                                      mov r7, #0
00403ab4  5c 30 8d e2                                      add r3, sp, #0x5c
00403ab8  34 10 8d e2                                      add r1, sp, #0x34
00403abc  10 50 8d e5                                      str r5, [sp, #0x10]
00403ac0  18 b0 8d e5                                      str fp, [sp, #0x18]
00403ac4  07 a0 a0 e1                                      mov sl, r7
00403ac8  51 8f 8d e2                                      add r8, sp, #0x144
00403acc  0c 10 8d e5                                      str r1, [sp, #0xc]
00403ad0  03 b0 a0 e1                                      mov fp, r3
00403ad4  02 50 a0 e1                                      mov r5, r2
00403ad8  08 00 00 ea                                      b #0x403b00
00403adc  00 30 81 e5                                      str r3, [r1]
00403ae0  04 30 94 e5                                      ldr r3, [r4, #4]
00403ae4  01 a0 8a e2                                      add sl, sl, #1
00403ae8  24 70 87 e2                                      add r7, r7, #0x24
00403aec  04 30 83 e2                                      add r3, r3, #4
00403af0  04 30 84 e5                                      str r3, [r4, #4]
00403af4  14 30 96 e5                                      ldr r3, [r6, #0x14]
00403af8  0a 00 53 e1                                      cmp r3, sl
00403afc  18 00 00 9a                                      bls #0x403b64
00403b00  09 00 a0 e1                                      mov r0, sb
00403b04  5f cf fc eb                                      bl #0x337888
00403b08  0b 20 a0 e1                                      mov r2, fp
00403b0c  05 10 a0 e1                                      mov r1, r5
00403b10  08 00 a0 e1                                      mov r0, r8
00403b14  74 41 fc eb                                      bl #0x3140ec
00403b18  08 10 a0 e1                                      mov r1, r8
00403b1c  09 00 a0 e1                                      mov r0, sb
00403b20  d8 cf fc eb                                      bl #0x337a88
00403b24  08 00 a0 e1                                      mov r0, r8
00403b28  c9 51 fc eb                                      bl #0x318254
00403b2c  18 30 96 e5                                      ldr r3, [r6, #0x18]
00403b30  06 00 94 e9                                      ldmib r4, {r1, r2}
00403b34  07 30 83 e0                                      add r3, r3, r7
00403b38  34 30 8d e5                                      str r3, [sp, #0x34]
00403b3c  02 00 51 e1                                      cmp r1, r2
00403b40  e5 ff ff 1a                                      bne #0x403adc
00403b44  04 00 a0 e1                                      mov r0, r4
00403b48  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00403b4c  e2 fa ff eb                                      bl #0x4026dc
00403b50  14 30 96 e5                                      ldr r3, [r6, #0x14]
00403b54  01 a0 8a e2                                      add sl, sl, #1
00403b58  24 70 87 e2                                      add r7, r7, #0x24
00403b5c  0a 00 53 e1                                      cmp r3, sl
00403b60  e6 ff ff 8a                                      bhi #0x403b00
00403b64  10 50 9d e5                                      ldr r5, [sp, #0x10]
00403b68  18 b0 9d e5                                      ldr fp, [sp, #0x18]
00403b6c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00403b70  00 00 53 e3                                      cmp r3, #0
00403b74  67 00 00 0a                                      beq #0x403d18
00403b78  00 00 55 e3                                      cmp r5, #0
00403b7c  e5 00 00 0a                                      beq #0x403f18
00403b80  00 70 a0 e3                                      mov r7, #0
00403b84  07 80 a0 e1                                      mov r8, r7
00403b88  30 a0 8d e2                                      add sl, sp, #0x30
00403b8c  08 00 00 ea                                      b #0x403bb4
00403b90  00 30 81 e5                                      str r3, [r1]
00403b94  04 30 95 e5                                      ldr r3, [r5, #4]
00403b98  01 80 88 e2                                      add r8, r8, #1
00403b9c  24 70 87 e2                                      add r7, r7, #0x24
00403ba0  04 30 83 e2                                      add r3, r3, #4
00403ba4  04 30 85 e5                                      str r3, [r5, #4]
00403ba8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00403bac  08 00 53 e1                                      cmp r3, r8
00403bb0  0d 00 00 9a                                      bls #0x403bec
00403bb4  10 30 96 e5                                      ldr r3, [r6, #0x10]
00403bb8  06 00 95 e9                                      ldmib r5, {r1, r2}
00403bbc  07 30 83 e0                                      add r3, r3, r7
00403bc0  30 30 8d e5                                      str r3, [sp, #0x30]
00403bc4  02 00 51 e1                                      cmp r1, r2
00403bc8  f0 ff ff 1a                                      bne #0x403b90
00403bcc  05 00 a0 e1                                      mov r0, r5
00403bd0  0a 20 a0 e1                                      mov r2, sl
00403bd4  c0 fa ff eb                                      bl #0x4026dc
00403bd8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00403bdc  01 80 88 e2                                      add r8, r8, #1
00403be0  24 70 87 e2                                      add r7, r7, #0x24
00403be4  08 00 53 e1                                      cmp r3, r8
00403be8  f1 ff ff 8a                                      bhi #0x403bb4
00403bec  08 30 9d e5                                      ldr r3, [sp, #8]
00403bf0  00 70 a0 e3                                      mov r7, #0
00403bf4  20 70 8d e5                                      str r7, [sp, #0x20]
00403bf8  03 a0 9b e7                                      ldr sl, [fp, r3]
00403bfc  24 70 8d e5                                      str r7, [sp, #0x24]
00403c00  28 70 8d e5                                      str r7, [sp, #0x28]
00403c04  0a 00 a0 e1                                      mov r0, sl
00403c08  1e cf fc eb                                      bl #0x337888
00403c0c  44 14 9f e5                                      ldr r1, [pc, #0x444]
00403c10  e4 80 8d e2                                      add r8, sp, #0xe4
00403c14  4c 20 8d e2                                      add r2, sp, #0x4c
00403c18  01 10 8f e0                                      add r1, pc, r1
00403c1c  08 00 a0 e1                                      mov r0, r8
00403c20  31 41 fc eb                                      bl #0x3140ec
00403c24  08 10 a0 e1                                      mov r1, r8
00403c28  0a 00 a0 e1                                      mov r0, sl
00403c2c  95 cf fc eb                                      bl #0x337a88
00403c30  08 00 a0 e1                                      mov r0, r8
00403c34  86 51 fc eb                                      bl #0x318254
00403c38  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
00403c3c  07 00 53 e1                                      cmp r3, r7
00403c40  0b 00 00 0a                                      beq #0x403c74
00403c44  20 80 8d e2                                      add r8, sp, #0x20
00403c48  20 30 96 e5                                      ldr r3, [r6, #0x20]
00403c4c  00 00 55 e3                                      cmp r5, #0
00403c50  08 20 a0 01                                      moveq r2, r8
00403c54  05 20 a0 11                                      movne r2, r5
00403c58  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
00403c5c  04 10 a0 e1                                      mov r1, r4
00403c60  4e ff ff eb                                      bl #0x4039a0
00403c64  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
00403c68  01 70 87 e2                                      add r7, r7, #1
00403c6c  07 00 53 e1                                      cmp r3, r7
00403c70  f4 ff ff 8a                                      bhi #0x403c48
00403c74  00 00 55 e3                                      cmp r5, #0
00403c78  38 00 00 0a                                      beq #0x403d60
00403c7c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00403c80  00 00 50 e3                                      cmp r0, #0
00403c84  05 00 00 0a                                      beq #0x403ca0
00403c88  28 10 9d e5                                      ldr r1, [sp, #0x28]
00403c8c  01 10 60 e0                                      rsb r1, r0, r1
00403c90  03 10 c1 e3                                      bic r1, r1, #3
00403c94  80 00 51 e3                                      cmp r1, #0x80
00403c98  2e 00 00 8a                                      bhi #0x403d58
00403c9c  97 14 0c eb                                      bl #0x708f00
00403ca0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00403ca4  a4 21 9d e5                                      ldr r2, [sp, #0x1a4]
00403ca8  01 30 9b e7                                      ldr r3, [fp, r1]
00403cac  00 30 93 e5                                      ldr r3, [r3]
00403cb0  03 00 52 e1                                      cmp r2, r3
00403cb4  e0 00 00 1a                                      bne #0x40403c
00403cb8  6b df 8d e2                                      add sp, sp, #0x1ac
00403cbc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00403cc0  94 33 9f e5                                      ldr r3, [pc, #0x394]
00403cc4  03 30 9b e7                                      ldr r3, [fp, r3]
00403cc8  00 30 93 e5                                      ldr r3, [r3]
00403ccc  02 00 53 e3                                      cmp r3, #2
00403cd0  00 30 a0 03                                      moveq r3, #0
00403cd4  00 30 83 05                                      streq r3, [r3]
00403cd8  42 ff ff 0a                                      beq #0x4039e8
00403cdc  01 00 53 e3                                      cmp r3, #1
00403ce0  40 ff ff 1a                                      bne #0x4039e8
00403ce4  74 03 9f e5                                      ldr r0, [pc, #0x374]
00403ce8  74 13 9f e5                                      ldr r1, [pc, #0x374]
00403cec  74 23 9f e5                                      ldr r2, [pc, #0x374]
00403cf0  00 00 9b e7                                      ldr r0, [fp, r0]
00403cf4  70 33 9f e5                                      ldr r3, [pc, #0x370]
00403cf8  a0 c0 a0 e3                                      mov ip, #0xa0
00403cfc  01 10 8f e0                                      add r1, pc, r1
00403d00  02 20 8f e0                                      add r2, pc, r2
00403d04  03 30 8f e0                                      add r3, pc, r3
00403d08  a8 00 80 e2                                      add r0, r0, #0xa8
00403d0c  00 c0 8d e5                                      str ip, [sp]
00403d10  bb 28 fc eb                                      bl #0x30e004
00403d14  33 ff ff ea                                      b #0x4039e8
00403d18  08 20 9d e5                                      ldr r2, [sp, #8]
00403d1c  fc 70 8d e2                                      add r7, sp, #0xfc
00403d20  02 80 9b e7                                      ldr r8, [fp, r2]
00403d24  08 00 a0 e1                                      mov r0, r8
00403d28  d6 ce fc eb                                      bl #0x337888
00403d2c  3c 13 9f e5                                      ldr r1, [pc, #0x33c]
00403d30  50 20 8d e2                                      add r2, sp, #0x50
00403d34  07 00 a0 e1                                      mov r0, r7
00403d38  01 10 8f e0                                      add r1, pc, r1
00403d3c  ea 40 fc eb                                      bl #0x3140ec
00403d40  08 00 a0 e1                                      mov r0, r8
00403d44  07 10 a0 e1                                      mov r1, r7
00403d48  4e cf fc eb                                      bl #0x337a88
00403d4c  07 00 a0 e1                                      mov r0, r7
00403d50  3f 51 fc eb                                      bl #0x318254
00403d54  a4 ff ff ea                                      b #0x403bec
00403d58  b8 31 fc eb                                      bl #0x310440
00403d5c  cf ff ff ea                                      b #0x403ca0
00403d60  20 00 9d e5                                      ldr r0, [sp, #0x20]
00403d64  24 30 9d e5                                      ldr r3, [sp, #0x24]
00403d68  03 30 60 e0                                      rsb r3, r0, r3
00403d6c  23 31 b0 e1                                      lsrs r3, r3, #2
00403d70  c2 ff ff 0a                                      beq #0x403c80
00403d74  05 10 a0 e1                                      mov r1, r5
00403d78  08 00 96 e5                                      ldr r0, [r6, #8]
00403d7c  83 f7 ff eb                                      bl #0x401b90
00403d80  10 00 8d e5                                      str r0, [sp, #0x10]
00403d84  08 00 9d e5                                      ldr r0, [sp, #8]
00403d88  e4 92 9f e5                                      ldr sb, [pc, #0x2e4]
00403d8c  cc 60 8d e2                                      add r6, sp, #0xcc
00403d90  00 70 9b e7                                      ldr r7, [fp, r0]
00403d94  09 90 8f e0                                      add sb, pc, sb
00403d98  07 00 a0 e1                                      mov r0, r7
00403d9c  b9 ce fc eb                                      bl #0x337888
00403da0  48 20 8d e2                                      add r2, sp, #0x48
00403da4  06 00 a0 e1                                      mov r0, r6
00403da8  09 10 a0 e1                                      mov r1, sb
00403dac  ce 40 fc eb                                      bl #0x3140ec
00403db0  06 10 a0 e1                                      mov r1, r6
00403db4  07 00 a0 e1                                      mov r0, r7
00403db8  32 cf fc eb                                      bl #0x337a88
00403dbc  06 00 a0 e1                                      mov r0, r6
00403dc0  23 51 fc eb                                      bl #0x318254
00403dc4  b4 60 8d e2                                      add r6, sp, #0xb4
00403dc8  07 00 a0 e1                                      mov r0, r7
00403dcc  ad ce fc eb                                      bl #0x337888
00403dd0  44 20 8d e2                                      add r2, sp, #0x44
00403dd4  06 00 a0 e1                                      mov r0, r6
00403dd8  09 10 a0 e1                                      mov r1, sb
00403ddc  c2 40 fc eb                                      bl #0x3140ec
00403de0  06 10 a0 e1                                      mov r1, r6
00403de4  07 00 a0 e1                                      mov r0, r7
00403de8  26 cf fc eb                                      bl #0x337a88
00403dec  06 00 a0 e1                                      mov r0, r6
00403df0  17 51 fc eb                                      bl #0x318254
00403df4  9c 60 8d e2                                      add r6, sp, #0x9c
00403df8  07 00 a0 e1                                      mov r0, r7
00403dfc  a1 ce fc eb                                      bl #0x337888
00403e00  40 20 8d e2                                      add r2, sp, #0x40
00403e04  06 00 a0 e1                                      mov r0, r6
00403e08  09 10 a0 e1                                      mov r1, sb
00403e0c  b6 40 fc eb                                      bl #0x3140ec
00403e10  06 10 a0 e1                                      mov r1, r6
00403e14  07 00 a0 e1                                      mov r0, r7
00403e18  1a cf fc eb                                      bl #0x337a88
00403e1c  06 00 a0 e1                                      mov r0, r6
00403e20  0b 51 fc eb                                      bl #0x318254
00403e24  84 60 8d e2                                      add r6, sp, #0x84
00403e28  07 00 a0 e1                                      mov r0, r7
00403e2c  95 ce fc eb                                      bl #0x337888
00403e30  3c 20 8d e2                                      add r2, sp, #0x3c
00403e34  09 10 a0 e1                                      mov r1, sb
00403e38  06 00 a0 e1                                      mov r0, r6
00403e3c  aa 40 fc eb                                      bl #0x3140ec
00403e40  06 10 a0 e1                                      mov r1, r6
00403e44  07 00 a0 e1                                      mov r0, r7
00403e48  0e cf fc eb                                      bl #0x337a88
00403e4c  06 00 a0 e1                                      mov r0, r6
00403e50  ff 50 fc eb                                      bl #0x318254
00403e54  10 10 9d e5                                      ldr r1, [sp, #0x10]
00403e58  00 00 51 e3                                      cmp r1, #0
00403e5c  20 a0 8d 02                                      addeq sl, sp, #0x20
00403e60  28 00 00 0a                                      beq #0x403f08
00403e64  38 20 8d e2                                      add r2, sp, #0x38
00403e68  20 a0 8d e2                                      add sl, sp, #0x20
00403e6c  6c 60 8d e2                                      add r6, sp, #0x6c
00403e70  0c 20 8d e5                                      str r2, [sp, #0xc]
00403e74  08 00 00 ea                                      b #0x403e9c
00403e78  08 31 93 e7                                      ldr r3, [r3, r8, lsl #2]
00403e7c  01 50 85 e2                                      add r5, r5, #1
00403e80  00 30 81 e5                                      str r3, [r1]
00403e84  04 30 94 e5                                      ldr r3, [r4, #4]
00403e88  04 30 83 e2                                      add r3, r3, #4
00403e8c  04 30 84 e5                                      str r3, [r4, #4]
00403e90  10 00 9d e5                                      ldr r0, [sp, #0x10]
00403e94  00 00 55 e1                                      cmp r5, r0
00403e98  1a 00 00 0a                                      beq #0x403f08
00403e9c  0a 00 a0 e1                                      mov r0, sl
00403ea0  8a fa ff eb                                      bl #0x4028d0
00403ea4  08 30 9d e5                                      ldr r3, [sp, #8]
00403ea8  00 80 a0 e1                                      mov r8, r0
00403eac  03 70 9b e7                                      ldr r7, [fp, r3]
00403eb0  07 00 a0 e1                                      mov r0, r7
00403eb4  73 ce fc eb                                      bl #0x337888
00403eb8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00403ebc  09 10 a0 e1                                      mov r1, sb
00403ec0  06 00 a0 e1                                      mov r0, r6
00403ec4  88 40 fc eb                                      bl #0x3140ec
00403ec8  06 10 a0 e1                                      mov r1, r6
00403ecc  07 00 a0 e1                                      mov r0, r7
00403ed0  ec ce fc eb                                      bl #0x337a88
00403ed4  06 00 a0 e1                                      mov r0, r6
00403ed8  dd 50 fc eb                                      bl #0x318254
00403edc  06 00 94 e9                                      ldmib r4, {r1, r2}
00403ee0  20 30 9d e5                                      ldr r3, [sp, #0x20]
00403ee4  02 00 51 e1                                      cmp r1, r2
00403ee8  08 21 83 e0                                      add r2, r3, r8, lsl #2
00403eec  e1 ff ff 1a                                      bne #0x403e78
00403ef0  04 00 a0 e1                                      mov r0, r4
00403ef4  f8 f9 ff eb                                      bl #0x4026dc
00403ef8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00403efc  01 50 85 e2                                      add r5, r5, #1
00403f00  00 00 55 e1                                      cmp r5, r0
00403f04  e4 ff ff 1a                                      bne #0x403e9c
00403f08  04 00 a0 e1                                      mov r0, r4
00403f0c  0a 10 a0 e1                                      mov r1, sl
00403f10  73 fb ff eb                                      bl #0x402ce4
00403f14  58 ff ff ea                                      b #0x403c7c
00403f18  05 10 a0 e1                                      mov r1, r5
00403f1c  08 00 96 e5                                      ldr r0, [r6, #8]
00403f20  1a f7 ff eb                                      bl #0x401b90
00403f24  08 20 9d e5                                      ldr r2, [sp, #8]
00403f28  48 81 9f e5                                      ldr r8, [pc, #0x148]
00403f2c  4b 7f 8d e2                                      add r7, sp, #0x12c
00403f30  02 a0 9b e7                                      ldr sl, [fp, r2]
00403f34  0c 00 8d e5                                      str r0, [sp, #0xc]
00403f38  08 80 8f e0                                      add r8, pc, r8
00403f3c  0a 00 a0 e1                                      mov r0, sl
00403f40  50 ce fc eb                                      bl #0x337888
00403f44  58 20 8d e2                                      add r2, sp, #0x58
00403f48  08 10 a0 e1                                      mov r1, r8
00403f4c  07 00 a0 e1                                      mov r0, r7
00403f50  65 40 fc eb                                      bl #0x3140ec
00403f54  07 10 a0 e1                                      mov r1, r7
00403f58  0a 00 a0 e1                                      mov r0, sl
00403f5c  c9 ce fc eb                                      bl #0x337a88
00403f60  07 00 a0 e1                                      mov r0, r7
00403f64  ba 50 fc eb                                      bl #0x318254
00403f68  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00403f6c  00 00 53 e3                                      cmp r3, #0
00403f70  2c 00 00 0a                                      beq #0x404028
00403f74  54 00 8d e2                                      add r0, sp, #0x54
00403f78  2c 10 8d e2                                      add r1, sp, #0x2c
00403f7c  08 90 a0 e1                                      mov sb, r8
00403f80  05 70 a0 e1                                      mov r7, r5
00403f84  45 8f 8d e2                                      add r8, sp, #0x114
00403f88  10 00 8d e5                                      str r0, [sp, #0x10]
00403f8c  18 10 8d e5                                      str r1, [sp, #0x18]
00403f90  1c 50 8d e5                                      str r5, [sp, #0x1c]
00403f94  07 00 00 ea                                      b #0x403fb8
00403f98  00 20 81 e5                                      str r2, [r1]
00403f9c  04 30 94 e5                                      ldr r3, [r4, #4]
00403fa0  04 30 83 e2                                      add r3, r3, #4
00403fa4  04 30 84 e5                                      str r3, [r4, #4]
00403fa8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00403fac  01 70 87 e2                                      add r7, r7, #1
00403fb0  01 00 57 e1                                      cmp r7, r1
00403fb4  1a 00 00 0a                                      beq #0x404024
00403fb8  06 00 a0 e1                                      mov r0, r6
00403fbc  a7 fa ff eb                                      bl #0x402a60
00403fc0  08 20 9d e5                                      ldr r2, [sp, #8]
00403fc4  00 a0 a0 e1                                      mov sl, r0
00403fc8  02 50 9b e7                                      ldr r5, [fp, r2]
00403fcc  05 00 a0 e1                                      mov r0, r5
00403fd0  2c ce fc eb                                      bl #0x337888
00403fd4  10 20 9d e5                                      ldr r2, [sp, #0x10]
00403fd8  09 10 a0 e1                                      mov r1, sb
00403fdc  08 00 a0 e1                                      mov r0, r8
00403fe0  41 40 fc eb                                      bl #0x3140ec
00403fe4  08 10 a0 e1                                      mov r1, r8
00403fe8  05 00 a0 e1                                      mov r0, r5
00403fec  a5 ce fc eb                                      bl #0x337a88
00403ff0  08 00 a0 e1                                      mov r0, r8
00403ff4  96 50 fc eb                                      bl #0x318254
00403ff8  10 20 96 e5                                      ldr r2, [r6, #0x10]
00403ffc  0a 00 94 e9                                      ldmib r4, {r1, r3}
00404000  24 00 a0 e3                                      mov r0, #0x24
00404004  90 2a 22 e0                                      mla r2, r0, sl, r2
00404008  03 00 51 e1                                      cmp r1, r3
0040400c  2c 20 8d e5                                      str r2, [sp, #0x2c]
00404010  e0 ff ff 1a                                      bne #0x403f98
00404014  04 00 a0 e1                                      mov r0, r4
00404018  18 20 9d e5                                      ldr r2, [sp, #0x18]
0040401c  ae f9 ff eb                                      bl #0x4026dc
00404020  e0 ff ff ea                                      b #0x403fa8
00404024  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00404028  04 00 a0 e1                                      mov r0, r4
0040402c  10 10 96 e5                                      ldr r1, [r6, #0x10]
00404030  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00404034  4d fb ff eb                                      bl #0x402d70
00404038  eb fe ff ea                                      b #0x403bec
0040403c  b3 28 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00404040  e0 10 59 00 ac 40 00 00 20 35 00 00 84 08 00 00  .byte 0xe0, 0x10, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x35, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00404050  30 3e 4c 00 fc 18 00 00 10 3c 4c 00 c0 39 00 00  .byte 0x30, 0x3e, 0x4c, 0x00, 0xfc, 0x18, 0x00, 0x00, 0x10, 0x3c, 0x4c, 0x00, 0xc0, 0x39, 0x00, 0x00
00404060  c0 19 00 00 dc a6 4b 00 58 3c 4c 00 7c 38 4c 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xdc, 0xa6, 0x4b, 0x00, 0x58, 0x3c, 0x4c, 0x00, 0x7c, 0x38, 0x4c, 0x00
00404070  f0 3a 4c 00 94 3a 4c 00 f0 38 4c 00              .byte 0xf0, 0x3a, 0x4c, 0x00, 0x94, 0x3a, 0x4c, 0x00, 0xf0, 0x38, 0x4c, 0x00

; FUNCTION 0x0040407c, declared_size=1500, range_size=1500, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory7AddLootEiiiib
; demangled: ItemInventory::AddLoot(int, int, int, int, bool)
; decoder-mode: arm
0040407c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00404080  a0 65 9f e5                                      ldr r6, [pc, #0x5a0]
00404084  a0 c5 9f e5                                      ldr ip, [pc, #0x5a0]
00404088  00 50 51 e2                                      subs r5, r1, #0
0040408c  06 60 8f e0                                      add r6, pc, r6
00404090  0c 10 96 e7                                      ldr r1, [r6, ip]
00404094  75 df 4d e2                                      sub sp, sp, #0x1d4
00404098  0c 20 8d e5                                      str r2, [sp, #0xc]
0040409c  00 20 91 e5                                      ldr r2, [r1]
004040a0  1c c0 8d e5                                      str ip, [sp, #0x1c]
004040a4  00 90 a0 e1                                      mov sb, r0
004040a8  10 30 8d e5                                      str r3, [sp, #0x10]
004040ac  cc 21 8d e5                                      str r2, [sp, #0x1cc]
004040b0  fc b1 dd e5                                      ldrb fp, [sp, #0x1fc]
004040b4  04 00 00 ba                                      blt #0x4040cc
004040b8  70 35 9f e5                                      ldr r3, [pc, #0x570]
004040bc  03 30 96 e7                                      ldr r3, [r6, r3]
004040c0  00 30 93 e5                                      ldr r3, [r3]
004040c4  03 00 55 e1                                      cmp r5, r3
004040c8  07 00 00 ba                                      blt #0x4040ec
004040cc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004040d0  02 30 96 e7                                      ldr r3, [r6, r2]
004040d4  cc 21 9d e5                                      ldr r2, [sp, #0x1cc]
004040d8  00 30 93 e5                                      ldr r3, [r3]
004040dc  03 00 52 e1                                      cmp r2, r3
004040e0  4f 01 00 1a                                      bne #0x404624
004040e4  75 df 8d e2                                      add sp, sp, #0x1d4
004040e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004040ec  40 35 9f e5                                      ldr r3, [pc, #0x540]
004040f0  6d 4f 8d e2                                      add r4, sp, #0x1b4
004040f4  03 70 96 e7                                      ldr r7, [r6, r3]
004040f8  07 00 a0 e1                                      mov r0, r7
004040fc  e1 cd fc eb                                      bl #0x337888
00404100  30 15 9f e5                                      ldr r1, [pc, #0x530]
00404104  80 20 8d e2                                      add r2, sp, #0x80
00404108  04 00 a0 e1                                      mov r0, r4
0040410c  01 10 8f e0                                      add r1, pc, r1
00404110  f5 3f fc eb                                      bl #0x3140ec
00404114  04 10 a0 e1                                      mov r1, r4
00404118  07 00 a0 e1                                      mov r0, r7
0040411c  59 ce fc eb                                      bl #0x337a88
00404120  00 80 a0 e1                                      mov r8, r0
00404124  04 00 a0 e1                                      mov r0, r4
00404128  49 50 fc eb                                      bl #0x318254
0040412c  00 00 58 e3                                      cmp r8, #0
00404130  e5 ff ff 1a                                      bne #0x4040cc
00404134  00 a5 9f e5                                      ldr sl, [pc, #0x500]
00404138  67 4f 8d e2                                      add r4, sp, #0x19c
0040413c  07 00 a0 e1                                      mov r0, r7
00404140  0a a0 8f e0                                      add sl, pc, sl
00404144  cf cd fc eb                                      bl #0x337888
00404148  7c 20 8d e2                                      add r2, sp, #0x7c
0040414c  04 00 a0 e1                                      mov r0, r4
00404150  0a 10 a0 e1                                      mov r1, sl
00404154  e4 3f fc eb                                      bl #0x3140ec
00404158  04 10 a0 e1                                      mov r1, r4
0040415c  07 00 a0 e1                                      mov r0, r7
00404160  48 ce fc eb                                      bl #0x337a88
00404164  04 00 a0 e1                                      mov r0, r4
00404168  39 50 fc eb                                      bl #0x318254
0040416c  61 4f 8d e2                                      add r4, sp, #0x184
00404170  07 00 a0 e1                                      mov r0, r7
00404174  c3 cd fc eb                                      bl #0x337888
00404178  78 20 8d e2                                      add r2, sp, #0x78
0040417c  0a 10 a0 e1                                      mov r1, sl
00404180  04 00 a0 e1                                      mov r0, r4
00404184  d8 3f fc eb                                      bl #0x3140ec
00404188  04 10 a0 e1                                      mov r1, r4
0040418c  07 00 a0 e1                                      mov r0, r7
00404190  3c ce fc eb                                      bl #0x337a88
00404194  4c 10 8d e2                                      add r1, sp, #0x4c
00404198  04 00 a0 e1                                      mov r0, r4
0040419c  30 10 8d e5                                      str r1, [sp, #0x30]
004041a0  2b 50 fc eb                                      bl #0x318254
004041a4  08 20 a0 e1                                      mov r2, r8
004041a8  05 00 a0 e1                                      mov r0, r5
004041ac  30 10 9d e5                                      ldr r1, [sp, #0x30]
004041b0  4c 80 8d e5                                      str r8, [sp, #0x4c]
004041b4  50 80 8d e5                                      str r8, [sp, #0x50]
004041b8  54 80 8d e5                                      str r8, [sp, #0x54]
004041bc  f7 fd ff eb                                      bl #0x4039a0
004041c0  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
004041c4  50 20 9d e5                                      ldr r2, [sp, #0x50]
004041c8  02 30 63 e0                                      rsb r3, r3, r2
004041cc  23 31 b0 e1                                      lsrs r3, r3, #2
004041d0  1a 00 00 1a                                      bne #0x404240
004041d4  5b 4f 8d e2                                      add r4, sp, #0x16c
004041d8  07 00 a0 e1                                      mov r0, r7
004041dc  a9 cd fc eb                                      bl #0x337888
004041e0  74 20 8d e2                                      add r2, sp, #0x74
004041e4  04 00 a0 e1                                      mov r0, r4
004041e8  0a 10 a0 e1                                      mov r1, sl
004041ec  be 3f fc eb                                      bl #0x3140ec
004041f0  04 10 a0 e1                                      mov r1, r4
004041f4  07 00 a0 e1                                      mov r0, r7
004041f8  22 ce fc eb                                      bl #0x337a88
004041fc  04 00 a0 e1                                      mov r0, r4
00404200  13 50 fc eb                                      bl #0x318254
00404204  55 4f 8d e2                                      add r4, sp, #0x154
00404208  07 00 a0 e1                                      mov r0, r7
0040420c  9d cd fc eb                                      bl #0x337888
00404210  0a 10 a0 e1                                      mov r1, sl
00404214  70 20 8d e2                                      add r2, sp, #0x70
00404218  04 00 a0 e1                                      mov r0, r4
0040421c  b2 3f fc eb                                      bl #0x3140ec
00404220  07 00 a0 e1                                      mov r0, r7
00404224  04 10 a0 e1                                      mov r1, r4
00404228  16 ce fc eb                                      bl #0x337a88
0040422c  04 00 a0 e1                                      mov r0, r4
00404230  07 50 fc eb                                      bl #0x318254
00404234  30 00 9d e5                                      ldr r0, [sp, #0x30]
00404238  9f f8 ff eb                                      bl #0x4024bc
0040423c  a2 ff ff ea                                      b #0x4040cc
00404240  4f 4f 8d e2                                      add r4, sp, #0x13c
00404244  07 00 a0 e1                                      mov r0, r7
00404248  8e cd fc eb                                      bl #0x337888
0040424c  6c 20 8d e2                                      add r2, sp, #0x6c
00404250  04 00 a0 e1                                      mov r0, r4
00404254  0a 10 a0 e1                                      mov r1, sl
00404258  a3 3f fc eb                                      bl #0x3140ec
0040425c  04 10 a0 e1                                      mov r1, r4
00404260  07 00 a0 e1                                      mov r0, r7
00404264  07 ce fc eb                                      bl #0x337a88
00404268  04 00 a0 e1                                      mov r0, r4
0040426c  f8 4f fc eb                                      bl #0x318254
00404270  49 4f 8d e2                                      add r4, sp, #0x124
00404274  07 00 a0 e1                                      mov r0, r7
00404278  82 cd fc eb                                      bl #0x337888
0040427c  68 20 8d e2                                      add r2, sp, #0x68
00404280  0a 10 a0 e1                                      mov r1, sl
00404284  04 00 a0 e1                                      mov r0, r4
00404288  97 3f fc eb                                      bl #0x3140ec
0040428c  04 10 a0 e1                                      mov r1, r4
00404290  07 00 a0 e1                                      mov r0, r7
00404294  fb cd fc eb                                      bl #0x337a88
00404298  40 20 8d e2                                      add r2, sp, #0x40
0040429c  04 00 a0 e1                                      mov r0, r4
004042a0  34 20 8d e5                                      str r2, [sp, #0x34]
004042a4  ea 4f fc eb                                      bl #0x318254
004042a8  2d 20 d9 e5                                      ldrb r2, [sb, #0x2d]
004042ac  30 00 9d e5                                      ldr r0, [sp, #0x30]
004042b0  34 10 9d e5                                      ldr r1, [sp, #0x34]
004042b4  48 80 8d e5                                      str r8, [sp, #0x48]
004042b8  40 80 8d e5                                      str r8, [sp, #0x40]
004042bc  44 80 8d e5                                      str r8, [sp, #0x44]
004042c0  cd fa ff eb                                      bl #0x402dfc
004042c4  40 30 9d e5                                      ldr r3, [sp, #0x40]
004042c8  44 20 9d e5                                      ldr r2, [sp, #0x44]
004042cc  02 30 63 e0                                      rsb r3, r3, r2
004042d0  23 32 b0 e1                                      lsrs r3, r3, #4
004042d4  9d 00 00 0a                                      beq #0x404550
004042d8  dc 40 8d e2                                      add r4, sp, #0xdc
004042dc  07 00 a0 e1                                      mov r0, r7
004042e0  68 cd fc eb                                      bl #0x337888
004042e4  5c 20 8d e2                                      add r2, sp, #0x5c
004042e8  04 00 a0 e1                                      mov r0, r4
004042ec  0a 10 a0 e1                                      mov r1, sl
004042f0  7d 3f fc eb                                      bl #0x3140ec
004042f4  04 10 a0 e1                                      mov r1, r4
004042f8  07 00 a0 e1                                      mov r0, r7
004042fc  e1 cd fc eb                                      bl #0x337a88
00404300  04 00 a0 e1                                      mov r0, r4
00404304  d2 4f fc eb                                      bl #0x318254
00404308  c4 40 8d e2                                      add r4, sp, #0xc4
0040430c  07 00 a0 e1                                      mov r0, r7
00404310  5c cd fc eb                                      bl #0x337888
00404314  58 20 8d e2                                      add r2, sp, #0x58
00404318  0a 10 a0 e1                                      mov r1, sl
0040431c  04 00 a0 e1                                      mov r0, r4
00404320  71 3f fc eb                                      bl #0x3140ec
00404324  04 10 a0 e1                                      mov r1, r4
00404328  07 00 a0 e1                                      mov r0, r7
0040432c  d5 cd fc eb                                      bl #0x337a88
00404330  04 00 a0 e1                                      mov r0, r4
00404334  c6 4f fc eb                                      bl #0x318254
00404338  40 40 9d e5                                      ldr r4, [sp, #0x40]
0040433c  44 30 9d e5                                      ldr r3, [sp, #0x44]
00404340  03 00 54 e1                                      cmp r4, r3
00404344  64 00 00 0a                                      beq #0x4044dc
00404348  f0 22 9f e5                                      ldr r2, [pc, #0x2f0]
0040434c  f0 12 9f e5                                      ldr r1, [pc, #0x2f0]
00404350  f0 c2 9f e5                                      ldr ip, [pc, #0x2f0]
00404354  20 20 8d e5                                      str r2, [sp, #0x20]
00404358  ec 22 9f e5                                      ldr r2, [pc, #0x2ec]
0040435c  18 b0 8d e5                                      str fp, [sp, #0x18]
00404360  24 c0 8d e5                                      str ip, [sp, #0x24]
00404364  02 20 8f e0                                      add r2, pc, r2
00404368  3c 20 8d e5                                      str r2, [sp, #0x3c]
0040436c  dc 22 9f e5                                      ldr r2, [pc, #0x2dc]
00404370  10 40 84 e2                                      add r4, r4, #0x10
00404374  14 90 8d e5                                      str sb, [sp, #0x14]
00404378  02 20 8f e0                                      add r2, pc, r2
0040437c  38 20 8d e5                                      str r2, [sp, #0x38]
00404380  06 80 a0 e1                                      mov r8, r6
00404384  01 b0 a0 e1                                      mov fp, r1
00404388  04 20 14 e5                                      ldr r2, [r4, #-4]
0040438c  10 20 92 e5                                      ldr r2, [r2, #0x10]
00404390  02 20 42 e2                                      sub r2, r2, #2
00404394  01 00 52 e3                                      cmp r2, #1
00404398  01 90 a0 83                                      movhi sb, #1
0040439c  04 00 00 8a                                      bhi #0x4043b4
004043a0  0b 20 98 e7                                      ldr r2, [r8, fp]
004043a4  40 20 92 e5                                      ldr r2, [r2, #0x40]
004043a8  c4 96 92 e5                                      ldr sb, [r2, #0x6c4]
004043ac  00 00 59 e3                                      cmp sb, #0
004043b0  45 00 00 da                                      ble #0x4044cc
004043b4  98 32 9f e5                                      ldr r3, [pc, #0x298]
004043b8  00 60 a0 e3                                      mov r6, #0
004043bc  2c 30 8d e5                                      str r3, [sp, #0x2c]
004043c0  0b a0 98 e7                                      ldr sl, [r8, fp]
004043c4  f0 51 54 e1                                      ldrsh r5, [r4, #-0x10]
004043c8  0a 00 a0 e1                                      mov r0, sl
004043cc  70 6c fc eb                                      bl #0x31f594
004043d0  00 70 50 e2                                      subs r7, r0, #0
004043d4  02 00 00 0a                                      beq #0x4043e4
004043d8  0a 00 a0 e1                                      mov r0, sl
004043dc  6c 6c fc eb                                      bl #0x31f594
004043e0  18 71 90 e5                                      ldr r7, [r0, #0x118]
004043e4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
004043e8  00 00 5c e3                                      cmp ip, #0
004043ec  09 00 00 1a                                      bne #0x404418
004043f0  24 10 9d e5                                      ldr r1, [sp, #0x24]
004043f4  02 a0 85 e2                                      add sl, r5, #2
004043f8  01 30 98 e7                                      ldr r3, [r8, r1]
004043fc  00 30 93 e5                                      ldr r3, [r3]
00404400  03 00 5a e1                                      cmp sl, r3
00404404  03 00 00 2a                                      bhs #0x404418
00404408  01 00 57 e3                                      cmp r7, #1
0040440c  6a 00 00 0a                                      beq #0x4045bc
00404410  02 00 57 e3                                      cmp r7, #2
00404414  35 00 00 0a                                      beq #0x4044f0
00404418  05 a0 a0 e1                                      mov sl, r5
0040441c  f0 31 54 e1                                      ldrsh r3, [r4, #-0x10]
00404420  0a 00 53 e1                                      cmp r3, sl
00404424  08 00 00 0a                                      beq #0x40444c
00404428  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0040442c  a4 10 a0 e3                                      mov r1, #0xa4
00404430  0c 30 98 e7                                      ldr r3, [r8, ip]
00404434  00 20 93 e5                                      ldr r2, [r3]
00404438  08 30 54 e5                                      ldrb r3, [r4, #-8]
0040443c  b0 a1 44 e1                                      strh sl, [r4, #-0x10]
00404440  91 2a 22 e0                                      mla r2, r1, sl, r2
00404444  08 30 44 e5                                      strb r3, [r4, #-8]
00404448  04 20 04 e5                                      str r2, [r4, #-4]
0040444c  00 10 a0 e3                                      mov r1, #0
00404450  6c 00 a0 e3                                      mov r0, #0x6c
00404454  45 30 fc eb                                      bl #0x310570
00404458  01 20 a0 e3                                      mov r2, #1
0040445c  0a 10 a0 e1                                      mov r1, sl
00404460  00 50 a0 e1                                      mov r5, r0
00404464  80 df ff eb                                      bl #0x3fc26c
00404468  d8 10 54 e1                                      ldrsb r1, [r4, #-8]
0040446c  05 00 a0 e1                                      mov r0, r5
00404470  01 60 86 e2                                      add r6, r6, #1
00404474  02 00 71 e3                                      cmn r1, #2
00404478  63 10 a0 03                                      moveq r1, #0x63
0040447c  08 10 44 05                                      strbeq r1, [r4, #-8]
00404480  63 10 a0 03                                      moveq r1, #0x63
00404484  16 d7 ff eb                                      bl #0x3fa0e4
00404488  0c 00 14 e5                                      ldr r0, [r4, #-0xc]
0040448c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00404490  f8 31 9d e5                                      ldr r3, [sp, #0x1f8]
00404494  05 10 a0 e1                                      mov r1, r5
00404498  00 70 8d e5                                      str r7, [sp]
0040449c  9b fb ff eb                                      bl #0x403310
004044a0  05 00 a0 e1                                      mov r0, r5
004044a4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004044a8  01 f7 ff eb                                      bl #0x4020b4
004044ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
004044b0  05 10 a0 e1                                      mov r1, r5
004044b4  01 20 a0 e3                                      mov r2, #1
004044b8  00 30 a0 e3                                      mov r3, #0
004044bc  44 ec ff eb                                      bl #0x3ff5d4
004044c0  09 00 56 e1                                      cmp r6, sb
004044c4  bd ff ff 1a                                      bne #0x4043c0
004044c8  44 30 9d e5                                      ldr r3, [sp, #0x44]
004044cc  04 00 53 e1                                      cmp r3, r4
004044d0  10 40 84 e2                                      add r4, r4, #0x10
004044d4  ab ff ff 1a                                      bne #0x404388
004044d8  08 60 a0 e1                                      mov r6, r8
004044dc  34 00 9d e5                                      ldr r0, [sp, #0x34]
004044e0  e5 f7 ff eb                                      bl #0x40247c
004044e4  30 00 9d e5                                      ldr r0, [sp, #0x30]
004044e8  f3 f7 ff eb                                      bl #0x4024bc
004044ec  f6 fe ff ea                                      b #0x4040cc
004044f0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
004044f4  84 10 8d e2                                      add r1, sp, #0x84
004044f8  28 10 8d e5                                      str r1, [sp, #0x28]
004044fc  03 c0 98 e7                                      ldr ip, [r8, r3]
00404500  01 00 a0 e1                                      mov r0, r1
00404504  00 30 9c e5                                      ldr r3, [ip]
00404508  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
0040450c  08 c0 8d e5                                      str ip, [sp, #8]
00404510  02 28 fc eb                                      bl #0x30e520
00404514  28 00 9d e5                                      ldr r0, [sp, #0x28]
00404518  4d 26 fc eb                                      bl #0x30de54
0040451c  28 20 9d e5                                      ldr r2, [sp, #0x28]
00404520  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00404524  00 00 82 e0                                      add r0, r2, r0
00404528  0a 20 a0 e3                                      mov r2, #0xa
0040452c  cd 28 fc eb                                      bl #0x30e868
00404530  08 c0 9d e5                                      ldr ip, [sp, #8]
00404534  28 00 9d e5                                      ldr r0, [sp, #0x28]
00404538  00 30 9c e5                                      ldr r3, [ip]
0040453c  0a 11 93 e7                                      ldr r1, [r3, sl, lsl #2]
00404540  75 27 fc eb                                      bl #0x30e31c
00404544  00 00 50 e3                                      cmp r0, #0
00404548  b3 ff ff 0a                                      beq #0x40441c
0040454c  b1 ff ff ea                                      b #0x404418
00404550  43 4f 8d e2                                      add r4, sp, #0x10c
00404554  07 00 a0 e1                                      mov r0, r7
00404558  ca cc fc eb                                      bl #0x337888
0040455c  64 20 8d e2                                      add r2, sp, #0x64
00404560  0a 10 a0 e1                                      mov r1, sl
00404564  04 00 a0 e1                                      mov r0, r4
00404568  df 3e fc eb                                      bl #0x3140ec
0040456c  04 10 a0 e1                                      mov r1, r4
00404570  07 00 a0 e1                                      mov r0, r7
00404574  43 cd fc eb                                      bl #0x337a88
00404578  04 00 a0 e1                                      mov r0, r4
0040457c  34 4f fc eb                                      bl #0x318254
00404580  f4 40 8d e2                                      add r4, sp, #0xf4
00404584  07 00 a0 e1                                      mov r0, r7
00404588  be cc fc eb                                      bl #0x337888
0040458c  60 20 8d e2                                      add r2, sp, #0x60
00404590  0a 10 a0 e1                                      mov r1, sl
00404594  04 00 a0 e1                                      mov r0, r4
00404598  d3 3e fc eb                                      bl #0x3140ec
0040459c  04 10 a0 e1                                      mov r1, r4
004045a0  07 00 a0 e1                                      mov r0, r7
004045a4  37 cd fc eb                                      bl #0x337a88
004045a8  04 00 a0 e1                                      mov r0, r4
004045ac  28 4f fc eb                                      bl #0x318254
004045b0  34 00 9d e5                                      ldr r0, [sp, #0x34]
004045b4  b0 f7 ff eb                                      bl #0x40247c
004045b8  1d ff ff ea                                      b #0x404234
004045bc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
004045c0  01 c0 85 e2                                      add ip, r5, #1
004045c4  84 a0 8d e2                                      add sl, sp, #0x84
004045c8  02 30 98 e7                                      ldr r3, [r8, r2]
004045cc  28 c0 8d e5                                      str ip, [sp, #0x28]
004045d0  0a 00 a0 e1                                      mov r0, sl
004045d4  00 20 93 e5                                      ldr r2, [r3]
004045d8  05 11 92 e7                                      ldr r1, [r2, r5, lsl #2]
004045dc  08 30 8d e5                                      str r3, [sp, #8]
004045e0  ce 27 fc eb                                      bl #0x30e520
004045e4  0a 00 a0 e1                                      mov r0, sl
004045e8  19 26 fc eb                                      bl #0x30de54
004045ec  38 10 9d e5                                      ldr r1, [sp, #0x38]
004045f0  00 00 8a e0                                      add r0, sl, r0
004045f4  06 20 a0 e3                                      mov r2, #6
004045f8  9a 28 fc eb                                      bl #0x30e868
004045fc  08 30 9d e5                                      ldr r3, [sp, #8]
00404600  28 20 9d e5                                      ldr r2, [sp, #0x28]
00404604  0a 00 a0 e1                                      mov r0, sl
00404608  00 30 93 e5                                      ldr r3, [r3]
0040460c  02 11 93 e7                                      ldr r1, [r3, r2, lsl #2]
00404610  41 27 fc eb                                      bl #0x30e31c
00404614  00 00 50 e3                                      cmp r0, #0
00404618  28 a0 9d 05                                      ldreq sl, [sp, #0x28]
0040461c  7e ff ff 0a                                      beq #0x40441c
00404620  7c ff ff ea                                      b #0x404418
00404624  39 27 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00404628  04 0a 59 00 ac 40 00 00 20 35 00 00 84 08 00 00  .byte 0x04, 0x0a, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x35, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00404638  d4 fa 4b 00 e8 36 4c 00 6c 28 00 00 f4 37 00 00  .byte 0xd4, 0xfa, 0x4b, 0x00, 0xe8, 0x36, 0x4c, 0x00, 0x6c, 0x28, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
00404648  60 0d 00 00 c4 2e 4c 00 a8 2e 4c 00 54 1c 00 00  .byte 0x60, 0x0d, 0x00, 0x00, 0xc4, 0x2e, 0x4c, 0x00, 0xa8, 0x2e, 0x4c, 0x00, 0x54, 0x1c, 0x00, 0x00

; FUNCTION 0x00404658, declared_size=64, range_size=64, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory16DBG_DropAllLootsEv
; demangled: ItemInventory::DBG_DropAllLoots()
; decoder-mode: arm
00404658  30 40 2d e9                                      push {r4, r5, lr}
0040465c  01 30 a0 e3                                      mov r3, #1
00404660  00 40 a0 e3                                      mov r4, #0
00404664  0c d0 4d e2                                      sub sp, sp, #0xc
00404668  00 50 a0 e1                                      mov r5, r0
0040466c  2d 30 c0 e5                                      strb r3, [r0, #0x2d]
00404670  00 c0 e0 e3                                      mvn ip, #0
00404674  05 10 a0 e3                                      mov r1, #5
00404678  04 20 a0 e1                                      mov r2, r4
0040467c  04 30 a0 e1                                      mov r3, r4
00404680  00 c0 8d e5                                      str ip, [sp]
00404684  04 40 8d e5                                      str r4, [sp, #4]
00404688  7b fe ff eb                                      bl #0x40407c
0040468c  2d 40 c5 e5                                      strb r4, [r5, #0x2d]
00404690  0c d0 8d e2                                      add sp, sp, #0xc
00404694  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0047d5fc, declared_size=256, range_size=256, mode=arm
; class-group: ItemInventory
; alias: _ZN13ItemInventory30UnregisterQuestGatheringItemIdEi
; demangled: ItemInventory::UnregisterQuestGatheringItemId(int)
; decoder-mode: arm
0047d5fc  30 40 2d e9                                      push {r4, r5, lr}
0047d600  00 50 a0 e1                                      mov r5, r0
0047d604  30 40 b5 e5                                      ldr r4, [r5, #0x30]!
0047d608  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
0047d60c  0c d0 4d e2                                      sub sp, sp, #0xc
0047d610  05 00 54 e1                                      cmp r4, r5
0047d614  03 30 8f e0                                      add r3, pc, r3
0047d618  06 00 00 0a                                      beq #0x47d638
0047d61c  08 20 94 e5                                      ldr r2, [r4, #8]
0047d620  02 00 51 e1                                      cmp r1, r2
0047d624  03 00 00 0a                                      beq #0x47d638
0047d628  00 40 94 e5                                      ldr r4, [r4]
0047d62c  04 00 55 e1                                      cmp r5, r4
0047d630  f9 ff ff 1a                                      bne #0x47d61c
0047d634  05 40 a0 e1                                      mov r4, r5
0047d638  04 00 55 e1                                      cmp r5, r4
0047d63c  0e 00 00 0a                                      beq #0x47d67c
0047d640  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
0047d644  01 30 43 e2                                      sub r3, r3, #1
0047d648  73 30 ef e6                                      uxtb r3, r3
0047d64c  00 00 53 e3                                      cmp r3, #0
0047d650  0c 30 c4 e5                                      strb r3, [r4, #0xc]
0047d654  13 00 00 1a                                      bne #0x47d6a8
0047d658  00 30 94 e5                                      ldr r3, [r4]
0047d65c  04 20 94 e5                                      ldr r2, [r4, #4]
0047d660  04 00 a0 e1                                      mov r0, r4
0047d664  10 10 a0 e3                                      mov r1, #0x10
0047d668  00 30 82 e5                                      str r3, [r2]
0047d66c  04 20 83 e5                                      str r2, [r3, #4]
0047d670  0c d0 8d e2                                      add sp, sp, #0xc
0047d674  30 40 bd e8                                      pop {r4, r5, lr}
0047d678  20 2e 0a ea                                      b #0x708f00
0047d67c  64 20 9f e5                                      ldr r2, [pc, #0x64]
0047d680  02 20 93 e7                                      ldr r2, [r3, r2]
0047d684  00 20 92 e5                                      ldr r2, [r2]
0047d688  02 00 52 e3                                      cmp r2, #2
0047d68c  00 30 a0 03                                      moveq r3, #0
0047d690  00 30 83 05                                      streq r3, [r3]
0047d694  01 00 00 0a                                      beq #0x47d6a0
0047d698  01 00 52 e3                                      cmp r2, #1
0047d69c  03 00 00 0a                                      beq #0x47d6b0
0047d6a0  04 00 55 e1                                      cmp r5, r4
0047d6a4  e5 ff ff 1a                                      bne #0x47d640
0047d6a8  0c d0 8d e2                                      add sp, sp, #0xc
0047d6ac  30 80 bd e8                                      pop {r4, r5, pc}
0047d6b0  34 00 9f e5                                      ldr r0, [pc, #0x34]
0047d6b4  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d6b8  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d6bc  00 00 93 e7                                      ldr r0, [r3, r0]
0047d6c0  30 30 9f e5                                      ldr r3, [pc, #0x30]
0047d6c4  4f c1 00 e3                                      movw ip, #0x14f
0047d6c8  01 10 8f e0                                      add r1, pc, r1
0047d6cc  02 20 8f e0                                      add r2, pc, r2
0047d6d0  03 30 8f e0                                      add r3, pc, r3
0047d6d4  a8 00 80 e2                                      add r0, r0, #0xa8
0047d6d8  00 c0 8d e5                                      str ip, [sp]
0047d6dc  48 42 fa eb                                      bl #0x30e004
0047d6e0  ee ff ff ea                                      b #0x47d6a0
; mapping-symbol data/literal pool
0047d6e4  7c 74 51 00 c0 39 00 00 c0 19 00 00 10 0d 44 00  .byte 0x7c, 0x74, 0x51, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x10, 0x0d, 0x44, 0x00
0047d6f4  dc 07 45 00 08 08 45 00                          .byte 0xdc, 0x07, 0x45, 0x00, 0x08, 0x08, 0x45, 0x00
