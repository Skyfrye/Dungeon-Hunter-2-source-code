; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00082478, declared_size=68, range_size=68, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6assignENS_5derefENS_7operandES1_i
; demangled: ir_builder::assign(ir_builder::deref, ir_builder::operand, ir_builder::operand, int)
; decoder-mode: thumb
00082478  f0 b5                                            push {r4, r5, r6, r7, lr}
0008247a  03 af                                            add r7, sp, #0xc
0008247c  2d e9 00 0b                                      push.w {r8, sb, fp}
00082480  82 b0                                            sub sp, #8
00082482  1c 46                                            mov r4, r3
00082484  90 46                                            mov r8, r2
00082486  89 46                                            mov sb, r1
00082488  05 46                                            mov r5, r0
0008248a  b0 f7 4e eb                                      blx #0x32b28
0008248e  20 21                                            movs r1, #0x20
00082490  b0 f7 46 e9                                      blx #0x32720
00082494  06 46                                            mov r6, r0
00082496  08 48                                            ldr r0, [pc, #0x20]
00082498  78 44                                            add r0, pc
0008249a  01 68                                            ldr r1, [r0]
0008249c  30 46                                            mov r0, r6
0008249e  b0 f7 30 ea                                      blx #0x32900
000824a2  30 46                                            mov r0, r6
000824a4  29 46                                            mov r1, r5
000824a6  4a 46                                            mov r2, sb
000824a8  43 46                                            mov r3, r8
000824aa  00 94                                            str r4, [sp]
000824ac  b0 f7 8e ea                                      blx #0x329cc
000824b0  02 b0                                            add sp, #8
000824b2  bd e8 00 0b                                      pop.w {r8, sb, fp}
000824b6  f0 bd                                            pop {r4, r5, r6, r7, pc}
000824b8  a0 a0                                            adr r0, #0x280
000824ba  05 00                                            movs r5, r0

; FUNCTION 0x000824bc, declared_size=22, range_size=22, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6assignENS_5derefENS_7operandE
; demangled: ir_builder::assign(ir_builder::deref, ir_builder::operand)
; decoder-mode: thumb
000824bc  02 69                                            ldr r2, [r0, #0x10]
000824be  01 23                                            movs r3, #1
000824c0  12 89                                            ldrh r2, [r2, #8]
000824c2  c2 f3 42 22                                      ubfx r2, r2, #9, #3
000824c6  03 fa 02 f2                                      lsl.w r2, r3, r2
000824ca  53 1e                                            subs r3, r2, #1
000824cc  00 22                                            movs r2, #0
000824ce  2e f0 e3 bb                                      b.w #0xb0c98

; FUNCTION 0x000824d2, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6assignENS_5derefENS_7operandEi
; demangled: ir_builder::assign(ir_builder::deref, ir_builder::operand, int)
; decoder-mode: thumb
000824d2  13 46                                            mov r3, r2
000824d4  00 22                                            movs r2, #0
000824d6  2e f0 df bb                                      b.w #0xb0c98

; FUNCTION 0x000824da, declared_size=20, range_size=20, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6assignENS_5derefENS_7operandES1_
; demangled: ir_builder::assign(ir_builder::deref, ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
000824da  03 69                                            ldr r3, [r0, #0x10]
000824dc  1b 89                                            ldrh r3, [r3, #8]
000824de  c3 f3 42 2c                                      ubfx ip, r3, #9, #3
000824e2  01 23                                            movs r3, #1
000824e4  03 fa 0c f3                                      lsl.w r3, r3, ip
000824e8  01 3b                                            subs r3, #1
000824ea  2e f0 d5 bb                                      b.w #0xb0c98

; FUNCTION 0x000824f0, declared_size=60, range_size=60, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3retENS_7operandE
; demangled: ir_builder::ret(ir_builder::operand)
; decoder-mode: thumb
000824f0  b0 b5                                            push {r4, r5, r7, lr}
000824f2  02 af                                            add r7, sp, #8
000824f4  04 46                                            mov r4, r0
000824f6  b0 f7 18 eb                                      blx #0x32b28
000824fa  14 21                                            movs r1, #0x14
000824fc  b0 f7 10 e9                                      blx #0x32720
00082500  05 46                                            mov r5, r0
00082502  08 48                                            ldr r0, [pc, #0x20]
00082504  78 44                                            add r0, pc
00082506  01 68                                            ldr r1, [r0]
00082508  28 46                                            mov r0, r5
0008250a  b0 f7 fa e9                                      blx #0x32900
0008250e  06 48                                            ldr r0, [pc, #0x18]
00082510  78 44                                            add r0, pc
00082512  00 68                                            ldr r0, [r0]
00082514  08 30                                            adds r0, #8
00082516  28 60                                            str r0, [r5]
00082518  0f 20                                            movs r0, #0xf
0008251a  c5 e9 03 04                                      strd r0, r4, [r5, #0xc]
0008251e  28 46                                            mov r0, r5
00082520  b0 bd                                            pop {r4, r5, r7, pc}
00082522  00 bf                                            nop
00082524  34 a0                                            adr r0, #0xd0
00082526  05 00                                            movs r5, r0
00082528  58 a0                                            adr r0, #0x160
0008252a  05 00                                            movs r5, r0

; FUNCTION 0x0008252c, declared_size=84, range_size=84, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder7swizzleENS_7operandEii
; demangled: ir_builder::swizzle(ir_builder::operand, int, int)
; decoder-mode: thumb
0008252c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008252e  03 af                                            add r7, sp, #0xc
00082530  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00082534  84 b0                                            sub sp, #0x10
00082536  90 46                                            mov r8, r2
00082538  0c 46                                            mov r4, r1
0008253a  06 46                                            mov r6, r0
0008253c  b0 f7 f4 ea                                      blx #0x32b28
00082540  20 21                                            movs r1, #0x20
00082542  b0 f7 ee e8                                      blx #0x32720
00082546  05 46                                            mov r5, r0
00082548  0c 48                                            ldr r0, [pc, #0x30]
0008254a  78 44                                            add r0, pc
0008254c  01 68                                            ldr r1, [r0]
0008254e  28 46                                            mov r0, r5
00082550  b0 f7 d6 e9                                      blx #0x32900
00082554  cd f8 08 80                                      str.w r8, [sp, #8]
00082558  c4 f3 42 20                                      ubfx r0, r4, #9, #3
0008255c  01 90                                            str r0, [sp, #4]
0008255e  c4 f3 82 10                                      ubfx r0, r4, #6, #3
00082562  00 90                                            str r0, [sp]
00082564  04 f0 07 02                                      and r2, r4, #7
00082568  c4 f3 c2 03                                      ubfx r3, r4, #3, #3
0008256c  28 46                                            mov r0, r5
0008256e  31 46                                            mov r1, r6
00082570  b0 f7 32 ea                                      blx #0x329d8
00082574  04 b0                                            add sp, #0x10
00082576  5d f8 04 8b                                      ldr r8, [sp], #4
0008257a  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008257c  ee 9f                                            ldr r7, [sp, #0x3b8]
0008257e  05 00                                            movs r5, r0

; FUNCTION 0x00082580, declared_size=164, range_size=164, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder16swizzle_for_sizeENS_7operandEj
; demangled: ir_builder::swizzle_for_size(ir_builder::operand, unsigned int)
; decoder-mode: thumb
00082580  f0 b5                                            push {r4, r5, r6, r7, lr}
00082582  03 af                                            add r7, sp, #0xc
00082584  2d e9 00 0b                                      push.w {r8, sb, fp}
00082588  86 b0                                            sub sp, #0x18
0008258a  80 46                                            mov r8, r0
0008258c  21 48                                            ldr r0, [pc, #0x84]
0008258e  89 46                                            mov sb, r1
00082590  78 44                                            add r0, pc
00082592  00 68                                            ldr r0, [r0]
00082594  00 68                                            ldr r0, [r0]
00082596  05 90                                            str r0, [sp, #0x14]
00082598  40 46                                            mov r0, r8
0008259a  b0 f7 c6 ea                                      blx #0x32b28
0008259e  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
000825a2  6e 46                                            mov r6, sp
000825a4  df f8 70 e0                                      ldr.w lr, [pc, #0x70]
000825a8  b1 f8 08 c0                                      ldrh.w ip, [r1, #8]
000825ac  fe 44                                            add lr, pc
000825ae  31 46                                            mov r1, r6
000825b0  9e e8 3c 00                                      ldm.w lr, {r2, r3, r4, r5}
000825b4  3c c1                                            stm r1!, {r2, r3, r4, r5}
000825b6  cc f3 42 21                                      ubfx r1, ip, #9, #3
000825ba  49 45                                            cmp r1, sb
000825bc  38 bf                                            it lo
000825be  89 46                                            movlo sb, r1
000825c0  b9 f1 03 0f                                      cmp.w sb, #3
000825c4  08 dc                                            bgt #0x825d8
000825c6  a9 f1 01 02                                      sub.w r2, sb, #1
000825ca  4b 46                                            mov r3, sb
000825cc  59 1c                                            adds r1, r3, #1
000825ce  46 f8 23 20                                      str.w r2, [r6, r3, lsl #2]
000825d2  03 2b                                            cmp r3, #3
000825d4  0b 46                                            mov r3, r1
000825d6  f9 db                                            blt #0x825cc
000825d8  20 21                                            movs r1, #0x20
000825da  b0 f7 a2 e8                                      blx #0x32720
000825de  06 46                                            mov r6, r0
000825e0  0e 48                                            ldr r0, [pc, #0x38]
000825e2  78 44                                            add r0, pc
000825e4  01 68                                            ldr r1, [r0]
000825e6  30 46                                            mov r0, r6
000825e8  b0 f7 8a e9                                      blx #0x32900
000825ec  6a 46                                            mov r2, sp
000825ee  30 46                                            mov r0, r6
000825f0  41 46                                            mov r1, r8
000825f2  4b 46                                            mov r3, sb
000825f4  b0 f7 0e ea                                      blx #0x32a14
000825f8  09 48                                            ldr r0, [pc, #0x24]
000825fa  05 99                                            ldr r1, [sp, #0x14]
000825fc  78 44                                            add r0, pc
000825fe  00 68                                            ldr r0, [r0]
00082600  00 68                                            ldr r0, [r0]
00082602  40 1a                                            subs r0, r0, r1
00082604  01 bf                                            itttt eq
00082606  30 46                                            moveq r0, r6
00082608  06 b0                                            addeq sp, #0x18
0008260a  bd e8 00 0b                                      popeq.w {r8, sb, fp}
0008260e  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00082610  af f7 26 ed                                      blx #0x32060
00082614  24 9f                                            ldr r7, [sp, #0x90]
00082616  05 00                                            movs r5, r0
00082618  78 fb 04 00                                      usada8 r0, r8, r4, r0
0008261c  56 9f                                            ldr r7, [sp, #0x158]
0008261e  05 00                                            movs r5, r0
00082620  b8 9e                                            ldr r6, [sp, #0x2e0]
00082622  05 00                                            movs r5, r0

; FUNCTION 0x00082624, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder12swizzle_xxxxENS_7operandE
; demangled: ir_builder::swizzle_xxxx(ir_builder::operand)
; decoder-mode: thumb
00082624  00 21                                            movs r1, #0
00082626  04 22                                            movs r2, #4
00082628  2e f0 3e bb                                      b.w #0xb0ca8

; FUNCTION 0x0008262c, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder12swizzle_yyyyENS_7operandE
; demangled: ir_builder::swizzle_yyyy(ir_builder::operand)
; decoder-mode: thumb
0008262c  40 f2 49 21                                      movw r1, #0x249
00082630  04 22                                            movs r2, #4
00082632  2e f0 39 bb                                      b.w #0xb0ca8

; FUNCTION 0x00082636, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder12swizzle_zzzzENS_7operandE
; demangled: ir_builder::swizzle_zzzz(ir_builder::operand)
; decoder-mode: thumb
00082636  40 f2 92 41                                      movw r1, #0x492
0008263a  04 22                                            movs r2, #4
0008263c  2e f0 34 bb                                      b.w #0xb0ca8

; FUNCTION 0x00082640, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder12swizzle_wwwwENS_7operandE
; demangled: ir_builder::swizzle_wwww(ir_builder::operand)
; decoder-mode: thumb
00082640  40 f2 db 61                                      movw r1, #0x6db
00082644  04 22                                            movs r2, #4
00082646  2e f0 2f bb                                      b.w #0xb0ca8

; FUNCTION 0x0008264a, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder9swizzle_xENS_7operandE
; demangled: ir_builder::swizzle_x(ir_builder::operand)
; decoder-mode: thumb
0008264a  00 21                                            movs r1, #0
0008264c  01 22                                            movs r2, #1
0008264e  2e f0 2b bb                                      b.w #0xb0ca8

; FUNCTION 0x00082652, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder9swizzle_yENS_7operandE
; demangled: ir_builder::swizzle_y(ir_builder::operand)
; decoder-mode: thumb
00082652  40 f2 49 21                                      movw r1, #0x249
00082656  01 22                                            movs r2, #1
00082658  2e f0 26 bb                                      b.w #0xb0ca8

; FUNCTION 0x0008265c, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder9swizzle_zENS_7operandE
; demangled: ir_builder::swizzle_z(ir_builder::operand)
; decoder-mode: thumb
0008265c  40 f2 92 41                                      movw r1, #0x492
00082660  01 22                                            movs r2, #1
00082662  2e f0 21 bb                                      b.w #0xb0ca8

; FUNCTION 0x00082666, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder9swizzle_wENS_7operandE
; demangled: ir_builder::swizzle_w(ir_builder::operand)
; decoder-mode: thumb
00082666  40 f2 db 61                                      movw r1, #0x6db
0008266a  01 22                                            movs r2, #1
0008266c  2e f0 1c bb                                      b.w #0xb0ca8

; FUNCTION 0x00082670, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder10swizzle_xyENS_7operandE
; demangled: ir_builder::swizzle_xy(ir_builder::operand)
; decoder-mode: thumb
00082670  4f f4 d1 61                                      mov.w r1, #0x688
00082674  02 22                                            movs r2, #2
00082676  2e f0 17 bb                                      b.w #0xb0ca8

; FUNCTION 0x0008267a, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder11swizzle_xyzENS_7operandE
; demangled: ir_builder::swizzle_xyz(ir_builder::operand)
; decoder-mode: thumb
0008267a  4f f4 d1 61                                      mov.w r1, #0x688
0008267e  03 22                                            movs r2, #3
00082680  2e f0 12 bb                                      b.w #0xb0ca8

; FUNCTION 0x00082684, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder12swizzle_xyzwENS_7operandE
; demangled: ir_builder::swizzle_xyzw(ir_builder::operand)
; decoder-mode: thumb
00082684  4f f4 d1 61                                      mov.w r1, #0x688
00082688  04 22                                            movs r2, #4
0008268a  2e f0 0d bb                                      b.w #0xb0ca8

; FUNCTION 0x00082690, declared_size=60, range_size=60, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder4exprE23ir_expression_operationNS_7operandE
; demangled: ir_builder::expr(ir_expression_operation, ir_builder::operand)
; decoder-mode: thumb
00082690  f0 b5                                            push {r4, r5, r6, r7, lr}
00082692  03 af                                            add r7, sp, #0xc
00082694  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00082698  0c 46                                            mov r4, r1
0008269a  05 46                                            mov r5, r0
0008269c  20 46                                            mov r0, r4
0008269e  b0 f7 44 ea                                      blx #0x32b28
000826a2  2c 21                                            movs r1, #0x2c
000826a4  b0 f7 3c e8                                      blx #0x32720
000826a8  06 46                                            mov r6, r0
000826aa  07 48                                            ldr r0, [pc, #0x1c]
000826ac  78 44                                            add r0, pc
000826ae  01 68                                            ldr r1, [r0]
000826b0  30 46                                            mov r0, r6
000826b2  b0 f7 26 e9                                      blx #0x32900
000826b6  30 46                                            mov r0, r6
000826b8  29 46                                            mov r1, r5
000826ba  22 46                                            mov r2, r4
000826bc  5d f8 04 bb                                      ldr fp, [sp], #4
000826c0  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000826c4  2e f0 f8 ba                                      b.w #0xb0cb8
000826c8  8c 9e                                            ldr r6, [sp, #0x230]
000826ca  05 00                                            movs r5, r0

; FUNCTION 0x000826cc, declared_size=64, range_size=64, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder4exprE23ir_expression_operationNS_7operandES1_
; demangled: ir_builder::expr(ir_expression_operation, ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
000826cc  f0 b5                                            push {r4, r5, r6, r7, lr}
000826ce  03 af                                            add r7, sp, #0xc
000826d0  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000826d4  0d 46                                            mov r5, r1
000826d6  06 46                                            mov r6, r0
000826d8  28 46                                            mov r0, r5
000826da  90 46                                            mov r8, r2
000826dc  b0 f7 24 ea                                      blx #0x32b28
000826e0  2c 21                                            movs r1, #0x2c
000826e2  b0 f7 1e e8                                      blx #0x32720
000826e6  04 46                                            mov r4, r0
000826e8  07 48                                            ldr r0, [pc, #0x1c]
000826ea  78 44                                            add r0, pc
000826ec  01 68                                            ldr r1, [r0]
000826ee  20 46                                            mov r0, r4
000826f0  b0 f7 06 e9                                      blx #0x32900
000826f4  20 46                                            mov r0, r4
000826f6  31 46                                            mov r1, r6
000826f8  2a 46                                            mov r2, r5
000826fa  43 46                                            mov r3, r8
000826fc  5d f8 04 8b                                      ldr r8, [sp], #4
00082700  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00082704  2e f0 e0 ba                                      b.w #0xb0cc8
00082708  4e 9e                                            ldr r6, [sp, #0x138]
0008270a  05 00                                            movs r5, r0

; FUNCTION 0x0008270c, declared_size=72, range_size=72, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder4exprE23ir_expression_operationNS_7operandES1_S1_
; demangled: ir_builder::expr(ir_expression_operation, ir_builder::operand, ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008270c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008270e  03 af                                            add r7, sp, #0xc
00082710  2d e9 00 0b                                      push.w {r8, sb, fp}
00082714  82 b0                                            sub sp, #8
00082716  0e 46                                            mov r6, r1
00082718  05 46                                            mov r5, r0
0008271a  30 46                                            mov r0, r6
0008271c  99 46                                            mov sb, r3
0008271e  90 46                                            mov r8, r2
00082720  b0 f7 02 ea                                      blx #0x32b28
00082724  2c 21                                            movs r1, #0x2c
00082726  af f7 fc ef                                      blx #0x32720
0008272a  04 46                                            mov r4, r0
0008272c  08 48                                            ldr r0, [pc, #0x20]
0008272e  78 44                                            add r0, pc
00082730  01 68                                            ldr r1, [r0]
00082732  20 46                                            mov r0, r4
00082734  b0 f7 e4 e8                                      blx #0x32900
00082738  20 46                                            mov r0, r4
0008273a  29 46                                            mov r1, r5
0008273c  32 46                                            mov r2, r6
0008273e  43 46                                            mov r3, r8
00082740  cd f8 00 90                                      str.w sb, [sp]
00082744  b1 f7 ba ea                                      blx #0x33cbc
00082748  02 b0                                            add sp, #8
0008274a  bd e8 00 0b                                      pop.w {r8, sb, fp}
0008274e  f0 bd                                            pop {r4, r5, r6, r7, pc}
00082750  0a 9e                                            ldr r6, [sp, #0x28]
00082752  05 00                                            movs r5, r0

; FUNCTION 0x00082754, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3addENS_7operandES0_
; demangled: ir_builder::add(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082754  0a 46                                            mov r2, r1
00082756  01 46                                            mov r1, r0
00082758  3e 20                                            movs r0, #0x3e
0008275a  2e f0 bd ba                                      b.w #0xb0cd8

; FUNCTION 0x0008275e, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3subENS_7operandES0_
; demangled: ir_builder::sub(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008275e  0a 46                                            mov r2, r1
00082760  01 46                                            mov r1, r0
00082762  3f 20                                            movs r0, #0x3f
00082764  2e f0 b8 ba                                      b.w #0xb0cd8

; FUNCTION 0x00082768, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder4min2ENS_7operandES0_
; demangled: ir_builder::min2(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082768  0a 46                                            mov r2, r1
0008276a  01 46                                            mov r1, r0
0008276c  57 20                                            movs r0, #0x57
0008276e  2e f0 b3 ba                                      b.w #0xb0cd8

; FUNCTION 0x00082772, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder4max2ENS_7operandES0_
; demangled: ir_builder::max2(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082772  0a 46                                            mov r2, r1
00082774  01 46                                            mov r1, r0
00082776  58 20                                            movs r0, #0x58
00082778  2e f0 ae ba                                      b.w #0xb0cd8

; FUNCTION 0x0008277c, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3mulENS_7operandES0_
; demangled: ir_builder::mul(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008277c  0a 46                                            mov r2, r1
0008277e  01 46                                            mov r1, r0
00082780  40 20                                            movs r0, #0x40
00082782  2e f0 a9 ba                                      b.w #0xb0cd8

; FUNCTION 0x00082786, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder9imul_highENS_7operandES0_
; demangled: ir_builder::imul_high(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082786  0a 46                                            mov r2, r1
00082788  01 46                                            mov r1, r0
0008278a  41 20                                            movs r0, #0x41
0008278c  2e f0 a4 ba                                      b.w #0xb0cd8

; FUNCTION 0x00082790, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3divENS_7operandES0_
; demangled: ir_builder::div(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082790  0a 46                                            mov r2, r1
00082792  01 46                                            mov r1, r0
00082794  42 20                                            movs r0, #0x42
00082796  2e f0 9f ba                                      b.w #0xb0cd8

; FUNCTION 0x0008279a, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder5carryENS_7operandES0_
; demangled: ir_builder::carry(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008279a  0a 46                                            mov r2, r1
0008279c  01 46                                            mov r1, r0
0008279e  43 20                                            movs r0, #0x43
000827a0  2e f0 9a ba                                      b.w #0xb0cd8

; FUNCTION 0x000827a4, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6borrowENS_7operandES0_
; demangled: ir_builder::borrow(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
000827a4  0a 46                                            mov r2, r1
000827a6  01 46                                            mov r1, r0
000827a8  44 20                                            movs r0, #0x44
000827aa  2e f0 95 ba                                      b.w #0xb0cd8

; FUNCTION 0x000827ae, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder10round_evenENS_7operandE
; demangled: ir_builder::round_even(ir_builder::operand)
; decoder-mode: thumb
000827ae  01 46                                            mov r1, r0
000827b0  20 20                                            movs r0, #0x20
000827b2  2e f0 99 ba                                      b.w #0xb0ce8

; FUNCTION 0x000827b6, declared_size=26, range_size=26, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3dotENS_7operandES0_
; demangled: ir_builder::dot(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
000827b6  0a 46                                            mov r2, r1
000827b8  01 46                                            mov r1, r0
000827ba  08 69                                            ldr r0, [r1, #0x10]
000827bc  00 89                                            ldrh r0, [r0, #8]
000827be  00 f4 60 63                                      and r3, r0, #0xe00
000827c2  56 20                                            movs r0, #0x56
000827c4  b3 f5 00 7f                                      cmp.w r3, #0x200
000827c8  08 bf                                            it eq
000827ca  40 20                                            moveq r0, #0x40
000827cc  2e f0 84 ba                                      b.w #0xb0cd8

; FUNCTION 0x000827d0, declared_size=12, range_size=12, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder5clampENS_7operandES0_S0_
; demangled: ir_builder::clamp(ir_builder::operand, ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
000827d0  13 46                                            mov r3, r2
000827d2  0a 46                                            mov r2, r1
000827d4  01 46                                            mov r1, r0
000827d6  62 20                                            movs r0, #0x62
000827d8  2e f0 8e ba                                      b.w #0xb0cf8

; FUNCTION 0x000827dc, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder8saturateENS_7operandE
; demangled: ir_builder::saturate(ir_builder::operand)
; decoder-mode: thumb
000827dc  01 46                                            mov r1, r0
000827de  3b 20                                            movs r0, #0x3b
000827e0  2e f0 82 ba                                      b.w #0xb0ce8

; FUNCTION 0x000827e4, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3absENS_7operandE
; demangled: ir_builder::abs(ir_builder::operand)
; decoder-mode: thumb
000827e4  01 46                                            mov r1, r0
000827e6  03 20                                            movs r0, #3
000827e8  2e f0 7e ba                                      b.w #0xb0ce8

; FUNCTION 0x000827ec, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3negENS_7operandE
; demangled: ir_builder::neg(ir_builder::operand)
; decoder-mode: thumb
000827ec  01 46                                            mov r1, r0
000827ee  02 20                                            movs r0, #2
000827f0  2e f0 7a ba                                      b.w #0xb0ce8

; FUNCTION 0x000827f4, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3sinENS_7operandE
; demangled: ir_builder::sin(ir_builder::operand)
; decoder-mode: thumb
000827f4  01 46                                            mov r1, r0
000827f6  21 20                                            movs r0, #0x21
000827f8  2e f0 76 ba                                      b.w #0xb0ce8

; FUNCTION 0x000827fc, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3cosENS_7operandE
; demangled: ir_builder::cos(ir_builder::operand)
; decoder-mode: thumb
000827fc  01 46                                            mov r1, r0
000827fe  22 20                                            movs r0, #0x22
00082800  2e f0 72 ba                                      b.w #0xb0ce8

; FUNCTION 0x00082804, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3expENS_7operandE
; demangled: ir_builder::exp(ir_builder::operand)
; decoder-mode: thumb
00082804  01 46                                            mov r1, r0
00082806  09 20                                            movs r0, #9
00082808  2e f0 6e ba                                      b.w #0xb0ce8

; FUNCTION 0x0008280c, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3rsqENS_7operandE
; demangled: ir_builder::rsq(ir_builder::operand)
; decoder-mode: thumb
0008280c  01 46                                            mov r1, r0
0008280e  06 20                                            movs r0, #6
00082810  2e f0 6a ba                                      b.w #0xb0ce8

; FUNCTION 0x00082814, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder4sqrtENS_7operandE
; demangled: ir_builder::sqrt(ir_builder::operand)
; decoder-mode: thumb
00082814  01 46                                            mov r1, r0
00082816  07 20                                            movs r0, #7
00082818  2e f0 66 ba                                      b.w #0xb0ce8

; FUNCTION 0x0008281c, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3logENS_7operandE
; demangled: ir_builder::log(ir_builder::operand)
; decoder-mode: thumb
0008281c  01 46                                            mov r1, r0
0008281e  0a 20                                            movs r0, #0xa
00082820  2e f0 62 ba                                      b.w #0xb0ce8

; FUNCTION 0x00082824, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder4signENS_7operandE
; demangled: ir_builder::sign(ir_builder::operand)
; decoder-mode: thumb
00082824  01 46                                            mov r1, r0
00082826  04 20                                            movs r0, #4
00082828  2e f0 5e ba                                      b.w #0xb0ce8

; FUNCTION 0x0008282c, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder5equalENS_7operandES0_
; demangled: ir_builder::equal(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008282c  0a 46                                            mov r2, r1
0008282e  01 46                                            mov r1, r0
00082830  4a 20                                            movs r0, #0x4a
00082832  2e f0 51 ba                                      b.w #0xb0cd8

; FUNCTION 0x00082836, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6nequalENS_7operandES0_
; demangled: ir_builder::nequal(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082836  0a 46                                            mov r2, r1
00082838  01 46                                            mov r1, r0
0008283a  4b 20                                            movs r0, #0x4b
0008283c  2e f0 4c ba                                      b.w #0xb0cd8

; FUNCTION 0x00082840, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder4lessENS_7operandES0_
; demangled: ir_builder::less(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082840  0a 46                                            mov r2, r1
00082842  01 46                                            mov r1, r0
00082844  46 20                                            movs r0, #0x46
00082846  2e f0 47 ba                                      b.w #0xb0cd8

; FUNCTION 0x0008284a, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder7greaterENS_7operandES0_
; demangled: ir_builder::greater(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008284a  0a 46                                            mov r2, r1
0008284c  01 46                                            mov r1, r0
0008284e  47 20                                            movs r0, #0x47
00082850  2e f0 42 ba                                      b.w #0xb0cd8

; FUNCTION 0x00082854, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6lequalENS_7operandES0_
; demangled: ir_builder::lequal(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082854  0a 46                                            mov r2, r1
00082856  01 46                                            mov r1, r0
00082858  48 20                                            movs r0, #0x48
0008285a  2e f0 3d ba                                      b.w #0xb0cd8

; FUNCTION 0x0008285e, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6gequalENS_7operandES0_
; demangled: ir_builder::gequal(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008285e  0a 46                                            mov r2, r1
00082860  01 46                                            mov r1, r0
00082862  49 20                                            movs r0, #0x49
00082864  2e f0 38 ba                                      b.w #0xb0cd8

; FUNCTION 0x00082868, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder9logic_notENS_7operandE
; demangled: ir_builder::logic_not(ir_builder::operand)
; decoder-mode: thumb
00082868  01 46                                            mov r1, r0
0008286a  01 20                                            movs r0, #1
0008286c  2e f0 3c ba                                      b.w #0xb0ce8

; FUNCTION 0x00082870, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder9logic_andENS_7operandES0_
; demangled: ir_builder::logic_and(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082870  0a 46                                            mov r2, r1
00082872  01 46                                            mov r1, r0
00082874  53 20                                            movs r0, #0x53
00082876  2e f0 2f ba                                      b.w #0xb0cd8

; FUNCTION 0x0008287a, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder8logic_orENS_7operandES0_
; demangled: ir_builder::logic_or(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008287a  0a 46                                            mov r2, r1
0008287c  01 46                                            mov r1, r0
0008287e  55 20                                            movs r0, #0x55
00082880  2e f0 2a ba                                      b.w #0xb0cd8

; FUNCTION 0x00082884, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder7bit_notENS_7operandE
; demangled: ir_builder::bit_not(ir_builder::operand)
; decoder-mode: thumb
00082884  01 46                                            mov r1, r0
00082886  00 20                                            movs r0, #0
00082888  2e f0 2e ba                                      b.w #0xb0ce8

; FUNCTION 0x0008288c, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder7bit_andENS_7operandES0_
; demangled: ir_builder::bit_and(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008288c  0a 46                                            mov r2, r1
0008288e  01 46                                            mov r1, r0
00082890  50 20                                            movs r0, #0x50
00082892  2e f0 21 ba                                      b.w #0xb0cd8

; FUNCTION 0x00082896, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6bit_orENS_7operandES0_
; demangled: ir_builder::bit_or(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082896  0a 46                                            mov r2, r1
00082898  01 46                                            mov r1, r0
0008289a  52 20                                            movs r0, #0x52
0008289c  2e f0 1c ba                                      b.w #0xb0cd8

; FUNCTION 0x000828a0, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6lshiftENS_7operandES0_
; demangled: ir_builder::lshift(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
000828a0  0a 46                                            mov r2, r1
000828a2  01 46                                            mov r1, r0
000828a4  4e 20                                            movs r0, #0x4e
000828a6  2e f0 17 ba                                      b.w #0xb0cd8

; FUNCTION 0x000828aa, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder6rshiftENS_7operandES0_
; demangled: ir_builder::rshift(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
000828aa  0a 46                                            mov r2, r1
000828ac  01 46                                            mov r1, r0
000828ae  4f 20                                            movs r0, #0x4f
000828b0  2e f0 12 ba                                      b.w #0xb0cd8

; FUNCTION 0x000828b4, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3f2iENS_7operandE
; demangled: ir_builder::f2i(ir_builder::operand)
; decoder-mode: thumb
000828b4  01 46                                            mov r1, r0
000828b6  0d 20                                            movs r0, #0xd
000828b8  2e f0 16 ba                                      b.w #0xb0ce8

; FUNCTION 0x000828bc, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder11bitcast_f2iENS_7operandE
; demangled: ir_builder::bitcast_f2i(ir_builder::operand)
; decoder-mode: thumb
000828bc  01 46                                            mov r1, r0
000828be  18 20                                            movs r0, #0x18
000828c0  2e f0 12 ba                                      b.w #0xb0ce8

; FUNCTION 0x000828c4, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3i2fENS_7operandE
; demangled: ir_builder::i2f(ir_builder::operand)
; decoder-mode: thumb
000828c4  01 46                                            mov r1, r0
000828c6  0f 20                                            movs r0, #0xf
000828c8  2e f0 0e ba                                      b.w #0xb0ce8

; FUNCTION 0x000828cc, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder11bitcast_i2fENS_7operandE
; demangled: ir_builder::bitcast_i2f(ir_builder::operand)
; decoder-mode: thumb
000828cc  01 46                                            mov r1, r0
000828ce  17 20                                            movs r0, #0x17
000828d0  2e f0 0a ba                                      b.w #0xb0ce8

; FUNCTION 0x000828d4, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3i2uENS_7operandE
; demangled: ir_builder::i2u(ir_builder::operand)
; decoder-mode: thumb
000828d4  01 46                                            mov r1, r0
000828d6  15 20                                            movs r0, #0x15
000828d8  2e f0 06 ba                                      b.w #0xb0ce8

; FUNCTION 0x000828dc, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3u2iENS_7operandE
; demangled: ir_builder::u2i(ir_builder::operand)
; decoder-mode: thumb
000828dc  01 46                                            mov r1, r0
000828de  16 20                                            movs r0, #0x16
000828e0  2e f0 02 ba                                      b.w #0xb0ce8

; FUNCTION 0x000828e4, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3f2uENS_7operandE
; demangled: ir_builder::f2u(ir_builder::operand)
; decoder-mode: thumb
000828e4  01 46                                            mov r1, r0
000828e6  0e 20                                            movs r0, #0xe
000828e8  2e f0 fe b9                                      b.w #0xb0ce8

; FUNCTION 0x000828ec, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder11bitcast_f2uENS_7operandE
; demangled: ir_builder::bitcast_f2u(ir_builder::operand)
; decoder-mode: thumb
000828ec  01 46                                            mov r1, r0
000828ee  1a 20                                            movs r0, #0x1a
000828f0  2e f0 fa b9                                      b.w #0xb0ce8

; FUNCTION 0x000828f4, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3u2fENS_7operandE
; demangled: ir_builder::u2f(ir_builder::operand)
; decoder-mode: thumb
000828f4  01 46                                            mov r1, r0
000828f6  14 20                                            movs r0, #0x14
000828f8  2e f0 f6 b9                                      b.w #0xb0ce8

; FUNCTION 0x000828fc, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder11bitcast_u2fENS_7operandE
; demangled: ir_builder::bitcast_u2f(ir_builder::operand)
; decoder-mode: thumb
000828fc  01 46                                            mov r1, r0
000828fe  19 20                                            movs r0, #0x19
00082900  2e f0 f2 b9                                      b.w #0xb0ce8

; FUNCTION 0x00082904, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3i2bENS_7operandE
; demangled: ir_builder::i2b(ir_builder::operand)
; decoder-mode: thumb
00082904  01 46                                            mov r1, r0
00082906  12 20                                            movs r0, #0x12
00082908  2e f0 ee b9                                      b.w #0xb0ce8

; FUNCTION 0x0008290c, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3b2iENS_7operandE
; demangled: ir_builder::b2i(ir_builder::operand)
; decoder-mode: thumb
0008290c  01 46                                            mov r1, r0
0008290e  13 20                                            movs r0, #0x13
00082910  2e f0 ea b9                                      b.w #0xb0ce8

; FUNCTION 0x00082914, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3f2bENS_7operandE
; demangled: ir_builder::f2b(ir_builder::operand)
; decoder-mode: thumb
00082914  01 46                                            mov r1, r0
00082916  10 20                                            movs r0, #0x10
00082918  2e f0 e6 b9                                      b.w #0xb0ce8

; FUNCTION 0x0008291c, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3b2fENS_7operandE
; demangled: ir_builder::b2f(ir_builder::operand)
; decoder-mode: thumb
0008291c  01 46                                            mov r1, r0
0008291e  11 20                                            movs r0, #0x11
00082920  2e f0 e2 b9                                      b.w #0xb0ce8

; FUNCTION 0x00082924, declared_size=8, range_size=8, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder23interpolate_at_centroidENS_7operandE
; demangled: ir_builder::interpolate_at_centroid(ir_builder::operand)
; decoder-mode: thumb
00082924  01 46                                            mov r1, r0
00082926  3d 20                                            movs r0, #0x3d
00082928  2e f0 de b9                                      b.w #0xb0ce8

; FUNCTION 0x0008292c, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder21interpolate_at_offsetENS_7operandES0_
; demangled: ir_builder::interpolate_at_offset(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008292c  0a 46                                            mov r2, r1
0008292e  01 46                                            mov r1, r0
00082930  5f 20                                            movs r0, #0x5f
00082932  2e f0 d1 b9                                      b.w #0xb0cd8

; FUNCTION 0x00082936, declared_size=10, range_size=10, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder21interpolate_at_sampleENS_7operandES0_
; demangled: ir_builder::interpolate_at_sample(ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082936  0a 46                                            mov r2, r1
00082938  01 46                                            mov r1, r0
0008293a  60 20                                            movs r0, #0x60
0008293c  2e f0 cc b9                                      b.w #0xb0cd8

; FUNCTION 0x00082940, declared_size=12, range_size=12, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3fmaENS_7operandES0_S0_
; demangled: ir_builder::fma(ir_builder::operand, ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082940  13 46                                            mov r3, r2
00082942  0a 46                                            mov r2, r1
00082944  01 46                                            mov r1, r0
00082946  61 20                                            movs r0, #0x61
00082948  2e f0 d6 b9                                      b.w #0xb0cf8

; FUNCTION 0x0008294c, declared_size=12, range_size=12, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder3lrpENS_7operandES0_S0_
; demangled: ir_builder::lrp(ir_builder::operand, ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
0008294c  13 46                                            mov r3, r2
0008294e  0a 46                                            mov r2, r1
00082950  01 46                                            mov r1, r0
00082952  63 20                                            movs r0, #0x63
00082954  2e f0 d0 b9                                      b.w #0xb0cf8

; FUNCTION 0x00082958, declared_size=12, range_size=12, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder4cselENS_7operandES0_S0_
; demangled: ir_builder::csel(ir_builder::operand, ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082958  13 46                                            mov r3, r2
0008295a  0a 46                                            mov r2, r1
0008295c  01 46                                            mov r1, r0
0008295e  64 20                                            movs r0, #0x64
00082960  2e f0 ca b9                                      b.w #0xb0cf8

; FUNCTION 0x00082964, declared_size=76, range_size=76, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder15bitfield_insertENS_7operandES0_S0_S0_
; demangled: ir_builder::bitfield_insert(ir_builder::operand, ir_builder::operand, ir_builder::operand, ir_builder::operand)
; decoder-mode: thumb
00082964  f0 b5                                            push {r4, r5, r6, r7, lr}
00082966  03 af                                            add r7, sp, #0xc
00082968  2d e9 00 0b                                      push.w {r8, sb, fp}
0008296c  84 b0                                            sub sp, #0x10
0008296e  98 46                                            mov r8, r3
00082970  91 46                                            mov sb, r2
00082972  0e 46                                            mov r6, r1
00082974  04 46                                            mov r4, r0
00082976  b0 f7 d8 e8                                      blx #0x32b28
0008297a  2c 21                                            movs r1, #0x2c
0008297c  af f7 d0 ee                                      blx #0x32720
00082980  05 46                                            mov r5, r0
00082982  0a 48                                            ldr r0, [pc, #0x28]
00082984  78 44                                            add r0, pc
00082986  01 68                                            ldr r1, [r0]
00082988  28 46                                            mov r0, r5
0008298a  af f7 ba ef                                      blx #0x32900
0008298e  22 69                                            ldr r2, [r4, #0x10]
00082990  28 46                                            mov r0, r5
00082992  68 21                                            movs r1, #0x68
00082994  23 46                                            mov r3, r4
00082996  cd e9 00 69                                      strd r6, sb, [sp]
0008299a  cd f8 08 80                                      str.w r8, [sp, #8]
0008299e  b0 f7 ac e8                                      blx #0x32af8
000829a2  04 b0                                            add sp, #0x10
000829a4  bd e8 00 0b                                      pop.w {r8, sb, fp}
000829a8  f0 bd                                            pop {r4, r5, r6, r7, pc}
000829aa  00 bf                                            nop
000829ac  b4 9b                                            ldr r3, [sp, #0x2d0]
000829ae  05 00                                            movs r5, r0

; FUNCTION 0x000829b0, declared_size=116, range_size=116, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder7if_treeENS_7operandEP14ir_instruction
; demangled: ir_builder::if_tree(ir_builder::operand, ir_instruction*)
; decoder-mode: thumb
000829b0  f0 b5                                            push {r4, r5, r6, r7, lr}
000829b2  03 af                                            add r7, sp, #0xc
000829b4  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000829b8  0c 46                                            mov r4, r1
000829ba  06 46                                            mov r6, r0
000829bc  b0 f7 b4 e8                                      blx #0x32b28
000829c0  2c 21                                            movs r1, #0x2c
000829c2  af f7 ae ee                                      blx #0x32720
000829c6  05 46                                            mov r5, r0
000829c8  14 48                                            ldr r0, [pc, #0x50]
000829ca  78 44                                            add r0, pc
000829cc  01 68                                            ldr r1, [r0]
000829ce  28 46                                            mov r0, r5
000829d0  af f7 96 ef                                      blx #0x32900
000829d4  12 48                                            ldr r0, [pc, #0x48]
000829d6  29 46                                            mov r1, r5
000829d8  00 2c                                            cmp r4, #0
000829da  78 44                                            add r0, pc
000829dc  00 68                                            ldr r0, [r0]
000829de  00 f1 08 00                                      add.w r0, r0, #8
000829e2  28 60                                            str r0, [r5]
000829e4  4f f0 0c 00                                      mov.w r0, #0xc
000829e8  c5 e9 03 06                                      strd r0, r6, [r5, #0xc]
000829ec  4f f0 00 00                                      mov.w r0, #0
000829f0  41 f8 24 0f                                      str r0, [r1, #0x24]!
000829f4  29 62                                            str r1, [r5, #0x20]
000829f6  05 f1 20 01                                      add.w r1, r5, #0x20
000829fa  a9 62                                            str r1, [r5, #0x28]
000829fc  29 46                                            mov r1, r5
000829fe  41 f8 18 0f                                      str r0, [r1, #0x18]!
00082a02  18 bf                                            it ne
00082a04  04 34                                            addne r4, #4
00082a06  05 f1 14 00                                      add.w r0, r5, #0x14
00082a0a  60 60                                            str r0, [r4, #4]
00082a0c  21 60                                            str r1, [r4]
00082a0e  28 46                                            mov r0, r5
00082a10  ec 61                                            str r4, [r5, #0x1c]
00082a12  6c 61                                            str r4, [r5, #0x14]
00082a14  5d f8 04 bb                                      ldr fp, [sp], #4
00082a18  f0 bd                                            pop {r4, r5, r6, r7, pc}
00082a1a  00 bf                                            nop
00082a1c  6e 9b                                            ldr r3, [sp, #0x1b8]
00082a1e  05 00                                            movs r5, r0
00082a20  7e 9b                                            ldr r3, [sp, #0x1f8]
00082a22  05 00                                            movs r5, r0

; FUNCTION 0x00082a24, declared_size=132, range_size=132, mode=thumb
; class-group: ir_builder
; alias: _ZN10ir_builder7if_treeENS_7operandEP14ir_instructionS2_
; demangled: ir_builder::if_tree(ir_builder::operand, ir_instruction*, ir_instruction*)
; decoder-mode: thumb
00082a24  f0 b5                                            push {r4, r5, r6, r7, lr}
00082a26  03 af                                            add r7, sp, #0xc
00082a28  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00082a2c  14 46                                            mov r4, r2
00082a2e  0d 46                                            mov r5, r1
00082a30  80 46                                            mov r8, r0
00082a32  b0 f7 7a e8                                      blx #0x32b28
00082a36  2c 21                                            movs r1, #0x2c
00082a38  af f7 72 ee                                      blx #0x32720
00082a3c  06 46                                            mov r6, r0
00082a3e  18 48                                            ldr r0, [pc, #0x60]
00082a40  78 44                                            add r0, pc
00082a42  01 68                                            ldr r1, [r0]
00082a44  30 46                                            mov r0, r6
00082a46  af f7 5c ef                                      blx #0x32900
00082a4a  16 48                                            ldr r0, [pc, #0x58]
00082a4c  31 46                                            mov r1, r6
00082a4e  06 f1 20 02                                      add.w r2, r6, #0x20
00082a52  00 2d                                            cmp r5, #0
00082a54  78 44                                            add r0, pc
00082a56  00 68                                            ldr r0, [r0]
00082a58  00 f1 08 00                                      add.w r0, r0, #8
00082a5c  30 60                                            str r0, [r6]
00082a5e  4f f0 0c 00                                      mov.w r0, #0xc
00082a62  c6 e9 03 08                                      strd r0, r8, [r6, #0xc]
00082a66  4f f0 00 00                                      mov.w r0, #0
00082a6a  41 f8 24 0f                                      str r0, [r1, #0x24]!
00082a6e  31 62                                            str r1, [r6, #0x20]
00082a70  b2 62                                            str r2, [r6, #0x28]
00082a72  32 46                                            mov r2, r6
00082a74  42 f8 18 0f                                      str r0, [r2, #0x18]!
00082a78  18 bf                                            it ne
00082a7a  04 35                                            addne r5, #4
00082a7c  06 f1 14 00                                      add.w r0, r6, #0x14
00082a80  68 60                                            str r0, [r5, #4]
00082a82  2a 60                                            str r2, [r5]
00082a84  00 2c                                            cmp r4, #0
00082a86  f5 61                                            str r5, [r6, #0x1c]
00082a88  75 61                                            str r5, [r6, #0x14]
00082a8a  18 bf                                            it ne
00082a8c  04 34                                            addne r4, #4
00082a8e  21 60                                            str r1, [r4]
00082a90  b0 6a                                            ldr r0, [r6, #0x28]
00082a92  60 60                                            str r0, [r4, #4]
00082a94  04 60                                            str r4, [r0]
00082a96  30 46                                            mov r0, r6
00082a98  b4 62                                            str r4, [r6, #0x28]
00082a9a  5d f8 04 8b                                      ldr r8, [sp], #4
00082a9e  f0 bd                                            pop {r4, r5, r6, r7, pc}
00082aa0  f8 9a                                            ldr r2, [sp, #0x3e0]
00082aa2  05 00                                            movs r5, r0
00082aa4  04 9b                                            ldr r3, [sp, #0x10]
00082aa6  05 00                                            movs r5, r0
