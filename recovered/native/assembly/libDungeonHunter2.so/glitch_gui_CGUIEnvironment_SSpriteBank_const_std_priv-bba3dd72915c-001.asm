; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005383b8, declared_size=184, range_size=184, mode=arm
; class-group: glitch::gui::CGUIEnvironment::SSpriteBank const* std::priv
; alias: _ZNSt4priv13__lower_boundIPKN6glitch3gui15CGUIEnvironment11SSpriteBankES4_NS_8__less_2IS4_S4_EES8_iEET_S9_S9_RKT0_T1_T2_PT3_
; demangled: glitch::gui::CGUIEnvironment::SSpriteBank const* std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SSpriteBank const*, glitch::gui::CGUIEnvironment::SSpriteBank, std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::gui::CGUIEnvironment::SSpriteBank>, std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::gui::CGUIEnvironment::SSpriteBank>, int>(glitch::gui::CGUIEnvironment::SSpriteBank const*, glitch::gui::CGUIEnvironment::SSpriteBank const*, glitch::gui::CGUIEnvironment::SSpriteBank const&, std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::gui::CGUIEnvironment::SSpriteBank>, std::priv::__less_2<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::gui::CGUIEnvironment::SSpriteBank>, int*)
; decoder-mode: arm
005383b8  01 30 60 e0                                      rsb r3, r0, r1
005383bc  43 31 a0 e1                                      asr r3, r3, #2
005383c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005383c4  83 71 83 e0                                      add r7, r3, r3, lsl #3
005383c8  0c d0 4d e2                                      sub sp, sp, #0xc
005383cc  07 73 87 e0                                      add r7, r7, r7, lsl #6
005383d0  00 90 a0 e1                                      mov sb, r0
005383d4  87 71 83 e0                                      add r7, r3, r7, lsl #3
005383d8  04 20 8d e5                                      str r2, [sp, #4]
005383dc  87 77 87 e0                                      add r7, r7, r7, lsl #15
005383e0  1c b0 a0 e3                                      mov fp, #0x1c
005383e4  87 71 83 e0                                      add r7, r3, r7, lsl #3
005383e8  00 70 67 e2                                      rsb r7, r7, #0
005383ec  00 00 57 e3                                      cmp r7, #0
005383f0  1b 00 00 da                                      ble #0x538464
005383f4  04 30 9d e5                                      ldr r3, [sp, #4]
005383f8  14 a0 93 e5                                      ldr sl, [r3, #0x14]
005383fc  10 80 93 e5                                      ldr r8, [r3, #0x10]
00538400  08 80 6a e0                                      rsb r8, sl, r8
00538404  03 00 00 ea                                      b #0x538418
00538408  08 00 56 e1                                      cmp r6, r8
0053840c  0f 00 00 ba                                      blt #0x538450
00538410  00 70 54 e2                                      subs r7, r4, #0
00538414  12 00 00 0a                                      beq #0x538464
00538418  c7 40 a0 e1                                      asr r4, r7, #1
0053841c  9b 94 25 e0                                      mla r5, fp, r4, sb
00538420  0a 10 a0 e1                                      mov r1, sl
00538424  14 30 95 e5                                      ldr r3, [r5, #0x14]
00538428  10 60 95 e5                                      ldr r6, [r5, #0x10]
0053842c  03 00 a0 e1                                      mov r0, r3
00538430  06 60 63 e0                                      rsb r6, r3, r6
00538434  06 00 58 e1                                      cmp r8, r6
00538438  08 20 a0 b1                                      movlt r2, r8
0053843c  06 20 a0 a1                                      movge r2, r6
00538440  66 58 f7 eb                                      bl #0x30e5e0
00538444  00 00 50 e3                                      cmp r0, #0
00538448  ee ff ff 0a                                      beq #0x538408
0053844c  ef ff ff aa                                      bge #0x538410
00538450  01 70 47 e2                                      sub r7, r7, #1
00538454  07 70 64 e0                                      rsb r7, r4, r7
00538458  00 00 57 e3                                      cmp r7, #0
0053845c  1c 90 85 e2                                      add sb, r5, #0x1c
00538460  e3 ff ff ca                                      bgt #0x5383f4
00538464  09 00 a0 e1                                      mov r0, sb
00538468  0c d0 8d e2                                      add sp, sp, #0xc
0053846c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
