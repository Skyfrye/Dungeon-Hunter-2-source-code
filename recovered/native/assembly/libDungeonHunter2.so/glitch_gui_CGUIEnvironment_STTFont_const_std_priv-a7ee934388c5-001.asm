; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00539ddc, declared_size=96, range_size=96, mode=arm
; class-group: glitch::gui::CGUIEnvironment::STTFont const* std::priv
; alias: _ZNSt4priv13__lower_boundIPKN6glitch3gui15CGUIEnvironment7STTFontES4_NS_8__less_2IS4_S4_EES8_iEET_S9_S9_RKT0_T1_T2_PT3_
; demangled: glitch::gui::CGUIEnvironment::STTFont const* std::priv::__lower_bound<glitch::gui::CGUIEnvironment::STTFont const*, glitch::gui::CGUIEnvironment::STTFont, std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont, glitch::gui::CGUIEnvironment::STTFont>, std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont, glitch::gui::CGUIEnvironment::STTFont>, int>(glitch::gui::CGUIEnvironment::STTFont const*, glitch::gui::CGUIEnvironment::STTFont const*, glitch::gui::CGUIEnvironment::STTFont const&, std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont, glitch::gui::CGUIEnvironment::STTFont>, std::priv::__less_2<glitch::gui::CGUIEnvironment::STTFont, glitch::gui::CGUIEnvironment::STTFont>, int*)
; decoder-mode: arm
00539ddc  01 10 60 e0                                      rsb r1, r0, r1
00539de0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00539de4  c1 62 a0 e1                                      asr r6, r1, #5
00539de8  00 00 56 e3                                      cmp r6, #0
00539dec  00 40 a0 e1                                      mov r4, r0
00539df0  02 80 a0 e1                                      mov r8, r2
00539df4  02 00 00 ca                                      bgt #0x539e04
00539df8  0d 00 00 ea                                      b #0x539e34
00539dfc  00 60 55 e2                                      subs r6, r5, #0
00539e00  0b 00 00 0a                                      beq #0x539e34
00539e04  c6 50 a0 e1                                      asr r5, r6, #1
00539e08  08 10 a0 e1                                      mov r1, r8
00539e0c  85 72 84 e0                                      add r7, r4, r5, lsl #5
00539e10  07 00 a0 e1                                      mov r0, r7
00539e14  ca ff ff eb                                      bl #0x539d44
00539e18  00 00 50 e3                                      cmp r0, #0
00539e1c  f6 ff ff 0a                                      beq #0x539dfc
00539e20  01 60 46 e2                                      sub r6, r6, #1
00539e24  06 60 65 e0                                      rsb r6, r5, r6
00539e28  00 00 56 e3                                      cmp r6, #0
00539e2c  20 40 87 e2                                      add r4, r7, #0x20
00539e30  f3 ff ff ca                                      bgt #0x539e04
00539e34  04 00 a0 e1                                      mov r0, r4
00539e38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
