; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00384df8, declared_size=56, range_size=56, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::ITexture>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video8ITextureEEaSERKS4_
; demangled: boost::intrusive_ptr<glitch::video::ITexture>::operator=(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
00384df8  10 40 2d e9                                      push {r4, lr}
00384dfc  00 30 91 e5                                      ldr r3, [r1]
00384e00  00 40 a0 e1                                      mov r4, r0
00384e04  00 00 53 e3                                      cmp r3, #0
00384e08  04 20 93 15                                      ldrne r2, [r3, #4]
00384e0c  01 20 82 12                                      addne r2, r2, #1
00384e10  04 20 83 15                                      strne r2, [r3, #4]
00384e14  00 00 90 e5                                      ldr r0, [r0]
00384e18  00 30 84 e5                                      str r3, [r4]
00384e1c  00 00 50 e3                                      cmp r0, #0
00384e20  00 00 00 0a                                      beq #0x384e28
00384e24  d6 61 fe eb                                      bl #0x31d584
00384e28  04 00 a0 e1                                      mov r0, r4
00384e2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0041742c, declared_size=32, range_size=32, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::ITexture>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video8ITextureEED1Ev
; demangled: boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr()
; decoder-mode: arm
0041742c  10 40 2d e9                                      push {r4, lr}
00417430  00 40 a0 e1                                      mov r4, r0
00417434  00 00 90 e5                                      ldr r0, [r0]
00417438  00 00 50 e3                                      cmp r0, #0
0041743c  00 00 00 0a                                      beq #0x417444
00417440  4f 18 fc eb                                      bl #0x31d584
00417444  04 00 a0 e1                                      mov r0, r4
00417448  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00417974, declared_size=76, range_size=76, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::ITexture>
; alias: _ZN5boost13intrusive_ptrIN6glitch5video8ITextureEEaSERKS4_.clone.1
; demangled: boost::intrusive_ptr<glitch::video::ITexture>::operator=(boost::intrusive_ptr<glitch::video::ITexture> const&) [clone .clone.1]
; decoder-mode: arm
00417974  70 40 2d e9                                      push {r4, r5, r6, lr}
00417978  00 30 90 e5                                      ldr r3, [r0]
0041797c  34 40 9f e5                                      ldr r4, [pc, #0x34]
00417980  34 50 9f e5                                      ldr r5, [pc, #0x34]
00417984  00 00 53 e3                                      cmp r3, #0
00417988  04 20 93 15                                      ldrne r2, [r3, #4]
0041798c  04 40 8f e0                                      add r4, pc, r4
00417990  01 20 82 12                                      addne r2, r2, #1
00417994  04 20 83 15                                      strne r2, [r3, #4]
00417998  05 20 94 e7                                      ldr r2, [r4, r5]
0041799c  00 00 92 e5                                      ldr r0, [r2]
004179a0  00 30 82 e5                                      str r3, [r2]
004179a4  00 00 50 e3                                      cmp r0, #0
004179a8  00 00 00 0a                                      beq #0x4179b0
004179ac  f4 16 fc eb                                      bl #0x31d584
004179b0  05 00 94 e7                                      ldr r0, [r4, r5]
004179b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004179b8  04 d1 57 00 84 0d 00 00                          .byte 0x04, 0xd1, 0x57, 0x00, 0x84, 0x0d, 0x00, 0x00
