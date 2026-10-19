; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055beec, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0055beec  70 40 2d e9                                      push {r4, r5, r6, lr}
0055bef0  14 00 90 e8                                      ldm r0, {r2, r4}
0055bef4  a3 3b 08 e3                                      movw r3, #0x8ba3
0055bef8  2e 3a 4b e3                                      movt r3, #0xba2e
0055befc  04 40 62 e0                                      rsb r4, r2, r4
0055bf00  c4 41 a0 e1                                      asr r4, r4, #3
0055bf04  93 04 04 e0                                      mul r4, r3, r4
0055bf08  01 50 a0 e1                                      mov r5, r1
0055bf0c  ba 37 64 e2                                      rsb r3, r4, #0x2e80000
0055bf10  ba 3c 83 e2                                      add r3, r3, #0xba00
0055bf14  2e 30 83 e2                                      add r3, r3, #0x2e
0055bf18  01 00 53 e1                                      cmp r3, r1
0055bf1c  0b 00 00 3a                                      blo #0x55bf50
0055bf20  2e 3a 0b e3                                      movw r3, #0xba2e
0055bf24  05 00 54 e1                                      cmp r4, r5
0055bf28  04 00 84 20                                      addhs r0, r4, r4
0055bf2c  05 00 84 30                                      addlo r0, r4, r5
0055bf30  03 35 83 e1                                      orr r3, r3, r3, lsl #10
0055bf34  03 00 50 e1                                      cmp r0, r3
0055bf38  01 00 00 8a                                      bhi #0x55bf44
0055bf3c  04 00 50 e1                                      cmp r0, r4
0055bf40  01 00 00 2a                                      bhs #0x55bf4c
0055bf44  2e 0a 0b e3                                      movw r0, #0xba2e
0055bf48  00 05 80 e1                                      orr r0, r0, r0, lsl #10
0055bf4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055bf50  08 00 9f e5                                      ldr r0, [pc, #8]
0055bf54  00 00 8f e0                                      add r0, pc, r0
0055bf58  b8 b3 06 eb                                      bl #0x708e40
0055bf5c  ef ff ff ea                                      b #0x55bf20
; mapping-symbol data/literal pool
0055bf60  14 25 36 00                                      .byte 0x14, 0x25, 0x36, 0x00

; FUNCTION 0x0055bf64, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE19_M_clear_after_moveEv
; demangled: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
0055bf64  70 40 2d e9                                      push {r4, r5, r6, lr}
0055bf68  04 40 90 e5                                      ldr r4, [r0, #4]
0055bf6c  00 50 90 e5                                      ldr r5, [r0]
0055bf70  00 60 a0 e1                                      mov r6, r0
0055bf74  05 00 54 e1                                      cmp r4, r5
0055bf78  06 00 00 0a                                      beq #0x55bf98
0055bf7c  58 30 34 e5                                      ldr r3, [r4, #-0x58]!
0055bf80  04 00 a0 e1                                      mov r0, r4
0055bf84  0f e0 a0 e1                                      mov lr, pc
0055bf88  00 f0 93 e5                                      ldr pc, [r3]
0055bf8c  04 00 55 e1                                      cmp r5, r4
0055bf90  f9 ff ff 1a                                      bne #0x55bf7c
0055bf94  00 40 96 e5                                      ldr r4, [r6]
0055bf98  04 00 a0 e1                                      mov r0, r4
0055bf9c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0055bfa0  2a d1 f6 ea                                      b #0x310450

; FUNCTION 0x0055bfa4, declared_size=72, range_size=72, mode=arm
; class-group: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0055bfa4  70 40 2d e9                                      push {r4, r5, r6, lr}
0055bfa8  04 40 90 e5                                      ldr r4, [r0, #4]
0055bfac  00 50 90 e5                                      ldr r5, [r0]
0055bfb0  00 60 a0 e1                                      mov r6, r0
0055bfb4  05 00 54 e1                                      cmp r4, r5
0055bfb8  05 00 00 0a                                      beq #0x55bfd4
0055bfbc  58 30 34 e5                                      ldr r3, [r4, #-0x58]!
0055bfc0  04 00 a0 e1                                      mov r0, r4
0055bfc4  0f e0 a0 e1                                      mov lr, pc
0055bfc8  00 f0 93 e5                                      ldr pc, [r3]
0055bfcc  04 00 55 e1                                      cmp r5, r4
0055bfd0  f9 ff ff 1a                                      bne #0x55bfbc
0055bfd4  00 00 96 e5                                      ldr r0, [r6]
0055bfd8  00 00 50 e3                                      cmp r0, #0
0055bfdc  00 00 00 0a                                      beq #0x55bfe4
0055bfe0  1a d1 f6 eb                                      bl #0x310450
0055bfe4  06 00 a0 e1                                      mov r0, r6
0055bfe8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0055c8e8, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS2_S9_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUITTGlyph*, glitch::gui::CGUITTGlyph*, std::__false_type const&)
; decoder-mode: arm
0055c8e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0055c8ec  04 40 90 e5                                      ldr r4, [r0, #4]
0055c8f0  a3 3b 08 e3                                      movw r3, #0x8ba3
0055c8f4  2e 3a 4b e3                                      movt r3, #0xba2e
0055c8f8  04 a0 62 e0                                      rsb sl, r2, r4
0055c8fc  ca a1 a0 e1                                      asr sl, sl, #3
0055c900  93 0a 0a e0                                      mul sl, r3, sl
0055c904  00 50 a0 e1                                      mov r5, r0
0055c908  00 00 5a e3                                      cmp sl, #0
0055c90c  02 80 a0 e1                                      mov r8, r2
0055c910  01 70 a0 e1                                      mov r7, r1
0055c914  01 a0 a0 d1                                      movle sl, r1
0055c918  0a 00 00 da                                      ble #0x55c948
0055c91c  0a 60 a0 e1                                      mov r6, sl
0055c920  00 40 a0 e3                                      mov r4, #0
0055c924  04 00 87 e0                                      add r0, r7, r4
0055c928  04 10 88 e0                                      add r1, r8, r4
0055c92c  ae ff ff eb                                      bl #0x55c7ec
0055c930  01 60 56 e2                                      subs r6, r6, #1
0055c934  58 40 84 e2                                      add r4, r4, #0x58
0055c938  f9 ff ff 1a                                      bne #0x55c924
0055c93c  58 30 a0 e3                                      mov r3, #0x58
0055c940  93 7a 2a e0                                      mla sl, r3, sl, r7
0055c944  04 40 95 e5                                      ldr r4, [r5, #4]
0055c948  04 00 5a e1                                      cmp sl, r4
0055c94c  07 00 00 0a                                      beq #0x55c970
0055c950  0a 60 a0 e1                                      mov r6, sl
0055c954  00 30 96 e5                                      ldr r3, [r6]
0055c958  06 00 a0 e1                                      mov r0, r6
0055c95c  58 60 86 e2                                      add r6, r6, #0x58
0055c960  0f e0 a0 e1                                      mov lr, pc
0055c964  00 f0 93 e5                                      ldr pc, [r3]
0055c968  04 00 56 e1                                      cmp r6, r4
0055c96c  f8 ff ff 1a                                      bne #0x55c954
0055c970  04 a0 85 e5                                      str sl, [r5, #4]
0055c974  07 00 a0 e1                                      mov r0, r7
0055c978  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0055e550, declared_size=644, range_size=644, mode=arm
; class-group: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS2_jRKS2_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::gui::CGUITTGlyph*, unsigned int, glitch::gui::CGUITTGlyph const&, std::__false_type const&)
; decoder-mode: arm
0055e550  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055e554  00 c0 90 e5                                      ldr ip, [r0]
0055e558  00 80 a0 e1                                      mov r8, r0
0055e55c  68 02 9f e5                                      ldr r0, [pc, #0x268]
0055e560  0c 00 53 e1                                      cmp r3, ip
0055e564  94 d0 4d e2                                      sub sp, sp, #0x94
0055e568  00 00 8f e0                                      add r0, pc, r0
0055e56c  03 60 a0 e1                                      mov r6, r3
0055e570  01 40 a0 e1                                      mov r4, r1
0055e574  04 50 98 35                                      ldrlo r5, [r8, #4]
0055e578  51 00 00 3a                                      blo #0x55e6c4
0055e57c  04 50 98 e5                                      ldr r5, [r8, #4]
0055e580  05 00 53 e1                                      cmp r3, r5
0055e584  4e 00 00 2a                                      bhs #0x55e6c4
0055e588  28 10 96 e5                                      ldr r1, [r6, #0x28]
0055e58c  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
0055e590  18 50 96 e5                                      ldr r5, [r6, #0x18]
0055e594  1c e0 96 e5                                      ldr lr, [r6, #0x1c]
0055e598  20 c0 96 e5                                      ldr ip, [r6, #0x20]
0055e59c  08 b0 d6 e5                                      ldrb fp, [r6, #8]
0055e5a0  0c 90 96 e5                                      ldr sb, [r6, #0xc]
0055e5a4  10 a0 96 e5                                      ldr sl, [r6, #0x10]
0055e5a8  14 70 96 e5                                      ldr r7, [r6, #0x14]
0055e5ac  03 30 90 e7                                      ldr r3, [r0, r3]
0055e5b0  24 00 96 e5                                      ldr r0, [r6, #0x24]
0055e5b4  0c 10 8d e5                                      str r1, [sp, #0xc]
0055e5b8  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
0055e5bc  08 30 83 e2                                      add r3, r3, #8
0055e5c0  10 10 8d e5                                      str r1, [sp, #0x10]
0055e5c4  30 10 96 e5                                      ldr r1, [r6, #0x30]
0055e5c8  14 10 8d e5                                      str r1, [sp, #0x14]
0055e5cc  34 10 96 e5                                      ldr r1, [r6, #0x34]
0055e5d0  18 10 8d e5                                      str r1, [sp, #0x18]
0055e5d4  38 10 96 e5                                      ldr r1, [r6, #0x38]
0055e5d8  1c 10 8d e5                                      str r1, [sp, #0x1c]
0055e5dc  3c 10 96 e5                                      ldr r1, [r6, #0x3c]
0055e5e0  20 10 8d e5                                      str r1, [sp, #0x20]
0055e5e4  40 10 96 e5                                      ldr r1, [r6, #0x40]
0055e5e8  24 10 8d e5                                      str r1, [sp, #0x24]
0055e5ec  04 10 96 e5                                      ldr r1, [r6, #4]
0055e5f0  2c 30 8d e5                                      str r3, [sp, #0x2c]
0055e5f4  44 50 8d e5                                      str r5, [sp, #0x44]
0055e5f8  30 10 8d e5                                      str r1, [sp, #0x30]
0055e5fc  48 e0 8d e5                                      str lr, [sp, #0x48]
0055e600  4c c0 8d e5                                      str ip, [sp, #0x4c]
0055e604  34 b0 cd e5                                      strb fp, [sp, #0x34]
0055e608  38 90 8d e5                                      str sb, [sp, #0x38]
0055e60c  3c a0 8d e5                                      str sl, [sp, #0x3c]
0055e610  40 70 8d e5                                      str r7, [sp, #0x40]
0055e614  50 00 8d e5                                      str r0, [sp, #0x50]
0055e618  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0055e61c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0055e620  2c 50 8d e2                                      add r5, sp, #0x2c
0055e624  54 30 8d e5                                      str r3, [sp, #0x54]
0055e628  14 30 9d e5                                      ldr r3, [sp, #0x14]
0055e62c  58 10 8d e5                                      str r1, [sp, #0x58]
0055e630  18 10 9d e5                                      ldr r1, [sp, #0x18]
0055e634  5c 30 8d e5                                      str r3, [sp, #0x5c]
0055e638  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0055e63c  60 10 8d e5                                      str r1, [sp, #0x60]
0055e640  20 10 9d e5                                      ldr r1, [sp, #0x20]
0055e644  64 30 8d e5                                      str r3, [sp, #0x64]
0055e648  24 30 9d e5                                      ldr r3, [sp, #0x24]
0055e64c  68 10 8d e5                                      str r1, [sp, #0x68]
0055e650  08 00 a0 e1                                      mov r0, r8
0055e654  6c 30 8d e5                                      str r3, [sp, #0x6c]
0055e658  44 30 96 e5                                      ldr r3, [r6, #0x44]
0055e65c  70 30 8d e5                                      str r3, [sp, #0x70]
0055e660  00 00 53 e3                                      cmp r3, #0
0055e664  04 10 93 15                                      ldrne r1, [r3, #4]
0055e668  01 10 81 12                                      addne r1, r1, #1
0055e66c  04 10 83 15                                      strne r1, [r3, #4]
0055e670  48 30 96 e5                                      ldr r3, [r6, #0x48]
0055e674  74 30 8d e5                                      str r3, [sp, #0x74]
0055e678  00 00 53 e3                                      cmp r3, #0
0055e67c  04 10 93 15                                      ldrne r1, [r3, #4]
0055e680  01 10 81 12                                      addne r1, r1, #1
0055e684  04 10 83 15                                      strne r1, [r3, #4]
0055e688  54 c0 96 e5                                      ldr ip, [r6, #0x54]
0055e68c  4c e0 96 e5                                      ldr lr, [r6, #0x4c]
0055e690  50 60 96 e5                                      ldr r6, [r6, #0x50]
0055e694  04 10 a0 e1                                      mov r1, r4
0055e698  80 c0 8d e5                                      str ip, [sp, #0x80]
0055e69c  05 30 a0 e1                                      mov r3, r5
0055e6a0  8c c0 8d e2                                      add ip, sp, #0x8c
0055e6a4  78 e0 8d e5                                      str lr, [sp, #0x78]
0055e6a8  7c 60 8d e5                                      str r6, [sp, #0x7c]
0055e6ac  00 c0 8d e5                                      str ip, [sp]
0055e6b0  a6 ff ff eb                                      bl #0x55e550
0055e6b4  05 00 a0 e1                                      mov r0, r5
0055e6b8  0a f8 ff eb                                      bl #0x55c6e8
0055e6bc  94 d0 8d e2                                      add sp, sp, #0x94
0055e6c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055e6c4  05 70 64 e0                                      rsb r7, r4, r5
0055e6c8  a3 ab 08 e3                                      movw sl, #0x8ba3
0055e6cc  c7 71 a0 e1                                      asr r7, r7, #3
0055e6d0  2e aa 4b e3                                      movt sl, #0xba2e
0055e6d4  9a 07 07 e0                                      mul r7, sl, r7
0055e6d8  07 00 52 e1                                      cmp r2, r7
0055e6dc  23 00 00 2a                                      bhs #0x55e770
0055e6e0  58 90 a0 e3                                      mov sb, #0x58
0055e6e4  99 02 09 e0                                      mul sb, sb, r2
0055e6e8  88 30 8d e2                                      add r3, sp, #0x88
0055e6ec  05 70 69 e0                                      rsb r7, sb, r5
0055e6f0  05 10 a0 e1                                      mov r1, r5
0055e6f4  07 00 a0 e1                                      mov r0, r7
0055e6f8  05 20 a0 e1                                      mov r2, r5
0055e6fc  46 ff ff eb                                      bl #0x55e41c
0055e700  07 30 64 e0                                      rsb r3, r4, r7
0055e704  c3 31 a0 e1                                      asr r3, r3, #3
0055e708  9a 03 0a e0                                      mul sl, sl, r3
0055e70c  04 30 98 e5                                      ldr r3, [r8, #4]
0055e710  00 00 5a e3                                      cmp sl, #0
0055e714  09 30 83 e0                                      add r3, r3, sb
0055e718  04 30 88 e5                                      str r3, [r8, #4]
0055e71c  06 00 00 da                                      ble #0x55e73c
0055e720  58 50 45 e2                                      sub r5, r5, #0x58
0055e724  58 70 47 e2                                      sub r7, r7, #0x58
0055e728  05 00 a0 e1                                      mov r0, r5
0055e72c  07 10 a0 e1                                      mov r1, r7
0055e730  2d f8 ff eb                                      bl #0x55c7ec
0055e734  01 a0 5a e2                                      subs sl, sl, #1
0055e738  f8 ff ff 1a                                      bne #0x55e720
0055e73c  a3 3b 08 e3                                      movw r3, #0x8ba3
0055e740  c9 91 a0 e1                                      asr sb, sb, #3
0055e744  2e 3a 4b e3                                      movt r3, #0xba2e
0055e748  93 09 09 e0                                      mul sb, r3, sb
0055e74c  00 00 59 e3                                      cmp sb, #0
0055e750  d9 ff ff da                                      ble #0x55e6bc
0055e754  04 00 a0 e1                                      mov r0, r4
0055e758  06 10 a0 e1                                      mov r1, r6
0055e75c  22 f8 ff eb                                      bl #0x55c7ec
0055e760  01 90 59 e2                                      subs sb, sb, #1
0055e764  58 40 84 e2                                      add r4, r4, #0x58
0055e768  f9 ff ff 1a                                      bne #0x55e754
0055e76c  d2 ff ff ea                                      b #0x55e6bc
0055e770  02 10 67 e0                                      rsb r1, r7, r2
0055e774  05 00 a0 e1                                      mov r0, r5
0055e778  06 20 a0 e1                                      mov r2, r6
0055e77c  db fe ff eb                                      bl #0x55e2f0
0055e780  84 30 8d e2                                      add r3, sp, #0x84
0055e784  00 20 a0 e1                                      mov r2, r0
0055e788  04 00 88 e5                                      str r0, [r8, #4]
0055e78c  05 10 a0 e1                                      mov r1, r5
0055e790  04 00 a0 e1                                      mov r0, r4
0055e794  20 ff ff eb                                      bl #0x55e41c
0055e798  04 30 98 e5                                      ldr r3, [r8, #4]
0055e79c  58 20 a0 e3                                      mov r2, #0x58
0055e7a0  00 00 57 e3                                      cmp r7, #0
0055e7a4  92 37 23 e0                                      mla r3, r2, r7, r3
0055e7a8  04 30 88 e5                                      str r3, [r8, #4]
0055e7ac  c2 ff ff da                                      ble #0x55e6bc
0055e7b0  04 00 a0 e1                                      mov r0, r4
0055e7b4  06 10 a0 e1                                      mov r1, r6
0055e7b8  0b f8 ff eb                                      bl #0x55c7ec
0055e7bc  01 70 57 e2                                      subs r7, r7, #1
0055e7c0  58 40 84 e2                                      add r4, r4, #0x58
0055e7c4  f9 ff ff 1a                                      bne #0x55e7b0
0055e7c8  bb ff ff ea                                      b #0x55e6bc
; mapping-symbol data/literal pool
0055e7cc  28 65 43 00 00 4b 00 00                          .byte 0x28, 0x65, 0x43, 0x00, 0x00, 0x4b, 0x00, 0x00

; FUNCTION 0x0055e7d4, declared_size=444, range_size=444, mode=arm
; class-group: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS2_jRKS2_
; demangled: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::gui::CGUITTGlyph*, unsigned int, glitch::gui::CGUITTGlyph const&)
; decoder-mode: arm
0055e7d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055e7d8  a8 51 9f e5                                      ldr r5, [pc, #0x1a8]
0055e7dc  00 70 52 e2                                      subs r7, r2, #0
0055e7e0  14 d0 4d e2                                      sub sp, sp, #0x14
0055e7e4  05 50 8f e0                                      add r5, pc, r5
0055e7e8  00 40 a0 e1                                      mov r4, r0
0055e7ec  01 a0 a0 e1                                      mov sl, r1
0055e7f0  03 60 a0 e1                                      mov r6, r3
0055e7f4  25 00 00 0a                                      beq #0x55e890
0055e7f8  00 41 90 e9                                      ldmib r0, {r8, lr}
0055e7fc  a3 cb 08 e3                                      movw ip, #0x8ba3
0055e800  2e ca 4b e3                                      movt ip, #0xba2e
0055e804  0e e0 68 e0                                      rsb lr, r8, lr
0055e808  ce e1 a0 e1                                      asr lr, lr, #3
0055e80c  9c 0e 0c e0                                      mul ip, ip, lr
0055e810  0c 00 57 e1                                      cmp r7, ip
0055e814  1f 00 00 9a                                      bls #0x55e898
0055e818  07 10 a0 e1                                      mov r1, r7
0055e81c  b2 f5 ff eb                                      bl #0x55beec
0055e820  58 b0 a0 e3                                      mov fp, #0x58
0055e824  9b 00 0b e0                                      mul fp, fp, r0
0055e828  00 10 a0 e3                                      mov r1, #0
0055e82c  0b 00 a0 e1                                      mov r0, fp
0055e830  4c c7 f6 eb                                      bl #0x310568
0055e834  08 90 8d e2                                      add sb, sp, #8
0055e838  00 80 a0 e1                                      mov r8, r0
0055e83c  0a 10 a0 e1                                      mov r1, sl
0055e840  00 00 94 e5                                      ldr r0, [r4]
0055e844  08 20 a0 e1                                      mov r2, r8
0055e848  09 30 a0 e1                                      mov r3, sb
0055e84c  f2 fe ff eb                                      bl #0x55e41c
0055e850  01 00 57 e3                                      cmp r7, #1
0055e854  13 00 00 0a                                      beq #0x55e8a8
0055e858  06 20 a0 e1                                      mov r2, r6
0055e85c  07 10 a0 e1                                      mov r1, r7
0055e860  a2 fe ff eb                                      bl #0x55e2f0
0055e864  00 20 a0 e1                                      mov r2, r0
0055e868  09 30 a0 e1                                      mov r3, sb
0055e86c  04 10 94 e5                                      ldr r1, [r4, #4]
0055e870  0a 00 a0 e1                                      mov r0, sl
0055e874  e8 fe ff eb                                      bl #0x55e41c
0055e878  0b b0 88 e0                                      add fp, r8, fp
0055e87c  00 50 a0 e1                                      mov r5, r0
0055e880  04 00 a0 e1                                      mov r0, r4
0055e884  b6 f5 ff eb                                      bl #0x55bf64
0055e888  20 08 84 e9                                      stmib r4, {r5, fp}
0055e88c  00 80 84 e5                                      str r8, [r4]
0055e890  14 d0 8d e2                                      add sp, sp, #0x14
0055e894  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055e898  0c c0 8d e2                                      add ip, sp, #0xc
0055e89c  00 c0 8d e5                                      str ip, [sp]
0055e8a0  2a ff ff eb                                      bl #0x55e550
0055e8a4  f9 ff ff ea                                      b #0x55e890
0055e8a8  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0055e8ac  04 10 96 e5                                      ldr r1, [r6, #4]
0055e8b0  02 20 95 e7                                      ldr r2, [r5, r2]
0055e8b4  04 10 80 e5                                      str r1, [r0, #4]
0055e8b8  08 20 82 e2                                      add r2, r2, #8
0055e8bc  00 20 80 e5                                      str r2, [r0]
0055e8c0  08 20 d6 e5                                      ldrb r2, [r6, #8]
0055e8c4  08 20 c0 e5                                      strb r2, [r0, #8]
0055e8c8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0055e8cc  0c 20 80 e5                                      str r2, [r0, #0xc]
0055e8d0  10 20 96 e5                                      ldr r2, [r6, #0x10]
0055e8d4  10 20 80 e5                                      str r2, [r0, #0x10]
0055e8d8  14 20 96 e5                                      ldr r2, [r6, #0x14]
0055e8dc  14 20 80 e5                                      str r2, [r0, #0x14]
0055e8e0  18 20 96 e5                                      ldr r2, [r6, #0x18]
0055e8e4  18 20 80 e5                                      str r2, [r0, #0x18]
0055e8e8  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
0055e8ec  1c 20 80 e5                                      str r2, [r0, #0x1c]
0055e8f0  20 20 96 e5                                      ldr r2, [r6, #0x20]
0055e8f4  20 20 80 e5                                      str r2, [r0, #0x20]
0055e8f8  24 20 96 e5                                      ldr r2, [r6, #0x24]
0055e8fc  24 20 80 e5                                      str r2, [r0, #0x24]
0055e900  28 20 96 e5                                      ldr r2, [r6, #0x28]
0055e904  28 20 80 e5                                      str r2, [r0, #0x28]
0055e908  2c 20 96 e5                                      ldr r2, [r6, #0x2c]
0055e90c  2c 20 80 e5                                      str r2, [r0, #0x2c]
0055e910  30 20 96 e5                                      ldr r2, [r6, #0x30]
0055e914  30 20 80 e5                                      str r2, [r0, #0x30]
0055e918  34 20 96 e5                                      ldr r2, [r6, #0x34]
0055e91c  34 20 80 e5                                      str r2, [r0, #0x34]
0055e920  38 20 96 e5                                      ldr r2, [r6, #0x38]
0055e924  38 20 80 e5                                      str r2, [r0, #0x38]
0055e928  3c 20 96 e5                                      ldr r2, [r6, #0x3c]
0055e92c  3c 20 80 e5                                      str r2, [r0, #0x3c]
0055e930  40 20 96 e5                                      ldr r2, [r6, #0x40]
0055e934  40 20 80 e5                                      str r2, [r0, #0x40]
0055e938  44 20 96 e5                                      ldr r2, [r6, #0x44]
0055e93c  44 20 80 e5                                      str r2, [r0, #0x44]
0055e940  00 00 52 e3                                      cmp r2, #0
0055e944  04 10 92 15                                      ldrne r1, [r2, #4]
0055e948  01 10 81 12                                      addne r1, r1, #1
0055e94c  04 10 82 15                                      strne r1, [r2, #4]
0055e950  48 20 96 e5                                      ldr r2, [r6, #0x48]
0055e954  48 20 80 e5                                      str r2, [r0, #0x48]
0055e958  00 00 52 e3                                      cmp r2, #0
0055e95c  04 10 92 15                                      ldrne r1, [r2, #4]
0055e960  01 10 81 12                                      addne r1, r1, #1
0055e964  04 10 82 15                                      strne r1, [r2, #4]
0055e968  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
0055e96c  58 20 80 e2                                      add r2, r0, #0x58
0055e970  4c 10 80 e5                                      str r1, [r0, #0x4c]
0055e974  50 10 96 e5                                      ldr r1, [r6, #0x50]
0055e978  50 10 80 e5                                      str r1, [r0, #0x50]
0055e97c  54 10 96 e5                                      ldr r1, [r6, #0x54]
0055e980  54 10 80 e5                                      str r1, [r0, #0x54]
0055e984  b7 ff ff ea                                      b #0x55e868
; mapping-symbol data/literal pool
0055e988  ac 62 43 00 00 4b 00 00                          .byte 0xac, 0x62, 0x43, 0x00, 0x00, 0x4b, 0x00, 0x00

; FUNCTION 0x0055e990, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui11CGUITTGlyphENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS2_
; demangled: std::vector<glitch::gui::CGUITTGlyph, glitch::core::SAllocator<glitch::gui::CGUITTGlyph, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::gui::CGUITTGlyph const&)
; decoder-mode: arm
0055e990  30 40 2d e9                                      push {r4, r5, lr}
0055e994  10 10 90 e8                                      ldm r0, {r4, ip}
0055e998  a3 3b 08 e3                                      movw r3, #0x8ba3
0055e99c  2e 3a 4b e3                                      movt r3, #0xba2e
0055e9a0  0c 50 64 e0                                      rsb r5, r4, ip
0055e9a4  c5 51 a0 e1                                      asr r5, r5, #3
0055e9a8  93 05 05 e0                                      mul r5, r3, r5
0055e9ac  0c d0 4d e2                                      sub sp, sp, #0xc
0055e9b0  05 00 51 e1                                      cmp r1, r5
0055e9b4  02 30 a0 e1                                      mov r3, r2
0055e9b8  08 00 00 2a                                      bhs #0x55e9e0
0055e9bc  58 30 a0 e3                                      mov r3, #0x58
0055e9c0  93 41 21 e0                                      mla r1, r3, r1, r4
0055e9c4  0c 00 51 e1                                      cmp r1, ip
0055e9c8  02 00 00 0a                                      beq #0x55e9d8
0055e9cc  0c 20 a0 e1                                      mov r2, ip
0055e9d0  04 30 8d e2                                      add r3, sp, #4
0055e9d4  c3 f7 ff eb                                      bl #0x55c8e8
0055e9d8  0c d0 8d e2                                      add sp, sp, #0xc
0055e9dc  30 80 bd e8                                      pop {r4, r5, pc}
0055e9e0  01 20 65 e0                                      rsb r2, r5, r1
0055e9e4  0c 10 a0 e1                                      mov r1, ip
0055e9e8  79 ff ff eb                                      bl #0x55e7d4
0055e9ec  f9 ff ff ea                                      b #0x55e9d8
