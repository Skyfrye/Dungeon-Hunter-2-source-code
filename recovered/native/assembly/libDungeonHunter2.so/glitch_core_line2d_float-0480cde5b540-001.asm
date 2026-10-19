; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00525310, declared_size=504, range_size=504, mode=arm
; class-group: glitch::core::line2d<float>
; alias: _ZNK6glitch4core6line2dIfE13intersectWithERKS2_RNS0_8vector2dIfEE
; demangled: glitch::core::line2d<float>::intersectWith(glitch::core::line2d<float> const&, glitch::core::vector2d<float>&) const
; decoder-mode: arm
00525310  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00525314  00 50 90 e5                                      ldr r5, [r0]
00525318  14 d0 4d e2                                      sub sp, sp, #0x14
0052531c  01 40 a0 e1                                      mov r4, r1
00525320  00 60 a0 e1                                      mov r6, r0
00525324  05 10 a0 e1                                      mov r1, r5
00525328  08 00 90 e5                                      ldr r0, [r0, #8]
0052532c  0c 20 8d e5                                      str r2, [sp, #0xc]
00525330  1d a4 f7 eb                                      bl #0x30e3ac
00525334  04 a0 96 e5                                      ldr sl, [r6, #4]
00525338  00 90 a0 e1                                      mov sb, r0
0052533c  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00525340  0a 10 a0 e1                                      mov r1, sl
00525344  18 a4 f7 eb                                      bl #0x30e3ac
00525348  04 00 8d e5                                      str r0, [sp, #4]
0052534c  00 70 94 e5                                      ldr r7, [r4]
00525350  08 10 94 e5                                      ldr r1, [r4, #8]
00525354  07 00 a0 e1                                      mov r0, r7
00525358  13 a4 f7 eb                                      bl #0x30e3ac
0052535c  04 60 94 e5                                      ldr r6, [r4, #4]
00525360  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00525364  00 80 a0 e1                                      mov r8, r0
00525368  06 00 a0 e1                                      mov r0, r6
0052536c  0e a4 f7 eb                                      bl #0x30e3ac
00525370  00 40 a0 e1                                      mov r4, r0
00525374  04 10 a0 e1                                      mov r1, r4
00525378  09 00 a0 e1                                      mov r0, sb
0052537c  7a a6 f7 eb                                      bl #0x30ed6c
00525380  08 10 a0 e1                                      mov r1, r8
00525384  00 b0 a0 e1                                      mov fp, r0
00525388  04 00 9d e5                                      ldr r0, [sp, #4]
0052538c  76 a6 f7 eb                                      bl #0x30ed6c
00525390  00 10 a0 e1                                      mov r1, r0
00525394  0b 00 a0 e1                                      mov r0, fp
00525398  03 a4 f7 eb                                      bl #0x30e3ac
0052539c  bd 17 03 e3                                      movw r1, #0x37bd
005253a0  86 15 4b e3                                      movt r1, #0xb586
005253a4  00 b0 a0 e1                                      mov fp, r0
005253a8  d2 a3 f7 eb                                      bl #0x30e2f8
005253ac  00 00 50 e3                                      cmp r0, #0
005253b0  05 00 00 0a                                      beq #0x5253cc
005253b4  bd 17 03 e3                                      movw r1, #0x37bd
005253b8  0b 00 a0 e1                                      mov r0, fp
005253bc  86 15 43 e3                                      movt r1, #0x3586
005253c0  d1 a4 f7 eb                                      bl #0x30e70c
005253c4  00 00 50 e3                                      cmp r0, #0
005253c8  4b 00 00 1a                                      bne #0x5254fc
005253cc  0b 10 a0 e1                                      mov r1, fp
005253d0  fe 05 a0 e3                                      mov r0, #0x3f800000
005253d4  2e a6 f7 eb                                      bl #0x30ec94
005253d8  05 10 a0 e1                                      mov r1, r5
005253dc  00 b0 a0 e1                                      mov fp, r0
005253e0  07 00 a0 e1                                      mov r0, r7
005253e4  f0 a3 f7 eb                                      bl #0x30e3ac
005253e8  0a 10 a0 e1                                      mov r1, sl
005253ec  00 50 a0 e1                                      mov r5, r0
005253f0  06 00 a0 e1                                      mov r0, r6
005253f4  ec a3 f7 eb                                      bl #0x30e3ac
005253f8  05 10 a0 e1                                      mov r1, r5
005253fc  00 a0 a0 e1                                      mov sl, r0
00525400  04 00 a0 e1                                      mov r0, r4
00525404  58 a6 f7 eb                                      bl #0x30ed6c
00525408  0a 10 a0 e1                                      mov r1, sl
0052540c  00 30 a0 e1                                      mov r3, r0
00525410  08 00 a0 e1                                      mov r0, r8
00525414  00 30 8d e5                                      str r3, [sp]
00525418  53 a6 f7 eb                                      bl #0x30ed6c
0052541c  00 30 9d e5                                      ldr r3, [sp]
00525420  00 10 a0 e1                                      mov r1, r0
00525424  03 00 a0 e1                                      mov r0, r3
00525428  df a3 f7 eb                                      bl #0x30e3ac
0052542c  0b 10 a0 e1                                      mov r1, fp
00525430  4d a6 f7 eb                                      bl #0x30ed6c
00525434  00 10 a0 e3                                      mov r1, #0
00525438  08 00 8d e5                                      str r0, [sp, #8]
0052543c  b2 a4 f7 eb                                      bl #0x30e70c
00525440  00 00 50 e3                                      cmp r0, #0
00525444  2c 00 00 1a                                      bne #0x5254fc
00525448  08 00 9d e5                                      ldr r0, [sp, #8]
0052544c  fe 15 a0 e3                                      mov r1, #0x3f800000
00525450  a8 a3 f7 eb                                      bl #0x30e2f8
00525454  00 00 50 e3                                      cmp r0, #0
00525458  27 00 00 1a                                      bne #0x5254fc
0052545c  0a 10 a0 e1                                      mov r1, sl
00525460  09 00 a0 e1                                      mov r0, sb
00525464  40 a6 f7 eb                                      bl #0x30ed6c
00525468  05 10 a0 e1                                      mov r1, r5
0052546c  00 a0 a0 e1                                      mov sl, r0
00525470  04 00 9d e5                                      ldr r0, [sp, #4]
00525474  3c a6 f7 eb                                      bl #0x30ed6c
00525478  00 10 a0 e1                                      mov r1, r0
0052547c  0a 00 a0 e1                                      mov r0, sl
00525480  c9 a3 f7 eb                                      bl #0x30e3ac
00525484  0b 10 a0 e1                                      mov r1, fp
00525488  37 a6 f7 eb                                      bl #0x30ed6c
0052548c  00 10 a0 e3                                      mov r1, #0
00525490  00 50 a0 e1                                      mov r5, r0
00525494  9c a4 f7 eb                                      bl #0x30e70c
00525498  00 00 50 e3                                      cmp r0, #0
0052549c  16 00 00 1a                                      bne #0x5254fc
005254a0  05 00 a0 e1                                      mov r0, r5
005254a4  fe 15 a0 e3                                      mov r1, #0x3f800000
005254a8  92 a3 f7 eb                                      bl #0x30e2f8
005254ac  00 00 50 e3                                      cmp r0, #0
005254b0  11 00 00 1a                                      bne #0x5254fc
005254b4  08 10 a0 e1                                      mov r1, r8
005254b8  05 00 a0 e1                                      mov r0, r5
005254bc  2a a6 f7 eb                                      bl #0x30ed6c
005254c0  00 10 a0 e1                                      mov r1, r0
005254c4  07 00 a0 e1                                      mov r0, r7
005254c8  b7 a3 f7 eb                                      bl #0x30e3ac
005254cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005254d0  04 10 a0 e1                                      mov r1, r4
005254d4  00 00 83 e5                                      str r0, [r3]
005254d8  05 00 a0 e1                                      mov r0, r5
005254dc  22 a6 f7 eb                                      bl #0x30ed6c
005254e0  00 10 a0 e1                                      mov r1, r0
005254e4  06 00 a0 e1                                      mov r0, r6
005254e8  af a3 f7 eb                                      bl #0x30e3ac
005254ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005254f0  04 00 83 e5                                      str r0, [r3, #4]
005254f4  01 00 a0 e3                                      mov r0, #1
005254f8  00 00 00 ea                                      b #0x525500
005254fc  00 00 a0 e3                                      mov r0, #0
00525500  14 d0 8d e2                                      add sp, sp, #0x14
00525504  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
