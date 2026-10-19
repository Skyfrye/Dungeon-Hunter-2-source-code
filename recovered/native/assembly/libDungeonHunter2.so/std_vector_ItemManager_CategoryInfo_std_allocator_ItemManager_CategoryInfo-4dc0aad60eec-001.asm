; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003eb3b8, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >
; alias: _ZNSt6vectorIN11ItemManager12CategoryInfoESaIS1_EE8_M_clearEv
; demangled: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >::_M_clear()
; decoder-mode: arm
003eb3b8  70 40 2d e9                                      push {r4, r5, r6, lr}
003eb3bc  04 40 90 e5                                      ldr r4, [r0, #4]
003eb3c0  00 50 90 e5                                      ldr r5, [r0]
003eb3c4  00 60 a0 e1                                      mov r6, r0
003eb3c8  05 00 54 e1                                      cmp r4, r5
003eb3cc  05 00 00 0a                                      beq #0x3eb3e8
003eb3d0  10 40 44 e2                                      sub r4, r4, #0x10
003eb3d4  04 00 a0 e1                                      mov r0, r4
003eb3d8  e6 ff ff eb                                      bl #0x3eb378
003eb3dc  04 00 55 e1                                      cmp r5, r4
003eb3e0  fa ff ff 1a                                      bne #0x3eb3d0
003eb3e4  00 40 96 e5                                      ldr r4, [r6]
003eb3e8  00 00 54 e3                                      cmp r4, #0
003eb3ec  08 10 96 e5                                      ldr r1, [r6, #8]
003eb3f0  09 00 00 0a                                      beq #0x3eb41c
003eb3f4  01 10 64 e0                                      rsb r1, r4, r1
003eb3f8  0f 10 c1 e3                                      bic r1, r1, #0xf
003eb3fc  80 00 51 e3                                      cmp r1, #0x80
003eb400  02 00 00 8a                                      bhi #0x3eb410
003eb404  04 00 a0 e1                                      mov r0, r4
003eb408  70 40 bd e8                                      pop {r4, r5, r6, lr}
003eb40c  bb 76 0c ea                                      b #0x708f00
003eb410  04 00 a0 e1                                      mov r0, r4
003eb414  70 40 bd e8                                      pop {r4, r5, r6, lr}
003eb418  08 94 fc ea                                      b #0x310440
003eb41c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003eb420, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >
; alias: _ZNSt6vectorIN11ItemManager12CategoryInfoESaIS1_EE7reserveEj
; demangled: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >::reserve(unsigned int)
; decoder-mode: arm
003eb420  70 40 2d e9                                      push {r4, r5, r6, lr}
003eb424  00 40 a0 e1                                      mov r4, r0
003eb428  00 20 90 e5                                      ldr r2, [r0]
003eb42c  08 00 90 e5                                      ldr r0, [r0, #8]
003eb430  08 d0 4d e2                                      sub sp, sp, #8
003eb434  04 10 8d e5                                      str r1, [sp, #4]
003eb438  00 00 62 e0                                      rsb r0, r2, r0
003eb43c  40 02 51 e1                                      cmp r1, r0, asr #4
003eb440  12 00 00 9a                                      bls #0x3eb490
003eb444  1f 02 71 e3                                      cmn r1, #0xf0000001
003eb448  12 00 00 8a                                      bhi #0x3eb498
003eb44c  04 30 94 e5                                      ldr r3, [r4, #4]
003eb450  00 00 52 e3                                      cmp r2, #0
003eb454  03 50 62 e0                                      rsb r5, r2, r3
003eb458  45 52 a0 e1                                      asr r5, r5, #4
003eb45c  12 00 00 0a                                      beq #0x3eb4ac
003eb460  04 00 a0 e1                                      mov r0, r4
003eb464  04 10 8d e2                                      add r1, sp, #4
003eb468  3c ff ff eb                                      bl #0x3eb160
003eb46c  00 60 a0 e1                                      mov r6, r0
003eb470  04 00 a0 e1                                      mov r0, r4
003eb474  cf ff ff eb                                      bl #0x3eb3b8
003eb478  04 30 9d e5                                      ldr r3, [sp, #4]
003eb47c  05 52 86 e0                                      add r5, r6, r5, lsl #4
003eb480  04 50 84 e5                                      str r5, [r4, #4]
003eb484  03 32 86 e0                                      add r3, r6, r3, lsl #4
003eb488  08 30 84 e5                                      str r3, [r4, #8]
003eb48c  00 60 84 e5                                      str r6, [r4]
003eb490  08 d0 8d e2                                      add sp, sp, #8
003eb494  70 80 bd e8                                      pop {r4, r5, r6, pc}
003eb498  24 00 9f e5                                      ldr r0, [pc, #0x24]
003eb49c  00 00 8f e0                                      add r0, pc, r0
003eb4a0  66 76 0c eb                                      bl #0x708e40
003eb4a4  00 20 94 e5                                      ldr r2, [r4]
003eb4a8  e7 ff ff ea                                      b #0x3eb44c
003eb4ac  08 20 8d e2                                      add r2, sp, #8
003eb4b0  04 10 32 e5                                      ldr r1, [r2, #-4]!
003eb4b4  08 00 84 e2                                      add r0, r4, #8
003eb4b8  66 fe ff eb                                      bl #0x3eae58
003eb4bc  00 60 a0 e1                                      mov r6, r0
003eb4c0  ec ff ff ea                                      b #0x3eb478
; mapping-symbol data/literal pool
003eb4c4  cc 2f 4d 00                                      .byte 0xcc, 0x2f, 0x4d, 0x00

; FUNCTION 0x003eb4c8, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >
; alias: _ZNSt6vectorIN11ItemManager12CategoryInfoESaIS1_EE19_M_clear_after_moveEv
; demangled: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >::_M_clear_after_move()
; decoder-mode: arm
003eb4c8  70 40 2d e9                                      push {r4, r5, r6, lr}
003eb4cc  04 40 90 e5                                      ldr r4, [r0, #4]
003eb4d0  00 50 90 e5                                      ldr r5, [r0]
003eb4d4  00 60 a0 e1                                      mov r6, r0
003eb4d8  05 00 54 e1                                      cmp r4, r5
003eb4dc  05 00 00 0a                                      beq #0x3eb4f8
003eb4e0  10 40 44 e2                                      sub r4, r4, #0x10
003eb4e4  04 00 a0 e1                                      mov r0, r4
003eb4e8  a2 ff ff eb                                      bl #0x3eb378
003eb4ec  04 00 55 e1                                      cmp r5, r4
003eb4f0  fa ff ff 1a                                      bne #0x3eb4e0
003eb4f4  00 40 96 e5                                      ldr r4, [r6]
003eb4f8  00 00 54 e3                                      cmp r4, #0
003eb4fc  08 10 96 e5                                      ldr r1, [r6, #8]
003eb500  09 00 00 0a                                      beq #0x3eb52c
003eb504  01 10 64 e0                                      rsb r1, r4, r1
003eb508  0f 10 c1 e3                                      bic r1, r1, #0xf
003eb50c  80 00 51 e3                                      cmp r1, #0x80
003eb510  02 00 00 8a                                      bhi #0x3eb520
003eb514  04 00 a0 e1                                      mov r0, r4
003eb518  70 40 bd e8                                      pop {r4, r5, r6, lr}
003eb51c  77 76 0c ea                                      b #0x708f00
003eb520  04 00 a0 e1                                      mov r0, r4
003eb524  70 40 bd e8                                      pop {r4, r5, r6, lr}
003eb528  c4 93 fc ea                                      b #0x310440
003eb52c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003eb530, declared_size=260, range_size=260, mode=arm
; class-group: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >
; alias: _ZNSt6vectorIN11ItemManager12CategoryInfoESaIS1_EE9push_backERKS1_
; demangled: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >::push_back(ItemManager::CategoryInfo const&)
; decoder-mode: arm
003eb530  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003eb534  04 70 90 e5                                      ldr r7, [r0, #4]
003eb538  08 50 90 e5                                      ldr r5, [r0, #8]
003eb53c  08 d0 4d e2                                      sub sp, sp, #8
003eb540  00 40 a0 e1                                      mov r4, r0
003eb544  05 00 57 e1                                      cmp r7, r5
003eb548  01 60 a0 e1                                      mov r6, r1
003eb54c  08 00 00 0a                                      beq #0x3eb574
003eb550  07 00 a0 e1                                      mov r0, r7
003eb554  d9 fe ff eb                                      bl #0x3eb0c0
003eb558  0c 30 96 e5                                      ldr r3, [r6, #0xc]
003eb55c  0c 30 87 e5                                      str r3, [r7, #0xc]
003eb560  04 30 94 e5                                      ldr r3, [r4, #4]
003eb564  10 30 83 e2                                      add r3, r3, #0x10
003eb568  04 30 84 e5                                      str r3, [r4, #4]
003eb56c  08 d0 8d e2                                      add sp, sp, #8
003eb570  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003eb574  00 30 90 e5                                      ldr r3, [r0]
003eb578  05 30 63 e0                                      rsb r3, r3, r5
003eb57c  43 32 a0 e1                                      asr r3, r3, #4
003eb580  01 00 53 e3                                      cmp r3, #1
003eb584  03 10 83 20                                      addhs r1, r3, r3
003eb588  01 10 83 32                                      addlo r1, r3, #1
003eb58c  1f 02 71 e3                                      cmn r1, #0xf0000001
003eb590  24 00 00 9a                                      bls #0x3eb628
003eb594  0f 12 e0 e3                                      mvn r1, #0xf0000000
003eb598  08 20 8d e2                                      add r2, sp, #8
003eb59c  04 10 22 e5                                      str r1, [r2, #-4]!
003eb5a0  08 00 84 e2                                      add r0, r4, #8
003eb5a4  2b fe ff eb                                      bl #0x3eae58
003eb5a8  00 70 94 e5                                      ldr r7, [r4]
003eb5ac  00 90 a0 e1                                      mov sb, r0
003eb5b0  05 50 67 e0                                      rsb r5, r7, r5
003eb5b4  45 52 a0 e1                                      asr r5, r5, #4
003eb5b8  00 00 55 e3                                      cmp r5, #0
003eb5bc  00 50 a0 d1                                      movle r5, r0
003eb5c0  0b 00 00 da                                      ble #0x3eb5f4
003eb5c4  05 a0 a0 e1                                      mov sl, r5
003eb5c8  00 80 a0 e1                                      mov r8, r0
003eb5cc  08 00 a0 e1                                      mov r0, r8
003eb5d0  07 10 a0 e1                                      mov r1, r7
003eb5d4  b9 fe ff eb                                      bl #0x3eb0c0
003eb5d8  0c 30 97 e5                                      ldr r3, [r7, #0xc]
003eb5dc  01 a0 5a e2                                      subs sl, sl, #1
003eb5e0  10 70 87 e2                                      add r7, r7, #0x10
003eb5e4  0c 30 88 e5                                      str r3, [r8, #0xc]
003eb5e8  10 80 88 e2                                      add r8, r8, #0x10
003eb5ec  f6 ff ff 1a                                      bne #0x3eb5cc
003eb5f0  05 52 89 e0                                      add r5, sb, r5, lsl #4
003eb5f4  06 10 a0 e1                                      mov r1, r6
003eb5f8  05 00 a0 e1                                      mov r0, r5
003eb5fc  af fe ff eb                                      bl #0x3eb0c0
003eb600  0c 30 96 e5                                      ldr r3, [r6, #0xc]
003eb604  04 00 a0 e1                                      mov r0, r4
003eb608  0c 30 85 e5                                      str r3, [r5, #0xc]
003eb60c  ad ff ff eb                                      bl #0x3eb4c8
003eb610  04 30 9d e5                                      ldr r3, [sp, #4]
003eb614  10 50 85 e2                                      add r5, r5, #0x10
003eb618  00 90 84 e5                                      str sb, [r4]
003eb61c  03 92 89 e0                                      add sb, sb, r3, lsl #4
003eb620  20 02 84 e9                                      stmib r4, {r5, sb}
003eb624  d0 ff ff ea                                      b #0x3eb56c
003eb628  01 00 53 e1                                      cmp r3, r1
003eb62c  d9 ff ff 9a                                      bls #0x3eb598
003eb630  d7 ff ff ea                                      b #0x3eb594

; FUNCTION 0x003eb634, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >
; alias: _ZNSt6vectorIN11ItemManager12CategoryInfoESaIS1_EE8_M_eraseEPS1_S4_RKSt12__false_type
; demangled: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >::_M_erase(ItemManager::CategoryInfo*, ItemManager::CategoryInfo*, std::__false_type const&)
; decoder-mode: arm
003eb634  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003eb638  04 40 90 e5                                      ldr r4, [r0, #4]
003eb63c  00 50 a0 e1                                      mov r5, r0
003eb640  02 60 a0 e1                                      mov r6, r2
003eb644  04 a0 62 e0                                      rsb sl, r2, r4
003eb648  4a a2 a0 e1                                      asr sl, sl, #4
003eb64c  00 00 5a e3                                      cmp sl, #0
003eb650  01 80 a0 e1                                      mov r8, r1
003eb654  01 a0 a0 d1                                      movle sl, r1
003eb658  0c 00 00 da                                      ble #0x3eb690
003eb65c  0a 70 a0 e1                                      mov r7, sl
003eb660  01 40 a0 e1                                      mov r4, r1
003eb664  04 00 a0 e1                                      mov r0, r4
003eb668  06 10 a0 e1                                      mov r1, r6
003eb66c  fa fe ff eb                                      bl #0x3eb25c
003eb670  0c 30 96 e5                                      ldr r3, [r6, #0xc]
003eb674  01 70 57 e2                                      subs r7, r7, #1
003eb678  10 60 86 e2                                      add r6, r6, #0x10
003eb67c  0c 30 84 e5                                      str r3, [r4, #0xc]
003eb680  10 40 84 e2                                      add r4, r4, #0x10
003eb684  f6 ff ff 1a                                      bne #0x3eb664
003eb688  04 40 95 e5                                      ldr r4, [r5, #4]
003eb68c  0a a2 88 e0                                      add sl, r8, sl, lsl #4
003eb690  0a 00 54 e1                                      cmp r4, sl
003eb694  05 00 00 0a                                      beq #0x3eb6b0
003eb698  0a 60 a0 e1                                      mov r6, sl
003eb69c  06 00 a0 e1                                      mov r0, r6
003eb6a0  10 60 86 e2                                      add r6, r6, #0x10
003eb6a4  33 ff ff eb                                      bl #0x3eb378
003eb6a8  06 00 54 e1                                      cmp r4, r6
003eb6ac  fa ff ff 1a                                      bne #0x3eb69c
003eb6b0  04 a0 85 e5                                      str sl, [r5, #4]
003eb6b4  08 00 a0 e1                                      mov r0, r8
003eb6b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x003ebaf4, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >
; alias: _ZNSt6vectorIN11ItemManager12CategoryInfoESaIS1_EED1Ev
; demangled: std::vector<ItemManager::CategoryInfo, std::allocator<ItemManager::CategoryInfo> >::~vector()
; decoder-mode: arm
003ebaf4  70 40 2d e9                                      push {r4, r5, r6, lr}
003ebaf8  04 50 90 e5                                      ldr r5, [r0, #4]
003ebafc  00 60 90 e5                                      ldr r6, [r0]
003ebb00  00 40 a0 e1                                      mov r4, r0
003ebb04  06 00 55 e1                                      cmp r5, r6
003ebb08  04 00 00 0a                                      beq #0x3ebb20
003ebb0c  10 50 45 e2                                      sub r5, r5, #0x10
003ebb10  05 00 a0 e1                                      mov r0, r5
003ebb14  17 fe ff eb                                      bl #0x3eb378
003ebb18  05 00 56 e1                                      cmp r6, r5
003ebb1c  fa ff ff 1a                                      bne #0x3ebb0c
003ebb20  00 00 94 e5                                      ldr r0, [r4]
003ebb24  00 00 50 e3                                      cmp r0, #0
003ebb28  05 00 00 0a                                      beq #0x3ebb44
003ebb2c  08 10 94 e5                                      ldr r1, [r4, #8]
003ebb30  01 10 60 e0                                      rsb r1, r0, r1
003ebb34  0f 10 c1 e3                                      bic r1, r1, #0xf
003ebb38  80 00 51 e3                                      cmp r1, #0x80
003ebb3c  02 00 00 8a                                      bhi #0x3ebb4c
003ebb40  ee 74 0c eb                                      bl #0x708f00
003ebb44  04 00 a0 e1                                      mov r0, r4
003ebb48  70 80 bd e8                                      pop {r4, r5, r6, pc}
003ebb4c  3b 92 fc eb                                      bl #0x310440
003ebb50  04 00 a0 e1                                      mov r0, r4
003ebb54  70 80 bd e8                                      pop {r4, r5, r6, pc}
