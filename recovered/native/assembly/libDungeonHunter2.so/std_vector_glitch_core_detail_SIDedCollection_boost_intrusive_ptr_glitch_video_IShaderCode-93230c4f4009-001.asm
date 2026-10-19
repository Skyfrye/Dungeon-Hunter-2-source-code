; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e09dc, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video11IShaderCodeEEEtLb0ENS2_15sidedcollection16SEmptyPropertiesENS9_12SValueTraitsEE6SEntryENS1_10SAllocatorISD_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
006e09dc  70 40 2d e9                                      push {r4, r5, r6, lr}
006e09e0  14 00 90 e8                                      ldm r0, {r2, r4}
006e09e4  ff 3f 0f e3                                      movw r3, #0xffff
006e09e8  ff 3f 41 e3                                      movt r3, #0x1fff
006e09ec  04 40 62 e0                                      rsb r4, r2, r4
006e09f0  c4 41 a0 e1                                      asr r4, r4, #3
006e09f4  03 30 64 e0                                      rsb r3, r4, r3
006e09f8  01 00 53 e1                                      cmp r3, r1
006e09fc  01 50 a0 e1                                      mov r5, r1
006e0a00  08 00 00 3a                                      blo #0x6e0a28
006e0a04  05 00 54 e1                                      cmp r4, r5
006e0a08  04 00 84 20                                      addhs r0, r4, r4
006e0a0c  05 00 84 30                                      addlo r0, r4, r5
006e0a10  1e 02 70 e3                                      cmn r0, #0xe0000001
006e0a14  01 00 00 8a                                      bhi #0x6e0a20
006e0a18  04 00 50 e1                                      cmp r0, r4
006e0a1c  00 00 00 2a                                      bhs #0x6e0a24
006e0a20  0e 02 e0 e3                                      mvn r0, #0xe0000000
006e0a24  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e0a28  08 00 9f e5                                      ldr r0, [pc, #8]
006e0a2c  00 00 8f e0                                      add r0, pc, r0
006e0a30  02 a1 00 eb                                      bl #0x708e40
006e0a34  f2 ff ff ea                                      b #0x6e0a04
; mapping-symbol data/literal pool
006e0a38  3c da 1d 00                                      .byte 0x3c, 0xda, 0x1d, 0x00

; FUNCTION 0x006e1310, declared_size=112, range_size=112, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video11IShaderCodeEEEtLb0ENS2_15sidedcollection16SEmptyPropertiesENS9_12SValueTraitsEE6SEntryENS1_10SAllocatorISD_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPSD_SJ_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, std::__false_type const&)
; decoder-mode: arm
006e1310  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e1314  04 30 90 e5                                      ldr r3, [r0, #4]
006e1318  10 d0 4d e2                                      sub sp, sp, #0x10
006e131c  01 50 a0 e1                                      mov r5, r1
006e1320  00 40 a0 e1                                      mov r4, r0
006e1324  03 10 a0 e1                                      mov r1, r3
006e1328  02 00 a0 e1                                      mov r0, r2
006e132c  00 c0 a0 e3                                      mov ip, #0
006e1330  05 20 a0 e1                                      mov r2, r5
006e1334  0c 30 8d e2                                      add r3, sp, #0xc
006e1338  00 c0 8d e5                                      str ip, [sp]
006e133c  d6 ff ff eb                                      bl #0x6e129c
006e1340  04 70 94 e5                                      ldr r7, [r4, #4]
006e1344  00 80 a0 e1                                      mov r8, r0
006e1348  00 00 57 e1                                      cmp r7, r0
006e134c  07 00 00 0a                                      beq #0x6e1370
006e1350  00 60 a0 e1                                      mov r6, r0
006e1354  00 00 96 e5                                      ldr r0, [r6]
006e1358  08 60 86 e2                                      add r6, r6, #8
006e135c  00 00 50 e3                                      cmp r0, #0
006e1360  00 00 00 0a                                      beq #0x6e1368
006e1364  86 f0 f0 eb                                      bl #0x31d584
006e1368  06 00 57 e1                                      cmp r7, r6
006e136c  f8 ff ff 1a                                      bne #0x6e1354
006e1370  04 80 84 e5                                      str r8, [r4, #4]
006e1374  05 00 a0 e1                                      mov r0, r5
006e1378  10 d0 8d e2                                      add sp, sp, #0x10
006e137c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006e1458, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video11IShaderCodeEEEtLb0ENS2_15sidedcollection16SEmptyPropertiesENS9_12SValueTraitsEE6SEntryENS1_10SAllocatorISD_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006e1458  70 40 2d e9                                      push {r4, r5, r6, lr}
006e145c  04 40 90 e5                                      ldr r4, [r0, #4]
006e1460  00 50 90 e5                                      ldr r5, [r0]
006e1464  00 60 a0 e1                                      mov r6, r0
006e1468  05 00 54 e1                                      cmp r4, r5
006e146c  06 00 00 0a                                      beq #0x6e148c
006e1470  08 00 14 e5                                      ldr r0, [r4, #-8]
006e1474  08 40 44 e2                                      sub r4, r4, #8
006e1478  00 00 50 e3                                      cmp r0, #0
006e147c  00 00 00 0a                                      beq #0x6e1484
006e1480  3f f0 f0 eb                                      bl #0x31d584
006e1484  04 00 55 e1                                      cmp r5, r4
006e1488  f8 ff ff 1a                                      bne #0x6e1470
006e148c  00 00 96 e5                                      ldr r0, [r6]
006e1490  00 00 50 e3                                      cmp r0, #0
006e1494  00 00 00 0a                                      beq #0x6e149c
006e1498  ec bb f0 eb                                      bl #0x310450
006e149c  06 00 a0 e1                                      mov r0, r6
006e14a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e14a4, declared_size=440, range_size=440, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video11IShaderCodeEEEtLb0ENS2_15sidedcollection16SEmptyPropertiesENS9_12SValueTraitsEE6SEntryENS1_10SAllocatorISD_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPSD_RKSD_RKSt12__false_typejb
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
006e14a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e14a8  0c d0 4d e2                                      sub sp, sp, #0xc
006e14ac  30 50 9d e5                                      ldr r5, [sp, #0x30]
006e14b0  34 30 dd e5                                      ldrb r3, [sp, #0x34]
006e14b4  01 40 a0 e1                                      mov r4, r1
006e14b8  05 10 a0 e1                                      mov r1, r5
006e14bc  02 60 a0 e1                                      mov r6, r2
006e14c0  00 70 a0 e1                                      mov r7, r0
006e14c4  04 30 8d e5                                      str r3, [sp, #4]
006e14c8  43 fd ff eb                                      bl #0x6e09dc
006e14cc  80 81 a0 e1                                      lsl r8, r0, #3
006e14d0  08 00 a0 e1                                      mov r0, r8
006e14d4  00 10 a0 e3                                      mov r1, #0
006e14d8  22 bc f0 eb                                      bl #0x310568
006e14dc  00 a0 a0 e1                                      mov sl, r0
006e14e0  00 00 97 e5                                      ldr r0, [r7]
006e14e4  04 b0 60 e0                                      rsb fp, r0, r4
006e14e8  cb b1 a0 e1                                      asr fp, fp, #3
006e14ec  00 00 5b e3                                      cmp fp, #0
006e14f0  0a b0 a0 d1                                      movle fp, sl
006e14f4  0f 00 00 da                                      ble #0x6e1538
006e14f8  0b 10 a0 e1                                      mov r1, fp
006e14fc  00 30 a0 e3                                      mov r3, #0
006e1500  03 20 90 e7                                      ldr r2, [r0, r3]
006e1504  03 e0 80 e0                                      add lr, r0, r3
006e1508  03 c0 8a e0                                      add ip, sl, r3
006e150c  00 00 52 e3                                      cmp r2, #0
006e1510  03 20 8a e7                                      str r2, [sl, r3]
006e1514  04 90 92 15                                      ldrne sb, [r2, #4]
006e1518  08 30 83 e2                                      add r3, r3, #8
006e151c  01 90 89 12                                      addne sb, sb, #1
006e1520  04 90 82 15                                      strne sb, [r2, #4]
006e1524  04 20 9e e5                                      ldr r2, [lr, #4]
006e1528  01 10 51 e2                                      subs r1, r1, #1
006e152c  04 20 8c e5                                      str r2, [ip, #4]
006e1530  f2 ff ff 1a                                      bne #0x6e1500
006e1534  8b b1 8a e0                                      add fp, sl, fp, lsl #3
006e1538  01 00 55 e3                                      cmp r5, #1
006e153c  3c 00 00 0a                                      beq #0x6e1634
006e1540  55 10 bc e7                                      sbfx r1, r5, #0, #0x1d
006e1544  00 00 51 e3                                      cmp r1, #0
006e1548  85 51 8b e0                                      add r5, fp, r5, lsl #3
006e154c  0c 00 00 da                                      ble #0x6e1584
006e1550  00 20 a0 e3                                      mov r2, #0
006e1554  00 30 96 e5                                      ldr r3, [r6]
006e1558  02 00 8b e0                                      add r0, fp, r2
006e155c  00 00 53 e3                                      cmp r3, #0
006e1560  02 30 8b e7                                      str r3, [fp, r2]
006e1564  04 c0 93 15                                      ldrne ip, [r3, #4]
006e1568  08 20 82 e2                                      add r2, r2, #8
006e156c  01 c0 8c 12                                      addne ip, ip, #1
006e1570  04 c0 83 15                                      strne ip, [r3, #4]
006e1574  04 30 96 e5                                      ldr r3, [r6, #4]
006e1578  01 10 51 e2                                      subs r1, r1, #1
006e157c  04 30 80 e5                                      str r3, [r0, #4]
006e1580  f3 ff ff 1a                                      bne #0x6e1554
006e1584  04 30 9d e5                                      ldr r3, [sp, #4]
006e1588  00 00 53 e3                                      cmp r3, #0
006e158c  04 00 97 15                                      ldrne r0, [r7, #4]
006e1590  15 00 00 1a                                      bne #0x6e15ec
006e1594  04 00 97 e5                                      ldr r0, [r7, #4]
006e1598  00 60 64 e0                                      rsb r6, r4, r0
006e159c  c6 61 a0 e1                                      asr r6, r6, #3
006e15a0  00 00 56 e3                                      cmp r6, #0
006e15a4  10 00 00 da                                      ble #0x6e15ec
006e15a8  04 30 9d e5                                      ldr r3, [sp, #4]
006e15ac  06 10 a0 e1                                      mov r1, r6
006e15b0  03 20 94 e7                                      ldr r2, [r4, r3]
006e15b4  03 c0 84 e0                                      add ip, r4, r3
006e15b8  03 00 85 e0                                      add r0, r5, r3
006e15bc  00 00 52 e3                                      cmp r2, #0
006e15c0  03 20 85 e7                                      str r2, [r5, r3]
006e15c4  04 e0 92 15                                      ldrne lr, [r2, #4]
006e15c8  08 30 83 e2                                      add r3, r3, #8
006e15cc  01 e0 8e 12                                      addne lr, lr, #1
006e15d0  04 e0 82 15                                      strne lr, [r2, #4]
006e15d4  04 20 9c e5                                      ldr r2, [ip, #4]
006e15d8  01 10 51 e2                                      subs r1, r1, #1
006e15dc  04 20 80 e5                                      str r2, [r0, #4]
006e15e0  f2 ff ff 1a                                      bne #0x6e15b0
006e15e4  04 00 97 e5                                      ldr r0, [r7, #4]
006e15e8  86 51 85 e0                                      add r5, r5, r6, lsl #3
006e15ec  00 60 97 e5                                      ldr r6, [r7]
006e15f0  00 00 56 e1                                      cmp r6, r0
006e15f4  08 00 00 0a                                      beq #0x6e161c
006e15f8  00 40 a0 e1                                      mov r4, r0
006e15fc  08 00 14 e5                                      ldr r0, [r4, #-8]
006e1600  08 40 44 e2                                      sub r4, r4, #8
006e1604  00 00 50 e3                                      cmp r0, #0
006e1608  00 00 00 0a                                      beq #0x6e1610
006e160c  dc ef f0 eb                                      bl #0x31d584
006e1610  04 00 56 e1                                      cmp r6, r4
006e1614  f8 ff ff 1a                                      bne #0x6e15fc
006e1618  00 00 97 e5                                      ldr r0, [r7]
006e161c  08 80 8a e0                                      add r8, sl, r8
006e1620  8a bb f0 eb                                      bl #0x310450
006e1624  20 01 87 e9                                      stmib r7, {r5, r8}
006e1628  00 a0 87 e5                                      str sl, [r7]
006e162c  0c d0 8d e2                                      add sp, sp, #0xc
006e1630  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e1634  00 30 96 e5                                      ldr r3, [r6]
006e1638  08 50 8b e2                                      add r5, fp, #8
006e163c  00 00 53 e3                                      cmp r3, #0
006e1640  00 30 8b e5                                      str r3, [fp]
006e1644  04 20 93 15                                      ldrne r2, [r3, #4]
006e1648  01 20 82 12                                      addne r2, r2, #1
006e164c  04 20 83 15                                      strne r2, [r3, #4]
006e1650  04 30 96 e5                                      ldr r3, [r6, #4]
006e1654  04 30 8b e5                                      str r3, [fp, #4]
006e1658  c9 ff ff ea                                      b #0x6e1584

; FUNCTION 0x006e183c, declared_size=468, range_size=468, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video11IShaderCodeEEEtLb0ENS2_15sidedcollection16SEmptyPropertiesENS9_12SValueTraitsEE6SEntryENS1_10SAllocatorISD_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPSD_jRKSD_RKSt12__false_type
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::__false_type const&)
; decoder-mode: arm
006e183c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e1840  00 c0 90 e5                                      ldr ip, [r0]
006e1844  03 40 a0 e1                                      mov r4, r3
006e1848  24 d0 4d e2                                      sub sp, sp, #0x24
006e184c  0c 00 53 e1                                      cmp r3, ip
006e1850  01 50 a0 e1                                      mov r5, r1
006e1854  04 30 90 35                                      ldrlo r3, [r0, #4]
006e1858  14 00 00 3a                                      blo #0x6e18b0
006e185c  04 30 90 e5                                      ldr r3, [r0, #4]
006e1860  03 00 54 e1                                      cmp r4, r3
006e1864  11 00 00 2a                                      bhs #0x6e18b0
006e1868  00 30 94 e5                                      ldr r3, [r4]
006e186c  00 00 53 e3                                      cmp r3, #0
006e1870  08 30 8d e5                                      str r3, [sp, #8]
006e1874  04 10 93 15                                      ldrne r1, [r3, #4]
006e1878  01 10 81 12                                      addne r1, r1, #1
006e187c  04 10 83 15                                      strne r1, [r3, #4]
006e1880  04 c0 94 e5                                      ldr ip, [r4, #4]
006e1884  05 10 a0 e1                                      mov r1, r5
006e1888  08 30 8d e2                                      add r3, sp, #8
006e188c  0c c0 8d e5                                      str ip, [sp, #0xc]
006e1890  1c c0 8d e2                                      add ip, sp, #0x1c
006e1894  00 c0 8d e5                                      str ip, [sp]
006e1898  e7 ff ff eb                                      bl #0x6e183c
006e189c  08 00 9d e5                                      ldr r0, [sp, #8]
006e18a0  00 00 50 e3                                      cmp r0, #0
006e18a4  57 00 00 0a                                      beq #0x6e1a08
006e18a8  35 ef f0 eb                                      bl #0x31d584
006e18ac  55 00 00 ea                                      b #0x6e1a08
006e18b0  03 e0 65 e0                                      rsb lr, r5, r3
006e18b4  ce e1 a0 e1                                      asr lr, lr, #3
006e18b8  0e 00 52 e1                                      cmp r2, lr
006e18bc  0e 80 a0 e1                                      mov r8, lr
006e18c0  23 00 00 2a                                      bhs #0x6e1954
006e18c4  82 61 a0 e1                                      lsl r6, r2, #3
006e18c8  03 10 66 e0                                      rsb r1, r6, r3
006e18cc  c6 e1 a0 e1                                      asr lr, r6, #3
006e18d0  00 00 5e e3                                      cmp lr, #0
006e18d4  03 20 a0 d1                                      movle r2, r3
006e18d8  0e 00 00 da                                      ble #0x6e1918
006e18dc  00 20 a0 e3                                      mov r2, #0
006e18e0  02 c0 91 e7                                      ldr ip, [r1, r2]
006e18e4  02 80 81 e0                                      add r8, r1, r2
006e18e8  02 70 83 e0                                      add r7, r3, r2
006e18ec  00 00 5c e3                                      cmp ip, #0
006e18f0  02 c0 83 e7                                      str ip, [r3, r2]
006e18f4  04 a0 9c 15                                      ldrne sl, [ip, #4]
006e18f8  08 20 82 e2                                      add r2, r2, #8
006e18fc  01 a0 8a 12                                      addne sl, sl, #1
006e1900  04 a0 8c 15                                      strne sl, [ip, #4]
006e1904  04 c0 98 e5                                      ldr ip, [r8, #4]
006e1908  01 e0 5e e2                                      subs lr, lr, #1
006e190c  04 c0 87 e5                                      str ip, [r7, #4]
006e1910  f2 ff ff 1a                                      bne #0x6e18e0
006e1914  04 20 90 e5                                      ldr r2, [r0, #4]
006e1918  06 20 82 e0                                      add r2, r2, r6
006e191c  04 20 80 e5                                      str r2, [r0, #4]
006e1920  00 70 a0 e3                                      mov r7, #0
006e1924  03 20 a0 e1                                      mov r2, r3
006e1928  05 00 a0 e1                                      mov r0, r5
006e192c  18 30 8d e2                                      add r3, sp, #0x18
006e1930  00 70 8d e5                                      str r7, [sp]
006e1934  91 fe ff eb                                      bl #0x6e1380
006e1938  05 00 a0 e1                                      mov r0, r5
006e193c  06 10 85 e0                                      add r1, r5, r6
006e1940  04 20 a0 e1                                      mov r2, r4
006e1944  14 30 8d e2                                      add r3, sp, #0x14
006e1948  00 70 8d e5                                      str r7, [sp]
006e194c  a8 fe ff eb                                      bl #0x6e13f4
006e1950  2c 00 00 ea                                      b #0x6e1a08
006e1954  02 20 6e e0                                      rsb r2, lr, r2
006e1958  52 70 bc e7                                      sbfx r7, r2, #0, #0x1d
006e195c  00 00 57 e3                                      cmp r7, #0
006e1960  82 21 83 e0                                      add r2, r3, r2, lsl #3
006e1964  0c 00 00 da                                      ble #0x6e199c
006e1968  00 c0 a0 e3                                      mov ip, #0
006e196c  00 10 94 e5                                      ldr r1, [r4]
006e1970  0c 60 83 e0                                      add r6, r3, ip
006e1974  00 00 51 e3                                      cmp r1, #0
006e1978  0c 10 83 e7                                      str r1, [r3, ip]
006e197c  04 a0 91 15                                      ldrne sl, [r1, #4]
006e1980  08 c0 8c e2                                      add ip, ip, #8
006e1984  01 a0 8a 12                                      addne sl, sl, #1
006e1988  04 a0 81 15                                      strne sl, [r1, #4]
006e198c  04 10 94 e5                                      ldr r1, [r4, #4]
006e1990  01 70 57 e2                                      subs r7, r7, #1
006e1994  04 10 86 e5                                      str r1, [r6, #4]
006e1998  f3 ff ff 1a                                      bne #0x6e196c
006e199c  00 00 5e e3                                      cmp lr, #0
006e19a0  04 20 80 e5                                      str r2, [r0, #4]
006e19a4  0e 00 00 da                                      ble #0x6e19e4
006e19a8  00 10 a0 e3                                      mov r1, #0
006e19ac  01 c0 95 e7                                      ldr ip, [r5, r1]
006e19b0  01 70 85 e0                                      add r7, r5, r1
006e19b4  01 60 82 e0                                      add r6, r2, r1
006e19b8  00 00 5c e3                                      cmp ip, #0
006e19bc  01 c0 82 e7                                      str ip, [r2, r1]
006e19c0  04 a0 9c 15                                      ldrne sl, [ip, #4]
006e19c4  08 10 81 e2                                      add r1, r1, #8
006e19c8  01 a0 8a 12                                      addne sl, sl, #1
006e19cc  04 a0 8c 15                                      strne sl, [ip, #4]
006e19d0  04 c0 97 e5                                      ldr ip, [r7, #4]
006e19d4  01 e0 5e e2                                      subs lr, lr, #1
006e19d8  04 c0 86 e5                                      str ip, [r6, #4]
006e19dc  f2 ff ff 1a                                      bne #0x6e19ac
006e19e0  04 20 90 e5                                      ldr r2, [r0, #4]
006e19e4  88 21 82 e0                                      add r2, r2, r8, lsl #3
006e19e8  04 20 80 e5                                      str r2, [r0, #4]
006e19ec  03 10 a0 e1                                      mov r1, r3
006e19f0  00 c0 a0 e3                                      mov ip, #0
006e19f4  05 00 a0 e1                                      mov r0, r5
006e19f8  04 20 a0 e1                                      mov r2, r4
006e19fc  10 30 8d e2                                      add r3, sp, #0x10
006e1a00  00 c0 8d e5                                      str ip, [sp]
006e1a04  7a fe ff eb                                      bl #0x6e13f4
006e1a08  24 d0 8d e2                                      add sp, sp, #0x24
006e1a0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x006e1a10, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video11IShaderCodeEEEtLb0ENS2_15sidedcollection16SEmptyPropertiesENS9_12SValueTraitsEE6SEntryENS1_10SAllocatorISD_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPSD_jRKSD_
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&)
; decoder-mode: arm
006e1a10  30 40 2d e9                                      push {r4, r5, lr}
006e1a14  00 40 52 e2                                      subs r4, r2, #0
006e1a18  14 d0 4d e2                                      sub sp, sp, #0x14
006e1a1c  03 50 a0 e1                                      mov r5, r3
006e1a20  09 00 00 0a                                      beq #0x6e1a4c
006e1a24  04 e0 90 e5                                      ldr lr, [r0, #4]
006e1a28  08 c0 90 e5                                      ldr ip, [r0, #8]
006e1a2c  0c c0 6e e0                                      rsb ip, lr, ip
006e1a30  cc 01 54 e1                                      cmp r4, ip, asr #3
006e1a34  06 00 00 9a                                      bls #0x6e1a54
006e1a38  03 20 a0 e1                                      mov r2, r3
006e1a3c  00 c0 a0 e3                                      mov ip, #0
006e1a40  08 30 8d e2                                      add r3, sp, #8
006e1a44  10 10 8d e8                                      stm sp, {r4, ip}
006e1a48  95 fe ff eb                                      bl #0x6e14a4
006e1a4c  14 d0 8d e2                                      add sp, sp, #0x14
006e1a50  30 80 bd e8                                      pop {r4, r5, pc}
006e1a54  0c c0 8d e2                                      add ip, sp, #0xc
006e1a58  00 c0 8d e5                                      str ip, [sp]
006e1a5c  76 ff ff eb                                      bl #0x6e183c
006e1a60  f9 ff ff ea                                      b #0x6e1a4c

; FUNCTION 0x006e1a64, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS0_5video11IShaderCodeEEEtLb0ENS2_15sidedcollection16SEmptyPropertiesENS9_12SValueTraitsEE6SEntryENS1_10SAllocatorISD_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKSD_
; demangled: std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&)
; decoder-mode: arm
006e1a64  10 40 2d e9                                      push {r4, lr}
006e1a68  10 10 90 e8                                      ldm r0, {r4, ip}
006e1a6c  02 30 a0 e1                                      mov r3, r2
006e1a70  08 d0 4d e2                                      sub sp, sp, #8
006e1a74  0c 20 64 e0                                      rsb r2, r4, ip
006e1a78  c2 21 a0 e1                                      asr r2, r2, #3
006e1a7c  02 00 51 e1                                      cmp r1, r2
006e1a80  07 00 00 2a                                      bhs #0x6e1aa4
006e1a84  81 11 84 e0                                      add r1, r4, r1, lsl #3
006e1a88  0c 00 51 e1                                      cmp r1, ip
006e1a8c  02 00 00 0a                                      beq #0x6e1a9c
006e1a90  0c 20 a0 e1                                      mov r2, ip
006e1a94  04 30 8d e2                                      add r3, sp, #4
006e1a98  1c fe ff eb                                      bl #0x6e1310
006e1a9c  08 d0 8d e2                                      add sp, sp, #8
006e1aa0  10 80 bd e8                                      pop {r4, pc}
006e1aa4  01 20 62 e0                                      rsb r2, r2, r1
006e1aa8  0c 10 a0 e1                                      mov r1, ip
006e1aac  d7 ff ff eb                                      bl #0x6e1a10
006e1ab0  f9 ff ff ea                                      b #0x6e1a9c
