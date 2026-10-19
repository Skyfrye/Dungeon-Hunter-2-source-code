; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ae404, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<glitch::gui::CGUIContextMenu::SItem, glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIContextMenu5SItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUIContextMenu::SItem, glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem*, std::__false_type const&)
; decoder-mode: arm
006ae404  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ae408  04 30 90 e5                                      ldr r3, [r0, #4]
006ae40c  10 d0 4d e2                                      sub sp, sp, #0x10
006ae410  01 50 a0 e1                                      mov r5, r1
006ae414  00 40 a0 e1                                      mov r4, r0
006ae418  03 10 a0 e1                                      mov r1, r3
006ae41c  02 00 a0 e1                                      mov r0, r2
006ae420  00 c0 a0 e3                                      mov ip, #0
006ae424  05 20 a0 e1                                      mov r2, r5
006ae428  0c 30 8d e2                                      add r3, sp, #0xc
006ae42c  00 c0 8d e5                                      str ip, [sp]
006ae430  40 fd ff eb                                      bl #0x6ad938
006ae434  04 70 94 e5                                      ldr r7, [r4, #4]
006ae438  00 80 a0 e1                                      mov r8, r0
006ae43c  00 00 57 e1                                      cmp r7, r0
006ae440  0a 00 00 0a                                      beq #0x6ae470
006ae444  00 60 a0 e1                                      mov r6, r0
006ae448  44 30 96 e5                                      ldr r3, [r6, #0x44]
006ae44c  06 00 53 e1                                      cmp r3, r6
006ae450  03 00 a0 e1                                      mov r0, r3
006ae454  60 60 86 e2                                      add r6, r6, #0x60
006ae458  02 00 00 0a                                      beq #0x6ae468
006ae45c  00 00 53 e3                                      cmp r3, #0
006ae460  00 00 00 0a                                      beq #0x6ae468
006ae464  f9 87 f1 eb                                      bl #0x310450
006ae468  06 00 57 e1                                      cmp r7, r6
006ae46c  f5 ff ff 1a                                      bne #0x6ae448
006ae470  04 80 84 e5                                      str r8, [r4, #4]
006ae474  05 00 a0 e1                                      mov r0, r5
006ae478  10 d0 8d e2                                      add sp, sp, #0x10
006ae47c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006ae540, declared_size=444, range_size=444, mode=arm
; class-group: std::vector<glitch::gui::CGUIContextMenu::SItem, glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIContextMenu5SItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::gui::CGUIContextMenu::SItem, glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::CGUIContextMenu::SItem const&)
; decoder-mode: arm
006ae540  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006ae544  04 80 90 e5                                      ldr r8, [r0, #4]
006ae548  08 30 90 e5                                      ldr r3, [r0, #8]
006ae54c  14 d0 4d e2                                      sub sp, sp, #0x14
006ae550  00 50 a0 e1                                      mov r5, r0
006ae554  03 00 58 e1                                      cmp r8, r3
006ae558  01 40 a0 e1                                      mov r4, r1
006ae55c  1a 00 00 0a                                      beq #0x6ae5cc
006ae560  40 80 88 e5                                      str r8, [r8, #0x40]
006ae564  44 80 88 e5                                      str r8, [r8, #0x44]
006ae568  08 00 a0 e1                                      mov r0, r8
006ae56c  44 10 91 e5                                      ldr r1, [r1, #0x44]
006ae570  40 20 94 e5                                      ldr r2, [r4, #0x40]
006ae574  2c de f1 eb                                      bl #0x325e2c
006ae578  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
006ae57c  48 30 c8 e5                                      strb r3, [r8, #0x48]
006ae580  49 30 d4 e5                                      ldrb r3, [r4, #0x49]
006ae584  49 30 c8 e5                                      strb r3, [r8, #0x49]
006ae588  4a 30 d4 e5                                      ldrb r3, [r4, #0x4a]
006ae58c  4a 30 c8 e5                                      strb r3, [r8, #0x4a]
006ae590  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006ae594  4c 30 88 e5                                      str r3, [r8, #0x4c]
006ae598  50 30 94 e5                                      ldr r3, [r4, #0x50]
006ae59c  50 30 88 e5                                      str r3, [r8, #0x50]
006ae5a0  54 30 94 e5                                      ldr r3, [r4, #0x54]
006ae5a4  54 30 88 e5                                      str r3, [r8, #0x54]
006ae5a8  58 30 94 e5                                      ldr r3, [r4, #0x58]
006ae5ac  58 30 88 e5                                      str r3, [r8, #0x58]
006ae5b0  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006ae5b4  5c 30 88 e5                                      str r3, [r8, #0x5c]
006ae5b8  04 30 95 e5                                      ldr r3, [r5, #4]
006ae5bc  60 30 83 e2                                      add r3, r3, #0x60
006ae5c0  04 30 85 e5                                      str r3, [r5, #4]
006ae5c4  14 d0 8d e2                                      add sp, sp, #0x14
006ae5c8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006ae5cc  00 20 90 e5                                      ldr r2, [r0]
006ae5d0  aa 3a 0a e3                                      movw r3, #0xaaaa
006ae5d4  03 35 83 e1                                      orr r3, r3, r3, lsl #10
006ae5d8  08 20 62 e0                                      rsb r2, r2, r8
006ae5dc  c2 22 a0 e1                                      asr r2, r2, #5
006ae5e0  02 11 82 e0                                      add r1, r2, r2, lsl #2
006ae5e4  01 12 81 e0                                      add r1, r1, r1, lsl #4
006ae5e8  01 14 81 e0                                      add r1, r1, r1, lsl #8
006ae5ec  01 18 81 e0                                      add r1, r1, r1, lsl #16
006ae5f0  81 20 82 e0                                      add r2, r2, r1, lsl #1
006ae5f4  01 00 52 e3                                      cmp r2, #1
006ae5f8  02 10 82 20                                      addhs r1, r2, r2
006ae5fc  01 10 82 32                                      addlo r1, r2, #1
006ae600  03 00 51 e1                                      cmp r1, r3
006ae604  37 00 00 9a                                      bls #0x6ae6e8
006ae608  3f 70 e0 e3                                      mvn r7, #0x3f
006ae60c  00 10 a0 e3                                      mov r1, #0
006ae610  07 00 a0 e1                                      mov r0, r7
006ae614  d3 87 f1 eb                                      bl #0x310568
006ae618  00 60 a0 e1                                      mov r6, r0
006ae61c  08 10 a0 e1                                      mov r1, r8
006ae620  0c 30 8d e2                                      add r3, sp, #0xc
006ae624  00 c0 a0 e3                                      mov ip, #0
006ae628  00 00 95 e5                                      ldr r0, [r5]
006ae62c  06 20 a0 e1                                      mov r2, r6
006ae630  00 c0 8d e5                                      str ip, [sp]
006ae634  77 fc ff eb                                      bl #0x6ad818
006ae638  00 80 a0 e1                                      mov r8, r0
006ae63c  40 00 88 e5                                      str r0, [r8, #0x40]
006ae640  44 00 88 e5                                      str r0, [r8, #0x44]
006ae644  44 10 94 e5                                      ldr r1, [r4, #0x44]
006ae648  40 20 94 e5                                      ldr r2, [r4, #0x40]
006ae64c  f6 dd f1 eb                                      bl #0x325e2c
006ae650  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
006ae654  60 a0 88 e2                                      add sl, r8, #0x60
006ae658  48 30 c8 e5                                      strb r3, [r8, #0x48]
006ae65c  49 30 d4 e5                                      ldrb r3, [r4, #0x49]
006ae660  49 30 c8 e5                                      strb r3, [r8, #0x49]
006ae664  4a 30 d4 e5                                      ldrb r3, [r4, #0x4a]
006ae668  4a 30 c8 e5                                      strb r3, [r8, #0x4a]
006ae66c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006ae670  4c 30 88 e5                                      str r3, [r8, #0x4c]
006ae674  50 30 94 e5                                      ldr r3, [r4, #0x50]
006ae678  50 30 88 e5                                      str r3, [r8, #0x50]
006ae67c  54 30 94 e5                                      ldr r3, [r4, #0x54]
006ae680  54 30 88 e5                                      str r3, [r8, #0x54]
006ae684  58 30 94 e5                                      ldr r3, [r4, #0x58]
006ae688  58 30 88 e5                                      str r3, [r8, #0x58]
006ae68c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006ae690  5c 30 88 e5                                      str r3, [r8, #0x5c]
006ae694  04 40 95 e5                                      ldr r4, [r5, #4]
006ae698  00 80 95 e5                                      ldr r8, [r5]
006ae69c  08 00 54 e1                                      cmp r4, r8
006ae6a0  0a 00 00 0a                                      beq #0x6ae6d0
006ae6a4  60 40 44 e2                                      sub r4, r4, #0x60
006ae6a8  44 30 94 e5                                      ldr r3, [r4, #0x44]
006ae6ac  04 00 53 e1                                      cmp r3, r4
006ae6b0  03 00 a0 e1                                      mov r0, r3
006ae6b4  02 00 00 0a                                      beq #0x6ae6c4
006ae6b8  00 00 53 e3                                      cmp r3, #0
006ae6bc  00 00 00 0a                                      beq #0x6ae6c4
006ae6c0  62 87 f1 eb                                      bl #0x310450
006ae6c4  04 00 58 e1                                      cmp r8, r4
006ae6c8  f5 ff ff 1a                                      bne #0x6ae6a4
006ae6cc  00 80 95 e5                                      ldr r8, [r5]
006ae6d0  08 00 a0 e1                                      mov r0, r8
006ae6d4  07 70 86 e0                                      add r7, r6, r7
006ae6d8  5c 87 f1 eb                                      bl #0x310450
006ae6dc  08 70 85 e5                                      str r7, [r5, #8]
006ae6e0  40 04 85 e8                                      stm r5, {r6, sl}
006ae6e4  b6 ff ff ea                                      b #0x6ae5c4
006ae6e8  01 00 52 e1                                      cmp r2, r1
006ae6ec  c5 ff ff 8a                                      bhi #0x6ae608
006ae6f0  60 70 a0 e3                                      mov r7, #0x60
006ae6f4  97 01 07 e0                                      mul r7, r7, r1
006ae6f8  c3 ff ff ea                                      b #0x6ae60c

; FUNCTION 0x006ae6fc, declared_size=88, range_size=88, mode=arm
; class-group: std::vector<glitch::gui::CGUIContextMenu::SItem, glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIContextMenu5SItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUIContextMenu::SItem, glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006ae6fc  70 40 2d e9                                      push {r4, r5, r6, lr}
006ae700  04 40 90 e5                                      ldr r4, [r0, #4]
006ae704  00 50 90 e5                                      ldr r5, [r0]
006ae708  00 60 a0 e1                                      mov r6, r0
006ae70c  05 00 54 e1                                      cmp r4, r5
006ae710  09 00 00 0a                                      beq #0x6ae73c
006ae714  60 40 44 e2                                      sub r4, r4, #0x60
006ae718  44 30 94 e5                                      ldr r3, [r4, #0x44]
006ae71c  04 00 53 e1                                      cmp r3, r4
006ae720  03 00 a0 e1                                      mov r0, r3
006ae724  02 00 00 0a                                      beq #0x6ae734
006ae728  00 00 53 e3                                      cmp r3, #0
006ae72c  00 00 00 0a                                      beq #0x6ae734
006ae730  46 87 f1 eb                                      bl #0x310450
006ae734  04 00 55 e1                                      cmp r5, r4
006ae738  f5 ff ff 1a                                      bne #0x6ae714
006ae73c  00 00 96 e5                                      ldr r0, [r6]
006ae740  00 00 50 e3                                      cmp r0, #0
006ae744  00 00 00 0a                                      beq #0x6ae74c
006ae748  40 87 f1 eb                                      bl #0x310450
006ae74c  06 00 a0 e1                                      mov r0, r6
006ae750  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006ae754, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<glitch::gui::CGUIContextMenu::SItem, glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIContextMenu5SItemENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUIContextMenu::SItem, glitch::core::SAllocator<glitch::gui::CGUIContextMenu::SItem, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUIContextMenu::SItem*, std::__false_type const&)
; decoder-mode: arm
006ae754  30 40 2d e9                                      push {r4, r5, lr}
006ae758  04 30 90 e5                                      ldr r3, [r0, #4]
006ae75c  00 50 a0 e1                                      mov r5, r0
006ae760  60 00 81 e2                                      add r0, r1, #0x60
006ae764  03 00 50 e1                                      cmp r0, r3
006ae768  14 d0 4d e2                                      sub sp, sp, #0x14
006ae76c  01 40 a0 e1                                      mov r4, r1
006ae770  06 00 00 0a                                      beq #0x6ae790
006ae774  03 10 a0 e1                                      mov r1, r3
006ae778  00 c0 a0 e3                                      mov ip, #0
006ae77c  04 20 a0 e1                                      mov r2, r4
006ae780  0c 30 8d e2                                      add r3, sp, #0xc
006ae784  00 c0 8d e5                                      str ip, [sp]
006ae788  6a fc ff eb                                      bl #0x6ad938
006ae78c  04 00 95 e5                                      ldr r0, [r5, #4]
006ae790  60 30 40 e2                                      sub r3, r0, #0x60
006ae794  04 30 85 e5                                      str r3, [r5, #4]
006ae798  44 00 93 e5                                      ldr r0, [r3, #0x44]
006ae79c  03 00 50 e1                                      cmp r0, r3
006ae7a0  02 00 00 0a                                      beq #0x6ae7b0
006ae7a4  00 00 50 e3                                      cmp r0, #0
006ae7a8  00 00 00 0a                                      beq #0x6ae7b0
006ae7ac  27 87 f1 eb                                      bl #0x310450
006ae7b0  04 00 a0 e1                                      mov r0, r4
006ae7b4  14 d0 8d e2                                      add sp, sp, #0x14
006ae7b8  30 80 bd e8                                      pop {r4, r5, pc}
