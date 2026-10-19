; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00552214, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZNK6glitch3gui14CGUITabControl11getTabCountEv
; demangled: glitch::gui::CGUITabControl::getTabCount() const
; decoder-mode: arm
00552214  58 31 90 e5                                      ldr r3, [r0, #0x158]
00552218  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
0055221c  00 00 63 e0                                      rsb r0, r3, r0
00552220  40 01 a0 e1                                      asr r0, r0, #2
00552224  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552228, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZNK6glitch3gui14CGUITabControl6getTabEi
; demangled: glitch::gui::CGUITabControl::getTab(int) const
; decoder-mode: arm
00552228  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
0055222c  58 31 90 e5                                      ldr r3, [r0, #0x158]
00552230  02 20 63 e0                                      rsb r2, r3, r2
00552234  42 01 51 e1                                      cmp r1, r2, asr #2
00552238  00 00 a0 23                                      movhs r0, #0
0055223c  01 01 93 37                                      ldrlo r0, [r3, r1, lsl #2]
00552240  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552244, declared_size=308, range_size=308, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl17needScrollControlEib
; demangled: glitch::gui::CGUITabControl::needScrollControl(int, bool)
; decoder-mode: arm
00552244  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00552248  00 40 a0 e1                                      mov r4, r0
0055224c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00552250  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00552254  08 d0 4d e2                                      sub sp, sp, #8
00552258  01 70 a0 e1                                      mov r7, r1
0055225c  00 30 63 e0                                      rsb r3, r3, r0
00552260  43 01 51 e1                                      cmp r1, r3, asr #2
00552264  50 31 94 e5                                      ldr r3, [r4, #0x150]
00552268  01 70 41 a2                                      subge r7, r1, #1
0055226c  02 a0 a0 e1                                      mov sl, r2
00552270  03 00 a0 e1                                      mov r0, r3
00552274  00 30 93 e5                                      ldr r3, [r3]
00552278  0f e0 a0 e1                                      mov lr, pc
0055227c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00552280  00 30 50 e2                                      subs r3, r0, #0
00552284  38 00 00 0a                                      beq #0x55236c
00552288  00 30 93 e5                                      ldr r3, [r3]
0055228c  00 10 a0 e3                                      mov r1, #0
00552290  0f e0 a0 e1                                      mov lr, pc
00552294  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00552298  58 31 94 e5                                      ldr r3, [r4, #0x158]
0055229c  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
005522a0  00 80 a0 e1                                      mov r8, r0
005522a4  38 50 94 e5                                      ldr r5, [r4, #0x38]
005522a8  02 00 53 e1                                      cmp r3, r2
005522ac  2e 00 00 0a                                      beq #0x55236c
005522b0  00 00 50 e3                                      cmp r0, #0
005522b4  2c 00 00 0a                                      beq #0x55236c
005522b8  c7 7f c7 e1                                      bic r7, r7, r7, asr #31
005522bc  02 20 63 e0                                      rsb r2, r3, r2
005522c0  42 01 57 e1                                      cmp r7, r2, asr #2
005522c4  28 00 00 aa                                      bge #0x55236c
005522c8  07 60 a0 e1                                      mov r6, r7
005522cc  02 50 85 e2                                      add r5, r5, #2
005522d0  07 71 a0 e1                                      lsl r7, r7, #2
005522d4  0d 90 a0 e1                                      mov sb, sp
005522d8  0a 00 00 ea                                      b #0x552308
005522dc  40 20 94 e5                                      ldr r2, [r4, #0x40]
005522e0  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
005522e4  02 30 63 e0                                      rsb r3, r3, r2
005522e8  03 00 55 e1                                      cmp r5, r3
005522ec  1c 00 00 ca                                      bgt #0x552364
005522f0  58 31 94 e5                                      ldr r3, [r4, #0x158]
005522f4  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
005522f8  04 70 87 e2                                      add r7, r7, #4
005522fc  02 20 63 e0                                      rsb r2, r3, r2
00552300  42 01 56 e1                                      cmp r6, r2, asr #2
00552304  18 00 00 aa                                      bge #0x55236c
00552308  07 20 93 e7                                      ldr r2, [r3, r7]
0055230c  00 00 52 e3                                      cmp r2, #0
00552310  04 00 00 0a                                      beq #0x552328
00552314  02 00 a0 e1                                      mov r0, r2
00552318  00 30 92 e5                                      ldr r3, [r2]
0055231c  0f e0 a0 e1                                      mov lr, pc
00552320  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00552324  00 20 a0 e1                                      mov r2, r0
00552328  00 30 98 e5                                      ldr r3, [r8]
0055232c  0d 00 a0 e1                                      mov r0, sp
00552330  08 10 a0 e1                                      mov r1, r8
00552334  0f e0 a0 e1                                      mov lr, pc
00552338  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0055233c  84 21 94 e5                                      ldr r2, [r4, #0x184]
00552340  00 30 9d e5                                      ldr r3, [sp]
00552344  00 00 5a e3                                      cmp sl, #0
00552348  01 60 86 e2                                      add r6, r6, #1
0055234c  03 30 82 e0                                      add r3, r2, r3
00552350  03 50 85 e0                                      add r5, r5, r3
00552354  e0 ff ff 1a                                      bne #0x5522dc
00552358  40 30 94 e5                                      ldr r3, [r4, #0x40]
0055235c  03 00 55 e1                                      cmp r5, r3
00552360  e2 ff ff da                                      ble #0x5522f0
00552364  01 00 a0 e3                                      mov r0, #1
00552368  00 00 00 ea                                      b #0x552370
0055236c  00 00 a0 e3                                      mov r0, #0
00552370  08 d0 8d e2                                      add sp, sp, #8
00552374  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00552378, declared_size=404, range_size=404, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl9selectTabENS_4core10position2dIiEE
; demangled: glitch::gui::CGUITabControl::selectTab(glitch::core::position2d<int>)
; decoder-mode: arm
00552378  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055237c  50 31 90 e5                                      ldr r3, [r0, #0x150]
00552380  00 40 a0 e1                                      mov r4, r0
00552384  14 d0 4d e2                                      sub sp, sp, #0x14
00552388  03 00 a0 e1                                      mov r0, r3
0055238c  00 30 93 e5                                      ldr r3, [r3]
00552390  01 a0 a0 e1                                      mov sl, r1
00552394  0f e0 a0 e1                                      mov lr, pc
00552398  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055239c  00 10 a0 e3                                      mov r1, #0
005523a0  00 30 90 e5                                      ldr r3, [r0]
005523a4  0f e0 a0 e1                                      mov lr, pc
005523a8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005523ac  70 31 94 e5                                      ldr r3, [r4, #0x170]
005523b0  3c b0 94 e5                                      ldr fp, [r4, #0x3c]
005523b4  38 50 94 e5                                      ldr r5, [r4, #0x38]
005523b8  00 00 53 e3                                      cmp r3, #0
005523bc  44 30 94 e5                                      ldr r3, [r4, #0x44]
005523c0  40 10 94 e5                                      ldr r1, [r4, #0x40]
005523c4  02 b0 8b 02                                      addeq fp, fp, #2
005523c8  04 30 8d e5                                      str r3, [sp, #4]
005523cc  6c 31 94 05                                      ldreq r3, [r4, #0x16c]
005523d0  04 30 9d 15                                      ldrne r3, [sp, #4]
005523d4  6c b1 94 15                                      ldrne fp, [r4, #0x16c]
005523d8  03 30 8b 00                                      addeq r3, fp, r3
005523dc  04 30 8d 05                                      streq r3, [sp, #4]
005523e0  03 b0 6b 10                                      rsbne fp, fp, r3
005523e4  00 30 9a e5                                      ldr r3, [sl]
005523e8  00 80 a0 e1                                      mov r8, r0
005523ec  03 00 55 e1                                      cmp r5, r3
005523f0  02 00 00 ca                                      bgt #0x552400
005523f4  04 20 9a e5                                      ldr r2, [sl, #4]
005523f8  02 00 5b e1                                      cmp fp, r2
005523fc  02 00 00 da                                      ble #0x55240c
00552400  00 00 a0 e3                                      mov r0, #0
00552404  14 d0 8d e2                                      add sp, sp, #0x14
00552408  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055240c  03 00 51 e1                                      cmp r1, r3
00552410  fa ff ff ba                                      blt #0x552400
00552414  04 30 9d e5                                      ldr r3, [sp, #4]
00552418  02 00 53 e1                                      cmp r3, r2
0055241c  f7 ff ff ba                                      blt #0x552400
00552420  58 31 94 e5                                      ldr r3, [r4, #0x158]
00552424  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
00552428  80 71 94 e5                                      ldr r7, [r4, #0x180]
0055242c  02 20 63 e0                                      rsb r2, r3, r2
00552430  42 01 57 e1                                      cmp r7, r2, asr #2
00552434  f1 ff ff aa                                      bge #0x552400
00552438  02 50 85 e2                                      add r5, r5, #2
0055243c  07 61 a0 e1                                      lsl r6, r7, #2
00552440  08 90 8d e2                                      add sb, sp, #8
00552444  06 20 93 e7                                      ldr r2, [r3, r6]
00552448  00 00 52 e3                                      cmp r2, #0
0055244c  04 00 00 0a                                      beq #0x552464
00552450  02 00 a0 e1                                      mov r0, r2
00552454  00 30 92 e5                                      ldr r3, [r2]
00552458  0f e0 a0 e1                                      mov lr, pc
0055245c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00552460  00 20 a0 e1                                      mov r2, r0
00552464  00 30 98 e5                                      ldr r3, [r8]
00552468  08 10 a0 e1                                      mov r1, r8
0055246c  09 00 a0 e1                                      mov r0, sb
00552470  0f e0 a0 e1                                      mov lr, pc
00552474  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00552478  6a 31 d4 e5                                      ldrb r3, [r4, #0x16a]
0055247c  08 20 9d e5                                      ldr r2, [sp, #8]
00552480  84 11 94 e5                                      ldr r1, [r4, #0x184]
00552484  00 00 53 e3                                      cmp r3, #0
00552488  02 00 00 0a                                      beq #0x552498
0055248c  40 30 94 e5                                      ldr r3, [r4, #0x40]
00552490  05 00 53 e1                                      cmp r3, r5
00552494  d9 ff ff ba                                      blt #0x552400
00552498  00 30 9a e5                                      ldr r3, [sl]
0055249c  02 20 81 e0                                      add r2, r1, r2
005524a0  05 20 82 e0                                      add r2, r2, r5
005524a4  03 00 55 e1                                      cmp r5, r3
005524a8  0e 00 00 ca                                      bgt #0x5524e8
005524ac  04 10 9a e5                                      ldr r1, [sl, #4]
005524b0  01 00 5b e1                                      cmp fp, r1
005524b4  0b 00 00 ca                                      bgt #0x5524e8
005524b8  03 00 52 e1                                      cmp r2, r3
005524bc  09 00 00 ba                                      blt #0x5524e8
005524c0  04 30 9d e5                                      ldr r3, [sp, #4]
005524c4  01 00 53 e1                                      cmp r3, r1
005524c8  06 00 00 ba                                      blt #0x5524e8
005524cc  04 00 a0 e1                                      mov r0, r4
005524d0  07 10 a0 e1                                      mov r1, r7
005524d4  00 30 94 e5                                      ldr r3, [r4]
005524d8  0f e0 a0 e1                                      mov lr, pc
005524dc  88 f0 93 e5                                      ldr pc, [r3, #0x88]
005524e0  01 00 a0 e3                                      mov r0, #1
005524e4  c6 ff ff ea                                      b #0x552404
005524e8  58 31 94 e5                                      ldr r3, [r4, #0x158]
005524ec  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
005524f0  01 70 87 e2                                      add r7, r7, #1
005524f4  04 60 86 e2                                      add r6, r6, #4
005524f8  01 10 63 e0                                      rsb r1, r3, r1
005524fc  41 01 57 e1                                      cmp r7, r1, asr #2
00552500  be ff ff aa                                      bge #0x552400
00552504  02 50 a0 e1                                      mov r5, r2
00552508  cd ff ff ea                                      b #0x552444

; FUNCTION 0x0055250c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZNK6glitch3gui14CGUITabControl12getTabHeightEv
; demangled: glitch::gui::CGUITabControl::getTabHeight() const
; decoder-mode: arm
0055250c  6c 01 90 e5                                      ldr r0, [r0, #0x16c]
00552510  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552514, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZNK6glitch3gui14CGUITabControl16getTabExtraWidthEv
; demangled: glitch::gui::CGUITabControl::getTabExtraWidth() const
; decoder-mode: arm
00552514  84 01 90 e5                                      ldr r0, [r0, #0x184]
00552518  1e ff 2f e1                                      bx lr

; FUNCTION 0x0055251c, declared_size=160, range_size=160, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl20recalculateScrollBarEv
; demangled: glitch::gui::CGUITabControl::recalculateScrollBar()
; decoder-mode: arm
0055251c  00 10 a0 e3                                      mov r1, #0
00552520  70 40 2d e9                                      push {r4, r5, r6, lr}
00552524  01 20 a0 e1                                      mov r2, r1
00552528  00 40 a0 e1                                      mov r4, r0
0055252c  44 ff ff eb                                      bl #0x552244
00552530  00 50 50 e2                                      subs r5, r0, #0
00552534  18 00 00 0a                                      beq #0x55259c
00552538  74 31 94 e5                                      ldr r3, [r4, #0x174]
0055253c  01 50 a0 e3                                      mov r5, #1
00552540  6a 51 c4 e5                                      strb r5, [r4, #0x16a]
00552544  03 00 a0 e1                                      mov r0, r3
00552548  05 10 a0 e1                                      mov r1, r5
0055254c  00 30 93 e5                                      ldr r3, [r3]
00552550  0f e0 a0 e1                                      mov lr, pc
00552554  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00552558  78 31 94 e5                                      ldr r3, [r4, #0x178]
0055255c  05 10 a0 e1                                      mov r1, r5
00552560  03 00 a0 e1                                      mov r0, r3
00552564  00 30 93 e5                                      ldr r3, [r3]
00552568  0f e0 a0 e1                                      mov lr, pc
0055256c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00552570  74 11 94 e5                                      ldr r1, [r4, #0x174]
00552574  00 30 94 e5                                      ldr r3, [r4]
00552578  04 00 a0 e1                                      mov r0, r4
0055257c  0f e0 a0 e1                                      mov lr, pc
00552580  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00552584  04 00 a0 e1                                      mov r0, r4
00552588  00 30 94 e5                                      ldr r3, [r4]
0055258c  78 11 94 e5                                      ldr r1, [r4, #0x178]
00552590  0f e0 a0 e1                                      mov lr, pc
00552594  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00552598  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055259c  80 31 94 e5                                      ldr r3, [r4, #0x180]
005525a0  00 00 53 e3                                      cmp r3, #0
005525a4  e3 ff ff ca                                      bgt #0x552538
005525a8  74 31 94 e5                                      ldr r3, [r4, #0x174]
005525ac  6a 51 c4 e5                                      strb r5, [r4, #0x16a]
005525b0  05 10 a0 e1                                      mov r1, r5
005525b4  03 00 a0 e1                                      mov r0, r3
005525b8  e3 ff ff ea                                      b #0x55254c

; FUNCTION 0x005525bc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl16setTabExtraWidthEi
; demangled: glitch::gui::CGUITabControl::setTabExtraWidth(int)
; decoder-mode: arm
005525bc  c1 1f c1 e1                                      bic r1, r1, r1, asr #31
005525c0  84 11 80 e5                                      str r1, [r0, #0x184]
005525c4  d4 ff ff ea                                      b #0x55251c

; FUNCTION 0x005525c8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl12setTabHeightEi
; demangled: glitch::gui::CGUITabControl::setTabHeight(int)
; decoder-mode: arm
005525c8  c1 1f c1 e1                                      bic r1, r1, r1, asr #31
005525cc  81 20 a0 e1                                      lsl r2, r1, #1
005525d0  7c 21 80 e5                                      str r2, [r0, #0x17c]
005525d4  6c 11 80 e5                                      str r1, [r0, #0x16c]
005525d8  cf ff ff ea                                      b #0x55251c

; FUNCTION 0x005525dc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl10scrollLeftEv
; demangled: glitch::gui::CGUITabControl::scrollLeft()
; decoder-mode: arm
005525dc  80 31 90 e5                                      ldr r3, [r0, #0x180]
005525e0  00 00 53 e3                                      cmp r3, #0
005525e4  01 30 43 c2                                      subgt r3, r3, #1
005525e8  80 31 80 c5                                      strgt r3, [r0, #0x180]
005525ec  ca ff ff ea                                      b #0x55251c

; FUNCTION 0x005525f0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl11scrollRightEv
; demangled: glitch::gui::CGUITabControl::scrollRight()
; decoder-mode: arm
005525f0  10 40 2d e9                                      push {r4, lr}
005525f4  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
005525f8  58 31 90 e5                                      ldr r3, [r0, #0x158]
005525fc  80 11 90 e5                                      ldr r1, [r0, #0x180]
00552600  00 40 a0 e1                                      mov r4, r0
00552604  02 30 63 e0                                      rsb r3, r3, r2
00552608  43 31 a0 e1                                      asr r3, r3, #2
0055260c  01 30 43 e2                                      sub r3, r3, #1
00552610  03 00 51 e1                                      cmp r1, r3
00552614  05 00 00 aa                                      bge #0x552630
00552618  01 20 a0 e3                                      mov r2, #1
0055261c  08 ff ff eb                                      bl #0x552244
00552620  00 00 50 e3                                      cmp r0, #0
00552624  80 31 94 15                                      ldrne r3, [r4, #0x180]
00552628  01 30 83 12                                      addne r3, r3, #1
0055262c  80 31 84 15                                      strne r3, [r4, #0x180]
00552630  04 00 a0 e1                                      mov r0, r4
00552634  10 40 bd e8                                      pop {r4, lr}
00552638  b7 ff ff ea                                      b #0x55251c

; FUNCTION 0x0055263c, declared_size=452, range_size=452, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl23setTabVerticalAlignmentENS0_14EGUI_ALIGNMENTE
; demangled: glitch::gui::CGUITabControl::setTabVerticalAlignment(glitch::gui::EGUI_ALIGNMENT)
; decoder-mode: arm
0055263c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00552640  50 31 90 e5                                      ldr r3, [r0, #0x150]
00552644  70 11 80 e5                                      str r1, [r0, #0x170]
00552648  2c d0 4d e2                                      sub sp, sp, #0x2c
0055264c  00 40 a0 e1                                      mov r4, r0
00552650  03 00 a0 e1                                      mov r0, r3
00552654  00 30 93 e5                                      ldr r3, [r3]
00552658  0f e0 a0 e1                                      mov lr, pc
0055265c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00552660  00 30 50 e2                                      subs r3, r0, #0
00552664  5f 00 00 0a                                      beq #0x5527e8
00552668  00 30 93 e5                                      ldr r3, [r3]
0055266c  02 10 a0 e3                                      mov r1, #2
00552670  0f e0 a0 e1                                      mov lr, pc
00552674  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00552678  6c 81 94 e5                                      ldr r8, [r4, #0x16c]
0055267c  00 50 a0 e1                                      mov r5, r0
00552680  08 00 50 e1                                      cmp r0, r8
00552684  35 00 00 ca                                      bgt #0x552760
00552688  b5 f0 f6 eb                                      bl #0x30e964
0055268c  01 11 a0 e3                                      mov r1, #0x40000000
00552690  02 16 81 e2                                      add r1, r1, #0x200000
00552694  b4 f1 f6 eb                                      bl #0x30ed6c
00552698  8b ef f6 eb                                      bl #0x30e4cc
0055269c  a5 cf 85 e0                                      add ip, r5, r5, lsr #31
005526a0  01 a0 85 e2                                      add sl, r5, #1
005526a4  cc c0 a0 e1                                      asr ip, ip, #1
005526a8  00 c0 6c e2                                      rsb ip, ip, #0
005526ac  30 60 94 e5                                      ldr r6, [r4, #0x30]
005526b0  28 30 94 e5                                      ldr r3, [r4, #0x28]
005526b4  70 71 94 e5                                      ldr r7, [r4, #0x170]
005526b8  01 60 46 e2                                      sub r6, r6, #1
005526bc  06 60 63 e0                                      rsb r6, r3, r6
005526c0  00 00 57 e3                                      cmp r7, #0
005526c4  06 60 60 e0                                      rsb r6, r0, r6
005526c8  7c 01 84 e5                                      str r0, [r4, #0x17c]
005526cc  2f 00 00 1a                                      bne #0x552790
005526d0  01 10 a0 e3                                      mov r1, #1
005526d4  a8 8f 88 e0                                      add r8, r8, r8, lsr #31
005526d8  74 01 94 e5                                      ldr r0, [r4, #0x174]
005526dc  01 20 a0 e1                                      mov r2, r1
005526e0  07 30 a0 e1                                      mov r3, r7
005526e4  58 81 8c e0                                      add r8, ip, r8, asr r1
005526e8  00 70 8d e5                                      str r7, [sp]
005526ec  53 88 ff eb                                      bl #0x534840
005526f0  01 10 a0 e3                                      mov r1, #1
005526f4  78 01 94 e5                                      ldr r0, [r4, #0x178]
005526f8  07 30 a0 e1                                      mov r3, r7
005526fc  01 20 a0 e1                                      mov r2, r1
00552700  00 70 8d e5                                      str r7, [sp]
00552704  4d 88 ff eb                                      bl #0x534840
00552708  74 01 94 e5                                      ldr r0, [r4, #0x174]
0055270c  05 30 86 e0                                      add r3, r6, r5
00552710  05 70 88 e0                                      add r7, r8, r5
00552714  18 10 8d e2                                      add r1, sp, #0x18
00552718  18 60 8d e5                                      str r6, [sp, #0x18]
0055271c  0a 60 86 e0                                      add r6, r6, sl
00552720  20 30 8d e5                                      str r3, [sp, #0x20]
00552724  1c 80 8d e5                                      str r8, [sp, #0x1c]
00552728  24 70 8d e5                                      str r7, [sp, #0x24]
0055272c  05 50 86 e0                                      add r5, r6, r5
00552730  02 88 ff eb                                      bl #0x534740
00552734  78 01 94 e5                                      ldr r0, [r4, #0x178]
00552738  08 10 8d e2                                      add r1, sp, #8
0055273c  08 60 8d e5                                      str r6, [sp, #8]
00552740  0c 80 8d e5                                      str r8, [sp, #0xc]
00552744  10 50 8d e5                                      str r5, [sp, #0x10]
00552748  14 70 8d e5                                      str r7, [sp, #0x14]
0055274c  fb 87 ff eb                                      bl #0x534740
00552750  04 00 a0 e1                                      mov r0, r4
00552754  70 ff ff eb                                      bl #0x55251c
00552758  2c d0 8d e2                                      add sp, sp, #0x2c
0055275c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00552760  08 00 a0 e1                                      mov r0, r8
00552764  7e f0 f6 eb                                      bl #0x30e964
00552768  01 11 a0 e3                                      mov r1, #0x40000000
0055276c  02 16 81 e2                                      add r1, r1, #0x200000
00552770  7d f1 f6 eb                                      bl #0x30ed6c
00552774  54 ef f6 eb                                      bl #0x30e4cc
00552778  a8 cf 88 e0                                      add ip, r8, r8, lsr #31
0055277c  01 a0 88 e2                                      add sl, r8, #1
00552780  cc c0 a0 e1                                      asr ip, ip, #1
00552784  00 c0 6c e2                                      rsb ip, ip, #0
00552788  08 50 a0 e1                                      mov r5, r8
0055278c  c6 ff ff ea                                      b #0x5526ac
00552790  a8 8f 88 e0                                      add r8, r8, r8, lsr #31
00552794  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00552798  34 20 94 e5                                      ldr r2, [r4, #0x34]
0055279c  c8 30 a0 e1                                      asr r3, r8, #1
005527a0  00 30 63 e2                                      rsb r3, r3, #0
005527a4  01 70 a0 e3                                      mov r7, #1
005527a8  03 80 61 e0                                      rsb r8, r1, r3
005527ac  74 01 94 e5                                      ldr r0, [r4, #0x174]
005527b0  07 10 a0 e1                                      mov r1, r7
005527b4  07 30 a0 e1                                      mov r3, r7
005527b8  02 80 88 e0                                      add r8, r8, r2
005527bc  07 20 a0 e1                                      mov r2, r7
005527c0  0c 80 88 e0                                      add r8, r8, ip
005527c4  00 70 8d e5                                      str r7, [sp]
005527c8  1c 88 ff eb                                      bl #0x534840
005527cc  78 01 94 e5                                      ldr r0, [r4, #0x178]
005527d0  07 10 a0 e1                                      mov r1, r7
005527d4  07 20 a0 e1                                      mov r2, r7
005527d8  07 30 a0 e1                                      mov r3, r7
005527dc  00 70 8d e5                                      str r7, [sp]
005527e0  16 88 ff eb                                      bl #0x534840
005527e4  c7 ff ff ea                                      b #0x552708
005527e8  11 a0 a0 e3                                      mov sl, #0x11
005527ec  07 c0 e0 e3                                      mvn ip, #7
005527f0  28 00 a0 e3                                      mov r0, #0x28
005527f4  10 50 a0 e3                                      mov r5, #0x10
005527f8  6c 81 94 e5                                      ldr r8, [r4, #0x16c]
005527fc  aa ff ff ea                                      b #0x5526ac

; FUNCTION 0x00552800, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZNK6glitch3gui14CGUITabControl23getTabVerticalAlignmentEv
; demangled: glitch::gui::CGUITabControl::getTabVerticalAlignment() const
; decoder-mode: arm
00552800  70 01 90 e5                                      ldr r0, [r0, #0x170]
00552804  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552808, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZNK6glitch3gui14CGUITabControl12getActiveTabEv
; demangled: glitch::gui::CGUITabControl::getActiveTab() const
; decoder-mode: arm
00552808  64 01 90 e5                                      ldr r0, [r0, #0x164]
0055280c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00552810, declared_size=196, range_size=196, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl12setActiveTabEi
; demangled: glitch::gui::CGUITabControl::setActiveTab(int)
; decoder-mode: arm
00552810  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00552814  00 50 a0 e1                                      mov r5, r0
00552818  58 21 95 e5                                      ldr r2, [r5, #0x158]
0055281c  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00552820  1c d0 4d e2                                      sub sp, sp, #0x1c
00552824  01 60 a0 e1                                      mov r6, r1
00552828  00 30 62 e0                                      rsb r3, r2, r0
0055282c  43 01 51 e1                                      cmp r1, r3, asr #2
00552830  00 00 a0 23                                      movhs r0, #0
00552834  24 00 00 2a                                      bhs #0x5528cc
00552838  03 00 53 e3                                      cmp r3, #3
0055283c  64 71 95 e5                                      ldr r7, [r5, #0x164]
00552840  64 11 85 e5                                      str r1, [r5, #0x164]
00552844  11 00 00 da                                      ble #0x552890
00552848  00 40 a0 e3                                      mov r4, #0
0055284c  04 31 92 e7                                      ldr r3, [r2, r4, lsl #2]
00552850  00 00 53 e3                                      cmp r3, #0
00552854  09 00 00 0a                                      beq #0x552880
00552858  64 11 95 e5                                      ldr r1, [r5, #0x164]
0055285c  03 00 a0 e1                                      mov r0, r3
00552860  00 30 93 e5                                      ldr r3, [r3]
00552864  04 00 51 e1                                      cmp r1, r4
00552868  00 10 a0 13                                      movne r1, #0
0055286c  01 10 a0 03                                      moveq r1, #1
00552870  0f e0 a0 e1                                      mov lr, pc
00552874  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00552878  5c 01 95 e5                                      ldr r0, [r5, #0x15c]
0055287c  58 21 95 e5                                      ldr r2, [r5, #0x158]
00552880  01 40 84 e2                                      add r4, r4, #1
00552884  00 30 62 e0                                      rsb r3, r2, r0
00552888  43 01 54 e1                                      cmp r4, r3, asr #2
0055288c  ee ff ff ba                                      blt #0x55284c
00552890  07 00 56 e1                                      cmp r6, r7
00552894  0b 00 00 0a                                      beq #0x5528c8
00552898  24 30 95 e5                                      ldr r3, [r5, #0x24]
0055289c  00 20 a0 e3                                      mov r2, #0
005528a0  11 10 a0 e3                                      mov r1, #0x11
005528a4  10 10 8d e5                                      str r1, [sp, #0x10]
005528a8  0c 20 8d e5                                      str r2, [sp, #0xc]
005528ac  00 20 8d e5                                      str r2, [sp]
005528b0  08 50 8d e5                                      str r5, [sp, #8]
005528b4  03 00 a0 e1                                      mov r0, r3
005528b8  0d 10 a0 e1                                      mov r1, sp
005528bc  00 30 93 e5                                      ldr r3, [r3]
005528c0  0f e0 a0 e1                                      mov lr, pc
005528c4  08 f0 93 e5                                      ldr pc, [r3, #8]
005528c8  01 00 a0 e3                                      mov r0, #1
005528cc  1c d0 8d e2                                      add sp, sp, #0x1c
005528d0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005528d4, declared_size=112, range_size=112, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl12setActiveTabEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUITabControl::setActiveTab(glitch::gui::IGUIElement*)
; decoder-mode: arm
005528d4  10 40 2d e9                                      push {r4, lr}
005528d8  00 30 a0 e1                                      mov r3, r0
005528dc  5c 21 93 e5                                      ldr r2, [r3, #0x15c]
005528e0  58 01 90 e5                                      ldr r0, [r0, #0x158]
005528e4  02 20 60 e0                                      rsb r2, r0, r2
005528e8  42 41 a0 e1                                      asr r4, r2, #2
005528ec  00 00 54 e3                                      cmp r4, #0
005528f0  0b 00 00 da                                      ble #0x552924
005528f4  00 20 90 e5                                      ldr r2, [r0]
005528f8  01 00 52 e1                                      cmp r2, r1
005528fc  00 20 a0 03                                      moveq r2, #0
00552900  09 00 00 0a                                      beq #0x55292c
00552904  00 20 a0 e3                                      mov r2, #0
00552908  02 00 00 ea                                      b #0x552918
0055290c  02 c1 90 e7                                      ldr ip, [r0, r2, lsl #2]
00552910  01 00 5c e1                                      cmp ip, r1
00552914  04 00 00 0a                                      beq #0x55292c
00552918  01 20 82 e2                                      add r2, r2, #1
0055291c  04 00 52 e1                                      cmp r2, r4
00552920  f9 ff ff 1a                                      bne #0x55290c
00552924  00 00 a0 e3                                      mov r0, #0
00552928  10 80 bd e8                                      pop {r4, pc}
0055292c  03 00 a0 e1                                      mov r0, r3
00552930  02 10 a0 e1                                      mov r1, r2
00552934  00 30 93 e5                                      ldr r3, [r3]
00552938  0f e0 a0 e1                                      mov lr, pc
0055293c  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00552940  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00552944, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl22updateAbsolutePositionEv
; demangled: glitch::gui::CGUITabControl::updateAbsolutePosition()
; decoder-mode: arm
00552944  10 40 2d e9                                      push {r4, lr}
00552948  00 40 a0 e1                                      mov r4, r0
0055294c  f3 87 ff eb                                      bl #0x534920
00552950  04 00 a0 e1                                      mov r0, r4
00552954  10 40 bd e8                                      pop {r4, lr}
00552958  ef fe ff ea                                      b #0x55251c

; FUNCTION 0x0055295c, declared_size=228, range_size=228, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZNK6glitch3gui14CGUITabControl19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUITabControl::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0055295c  30 40 2d e9                                      push {r4, r5, lr}
00552960  0c d0 4d e2                                      sub sp, sp, #0xc
00552964  01 40 a0 e1                                      mov r4, r1
00552968  00 50 a0 e1                                      mov r5, r0
0055296c  d2 89 ff eb                                      bl #0x5350bc
00552970  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00552974  04 00 a0 e1                                      mov r0, r4
00552978  64 21 95 e5                                      ldr r2, [r5, #0x164]
0055297c  00 c0 94 e5                                      ldr ip, [r4]
00552980  01 10 8f e0                                      add r1, pc, r1
00552984  00 30 a0 e3                                      mov r3, #0
00552988  0f e0 a0 e1                                      mov lr, pc
0055298c  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00552990  94 10 9f e5                                      ldr r1, [pc, #0x94]
00552994  04 00 a0 e1                                      mov r0, r4
00552998  68 21 d5 e5                                      ldrb r2, [r5, #0x168]
0055299c  00 c0 94 e5                                      ldr ip, [r4]
005529a0  01 10 8f e0                                      add r1, pc, r1
005529a4  00 30 a0 e3                                      mov r3, #0
005529a8  0f e0 a0 e1                                      mov lr, pc
005529ac  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005529b0  78 10 9f e5                                      ldr r1, [pc, #0x78]
005529b4  04 00 a0 e1                                      mov r0, r4
005529b8  69 21 d5 e5                                      ldrb r2, [r5, #0x169]
005529bc  00 c0 94 e5                                      ldr ip, [r4]
005529c0  01 10 8f e0                                      add r1, pc, r1
005529c4  00 30 a0 e3                                      mov r3, #0
005529c8  0f e0 a0 e1                                      mov lr, pc
005529cc  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005529d0  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
005529d4  04 00 a0 e1                                      mov r0, r4
005529d8  6c 21 95 e5                                      ldr r2, [r5, #0x16c]
005529dc  00 c0 94 e5                                      ldr ip, [r4]
005529e0  01 10 8f e0                                      add r1, pc, r1
005529e4  00 30 a0 e3                                      mov r3, #0
005529e8  0f e0 a0 e1                                      mov lr, pc
005529ec  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005529f0  00 10 a0 e3                                      mov r1, #0
005529f4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
005529f8  70 21 95 e5                                      ldr r2, [r5, #0x170]
005529fc  00 10 8d e5                                      str r1, [sp]
00552a00  34 10 9f e5                                      ldr r1, [pc, #0x34]
00552a04  03 30 8f e0                                      add r3, pc, r3
00552a08  04 00 a0 e1                                      mov r0, r4
00552a0c  01 10 8f e0                                      add r1, pc, r1
00552a10  5c 30 83 e2                                      add r3, r3, #0x5c
00552a14  00 c0 94 e5                                      ldr ip, [r4]
00552a18  0f e0 a0 e1                                      mov lr, pc
00552a1c  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
00552a20  0c d0 8d e2                                      add sp, sp, #0xc
00552a24  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00552a28  b8 c1 38 00 48 bd 38 00 88 c1 38 00 78 c1 38 00  .byte 0xb8, 0xc1, 0x38, 0x00, 0x48, 0xbd, 0x38, 0x00, 0x88, 0xc1, 0x38, 0x00, 0x78, 0xc1, 0x38, 0x00
00552a38  90 47 40 00 5c c1 38 00                          .byte 0x90, 0x47, 0x40, 0x00, 0x5c, 0xc1, 0x38, 0x00

; FUNCTION 0x00552a60, declared_size=272, range_size=272, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl11removeChildEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUITabControl::removeChild(glitch::gui::IGUIElement*)
; decoder-mode: arm
00552a60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00552a64  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
00552a68  58 c1 90 e5                                      ldr ip, [r0, #0x158]
00552a6c  00 40 a0 e3                                      mov r4, #0
00552a70  00 50 a0 e1                                      mov r5, r0
00552a74  01 60 a0 e1                                      mov r6, r1
00552a78  03 30 6c e0                                      rsb r3, ip, r3
00552a7c  04 00 a0 e1                                      mov r0, r4
00552a80  04 00 00 ea                                      b #0x552a98
00552a84  04 21 9c e7                                      ldr r2, [ip, r4, lsl #2]
00552a88  04 71 a0 e1                                      lsl r7, r4, #2
00552a8c  06 00 52 e1                                      cmp r2, r6
00552a90  01 40 84 12                                      addne r4, r4, #1
00552a94  1b 00 00 0a                                      beq #0x552b08
00552a98  43 21 a0 e1                                      asr r2, r3, #2
00552a9c  02 00 54 e1                                      cmp r4, r2
00552aa0  f7 ff ff 3a                                      blo #0x552a84
00552aa4  00 00 50 e3                                      cmp r0, #0
00552aa8  10 00 00 0a                                      beq #0x552af0
00552aac  00 00 52 e3                                      cmp r2, #0
00552ab0  0e 00 00 0a                                      beq #0x552af0
00552ab4  00 40 a0 e3                                      mov r4, #0
00552ab8  04 31 9c e7                                      ldr r3, [ip, r4, lsl #2]
00552abc  04 10 a0 e1                                      mov r1, r4
00552ac0  01 40 84 e2                                      add r4, r4, #1
00552ac4  00 00 53 e3                                      cmp r3, #0
00552ac8  04 00 00 0a                                      beq #0x552ae0
00552acc  03 00 a0 e1                                      mov r0, r3
00552ad0  00 30 93 e5                                      ldr r3, [r3]
00552ad4  0f e0 a0 e1                                      mov lr, pc
00552ad8  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00552adc  58 c1 95 e5                                      ldr ip, [r5, #0x158]
00552ae0  5c 31 95 e5                                      ldr r3, [r5, #0x15c]
00552ae4  03 30 6c e0                                      rsb r3, ip, r3
00552ae8  43 01 54 e1                                      cmp r4, r3, asr #2
00552aec  f1 ff ff 3a                                      blo #0x552ab8
00552af0  05 00 a0 e1                                      mov r0, r5
00552af4  06 10 a0 e1                                      mov r1, r6
00552af8  84 8c ff eb                                      bl #0x535d10
00552afc  05 00 a0 e1                                      mov r0, r5
00552b00  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00552b04  84 fe ff ea                                      b #0x55251c
00552b08  00 30 96 e5                                      ldr r3, [r6]
00552b0c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00552b10  00 00 86 e0                                      add r0, r6, r0
00552b14  9a 2a f7 eb                                      bl #0x31d584
00552b18  58 c1 95 e5                                      ldr ip, [r5, #0x158]
00552b1c  5c 31 95 e5                                      ldr r3, [r5, #0x15c]
00552b20  07 00 8c e0                                      add r0, ip, r7
00552b24  04 10 80 e2                                      add r1, r0, #4
00552b28  03 00 51 e1                                      cmp r1, r3
00552b2c  02 00 00 0a                                      beq #0x552b3c
00552b30  01 20 53 e0                                      subs r2, r3, r1
00552b34  03 10 a0 01                                      moveq r1, r3
00552b38  04 00 00 1a                                      bne #0x552b50
00552b3c  04 30 41 e2                                      sub r3, r1, #4
00552b40  5c 31 85 e5                                      str r3, [r5, #0x15c]
00552b44  01 00 a0 e3                                      mov r0, #1
00552b48  03 30 6c e0                                      rsb r3, ip, r3
00552b4c  d1 ff ff ea                                      b #0x552a98
00552b50  f8 ec f6 eb                                      bl #0x30df38
00552b54  5c 11 95 e5                                      ldr r1, [r5, #0x15c]
00552b58  58 c1 95 e5                                      ldr ip, [r5, #0x158]
00552b5c  01 00 a0 e3                                      mov r0, #1
00552b60  04 30 41 e2                                      sub r3, r1, #4
00552b64  5c 31 85 e5                                      str r3, [r5, #0x15c]
00552b68  03 30 6c e0                                      rsb r3, ip, r3
00552b6c  c9 ff ff ea                                      b #0x552a98

; FUNCTION 0x00552f44, declared_size=1132, range_size=1132, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControlC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementERKNS_4core4rectIiEEbbi
; demangled: glitch::gui::CGUITabControl::CGUITabControl(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, glitch::core::rect<int> const&, bool, bool, int)
; decoder-mode: arm
00552f44  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00552f48  50 54 9f e5                                      ldr r5, [pc, #0x450]
00552f4c  50 c4 9f e5                                      ldr ip, [pc, #0x450]
00552f50  50 e4 9f e5                                      ldr lr, [pc, #0x450]
00552f54  05 50 8f e0                                      add r5, pc, r5
00552f58  0c c0 95 e7                                      ldr ip, [r5, ip]
00552f5c  0e e0 95 e7                                      ldr lr, [r5, lr]
00552f60  01 70 a0 e3                                      mov r7, #1
00552f64  24 60 9c e5                                      ldr r6, [ip, #0x24]
00552f68  08 e0 8e e2                                      add lr, lr, #8
00552f6c  90 71 80 e5                                      str r7, [r0, #0x190]
00552f70  88 61 80 e5                                      str r6, [r0, #0x188]
00552f74  8c e1 80 e5                                      str lr, [r0, #0x18c]
00552f78  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
00552f7c  28 70 9c e5                                      ldr r7, [ip, #0x28]
00552f80  62 6f 80 e2                                      add r6, r0, #0x188
00552f84  4c d0 4d e2                                      sub sp, sp, #0x4c
00552f88  0e 70 86 e7                                      str r7, [r6, lr]
00552f8c  01 80 a0 e1                                      mov r8, r1
00552f90  04 10 8c e2                                      add r1, ip, #4
00552f94  70 c0 9d e5                                      ldr ip, [sp, #0x70]
00552f98  0c e0 93 e5                                      ldr lr, [r3, #0xc]
00552f9c  00 70 93 e5                                      ldr r7, [r3]
00552fa0  40 04 93 e9                                      ldmib r3, {r6, sl}
00552fa4  02 30 a0 e1                                      mov r3, r2
00552fa8  00 c0 8d e5                                      str ip, [sp]
00552fac  08 20 a0 e1                                      mov r2, r8
00552fb0  34 c0 8d e2                                      add ip, sp, #0x34
00552fb4  00 40 a0 e1                                      mov r4, r0
00552fb8  34 70 8d e5                                      str r7, [sp, #0x34]
00552fbc  38 60 8d e5                                      str r6, [sp, #0x38]
00552fc0  6c 70 dd e5                                      ldrb r7, [sp, #0x6c]
00552fc4  40 e0 8d e5                                      str lr, [sp, #0x40]
00552fc8  04 c0 8d e5                                      str ip, [sp, #4]
00552fcc  68 60 dd e5                                      ldrb r6, [sp, #0x68]
00552fd0  3c a0 8d e5                                      str sl, [sp, #0x3c]
00552fd4  b9 ff ff eb                                      bl #0x552ec0
00552fd8  cc 03 9f e5                                      ldr r0, [pc, #0x3cc]
00552fdc  50 31 94 e5                                      ldr r3, [r4, #0x150]
00552fe0  00 20 a0 e3                                      mov r2, #0
00552fe4  00 00 95 e7                                      ldr r0, [r5, r0]
00552fe8  00 10 e0 e3                                      mvn r1, #0
00552fec  68 71 c4 e5                                      strb r7, [r4, #0x168]
00552ff0  f8 c0 80 e2                                      add ip, r0, #0xf8
00552ff4  10 e0 80 e2                                      add lr, r0, #0x10
00552ff8  d8 00 80 e2                                      add r0, r0, #0xd8
00552ffc  88 01 84 e5                                      str r0, [r4, #0x188]
00553000  14 00 a0 e3                                      mov r0, #0x14
00553004  84 01 84 e5                                      str r0, [r4, #0x184]
00553008  00 e0 84 e5                                      str lr, [r4]
0055300c  8c c1 84 e5                                      str ip, [r4, #0x18c]
00553010  69 61 c4 e5                                      strb r6, [r4, #0x169]
00553014  80 21 84 e5                                      str r2, [r4, #0x180]
00553018  47 10 cd e5                                      strb r1, [sp, #0x47]
0055301c  58 21 84 e5                                      str r2, [r4, #0x158]
00553020  5c 21 84 e5                                      str r2, [r4, #0x15c]
00553024  60 21 84 e5                                      str r2, [r4, #0x160]
00553028  64 11 84 e5                                      str r1, [r4, #0x164]
0055302c  6a 21 c4 e5                                      strb r2, [r4, #0x16a]
00553030  6c 21 84 e5                                      str r2, [r4, #0x16c]
00553034  70 21 84 e5                                      str r2, [r4, #0x170]
00553038  74 21 84 e5                                      str r2, [r4, #0x174]
0055303c  78 21 84 e5                                      str r2, [r4, #0x178]
00553040  7c 21 84 e5                                      str r2, [r4, #0x17c]
00553044  44 10 cd e5                                      strb r1, [sp, #0x44]
00553048  45 10 cd e5                                      strb r1, [sp, #0x45]
0055304c  46 10 cd e5                                      strb r1, [sp, #0x46]
00553050  03 00 a0 e1                                      mov r0, r3
00553054  00 30 93 e5                                      ldr r3, [r3]
00553058  0f e0 a0 e1                                      mov lr, pc
0055305c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00553060  20 30 a0 e3                                      mov r3, #0x20
00553064  00 50 50 e2                                      subs r5, r0, #0
00553068  6c 31 84 e5                                      str r3, [r4, #0x16c]
0055306c  05 70 a0 01                                      moveq r7, r5
00553070  18 00 00 0a                                      beq #0x5530d8
00553074  00 30 95 e5                                      ldr r3, [r5]
00553078  0f e0 a0 e1                                      mov lr, pc
0055307c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00553080  12 10 a0 e3                                      mov r1, #0x12
00553084  00 30 95 e5                                      ldr r3, [r5]
00553088  00 70 a0 e1                                      mov r7, r0
0055308c  05 00 a0 e1                                      mov r0, r5
00553090  0f e0 a0 e1                                      mov lr, pc
00553094  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00553098  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0055309c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005530a0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005530a4  09 10 cd e5                                      strb r1, [sp, #9]
005530a8  08 00 cd e5                                      strb r0, [sp, #8]
005530ac  0a 20 cd e5                                      strb r2, [sp, #0xa]
005530b0  0b 30 cd e5                                      strb r3, [sp, #0xb]
005530b4  08 30 9d e5                                      ldr r3, [sp, #8]
005530b8  05 00 a0 e1                                      mov r0, r5
005530bc  07 10 a0 e3                                      mov r1, #7
005530c0  44 30 8d e5                                      str r3, [sp, #0x44]
005530c4  00 30 95 e5                                      ldr r3, [r5]
005530c8  0f e0 a0 e1                                      mov lr, pc
005530cc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005530d0  02 00 80 e2                                      add r0, r0, #2
005530d4  6c 01 84 e5                                      str r0, [r4, #0x16c]
005530d8  50 01 94 e5                                      ldr r0, [r4, #0x150]
005530dc  00 60 a0 e3                                      mov r6, #0
005530e0  0a 30 a0 e3                                      mov r3, #0xa
005530e4  00 20 90 e5                                      ldr r2, [r0]
005530e8  24 10 8d e2                                      add r1, sp, #0x24
005530ec  78 c0 92 e5                                      ldr ip, [r2, #0x78]
005530f0  30 30 8d e5                                      str r3, [sp, #0x30]
005530f4  2c 30 8d e5                                      str r3, [sp, #0x2c]
005530f8  24 60 8d e5                                      str r6, [sp, #0x24]
005530fc  28 60 8d e5                                      str r6, [sp, #0x28]
00553100  00 60 8d e5                                      str r6, [sp]
00553104  04 60 8d e5                                      str r6, [sp, #4]
00553108  04 20 a0 e1                                      mov r2, r4
0055310c  00 30 e0 e3                                      mvn r3, #0
00553110  3c ff 2f e1                                      blx ip
00553114  06 00 50 e1                                      cmp r0, r6
00553118  74 01 84 e5                                      str r0, [r4, #0x174]
0055311c  43 00 00 0a                                      beq #0x553230
00553120  00 30 90 e5                                      ldr r3, [r0]
00553124  07 10 a0 e1                                      mov r1, r7
00553128  0f e0 a0 e1                                      mov lr, pc
0055312c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00553130  74 a1 94 e5                                      ldr sl, [r4, #0x174]
00553134  07 10 a0 e3                                      mov r1, #7
00553138  00 30 95 e5                                      ldr r3, [r5]
0055313c  00 20 9a e5                                      ldr r2, [sl]
00553140  05 00 a0 e1                                      mov r0, r5
00553144  94 80 92 e5                                      ldr r8, [r2, #0x94]
00553148  0f e0 a0 e1                                      mov lr, pc
0055314c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00553150  06 10 a0 e1                                      mov r1, r6
00553154  00 20 a0 e1                                      mov r2, r0
00553158  00 60 8d e5                                      str r6, [sp]
0055315c  0a 00 a0 e1                                      mov r0, sl
00553160  44 30 9d e5                                      ldr r3, [sp, #0x44]
00553164  38 ff 2f e1                                      blx r8
00553168  74 a1 94 e5                                      ldr sl, [r4, #0x174]
0055316c  07 10 a0 e3                                      mov r1, #7
00553170  00 30 95 e5                                      ldr r3, [r5]
00553174  00 20 9a e5                                      ldr r2, [sl]
00553178  05 00 a0 e1                                      mov r0, r5
0055317c  94 80 92 e5                                      ldr r8, [r2, #0x94]
00553180  0f e0 a0 e1                                      mov lr, pc
00553184  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00553188  00 60 8d e5                                      str r6, [sp]
0055318c  00 20 a0 e1                                      mov r2, r0
00553190  44 30 9d e5                                      ldr r3, [sp, #0x44]
00553194  0a 00 a0 e1                                      mov r0, sl
00553198  01 10 a0 e3                                      mov r1, #1
0055319c  38 ff 2f e1                                      blx r8
005531a0  74 31 94 e5                                      ldr r3, [r4, #0x174]
005531a4  06 10 a0 e1                                      mov r1, r6
005531a8  03 00 a0 e1                                      mov r0, r3
005531ac  00 30 93 e5                                      ldr r3, [r3]
005531b0  0f e0 a0 e1                                      mov lr, pc
005531b4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005531b8  74 31 94 e5                                      ldr r3, [r4, #0x174]
005531bc  01 10 a0 e3                                      mov r1, #1
005531c0  03 00 a0 e1                                      mov r0, r3
005531c4  00 30 93 e5                                      ldr r3, [r3]
005531c8  0f e0 a0 e1                                      mov lr, pc
005531cc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005531d0  01 10 a0 e3                                      mov r1, #1
005531d4  01 20 a0 e1                                      mov r2, r1
005531d8  74 01 94 e5                                      ldr r0, [r4, #0x174]
005531dc  06 30 a0 e1                                      mov r3, r6
005531e0  00 60 8d e5                                      str r6, [sp]
005531e4  95 85 ff eb                                      bl #0x534840
005531e8  74 81 94 e5                                      ldr r8, [r4, #0x174]
005531ec  50 31 94 e5                                      ldr r3, [r4, #0x150]
005531f0  00 20 98 e5                                      ldr r2, [r8]
005531f4  03 00 a0 e1                                      mov r0, r3
005531f8  00 30 93 e5                                      ldr r3, [r3]
005531fc  7c 60 92 e5                                      ldr r6, [r2, #0x7c]
00553200  0f e0 a0 e1                                      mov lr, pc
00553204  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00553208  00 10 a0 e1                                      mov r1, r0
0055320c  08 00 a0 e1                                      mov r0, r8
00553210  36 ff 2f e1                                      blx r6
00553214  74 31 94 e5                                      ldr r3, [r4, #0x174]
00553218  00 20 93 e5                                      ldr r2, [r3]
0055321c  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00553220  02 30 83 e0                                      add r3, r3, r2
00553224  04 20 93 e5                                      ldr r2, [r3, #4]
00553228  01 20 82 e2                                      add r2, r2, #1
0055322c  04 20 83 e5                                      str r2, [r3, #4]
00553230  50 01 94 e5                                      ldr r0, [r4, #0x150]
00553234  00 60 a0 e3                                      mov r6, #0
00553238  0a 30 a0 e3                                      mov r3, #0xa
0055323c  00 20 90 e5                                      ldr r2, [r0]
00553240  14 10 8d e2                                      add r1, sp, #0x14
00553244  78 c0 92 e5                                      ldr ip, [r2, #0x78]
00553248  20 30 8d e5                                      str r3, [sp, #0x20]
0055324c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00553250  14 60 8d e5                                      str r6, [sp, #0x14]
00553254  18 60 8d e5                                      str r6, [sp, #0x18]
00553258  00 60 8d e5                                      str r6, [sp]
0055325c  04 60 8d e5                                      str r6, [sp, #4]
00553260  04 20 a0 e1                                      mov r2, r4
00553264  00 30 e0 e3                                      mvn r3, #0
00553268  3c ff 2f e1                                      blx ip
0055326c  06 00 50 e1                                      cmp r0, r6
00553270  78 01 84 e5                                      str r0, [r4, #0x178]
00553274  43 00 00 0a                                      beq #0x553388
00553278  07 10 a0 e1                                      mov r1, r7
0055327c  00 30 90 e5                                      ldr r3, [r0]
00553280  0f e0 a0 e1                                      mov lr, pc
00553284  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00553288  78 81 94 e5                                      ldr r8, [r4, #0x178]
0055328c  00 30 95 e5                                      ldr r3, [r5]
00553290  08 10 a0 e3                                      mov r1, #8
00553294  00 20 98 e5                                      ldr r2, [r8]
00553298  05 00 a0 e1                                      mov r0, r5
0055329c  94 70 92 e5                                      ldr r7, [r2, #0x94]
005532a0  0f e0 a0 e1                                      mov lr, pc
005532a4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005532a8  06 10 a0 e1                                      mov r1, r6
005532ac  00 20 a0 e1                                      mov r2, r0
005532b0  00 60 8d e5                                      str r6, [sp]
005532b4  08 00 a0 e1                                      mov r0, r8
005532b8  44 30 9d e5                                      ldr r3, [sp, #0x44]
005532bc  37 ff 2f e1                                      blx r7
005532c0  78 71 94 e5                                      ldr r7, [r4, #0x178]
005532c4  00 30 95 e5                                      ldr r3, [r5]
005532c8  05 00 a0 e1                                      mov r0, r5
005532cc  00 20 97 e5                                      ldr r2, [r7]
005532d0  08 10 a0 e3                                      mov r1, #8
005532d4  94 50 92 e5                                      ldr r5, [r2, #0x94]
005532d8  0f e0 a0 e1                                      mov lr, pc
005532dc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005532e0  00 60 8d e5                                      str r6, [sp]
005532e4  00 20 a0 e1                                      mov r2, r0
005532e8  44 30 9d e5                                      ldr r3, [sp, #0x44]
005532ec  07 00 a0 e1                                      mov r0, r7
005532f0  01 10 a0 e3                                      mov r1, #1
005532f4  35 ff 2f e1                                      blx r5
005532f8  78 31 94 e5                                      ldr r3, [r4, #0x178]
005532fc  06 10 a0 e1                                      mov r1, r6
00553300  03 00 a0 e1                                      mov r0, r3
00553304  00 30 93 e5                                      ldr r3, [r3]
00553308  0f e0 a0 e1                                      mov lr, pc
0055330c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00553310  78 31 94 e5                                      ldr r3, [r4, #0x178]
00553314  01 10 a0 e3                                      mov r1, #1
00553318  03 00 a0 e1                                      mov r0, r3
0055331c  00 30 93 e5                                      ldr r3, [r3]
00553320  0f e0 a0 e1                                      mov lr, pc
00553324  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00553328  01 10 a0 e3                                      mov r1, #1
0055332c  01 20 a0 e1                                      mov r2, r1
00553330  78 01 94 e5                                      ldr r0, [r4, #0x178]
00553334  06 30 a0 e1                                      mov r3, r6
00553338  00 60 8d e5                                      str r6, [sp]
0055333c  3f 85 ff eb                                      bl #0x534840
00553340  78 61 94 e5                                      ldr r6, [r4, #0x178]
00553344  50 31 94 e5                                      ldr r3, [r4, #0x150]
00553348  00 20 96 e5                                      ldr r2, [r6]
0055334c  03 00 a0 e1                                      mov r0, r3
00553350  00 30 93 e5                                      ldr r3, [r3]
00553354  7c 50 92 e5                                      ldr r5, [r2, #0x7c]
00553358  0f e0 a0 e1                                      mov lr, pc
0055335c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00553360  00 10 a0 e1                                      mov r1, r0
00553364  06 00 a0 e1                                      mov r0, r6
00553368  35 ff 2f e1                                      blx r5
0055336c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00553370  00 20 93 e5                                      ldr r2, [r3]
00553374  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00553378  02 30 83 e0                                      add r3, r3, r2
0055337c  04 20 93 e5                                      ldr r2, [r3, #4]
00553380  01 20 82 e2                                      add r2, r2, #1
00553384  04 20 83 e5                                      str r2, [r3, #4]
00553388  04 00 a0 e1                                      mov r0, r4
0055338c  00 10 a0 e3                                      mov r1, #0
00553390  a9 fc ff eb                                      bl #0x55263c
00553394  04 00 a0 e1                                      mov r0, r4
00553398  4c d0 8d e2                                      add sp, sp, #0x4c
0055339c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
005533a0  3c 1b 44 00 74 0f 00 00 44 2b 00 00 54 39 00 00  .byte 0x3c, 0x1b, 0x44, 0x00, 0x74, 0x0f, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x54, 0x39, 0x00, 0x00

; FUNCTION 0x005533b0, declared_size=1052, range_size=1052, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControlC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementERKNS_4core4rectIiEEbbi
; demangled: glitch::gui::CGUITabControl::CGUITabControl(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, glitch::core::rect<int> const&, bool, bool, int)
; decoder-mode: arm
005533b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005533b4  4c d0 4d e2                                      sub sp, sp, #0x4c
005533b8  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005533bc  01 50 a0 e1                                      mov r5, r1
005533c0  04 10 81 e2                                      add r1, r1, #4
005533c4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
005533c8  00 60 9c e5                                      ldr r6, [ip]
005533cc  10 10 9c e9                                      ldmib ip, {r4, ip}
005533d0  70 70 dd e5                                      ldrb r7, [sp, #0x70]
005533d4  34 60 8d e5                                      str r6, [sp, #0x34]
005533d8  3c c0 8d e5                                      str ip, [sp, #0x3c]
005533dc  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005533e0  38 40 8d e5                                      str r4, [sp, #0x38]
005533e4  40 e0 8d e5                                      str lr, [sp, #0x40]
005533e8  00 c0 8d e5                                      str ip, [sp]
005533ec  34 c0 8d e2                                      add ip, sp, #0x34
005533f0  00 40 a0 e1                                      mov r4, r0
005533f4  04 c0 8d e5                                      str ip, [sp, #4]
005533f8  6c 60 dd e5                                      ldrb r6, [sp, #0x6c]
005533fc  af fe ff eb                                      bl #0x552ec0
00553400  00 30 95 e5                                      ldr r3, [r5]
00553404  00 10 e0 e3                                      mvn r1, #0
00553408  00 20 a0 e3                                      mov r2, #0
0055340c  00 30 84 e5                                      str r3, [r4]
00553410  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00553414  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00553418  03 00 84 e7                                      str r0, [r4, r3]
0055341c  00 30 94 e5                                      ldr r3, [r4]
00553420  20 00 95 e5                                      ldr r0, [r5, #0x20]
00553424  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00553428  47 10 cd e5                                      strb r1, [sp, #0x47]
0055342c  44 10 cd e5                                      strb r1, [sp, #0x44]
00553430  03 00 84 e7                                      str r0, [r4, r3]
00553434  50 31 94 e5                                      ldr r3, [r4, #0x150]
00553438  14 00 a0 e3                                      mov r0, #0x14
0055343c  68 71 c4 e5                                      strb r7, [r4, #0x168]
00553440  84 01 84 e5                                      str r0, [r4, #0x184]
00553444  69 61 c4 e5                                      strb r6, [r4, #0x169]
00553448  80 21 84 e5                                      str r2, [r4, #0x180]
0055344c  58 21 84 e5                                      str r2, [r4, #0x158]
00553450  5c 21 84 e5                                      str r2, [r4, #0x15c]
00553454  60 21 84 e5                                      str r2, [r4, #0x160]
00553458  64 11 84 e5                                      str r1, [r4, #0x164]
0055345c  6a 21 c4 e5                                      strb r2, [r4, #0x16a]
00553460  6c 21 84 e5                                      str r2, [r4, #0x16c]
00553464  70 21 84 e5                                      str r2, [r4, #0x170]
00553468  74 21 84 e5                                      str r2, [r4, #0x174]
0055346c  78 21 84 e5                                      str r2, [r4, #0x178]
00553470  7c 21 84 e5                                      str r2, [r4, #0x17c]
00553474  45 10 cd e5                                      strb r1, [sp, #0x45]
00553478  46 10 cd e5                                      strb r1, [sp, #0x46]
0055347c  03 00 a0 e1                                      mov r0, r3
00553480  00 30 93 e5                                      ldr r3, [r3]
00553484  0f e0 a0 e1                                      mov lr, pc
00553488  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055348c  20 30 a0 e3                                      mov r3, #0x20
00553490  00 50 50 e2                                      subs r5, r0, #0
00553494  6c 31 84 e5                                      str r3, [r4, #0x16c]
00553498  05 70 a0 01                                      moveq r7, r5
0055349c  18 00 00 0a                                      beq #0x553504
005534a0  00 30 95 e5                                      ldr r3, [r5]
005534a4  0f e0 a0 e1                                      mov lr, pc
005534a8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005534ac  12 10 a0 e3                                      mov r1, #0x12
005534b0  00 30 95 e5                                      ldr r3, [r5]
005534b4  00 70 a0 e1                                      mov r7, r0
005534b8  05 00 a0 e1                                      mov r0, r5
005534bc  0f e0 a0 e1                                      mov lr, pc
005534c0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005534c4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005534c8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005534cc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005534d0  09 10 cd e5                                      strb r1, [sp, #9]
005534d4  08 00 cd e5                                      strb r0, [sp, #8]
005534d8  0a 20 cd e5                                      strb r2, [sp, #0xa]
005534dc  0b 30 cd e5                                      strb r3, [sp, #0xb]
005534e0  08 30 9d e5                                      ldr r3, [sp, #8]
005534e4  05 00 a0 e1                                      mov r0, r5
005534e8  07 10 a0 e3                                      mov r1, #7
005534ec  44 30 8d e5                                      str r3, [sp, #0x44]
005534f0  00 30 95 e5                                      ldr r3, [r5]
005534f4  0f e0 a0 e1                                      mov lr, pc
005534f8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005534fc  02 00 80 e2                                      add r0, r0, #2
00553500  6c 01 84 e5                                      str r0, [r4, #0x16c]
00553504  50 01 94 e5                                      ldr r0, [r4, #0x150]
00553508  00 60 a0 e3                                      mov r6, #0
0055350c  0a 30 a0 e3                                      mov r3, #0xa
00553510  00 20 90 e5                                      ldr r2, [r0]
00553514  24 10 8d e2                                      add r1, sp, #0x24
00553518  78 c0 92 e5                                      ldr ip, [r2, #0x78]
0055351c  30 30 8d e5                                      str r3, [sp, #0x30]
00553520  2c 30 8d e5                                      str r3, [sp, #0x2c]
00553524  24 60 8d e5                                      str r6, [sp, #0x24]
00553528  28 60 8d e5                                      str r6, [sp, #0x28]
0055352c  00 60 8d e5                                      str r6, [sp]
00553530  04 60 8d e5                                      str r6, [sp, #4]
00553534  04 20 a0 e1                                      mov r2, r4
00553538  00 30 e0 e3                                      mvn r3, #0
0055353c  3c ff 2f e1                                      blx ip
00553540  06 00 50 e1                                      cmp r0, r6
00553544  74 01 84 e5                                      str r0, [r4, #0x174]
00553548  43 00 00 0a                                      beq #0x55365c
0055354c  00 30 90 e5                                      ldr r3, [r0]
00553550  07 10 a0 e1                                      mov r1, r7
00553554  0f e0 a0 e1                                      mov lr, pc
00553558  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0055355c  74 a1 94 e5                                      ldr sl, [r4, #0x174]
00553560  07 10 a0 e3                                      mov r1, #7
00553564  00 30 95 e5                                      ldr r3, [r5]
00553568  00 20 9a e5                                      ldr r2, [sl]
0055356c  05 00 a0 e1                                      mov r0, r5
00553570  94 80 92 e5                                      ldr r8, [r2, #0x94]
00553574  0f e0 a0 e1                                      mov lr, pc
00553578  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055357c  06 10 a0 e1                                      mov r1, r6
00553580  00 20 a0 e1                                      mov r2, r0
00553584  00 60 8d e5                                      str r6, [sp]
00553588  0a 00 a0 e1                                      mov r0, sl
0055358c  44 30 9d e5                                      ldr r3, [sp, #0x44]
00553590  38 ff 2f e1                                      blx r8
00553594  74 a1 94 e5                                      ldr sl, [r4, #0x174]
00553598  07 10 a0 e3                                      mov r1, #7
0055359c  00 30 95 e5                                      ldr r3, [r5]
005535a0  00 20 9a e5                                      ldr r2, [sl]
005535a4  05 00 a0 e1                                      mov r0, r5
005535a8  94 80 92 e5                                      ldr r8, [r2, #0x94]
005535ac  0f e0 a0 e1                                      mov lr, pc
005535b0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005535b4  00 60 8d e5                                      str r6, [sp]
005535b8  00 20 a0 e1                                      mov r2, r0
005535bc  44 30 9d e5                                      ldr r3, [sp, #0x44]
005535c0  0a 00 a0 e1                                      mov r0, sl
005535c4  01 10 a0 e3                                      mov r1, #1
005535c8  38 ff 2f e1                                      blx r8
005535cc  74 31 94 e5                                      ldr r3, [r4, #0x174]
005535d0  06 10 a0 e1                                      mov r1, r6
005535d4  03 00 a0 e1                                      mov r0, r3
005535d8  00 30 93 e5                                      ldr r3, [r3]
005535dc  0f e0 a0 e1                                      mov lr, pc
005535e0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005535e4  74 31 94 e5                                      ldr r3, [r4, #0x174]
005535e8  01 10 a0 e3                                      mov r1, #1
005535ec  03 00 a0 e1                                      mov r0, r3
005535f0  00 30 93 e5                                      ldr r3, [r3]
005535f4  0f e0 a0 e1                                      mov lr, pc
005535f8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005535fc  01 10 a0 e3                                      mov r1, #1
00553600  01 20 a0 e1                                      mov r2, r1
00553604  74 01 94 e5                                      ldr r0, [r4, #0x174]
00553608  06 30 a0 e1                                      mov r3, r6
0055360c  00 60 8d e5                                      str r6, [sp]
00553610  8a 84 ff eb                                      bl #0x534840
00553614  74 81 94 e5                                      ldr r8, [r4, #0x174]
00553618  50 31 94 e5                                      ldr r3, [r4, #0x150]
0055361c  00 20 98 e5                                      ldr r2, [r8]
00553620  03 00 a0 e1                                      mov r0, r3
00553624  00 30 93 e5                                      ldr r3, [r3]
00553628  7c 60 92 e5                                      ldr r6, [r2, #0x7c]
0055362c  0f e0 a0 e1                                      mov lr, pc
00553630  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00553634  00 10 a0 e1                                      mov r1, r0
00553638  08 00 a0 e1                                      mov r0, r8
0055363c  36 ff 2f e1                                      blx r6
00553640  74 31 94 e5                                      ldr r3, [r4, #0x174]
00553644  00 20 93 e5                                      ldr r2, [r3]
00553648  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0055364c  02 30 83 e0                                      add r3, r3, r2
00553650  04 20 93 e5                                      ldr r2, [r3, #4]
00553654  01 20 82 e2                                      add r2, r2, #1
00553658  04 20 83 e5                                      str r2, [r3, #4]
0055365c  50 01 94 e5                                      ldr r0, [r4, #0x150]
00553660  00 60 a0 e3                                      mov r6, #0
00553664  0a 30 a0 e3                                      mov r3, #0xa
00553668  00 20 90 e5                                      ldr r2, [r0]
0055366c  14 10 8d e2                                      add r1, sp, #0x14
00553670  78 c0 92 e5                                      ldr ip, [r2, #0x78]
00553674  20 30 8d e5                                      str r3, [sp, #0x20]
00553678  1c 30 8d e5                                      str r3, [sp, #0x1c]
0055367c  14 60 8d e5                                      str r6, [sp, #0x14]
00553680  18 60 8d e5                                      str r6, [sp, #0x18]
00553684  00 60 8d e5                                      str r6, [sp]
00553688  04 60 8d e5                                      str r6, [sp, #4]
0055368c  04 20 a0 e1                                      mov r2, r4
00553690  00 30 e0 e3                                      mvn r3, #0
00553694  3c ff 2f e1                                      blx ip
00553698  06 00 50 e1                                      cmp r0, r6
0055369c  78 01 84 e5                                      str r0, [r4, #0x178]
005536a0  43 00 00 0a                                      beq #0x5537b4
005536a4  07 10 a0 e1                                      mov r1, r7
005536a8  00 30 90 e5                                      ldr r3, [r0]
005536ac  0f e0 a0 e1                                      mov lr, pc
005536b0  90 f0 93 e5                                      ldr pc, [r3, #0x90]
005536b4  78 81 94 e5                                      ldr r8, [r4, #0x178]
005536b8  00 30 95 e5                                      ldr r3, [r5]
005536bc  08 10 a0 e3                                      mov r1, #8
005536c0  00 20 98 e5                                      ldr r2, [r8]
005536c4  05 00 a0 e1                                      mov r0, r5
005536c8  94 70 92 e5                                      ldr r7, [r2, #0x94]
005536cc  0f e0 a0 e1                                      mov lr, pc
005536d0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005536d4  06 10 a0 e1                                      mov r1, r6
005536d8  00 20 a0 e1                                      mov r2, r0
005536dc  00 60 8d e5                                      str r6, [sp]
005536e0  08 00 a0 e1                                      mov r0, r8
005536e4  44 30 9d e5                                      ldr r3, [sp, #0x44]
005536e8  37 ff 2f e1                                      blx r7
005536ec  78 71 94 e5                                      ldr r7, [r4, #0x178]
005536f0  00 30 95 e5                                      ldr r3, [r5]
005536f4  05 00 a0 e1                                      mov r0, r5
005536f8  00 20 97 e5                                      ldr r2, [r7]
005536fc  08 10 a0 e3                                      mov r1, #8
00553700  94 50 92 e5                                      ldr r5, [r2, #0x94]
00553704  0f e0 a0 e1                                      mov lr, pc
00553708  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055370c  00 60 8d e5                                      str r6, [sp]
00553710  00 20 a0 e1                                      mov r2, r0
00553714  44 30 9d e5                                      ldr r3, [sp, #0x44]
00553718  07 00 a0 e1                                      mov r0, r7
0055371c  01 10 a0 e3                                      mov r1, #1
00553720  35 ff 2f e1                                      blx r5
00553724  78 31 94 e5                                      ldr r3, [r4, #0x178]
00553728  06 10 a0 e1                                      mov r1, r6
0055372c  03 00 a0 e1                                      mov r0, r3
00553730  00 30 93 e5                                      ldr r3, [r3]
00553734  0f e0 a0 e1                                      mov lr, pc
00553738  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0055373c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00553740  01 10 a0 e3                                      mov r1, #1
00553744  03 00 a0 e1                                      mov r0, r3
00553748  00 30 93 e5                                      ldr r3, [r3]
0055374c  0f e0 a0 e1                                      mov lr, pc
00553750  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00553754  01 10 a0 e3                                      mov r1, #1
00553758  01 20 a0 e1                                      mov r2, r1
0055375c  78 01 94 e5                                      ldr r0, [r4, #0x178]
00553760  06 30 a0 e1                                      mov r3, r6
00553764  00 60 8d e5                                      str r6, [sp]
00553768  34 84 ff eb                                      bl #0x534840
0055376c  78 61 94 e5                                      ldr r6, [r4, #0x178]
00553770  50 31 94 e5                                      ldr r3, [r4, #0x150]
00553774  00 20 96 e5                                      ldr r2, [r6]
00553778  03 00 a0 e1                                      mov r0, r3
0055377c  00 30 93 e5                                      ldr r3, [r3]
00553780  7c 50 92 e5                                      ldr r5, [r2, #0x7c]
00553784  0f e0 a0 e1                                      mov lr, pc
00553788  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0055378c  00 10 a0 e1                                      mov r1, r0
00553790  06 00 a0 e1                                      mov r0, r6
00553794  35 ff 2f e1                                      blx r5
00553798  78 31 94 e5                                      ldr r3, [r4, #0x178]
0055379c  00 20 93 e5                                      ldr r2, [r3]
005537a0  10 20 12 e5                                      ldr r2, [r2, #-0x10]
005537a4  02 30 83 e0                                      add r3, r3, r2
005537a8  04 20 93 e5                                      ldr r2, [r3, #4]
005537ac  01 20 82 e2                                      add r2, r2, #1
005537b0  04 20 83 e5                                      str r2, [r3, #4]
005537b4  04 00 a0 e1                                      mov r0, r4
005537b8  00 10 a0 e3                                      mov r1, #0
005537bc  9e fb ff eb                                      bl #0x55263c
005537c0  04 00 a0 e1                                      mov r0, r4
005537c4  4c d0 8d e2                                      add sp, sp, #0x4c
005537c8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00553a94, declared_size=528, range_size=528, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl6addTabEPNS0_7CGUITabE
; demangled: glitch::gui::CGUITabControl::addTab(glitch::gui::CGUITab*)
; decoder-mode: arm
00553a94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00553a98  00 50 51 e2                                      subs r5, r1, #0
00553a9c  08 d0 4d e2                                      sub sp, sp, #8
00553aa0  00 40 a0 e1                                      mov r4, r0
00553aa4  69 00 00 0a                                      beq #0x553c50
00553aa8  58 11 90 e5                                      ldr r1, [r0, #0x158]
00553aac  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00553ab0  00 00 61 e0                                      rsb r0, r1, r0
00553ab4  40 01 b0 e1                                      asrs r0, r0, #2
00553ab8  0a 00 00 0a                                      beq #0x553ae8
00553abc  00 30 91 e5                                      ldr r3, [r1]
00553ac0  03 00 55 e1                                      cmp r5, r3
00553ac4  00 30 a0 13                                      movne r3, #0
00553ac8  03 00 00 1a                                      bne #0x553adc
00553acc  5f 00 00 ea                                      b #0x553c50
00553ad0  03 21 91 e7                                      ldr r2, [r1, r3, lsl #2]
00553ad4  02 00 55 e1                                      cmp r5, r2
00553ad8  5c 00 00 0a                                      beq #0x553c50
00553adc  01 30 83 e2                                      add r3, r3, #1
00553ae0  00 00 53 e1                                      cmp r3, r0
00553ae4  f9 ff ff 1a                                      bne #0x553ad0
00553ae8  00 30 95 e5                                      ldr r3, [r5]
00553aec  05 00 a0 e1                                      mov r0, r5
00553af0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00553af4  03 30 85 e0                                      add r3, r5, r3
00553af8  04 20 93 e5                                      ldr r2, [r3, #4]
00553afc  01 20 82 e2                                      add r2, r2, #1
00553b00  04 20 83 e5                                      str r2, [r3, #4]
00553b04  00 30 95 e5                                      ldr r3, [r5]
00553b08  0f e0 a0 e1                                      mov lr, pc
00553b0c  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00553b10  01 00 70 e3                                      cmn r0, #1
00553b14  55 00 00 0a                                      beq #0x553c70
00553b18  56 7f 84 e2                                      add r7, r4, #0x158
00553b1c  00 60 a0 e3                                      mov r6, #0
00553b20  04 80 8d e2                                      add r8, sp, #4
00553b24  03 00 00 ea                                      b #0x553b38
00553b28  00 60 81 e5                                      str r6, [r1]
00553b2c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00553b30  04 30 83 e2                                      add r3, r3, #4
00553b34  5c 31 84 e5                                      str r3, [r4, #0x15c]
00553b38  00 30 95 e5                                      ldr r3, [r5]
00553b3c  05 00 a0 e1                                      mov r0, r5
00553b40  0f e0 a0 e1                                      mov lr, pc
00553b44  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00553b48  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00553b4c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00553b50  01 30 63 e0                                      rsb r3, r3, r1
00553b54  43 01 50 e1                                      cmp r0, r3, asr #2
00553b58  07 00 00 ba                                      blt #0x553b7c
00553b5c  60 31 94 e5                                      ldr r3, [r4, #0x160]
00553b60  04 60 8d e5                                      str r6, [sp, #4]
00553b64  03 00 51 e1                                      cmp r1, r3
00553b68  ee ff ff 1a                                      bne #0x553b28
00553b6c  07 00 a0 e1                                      mov r0, r7
00553b70  08 20 a0 e1                                      mov r2, r8
00553b74  fd fb ff eb                                      bl #0x552b70
00553b78  ee ff ff ea                                      b #0x553b38
00553b7c  00 30 95 e5                                      ldr r3, [r5]
00553b80  05 00 a0 e1                                      mov r0, r5
00553b84  0f e0 a0 e1                                      mov lr, pc
00553b88  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00553b8c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00553b90  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
00553b94  00 00 53 e3                                      cmp r3, #0
00553b98  17 00 00 0a                                      beq #0x553bfc
00553b9c  00 30 95 e5                                      ldr r3, [r5]
00553ba0  05 00 a0 e1                                      mov r0, r5
00553ba4  0f e0 a0 e1                                      mov lr, pc
00553ba8  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00553bac  60 21 94 e5                                      ldr r2, [r4, #0x160]
00553bb0  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00553bb4  58 31 94 e5                                      ldr r3, [r4, #0x158]
00553bb8  02 00 51 e1                                      cmp r1, r2
00553bbc  00 21 83 e0                                      add r2, r3, r0, lsl #2
00553bc0  33 00 00 0a                                      beq #0x553c94
00553bc4  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
00553bc8  00 30 81 e5                                      str r3, [r1]
00553bcc  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00553bd0  04 10 81 e2                                      add r1, r1, #4
00553bd4  5c 11 84 e5                                      str r1, [r4, #0x15c]
00553bd8  58 31 94 e5                                      ldr r3, [r4, #0x158]
00553bdc  01 10 63 e0                                      rsb r1, r3, r1
00553be0  41 11 a0 e1                                      asr r1, r1, #2
00553be4  01 20 41 e2                                      sub r2, r1, #1
00553be8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00553bec  03 00 a0 e1                                      mov r0, r3
00553bf0  00 30 93 e5                                      ldr r3, [r3]
00553bf4  0f e0 a0 e1                                      mov lr, pc
00553bf8  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00553bfc  00 30 95 e5                                      ldr r3, [r5]
00553c00  05 00 a0 e1                                      mov r0, r5
00553c04  0f e0 a0 e1                                      mov lr, pc
00553c08  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00553c0c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00553c10  00 51 83 e7                                      str r5, [r3, r0, lsl #2]
00553c14  64 31 94 e5                                      ldr r3, [r4, #0x164]
00553c18  01 00 73 e3                                      cmn r3, #1
00553c1c  0d 00 00 0a                                      beq #0x553c58
00553c20  00 30 95 e5                                      ldr r3, [r5]
00553c24  05 00 a0 e1                                      mov r0, r5
00553c28  0f e0 a0 e1                                      mov lr, pc
00553c2c  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00553c30  64 31 94 e5                                      ldr r3, [r4, #0x164]
00553c34  00 10 a0 e1                                      mov r1, r0
00553c38  03 00 50 e1                                      cmp r0, r3
00553c3c  03 00 00 1a                                      bne #0x553c50
00553c40  04 00 a0 e1                                      mov r0, r4
00553c44  00 30 94 e5                                      ldr r3, [r4]
00553c48  0f e0 a0 e1                                      mov lr, pc
00553c4c  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00553c50  08 d0 8d e2                                      add sp, sp, #8
00553c54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00553c58  00 30 95 e5                                      ldr r3, [r5]
00553c5c  05 00 a0 e1                                      mov r0, r5
00553c60  0f e0 a0 e1                                      mov lr, pc
00553c64  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00553c68  64 01 84 e5                                      str r0, [r4, #0x164]
00553c6c  eb ff ff ea                                      b #0x553c20
00553c70  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00553c74  58 21 94 e5                                      ldr r2, [r4, #0x158]
00553c78  00 30 95 e5                                      ldr r3, [r5]
00553c7c  05 00 a0 e1                                      mov r0, r5
00553c80  01 10 62 e0                                      rsb r1, r2, r1
00553c84  41 11 a0 e1                                      asr r1, r1, #2
00553c88  0f e0 a0 e1                                      mov lr, pc
00553c8c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00553c90  a0 ff ff ea                                      b #0x553b18
00553c94  07 00 a0 e1                                      mov r0, r7
00553c98  b4 fb ff eb                                      bl #0x552b70
00553c9c  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00553ca0  cc ff ff ea                                      b #0x553bd8

; FUNCTION 0x00553ca4, declared_size=268, range_size=268, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUITabControl::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00553ca4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00553ca8  01 40 a0 e1                                      mov r4, r1
00553cac  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
00553cb0  00 50 a0 e1                                      mov r5, r0
00553cb4  00 30 94 e5                                      ldr r3, [r4]
00553cb8  01 10 8f e0                                      add r1, pc, r1
00553cbc  04 00 a0 e1                                      mov r0, r4
00553cc0  02 60 a0 e1                                      mov r6, r2
00553cc4  0f e0 a0 e1                                      mov lr, pc
00553cc8  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00553ccc  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
00553cd0  68 01 c5 e5                                      strb r0, [r5, #0x168]
00553cd4  00 30 94 e5                                      ldr r3, [r4]
00553cd8  01 10 8f e0                                      add r1, pc, r1
00553cdc  04 00 a0 e1                                      mov r0, r4
00553ce0  0f e0 a0 e1                                      mov lr, pc
00553ce4  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00553ce8  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00553cec  00 20 95 e5                                      ldr r2, [r5]
00553cf0  00 30 e0 e3                                      mvn r3, #0
00553cf4  69 01 c5 e5                                      strb r0, [r5, #0x169]
00553cf8  64 31 85 e5                                      str r3, [r5, #0x164]
00553cfc  00 30 94 e5                                      ldr r3, [r4]
00553d00  01 10 8f e0                                      add r1, pc, r1
00553d04  04 00 a0 e1                                      mov r0, r4
00553d08  94 70 92 e5                                      ldr r7, [r2, #0x94]
00553d0c  0f e0 a0 e1                                      mov lr, pc
00553d10  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00553d14  00 10 a0 e1                                      mov r1, r0
00553d18  05 00 a0 e1                                      mov r0, r5
00553d1c  37 ff 2f e1                                      blx r7
00553d20  05 00 a0 e1                                      mov r0, r5
00553d24  04 10 a0 e1                                      mov r1, r4
00553d28  06 20 a0 e1                                      mov r2, r6
00553d2c  c1 96 ff eb                                      bl #0x539838
00553d30  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00553d34  00 20 95 e5                                      ldr r2, [r5]
00553d38  00 30 94 e5                                      ldr r3, [r4]
00553d3c  01 10 8f e0                                      add r1, pc, r1
00553d40  04 00 a0 e1                                      mov r0, r4
00553d44  88 60 92 e5                                      ldr r6, [r2, #0x88]
00553d48  0f e0 a0 e1                                      mov lr, pc
00553d4c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00553d50  00 10 a0 e1                                      mov r1, r0
00553d54  05 00 a0 e1                                      mov r0, r5
00553d58  36 ff 2f e1                                      blx r6
00553d5c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00553d60  44 10 9f e5                                      ldr r1, [pc, #0x44]
00553d64  00 c0 95 e5                                      ldr ip, [r5]
00553d68  02 20 8f e0                                      add r2, pc, r2
00553d6c  00 30 94 e5                                      ldr r3, [r4]
00553d70  04 00 a0 e1                                      mov r0, r4
00553d74  01 10 8f e0                                      add r1, pc, r1
00553d78  5c 20 82 e2                                      add r2, r2, #0x5c
00553d7c  9c 40 9c e5                                      ldr r4, [ip, #0x9c]
00553d80  0f e0 a0 e1                                      mov lr, pc
00553d84  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00553d88  00 10 a0 e1                                      mov r1, r0
00553d8c  05 00 a0 e1                                      mov r0, r5
00553d90  34 ff 2f e1                                      blx r4
00553d94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00553d98  30 aa 38 00 70 ae 38 00 58 ae 38 00 fc ad 38 00  .byte 0x30, 0xaa, 0x38, 0x00, 0x70, 0xae, 0x38, 0x00, 0x58, 0xae, 0x38, 0x00, 0xfc, 0xad, 0x38, 0x00
00553da8  2c 34 40 00 f4 ad 38 00                          .byte 0x2c, 0x34, 0x40, 0x00, 0xf4, 0xad, 0x38, 0x00

; FUNCTION 0x005540e4, declared_size=272, range_size=272, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControlD1Ev
; demangled: glitch::gui::CGUITabControl::~CGUITabControl()
; decoder-mode: arm
005540e4  70 40 2d e9                                      push {r4, r5, r6, lr}
005540e8  f8 60 9f e5                                      ldr r6, [pc, #0xf8]
005540ec  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
005540f0  58 21 90 e5                                      ldr r2, [r0, #0x158]
005540f4  5c 11 90 e5                                      ldr r1, [r0, #0x15c]
005540f8  06 60 8f e0                                      add r6, pc, r6
005540fc  03 30 96 e7                                      ldr r3, [r6, r3]
00554100  00 40 a0 e1                                      mov r4, r0
00554104  01 00 62 e0                                      rsb r0, r2, r1
00554108  10 c0 83 e2                                      add ip, r3, #0x10
0055410c  20 01 b0 e1                                      lsrs r0, r0, #2
00554110  f8 00 83 e2                                      add r0, r3, #0xf8
00554114  d8 30 83 e2                                      add r3, r3, #0xd8
00554118  00 c0 84 e5                                      str ip, [r4]
0055411c  88 31 84 e5                                      str r3, [r4, #0x188]
00554120  8c 01 84 e5                                      str r0, [r4, #0x18c]
00554124  0d 00 00 0a                                      beq #0x554160
00554128  00 50 a0 e3                                      mov r5, #0
0055412c  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
00554130  01 50 85 e2                                      add r5, r5, #1
00554134  00 00 53 e3                                      cmp r3, #0
00554138  05 00 00 0a                                      beq #0x554154
0055413c  00 20 93 e5                                      ldr r2, [r3]
00554140  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00554144  00 00 83 e0                                      add r0, r3, r0
00554148  0d 25 f7 eb                                      bl #0x31d584
0055414c  58 21 94 e5                                      ldr r2, [r4, #0x158]
00554150  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00554154  01 30 62 e0                                      rsb r3, r2, r1
00554158  43 01 55 e1                                      cmp r5, r3, asr #2
0055415c  f2 ff ff 3a                                      blo #0x55412c
00554160  74 31 94 e5                                      ldr r3, [r4, #0x174]
00554164  00 00 53 e3                                      cmp r3, #0
00554168  03 00 00 0a                                      beq #0x55417c
0055416c  00 20 93 e5                                      ldr r2, [r3]
00554170  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00554174  00 00 83 e0                                      add r0, r3, r0
00554178  01 25 f7 eb                                      bl #0x31d584
0055417c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00554180  00 00 53 e3                                      cmp r3, #0
00554184  03 00 00 0a                                      beq #0x554198
00554188  00 20 93 e5                                      ldr r2, [r3]
0055418c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00554190  00 00 83 e0                                      add r0, r3, r0
00554194  fa 24 f7 eb                                      bl #0x31d584
00554198  58 01 94 e5                                      ldr r0, [r4, #0x158]
0055419c  00 00 50 e3                                      cmp r0, #0
005541a0  00 00 00 0a                                      beq #0x5541a8
005541a4  a9 f0 f6 eb                                      bl #0x310450
005541a8  40 30 9f e5                                      ldr r3, [pc, #0x40]
005541ac  04 00 a0 e1                                      mov r0, r4
005541b0  03 10 96 e7                                      ldr r1, [r6, r3]
005541b4  04 30 91 e5                                      ldr r3, [r1, #4]
005541b8  14 c0 91 e5                                      ldr ip, [r1, #0x14]
005541bc  18 20 91 e5                                      ldr r2, [r1, #0x18]
005541c0  00 30 84 e5                                      str r3, [r4]
005541c4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005541c8  08 10 81 e2                                      add r1, r1, #8
005541cc  03 c0 84 e7                                      str ip, [r4, r3]
005541d0  00 30 94 e5                                      ldr r3, [r4]
005541d4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005541d8  03 20 84 e7                                      str r2, [r4, r3]
005541dc  8f 93 ff eb                                      bl #0x539020
005541e0  04 00 a0 e1                                      mov r0, r4
005541e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005541e8  98 09 44 00 54 39 00 00 74 0f 00 00              .byte 0x98, 0x09, 0x44, 0x00, 0x54, 0x39, 0x00, 0x00, 0x74, 0x0f, 0x00, 0x00

; FUNCTION 0x005541f4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControlD0Ev
; demangled: glitch::gui::CGUITabControl::~CGUITabControl()
; decoder-mode: arm
005541f4  10 40 2d e9                                      push {r4, lr}
005541f8  00 40 a0 e1                                      mov r4, r0
005541fc  b8 ff ff eb                                      bl #0x5540e4
00554200  04 00 a0 e1                                      mov r0, r4
00554204  29 e8 f6 eb                                      bl #0x30e2b0
00554208  04 00 a0 e1                                      mov r0, r4
0055420c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00554210, declared_size=256, range_size=256, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControlD2Ev
; demangled: glitch::gui::CGUITabControl::~CGUITabControl()
; decoder-mode: arm
00554210  70 40 2d e9                                      push {r4, r5, r6, lr}
00554214  00 30 91 e5                                      ldr r3, [r1]
00554218  01 60 a0 e1                                      mov r6, r1
0055421c  00 40 a0 e1                                      mov r4, r0
00554220  00 30 80 e5                                      str r3, [r0]
00554224  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00554228  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0055422c  03 20 80 e7                                      str r2, [r0, r3]
00554230  00 30 90 e5                                      ldr r3, [r0]
00554234  20 20 91 e5                                      ldr r2, [r1, #0x20]
00554238  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0055423c  03 20 80 e7                                      str r2, [r0, r3]
00554240  58 21 90 e5                                      ldr r2, [r0, #0x158]
00554244  5c 11 90 e5                                      ldr r1, [r0, #0x15c]
00554248  01 30 62 e0                                      rsb r3, r2, r1
0055424c  23 31 b0 e1                                      lsrs r3, r3, #2
00554250  0d 00 00 0a                                      beq #0x55428c
00554254  00 50 a0 e3                                      mov r5, #0
00554258  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
0055425c  01 50 85 e2                                      add r5, r5, #1
00554260  00 00 53 e3                                      cmp r3, #0
00554264  05 00 00 0a                                      beq #0x554280
00554268  00 20 93 e5                                      ldr r2, [r3]
0055426c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00554270  00 00 83 e0                                      add r0, r3, r0
00554274  c2 24 f7 eb                                      bl #0x31d584
00554278  58 21 94 e5                                      ldr r2, [r4, #0x158]
0055427c  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
00554280  01 30 62 e0                                      rsb r3, r2, r1
00554284  43 01 55 e1                                      cmp r5, r3, asr #2
00554288  f2 ff ff 3a                                      blo #0x554258
0055428c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00554290  00 00 53 e3                                      cmp r3, #0
00554294  03 00 00 0a                                      beq #0x5542a8
00554298  00 20 93 e5                                      ldr r2, [r3]
0055429c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005542a0  00 00 83 e0                                      add r0, r3, r0
005542a4  b6 24 f7 eb                                      bl #0x31d584
005542a8  78 31 94 e5                                      ldr r3, [r4, #0x178]
005542ac  00 00 53 e3                                      cmp r3, #0
005542b0  03 00 00 0a                                      beq #0x5542c4
005542b4  00 20 93 e5                                      ldr r2, [r3]
005542b8  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005542bc  00 00 83 e0                                      add r0, r3, r0
005542c0  af 24 f7 eb                                      bl #0x31d584
005542c4  58 01 94 e5                                      ldr r0, [r4, #0x158]
005542c8  00 00 50 e3                                      cmp r0, #0
005542cc  00 00 00 0a                                      beq #0x5542d4
005542d0  5e f0 f6 eb                                      bl #0x310450
005542d4  04 30 96 e5                                      ldr r3, [r6, #4]
005542d8  04 60 86 e2                                      add r6, r6, #4
005542dc  04 10 86 e2                                      add r1, r6, #4
005542e0  00 30 84 e5                                      str r3, [r4]
005542e4  10 20 96 e5                                      ldr r2, [r6, #0x10]
005542e8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005542ec  04 00 a0 e1                                      mov r0, r4
005542f0  03 20 84 e7                                      str r2, [r4, r3]
005542f4  00 30 94 e5                                      ldr r3, [r4]
005542f8  14 20 96 e5                                      ldr r2, [r6, #0x14]
005542fc  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00554300  03 20 84 e7                                      str r2, [r4, r3]
00554304  45 93 ff eb                                      bl #0x539020
00554308  04 00 a0 e1                                      mov r0, r4
0055430c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00554310, declared_size=220, range_size=220, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUITabControl::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00554310  30 40 2d e9                                      push {r4, r5, lr}
00554314  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
00554318  0c d0 4d e2                                      sub sp, sp, #0xc
0055431c  00 50 a0 e1                                      mov r5, r0
00554320  00 00 53 e3                                      cmp r3, #0
00554324  01 40 a0 e1                                      mov r4, r1
00554328  05 00 00 0a                                      beq #0x554344
0055432c  00 30 91 e5                                      ldr r3, [r1]
00554330  00 00 53 e3                                      cmp r3, #0
00554334  0d 00 00 1a                                      bne #0x554370
00554338  10 30 91 e5                                      ldr r3, [r1, #0x10]
0055433c  05 00 53 e3                                      cmp r3, #5
00554340  1c 00 00 0a                                      beq #0x5543b8
00554344  24 30 95 e5                                      ldr r3, [r5, #0x24]
00554348  00 00 53 e3                                      cmp r3, #0
0055434c  03 00 a0 01                                      moveq r0, r3
00554350  04 00 00 0a                                      beq #0x554368
00554354  03 00 a0 e1                                      mov r0, r3
00554358  04 10 a0 e1                                      mov r1, r4
0055435c  00 30 93 e5                                      ldr r3, [r3]
00554360  0f e0 a0 e1                                      mov lr, pc
00554364  08 f0 93 e5                                      ldr pc, [r3, #8]
00554368  0c d0 8d e2                                      add sp, sp, #0xc
0055436c  30 80 bd e8                                      pop {r4, r5, pc}
00554370  01 00 53 e3                                      cmp r3, #1
00554374  f2 ff ff 1a                                      bne #0x554344
00554378  14 30 91 e5                                      ldr r3, [r1, #0x14]
0055437c  00 00 53 e3                                      cmp r3, #0
00554380  01 00 a0 03                                      moveq r0, #1
00554384  f7 ff ff 0a                                      beq #0x554368
00554388  03 00 53 e3                                      cmp r3, #3
0055438c  ec ff ff 1a                                      bne #0x554344
00554390  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00554394  08 30 91 e5                                      ldr r3, [r1, #8]
00554398  0d 10 a0 e1                                      mov r1, sp
0055439c  04 20 8d e5                                      str r2, [sp, #4]
005543a0  00 30 8d e5                                      str r3, [sp]
005543a4  f3 f7 ff eb                                      bl #0x552378
005543a8  00 00 50 e3                                      cmp r0, #0
005543ac  e4 ff ff 0a                                      beq #0x554344
005543b0  01 00 a0 e3                                      mov r0, #1
005543b4  eb ff ff ea                                      b #0x554368
005543b8  08 30 91 e5                                      ldr r3, [r1, #8]
005543bc  74 21 90 e5                                      ldr r2, [r0, #0x174]
005543c0  02 00 53 e1                                      cmp r3, r2
005543c4  05 00 00 0a                                      beq #0x5543e0
005543c8  78 21 90 e5                                      ldr r2, [r0, #0x178]
005543cc  02 00 53 e1                                      cmp r3, r2
005543d0  db ff ff 1a                                      bne #0x554344
005543d4  85 f8 ff eb                                      bl #0x5525f0
005543d8  01 00 a0 e3                                      mov r0, #1
005543dc  e1 ff ff ea                                      b #0x554368
005543e0  7d f8 ff eb                                      bl #0x5525dc
005543e4  01 00 a0 e3                                      mov r0, #1
005543e8  de ff ff ea                                      b #0x554368

; FUNCTION 0x005543ec, declared_size=428, range_size=428, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl6addTabEPKwi
; demangled: glitch::gui::CGUITabControl::addTab(wchar_t const*, int)
; decoder-mode: arm
005543ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005543f0  50 31 90 e5                                      ldr r3, [r0, #0x150]
005543f4  20 d0 4d e2                                      sub sp, sp, #0x20
005543f8  00 40 a0 e1                                      mov r4, r0
005543fc  03 00 a0 e1                                      mov r0, r3
00554400  00 30 93 e5                                      ldr r3, [r3]
00554404  01 60 a0 e1                                      mov r6, r1
00554408  02 70 a0 e1                                      mov r7, r2
0055440c  0f e0 a0 e1                                      mov lr, pc
00554410  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00554414  00 00 50 e3                                      cmp r0, #0
00554418  41 00 00 0a                                      beq #0x554524
0055441c  70 31 94 e5                                      ldr r3, [r4, #0x170]
00554420  00 00 53 e3                                      cmp r3, #0
00554424  40 00 00 0a                                      beq #0x55452c
00554428  40 10 94 e5                                      ldr r1, [r4, #0x40]
0055442c  44 c0 94 e5                                      ldr ip, [r4, #0x44]
00554430  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00554434  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
00554438  38 00 94 e5                                      ldr r0, [r4, #0x38]
0055443c  0c 20 62 e0                                      rsb r2, r2, ip
00554440  01 10 41 e2                                      sub r1, r1, #1
00554444  02 20 63 e0                                      rsb r2, r3, r2
00554448  01 10 60 e0                                      rsb r1, r0, r1
0055444c  01 30 a0 e3                                      mov r3, #1
00554450  10 30 8d e5                                      str r3, [sp, #0x10]
00554454  14 10 8d e5                                      str r1, [sp, #0x14]
00554458  18 20 8d e5                                      str r2, [sp, #0x18]
0055445c  0c 30 8d e5                                      str r3, [sp, #0xc]
00554460  58 31 94 e5                                      ldr r3, [r4, #0x158]
00554464  5c 81 94 e5                                      ldr r8, [r4, #0x15c]
00554468  00 10 a0 e3                                      mov r1, #0
0055446c  5d 0f a0 e3                                      mov r0, #0x174
00554470  08 80 63 e0                                      rsb r8, r3, r8
00554474  4c 7f ff eb                                      bl #0x5341ac
00554478  48 81 a0 e1                                      asr r8, r8, #2
0055447c  50 21 94 e5                                      ldr r2, [r4, #0x150]
00554480  00 50 a0 e1                                      mov r5, r0
00554484  0c c0 8d e2                                      add ip, sp, #0xc
00554488  08 10 a0 e1                                      mov r1, r8
0055448c  04 30 a0 e1                                      mov r3, r4
00554490  00 c0 8d e5                                      str ip, [sp]
00554494  04 70 8d e5                                      str r7, [sp, #4]
00554498  ec fc ff eb                                      bl #0x553850
0055449c  1c 50 8d e5                                      str r5, [sp, #0x1c]
005544a0  05 00 a0 e1                                      mov r0, r5
005544a4  06 10 a0 e1                                      mov r1, r6
005544a8  00 30 95 e5                                      ldr r3, [r5]
005544ac  0f e0 a0 e1                                      mov lr, pc
005544b0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
005544b4  01 c0 a0 e3                                      mov ip, #1
005544b8  00 10 a0 e3                                      mov r1, #0
005544bc  01 30 a0 e1                                      mov r3, r1
005544c0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005544c4  0c 20 a0 e1                                      mov r2, ip
005544c8  00 c0 8d e5                                      str ip, [sp]
005544cc  db 80 ff eb                                      bl #0x534840
005544d0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005544d4  00 10 a0 e3                                      mov r1, #0
005544d8  03 00 a0 e1                                      mov r0, r3
005544dc  00 30 93 e5                                      ldr r3, [r3]
005544e0  0f e0 a0 e1                                      mov lr, pc
005544e4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005544e8  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
005544ec  60 31 94 e5                                      ldr r3, [r4, #0x160]
005544f0  03 00 51 e1                                      cmp r1, r3
005544f4  23 00 00 0a                                      beq #0x554588
005544f8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005544fc  00 30 81 e5                                      str r3, [r1]
00554500  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00554504  04 30 83 e2                                      add r3, r3, #4
00554508  5c 31 84 e5                                      str r3, [r4, #0x15c]
0055450c  64 31 94 e5                                      ldr r3, [r4, #0x164]
00554510  01 00 73 e3                                      cmn r3, #1
00554514  12 00 00 0a                                      beq #0x554564
00554518  04 00 a0 e1                                      mov r0, r4
0055451c  fe f7 ff eb                                      bl #0x55251c
00554520  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00554524  20 d0 8d e2                                      add sp, sp, #0x20
00554528  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0055452c  3c 00 84 e2                                      add r0, r4, #0x3c
00554530  0d 00 90 e8                                      ldm r0, {r0, r2, r3}
00554534  38 c0 94 e5                                      ldr ip, [r4, #0x38]
00554538  6c 11 94 e5                                      ldr r1, [r4, #0x16c]
0055453c  01 20 42 e2                                      sub r2, r2, #1
00554540  01 30 43 e2                                      sub r3, r3, #1
00554544  03 30 60 e0                                      rsb r3, r0, r3
00554548  02 20 6c e0                                      rsb r2, ip, r2
0055454c  01 00 a0 e3                                      mov r0, #1
00554550  0c 00 8d e5                                      str r0, [sp, #0xc]
00554554  10 10 8d e5                                      str r1, [sp, #0x10]
00554558  14 20 8d e5                                      str r2, [sp, #0x14]
0055455c  18 30 8d e5                                      str r3, [sp, #0x18]
00554560  be ff ff ea                                      b #0x554460
00554564  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00554568  00 20 a0 e3                                      mov r2, #0
0055456c  64 21 84 e5                                      str r2, [r4, #0x164]
00554570  03 00 a0 e1                                      mov r0, r3
00554574  01 10 a0 e3                                      mov r1, #1
00554578  00 30 93 e5                                      ldr r3, [r3]
0055457c  0f e0 a0 e1                                      mov lr, pc
00554580  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00554584  e3 ff ff ea                                      b #0x554518
00554588  56 0f 84 e2                                      add r0, r4, #0x158
0055458c  1c 20 8d e2                                      add r2, sp, #0x1c
00554590  76 f9 ff eb                                      bl #0x552b70
00554594  dc ff ff ea                                      b #0x55450c

; FUNCTION 0x00554738, declared_size=1960, range_size=1960, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZN6glitch3gui14CGUITabControl4drawEv
; demangled: glitch::gui::CGUITabControl::draw()
; decoder-mode: arm
00554738  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055473c  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00554740  8c d0 4d e2                                      sub sp, sp, #0x8c
00554744  00 40 a0 e1                                      mov r4, r0
00554748  00 00 53 e3                                      cmp r3, #0
0055474c  01 00 00 1a                                      bne #0x554758
00554750  8c d0 8d e2                                      add sp, sp, #0x8c
00554754  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00554758  50 31 90 e5                                      ldr r3, [r0, #0x150]
0055475c  03 00 a0 e1                                      mov r0, r3
00554760  00 30 93 e5                                      ldr r3, [r3]
00554764  0f e0 a0 e1                                      mov lr, pc
00554768  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0055476c  00 b0 50 e2                                      subs fp, r0, #0
00554770  f6 ff ff 0a                                      beq #0x554750
00554774  00 10 a0 e3                                      mov r1, #0
00554778  00 30 9b e5                                      ldr r3, [fp]
0055477c  0f e0 a0 e1                                      mov lr, pc
00554780  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00554784  50 31 94 e5                                      ldr r3, [r4, #0x150]
00554788  00 70 a0 e1                                      mov r7, r0
0055478c  03 00 a0 e1                                      mov r0, r3
00554790  00 30 93 e5                                      ldr r3, [r3]
00554794  0f e0 a0 e1                                      mov lr, pc
00554798  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0055479c  2c 00 8d e5                                      str r0, [sp, #0x2c]
005547a0  58 51 94 e5                                      ldr r5, [r4, #0x158]
005547a4  5c c1 94 e5                                      ldr ip, [r4, #0x15c]
005547a8  38 00 84 e2                                      add r0, r4, #0x38
005547ac  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
005547b0  0c 00 55 e1                                      cmp r5, ip
005547b4  48 00 8d e5                                      str r0, [sp, #0x48]
005547b8  4c 10 8d e5                                      str r1, [sp, #0x4c]
005547bc  50 20 8d e5                                      str r2, [sp, #0x50]
005547c0  54 30 8d e5                                      str r3, [sp, #0x54]
005547c4  b1 01 00 0a                                      beq #0x554e90
005547c8  00 00 57 e3                                      cmp r7, #0
005547cc  df ff ff 0a                                      beq #0x554750
005547d0  70 11 94 e5                                      ldr r1, [r4, #0x170]
005547d4  00 00 51 e3                                      cmp r1, #0
005547d8  02 01 00 0a                                      beq #0x554be8
005547dc  54 30 9d e5                                      ldr r3, [sp, #0x54]
005547e0  6c 21 94 e5                                      ldr r2, [r4, #0x16c]
005547e4  01 00 43 e2                                      sub r0, r3, #1
005547e8  00 20 62 e0                                      rsb r2, r2, r0
005547ec  02 30 43 e2                                      sub r3, r3, #2
005547f0  4c 20 8d e5                                      str r2, [sp, #0x4c]
005547f4  54 30 8d e5                                      str r3, [sp, #0x54]
005547f8  58 31 94 e5                                      ldr r3, [r4, #0x158]
005547fc  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
00554800  80 51 94 e5                                      ldr r5, [r4, #0x180]
00554804  00 20 a0 e3                                      mov r2, #0
00554808  00 00 63 e0                                      rsb r0, r3, r0
0055480c  40 01 55 e1                                      cmp r5, r0, asr #2
00554810  38 20 8d e5                                      str r2, [sp, #0x38]
00554814  3c 20 8d e5                                      str r2, [sp, #0x3c]
00554818  40 20 8d e5                                      str r2, [sp, #0x40]
0055481c  44 20 8d e5                                      str r2, [sp, #0x44]
00554820  48 20 84 22                                      addhs r2, r4, #0x48
00554824  48 60 9d e5                                      ldr r6, [sp, #0x48]
00554828  18 20 8d 25                                      strhs r2, [sp, #0x18]
0055482c  f5 00 00 2a                                      bhs #0x554c08
00554830  20 20 8d e5                                      str r2, [sp, #0x20]
00554834  48 c0 84 e2                                      add ip, r4, #0x48
00554838  24 20 8d e5                                      str r2, [sp, #0x24]
0055483c  28 20 8d e5                                      str r2, [sp, #0x28]
00554840  58 10 8d e2                                      add r1, sp, #0x58
00554844  48 20 8d e2                                      add r2, sp, #0x48
00554848  02 60 86 e2                                      add r6, r6, #2
0055484c  18 c0 8d e5                                      str ip, [sp, #0x18]
00554850  05 81 a0 e1                                      lsl r8, r5, #2
00554854  1c 10 8d e5                                      str r1, [sp, #0x1c]
00554858  14 20 8d e5                                      str r2, [sp, #0x14]
0055485c  0b 00 00 ea                                      b #0x554890
00554860  58 31 94 e5                                      ldr r3, [r4, #0x158]
00554864  28 60 8d e5                                      str r6, [sp, #0x28]
00554868  24 a0 8d e5                                      str sl, [sp, #0x24]
0055486c  08 60 93 e7                                      ldr r6, [r3, r8]
00554870  01 50 85 e2                                      add r5, r5, #1
00554874  04 80 88 e2                                      add r8, r8, #4
00554878  20 60 8d e5                                      str r6, [sp, #0x20]
0055487c  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
00554880  02 20 63 e0                                      rsb r2, r3, r2
00554884  42 01 55 e1                                      cmp r5, r2, asr #2
00554888  47 00 00 2a                                      bhs #0x5549ac
0055488c  0a 60 a0 e1                                      mov r6, sl
00554890  08 90 93 e7                                      ldr sb, [r3, r8]
00554894  00 00 59 e3                                      cmp sb, #0
00554898  04 00 00 0a                                      beq #0x5548b0
0055489c  09 00 a0 e1                                      mov r0, sb
005548a0  00 30 99 e5                                      ldr r3, [sb]
005548a4  0f e0 a0 e1                                      mov lr, pc
005548a8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
005548ac  00 90 a0 e1                                      mov sb, r0
005548b0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005548b4  07 10 a0 e1                                      mov r1, r7
005548b8  09 20 a0 e1                                      mov r2, sb
005548bc  00 30 97 e5                                      ldr r3, [r7]
005548c0  0f e0 a0 e1                                      mov lr, pc
005548c4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005548c8  84 c1 94 e5                                      ldr ip, [r4, #0x184]
005548cc  58 a0 9d e5                                      ldr sl, [sp, #0x58]
005548d0  6a e1 d4 e5                                      ldrb lr, [r4, #0x16a]
005548d4  00 20 a0 e3                                      mov r2, #0
005548d8  0a a0 8c e0                                      add sl, ip, sl
005548dc  06 a0 8a e0                                      add sl, sl, r6
005548e0  02 00 5e e1                                      cmp lr, r2
005548e4  04 10 a0 e1                                      mov r1, r4
005548e8  14 30 9d e5                                      ldr r3, [sp, #0x14]
005548ec  0b 00 a0 e1                                      mov r0, fp
005548f0  48 60 8d e5                                      str r6, [sp, #0x48]
005548f4  50 a0 8d e5                                      str sl, [sp, #0x50]
005548f8  01 00 00 0a                                      beq #0x554904
005548fc  06 00 5a e1                                      cmp sl, r6
00554900  29 00 00 ba                                      blt #0x5549ac
00554904  64 c1 94 e5                                      ldr ip, [r4, #0x164]
00554908  05 00 5c e1                                      cmp ip, r5
0055490c  d3 ff ff 0a                                      beq #0x554860
00554910  70 e1 94 e5                                      ldr lr, [r4, #0x170]
00554914  18 60 9d e5                                      ldr r6, [sp, #0x18]
00554918  00 c0 9b e5                                      ldr ip, [fp]
0055491c  40 40 8d e8                                      stm sp, {r6, lr}
00554920  0f e0 a0 e1                                      mov lr, pc
00554924  58 f0 9c e5                                      ldr pc, [ip, #0x58]
00554928  58 31 94 e5                                      ldr r3, [r4, #0x158]
0055492c  00 20 97 e5                                      ldr r2, [r7]
00554930  01 50 85 e2                                      add r5, r5, #1
00554934  08 30 93 e7                                      ldr r3, [r3, r8]
00554938  0c 60 92 e5                                      ldr r6, [r2, #0xc]
0055493c  04 80 88 e2                                      add r8, r8, #4
00554940  03 00 a0 e1                                      mov r0, r3
00554944  00 30 93 e5                                      ldr r3, [r3]
00554948  0f e0 a0 e1                                      mov lr, pc
0055494c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00554950  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554954  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554958  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0055495c  31 10 cd e5                                      strb r1, [sp, #0x31]
00554960  32 20 cd e5                                      strb r2, [sp, #0x32]
00554964  30 00 cd e5                                      strb r0, [sp, #0x30]
00554968  33 30 cd e5                                      strb r3, [sp, #0x33]
0055496c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00554970  18 10 9d e5                                      ldr r1, [sp, #0x18]
00554974  01 c0 a0 e3                                      mov ip, #1
00554978  80 30 8d e5                                      str r3, [sp, #0x80]
0055497c  08 10 8d e5                                      str r1, [sp, #8]
00554980  14 20 9d e5                                      ldr r2, [sp, #0x14]
00554984  00 c0 8d e5                                      str ip, [sp]
00554988  04 c0 8d e5                                      str ip, [sp, #4]
0055498c  09 10 a0 e1                                      mov r1, sb
00554990  07 00 a0 e1                                      mov r0, r7
00554994  36 ff 2f e1                                      blx r6
00554998  58 31 94 e5                                      ldr r3, [r4, #0x158]
0055499c  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
005549a0  02 20 63 e0                                      rsb r2, r3, r2
005549a4  42 01 55 e1                                      cmp r5, r2, asr #2
005549a8  b7 ff ff 3a                                      blo #0x55488c
005549ac  24 20 9d e5                                      ldr r2, [sp, #0x24]
005549b0  28 30 9d e5                                      ldr r3, [sp, #0x28]
005549b4  00 00 52 e3                                      cmp r2, #0
005549b8  00 00 53 13                                      cmpne r3, #0
005549bc  90 00 00 0a                                      beq #0x554c04
005549c0  20 50 9d e5                                      ldr r5, [sp, #0x20]
005549c4  00 00 55 e3                                      cmp r5, #0
005549c8  8d 00 00 0a                                      beq #0x554c04
005549cc  70 21 94 e5                                      ldr r2, [r4, #0x170]
005549d0  00 00 52 e3                                      cmp r2, #0
005549d4  c5 00 00 1a                                      bne #0x554cf0
005549d8  28 60 9d e5                                      ldr r6, [sp, #0x28]
005549dc  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005549e0  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005549e4  02 00 46 e2                                      sub r0, r6, #2
005549e8  02 10 8c e2                                      add r1, ip, #2
005549ec  02 30 43 e2                                      sub r3, r3, #2
005549f0  48 00 8d e5                                      str r0, [sp, #0x48]
005549f4  50 10 8d e5                                      str r1, [sp, #0x50]
005549f8  4c 30 8d e5                                      str r3, [sp, #0x4c]
005549fc  00 c0 9b e5                                      ldr ip, [fp]
00554a00  04 20 8d e5                                      str r2, [sp, #4]
00554a04  18 20 9d e5                                      ldr r2, [sp, #0x18]
00554a08  48 50 8d e2                                      add r5, sp, #0x48
00554a0c  04 10 a0 e1                                      mov r1, r4
00554a10  05 30 a0 e1                                      mov r3, r5
00554a14  00 20 8d e5                                      str r2, [sp]
00554a18  0b 00 a0 e1                                      mov r0, fp
00554a1c  01 20 a0 e3                                      mov r2, #1
00554a20  0f e0 a0 e1                                      mov lr, pc
00554a24  58 f0 9c e5                                      ldr pc, [ip, #0x58]
00554a28  20 60 9d e5                                      ldr r6, [sp, #0x20]
00554a2c  00 20 97 e5                                      ldr r2, [r7]
00554a30  00 30 96 e5                                      ldr r3, [r6]
00554a34  06 00 a0 e1                                      mov r0, r6
00554a38  0c 80 92 e5                                      ldr r8, [r2, #0xc]
00554a3c  0f e0 a0 e1                                      mov lr, pc
00554a40  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00554a44  00 60 a0 e1                                      mov r6, r0
00554a48  20 00 9d e5                                      ldr r0, [sp, #0x20]
00554a4c  00 30 90 e5                                      ldr r3, [r0]
00554a50  0f e0 a0 e1                                      mov lr, pc
00554a54  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00554a58  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554a5c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554a60  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00554a64  31 10 cd e5                                      strb r1, [sp, #0x31]
00554a68  32 20 cd e5                                      strb r2, [sp, #0x32]
00554a6c  33 30 cd e5                                      strb r3, [sp, #0x33]
00554a70  30 00 cd e5                                      strb r0, [sp, #0x30]
00554a74  01 c0 a0 e3                                      mov ip, #1
00554a78  30 e0 9d e5                                      ldr lr, [sp, #0x30]
00554a7c  04 c0 8d e5                                      str ip, [sp, #4]
00554a80  00 c0 8d e5                                      str ip, [sp]
00554a84  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00554a88  0e 30 a0 e1                                      mov r3, lr
00554a8c  7c e0 8d e5                                      str lr, [sp, #0x7c]
00554a90  05 20 a0 e1                                      mov r2, r5
00554a94  06 10 a0 e1                                      mov r1, r6
00554a98  08 c0 8d e5                                      str ip, [sp, #8]
00554a9c  07 00 a0 e1                                      mov r0, r7
00554aa0  38 ff 2f e1                                      blx r8
00554aa4  54 30 9d e5                                      ldr r3, [sp, #0x54]
00554aa8  28 20 9d e5                                      ldr r2, [sp, #0x28]
00554aac  38 00 94 e5                                      ldr r0, [r4, #0x38]
00554ab0  44 30 8d e5                                      str r3, [sp, #0x44]
00554ab4  01 10 42 e2                                      sub r1, r2, #1
00554ab8  01 20 43 e2                                      sub r2, r3, #1
00554abc  38 00 8d e5                                      str r0, [sp, #0x38]
00554ac0  40 10 8d e5                                      str r1, [sp, #0x40]
00554ac4  3c 20 8d e5                                      str r2, [sp, #0x3c]
00554ac8  00 30 9b e5                                      ldr r3, [fp]
00554acc  03 10 a0 e3                                      mov r1, #3
00554ad0  0b 00 a0 e1                                      mov r0, fp
00554ad4  0f e0 a0 e1                                      mov lr, pc
00554ad8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00554adc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554ae0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554ae4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00554ae8  31 10 cd e5                                      strb r1, [sp, #0x31]
00554aec  32 20 cd e5                                      strb r2, [sp, #0x32]
00554af0  33 30 cd e5                                      strb r3, [sp, #0x33]
00554af4  30 00 cd e5                                      strb r0, [sp, #0x30]
00554af8  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00554afc  38 50 8d e2                                      add r5, sp, #0x38
00554b00  05 20 a0 e1                                      mov r2, r5
00554b04  0c 10 a0 e1                                      mov r1, ip
00554b08  18 30 9d e5                                      ldr r3, [sp, #0x18]
00554b0c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00554b10  78 c0 8d e5                                      str ip, [sp, #0x78]
00554b14  58 2b 01 eb                                      bl #0x59f87c
00554b18  40 30 94 e5                                      ldr r3, [r4, #0x40]
00554b1c  24 60 9d e5                                      ldr r6, [sp, #0x24]
00554b20  03 10 a0 e3                                      mov r1, #3
00554b24  40 30 8d e5                                      str r3, [sp, #0x40]
00554b28  38 60 8d e5                                      str r6, [sp, #0x38]
00554b2c  00 30 9b e5                                      ldr r3, [fp]
00554b30  0b 00 a0 e1                                      mov r0, fp
00554b34  0f e0 a0 e1                                      mov lr, pc
00554b38  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00554b3c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554b40  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554b44  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00554b48  31 10 cd e5                                      strb r1, [sp, #0x31]
00554b4c  32 20 cd e5                                      strb r2, [sp, #0x32]
00554b50  33 30 cd e5                                      strb r3, [sp, #0x33]
00554b54  30 00 cd e5                                      strb r0, [sp, #0x30]
00554b58  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00554b5c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00554b60  05 20 a0 e1                                      mov r2, r5
00554b64  0c 10 a0 e1                                      mov r1, ip
00554b68  18 30 9d e5                                      ldr r3, [sp, #0x18]
00554b6c  74 c0 8d e5                                      str ip, [sp, #0x74]
00554b70  41 2b 01 eb                                      bl #0x59f87c
00554b74  38 50 84 e2                                      add r5, r4, #0x38
00554b78  69 31 d4 e5                                      ldrb r3, [r4, #0x169]
00554b7c  70 11 94 e5                                      ldr r1, [r4, #0x170]
00554b80  68 21 d4 e5                                      ldrb r2, [r4, #0x168]
00554b84  6c e1 94 e5                                      ldr lr, [r4, #0x16c]
00554b88  00 c0 9b e5                                      ldr ip, [fp]
00554b8c  00 50 8d e5                                      str r5, [sp]
00554b90  18 50 9d e5                                      ldr r5, [sp, #0x18]
00554b94  0c 10 8d e5                                      str r1, [sp, #0xc]
00554b98  0b 00 a0 e1                                      mov r0, fp
00554b9c  04 50 8d e5                                      str r5, [sp, #4]
00554ba0  04 10 a0 e1                                      mov r1, r4
00554ba4  08 e0 8d e5                                      str lr, [sp, #8]
00554ba8  0f e0 a0 e1                                      mov lr, pc
00554bac  5c f0 9c e5                                      ldr pc, [ip, #0x5c]
00554bb0  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00554bb4  00 00 53 e3                                      cmp r3, #0
00554bb8  04 50 b4 15                                      ldrne r5, [r4, #4]!
00554bbc  06 00 00 1a                                      bne #0x554bdc
00554bc0  e2 fe ff ea                                      b #0x554750
00554bc4  08 30 95 e5                                      ldr r3, [r5, #8]
00554bc8  03 00 a0 e1                                      mov r0, r3
00554bcc  00 30 93 e5                                      ldr r3, [r3]
00554bd0  0f e0 a0 e1                                      mov lr, pc
00554bd4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00554bd8  00 50 95 e5                                      ldr r5, [r5]
00554bdc  04 00 55 e1                                      cmp r5, r4
00554be0  f7 ff ff 1a                                      bne #0x554bc4
00554be4  d9 fe ff ea                                      b #0x554750
00554be8  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00554bec  6c 21 94 e5                                      ldr r2, [r4, #0x16c]
00554bf0  02 30 83 e2                                      add r3, r3, #2
00554bf4  02 20 83 e0                                      add r2, r3, r2
00554bf8  54 20 8d e5                                      str r2, [sp, #0x54]
00554bfc  4c 30 8d e5                                      str r3, [sp, #0x4c]
00554c00  fc fe ff ea                                      b #0x5547f8
00554c04  70 11 94 e5                                      ldr r1, [r4, #0x170]
00554c08  00 00 51 e3                                      cmp r1, #0
00554c0c  1b 00 00 1a                                      bne #0x554c80
00554c10  54 30 9d e5                                      ldr r3, [sp, #0x54]
00554c14  38 00 94 e5                                      ldr r0, [r4, #0x38]
00554c18  40 10 94 e5                                      ldr r1, [r4, #0x40]
00554c1c  01 20 43 e2                                      sub r2, r3, #1
00554c20  38 00 8d e5                                      str r0, [sp, #0x38]
00554c24  40 10 8d e5                                      str r1, [sp, #0x40]
00554c28  3c 20 8d e5                                      str r2, [sp, #0x3c]
00554c2c  44 30 8d e5                                      str r3, [sp, #0x44]
00554c30  00 30 9b e5                                      ldr r3, [fp]
00554c34  0b 00 a0 e1                                      mov r0, fp
00554c38  03 10 a0 e3                                      mov r1, #3
00554c3c  0f e0 a0 e1                                      mov lr, pc
00554c40  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00554c44  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554c48  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554c4c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00554c50  31 10 cd e5                                      strb r1, [sp, #0x31]
00554c54  32 20 cd e5                                      strb r2, [sp, #0x32]
00554c58  33 30 cd e5                                      strb r3, [sp, #0x33]
00554c5c  30 00 cd e5                                      strb r0, [sp, #0x30]
00554c60  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00554c64  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00554c68  38 20 8d e2                                      add r2, sp, #0x38
00554c6c  0c 10 a0 e1                                      mov r1, ip
00554c70  18 30 9d e5                                      ldr r3, [sp, #0x18]
00554c74  64 c0 8d e5                                      str ip, [sp, #0x64]
00554c78  ff 2a 01 eb                                      bl #0x59f87c
00554c7c  bc ff ff ea                                      b #0x554b74
00554c80  38 10 94 e5                                      ldr r1, [r4, #0x38]
00554c84  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00554c88  0b 00 a0 e1                                      mov r0, fp
00554c8c  38 10 8d e5                                      str r1, [sp, #0x38]
00554c90  01 20 43 e2                                      sub r2, r3, #1
00554c94  fa 1f a0 e3                                      mov r1, #0x3e8
00554c98  40 10 8d e5                                      str r1, [sp, #0x40]
00554c9c  3c 20 8d e5                                      str r2, [sp, #0x3c]
00554ca0  44 30 8d e5                                      str r3, [sp, #0x44]
00554ca4  00 30 9b e5                                      ldr r3, [fp]
00554ca8  00 10 a0 e3                                      mov r1, #0
00554cac  0f e0 a0 e1                                      mov lr, pc
00554cb0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00554cb4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554cb8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554cbc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00554cc0  31 10 cd e5                                      strb r1, [sp, #0x31]
00554cc4  32 20 cd e5                                      strb r2, [sp, #0x32]
00554cc8  33 30 cd e5                                      strb r3, [sp, #0x33]
00554ccc  30 00 cd e5                                      strb r0, [sp, #0x30]
00554cd0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00554cd4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00554cd8  38 20 8d e2                                      add r2, sp, #0x38
00554cdc  0c 10 a0 e1                                      mov r1, ip
00554ce0  18 30 9d e5                                      ldr r3, [sp, #0x18]
00554ce4  60 c0 8d e5                                      str ip, [sp, #0x60]
00554ce8  e3 2a 01 eb                                      bl #0x59f87c
00554cec  a0 ff ff ea                                      b #0x554b74
00554cf0  24 30 9d e5                                      ldr r3, [sp, #0x24]
00554cf4  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00554cf8  18 60 9d e5                                      ldr r6, [sp, #0x18]
00554cfc  02 10 83 e2                                      add r1, r3, #2
00554d00  54 30 9d e5                                      ldr r3, [sp, #0x54]
00554d04  02 00 4c e2                                      sub r0, ip, #2
00554d08  48 00 8d e5                                      str r0, [sp, #0x48]
00554d0c  02 30 83 e2                                      add r3, r3, #2
00554d10  50 10 8d e5                                      str r1, [sp, #0x50]
00554d14  54 30 8d e5                                      str r3, [sp, #0x54]
00554d18  48 50 8d e2                                      add r5, sp, #0x48
00554d1c  04 10 a0 e1                                      mov r1, r4
00554d20  00 c0 9b e5                                      ldr ip, [fp]
00554d24  05 30 a0 e1                                      mov r3, r5
00554d28  04 20 8d e5                                      str r2, [sp, #4]
00554d2c  00 60 8d e5                                      str r6, [sp]
00554d30  0b 00 a0 e1                                      mov r0, fp
00554d34  01 20 a0 e3                                      mov r2, #1
00554d38  0f e0 a0 e1                                      mov lr, pc
00554d3c  58 f0 9c e5                                      ldr pc, [ip, #0x58]
00554d40  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00554d44  00 20 97 e5                                      ldr r2, [r7]
00554d48  00 30 9c e5                                      ldr r3, [ip]
00554d4c  0c 00 a0 e1                                      mov r0, ip
00554d50  0c 80 92 e5                                      ldr r8, [r2, #0xc]
00554d54  0f e0 a0 e1                                      mov lr, pc
00554d58  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00554d5c  00 60 a0 e1                                      mov r6, r0
00554d60  20 00 9d e5                                      ldr r0, [sp, #0x20]
00554d64  00 30 90 e5                                      ldr r3, [r0]
00554d68  0f e0 a0 e1                                      mov lr, pc
00554d6c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00554d70  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554d74  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554d78  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00554d7c  31 10 cd e5                                      strb r1, [sp, #0x31]
00554d80  32 20 cd e5                                      strb r2, [sp, #0x32]
00554d84  33 30 cd e5                                      strb r3, [sp, #0x33]
00554d88  30 00 cd e5                                      strb r0, [sp, #0x30]
00554d8c  30 e0 9d e5                                      ldr lr, [sp, #0x30]
00554d90  05 20 a0 e1                                      mov r2, r5
00554d94  18 50 9d e5                                      ldr r5, [sp, #0x18]
00554d98  01 c0 a0 e3                                      mov ip, #1
00554d9c  0e 30 a0 e1                                      mov r3, lr
00554da0  70 e0 8d e5                                      str lr, [sp, #0x70]
00554da4  04 c0 8d e5                                      str ip, [sp, #4]
00554da8  00 c0 8d e5                                      str ip, [sp]
00554dac  07 00 a0 e1                                      mov r0, r7
00554db0  06 10 a0 e1                                      mov r1, r6
00554db4  08 50 8d e5                                      str r5, [sp, #8]
00554db8  38 ff 2f e1                                      blx r8
00554dbc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00554dc0  28 60 9d e5                                      ldr r6, [sp, #0x28]
00554dc4  38 00 94 e5                                      ldr r0, [r4, #0x38]
00554dc8  01 20 43 e2                                      sub r2, r3, #1
00554dcc  01 10 46 e2                                      sub r1, r6, #1
00554dd0  38 00 8d e5                                      str r0, [sp, #0x38]
00554dd4  40 10 8d e5                                      str r1, [sp, #0x40]
00554dd8  3c 20 8d e5                                      str r2, [sp, #0x3c]
00554ddc  44 30 8d e5                                      str r3, [sp, #0x44]
00554de0  00 30 9b e5                                      ldr r3, [fp]
00554de4  0b 00 a0 e1                                      mov r0, fp
00554de8  00 10 a0 e3                                      mov r1, #0
00554dec  0f e0 a0 e1                                      mov lr, pc
00554df0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00554df4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554df8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554dfc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00554e00  31 10 cd e5                                      strb r1, [sp, #0x31]
00554e04  32 20 cd e5                                      strb r2, [sp, #0x32]
00554e08  33 30 cd e5                                      strb r3, [sp, #0x33]
00554e0c  30 00 cd e5                                      strb r0, [sp, #0x30]
00554e10  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00554e14  38 50 8d e2                                      add r5, sp, #0x38
00554e18  05 20 a0 e1                                      mov r2, r5
00554e1c  0c 10 a0 e1                                      mov r1, ip
00554e20  18 30 9d e5                                      ldr r3, [sp, #0x18]
00554e24  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00554e28  6c c0 8d e5                                      str ip, [sp, #0x6c]
00554e2c  92 2a 01 eb                                      bl #0x59f87c
00554e30  40 30 94 e5                                      ldr r3, [r4, #0x40]
00554e34  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00554e38  0b 00 a0 e1                                      mov r0, fp
00554e3c  40 30 8d e5                                      str r3, [sp, #0x40]
00554e40  38 c0 8d e5                                      str ip, [sp, #0x38]
00554e44  00 30 9b e5                                      ldr r3, [fp]
00554e48  00 10 a0 e3                                      mov r1, #0
00554e4c  0f e0 a0 e1                                      mov lr, pc
00554e50  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00554e54  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554e58  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554e5c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00554e60  31 10 cd e5                                      strb r1, [sp, #0x31]
00554e64  32 20 cd e5                                      strb r2, [sp, #0x32]
00554e68  33 30 cd e5                                      strb r3, [sp, #0x33]
00554e6c  30 00 cd e5                                      strb r0, [sp, #0x30]
00554e70  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00554e74  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00554e78  05 20 a0 e1                                      mov r2, r5
00554e7c  0c 10 a0 e1                                      mov r1, ip
00554e80  18 30 9d e5                                      ldr r3, [sp, #0x18]
00554e84  68 c0 8d e5                                      str ip, [sp, #0x68]
00554e88  7b 2a 01 eb                                      bl #0x59f87c
00554e8c  38 ff ff ea                                      b #0x554b74
00554e90  00 30 9b e5                                      ldr r3, [fp]
00554e94  03 10 a0 e3                                      mov r1, #3
00554e98  0b 00 a0 e1                                      mov r0, fp
00554e9c  0f e0 a0 e1                                      mov lr, pc
00554ea0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00554ea4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00554ea8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00554eac  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00554eb0  31 10 cd e5                                      strb r1, [sp, #0x31]
00554eb4  32 20 cd e5                                      strb r2, [sp, #0x32]
00554eb8  33 30 cd e5                                      strb r3, [sp, #0x33]
00554ebc  30 00 cd e5                                      strb r0, [sp, #0x30]
00554ec0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00554ec4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00554ec8  48 20 8d e2                                      add r2, sp, #0x48
00554ecc  0c 10 a0 e1                                      mov r1, ip
00554ed0  48 30 84 e2                                      add r3, r4, #0x48
00554ed4  84 c0 8d e5                                      str ip, [sp, #0x84]
00554ed8  67 2a 01 eb                                      bl #0x59f87c
00554edc  39 fe ff ea                                      b #0x5547c8

; FUNCTION 0x00554ee0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZTv0_n24_N6glitch3gui14CGUITabControlD0Ev
; demangled: virtual thunk to glitch::gui::CGUITabControl::~CGUITabControl()
; decoder-mode: arm
00554ee0  00 30 90 e5                                      ldr r3, [r0]
00554ee4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00554ee8  03 00 80 e0                                      add r0, r0, r3
00554eec  c0 fc ff ea                                      b #0x5541f4

; FUNCTION 0x00554ef0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZTv0_n12_N6glitch3gui14CGUITabControlD0Ev
; demangled: virtual thunk to glitch::gui::CGUITabControl::~CGUITabControl()
; decoder-mode: arm
00554ef0  00 30 90 e5                                      ldr r3, [r0]
00554ef4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00554ef8  03 00 80 e0                                      add r0, r0, r3
00554efc  bc fc ff ea                                      b #0x5541f4

; FUNCTION 0x00554f00, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZTv0_n24_N6glitch3gui14CGUITabControlD1Ev
; demangled: virtual thunk to glitch::gui::CGUITabControl::~CGUITabControl()
; decoder-mode: arm
00554f00  00 30 90 e5                                      ldr r3, [r0]
00554f04  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00554f08  03 00 80 e0                                      add r0, r0, r3
00554f0c  74 fc ff ea                                      b #0x5540e4

; FUNCTION 0x00554f10, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZTv0_n12_N6glitch3gui14CGUITabControlD1Ev
; demangled: virtual thunk to glitch::gui::CGUITabControl::~CGUITabControl()
; decoder-mode: arm
00554f10  00 30 90 e5                                      ldr r3, [r0]
00554f14  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00554f18  03 00 80 e0                                      add r0, r0, r3
00554f1c  70 fc ff ea                                      b #0x5540e4

; FUNCTION 0x00554f30, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZTv0_n20_N6glitch3gui14CGUITabControl21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUITabControl::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00554f30  00 30 90 e5                                      ldr r3, [r0]
00554f34  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00554f38  03 00 80 e0                                      add r0, r0, r3
00554f3c  58 fb ff ea                                      b #0x553ca4

; FUNCTION 0x00554f40, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUITabControl
; alias: _ZTv0_n16_NK6glitch3gui14CGUITabControl19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUITabControl::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00554f40  00 30 90 e5                                      ldr r3, [r0]
00554f44  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00554f48  03 00 80 e0                                      add r0, r0, r3
00554f4c  82 f6 ff ea                                      b #0x55295c
