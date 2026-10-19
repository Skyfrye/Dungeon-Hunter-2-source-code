; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00536248, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUIEnvironment::SFont* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch3gui15CGUIEnvironment5SFontES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUIEnvironment::SFont* std::priv::__ucopy<glitch::gui::CGUIEnvironment::SFont*, glitch::gui::CGUIEnvironment::SFont*, int>(glitch::gui::CGUIEnvironment::SFont*, glitch::gui::CGUIEnvironment::SFont*, glitch::gui::CGUIEnvironment::SFont*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00536248  01 30 60 e0                                      rsb r3, r0, r1
0053624c  43 31 a0 e1                                      asr r3, r3, #2
00536250  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00536254  83 71 83 e0                                      add r7, r3, r3, lsl #3
00536258  00 50 a0 e1                                      mov r5, r0
0053625c  07 73 87 e0                                      add r7, r7, r7, lsl #6
00536260  02 80 a0 e1                                      mov r8, r2
00536264  87 71 83 e0                                      add r7, r3, r7, lsl #3
00536268  87 77 87 e0                                      add r7, r7, r7, lsl #15
0053626c  87 71 83 e0                                      add r7, r3, r7, lsl #3
00536270  00 70 67 e2                                      rsb r7, r7, #0
00536274  00 00 57 e3                                      cmp r7, #0
00536278  07 60 a0 c1                                      movgt r6, r7
0053627c  02 40 a0 c1                                      movgt r4, r2
00536280  0e 00 00 da                                      ble #0x5362c0
00536284  10 40 84 e5                                      str r4, [r4, #0x10]
00536288  14 40 84 e5                                      str r4, [r4, #0x14]
0053628c  04 00 a0 e1                                      mov r0, r4
00536290  14 10 95 e5                                      ldr r1, [r5, #0x14]
00536294  10 20 95 e5                                      ldr r2, [r5, #0x10]
00536298  55 bf f7 eb                                      bl #0x325ff4
0053629c  18 30 95 e5                                      ldr r3, [r5, #0x18]
005362a0  01 60 56 e2                                      subs r6, r6, #1
005362a4  1c 50 85 e2                                      add r5, r5, #0x1c
005362a8  18 30 84 e5                                      str r3, [r4, #0x18]
005362ac  1c 40 84 e2                                      add r4, r4, #0x1c
005362b0  f3 ff ff 1a                                      bne #0x536284
005362b4  1c 00 a0 e3                                      mov r0, #0x1c
005362b8  90 87 20 e0                                      mla r0, r0, r7, r8
005362bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005362c0  02 00 a0 e1                                      mov r0, r2
005362c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
