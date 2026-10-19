; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005436b4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::gui::CGUIListBox::ListItem* std::priv
; alias: _ZNSt4priv22__uninitialized_fill_nIPN6glitch3gui11CGUIListBox8ListItemEjS4_EET_S6_T0_RKT1_
; demangled: glitch::gui::CGUIListBox::ListItem* std::priv::__uninitialized_fill_n<glitch::gui::CGUIListBox::ListItem*, unsigned int, glitch::gui::CGUIListBox::ListItem>(glitch::gui::CGUIListBox::ListItem*, unsigned int, glitch::gui::CGUIListBox::ListItem const&)
; decoder-mode: arm
005436b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005436b8  60 90 a0 e3                                      mov sb, #0x60
005436bc  99 01 29 e0                                      mla sb, sb, r1, r0
005436c0  00 50 a0 e1                                      mov r5, r0
005436c4  09 30 60 e0                                      rsb r3, r0, sb
005436c8  c3 32 a0 e1                                      asr r3, r3, #5
005436cc  02 a0 a0 e1                                      mov sl, r2
005436d0  03 81 83 e0                                      add r8, r3, r3, lsl #2
005436d4  08 82 88 e0                                      add r8, r8, r8, lsl #4
005436d8  08 84 88 e0                                      add r8, r8, r8, lsl #8
005436dc  08 88 88 e0                                      add r8, r8, r8, lsl #16
005436e0  88 80 83 e0                                      add r8, r3, r8, lsl #1
005436e4  00 00 58 e3                                      cmp r8, #0
005436e8  14 00 00 da                                      ble #0x543740
005436ec  4c 70 82 e2                                      add r7, r2, #0x4c
005436f0  40 50 85 e5                                      str r5, [r5, #0x40]
005436f4  44 50 85 e5                                      str r5, [r5, #0x44]
005436f8  05 00 a0 e1                                      mov r0, r5
005436fc  44 10 9a e5                                      ldr r1, [sl, #0x44]
00543700  40 20 9a e5                                      ldr r2, [sl, #0x40]
00543704  c8 89 f7 eb                                      bl #0x325e2c
00543708  48 30 9a e5                                      ldr r3, [sl, #0x48]
0054370c  4c 60 85 e2                                      add r6, r5, #0x4c
00543710  00 40 a0 e3                                      mov r4, #0
00543714  48 30 85 e5                                      str r3, [r5, #0x48]
00543718  04 00 86 e0                                      add r0, r6, r4
0054371c  04 10 87 e0                                      add r1, r7, r4
00543720  05 20 a0 e3                                      mov r2, #5
00543724  05 40 84 e2                                      add r4, r4, #5
00543728  4e 2c f7 eb                                      bl #0x30e868
0054372c  14 00 54 e3                                      cmp r4, #0x14
00543730  f8 ff ff 1a                                      bne #0x543718
00543734  01 80 58 e2                                      subs r8, r8, #1
00543738  60 50 85 12                                      addne r5, r5, #0x60
0054373c  eb ff ff 1a                                      bne #0x5436f0
00543740  09 00 a0 e1                                      mov r0, sb
00543744  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00543748, declared_size=160, range_size=160, mode=arm
; class-group: glitch::gui::CGUIListBox::ListItem* std::priv
; alias: _ZNSt4priv12__ucopy_ptrsIPN6glitch3gui11CGUIListBox8ListItemES5_EET0_T_S7_S6_RKSt12__false_type
; demangled: glitch::gui::CGUIListBox::ListItem* std::priv::__ucopy_ptrs<glitch::gui::CGUIListBox::ListItem*, glitch::gui::CGUIListBox::ListItem*>(glitch::gui::CGUIListBox::ListItem*, glitch::gui::CGUIListBox::ListItem*, glitch::gui::CGUIListBox::ListItem*, std::__false_type const&)
; decoder-mode: arm
00543748  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054374c  01 30 60 e0                                      rsb r3, r0, r1
00543750  c3 32 a0 e1                                      asr r3, r3, #5
00543754  00 60 a0 e1                                      mov r6, r0
00543758  03 b1 83 e0                                      add fp, r3, r3, lsl #2
0054375c  02 90 a0 e1                                      mov sb, r2
00543760  0b b2 8b e0                                      add fp, fp, fp, lsl #4
00543764  0b b4 8b e0                                      add fp, fp, fp, lsl #8
00543768  0b b8 8b e0                                      add fp, fp, fp, lsl #16
0054376c  8b b0 83 e0                                      add fp, r3, fp, lsl #1
00543770  00 00 5b e3                                      cmp fp, #0
00543774  19 00 00 da                                      ble #0x5437e0
00543778  0b a0 a0 e1                                      mov sl, fp
0054377c  02 50 a0 e1                                      mov r5, r2
00543780  40 50 85 e5                                      str r5, [r5, #0x40]
00543784  44 50 85 e5                                      str r5, [r5, #0x44]
00543788  05 00 a0 e1                                      mov r0, r5
0054378c  44 10 96 e5                                      ldr r1, [r6, #0x44]
00543790  40 20 96 e5                                      ldr r2, [r6, #0x40]
00543794  a4 89 f7 eb                                      bl #0x325e2c
00543798  48 30 96 e5                                      ldr r3, [r6, #0x48]
0054379c  4c 80 85 e2                                      add r8, r5, #0x4c
005437a0  4c 70 86 e2                                      add r7, r6, #0x4c
005437a4  48 30 85 e5                                      str r3, [r5, #0x48]
005437a8  00 40 a0 e3                                      mov r4, #0
005437ac  04 00 88 e0                                      add r0, r8, r4
005437b0  04 10 87 e0                                      add r1, r7, r4
005437b4  05 20 a0 e3                                      mov r2, #5
005437b8  05 40 84 e2                                      add r4, r4, #5
005437bc  29 2c f7 eb                                      bl #0x30e868
005437c0  14 00 54 e3                                      cmp r4, #0x14
005437c4  f8 ff ff 1a                                      bne #0x5437ac
005437c8  01 a0 5a e2                                      subs sl, sl, #1
005437cc  60 50 85 e2                                      add r5, r5, #0x60
005437d0  60 60 86 12                                      addne r6, r6, #0x60
005437d4  e9 ff ff 1a                                      bne #0x543780
005437d8  60 30 a0 e3                                      mov r3, #0x60
005437dc  93 9b 29 e0                                      mla sb, r3, fp, sb
005437e0  09 00 a0 e1                                      mov r0, sb
005437e4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
