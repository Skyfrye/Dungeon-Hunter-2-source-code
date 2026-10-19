; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00535ed0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::CGUIEnvironment::SFace* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch3gui15CGUIEnvironment5SFaceES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUIEnvironment::SFace* std::priv::__copy<glitch::gui::CGUIEnvironment::SFace*, glitch::gui::CGUIEnvironment::SFace*, int>(glitch::gui::CGUIEnvironment::SFace*, glitch::gui::CGUIEnvironment::SFace*, glitch::gui::CGUIEnvironment::SFace*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00535ed0  01 30 60 e0                                      rsb r3, r0, r1
00535ed4  43 31 a0 e1                                      asr r3, r3, #2
00535ed8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00535edc  83 81 83 e0                                      add r8, r3, r3, lsl #3
00535ee0  00 40 a0 e1                                      mov r4, r0
00535ee4  08 83 88 e0                                      add r8, r8, r8, lsl #6
00535ee8  02 70 a0 e1                                      mov r7, r2
00535eec  88 81 83 e0                                      add r8, r3, r8, lsl #3
00535ef0  88 87 88 e0                                      add r8, r8, r8, lsl #15
00535ef4  88 81 83 e0                                      add r8, r3, r8, lsl #3
00535ef8  00 80 68 e2                                      rsb r8, r8, #0
00535efc  00 00 58 e3                                      cmp r8, #0
00535f00  0f 00 00 da                                      ble #0x535f44
00535f04  02 50 a0 e1                                      mov r5, r2
00535f08  08 60 a0 e1                                      mov r6, r8
00535f0c  04 00 55 e1                                      cmp r5, r4
00535f10  05 00 a0 e1                                      mov r0, r5
00535f14  02 00 00 0a                                      beq #0x535f24
00535f18  14 10 94 e5                                      ldr r1, [r4, #0x14]
00535f1c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00535f20  18 ab f7 eb                                      bl #0x320b88
00535f24  18 30 94 e5                                      ldr r3, [r4, #0x18]
00535f28  01 60 56 e2                                      subs r6, r6, #1
00535f2c  1c 40 84 e2                                      add r4, r4, #0x1c
00535f30  18 30 85 e5                                      str r3, [r5, #0x18]
00535f34  1c 50 85 e2                                      add r5, r5, #0x1c
00535f38  f3 ff ff 1a                                      bne #0x535f0c
00535f3c  1c 30 a0 e3                                      mov r3, #0x1c
00535f40  93 78 27 e0                                      mla r7, r3, r8, r7
00535f44  07 00 a0 e1                                      mov r0, r7
00535f48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0053609c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUIEnvironment::SFace* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch3gui15CGUIEnvironment5SFaceES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUIEnvironment::SFace* std::priv::__ucopy<glitch::gui::CGUIEnvironment::SFace*, glitch::gui::CGUIEnvironment::SFace*, int>(glitch::gui::CGUIEnvironment::SFace*, glitch::gui::CGUIEnvironment::SFace*, glitch::gui::CGUIEnvironment::SFace*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0053609c  01 30 60 e0                                      rsb r3, r0, r1
005360a0  43 31 a0 e1                                      asr r3, r3, #2
005360a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005360a8  83 71 83 e0                                      add r7, r3, r3, lsl #3
005360ac  00 50 a0 e1                                      mov r5, r0
005360b0  07 73 87 e0                                      add r7, r7, r7, lsl #6
005360b4  02 80 a0 e1                                      mov r8, r2
005360b8  87 71 83 e0                                      add r7, r3, r7, lsl #3
005360bc  87 77 87 e0                                      add r7, r7, r7, lsl #15
005360c0  87 71 83 e0                                      add r7, r3, r7, lsl #3
005360c4  00 70 67 e2                                      rsb r7, r7, #0
005360c8  00 00 57 e3                                      cmp r7, #0
005360cc  07 60 a0 c1                                      movgt r6, r7
005360d0  02 40 a0 c1                                      movgt r4, r2
005360d4  0e 00 00 da                                      ble #0x536114
005360d8  10 40 84 e5                                      str r4, [r4, #0x10]
005360dc  14 40 84 e5                                      str r4, [r4, #0x14]
005360e0  04 00 a0 e1                                      mov r0, r4
005360e4  14 10 95 e5                                      ldr r1, [r5, #0x14]
005360e8  10 20 95 e5                                      ldr r2, [r5, #0x10]
005360ec  c0 bf f7 eb                                      bl #0x325ff4
005360f0  18 30 95 e5                                      ldr r3, [r5, #0x18]
005360f4  01 60 56 e2                                      subs r6, r6, #1
005360f8  1c 50 85 e2                                      add r5, r5, #0x1c
005360fc  18 30 84 e5                                      str r3, [r4, #0x18]
00536100  1c 40 84 e2                                      add r4, r4, #0x1c
00536104  f3 ff ff 1a                                      bne #0x5360d8
00536108  1c 00 a0 e3                                      mov r0, #0x1c
0053610c  90 87 20 e0                                      mla r0, r0, r7, r8
00536110  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00536114  02 00 a0 e1                                      mov r0, r2
00536118  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
