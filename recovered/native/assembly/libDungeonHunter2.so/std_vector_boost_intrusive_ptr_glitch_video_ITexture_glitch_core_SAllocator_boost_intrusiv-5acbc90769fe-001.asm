; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0054fae8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video8ITextureEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE19_M_clear_after_moveEv
; demangled: std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
0054fae8  70 40 2d e9                                      push {r4, r5, r6, lr}
0054faec  00 60 a0 e1                                      mov r6, r0
0054faf0  00 50 96 e5                                      ldr r5, [r6]
0054faf4  04 00 90 e5                                      ldr r0, [r0, #4]
0054faf8  05 00 50 e1                                      cmp r0, r5
0054fafc  08 00 00 0a                                      beq #0x54fb24
0054fb00  00 40 a0 e1                                      mov r4, r0
0054fb04  04 00 14 e5                                      ldr r0, [r4, #-4]
0054fb08  04 40 44 e2                                      sub r4, r4, #4
0054fb0c  00 00 50 e3                                      cmp r0, #0
0054fb10  00 00 00 0a                                      beq #0x54fb18
0054fb14  9a 36 f7 eb                                      bl #0x31d584
0054fb18  04 00 55 e1                                      cmp r5, r4
0054fb1c  f8 ff ff 1a                                      bne #0x54fb04
0054fb20  00 00 96 e5                                      ldr r0, [r6]
0054fb24  70 40 bd e8                                      pop {r4, r5, r6, lr}
0054fb28  48 02 f7 ea                                      b #0x310450

; FUNCTION 0x0054fb2c, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video8ITextureEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0054fb2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0054fb30  04 40 90 e5                                      ldr r4, [r0, #4]
0054fb34  00 50 90 e5                                      ldr r5, [r0]
0054fb38  00 60 a0 e1                                      mov r6, r0
0054fb3c  05 00 54 e1                                      cmp r4, r5
0054fb40  06 00 00 0a                                      beq #0x54fb60
0054fb44  04 00 14 e5                                      ldr r0, [r4, #-4]
0054fb48  04 40 44 e2                                      sub r4, r4, #4
0054fb4c  00 00 50 e3                                      cmp r0, #0
0054fb50  00 00 00 0a                                      beq #0x54fb58
0054fb54  8a 36 f7 eb                                      bl #0x31d584
0054fb58  04 00 55 e1                                      cmp r5, r4
0054fb5c  f8 ff ff 1a                                      bne #0x54fb44
0054fb60  00 00 96 e5                                      ldr r0, [r6]
0054fb64  00 00 50 e3                                      cmp r0, #0
0054fb68  00 00 00 0a                                      beq #0x54fb70
0054fb6c  37 02 f7 eb                                      bl #0x310450
0054fb70  06 00 a0 e1                                      mov r0, r6
0054fb74  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0054fd40, declared_size=212, range_size=212, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video8ITextureEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.1
; demangled: std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::ITexture>*, boost::intrusive_ptr<glitch::video::ITexture> const&, std::__false_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
0054fd40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0054fd44  00 40 a0 e1                                      mov r4, r0
0054fd48  00 30 94 e5                                      ldr r3, [r4]
0054fd4c  04 00 90 e5                                      ldr r0, [r0, #4]
0054fd50  01 50 a0 e1                                      mov r5, r1
0054fd54  02 70 a0 e1                                      mov r7, r2
0054fd58  00 30 63 e0                                      rsb r3, r3, r0
0054fd5c  43 31 a0 e1                                      asr r3, r3, #2
0054fd60  01 00 53 e3                                      cmp r3, #1
0054fd64  03 60 83 20                                      addhs r6, r3, r3
0054fd68  01 60 83 32                                      addlo r6, r3, #1
0054fd6c  07 01 76 e3                                      cmn r6, #0xc0000001
0054fd70  25 00 00 8a                                      bhi #0x54fe0c
0054fd74  06 00 53 e1                                      cmp r3, r6
0054fd78  06 61 a0 91                                      lslls r6, r6, #2
0054fd7c  22 00 00 8a                                      bhi #0x54fe0c
0054fd80  06 00 a0 e1                                      mov r0, r6
0054fd84  00 10 a0 e3                                      mov r1, #0
0054fd88  f6 01 f7 eb                                      bl #0x310568
0054fd8c  00 c0 94 e5                                      ldr ip, [r4]
0054fd90  00 80 a0 e1                                      mov r8, r0
0054fd94  05 50 6c e0                                      rsb r5, ip, r5
0054fd98  45 51 a0 e1                                      asr r5, r5, #2
0054fd9c  00 00 55 e3                                      cmp r5, #0
0054fda0  00 50 a0 d1                                      movle r5, r0
0054fda4  0b 00 00 da                                      ble #0x54fdd8
0054fda8  05 10 a0 e1                                      mov r1, r5
0054fdac  00 20 a0 e3                                      mov r2, #0
0054fdb0  02 30 9c e7                                      ldr r3, [ip, r2]
0054fdb4  00 00 53 e3                                      cmp r3, #0
0054fdb8  02 30 88 e7                                      str r3, [r8, r2]
0054fdbc  04 00 93 15                                      ldrne r0, [r3, #4]
0054fdc0  04 20 82 e2                                      add r2, r2, #4
0054fdc4  01 00 80 12                                      addne r0, r0, #1
0054fdc8  04 00 83 15                                      strne r0, [r3, #4]
0054fdcc  01 10 51 e2                                      subs r1, r1, #1
0054fdd0  f6 ff ff 1a                                      bne #0x54fdb0
0054fdd4  05 51 88 e0                                      add r5, r8, r5, lsl #2
0054fdd8  00 30 97 e5                                      ldr r3, [r7]
0054fddc  04 00 a0 e1                                      mov r0, r4
0054fde0  06 60 88 e0                                      add r6, r8, r6
0054fde4  00 00 53 e3                                      cmp r3, #0
0054fde8  00 30 85 e5                                      str r3, [r5]
0054fdec  04 20 93 15                                      ldrne r2, [r3, #4]
0054fdf0  04 50 85 e2                                      add r5, r5, #4
0054fdf4  01 20 82 12                                      addne r2, r2, #1
0054fdf8  04 20 83 15                                      strne r2, [r3, #4]
0054fdfc  39 ff ff eb                                      bl #0x54fae8
0054fe00  60 00 84 e9                                      stmib r4, {r5, r6}
0054fe04  00 80 84 e5                                      str r8, [r4]
0054fe08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0054fe0c  03 60 e0 e3                                      mvn r6, #3
0054fe10  da ff ff ea                                      b #0x54fd80

; FUNCTION 0x006cdc04, declared_size=212, range_size=212, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video8ITextureEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.3
; demangled: std::vector<boost::intrusive_ptr<glitch::video::ITexture>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::ITexture>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::ITexture>*, boost::intrusive_ptr<glitch::video::ITexture> const&, std::__false_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
006cdc04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006cdc08  00 40 a0 e1                                      mov r4, r0
006cdc0c  00 30 94 e5                                      ldr r3, [r4]
006cdc10  04 00 90 e5                                      ldr r0, [r0, #4]
006cdc14  01 50 a0 e1                                      mov r5, r1
006cdc18  02 70 a0 e1                                      mov r7, r2
006cdc1c  00 30 63 e0                                      rsb r3, r3, r0
006cdc20  43 31 a0 e1                                      asr r3, r3, #2
006cdc24  01 00 53 e3                                      cmp r3, #1
006cdc28  03 60 83 20                                      addhs r6, r3, r3
006cdc2c  01 60 83 32                                      addlo r6, r3, #1
006cdc30  07 01 76 e3                                      cmn r6, #0xc0000001
006cdc34  25 00 00 8a                                      bhi #0x6cdcd0
006cdc38  06 00 53 e1                                      cmp r3, r6
006cdc3c  06 61 a0 91                                      lslls r6, r6, #2
006cdc40  22 00 00 8a                                      bhi #0x6cdcd0
006cdc44  06 00 a0 e1                                      mov r0, r6
006cdc48  00 10 a0 e3                                      mov r1, #0
006cdc4c  45 0a f1 eb                                      bl #0x310568
006cdc50  00 c0 94 e5                                      ldr ip, [r4]
006cdc54  00 80 a0 e1                                      mov r8, r0
006cdc58  05 50 6c e0                                      rsb r5, ip, r5
006cdc5c  45 51 a0 e1                                      asr r5, r5, #2
006cdc60  00 00 55 e3                                      cmp r5, #0
006cdc64  00 50 a0 d1                                      movle r5, r0
006cdc68  0b 00 00 da                                      ble #0x6cdc9c
006cdc6c  05 10 a0 e1                                      mov r1, r5
006cdc70  00 20 a0 e3                                      mov r2, #0
006cdc74  02 30 9c e7                                      ldr r3, [ip, r2]
006cdc78  00 00 53 e3                                      cmp r3, #0
006cdc7c  02 30 88 e7                                      str r3, [r8, r2]
006cdc80  04 00 93 15                                      ldrne r0, [r3, #4]
006cdc84  04 20 82 e2                                      add r2, r2, #4
006cdc88  01 00 80 12                                      addne r0, r0, #1
006cdc8c  04 00 83 15                                      strne r0, [r3, #4]
006cdc90  01 10 51 e2                                      subs r1, r1, #1
006cdc94  f6 ff ff 1a                                      bne #0x6cdc74
006cdc98  05 51 88 e0                                      add r5, r8, r5, lsl #2
006cdc9c  00 30 97 e5                                      ldr r3, [r7]
006cdca0  04 00 a0 e1                                      mov r0, r4
006cdca4  06 60 88 e0                                      add r6, r8, r6
006cdca8  00 00 53 e3                                      cmp r3, #0
006cdcac  00 30 85 e5                                      str r3, [r5]
006cdcb0  04 20 93 15                                      ldrne r2, [r3, #4]
006cdcb4  04 50 85 e2                                      add r5, r5, #4
006cdcb8  01 20 82 12                                      addne r2, r2, #1
006cdcbc  04 20 83 15                                      strne r2, [r3, #4]
006cdcc0  88 07 fa eb                                      bl #0x54fae8
006cdcc4  60 00 84 e9                                      stmib r4, {r5, r6}
006cdcc8  00 80 84 e5                                      str r8, [r4]
006cdccc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006cdcd0  03 60 e0 e3                                      mvn r6, #3
006cdcd4  da ff ff ea                                      b #0x6cdc44
