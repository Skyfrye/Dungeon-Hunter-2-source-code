; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00539d44, declared_size=152, range_size=152, mode=arm
; class-group: glitch::gui::CGUIEnvironment::STTFont
; alias: _ZNK6glitch3gui15CGUIEnvironment7STTFontltERKS2_
; demangled: glitch::gui::CGUIEnvironment::STTFont::operator<(glitch::gui::CGUIEnvironment::STTFont const&) const
; decoder-mode: arm
00539d44  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00539d48  14 60 90 e5                                      ldr r6, [r0, #0x14]
00539d4c  10 40 90 e5                                      ldr r4, [r0, #0x10]
00539d50  14 50 91 e5                                      ldr r5, [r1, #0x14]
00539d54  10 a0 91 e5                                      ldr sl, [r1, #0x10]
00539d58  04 40 66 e0                                      rsb r4, r6, r4
00539d5c  00 80 a0 e1                                      mov r8, r0
00539d60  0a a0 65 e0                                      rsb sl, r5, sl
00539d64  0a 00 54 e1                                      cmp r4, sl
00539d68  01 70 a0 e1                                      mov r7, r1
00539d6c  0e 00 00 0a                                      beq #0x539dac
00539d70  04 00 5a e1                                      cmp sl, r4
00539d74  0a 20 a0 b1                                      movlt r2, sl
00539d78  04 20 a0 a1                                      movge r2, r4
00539d7c  06 00 a0 e1                                      mov r0, r6
00539d80  05 10 a0 e1                                      mov r1, r5
00539d84  15 52 f7 eb                                      bl #0x30e5e0
00539d88  00 00 50 e3                                      cmp r0, #0
00539d8c  04 00 00 1a                                      bne #0x539da4
00539d90  0a 00 54 e1                                      cmp r4, sl
00539d94  00 00 e0 b3                                      mvnlt r0, #0
00539d98  01 00 00 ba                                      blt #0x539da4
00539d9c  00 00 a0 d3                                      movle r0, #0
00539da0  01 00 a0 c3                                      movgt r0, #1
00539da4  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00539da8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00539dac  06 00 a0 e1                                      mov r0, r6
00539db0  05 10 a0 e1                                      mov r1, r5
00539db4  04 20 a0 e1                                      mov r2, r4
00539db8  08 52 f7 eb                                      bl #0x30e5e0
00539dbc  00 00 50 e3                                      cmp r0, #0
00539dc0  ea ff ff 1a                                      bne #0x539d70
00539dc4  18 00 98 e5                                      ldr r0, [r8, #0x18]
00539dc8  18 30 97 e5                                      ldr r3, [r7, #0x18]
00539dcc  03 00 50 e1                                      cmp r0, r3
00539dd0  00 00 a0 23                                      movhs r0, #0
00539dd4  01 00 a0 33                                      movlo r0, #1
00539dd8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
