; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000816d0, declared_size=72, range_size=72, mode=thumb
; class-group: ir_dereference_array
; alias: _ZN20ir_dereference_arrayC1EP9ir_rvalueS1_
; demangled: ir_dereference_array::ir_dereference_array(ir_rvalue*, ir_rvalue*)
; alias: _ZN20ir_dereference_arrayC2EP9ir_rvalueS1_
; demangled: ir_dereference_array::ir_dereference_array(ir_rvalue*, ir_rvalue*)
; decoder-mode: thumb
000816d0  f0 b5                                            push {r4, r5, r6, r7, lr}
000816d2  03 af                                            add r7, sp, #0xc
000816d4  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000816d8  0d 46                                            mov r5, r1
000816da  06 46                                            mov r6, r0
000816dc  28 46                                            mov r0, r5
000816de  14 46                                            mov r4, r2
000816e0  b1 f7 e2 ea                                      blx #0x32ca8
000816e4  0a 49                                            ldr r1, [pc, #0x28]
000816e6  00 23                                            movs r3, #0
000816e8  0a 4a                                            ldr r2, [pc, #0x28]
000816ea  79 44                                            add r1, pc
000816ec  f3 60                                            str r3, [r6, #0xc]
000816ee  7a 44                                            add r2, pc
000816f0  70 61                                            str r0, [r6, #0x14]
000816f2  09 68                                            ldr r1, [r1]
000816f4  10 68                                            ldr r0, [r2]
000816f6  f4 61                                            str r4, [r6, #0x1c]
000816f8  08 30                                            adds r0, #8
000816fa  09 68                                            ldr r1, [r1]
000816fc  30 60                                            str r0, [r6]
000816fe  30 46                                            mov r0, r6
00081700  31 61                                            str r1, [r6, #0x10]
00081702  29 46                                            mov r1, r5
00081704  b2 f7 68 ea                                      blx #0x33bd8
00081708  30 46                                            mov r0, r6
0008170a  5d f8 04 bb                                      ldr fp, [sp], #4
0008170e  f0 bd                                            pop {r4, r5, r6, r7, pc}
00081710  52 ae                                            add r6, sp, #0x148
00081712  05 00                                            movs r5, r0
00081714  92 b2                                            uxth r2, r2
00081716  05 00                                            movs r5, r0

; FUNCTION 0x00081718, declared_size=72, range_size=72, mode=thumb
; class-group: ir_dereference_array
; alias: _ZN20ir_dereference_array9set_arrayEP9ir_rvalue
; demangled: ir_dereference_array::set_array(ir_rvalue*)
; decoder-mode: thumb
00081718  d0 b5                                            push {r4, r6, r7, lr}
0008171a  02 af                                            add r7, sp, #8
0008171c  04 46                                            mov r4, r0
0008171e  a1 61                                            str r1, [r4, #0x18]
00081720  08 69                                            ldr r0, [r1, #0x10]
00081722  41 68                                            ldr r1, [r0, #4]
00081724  09 29                                            cmp r1, #9
00081726  01 d1                                            bne #0x8172c
00081728  40 69                                            ldr r0, [r0, #0x14]
0008172a  17 e0                                            b #0x8175c
0008172c  02 89                                            ldrh r2, [r0, #8]
0008172e  02 29                                            cmp r1, #2
00081730  05 d1                                            bne #0x8173e
00081732  12 f4 c0 43                                      ands r3, r2, #0x6000
00081736  02 d0                                            beq #0x8173e
00081738  b1 f7 60 e9                                      blx #0x329fc
0008173c  0e e0                                            b #0x8175c
0008173e  02 f4 40 63                                      and r3, r2, #0xc00
00081742  b3 f5 00 7f                                      cmp.w r3, #0x200
00081746  0a d9                                            bls #0x8175e
00081748  02 f4 e0 42                                      and r2, r2, #0x7000
0008174c  b2 f5 80 5f                                      cmp.w r2, #0x1000
00081750  05 d1                                            bne #0x8175e
00081752  03 29                                            cmp r1, #3
00081754  88 bf                                            it hi
00081756  d0 bd                                            pophi {r4, r6, r7, pc}
00081758  b2 f7 32 ea                                      blx #0x33bc0
0008175c  20 61                                            str r0, [r4, #0x10]
0008175e  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x00081760, declared_size=136, range_size=136, mode=thumb
; class-group: ir_dereference_array
; alias: _ZN20ir_dereference_arrayC1EP11ir_variableP9ir_rvalue
; demangled: ir_dereference_array::ir_dereference_array(ir_variable*, ir_rvalue*)
; alias: _ZN20ir_dereference_arrayC2EP11ir_variableP9ir_rvalue
; demangled: ir_dereference_array::ir_dereference_array(ir_variable*, ir_rvalue*)
; decoder-mode: thumb
00081760  f0 b5                                            push {r4, r5, r6, r7, lr}
00081762  03 af                                            add r7, sp, #0xc
00081764  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00081768  0d 46                                            mov r5, r1
0008176a  04 46                                            mov r4, r0
0008176c  28 46                                            mov r0, r5
0008176e  16 46                                            mov r6, r2
00081770  b1 f7 9a ea                                      blx #0x32ca8
00081774  19 4a                                            ldr r2, [pc, #0x64]
00081776  00 23                                            movs r3, #0
00081778  17 49                                            ldr r1, [pc, #0x5c]
0008177a  7a 44                                            add r2, pc
0008177c  79 44                                            add r1, pc
0008177e  12 68                                            ldr r2, [r2]
00081780  09 68                                            ldr r1, [r1]
00081782  12 68                                            ldr r2, [r2]
00081784  08 31                                            adds r1, #8
00081786  21 60                                            str r1, [r4]
00081788  c4 e9 03 32                                      strd r3, r2, [r4, #0xc]
0008178c  60 61                                            str r0, [r4, #0x14]
0008178e  28 46                                            mov r0, r5
00081790  b1 f7 ca e9                                      blx #0x32b28
00081794  1c 21                                            movs r1, #0x1c
00081796  e6 61                                            str r6, [r4, #0x1c]
00081798  b0 f7 c2 ef                                      blx #0x32720
0008179c  06 46                                            mov r6, r0
0008179e  10 48                                            ldr r0, [pc, #0x40]
000817a0  78 44                                            add r0, pc
000817a2  01 68                                            ldr r1, [r0]
000817a4  30 46                                            mov r0, r6
000817a6  b1 f7 ac e8                                      blx #0x32900
000817aa  28 46                                            mov r0, r5
000817ac  b1 f7 7c ea                                      blx #0x32ca8
000817b0  0c 49                                            ldr r1, [pc, #0x30]
000817b2  02 22                                            movs r2, #2
000817b4  f2 60                                            str r2, [r6, #0xc]
000817b6  79 44                                            add r1, pc
000817b8  70 61                                            str r0, [r6, #0x14]
000817ba  09 68                                            ldr r1, [r1]
000817bc  01 f1 08 00                                      add.w r0, r1, #8
000817c0  30 60                                            str r0, [r6]
000817c2  b5 61                                            str r5, [r6, #0x18]
000817c4  31 46                                            mov r1, r6
000817c6  28 69                                            ldr r0, [r5, #0x10]
000817c8  30 61                                            str r0, [r6, #0x10]
000817ca  20 46                                            mov r0, r4
000817cc  b2 f7 04 ea                                      blx #0x33bd8
000817d0  20 46                                            mov r0, r4
000817d2  5d f8 04 bb                                      ldr fp, [sp], #4
000817d6  f0 bd                                            pop {r4, r5, r6, r7, pc}
000817d8  04 b2                                            sxth r4, r0
000817da  05 00                                            movs r5, r0
000817dc  c2 ad                                            add r5, sp, #0x308
000817de  05 00                                            movs r5, r0
000817e0  98 ad                                            add r5, sp, #0x260
000817e2  05 00                                            movs r5, r0
000817e4  c6 b1                                            cbz r6, #0x81818
000817e6  05 00                                            movs r5, r0

; FUNCTION 0x00083008, declared_size=84, range_size=84, mode=thumb
; class-group: ir_dereference_array
; alias: _ZNK20ir_dereference_array5cloneEPvP10hash_table
; demangled: ir_dereference_array::clone(void*, hash_table*) const
; decoder-mode: thumb
00083008  f0 b5                                            push {r4, r5, r6, r7, lr}
0008300a  03 af                                            add r7, sp, #0xc
0008300c  2d e9 00 0b                                      push.w {r8, sb, fp}
00083010  0d 46                                            mov r5, r1
00083012  06 46                                            mov r6, r0
00083014  28 46                                            mov r0, r5
00083016  20 21                                            movs r1, #0x20
00083018  90 46                                            mov r8, r2
0008301a  af f7 82 eb                                      blx #0x32720
0008301e  04 46                                            mov r4, r0
00083020  0d 48                                            ldr r0, [pc, #0x34]
00083022  78 44                                            add r0, pc
00083024  01 68                                            ldr r1, [r0]
00083026  20 46                                            mov r0, r4
00083028  af f7 6a ec                                      blx #0x32900
0008302c  b0 69                                            ldr r0, [r6, #0x18]
0008302e  42 46                                            mov r2, r8
00083030  01 68                                            ldr r1, [r0]
00083032  0b 69                                            ldr r3, [r1, #0x10]
00083034  29 46                                            mov r1, r5
00083036  98 47                                            blx r3
00083038  81 46                                            mov sb, r0
0008303a  f0 69                                            ldr r0, [r6, #0x1c]
0008303c  42 46                                            mov r2, r8
0008303e  01 68                                            ldr r1, [r0]
00083040  0b 69                                            ldr r3, [r1, #0x10]
00083042  29 46                                            mov r1, r5
00083044  98 47                                            blx r3
00083046  02 46                                            mov r2, r0
00083048  20 46                                            mov r0, r4
0008304a  49 46                                            mov r1, sb
0008304c  bd e8 00 0b                                      pop.w {r8, sb, fp}
00083050  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00083054  2d f0 60 be                                      b.w #0xb0d18
00083058  16 95                                            str r5, [sp, #0x58]
0008305a  05 00                                            movs r5, r0

; FUNCTION 0x000837a4, declared_size=22, range_size=22, mode=thumb
; class-group: ir_dereference_array
; alias: _ZN20ir_dereference_arrayD0Ev
; demangled: ir_dereference_array::~ir_dereference_array()
; decoder-mode: thumb
000837a4  d0 b5                                            push {r4, r6, r7, lr}
000837a6  02 af                                            add r7, sp, #8
000837a8  00 21                                            movs r1, #0
000837aa  04 46                                            mov r4, r0
000837ac  af f7 a8 e8                                      blx #0x32900
000837b0  20 46                                            mov r0, r4
000837b2  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000837b6  2d f0 57 b9                                      b.w #0xb0a68

; FUNCTION 0x000837ba, declared_size=12, range_size=12, mode=thumb
; class-group: ir_dereference_array
; alias: _ZN20ir_dereference_array6acceptEP10ir_visitor
; demangled: ir_dereference_array::accept(ir_visitor*)
; decoder-mode: thumb
000837ba  02 46                                            mov r2, r0
000837bc  08 68                                            ldr r0, [r1]
000837be  83 6a                                            ldr r3, [r0, #0x28]
000837c0  08 46                                            mov r0, r1
000837c2  11 46                                            mov r1, r2
000837c4  18 47                                            bx r3

; FUNCTION 0x000837c6, declared_size=8, range_size=8, mode=thumb
; class-group: ir_dereference_array
; alias: _ZNK20ir_dereference_array19variable_referencedEv
; demangled: ir_dereference_array::variable_referenced() const
; decoder-mode: thumb
000837c6  80 69                                            ldr r0, [r0, #0x18]
000837c8  01 68                                            ldr r1, [r0]
000837ca  09 6a                                            ldr r1, [r1, #0x20]
000837cc  08 47                                            bx r1

; FUNCTION 0x00085d7c, declared_size=392, range_size=392, mode=thumb
; class-group: ir_dereference_array
; alias: _ZN20ir_dereference_array25constant_expression_valueEP10hash_table
; demangled: ir_dereference_array::constant_expression_value(hash_table*)
; decoder-mode: thumb
00085d7c  f0 b5                                            push {r4, r5, r6, r7, lr}
00085d7e  03 af                                            add r7, sp, #0xc
00085d80  2d e9 00 07                                      push.w {r8, sb, sl}
00085d84  92 b0                                            sub sp, #0x48
00085d86  05 46                                            mov r5, r0
00085d88  59 48                                            ldr r0, [pc, #0x164]
00085d8a  0c 46                                            mov r4, r1
00085d8c  78 44                                            add r0, pc
00085d8e  00 68                                            ldr r0, [r0]
00085d90  00 68                                            ldr r0, [r0]
00085d92  11 90                                            str r0, [sp, #0x44]
00085d94  a8 69                                            ldr r0, [r5, #0x18]
00085d96  01 68                                            ldr r1, [r0]
00085d98  8a 69                                            ldr r2, [r1, #0x18]
00085d9a  21 46                                            mov r1, r4
00085d9c  90 47                                            blx r2
00085d9e  81 46                                            mov sb, r0
00085da0  e8 69                                            ldr r0, [r5, #0x1c]
00085da2  01 68                                            ldr r1, [r0]
00085da4  8a 69                                            ldr r2, [r1, #0x18]
00085da6  21 46                                            mov r1, r4
00085da8  90 47                                            blx r2
00085daa  b9 f1 00 0f                                      cmp.w sb, #0
00085dae  06 46                                            mov r6, r0
00085db0  4f f0 00 04                                      mov.w r4, #0
00085db4  18 bf                                            it ne
00085db6  00 2e                                            cmpne r6, #0
00085db8  00 f0 8c 80                                      beq.w #0x85ed4
00085dbc  28 46                                            mov r0, r5
00085dbe  ac f7 b4 ee                                      blx #0x32b28
00085dc2  80 46                                            mov r8, r0
00085dc4  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
00085dc8  01 89                                            ldrh r1, [r0, #8]
00085dca  11 f4 c0 4f                                      tst.w r1, #0x6000
00085dce  27 d0                                            beq #0x85e20
00085dd0  42 68                                            ldr r2, [r0, #4]
00085dd2  02 2a                                            cmp r2, #2
00085dd4  24 d1                                            bne #0x85e20
00085dd6  d6 f8 18 a0                                      ldr.w sl, [r6, #0x18]
00085dda  ac f7 10 ee                                      blx #0x329fc
00085dde  6c 46                                            mov r4, sp
00085de0  06 46                                            mov r6, r0
00085de2  20 46                                            mov r0, r4
00085de4  40 21                                            movs r1, #0x40
00085de6  35 89                                            ldrh r5, [r6, #8]
00085de8  ac f7 2c eb                                      blx #0x32444
00085dec  71 68                                            ldr r1, [r6, #4]
00085dee  c5 f3 42 20                                      ubfx r0, r5, #9, #3
00085df2  02 29                                            cmp r1, #2
00085df4  49 d2                                            bhs #0x85e8a
00085df6  71 7a                                            ldrb r1, [r6, #9]
00085df8  11 f0 0e 0f                                      tst.w r1, #0xe
00085dfc  5a d0                                            beq #0x85eb4
00085dfe  0a fb 00 f0                                      mul r0, sl, r0
00085e02  00 21                                            movs r1, #0
00085e04  09 eb 80 00                                      add.w r0, sb, r0, lsl #2
00085e08  18 30                                            adds r0, #0x18
00085e0a  50 f8 21 20                                      ldr.w r2, [r0, r1, lsl #2]
00085e0e  44 f8 21 20                                      str.w r2, [r4, r1, lsl #2]
00085e12  01 31                                            adds r1, #1
00085e14  32 89                                            ldrh r2, [r6, #8]
00085e16  c2 f3 42 22                                      ubfx r2, r2, #9, #3
00085e1a  91 42                                            cmp r1, r2
00085e1c  f5 d3                                            blo #0x85e0a
00085e1e  49 e0                                            b #0x85eb4
00085e20  01 f4 40 62                                      and r2, r1, #0xc00
00085e24  b2 f5 00 7f                                      cmp.w r2, #0x200
00085e28  19 d9                                            bls #0x85e5e
00085e2a  01 f4 e0 41                                      and r1, r1, #0x7000
00085e2e  b1 f5 80 5f                                      cmp.w r1, #0x1000
00085e32  14 d1                                            bne #0x85e5e
00085e34  40 68                                            ldr r0, [r0, #4]
00085e36  b5 69                                            ldr r5, [r6, #0x18]
00085e38  03 28                                            cmp r0, #3
00085e3a  11 d8                                            bhi #0x85e60
00085e3c  40 46                                            mov r0, r8
00085e3e  68 21                                            movs r1, #0x68
00085e40  ac f7 6e ec                                      blx #0x32720
00085e44  04 46                                            mov r4, r0
00085e46  2d 48                                            ldr r0, [pc, #0xb4]
00085e48  78 44                                            add r0, pc
00085e4a  01 68                                            ldr r1, [r0]
00085e4c  20 46                                            mov r0, r4
00085e4e  ac f7 58 ed                                      blx #0x32900
00085e52  20 46                                            mov r0, r4
00085e54  49 46                                            mov r1, sb
00085e56  2a 46                                            mov r2, r5
00085e58  ac f7 7e ee                                      blx #0x32b58
00085e5c  3a e0                                            b #0x85ed4
00085e5e  b5 69                                            ldr r5, [r6, #0x18]
00085e60  48 46                                            mov r0, sb
00085e62  29 46                                            mov r1, r5
00085e64  ae f7 fa e9                                      blx #0x3425c
00085e68  01 68                                            ldr r1, [r0]
00085e6a  0b 69                                            ldr r3, [r1, #0x10]
00085e6c  22 49                                            ldr r1, [pc, #0x88]
00085e6e  11 9a                                            ldr r2, [sp, #0x44]
00085e70  79 44                                            add r1, pc
00085e72  09 68                                            ldr r1, [r1]
00085e74  09 68                                            ldr r1, [r1]
00085e76  89 1a                                            subs r1, r1, r2
00085e78  38 d1                                            bne #0x85eec
00085e7a  41 46                                            mov r1, r8
00085e7c  00 22                                            movs r2, #0
00085e7e  12 b0                                            add sp, #0x48
00085e80  bd e8 00 07                                      pop.w {r8, sb, sl}
00085e84  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00085e88  18 47                                            bx r3
00085e8a  13 d1                                            bne #0x85eb4
00085e8c  71 7a                                            ldrb r1, [r6, #9]
00085e8e  11 f0 0e 0f                                      tst.w r1, #0xe
00085e92  0f d0                                            beq #0x85eb4
00085e94  0a fb 00 f0                                      mul r0, sl, r0
00085e98  00 21                                            movs r1, #0
00085e9a  09 eb 80 00                                      add.w r0, sb, r0, lsl #2
00085e9e  18 30                                            adds r0, #0x18
00085ea0  50 f8 21 20                                      ldr.w r2, [r0, r1, lsl #2]
00085ea4  44 f8 21 20                                      str.w r2, [r4, r1, lsl #2]
00085ea8  01 31                                            adds r1, #1
00085eaa  32 89                                            ldrh r2, [r6, #8]
00085eac  c2 f3 42 22                                      ubfx r2, r2, #9, #3
00085eb0  91 42                                            cmp r1, r2
00085eb2  f5 d3                                            blo #0x85ea0
00085eb4  40 46                                            mov r0, r8
00085eb6  68 21                                            movs r1, #0x68
00085eb8  ac f7 32 ec                                      blx #0x32720
00085ebc  04 46                                            mov r4, r0
00085ebe  0d 48                                            ldr r0, [pc, #0x34]
00085ec0  78 44                                            add r0, pc
00085ec2  01 68                                            ldr r1, [r0]
00085ec4  20 46                                            mov r0, r4
00085ec6  ac f7 1c ed                                      blx #0x32900
00085eca  6a 46                                            mov r2, sp
00085ecc  20 46                                            mov r0, r4
00085ece  31 46                                            mov r1, r6
00085ed0  ac f7 76 ed                                      blx #0x329c0
00085ed4  0a 48                                            ldr r0, [pc, #0x28]
00085ed6  11 99                                            ldr r1, [sp, #0x44]
00085ed8  78 44                                            add r0, pc
00085eda  00 68                                            ldr r0, [r0]
00085edc  00 68                                            ldr r0, [r0]
00085ede  40 1a                                            subs r0, r0, r1
00085ee0  01 bf                                            itttt eq
00085ee2  20 46                                            moveq r0, r4
00085ee4  12 b0                                            addeq sp, #0x48
00085ee6  bd e8 00 07                                      popeq.w {r8, sb, sl}
00085eea  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00085eec  ac f7 b8 e8                                      blx #0x32060
00085ef0  28 67                                            str r0, [r5, #0x70]
00085ef2  05 00                                            movs r5, r0
00085ef4  78 66                                            str r0, [r7, #0x64]
00085ef6  05 00                                            movs r5, r0
00085ef8  44 66                                            str r4, [r0, #0x64]
00085efa  05 00                                            movs r5, r0
00085efc  f0 66                                            str r0, [r6, #0x6c]
00085efe  05 00                                            movs r5, r0
00085f00  dc 65                                            str r4, [r3, #0x5c]
00085f02  05 00                                            movs r5, r0

; FUNCTION 0x0008636e, declared_size=72, range_size=72, mode=thumb
; class-group: ir_dereference_array
; alias: _ZN20ir_dereference_array6equalsEP14ir_instruction12ir_node_type
; demangled: ir_dereference_array::equals(ir_instruction*, ir_node_type)
; decoder-mode: thumb
0008636e  f0 b5                                            push {r4, r5, r6, r7, lr}
00086370  03 af                                            add r7, sp, #0xc
00086372  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00086376  0d 46                                            mov r5, r1
00086378  14 46                                            mov r4, r2
0008637a  06 46                                            mov r6, r0
0008637c  bd b1                                            cbz r5, #0x863ae
0008637e  e8 68                                            ldr r0, [r5, #0xc]
00086380  a8 b9                                            cbnz r0, #0x863ae
00086382  28 69                                            ldr r0, [r5, #0x10]
00086384  31 69                                            ldr r1, [r6, #0x10]
00086386  81 42                                            cmp r1, r0
00086388  11 d1                                            bne #0x863ae
0008638a  b0 69                                            ldr r0, [r6, #0x18]
0008638c  a9 69                                            ldr r1, [r5, #0x18]
0008638e  02 68                                            ldr r2, [r0]
00086390  53 69                                            ldr r3, [r2, #0x14]
00086392  22 46                                            mov r2, r4
00086394  98 47                                            blx r3
00086396  01 28                                            cmp r0, #1
00086398  09 d1                                            bne #0x863ae
0008639a  f0 69                                            ldr r0, [r6, #0x1c]
0008639c  e9 69                                            ldr r1, [r5, #0x1c]
0008639e  02 68                                            ldr r2, [r0]
000863a0  53 69                                            ldr r3, [r2, #0x14]
000863a2  22 46                                            mov r2, r4
000863a4  5d f8 04 bb                                      ldr fp, [sp], #4
000863a8  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000863ac  18 47                                            bx r3
000863ae  00 20                                            movs r0, #0
000863b0  5d f8 04 bb                                      ldr fp, [sp], #4
000863b4  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00087640, declared_size=94, range_size=94, mode=thumb
; class-group: ir_dereference_array
; alias: _ZN20ir_dereference_array6acceptEP23ir_hierarchical_visitor
; demangled: ir_dereference_array::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
00087640  f0 b5                                            push {r4, r5, r6, r7, lr}
00087642  03 af                                            add r7, sp, #0xc
00087644  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00087648  0d 46                                            mov r5, r1
0008764a  04 46                                            mov r4, r0
0008764c  28 68                                            ldr r0, [r5]
0008764e  21 46                                            mov r1, r4
00087650  c2 6c                                            ldr r2, [r0, #0x4c]
00087652  28 46                                            mov r0, r5
00087654  90 47                                            blx r2
00087656  50 b9                                            cbnz r0, #0x8766e
00087658  00 20                                            movs r0, #0
0008765a  2e 7e                                            ldrb r6, [r5, #0x18]
0008765c  28 76                                            strb r0, [r5, #0x18]
0008765e  e0 69                                            ldr r0, [r4, #0x1c]
00087660  01 68                                            ldr r1, [r0]
00087662  ca 68                                            ldr r2, [r1, #0xc]
00087664  29 46                                            mov r1, r5
00087666  90 47                                            blx r2
00087668  00 28                                            cmp r0, #0
0008766a  2e 76                                            strb r6, [r5, #0x18]
0008766c  05 d0                                            beq #0x8767a
0008766e  01 28                                            cmp r0, #1
00087670  08 bf                                            it eq
00087672  00 20                                            moveq r0, #0
00087674  5d f8 04 bb                                      ldr fp, [sp], #4
00087678  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008767a  a0 69                                            ldr r0, [r4, #0x18]
0008767c  01 68                                            ldr r1, [r0]
0008767e  ca 68                                            ldr r2, [r1, #0xc]
00087680  29 46                                            mov r1, r5
00087682  90 47                                            blx r2
00087684  02 28                                            cmp r0, #2
00087686  01 d1                                            bne #0x8768c
00087688  02 20                                            movs r0, #2
0008768a  f3 e7                                            b #0x87674
0008768c  28 68                                            ldr r0, [r5]
0008768e  21 46                                            mov r1, r4
00087690  02 6d                                            ldr r2, [r0, #0x50]
00087692  28 46                                            mov r0, r5
00087694  5d f8 04 bb                                      ldr fp, [sp], #4
00087698  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008769c  10 47                                            bx r2
