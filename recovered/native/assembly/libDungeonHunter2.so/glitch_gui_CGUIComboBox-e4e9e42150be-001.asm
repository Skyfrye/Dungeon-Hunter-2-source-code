; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006aaa64, declared_size=36, range_size=36, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox16setTextAlignmentENS0_14EGUI_ALIGNMENTES2_
; demangled: glitch::gui::CGUIComboBox::setTextAlignment(glitch::gui::EGUI_ALIGNMENT, glitch::gui::EGUI_ALIGNMENT)
; decoder-mode: arm
006aaa64  10 40 2d e9                                      push {r4, lr}
006aaa68  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006aaa6c  7c 11 80 e5                                      str r1, [r0, #0x17c]
006aaa70  80 21 80 e5                                      str r2, [r0, #0x180]
006aaa74  03 00 a0 e1                                      mov r0, r3
006aaa78  00 30 93 e5                                      ldr r3, [r3]
006aaa7c  0f e0 a0 e1                                      mov lr, pc
006aaa80  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006aaa84  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006aaa88, declared_size=48, range_size=48, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZNK6glitch3gui12CGUIComboBox12getItemCountEv
; demangled: glitch::gui::CGUIComboBox::getItemCount() const
; decoder-mode: arm
006aaa88  68 21 90 e5                                      ldr r2, [r0, #0x168]
006aaa8c  64 31 90 e5                                      ldr r3, [r0, #0x164]
006aaa90  02 30 63 e0                                      rsb r3, r3, r2
006aaa94  c3 31 a0 e1                                      asr r3, r3, #3
006aaa98  83 21 a0 e1                                      lsl r2, r3, #3
006aaa9c  02 20 63 e0                                      rsb r2, r3, r2
006aaaa0  02 23 82 e0                                      add r2, r2, r2, lsl #6
006aaaa4  82 21 83 e0                                      add r2, r3, r2, lsl #3
006aaaa8  82 17 a0 e1                                      lsl r1, r2, #0xf
006aaaac  01 20 62 e0                                      rsb r2, r2, r1
006aaab0  82 01 83 e0                                      add r0, r3, r2, lsl #3
006aaab4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006aaab8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZNK6glitch3gui12CGUIComboBox7getItemEj
; demangled: glitch::gui::CGUIComboBox::getItem(unsigned int) const
; decoder-mode: arm
006aaab8  64 31 90 e5                                      ldr r3, [r0, #0x164]
006aaabc  68 21 90 e5                                      ldr r2, [r0, #0x168]
006aaac0  02 20 63 e0                                      rsb r2, r3, r2
006aaac4  c2 21 a0 e1                                      asr r2, r2, #3
006aaac8  82 01 a0 e1                                      lsl r0, r2, #3
006aaacc  00 00 62 e0                                      rsb r0, r2, r0
006aaad0  00 03 80 e0                                      add r0, r0, r0, lsl #6
006aaad4  80 01 82 e0                                      add r0, r2, r0, lsl #3
006aaad8  80 c7 a0 e1                                      lsl ip, r0, #0xf
006aaadc  0c 00 60 e0                                      rsb r0, r0, ip
006aaae0  80 21 82 e0                                      add r2, r2, r0, lsl #3
006aaae4  02 00 51 e1                                      cmp r1, r2
006aaae8  48 20 a0 33                                      movlo r2, #0x48
006aaaec  92 31 23 30                                      mlalo r3, r2, r1, r3
006aaaf0  00 00 a0 23                                      movhs r0, #0
006aaaf4  44 00 93 35                                      ldrlo r0, [r3, #0x44]
006aaaf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006aaafc, declared_size=24, range_size=24, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZNK6glitch3gui12CGUIComboBox7getTextEv
; demangled: glitch::gui::CGUIComboBox::getText() const
; decoder-mode: arm
006aaafc  10 40 2d e9                                      push {r4, lr}
006aab00  70 11 90 e5                                      ldr r1, [r0, #0x170]
006aab04  00 30 90 e5                                      ldr r3, [r0]
006aab08  0f e0 a0 e1                                      mov lr, pc
006aab0c  80 f0 93 e5                                      ldr pc, [r3, #0x80]
006aab10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006aab14, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZNK6glitch3gui12CGUIComboBox11getSelectedEv
; demangled: glitch::gui::CGUIComboBox::getSelected() const
; decoder-mode: arm
006aab14  70 01 90 e5                                      ldr r0, [r0, #0x170]
006aab18  1e ff 2f e1                                      bx lr

; FUNCTION 0x006aab1c, declared_size=152, range_size=152, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox11setSelectedEi
; demangled: glitch::gui::CGUIComboBox::setSelected(int)
; decoder-mode: arm
006aab1c  01 00 71 e3                                      cmn r1, #1
006aab20  10 40 2d e9                                      push {r4, lr}
006aab24  18 00 00 ba                                      blt #0x6aab8c
006aab28  68 31 90 e5                                      ldr r3, [r0, #0x168]
006aab2c  64 c1 90 e5                                      ldr ip, [r0, #0x164]
006aab30  03 30 6c e0                                      rsb r3, ip, r3
006aab34  c3 31 a0 e1                                      asr r3, r3, #3
006aab38  83 21 a0 e1                                      lsl r2, r3, #3
006aab3c  02 20 63 e0                                      rsb r2, r3, r2
006aab40  02 23 82 e0                                      add r2, r2, r2, lsl #6
006aab44  82 21 83 e0                                      add r2, r3, r2, lsl #3
006aab48  82 47 a0 e1                                      lsl r4, r2, #0xf
006aab4c  04 20 62 e0                                      rsb r2, r2, r4
006aab50  82 31 83 e0                                      add r3, r3, r2, lsl #3
006aab54  03 00 51 e1                                      cmp r1, r3
006aab58  0b 00 00 aa                                      bge #0x6aab8c
006aab5c  01 00 71 e3                                      cmn r1, #1
006aab60  70 11 80 e5                                      str r1, [r0, #0x170]
006aab64  09 00 00 0a                                      beq #0x6aab90
006aab68  48 30 a0 e3                                      mov r3, #0x48
006aab6c  93 c1 21 e0                                      mla r1, r3, r1, ip
006aab70  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006aab74  44 10 91 e5                                      ldr r1, [r1, #0x44]
006aab78  03 00 a0 e1                                      mov r0, r3
006aab7c  00 30 93 e5                                      ldr r3, [r3]
006aab80  0f e0 a0 e1                                      mov lr, pc
006aab84  44 f0 93 e5                                      ldr pc, [r3, #0x44]
006aab88  10 80 bd e8                                      pop {r4, pc}
006aab8c  10 80 bd e8                                      pop {r4, pc}
006aab90  5c 31 90 e5                                      ldr r3, [r0, #0x15c]
006aab94  14 10 9f e5                                      ldr r1, [pc, #0x14]
006aab98  03 00 a0 e1                                      mov r0, r3
006aab9c  01 10 8f e0                                      add r1, pc, r1
006aaba0  00 30 93 e5                                      ldr r3, [r3]
006aaba4  0f e0 a0 e1                                      mov lr, pc
006aaba8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
006aabac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006aabb0  74 40 21 00                                      .byte 0x74, 0x40, 0x21, 0x00

; FUNCTION 0x006aabb4, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox25sendSelectionChangedEventEv
; demangled: glitch::gui::CGUIComboBox::sendSelectionChangedEvent()
; decoder-mode: arm
006aabb4  04 e0 2d e5                                      str lr, [sp, #-4]!
006aabb8  24 30 90 e5                                      ldr r3, [r0, #0x24]
006aabbc  1c d0 4d e2                                      sub sp, sp, #0x1c
006aabc0  00 00 53 e3                                      cmp r3, #0
006aabc4  0a 00 00 0a                                      beq #0x6aabf4
006aabc8  00 20 a0 e3                                      mov r2, #0
006aabcc  13 10 a0 e3                                      mov r1, #0x13
006aabd0  08 00 8d e5                                      str r0, [sp, #8]
006aabd4  10 10 8d e5                                      str r1, [sp, #0x10]
006aabd8  0c 20 8d e5                                      str r2, [sp, #0xc]
006aabdc  00 20 8d e5                                      str r2, [sp]
006aabe0  03 00 a0 e1                                      mov r0, r3
006aabe4  0d 10 a0 e1                                      mov r1, sp
006aabe8  00 30 93 e5                                      ldr r3, [r3]
006aabec  0f e0 a0 e1                                      mov lr, pc
006aabf0  08 f0 93 e5                                      ldr pc, [r3, #8]
006aabf4  1c d0 8d e2                                      add sp, sp, #0x1c
006aabf8  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006aac1c, declared_size=584, range_size=584, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox13openCloseMenuEv
; demangled: glitch::gui::CGUIComboBox::openCloseMenu()
; decoder-mode: arm
006aac1c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006aac20  60 31 90 e5                                      ldr r3, [r0, #0x160]
006aac24  2c d0 4d e2                                      sub sp, sp, #0x2c
006aac28  00 40 a0 e1                                      mov r4, r0
006aac2c  00 00 53 e3                                      cmp r3, #0
006aac30  0e 00 00 0a                                      beq #0x6aac70
006aac34  50 31 90 e5                                      ldr r3, [r0, #0x150]
006aac38  00 10 a0 e1                                      mov r1, r0
006aac3c  03 00 a0 e1                                      mov r0, r3
006aac40  00 30 93 e5                                      ldr r3, [r3]
006aac44  0f e0 a0 e1                                      mov lr, pc
006aac48  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aac4c  60 31 94 e5                                      ldr r3, [r4, #0x160]
006aac50  03 00 a0 e1                                      mov r0, r3
006aac54  00 30 93 e5                                      ldr r3, [r3]
006aac58  0f e0 a0 e1                                      mov lr, pc
006aac5c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006aac60  00 30 a0 e3                                      mov r3, #0
006aac64  60 31 84 e5                                      str r3, [r4, #0x160]
006aac68  2c d0 8d e2                                      add sp, sp, #0x2c
006aac6c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006aac70  24 30 90 e5                                      ldr r3, [r0, #0x24]
006aac74  00 00 53 e3                                      cmp r3, #0
006aac78  04 00 00 0a                                      beq #0x6aac90
006aac7c  03 00 a0 e1                                      mov r0, r3
006aac80  04 10 a0 e1                                      mov r1, r4
006aac84  00 30 93 e5                                      ldr r3, [r3]
006aac88  0f e0 a0 e1                                      mov lr, pc
006aac8c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
006aac90  50 31 94 e5                                      ldr r3, [r4, #0x150]
006aac94  03 00 a0 e1                                      mov r0, r3
006aac98  00 30 93 e5                                      ldr r3, [r3]
006aac9c  0f e0 a0 e1                                      mov lr, pc
006aaca0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aaca4  68 61 94 e5                                      ldr r6, [r4, #0x168]
006aaca8  64 21 94 e5                                      ldr r2, [r4, #0x164]
006aacac  00 30 a0 e1                                      mov r3, r0
006aacb0  06 20 62 e0                                      rsb r2, r2, r6
006aacb4  c2 21 a0 e1                                      asr r2, r2, #3
006aacb8  82 11 a0 e1                                      lsl r1, r2, #3
006aacbc  01 10 62 e0                                      rsb r1, r2, r1
006aacc0  01 13 81 e0                                      add r1, r1, r1, lsl #6
006aacc4  81 11 82 e0                                      add r1, r2, r1, lsl #3
006aacc8  81 67 a0 e1                                      lsl r6, r1, #0xf
006aaccc  06 60 61 e0                                      rsb r6, r1, r6
006aacd0  86 61 82 e0                                      add r6, r2, r6, lsl #3
006aacd4  05 00 56 e3                                      cmp r6, #5
006aacd8  05 60 a0 c3                                      movgt r6, #5
006aacdc  01 00 00 ca                                      bgt #0x6aace8
006aace0  00 00 56 e3                                      cmp r6, #0
006aace4  01 60 a0 03                                      moveq r6, #1
006aace8  03 00 a0 e1                                      mov r0, r3
006aacec  00 10 a0 e3                                      mov r1, #0
006aacf0  00 30 93 e5                                      ldr r3, [r3]
006aacf4  0f e0 a0 e1                                      mov lr, pc
006aacf8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006aacfc  00 00 50 e3                                      cmp r0, #0
006aad00  09 00 00 0a                                      beq #0x6aad2c
006aad04  54 21 9f e5                                      ldr r2, [pc, #0x154]
006aad08  00 30 90 e5                                      ldr r3, [r0]
006aad0c  00 10 a0 e1                                      mov r1, r0
006aad10  02 20 8f e0                                      add r2, pc, r2
006aad14  20 00 8d e2                                      add r0, sp, #0x20
006aad18  0f e0 a0 e1                                      mov lr, pc
006aad1c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006aad20  24 30 9d e5                                      ldr r3, [sp, #0x24]
006aad24  04 30 83 e2                                      add r3, r3, #4
006aad28  93 06 06 e0                                      mul r6, r3, r6
006aad2c  44 00 94 e5                                      ldr r0, [r4, #0x44]
006aad30  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006aad34  40 10 94 e5                                      ldr r1, [r4, #0x40]
006aad38  38 20 94 e5                                      ldr r2, [r4, #0x38]
006aad3c  00 30 63 e0                                      rsb r3, r3, r0
006aad40  00 50 a0 e3                                      mov r5, #0
006aad44  01 20 62 e0                                      rsb r2, r2, r1
006aad48  03 60 86 e0                                      add r6, r6, r3
006aad4c  05 10 a0 e1                                      mov r1, r5
006aad50  7a 0f a0 e3                                      mov r0, #0x1e8
006aad54  14 30 8d e5                                      str r3, [sp, #0x14]
006aad58  18 20 8d e5                                      str r2, [sp, #0x18]
006aad5c  1c 60 8d e5                                      str r6, [sp, #0x1c]
006aad60  10 50 8d e5                                      str r5, [sp, #0x10]
006aad64  10 25 fa eb                                      bl #0x5341ac
006aad68  01 70 a0 e3                                      mov r7, #1
006aad6c  50 11 94 e5                                      ldr r1, [r4, #0x150]
006aad70  00 60 a0 e1                                      mov r6, r0
006aad74  10 c0 8d e2                                      add ip, sp, #0x10
006aad78  04 20 a0 e1                                      mov r2, r4
006aad7c  00 30 e0 e3                                      mvn r3, #0
006aad80  00 c0 8d e5                                      str ip, [sp]
006aad84  a0 00 8d e9                                      stmib sp, {r5, r7}
006aad88  0c 70 8d e5                                      str r7, [sp, #0xc]
006aad8c  b4 5f fa eb                                      bl #0x542c64
006aad90  60 61 84 e5                                      str r6, [r4, #0x160]
006aad94  06 00 a0 e1                                      mov r0, r6
006aad98  07 10 a0 e1                                      mov r1, r7
006aad9c  00 30 96 e5                                      ldr r3, [r6]
006aada0  0f e0 a0 e1                                      mov lr, pc
006aada4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aada8  60 31 94 e5                                      ldr r3, [r4, #0x160]
006aadac  00 20 93 e5                                      ldr r2, [r3]
006aadb0  10 00 12 e5                                      ldr r0, [r2, #-0x10]
006aadb4  00 00 83 e0                                      add r0, r3, r0
006aadb8  f1 c9 f1 eb                                      bl #0x31d584
006aadbc  64 21 94 e5                                      ldr r2, [r4, #0x164]
006aadc0  68 31 94 e5                                      ldr r3, [r4, #0x168]
006aadc4  03 30 62 e0                                      rsb r3, r2, r3
006aadc8  47 00 53 e3                                      cmp r3, #0x47
006aadcc  16 00 00 da                                      ble #0x6aae2c
006aadd0  05 60 a0 e1                                      mov r6, r5
006aadd4  60 31 94 e5                                      ldr r3, [r4, #0x160]
006aadd8  05 20 82 e0                                      add r2, r2, r5
006aaddc  44 10 92 e5                                      ldr r1, [r2, #0x44]
006aade0  03 00 a0 e1                                      mov r0, r3
006aade4  00 30 93 e5                                      ldr r3, [r3]
006aade8  0f e0 a0 e1                                      mov lr, pc
006aadec  84 f0 93 e5                                      ldr pc, [r3, #0x84]
006aadf0  64 21 94 e5                                      ldr r2, [r4, #0x164]
006aadf4  68 31 94 e5                                      ldr r3, [r4, #0x168]
006aadf8  01 60 86 e2                                      add r6, r6, #1
006aadfc  48 50 85 e2                                      add r5, r5, #0x48
006aae00  03 30 62 e0                                      rsb r3, r2, r3
006aae04  c3 31 a0 e1                                      asr r3, r3, #3
006aae08  83 11 a0 e1                                      lsl r1, r3, #3
006aae0c  01 10 63 e0                                      rsb r1, r3, r1
006aae10  01 13 81 e0                                      add r1, r1, r1, lsl #6
006aae14  81 11 83 e0                                      add r1, r3, r1, lsl #3
006aae18  81 07 a0 e1                                      lsl r0, r1, #0xf
006aae1c  00 10 61 e0                                      rsb r1, r1, r0
006aae20  81 31 83 e0                                      add r3, r3, r1, lsl #3
006aae24  03 00 56 e1                                      cmp r6, r3
006aae28  e9 ff ff ba                                      blt #0x6aadd4
006aae2c  60 31 94 e5                                      ldr r3, [r4, #0x160]
006aae30  70 11 94 e5                                      ldr r1, [r4, #0x170]
006aae34  03 00 a0 e1                                      mov r0, r3
006aae38  00 30 93 e5                                      ldr r3, [r3]
006aae3c  0f e0 a0 e1                                      mov lr, pc
006aae40  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006aae44  50 31 94 e5                                      ldr r3, [r4, #0x150]
006aae48  60 11 94 e5                                      ldr r1, [r4, #0x160]
006aae4c  03 00 a0 e1                                      mov r0, r3
006aae50  00 30 93 e5                                      ldr r3, [r3]
006aae54  0f e0 a0 e1                                      mov lr, pc
006aae58  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006aae5c  81 ff ff ea                                      b #0x6aac68
; mapping-symbol data/literal pool
006aae60  50 37 23 00                                      .byte 0x50, 0x37, 0x23, 0x00

; FUNCTION 0x006ab38c, declared_size=948, range_size=948, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIComboBox::CGUIComboBox(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006ab38c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006ab390  40 d0 4d e2                                      sub sp, sp, #0x40
006ab394  64 60 9d e5                                      ldr r6, [sp, #0x64]
006ab398  01 50 a0 e1                                      mov r5, r1
006ab39c  04 10 81 e2                                      add r1, r1, #4
006ab3a0  0c c0 96 e5                                      ldr ip, [r6, #0xc]
006ab3a4  00 70 96 e5                                      ldr r7, [r6]
006ab3a8  10 40 96 e9                                      ldmib r6, {r4, lr}
006ab3ac  34 c0 8d e5                                      str ip, [sp, #0x34]
006ab3b0  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006ab3b4  28 70 8d e5                                      str r7, [sp, #0x28]
006ab3b8  2c 40 8d e5                                      str r4, [sp, #0x2c]
006ab3bc  00 c0 8d e5                                      str ip, [sp]
006ab3c0  28 c0 8d e2                                      add ip, sp, #0x28
006ab3c4  00 40 a0 e1                                      mov r4, r0
006ab3c8  30 e0 8d e5                                      str lr, [sp, #0x30]
006ab3cc  04 c0 8d e5                                      str ip, [sp, #4]
006ab3d0  a3 fe ff eb                                      bl #0x6aae64
006ab3d4  00 30 95 e5                                      ldr r3, [r5]
006ab3d8  00 20 a0 e3                                      mov r2, #0
006ab3dc  02 70 a0 e3                                      mov r7, #2
006ab3e0  00 30 84 e5                                      str r3, [r4]
006ab3e4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
006ab3e8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ab3ec  03 10 84 e7                                      str r1, [r4, r3]
006ab3f0  00 30 94 e5                                      ldr r3, [r4]
006ab3f4  20 10 95 e5                                      ldr r1, [r5, #0x20]
006ab3f8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006ab3fc  03 10 84 e7                                      str r1, [r4, r3]
006ab400  50 31 94 e5                                      ldr r3, [r4, #0x150]
006ab404  00 10 e0 e3                                      mvn r1, #0
006ab408  70 11 84 e5                                      str r1, [r4, #0x170]
006ab40c  7c 21 84 e5                                      str r2, [r4, #0x17c]
006ab410  58 21 84 e5                                      str r2, [r4, #0x158]
006ab414  5c 21 84 e5                                      str r2, [r4, #0x15c]
006ab418  60 21 84 e5                                      str r2, [r4, #0x160]
006ab41c  64 21 84 e5                                      str r2, [r4, #0x164]
006ab420  68 21 84 e5                                      str r2, [r4, #0x168]
006ab424  6c 21 84 e5                                      str r2, [r4, #0x16c]
006ab428  74 21 c4 e5                                      strb r2, [r4, #0x174]
006ab42c  78 21 84 e5                                      str r2, [r4, #0x178]
006ab430  80 71 84 e5                                      str r7, [r4, #0x180]
006ab434  03 00 a0 e1                                      mov r0, r3
006ab438  00 30 93 e5                                      ldr r3, [r3]
006ab43c  0f e0 a0 e1                                      mov lr, pc
006ab440  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ab444  00 50 50 e2                                      subs r5, r0, #0
006ab448  0f 00 a0 03                                      moveq r0, #0xf
006ab44c  03 00 00 0a                                      beq #0x6ab460
006ab450  07 10 a0 e1                                      mov r1, r7
006ab454  00 30 95 e5                                      ldr r3, [r5]
006ab458  0f e0 a0 e1                                      mov lr, pc
006ab45c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006ab460  08 10 96 e5                                      ldr r1, [r6, #8]
006ab464  00 20 96 e5                                      ldr r2, [r6]
006ab468  0c c0 96 e5                                      ldr ip, [r6, #0xc]
006ab46c  04 e0 96 e5                                      ldr lr, [r6, #4]
006ab470  02 10 41 e2                                      sub r1, r1, #2
006ab474  bc 32 9f e5                                      ldr r3, [pc, #0x2bc]
006ab478  01 10 62 e0                                      rsb r1, r2, r1
006ab47c  02 c0 4c e2                                      sub ip, ip, #2
006ab480  50 21 94 e5                                      ldr r2, [r4, #0x150]
006ab484  0c c0 6e e0                                      rsb ip, lr, ip
006ab488  01 00 60 e0                                      rsb r0, r0, r1
006ab48c  20 10 8d e5                                      str r1, [sp, #0x20]
006ab490  02 10 a0 e3                                      mov r1, #2
006ab494  18 00 8d e5                                      str r0, [sp, #0x18]
006ab498  1c 10 8d e5                                      str r1, [sp, #0x1c]
006ab49c  24 c0 8d e5                                      str ip, [sp, #0x24]
006ab4a0  03 30 8f e0                                      add r3, pc, r3
006ab4a4  00 60 a0 e3                                      mov r6, #0
006ab4a8  18 80 8d e2                                      add r8, sp, #0x18
006ab4ac  00 c0 92 e5                                      ldr ip, [r2]
006ab4b0  02 00 a0 e1                                      mov r0, r2
006ab4b4  48 00 8d e8                                      stm sp, {r3, r6}
006ab4b8  08 10 a0 e1                                      mov r1, r8
006ab4bc  04 20 a0 e1                                      mov r2, r4
006ab4c0  00 30 e0 e3                                      mvn r3, #0
006ab4c4  0f e0 a0 e1                                      mov lr, pc
006ab4c8  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006ab4cc  06 00 55 e1                                      cmp r5, r6
006ab4d0  58 01 84 e5                                      str r0, [r4, #0x158]
006ab4d4  49 00 00 0a                                      beq #0x6ab600
006ab4d8  00 30 95 e5                                      ldr r3, [r5]
006ab4dc  05 00 a0 e1                                      mov r0, r5
006ab4e0  0f e0 a0 e1                                      mov lr, pc
006ab4e4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006ab4e8  06 00 50 e1                                      cmp r0, r6
006ab4ec  42 00 00 0a                                      beq #0x6ab5fc
006ab4f0  58 a1 94 e5                                      ldr sl, [r4, #0x158]
006ab4f4  00 30 95 e5                                      ldr r3, [r5]
006ab4f8  05 00 a0 e1                                      mov r0, r5
006ab4fc  00 20 9a e5                                      ldr r2, [sl]
006ab500  90 70 92 e5                                      ldr r7, [r2, #0x90]
006ab504  0f e0 a0 e1                                      mov lr, pc
006ab508  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006ab50c  00 10 a0 e1                                      mov r1, r0
006ab510  0a 00 a0 e1                                      mov r0, sl
006ab514  37 ff 2f e1                                      blx r7
006ab518  58 a1 94 e5                                      ldr sl, [r4, #0x158]
006ab51c  06 10 a0 e3                                      mov r1, #6
006ab520  00 30 95 e5                                      ldr r3, [r5]
006ab524  00 20 9a e5                                      ldr r2, [sl]
006ab528  05 00 a0 e1                                      mov r0, r5
006ab52c  94 70 92 e5                                      ldr r7, [r2, #0x94]
006ab530  0f e0 a0 e1                                      mov lr, pc
006ab534  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ab538  12 10 a0 e3                                      mov r1, #0x12
006ab53c  00 90 a0 e1                                      mov sb, r0
006ab540  00 30 95 e5                                      ldr r3, [r5]
006ab544  05 00 a0 e1                                      mov r0, r5
006ab548  0f e0 a0 e1                                      mov lr, pc
006ab54c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ab550  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006ab554  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006ab558  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006ab55c  12 20 cd e5                                      strb r2, [sp, #0x12]
006ab560  13 30 cd e5                                      strb r3, [sp, #0x13]
006ab564  10 00 cd e5                                      strb r0, [sp, #0x10]
006ab568  11 10 cd e5                                      strb r1, [sp, #0x11]
006ab56c  10 10 9d e5                                      ldr r1, [sp, #0x10]
006ab570  09 20 a0 e1                                      mov r2, sb
006ab574  0a 00 a0 e1                                      mov r0, sl
006ab578  01 30 a0 e1                                      mov r3, r1
006ab57c  3c 10 8d e5                                      str r1, [sp, #0x3c]
006ab580  00 60 8d e5                                      str r6, [sp]
006ab584  06 10 a0 e1                                      mov r1, r6
006ab588  37 ff 2f e1                                      blx r7
006ab58c  58 a1 94 e5                                      ldr sl, [r4, #0x158]
006ab590  06 10 a0 e3                                      mov r1, #6
006ab594  00 30 95 e5                                      ldr r3, [r5]
006ab598  00 20 9a e5                                      ldr r2, [sl]
006ab59c  05 00 a0 e1                                      mov r0, r5
006ab5a0  94 70 92 e5                                      ldr r7, [r2, #0x94]
006ab5a4  0f e0 a0 e1                                      mov lr, pc
006ab5a8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ab5ac  12 10 a0 e3                                      mov r1, #0x12
006ab5b0  00 90 a0 e1                                      mov sb, r0
006ab5b4  00 30 95 e5                                      ldr r3, [r5]
006ab5b8  05 00 a0 e1                                      mov r0, r5
006ab5bc  0f e0 a0 e1                                      mov lr, pc
006ab5c0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ab5c4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006ab5c8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006ab5cc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006ab5d0  11 10 cd e5                                      strb r1, [sp, #0x11]
006ab5d4  12 20 cd e5                                      strb r2, [sp, #0x12]
006ab5d8  10 00 cd e5                                      strb r0, [sp, #0x10]
006ab5dc  13 30 cd e5                                      strb r3, [sp, #0x13]
006ab5e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ab5e4  00 60 8d e5                                      str r6, [sp]
006ab5e8  0a 00 a0 e1                                      mov r0, sl
006ab5ec  38 30 8d e5                                      str r3, [sp, #0x38]
006ab5f0  09 20 a0 e1                                      mov r2, sb
006ab5f4  01 10 a0 e3                                      mov r1, #1
006ab5f8  37 ff 2f e1                                      blx r7
006ab5fc  58 01 94 e5                                      ldr r0, [r4, #0x158]
006ab600  01 50 a0 e3                                      mov r5, #1
006ab604  05 20 a0 e1                                      mov r2, r5
006ab608  05 10 a0 e1                                      mov r1, r5
006ab60c  00 30 a0 e3                                      mov r3, #0
006ab610  00 50 8d e5                                      str r5, [sp]
006ab614  89 24 fa eb                                      bl #0x534840
006ab618  58 31 94 e5                                      ldr r3, [r4, #0x158]
006ab61c  05 10 a0 e1                                      mov r1, r5
006ab620  00 60 a0 e3                                      mov r6, #0
006ab624  03 00 a0 e1                                      mov r0, r3
006ab628  00 30 93 e5                                      ldr r3, [r3]
006ab62c  0f e0 a0 e1                                      mov lr, pc
006ab630  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ab634  58 31 94 e5                                      ldr r3, [r4, #0x158]
006ab638  02 70 a0 e3                                      mov r7, #2
006ab63c  34 61 c3 e5                                      strb r6, [r3, #0x134]
006ab640  58 31 94 e5                                      ldr r3, [r4, #0x158]
006ab644  18 70 8d e5                                      str r7, [sp, #0x18]
006ab648  1c 70 8d e5                                      str r7, [sp, #0x1c]
006ab64c  30 10 94 e5                                      ldr r1, [r4, #0x30]
006ab650  28 e0 94 e5                                      ldr lr, [r4, #0x28]
006ab654  40 c0 93 e5                                      ldr ip, [r3, #0x40]
006ab658  38 30 93 e5                                      ldr r3, [r3, #0x38]
006ab65c  34 20 94 e5                                      ldr r2, [r4, #0x34]
006ab660  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
006ab664  02 10 41 e2                                      sub r1, r1, #2
006ab668  01 10 6e e0                                      rsb r1, lr, r1
006ab66c  0c c0 63 e0                                      rsb ip, r3, ip
006ab670  01 10 6c e0                                      rsb r1, ip, r1
006ab674  50 31 94 e5                                      ldr r3, [r4, #0x150]
006ab678  02 20 42 e2                                      sub r2, r2, #2
006ab67c  20 10 8d e5                                      str r1, [sp, #0x20]
006ab680  02 20 60 e0                                      rsb r2, r0, r2
006ab684  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
006ab688  24 20 8d e5                                      str r2, [sp, #0x24]
006ab68c  00 c0 93 e5                                      ldr ip, [r3]
006ab690  03 00 a0 e1                                      mov r0, r3
006ab694  00 30 e0 e3                                      mvn r3, #0
006ab698  08 20 a0 e1                                      mov r2, r8
006ab69c  08 30 8d e5                                      str r3, [sp, #8]
006ab6a0  01 10 8f e0                                      add r1, pc, r1
006ab6a4  06 30 a0 e1                                      mov r3, r6
006ab6a8  00 60 8d e5                                      str r6, [sp]
006ab6ac  04 40 8d e5                                      str r4, [sp, #4]
006ab6b0  0c 60 8d e5                                      str r6, [sp, #0xc]
006ab6b4  0f e0 a0 e1                                      mov lr, pc
006ab6b8  a8 f0 9c e5                                      ldr pc, [ip, #0xa8]
006ab6bc  5c 01 84 e5                                      str r0, [r4, #0x15c]
006ab6c0  00 30 90 e5                                      ldr r3, [r0]
006ab6c4  05 10 a0 e1                                      mov r1, r5
006ab6c8  0f e0 a0 e1                                      mov lr, pc
006ab6cc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ab6d0  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
006ab6d4  06 30 a0 e1                                      mov r3, r6
006ab6d8  06 10 a0 e1                                      mov r1, r6
006ab6dc  05 20 a0 e1                                      mov r2, r5
006ab6e0  00 50 8d e5                                      str r5, [sp]
006ab6e4  55 24 fa eb                                      bl #0x534840
006ab6e8  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ab6ec  07 20 a0 e1                                      mov r2, r7
006ab6f0  06 10 a0 e1                                      mov r1, r6
006ab6f4  03 00 a0 e1                                      mov r0, r3
006ab6f8  00 30 93 e5                                      ldr r3, [r3]
006ab6fc  0f e0 a0 e1                                      mov lr, pc
006ab700  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006ab704  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ab708  05 10 a0 e1                                      mov r1, r5
006ab70c  03 00 a0 e1                                      mov r0, r3
006ab710  00 30 93 e5                                      ldr r3, [r3]
006ab714  0f e0 a0 e1                                      mov lr, pc
006ab718  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
006ab71c  04 00 a0 e1                                      mov r0, r4
006ab720  34 51 c4 e5                                      strb r5, [r4, #0x134]
006ab724  9b 50 c4 e5                                      strb r5, [r4, #0x9b]
006ab728  ec fe ff eb                                      bl #0x6ab2e0
006ab72c  04 00 a0 e1                                      mov r0, r4
006ab730  40 d0 8d e2                                      add sp, sp, #0x40
006ab734  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006ab738  70 37 21 00 70 35 21 00                          .byte 0x70, 0x37, 0x21, 0x00, 0x70, 0x35, 0x21, 0x00

; FUNCTION 0x006ab740, declared_size=1032, range_size=1032, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBoxC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIComboBox::CGUIComboBox(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
006ab740  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ab744  e4 53 9f e5                                      ldr r5, [pc, #0x3e4]
006ab748  e4 c3 9f e5                                      ldr ip, [pc, #0x3e4]
006ab74c  e4 e3 9f e5                                      ldr lr, [pc, #0x3e4]
006ab750  05 50 8f e0                                      add r5, pc, r5
006ab754  0c c0 95 e7                                      ldr ip, [r5, ip]
006ab758  0e e0 95 e7                                      ldr lr, [r5, lr]
006ab75c  01 70 a0 e3                                      mov r7, #1
006ab760  24 60 9c e5                                      ldr r6, [ip, #0x24]
006ab764  08 e0 8e e2                                      add lr, lr, #8
006ab768  8c 71 80 e5                                      str r7, [r0, #0x18c]
006ab76c  88 e1 80 e5                                      str lr, [r0, #0x188]
006ab770  84 61 80 e5                                      str r6, [r0, #0x184]
006ab774  44 d0 4d e2                                      sub sp, sp, #0x44
006ab778  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
006ab77c  28 80 9c e5                                      ldr r8, [ip, #0x28]
006ab780  68 60 9d e5                                      ldr r6, [sp, #0x68]
006ab784  61 7f 80 e2                                      add r7, r0, #0x184
006ab788  0e 80 87 e7                                      str r8, [r7, lr]
006ab78c  00 05 96 e8                                      ldm r6, {r8, sl}
006ab790  08 90 96 e5                                      ldr sb, [r6, #8]
006ab794  0c b0 96 e5                                      ldr fp, [r6, #0xc]
006ab798  02 e0 a0 e1                                      mov lr, r2
006ab79c  01 70 a0 e1                                      mov r7, r1
006ab7a0  07 20 a0 e1                                      mov r2, r7
006ab7a4  04 10 8c e2                                      add r1, ip, #4
006ab7a8  00 30 8d e5                                      str r3, [sp]
006ab7ac  28 c0 8d e2                                      add ip, sp, #0x28
006ab7b0  0e 30 a0 e1                                      mov r3, lr
006ab7b4  00 40 a0 e1                                      mov r4, r0
006ab7b8  04 c0 8d e5                                      str ip, [sp, #4]
006ab7bc  28 80 8d e5                                      str r8, [sp, #0x28]
006ab7c0  2c a0 8d e5                                      str sl, [sp, #0x2c]
006ab7c4  30 90 8d e5                                      str sb, [sp, #0x30]
006ab7c8  34 b0 8d e5                                      str fp, [sp, #0x34]
006ab7cc  a4 fd ff eb                                      bl #0x6aae64
006ab7d0  64 13 9f e5                                      ldr r1, [pc, #0x364]
006ab7d4  50 31 94 e5                                      ldr r3, [r4, #0x150]
006ab7d8  00 20 a0 e3                                      mov r2, #0
006ab7dc  01 10 95 e7                                      ldr r1, [r5, r1]
006ab7e0  02 70 a0 e3                                      mov r7, #2
006ab7e4  7c 21 84 e5                                      str r2, [r4, #0x17c]
006ab7e8  e4 00 81 e2                                      add r0, r1, #0xe4
006ab7ec  10 c0 81 e2                                      add ip, r1, #0x10
006ab7f0  c4 10 81 e2                                      add r1, r1, #0xc4
006ab7f4  84 11 84 e5                                      str r1, [r4, #0x184]
006ab7f8  00 10 e0 e3                                      mvn r1, #0
006ab7fc  88 01 84 e5                                      str r0, [r4, #0x188]
006ab800  00 c0 84 e5                                      str ip, [r4]
006ab804  70 11 84 e5                                      str r1, [r4, #0x170]
006ab808  58 21 84 e5                                      str r2, [r4, #0x158]
006ab80c  5c 21 84 e5                                      str r2, [r4, #0x15c]
006ab810  60 21 84 e5                                      str r2, [r4, #0x160]
006ab814  64 21 84 e5                                      str r2, [r4, #0x164]
006ab818  68 21 84 e5                                      str r2, [r4, #0x168]
006ab81c  6c 21 84 e5                                      str r2, [r4, #0x16c]
006ab820  74 21 c4 e5                                      strb r2, [r4, #0x174]
006ab824  78 21 84 e5                                      str r2, [r4, #0x178]
006ab828  80 71 84 e5                                      str r7, [r4, #0x180]
006ab82c  03 00 a0 e1                                      mov r0, r3
006ab830  00 30 93 e5                                      ldr r3, [r3]
006ab834  0f e0 a0 e1                                      mov lr, pc
006ab838  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ab83c  00 50 50 e2                                      subs r5, r0, #0
006ab840  0f 00 a0 03                                      moveq r0, #0xf
006ab844  03 00 00 0a                                      beq #0x6ab858
006ab848  07 10 a0 e1                                      mov r1, r7
006ab84c  00 30 95 e5                                      ldr r3, [r5]
006ab850  0f e0 a0 e1                                      mov lr, pc
006ab854  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006ab858  08 10 96 e5                                      ldr r1, [r6, #8]
006ab85c  00 20 96 e5                                      ldr r2, [r6]
006ab860  0c c0 96 e5                                      ldr ip, [r6, #0xc]
006ab864  04 e0 96 e5                                      ldr lr, [r6, #4]
006ab868  02 10 41 e2                                      sub r1, r1, #2
006ab86c  cc 32 9f e5                                      ldr r3, [pc, #0x2cc]
006ab870  01 10 62 e0                                      rsb r1, r2, r1
006ab874  02 c0 4c e2                                      sub ip, ip, #2
006ab878  50 21 94 e5                                      ldr r2, [r4, #0x150]
006ab87c  0c c0 6e e0                                      rsb ip, lr, ip
006ab880  01 00 60 e0                                      rsb r0, r0, r1
006ab884  20 10 8d e5                                      str r1, [sp, #0x20]
006ab888  02 10 a0 e3                                      mov r1, #2
006ab88c  18 00 8d e5                                      str r0, [sp, #0x18]
006ab890  1c 10 8d e5                                      str r1, [sp, #0x1c]
006ab894  24 c0 8d e5                                      str ip, [sp, #0x24]
006ab898  03 30 8f e0                                      add r3, pc, r3
006ab89c  00 60 a0 e3                                      mov r6, #0
006ab8a0  18 80 8d e2                                      add r8, sp, #0x18
006ab8a4  00 c0 92 e5                                      ldr ip, [r2]
006ab8a8  02 00 a0 e1                                      mov r0, r2
006ab8ac  48 00 8d e8                                      stm sp, {r3, r6}
006ab8b0  08 10 a0 e1                                      mov r1, r8
006ab8b4  04 20 a0 e1                                      mov r2, r4
006ab8b8  00 30 e0 e3                                      mvn r3, #0
006ab8bc  0f e0 a0 e1                                      mov lr, pc
006ab8c0  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006ab8c4  06 00 55 e1                                      cmp r5, r6
006ab8c8  58 01 84 e5                                      str r0, [r4, #0x158]
006ab8cc  49 00 00 0a                                      beq #0x6ab9f8
006ab8d0  00 30 95 e5                                      ldr r3, [r5]
006ab8d4  05 00 a0 e1                                      mov r0, r5
006ab8d8  0f e0 a0 e1                                      mov lr, pc
006ab8dc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006ab8e0  06 00 50 e1                                      cmp r0, r6
006ab8e4  42 00 00 0a                                      beq #0x6ab9f4
006ab8e8  58 a1 94 e5                                      ldr sl, [r4, #0x158]
006ab8ec  00 30 95 e5                                      ldr r3, [r5]
006ab8f0  05 00 a0 e1                                      mov r0, r5
006ab8f4  00 20 9a e5                                      ldr r2, [sl]
006ab8f8  90 70 92 e5                                      ldr r7, [r2, #0x90]
006ab8fc  0f e0 a0 e1                                      mov lr, pc
006ab900  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006ab904  00 10 a0 e1                                      mov r1, r0
006ab908  0a 00 a0 e1                                      mov r0, sl
006ab90c  37 ff 2f e1                                      blx r7
006ab910  58 a1 94 e5                                      ldr sl, [r4, #0x158]
006ab914  06 10 a0 e3                                      mov r1, #6
006ab918  00 30 95 e5                                      ldr r3, [r5]
006ab91c  00 20 9a e5                                      ldr r2, [sl]
006ab920  05 00 a0 e1                                      mov r0, r5
006ab924  94 70 92 e5                                      ldr r7, [r2, #0x94]
006ab928  0f e0 a0 e1                                      mov lr, pc
006ab92c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ab930  12 10 a0 e3                                      mov r1, #0x12
006ab934  00 90 a0 e1                                      mov sb, r0
006ab938  00 30 95 e5                                      ldr r3, [r5]
006ab93c  05 00 a0 e1                                      mov r0, r5
006ab940  0f e0 a0 e1                                      mov lr, pc
006ab944  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ab948  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006ab94c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006ab950  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006ab954  12 20 cd e5                                      strb r2, [sp, #0x12]
006ab958  13 30 cd e5                                      strb r3, [sp, #0x13]
006ab95c  10 00 cd e5                                      strb r0, [sp, #0x10]
006ab960  11 10 cd e5                                      strb r1, [sp, #0x11]
006ab964  10 10 9d e5                                      ldr r1, [sp, #0x10]
006ab968  09 20 a0 e1                                      mov r2, sb
006ab96c  0a 00 a0 e1                                      mov r0, sl
006ab970  01 30 a0 e1                                      mov r3, r1
006ab974  3c 10 8d e5                                      str r1, [sp, #0x3c]
006ab978  00 60 8d e5                                      str r6, [sp]
006ab97c  06 10 a0 e1                                      mov r1, r6
006ab980  37 ff 2f e1                                      blx r7
006ab984  58 a1 94 e5                                      ldr sl, [r4, #0x158]
006ab988  06 10 a0 e3                                      mov r1, #6
006ab98c  00 30 95 e5                                      ldr r3, [r5]
006ab990  00 20 9a e5                                      ldr r2, [sl]
006ab994  05 00 a0 e1                                      mov r0, r5
006ab998  94 70 92 e5                                      ldr r7, [r2, #0x94]
006ab99c  0f e0 a0 e1                                      mov lr, pc
006ab9a0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ab9a4  12 10 a0 e3                                      mov r1, #0x12
006ab9a8  00 90 a0 e1                                      mov sb, r0
006ab9ac  00 30 95 e5                                      ldr r3, [r5]
006ab9b0  05 00 a0 e1                                      mov r0, r5
006ab9b4  0f e0 a0 e1                                      mov lr, pc
006ab9b8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ab9bc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006ab9c0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006ab9c4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006ab9c8  11 10 cd e5                                      strb r1, [sp, #0x11]
006ab9cc  12 20 cd e5                                      strb r2, [sp, #0x12]
006ab9d0  10 00 cd e5                                      strb r0, [sp, #0x10]
006ab9d4  13 30 cd e5                                      strb r3, [sp, #0x13]
006ab9d8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ab9dc  00 60 8d e5                                      str r6, [sp]
006ab9e0  0a 00 a0 e1                                      mov r0, sl
006ab9e4  38 30 8d e5                                      str r3, [sp, #0x38]
006ab9e8  09 20 a0 e1                                      mov r2, sb
006ab9ec  01 10 a0 e3                                      mov r1, #1
006ab9f0  37 ff 2f e1                                      blx r7
006ab9f4  58 01 94 e5                                      ldr r0, [r4, #0x158]
006ab9f8  01 50 a0 e3                                      mov r5, #1
006ab9fc  05 20 a0 e1                                      mov r2, r5
006aba00  05 10 a0 e1                                      mov r1, r5
006aba04  00 30 a0 e3                                      mov r3, #0
006aba08  00 50 8d e5                                      str r5, [sp]
006aba0c  8b 23 fa eb                                      bl #0x534840
006aba10  58 31 94 e5                                      ldr r3, [r4, #0x158]
006aba14  05 10 a0 e1                                      mov r1, r5
006aba18  00 60 a0 e3                                      mov r6, #0
006aba1c  03 00 a0 e1                                      mov r0, r3
006aba20  00 30 93 e5                                      ldr r3, [r3]
006aba24  0f e0 a0 e1                                      mov lr, pc
006aba28  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006aba2c  58 31 94 e5                                      ldr r3, [r4, #0x158]
006aba30  02 70 a0 e3                                      mov r7, #2
006aba34  34 61 c3 e5                                      strb r6, [r3, #0x134]
006aba38  58 31 94 e5                                      ldr r3, [r4, #0x158]
006aba3c  18 70 8d e5                                      str r7, [sp, #0x18]
006aba40  1c 70 8d e5                                      str r7, [sp, #0x1c]
006aba44  30 10 94 e5                                      ldr r1, [r4, #0x30]
006aba48  28 e0 94 e5                                      ldr lr, [r4, #0x28]
006aba4c  40 c0 93 e5                                      ldr ip, [r3, #0x40]
006aba50  38 30 93 e5                                      ldr r3, [r3, #0x38]
006aba54  34 20 94 e5                                      ldr r2, [r4, #0x34]
006aba58  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
006aba5c  02 10 41 e2                                      sub r1, r1, #2
006aba60  01 10 6e e0                                      rsb r1, lr, r1
006aba64  0c c0 63 e0                                      rsb ip, r3, ip
006aba68  01 10 6c e0                                      rsb r1, ip, r1
006aba6c  50 31 94 e5                                      ldr r3, [r4, #0x150]
006aba70  02 20 42 e2                                      sub r2, r2, #2
006aba74  20 10 8d e5                                      str r1, [sp, #0x20]
006aba78  02 20 60 e0                                      rsb r2, r0, r2
006aba7c  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
006aba80  24 20 8d e5                                      str r2, [sp, #0x24]
006aba84  00 c0 93 e5                                      ldr ip, [r3]
006aba88  03 00 a0 e1                                      mov r0, r3
006aba8c  00 30 e0 e3                                      mvn r3, #0
006aba90  08 20 a0 e1                                      mov r2, r8
006aba94  08 30 8d e5                                      str r3, [sp, #8]
006aba98  01 10 8f e0                                      add r1, pc, r1
006aba9c  06 30 a0 e1                                      mov r3, r6
006abaa0  00 60 8d e5                                      str r6, [sp]
006abaa4  04 40 8d e5                                      str r4, [sp, #4]
006abaa8  0c 60 8d e5                                      str r6, [sp, #0xc]
006abaac  0f e0 a0 e1                                      mov lr, pc
006abab0  a8 f0 9c e5                                      ldr pc, [ip, #0xa8]
006abab4  5c 01 84 e5                                      str r0, [r4, #0x15c]
006abab8  00 30 90 e5                                      ldr r3, [r0]
006ababc  05 10 a0 e1                                      mov r1, r5
006abac0  0f e0 a0 e1                                      mov lr, pc
006abac4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006abac8  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
006abacc  06 30 a0 e1                                      mov r3, r6
006abad0  06 10 a0 e1                                      mov r1, r6
006abad4  05 20 a0 e1                                      mov r2, r5
006abad8  00 50 8d e5                                      str r5, [sp]
006abadc  57 23 fa eb                                      bl #0x534840
006abae0  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006abae4  07 20 a0 e1                                      mov r2, r7
006abae8  06 10 a0 e1                                      mov r1, r6
006abaec  03 00 a0 e1                                      mov r0, r3
006abaf0  00 30 93 e5                                      ldr r3, [r3]
006abaf4  0f e0 a0 e1                                      mov lr, pc
006abaf8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006abafc  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006abb00  05 10 a0 e1                                      mov r1, r5
006abb04  03 00 a0 e1                                      mov r0, r3
006abb08  00 30 93 e5                                      ldr r3, [r3]
006abb0c  0f e0 a0 e1                                      mov lr, pc
006abb10  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
006abb14  04 00 a0 e1                                      mov r0, r4
006abb18  34 51 c4 e5                                      strb r5, [r4, #0x134]
006abb1c  9b 50 c4 e5                                      strb r5, [r4, #0x9b]
006abb20  ee fd ff eb                                      bl #0x6ab2e0
006abb24  04 00 a0 e1                                      mov r0, r4
006abb28  44 d0 8d e2                                      add sp, sp, #0x44
006abb2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006abb30  40 93 2e 00 64 0a 00 00 44 2b 00 00 b8 0b 00 00  .byte 0x40, 0x93, 0x2e, 0x00, 0x64, 0x0a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xb8, 0x0b, 0x00, 0x00
006abb40  78 33 21 00 78 31 21 00                          .byte 0x78, 0x33, 0x21, 0x00, 0x78, 0x31, 0x21, 0x00

; FUNCTION 0x006abb48, declared_size=1508, range_size=1508, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIComboBox::onEvent(glitch::SEvent const&)
; decoder-mode: arm
006abb48  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006abb4c  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
006abb50  0c d0 4d e2                                      sub sp, sp, #0xc
006abb54  00 40 a0 e1                                      mov r4, r0
006abb58  00 00 53 e3                                      cmp r3, #0
006abb5c  01 50 a0 e1                                      mov r5, r1
006abb60  06 00 00 0a                                      beq #0x6abb80
006abb64  00 60 91 e5                                      ldr r6, [r1]
006abb68  01 00 56 e3                                      cmp r6, #1
006abb6c  35 00 00 0a                                      beq #0x6abc48
006abb70  02 00 56 e3                                      cmp r6, #2
006abb74  1a 00 00 0a                                      beq #0x6abbe4
006abb78  00 00 56 e3                                      cmp r6, #0
006abb7c  0a 00 00 0a                                      beq #0x6abbac
006abb80  24 30 94 e5                                      ldr r3, [r4, #0x24]
006abb84  00 00 53 e3                                      cmp r3, #0
006abb88  03 00 a0 01                                      moveq r0, r3
006abb8c  04 00 00 0a                                      beq #0x6abba4
006abb90  03 00 a0 e1                                      mov r0, r3
006abb94  05 10 a0 e1                                      mov r1, r5
006abb98  00 30 93 e5                                      ldr r3, [r3]
006abb9c  0f e0 a0 e1                                      mov lr, pc
006abba0  08 f0 93 e5                                      ldr pc, [r3, #8]
006abba4  0c d0 8d e2                                      add sp, sp, #0xc
006abba8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006abbac  10 30 91 e5                                      ldr r3, [r1, #0x10]
006abbb0  09 00 53 e3                                      cmp r3, #9
006abbb4  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
006abbb8  f0 ff ff ea                                      b #0x6abb80
006abbbc  7d 00 00 ea                                      b #0x6abdb8
006abbc0  ee ff ff ea                                      b #0x6abb80
006abbc4  ed ff ff ea                                      b #0x6abb80
006abbc8  ec ff ff ea                                      b #0x6abb80
006abbcc  eb ff ff ea                                      b #0x6abb80
006abbd0  71 00 00 ea                                      b #0x6abd9c
006abbd4  e9 ff ff ea                                      b #0x6abb80
006abbd8  e8 ff ff ea                                      b #0x6abb80
006abbdc  46 00 00 ea                                      b #0x6abcfc
006abbe0  45 00 00 ea                                      b #0x6abcfc
006abbe4  60 11 90 e5                                      ldr r1, [r0, #0x160]
006abbe8  00 00 51 e3                                      cmp r1, #0
006abbec  2f 01 00 0a                                      beq #0x6ac0b0
006abbf0  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
006abbf4  00 00 53 e3                                      cmp r3, #0
006abbf8  38 00 00 1a                                      bne #0x6abce0
006abbfc  03 20 a0 e1                                      mov r2, r3
006abc00  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006abc04  0d 00 53 e3                                      cmp r3, #0xd
006abc08  20 00 53 13                                      cmpne r3, #0x20
006abc0c  24 00 00 1a                                      bne #0x6abca4
006abc10  00 00 52 e3                                      cmp r2, #0
006abc14  02 00 00 1a                                      bne #0x6abc24
006abc18  04 00 a0 e1                                      mov r0, r4
006abc1c  fe fb ff eb                                      bl #0x6aac1c
006abc20  60 11 94 e5                                      ldr r1, [r4, #0x160]
006abc24  58 31 94 e5                                      ldr r3, [r4, #0x158]
006abc28  01 10 71 e2                                      rsbs r1, r1, #1
006abc2c  00 10 a0 33                                      movlo r1, #0
006abc30  03 00 a0 e1                                      mov r0, r3
006abc34  00 30 93 e5                                      ldr r3, [r3]
006abc38  0f e0 a0 e1                                      mov lr, pc
006abc3c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006abc40  01 00 a0 e3                                      mov r0, #1
006abc44  d6 ff ff ea                                      b #0x6abba4
006abc48  14 30 91 e5                                      ldr r3, [r1, #0x14]
006abc4c  03 00 53 e3                                      cmp r3, #3
006abc50  fd 00 00 0a                                      beq #0x6ac04c
006abc54  07 00 53 e3                                      cmp r3, #7
006abc58  d8 00 00 0a                                      beq #0x6abfc0
006abc5c  00 00 53 e3                                      cmp r3, #0
006abc60  c6 ff ff 1a                                      bne #0x6abb80
006abc64  60 31 90 e5                                      ldr r3, [r0, #0x160]
006abc68  0c 10 91 e5                                      ldr r1, [r1, #0xc]
006abc6c  08 20 95 e5                                      ldr r2, [r5, #8]
006abc70  00 00 53 e3                                      cmp r3, #0
006abc74  04 10 8d e5                                      str r1, [sp, #4]
006abc78  00 20 8d e5                                      str r2, [sp]
006abc7c  06 00 00 0a                                      beq #0x6abc9c
006abc80  03 00 a0 e1                                      mov r0, r3
006abc84  0d 10 a0 e1                                      mov r1, sp
006abc88  00 30 93 e5                                      ldr r3, [r3]
006abc8c  0f e0 a0 e1                                      mov lr, pc
006abc90  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006abc94  00 00 50 e3                                      cmp r0, #0
006abc98  7c 00 00 1a                                      bne #0x6abe90
006abc9c  01 00 a0 e3                                      mov r0, #1
006abca0  bf ff ff ea                                      b #0x6abba4
006abca4  00 00 52 e3                                      cmp r2, #0
006abca8  b4 ff ff 0a                                      beq #0x6abb80
006abcac  21 30 43 e2                                      sub r3, r3, #0x21
006abcb0  70 61 94 e5                                      ldr r6, [r4, #0x170]
006abcb4  07 00 53 e3                                      cmp r3, #7
006abcb8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
006abcbc  bc 00 00 ea                                      b #0x6abfb4
006abcc0  b3 00 00 ea                                      b #0x6abf94
006abcc4  9f 00 00 ea                                      b #0x6abf48
006abcc8  9e 00 00 ea                                      b #0x6abf48
006abccc  b0 00 00 ea                                      b #0x6abf94
006abcd0  b7 00 00 ea                                      b #0x6abfb4
006abcd4  93 00 00 ea                                      b #0x6abf28
006abcd8  b5 00 00 ea                                      b #0x6abfb4
006abcdc  73 00 00 ea                                      b #0x6abeb0
006abce0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006abce4  1b 00 53 e3                                      cmp r3, #0x1b
006abce8  01 20 a0 13                                      movne r2, #1
006abcec  c4 ff ff 1a                                      bne #0x6abc04
006abcf0  c9 fb ff eb                                      bl #0x6aac1c
006abcf4  01 00 a0 e3                                      mov r0, #1
006abcf8  a9 ff ff ea                                      b #0x6abba4
006abcfc  08 30 91 e5                                      ldr r3, [r1, #8]
006abd00  60 21 90 e5                                      ldr r2, [r0, #0x160]
006abd04  02 00 53 e1                                      cmp r3, r2
006abd08  e3 ff ff 1a                                      bne #0x6abc9c
006abd0c  00 20 90 e5                                      ldr r2, [r0]
006abd10  03 00 a0 e1                                      mov r0, r3
006abd14  00 30 93 e5                                      ldr r3, [r3]
006abd18  94 50 92 e5                                      ldr r5, [r2, #0x94]
006abd1c  0f e0 a0 e1                                      mov lr, pc
006abd20  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006abd24  00 10 a0 e1                                      mov r1, r0
006abd28  04 00 a0 e1                                      mov r0, r4
006abd2c  35 ff 2f e1                                      blx r5
006abd30  70 21 94 e5                                      ldr r2, [r4, #0x170]
006abd34  00 00 52 e3                                      cmp r2, #0
006abd38  0c 00 00 ba                                      blt #0x6abd70
006abd3c  68 11 94 e5                                      ldr r1, [r4, #0x168]
006abd40  64 31 94 e5                                      ldr r3, [r4, #0x164]
006abd44  01 30 63 e0                                      rsb r3, r3, r1
006abd48  c3 31 a0 e1                                      asr r3, r3, #3
006abd4c  83 11 a0 e1                                      lsl r1, r3, #3
006abd50  01 10 63 e0                                      rsb r1, r3, r1
006abd54  01 13 81 e0                                      add r1, r1, r1, lsl #6
006abd58  81 11 83 e0                                      add r1, r3, r1, lsl #3
006abd5c  81 07 a0 e1                                      lsl r0, r1, #0xf
006abd60  00 10 61 e0                                      rsb r1, r1, r0
006abd64  81 31 83 e0                                      add r3, r3, r1, lsl #3
006abd68  03 00 52 e1                                      cmp r2, r3
006abd6c  04 00 00 ba                                      blt #0x6abd84
006abd70  00 30 94 e5                                      ldr r3, [r4]
006abd74  04 00 a0 e1                                      mov r0, r4
006abd78  00 10 e0 e3                                      mvn r1, #0
006abd7c  0f e0 a0 e1                                      mov lr, pc
006abd80  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006abd84  04 00 a0 e1                                      mov r0, r4
006abd88  a3 fb ff eb                                      bl #0x6aac1c
006abd8c  04 00 a0 e1                                      mov r0, r4
006abd90  87 fb ff eb                                      bl #0x6aabb4
006abd94  01 00 a0 e3                                      mov r0, #1
006abd98  81 ff ff ea                                      b #0x6abba4
006abd9c  08 20 91 e5                                      ldr r2, [r1, #8]
006abda0  58 31 90 e5                                      ldr r3, [r0, #0x158]
006abda4  03 00 52 e1                                      cmp r2, r3
006abda8  74 ff ff 1a                                      bne #0x6abb80
006abdac  9a fb ff eb                                      bl #0x6aac1c
006abdb0  01 00 a0 e3                                      mov r0, #1
006abdb4  7a ff ff ea                                      b #0x6abba4
006abdb8  60 11 90 e5                                      ldr r1, [r0, #0x160]
006abdbc  00 00 51 e3                                      cmp r1, #0
006abdc0  6e ff ff 0a                                      beq #0x6abb80
006abdc4  50 31 90 e5                                      ldr r3, [r0, #0x150]
006abdc8  03 00 a0 e1                                      mov r0, r3
006abdcc  00 30 93 e5                                      ldr r3, [r3]
006abdd0  0f e0 a0 e1                                      mov lr, pc
006abdd4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006abdd8  00 00 50 e3                                      cmp r0, #0
006abddc  10 00 00 1a                                      bne #0x6abe24
006abde0  08 10 95 e5                                      ldr r1, [r5, #8]
006abde4  60 01 94 e5                                      ldr r0, [r4, #0x160]
006abde8  00 00 51 e3                                      cmp r1, #0
006abdec  63 ff ff 0a                                      beq #0x6abb80
006abdf0  24 30 91 e5                                      ldr r3, [r1, #0x24]
006abdf4  05 00 00 ea                                      b #0x6abe10
006abdf8  24 20 93 e5                                      ldr r2, [r3, #0x24]
006abdfc  03 10 a0 e1                                      mov r1, r3
006abe00  03 00 50 e1                                      cmp r0, r3
006abe04  00 00 52 13                                      cmpne r2, #0
006abe08  03 00 00 0a                                      beq #0x6abe1c
006abe0c  02 30 a0 e1                                      mov r3, r2
006abe10  00 00 53 e3                                      cmp r3, #0
006abe14  f7 ff ff 1a                                      bne #0x6abdf8
006abe18  01 30 a0 e1                                      mov r3, r1
006abe1c  03 00 50 e1                                      cmp r0, r3
006abe20  56 ff ff 1a                                      bne #0x6abb80
006abe24  0c 10 95 e5                                      ldr r1, [r5, #0xc]
006abe28  04 00 51 e1                                      cmp r1, r4
006abe2c  53 ff ff 0a                                      beq #0x6abb80
006abe30  58 31 94 e5                                      ldr r3, [r4, #0x158]
006abe34  03 00 51 e1                                      cmp r1, r3
006abe38  50 ff ff 0a                                      beq #0x6abb80
006abe3c  60 01 94 e5                                      ldr r0, [r4, #0x160]
006abe40  00 00 51 e1                                      cmp r1, r0
006abe44  4d ff ff 0a                                      beq #0x6abb80
006abe48  00 00 51 e3                                      cmp r1, #0
006abe4c  0c 00 00 0a                                      beq #0x6abe84
006abe50  24 30 91 e5                                      ldr r3, [r1, #0x24]
006abe54  05 00 00 ea                                      b #0x6abe70
006abe58  24 20 93 e5                                      ldr r2, [r3, #0x24]
006abe5c  03 10 a0 e1                                      mov r1, r3
006abe60  03 00 50 e1                                      cmp r0, r3
006abe64  00 00 52 13                                      cmpne r2, #0
006abe68  03 00 00 0a                                      beq #0x6abe7c
006abe6c  02 30 a0 e1                                      mov r3, r2
006abe70  00 00 53 e3                                      cmp r3, #0
006abe74  f7 ff ff 1a                                      bne #0x6abe58
006abe78  01 30 a0 e1                                      mov r3, r1
006abe7c  03 00 50 e1                                      cmp r0, r3
006abe80  3e ff ff 0a                                      beq #0x6abb80
006abe84  04 00 a0 e1                                      mov r0, r4
006abe88  63 fb ff eb                                      bl #0x6aac1c
006abe8c  3b ff ff ea                                      b #0x6abb80
006abe90  60 31 94 e5                                      ldr r3, [r4, #0x160]
006abe94  05 10 a0 e1                                      mov r1, r5
006abe98  03 00 a0 e1                                      mov r0, r3
006abe9c  00 30 93 e5                                      ldr r3, [r3]
006abea0  0f e0 a0 e1                                      mov lr, pc
006abea4  08 f0 93 e5                                      ldr pc, [r3, #8]
006abea8  06 00 a0 e1                                      mov r0, r6
006abeac  3c ff ff ea                                      b #0x6abba4
006abeb0  00 30 94 e5                                      ldr r3, [r4]
006abeb4  04 00 a0 e1                                      mov r0, r4
006abeb8  01 10 86 e2                                      add r1, r6, #1
006abebc  0f e0 a0 e1                                      mov lr, pc
006abec0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006abec4  70 21 94 e5                                      ldr r2, [r4, #0x170]
006abec8  01 70 a0 e3                                      mov r7, #1
006abecc  00 00 52 e3                                      cmp r2, #0
006abed0  8e 00 00 ba                                      blt #0x6ac110
006abed4  68 11 94 e5                                      ldr r1, [r4, #0x168]
006abed8  64 31 94 e5                                      ldr r3, [r4, #0x164]
006abedc  01 30 63 e0                                      rsb r3, r3, r1
006abee0  c3 31 a0 e1                                      asr r3, r3, #3
006abee4  83 11 a0 e1                                      lsl r1, r3, #3
006abee8  01 10 63 e0                                      rsb r1, r3, r1
006abeec  01 13 81 e0                                      add r1, r1, r1, lsl #6
006abef0  81 11 83 e0                                      add r1, r3, r1, lsl #3
006abef4  81 07 a0 e1                                      lsl r0, r1, #0xf
006abef8  00 10 61 e0                                      rsb r1, r1, r0
006abefc  81 31 83 e0                                      add r3, r3, r1, lsl #3
006abf00  03 00 52 e1                                      cmp r2, r3
006abf04  73 00 00 aa                                      bge #0x6ac0d8
006abf08  02 00 56 e1                                      cmp r6, r2
006abf0c  01 00 00 0a                                      beq #0x6abf18
006abf10  04 00 a0 e1                                      mov r0, r4
006abf14  26 fb ff eb                                      bl #0x6aabb4
006abf18  00 00 57 e3                                      cmp r7, #0
006abf1c  17 ff ff 0a                                      beq #0x6abb80
006abf20  01 00 a0 e3                                      mov r0, #1
006abf24  1e ff ff ea                                      b #0x6abba4
006abf28  00 30 94 e5                                      ldr r3, [r4]
006abf2c  04 00 a0 e1                                      mov r0, r4
006abf30  01 10 46 e2                                      sub r1, r6, #1
006abf34  0f e0 a0 e1                                      mov lr, pc
006abf38  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006abf3c  01 70 a0 e3                                      mov r7, #1
006abf40  70 21 94 e5                                      ldr r2, [r4, #0x170]
006abf44  e0 ff ff ea                                      b #0x6abecc
006abf48  68 11 94 e5                                      ldr r1, [r4, #0x168]
006abf4c  64 21 94 e5                                      ldr r2, [r4, #0x164]
006abf50  00 30 94 e5                                      ldr r3, [r4]
006abf54  04 00 a0 e1                                      mov r0, r4
006abf58  01 20 62 e0                                      rsb r2, r2, r1
006abf5c  c2 21 a0 e1                                      asr r2, r2, #3
006abf60  01 70 a0 e3                                      mov r7, #1
006abf64  82 11 a0 e1                                      lsl r1, r2, #3
006abf68  01 10 62 e0                                      rsb r1, r2, r1
006abf6c  01 13 81 e0                                      add r1, r1, r1, lsl #6
006abf70  81 11 82 e0                                      add r1, r2, r1, lsl #3
006abf74  81 c7 a0 e1                                      lsl ip, r1, #0xf
006abf78  0c 10 61 e0                                      rsb r1, r1, ip
006abf7c  81 21 82 e0                                      add r2, r2, r1, lsl #3
006abf80  01 10 42 e2                                      sub r1, r2, #1
006abf84  0f e0 a0 e1                                      mov lr, pc
006abf88  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006abf8c  70 21 94 e5                                      ldr r2, [r4, #0x170]
006abf90  cd ff ff ea                                      b #0x6abecc
006abf94  00 30 94 e5                                      ldr r3, [r4]
006abf98  04 00 a0 e1                                      mov r0, r4
006abf9c  00 10 a0 e3                                      mov r1, #0
006abfa0  0f e0 a0 e1                                      mov lr, pc
006abfa4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006abfa8  01 70 a0 e3                                      mov r7, #1
006abfac  70 21 94 e5                                      ldr r2, [r4, #0x170]
006abfb0  c5 ff ff ea                                      b #0x6abecc
006abfb4  06 20 a0 e1                                      mov r2, r6
006abfb8  00 70 a0 e3                                      mov r7, #0
006abfbc  c2 ff ff ea                                      b #0x6abecc
006abfc0  00 30 90 e5                                      ldr r3, [r0]
006abfc4  10 00 91 e5                                      ldr r0, [r1, #0x10]
006abfc8  00 10 a0 e3                                      mov r1, #0
006abfcc  94 70 93 e5                                      ldr r7, [r3, #0x94]
006abfd0  cd 89 f1 eb                                      bl #0x30e70c
006abfd4  70 61 94 e5                                      ldr r6, [r4, #0x170]
006abfd8  00 00 50 e3                                      cmp r0, #0
006abfdc  06 00 a0 01                                      moveq r0, r6
006abfe0  01 00 86 12                                      addne r0, r6, #1
006abfe4  00 00 50 e3                                      cmp r0, #0
006abfe8  01 10 a0 13                                      movne r1, #1
006abfec  00 10 e0 03                                      mvneq r1, #0
006abff0  04 00 a0 e1                                      mov r0, r4
006abff4  37 ff 2f e1                                      blx r7
006abff8  70 21 94 e5                                      ldr r2, [r4, #0x170]
006abffc  00 00 52 e3                                      cmp r2, #0
006ac000  3b 00 00 ba                                      blt #0x6ac0f4
006ac004  68 11 94 e5                                      ldr r1, [r4, #0x168]
006ac008  64 31 94 e5                                      ldr r3, [r4, #0x164]
006ac00c  01 30 63 e0                                      rsb r3, r3, r1
006ac010  c3 31 a0 e1                                      asr r3, r3, #3
006ac014  83 11 a0 e1                                      lsl r1, r3, #3
006ac018  01 10 63 e0                                      rsb r1, r3, r1
006ac01c  01 13 81 e0                                      add r1, r1, r1, lsl #6
006ac020  81 11 83 e0                                      add r1, r3, r1, lsl #3
006ac024  81 07 a0 e1                                      lsl r0, r1, #0xf
006ac028  00 10 61 e0                                      rsb r1, r1, r0
006ac02c  81 31 83 e0                                      add r3, r3, r1, lsl #3
006ac030  03 00 52 e1                                      cmp r2, r3
006ac034  20 00 00 aa                                      bge #0x6ac0bc
006ac038  06 00 52 e1                                      cmp r2, r6
006ac03c  cf fe ff 0a                                      beq #0x6abb80
006ac040  04 00 a0 e1                                      mov r0, r4
006ac044  da fa ff eb                                      bl #0x6aabb4
006ac048  cc fe ff ea                                      b #0x6abb80
006ac04c  60 31 90 e5                                      ldr r3, [r0, #0x160]
006ac050  0c c0 91 e5                                      ldr ip, [r1, #0xc]
006ac054  08 20 91 e5                                      ldr r2, [r1, #8]
006ac058  00 00 53 e3                                      cmp r3, #0
006ac05c  11 00 00 0a                                      beq #0x6ac0a8
006ac060  38 00 93 e5                                      ldr r0, [r3, #0x38]
006ac064  3c e0 93 e5                                      ldr lr, [r3, #0x3c]
006ac068  40 50 93 e5                                      ldr r5, [r3, #0x40]
006ac06c  00 00 52 e1                                      cmp r2, r0
006ac070  44 00 93 e5                                      ldr r0, [r3, #0x44]
006ac074  0b 00 00 ba                                      blt #0x6ac0a8
006ac078  0e 00 5c e1                                      cmp ip, lr
006ac07c  09 00 00 ba                                      blt #0x6ac0a8
006ac080  05 00 52 e1                                      cmp r2, r5
006ac084  07 00 00 ca                                      bgt #0x6ac0a8
006ac088  00 00 5c e1                                      cmp ip, r0
006ac08c  05 00 00 ca                                      bgt #0x6ac0a8
006ac090  03 00 a0 e1                                      mov r0, r3
006ac094  00 30 93 e5                                      ldr r3, [r3]
006ac098  0f e0 a0 e1                                      mov lr, pc
006ac09c  08 f0 93 e5                                      ldr pc, [r3, #8]
006ac0a0  00 00 50 e3                                      cmp r0, #0
006ac0a4  fc fe ff 1a                                      bne #0x6abc9c
006ac0a8  04 00 a0 e1                                      mov r0, r4
006ac0ac  0f ff ff ea                                      b #0x6abcf0
006ac0b0  10 20 d5 e5                                      ldrb r2, [r5, #0x10]
006ac0b4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006ac0b8  d1 fe ff ea                                      b #0x6abc04
006ac0bc  01 10 43 e2                                      sub r1, r3, #1
006ac0c0  04 00 a0 e1                                      mov r0, r4
006ac0c4  00 30 94 e5                                      ldr r3, [r4]
006ac0c8  0f e0 a0 e1                                      mov lr, pc
006ac0cc  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006ac0d0  70 21 94 e5                                      ldr r2, [r4, #0x170]
006ac0d4  d7 ff ff ea                                      b #0x6ac038
006ac0d8  01 10 43 e2                                      sub r1, r3, #1
006ac0dc  04 00 a0 e1                                      mov r0, r4
006ac0e0  00 30 94 e5                                      ldr r3, [r4]
006ac0e4  0f e0 a0 e1                                      mov lr, pc
006ac0e8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006ac0ec  70 21 94 e5                                      ldr r2, [r4, #0x170]
006ac0f0  84 ff ff ea                                      b #0x6abf08
006ac0f4  00 30 94 e5                                      ldr r3, [r4]
006ac0f8  04 00 a0 e1                                      mov r0, r4
006ac0fc  00 10 a0 e3                                      mov r1, #0
006ac100  0f e0 a0 e1                                      mov lr, pc
006ac104  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006ac108  70 21 94 e5                                      ldr r2, [r4, #0x170]
006ac10c  bc ff ff ea                                      b #0x6ac004
006ac110  00 30 94 e5                                      ldr r3, [r4]
006ac114  04 00 a0 e1                                      mov r0, r4
006ac118  00 10 a0 e3                                      mov r1, #0
006ac11c  0f e0 a0 e1                                      mov lr, pc
006ac120  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006ac124  70 21 94 e5                                      ldr r2, [r4, #0x170]
006ac128  69 ff ff ea                                      b #0x6abed4

; FUNCTION 0x006ac12c, declared_size=572, range_size=572, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZNK6glitch3gui12CGUIComboBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIComboBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006ac12c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ac130  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
006ac134  0c c2 9f e5                                      ldr ip, [pc, #0x20c]
006ac138  34 d0 4d e2                                      sub sp, sp, #0x34
006ac13c  03 30 8f e0                                      add r3, pc, r3
006ac140  08 30 8d e5                                      str r3, [sp, #8]
006ac144  0c 30 93 e7                                      ldr r3, [r3, ip]
006ac148  fc 41 9f e5                                      ldr r4, [pc, #0x1fc]
006ac14c  01 70 a0 e1                                      mov r7, r1
006ac150  00 30 93 e5                                      ldr r3, [r3]
006ac154  00 60 a0 e1                                      mov r6, r0
006ac158  0c c0 8d e5                                      str ip, [sp, #0xc]
006ac15c  2c 30 8d e5                                      str r3, [sp, #0x2c]
006ac160  d5 23 fa eb                                      bl #0x5350bc
006ac164  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
006ac168  00 80 a0 e3                                      mov r8, #0
006ac16c  04 40 8f e0                                      add r4, pc, r4
006ac170  7c 21 96 e5                                      ldr r2, [r6, #0x17c]
006ac174  5c 40 84 e2                                      add r4, r4, #0x5c
006ac178  00 80 8d e5                                      str r8, [sp]
006ac17c  04 30 a0 e1                                      mov r3, r4
006ac180  01 10 8f e0                                      add r1, pc, r1
006ac184  07 00 a0 e1                                      mov r0, r7
006ac188  00 c0 97 e5                                      ldr ip, [r7]
006ac18c  0f e0 a0 e1                                      mov lr, pc
006ac190  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
006ac194  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
006ac198  80 21 96 e5                                      ldr r2, [r6, #0x180]
006ac19c  00 80 8d e5                                      str r8, [sp]
006ac1a0  04 30 a0 e1                                      mov r3, r4
006ac1a4  01 10 8f e0                                      add r1, pc, r1
006ac1a8  07 00 a0 e1                                      mov r0, r7
006ac1ac  00 c0 97 e5                                      ldr ip, [r7]
006ac1b0  0f e0 a0 e1                                      mov lr, pc
006ac1b4  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
006ac1b8  98 11 9f e5                                      ldr r1, [pc, #0x198]
006ac1bc  07 00 a0 e1                                      mov r0, r7
006ac1c0  70 21 96 e5                                      ldr r2, [r6, #0x170]
006ac1c4  01 10 8f e0                                      add r1, pc, r1
006ac1c8  08 30 a0 e1                                      mov r3, r8
006ac1cc  00 c0 97 e5                                      ldr ip, [r7]
006ac1d0  0f e0 a0 e1                                      mov lr, pc
006ac1d4  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006ac1d8  64 31 96 e5                                      ldr r3, [r6, #0x164]
006ac1dc  68 21 96 e5                                      ldr r2, [r6, #0x168]
006ac1e0  74 11 9f e5                                      ldr r1, [pc, #0x174]
006ac1e4  00 40 97 e5                                      ldr r4, [r7]
006ac1e8  02 20 63 e0                                      rsb r2, r3, r2
006ac1ec  c2 21 a0 e1                                      asr r2, r2, #3
006ac1f0  01 10 8f e0                                      add r1, pc, r1
006ac1f4  82 c1 a0 e1                                      lsl ip, r2, #3
006ac1f8  0c c0 62 e0                                      rsb ip, r2, ip
006ac1fc  0c c3 8c e0                                      add ip, ip, ip, lsl #6
006ac200  08 30 a0 e1                                      mov r3, r8
006ac204  8c c1 82 e0                                      add ip, r2, ip, lsl #3
006ac208  07 00 a0 e1                                      mov r0, r7
006ac20c  8c e7 a0 e1                                      lsl lr, ip, #0xf
006ac210  0e c0 6c e0                                      rsb ip, ip, lr
006ac214  8c 21 82 e0                                      add r2, r2, ip, lsl #3
006ac218  0f e0 a0 e1                                      mov lr, pc
006ac21c  4c f0 94 e5                                      ldr pc, [r4, #0x4c]
006ac220  68 21 96 e5                                      ldr r2, [r6, #0x168]
006ac224  64 31 96 e5                                      ldr r3, [r6, #0x164]
006ac228  02 30 63 e0                                      rsb r3, r3, r2
006ac22c  c3 31 a0 e1                                      asr r3, r3, #3
006ac230  83 21 a0 e1                                      lsl r2, r3, #3
006ac234  02 20 63 e0                                      rsb r2, r3, r2
006ac238  02 23 82 e0                                      add r2, r2, r2, lsl #6
006ac23c  82 21 83 e0                                      add r2, r3, r2, lsl #3
006ac240  82 17 a0 e1                                      lsl r1, r2, #0xf
006ac244  01 20 62 e0                                      rsb r2, r2, r1
006ac248  82 31 83 e0                                      add r3, r3, r2, lsl #3
006ac24c  08 00 53 e1                                      cmp r3, r8
006ac250  31 00 00 0a                                      beq #0x6ac31c
006ac254  04 a1 9f e5                                      ldr sl, [pc, #0x104]
006ac258  04 91 9f e5                                      ldr sb, [pc, #0x104]
006ac25c  08 50 a0 e1                                      mov r5, r8
006ac260  0a a0 8f e0                                      add sl, pc, sl
006ac264  09 90 8f e0                                      add sb, pc, sb
006ac268  04 90 89 e2                                      add sb, sb, #4
006ac26c  14 40 8d e2                                      add r4, sp, #0x14
006ac270  04 b0 8a e2                                      add fp, sl, #4
006ac274  09 10 a0 e1                                      mov r1, sb
006ac278  04 00 a0 e1                                      mov r0, r4
006ac27c  24 40 8d e5                                      str r4, [sp, #0x24]
006ac280  28 40 8d e5                                      str r4, [sp, #0x28]
006ac284  ac fb ff eb                                      bl #0x6ab13c
006ac288  04 00 a0 e1                                      mov r0, r4
006ac28c  75 10 af e6                                      sxtb r1, r5
006ac290  44 27 f6 eb                                      bl #0x435fa8
006ac294  0a 10 a0 e1                                      mov r1, sl
006ac298  0b 20 a0 e1                                      mov r2, fp
006ac29c  04 00 a0 e1                                      mov r0, r4
006ac2a0  e9 d1 f1 eb                                      bl #0x320a4c
006ac2a4  64 31 96 e5                                      ldr r3, [r6, #0x164]
006ac2a8  07 00 a0 e1                                      mov r0, r7
006ac2ac  00 c0 97 e5                                      ldr ip, [r7]
006ac2b0  08 30 83 e0                                      add r3, r3, r8
006ac2b4  44 20 93 e5                                      ldr r2, [r3, #0x44]
006ac2b8  28 10 9d e5                                      ldr r1, [sp, #0x28]
006ac2bc  00 30 a0 e3                                      mov r3, #0
006ac2c0  0f e0 a0 e1                                      mov lr, pc
006ac2c4  94 f0 9c e5                                      ldr pc, [ip, #0x94]
006ac2c8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006ac2cc  04 00 50 e1                                      cmp r0, r4
006ac2d0  02 00 00 0a                                      beq #0x6ac2e0
006ac2d4  00 00 50 e3                                      cmp r0, #0
006ac2d8  00 00 00 0a                                      beq #0x6ac2e0
006ac2dc  5b 90 f1 eb                                      bl #0x310450
006ac2e0  68 21 96 e5                                      ldr r2, [r6, #0x168]
006ac2e4  64 31 96 e5                                      ldr r3, [r6, #0x164]
006ac2e8  01 50 85 e2                                      add r5, r5, #1
006ac2ec  48 80 88 e2                                      add r8, r8, #0x48
006ac2f0  02 30 63 e0                                      rsb r3, r3, r2
006ac2f4  c3 31 a0 e1                                      asr r3, r3, #3
006ac2f8  83 21 a0 e1                                      lsl r2, r3, #3
006ac2fc  02 20 63 e0                                      rsb r2, r3, r2
006ac300  02 23 82 e0                                      add r2, r2, r2, lsl #6
006ac304  82 21 83 e0                                      add r2, r3, r2, lsl #3
006ac308  82 17 a0 e1                                      lsl r1, r2, #0xf
006ac30c  01 20 62 e0                                      rsb r2, r2, r1
006ac310  82 31 83 e0                                      add r3, r3, r2, lsl #3
006ac314  03 00 55 e1                                      cmp r5, r3
006ac318  d5 ff ff 3a                                      blo #0x6ac274
006ac31c  08 20 9d e5                                      ldr r2, [sp, #8]
006ac320  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006ac324  01 30 92 e7                                      ldr r3, [r2, r1]
006ac328  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006ac32c  00 30 93 e5                                      ldr r3, [r3]
006ac330  03 00 52 e1                                      cmp r2, r3
006ac334  01 00 00 1a                                      bne #0x6ac340
006ac338  34 d0 8d e2                                      add sp, sp, #0x34
006ac33c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006ac340  f2 87 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006ac344  54 89 2e 00 ac 40 00 00 e0 b8 2a 00 58 29 23 00  .byte 0x54, 0x89, 0x2e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0xb8, 0x2a, 0x00, 0x58, 0x29, 0x23, 0x00
006ac354  44 29 23 00 bc ef 23 00 20 23 23 00 c8 0e 22 00  .byte 0x44, 0x29, 0x23, 0x00, 0xbc, 0xef, 0x23, 0x00, 0x20, 0x23, 0x23, 0x00, 0xc8, 0x0e, 0x22, 0x00
006ac364  1c e3 21 00                                      .byte 0x1c, 0xe3, 0x21, 0x00

; FUNCTION 0x006ac368, declared_size=544, range_size=544, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox4drawEv
; demangled: glitch::gui::CGUIComboBox::draw()
; decoder-mode: arm
006ac368  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006ac36c  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
006ac370  3c d0 4d e2                                      sub sp, sp, #0x3c
006ac374  00 40 a0 e1                                      mov r4, r0
006ac378  00 00 53 e3                                      cmp r3, #0
006ac37c  01 00 00 1a                                      bne #0x6ac388
006ac380  3c d0 8d e2                                      add sp, sp, #0x3c
006ac384  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006ac388  50 31 90 e5                                      ldr r3, [r0, #0x150]
006ac38c  03 00 a0 e1                                      mov r0, r3
006ac390  00 30 93 e5                                      ldr r3, [r3]
006ac394  0f e0 a0 e1                                      mov lr, pc
006ac398  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006ac39c  50 31 94 e5                                      ldr r3, [r4, #0x150]
006ac3a0  00 60 a0 e1                                      mov r6, r0
006ac3a4  03 00 a0 e1                                      mov r0, r3
006ac3a8  00 30 93 e5                                      ldr r3, [r3]
006ac3ac  0f e0 a0 e1                                      mov lr, pc
006ac3b0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006ac3b4  78 31 94 e5                                      ldr r3, [r4, #0x178]
006ac3b8  03 00 50 e1                                      cmp r0, r3
006ac3bc  46 00 00 0a                                      beq #0x6ac4dc
006ac3c0  04 00 50 e1                                      cmp r0, r4
006ac3c4  01 30 a0 03                                      moveq r3, #1
006ac3c8  11 00 00 0a                                      beq #0x6ac414
006ac3cc  00 00 50 e3                                      cmp r0, #0
006ac3d0  00 30 a0 01                                      moveq r3, r0
006ac3d4  0e 00 00 0a                                      beq #0x6ac414
006ac3d8  24 30 90 e5                                      ldr r3, [r0, #0x24]
006ac3dc  00 10 a0 e1                                      mov r1, r0
006ac3e0  05 00 00 ea                                      b #0x6ac3fc
006ac3e4  24 20 93 e5                                      ldr r2, [r3, #0x24]
006ac3e8  03 10 a0 e1                                      mov r1, r3
006ac3ec  04 00 53 e1                                      cmp r3, r4
006ac3f0  00 00 52 13                                      cmpne r2, #0
006ac3f4  03 00 00 0a                                      beq #0x6ac408
006ac3f8  02 30 a0 e1                                      mov r3, r2
006ac3fc  00 00 53 e3                                      cmp r3, #0
006ac400  f7 ff ff 1a                                      bne #0x6ac3e4
006ac404  01 30 a0 e1                                      mov r3, r1
006ac408  03 00 54 e1                                      cmp r4, r3
006ac40c  00 30 a0 13                                      movne r3, #0
006ac410  01 30 a0 03                                      moveq r3, #1
006ac414  5c 51 94 e5                                      ldr r5, [r4, #0x15c]
006ac418  78 01 84 e5                                      str r0, [r4, #0x178]
006ac41c  74 31 c4 e5                                      strb r3, [r4, #0x174]
006ac420  00 20 95 e5                                      ldr r2, [r5]
006ac424  0a 10 a0 e3                                      mov r1, #0xa
006ac428  00 30 96 e5                                      ldr r3, [r6]
006ac42c  06 00 a0 e1                                      mov r0, r6
006ac430  94 70 92 e5                                      ldr r7, [r2, #0x94]
006ac434  0f e0 a0 e1                                      mov lr, pc
006ac438  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ac43c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006ac440  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006ac444  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006ac448  12 20 cd e5                                      strb r2, [sp, #0x12]
006ac44c  11 10 cd e5                                      strb r1, [sp, #0x11]
006ac450  10 00 cd e5                                      strb r0, [sp, #0x10]
006ac454  13 30 cd e5                                      strb r3, [sp, #0x13]
006ac458  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ac45c  05 00 a0 e1                                      mov r0, r5
006ac460  03 10 a0 e1                                      mov r1, r3
006ac464  34 30 8d e5                                      str r3, [sp, #0x34]
006ac468  37 ff 2f e1                                      blx r7
006ac46c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006ac470  74 11 d4 e5                                      ldrb r1, [r4, #0x174]
006ac474  03 00 a0 e1                                      mov r0, r3
006ac478  00 30 93 e5                                      ldr r3, [r3]
006ac47c  0f e0 a0 e1                                      mov lr, pc
006ac480  98 f0 93 e5                                      ldr pc, [r3, #0x98]
006ac484  5c 51 94 e5                                      ldr r5, [r4, #0x15c]
006ac488  74 11 d4 e5                                      ldrb r1, [r4, #0x174]
006ac48c  00 30 96 e5                                      ldr r3, [r6]
006ac490  00 20 95 e5                                      ldr r2, [r5]
006ac494  00 00 51 e3                                      cmp r1, #0
006ac498  0b 10 a0 13                                      movne r1, #0xb
006ac49c  08 10 a0 03                                      moveq r1, #8
006ac4a0  06 00 a0 e1                                      mov r0, r6
006ac4a4  84 70 92 e5                                      ldr r7, [r2, #0x84]
006ac4a8  0f e0 a0 e1                                      mov lr, pc
006ac4ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ac4b0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006ac4b4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006ac4b8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006ac4bc  10 00 cd e5                                      strb r0, [sp, #0x10]
006ac4c0  11 10 cd e5                                      strb r1, [sp, #0x11]
006ac4c4  12 20 cd e5                                      strb r2, [sp, #0x12]
006ac4c8  13 30 cd e5                                      strb r3, [sp, #0x13]
006ac4cc  10 10 9d e5                                      ldr r1, [sp, #0x10]
006ac4d0  05 00 a0 e1                                      mov r0, r5
006ac4d4  30 10 8d e5                                      str r1, [sp, #0x30]
006ac4d8  37 ff 2f e1                                      blx r7
006ac4dc  38 00 84 e2                                      add r0, r4, #0x38
006ac4e0  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
006ac4e4  1c 00 8d e5                                      str r0, [sp, #0x1c]
006ac4e8  20 10 8d e5                                      str r1, [sp, #0x20]
006ac4ec  24 20 8d e5                                      str r2, [sp, #0x24]
006ac4f0  28 30 8d e5                                      str r3, [sp, #0x28]
006ac4f4  00 30 96 e5                                      ldr r3, [r6]
006ac4f8  03 10 a0 e3                                      mov r1, #3
006ac4fc  06 00 a0 e1                                      mov r0, r6
006ac500  48 50 93 e5                                      ldr r5, [r3, #0x48]
006ac504  0f e0 a0 e1                                      mov lr, pc
006ac508  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006ac50c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006ac510  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006ac514  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006ac518  11 10 cd e5                                      strb r1, [sp, #0x11]
006ac51c  13 30 cd e5                                      strb r3, [sp, #0x13]
006ac520  10 00 cd e5                                      strb r0, [sp, #0x10]
006ac524  12 20 cd e5                                      strb r2, [sp, #0x12]
006ac528  10 20 9d e5                                      ldr r2, [sp, #0x10]
006ac52c  01 30 a0 e3                                      mov r3, #1
006ac530  48 10 84 e2                                      add r1, r4, #0x48
006ac534  1c 00 8d e2                                      add r0, sp, #0x1c
006ac538  03 00 8d e9                                      stmib sp, {r0, r1}
006ac53c  00 30 8d e5                                      str r3, [sp]
006ac540  04 10 a0 e1                                      mov r1, r4
006ac544  2c 20 8d e5                                      str r2, [sp, #0x2c]
006ac548  06 00 a0 e1                                      mov r0, r6
006ac54c  35 ff 2f e1                                      blx r5
006ac550  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
006ac554  00 00 53 e3                                      cmp r3, #0
006ac558  04 50 b4 15                                      ldrne r5, [r4, #4]!
006ac55c  06 00 00 1a                                      bne #0x6ac57c
006ac560  86 ff ff ea                                      b #0x6ac380
006ac564  08 30 95 e5                                      ldr r3, [r5, #8]
006ac568  03 00 a0 e1                                      mov r0, r3
006ac56c  00 30 93 e5                                      ldr r3, [r3]
006ac570  0f e0 a0 e1                                      mov lr, pc
006ac574  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006ac578  00 50 95 e5                                      ldr r5, [r5]
006ac57c  04 00 55 e1                                      cmp r5, r4
006ac580  f7 ff ff 1a                                      bne #0x6ac564
006ac584  7d ff ff ea                                      b #0x6ac380

; FUNCTION 0x006ac760, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox5clearEv
; demangled: glitch::gui::CGUIComboBox::clear()
; decoder-mode: arm
006ac760  10 40 2d e9                                      push {r4, lr}
006ac764  64 11 90 e5                                      ldr r1, [r0, #0x164]
006ac768  68 21 90 e5                                      ldr r2, [r0, #0x168]
006ac76c  08 d0 4d e2                                      sub sp, sp, #8
006ac770  00 40 a0 e1                                      mov r4, r0
006ac774  02 00 51 e1                                      cmp r1, r2
006ac778  02 00 00 0a                                      beq #0x6ac788
006ac77c  59 0f 80 e2                                      add r0, r0, #0x164
006ac780  04 30 8d e2                                      add r3, sp, #4
006ac784  f5 90 fa eb                                      bl #0x550b60
006ac788  04 00 a0 e1                                      mov r0, r4
006ac78c  00 30 94 e5                                      ldr r3, [r4]
006ac790  00 10 e0 e3                                      mvn r1, #0
006ac794  0f e0 a0 e1                                      mov lr, pc
006ac798  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006ac79c  08 d0 8d e2                                      add sp, sp, #8
006ac7a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ac7a4, declared_size=160, range_size=160, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox7addItemEPKw
; demangled: glitch::gui::CGUIComboBox::addItem(wchar_t const*)
; decoder-mode: arm
006ac7a4  70 40 2d e9                                      push {r4, r5, r6, lr}
006ac7a8  50 d0 4d e2                                      sub sp, sp, #0x50
006ac7ac  04 50 8d e2                                      add r5, sp, #4
006ac7b0  4c 20 8d e2                                      add r2, sp, #0x4c
006ac7b4  59 6f 80 e2                                      add r6, r0, #0x164
006ac7b8  00 40 a0 e1                                      mov r4, r0
006ac7bc  05 00 a0 e1                                      mov r0, r5
006ac7c0  cd e5 f1 eb                                      bl #0x325efc
006ac7c4  06 00 a0 e1                                      mov r0, r6
006ac7c8  05 10 a0 e1                                      mov r1, r5
006ac7cc  5d 92 fa eb                                      bl #0x551148
006ac7d0  48 00 9d e5                                      ldr r0, [sp, #0x48]
006ac7d4  05 00 50 e1                                      cmp r0, r5
006ac7d8  02 00 00 0a                                      beq #0x6ac7e8
006ac7dc  00 00 50 e3                                      cmp r0, #0
006ac7e0  00 00 00 0a                                      beq #0x6ac7e8
006ac7e4  19 8f f1 eb                                      bl #0x310450
006ac7e8  70 31 94 e5                                      ldr r3, [r4, #0x170]
006ac7ec  01 00 73 e3                                      cmn r3, #1
006ac7f0  0d 00 00 0a                                      beq #0x6ac82c
006ac7f4  68 21 94 e5                                      ldr r2, [r4, #0x168]
006ac7f8  64 31 94 e5                                      ldr r3, [r4, #0x164]
006ac7fc  02 30 63 e0                                      rsb r3, r3, r2
006ac800  c3 31 a0 e1                                      asr r3, r3, #3
006ac804  83 21 a0 e1                                      lsl r2, r3, #3
006ac808  02 20 63 e0                                      rsb r2, r3, r2
006ac80c  02 23 82 e0                                      add r2, r2, r2, lsl #6
006ac810  82 21 83 e0                                      add r2, r3, r2, lsl #3
006ac814  82 17 a0 e1                                      lsl r1, r2, #0xf
006ac818  01 20 62 e0                                      rsb r2, r2, r1
006ac81c  82 31 83 e0                                      add r3, r3, r2, lsl #3
006ac820  01 00 43 e2                                      sub r0, r3, #1
006ac824  50 d0 8d e2                                      add sp, sp, #0x50
006ac828  70 80 bd e8                                      pop {r4, r5, r6, pc}
006ac82c  00 30 94 e5                                      ldr r3, [r4]
006ac830  04 00 a0 e1                                      mov r0, r4
006ac834  00 10 a0 e3                                      mov r1, #0
006ac838  0f e0 a0 e1                                      mov lr, pc
006ac83c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006ac840  eb ff ff ea                                      b #0x6ac7f4

; FUNCTION 0x006ac938, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox10removeItemEj
; demangled: glitch::gui::CGUIComboBox::removeItem(unsigned int)
; decoder-mode: arm
006ac938  30 40 2d e9                                      push {r4, r5, lr}
006ac93c  64 31 90 e5                                      ldr r3, [r0, #0x164]
006ac940  68 21 90 e5                                      ldr r2, [r0, #0x168]
006ac944  01 50 a0 e1                                      mov r5, r1
006ac948  0c d0 4d e2                                      sub sp, sp, #0xc
006ac94c  02 20 63 e0                                      rsb r2, r3, r2
006ac950  c2 21 a0 e1                                      asr r2, r2, #3
006ac954  00 40 a0 e1                                      mov r4, r0
006ac958  82 11 a0 e1                                      lsl r1, r2, #3
006ac95c  01 10 62 e0                                      rsb r1, r2, r1
006ac960  01 13 81 e0                                      add r1, r1, r1, lsl #6
006ac964  81 11 82 e0                                      add r1, r2, r1, lsl #3
006ac968  81 c7 a0 e1                                      lsl ip, r1, #0xf
006ac96c  0c 10 61 e0                                      rsb r1, r1, ip
006ac970  81 21 82 e0                                      add r2, r2, r1, lsl #3
006ac974  02 00 55 e1                                      cmp r5, r2
006ac978  07 00 00 2a                                      bhs #0x6ac99c
006ac97c  70 21 90 e5                                      ldr r2, [r0, #0x170]
006ac980  05 00 52 e1                                      cmp r2, r5
006ac984  06 00 00 0a                                      beq #0x6ac9a4
006ac988  48 10 a0 e3                                      mov r1, #0x48
006ac98c  91 35 21 e0                                      mla r1, r1, r5, r3
006ac990  59 0f 84 e2                                      add r0, r4, #0x164
006ac994  04 20 8d e2                                      add r2, sp, #4
006ac998  a9 ff ff eb                                      bl #0x6ac844
006ac99c  0c d0 8d e2                                      add sp, sp, #0xc
006ac9a0  30 80 bd e8                                      pop {r4, r5, pc}
006ac9a4  00 30 90 e5                                      ldr r3, [r0]
006ac9a8  00 10 e0 e3                                      mvn r1, #0
006ac9ac  0f e0 a0 e1                                      mov lr, pc
006ac9b0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
006ac9b4  64 31 94 e5                                      ldr r3, [r4, #0x164]
006ac9b8  f2 ff ff ea                                      b #0x6ac988

; FUNCTION 0x006ac9bc, declared_size=512, range_size=512, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIComboBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006ac9bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ac9c0  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
006ac9c4  d0 c1 9f e5                                      ldr ip, [pc, #0x1d0]
006ac9c8  7c d0 4d e2                                      sub sp, sp, #0x7c
006ac9cc  03 30 8f e0                                      add r3, pc, r3
006ac9d0  08 30 8d e5                                      str r3, [sp, #8]
006ac9d4  0c 30 93 e7                                      ldr r3, [r3, ip]
006ac9d8  c0 41 9f e5                                      ldr r4, [pc, #0x1c0]
006ac9dc  01 60 a0 e1                                      mov r6, r1
006ac9e0  00 30 93 e5                                      ldr r3, [r3]
006ac9e4  00 70 a0 e1                                      mov r7, r0
006ac9e8  0c c0 8d e5                                      str ip, [sp, #0xc]
006ac9ec  74 30 8d e5                                      str r3, [sp, #0x74]
006ac9f0  90 33 fa eb                                      bl #0x539838
006ac9f4  a8 11 9f e5                                      ldr r1, [pc, #0x1a8]
006ac9f8  00 c0 97 e5                                      ldr ip, [r7]
006ac9fc  04 40 8f e0                                      add r4, pc, r4
006aca00  5c 40 84 e2                                      add r4, r4, #0x5c
006aca04  01 10 8f e0                                      add r1, pc, r1
006aca08  04 20 a0 e1                                      mov r2, r4
006aca0c  00 30 96 e5                                      ldr r3, [r6]
006aca10  06 00 a0 e1                                      mov r0, r6
006aca14  98 50 9c e5                                      ldr r5, [ip, #0x98]
006aca18  0f e0 a0 e1                                      mov lr, pc
006aca1c  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006aca20  80 11 9f e5                                      ldr r1, [pc, #0x180]
006aca24  00 30 96 e5                                      ldr r3, [r6]
006aca28  00 80 a0 e1                                      mov r8, r0
006aca2c  04 20 a0 e1                                      mov r2, r4
006aca30  01 10 8f e0                                      add r1, pc, r1
006aca34  06 00 a0 e1                                      mov r0, r6
006aca38  0f e0 a0 e1                                      mov lr, pc
006aca3c  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006aca40  08 10 a0 e1                                      mov r1, r8
006aca44  00 20 a0 e1                                      mov r2, r0
006aca48  07 00 a0 e1                                      mov r0, r7
006aca4c  35 ff 2f e1                                      blx r5
006aca50  07 00 a0 e1                                      mov r0, r7
006aca54  00 30 97 e5                                      ldr r3, [r7]
006aca58  0f e0 a0 e1                                      mov lr, pc
006aca5c  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
006aca60  44 11 9f e5                                      ldr r1, [pc, #0x144]
006aca64  00 30 96 e5                                      ldr r3, [r6]
006aca68  06 00 a0 e1                                      mov r0, r6
006aca6c  01 10 8f e0                                      add r1, pc, r1
006aca70  0f e0 a0 e1                                      mov lr, pc
006aca74  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006aca78  00 b0 50 e2                                      subs fp, r0, #0
006aca7c  30 00 00 0a                                      beq #0x6acb44
006aca80  28 91 9f e5                                      ldr sb, [pc, #0x128]
006aca84  28 31 9f e5                                      ldr r3, [pc, #0x128]
006aca88  00 50 a0 e3                                      mov r5, #0
006aca8c  09 90 8f e0                                      add sb, pc, sb
006aca90  03 30 8f e0                                      add r3, pc, r3
006aca94  04 30 83 e2                                      add r3, r3, #4
006aca98  04 e0 89 e2                                      add lr, sb, #4
006aca9c  00 30 8d e5                                      str r3, [sp]
006acaa0  5c 40 8d e2                                      add r4, sp, #0x5c
006acaa4  14 80 8d e2                                      add r8, sp, #0x14
006acaa8  04 e0 8d e5                                      str lr, [sp, #4]
006acaac  00 10 9d e5                                      ldr r1, [sp]
006acab0  04 00 a0 e1                                      mov r0, r4
006acab4  6c 40 8d e5                                      str r4, [sp, #0x6c]
006acab8  70 40 8d e5                                      str r4, [sp, #0x70]
006acabc  9e f9 ff eb                                      bl #0x6ab13c
006acac0  04 00 a0 e1                                      mov r0, r4
006acac4  75 10 af e6                                      sxtb r1, r5
006acac8  36 25 f6 eb                                      bl #0x435fa8
006acacc  09 10 a0 e1                                      mov r1, sb
006acad0  04 20 9d e5                                      ldr r2, [sp, #4]
006acad4  04 00 a0 e1                                      mov r0, r4
006acad8  db cf f1 eb                                      bl #0x320a4c
006acadc  00 30 97 e5                                      ldr r3, [r7]
006acae0  06 10 a0 e1                                      mov r1, r6
006acae4  70 20 9d e5                                      ldr r2, [sp, #0x70]
006acae8  00 c0 96 e5                                      ldr ip, [r6]
006acaec  08 00 a0 e1                                      mov r0, r8
006acaf0  84 a0 93 e5                                      ldr sl, [r3, #0x84]
006acaf4  0f e0 a0 e1                                      mov lr, pc
006acaf8  9c f0 9c e5                                      ldr pc, [ip, #0x9c]
006acafc  07 00 a0 e1                                      mov r0, r7
006acb00  58 10 9d e5                                      ldr r1, [sp, #0x58]
006acb04  3a ff 2f e1                                      blx sl
006acb08  58 00 9d e5                                      ldr r0, [sp, #0x58]
006acb0c  08 00 50 e1                                      cmp r0, r8
006acb10  02 00 00 0a                                      beq #0x6acb20
006acb14  00 00 50 e3                                      cmp r0, #0
006acb18  00 00 00 0a                                      beq #0x6acb20
006acb1c  4b 8e f1 eb                                      bl #0x310450
006acb20  70 00 9d e5                                      ldr r0, [sp, #0x70]
006acb24  04 00 50 e1                                      cmp r0, r4
006acb28  02 00 00 0a                                      beq #0x6acb38
006acb2c  00 00 50 e3                                      cmp r0, #0
006acb30  00 00 00 0a                                      beq #0x6acb38
006acb34  45 8e f1 eb                                      bl #0x310450
006acb38  01 50 85 e2                                      add r5, r5, #1
006acb3c  05 00 5b e1                                      cmp fp, r5
006acb40  d9 ff ff 1a                                      bne #0x6acaac
006acb44  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
006acb48  00 20 97 e5                                      ldr r2, [r7]
006acb4c  00 30 96 e5                                      ldr r3, [r6]
006acb50  01 10 8f e0                                      add r1, pc, r1
006acb54  06 00 a0 e1                                      mov r0, r6
006acb58  94 40 92 e5                                      ldr r4, [r2, #0x94]
006acb5c  0f e0 a0 e1                                      mov lr, pc
006acb60  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006acb64  00 10 a0 e1                                      mov r1, r0
006acb68  07 00 a0 e1                                      mov r0, r7
006acb6c  34 ff 2f e1                                      blx r4
006acb70  08 20 9d e5                                      ldr r2, [sp, #8]
006acb74  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006acb78  01 30 92 e7                                      ldr r3, [r2, r1]
006acb7c  74 20 9d e5                                      ldr r2, [sp, #0x74]
006acb80  00 30 93 e5                                      ldr r3, [r3]
006acb84  03 00 52 e1                                      cmp r2, r3
006acb88  01 00 00 1a                                      bne #0x6acb94
006acb8c  7c d0 8d e2                                      add sp, sp, #0x7c
006acb90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006acb94  dd 85 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006acb98  c4 80 2e 00 ac 40 00 00 50 b0 2a 00 d4 20 23 00  .byte 0xc4, 0x80, 0x2e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x50, 0xb0, 0x2a, 0x00, 0xd4, 0x20, 0x23, 0x00
006acba8  b8 20 23 00 a4 1a 23 00 9c 06 22 00 f0 da 21 00  .byte 0xb8, 0x20, 0x23, 0x00, 0xa4, 0x1a, 0x23, 0x00, 0x9c, 0x06, 0x22, 0x00, 0xf0, 0xda, 0x21, 0x00
006acbb8  30 e6 23 00                                      .byte 0x30, 0xe6, 0x23, 0x00

; FUNCTION 0x006acc30, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBoxD1Ev
; demangled: glitch::gui::CGUIComboBox::~CGUIComboBox()
; decoder-mode: arm
006acc30  70 40 2d e9                                      push {r4, r5, r6, lr}
006acc34  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
006acc38  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
006acc3c  00 40 a0 e1                                      mov r4, r0
006acc40  05 50 8f e0                                      add r5, pc, r5
006acc44  03 30 95 e7                                      ldr r3, [r5, r3]
006acc48  59 0f 80 e2                                      add r0, r0, #0x164
006acc4c  e4 20 83 e2                                      add r2, r3, #0xe4
006acc50  10 10 83 e2                                      add r1, r3, #0x10
006acc54  c4 30 83 e2                                      add r3, r3, #0xc4
006acc58  00 10 84 e5                                      str r1, [r4]
006acc5c  84 31 84 e5                                      str r3, [r4, #0x184]
006acc60  88 21 84 e5                                      str r2, [r4, #0x188]
006acc64  a7 8f fa eb                                      bl #0x550b08
006acc68  40 30 9f e5                                      ldr r3, [pc, #0x40]
006acc6c  04 00 a0 e1                                      mov r0, r4
006acc70  03 10 95 e7                                      ldr r1, [r5, r3]
006acc74  04 30 91 e5                                      ldr r3, [r1, #4]
006acc78  14 c0 91 e5                                      ldr ip, [r1, #0x14]
006acc7c  18 20 91 e5                                      ldr r2, [r1, #0x18]
006acc80  00 30 84 e5                                      str r3, [r4]
006acc84  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006acc88  08 10 81 e2                                      add r1, r1, #8
006acc8c  03 c0 84 e7                                      str ip, [r4, r3]
006acc90  00 30 94 e5                                      ldr r3, [r4]
006acc94  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006acc98  03 20 84 e7                                      str r2, [r4, r3]
006acc9c  df 30 fa eb                                      bl #0x539020
006acca0  04 00 a0 e1                                      mov r0, r4
006acca4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006acca8  50 7e 2e 00 b8 0b 00 00 64 0a 00 00              .byte 0x50, 0x7e, 0x2e, 0x00, 0xb8, 0x0b, 0x00, 0x00, 0x64, 0x0a, 0x00, 0x00

; FUNCTION 0x006accb4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZTv0_n24_N6glitch3gui12CGUIComboBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUIComboBox::~CGUIComboBox()
; decoder-mode: arm
006accb4  00 30 90 e5                                      ldr r3, [r0]
006accb8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006accbc  03 00 80 e0                                      add r0, r0, r3
006accc0  da ff ff ea                                      b #0x6acc30

; FUNCTION 0x006accc4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZTv0_n12_N6glitch3gui12CGUIComboBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUIComboBox::~CGUIComboBox()
; decoder-mode: arm
006accc4  00 30 90 e5                                      ldr r3, [r0]
006accc8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006acccc  03 00 80 e0                                      add r0, r0, r3
006accd0  d6 ff ff ea                                      b #0x6acc30

; FUNCTION 0x006accd4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZN6glitch3gui12CGUIComboBoxD0Ev
; demangled: glitch::gui::CGUIComboBox::~CGUIComboBox()
; decoder-mode: arm
006accd4  10 40 2d e9                                      push {r4, lr}
006accd8  00 40 a0 e1                                      mov r4, r0
006accdc  d3 ff ff eb                                      bl #0x6acc30
006acce0  04 00 a0 e1                                      mov r0, r4
006acce4  71 85 f1 eb                                      bl #0x30e2b0
006acce8  04 00 a0 e1                                      mov r0, r4
006accec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006accf0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZTv0_n24_N6glitch3gui12CGUIComboBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUIComboBox::~CGUIComboBox()
; decoder-mode: arm
006accf0  00 30 90 e5                                      ldr r3, [r0]
006accf4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006accf8  03 00 80 e0                                      add r0, r0, r3
006accfc  f4 ff ff ea                                      b #0x6accd4

; FUNCTION 0x006acd00, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZTv0_n12_N6glitch3gui12CGUIComboBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUIComboBox::~CGUIComboBox()
; decoder-mode: arm
006acd00  00 30 90 e5                                      ldr r3, [r0]
006acd04  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006acd08  03 00 80 e0                                      add r0, r0, r3
006acd0c  f0 ff ff ea                                      b #0x6accd4

; FUNCTION 0x006acd8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZTv0_n20_N6glitch3gui12CGUIComboBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIComboBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006acd8c  00 30 90 e5                                      ldr r3, [r0]
006acd90  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006acd94  03 00 80 e0                                      add r0, r0, r3
006acd98  07 ff ff ea                                      b #0x6ac9bc

; FUNCTION 0x006acd9c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIComboBox
; alias: _ZTv0_n16_NK6glitch3gui12CGUIComboBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIComboBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006acd9c  00 30 90 e5                                      ldr r3, [r0]
006acda0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006acda4  03 00 80 e0                                      add r0, r0, r3
006acda8  df fc ff ea                                      b #0x6ac12c
