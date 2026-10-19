; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0059a3c0, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene5IMeshEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE8_M_clearEv
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear()
; decoder-mode: arm
0059a3c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0059a3c4  00 60 a0 e1                                      mov r6, r0
0059a3c8  00 50 96 e5                                      ldr r5, [r6]
0059a3cc  04 00 90 e5                                      ldr r0, [r0, #4]
0059a3d0  05 00 50 e1                                      cmp r0, r5
0059a3d4  08 00 00 0a                                      beq #0x59a3fc
0059a3d8  00 40 a0 e1                                      mov r4, r0
0059a3dc  04 00 14 e5                                      ldr r0, [r4, #-4]
0059a3e0  04 40 44 e2                                      sub r4, r4, #4
0059a3e4  00 00 50 e3                                      cmp r0, #0
0059a3e8  00 00 00 0a                                      beq #0x59a3f0
0059a3ec  64 0c f6 eb                                      bl #0x31d584
0059a3f0  04 00 55 e1                                      cmp r5, r4
0059a3f4  f8 ff ff 1a                                      bne #0x59a3dc
0059a3f8  00 00 96 e5                                      ldr r0, [r6]
0059a3fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
0059a400  12 d8 f5 ea                                      b #0x310450

; FUNCTION 0x0059a404, declared_size=324, range_size=324, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene5IMeshEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEEaSERKSB_
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0059a404  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059a408  00 00 51 e1                                      cmp r1, r0
0059a40c  18 d0 4d e2                                      sub sp, sp, #0x18
0059a410  01 50 a0 e1                                      mov r5, r1
0059a414  00 40 a0 e1                                      mov r4, r0
0059a418  21 00 00 0a                                      beq #0x59a4a4
0059a41c  04 30 91 e5                                      ldr r3, [r1, #4]
0059a420  00 c0 91 e5                                      ldr ip, [r1]
0059a424  00 20 90 e5                                      ldr r2, [r0]
0059a428  08 10 90 e5                                      ldr r1, [r0, #8]
0059a42c  03 60 6c e0                                      rsb r6, ip, r3
0059a430  46 61 a0 e1                                      asr r6, r6, #2
0059a434  01 10 62 e0                                      rsb r1, r2, r1
0059a438  41 01 56 e1                                      cmp r6, r1, asr #2
0059a43c  35 00 00 8a                                      bhi #0x59a518
0059a440  04 10 90 e5                                      ldr r1, [r0, #4]
0059a444  01 10 62 e0                                      rsb r1, r2, r1
0059a448  41 11 a0 e1                                      asr r1, r1, #2
0059a44c  01 00 56 e1                                      cmp r6, r1
0059a450  16 00 00 8a                                      bhi #0x59a4b0
0059a454  0c 00 a0 e1                                      mov r0, ip
0059a458  03 10 a0 e1                                      mov r1, r3
0059a45c  00 c0 a0 e3                                      mov ip, #0
0059a460  14 30 8d e2                                      add r3, sp, #0x14
0059a464  00 c0 8d e5                                      str ip, [sp]
0059a468  9d ff ff eb                                      bl #0x59a2e4
0059a46c  04 70 94 e5                                      ldr r7, [r4, #4]
0059a470  00 50 a0 e1                                      mov r5, r0
0059a474  00 00 57 e1                                      cmp r7, r0
0059a478  06 00 00 0a                                      beq #0x59a498
0059a47c  00 00 95 e5                                      ldr r0, [r5]
0059a480  04 50 85 e2                                      add r5, r5, #4
0059a484  00 00 50 e3                                      cmp r0, #0
0059a488  00 00 00 0a                                      beq #0x59a490
0059a48c  3c 0c f6 eb                                      bl #0x31d584
0059a490  05 00 57 e1                                      cmp r7, r5
0059a494  f8 ff ff 1a                                      bne #0x59a47c
0059a498  00 80 94 e5                                      ldr r8, [r4]
0059a49c  06 61 88 e0                                      add r6, r8, r6, lsl #2
0059a4a0  04 60 84 e5                                      str r6, [r4, #4]
0059a4a4  04 00 a0 e1                                      mov r0, r4
0059a4a8  18 d0 8d e2                                      add sp, sp, #0x18
0059a4ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0059a4b0  0c 00 a0 e1                                      mov r0, ip
0059a4b4  01 11 8c e0                                      add r1, ip, r1, lsl #2
0059a4b8  00 70 a0 e3                                      mov r7, #0
0059a4bc  10 30 8d e2                                      add r3, sp, #0x10
0059a4c0  00 70 8d e5                                      str r7, [sp]
0059a4c4  86 ff ff eb                                      bl #0x59a2e4
0059a4c8  00 11 94 e8                                      ldm r4, {r8, ip}
0059a4cc  00 30 95 e5                                      ldr r3, [r5]
0059a4d0  04 20 95 e5                                      ldr r2, [r5, #4]
0059a4d4  0c 00 68 e0                                      rsb r0, r8, ip
0059a4d8  03 00 c0 e3                                      bic r0, r0, #3
0059a4dc  00 00 83 e0                                      add r0, r3, r0
0059a4e0  02 20 60 e0                                      rsb r2, r0, r2
0059a4e4  42 21 a0 e1                                      asr r2, r2, #2
0059a4e8  07 00 52 e1                                      cmp r2, r7
0059a4ec  ea ff ff da                                      ble #0x59a49c
0059a4f0  07 30 90 e7                                      ldr r3, [r0, r7]
0059a4f4  00 00 53 e3                                      cmp r3, #0
0059a4f8  07 30 8c e7                                      str r3, [ip, r7]
0059a4fc  04 10 93 15                                      ldrne r1, [r3, #4]
0059a500  04 70 87 e2                                      add r7, r7, #4
0059a504  01 10 81 12                                      addne r1, r1, #1
0059a508  04 10 83 15                                      strne r1, [r3, #4]
0059a50c  01 20 52 e2                                      subs r2, r2, #1
0059a510  f6 ff ff 1a                                      bne #0x59a4f0
0059a514  df ff ff ea                                      b #0x59a498
0059a518  18 10 8d e2                                      add r1, sp, #0x18
0059a51c  0c 60 21 e5                                      str r6, [r1, #-0xc]!
0059a520  0c 20 a0 e1                                      mov r2, ip
0059a524  8f ff ff eb                                      bl #0x59a368
0059a528  00 80 a0 e1                                      mov r8, r0
0059a52c  04 00 a0 e1                                      mov r0, r4
0059a530  a2 ff ff eb                                      bl #0x59a3c0
0059a534  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059a538  00 80 84 e5                                      str r8, [r4]
0059a53c  03 31 88 e0                                      add r3, r8, r3, lsl #2
0059a540  08 30 84 e5                                      str r3, [r4, #8]
0059a544  d4 ff ff ea                                      b #0x59a49c

; FUNCTION 0x0059a548, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene5IMeshEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0059a548  70 40 2d e9                                      push {r4, r5, r6, lr}
0059a54c  04 40 90 e5                                      ldr r4, [r0, #4]
0059a550  00 50 90 e5                                      ldr r5, [r0]
0059a554  00 60 a0 e1                                      mov r6, r0
0059a558  05 00 54 e1                                      cmp r4, r5
0059a55c  06 00 00 0a                                      beq #0x59a57c
0059a560  04 00 14 e5                                      ldr r0, [r4, #-4]
0059a564  04 40 44 e2                                      sub r4, r4, #4
0059a568  00 00 50 e3                                      cmp r0, #0
0059a56c  00 00 00 0a                                      beq #0x59a574
0059a570  03 0c f6 eb                                      bl #0x31d584
0059a574  04 00 55 e1                                      cmp r5, r4
0059a578  f8 ff ff 1a                                      bne #0x59a560
0059a57c  00 00 96 e5                                      ldr r0, [r6]
0059a580  00 00 50 e3                                      cmp r0, #0
0059a584  00 00 00 0a                                      beq #0x59a58c
0059a588  b0 d7 f5 eb                                      bl #0x310450
0059a58c  06 00 a0 e1                                      mov r0, r6
0059a590  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0059a5c8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene5IMeshEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE19_M_clear_after_moveEv
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
0059a5c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0059a5cc  00 60 a0 e1                                      mov r6, r0
0059a5d0  00 50 96 e5                                      ldr r5, [r6]
0059a5d4  04 00 90 e5                                      ldr r0, [r0, #4]
0059a5d8  05 00 50 e1                                      cmp r0, r5
0059a5dc  08 00 00 0a                                      beq #0x59a604
0059a5e0  00 40 a0 e1                                      mov r4, r0
0059a5e4  04 00 14 e5                                      ldr r0, [r4, #-4]
0059a5e8  04 40 44 e2                                      sub r4, r4, #4
0059a5ec  00 00 50 e3                                      cmp r0, #0
0059a5f0  00 00 00 0a                                      beq #0x59a5f8
0059a5f4  e2 0b f6 eb                                      bl #0x31d584
0059a5f8  04 00 55 e1                                      cmp r5, r4
0059a5fc  f8 ff ff 1a                                      bne #0x59a5e4
0059a600  00 00 96 e5                                      ldr r0, [r6]
0059a604  70 40 bd e8                                      pop {r4, r5, r6, lr}
0059a608  90 d7 f5 ea                                      b #0x310450

; FUNCTION 0x006bed10, declared_size=260, range_size=260, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene5IMeshEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.1
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::IMesh>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IMesh>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::scene::IMesh>*, boost::intrusive_ptr<glitch::scene::IMesh> const&, std::__false_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
006bed10  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006bed14  00 40 a0 e1                                      mov r4, r0
006bed18  00 30 94 e5                                      ldr r3, [r4]
006bed1c  04 00 90 e5                                      ldr r0, [r0, #4]
006bed20  01 50 a0 e1                                      mov r5, r1
006bed24  02 70 a0 e1                                      mov r7, r2
006bed28  00 30 63 e0                                      rsb r3, r3, r0
006bed2c  43 31 a0 e1                                      asr r3, r3, #2
006bed30  01 00 53 e3                                      cmp r3, #1
006bed34  03 60 83 20                                      addhs r6, r3, r3
006bed38  01 60 83 32                                      addlo r6, r3, #1
006bed3c  07 01 76 e3                                      cmn r6, #0xc0000001
006bed40  31 00 00 8a                                      bhi #0x6bee0c
006bed44  06 00 53 e1                                      cmp r3, r6
006bed48  06 61 a0 91                                      lslls r6, r6, #2
006bed4c  2e 00 00 8a                                      bhi #0x6bee0c
006bed50  06 00 a0 e1                                      mov r0, r6
006bed54  00 10 a0 e3                                      mov r1, #0
006bed58  02 46 f1 eb                                      bl #0x310568
006bed5c  00 c0 94 e5                                      ldr ip, [r4]
006bed60  00 80 a0 e1                                      mov r8, r0
006bed64  05 50 6c e0                                      rsb r5, ip, r5
006bed68  45 51 a0 e1                                      asr r5, r5, #2
006bed6c  00 00 55 e3                                      cmp r5, #0
006bed70  00 a0 a0 d1                                      movle sl, r0
006bed74  0b 00 00 da                                      ble #0x6beda8
006bed78  05 10 a0 e1                                      mov r1, r5
006bed7c  00 20 a0 e3                                      mov r2, #0
006bed80  02 30 9c e7                                      ldr r3, [ip, r2]
006bed84  00 00 53 e3                                      cmp r3, #0
006bed88  02 30 88 e7                                      str r3, [r8, r2]
006bed8c  04 00 93 15                                      ldrne r0, [r3, #4]
006bed90  04 20 82 e2                                      add r2, r2, #4
006bed94  01 00 80 12                                      addne r0, r0, #1
006bed98  04 00 83 15                                      strne r0, [r3, #4]
006bed9c  01 10 51 e2                                      subs r1, r1, #1
006beda0  f6 ff ff 1a                                      bne #0x6bed80
006beda4  05 a1 88 e0                                      add sl, r8, r5, lsl #2
006beda8  00 30 97 e5                                      ldr r3, [r7]
006bedac  00 30 8a e5                                      str r3, [sl]
006bedb0  00 00 53 e3                                      cmp r3, #0
006bedb4  04 20 93 15                                      ldrne r2, [r3, #4]
006bedb8  04 a0 8a e2                                      add sl, sl, #4
006bedbc  01 20 82 12                                      addne r2, r2, #1
006bedc0  04 20 83 15                                      strne r2, [r3, #4]
006bedc4  04 50 94 e5                                      ldr r5, [r4, #4]
006bedc8  00 70 94 e5                                      ldr r7, [r4]
006bedcc  07 00 55 e1                                      cmp r5, r7
006bedd0  07 00 00 0a                                      beq #0x6bedf4
006bedd4  04 00 15 e5                                      ldr r0, [r5, #-4]
006bedd8  04 50 45 e2                                      sub r5, r5, #4
006beddc  00 00 50 e3                                      cmp r0, #0
006bede0  00 00 00 0a                                      beq #0x6bede8
006bede4  e6 79 f1 eb                                      bl #0x31d584
006bede8  05 00 57 e1                                      cmp r7, r5
006bedec  f8 ff ff 1a                                      bne #0x6bedd4
006bedf0  00 70 94 e5                                      ldr r7, [r4]
006bedf4  07 00 a0 e1                                      mov r0, r7
006bedf8  06 60 88 e0                                      add r6, r8, r6
006bedfc  93 45 f1 eb                                      bl #0x310450
006bee00  08 60 84 e5                                      str r6, [r4, #8]
006bee04  00 05 84 e8                                      stm r4, {r8, sl}
006bee08  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006bee0c  03 60 e0 e3                                      mvn r6, #3
006bee10  ce ff ff ea                                      b #0x6bed50
