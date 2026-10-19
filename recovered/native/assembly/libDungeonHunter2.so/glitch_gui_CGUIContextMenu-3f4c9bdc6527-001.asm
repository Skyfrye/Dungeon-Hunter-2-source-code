; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006acdac, declared_size=40, range_size=40, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu12getItemCountEv
; demangled: glitch::gui::CGUIContextMenu::getItemCount() const
; decoder-mode: arm
006acdac  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006acdb0  60 21 90 e5                                      ldr r2, [r0, #0x160]
006acdb4  02 30 63 e0                                      rsb r3, r3, r2
006acdb8  c3 32 a0 e1                                      asr r3, r3, #5
006acdbc  03 01 83 e0                                      add r0, r3, r3, lsl #2
006acdc0  00 02 80 e0                                      add r0, r0, r0, lsl #4
006acdc4  00 04 80 e0                                      add r0, r0, r0, lsl #8
006acdc8  00 08 80 e0                                      add r0, r0, r0, lsl #16
006acdcc  80 00 83 e0                                      add r0, r3, r0, lsl #1
006acdd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006acdd4, declared_size=256, range_size=256, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu10setSubMenuEjPS1_
; demangled: glitch::gui::CGUIContextMenu::setSubMenu(unsigned int, glitch::gui::CGUIContextMenu*)
; decoder-mode: arm
006acdd4  70 40 2d e9                                      push {r4, r5, r6, lr}
006acdd8  00 40 a0 e1                                      mov r4, r0
006acddc  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006acde0  60 01 90 e5                                      ldr r0, [r0, #0x160]
006acde4  02 50 a0 e1                                      mov r5, r2
006acde8  00 00 63 e0                                      rsb r0, r3, r0
006acdec  c0 02 a0 e1                                      asr r0, r0, #5
006acdf0  00 21 80 e0                                      add r2, r0, r0, lsl #2
006acdf4  02 22 82 e0                                      add r2, r2, r2, lsl #4
006acdf8  02 24 82 e0                                      add r2, r2, r2, lsl #8
006acdfc  02 28 82 e0                                      add r2, r2, r2, lsl #16
006ace00  82 00 80 e0                                      add r0, r0, r2, lsl #1
006ace04  00 00 51 e1                                      cmp r1, r0
006ace08  29 00 00 2a                                      bhs #0x6aceb4
006ace0c  60 60 a0 e3                                      mov r6, #0x60
006ace10  96 01 06 e0                                      mul r6, r6, r1
006ace14  06 30 83 e0                                      add r3, r3, r6
006ace18  58 20 93 e5                                      ldr r2, [r3, #0x58]
006ace1c  00 00 52 e3                                      cmp r2, #0
006ace20  05 00 00 0a                                      beq #0x6ace3c
006ace24  00 30 92 e5                                      ldr r3, [r2]
006ace28  10 00 13 e5                                      ldr r0, [r3, #-0x10]
006ace2c  00 00 82 e0                                      add r0, r2, r0
006ace30  d3 c1 f1 eb                                      bl #0x31d584
006ace34  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ace38  06 30 83 e0                                      add r3, r3, r6
006ace3c  58 50 83 e5                                      str r5, [r3, #0x58]
006ace40  00 30 95 e5                                      ldr r3, [r5]
006ace44  05 00 a0 e1                                      mov r0, r5
006ace48  00 10 a0 e3                                      mov r1, #0
006ace4c  0f e0 a0 e1                                      mov lr, pc
006ace50  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006ace54  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ace58  06 60 83 e0                                      add r6, r3, r6
006ace5c  58 30 96 e5                                      ldr r3, [r6, #0x58]
006ace60  00 00 53 e3                                      cmp r3, #0
006ace64  0e 00 00 0a                                      beq #0x6acea4
006ace68  00 30 95 e5                                      ldr r3, [r5]
006ace6c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006ace70  03 30 85 e0                                      add r3, r5, r3
006ace74  04 20 93 e5                                      ldr r2, [r3, #4]
006ace78  01 20 82 e2                                      add r2, r2, #1
006ace7c  04 20 83 e5                                      str r2, [r3, #4]
006ace80  00 30 a0 e3                                      mov r3, #0
006ace84  78 31 c5 e5                                      strb r3, [r5, #0x178]
006ace88  50 31 94 e5                                      ldr r3, [r4, #0x150]
006ace8c  03 00 a0 e1                                      mov r0, r3
006ace90  00 30 93 e5                                      ldr r3, [r3]
006ace94  0f e0 a0 e1                                      mov lr, pc
006ace98  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006ace9c  00 00 55 e1                                      cmp r5, r0
006acea0  04 00 00 0a                                      beq #0x6aceb8
006acea4  04 00 a0 e1                                      mov r0, r4
006acea8  00 30 94 e5                                      ldr r3, [r4]
006aceac  0f e0 a0 e1                                      mov lr, pc
006aceb0  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006aceb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006aceb8  50 31 94 e5                                      ldr r3, [r4, #0x150]
006acebc  04 10 a0 e1                                      mov r1, r4
006acec0  03 00 a0 e1                                      mov r0, r3
006acec4  00 30 93 e5                                      ldr r3, [r3]
006acec8  0f e0 a0 e1                                      mov lr, pc
006acecc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aced0  f3 ff ff ea                                      b #0x6acea4

; FUNCTION 0x006aced4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu12addSeparatorEv
; demangled: glitch::gui::CGUIContextMenu::addSeparator()
; decoder-mode: arm
006aced4  04 e0 2d e5                                      str lr, [sp, #-4]!
006aced8  00 30 a0 e3                                      mov r3, #0
006acedc  0c d0 4d e2                                      sub sp, sp, #0xc
006acee0  00 c0 90 e5                                      ldr ip, [r0]
006acee4  03 10 a0 e1                                      mov r1, r3
006acee8  00 30 8d e5                                      str r3, [sp]
006aceec  04 30 8d e5                                      str r3, [sp, #4]
006acef0  00 20 e0 e3                                      mvn r2, #0
006acef4  01 30 a0 e3                                      mov r3, #1
006acef8  0f e0 a0 e1                                      mov lr, pc
006acefc  80 f0 9c e5                                      ldr pc, [ip, #0x80]
006acf00  0c d0 8d e2                                      add sp, sp, #0xc
006acf04  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006acf08, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu11getItemTextEj
; demangled: glitch::gui::CGUIContextMenu::getItemText(unsigned int) const
; decoder-mode: arm
006acf08  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006acf0c  60 21 90 e5                                      ldr r2, [r0, #0x160]
006acf10  02 20 63 e0                                      rsb r2, r3, r2
006acf14  c2 22 a0 e1                                      asr r2, r2, #5
006acf18  02 01 82 e0                                      add r0, r2, r2, lsl #2
006acf1c  00 02 80 e0                                      add r0, r0, r0, lsl #4
006acf20  00 04 80 e0                                      add r0, r0, r0, lsl #8
006acf24  00 08 80 e0                                      add r0, r0, r0, lsl #16
006acf28  80 20 82 e0                                      add r2, r2, r0, lsl #1
006acf2c  02 00 51 e1                                      cmp r1, r2
006acf30  60 20 a0 33                                      movlo r2, #0x60
006acf34  92 31 23 30                                      mlalo r3, r2, r1, r3
006acf38  00 00 a0 23                                      movhs r0, #0
006acf3c  44 00 93 35                                      ldrlo r0, [r3, #0x44]
006acf40  1e ff 2f e1                                      bx lr

; FUNCTION 0x006acf44, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu13isItemEnabledEj
; demangled: glitch::gui::CGUIContextMenu::isItemEnabled(unsigned int) const
; decoder-mode: arm
006acf44  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006acf48  60 21 90 e5                                      ldr r2, [r0, #0x160]
006acf4c  02 20 63 e0                                      rsb r2, r3, r2
006acf50  c2 22 a0 e1                                      asr r2, r2, #5
006acf54  02 01 82 e0                                      add r0, r2, r2, lsl #2
006acf58  00 02 80 e0                                      add r0, r0, r0, lsl #4
006acf5c  00 04 80 e0                                      add r0, r0, r0, lsl #8
006acf60  00 08 80 e0                                      add r0, r0, r0, lsl #16
006acf64  80 20 82 e0                                      add r2, r2, r0, lsl #1
006acf68  02 00 51 e1                                      cmp r1, r2
006acf6c  60 20 a0 33                                      movlo r2, #0x60
006acf70  92 31 23 30                                      mlalo r3, r2, r1, r3
006acf74  00 00 a0 23                                      movhs r0, #0
006acf78  49 00 d3 35                                      ldrblo r0, [r3, #0x49]
006acf7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006acf80, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu13isItemCheckedEj
; demangled: glitch::gui::CGUIContextMenu::isItemChecked(unsigned int) const
; decoder-mode: arm
006acf80  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006acf84  60 21 90 e5                                      ldr r2, [r0, #0x160]
006acf88  02 20 63 e0                                      rsb r2, r3, r2
006acf8c  c2 22 a0 e1                                      asr r2, r2, #5
006acf90  02 01 82 e0                                      add r0, r2, r2, lsl #2
006acf94  00 02 80 e0                                      add r0, r0, r0, lsl #4
006acf98  00 04 80 e0                                      add r0, r0, r0, lsl #8
006acf9c  00 08 80 e0                                      add r0, r0, r0, lsl #16
006acfa0  80 20 82 e0                                      add r2, r2, r0, lsl #1
006acfa4  02 00 51 e1                                      cmp r1, r2
006acfa8  60 20 a0 33                                      movlo r2, #0x60
006acfac  92 31 23 30                                      mlalo r3, r2, r1, r3
006acfb0  00 00 a0 23                                      movhs r0, #0
006acfb4  4a 00 d3 35                                      ldrblo r0, [r3, #0x4a]
006acfb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006acfbc, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu14setItemEnabledEjb
; demangled: glitch::gui::CGUIContextMenu::setItemEnabled(unsigned int, bool)
; decoder-mode: arm
006acfbc  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006acfc0  60 c1 90 e5                                      ldr ip, [r0, #0x160]
006acfc4  0c c0 63 e0                                      rsb ip, r3, ip
006acfc8  cc c2 a0 e1                                      asr ip, ip, #5
006acfcc  0c 01 8c e0                                      add r0, ip, ip, lsl #2
006acfd0  00 02 80 e0                                      add r0, r0, r0, lsl #4
006acfd4  00 04 80 e0                                      add r0, r0, r0, lsl #8
006acfd8  00 08 80 e0                                      add r0, r0, r0, lsl #16
006acfdc  80 c0 8c e0                                      add ip, ip, r0, lsl #1
006acfe0  0c 00 51 e1                                      cmp r1, ip
006acfe4  60 00 a0 33                                      movlo r0, #0x60
006acfe8  90 31 23 30                                      mlalo r3, r0, r1, r3
006acfec  49 20 c3 35                                      strblo r2, [r3, #0x49]
006acff0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006acff4, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu14setItemCheckedEjb
; demangled: glitch::gui::CGUIContextMenu::setItemChecked(unsigned int, bool)
; decoder-mode: arm
006acff4  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006acff8  60 c1 90 e5                                      ldr ip, [r0, #0x160]
006acffc  0c c0 63 e0                                      rsb ip, r3, ip
006ad000  cc c2 a0 e1                                      asr ip, ip, #5
006ad004  0c 01 8c e0                                      add r0, ip, ip, lsl #2
006ad008  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad00c  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad010  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad014  80 c0 8c e0                                      add ip, ip, r0, lsl #1
006ad018  0c 00 51 e1                                      cmp r1, ip
006ad01c  60 00 a0 33                                      movlo r0, #0x60
006ad020  90 31 23 30                                      mlalo r3, r0, r1, r3
006ad024  4a 20 c3 35                                      strblo r2, [r3, #0x4a]
006ad028  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ad02c, declared_size=420, range_size=420, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu9sendClickERKNS_4core10position2dIiEE
; demangled: glitch::gui::CGUIContextMenu::sendClick(glitch::core::position2d<int> const&)
; decoder-mode: arm
006ad02c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006ad030  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006ad034  60 21 90 e5                                      ldr r2, [r0, #0x160]
006ad038  01 60 a0 e1                                      mov r6, r1
006ad03c  1c d0 4d e2                                      sub sp, sp, #0x1c
006ad040  02 10 63 e0                                      rsb r1, r3, r2
006ad044  5f 00 51 e3                                      cmp r1, #0x5f
006ad048  00 50 a0 e1                                      mov r5, r0
006ad04c  17 00 00 da                                      ble #0x6ad0b0
006ad050  00 40 a0 e3                                      mov r4, #0
006ad054  04 70 a0 e1                                      mov r7, r4
006ad058  04 10 83 e0                                      add r1, r3, r4
006ad05c  58 10 91 e5                                      ldr r1, [r1, #0x58]
006ad060  00 00 51 e2                                      subs r0, r1, #0
006ad064  06 00 00 0a                                      beq #0x6ad084
006ad068  00 30 91 e5                                      ldr r3, [r1]
006ad06c  0f e0 a0 e1                                      mov lr, pc
006ad070  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006ad074  00 00 50 e3                                      cmp r0, #0
006ad078  26 00 00 1a                                      bne #0x6ad118
006ad07c  5c 31 95 e5                                      ldr r3, [r5, #0x15c]
006ad080  60 21 95 e5                                      ldr r2, [r5, #0x160]
006ad084  02 10 63 e0                                      rsb r1, r3, r2
006ad088  c1 12 a0 e1                                      asr r1, r1, #5
006ad08c  01 70 87 e2                                      add r7, r7, #1
006ad090  01 01 81 e0                                      add r0, r1, r1, lsl #2
006ad094  60 40 84 e2                                      add r4, r4, #0x60
006ad098  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad09c  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad0a0  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad0a4  80 10 81 e0                                      add r1, r1, r0, lsl #1
006ad0a8  01 00 57 e1                                      cmp r7, r1
006ad0ac  e9 ff ff ba                                      blt #0x6ad058
006ad0b0  06 10 a0 e1                                      mov r1, r6
006ad0b4  00 30 95 e5                                      ldr r3, [r5]
006ad0b8  05 00 a0 e1                                      mov r0, r5
006ad0bc  0f e0 a0 e1                                      mov lr, pc
006ad0c0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ad0c4  00 00 50 e3                                      cmp r0, #0
006ad0c8  39 00 00 0a                                      beq #0x6ad1b4
006ad0cc  56 0f 85 e2                                      add r0, r5, #0x158
006ad0d0  0b 00 90 e8                                      ldm r0, {r0, r1, r3}
006ad0d4  03 30 61 e0                                      rsb r3, r1, r3
006ad0d8  c3 32 a0 e1                                      asr r3, r3, #5
006ad0dc  03 21 83 e0                                      add r2, r3, r3, lsl #2
006ad0e0  02 22 82 e0                                      add r2, r2, r2, lsl #4
006ad0e4  02 24 82 e0                                      add r2, r2, r2, lsl #8
006ad0e8  02 28 82 e0                                      add r2, r2, r2, lsl #16
006ad0ec  82 30 83 e0                                      add r3, r3, r2, lsl #1
006ad0f0  03 00 50 e1                                      cmp r0, r3
006ad0f4  2e 00 00 2a                                      bhs #0x6ad1b4
006ad0f8  60 30 a0 e3                                      mov r3, #0x60
006ad0fc  93 10 21 e0                                      mla r1, r3, r0, r1
006ad100  49 30 d1 e5                                      ldrb r3, [r1, #0x49]
006ad104  00 00 53 e3                                      cmp r3, #0
006ad108  14 00 00 1a                                      bne #0x6ad160
006ad10c  02 00 a0 e3                                      mov r0, #2
006ad110  1c d0 8d e2                                      add sp, sp, #0x1c
006ad114  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006ad118  5c 31 95 e5                                      ldr r3, [r5, #0x15c]
006ad11c  06 10 a0 e1                                      mov r1, r6
006ad120  04 40 83 e0                                      add r4, r3, r4
006ad124  58 30 94 e5                                      ldr r3, [r4, #0x58]
006ad128  03 00 a0 e1                                      mov r0, r3
006ad12c  00 30 93 e5                                      ldr r3, [r3]
006ad130  0f e0 a0 e1                                      mov lr, pc
006ad134  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
006ad138  00 00 50 e3                                      cmp r0, #0
006ad13c  f3 ff ff 1a                                      bne #0x6ad110
006ad140  06 10 a0 e1                                      mov r1, r6
006ad144  00 30 95 e5                                      ldr r3, [r5]
006ad148  05 00 a0 e1                                      mov r0, r5
006ad14c  0f e0 a0 e1                                      mov lr, pc
006ad150  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ad154  00 00 50 e3                                      cmp r0, #0
006ad158  15 00 00 0a                                      beq #0x6ad1b4
006ad15c  da ff ff ea                                      b #0x6ad0cc
006ad160  48 30 d1 e5                                      ldrb r3, [r1, #0x48]
006ad164  00 00 53 e3                                      cmp r3, #0
006ad168  e7 ff ff 1a                                      bne #0x6ad10c
006ad16c  58 20 91 e5                                      ldr r2, [r1, #0x58]
006ad170  00 00 52 e3                                      cmp r2, #0
006ad174  e4 ff ff 1a                                      bne #0x6ad10c
006ad178  24 30 95 e5                                      ldr r3, [r5, #0x24]
006ad17c  12 10 a0 e3                                      mov r1, #0x12
006ad180  0c 20 8d e5                                      str r2, [sp, #0xc]
006ad184  00 00 53 e3                                      cmp r3, #0
006ad188  10 10 8d e5                                      str r1, [sp, #0x10]
006ad18c  00 20 8d e5                                      str r2, [sp]
006ad190  08 50 8d e5                                      str r5, [sp, #8]
006ad194  08 00 00 0a                                      beq #0x6ad1bc
006ad198  03 00 a0 e1                                      mov r0, r3
006ad19c  0d 10 a0 e1                                      mov r1, sp
006ad1a0  00 30 93 e5                                      ldr r3, [r3]
006ad1a4  0f e0 a0 e1                                      mov lr, pc
006ad1a8  08 f0 93 e5                                      ldr pc, [r3, #8]
006ad1ac  01 00 a0 e3                                      mov r0, #1
006ad1b0  d6 ff ff ea                                      b #0x6ad110
006ad1b4  00 00 a0 e3                                      mov r0, #0
006ad1b8  d4 ff ff ea                                      b #0x6ad110
006ad1bc  74 31 95 e5                                      ldr r3, [r5, #0x174]
006ad1c0  00 00 53 e3                                      cmp r3, #0
006ad1c4  f3 ff ff 1a                                      bne #0x6ad198
006ad1c8  01 00 a0 e3                                      mov r0, #1
006ad1cc  cf ff ff ea                                      b #0x6ad110

; FUNCTION 0x006ad1d0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu8getHRectERKNS1_5SItemERKNS_4core4rectIiEE
; demangled: glitch::gui::CGUIContextMenu::getHRect(glitch::gui::CGUIContextMenu::SItem const&, glitch::core::rect<int> const&) const
; decoder-mode: arm
006ad1d0  04 40 2d e5                                      str r4, [sp, #-4]!
006ad1d4  00 c0 93 e5                                      ldr ip, [r3]
006ad1d8  00 c0 80 e5                                      str ip, [r0]
006ad1dc  04 c0 93 e5                                      ldr ip, [r3, #4]
006ad1e0  04 c0 80 e5                                      str ip, [r0, #4]
006ad1e4  08 40 93 e5                                      ldr r4, [r3, #8]
006ad1e8  08 40 80 e5                                      str r4, [r0, #8]
006ad1ec  0c 30 93 e5                                      ldr r3, [r3, #0xc]
006ad1f0  0c 30 80 e5                                      str r3, [r0, #0xc]
006ad1f4  54 30 92 e5                                      ldr r3, [r2, #0x54]
006ad1f8  03 30 8c e0                                      add r3, ip, r3
006ad1fc  04 30 80 e5                                      str r3, [r0, #4]
006ad200  50 20 92 e5                                      ldr r2, [r2, #0x50]
006ad204  02 30 83 e0                                      add r3, r3, r2
006ad208  0c 30 80 e5                                      str r3, [r0, #0xc]
006ad20c  10 00 bd e8                                      ldm sp!, {r4}
006ad210  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ad214, declared_size=76, range_size=76, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu7getRectERKNS1_5SItemERKNS_4core4rectIiEE
; demangled: glitch::gui::CGUIContextMenu::getRect(glitch::gui::CGUIContextMenu::SItem const&, glitch::core::rect<int> const&) const
; decoder-mode: arm
006ad214  30 00 2d e9                                      push {r4, r5}
006ad218  00 c0 93 e5                                      ldr ip, [r3]
006ad21c  00 c0 80 e5                                      str ip, [r0]
006ad220  04 40 93 e5                                      ldr r4, [r3, #4]
006ad224  14 c0 8c e2                                      add ip, ip, #0x14
006ad228  04 40 80 e5                                      str r4, [r0, #4]
006ad22c  08 50 93 e5                                      ldr r5, [r3, #8]
006ad230  08 50 80 e5                                      str r5, [r0, #8]
006ad234  0c 30 93 e5                                      ldr r3, [r3, #0xc]
006ad238  0c 30 80 e5                                      str r3, [r0, #0xc]
006ad23c  54 30 92 e5                                      ldr r3, [r2, #0x54]
006ad240  03 30 84 e0                                      add r3, r4, r3
006ad244  04 30 80 e5                                      str r3, [r0, #4]
006ad248  50 20 92 e5                                      ldr r2, [r2, #0x50]
006ad24c  00 c0 80 e5                                      str ip, [r0]
006ad250  02 30 83 e0                                      add r3, r3, r2
006ad254  0c 30 80 e5                                      str r3, [r0, #0xc]
006ad258  30 00 bd e8                                      pop {r4, r5}
006ad25c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ad260, declared_size=628, range_size=628, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu15recalculateSizeEv
; demangled: glitch::gui::CGUIContextMenu::recalculateSize()
; decoder-mode: arm
006ad260  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ad264  50 31 90 e5                                      ldr r3, [r0, #0x150]
006ad268  34 d0 4d e2                                      sub sp, sp, #0x34
006ad26c  00 40 a0 e1                                      mov r4, r0
006ad270  03 00 a0 e1                                      mov r0, r3
006ad274  00 30 93 e5                                      ldr r3, [r3]
006ad278  0f e0 a0 e1                                      mov lr, pc
006ad27c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ad280  03 10 a0 e3                                      mov r1, #3
006ad284  00 30 90 e5                                      ldr r3, [r0]
006ad288  0f e0 a0 e1                                      mov lr, pc
006ad28c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006ad290  00 90 50 e2                                      subs sb, r0, #0
006ad294  8c 00 00 0a                                      beq #0x6ad4cc
006ad298  5c 61 94 e5                                      ldr r6, [r4, #0x15c]
006ad29c  60 21 94 e5                                      ldr r2, [r4, #0x160]
006ad2a0  28 30 94 e5                                      ldr r3, [r4, #0x28]
006ad2a4  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006ad2a8  02 20 66 e0                                      rsb r2, r6, r2
006ad2ac  c2 22 a0 e1                                      asr r2, r2, #5
006ad2b0  00 50 a0 e3                                      mov r5, #0
006ad2b4  02 01 82 e0                                      add r0, r2, r2, lsl #2
006ad2b8  28 50 8d e5                                      str r5, [sp, #0x28]
006ad2bc  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad2c0  2c 50 8d e5                                      str r5, [sp, #0x2c]
006ad2c4  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad2c8  20 30 8d e5                                      str r3, [sp, #0x20]
006ad2cc  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad2d0  24 10 8d e5                                      str r1, [sp, #0x24]
006ad2d4  80 20 82 e0                                      add r2, r2, r0, lsl #1
006ad2d8  05 00 52 e1                                      cmp r2, r5
006ad2dc  64 b0 a0 03                                      moveq fp, #0x64
006ad2e0  0a 70 a0 03                                      moveq r7, #0xa
006ad2e4  41 00 00 0a                                      beq #0x6ad3f0
006ad2e8  64 a0 a0 e3                                      mov sl, #0x64
006ad2ec  08 30 8d e2                                      add r3, sp, #8
006ad2f0  05 80 a0 e1                                      mov r8, r5
006ad2f4  03 70 a0 e3                                      mov r7, #3
006ad2f8  0a c0 a0 e1                                      mov ip, sl
006ad2fc  03 b0 a0 e1                                      mov fp, r3
006ad300  18 00 00 ea                                      b #0x6ad368
006ad304  4c c0 86 e5                                      str ip, [r6, #0x4c]
006ad308  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ad30c  0a 20 a0 e3                                      mov r2, #0xa
006ad310  05 30 83 e0                                      add r3, r3, r5
006ad314  50 20 83 e5                                      str r2, [r3, #0x50]
006ad318  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ad31c  05 30 83 e0                                      add r3, r3, r5
006ad320  54 70 83 e5                                      str r7, [r3, #0x54]
006ad324  5c 61 94 e5                                      ldr r6, [r4, #0x15c]
006ad328  60 31 94 e5                                      ldr r3, [r4, #0x160]
006ad32c  01 80 88 e2                                      add r8, r8, #1
006ad330  05 20 86 e0                                      add r2, r6, r5
006ad334  03 30 66 e0                                      rsb r3, r6, r3
006ad338  c3 32 a0 e1                                      asr r3, r3, #5
006ad33c  50 00 92 e5                                      ldr r0, [r2, #0x50]
006ad340  03 21 83 e0                                      add r2, r3, r3, lsl #2
006ad344  60 50 85 e2                                      add r5, r5, #0x60
006ad348  02 22 82 e0                                      add r2, r2, r2, lsl #4
006ad34c  00 70 87 e0                                      add r7, r7, r0
006ad350  02 24 82 e0                                      add r2, r2, r2, lsl #8
006ad354  01 a0 a0 e1                                      mov sl, r1
006ad358  02 28 82 e0                                      add r2, r2, r2, lsl #16
006ad35c  82 30 83 e0                                      add r3, r3, r2, lsl #1
006ad360  03 00 58 e1                                      cmp r8, r3
006ad364  1b 00 00 2a                                      bhs #0x6ad3d8
006ad368  05 60 86 e0                                      add r6, r6, r5
006ad36c  48 30 d6 e5                                      ldrb r3, [r6, #0x48]
006ad370  0a 10 a0 e1                                      mov r1, sl
006ad374  00 00 53 e3                                      cmp r3, #0
006ad378  e1 ff ff 1a                                      bne #0x6ad304
006ad37c  00 30 99 e5                                      ldr r3, [sb]
006ad380  44 20 96 e5                                      ldr r2, [r6, #0x44]
006ad384  09 10 a0 e1                                      mov r1, sb
006ad388  04 c0 8d e5                                      str ip, [sp, #4]
006ad38c  0b 00 a0 e1                                      mov r0, fp
006ad390  0f e0 a0 e1                                      mov lr, pc
006ad394  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006ad398  08 30 9d e5                                      ldr r3, [sp, #8]
006ad39c  4c 30 86 e5                                      str r3, [r6, #0x4c]
006ad3a0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006ad3a4  50 30 86 e5                                      str r3, [r6, #0x50]
006ad3a8  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ad3ac  05 30 83 e0                                      add r3, r3, r5
006ad3b0  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
006ad3b4  28 20 82 e2                                      add r2, r2, #0x28
006ad3b8  4c 20 83 e5                                      str r2, [r3, #0x4c]
006ad3bc  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ad3c0  04 c0 9d e5                                      ldr ip, [sp, #4]
006ad3c4  05 30 83 e0                                      add r3, r3, r5
006ad3c8  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
006ad3cc  0a 00 51 e1                                      cmp r1, sl
006ad3d0  0a 10 a0 b1                                      movlt r1, sl
006ad3d4  d1 ff ff ea                                      b #0x6ad320
006ad3d8  05 70 87 e2                                      add r7, r7, #5
006ad3dc  01 b0 a0 e1                                      mov fp, r1
006ad3e0  28 30 94 e5                                      ldr r3, [r4, #0x28]
006ad3e4  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006ad3e8  09 00 57 e3                                      cmp r7, #9
006ad3ec  0a 70 a0 d3                                      movle r7, #0xa
006ad3f0  03 30 8b e0                                      add r3, fp, r3
006ad3f4  01 70 87 e0                                      add r7, r7, r1
006ad3f8  04 00 a0 e1                                      mov r0, r4
006ad3fc  20 10 8d e2                                      add r1, sp, #0x20
006ad400  28 30 8d e5                                      str r3, [sp, #0x28]
006ad404  2c 70 8d e5                                      str r7, [sp, #0x2c]
006ad408  cc 1c fa eb                                      bl #0x534740
006ad40c  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006ad410  60 c1 94 e5                                      ldr ip, [r4, #0x160]
006ad414  0c 30 62 e0                                      rsb r3, r2, ip
006ad418  c3 32 a0 e1                                      asr r3, r3, #5
006ad41c  03 11 83 e0                                      add r1, r3, r3, lsl #2
006ad420  01 12 81 e0                                      add r1, r1, r1, lsl #4
006ad424  01 14 81 e0                                      add r1, r1, r1, lsl #8
006ad428  01 18 81 e0                                      add r1, r1, r1, lsl #16
006ad42c  81 30 83 e0                                      add r3, r3, r1, lsl #1
006ad430  00 00 53 e3                                      cmp r3, #0
006ad434  24 00 00 0a                                      beq #0x6ad4cc
006ad438  00 50 a0 e3                                      mov r5, #0
006ad43c  05 60 a0 e1                                      mov r6, r5
006ad440  05 80 4b e2                                      sub r8, fp, #5
006ad444  10 70 8d e2                                      add r7, sp, #0x10
006ad448  05 30 82 e0                                      add r3, r2, r5
006ad44c  58 00 93 e5                                      ldr r0, [r3, #0x58]
006ad450  01 60 86 e2                                      add r6, r6, #1
006ad454  60 50 85 e2                                      add r5, r5, #0x60
006ad458  00 00 50 e3                                      cmp r0, #0
006ad45c  11 00 00 0a                                      beq #0x6ad4a8
006ad460  40 c0 90 e5                                      ldr ip, [r0, #0x40]
006ad464  54 30 93 e5                                      ldr r3, [r3, #0x54]
006ad468  38 e0 90 e5                                      ldr lr, [r0, #0x38]
006ad46c  44 20 90 e5                                      ldr r2, [r0, #0x44]
006ad470  3c 10 90 e5                                      ldr r1, [r0, #0x3c]
006ad474  05 c0 4c e2                                      sub ip, ip, #5
006ad478  0c c0 6e e0                                      rsb ip, lr, ip
006ad47c  02 20 83 e0                                      add r2, r3, r2
006ad480  02 20 61 e0                                      rsb r2, r1, r2
006ad484  0b c0 8c e0                                      add ip, ip, fp
006ad488  07 10 a0 e1                                      mov r1, r7
006ad48c  18 c0 8d e5                                      str ip, [sp, #0x18]
006ad490  1c 20 8d e5                                      str r2, [sp, #0x1c]
006ad494  14 30 8d e5                                      str r3, [sp, #0x14]
006ad498  10 80 8d e5                                      str r8, [sp, #0x10]
006ad49c  a7 1c fa eb                                      bl #0x534740
006ad4a0  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006ad4a4  60 c1 94 e5                                      ldr ip, [r4, #0x160]
006ad4a8  0c 30 62 e0                                      rsb r3, r2, ip
006ad4ac  c3 32 a0 e1                                      asr r3, r3, #5
006ad4b0  03 11 83 e0                                      add r1, r3, r3, lsl #2
006ad4b4  01 12 81 e0                                      add r1, r1, r1, lsl #4
006ad4b8  01 14 81 e0                                      add r1, r1, r1, lsl #8
006ad4bc  01 18 81 e0                                      add r1, r1, r1, lsl #16
006ad4c0  81 30 83 e0                                      add r3, r3, r1, lsl #1
006ad4c4  03 00 56 e1                                      cmp r6, r3
006ad4c8  de ff ff 3a                                      blo #0x6ad448
006ad4cc  34 d0 8d e2                                      add sp, sp, #0x34
006ad4d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006ad4d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu15getSelectedItemEv
; demangled: glitch::gui::CGUIContextMenu::getSelectedItem() const
; decoder-mode: arm
006ad4d4  58 01 90 e5                                      ldr r0, [r0, #0x158]
006ad4d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ad4dc, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu10getSubMenuEj
; demangled: glitch::gui::CGUIContextMenu::getSubMenu(unsigned int) const
; decoder-mode: arm
006ad4dc  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006ad4e0  60 21 90 e5                                      ldr r2, [r0, #0x160]
006ad4e4  02 20 63 e0                                      rsb r2, r3, r2
006ad4e8  c2 22 a0 e1                                      asr r2, r2, #5
006ad4ec  02 01 82 e0                                      add r0, r2, r2, lsl #2
006ad4f0  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad4f4  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad4f8  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad4fc  80 20 82 e0                                      add r2, r2, r0, lsl #1
006ad500  02 00 51 e1                                      cmp r1, r2
006ad504  60 20 a0 33                                      movlo r2, #0x60
006ad508  92 31 23 30                                      mlalo r3, r2, r1, r3
006ad50c  00 00 a0 23                                      movhs r0, #0
006ad510  58 00 93 35                                      ldrlo r0, [r3, #0x58]
006ad514  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ad518, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu16getItemCommandIdEj
; demangled: glitch::gui::CGUIContextMenu::getItemCommandId(unsigned int) const
; decoder-mode: arm
006ad518  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006ad51c  60 21 90 e5                                      ldr r2, [r0, #0x160]
006ad520  02 20 63 e0                                      rsb r2, r3, r2
006ad524  c2 22 a0 e1                                      asr r2, r2, #5
006ad528  02 01 82 e0                                      add r0, r2, r2, lsl #2
006ad52c  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad530  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad534  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad538  80 20 82 e0                                      add r2, r2, r0, lsl #1
006ad53c  02 00 51 e1                                      cmp r1, r2
006ad540  60 20 a0 33                                      movlo r2, #0x60
006ad544  92 31 23 30                                      mlalo r3, r2, r1, r3
006ad548  00 00 e0 23                                      mvnhs r0, #0
006ad54c  5c 00 93 35                                      ldrlo r0, [r3, #0x5c]
006ad550  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ad554, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu16setItemCommandIdEji
; demangled: glitch::gui::CGUIContextMenu::setItemCommandId(unsigned int, int)
; decoder-mode: arm
006ad554  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006ad558  60 c1 90 e5                                      ldr ip, [r0, #0x160]
006ad55c  0c c0 63 e0                                      rsb ip, r3, ip
006ad560  cc c2 a0 e1                                      asr ip, ip, #5
006ad564  0c 01 8c e0                                      add r0, ip, ip, lsl #2
006ad568  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad56c  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad570  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad574  80 c0 8c e0                                      add ip, ip, r0, lsl #1
006ad578  0c 00 51 e1                                      cmp r1, ip
006ad57c  60 00 a0 33                                      movlo r0, #0x60
006ad580  90 31 23 30                                      mlalo r3, r0, r1, r3
006ad584  5c 20 83 35                                      strlo r2, [r3, #0x5c]
006ad588  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ad58c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu14setEventParentEPNS0_11IGUIElementE
; demangled: glitch::gui::CGUIContextMenu::setEventParent(glitch::gui::IGUIElement*)
; decoder-mode: arm
006ad58c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ad590  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006ad594  60 21 90 e5                                      ldr r2, [r0, #0x160]
006ad598  00 60 a0 e1                                      mov r6, r0
006ad59c  01 70 a0 e1                                      mov r7, r1
006ad5a0  74 11 86 e5                                      str r1, [r6, #0x174]
006ad5a4  02 10 63 e0                                      rsb r1, r3, r2
006ad5a8  c1 12 a0 e1                                      asr r1, r1, #5
006ad5ac  01 01 81 e0                                      add r0, r1, r1, lsl #2
006ad5b0  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad5b4  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad5b8  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad5bc  80 10 81 e0                                      add r1, r1, r0, lsl #1
006ad5c0  00 00 51 e3                                      cmp r1, #0
006ad5c4  14 00 00 0a                                      beq #0x6ad61c
006ad5c8  00 40 a0 e3                                      mov r4, #0
006ad5cc  04 50 a0 e1                                      mov r5, r4
006ad5d0  04 10 83 e0                                      add r1, r3, r4
006ad5d4  58 00 91 e5                                      ldr r0, [r1, #0x58]
006ad5d8  01 50 85 e2                                      add r5, r5, #1
006ad5dc  60 40 84 e2                                      add r4, r4, #0x60
006ad5e0  00 00 50 e3                                      cmp r0, #0
006ad5e4  03 00 00 0a                                      beq #0x6ad5f8
006ad5e8  07 10 a0 e1                                      mov r1, r7
006ad5ec  e6 ff ff eb                                      bl #0x6ad58c
006ad5f0  5c 31 96 e5                                      ldr r3, [r6, #0x15c]
006ad5f4  60 21 96 e5                                      ldr r2, [r6, #0x160]
006ad5f8  02 10 63 e0                                      rsb r1, r3, r2
006ad5fc  c1 12 a0 e1                                      asr r1, r1, #5
006ad600  01 01 81 e0                                      add r0, r1, r1, lsl #2
006ad604  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad608  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad60c  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad610  80 10 81 e0                                      add r1, r1, r0, lsl #1
006ad614  01 00 55 e1                                      cmp r5, r1
006ad618  ec ff ff 3a                                      blo #0x6ad5d0
006ad61c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006ad620, declared_size=164, range_size=164, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu14hasOpenSubMenuEv
; demangled: glitch::gui::CGUIContextMenu::hasOpenSubMenu() const
; decoder-mode: arm
006ad620  70 40 2d e9                                      push {r4, r5, r6, lr}
006ad624  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
006ad628  60 11 90 e5                                      ldr r1, [r0, #0x160]
006ad62c  00 60 a0 e1                                      mov r6, r0
006ad630  01 30 62 e0                                      rsb r3, r2, r1
006ad634  c3 32 a0 e1                                      asr r3, r3, #5
006ad638  03 01 83 e0                                      add r0, r3, r3, lsl #2
006ad63c  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad640  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad644  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad648  80 30 83 e0                                      add r3, r3, r0, lsl #1
006ad64c  00 00 53 e3                                      cmp r3, #0
006ad650  17 00 00 0a                                      beq #0x6ad6b4
006ad654  00 40 a0 e3                                      mov r4, #0
006ad658  04 50 a0 e1                                      mov r5, r4
006ad65c  04 30 82 e0                                      add r3, r2, r4
006ad660  58 30 93 e5                                      ldr r3, [r3, #0x58]
006ad664  00 00 53 e2                                      subs r0, r3, #0
006ad668  06 00 00 0a                                      beq #0x6ad688
006ad66c  00 30 93 e5                                      ldr r3, [r3]
006ad670  0f e0 a0 e1                                      mov lr, pc
006ad674  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006ad678  00 00 50 e3                                      cmp r0, #0
006ad67c  0e 00 00 1a                                      bne #0x6ad6bc
006ad680  5c 21 96 e5                                      ldr r2, [r6, #0x15c]
006ad684  60 11 96 e5                                      ldr r1, [r6, #0x160]
006ad688  01 30 62 e0                                      rsb r3, r2, r1
006ad68c  c3 32 a0 e1                                      asr r3, r3, #5
006ad690  01 50 85 e2                                      add r5, r5, #1
006ad694  03 01 83 e0                                      add r0, r3, r3, lsl #2
006ad698  60 40 84 e2                                      add r4, r4, #0x60
006ad69c  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ad6a0  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ad6a4  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ad6a8  80 30 83 e0                                      add r3, r3, r0, lsl #1
006ad6ac  03 00 55 e1                                      cmp r5, r3
006ad6b0  e9 ff ff 3a                                      blo #0x6ad65c
006ad6b4  00 00 a0 e3                                      mov r0, #0
006ad6b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006ad6bc  01 00 a0 e3                                      mov r0, #1
006ad6c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006ad6c4, declared_size=152, range_size=152, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu16closeAllSubMenusEv
; demangled: glitch::gui::CGUIContextMenu::closeAllSubMenus()
; decoder-mode: arm
006ad6c4  70 40 2d e9                                      push {r4, r5, r6, lr}
006ad6c8  00 60 a0 e1                                      mov r6, r0
006ad6cc  5c 11 90 e5                                      ldr r1, [r0, #0x15c]
006ad6d0  60 01 90 e5                                      ldr r0, [r0, #0x160]
006ad6d4  00 30 61 e0                                      rsb r3, r1, r0
006ad6d8  c3 32 a0 e1                                      asr r3, r3, #5
006ad6dc  03 21 83 e0                                      add r2, r3, r3, lsl #2
006ad6e0  02 22 82 e0                                      add r2, r2, r2, lsl #4
006ad6e4  02 24 82 e0                                      add r2, r2, r2, lsl #8
006ad6e8  02 28 82 e0                                      add r2, r2, r2, lsl #16
006ad6ec  82 30 83 e0                                      add r3, r3, r2, lsl #1
006ad6f0  00 00 53 e3                                      cmp r3, #0
006ad6f4  17 00 00 0a                                      beq #0x6ad758
006ad6f8  00 40 a0 e3                                      mov r4, #0
006ad6fc  04 50 a0 e1                                      mov r5, r4
006ad700  04 30 81 e0                                      add r3, r1, r4
006ad704  58 30 93 e5                                      ldr r3, [r3, #0x58]
006ad708  01 50 85 e2                                      add r5, r5, #1
006ad70c  60 40 84 e2                                      add r4, r4, #0x60
006ad710  00 00 53 e3                                      cmp r3, #0
006ad714  06 00 00 0a                                      beq #0x6ad734
006ad718  03 00 a0 e1                                      mov r0, r3
006ad71c  00 10 a0 e3                                      mov r1, #0
006ad720  00 30 93 e5                                      ldr r3, [r3]
006ad724  0f e0 a0 e1                                      mov lr, pc
006ad728  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006ad72c  5c 11 96 e5                                      ldr r1, [r6, #0x15c]
006ad730  60 01 96 e5                                      ldr r0, [r6, #0x160]
006ad734  00 30 61 e0                                      rsb r3, r1, r0
006ad738  c3 32 a0 e1                                      asr r3, r3, #5
006ad73c  03 21 83 e0                                      add r2, r3, r3, lsl #2
006ad740  02 22 82 e0                                      add r2, r2, r2, lsl #4
006ad744  02 24 82 e0                                      add r2, r2, r2, lsl #8
006ad748  02 28 82 e0                                      add r2, r2, r2, lsl #16
006ad74c  82 30 83 e0                                      add r3, r3, r2, lsl #1
006ad750  03 00 55 e1                                      cmp r5, r3
006ad754  e9 ff ff 3a                                      blo #0x6ad700
006ad758  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006ad8cc, declared_size=108, range_size=108, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu11setItemTextEjPKw
; demangled: glitch::gui::CGUIContextMenu::setItemText(unsigned int, wchar_t const*)
; decoder-mode: arm
006ad8cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ad8d0  5c 51 90 e5                                      ldr r5, [r0, #0x15c]
006ad8d4  60 31 90 e5                                      ldr r3, [r0, #0x160]
006ad8d8  02 70 a0 e1                                      mov r7, r2
006ad8dc  00 40 a0 e1                                      mov r4, r0
006ad8e0  03 30 65 e0                                      rsb r3, r5, r3
006ad8e4  c3 32 a0 e1                                      asr r3, r3, #5
006ad8e8  01 60 a0 e1                                      mov r6, r1
006ad8ec  03 21 83 e0                                      add r2, r3, r3, lsl #2
006ad8f0  02 22 82 e0                                      add r2, r2, r2, lsl #4
006ad8f4  02 24 82 e0                                      add r2, r2, r2, lsl #8
006ad8f8  02 28 82 e0                                      add r2, r2, r2, lsl #16
006ad8fc  82 30 83 e0                                      add r3, r3, r2, lsl #1
006ad900  03 00 51 e1                                      cmp r1, r3
006ad904  0a 00 00 2a                                      bhs #0x6ad934
006ad908  07 00 a0 e1                                      mov r0, r7
006ad90c  dd 84 f1 eb                                      bl #0x30ec88
006ad910  00 21 87 e0                                      add r2, r7, r0, lsl #2
006ad914  60 00 a0 e3                                      mov r0, #0x60
006ad918  90 56 20 e0                                      mla r0, r0, r6, r5
006ad91c  07 10 a0 e1                                      mov r1, r7
006ad920  1e d6 f1 eb                                      bl #0x3231a0
006ad924  04 00 a0 e1                                      mov r0, r4
006ad928  00 30 94 e5                                      ldr r3, [r4]
006ad92c  0f e0 a0 e1                                      mov lr, pc
006ad930  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006ad934  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006ad9e8, declared_size=596, range_size=596, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu9highlightERKNS_4core10position2dIiEEb
; demangled: glitch::gui::CGUIContextMenu::highlight(glitch::core::position2d<int> const&, bool)
; decoder-mode: arm
006ad9e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ad9ec  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006ad9f0  60 c1 90 e5                                      ldr ip, [r0, #0x160]
006ad9f4  02 90 a0 e1                                      mov sb, r2
006ad9f8  14 d0 4d e2                                      sub sp, sp, #0x14
006ad9fc  0c 80 63 e0                                      rsb r8, r3, ip
006ada00  5f 00 58 e3                                      cmp r8, #0x5f
006ada04  00 40 a0 e1                                      mov r4, r0
006ada08  01 70 a0 e1                                      mov r7, r1
006ada0c  03 20 a0 e1                                      mov r2, r3
006ada10  18 00 00 da                                      ble #0x6ada78
006ada14  00 50 a0 e3                                      mov r5, #0
006ada18  05 60 a0 e1                                      mov r6, r5
006ada1c  05 20 83 e0                                      add r2, r3, r5
006ada20  58 20 92 e5                                      ldr r2, [r2, #0x58]
006ada24  00 00 52 e2                                      subs r0, r2, #0
006ada28  06 00 00 0a                                      beq #0x6ada48
006ada2c  00 30 92 e5                                      ldr r3, [r2]
006ada30  0f e0 a0 e1                                      mov lr, pc
006ada34  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006ada38  00 00 50 e3                                      cmp r0, #0
006ada3c  67 00 00 1a                                      bne #0x6adbe0
006ada40  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ada44  60 c1 94 e5                                      ldr ip, [r4, #0x160]
006ada48  0c 80 63 e0                                      rsb r8, r3, ip
006ada4c  c8 12 a0 e1                                      asr r1, r8, #5
006ada50  01 60 86 e2                                      add r6, r6, #1
006ada54  01 01 81 e0                                      add r0, r1, r1, lsl #2
006ada58  60 50 85 e2                                      add r5, r5, #0x60
006ada5c  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ada60  03 20 a0 e1                                      mov r2, r3
006ada64  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ada68  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ada6c  80 10 81 e0                                      add r1, r1, r0, lsl #1
006ada70  01 00 56 e1                                      cmp r6, r1
006ada74  e8 ff ff ba                                      blt #0x6ada1c
006ada78  00 b0 e0 e3                                      mvn fp, #0
006ada7c  5f 00 58 e3                                      cmp r8, #0x5f
006ada80  52 00 00 da                                      ble #0x6adbd0
006ada84  00 50 a0 e3                                      mov r5, #0
006ada88  38 80 84 e2                                      add r8, r4, #0x38
006ada8c  05 60 a0 e1                                      mov r6, r5
006ada90  0d a0 a0 e1                                      mov sl, sp
006ada94  05 20 82 e0                                      add r2, r2, r5
006ada98  08 30 a0 e1                                      mov r3, r8
006ada9c  00 c0 94 e5                                      ldr ip, [r4]
006adaa0  0d 00 a0 e1                                      mov r0, sp
006adaa4  04 10 a0 e1                                      mov r1, r4
006adaa8  0f e0 a0 e1                                      mov lr, pc
006adaac  c8 f0 9c e5                                      ldr pc, [ip, #0xc8]
006adab0  00 30 97 e5                                      ldr r3, [r7]
006adab4  00 20 9d e5                                      ldr r2, [sp]
006adab8  60 50 85 e2                                      add r5, r5, #0x60
006adabc  03 00 52 e1                                      cmp r2, r3
006adac0  36 00 00 ca                                      bgt #0x6adba0
006adac4  04 20 97 e5                                      ldr r2, [r7, #4]
006adac8  04 10 9d e5                                      ldr r1, [sp, #4]
006adacc  02 00 51 e1                                      cmp r1, r2
006adad0  32 00 00 ca                                      bgt #0x6adba0
006adad4  08 10 9d e5                                      ldr r1, [sp, #8]
006adad8  01 00 53 e1                                      cmp r3, r1
006adadc  2f 00 00 ca                                      bgt #0x6adba0
006adae0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006adae4  03 00 52 e1                                      cmp r2, r3
006adae8  2c 00 00 ca                                      bgt #0x6adba0
006adaec  58 61 84 e5                                      str r6, [r4, #0x158]
006adaf0  fb 74 fd eb                                      bl #0x60aee4
006adaf4  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006adaf8  60 c1 94 e5                                      ldr ip, [r4, #0x160]
006adafc  70 01 84 e5                                      str r0, [r4, #0x170]
006adb00  0c 20 63 e0                                      rsb r2, r3, ip
006adb04  5f 00 52 e3                                      cmp r2, #0x5f
006adb08  44 00 00 da                                      ble #0x6adc20
006adb0c  00 70 a0 e3                                      mov r7, #0
006adb10  07 50 a0 e1                                      mov r5, r7
006adb14  10 00 00 ea                                      b #0x6adb5c
006adb18  00 30 92 e5                                      ldr r3, [r2]
006adb1c  02 00 a0 e1                                      mov r0, r2
006adb20  0f e0 a0 e1                                      mov lr, pc
006adb24  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006adb28  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006adb2c  60 c1 94 e5                                      ldr ip, [r4, #0x160]
006adb30  0c 20 63 e0                                      rsb r2, r3, ip
006adb34  c2 22 a0 e1                                      asr r2, r2, #5
006adb38  01 50 85 e2                                      add r5, r5, #1
006adb3c  02 11 82 e0                                      add r1, r2, r2, lsl #2
006adb40  60 70 87 e2                                      add r7, r7, #0x60
006adb44  01 12 81 e0                                      add r1, r1, r1, lsl #4
006adb48  01 14 81 e0                                      add r1, r1, r1, lsl #8
006adb4c  01 18 81 e0                                      add r1, r1, r1, lsl #16
006adb50  81 20 82 e0                                      add r2, r2, r1, lsl #1
006adb54  02 00 55 e1                                      cmp r5, r2
006adb58  30 00 00 aa                                      bge #0x6adc20
006adb5c  07 20 83 e0                                      add r2, r3, r7
006adb60  58 20 92 e5                                      ldr r2, [r2, #0x58]
006adb64  00 10 a0 e3                                      mov r1, #0
006adb68  01 00 52 e1                                      cmp r2, r1
006adb6c  ef ff ff 0a                                      beq #0x6adb30
006adb70  06 00 55 e1                                      cmp r5, r6
006adb74  e7 ff ff 1a                                      bne #0x6adb18
006adb78  01 00 59 e1                                      cmp sb, r1
006adb7c  eb ff ff 0a                                      beq #0x6adb30
006adb80  00 30 92 e5                                      ldr r3, [r2]
006adb84  02 00 a0 e1                                      mov r0, r2
006adb88  01 10 a0 e3                                      mov r1, #1
006adb8c  0f e0 a0 e1                                      mov lr, pc
006adb90  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006adb94  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006adb98  60 c1 94 e5                                      ldr ip, [r4, #0x160]
006adb9c  e3 ff ff ea                                      b #0x6adb30
006adba0  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006adba4  60 31 94 e5                                      ldr r3, [r4, #0x160]
006adba8  01 60 86 e2                                      add r6, r6, #1
006adbac  03 30 62 e0                                      rsb r3, r2, r3
006adbb0  c3 32 a0 e1                                      asr r3, r3, #5
006adbb4  03 11 83 e0                                      add r1, r3, r3, lsl #2
006adbb8  01 12 81 e0                                      add r1, r1, r1, lsl #4
006adbbc  01 14 81 e0                                      add r1, r1, r1, lsl #8
006adbc0  01 18 81 e0                                      add r1, r1, r1, lsl #16
006adbc4  81 30 83 e0                                      add r3, r3, r1, lsl #1
006adbc8  03 00 56 e1                                      cmp r6, r3
006adbcc  b0 ff ff ba                                      blt #0x6ada94
006adbd0  58 b1 84 e5                                      str fp, [r4, #0x158]
006adbd4  00 00 a0 e3                                      mov r0, #0
006adbd8  14 d0 8d e2                                      add sp, sp, #0x14
006adbdc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006adbe0  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006adbe4  07 10 a0 e1                                      mov r1, r7
006adbe8  09 20 a0 e1                                      mov r2, sb
006adbec  05 50 83 e0                                      add r5, r3, r5
006adbf0  58 30 95 e5                                      ldr r3, [r5, #0x58]
006adbf4  03 00 a0 e1                                      mov r0, r3
006adbf8  00 30 93 e5                                      ldr r3, [r3]
006adbfc  0f e0 a0 e1                                      mov lr, pc
006adc00  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
006adc04  00 00 50 e3                                      cmp r0, #0
006adc08  06 00 00 1a                                      bne #0x6adc28
006adc0c  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006adc10  60 81 94 e5                                      ldr r8, [r4, #0x160]
006adc14  06 b0 a0 e1                                      mov fp, r6
006adc18  08 80 62 e0                                      rsb r8, r2, r8
006adc1c  96 ff ff ea                                      b #0x6ada7c
006adc20  01 00 a0 e3                                      mov r0, #1
006adc24  eb ff ff ea                                      b #0x6adbd8
006adc28  58 61 84 e5                                      str r6, [r4, #0x158]
006adc2c  ac 74 fd eb                                      bl #0x60aee4
006adc30  70 01 84 e5                                      str r0, [r4, #0x170]
006adc34  01 00 a0 e3                                      mov r0, #1
006adc38  e6 ff ff ea                                      b #0x6adbd8

; FUNCTION 0x006adc3c, declared_size=176, range_size=176, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu10setVisibleEb
; demangled: glitch::gui::CGUIContextMenu::setVisible(bool)
; decoder-mode: arm
006adc3c  00 30 e0 e3                                      mvn r3, #0
006adc40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006adc44  58 31 80 e5                                      str r3, [r0, #0x158]
006adc48  00 60 a0 e1                                      mov r6, r0
006adc4c  01 70 a0 e1                                      mov r7, r1
006adc50  a3 74 fd eb                                      bl #0x60aee4
006adc54  5c 21 96 e5                                      ldr r2, [r6, #0x15c]
006adc58  60 11 96 e5                                      ldr r1, [r6, #0x160]
006adc5c  70 01 86 e5                                      str r0, [r6, #0x170]
006adc60  01 30 62 e0                                      rsb r3, r2, r1
006adc64  c3 32 a0 e1                                      asr r3, r3, #5
006adc68  03 01 83 e0                                      add r0, r3, r3, lsl #2
006adc6c  00 02 80 e0                                      add r0, r0, r0, lsl #4
006adc70  00 04 80 e0                                      add r0, r0, r0, lsl #8
006adc74  00 08 80 e0                                      add r0, r0, r0, lsl #16
006adc78  80 30 83 e0                                      add r3, r3, r0, lsl #1
006adc7c  00 00 53 e3                                      cmp r3, #0
006adc80  17 00 00 0a                                      beq #0x6adce4
006adc84  00 40 a0 e3                                      mov r4, #0
006adc88  04 50 a0 e1                                      mov r5, r4
006adc8c  04 30 82 e0                                      add r3, r2, r4
006adc90  58 30 93 e5                                      ldr r3, [r3, #0x58]
006adc94  01 50 85 e2                                      add r5, r5, #1
006adc98  60 40 84 e2                                      add r4, r4, #0x60
006adc9c  00 00 53 e3                                      cmp r3, #0
006adca0  06 00 00 0a                                      beq #0x6adcc0
006adca4  03 00 a0 e1                                      mov r0, r3
006adca8  00 10 a0 e3                                      mov r1, #0
006adcac  00 30 93 e5                                      ldr r3, [r3]
006adcb0  0f e0 a0 e1                                      mov lr, pc
006adcb4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006adcb8  5c 21 96 e5                                      ldr r2, [r6, #0x15c]
006adcbc  60 11 96 e5                                      ldr r1, [r6, #0x160]
006adcc0  01 30 62 e0                                      rsb r3, r2, r1
006adcc4  c3 32 a0 e1                                      asr r3, r3, #5
006adcc8  03 01 83 e0                                      add r0, r3, r3, lsl #2
006adccc  00 02 80 e0                                      add r0, r0, r0, lsl #4
006adcd0  00 04 80 e0                                      add r0, r0, r0, lsl #8
006adcd4  00 08 80 e0                                      add r0, r0, r0, lsl #16
006adcd8  80 30 83 e0                                      add r3, r3, r0, lsl #1
006adcdc  03 00 55 e1                                      cmp r5, r3
006adce0  e9 ff ff 3a                                      blo #0x6adc8c
006adce4  98 70 c6 e5                                      strb r7, [r6, #0x98]
006adce8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006adfb8, declared_size=328, range_size=328, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenuC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEbb
; demangled: glitch::gui::CGUIContextMenu::CGUIContextMenu(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool, bool)
; decoder-mode: arm
006adfb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006adfbc  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
006adfc0  2c c1 9f e5                                      ldr ip, [pc, #0x12c]
006adfc4  2c e1 9f e5                                      ldr lr, [pc, #0x12c]
006adfc8  06 60 8f e0                                      add r6, pc, r6
006adfcc  0c c0 96 e7                                      ldr ip, [r6, ip]
006adfd0  0e e0 96 e7                                      ldr lr, [r6, lr]
006adfd4  01 70 a0 e3                                      mov r7, #1
006adfd8  24 50 9c e5                                      ldr r5, [ip, #0x24]
006adfdc  08 e0 8e e2                                      add lr, lr, #8
006adfe0  88 71 80 e5                                      str r7, [r0, #0x188]
006adfe4  84 e1 80 e5                                      str lr, [r0, #0x184]
006adfe8  80 51 80 e5                                      str r5, [r0, #0x180]
006adfec  1c d0 4d e2                                      sub sp, sp, #0x1c
006adff0  0c e0 15 e5                                      ldr lr, [r5, #-0xc]
006adff4  28 80 9c e5                                      ldr r8, [ip, #0x28]
006adff8  40 50 9d e5                                      ldr r5, [sp, #0x40]
006adffc  06 7d 80 e2                                      add r7, r0, #0x180
006ae000  0e 80 87 e7                                      str r8, [r7, lr]
006ae004  00 05 95 e8                                      ldm r5, {r8, sl}
006ae008  08 90 95 e5                                      ldr sb, [r5, #8]
006ae00c  0c b0 95 e5                                      ldr fp, [r5, #0xc]
006ae010  02 e0 a0 e1                                      mov lr, r2
006ae014  01 70 a0 e1                                      mov r7, r1
006ae018  07 20 a0 e1                                      mov r2, r7
006ae01c  04 10 8c e2                                      add r1, ip, #4
006ae020  00 30 8d e5                                      str r3, [sp]
006ae024  08 c0 8d e2                                      add ip, sp, #8
006ae028  0e 30 a0 e1                                      mov r3, lr
006ae02c  00 40 a0 e1                                      mov r4, r0
006ae030  08 80 8d e5                                      str r8, [sp, #8]
006ae034  04 c0 8d e5                                      str ip, [sp, #4]
006ae038  44 80 dd e5                                      ldrb r8, [sp, #0x44]
006ae03c  48 70 dd e5                                      ldrb r7, [sp, #0x48]
006ae040  0c a0 8d e5                                      str sl, [sp, #0xc]
006ae044  10 90 8d e5                                      str sb, [sp, #0x10]
006ae048  14 b0 8d e5                                      str fp, [sp, #0x14]
006ae04c  27 ff ff eb                                      bl #0x6adcf0
006ae050  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
006ae054  00 10 e0 e3                                      mvn r1, #0
006ae058  00 30 a0 e3                                      mov r3, #0
006ae05c  02 20 96 e7                                      ldr r2, [r6, r2]
006ae060  58 11 84 e5                                      str r1, [r4, #0x158]
006ae064  68 31 84 e5                                      str r3, [r4, #0x168]
006ae068  46 1f 82 e2                                      add r1, r2, #0x118
006ae06c  10 00 82 e2                                      add r0, r2, #0x10
006ae070  f8 20 82 e2                                      add r2, r2, #0xf8
006ae074  00 00 84 e5                                      str r0, [r4]
006ae078  6c 31 84 e5                                      str r3, [r4, #0x16c]
006ae07c  78 71 c4 e5                                      strb r7, [r4, #0x178]
006ae080  80 21 84 e5                                      str r2, [r4, #0x180]
006ae084  84 11 84 e5                                      str r1, [r4, #0x184]
006ae088  7c 31 84 e5                                      str r3, [r4, #0x17c]
006ae08c  5c 31 84 e5                                      str r3, [r4, #0x15c]
006ae090  60 31 84 e5                                      str r3, [r4, #0x160]
006ae094  64 31 84 e5                                      str r3, [r4, #0x164]
006ae098  70 31 84 e5                                      str r3, [r4, #0x170]
006ae09c  74 31 84 e5                                      str r3, [r4, #0x174]
006ae0a0  00 30 95 e5                                      ldr r3, [r5]
006ae0a4  04 00 a0 e1                                      mov r0, r4
006ae0a8  68 31 84 e5                                      str r3, [r4, #0x168]
006ae0ac  04 30 95 e5                                      ldr r3, [r5, #4]
006ae0b0  6c 31 84 e5                                      str r3, [r4, #0x16c]
006ae0b4  69 fc ff eb                                      bl #0x6ad260
006ae0b8  00 00 58 e3                                      cmp r8, #0
006ae0bc  04 00 00 1a                                      bne #0x6ae0d4
006ae0c0  01 30 a0 e3                                      mov r3, #1
006ae0c4  9b 30 c4 e5                                      strb r3, [r4, #0x9b]
006ae0c8  04 00 a0 e1                                      mov r0, r4
006ae0cc  1c d0 8d e2                                      add sp, sp, #0x1c
006ae0d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006ae0d4  50 31 94 e5                                      ldr r3, [r4, #0x150]
006ae0d8  04 10 a0 e1                                      mov r1, r4
006ae0dc  03 00 a0 e1                                      mov r0, r3
006ae0e0  00 30 93 e5                                      ldr r3, [r3]
006ae0e4  0f e0 a0 e1                                      mov lr, pc
006ae0e8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ae0ec  f3 ff ff ea                                      b #0x6ae0c0
; mapping-symbol data/literal pool
006ae0f0  c8 6a 2e 00 20 27 00 00 44 2b 00 00 84 11 00 00  .byte 0xc8, 0x6a, 0x2e, 0x00, 0x20, 0x27, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x84, 0x11, 0x00, 0x00

; FUNCTION 0x006ae100, declared_size=244, range_size=244, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenuC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEbb
; demangled: glitch::gui::CGUIContextMenu::CGUIContextMenu(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>, bool, bool)
; decoder-mode: arm
006ae100  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ae104  18 d0 4d e2                                      sub sp, sp, #0x18
006ae108  34 50 9d e5                                      ldr r5, [sp, #0x34]
006ae10c  01 60 a0 e1                                      mov r6, r1
006ae110  04 10 81 e2                                      add r1, r1, #4
006ae114  0c c0 95 e5                                      ldr ip, [r5, #0xc]
006ae118  00 70 95 e5                                      ldr r7, [r5]
006ae11c  10 40 95 e9                                      ldmib r5, {r4, lr}
006ae120  14 c0 8d e5                                      str ip, [sp, #0x14]
006ae124  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006ae128  08 70 8d e5                                      str r7, [sp, #8]
006ae12c  0c 40 8d e5                                      str r4, [sp, #0xc]
006ae130  00 c0 8d e5                                      str ip, [sp]
006ae134  08 c0 8d e2                                      add ip, sp, #8
006ae138  00 40 a0 e1                                      mov r4, r0
006ae13c  10 e0 8d e5                                      str lr, [sp, #0x10]
006ae140  04 c0 8d e5                                      str ip, [sp, #4]
006ae144  38 80 dd e5                                      ldrb r8, [sp, #0x38]
006ae148  3c 70 dd e5                                      ldrb r7, [sp, #0x3c]
006ae14c  e7 fe ff eb                                      bl #0x6adcf0
006ae150  00 20 96 e5                                      ldr r2, [r6]
006ae154  00 30 a0 e3                                      mov r3, #0
006ae158  04 00 a0 e1                                      mov r0, r4
006ae15c  00 20 84 e5                                      str r2, [r4]
006ae160  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006ae164  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
006ae168  02 10 84 e7                                      str r1, [r4, r2]
006ae16c  00 20 94 e5                                      ldr r2, [r4]
006ae170  20 10 96 e5                                      ldr r1, [r6, #0x20]
006ae174  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006ae178  02 10 84 e7                                      str r1, [r4, r2]
006ae17c  00 20 e0 e3                                      mvn r2, #0
006ae180  68 31 84 e5                                      str r3, [r4, #0x168]
006ae184  6c 31 84 e5                                      str r3, [r4, #0x16c]
006ae188  58 21 84 e5                                      str r2, [r4, #0x158]
006ae18c  78 71 c4 e5                                      strb r7, [r4, #0x178]
006ae190  7c 31 84 e5                                      str r3, [r4, #0x17c]
006ae194  5c 31 84 e5                                      str r3, [r4, #0x15c]
006ae198  60 31 84 e5                                      str r3, [r4, #0x160]
006ae19c  64 31 84 e5                                      str r3, [r4, #0x164]
006ae1a0  70 31 84 e5                                      str r3, [r4, #0x170]
006ae1a4  74 31 84 e5                                      str r3, [r4, #0x174]
006ae1a8  00 30 95 e5                                      ldr r3, [r5]
006ae1ac  68 31 84 e5                                      str r3, [r4, #0x168]
006ae1b0  04 30 95 e5                                      ldr r3, [r5, #4]
006ae1b4  6c 31 84 e5                                      str r3, [r4, #0x16c]
006ae1b8  28 fc ff eb                                      bl #0x6ad260
006ae1bc  00 00 58 e3                                      cmp r8, #0
006ae1c0  04 00 00 1a                                      bne #0x6ae1d8
006ae1c4  01 30 a0 e3                                      mov r3, #1
006ae1c8  9b 30 c4 e5                                      strb r3, [r4, #0x9b]
006ae1cc  04 00 a0 e1                                      mov r0, r4
006ae1d0  18 d0 8d e2                                      add sp, sp, #0x18
006ae1d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006ae1d8  50 31 94 e5                                      ldr r3, [r4, #0x150]
006ae1dc  04 10 a0 e1                                      mov r1, r4
006ae1e0  03 00 a0 e1                                      mov r0, r3
006ae1e4  00 30 93 e5                                      ldr r3, [r3]
006ae1e8  0f e0 a0 e1                                      mov lr, pc
006ae1ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ae1f0  f3 ff ff ea                                      b #0x6ae1c4

; FUNCTION 0x006ae1f4, declared_size=528, range_size=528, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIContextMenu::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006ae1f4  70 40 2d e9                                      push {r4, r5, r6, lr}
006ae1f8  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
006ae1fc  10 d0 4d e2                                      sub sp, sp, #0x10
006ae200  00 50 a0 e1                                      mov r5, r0
006ae204  00 00 53 e3                                      cmp r3, #0
006ae208  01 60 a0 e1                                      mov r6, r1
006ae20c  08 00 00 0a                                      beq #0x6ae234
006ae210  00 40 91 e5                                      ldr r4, [r1]
006ae214  00 00 54 e3                                      cmp r4, #0
006ae218  10 00 00 1a                                      bne #0x6ae260
006ae21c  10 30 91 e5                                      ldr r3, [r1, #0x10]
006ae220  00 00 53 e3                                      cmp r3, #0
006ae224  18 00 00 1a                                      bne #0x6ae28c
006ae228  08 40 91 e5                                      ldr r4, [r1, #8]
006ae22c  00 00 54 e1                                      cmp r4, r0
006ae230  48 00 00 0a                                      beq #0x6ae358
006ae234  24 40 95 e5                                      ldr r4, [r5, #0x24]
006ae238  00 00 54 e3                                      cmp r4, #0
006ae23c  04 00 a0 01                                      moveq r0, r4
006ae240  04 00 00 0a                                      beq #0x6ae258
006ae244  04 00 a0 e1                                      mov r0, r4
006ae248  06 10 a0 e1                                      mov r1, r6
006ae24c  00 30 94 e5                                      ldr r3, [r4]
006ae250  0f e0 a0 e1                                      mov lr, pc
006ae254  08 f0 93 e5                                      ldr pc, [r3, #8]
006ae258  10 d0 8d e2                                      add sp, sp, #0x10
006ae25c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006ae260  01 00 54 e3                                      cmp r4, #1
006ae264  f2 ff ff 1a                                      bne #0x6ae234
006ae268  14 30 91 e5                                      ldr r3, [r1, #0x14]
006ae26c  03 00 53 e3                                      cmp r3, #3
006ae270  0f 00 00 0a                                      beq #0x6ae2b4
006ae274  06 00 53 e3                                      cmp r3, #6
006ae278  23 00 00 0a                                      beq #0x6ae30c
006ae27c  00 00 53 e3                                      cmp r3, #0
006ae280  eb ff ff 1a                                      bne #0x6ae234
006ae284  01 00 a0 e3                                      mov r0, #1
006ae288  f2 ff ff ea                                      b #0x6ae258
006ae28c  01 00 53 e3                                      cmp r3, #1
006ae290  e7 ff ff 1a                                      bne #0x6ae234
006ae294  08 30 91 e5                                      ldr r3, [r1, #8]
006ae298  00 00 53 e1                                      cmp r3, r0
006ae29c  e4 ff ff 1a                                      bne #0x6ae234
006ae2a0  78 31 d0 e5                                      ldrb r3, [r0, #0x178]
006ae2a4  00 00 53 e3                                      cmp r3, #0
006ae2a8  e1 ff ff 1a                                      bne #0x6ae234
006ae2ac  01 00 a0 e3                                      mov r0, #1
006ae2b0  e8 ff ff ea                                      b #0x6ae258
006ae2b4  00 30 90 e5                                      ldr r3, [r0]
006ae2b8  08 10 8d e2                                      add r1, sp, #8
006ae2bc  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006ae2c0  03 30 80 e0                                      add r3, r0, r3
006ae2c4  04 20 93 e5                                      ldr r2, [r3, #4]
006ae2c8  01 20 82 e2                                      add r2, r2, #1
006ae2cc  04 20 83 e5                                      str r2, [r3, #4]
006ae2d0  00 30 90 e5                                      ldr r3, [r0]
006ae2d4  08 c0 96 e5                                      ldr ip, [r6, #8]
006ae2d8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
006ae2dc  c4 30 93 e5                                      ldr r3, [r3, #0xc4]
006ae2e0  08 c0 8d e5                                      str ip, [sp, #8]
006ae2e4  0c 20 8d e5                                      str r2, [sp, #0xc]
006ae2e8  33 ff 2f e1                                      blx r3
006ae2ec  01 00 50 e3                                      cmp r0, #1
006ae2f0  34 00 00 9a                                      bls #0x6ae3c8
006ae2f4  00 30 95 e5                                      ldr r3, [r5]
006ae2f8  10 00 13 e5                                      ldr r0, [r3, #-0x10]
006ae2fc  00 00 85 e0                                      add r0, r5, r0
006ae300  9f bc f1 eb                                      bl #0x31d584
006ae304  01 00 a0 e3                                      mov r0, #1
006ae308  d2 ff ff ea                                      b #0x6ae258
006ae30c  50 31 90 e5                                      ldr r3, [r0, #0x150]
006ae310  00 10 a0 e1                                      mov r1, r0
006ae314  03 00 a0 e1                                      mov r0, r3
006ae318  00 30 93 e5                                      ldr r3, [r3]
006ae31c  0f e0 a0 e1                                      mov lr, pc
006ae320  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006ae324  00 00 50 e3                                      cmp r0, #0
006ae328  d5 ff ff 0a                                      beq #0x6ae284
006ae32c  08 10 96 e5                                      ldr r1, [r6, #8]
006ae330  00 30 95 e5                                      ldr r3, [r5]
006ae334  0c 20 96 e5                                      ldr r2, [r6, #0xc]
006ae338  05 00 a0 e1                                      mov r0, r5
006ae33c  c0 30 93 e5                                      ldr r3, [r3, #0xc0]
006ae340  06 00 8d e8                                      stm sp, {r1, r2}
006ae344  0d 10 a0 e1                                      mov r1, sp
006ae348  04 20 a0 e1                                      mov r2, r4
006ae34c  33 ff 2f e1                                      blx r3
006ae350  04 00 a0 e1                                      mov r0, r4
006ae354  bf ff ff ea                                      b #0x6ae258
006ae358  0c 10 91 e5                                      ldr r1, [r1, #0xc]
006ae35c  00 00 51 e3                                      cmp r1, #0
006ae360  0c 00 00 0a                                      beq #0x6ae398
006ae364  24 30 91 e5                                      ldr r3, [r1, #0x24]
006ae368  05 00 00 ea                                      b #0x6ae384
006ae36c  24 20 93 e5                                      ldr r2, [r3, #0x24]
006ae370  03 10 a0 e1                                      mov r1, r3
006ae374  03 00 54 e1                                      cmp r4, r3
006ae378  00 00 52 13                                      cmpne r2, #0
006ae37c  03 00 00 0a                                      beq #0x6ae390
006ae380  02 30 a0 e1                                      mov r3, r2
006ae384  00 00 53 e3                                      cmp r3, #0
006ae388  f7 ff ff 1a                                      bne #0x6ae36c
006ae38c  01 30 a0 e1                                      mov r3, r1
006ae390  03 00 54 e1                                      cmp r4, r3
006ae394  a6 ff ff 0a                                      beq #0x6ae234
006ae398  78 31 d5 e5                                      ldrb r3, [r5, #0x178]
006ae39c  00 00 53 e3                                      cmp r3, #0
006ae3a0  a3 ff ff 0a                                      beq #0x6ae234
006ae3a4  05 00 a0 e1                                      mov r0, r5
006ae3a8  24 10 95 e5                                      ldr r1, [r5, #0x24]
006ae3ac  76 fc ff eb                                      bl #0x6ad58c
006ae3b0  04 00 a0 e1                                      mov r0, r4
006ae3b4  00 30 95 e5                                      ldr r3, [r5]
006ae3b8  0f e0 a0 e1                                      mov lr, pc
006ae3bc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006ae3c0  00 00 a0 e3                                      mov r0, #0
006ae3c4  a3 ff ff ea                                      b #0x6ae258
006ae3c8  50 31 95 e5                                      ldr r3, [r5, #0x150]
006ae3cc  05 10 a0 e1                                      mov r1, r5
006ae3d0  03 00 a0 e1                                      mov r0, r3
006ae3d4  00 30 93 e5                                      ldr r3, [r3]
006ae3d8  0f e0 a0 e1                                      mov lr, pc
006ae3dc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006ae3e0  00 00 50 e3                                      cmp r0, #0
006ae3e4  c2 ff ff 0a                                      beq #0x6ae2f4
006ae3e8  50 31 95 e5                                      ldr r3, [r5, #0x150]
006ae3ec  05 10 a0 e1                                      mov r1, r5
006ae3f0  03 00 a0 e1                                      mov r0, r3
006ae3f4  00 30 93 e5                                      ldr r3, [r3]
006ae3f8  0f e0 a0 e1                                      mov lr, pc
006ae3fc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006ae400  bb ff ff ea                                      b #0x6ae2f4

; FUNCTION 0x006ae480, declared_size=192, range_size=192, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu14removeAllItemsEv
; demangled: glitch::gui::CGUIContextMenu::removeAllItems()
; decoder-mode: arm
006ae480  70 40 2d e9                                      push {r4, r5, r6, lr}
006ae484  60 21 90 e5                                      ldr r2, [r0, #0x160]
006ae488  5c 11 90 e5                                      ldr r1, [r0, #0x15c]
006ae48c  00 40 a0 e1                                      mov r4, r0
006ae490  08 d0 4d e2                                      sub sp, sp, #8
006ae494  02 30 61 e0                                      rsb r3, r1, r2
006ae498  c3 32 a0 e1                                      asr r3, r3, #5
006ae49c  03 01 83 e0                                      add r0, r3, r3, lsl #2
006ae4a0  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ae4a4  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ae4a8  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ae4ac  80 30 83 e0                                      add r3, r3, r0, lsl #1
006ae4b0  00 00 53 e3                                      cmp r3, #0
006ae4b4  16 00 00 0a                                      beq #0x6ae514
006ae4b8  00 50 a0 e3                                      mov r5, #0
006ae4bc  05 60 a0 e1                                      mov r6, r5
006ae4c0  05 30 81 e0                                      add r3, r1, r5
006ae4c4  58 30 93 e5                                      ldr r3, [r3, #0x58]
006ae4c8  01 60 86 e2                                      add r6, r6, #1
006ae4cc  60 50 85 e2                                      add r5, r5, #0x60
006ae4d0  00 00 53 e3                                      cmp r3, #0
006ae4d4  05 00 00 0a                                      beq #0x6ae4f0
006ae4d8  00 20 93 e5                                      ldr r2, [r3]
006ae4dc  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006ae4e0  00 00 83 e0                                      add r0, r3, r0
006ae4e4  26 bc f1 eb                                      bl #0x31d584
006ae4e8  60 21 94 e5                                      ldr r2, [r4, #0x160]
006ae4ec  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
006ae4f0  02 30 61 e0                                      rsb r3, r1, r2
006ae4f4  c3 32 a0 e1                                      asr r3, r3, #5
006ae4f8  03 01 83 e0                                      add r0, r3, r3, lsl #2
006ae4fc  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ae500  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ae504  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ae508  80 30 83 e0                                      add r3, r3, r0, lsl #1
006ae50c  03 00 56 e1                                      cmp r6, r3
006ae510  ea ff ff 3a                                      blo #0x6ae4c0
006ae514  01 00 52 e1                                      cmp r2, r1
006ae518  02 00 00 0a                                      beq #0x6ae528
006ae51c  57 0f 84 e2                                      add r0, r4, #0x15c
006ae520  04 30 8d e2                                      add r3, sp, #4
006ae524  b6 ff ff eb                                      bl #0x6ae404
006ae528  04 00 a0 e1                                      mov r0, r4
006ae52c  00 30 94 e5                                      ldr r3, [r4]
006ae530  0f e0 a0 e1                                      mov lr, pc
006ae534  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006ae538  08 d0 8d e2                                      add sp, sp, #8
006ae53c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006ae7bc, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu10removeItemEj
; demangled: glitch::gui::CGUIContextMenu::removeItem(unsigned int)
; decoder-mode: arm
006ae7bc  30 40 2d e9                                      push {r4, r5, lr}
006ae7c0  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006ae7c4  60 21 90 e5                                      ldr r2, [r0, #0x160]
006ae7c8  00 40 a0 e1                                      mov r4, r0
006ae7cc  0c d0 4d e2                                      sub sp, sp, #0xc
006ae7d0  02 20 63 e0                                      rsb r2, r3, r2
006ae7d4  c2 22 a0 e1                                      asr r2, r2, #5
006ae7d8  02 01 82 e0                                      add r0, r2, r2, lsl #2
006ae7dc  00 02 80 e0                                      add r0, r0, r0, lsl #4
006ae7e0  00 04 80 e0                                      add r0, r0, r0, lsl #8
006ae7e4  00 08 80 e0                                      add r0, r0, r0, lsl #16
006ae7e8  80 20 82 e0                                      add r2, r2, r0, lsl #1
006ae7ec  02 00 51 e1                                      cmp r1, r2
006ae7f0  16 00 00 2a                                      bhs #0x6ae850
006ae7f4  60 50 a0 e3                                      mov r5, #0x60
006ae7f8  95 01 05 e0                                      mul r5, r5, r1
006ae7fc  05 10 83 e0                                      add r1, r3, r5
006ae800  58 30 91 e5                                      ldr r3, [r1, #0x58]
006ae804  00 00 53 e3                                      cmp r3, #0
006ae808  09 00 00 0a                                      beq #0x6ae834
006ae80c  00 20 93 e5                                      ldr r2, [r3]
006ae810  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006ae814  00 00 83 e0                                      add r0, r3, r0
006ae818  59 bb f1 eb                                      bl #0x31d584
006ae81c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ae820  00 20 a0 e3                                      mov r2, #0
006ae824  05 30 83 e0                                      add r3, r3, r5
006ae828  58 20 83 e5                                      str r2, [r3, #0x58]
006ae82c  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
006ae830  05 10 81 e0                                      add r1, r1, r5
006ae834  57 0f 84 e2                                      add r0, r4, #0x15c
006ae838  04 20 8d e2                                      add r2, sp, #4
006ae83c  c4 ff ff eb                                      bl #0x6ae754
006ae840  04 00 a0 e1                                      mov r0, r4
006ae844  00 30 94 e5                                      ldr r3, [r4]
006ae848  0f e0 a0 e1                                      mov lr, pc
006ae84c  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006ae850  0c d0 8d e2                                      add sp, sp, #0xc
006ae854  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006ae858, declared_size=284, range_size=284, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenuD1Ev
; demangled: glitch::gui::CGUIContextMenu::~CGUIContextMenu()
; decoder-mode: arm
006ae858  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ae85c  00 40 a0 e1                                      mov r4, r0
006ae860  5c 11 90 e5                                      ldr r1, [r0, #0x15c]
006ae864  60 01 90 e5                                      ldr r0, [r0, #0x160]
006ae868  f8 70 9f e5                                      ldr r7, [pc, #0xf8]
006ae86c  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
006ae870  00 20 61 e0                                      rsb r2, r1, r0
006ae874  c2 22 a0 e1                                      asr r2, r2, #5
006ae878  07 70 8f e0                                      add r7, pc, r7
006ae87c  02 c1 82 e0                                      add ip, r2, r2, lsl #2
006ae880  03 30 97 e7                                      ldr r3, [r7, r3]
006ae884  0c c2 8c e0                                      add ip, ip, ip, lsl #4
006ae888  0c c4 8c e0                                      add ip, ip, ip, lsl #8
006ae88c  46 ef 83 e2                                      add lr, r3, #0x118
006ae890  0c c8 8c e0                                      add ip, ip, ip, lsl #16
006ae894  10 50 83 e2                                      add r5, r3, #0x10
006ae898  8c 20 82 e0                                      add r2, r2, ip, lsl #1
006ae89c  f8 30 83 e2                                      add r3, r3, #0xf8
006ae8a0  00 00 52 e3                                      cmp r2, #0
006ae8a4  00 50 84 e5                                      str r5, [r4]
006ae8a8  80 31 84 e5                                      str r3, [r4, #0x180]
006ae8ac  84 e1 84 e5                                      str lr, [r4, #0x184]
006ae8b0  16 00 00 0a                                      beq #0x6ae910
006ae8b4  00 50 a0 e3                                      mov r5, #0
006ae8b8  05 60 a0 e1                                      mov r6, r5
006ae8bc  05 30 81 e0                                      add r3, r1, r5
006ae8c0  58 30 93 e5                                      ldr r3, [r3, #0x58]
006ae8c4  01 60 86 e2                                      add r6, r6, #1
006ae8c8  60 50 85 e2                                      add r5, r5, #0x60
006ae8cc  00 00 53 e3                                      cmp r3, #0
006ae8d0  05 00 00 0a                                      beq #0x6ae8ec
006ae8d4  00 20 93 e5                                      ldr r2, [r3]
006ae8d8  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006ae8dc  00 00 83 e0                                      add r0, r3, r0
006ae8e0  27 bb f1 eb                                      bl #0x31d584
006ae8e4  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
006ae8e8  60 01 94 e5                                      ldr r0, [r4, #0x160]
006ae8ec  00 30 61 e0                                      rsb r3, r1, r0
006ae8f0  c3 32 a0 e1                                      asr r3, r3, #5
006ae8f4  03 21 83 e0                                      add r2, r3, r3, lsl #2
006ae8f8  02 22 82 e0                                      add r2, r2, r2, lsl #4
006ae8fc  02 24 82 e0                                      add r2, r2, r2, lsl #8
006ae900  02 28 82 e0                                      add r2, r2, r2, lsl #16
006ae904  82 30 83 e0                                      add r3, r3, r2, lsl #1
006ae908  03 00 56 e1                                      cmp r6, r3
006ae90c  ea ff ff 3a                                      blo #0x6ae8bc
006ae910  7c 01 94 e5                                      ldr r0, [r4, #0x17c]
006ae914  00 00 50 e3                                      cmp r0, #0
006ae918  00 00 00 0a                                      beq #0x6ae920
006ae91c  18 bb f1 eb                                      bl #0x31d584
006ae920  57 0f 84 e2                                      add r0, r4, #0x15c
006ae924  74 ff ff eb                                      bl #0x6ae6fc
006ae928  40 30 9f e5                                      ldr r3, [pc, #0x40]
006ae92c  04 00 a0 e1                                      mov r0, r4
006ae930  03 10 97 e7                                      ldr r1, [r7, r3]
006ae934  04 30 91 e5                                      ldr r3, [r1, #4]
006ae938  14 c0 91 e5                                      ldr ip, [r1, #0x14]
006ae93c  18 20 91 e5                                      ldr r2, [r1, #0x18]
006ae940  00 30 84 e5                                      str r3, [r4]
006ae944  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ae948  08 10 81 e2                                      add r1, r1, #8
006ae94c  03 c0 84 e7                                      str ip, [r4, r3]
006ae950  00 30 94 e5                                      ldr r3, [r4]
006ae954  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006ae958  03 20 84 e7                                      str r2, [r4, r3]
006ae95c  af 29 fa eb                                      bl #0x539020
006ae960  04 00 a0 e1                                      mov r0, r4
006ae964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006ae968  18 62 2e 00 84 11 00 00 20 27 00 00              .byte 0x18, 0x62, 0x2e, 0x00, 0x84, 0x11, 0x00, 0x00, 0x20, 0x27, 0x00, 0x00

; FUNCTION 0x006ae974, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenuD0Ev
; demangled: glitch::gui::CGUIContextMenu::~CGUIContextMenu()
; decoder-mode: arm
006ae974  10 40 2d e9                                      push {r4, lr}
006ae978  00 40 a0 e1                                      mov r4, r0
006ae97c  b5 ff ff eb                                      bl #0x6ae858
006ae980  04 00 a0 e1                                      mov r0, r4
006ae984  49 7e f1 eb                                      bl #0x30e2b0
006ae988  04 00 a0 e1                                      mov r0, r4
006ae98c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ae990, declared_size=268, range_size=268, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenuD2Ev
; demangled: glitch::gui::CGUIContextMenu::~CGUIContextMenu()
; decoder-mode: arm
006ae990  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ae994  00 30 91 e5                                      ldr r3, [r1]
006ae998  01 70 a0 e1                                      mov r7, r1
006ae99c  00 40 a0 e1                                      mov r4, r0
006ae9a0  00 30 80 e5                                      str r3, [r0]
006ae9a4  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006ae9a8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ae9ac  03 20 80 e7                                      str r2, [r0, r3]
006ae9b0  00 30 90 e5                                      ldr r3, [r0]
006ae9b4  20 20 91 e5                                      ldr r2, [r1, #0x20]
006ae9b8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006ae9bc  03 20 80 e7                                      str r2, [r0, r3]
006ae9c0  5c 11 90 e5                                      ldr r1, [r0, #0x15c]
006ae9c4  60 01 90 e5                                      ldr r0, [r0, #0x160]
006ae9c8  00 30 61 e0                                      rsb r3, r1, r0
006ae9cc  c3 32 a0 e1                                      asr r3, r3, #5
006ae9d0  03 21 83 e0                                      add r2, r3, r3, lsl #2
006ae9d4  02 22 82 e0                                      add r2, r2, r2, lsl #4
006ae9d8  02 24 82 e0                                      add r2, r2, r2, lsl #8
006ae9dc  02 28 82 e0                                      add r2, r2, r2, lsl #16
006ae9e0  82 30 83 e0                                      add r3, r3, r2, lsl #1
006ae9e4  00 00 53 e3                                      cmp r3, #0
006ae9e8  16 00 00 0a                                      beq #0x6aea48
006ae9ec  00 50 a0 e3                                      mov r5, #0
006ae9f0  05 60 a0 e1                                      mov r6, r5
006ae9f4  05 30 81 e0                                      add r3, r1, r5
006ae9f8  58 30 93 e5                                      ldr r3, [r3, #0x58]
006ae9fc  01 60 86 e2                                      add r6, r6, #1
006aea00  60 50 85 e2                                      add r5, r5, #0x60
006aea04  00 00 53 e3                                      cmp r3, #0
006aea08  05 00 00 0a                                      beq #0x6aea24
006aea0c  00 20 93 e5                                      ldr r2, [r3]
006aea10  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006aea14  00 00 83 e0                                      add r0, r3, r0
006aea18  d9 ba f1 eb                                      bl #0x31d584
006aea1c  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
006aea20  60 01 94 e5                                      ldr r0, [r4, #0x160]
006aea24  00 30 61 e0                                      rsb r3, r1, r0
006aea28  c3 32 a0 e1                                      asr r3, r3, #5
006aea2c  03 21 83 e0                                      add r2, r3, r3, lsl #2
006aea30  02 22 82 e0                                      add r2, r2, r2, lsl #4
006aea34  02 24 82 e0                                      add r2, r2, r2, lsl #8
006aea38  02 28 82 e0                                      add r2, r2, r2, lsl #16
006aea3c  82 30 83 e0                                      add r3, r3, r2, lsl #1
006aea40  03 00 56 e1                                      cmp r6, r3
006aea44  ea ff ff 3a                                      blo #0x6ae9f4
006aea48  7c 01 94 e5                                      ldr r0, [r4, #0x17c]
006aea4c  00 00 50 e3                                      cmp r0, #0
006aea50  00 00 00 0a                                      beq #0x6aea58
006aea54  ca ba f1 eb                                      bl #0x31d584
006aea58  57 0f 84 e2                                      add r0, r4, #0x15c
006aea5c  26 ff ff eb                                      bl #0x6ae6fc
006aea60  04 30 97 e5                                      ldr r3, [r7, #4]
006aea64  04 70 87 e2                                      add r7, r7, #4
006aea68  04 10 87 e2                                      add r1, r7, #4
006aea6c  00 30 84 e5                                      str r3, [r4]
006aea70  10 20 97 e5                                      ldr r2, [r7, #0x10]
006aea74  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006aea78  04 00 a0 e1                                      mov r0, r4
006aea7c  03 20 84 e7                                      str r2, [r4, r3]
006aea80  00 30 94 e5                                      ldr r3, [r4]
006aea84  14 20 97 e5                                      ldr r2, [r7, #0x14]
006aea88  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006aea8c  03 20 84 e7                                      str r2, [r4, r3]
006aea90  62 29 fa eb                                      bl #0x539020
006aea94  04 00 a0 e1                                      mov r0, r4
006aea98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006aea9c, declared_size=364, range_size=364, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu7addItemEPKwibbb
; demangled: glitch::gui::CGUIContextMenu::addItem(wchar_t const*, int, bool, bool, bool)
; decoder-mode: arm
006aea9c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006aeaa0  80 d0 4d e2                                      sub sp, sp, #0x80
006aeaa4  10 40 8d e2                                      add r4, sp, #0x10
006aeaa8  01 60 a0 e1                                      mov r6, r1
006aeaac  00 50 a0 e1                                      mov r5, r0
006aeab0  10 10 a0 e3                                      mov r1, #0x10
006aeab4  04 00 a0 e1                                      mov r0, r4
006aeab8  03 a0 a0 e1                                      mov sl, r3
006aeabc  02 80 a0 e1                                      mov r8, r2
006aeac0  a4 90 dd e5                                      ldrb sb, [sp, #0xa4]
006aeac4  50 40 8d e5                                      str r4, [sp, #0x50]
006aeac8  54 40 8d e5                                      str r4, [sp, #0x54]
006aeacc  a0 70 dd e5                                      ldrb r7, [sp, #0xa0]
006aead0  92 c7 f1 eb                                      bl #0x320920
006aead4  50 20 9d e5                                      ldr r2, [sp, #0x50]
006aead8  00 30 a0 e3                                      mov r3, #0
006aeadc  00 00 56 e3                                      cmp r6, #0
006aeae0  00 30 82 e5                                      str r3, [r2]
006aeae4  59 a0 cd e5                                      strb sl, [sp, #0x59]
006aeae8  60 30 8d e5                                      str r3, [sp, #0x60]
006aeaec  5a 90 cd e5                                      strb sb, [sp, #0x5a]
006aeaf0  5c 30 8d e5                                      str r3, [sp, #0x5c]
006aeaf4  06 a0 a0 11                                      movne sl, r6
006aeaf8  3e 00 00 0a                                      beq #0x6aebf8
006aeafc  0a 00 a0 e1                                      mov r0, sl
006aeb00  60 80 f1 eb                                      bl #0x30ec88
006aeb04  0a 10 a0 e1                                      mov r1, sl
006aeb08  00 21 8a e0                                      add r2, sl, r0, lsl #2
006aeb0c  04 00 a0 e1                                      mov r0, r4
006aeb10  a2 d1 f1 eb                                      bl #0x3231a0
006aeb14  01 30 76 e2                                      rsbs r3, r6, #1
006aeb18  00 30 a0 33                                      movlo r3, #0
006aeb1c  00 60 a0 e3                                      mov r6, #0
006aeb20  00 00 57 e3                                      cmp r7, #0
006aeb24  58 30 cd e5                                      strb r3, [sp, #0x58]
006aeb28  68 60 8d e5                                      str r6, [sp, #0x68]
006aeb2c  6c 80 8d e5                                      str r8, [sp, #0x6c]
006aeb30  16 00 00 0a                                      beq #0x6aeb90
006aeb34  64 30 a0 e3                                      mov r3, #0x64
006aeb38  06 10 a0 e1                                      mov r1, r6
006aeb3c  63 0f a0 e3                                      mov r0, #0x18c
006aeb40  7c 30 8d e5                                      str r3, [sp, #0x7c]
006aeb44  78 30 8d e5                                      str r3, [sp, #0x78]
006aeb48  70 60 8d e5                                      str r6, [sp, #0x70]
006aeb4c  74 60 8d e5                                      str r6, [sp, #0x74]
006aeb50  95 15 fa eb                                      bl #0x5341ac
006aeb54  50 11 95 e5                                      ldr r1, [r5, #0x150]
006aeb58  00 70 a0 e1                                      mov r7, r0
006aeb5c  08 30 a0 e1                                      mov r3, r8
006aeb60  70 c0 8d e2                                      add ip, sp, #0x70
006aeb64  05 20 a0 e1                                      mov r2, r5
006aeb68  00 c0 8d e5                                      str ip, [sp]
006aeb6c  04 60 8d e5                                      str r6, [sp, #4]
006aeb70  08 60 8d e5                                      str r6, [sp, #8]
006aeb74  0f fd ff eb                                      bl #0x6adfb8
006aeb78  68 70 8d e5                                      str r7, [sp, #0x68]
006aeb7c  07 00 a0 e1                                      mov r0, r7
006aeb80  06 10 a0 e1                                      mov r1, r6
006aeb84  00 30 97 e5                                      ldr r3, [r7]
006aeb88  0f e0 a0 e1                                      mov lr, pc
006aeb8c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006aeb90  04 10 a0 e1                                      mov r1, r4
006aeb94  57 0f 85 e2                                      add r0, r5, #0x15c
006aeb98  68 fe ff eb                                      bl #0x6ae540
006aeb9c  00 30 95 e5                                      ldr r3, [r5]
006aeba0  05 00 a0 e1                                      mov r0, r5
006aeba4  0f e0 a0 e1                                      mov lr, pc
006aeba8  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006aebac  5c 31 95 e5                                      ldr r3, [r5, #0x15c]
006aebb0  60 21 95 e5                                      ldr r2, [r5, #0x160]
006aebb4  54 00 9d e5                                      ldr r0, [sp, #0x54]
006aebb8  02 30 63 e0                                      rsb r3, r3, r2
006aebbc  c3 32 a0 e1                                      asr r3, r3, #5
006aebc0  04 00 50 e1                                      cmp r0, r4
006aebc4  03 41 83 e0                                      add r4, r3, r3, lsl #2
006aebc8  04 42 84 e0                                      add r4, r4, r4, lsl #4
006aebcc  04 44 84 e0                                      add r4, r4, r4, lsl #8
006aebd0  04 48 84 e0                                      add r4, r4, r4, lsl #16
006aebd4  84 40 83 e0                                      add r4, r3, r4, lsl #1
006aebd8  01 40 44 e2                                      sub r4, r4, #1
006aebdc  02 00 00 0a                                      beq #0x6aebec
006aebe0  00 00 50 e3                                      cmp r0, #0
006aebe4  00 00 00 0a                                      beq #0x6aebec
006aebe8  18 86 f1 eb                                      bl #0x310450
006aebec  04 00 a0 e1                                      mov r0, r4
006aebf0  80 d0 8d e2                                      add sp, sp, #0x80
006aebf4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006aebf8  04 a0 9f e5                                      ldr sl, [pc, #4]
006aebfc  0a a0 8f e0                                      add sl, pc, sl
006aec00  bd ff ff ea                                      b #0x6aeafc
; mapping-symbol data/literal pool
006aec04  14 00 21 00                                      .byte 0x14, 0x00, 0x21, 0x00

; FUNCTION 0x006aec08, declared_size=1716, range_size=1716, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu4drawEv
; demangled: glitch::gui::CGUIContextMenu::draw()
; decoder-mode: arm
006aec08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006aec0c  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
006aec10  bc d0 4d e2                                      sub sp, sp, #0xbc
006aec14  00 40 a0 e1                                      mov r4, r0
006aec18  00 00 53 e3                                      cmp r3, #0
006aec1c  01 00 00 1a                                      bne #0x6aec28
006aec20  bc d0 8d e2                                      add sp, sp, #0xbc
006aec24  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006aec28  50 31 90 e5                                      ldr r3, [r0, #0x150]
006aec2c  03 00 a0 e1                                      mov r0, r3
006aec30  00 30 93 e5                                      ldr r3, [r3]
006aec34  0f e0 a0 e1                                      mov lr, pc
006aec38  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aec3c  00 50 50 e2                                      subs r5, r0, #0
006aec40  f6 ff ff 0a                                      beq #0x6aec20
006aec44  00 30 95 e5                                      ldr r3, [r5]
006aec48  03 10 a0 e3                                      mov r1, #3
006aec4c  0f e0 a0 e1                                      mov lr, pc
006aec50  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006aec54  00 90 a0 e1                                      mov sb, r0
006aec58  7c 01 94 e5                                      ldr r0, [r4, #0x17c]
006aec5c  00 00 59 e1                                      cmp sb, r0
006aec60  0b 00 00 0a                                      beq #0x6aec94
006aec64  00 00 50 e3                                      cmp r0, #0
006aec68  00 00 00 0a                                      beq #0x6aec70
006aec6c  44 ba f1 eb                                      bl #0x31d584
006aec70  00 00 59 e3                                      cmp sb, #0
006aec74  7c 91 84 e5                                      str sb, [r4, #0x17c]
006aec78  04 30 99 15                                      ldrne r3, [sb, #4]
006aec7c  04 00 a0 e1                                      mov r0, r4
006aec80  01 30 83 12                                      addne r3, r3, #1
006aec84  04 30 89 15                                      strne r3, [sb, #4]
006aec88  00 30 94 e5                                      ldr r3, [r4]
006aec8c  0f e0 a0 e1                                      mov lr, pc
006aec90  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006aec94  00 30 95 e5                                      ldr r3, [r5]
006aec98  05 00 a0 e1                                      mov r0, r5
006aec9c  0f e0 a0 e1                                      mov lr, pc
006aeca0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006aeca4  00 80 a0 e1                                      mov r8, r0
006aeca8  38 00 84 e2                                      add r0, r4, #0x38
006aecac  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
006aecb0  80 00 8d e5                                      str r0, [sp, #0x80]
006aecb4  38 00 84 e2                                      add r0, r4, #0x38
006aecb8  30 00 8d e5                                      str r0, [sp, #0x30]
006aecbc  84 10 8d e5                                      str r1, [sp, #0x84]
006aecc0  88 20 8d e5                                      str r2, [sp, #0x88]
006aecc4  8c 30 8d e5                                      str r3, [sp, #0x8c]
006aecc8  00 c0 95 e5                                      ldr ip, [r5]
006aeccc  05 00 a0 e1                                      mov r0, r5
006aecd0  04 10 a0 e1                                      mov r1, r4
006aecd4  30 20 9d e5                                      ldr r2, [sp, #0x30]
006aecd8  00 30 a0 e3                                      mov r3, #0
006aecdc  0f e0 a0 e1                                      mov lr, pc
006aece0  50 f0 9c e5                                      ldr pc, [ip, #0x50]
006aece4  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006aece8  60 61 94 e5                                      ldr r6, [r4, #0x160]
006aecec  38 c0 94 e5                                      ldr ip, [r4, #0x38]
006aecf0  3c 00 84 e2                                      add r0, r4, #0x3c
006aecf4  0b 00 90 e8                                      ldm r0, {r0, r1, r3}
006aecf8  06 60 62 e0                                      rsb r6, r2, r6
006aecfc  5f 00 56 e3                                      cmp r6, #0x5f
006aed00  80 c0 8d e5                                      str ip, [sp, #0x80]
006aed04  84 00 8d e5                                      str r0, [sp, #0x84]
006aed08  88 10 8d e5                                      str r1, [sp, #0x88]
006aed0c  8c 30 8d e5                                      str r3, [sp, #0x8c]
006aed10  52 01 00 da                                      ble #0x6af260
006aed14  70 30 8d e2                                      add r3, sp, #0x70
006aed18  90 c0 8d e2                                      add ip, sp, #0x90
006aed1c  a0 00 8d e2                                      add r0, sp, #0xa0
006aed20  38 30 8d e5                                      str r3, [sp, #0x38]
006aed24  40 c0 8d e5                                      str ip, [sp, #0x40]
006aed28  98 30 8d e2                                      add r3, sp, #0x98
006aed2c  a4 c0 8d e2                                      add ip, sp, #0xa4
006aed30  44 00 8d e5                                      str r0, [sp, #0x44]
006aed34  80 00 8d e2                                      add r0, sp, #0x80
006aed38  00 70 a0 e3                                      mov r7, #0
006aed3c  48 30 8d e5                                      str r3, [sp, #0x48]
006aed40  4c c0 8d e5                                      str ip, [sp, #0x4c]
006aed44  2c 00 8d e5                                      str r0, [sp, #0x2c]
006aed48  ac 30 8d e2                                      add r3, sp, #0xac
006aed4c  60 c0 8d e2                                      add ip, sp, #0x60
006aed50  b4 00 8d e2                                      add r0, sp, #0xb4
006aed54  07 60 a0 e1                                      mov r6, r7
006aed58  50 30 8d e5                                      str r3, [sp, #0x50]
006aed5c  54 c0 8d e5                                      str ip, [sp, #0x54]
006aed60  3c 00 8d e5                                      str r0, [sp, #0x3c]
006aed64  4f 00 00 ea                                      b #0x6aeea8
006aed68  38 00 94 e5                                      ldr r0, [r4, #0x38]
006aed6c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006aed70  40 10 94 e5                                      ldr r1, [r4, #0x40]
006aed74  44 c0 94 e5                                      ldr ip, [r4, #0x44]
006aed78  80 00 8d e5                                      str r0, [sp, #0x80]
006aed7c  84 30 8d e5                                      str r3, [sp, #0x84]
006aed80  8c c0 8d e5                                      str ip, [sp, #0x8c]
006aed84  88 10 8d e5                                      str r1, [sp, #0x88]
006aed88  54 20 92 e5                                      ldr r2, [r2, #0x54]
006aed8c  05 00 80 e2                                      add r0, r0, #5
006aed90  05 10 41 e2                                      sub r1, r1, #5
006aed94  02 30 83 e0                                      add r3, r3, r2
006aed98  04 c0 83 e2                                      add ip, r3, #4
006aed9c  03 30 83 e2                                      add r3, r3, #3
006aeda0  8c c0 8d e5                                      str ip, [sp, #0x8c]
006aeda4  80 00 8d e5                                      str r0, [sp, #0x80]
006aeda8  88 10 8d e5                                      str r1, [sp, #0x88]
006aedac  84 30 8d e5                                      str r3, [sp, #0x84]
006aedb0  00 30 95 e5                                      ldr r3, [r5]
006aedb4  01 10 a0 e3                                      mov r1, #1
006aedb8  05 00 a0 e1                                      mov r0, r5
006aedbc  64 b0 93 e5                                      ldr fp, [r3, #0x64]
006aedc0  0f e0 a0 e1                                      mov lr, pc
006aedc4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aedc8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006aedcc  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006aedd0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006aedd4  59 10 cd e5                                      strb r1, [sp, #0x59]
006aedd8  5a 20 cd e5                                      strb r2, [sp, #0x5a]
006aeddc  58 00 cd e5                                      strb r0, [sp, #0x58]
006aede0  5b 30 cd e5                                      strb r3, [sp, #0x5b]
006aede4  58 30 9d e5                                      ldr r3, [sp, #0x58]
006aede8  00 a0 a0 e3                                      mov sl, #0
006aedec  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006aedf0  b4 30 8d e5                                      str r3, [sp, #0xb4]
006aedf4  05 00 a0 e1                                      mov r0, r5
006aedf8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006aedfc  04 10 a0 e1                                      mov r1, r4
006aee00  00 a0 8d e5                                      str sl, [sp]
006aee04  3b ff 2f e1                                      blx fp
006aee08  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006aee0c  84 30 9d e5                                      ldr r3, [sp, #0x84]
006aee10  03 10 a0 e3                                      mov r1, #3
006aee14  01 20 82 e2                                      add r2, r2, #1
006aee18  01 30 83 e2                                      add r3, r3, #1
006aee1c  8c 20 8d e5                                      str r2, [sp, #0x8c]
006aee20  84 30 8d e5                                      str r3, [sp, #0x84]
006aee24  00 30 95 e5                                      ldr r3, [r5]
006aee28  05 00 a0 e1                                      mov r0, r5
006aee2c  64 b0 93 e5                                      ldr fp, [r3, #0x64]
006aee30  0f e0 a0 e1                                      mov lr, pc
006aee34  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aee38  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006aee3c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006aee40  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006aee44  59 10 cd e5                                      strb r1, [sp, #0x59]
006aee48  5a 20 cd e5                                      strb r2, [sp, #0x5a]
006aee4c  58 00 cd e5                                      strb r0, [sp, #0x58]
006aee50  5b 30 cd e5                                      strb r3, [sp, #0x5b]
006aee54  58 30 9d e5                                      ldr r3, [sp, #0x58]
006aee58  b8 20 8d e2                                      add r2, sp, #0xb8
006aee5c  00 a0 8d e5                                      str sl, [sp]
006aee60  08 30 22 e5                                      str r3, [r2, #-8]!
006aee64  05 00 a0 e1                                      mov r0, r5
006aee68  04 10 a0 e1                                      mov r1, r4
006aee6c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006aee70  3b ff 2f e1                                      blx fp
006aee74  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006aee78  60 31 94 e5                                      ldr r3, [r4, #0x160]
006aee7c  01 60 86 e2                                      add r6, r6, #1
006aee80  60 70 87 e2                                      add r7, r7, #0x60
006aee84  03 30 62 e0                                      rsb r3, r2, r3
006aee88  c3 32 a0 e1                                      asr r3, r3, #5
006aee8c  03 11 83 e0                                      add r1, r3, r3, lsl #2
006aee90  01 12 81 e0                                      add r1, r1, r1, lsl #4
006aee94  01 14 81 e0                                      add r1, r1, r1, lsl #8
006aee98  01 18 81 e0                                      add r1, r1, r1, lsl #16
006aee9c  81 10 83 e0                                      add r1, r3, r1, lsl #1
006aeea0  01 00 56 e1                                      cmp r6, r1
006aeea4  ed 00 00 aa                                      bge #0x6af260
006aeea8  07 20 82 e0                                      add r2, r2, r7
006aeeac  48 a0 d2 e5                                      ldrb sl, [r2, #0x48]
006aeeb0  00 00 5a e3                                      cmp sl, #0
006aeeb4  ab ff ff 1a                                      bne #0x6aed68
006aeeb8  38 00 9d e5                                      ldr r0, [sp, #0x38]
006aeebc  04 10 a0 e1                                      mov r1, r4
006aeec0  30 30 9d e5                                      ldr r3, [sp, #0x30]
006aeec4  00 c0 94 e5                                      ldr ip, [r4]
006aeec8  0f e0 a0 e1                                      mov lr, pc
006aeecc  cc f0 9c e5                                      ldr pc, [ip, #0xcc]
006aeed0  58 31 94 e5                                      ldr r3, [r4, #0x158]
006aeed4  74 10 9d e5                                      ldr r1, [sp, #0x74]
006aeed8  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006aeedc  06 00 53 e1                                      cmp r3, r6
006aeee0  70 30 9d e5                                      ldr r3, [sp, #0x70]
006aeee4  84 10 8d e5                                      str r1, [sp, #0x84]
006aeee8  8c 00 8d e5                                      str r0, [sp, #0x8c]
006aeeec  80 30 8d e5                                      str r3, [sp, #0x80]
006aeef0  78 30 9d e5                                      ldr r3, [sp, #0x78]
006aeef4  88 30 8d e5                                      str r3, [sp, #0x88]
006aeef8  ae 00 00 0a                                      beq #0x6af1b8
006aeefc  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006aef00  08 a0 a0 e3                                      mov sl, #8
006aef04  07 30 82 e0                                      add r3, r2, r7
006aef08  49 10 d3 e5                                      ldrb r1, [r3, #0x49]
006aef0c  00 00 51 e3                                      cmp r1, #0
006aef10  a6 00 00 0a                                      beq #0x6af1b0
006aef14  00 00 59 e3                                      cmp sb, #0
006aef18  1c 00 00 0a                                      beq #0x6aef90
006aef1c  00 20 99 e5                                      ldr r2, [sb]
006aef20  44 b0 93 e5                                      ldr fp, [r3, #0x44]
006aef24  0a 10 a0 e1                                      mov r1, sl
006aef28  0c c0 92 e5                                      ldr ip, [r2, #0xc]
006aef2c  05 00 a0 e1                                      mov r0, r5
006aef30  24 c0 8d e5                                      str ip, [sp, #0x24]
006aef34  00 30 95 e5                                      ldr r3, [r5]
006aef38  0f e0 a0 e1                                      mov lr, pc
006aef3c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aef40  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006aef44  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006aef48  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006aef4c  59 10 cd e5                                      strb r1, [sp, #0x59]
006aef50  5a 20 cd e5                                      strb r2, [sp, #0x5a]
006aef54  58 00 cd e5                                      strb r0, [sp, #0x58]
006aef58  5b 30 cd e5                                      strb r3, [sp, #0x5b]
006aef5c  58 30 9d e5                                      ldr r3, [sp, #0x58]
006aef60  00 20 a0 e3                                      mov r2, #0
006aef64  01 10 a0 e3                                      mov r1, #1
006aef68  06 00 8d e9                                      stmib sp, {r1, r2}
006aef6c  a8 30 8d e5                                      str r3, [sp, #0xa8]
006aef70  00 20 8d e5                                      str r2, [sp]
006aef74  0b 10 a0 e1                                      mov r1, fp
006aef78  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006aef7c  09 00 a0 e1                                      mov r0, sb
006aef80  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006aef84  3c ff 2f e1                                      blx ip
006aef88  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006aef8c  07 30 82 e0                                      add r3, r2, r7
006aef90  58 10 93 e5                                      ldr r1, [r3, #0x58]
006aef94  00 00 51 e3                                      cmp r1, #0
006aef98  3f 00 00 0a                                      beq #0x6af09c
006aef9c  00 00 58 e3                                      cmp r8, #0
006aefa0  3d 00 00 0a                                      beq #0x6af09c
006aefa4  00 c0 98 e5                                      ldr ip, [r8]
006aefa8  84 20 9d e5                                      ldr r2, [sp, #0x84]
006aefac  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
006aefb0  24 c0 9c e5                                      ldr ip, [ip, #0x24]
006aefb4  20 20 8d e5                                      str r2, [sp, #0x20]
006aefb8  1c 30 8d e5                                      str r3, [sp, #0x1c]
006aefbc  34 c0 8d e5                                      str ip, [sp, #0x34]
006aefc0  08 10 a0 e3                                      mov r1, #8
006aefc4  00 c0 95 e5                                      ldr ip, [r5]
006aefc8  05 00 a0 e1                                      mov r0, r5
006aefcc  88 b0 9d e5                                      ldr fp, [sp, #0x88]
006aefd0  0f e0 a0 e1                                      mov lr, pc
006aefd4  38 f0 9c e5                                      ldr pc, [ip, #0x38]
006aefd8  20 20 9d e5                                      ldr r2, [sp, #0x20]
006aefdc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006aefe0  8b b0 a0 e1                                      lsl fp, fp, #1
006aefe4  0f b0 4b e2                                      sub fp, fp, #0xf
006aefe8  02 30 83 e0                                      add r3, r3, r2
006aefec  ab bf 8b e0                                      add fp, fp, fp, lsr #31
006aeff0  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
006aeff4  cb b0 a0 e1                                      asr fp, fp, #1
006aeff8  c3 30 a0 e1                                      asr r3, r3, #1
006aeffc  28 00 8d e5                                      str r0, [sp, #0x28]
006af000  98 b0 8d e5                                      str fp, [sp, #0x98]
006af004  9c 30 8d e5                                      str r3, [sp, #0x9c]
006af008  00 30 95 e5                                      ldr r3, [r5]
006af00c  0a 10 a0 e1                                      mov r1, sl
006af010  05 00 a0 e1                                      mov r0, r5
006af014  0f e0 a0 e1                                      mov lr, pc
006af018  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006af01c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006af020  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006af024  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006af028  58 00 cd e5                                      strb r0, [sp, #0x58]
006af02c  59 10 cd e5                                      strb r1, [sp, #0x59]
006af030  5a 20 cd e5                                      strb r2, [sp, #0x5a]
006af034  5b 30 cd e5                                      strb r3, [sp, #0x5b]
006af038  58 31 94 e5                                      ldr r3, [r4, #0x158]
006af03c  58 20 9d e5                                      ldr r2, [sp, #0x58]
006af040  06 00 53 e1                                      cmp r3, r6
006af044  00 b0 a0 13                                      movne fp, #0
006af048  a4 20 8d e5                                      str r2, [sp, #0xa4]
006af04c  0b 00 a0 11                                      movne r0, fp
006af050  91 00 00 0a                                      beq #0x6af29c
006af054  08 00 8d e5                                      str r0, [sp, #8]
006af058  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006af05c  03 00 56 e1                                      cmp r6, r3
006af060  00 30 a0 13                                      movne r3, #0
006af064  01 30 a0 03                                      moveq r3, #1
006af068  0c 30 8d e5                                      str r3, [sp, #0xc]
006af06c  01 30 a0 e3                                      mov r3, #1
006af070  10 30 8d e5                                      str r3, [sp, #0x10]
006af074  00 00 8d e5                                      str r0, [sp]
006af078  48 20 9d e5                                      ldr r2, [sp, #0x48]
006af07c  00 30 a0 e3                                      mov r3, #0
006af080  04 b0 8d e5                                      str fp, [sp, #4]
006af084  28 10 9d e5                                      ldr r1, [sp, #0x28]
006af088  08 00 a0 e1                                      mov r0, r8
006af08c  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006af090  3c ff 2f e1                                      blx ip
006af094  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006af098  07 30 82 e0                                      add r3, r2, r7
006af09c  4a 30 d3 e5                                      ldrb r3, [r3, #0x4a]
006af0a0  00 00 53 e3                                      cmp r3, #0
006af0a4  73 ff ff 0a                                      beq #0x6aee78
006af0a8  00 00 58 e3                                      cmp r8, #0
006af0ac  71 ff ff 0a                                      beq #0x6aee78
006af0b0  00 e0 98 e5                                      ldr lr, [r8]
006af0b4  80 30 9d e5                                      ldr r3, [sp, #0x80]
006af0b8  84 c0 9d e5                                      ldr ip, [sp, #0x84]
006af0bc  24 e0 9e e5                                      ldr lr, [lr, #0x24]
006af0c0  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006af0c4  00 b0 95 e5                                      ldr fp, [r5]
006af0c8  0a 10 a0 e3                                      mov r1, #0xa
006af0cc  28 e0 8d e5                                      str lr, [sp, #0x28]
006af0d0  20 20 8d e5                                      str r2, [sp, #0x20]
006af0d4  1c 30 8d e5                                      str r3, [sp, #0x1c]
006af0d8  24 c0 8d e5                                      str ip, [sp, #0x24]
006af0dc  05 00 a0 e1                                      mov r0, r5
006af0e0  0f e0 a0 e1                                      mov lr, pc
006af0e4  38 f0 9b e5                                      ldr pc, [fp, #0x38]
006af0e8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006af0ec  20 20 9d e5                                      ldr r2, [sp, #0x20]
006af0f0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006af0f4  83 30 a0 e1                                      lsl r3, r3, #1
006af0f8  0f 30 43 e2                                      sub r3, r3, #0xf
006af0fc  0c 20 82 e0                                      add r2, r2, ip
006af100  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
006af104  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
006af108  c3 30 a0 e1                                      asr r3, r3, #1
006af10c  c2 20 a0 e1                                      asr r2, r2, #1
006af110  94 20 8d e5                                      str r2, [sp, #0x94]
006af114  90 30 8d e5                                      str r3, [sp, #0x90]
006af118  0a 10 a0 e1                                      mov r1, sl
006af11c  00 30 95 e5                                      ldr r3, [r5]
006af120  00 b0 a0 e1                                      mov fp, r0
006af124  05 00 a0 e1                                      mov r0, r5
006af128  0f e0 a0 e1                                      mov lr, pc
006af12c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006af130  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006af134  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006af138  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006af13c  58 00 cd e5                                      strb r0, [sp, #0x58]
006af140  59 10 cd e5                                      strb r1, [sp, #0x59]
006af144  5a 20 cd e5                                      strb r2, [sp, #0x5a]
006af148  5b 30 cd e5                                      strb r3, [sp, #0x5b]
006af14c  58 31 94 e5                                      ldr r3, [r4, #0x158]
006af150  58 20 9d e5                                      ldr r2, [sp, #0x58]
006af154  06 00 53 e1                                      cmp r3, r6
006af158  00 a0 a0 13                                      movne sl, #0
006af15c  a0 20 8d e5                                      str r2, [sp, #0xa0]
006af160  0a 00 a0 11                                      movne r0, sl
006af164  50 00 00 0a                                      beq #0x6af2ac
006af168  08 00 8d e5                                      str r0, [sp, #8]
006af16c  44 00 9d e5                                      ldr r0, [sp, #0x44]
006af170  03 00 56 e1                                      cmp r6, r3
006af174  00 30 a0 13                                      movne r3, #0
006af178  01 30 a0 03                                      moveq r3, #1
006af17c  0c 30 8d e5                                      str r3, [sp, #0xc]
006af180  01 30 a0 e3                                      mov r3, #1
006af184  10 30 8d e5                                      str r3, [sp, #0x10]
006af188  00 00 8d e5                                      str r0, [sp]
006af18c  40 20 9d e5                                      ldr r2, [sp, #0x40]
006af190  04 a0 8d e5                                      str sl, [sp, #4]
006af194  0b 10 a0 e1                                      mov r1, fp
006af198  08 00 a0 e1                                      mov r0, r8
006af19c  00 30 a0 e3                                      mov r3, #0
006af1a0  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006af1a4  3c ff 2f e1                                      blx ip
006af1a8  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006af1ac  31 ff ff ea                                      b #0x6aee78
006af1b0  09 a0 a0 e3                                      mov sl, #9
006af1b4  56 ff ff ea                                      b #0x6aef14
006af1b8  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006af1bc  07 30 82 e0                                      add r3, r2, r7
006af1c0  49 c0 d3 e5                                      ldrb ip, [r3, #0x49]
006af1c4  00 00 5c e3                                      cmp ip, #0
006af1c8  f8 ff ff 0a                                      beq #0x6af1b0
006af1cc  38 20 94 e5                                      ldr r2, [r4, #0x38]
006af1d0  40 30 94 e5                                      ldr r3, [r4, #0x40]
006af1d4  6c 00 8d e5                                      str r0, [sp, #0x6c]
006af1d8  05 20 82 e2                                      add r2, r2, #5
006af1dc  05 30 43 e2                                      sub r3, r3, #5
006af1e0  64 10 8d e5                                      str r1, [sp, #0x64]
006af1e4  60 20 8d e5                                      str r2, [sp, #0x60]
006af1e8  68 30 8d e5                                      str r3, [sp, #0x68]
006af1ec  00 30 95 e5                                      ldr r3, [r5]
006af1f0  0a 10 a0 e3                                      mov r1, #0xa
006af1f4  05 00 a0 e1                                      mov r0, r5
006af1f8  64 b0 93 e5                                      ldr fp, [r3, #0x64]
006af1fc  0f e0 a0 e1                                      mov lr, pc
006af200  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006af204  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006af208  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006af20c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006af210  59 10 cd e5                                      strb r1, [sp, #0x59]
006af214  5a 20 cd e5                                      strb r2, [sp, #0x5a]
006af218  58 00 cd e5                                      strb r0, [sp, #0x58]
006af21c  5b 30 cd e5                                      strb r3, [sp, #0x5b]
006af220  58 30 9d e5                                      ldr r3, [sp, #0x58]
006af224  00 a0 8d e5                                      str sl, [sp]
006af228  05 00 a0 e1                                      mov r0, r5
006af22c  ac 30 8d e5                                      str r3, [sp, #0xac]
006af230  04 10 a0 e1                                      mov r1, r4
006af234  54 30 9d e5                                      ldr r3, [sp, #0x54]
006af238  50 20 9d e5                                      ldr r2, [sp, #0x50]
006af23c  3b ff 2f e1                                      blx fp
006af240  58 31 94 e5                                      ldr r3, [r4, #0x158]
006af244  03 00 56 e1                                      cmp r6, r3
006af248  2b ff ff 1a                                      bne #0x6aeefc
006af24c  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006af250  0b a0 a0 e3                                      mov sl, #0xb
006af254  07 30 82 e0                                      add r3, r2, r7
006af258  49 10 d3 e5                                      ldrb r1, [r3, #0x49]
006af25c  2a ff ff ea                                      b #0x6aef0c
006af260  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
006af264  00 00 53 e3                                      cmp r3, #0
006af268  04 50 b4 15                                      ldrne r5, [r4, #4]!
006af26c  6b fe ff 0a                                      beq #0x6aec20
006af270  04 00 55 e1                                      cmp r5, r4
006af274  69 fe ff 0a                                      beq #0x6aec20
006af278  08 30 95 e5                                      ldr r3, [r5, #8]
006af27c  03 00 a0 e1                                      mov r0, r3
006af280  00 30 93 e5                                      ldr r3, [r3]
006af284  0f e0 a0 e1                                      mov lr, pc
006af288  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006af28c  00 50 95 e5                                      ldr r5, [r5]
006af290  04 00 55 e1                                      cmp r5, r4
006af294  f7 ff ff 1a                                      bne #0x6af278
006af298  60 fe ff ea                                      b #0x6aec20
006af29c  70 b1 94 e5                                      ldr fp, [r4, #0x170]
006af2a0  0f 6f fd eb                                      bl #0x60aee4
006af2a4  58 31 94 e5                                      ldr r3, [r4, #0x158]
006af2a8  69 ff ff ea                                      b #0x6af054
006af2ac  70 a1 94 e5                                      ldr sl, [r4, #0x170]
006af2b0  0b 6f fd eb                                      bl #0x60aee4
006af2b4  58 31 94 e5                                      ldr r3, [r4, #0x158]
006af2b8  aa ff ff ea                                      b #0x6af168

; FUNCTION 0x006af2bc, declared_size=880, range_size=880, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZNK6glitch3gui15CGUIContextMenu19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIContextMenu::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006af2bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006af2c0  40 33 9f e5                                      ldr r3, [pc, #0x340]
006af2c4  40 c3 9f e5                                      ldr ip, [pc, #0x340]
006af2c8  4c d0 4d e2                                      sub sp, sp, #0x4c
006af2cc  03 30 8f e0                                      add r3, pc, r3
006af2d0  00 30 8d e5                                      str r3, [sp]
006af2d4  0c 30 93 e7                                      ldr r3, [r3, ip]
006af2d8  01 50 a0 e1                                      mov r5, r1
006af2dc  00 40 a0 e1                                      mov r4, r0
006af2e0  00 30 93 e5                                      ldr r3, [r3]
006af2e4  10 c0 8d e5                                      str ip, [sp, #0x10]
006af2e8  44 30 8d e5                                      str r3, [sp, #0x44]
006af2ec  72 17 fa eb                                      bl #0x5350bc
006af2f0  00 10 95 e5                                      ldr r1, [r5]
006af2f4  68 21 94 e5                                      ldr r2, [r4, #0x168]
006af2f8  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
006af2fc  d8 c1 91 e5                                      ldr ip, [r1, #0x1d8]
006af300  08 13 9f e5                                      ldr r1, [pc, #0x308]
006af304  24 20 8d e5                                      str r2, [sp, #0x24]
006af308  28 30 8d e5                                      str r3, [sp, #0x28]
006af30c  01 10 8f e0                                      add r1, pc, r1
006af310  00 30 a0 e3                                      mov r3, #0
006af314  05 00 a0 e1                                      mov r0, r5
006af318  24 20 8d e2                                      add r2, sp, #0x24
006af31c  3c ff 2f e1                                      blx ip
006af320  24 60 94 e5                                      ldr r6, [r4, #0x24]
006af324  54 31 96 e5                                      ldr r3, [r6, #0x154]
006af328  03 00 53 e3                                      cmp r3, #3
006af32c  9b 00 00 0a                                      beq #0x6af5a0
006af330  04 00 53 e3                                      cmp r3, #4
006af334  99 00 00 0a                                      beq #0x6af5a0
006af338  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006af33c  60 21 94 e5                                      ldr r2, [r4, #0x160]
006af340  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
006af344  2c 70 8d e2                                      add r7, sp, #0x2c
006af348  02 20 63 e0                                      rsb r2, r3, r2
006af34c  c2 22 a0 e1                                      asr r2, r2, #5
006af350  00 30 a0 e3                                      mov r3, #0
006af354  02 e1 82 e0                                      add lr, r2, r2, lsl #2
006af358  01 10 8f e0                                      add r1, pc, r1
006af35c  0e e2 8e e0                                      add lr, lr, lr, lsl #4
006af360  05 00 a0 e1                                      mov r0, r5
006af364  0e e4 8e e0                                      add lr, lr, lr, lsl #8
006af368  00 c0 95 e5                                      ldr ip, [r5]
006af36c  0e e8 8e e0                                      add lr, lr, lr, lsl #16
006af370  00 60 a0 e3                                      mov r6, #0
006af374  8e 20 82 e0                                      add r2, r2, lr, lsl #1
006af378  0f e0 a0 e1                                      mov lr, pc
006af37c  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006af380  07 00 a0 e1                                      mov r0, r7
006af384  3c 70 8d e5                                      str r7, [sp, #0x3c]
006af388  40 70 8d e5                                      str r7, [sp, #0x40]
006af38c  56 fa ff eb                                      bl #0x6adcec
006af390  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006af394  00 60 c3 e5                                      strb r6, [r3]
006af398  60 21 94 e5                                      ldr r2, [r4, #0x160]
006af39c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006af3a0  02 30 63 e0                                      rsb r3, r3, r2
006af3a4  c3 32 a0 e1                                      asr r3, r3, #5
006af3a8  03 21 83 e0                                      add r2, r3, r3, lsl #2
006af3ac  02 22 82 e0                                      add r2, r2, r2, lsl #4
006af3b0  02 24 82 e0                                      add r2, r2, r2, lsl #8
006af3b4  02 28 82 e0                                      add r2, r2, r2, lsl #16
006af3b8  82 30 83 e0                                      add r3, r3, r2, lsl #1
006af3bc  06 00 53 e1                                      cmp r3, r6
006af3c0  67 00 00 0a                                      beq #0x6af564
006af3c4  4c 32 9f e5                                      ldr r3, [pc, #0x24c]
006af3c8  4c b2 9f e5                                      ldr fp, [pc, #0x24c]
006af3cc  06 80 a0 e1                                      mov r8, r6
006af3d0  03 30 8f e0                                      add r3, pc, r3
006af3d4  04 30 8d e5                                      str r3, [sp, #4]
006af3d8  40 32 9f e5                                      ldr r3, [pc, #0x240]
006af3dc  04 e0 9d e5                                      ldr lr, [sp, #4]
006af3e0  03 30 8f e0                                      add r3, pc, r3
006af3e4  08 30 8d e5                                      str r3, [sp, #8]
006af3e8  34 32 9f e5                                      ldr r3, [pc, #0x234]
006af3ec  08 10 9d e5                                      ldr r1, [sp, #8]
006af3f0  04 e0 8e e2                                      add lr, lr, #4
006af3f4  03 30 8f e0                                      add r3, pc, r3
006af3f8  09 10 81 e2                                      add r1, r1, #9
006af3fc  07 20 83 e2                                      add r2, r3, #7
006af400  0c 30 8d e5                                      str r3, [sp, #0xc]
006af404  14 e0 8d e5                                      str lr, [sp, #0x14]
006af408  18 10 8d e5                                      str r1, [sp, #0x18]
006af40c  1c 20 8d e5                                      str r2, [sp, #0x1c]
006af410  0b 00 00 ea                                      b #0x6af444
006af414  60 21 94 e5                                      ldr r2, [r4, #0x160]
006af418  01 80 88 e2                                      add r8, r8, #1
006af41c  60 60 86 e2                                      add r6, r6, #0x60
006af420  02 30 63 e0                                      rsb r3, r3, r2
006af424  c3 32 a0 e1                                      asr r3, r3, #5
006af428  03 21 83 e0                                      add r2, r3, r3, lsl #2
006af42c  02 22 82 e0                                      add r2, r2, r2, lsl #4
006af430  02 24 82 e0                                      add r2, r2, r2, lsl #8
006af434  02 28 82 e0                                      add r2, r2, r2, lsl #16
006af438  82 20 83 e0                                      add r2, r3, r2, lsl #1
006af43c  02 00 58 e1                                      cmp r8, r2
006af440  47 00 00 2a                                      bhs #0x6af564
006af444  0b 10 8f e0                                      add r1, pc, fp
006af448  0b 20 81 e2                                      add r2, r1, #0xb
006af44c  07 00 a0 e1                                      mov r0, r7
006af450  78 a0 af e6                                      sxtb sl, r8
006af454  cb c5 f1 eb                                      bl #0x320b88
006af458  07 00 a0 e1                                      mov r0, r7
006af45c  0a 10 a0 e1                                      mov r1, sl
006af460  d0 1a f6 eb                                      bl #0x435fa8
006af464  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006af468  00 c0 95 e5                                      ldr ip, [r5]
006af46c  05 00 a0 e1                                      mov r0, r5
006af470  06 30 83 e0                                      add r3, r3, r6
006af474  48 20 d3 e5                                      ldrb r2, [r3, #0x48]
006af478  40 10 9d e5                                      ldr r1, [sp, #0x40]
006af47c  00 30 a0 e3                                      mov r3, #0
006af480  0f e0 a0 e1                                      mov lr, pc
006af484  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006af488  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006af48c  06 20 83 e0                                      add r2, r3, r6
006af490  48 90 d2 e5                                      ldrb sb, [r2, #0x48]
006af494  00 00 59 e3                                      cmp sb, #0
006af498  dd ff ff 1a                                      bne #0x6af414
006af49c  14 20 9d e5                                      ldr r2, [sp, #0x14]
006af4a0  04 10 9d e5                                      ldr r1, [sp, #4]
006af4a4  07 00 a0 e1                                      mov r0, r7
006af4a8  b6 c5 f1 eb                                      bl #0x320b88
006af4ac  07 00 a0 e1                                      mov r0, r7
006af4b0  0a 10 a0 e1                                      mov r1, sl
006af4b4  bb 1a f6 eb                                      bl #0x435fa8
006af4b8  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006af4bc  09 30 a0 e1                                      mov r3, sb
006af4c0  00 c0 95 e5                                      ldr ip, [r5]
006af4c4  06 20 82 e0                                      add r2, r2, r6
006af4c8  44 20 92 e5                                      ldr r2, [r2, #0x44]
006af4cc  05 00 a0 e1                                      mov r0, r5
006af4d0  40 10 9d e5                                      ldr r1, [sp, #0x40]
006af4d4  0f e0 a0 e1                                      mov lr, pc
006af4d8  94 f0 9c e5                                      ldr pc, [ip, #0x94]
006af4dc  18 20 9d e5                                      ldr r2, [sp, #0x18]
006af4e0  08 10 9d e5                                      ldr r1, [sp, #8]
006af4e4  07 00 a0 e1                                      mov r0, r7
006af4e8  a6 c5 f1 eb                                      bl #0x320b88
006af4ec  07 00 a0 e1                                      mov r0, r7
006af4f0  0a 10 a0 e1                                      mov r1, sl
006af4f4  ab 1a f6 eb                                      bl #0x435fa8
006af4f8  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006af4fc  09 30 a0 e1                                      mov r3, sb
006af500  00 c0 95 e5                                      ldr ip, [r5]
006af504  06 20 82 e0                                      add r2, r2, r6
006af508  5c 20 92 e5                                      ldr r2, [r2, #0x5c]
006af50c  05 00 a0 e1                                      mov r0, r5
006af510  40 10 9d e5                                      ldr r1, [sp, #0x40]
006af514  0f e0 a0 e1                                      mov lr, pc
006af518  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006af51c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006af520  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006af524  07 00 a0 e1                                      mov r0, r7
006af528  96 c5 f1 eb                                      bl #0x320b88
006af52c  07 00 a0 e1                                      mov r0, r7
006af530  0a 10 a0 e1                                      mov r1, sl
006af534  9b 1a f6 eb                                      bl #0x435fa8
006af538  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006af53c  09 30 a0 e1                                      mov r3, sb
006af540  00 c0 95 e5                                      ldr ip, [r5]
006af544  06 20 82 e0                                      add r2, r2, r6
006af548  49 20 d2 e5                                      ldrb r2, [r2, #0x49]
006af54c  05 00 a0 e1                                      mov r0, r5
006af550  40 10 9d e5                                      ldr r1, [sp, #0x40]
006af554  0f e0 a0 e1                                      mov lr, pc
006af558  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006af55c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006af560  ab ff ff ea                                      b #0x6af414
006af564  40 00 9d e5                                      ldr r0, [sp, #0x40]
006af568  07 00 50 e1                                      cmp r0, r7
006af56c  02 00 00 0a                                      beq #0x6af57c
006af570  00 00 50 e3                                      cmp r0, #0
006af574  00 00 00 0a                                      beq #0x6af57c
006af578  b4 83 f1 eb                                      bl #0x310450
006af57c  00 10 9d e5                                      ldr r1, [sp]
006af580  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006af584  44 20 9d e5                                      ldr r2, [sp, #0x44]
006af588  0c 30 91 e7                                      ldr r3, [r1, ip]
006af58c  00 30 93 e5                                      ldr r3, [r3]
006af590  03 00 52 e1                                      cmp r2, r3
006af594  1a 00 00 1a                                      bne #0x6af604
006af598  4c d0 8d e2                                      add sp, sp, #0x4c
006af59c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006af5a0  00 70 a0 e3                                      mov r7, #0
006af5a4  00 30 96 e5                                      ldr r3, [r6]
006af5a8  06 00 a0 e1                                      mov r0, r6
006af5ac  0f e0 a0 e1                                      mov lr, pc
006af5b0  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
006af5b4  00 00 57 e1                                      cmp r7, r0
006af5b8  08 00 00 3a                                      blo #0x6af5e0
006af5bc  64 10 9f e5                                      ldr r1, [pc, #0x64]
006af5c0  07 20 a0 e1                                      mov r2, r7
006af5c4  00 c0 95 e5                                      ldr ip, [r5]
006af5c8  01 10 8f e0                                      add r1, pc, r1
006af5cc  05 00 a0 e1                                      mov r0, r5
006af5d0  00 30 a0 e3                                      mov r3, #0
006af5d4  0f e0 a0 e1                                      mov lr, pc
006af5d8  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006af5dc  55 ff ff ea                                      b #0x6af338
006af5e0  00 30 96 e5                                      ldr r3, [r6]
006af5e4  06 00 a0 e1                                      mov r0, r6
006af5e8  07 10 a0 e1                                      mov r1, r7
006af5ec  0f e0 a0 e1                                      mov lr, pc
006af5f0  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
006af5f4  00 00 54 e1                                      cmp r4, r0
006af5f8  ef ff ff 0a                                      beq #0x6af5bc
006af5fc  01 70 87 e2                                      add r7, r7, #1
006af600  e7 ff ff ea                                      b #0x6af5a4
006af604  41 7b f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006af608  c4 57 2e 00 ac 40 00 00 34 4c 21 00 b8 f1 22 00  .byte 0xc4, 0x57, 0x2e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x4c, 0x21, 0x00, 0xb8, 0xf1, 0x22, 0x00
006af618  58 dd 21 00 4c bd 23 00 c0 bd 23 00 24 ea 22 00  .byte 0x58, 0xdd, 0x21, 0x00, 0x4c, 0xbd, 0x23, 0x00, 0xc0, 0xbd, 0x23, 0x00, 0x24, 0xea, 0x22, 0x00
006af628  e8 bb 23 00                                      .byte 0xe8, 0xbb, 0x23, 0x00

; FUNCTION 0x006af62c, declared_size=996, range_size=996, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZN6glitch3gui15CGUIContextMenu21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIContextMenu::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006af62c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006af630  b0 33 9f e5                                      ldr r3, [pc, #0x3b0]
006af634  b0 c3 9f e5                                      ldr ip, [pc, #0x3b0]
006af638  51 df 4d e2                                      sub sp, sp, #0x144
006af63c  03 30 8f e0                                      add r3, pc, r3
006af640  28 30 8d e5                                      str r3, [sp, #0x28]
006af644  0c 30 93 e7                                      ldr r3, [r3, ip]
006af648  00 a0 a0 e1                                      mov sl, r0
006af64c  01 50 a0 e1                                      mov r5, r1
006af650  00 30 93 e5                                      ldr r3, [r3]
006af654  3c c0 8d e5                                      str ip, [sp, #0x3c]
006af658  3c 31 8d e5                                      str r3, [sp, #0x13c]
006af65c  75 28 fa eb                                      bl #0x539838
006af660  88 23 9f e5                                      ldr r2, [pc, #0x388]
006af664  00 30 95 e5                                      ldr r3, [r5]
006af668  46 0f 8d e2                                      add r0, sp, #0x118
006af66c  02 20 8f e0                                      add r2, pc, r2
006af670  05 10 a0 e1                                      mov r1, r5
006af674  0f e0 a0 e1                                      mov lr, pc
006af678  e4 f1 93 e5                                      ldr pc, [r3, #0x1e4]
006af67c  24 60 9a e5                                      ldr r6, [sl, #0x24]
006af680  1c 31 9d e5                                      ldr r3, [sp, #0x11c]
006af684  18 21 9d e5                                      ldr r2, [sp, #0x118]
006af688  00 00 56 e3                                      cmp r6, #0
006af68c  6c 31 8a e5                                      str r3, [sl, #0x16c]
006af690  68 21 8a e5                                      str r2, [sl, #0x168]
006af694  04 00 00 0a                                      beq #0x6af6ac
006af698  54 31 96 e5                                      ldr r3, [r6, #0x154]
006af69c  03 00 53 e3                                      cmp r3, #3
006af6a0  c2 00 00 0a                                      beq #0x6af9b0
006af6a4  04 00 53 e3                                      cmp r3, #4
006af6a8  c0 00 00 0a                                      beq #0x6af9b0
006af6ac  0a 00 a0 e1                                      mov r0, sl
006af6b0  00 30 9a e5                                      ldr r3, [sl]
006af6b4  0f e0 a0 e1                                      mov lr, pc
006af6b8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006af6bc  30 13 9f e5                                      ldr r1, [pc, #0x330]
006af6c0  00 30 95 e5                                      ldr r3, [r5]
006af6c4  05 00 a0 e1                                      mov r0, r5
006af6c8  01 10 8f e0                                      add r1, pc, r1
006af6cc  0f e0 a0 e1                                      mov lr, pc
006af6d0  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006af6d4  00 00 50 e3                                      cmp r0, #0
006af6d8  10 00 8d e5                                      str r0, [sp, #0x10]
006af6dc  a6 00 00 da                                      ble #0x6af97c
006af6e0  10 33 9f e5                                      ldr r3, [pc, #0x310]
006af6e4  10 e3 9f e5                                      ldr lr, [pc, #0x310]
006af6e8  00 70 a0 e3                                      mov r7, #0
006af6ec  03 30 8f e0                                      add r3, pc, r3
006af6f0  18 30 8d e5                                      str r3, [sp, #0x18]
006af6f4  04 33 9f e5                                      ldr r3, [pc, #0x304]
006af6f8  18 10 9d e5                                      ldr r1, [sp, #0x18]
006af6fc  14 e0 8d e5                                      str lr, [sp, #0x14]
006af700  03 30 8f e0                                      add r3, pc, r3
006af704  1c 30 8d e5                                      str r3, [sp, #0x1c]
006af708  f4 32 9f e5                                      ldr r3, [pc, #0x2f4]
006af70c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006af710  04 10 81 e2                                      add r1, r1, #4
006af714  03 30 8f e0                                      add r3, pc, r3
006af718  20 30 8d e5                                      str r3, [sp, #0x20]
006af71c  e4 32 9f e5                                      ldr r3, [pc, #0x2e4]
006af720  09 20 82 e2                                      add r2, r2, #9
006af724  49 4f 8d e2                                      add r4, sp, #0x124
006af728  03 30 8f e0                                      add r3, pc, r3
006af72c  24 30 8d e5                                      str r3, [sp, #0x24]
006af730  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006af734  20 30 9d e5                                      ldr r3, [sp, #0x20]
006af738  d0 60 8d e2                                      add r6, sp, #0xd0
006af73c  07 c0 8c e2                                      add ip, ip, #7
006af740  07 30 83 e2                                      add r3, r3, #7
006af744  2c 10 8d e5                                      str r1, [sp, #0x2c]
006af748  30 20 8d e5                                      str r2, [sp, #0x30]
006af74c  34 30 8d e5                                      str r3, [sp, #0x34]
006af750  38 c0 8d e5                                      str ip, [sp, #0x38]
006af754  13 00 00 ea                                      b #0x6af7a8
006af758  00 30 9a e5                                      ldr r3, [sl]
006af75c  0a 00 a0 e1                                      mov r0, sl
006af760  0f e0 a0 e1                                      mov lr, pc
006af764  84 f0 93 e5                                      ldr pc, [r3, #0x84]
006af768  14 01 9d e5                                      ldr r0, [sp, #0x114]
006af76c  06 00 50 e1                                      cmp r0, r6
006af770  02 00 00 0a                                      beq #0x6af780
006af774  00 00 50 e3                                      cmp r0, #0
006af778  00 00 00 0a                                      beq #0x6af780
006af77c  33 83 f1 eb                                      bl #0x310450
006af780  38 01 9d e5                                      ldr r0, [sp, #0x138]
006af784  04 00 50 e1                                      cmp r0, r4
006af788  02 00 00 0a                                      beq #0x6af798
006af78c  00 00 50 e3                                      cmp r0, #0
006af790  00 00 00 0a                                      beq #0x6af798
006af794  2d 83 f1 eb                                      bl #0x310450
006af798  10 10 9d e5                                      ldr r1, [sp, #0x10]
006af79c  01 70 87 e2                                      add r7, r7, #1
006af7a0  01 00 57 e1                                      cmp r7, r1
006af7a4  74 00 00 0a                                      beq #0x6af97c
006af7a8  04 00 a0 e1                                      mov r0, r4
006af7ac  34 41 8d e5                                      str r4, [sp, #0x134]
006af7b0  38 41 8d e5                                      str r4, [sp, #0x138]
006af7b4  4c f9 ff eb                                      bl #0x6adcec
006af7b8  34 31 9d e5                                      ldr r3, [sp, #0x134]
006af7bc  00 80 a0 e3                                      mov r8, #0
006af7c0  06 00 a0 e1                                      mov r0, r6
006af7c4  00 80 c3 e5                                      strb r8, [r3]
006af7c8  10 10 a0 e3                                      mov r1, #0x10
006af7cc  10 61 8d e5                                      str r6, [sp, #0x110]
006af7d0  14 61 8d e5                                      str r6, [sp, #0x114]
006af7d4  51 c4 f1 eb                                      bl #0x320920
006af7d8  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006af7dc  10 31 9d e5                                      ldr r3, [sp, #0x110]
006af7e0  04 00 a0 e1                                      mov r0, r4
006af7e4  0e 10 8f e0                                      add r1, pc, lr
006af7e8  00 80 83 e5                                      str r8, [r3]
006af7ec  0b 20 81 e2                                      add r2, r1, #0xb
006af7f0  77 80 af e6                                      sxtb r8, r7
006af7f4  e3 c4 f1 eb                                      bl #0x320b88
006af7f8  04 00 a0 e1                                      mov r0, r4
006af7fc  08 10 a0 e1                                      mov r1, r8
006af800  e8 19 f6 eb                                      bl #0x435fa8
006af804  00 30 95 e5                                      ldr r3, [r5]
006af808  05 00 a0 e1                                      mov r0, r5
006af80c  38 11 9d e5                                      ldr r1, [sp, #0x138]
006af810  0f e0 a0 e1                                      mov lr, pc
006af814  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006af818  00 00 50 e3                                      cmp r0, #0
006af81c  cd ff ff 1a                                      bne #0x6af758
006af820  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006af824  18 10 9d e5                                      ldr r1, [sp, #0x18]
006af828  04 00 a0 e1                                      mov r0, r4
006af82c  d5 c4 f1 eb                                      bl #0x320b88
006af830  88 90 8d e2                                      add sb, sp, #0x88
006af834  04 00 a0 e1                                      mov r0, r4
006af838  08 10 a0 e1                                      mov r1, r8
006af83c  d9 19 f6 eb                                      bl #0x435fa8
006af840  05 10 a0 e1                                      mov r1, r5
006af844  38 21 9d e5                                      ldr r2, [sp, #0x138]
006af848  00 30 95 e5                                      ldr r3, [r5]
006af84c  09 00 a0 e1                                      mov r0, sb
006af850  0f e0 a0 e1                                      mov lr, pc
006af854  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006af858  06 00 a0 e1                                      mov r0, r6
006af85c  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006af860  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
006af864  4d ce f1 eb                                      bl #0x3231a0
006af868  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006af86c  09 00 50 e1                                      cmp r0, sb
006af870  02 00 00 0a                                      beq #0x6af880
006af874  00 00 50 e3                                      cmp r0, #0
006af878  00 00 00 0a                                      beq #0x6af880
006af87c  f3 82 f1 eb                                      bl #0x310450
006af880  30 20 9d e5                                      ldr r2, [sp, #0x30]
006af884  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006af888  04 00 a0 e1                                      mov r0, r4
006af88c  bd c4 f1 eb                                      bl #0x320b88
006af890  08 10 a0 e1                                      mov r1, r8
006af894  04 00 a0 e1                                      mov r0, r4
006af898  c2 19 f6 eb                                      bl #0x435fa8
006af89c  00 30 95 e5                                      ldr r3, [r5]
006af8a0  38 11 9d e5                                      ldr r1, [sp, #0x138]
006af8a4  05 00 a0 e1                                      mov r0, r5
006af8a8  0f e0 a0 e1                                      mov lr, pc
006af8ac  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006af8b0  34 20 9d e5                                      ldr r2, [sp, #0x34]
006af8b4  00 b0 a0 e1                                      mov fp, r0
006af8b8  20 10 9d e5                                      ldr r1, [sp, #0x20]
006af8bc  04 00 a0 e1                                      mov r0, r4
006af8c0  b0 c4 f1 eb                                      bl #0x320b88
006af8c4  08 10 a0 e1                                      mov r1, r8
006af8c8  04 00 a0 e1                                      mov r0, r4
006af8cc  b5 19 f6 eb                                      bl #0x435fa8
006af8d0  00 30 95 e5                                      ldr r3, [r5]
006af8d4  38 11 9d e5                                      ldr r1, [sp, #0x138]
006af8d8  05 00 a0 e1                                      mov r0, r5
006af8dc  0f e0 a0 e1                                      mov lr, pc
006af8e0  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006af8e4  38 20 9d e5                                      ldr r2, [sp, #0x38]
006af8e8  00 30 a0 e1                                      mov r3, r0
006af8ec  24 10 9d e5                                      ldr r1, [sp, #0x24]
006af8f0  04 00 a0 e1                                      mov r0, r4
006af8f4  08 30 8d e5                                      str r3, [sp, #8]
006af8f8  a2 c4 f1 eb                                      bl #0x320b88
006af8fc  08 10 a0 e1                                      mov r1, r8
006af900  04 00 a0 e1                                      mov r0, r4
006af904  a7 19 f6 eb                                      bl #0x435fa8
006af908  38 11 9d e5                                      ldr r1, [sp, #0x138]
006af90c  00 20 95 e5                                      ldr r2, [r5]
006af910  05 00 a0 e1                                      mov r0, r5
006af914  0f e0 a0 e1                                      mov lr, pc
006af918  e4 f0 92 e5                                      ldr pc, [r2, #0xe4]
006af91c  00 c0 9a e5                                      ldr ip, [sl]
006af920  40 80 8d e2                                      add r8, sp, #0x40
006af924  00 90 a0 e1                                      mov sb, r0
006af928  80 c0 9c e5                                      ldr ip, [ip, #0x80]
006af92c  14 11 9d e5                                      ldr r1, [sp, #0x114]
006af930  12 2e 8d e2                                      add r2, sp, #0x120
006af934  08 00 a0 e1                                      mov r0, r8
006af938  0c c0 8d e5                                      str ip, [sp, #0xc]
006af93c  6e d9 f1 eb                                      bl #0x325efc
006af940  00 20 a0 e3                                      mov r2, #0
006af944  04 02 8d e8                                      stm sp, {r2, sb}
006af948  84 10 9d e5                                      ldr r1, [sp, #0x84]
006af94c  0b 20 a0 e1                                      mov r2, fp
006af950  08 30 9d e5                                      ldr r3, [sp, #8]
006af954  0a 00 a0 e1                                      mov r0, sl
006af958  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006af95c  3c ff 2f e1                                      blx ip
006af960  84 00 9d e5                                      ldr r0, [sp, #0x84]
006af964  08 00 50 e1                                      cmp r0, r8
006af968  7e ff ff 0a                                      beq #0x6af768
006af96c  00 00 50 e3                                      cmp r0, #0
006af970  7c ff ff 0a                                      beq #0x6af768
006af974  b5 82 f1 eb                                      bl #0x310450
006af978  7a ff ff ea                                      b #0x6af768
006af97c  00 30 9a e5                                      ldr r3, [sl]
006af980  0a 00 a0 e1                                      mov r0, sl
006af984  0f e0 a0 e1                                      mov lr, pc
006af988  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
006af98c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006af990  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006af994  02 30 9c e7                                      ldr r3, [ip, r2]
006af998  3c 21 9d e5                                      ldr r2, [sp, #0x13c]
006af99c  00 30 93 e5                                      ldr r3, [r3]
006af9a0  03 00 52 e1                                      cmp r2, r3
006af9a4  0e 00 00 1a                                      bne #0x6af9e4
006af9a8  51 df 8d e2                                      add sp, sp, #0x144
006af9ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006af9b0  54 10 9f e5                                      ldr r1, [pc, #0x54]
006af9b4  00 20 96 e5                                      ldr r2, [r6]
006af9b8  00 30 95 e5                                      ldr r3, [r5]
006af9bc  01 10 8f e0                                      add r1, pc, r1
006af9c0  05 00 a0 e1                                      mov r0, r5
006af9c4  b8 40 92 e5                                      ldr r4, [r2, #0xb8]
006af9c8  0f e0 a0 e1                                      mov lr, pc
006af9cc  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006af9d0  0a 20 a0 e1                                      mov r2, sl
006af9d4  00 10 a0 e1                                      mov r1, r0
006af9d8  06 00 a0 e1                                      mov r0, r6
006af9dc  34 ff 2f e1                                      blx r4
006af9e0  31 ff ff ea                                      b #0x6af6ac
006af9e4  49 7a f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006af9e8  54 54 2e 00 ac 40 00 00 d4 48 21 00 48 ee 22 00  .byte 0x54, 0x54, 0x2e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd4, 0x48, 0x21, 0x00, 0x48, 0xee, 0x22, 0x00
006af9f8  3c da 21 00 ac b9 23 00 a0 ba 23 00 04 e7 22 00  .byte 0x3c, 0xda, 0x21, 0x00, 0xac, 0xb9, 0x23, 0x00, 0xa0, 0xba, 0x23, 0x00, 0x04, 0xe7, 0x22, 0x00
006afa08  30 f2 22 00 f4 b7 23 00                          .byte 0x30, 0xf2, 0x22, 0x00, 0xf4, 0xb7, 0x23, 0x00

; FUNCTION 0x006afa10, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZTv0_n20_N6glitch3gui15CGUIContextMenu21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIContextMenu::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006afa10  00 30 90 e5                                      ldr r3, [r0]
006afa14  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006afa18  03 00 80 e0                                      add r0, r0, r3
006afa1c  02 ff ff ea                                      b #0x6af62c

; FUNCTION 0x006afa20, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZTv0_n16_NK6glitch3gui15CGUIContextMenu19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIContextMenu::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006afa20  00 30 90 e5                                      ldr r3, [r0]
006afa24  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006afa28  03 00 80 e0                                      add r0, r0, r3
006afa2c  22 fe ff ea                                      b #0x6af2bc

; FUNCTION 0x006afa30, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZTv0_n24_N6glitch3gui15CGUIContextMenuD0Ev
; demangled: virtual thunk to glitch::gui::CGUIContextMenu::~CGUIContextMenu()
; decoder-mode: arm
006afa30  00 30 90 e5                                      ldr r3, [r0]
006afa34  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006afa38  03 00 80 e0                                      add r0, r0, r3
006afa3c  cc fb ff ea                                      b #0x6ae974

; FUNCTION 0x006afa40, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZTv0_n12_N6glitch3gui15CGUIContextMenuD0Ev
; demangled: virtual thunk to glitch::gui::CGUIContextMenu::~CGUIContextMenu()
; decoder-mode: arm
006afa40  00 30 90 e5                                      ldr r3, [r0]
006afa44  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006afa48  03 00 80 e0                                      add r0, r0, r3
006afa4c  c8 fb ff ea                                      b #0x6ae974

; FUNCTION 0x006afa50, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZTv0_n24_N6glitch3gui15CGUIContextMenuD1Ev
; demangled: virtual thunk to glitch::gui::CGUIContextMenu::~CGUIContextMenu()
; decoder-mode: arm
006afa50  00 30 90 e5                                      ldr r3, [r0]
006afa54  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006afa58  03 00 80 e0                                      add r0, r0, r3
006afa5c  7d fb ff ea                                      b #0x6ae858

; FUNCTION 0x006afa60, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIContextMenu
; alias: _ZTv0_n12_N6glitch3gui15CGUIContextMenuD1Ev
; demangled: virtual thunk to glitch::gui::CGUIContextMenu::~CGUIContextMenu()
; decoder-mode: arm
006afa60  00 30 90 e5                                      ldr r3, [r0]
006afa64  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006afa68  03 00 80 e0                                      add r0, r0, r3
006afa6c  79 fb ff ea                                      b #0x6ae858
