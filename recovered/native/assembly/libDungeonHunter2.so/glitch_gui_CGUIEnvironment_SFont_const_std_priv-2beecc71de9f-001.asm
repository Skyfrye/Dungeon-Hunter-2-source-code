; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053825c, declared_size=184, range_size=184, mode=arm
; class-group: glitch::gui::CGUIEnvironment::SFont const* std::priv
; alias: _ZNSt4priv13__lower_boundIPKN6glitch3gui15CGUIEnvironment5SFontES4_NS_8__less_2IS4_S4_EES8_iEET_S9_S9_RKT0_T1_T2_PT3_
; demangled: glitch::gui::CGUIEnvironment::SFont const* std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SFont const*, glitch::gui::CGUIEnvironment::SFont, std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont, glitch::gui::CGUIEnvironment::SFont>, std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont, glitch::gui::CGUIEnvironment::SFont>, int>(glitch::gui::CGUIEnvironment::SFont const*, glitch::gui::CGUIEnvironment::SFont const*, glitch::gui::CGUIEnvironment::SFont const&, std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont, glitch::gui::CGUIEnvironment::SFont>, std::priv::__less_2<glitch::gui::CGUIEnvironment::SFont, glitch::gui::CGUIEnvironment::SFont>, int*)
; decoder-mode: arm
0053825c  01 30 60 e0                                      rsb r3, r0, r1
00538260  43 31 a0 e1                                      asr r3, r3, #2
00538264  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00538268  83 71 83 e0                                      add r7, r3, r3, lsl #3
0053826c  0c d0 4d e2                                      sub sp, sp, #0xc
00538270  07 73 87 e0                                      add r7, r7, r7, lsl #6
00538274  00 90 a0 e1                                      mov sb, r0
00538278  87 71 83 e0                                      add r7, r3, r7, lsl #3
0053827c  04 20 8d e5                                      str r2, [sp, #4]
00538280  87 77 87 e0                                      add r7, r7, r7, lsl #15
00538284  1c b0 a0 e3                                      mov fp, #0x1c
00538288  87 71 83 e0                                      add r7, r3, r7, lsl #3
0053828c  00 70 67 e2                                      rsb r7, r7, #0
00538290  00 00 57 e3                                      cmp r7, #0
00538294  1b 00 00 da                                      ble #0x538308
00538298  04 30 9d e5                                      ldr r3, [sp, #4]
0053829c  14 a0 93 e5                                      ldr sl, [r3, #0x14]
005382a0  10 80 93 e5                                      ldr r8, [r3, #0x10]
005382a4  08 80 6a e0                                      rsb r8, sl, r8
005382a8  03 00 00 ea                                      b #0x5382bc
005382ac  08 00 56 e1                                      cmp r6, r8
005382b0  0f 00 00 ba                                      blt #0x5382f4
005382b4  00 70 54 e2                                      subs r7, r4, #0
005382b8  12 00 00 0a                                      beq #0x538308
005382bc  c7 40 a0 e1                                      asr r4, r7, #1
005382c0  9b 94 25 e0                                      mla r5, fp, r4, sb
005382c4  0a 10 a0 e1                                      mov r1, sl
005382c8  14 30 95 e5                                      ldr r3, [r5, #0x14]
005382cc  10 60 95 e5                                      ldr r6, [r5, #0x10]
005382d0  03 00 a0 e1                                      mov r0, r3
005382d4  06 60 63 e0                                      rsb r6, r3, r6
005382d8  06 00 58 e1                                      cmp r8, r6
005382dc  08 20 a0 b1                                      movlt r2, r8
005382e0  06 20 a0 a1                                      movge r2, r6
005382e4  bd 58 f7 eb                                      bl #0x30e5e0
005382e8  00 00 50 e3                                      cmp r0, #0
005382ec  ee ff ff 0a                                      beq #0x5382ac
005382f0  ef ff ff aa                                      bge #0x5382b4
005382f4  01 70 47 e2                                      sub r7, r7, #1
005382f8  07 70 64 e0                                      rsb r7, r4, r7
005382fc  00 00 57 e3                                      cmp r7, #0
00538300  1c 90 85 e2                                      add sb, r5, #0x1c
00538304  e3 ff ff ca                                      bgt #0x538298
00538308  09 00 a0 e1                                      mov r0, sb
0053830c  0c d0 8d e2                                      add sp, sp, #0xc
00538310  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
