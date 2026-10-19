; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00538514, declared_size=184, range_size=184, mode=arm
; class-group: glitch::gui::CGUIEnvironment::SFace const* std::priv
; alias: _ZNSt4priv13__lower_boundIPKN6glitch3gui15CGUIEnvironment5SFaceES4_NS_8__less_2IS4_S4_EES8_iEET_S9_S9_RKT0_T1_T2_PT3_
; demangled: glitch::gui::CGUIEnvironment::SFace const* std::priv::__lower_bound<glitch::gui::CGUIEnvironment::SFace const*, glitch::gui::CGUIEnvironment::SFace, std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace, glitch::gui::CGUIEnvironment::SFace>, std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace, glitch::gui::CGUIEnvironment::SFace>, int>(glitch::gui::CGUIEnvironment::SFace const*, glitch::gui::CGUIEnvironment::SFace const*, glitch::gui::CGUIEnvironment::SFace const&, std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace, glitch::gui::CGUIEnvironment::SFace>, std::priv::__less_2<glitch::gui::CGUIEnvironment::SFace, glitch::gui::CGUIEnvironment::SFace>, int*)
; decoder-mode: arm
00538514  01 30 60 e0                                      rsb r3, r0, r1
00538518  43 31 a0 e1                                      asr r3, r3, #2
0053851c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00538520  83 71 83 e0                                      add r7, r3, r3, lsl #3
00538524  0c d0 4d e2                                      sub sp, sp, #0xc
00538528  07 73 87 e0                                      add r7, r7, r7, lsl #6
0053852c  00 90 a0 e1                                      mov sb, r0
00538530  87 71 83 e0                                      add r7, r3, r7, lsl #3
00538534  04 20 8d e5                                      str r2, [sp, #4]
00538538  87 77 87 e0                                      add r7, r7, r7, lsl #15
0053853c  1c b0 a0 e3                                      mov fp, #0x1c
00538540  87 71 83 e0                                      add r7, r3, r7, lsl #3
00538544  00 70 67 e2                                      rsb r7, r7, #0
00538548  00 00 57 e3                                      cmp r7, #0
0053854c  1b 00 00 da                                      ble #0x5385c0
00538550  04 30 9d e5                                      ldr r3, [sp, #4]
00538554  14 a0 93 e5                                      ldr sl, [r3, #0x14]
00538558  10 80 93 e5                                      ldr r8, [r3, #0x10]
0053855c  08 80 6a e0                                      rsb r8, sl, r8
00538560  03 00 00 ea                                      b #0x538574
00538564  08 00 56 e1                                      cmp r6, r8
00538568  0f 00 00 ba                                      blt #0x5385ac
0053856c  00 70 54 e2                                      subs r7, r4, #0
00538570  12 00 00 0a                                      beq #0x5385c0
00538574  c7 40 a0 e1                                      asr r4, r7, #1
00538578  9b 94 25 e0                                      mla r5, fp, r4, sb
0053857c  0a 10 a0 e1                                      mov r1, sl
00538580  14 30 95 e5                                      ldr r3, [r5, #0x14]
00538584  10 60 95 e5                                      ldr r6, [r5, #0x10]
00538588  03 00 a0 e1                                      mov r0, r3
0053858c  06 60 63 e0                                      rsb r6, r3, r6
00538590  06 00 58 e1                                      cmp r8, r6
00538594  08 20 a0 b1                                      movlt r2, r8
00538598  06 20 a0 a1                                      movge r2, r6
0053859c  0f 58 f7 eb                                      bl #0x30e5e0
005385a0  00 00 50 e3                                      cmp r0, #0
005385a4  ee ff ff 0a                                      beq #0x538564
005385a8  ef ff ff aa                                      bge #0x53856c
005385ac  01 70 47 e2                                      sub r7, r7, #1
005385b0  07 70 64 e0                                      rsb r7, r4, r7
005385b4  00 00 57 e3                                      cmp r7, #0
005385b8  1c 90 85 e2                                      add sb, r5, #0x1c
005385bc  e3 ff ff ca                                      bgt #0x538550
005385c0  09 00 a0 e1                                      mov r0, sb
005385c4  0c d0 8d e2                                      add sp, sp, #0xc
005385c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
