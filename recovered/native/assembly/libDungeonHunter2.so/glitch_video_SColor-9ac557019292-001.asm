; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00540f8c, declared_size=588, range_size=588, mode=arm
; class-group: glitch::video::SColor
; alias: _ZNK6glitch5video6SColor15getInterpolatedERKS1_f
; demangled: glitch::video::SColor::getInterpolated(glitch::video::SColor const&, float) const
; decoder-mode: arm
00540f8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00540f90  00 60 a0 e1                                      mov r6, r0
00540f94  0c d0 4d e2                                      sub sp, sp, #0xc
00540f98  01 50 a0 e1                                      mov r5, r1
00540f9c  02 00 a0 e1                                      mov r0, r2
00540fa0  00 10 a0 e3                                      mov r1, #0
00540fa4  02 40 a0 e1                                      mov r4, r2
00540fa8  d7 35 f7 eb                                      bl #0x30e70c
00540fac  00 00 50 e3                                      cmp r0, #0
00540fb0  00 40 a0 13                                      movne r4, #0
00540fb4  04 00 00 1a                                      bne #0x540fcc
00540fb8  04 00 a0 e1                                      mov r0, r4
00540fbc  fe 15 a0 e3                                      mov r1, #0x3f800000
00540fc0  d1 35 f7 eb                                      bl #0x30e70c
00540fc4  00 00 50 e3                                      cmp r0, #0
00540fc8  fe 45 a0 03                                      moveq r4, #0x3f800000
00540fcc  04 10 a0 e1                                      mov r1, r4
00540fd0  fe 05 a0 e3                                      mov r0, #0x3f800000
00540fd4  f4 34 f7 eb                                      bl #0x30e3ac
00540fd8  00 40 a0 e1                                      mov r4, r0
00540fdc  03 00 d6 e5                                      ldrb r0, [r6, #3]
00540fe0  be 34 f7 eb                                      bl #0x30e2e0
00540fe4  00 70 a0 e1                                      mov r7, r0
00540fe8  03 00 d5 e5                                      ldrb r0, [r5, #3]
00540fec  bb 34 f7 eb                                      bl #0x30e2e0
00540ff0  07 10 a0 e1                                      mov r1, r7
00540ff4  ec 34 f7 eb                                      bl #0x30e3ac
00540ff8  00 10 a0 e1                                      mov r1, r0
00540ffc  04 00 a0 e1                                      mov r0, r4
00541000  59 37 f7 eb                                      bl #0x30ed6c
00541004  00 10 a0 e1                                      mov r1, r0
00541008  07 00 a0 e1                                      mov r0, r7
0054100c  e4 36 f7 eb                                      bl #0x30eba4
00541010  00 10 a0 e3                                      mov r1, #0
00541014  00 70 a0 e1                                      mov r7, r0
00541018  bb 35 f7 eb                                      bl #0x30e70c
0054101c  00 00 50 e3                                      cmp r0, #0
00541020  00 80 a0 13                                      movne r8, #0
00541024  06 00 00 1a                                      bne #0x541044
00541028  43 14 a0 e3                                      mov r1, #0x43000000
0054102c  07 00 a0 e1                                      mov r0, r7
00541030  7f 18 81 e2                                      add r1, r1, #0x7f0000
00541034  b4 35 f7 eb                                      bl #0x30e70c
00541038  00 00 50 e3                                      cmp r0, #0
0054103c  ff 80 a0 03                                      moveq r8, #0xff
00541040  54 00 00 1a                                      bne #0x541198
00541044  00 00 d6 e5                                      ldrb r0, [r6]
00541048  a4 34 f7 eb                                      bl #0x30e2e0
0054104c  00 70 a0 e1                                      mov r7, r0
00541050  00 00 d5 e5                                      ldrb r0, [r5]
00541054  a1 34 f7 eb                                      bl #0x30e2e0
00541058  07 10 a0 e1                                      mov r1, r7
0054105c  d2 34 f7 eb                                      bl #0x30e3ac
00541060  00 10 a0 e1                                      mov r1, r0
00541064  04 00 a0 e1                                      mov r0, r4
00541068  3f 37 f7 eb                                      bl #0x30ed6c
0054106c  00 10 a0 e1                                      mov r1, r0
00541070  07 00 a0 e1                                      mov r0, r7
00541074  ca 36 f7 eb                                      bl #0x30eba4
00541078  00 10 a0 e3                                      mov r1, #0
0054107c  00 70 a0 e1                                      mov r7, r0
00541080  a1 35 f7 eb                                      bl #0x30e70c
00541084  00 00 50 e3                                      cmp r0, #0
00541088  00 a0 a0 13                                      movne sl, #0
0054108c  06 00 00 1a                                      bne #0x5410ac
00541090  43 14 a0 e3                                      mov r1, #0x43000000
00541094  07 00 a0 e1                                      mov r0, r7
00541098  7f 18 81 e2                                      add r1, r1, #0x7f0000
0054109c  9a 35 f7 eb                                      bl #0x30e70c
005410a0  00 00 50 e3                                      cmp r0, #0
005410a4  ff a0 a0 03                                      moveq sl, #0xff
005410a8  46 00 00 1a                                      bne #0x5411c8
005410ac  01 00 d6 e5                                      ldrb r0, [r6, #1]
005410b0  8a 34 f7 eb                                      bl #0x30e2e0
005410b4  00 70 a0 e1                                      mov r7, r0
005410b8  01 00 d5 e5                                      ldrb r0, [r5, #1]
005410bc  87 34 f7 eb                                      bl #0x30e2e0
005410c0  07 10 a0 e1                                      mov r1, r7
005410c4  b8 34 f7 eb                                      bl #0x30e3ac
005410c8  00 10 a0 e1                                      mov r1, r0
005410cc  04 00 a0 e1                                      mov r0, r4
005410d0  25 37 f7 eb                                      bl #0x30ed6c
005410d4  00 10 a0 e1                                      mov r1, r0
005410d8  07 00 a0 e1                                      mov r0, r7
005410dc  b0 36 f7 eb                                      bl #0x30eba4
005410e0  00 10 a0 e3                                      mov r1, #0
005410e4  00 70 a0 e1                                      mov r7, r0
005410e8  87 35 f7 eb                                      bl #0x30e70c
005410ec  00 00 50 e3                                      cmp r0, #0
005410f0  00 70 a0 13                                      movne r7, #0
005410f4  06 00 00 1a                                      bne #0x541114
005410f8  43 14 a0 e3                                      mov r1, #0x43000000
005410fc  07 00 a0 e1                                      mov r0, r7
00541100  7f 18 81 e2                                      add r1, r1, #0x7f0000
00541104  80 35 f7 eb                                      bl #0x30e70c
00541108  00 00 50 e3                                      cmp r0, #0
0054110c  ff 70 a0 03                                      moveq r7, #0xff
00541110  28 00 00 1a                                      bne #0x5411b8
00541114  02 00 d6 e5                                      ldrb r0, [r6, #2]
00541118  70 34 f7 eb                                      bl #0x30e2e0
0054111c  00 60 a0 e1                                      mov r6, r0
00541120  02 00 d5 e5                                      ldrb r0, [r5, #2]
00541124  6d 34 f7 eb                                      bl #0x30e2e0
00541128  06 10 a0 e1                                      mov r1, r6
0054112c  9e 34 f7 eb                                      bl #0x30e3ac
00541130  00 10 a0 e1                                      mov r1, r0
00541134  04 00 a0 e1                                      mov r0, r4
00541138  0b 37 f7 eb                                      bl #0x30ed6c
0054113c  00 10 a0 e1                                      mov r1, r0
00541140  06 00 a0 e1                                      mov r0, r6
00541144  96 36 f7 eb                                      bl #0x30eba4
00541148  00 10 a0 e3                                      mov r1, #0
0054114c  00 40 a0 e1                                      mov r4, r0
00541150  6d 35 f7 eb                                      bl #0x30e70c
00541154  00 00 50 e3                                      cmp r0, #0
00541158  00 30 a0 13                                      movne r3, #0
0054115c  06 00 00 1a                                      bne #0x54117c
00541160  43 14 a0 e3                                      mov r1, #0x43000000
00541164  04 00 a0 e1                                      mov r0, r4
00541168  7f 18 81 e2                                      add r1, r1, #0x7f0000
0054116c  66 35 f7 eb                                      bl #0x30e70c
00541170  00 00 50 e3                                      cmp r0, #0
00541174  ff 30 a0 03                                      moveq r3, #0xff
00541178  0a 00 00 1a                                      bne #0x5411a8
0054117c  00 00 a0 e3                                      mov r0, #0
00541180  1a 00 c7 e7                                      bfi r0, sl, #0, #8
00541184  17 04 cf e7                                      bfi r0, r7, #8, #8
00541188  13 08 d7 e7                                      bfi r0, r3, #0x10, #8
0054118c  18 0c df e7                                      bfi r0, r8, #0x18, #8
00541190  0c d0 8d e2                                      add sp, sp, #0xc
00541194  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00541198  07 00 a0 e1                                      mov r0, r7
0054119c  3f f4 0d eb                                      bl #0x8be2a0
005411a0  70 80 ef e6                                      uxtb r8, r0
005411a4  a6 ff ff ea                                      b #0x541044
005411a8  04 00 a0 e1                                      mov r0, r4
005411ac  3b f4 0d eb                                      bl #0x8be2a0
005411b0  70 30 ef e6                                      uxtb r3, r0
005411b4  f0 ff ff ea                                      b #0x54117c
005411b8  07 00 a0 e1                                      mov r0, r7
005411bc  37 f4 0d eb                                      bl #0x8be2a0
005411c0  70 70 ef e6                                      uxtb r7, r0
005411c4  d2 ff ff ea                                      b #0x541114
005411c8  07 00 a0 e1                                      mov r0, r7
005411cc  33 f4 0d eb                                      bl #0x8be2a0
005411d0  70 a0 ef e6                                      uxtb sl, r0
005411d4  b4 ff ff ea                                      b #0x5410ac
