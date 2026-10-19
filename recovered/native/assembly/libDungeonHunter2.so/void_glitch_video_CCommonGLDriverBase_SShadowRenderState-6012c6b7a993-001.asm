; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006dcfb4, declared_size=248, range_size=248, mode=arm
; class-group: void glitch::video::CCommonGLDriverBase::SShadowRenderState
; alias: _ZNK6glitch5video19CCommonGLDriverBase18SShadowRenderState14getRenderStateINS0_6detail6driver12SRenderStateEEEvRT_
; demangled: void glitch::video::CCommonGLDriverBase::SShadowRenderState::getRenderState<glitch::video::detail::driver::SRenderState>(glitch::video::detail::driver::SRenderState&) const
; decoder-mode: arm
006dcfb4  30 00 2d e9                                      push {r4, r5}
006dcfb8  28 40 d0 e5                                      ldrb r4, [r0, #0x28]
006dcfbc  29 c0 d0 e5                                      ldrb ip, [r0, #0x29]
006dcfc0  2a 20 d0 e5                                      ldrb r2, [r0, #0x2a]
006dcfc4  2b 30 d0 e5                                      ldrb r3, [r0, #0x2b]
006dcfc8  00 00 54 e3                                      cmp r4, #0
006dcfcc  01 48 a0 13                                      movne r4, #0x10000
006dcfd0  00 00 5c e3                                      cmp ip, #0
006dcfd4  00 50 91 e5                                      ldr r5, [r1]
006dcfd8  02 c8 a0 13                                      movne ip, #0x20000
006dcfdc  00 00 52 e3                                      cmp r2, #0
006dcfe0  04 40 8c e1                                      orr r4, ip, r4
006dcfe4  01 27 a0 13                                      movne r2, #0x40000
006dcfe8  00 00 53 e3                                      cmp r3, #0
006dcfec  02 37 a0 13                                      movne r3, #0x80000
006dcff0  02 20 84 e1                                      orr r2, r4, r2
006dcff4  03 20 82 e1                                      orr r2, r2, r3
006dcff8  0f 58 c5 e3                                      bic r5, r5, #0xf0000
006dcffc  05 20 82 e1                                      orr r2, r2, r5
006dd000  00 20 81 e5                                      str r2, [r1]
006dd004  04 30 d0 e5                                      ldrb r3, [r0, #4]
006dd008  00 00 53 e3                                      cmp r3, #0
006dd00c  01 26 82 13                                      orrne r2, r2, #0x100000
006dd010  01 26 c2 03                                      biceq r2, r2, #0x100000
006dd014  00 20 81 e5                                      str r2, [r1]
006dd018  0f 30 d0 e5                                      ldrb r3, [r0, #0xf]
006dd01c  00 00 53 e3                                      cmp r3, #0
006dd020  02 26 82 13                                      orrne r2, r2, #0x200000
006dd024  02 26 c2 03                                      biceq r2, r2, #0x200000
006dd028  00 20 81 e5                                      str r2, [r1]
006dd02c  34 c0 d0 e5                                      ldrb ip, [r0, #0x34]
006dd030  ff 30 c2 e3                                      bic r3, r2, #0xff
006dd034  0c 30 83 e1                                      orr r3, r3, ip
006dd038  00 30 81 e5                                      str r3, [r1]
006dd03c  35 20 d0 e5                                      ldrb r2, [r0, #0x35]
006dd040  ff 3c c3 e3                                      bic r3, r3, #0xff00
006dd044  02 34 83 e1                                      orr r3, r3, r2, lsl #8
006dd048  00 30 81 e5                                      str r3, [r1]
006dd04c  44 30 d0 e5                                      ldrb r3, [r0, #0x44]
006dd050  47 20 d0 e5                                      ldrb r2, [r0, #0x47]
006dd054  46 40 d0 e5                                      ldrb r4, [r0, #0x46]
006dd058  45 c0 d0 e5                                      ldrb ip, [r0, #0x45]
006dd05c  07 20 c1 e5                                      strb r2, [r1, #7]
006dd060  06 40 c1 e5                                      strb r4, [r1, #6]
006dd064  05 c0 c1 e5                                      strb ip, [r1, #5]
006dd068  04 30 c1 e5                                      strb r3, [r1, #4]
006dd06c  48 30 90 e5                                      ldr r3, [r0, #0x48]
006dd070  08 30 81 e5                                      str r3, [r1, #8]
006dd074  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
006dd078  50 20 90 e5                                      ldr r2, [r0, #0x50]
006dd07c  0c 30 81 e5                                      str r3, [r1, #0xc]
006dd080  10 20 81 e5                                      str r2, [r1, #0x10]
006dd084  68 30 90 e5                                      ldr r3, [r0, #0x68]
006dd088  14 30 81 e5                                      str r3, [r1, #0x14]
006dd08c  6c 30 90 e5                                      ldr r3, [r0, #0x6c]
006dd090  18 30 81 e5                                      str r3, [r1, #0x18]
006dd094  70 30 90 e5                                      ldr r3, [r0, #0x70]
006dd098  1c 30 81 e5                                      str r3, [r1, #0x1c]
006dd09c  74 30 90 e5                                      ldr r3, [r0, #0x74]
006dd0a0  20 30 81 e5                                      str r3, [r1, #0x20]
006dd0a4  30 00 bd e8                                      pop {r4, r5}
006dd0a8  1e ff 2f e1                                      bx lr
