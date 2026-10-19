; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00535e68, declared_size=104, range_size=104, mode=arm
; class-group: glitch::gui::CGUIEnvironment::STTFont* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch3gui15CGUIEnvironment7STTFontES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUIEnvironment::STTFont* std::priv::__copy<glitch::gui::CGUIEnvironment::STTFont*, glitch::gui::CGUIEnvironment::STTFont*, int>(glitch::gui::CGUIEnvironment::STTFont*, glitch::gui::CGUIEnvironment::STTFont*, glitch::gui::CGUIEnvironment::STTFont*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00535e68  01 10 60 e0                                      rsb r1, r0, r1
00535e6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00535e70  c1 82 a0 e1                                      asr r8, r1, #5
00535e74  00 00 58 e3                                      cmp r8, #0
00535e78  00 40 a0 e1                                      mov r4, r0
00535e7c  02 70 a0 e1                                      mov r7, r2
00535e80  10 00 00 da                                      ble #0x535ec8
00535e84  08 60 a0 e1                                      mov r6, r8
00535e88  02 50 a0 e1                                      mov r5, r2
00535e8c  04 00 55 e1                                      cmp r5, r4
00535e90  05 00 a0 e1                                      mov r0, r5
00535e94  02 00 00 0a                                      beq #0x535ea4
00535e98  14 10 94 e5                                      ldr r1, [r4, #0x14]
00535e9c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00535ea0  38 ab f7 eb                                      bl #0x320b88
00535ea4  18 30 94 e5                                      ldr r3, [r4, #0x18]
00535ea8  01 60 56 e2                                      subs r6, r6, #1
00535eac  18 30 85 e5                                      str r3, [r5, #0x18]
00535eb0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00535eb4  20 40 84 e2                                      add r4, r4, #0x20
00535eb8  1c 30 85 e5                                      str r3, [r5, #0x1c]
00535ebc  20 50 85 e2                                      add r5, r5, #0x20
00535ec0  f1 ff ff 1a                                      bne #0x535e8c
00535ec4  88 72 87 e0                                      add r7, r7, r8, lsl #5
00535ec8  07 00 a0 e1                                      mov r0, r7
00535ecc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00536174, declared_size=108, range_size=108, mode=arm
; class-group: glitch::gui::CGUIEnvironment::STTFont* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch3gui15CGUIEnvironment7STTFontES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUIEnvironment::STTFont* std::priv::__ucopy<glitch::gui::CGUIEnvironment::STTFont*, glitch::gui::CGUIEnvironment::STTFont*, int>(glitch::gui::CGUIEnvironment::STTFont*, glitch::gui::CGUIEnvironment::STTFont*, glitch::gui::CGUIEnvironment::STTFont*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00536174  01 10 60 e0                                      rsb r1, r0, r1
00536178  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0053617c  c1 72 a0 e1                                      asr r7, r1, #5
00536180  00 00 57 e3                                      cmp r7, #0
00536184  00 50 a0 e1                                      mov r5, r0
00536188  02 80 a0 e1                                      mov r8, r2
0053618c  07 60 a0 c1                                      movgt r6, r7
00536190  02 40 a0 c1                                      movgt r4, r2
00536194  0f 00 00 da                                      ble #0x5361d8
00536198  10 40 84 e5                                      str r4, [r4, #0x10]
0053619c  14 40 84 e5                                      str r4, [r4, #0x14]
005361a0  04 00 a0 e1                                      mov r0, r4
005361a4  14 10 95 e5                                      ldr r1, [r5, #0x14]
005361a8  10 20 95 e5                                      ldr r2, [r5, #0x10]
005361ac  90 bf f7 eb                                      bl #0x325ff4
005361b0  18 30 95 e5                                      ldr r3, [r5, #0x18]
005361b4  01 60 56 e2                                      subs r6, r6, #1
005361b8  18 30 84 e5                                      str r3, [r4, #0x18]
005361bc  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
005361c0  20 50 85 e2                                      add r5, r5, #0x20
005361c4  1c 30 84 e5                                      str r3, [r4, #0x1c]
005361c8  20 40 84 e2                                      add r4, r4, #0x20
005361cc  f1 ff ff 1a                                      bne #0x536198
005361d0  87 02 88 e0                                      add r0, r8, r7, lsl #5
005361d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005361d8  02 00 a0 e1                                      mov r0, r2
005361dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
