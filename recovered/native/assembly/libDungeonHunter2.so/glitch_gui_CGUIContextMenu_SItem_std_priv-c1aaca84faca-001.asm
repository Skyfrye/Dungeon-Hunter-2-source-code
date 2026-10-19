; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ad818, declared_size=180, range_size=180, mode=arm
; class-group: glitch::gui::CGUIContextMenu::SItem* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch3gui15CGUIContextMenu5SItemES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUIContextMenu::SItem* std::priv::__ucopy<glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem*, int>(glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006ad818  01 30 60 e0                                      rsb r3, r0, r1
006ad81c  c3 32 a0 e1                                      asr r3, r3, #5
006ad820  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ad824  03 71 83 e0                                      add r7, r3, r3, lsl #2
006ad828  00 50 a0 e1                                      mov r5, r0
006ad82c  07 72 87 e0                                      add r7, r7, r7, lsl #4
006ad830  02 80 a0 e1                                      mov r8, r2
006ad834  07 74 87 e0                                      add r7, r7, r7, lsl #8
006ad838  07 78 87 e0                                      add r7, r7, r7, lsl #16
006ad83c  87 70 83 e0                                      add r7, r3, r7, lsl #1
006ad840  00 00 57 e3                                      cmp r7, #0
006ad844  07 60 a0 c1                                      movgt r6, r7
006ad848  02 40 a0 c1                                      movgt r4, r2
006ad84c  1c 00 00 da                                      ble #0x6ad8c4
006ad850  40 40 84 e5                                      str r4, [r4, #0x40]
006ad854  44 40 84 e5                                      str r4, [r4, #0x44]
006ad858  04 00 a0 e1                                      mov r0, r4
006ad85c  44 10 95 e5                                      ldr r1, [r5, #0x44]
006ad860  40 20 95 e5                                      ldr r2, [r5, #0x40]
006ad864  70 e1 f1 eb                                      bl #0x325e2c
006ad868  48 30 d5 e5                                      ldrb r3, [r5, #0x48]
006ad86c  01 60 56 e2                                      subs r6, r6, #1
006ad870  48 30 c4 e5                                      strb r3, [r4, #0x48]
006ad874  49 30 d5 e5                                      ldrb r3, [r5, #0x49]
006ad878  49 30 c4 e5                                      strb r3, [r4, #0x49]
006ad87c  4a 30 d5 e5                                      ldrb r3, [r5, #0x4a]
006ad880  4a 30 c4 e5                                      strb r3, [r4, #0x4a]
006ad884  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
006ad888  4c 30 84 e5                                      str r3, [r4, #0x4c]
006ad88c  50 30 95 e5                                      ldr r3, [r5, #0x50]
006ad890  50 30 84 e5                                      str r3, [r4, #0x50]
006ad894  54 30 95 e5                                      ldr r3, [r5, #0x54]
006ad898  54 30 84 e5                                      str r3, [r4, #0x54]
006ad89c  58 30 95 e5                                      ldr r3, [r5, #0x58]
006ad8a0  58 30 84 e5                                      str r3, [r4, #0x58]
006ad8a4  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
006ad8a8  60 50 85 e2                                      add r5, r5, #0x60
006ad8ac  5c 30 84 e5                                      str r3, [r4, #0x5c]
006ad8b0  60 40 84 e2                                      add r4, r4, #0x60
006ad8b4  e5 ff ff 1a                                      bne #0x6ad850
006ad8b8  60 00 a0 e3                                      mov r0, #0x60
006ad8bc  90 87 20 e0                                      mla r0, r0, r7, r8
006ad8c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006ad8c4  02 00 a0 e1                                      mov r0, r2
006ad8c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006ad938, declared_size=176, range_size=176, mode=arm
; class-group: glitch::gui::CGUIContextMenu::SItem* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch3gui15CGUIContextMenu5SItemES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUIContextMenu::SItem* std::priv::__copy<glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem*, int>(glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006ad938  01 30 60 e0                                      rsb r3, r0, r1
006ad93c  c3 32 a0 e1                                      asr r3, r3, #5
006ad940  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ad944  03 81 83 e0                                      add r8, r3, r3, lsl #2
006ad948  00 40 a0 e1                                      mov r4, r0
006ad94c  08 82 88 e0                                      add r8, r8, r8, lsl #4
006ad950  02 70 a0 e1                                      mov r7, r2
006ad954  08 84 88 e0                                      add r8, r8, r8, lsl #8
006ad958  08 88 88 e0                                      add r8, r8, r8, lsl #16
006ad95c  88 80 83 e0                                      add r8, r3, r8, lsl #1
006ad960  00 00 58 e3                                      cmp r8, #0
006ad964  1d 00 00 da                                      ble #0x6ad9e0
006ad968  08 60 a0 e1                                      mov r6, r8
006ad96c  02 50 a0 e1                                      mov r5, r2
006ad970  04 00 55 e1                                      cmp r5, r4
006ad974  05 00 a0 e1                                      mov r0, r5
006ad978  02 00 00 0a                                      beq #0x6ad988
006ad97c  44 10 94 e5                                      ldr r1, [r4, #0x44]
006ad980  40 20 94 e5                                      ldr r2, [r4, #0x40]
006ad984  05 d6 f1 eb                                      bl #0x3231a0
006ad988  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
006ad98c  01 60 56 e2                                      subs r6, r6, #1
006ad990  48 30 c5 e5                                      strb r3, [r5, #0x48]
006ad994  49 30 d4 e5                                      ldrb r3, [r4, #0x49]
006ad998  49 30 c5 e5                                      strb r3, [r5, #0x49]
006ad99c  4a 30 d4 e5                                      ldrb r3, [r4, #0x4a]
006ad9a0  4a 30 c5 e5                                      strb r3, [r5, #0x4a]
006ad9a4  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
006ad9a8  4c 30 85 e5                                      str r3, [r5, #0x4c]
006ad9ac  50 30 94 e5                                      ldr r3, [r4, #0x50]
006ad9b0  50 30 85 e5                                      str r3, [r5, #0x50]
006ad9b4  54 30 94 e5                                      ldr r3, [r4, #0x54]
006ad9b8  54 30 85 e5                                      str r3, [r5, #0x54]
006ad9bc  58 30 94 e5                                      ldr r3, [r4, #0x58]
006ad9c0  58 30 85 e5                                      str r3, [r5, #0x58]
006ad9c4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006ad9c8  60 40 84 e2                                      add r4, r4, #0x60
006ad9cc  5c 30 85 e5                                      str r3, [r5, #0x5c]
006ad9d0  60 50 85 e2                                      add r5, r5, #0x60
006ad9d4  e5 ff ff 1a                                      bne #0x6ad970
006ad9d8  60 30 a0 e3                                      mov r3, #0x60
006ad9dc  93 78 27 e0                                      mla r7, r3, r8, r7
006ad9e0  07 00 a0 e1                                      mov r0, r7
006ad9e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
