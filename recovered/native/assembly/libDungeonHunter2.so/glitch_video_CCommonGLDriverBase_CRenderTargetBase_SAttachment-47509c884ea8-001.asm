; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b25e4, declared_size=72, range_size=72, mode=arm
; class-group: glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment
; alias: _ZN6glitch5video19CCommonGLDriverBase17CRenderTargetBase11SAttachmentD1Ev
; demangled: glitch::video::CCommonGLDriverBase::CRenderTargetBase::SAttachment::~SAttachment()
; decoder-mode: arm
005b25e4  10 40 2d e9                                      push {r4, lr}
005b25e8  00 40 a0 e1                                      mov r4, r0
005b25ec  04 00 90 e5                                      ldr r0, [r0, #4]
005b25f0  00 00 50 e3                                      cmp r0, #0
005b25f4  0a 00 00 0a                                      beq #0x5b2624
005b25f8  b0 30 d4 e1                                      ldrh r3, [r4]
005b25fc  00 00 53 e3                                      cmp r3, #0
005b2600  00 30 a0 13                                      movne r3, #0
005b2604  04 30 84 e5                                      str r3, [r4, #4]
005b2608  dd ab f5 eb                                      bl #0x31d584
005b260c  00 30 a0 e3                                      mov r3, #0
005b2610  ff 20 a0 e3                                      mov r2, #0xff
005b2614  03 30 c4 e5                                      strb r3, [r4, #3]
005b2618  04 30 84 e5                                      str r3, [r4, #4]
005b261c  b0 20 c4 e1                                      strh r2, [r4]
005b2620  02 30 c4 e5                                      strb r3, [r4, #2]
005b2624  04 00 a0 e1                                      mov r0, r4
005b2628  10 80 bd e8                                      pop {r4, pc}
