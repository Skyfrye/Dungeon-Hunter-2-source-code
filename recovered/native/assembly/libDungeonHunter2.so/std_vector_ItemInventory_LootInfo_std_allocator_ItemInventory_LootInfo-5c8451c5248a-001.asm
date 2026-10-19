; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040247c, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<ItemInventory::LootInfo, std::allocator<ItemInventory::LootInfo> >
; alias: _ZNSt6vectorIN13ItemInventory8LootInfoESaIS1_EED1Ev
; demangled: std::vector<ItemInventory::LootInfo, std::allocator<ItemInventory::LootInfo> >::~vector()
; decoder-mode: arm
0040247c  10 40 2d e9                                      push {r4, lr}
00402480  00 40 a0 e1                                      mov r4, r0
00402484  00 00 90 e5                                      ldr r0, [r0]
00402488  00 00 50 e3                                      cmp r0, #0
0040248c  05 00 00 0a                                      beq #0x4024a8
00402490  08 10 94 e5                                      ldr r1, [r4, #8]
00402494  01 10 60 e0                                      rsb r1, r0, r1
00402498  0f 10 c1 e3                                      bic r1, r1, #0xf
0040249c  80 00 51 e3                                      cmp r1, #0x80
004024a0  02 00 00 8a                                      bhi #0x4024b0
004024a4  95 1a 0c eb                                      bl #0x708f00
004024a8  04 00 a0 e1                                      mov r0, r4
004024ac  10 80 bd e8                                      pop {r4, pc}
004024b0  e2 37 fc eb                                      bl #0x310440
004024b4  04 00 a0 e1                                      mov r0, r4
004024b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0040256c, declared_size=256, range_size=256, mode=arm
; class-group: std::vector<ItemInventory::LootInfo, std::allocator<ItemInventory::LootInfo> >
; alias: _ZNSt6vectorIN13ItemInventory8LootInfoESaIS1_EE22_M_insert_overflow_auxEPS1_RKS1_RKSt12__false_typejb.clone.3
; demangled: std::vector<ItemInventory::LootInfo, std::allocator<ItemInventory::LootInfo> >::_M_insert_overflow_aux(ItemInventory::LootInfo*, ItemInventory::LootInfo const&, std::__false_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
0040256c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00402570  00 80 a0 e1                                      mov r8, r0
00402574  00 30 98 e5                                      ldr r3, [r8]
00402578  04 00 90 e5                                      ldr r0, [r0, #4]
0040257c  01 a0 a0 e1                                      mov sl, r1
00402580  08 d0 4d e2                                      sub sp, sp, #8
00402584  00 30 63 e0                                      rsb r3, r3, r0
00402588  43 32 a0 e1                                      asr r3, r3, #4
0040258c  01 00 53 e3                                      cmp r3, #1
00402590  03 10 83 20                                      addhs r1, r3, r3
00402594  01 10 83 32                                      addlo r1, r3, #1
00402598  1f 02 71 e3                                      cmn r1, #0xf0000001
0040259c  02 90 a0 e1                                      mov sb, r2
004025a0  2d 00 00 8a                                      bhi #0x40265c
004025a4  01 00 53 e1                                      cmp r3, r1
004025a8  2b 00 00 8a                                      bhi #0x40265c
004025ac  08 20 8d e2                                      add r2, sp, #8
004025b0  04 10 22 e5                                      str r1, [r2, #-4]!
004025b4  08 00 88 e2                                      add r0, r8, #8
004025b8  cf ff ff eb                                      bl #0x4024fc
004025bc  00 70 98 e5                                      ldr r7, [r8]
004025c0  00 60 a0 e1                                      mov r6, r0
004025c4  0a a0 67 e0                                      rsb sl, r7, sl
004025c8  4a a2 a0 e1                                      asr sl, sl, #4
004025cc  00 00 5a e3                                      cmp sl, #0
004025d0  00 a0 a0 d1                                      movle sl, r0
004025d4  09 00 00 da                                      ble #0x402600
004025d8  0a 50 a0 e1                                      mov r5, sl
004025dc  00 40 a0 e3                                      mov r4, #0
004025e0  04 c0 86 e0                                      add ip, r6, r4
004025e4  04 30 87 e0                                      add r3, r7, r4
004025e8  01 50 55 e2                                      subs r5, r5, #1
004025ec  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
004025f0  10 40 84 e2                                      add r4, r4, #0x10
004025f4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004025f8  f8 ff ff 1a                                      bne #0x4025e0
004025fc  0a a2 86 e0                                      add sl, r6, sl, lsl #4
00402600  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
00402604  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
00402608  09 00 98 e8                                      ldm r8, {r0, r3}
0040260c  10 a0 8a e2                                      add sl, sl, #0x10
00402610  08 10 98 e5                                      ldr r1, [r8, #8]
00402614  00 00 53 e1                                      cmp r3, r0
00402618  10 20 43 12                                      subne r2, r3, #0x10
0040261c  02 20 60 10                                      rsbne r2, r0, r2
00402620  22 22 e0 11                                      mvnne r2, r2, lsr #4
00402624  02 32 83 10                                      addne r3, r3, r2, lsl #4
00402628  00 00 53 e3                                      cmp r3, #0
0040262c  04 00 00 0a                                      beq #0x402644
00402630  01 10 63 e0                                      rsb r1, r3, r1
00402634  0f 10 c1 e3                                      bic r1, r1, #0xf
00402638  80 00 51 e3                                      cmp r1, #0x80
0040263c  08 00 00 8a                                      bhi #0x402664
00402640  2e 1a 0c eb                                      bl #0x708f00
00402644  04 30 9d e5                                      ldr r3, [sp, #4]
00402648  40 04 88 e8                                      stm r8, {r6, sl}
0040264c  03 62 86 e0                                      add r6, r6, r3, lsl #4
00402650  08 60 88 e5                                      str r6, [r8, #8]
00402654  08 d0 8d e2                                      add sp, sp, #8
00402658  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0040265c  0f 12 e0 e3                                      mvn r1, #0xf0000000
00402660  d1 ff ff ea                                      b #0x4025ac
00402664  75 37 fc eb                                      bl #0x310440
00402668  f5 ff ff ea                                      b #0x402644
