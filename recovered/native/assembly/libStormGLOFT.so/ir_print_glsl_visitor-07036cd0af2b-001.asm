; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000880fc, declared_size=60, range_size=60, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor6indentEv
; demangled: ir_print_glsl_visitor::indent()
; decoder-mode: thumb
000880fc  f0 b5                                            push {r4, r5, r6, r7, lr}
000880fe  03 af                                            add r7, sp, #0xc
00088100  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00088104  04 46                                            mov r4, r0
00088106  94 f8 23 00                                      ldrb.w r0, [r4, #0x23]
0008810a  78 b9                                            cbnz r0, #0x8812c
0008810c  60 68                                            ldr r0, [r4, #4]
0008810e  00 21                                            movs r1, #0
00088110  84 f8 23 10                                      strb.w r1, [r4, #0x23]
00088114  01 28                                            cmp r0, #1
00088116  09 db                                            blt #0x8812c
00088118  06 a5                                            adr r5, #0x18
0008811a  00 26                                            movs r6, #0
0008811c  e0 68                                            ldr r0, [r4, #0xc]
0008811e  29 46                                            mov r1, r5
00088120  ac f7 80 e9                                      blx #0x34424
00088124  60 68                                            ldr r0, [r4, #4]
00088126  01 36                                            adds r6, #1
00088128  86 42                                            cmp r6, r0
0008812a  f7 db                                            blt #0x8811c
0008812c  5d f8 04 bb                                      ldr fp, [sp], #4
00088130  f0 bd                                            pop {r4, r5, r6, r7, pc}
00088132  00 bf                                            nop
00088134  20 20                                            movs r0, #0x20
00088136  00 00                                            movs r0, r0

; FUNCTION 0x00088138, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor18end_statement_lineEv
; demangled: ir_print_glsl_visitor::end_statement_line()
; decoder-mode: thumb
00088138  d0 b5                                            push {r4, r6, r7, lr}
0008813a  02 af                                            add r7, sp, #8
0008813c  04 46                                            mov r4, r0
0008813e  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
00088142  08 b1                                            cbz r0, #0x88148
00088144  01 20                                            movs r0, #1
00088146  05 e0                                            b #0x88154
00088148  e0 68                                            ldr r0, [r4, #0xc]
0008814a  05 a1                                            adr r1, #0x14
0008814c  ac f7 6a e9                                      blx #0x34424
00088150  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
00088154  00 21                                            movs r1, #0
00088156  84 f8 22 10                                      strb.w r1, [r4, #0x22]
0008815a  84 f8 23 00                                      strb.w r0, [r4, #0x23]
0008815e  d0 bd                                            pop {r4, r6, r7, pc}
00088160  3b 0a                                            lsrs r3, r7, #8
00088162  00 00                                            movs r0, r0

; FUNCTION 0x00088164, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor14newline_indentEv
; demangled: ir_print_glsl_visitor::newline_indent()
; decoder-mode: thumb
00088164  d0 b5                                            push {r4, r6, r7, lr}
00088166  02 af                                            add r7, sp, #8
00088168  04 46                                            mov r4, r0
0008816a  20 7a                                            ldrb r0, [r4, #8]
0008816c  80 07                                            lsls r0, r0, #0x1e
0008816e  18 bf                                            it ne
00088170  d0 bd                                            popne {r4, r6, r7, pc}
00088172  61 68                                            ldr r1, [r4, #4]
00088174  e0 68                                            ldr r0, [r4, #0xc]
00088176  01 31                                            adds r1, #1
00088178  61 60                                            str r1, [r4, #4]
0008817a  04 a1                                            adr r1, #0x10
0008817c  ac f7 52 e9                                      blx #0x34424
00088180  20 46                                            mov r0, r4
00088182  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
00088186  28 f0 f7 bd                                      b.w #0xb0d78
0008818a  00 bf                                            nop
0008818c  0a 00                                            movs r2, r1
0008818e  00 00                                            movs r0, r0

; FUNCTION 0x00088190, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor16newline_deindentEv
; demangled: ir_print_glsl_visitor::newline_deindent()
; decoder-mode: thumb
00088190  d0 b5                                            push {r4, r6, r7, lr}
00088192  02 af                                            add r7, sp, #8
00088194  04 46                                            mov r4, r0
00088196  20 7a                                            ldrb r0, [r4, #8]
00088198  80 07                                            lsls r0, r0, #0x1e
0008819a  18 bf                                            it ne
0008819c  d0 bd                                            popne {r4, r6, r7, pc}
0008819e  61 68                                            ldr r1, [r4, #4]
000881a0  e0 68                                            ldr r0, [r4, #0xc]
000881a2  01 39                                            subs r1, #1
000881a4  61 60                                            str r1, [r4, #4]
000881a6  04 a1                                            adr r1, #0x10
000881a8  ac f7 3c e9                                      blx #0x34424
000881ac  20 46                                            mov r0, r4
000881ae  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000881b2  28 f0 e1 bd                                      b.w #0xb0d78
000881b6  00 bf                                            nop
000881b8  0a 00                                            movs r2, r1
000881ba  00 00                                            movs r0, r0

; FUNCTION 0x000881bc, declared_size=136, range_size=136, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor14print_var_nameEP11ir_variable
; demangled: ir_print_glsl_visitor::print_var_name(ir_variable*)
; decoder-mode: thumb
000881bc  f0 b5                                            push {r4, r5, r6, r7, lr}
000881be  03 af                                            add r7, sp, #0xc
000881c0  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000881c4  06 46                                            mov r6, r0
000881c6  0c 46                                            mov r4, r1
000881c8  30 69                                            ldr r0, [r6, #0x10]
000881ca  40 68                                            ldr r0, [r0, #4]
000881cc  aa f7 90 ea                                      blx #0x326f0
000881d0  05 46                                            mov r5, r0
000881d2  75 b9                                            cbnz r5, #0x881f2
000881d4  a0 69                                            ldr r0, [r4, #0x18]
000881d6  00 f4 f0 50                                      and r0, r0, #0x1e00
000881da  90 f4 a0 5f                                      teq.w r0, #0x1400
000881de  08 d1                                            bne #0x881f2
000881e0  31 69                                            ldr r1, [r6, #0x10]
000881e2  d1 e9 00 20                                      ldrd r2, r0, [r1]
000881e6  55 1c                                            adds r5, r2, #1
000881e8  0d 60                                            str r5, [r1]
000881ea  22 46                                            mov r2, r4
000881ec  29 46                                            mov r1, r5
000881ee  aa f7 b6 ea                                      blx #0x3275c
000881f2  4d b1                                            cbz r5, #0x88208
000881f4  a1 69                                            ldr r1, [r4, #0x18]
000881f6  f0 68                                            ldr r0, [r6, #0xc]
000881f8  01 f4 f0 51                                      and r1, r1, #0x1e00
000881fc  91 f4 a0 5f                                      teq.w r1, #0x1400
00088200  0b d1                                            bne #0x8821a
00088202  0c a1                                            adr r1, #0x30
00088204  2a 46                                            mov r2, r5
00088206  02 e0                                            b #0x8820e
00088208  62 69                                            ldr r2, [r4, #0x14]
0008820a  0d a1                                            adr r1, #0x34
0008820c  f0 68                                            ldr r0, [r6, #0xc]
0008820e  5d f8 04 bb                                      ldr fp, [sp], #4
00088212  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00088216  28 f0 b7 bd                                      b.w #0xb0d88
0008821a  04 a1                                            adr r1, #0x10
0008821c  62 69                                            ldr r2, [r4, #0x14]
0008821e  2b 46                                            mov r3, r5
00088220  5d f8 04 bb                                      ldr fp, [sp], #4
00088224  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00088228  28 f0 ae bd                                      b.w #0xb0d88
0008822c  25 73                                            strb r5, [r4, #0xc]
0008822e  5f 25                                            movs r5, #0x5f
00088230  64 00                                            lsls r4, r4, #1
00088232  00 00                                            movs r0, r0
00088234  74 6d                                            ldr r4, [r6, #0x54]
00088236  70 76                                            strb r0, [r6, #0x19]
00088238  61 72                                            strb r1, [r4, #9]
0008823a  5f 25                                            movs r5, #0x5f
0008823c  64 00                                            lsls r4, r4, #1
0008823e  00 00                                            movs r0, r0
00088240  25 73                                            strb r5, [r4, #0xc]
00088242  00 00                                            movs r0, r0

; FUNCTION 0x00088244, declared_size=224, range_size=224, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor15print_precisionEP14ir_instructionPK9glsl_type
; demangled: ir_print_glsl_visitor::print_precision(ir_instruction*, glsl_type const*)
; decoder-mode: thumb
00088244  f0 b5                                            push {r4, r5, r6, r7, lr}
00088246  03 af                                            add r7, sp, #0xc
00088248  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008824c  04 46                                            mov r4, r0
0008824e  16 46                                            mov r6, r2
00088250  94 f8 20 00                                      ldrb.w r0, [r4, #0x20]
00088254  0d 46                                            mov r5, r1
00088256  00 28                                            cmp r0, #0
00088258  49 d0                                            beq #0x882ee
0008825a  26 b3                                            cbz r6, #0x882a6
0008825c  70 68                                            ldr r0, [r6, #4]
0008825e  02 28                                            cmp r0, #2
00088260  18 bf                                            it ne
00088262  04 28                                            cmpne r0, #4
00088264  0b d0                                            beq #0x8827e
00088266  02 28                                            cmp r0, #2
00088268  09 d3                                            blo #0x8827e
0008826a  09 28                                            cmp r0, #9
0008826c  3f d1                                            bne #0x882ee
0008826e  70 69                                            ldr r0, [r6, #0x14]
00088270  40 68                                            ldr r0, [r0, #4]
00088272  02 28                                            cmp r0, #2
00088274  03 d0                                            beq #0x8827e
00088276  70 69                                            ldr r0, [r6, #0x14]
00088278  40 68                                            ldr r0, [r0, #4]
0008827a  01 28                                            cmp r0, #1
0008827c  37 d8                                            bhi #0x882ee
0008827e  28 46                                            mov r0, r5
00088280  aa f7 12 ed                                      blx #0x32ca8
00088284  72 68                                            ldr r2, [r6, #4]
00088286  01 46                                            mov r1, r0
00088288  03 29                                            cmp r1, #3
0008828a  11 d1                                            bne #0x882b0
0008828c  02 2a                                            cmp r2, #2
0008828e  0e d1                                            bne #0x882ae
00088290  60 69                                            ldr r0, [r4, #0x14]
00088292  d0 f8 88 10                                      ldr.w r1, [r0, #0x88]
00088296  02 29                                            cmp r1, #2
00088298  21 d1                                            bne #0x882de
0008829a  90 f8 85 00                                      ldrb.w r0, [r0, #0x85]
0008829e  00 28                                            cmp r0, #0
000882a0  18 bf                                            it ne
000882a2  03 20                                            movne r0, #3
000882a4  1c e0                                            b #0x882e0
000882a6  28 46                                            mov r0, r5
000882a8  aa f7 fe ec                                      blx #0x32ca8
000882ac  18 e0                                            b #0x882e0
000882ae  03 21                                            movs r1, #3
000882b0  02 2a                                            cmp r2, #2
000882b2  08 46                                            mov r0, r1
000882b4  38 bf                                            it lo
000882b6  00 20                                            movlo r0, #0
000882b8  03 29                                            cmp r1, #3
000882ba  18 bf                                            it ne
000882bc  08 46                                            movne r0, r1
000882be  04 2a                                            cmp r2, #4
000882c0  04 bf                                            itt eq
000882c2  40 f0 01 01                                      orreq r1, r0, #1
000882c6  03 29                                            cmpeq r1, #3
000882c8  0a d1                                            bne #0x882e0
000882ca  31 89                                            ldrh r1, [r6, #8]
000882cc  01 f0 06 02                                      and r2, r1, #6
000882d0  92 b2                                            uxth r2, r2
000882d2  01 2a                                            cmp r2, #1
000882d4  04 d8                                            bhi #0x882e0
000882d6  11 f0 08 01                                      ands r1, r1, #8
000882da  08 d0                                            beq #0x882ee
000882dc  00 e0                                            b #0x882e0
000882de  03 20                                            movs r0, #3
000882e0  03 28                                            cmp r0, #3
000882e2  18 bf                                            it ne
000882e4  00 28                                            cmpne r0, #0
000882e6  05 d1                                            bne #0x882f4
000882e8  e9 68                                            ldr r1, [r5, #0xc]
000882ea  0b 29                                            cmp r1, #0xb
000882ec  02 d1                                            bne #0x882f4
000882ee  5d f8 04 bb                                      ldr fp, [sp], #4
000882f2  f0 bd                                            pop {r4, r5, r6, r7, pc}
000882f4  e3 68                                            ldr r3, [r4, #0xc]
000882f6  03 28                                            cmp r0, #3
000882f8  04 d8                                            bhi #0x88304
000882fa  08 49                                            ldr r1, [pc, #0x20]
000882fc  79 44                                            add r1, pc
000882fe  51 f8 20 20                                      ldr.w r2, [r1, r0, lsl #2]
00088302  01 e0                                            b #0x88308
00088304  04 4a                                            ldr r2, [pc, #0x10]
00088306  7a 44                                            add r2, pc
00088308  05 a1                                            adr r1, #0x14
0008830a  18 46                                            mov r0, r3
0008830c  5d f8 04 bb                                      ldr fp, [sp], #4
00088310  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00088314  28 f0 38 bd                                      b.w #0xb0d88
00088318  b9 0e                                            lsrs r1, r7, #0x1a
0008831a  03 00                                            movs r3, r0
0008831c  c4 03                                            lsls r4, r0, #0xf
0008831e  05 00                                            movs r5, r0
00088320  25 73                                            strb r5, [r4, #0xc]
00088322  00 00                                            movs r0, r0

; FUNCTION 0x00088324, declared_size=512, range_size=512, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP11ir_variable
; demangled: ir_print_glsl_visitor::visit(ir_variable*)
; decoder-mode: thumb
00088324  f0 b5                                            push {r4, r5, r6, r7, lr}
00088326  03 af                                            add r7, sp, #0xc
00088328  2d e9 00 07                                      push.w {r8, sb, sl}
0008832c  82 b0                                            sub sp, #8
0008832e  04 46                                            mov r4, r0
00088330  65 4a                                            ldr r2, [pc, #0x194]
00088332  0d 46                                            mov r5, r1
00088334  60 69                                            ldr r0, [r4, #0x14]
00088336  a9 46                                            mov sb, r5
00088338  7a 44                                            add r2, pc
0008833a  59 f8 18 3f                                      ldr r3, [sb, #0x18]!
0008833e  0f f2 8c 1a                                      addw sl, pc, #0x18c
00088342  0f f2 94 18                                      addw r8, pc, #0x194
00088346  13 f0 08 0f                                      tst.w r3, #8
0008834a  08 bf                                            it eq
0008834c  92 46                                            moveq sl, r2
0008834e  d0 f8 80 10                                      ldr.w r1, [r0, #0x80]
00088352  13 f0 02 0f                                      tst.w r3, #2
00088356  08 bf                                            it eq
00088358  90 46                                            moveq r8, r2
0008835a  13 f4 00 2f                                      tst.w r3, #0x80000
0008835e  11 d0                                            beq #0x88384
00088360  b1 f5 96 7f                                      cmp.w r1, #0x12c
00088364  0e d3                                            blo #0x88384
00088366  d0 f8 88 20                                      ldr.w r2, [r0, #0x88]
0008836a  04 21                                            movs r1, #4
0008836c  6b 6a                                            ldr r3, [r5, #0x24]
0008836e  e0 68                                            ldr r0, [r4, #0xc]
00088370  00 2a                                            cmp r2, #0
00088372  08 bf                                            it eq
00088374  11 21                                            moveq r1, #0x11
00088376  5a 1a                                            subs r2, r3, r1
00088378  5a a1                                            adr r1, #0x168
0008837a  ac f7 54 e8                                      blx #0x34424
0008837e  60 69                                            ldr r0, [r4, #0x14]
00088380  d0 f8 80 10                                      ldr.w r1, [r0, #0x80]
00088384  a0 69                                            ldr r0, [r4, #0x18]
00088386  81 29                                            cmp r1, #0x81
00088388  06 46                                            mov r6, r0
0008838a  88 bf                                            it hi
0008838c  00 26                                            movhi r6, #0
0008838e  a0 b9                                            cbnz r0, #0x883ba
00088390  d9 f8 00 00                                      ldr.w r0, [sb]
00088394  00 f4 f0 50                                      and r0, r0, #0x1e00
00088398  90 f4 00 7f                                      teq.w r0, #0x200
0008839c  0d d0                                            beq #0x883ba
0008839e  20 69                                            ldr r0, [r4, #0x10]
000883a0  29 46                                            mov r1, r5
000883a2  40 68                                            ldr r0, [r0, #4]
000883a4  aa f7 a4 e9                                      blx #0x326f0
000883a8  38 b9                                            cbnz r0, #0x883ba
000883aa  22 69                                            ldr r2, [r4, #0x10]
000883ac  d2 e9 00 10                                      ldrd r1, r0, [r2]
000883b0  01 31                                            adds r1, #1
000883b2  11 60                                            str r1, [r2]
000883b4  2a 46                                            mov r2, r5
000883b6  aa f7 d2 e9                                      blx #0x3275c
000883ba  94 f8 21 00                                      ldrb.w r0, [r4, #0x21]
000883be  00 28                                            cmp r0, #0
000883c0  4a d0                                            beq #0x88458
000883c2  68 69                                            ldr r0, [r5, #0x14]
000883c4  4d a1                                            adr r1, #0x134
000883c6  03 22                                            movs r2, #3
000883c8  a9 f7 0a ef                                      blx #0x321e0
000883cc  01 46                                            mov r1, r0
000883ce  e0 68                                            ldr r0, [r4, #0xc]
000883d0  00 29                                            cmp r1, #0
000883d2  5e d0                                            beq #0x88492
000883d4  4b 4a                                            ldr r2, [pc, #0x12c]
000883d6  2c 23                                            movs r3, #0x2c
000883d8  d9 f8 00 10                                      ldr.w r1, [sb]
000883dc  7a 44                                            add r2, pc
000883de  df f8 20 c1                                      ldr.w ip, [pc, #0x120]
000883e2  06 fb 03 22                                      mla r2, r6, r3, r2
000883e6  c1 f3 41 33                                      ubfx r3, r1, #0xd, #2
000883ea  c1 f3 43 21                                      ubfx r1, r1, #9, #4
000883ee  fc 44                                            add ip, pc
000883f0  5c f8 23 30                                      ldr.w r3, [ip, r3, lsl #2]
000883f4  52 f8 21 10                                      ldr.w r1, [r2, r1, lsl #2]
000883f8  42 46                                            mov r2, r8
000883fa  cd e9 00 31                                      strd r3, r1, [sp]
000883fe  42 a1                                            adr r1, #0x108
00088400  53 46                                            mov r3, sl
00088402  ac f7 10 e8                                      blx #0x34424
00088406  2a 69                                            ldr r2, [r5, #0x10]
00088408  20 46                                            mov r0, r4
0008840a  29 46                                            mov r1, r5
0008840c  ac f7 22 e8                                      blx #0x34454
00088410  29 69                                            ldr r1, [r5, #0x10]
00088412  00 22                                            movs r2, #0
00088414  e0 68                                            ldr r0, [r4, #0xc]
00088416  00 f0 9b f8                                      bl #0x88550
0008841a  e0 68                                            ldr r0, [r4, #0xc]
0008841c  3d a1                                            adr r1, #0xf4
0008841e  ac f7 02 e8                                      blx #0x34424
00088422  20 46                                            mov r0, r4
00088424  29 46                                            mov r1, r5
00088426  ac f7 1c e8                                      blx #0x34460
0008842a  28 69                                            ldr r0, [r5, #0x10]
0008842c  41 68                                            ldr r1, [r0, #4]
0008842e  09 29                                            cmp r1, #9
00088430  05 d1                                            bne #0x8843e
00088432  39 49                                            ldr r1, [pc, #0xe4]
00088434  02 69                                            ldr r2, [r0, #0x10]
00088436  e0 68                                            ldr r0, [r4, #0xc]
00088438  79 44                                            add r1, pc
0008843a  ab f7 f4 ef                                      blx #0x34424
0008843e  68 6b                                            ldr r0, [r5, #0x34]
00088440  30 b1                                            cbz r0, #0x88450
00088442  d9 f8 00 00                                      ldr.w r0, [sb]
00088446  c0 f3 43 20                                      ubfx r0, r0, #9, #4
0008844a  02 38                                            subs r0, #2
0008844c  06 28                                            cmp r0, #6
0008844e  2d d2                                            bhs #0x884ac
00088450  02 b0                                            add sp, #8
00088452  bd e8 00 07                                      pop.w {r8, sb, sl}
00088456  f0 bd                                            pop {r4, r5, r6, r7, pc}
00088458  e0 69                                            ldr r0, [r4, #0x1c]
0008845a  29 46                                            mov r1, r5
0008845c  ac f7 06 e8                                      blx #0x3446c
00088460  00 28                                            cmp r0, #0
00088462  ae d0                                            beq #0x883c2
00088464  c1 6a                                            ldr r1, [r0, #0x2c]
00088466  01 29                                            cmp r1, #1
00088468  ab d1                                            bne #0x883c2
0008846a  01 6a                                            ldr r1, [r0, #0x20]
0008846c  00 f1 24 02                                      add.w r2, r0, #0x24
00088470  91 42                                            cmp r1, r2
00088472  1e bf                                            ittt ne
00088474  01 6b                                            ldrne r1, [r0, #0x30]
00088476  34 30                                            addne r0, #0x34
00088478  81 42                                            cmpne r1, r0
0008847a  a2 d0                                            beq #0x883c2
0008847c  02 20                                            movs r0, #2
0008847e  09 68                                            ldr r1, [r1]
00088480  01 38                                            subs r0, #1
00088482  00 29                                            cmp r1, #0
00088484  fb d1                                            bne #0x8847e
00088486  00 28                                            cmp r0, #0
00088488  9b d1                                            bne #0x883c2
0008848a  01 20                                            movs r0, #1
0008848c  84 f8 22 00                                      strb.w r0, [r4, #0x22]
00088490  de e7                                            b #0x88450
00088492  23 a1                                            adr r1, #0x8c
00088494  52 46                                            mov r2, sl
00088496  ab f7 c6 ef                                      blx #0x34424
0008849a  20 46                                            mov r0, r4
0008849c  29 46                                            mov r1, r5
0008849e  02 b0                                            add sp, #8
000884a0  bd e8 00 07                                      pop.w {r8, sb, sl}
000884a4  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000884a8  28 f0 76 bc                                      b.w #0xb0d98
000884ac  e0 68                                            ldr r0, [r4, #0xc]
000884ae  1b a1                                            adr r1, #0x6c
000884b0  ab f7 b8 ef                                      blx #0x34424
000884b4  20 68                                            ldr r0, [r4]
000884b6  69 6b                                            ldr r1, [r5, #0x34]
000884b8  42 6b                                            ldr r2, [r0, #0x34]
000884ba  20 46                                            mov r0, r4
000884bc  02 b0                                            add sp, #8
000884be  bd e8 00 07                                      pop.w {r8, sb, sl}
000884c2  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000884c6  10 47                                            bx r2
000884c8  87 0e                                            lsrs r7, r0, #0x1a
000884ca  03 00                                            movs r3, r0
000884cc  69 6e                                            ldr r1, [r5, #0x64]
000884ce  76 61                                            str r6, [r6, #0x14]
000884d0  72 69                                            ldr r2, [r6, #0x14]
000884d2  61 6e                                            ldr r1, [r4, #0x64]
000884d4  74 20                                            movs r0, #0x74
000884d6  00 00                                            movs r0, r0
000884d8  63 65                                            str r3, [r4, #0x54]
000884da  6e 74                                            strb r6, [r5, #0x11]
000884dc  72 6f                                            ldr r2, [r6, #0x74]
000884de  69 64                                            str r1, [r5, #0x44]
000884e0  20 00                                            movs r0, r4
000884e2  00 00                                            movs r0, r0
000884e4  6c 61                                            str r4, [r5, #0x14]
000884e6  79 6f                                            ldr r1, [r7, #0x74]
000884e8  75 74                                            strb r5, [r6, #0x11]
000884ea  28 6c                                            ldr r0, [r5, #0x40]
000884ec  6f 63                                            str r7, [r5, #0x34]
000884ee  61 74                                            strb r1, [r4, #0x11]
000884f0  69 6f                                            ldr r1, [r5, #0x74]
000884f2  6e 3d                                            subs r5, #0x6e
000884f4  25 64                                            str r5, [r4, #0x40]
000884f6  29 20                                            movs r0, #0x29
000884f8  00 00                                            movs r0, r0
000884fa  00 00                                            movs r0, r0
000884fc  67 6c                                            ldr r7, [r4, #0x44]
000884fe  5f 00                                            lsls r7, r3, #1
00088500  5a 00                                            lsls r2, r3, #1
00088502  05 00                                            movs r5, r0
00088504  e8 ff 04 00                                      vaddl.u32 q8, d8, d4
00088508  25 73                                            strb r5, [r4, #0xc]
0008850a  25 73                                            strb r5, [r4, #0xc]
0008850c  25 73                                            strb r5, [r4, #0xc]
0008850e  25 73                                            strb r5, [r4, #0xc]
00088510  00 00                                            movs r0, r0
00088512  00 00                                            movs r0, r0
00088514  20 00                                            movs r0, r4
00088516  00 00                                            movs r0, r0
00088518  b2 88                                            ldrh r2, [r6, #4]
0008851a  03 00                                            movs r3, r0
0008851c  20 3d                                            subs r5, #0x20
0008851e  20 00                                            movs r0, r4
00088520  25 73                                            strb r5, [r4, #0xc]
00088522  00 00                                            movs r0, r0

; FUNCTION 0x00088524, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor22can_emit_canonical_forEP19loop_variable_state
; demangled: ir_print_glsl_visitor::can_emit_canonical_for(loop_variable_state*)
; decoder-mode: thumb
00088524  91 b1                                            cbz r1, #0x8854c
00088526  0a 6a                                            ldr r2, [r1, #0x20]
00088528  01 f1 24 00                                      add.w r0, r1, #0x24
0008852c  82 42                                            cmp r2, r0
0008852e  1e bf                                            ittt ne
00088530  08 6b                                            ldrne r0, [r1, #0x30]
00088532  34 31                                            addne r1, #0x34
00088534  88 42                                            cmpne r0, r1
00088536  09 d0                                            beq #0x8854c
00088538  02 21                                            movs r1, #2
0008853a  00 68                                            ldr r0, [r0]
0008853c  01 39                                            subs r1, #1
0008853e  00 28                                            cmp r0, #0
00088540  fb d1                                            bne #0x8853a
00088542  00 20                                            movs r0, #0
00088544  00 29                                            cmp r1, #0
00088546  08 bf                                            it eq
00088548  01 20                                            moveq r0, #1
0008854a  70 47                                            bx lr
0008854c  00 20                                            movs r0, #0
0008854e  70 47                                            bx lr

; FUNCTION 0x000885b8, declared_size=436, range_size=436, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP21ir_function_signature
; demangled: ir_print_glsl_visitor::visit(ir_function_signature*)
; decoder-mode: thumb
000885b8  f0 b5                                            push {r4, r5, r6, r7, lr}
000885ba  03 af                                            add r7, sp, #0xc
000885bc  2d e9 00 0b                                      push.w {r8, sb, fp}
000885c0  89 46                                            mov sb, r1
000885c2  04 46                                            mov r4, r0
000885c4  d9 f8 10 20                                      ldr.w r2, [sb, #0x10]
000885c8  ab f7 44 ef                                      blx #0x34454
000885cc  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
000885d0  01 22                                            movs r2, #1
000885d2  e0 68                                            ldr r0, [r4, #0xc]
000885d4  ff f7 bc ff                                      bl #0x88550
000885d8  d9 f8 38 10                                      ldr.w r1, [sb, #0x38]
000885dc  e0 68                                            ldr r0, [r4, #0xc]
000885de  0a 69                                            ldr r2, [r1, #0x10]
000885e0  57 a1                                            adr r1, #0x15c
000885e2  ab f7 20 ef                                      blx #0x34424
000885e6  d9 f8 18 00                                      ldr.w r0, [sb, #0x18]
000885ea  09 f1 1c 01                                      add.w r1, sb, #0x1c
000885ee  88 42                                            cmp r0, r1
000885f0  37 d0                                            beq #0x88662
000885f2  e0 68                                            ldr r0, [r4, #0xc]
000885f4  54 a1                                            adr r1, #0x150
000885f6  ab f7 16 ef                                      blx #0x34424
000885fa  60 68                                            ldr r0, [r4, #4]
000885fc  00 21                                            movs r1, #0
000885fe  84 f8 23 10                                      strb.w r1, [r4, #0x23]
00088602  41 1c                                            adds r1, r0, #1
00088604  61 60                                            str r1, [r4, #4]
00088606  d9 f8 18 60                                      ldr.w r6, [sb, #0x18]
0008860a  00 2e                                            cmp r6, #0
0008860c  18 bf                                            it ne
0008860e  04 3e                                            subne r6, #4
00088610  35 46                                            mov r5, r6
00088612  55 f8 04 0f                                      ldr r0, [r5, #4]!
00088616  d8 b1                                            cbz r0, #0x88650
00088618  0f f2 30 18                                      addw r8, pc, #0x130
0008861c  01 20                                            movs r0, #1
0008861e  c0 07                                            lsls r0, r0, #0x1f
00088620  03 d1                                            bne #0x8862a
00088622  e0 68                                            ldr r0, [r4, #0xc]
00088624  41 46                                            mov r1, r8
00088626  ab f7 fe ee                                      blx #0x34424
0008862a  20 46                                            mov r0, r4
0008862c  ab f7 0c ef                                      blx #0x34448
00088630  30 68                                            ldr r0, [r6]
00088632  21 46                                            mov r1, r4
00088634  82 68                                            ldr r2, [r0, #8]
00088636  30 46                                            mov r0, r6
00088638  90 47                                            blx r2
0008863a  2e 68                                            ldr r6, [r5]
0008863c  00 20                                            movs r0, #0
0008863e  00 2e                                            cmp r6, #0
00088640  18 bf                                            it ne
00088642  04 3e                                            subne r6, #4
00088644  35 46                                            mov r5, r6
00088646  55 f8 04 1f                                      ldr r1, [r5, #4]!
0008864a  00 29                                            cmp r1, #0
0008864c  e7 d1                                            bne #0x8861e
0008864e  61 68                                            ldr r1, [r4, #4]
00088650  e0 68                                            ldr r0, [r4, #0xc]
00088652  01 39                                            subs r1, #1
00088654  61 60                                            str r1, [r4, #4]
00088656  3c a1                                            adr r1, #0xf0
00088658  ab f7 e4 ee                                      blx #0x34424
0008865c  20 46                                            mov r0, r4
0008865e  ab f7 f4 ee                                      blx #0x34448
00088662  e0 68                                            ldr r0, [r4, #0xc]
00088664  09 f1 2a 02                                      add.w r2, sb, #0x2a
00088668  d9 f8 26 10                                      ldr.w r1, [sb, #0x26]
0008866c  91 42                                            cmp r1, r2
0008866e  60 d0                                            beq #0x88732
00088670  37 a1                                            adr r1, #0xdc
00088672  ab f7 d8 ee                                      blx #0x34424
00088676  20 46                                            mov r0, r4
00088678  ab f7 e6 ee                                      blx #0x34448
0008867c  e0 68                                            ldr r0, [r4, #0xc]
0008867e  35 a1                                            adr r1, #0xd4
00088680  ab f7 d0 ee                                      blx #0x34424
00088684  60 68                                            ldr r0, [r4, #4]
00088686  00 21                                            movs r1, #0
00088688  84 f8 23 10                                      strb.w r1, [r4, #0x23]
0008868c  32 a1                                            adr r1, #0xc8
0008868e  01 30                                            adds r0, #1
00088690  60 60                                            str r0, [r4, #4]
00088692  d9 f8 38 00                                      ldr.w r0, [sb, #0x38]
00088696  00 69                                            ldr r0, [r0, #0x10]
00088698  a9 f7 52 ec                                      blx #0x31f40
0008869c  98 b9                                            cbnz r0, #0x886c6
0008869e  20 69                                            ldr r0, [r4, #0x10]
000886a0  01 21                                            movs r1, #1
000886a2  85 68                                            ldr r5, [r0, #8]
000886a4  01 76                                            strb r1, [r0, #0x18]
000886a6  28 68                                            ldr r0, [r5]
000886a8  68 b1                                            cbz r0, #0x886c6
000886aa  2d a6                                            adr r6, #0xb4
000886ac  a8 68                                            ldr r0, [r5, #8]
000886ae  01 68                                            ldr r1, [r0]
000886b0  8a 68                                            ldr r2, [r1, #8]
000886b2  21 46                                            mov r1, r4
000886b4  90 47                                            blx r2
000886b6  e0 68                                            ldr r0, [r4, #0xc]
000886b8  31 46                                            mov r1, r6
000886ba  ab f7 b4 ee                                      blx #0x34424
000886be  2d 68                                            ldr r5, [r5]
000886c0  28 68                                            ldr r0, [r5]
000886c2  00 28                                            cmp r0, #0
000886c4  f2 d1                                            bne #0x886ac
000886c6  d9 f8 26 60                                      ldr.w r6, [sb, #0x26]
000886ca  00 2e                                            cmp r6, #0
000886cc  18 bf                                            it ne
000886ce  04 3e                                            subne r6, #4
000886d0  35 46                                            mov r5, r6
000886d2  55 f8 04 0f                                      ldr r0, [r5, #4]!
000886d6  18 b3                                            cbz r0, #0x88720
000886d8  0f f2 84 08                                      addw r8, pc, #0x84
000886dc  4f f0 00 09                                      mov.w sb, #0
000886e0  20 46                                            mov r0, r4
000886e2  ab f7 b2 ee                                      blx #0x34448
000886e6  30 68                                            ldr r0, [r6]
000886e8  21 46                                            mov r1, r4
000886ea  82 68                                            ldr r2, [r0, #8]
000886ec  30 46                                            mov r0, r6
000886ee  90 47                                            blx r2
000886f0  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
000886f4  08 b1                                            cbz r0, #0x886fa
000886f6  01 20                                            movs r0, #1
000886f8  05 e0                                            b #0x88706
000886fa  e0 68                                            ldr r0, [r4, #0xc]
000886fc  41 46                                            mov r1, r8
000886fe  ab f7 92 ee                                      blx #0x34424
00088702  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
00088706  84 f8 22 90                                      strb.w sb, [r4, #0x22]
0008870a  84 f8 23 00                                      strb.w r0, [r4, #0x23]
0008870e  2e 68                                            ldr r6, [r5]
00088710  00 2e                                            cmp r6, #0
00088712  18 bf                                            it ne
00088714  04 3e                                            subne r6, #4
00088716  35 46                                            mov r5, r6
00088718  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008871c  00 28                                            cmp r0, #0
0008871e  df d1                                            bne #0x886e0
00088720  60 68                                            ldr r0, [r4, #4]
00088722  01 38                                            subs r0, #1
00088724  60 60                                            str r0, [r4, #4]
00088726  20 46                                            mov r0, r4
00088728  ab f7 8e ee                                      blx #0x34448
0008872c  e0 68                                            ldr r0, [r4, #0xc]
0008872e  0d a1                                            adr r1, #0x34
00088730  00 e0                                            b #0x88734
00088732  0d a1                                            adr r1, #0x34
00088734  bd e8 00 0b                                      pop.w {r8, sb, fp}
00088738  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008873c  28 f0 24 bb                                      b.w #0xb0d88
00088740  20 25                                            movs r5, #0x20
00088742  73 20                                            movs r0, #0x73
00088744  28 00                                            movs r0, r5
00088746  00 00                                            movs r0, r0
00088748  0a 00                                            movs r2, r1
0008874a  00 00                                            movs r0, r0
0008874c  2c 0a                                            lsrs r4, r5, #8
0008874e  00 00                                            movs r0, r0
00088750  29 0a                                            lsrs r1, r5, #8
00088752  00 00                                            movs r0, r0
00088754  7b 0a                                            lsrs r3, r7, #9
00088756  00 00                                            movs r0, r0
00088758  6d 61                                            str r5, [r5, #0x14]
0008875a  69 6e                                            ldr r1, [r5, #0x64]
0008875c  00 00                                            movs r0, r0
0008875e  00 00                                            movs r0, r0
00088760  3b 0a                                            lsrs r3, r7, #8
00088762  00 00                                            movs r0, r0
00088764  7d 0a                                            lsrs r5, r7, #9
00088766  00 00                                            movs r0, r0
00088768  29 3b                                            subs r3, #0x29
0008876a  0a 00                                            movs r2, r1

; FUNCTION 0x0008876c, declared_size=168, range_size=168, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP11ir_function
; demangled: ir_print_glsl_visitor::visit(ir_function*)
; decoder-mode: thumb
0008876c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008876e  03 af                                            add r7, sp, #0xc
00088770  2d e9 00 0b                                      push.w {r8, sb, fp}
00088774  89 46                                            mov sb, r1
00088776  04 46                                            mov r4, r0
00088778  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
0008877c  00 28                                            cmp r0, #0
0008877e  18 bf                                            it ne
00088780  04 38                                            subne r0, #4
00088782  06 46                                            mov r6, r0
00088784  56 f8 04 1f                                      ldr r1, [r6, #4]!
00088788  f1 b3                                            cbz r1, #0x88808
0008878a  00 25                                            movs r5, #0
0008878c  aa f7 0e ea                                      blx #0x32bac
00088790  01 46                                            mov r1, r0
00088792  30 68                                            ldr r0, [r6]
00088794  81 f0 01 01                                      eor r1, r1, #1
00088798  00 28                                            cmp r0, #0
0008879a  18 bf                                            it ne
0008879c  04 38                                            subne r0, #4
0008879e  06 46                                            mov r6, r0
000887a0  0d 43                                            orrs r5, r1
000887a2  56 f8 04 2f                                      ldr r2, [r6, #4]!
000887a6  00 2a                                            cmp r2, #0
000887a8  f0 d1                                            bne #0x8878c
000887aa  e8 07                                            lsls r0, r5, #0x1f
000887ac  2c d0                                            beq #0x88808
000887ae  00 20                                            movs r0, #0
000887b0  d4 f8 18 80                                      ldr.w r8, [r4, #0x18]
000887b4  a0 61                                            str r0, [r4, #0x18]
000887b6  d9 f8 14 60                                      ldr.w r6, [sb, #0x14]
000887ba  00 2e                                            cmp r6, #0
000887bc  18 bf                                            it ne
000887be  04 3e                                            subne r6, #4
000887c0  35 46                                            mov r5, r6
000887c2  55 f8 04 0f                                      ldr r0, [r5, #4]!
000887c6  b0 b1                                            cbz r0, #0x887f6
000887c8  0f f2 44 09                                      addw sb, pc, #0x44
000887cc  20 46                                            mov r0, r4
000887ce  ab f7 3c ee                                      blx #0x34448
000887d2  30 68                                            ldr r0, [r6]
000887d4  21 46                                            mov r1, r4
000887d6  82 68                                            ldr r2, [r0, #8]
000887d8  30 46                                            mov r0, r6
000887da  90 47                                            blx r2
000887dc  e0 68                                            ldr r0, [r4, #0xc]
000887de  49 46                                            mov r1, sb
000887e0  ab f7 20 ee                                      blx #0x34424
000887e4  2e 68                                            ldr r6, [r5]
000887e6  00 2e                                            cmp r6, #0
000887e8  18 bf                                            it ne
000887ea  04 3e                                            subne r6, #4
000887ec  35 46                                            mov r5, r6
000887ee  55 f8 04 0f                                      ldr r0, [r5, #4]!
000887f2  00 28                                            cmp r0, #0
000887f4  ea d1                                            bne #0x887cc
000887f6  c4 f8 18 80                                      str.w r8, [r4, #0x18]
000887fa  20 46                                            mov r0, r4
000887fc  bd e8 00 0b                                      pop.w {r8, sb, fp}
00088800  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00088804  28 f0 b8 ba                                      b.w #0xb0d78
00088808  bd e8 00 0b                                      pop.w {r8, sb, fp}
0008880c  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008880e  00 bf                                            nop
00088810  0a 00                                            movs r2, r1
00088812  00 00                                            movs r0, r0

; FUNCTION 0x00088814, declared_size=636, range_size=636, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP13ir_expression
; demangled: ir_print_glsl_visitor::visit(ir_expression*)
; decoder-mode: thumb
00088814  f0 b5                                            push {r4, r5, r6, r7, lr}
00088816  03 af                                            add r7, sp, #0xc
00088818  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008881c  04 46                                            mov r4, r0
0008881e  0d 46                                            mov r5, r1
00088820  a0 68                                            ldr r0, [r4, #8]
00088822  01 30                                            adds r0, #1
00088824  a0 60                                            str r0, [r4, #8]
00088826  20 46                                            mov r0, r4
00088828  ab f7 26 ee                                      blx #0x34478
0008882c  a8 69                                            ldr r0, [r5, #0x18]
0008882e  69 28                                            cmp r0, #0x69
00088830  05 d1                                            bne #0x8883e
00088832  28 69                                            ldr r0, [r5, #0x10]
00088834  00 89                                            ldrh r0, [r0, #8]
00088836  c0 f3 42 21                                      ubfx r1, r0, #9, #3
0008883a  69 20                                            movs r0, #0x69
0008883c  03 e0                                            b #0x88846
0008883e  aa f7 7a ef                                      blx #0x33734
00088842  01 46                                            mov r1, r0
00088844  a8 69                                            ldr r0, [r5, #0x18]
00088846  01 29                                            cmp r1, #1
00088848  0d d1                                            bne #0x88866
0008884a  a0 f1 0d 01                                      sub.w r1, r0, #0xd
0008884e  09 29                                            cmp r1, #9
00088850  1e d8                                            bhi #0x88890
00088852  29 69                                            ldr r1, [r5, #0x10]
00088854  01 22                                            movs r2, #1
00088856  e0 68                                            ldr r0, [r4, #0xc]
00088858  ff f7 7a fe                                      bl #0x88550
0008885c  e0 68                                            ldr r0, [r4, #0xc]
0008885e  7a a1                                            adr r1, #0x1e8
00088860  ab f7 e0 ed                                      blx #0x34424
00088864  3b e0                                            b #0x888de
00088866  5e 28                                            cmp r0, #0x5e
00088868  1a d1                                            bne #0x888a0
0008886a  e8 69                                            ldr r0, [r5, #0x1c]
0008886c  18 b1                                            cbz r0, #0x88876
0008886e  01 68                                            ldr r1, [r0]
00088870  8a 68                                            ldr r2, [r1, #8]
00088872  21 46                                            mov r1, r4
00088874  90 47                                            blx r2
00088876  e0 68                                            ldr r0, [r4, #0xc]
00088878  7f a1                                            adr r1, #0x1fc
0008887a  ab f7 d4 ed                                      blx #0x34424
0008887e  28 6a                                            ldr r0, [r5, #0x20]
00088880  18 b1                                            cbz r0, #0x8888a
00088882  01 68                                            ldr r1, [r0]
00088884  8a 68                                            ldr r2, [r1, #8]
00088886  21 46                                            mov r1, r4
00088888  90 47                                            blx r2
0008888a  e0 68                                            ldr r0, [r4, #0xc]
0008888c  7b a1                                            adr r1, #0x1ec
0008888e  8f e0                                            b #0x889b0
00088890  e3 68                                            ldr r3, [r4, #0xc]
00088892  05 28                                            cmp r0, #5
00088894  1b d1                                            bne #0x888ce
00088896  7c a1                                            adr r1, #0x1f0
00088898  18 46                                            mov r0, r3
0008889a  ab f7 c4 ed                                      blx #0x34424
0008889e  1e e0                                            b #0x888de
000888a0  29 69                                            ldr r1, [r5, #0x10]
000888a2  a0 f1 4a 02                                      sub.w r2, r0, #0x4a
000888a6  02 2a                                            cmp r2, #2
000888a8  44 d3                                            blo #0x88934
000888aa  45 28                                            cmp r0, #0x45
000888ac  27 d1                                            bne #0x888fe
000888ae  66 a6                                            adr r6, #0x198
000888b0  e0 68                                            ldr r0, [r4, #0xc]
000888b2  31 46                                            mov r1, r6
000888b4  ab f7 b6 ed                                      blx #0x34424
000888b8  29 69                                            ldr r1, [r5, #0x10]
000888ba  01 22                                            movs r2, #1
000888bc  e0 68                                            ldr r0, [r4, #0xc]
000888be  ff f7 47 fe                                      bl #0x88550
000888c2  e0 68                                            ldr r0, [r4, #0xc]
000888c4  31 46                                            mov r1, r6
000888c6  ab f7 ae ed                                      blx #0x34424
000888ca  29 69                                            ldr r1, [r5, #0x10]
000888cc  32 e0                                            b #0x88934
000888ce  6c 49                                            ldr r1, [pc, #0x1b0]
000888d0  79 44                                            add r1, pc
000888d2  51 f8 20 20                                      ldr.w r2, [r1, r0, lsl #2]
000888d6  6b a1                                            adr r1, #0x1ac
000888d8  18 46                                            mov r0, r3
000888da  ab f7 a4 ed                                      blx #0x34424
000888de  e8 69                                            ldr r0, [r5, #0x1c]
000888e0  18 b1                                            cbz r0, #0x888ea
000888e2  01 68                                            ldr r1, [r0]
000888e4  8a 68                                            ldr r2, [r1, #8]
000888e6  21 46                                            mov r1, r4
000888e8  90 47                                            blx r2
000888ea  e0 68                                            ldr r0, [r4, #0xc]
000888ec  5a a1                                            adr r1, #0x168
000888ee  ab f7 9a ed                                      blx #0x34424
000888f2  a8 69                                            ldr r0, [r5, #0x18]
000888f4  05 28                                            cmp r0, #5
000888f6  5d d1                                            bne #0x889b4
000888f8  e0 68                                            ldr r0, [r4, #0xc]
000888fa  57 a1                                            adr r1, #0x15c
000888fc  58 e0                                            b #0x889b0
000888fe  a0 f1 56 02                                      sub.w r2, r0, #0x56
00088902  04 2a                                            cmp r2, #4
00088904  16 d3                                            blo #0x88934
00088906  0a 89                                            ldrh r2, [r1, #8]
00088908  02 f4 40 63                                      and r3, r2, #0xc00
0008890c  b3 f5 00 7f                                      cmp.w r3, #0x200
00088910  0b d9                                            bls #0x8892a
00088912  02 f4 e0 43                                      and r3, r2, #0x7000
00088916  b3 f5 80 5f                                      cmp.w r3, #0x1000
0008891a  06 d1                                            bne #0x8892a
0008891c  a0 f1 46 03                                      sub.w r3, r0, #0x46
00088920  05 2b                                            cmp r3, #5
00088922  9c bf                                            itt ls
00088924  4b 68                                            ldrls r3, [r1, #4]
00088926  04 2b                                            cmpls r3, #4
00088928  04 d3                                            blo #0x88934
0008892a  69 28                                            cmp r0, #0x69
0008892c  4b d1                                            bne #0x889c6
0008892e  c2 f3 42 21                                      ubfx r1, r2, #9, #3
00088932  4b e0                                            b #0x889cc
00088934  08 89                                            ldrh r0, [r1, #8]
00088936  00 f4 40 62                                      and r2, r0, #0xc00
0008893a  b2 f5 00 7f                                      cmp.w r2, #0x200
0008893e  14 d9                                            bls #0x8896a
00088940  00 f4 e0 40                                      and r0, r0, #0x7000
00088944  b0 f5 80 5f                                      cmp.w r0, #0x1000
00088948  0f d1                                            bne #0x8896a
0008894a  48 68                                            ldr r0, [r1, #4]
0008894c  03 28                                            cmp r0, #3
0008894e  0c d8                                            bhi #0x8896a
00088950  a8 69                                            ldr r0, [r5, #0x18]
00088952  a0 f1 46 02                                      sub.w r2, r0, #0x46
00088956  05 2a                                            cmp r2, #5
00088958  07 d8                                            bhi #0x8896a
0008895a  44 4b                                            ldr r3, [pc, #0x110]
0008895c  44 49                                            ldr r1, [pc, #0x110]
0008895e  7b 44                                            add r3, pc
00088960  e0 68                                            ldr r0, [r4, #0xc]
00088962  79 44                                            add r1, pc
00088964  53 f8 22 20                                      ldr.w r2, [r3, r2, lsl #2]
00088968  07 e0                                            b #0x8897a
0008896a  3e 4a                                            ldr r2, [pc, #0xf8]
0008896c  ab 69                                            ldr r3, [r5, #0x18]
0008896e  7a 44                                            add r2, pc
00088970  3d 49                                            ldr r1, [pc, #0xf4]
00088972  e0 68                                            ldr r0, [r4, #0xc]
00088974  52 f8 23 20                                      ldr.w r2, [r2, r3, lsl #2]
00088978  79 44                                            add r1, pc
0008897a  ab f7 54 ed                                      blx #0x34424
0008897e  e8 69                                            ldr r0, [r5, #0x1c]
00088980  18 b1                                            cbz r0, #0x8898a
00088982  01 68                                            ldr r1, [r0]
00088984  8a 68                                            ldr r2, [r1, #8]
00088986  21 46                                            mov r1, r4
00088988  90 47                                            blx r2
0008898a  e0 68                                            ldr r0, [r4, #0xc]
0008898c  31 a1                                            adr r1, #0xc4
0008898e  ab f7 4a ed                                      blx #0x34424
00088992  28 6a                                            ldr r0, [r5, #0x20]
00088994  18 b1                                            cbz r0, #0x8899e
00088996  01 68                                            ldr r1, [r0]
00088998  8a 68                                            ldr r2, [r1, #8]
0008899a  21 46                                            mov r1, r4
0008899c  90 47                                            blx r2
0008899e  e0 68                                            ldr r0, [r4, #0xc]
000889a0  2d a1                                            adr r1, #0xb4
000889a2  ab f7 40 ed                                      blx #0x34424
000889a6  a8 69                                            ldr r0, [r5, #0x18]
000889a8  45 28                                            cmp r0, #0x45
000889aa  03 d1                                            bne #0x889b4
000889ac  e0 68                                            ldr r0, [r4, #0xc]
000889ae  31 a1                                            adr r1, #0xc4
000889b0  ab f7 38 ed                                      blx #0x34424
000889b4  20 46                                            mov r0, r4
000889b6  ab f7 66 ed                                      blx #0x34484
000889ba  a0 68                                            ldr r0, [r4, #8]
000889bc  01 38                                            subs r0, #1
000889be  a0 60                                            str r0, [r4, #8]
000889c0  5d f8 04 bb                                      ldr fp, [sp], #4
000889c4  f0 bd                                            pop {r4, r5, r6, r7, pc}
000889c6  aa f7 b6 ee                                      blx #0x33734
000889ca  01 46                                            mov r1, r0
000889cc  e0 68                                            ldr r0, [r4, #0xc]
000889ce  02 29                                            cmp r1, #2
000889d0  14 d1                                            bne #0x889fc
000889d2  1d a1                                            adr r1, #0x74
000889d4  ab f7 26 ed                                      blx #0x34424
000889d8  e8 69                                            ldr r0, [r5, #0x1c]
000889da  18 b1                                            cbz r0, #0x889e4
000889dc  01 68                                            ldr r1, [r0]
000889de  8a 68                                            ldr r2, [r1, #8]
000889e0  21 46                                            mov r1, r4
000889e2  90 47                                            blx r2
000889e4  1d 4a                                            ldr r2, [pc, #0x74]
000889e6  ab 69                                            ldr r3, [r5, #0x18]
000889e8  7a 44                                            add r2, pc
000889ea  1d 49                                            ldr r1, [pc, #0x74]
000889ec  e0 68                                            ldr r0, [r4, #0xc]
000889ee  52 f8 23 20                                      ldr.w r2, [r2, r3, lsl #2]
000889f2  79 44                                            add r1, pc
000889f4  ab f7 16 ed                                      blx #0x34424
000889f8  28 6a                                            ldr r0, [r5, #0x20]
000889fa  1d e0                                            b #0x88a38
000889fc  13 4a                                            ldr r2, [pc, #0x4c]
000889fe  ab 69                                            ldr r3, [r5, #0x18]
00088a00  7a 44                                            add r2, pc
00088a02  13 49                                            ldr r1, [pc, #0x4c]
00088a04  52 f8 23 20                                      ldr.w r2, [r2, r3, lsl #2]
00088a08  79 44                                            add r1, pc
00088a0a  ab f7 0c ed                                      blx #0x34424
00088a0e  e8 69                                            ldr r0, [r5, #0x1c]
00088a10  18 b1                                            cbz r0, #0x88a1a
00088a12  01 68                                            ldr r1, [r0]
00088a14  8a 68                                            ldr r2, [r1, #8]
00088a16  21 46                                            mov r1, r4
00088a18  90 47                                            blx r2
00088a1a  e0 68                                            ldr r0, [r4, #0xc]
00088a1c  0d a1                                            adr r1, #0x34
00088a1e  ab f7 02 ed                                      blx #0x34424
00088a22  28 6a                                            ldr r0, [r5, #0x20]
00088a24  18 b1                                            cbz r0, #0x88a2e
00088a26  01 68                                            ldr r1, [r0]
00088a28  8a 68                                            ldr r2, [r1, #8]
00088a2a  21 46                                            mov r1, r4
00088a2c  90 47                                            blx r2
00088a2e  e0 68                                            ldr r0, [r4, #0xc]
00088a30  08 a1                                            adr r1, #0x20
00088a32  ab f7 f8 ec                                      blx #0x34424
00088a36  68 6a                                            ldr r0, [r5, #0x24]
00088a38  00 28                                            cmp r0, #0
00088a3a  3f f4 5d af                                      beq.w #0x888f8
00088a3e  01 68                                            ldr r1, [r0]
00088a40  8a 68                                            ldr r2, [r1, #8]
00088a42  21 46                                            mov r1, r4
00088a44  90 47                                            blx r2
00088a46  57 e7                                            b #0x888f8
00088a48  28 00                                            movs r0, r5
00088a4a  00 00                                            movs r0, r0
00088a4c  58 fa                                            .byte 0x58, 0xfa
00088a4e  04 00                                            movs r4, r0
00088a50  aa 80                                            strh r2, [r5, #4]
00088a52  03 00                                            movs r3, r0
00088a54  2c 20                                            movs r0, #0x2c
00088a56  00 00                                            movs r0, r0
00088a58  29 00                                            movs r1, r5
00088a5a  00 00                                            movs r0, r0
00088a5c  70 fa                                            .byte 0x70, 0xfa
00088a5e  04 00                                            movs r4, r0
00088a60  c5 80                                            strh r5, [r0, #6]
00088a62  03 00                                            movs r3, r0
00088a64  ea fa                                            .byte 0xea, 0xfa
00088a66  04 00                                            movs r4, r0
00088a68  3a 81                                            strh r2, [r7, #8]
00088a6a  03 00                                            movs r3, r0
00088a6c  a2 fc 04 00                                      stc2 p0, c0, [r2], #0x10
00088a70  50 81                                            strh r0, [r2, #0xa]
00088a72  03 00                                            movs r3, r0
00088a74  29 29                                            cmp r1, #0x29
00088a76  00 00                                            movs r0, r0
00088a78  5b 00                                            lsls r3, r3, #1
00088a7a  00 00                                            movs r0, r0
00088a7c  5d 00                                            lsls r5, r3, #1
00088a7e  00 00                                            movs r0, r0
00088a80  88 fb 04 00                                      smull r0, r0, r8, r4
00088a84  25 73                                            strb r5, [r4, #0xc]
00088a86  28 00                                            movs r0, r5
00088a88  28 31                                            adds r1, #0x28
00088a8a  2e 30                                            adds r0, #0x2e
00088a8c  2f 28                                            cmp r0, #0x2f
00088a8e  00 00                                            movs r0, r0

; FUNCTION 0x00088a90, declared_size=636, range_size=636, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP10ir_texture
; demangled: ir_print_glsl_visitor::visit(ir_texture*)
; decoder-mode: thumb
00088a90  f0 b5                                            push {r4, r5, r6, r7, lr}
00088a92  03 af                                            add r7, sp, #0xc
00088a94  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00088a98  81 b0                                            sub sp, #4
00088a9a  0d 46                                            mov r5, r1
00088a9c  04 46                                            mov r4, r0
00088a9e  d5 e9 06 10                                      ldrd r1, r0, [r5, #0x18]
00088aa2  2a 6a                                            ldr r2, [r5, #0x20]
00088aa4  03 69                                            ldr r3, [r0, #0x10]
00088aa6  02 29                                            cmp r1, #2
00088aa8  79 4e                                            ldr r6, [pc, #0x1e4]
00088aaa  12 69                                            ldr r2, [r2, #0x10]
00088aac  1b 89                                            ldrh r3, [r3, #8]
00088aae  7e 44                                            add r6, pc
00088ab0  03 f0 07 0b                                      and fp, r3, #7
00088ab4  12 89                                            ldrh r2, [r2, #8]
00088ab6  03 f0 08 08                                      and r8, r3, #8
00088aba  56 f8 2b 60                                      ldr.w r6, [r6, fp, lsl #2]
00088abe  c2 f3 42 2a                                      ubfx sl, r2, #9, #3
00088ac2  06 eb d8 09                                      add.w sb, r6, r8, lsr #3
00088ac6  29 d1                                            bne #0x88b1c
00088ac8  61 69                                            ldr r1, [r4, #0x14]
00088aca  91 f8 7c 20                                      ldrb.w r2, [r1, #0x7c]
00088ace  2a b3                                            cbz r2, #0x88b1c
00088ad0  d1 f8 80 20                                      ldr.w r2, [r1, #0x80]
00088ad4  92 08                                            lsrs r2, r2, #2
00088ad6  4a 2a                                            cmp r2, #0x4a
00088ad8  20 d8                                            bhi #0x88b1c
00088ada  d1 f8 88 10                                      ldr.w r1, [r1, #0x88]
00088ade  02 29                                            cmp r1, #2
00088ae0  1c d1                                            bne #0x88b1c
00088ae2  40 69                                            ldr r0, [r0, #0x14]
00088ae4  01 28                                            cmp r0, #1
00088ae6  04 d0                                            beq #0x88af2
00088ae8  38 b9                                            cbnz r0, #0x88afa
00088aea  4b f0 10 06                                      orr r6, fp, #0x10
00088aee  6e a2                                            adr r2, #0x1b8
00088af0  05 e0                                            b #0x88afe
00088af2  4b f0 08 06                                      orr r6, fp, #8
00088af6  69 a2                                            adr r2, #0x1a4
00088af8  01 e0                                            b #0x88afe
00088afa  66 a2                                            adr r2, #0x198
00088afc  5e 46                                            mov r6, fp
00088afe  e0 68                                            ldr r0, [r4, #0xc]
00088b00  6b a1                                            adr r1, #0x1ac
00088b02  ab f7 90 ec                                      blx #0x34424
00088b06  04 f1 24 00                                      add.w r0, r4, #0x24
00088b0a  d1 45                                            cmp sb, sl
00088b0c  b8 bf                                            it lt
00088b0e  04 f1 28 00                                      addlt.w r0, r4, #0x28
00088b12  01 21                                            movs r1, #1
00088b14  02 68                                            ldr r2, [r0]
00088b16  b1 40                                            lsls r1, r6
00088b18  11 43                                            orrs r1, r2
00088b1a  01 60                                            str r1, [r0]
00088b1c  60 69                                            ldr r0, [r4, #0x14]
00088b1e  d0 f8 80 00                                      ldr.w r0, [r0, #0x80]
00088b22  81 28                                            cmp r0, #0x81
00088b24  13 d8                                            bhi #0x88b4e
00088b26  64 a1                                            adr r1, #0x190
00088b28  e0 68                                            ldr r0, [r4, #0xc]
00088b2a  6a a6                                            adr r6, #0x1a8
00088b2c  67 a2                                            adr r2, #0x19c
00088b2e  b8 f1 00 0f                                      cmp.w r8, #0
00088b32  08 bf                                            it eq
00088b34  0a 46                                            moveq r2, r1
00088b36  31 46                                            mov r1, r6
00088b38  ab f7 74 ec                                      blx #0x34424
00088b3c  66 48                                            ldr r0, [pc, #0x198]
00088b3e  31 46                                            mov r1, r6
00088b40  78 44                                            add r0, pc
00088b42  50 f8 2b 20                                      ldr.w r2, [r0, fp, lsl #2]
00088b46  e0 68                                            ldr r0, [r4, #0xc]
00088b48  ab f7 6c ec                                      blx #0x34424
00088b4c  07 e0                                            b #0x88b5e
00088b4e  a9 69                                            ldr r1, [r5, #0x18]
00088b50  e0 68                                            ldr r0, [r4, #0xc]
00088b52  04 29                                            cmp r1, #4
00088b54  14 bf                                            ite ne
00088b56  58 a1                                            adrne r1, #0x160
00088b58  59 a1                                            adreq r1, #0x164
00088b5a  ab f7 64 ec                                      blx #0x34424
00088b5e  d1 45                                            cmp sb, sl
00088b60  03 da                                            bge #0x88b6a
00088b62  e0 68                                            ldr r0, [r4, #0xc]
00088b64  5d a1                                            adr r1, #0x174
00088b66  ab f7 5e ec                                      blx #0x34424
00088b6a  a8 69                                            ldr r0, [r5, #0x18]
00088b6c  02 28                                            cmp r0, #2
00088b6e  04 d1                                            bne #0x88b7a
00088b70  e0 68                                            ldr r0, [r4, #0xc]
00088b72  5c a1                                            adr r1, #0x170
00088b74  ab f7 56 ec                                      blx #0x34424
00088b78  a8 69                                            ldr r0, [r5, #0x18]
00088b7a  03 28                                            cmp r0, #3
00088b7c  03 d1                                            bne #0x88b86
00088b7e  e0 68                                            ldr r0, [r4, #0xc]
00088b80  59 a1                                            adr r1, #0x164
00088b82  ab f7 50 ec                                      blx #0x34424
00088b86  68 6a                                            ldr r0, [r5, #0x24]
00088b88  18 b1                                            cbz r0, #0x88b92
00088b8a  e0 68                                            ldr r0, [r4, #0xc]
00088b8c  58 a1                                            adr r1, #0x160
00088b8e  ab f7 4a ec                                      blx #0x34424
00088b92  60 69                                            ldr r0, [r4, #0x14]
00088b94  90 f8 7c 10                                      ldrb.w r1, [r0, #0x7c]
00088b98  81 b1                                            cbz r1, #0x88bbc
00088b9a  b8 f1 00 0f                                      cmp.w r8, #0
00088b9e  1c bf                                            itt ne
00088ba0  90 f8 e8 11                                      ldrbne.w r1, [r0, #0x1e8]
00088ba4  00 29                                            cmpne r1, #0
00088ba6  05 d1                                            bne #0x88bb4
00088ba8  a9 69                                            ldr r1, [r5, #0x18]
00088baa  02 29                                            cmp r1, #2
00088bac  07 d1                                            bne #0x88bbe
00088bae  90 f8 e6 01                                      ldrb.w r0, [r0, #0x1e6]
00088bb2  18 b1                                            cbz r0, #0x88bbc
00088bb4  e0 68                                            ldr r0, [r4, #0xc]
00088bb6  50 a1                                            adr r1, #0x140
00088bb8  ab f7 34 ec                                      blx #0x34424
00088bbc  a9 69                                            ldr r1, [r5, #0x18]
00088bbe  03 29                                            cmp r1, #3
00088bc0  10 d1                                            bne #0x88be4
00088bc2  60 69                                            ldr r0, [r4, #0x14]
00088bc4  90 f8 7c 10                                      ldrb.w r1, [r0, #0x7c]
00088bc8  29 b1                                            cbz r1, #0x88bd6
00088bca  90 f8 e6 01                                      ldrb.w r0, [r0, #0x1e6]
00088bce  48 b1                                            cbz r0, #0x88be4
00088bd0  e0 68                                            ldr r0, [r4, #0xc]
00088bd2  49 a1                                            adr r1, #0x124
00088bd4  04 e0                                            b #0x88be0
00088bd6  90 f8 b2 01                                      ldrb.w r0, [r0, #0x1b2]
00088bda  18 b1                                            cbz r0, #0x88be4
00088bdc  e0 68                                            ldr r0, [r4, #0xc]
00088bde  47 a1                                            adr r1, #0x11c
00088be0  ab f7 20 ec                                      blx #0x34424
00088be4  e0 68                                            ldr r0, [r4, #0xc]
00088be6  46 a1                                            adr r1, #0x118
00088be8  ab f7 1c ec                                      blx #0x34424
00088bec  e8 69                                            ldr r0, [r5, #0x1c]
00088bee  01 68                                            ldr r1, [r0]
00088bf0  8a 68                                            ldr r2, [r1, #8]
00088bf2  21 46                                            mov r1, r4
00088bf4  90 47                                            blx r2
00088bf6  e0 68                                            ldr r0, [r4, #0xc]
00088bf8  42 a1                                            adr r1, #0x108
00088bfa  ab f7 14 ec                                      blx #0x34424
00088bfe  28 6a                                            ldr r0, [r5, #0x20]
00088c00  01 68                                            ldr r1, [r0]
00088c02  8a 68                                            ldr r2, [r1, #8]
00088c04  21 46                                            mov r1, r4
00088c06  90 47                                            blx r2
00088c08  a8 69                                            ldr r0, [r5, #0x18]
00088c0a  04 28                                            cmp r0, #4
00088c0c  18 bf                                            it ne
00088c0e  02 28                                            cmpne r0, #2
00088c10  09 d1                                            bne #0x88c26
00088c12  e0 68                                            ldr r0, [r4, #0xc]
00088c14  3b a1                                            adr r1, #0xec
00088c16  ab f7 06 ec                                      blx #0x34424
00088c1a  a8 6a                                            ldr r0, [r5, #0x28]
00088c1c  01 68                                            ldr r1, [r0]
00088c1e  8a 68                                            ldr r2, [r1, #8]
00088c20  21 46                                            mov r1, r4
00088c22  90 47                                            blx r2
00088c24  a8 69                                            ldr r0, [r5, #0x18]
00088c26  03 28                                            cmp r0, #3
00088c28  12 d1                                            bne #0x88c50
00088c2a  36 a6                                            adr r6, #0xd8
00088c2c  e0 68                                            ldr r0, [r4, #0xc]
00088c2e  31 46                                            mov r1, r6
00088c30  ab f7 f8 eb                                      blx #0x34424
00088c34  a8 6a                                            ldr r0, [r5, #0x28]
00088c36  01 68                                            ldr r1, [r0]
00088c38  8a 68                                            ldr r2, [r1, #8]
00088c3a  21 46                                            mov r1, r4
00088c3c  90 47                                            blx r2
00088c3e  e0 68                                            ldr r0, [r4, #0xc]
00088c40  31 46                                            mov r1, r6
00088c42  ab f7 f0 eb                                      blx #0x34424
00088c46  e8 6a                                            ldr r0, [r5, #0x2c]
00088c48  01 68                                            ldr r1, [r0]
00088c4a  8a 68                                            ldr r2, [r1, #8]
00088c4c  21 46                                            mov r1, r4
00088c4e  90 47                                            blx r2
00088c50  68 6a                                            ldr r0, [r5, #0x24]
00088c52  40 b1                                            cbz r0, #0x88c66
00088c54  e0 68                                            ldr r0, [r4, #0xc]
00088c56  2b a1                                            adr r1, #0xac
00088c58  ab f7 e4 eb                                      blx #0x34424
00088c5c  68 6a                                            ldr r0, [r5, #0x24]
00088c5e  01 68                                            ldr r1, [r0]
00088c60  8a 68                                            ldr r2, [r1, #8]
00088c62  21 46                                            mov r1, r4
00088c64  90 47                                            blx r2
00088c66  a8 69                                            ldr r0, [r5, #0x18]
00088c68  01 28                                            cmp r0, #1
00088c6a  08 d1                                            bne #0x88c7e
00088c6c  e0 68                                            ldr r0, [r4, #0xc]
00088c6e  25 a1                                            adr r1, #0x94
00088c70  ab f7 d8 eb                                      blx #0x34424
00088c74  a8 6a                                            ldr r0, [r5, #0x28]
00088c76  01 68                                            ldr r1, [r0]
00088c78  8a 68                                            ldr r2, [r1, #8]
00088c7a  21 46                                            mov r1, r4
00088c7c  90 47                                            blx r2
00088c7e  e0 68                                            ldr r0, [r4, #0xc]
00088c80  21 a1                                            adr r1, #0x84
00088c82  01 b0                                            add sp, #4
00088c84  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00088c88  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00088c8c  28 f0 7c b8                                      b.w #0xb0d88
00088c90  5e 99                                            ldr r1, [sp, #0x178]
00088c92  04 00                                            movs r4, r0
00088c94  5f 6c                                            ldr r7, [r3, #0x44]
00088c96  6f 77                                            strb r7, [r5, #0x1d]
00088c98  5f 00                                            lsls r7, r3, #1
00088c9a  00 00                                            movs r0, r0
00088c9c  5f 6d                                            ldr r7, [r3, #0x54]
00088c9e  65 64                                            str r5, [r4, #0x44]
00088ca0  69 75                                            strb r1, [r5, #0x15]
00088ca2  6d 5f                                            ldrsh r5, [r5, r5]
00088ca4  00 00                                            movs r0, r0
00088ca6  00 00                                            movs r0, r0
00088ca8  5f 68                                            ldr r7, [r3, #4]
00088caa  69 67                                            str r1, [r5, #0x74]
00088cac  68 5f                                            ldrsh r0, [r5, r5]
00088cae  00 00                                            movs r0, r0
00088cb0  69 6d                                            ldr r1, [r5, #0x54]
00088cb2  70 6c                                            ldr r0, [r6, #0x44]
00088cb4  25 73                                            strb r5, [r4, #0xc]
00088cb6  00 00                                            movs r0, r0
00088cb8  74 65                                            str r4, [r6, #0x54]
00088cba  78 74                                            strb r0, [r7, #0x11]
00088cbc  75 72                                            strb r5, [r6, #9]
00088cbe  65 00                                            lsls r5, r4, #1
00088cc0  74 65                                            str r4, [r6, #0x54]
00088cc2  78 65                                            str r0, [r7, #0x54]
00088cc4  6c 46                                            mov r4, sp
00088cc6  65 74                                            strb r5, [r4, #0x11]
00088cc8  63 68                                            ldr r3, [r4, #4]
00088cca  00 00                                            movs r0, r0
00088ccc  73 68                                            ldr r3, [r6, #4]
00088cce  61 64                                            str r1, [r4, #0x44]
00088cd0  6f 77                                            strb r7, [r5, #0x1d]
00088cd2  00 00                                            movs r0, r0
00088cd4  25 73                                            strb r5, [r4, #0xc]
00088cd6  00 00                                            movs r0, r0
00088cd8  d8 fa                                            .byte 0xd8, 0xfa
00088cda  04 00                                            movs r4, r0
00088cdc  50 72                                            strb r0, [r2, #9]
00088cde  6f 6a                                            ldr r7, [r5, #0x24]
00088ce0  00 00                                            movs r0, r0
00088ce2  00 00                                            movs r0, r0
00088ce4  4c 6f                                            ldr r4, [r1, #0x74]
00088ce6  64 00                                            lsls r4, r4, #1
00088ce8  47 72                                            strb r7, [r0, #9]
00088cea  61 64                                            str r1, [r4, #0x44]
00088cec  00 00                                            movs r0, r0
00088cee  00 00                                            movs r0, r0
00088cf0  4f 66                                            str r7, [r1, #0x64]
00088cf2  66 73                                            strb r6, [r4, #0xd]
00088cf4  65 74                                            strb r5, [r4, #0x11]
00088cf6  00 00                                            movs r0, r0
00088cf8  45 58                                            ldr r5, [r0, r1]
00088cfa  54 00                                            lsls r4, r2, #1
00088cfc  41 52                                            strh r1, [r0, r1]
00088cfe  42 00                                            lsls r2, r0, #1
00088d00  20 28                                            cmp r0, #0x20
00088d02  00 00                                            movs r0, r0
00088d04  2c 20                                            movs r0, #0x2c
00088d06  00 00                                            movs r0, r0
00088d08  29 00                                            movs r1, r5
00088d0a  00 00                                            movs r0, r0

; FUNCTION 0x00088d0c, declared_size=380, range_size=380, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP10ir_swizzle
; demangled: ir_print_glsl_visitor::visit(ir_swizzle*)
; decoder-mode: thumb
00088d0c  f0 b5                                            push {r4, r5, r6, r7, lr}
00088d0e  03 af                                            add r7, sp, #0xc
00088d10  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00088d14  87 b0                                            sub sp, #0x1c
00088d16  81 46                                            mov sb, r0
00088d18  50 48                                            ldr r0, [pc, #0x140]
00088d1a  8a 46                                            mov sl, r1
00088d1c  51 4a                                            ldr r2, [pc, #0x144]
00088d1e  78 44                                            add r0, pc
00088d20  4f 49                                            ldr r1, [pc, #0x13c]
00088d22  7a 44                                            add r2, pc
00088d24  50 4d                                            ldr r5, [pc, #0x140]
00088d26  00 68                                            ldr r0, [r0]
00088d28  79 44                                            add r1, pc
00088d2a  7d 44                                            add r5, pc
00088d2c  12 68                                            ldr r2, [r2]
00088d2e  09 68                                            ldr r1, [r1]
00088d30  00 23                                            movs r3, #0
00088d32  00 68                                            ldr r0, [r0]
00088d34  06 90                                            str r0, [sp, #0x18]
00088d36  ba f8 1c 60                                      ldrh.w r6, [sl, #0x1c]
00088d3a  2d 68                                            ldr r5, [r5]
00088d3c  06 f0 03 00                                      and r0, r6, #3
00088d40  d2 f8 00 80                                      ldr.w r8, [r2]
00088d44  d1 f8 00 b0                                      ldr.w fp, [r1]
00088d48  00 22                                            movs r2, #0
00088d4a  cd e9 01 00                                      strd r0, r0, [sp, #4]
00088d4e  c6 f3 81 00                                      ubfx r0, r6, #2, #2
00088d52  03 90                                            str r0, [sp, #0xc]
00088d54  c6 f3 01 10                                      ubfx r0, r6, #4, #2
00088d58  04 90                                            str r0, [sp, #0x10]
00088d5a  c6 f3 81 10                                      ubfx r0, r6, #6, #2
00088d5e  05 90                                            str r0, [sp, #0x14]
00088d60  00 21                                            movs r1, #0
00088d62  da f8 18 00                                      ldr.w r0, [sl, #0x18]
00088d66  06 f4 e0 66                                      and r6, r6, #0x700
00088d6a  2d 68                                            ldr r5, [r5]
00088d6c  04 69                                            ldr r4, [r0, #0x10]
00088d6e  44 45                                            cmp r4, r8
00088d70  08 bf                                            it eq
00088d72  01 22                                            moveq r2, #1
00088d74  5c 45                                            cmp r4, fp
00088d76  08 bf                                            it eq
00088d78  01 23                                            moveq r3, #1
00088d7a  ac 42                                            cmp r4, r5
00088d7c  08 bf                                            it eq
00088d7e  01 21                                            moveq r1, #1
00088d80  b6 f5 80 7f                                      cmp.w r6, #0x100
00088d84  1c bf                                            itt ne
00088d86  1a 43                                            orrne r2, r3
00088d88  51 ea 02 01                                      orrsne.w r1, r1, r2
00088d8c  0d d0                                            beq #0x88daa
00088d8e  da f8 10 10                                      ldr.w r1, [sl, #0x10]
00088d92  01 22                                            movs r2, #1
00088d94  d9 f8 0c 00                                      ldr.w r0, [sb, #0xc]
00088d98  ff f7 da fb                                      bl #0x88550
00088d9c  d9 f8 0c 00                                      ldr.w r0, [sb, #0xc]
00088da0  32 a1                                            adr r1, #0xc8
00088da2  ab f7 40 eb                                      blx #0x34424
00088da6  da f8 18 00                                      ldr.w r0, [sl, #0x18]
00088daa  01 68                                            ldr r1, [r0]
00088dac  8a 68                                            ldr r2, [r1, #8]
00088dae  49 46                                            mov r1, sb
00088db0  90 47                                            blx r2
00088db2  da f8 18 00                                      ldr.w r0, [sl, #0x18]
00088db6  00 69                                            ldr r0, [r0, #0x10]
00088db8  58 45                                            cmp r0, fp
00088dba  18 bf                                            it ne
00088dbc  40 45                                            cmpne r0, r8
00088dbe  34 d0                                            beq #0x88e2a
00088dc0  a8 42                                            cmp r0, r5
00088dc2  32 d0                                            beq #0x88e2a
00088dc4  00 89                                            ldrh r0, [r0, #8]
00088dc6  00 f4 60 60                                      and r0, r0, #0xe00
00088dca  b0 f5 00 7f                                      cmp.w r0, #0x200
00088dce  38 d0                                            beq #0x88e42
00088dd0  d9 f8 0c 00                                      ldr.w r0, [sb, #0xc]
00088dd4  26 a1                                            adr r1, #0x98
00088dd6  ab f7 26 eb                                      blx #0x34424
00088dda  9a f8 1d 00                                      ldrb.w r0, [sl, #0x1d]
00088dde  40 07                                            lsls r0, r0, #0x1d
00088de0  2f d0                                            beq #0x88e42
00088de2  24 49                                            ldr r1, [pc, #0x90]
00088de4  01 9a                                            ldr r2, [sp, #4]
00088de6  79 44                                            add r1, pc
00088de8  d9 f8 0c 00                                      ldr.w r0, [sb, #0xc]
00088dec  8a 5c                                            ldrb r2, [r1, r2]
00088dee  22 a1                                            adr r1, #0x88
00088df0  ab f7 18 eb                                      blx #0x34424
00088df4  9a f8 1d 00                                      ldrb.w r0, [sl, #0x1d]
00088df8  10 f0 06 0f                                      tst.w r0, #6
00088dfc  21 d0                                            beq #0x88e42
00088dfe  1f 4c                                            ldr r4, [pc, #0x7c]
00088e00  02 ad                                            add r5, sp, #8
00088e02  0f f2 74 08                                      addw r8, pc, #0x74
00088e06  01 26                                            movs r6, #1
00088e08  7c 44                                            add r4, pc
00088e0a  55 f8 26 10                                      ldr.w r1, [r5, r6, lsl #2]
00088e0e  d9 f8 0c 00                                      ldr.w r0, [sb, #0xc]
00088e12  62 5c                                            ldrb r2, [r4, r1]
00088e14  41 46                                            mov r1, r8
00088e16  ab f7 06 eb                                      blx #0x34424
00088e1a  9a f8 1d 00                                      ldrb.w r0, [sl, #0x1d]
00088e1e  01 36                                            adds r6, #1
00088e20  00 f0 07 00                                      and r0, r0, #7
00088e24  86 42                                            cmp r6, r0
00088e26  f0 d3                                            blo #0x88e0a
00088e28  0b e0                                            b #0x88e42
00088e2a  ba f8 1c 00                                      ldrh.w r0, [sl, #0x1c]
00088e2e  00 f4 e0 60                                      and r0, r0, #0x700
00088e32  b0 f5 80 7f                                      cmp.w r0, #0x100
00088e36  04 d0                                            beq #0x88e42
00088e38  d9 f8 0c 00                                      ldr.w r0, [sb, #0xc]
00088e3c  10 a1                                            adr r1, #0x40
00088e3e  ab f7 f2 ea                                      blx #0x34424
00088e42  10 48                                            ldr r0, [pc, #0x40]
00088e44  06 99                                            ldr r1, [sp, #0x18]
00088e46  78 44                                            add r0, pc
00088e48  00 68                                            ldr r0, [r0]
00088e4a  00 68                                            ldr r0, [r0]
00088e4c  40 1a                                            subs r0, r0, r1
00088e4e  02 bf                                            ittt eq
00088e50  07 b0                                            addeq sp, #0x1c
00088e52  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00088e56  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00088e58  a9 f7 02 e9                                      blx #0x32060
00088e5c  96 37                                            adds r7, #0x96
00088e5e  05 00                                            movs r5, r0
00088e60  74 38                                            subs r0, #0x74
00088e62  05 00                                            movs r5, r0
00088e64  52 38                                            subs r0, #0x52
00088e66  05 00                                            movs r5, r0
00088e68  4e 38                                            subs r0, #0x4e
00088e6a  05 00                                            movs r5, r0
00088e6c  28 00                                            movs r0, r5
00088e6e  00 00                                            movs r0, r0
00088e70  2e 00                                            movs r6, r5
00088e72  00 00                                            movs r0, r0
00088e74  d6 7c                                            ldrb r6, [r2, #0x13]
00088e76  03 00                                            movs r3, r0
00088e78  25 63                                            str r5, [r4, #0x30]
00088e7a  00 00                                            movs r0, r0
00088e7c  b4 7c                                            ldrb r4, [r6, #0x12]
00088e7e  03 00                                            movs r3, r0
00088e80  29 00                                            movs r1, r5
00088e82  00 00                                            movs r0, r0
00088e84  6e 36                                            adds r6, #0x6e
00088e86  05 00                                            movs r5, r0

; FUNCTION 0x00088e88, declared_size=26, range_size=26, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP23ir_dereference_variable
; demangled: ir_print_glsl_visitor::visit(ir_dereference_variable*)
; decoder-mode: thumb
00088e88  d0 b5                                            push {r4, r6, r7, lr}
00088e8a  02 af                                            add r7, sp, #8
00088e8c  04 46                                            mov r4, r0
00088e8e  08 68                                            ldr r0, [r1]
00088e90  02 6a                                            ldr r2, [r0, #0x20]
00088e92  08 46                                            mov r0, r1
00088e94  90 47                                            blx r2
00088e96  01 46                                            mov r1, r0
00088e98  20 46                                            mov r0, r4
00088e9a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
00088e9e  27 f0 7b bf                                      b.w #0xb0d98

; FUNCTION 0x00088ea4, declared_size=56, range_size=56, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP20ir_dereference_array
; demangled: ir_print_glsl_visitor::visit(ir_dereference_array*)
; decoder-mode: thumb
00088ea4  b0 b5                                            push {r4, r5, r7, lr}
00088ea6  02 af                                            add r7, sp, #8
00088ea8  0c 46                                            mov r4, r1
00088eaa  05 46                                            mov r5, r0
00088eac  a0 69                                            ldr r0, [r4, #0x18]
00088eae  01 68                                            ldr r1, [r0]
00088eb0  8a 68                                            ldr r2, [r1, #8]
00088eb2  29 46                                            mov r1, r5
00088eb4  90 47                                            blx r2
00088eb6  e8 68                                            ldr r0, [r5, #0xc]
00088eb8  06 a1                                            adr r1, #0x18
00088eba  ab f7 b4 ea                                      blx #0x34424
00088ebe  e0 69                                            ldr r0, [r4, #0x1c]
00088ec0  01 68                                            ldr r1, [r0]
00088ec2  8a 68                                            ldr r2, [r1, #8]
00088ec4  29 46                                            mov r1, r5
00088ec6  90 47                                            blx r2
00088ec8  e8 68                                            ldr r0, [r5, #0xc]
00088eca  03 a1                                            adr r1, #0xc
00088ecc  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
00088ed0  27 f0 5a bf                                      b.w #0xb0d88
00088ed4  5b 00                                            lsls r3, r3, #1
00088ed6  00 00                                            movs r0, r0
00088ed8  5d 00                                            lsls r5, r3, #1
00088eda  00 00                                            movs r0, r0

; FUNCTION 0x00088edc, declared_size=36, range_size=36, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP21ir_dereference_record
; demangled: ir_print_glsl_visitor::visit(ir_dereference_record*)
; decoder-mode: thumb
00088edc  b0 b5                                            push {r4, r5, r7, lr}
00088ede  02 af                                            add r7, sp, #8
00088ee0  0c 46                                            mov r4, r1
00088ee2  05 46                                            mov r5, r0
00088ee4  a0 69                                            ldr r0, [r4, #0x18]
00088ee6  01 68                                            ldr r1, [r0]
00088ee8  8a 68                                            ldr r2, [r1, #8]
00088eea  29 46                                            mov r1, r5
00088eec  90 47                                            blx r2
00088eee  e2 69                                            ldr r2, [r4, #0x1c]
00088ef0  02 a1                                            adr r1, #8
00088ef2  e8 68                                            ldr r0, [r5, #0xc]
00088ef4  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
00088ef8  27 f0 46 bf                                      b.w #0xb0d88
00088efc  2e 25                                            movs r5, #0x2e
00088efe  73 00                                            lsls r3, r6, #1

; FUNCTION 0x00088f00, declared_size=184, range_size=184, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor26try_print_array_assignmentEP14ir_dereferenceP9ir_rvalue
; demangled: ir_print_glsl_visitor::try_print_array_assignment(ir_dereference*, ir_rvalue*)
; decoder-mode: thumb
00088f00  f0 b5                                            push {r4, r5, r6, r7, lr}
00088f02  03 af                                            add r7, sp, #0xc
00088f04  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00088f08  81 b0                                            sub sp, #4
00088f0a  06 46                                            mov r6, r0
00088f0c  14 46                                            mov r4, r2
00088f0e  70 69                                            ldr r0, [r6, #0x14]
00088f10  88 46                                            mov r8, r1
00088f12  d0 f8 80 00                                      ldr.w r0, [r0, #0x80]
00088f16  77 28                                            cmp r0, #0x77
00088f18  04 d9                                            bls #0x88f24
00088f1a  00 20                                            movs r0, #0
00088f1c  01 b0                                            add sp, #4
00088f1e  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00088f22  f0 bd                                            pop {r4, r5, r6, r7, pc}
00088f24  00 20                                            movs r0, #0
00088f26  00 2c                                            cmp r4, #0
00088f28  f8 d0                                            beq #0x88f1c
00088f2a  e1 68                                            ldr r1, [r4, #0xc]
00088f2c  02 29                                            cmp r1, #2
00088f2e  f5 d1                                            bne #0x88f1c
00088f30  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
00088f34  41 68                                            ldr r1, [r0, #4]
00088f36  09 29                                            cmp r1, #9
00088f38  ef d1                                            bne #0x88f1a
00088f3a  21 69                                            ldr r1, [r4, #0x10]
00088f3c  4a 68                                            ldr r2, [r1, #4]
00088f3e  09 2a                                            cmp r2, #9
00088f40  eb d1                                            bne #0x88f1a
00088f42  0a 69                                            ldr r2, [r1, #0x10]
00088f44  00 69                                            ldr r0, [r0, #0x10]
00088f46  90 42                                            cmp r0, r2
00088f48  e7 d1                                            bne #0x88f1a
00088f4a  d1 f8 10 b0                                      ldr.w fp, [r1, #0x10]
00088f4e  bb f1 00 0f                                      cmp.w fp, #0
00088f52  24 d0                                            beq #0x88f9e
00088f54  ab f1 01 09                                      sub.w sb, fp, #1
00088f58  0f f2 50 0a                                      addw sl, pc, #0x50
00088f5c  00 25                                            movs r5, #0
00088f5e  d8 f8 00 00                                      ldr.w r0, [r8]
00088f62  31 46                                            mov r1, r6
00088f64  82 68                                            ldr r2, [r0, #8]
00088f66  40 46                                            mov r0, r8
00088f68  90 47                                            blx r2
00088f6a  f0 68                                            ldr r0, [r6, #0xc]
00088f6c  0d a1                                            adr r1, #0x34
00088f6e  2a 46                                            mov r2, r5
00088f70  ab f7 58 ea                                      blx #0x34424
00088f74  20 68                                            ldr r0, [r4]
00088f76  31 46                                            mov r1, r6
00088f78  82 68                                            ldr r2, [r0, #8]
00088f7a  20 46                                            mov r0, r4
00088f7c  90 47                                            blx r2
00088f7e  f0 68                                            ldr r0, [r6, #0xc]
00088f80  51 46                                            mov r1, sl
00088f82  2a 46                                            mov r2, r5
00088f84  ab f7 4e ea                                      blx #0x34424
00088f88  a9 45                                            cmp sb, r5
00088f8a  03 d0                                            beq #0x88f94
00088f8c  f0 68                                            ldr r0, [r6, #0xc]
00088f8e  09 a1                                            adr r1, #0x24
00088f90  ab f7 48 ea                                      blx #0x34424
00088f94  01 35                                            adds r5, #1
00088f96  01 20                                            movs r0, #1
00088f98  ab 45                                            cmp fp, r5
00088f9a  e0 d1                                            bne #0x88f5e
00088f9c  be e7                                            b #0x88f1c
00088f9e  01 20                                            movs r0, #1
00088fa0  bc e7                                            b #0x88f1c
00088fa2  00 bf                                            nop
00088fa4  5b 25                                            movs r5, #0x5b
00088fa6  64 5d                                            ldrb r4, [r4, r5]
00088fa8  3d 00                                            movs r5, r7
00088faa  00 00                                            movs r0, r0
00088fac  5b 25                                            movs r5, #0x5b
00088fae  64 5d                                            ldrb r4, [r4, r5]
00088fb0  00 00                                            movs r0, r0
00088fb2  00 00                                            movs r0, r0
00088fb4  3b 00                                            movs r3, r7
00088fb6  00 00                                            movs r0, r0

; FUNCTION 0x00088fb8, declared_size=424, range_size=424, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor20emit_assignment_partEP14ir_dereferenceP9ir_rvaluejS3_
; demangled: ir_print_glsl_visitor::emit_assignment_part(ir_dereference*, ir_rvalue*, unsigned int, ir_rvalue*)
; decoder-mode: thumb
00088fb8  f0 b5                                            push {r4, r5, r6, r7, lr}
00088fba  03 af                                            add r7, sp, #0xc
00088fbc  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00088fc0  83 b0                                            sub sp, #0xc
00088fc2  04 46                                            mov r4, r0
00088fc4  5b 48                                            ldr r0, [pc, #0x16c]
00088fc6  0e 46                                            mov r6, r1
00088fc8  91 46                                            mov sb, r2
00088fca  78 44                                            add r0, pc
00088fcc  21 46                                            mov r1, r4
00088fce  1d 46                                            mov r5, r3
00088fd0  00 68                                            ldr r0, [r0]
00088fd2  00 68                                            ldr r0, [r0]
00088fd4  02 90                                            str r0, [sp, #8]
00088fd6  30 68                                            ldr r0, [r6]
00088fd8  82 68                                            ldr r2, [r0, #8]
00088fda  30 46                                            mov r0, r6
00088fdc  90 47                                            blx r2
00088fde  b8 68                                            ldr r0, [r7, #8]
00088fe0  00 28                                            cmp r0, #0
00088fe2  1d d0                                            beq #0x89020
00088fe4  c1 68                                            ldr r1, [r0, #0xc]
00088fe6  03 29                                            cmp r1, #3
00088fe8  0b d1                                            bne #0x89002
00088fea  00 21                                            movs r1, #0
00088fec  a9 f7 d0 ec                                      blx #0x32990
00088ff0  53 49                                            ldr r1, [pc, #0x14c]
00088ff2  e3 68                                            ldr r3, [r4, #0xc]
00088ff4  79 44                                            add r1, pc
00088ff6  0a 5c                                            ldrb r2, [r1, r0]
00088ff8  52 a1                                            adr r1, #0x148
00088ffa  18 46                                            mov r0, r3
00088ffc  ab f7 12 ea                                      blx #0x34424
00089000  0d e0                                            b #0x8901e
00089002  e0 68                                            ldr r0, [r4, #0xc]
00089004  4c a1                                            adr r1, #0x130
00089006  ab f7 0e ea                                      blx #0x34424
0008900a  b8 68                                            ldr r0, [r7, #8]
0008900c  21 46                                            mov r1, r4
0008900e  00 68                                            ldr r0, [r0]
00089010  82 68                                            ldr r2, [r0, #8]
00089012  b8 68                                            ldr r0, [r7, #8]
00089014  90 47                                            blx r2
00089016  e0 68                                            ldr r0, [r4, #0xc]
00089018  48 a1                                            adr r1, #0x120
0008901a  ab f7 04 ea                                      blx #0x34424
0008901e  b8 68                                            ldr r0, [r7, #8]
00089020  d9 f8 10 b0                                      ldr.w fp, [sb, #0x10]
00089024  4f f0 00 08                                      mov.w r8, #0
00089028  d6 f8 10 a0                                      ldr.w sl, [r6, #0x10]
0008902c  88 b9                                            cbnz r0, #0x89052
0008902e  ba f8 08 00                                      ldrh.w r0, [sl, #8]
00089032  00 f4 c0 41                                      and r1, r0, #0x6000
00089036  b8 eb 51 3f                                      cmp.w r8, r1, lsr #13
0008903a  0a d1                                            bne #0x89052
0008903c  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00089040  02 28                                            cmp r0, #2
00089042  06 d3                                            blo #0x89052
00089044  81 b2                                            uxth r1, r0
00089046  01 20                                            movs r0, #1
00089048  00 fa 01 f1                                      lsl.w r1, r0, r1
0008904c  01 39                                            subs r1, #1
0008904e  a9 42                                            cmp r1, r5
00089050  55 d1                                            bne #0x890fe
00089052  00 26                                            movs r6, #0
00089054  a7 f1 25 00                                      sub.w r0, r7, #0x25
00089058  00 f8 06 80                                      strb.w r8, [r0, r6]
0008905c  17 f8 25 0c                                      ldrb r0, [r7, #-0x25]
00089060  38 b1                                            cbz r0, #0x89072
00089062  e0 68                                            ldr r0, [r4, #0xc]
00089064  39 a1                                            adr r1, #0xe4
00089066  a7 f1 25 02                                      sub.w r2, r7, #0x25
0008906a  ab f7 dc e9                                      blx #0x34424
0008906e  4f f0 01 08                                      mov.w r8, #1
00089072  e0 68                                            ldr r0, [r4, #0xc]
00089074  36 a1                                            adr r1, #0xd8
00089076  ab f7 d6 e9                                      blx #0x34424
0008907a  da 45                                            cmp sl, fp
0008907c  19 d0                                            beq #0x890b2
0008907e  b8 68                                            ldr r0, [r7, #8]
00089080  b8 b9                                            cbnz r0, #0x890b2
00089082  e0 68                                            ldr r0, [r4, #0xc]
00089084  b8 f1 00 0f                                      cmp.w r8, #0
00089088  1a d0                                            beq #0x890c0
0008908a  32 a1                                            adr r1, #0xc8
0008908c  ab f7 ca e9                                      blx #0x34424
00089090  d9 f8 00 00                                      ldr.w r0, [sb]
00089094  21 46                                            mov r1, r4
00089096  82 68                                            ldr r2, [r0, #8]
00089098  48 46                                            mov r0, sb
0008909a  90 47                                            blx r2
0008909c  e0 68                                            ldr r0, [r4, #0xc]
0008909e  2e a1                                            adr r1, #0xb8
000890a0  ab f7 c0 e9                                      blx #0x34424
000890a4  e0 68                                            ldr r0, [r4, #0xc]
000890a6  29 a1                                            adr r1, #0xa4
000890a8  a7 f1 25 02                                      sub.w r2, r7, #0x25
000890ac  ab f7 ba e9                                      blx #0x34424
000890b0  18 e0                                            b #0x890e4
000890b2  d9 f8 00 00                                      ldr.w r0, [sb]
000890b6  21 46                                            mov r1, r4
000890b8  82 68                                            ldr r2, [r0, #8]
000890ba  48 46                                            mov r0, sb
000890bc  90 47                                            blx r2
000890be  11 e0                                            b #0x890e4
000890c0  51 46                                            mov r1, sl
000890c2  01 22                                            movs r2, #1
000890c4  ff f7 44 fa                                      bl #0x88550
000890c8  e0 68                                            ldr r0, [r4, #0xc]
000890ca  22 a1                                            adr r1, #0x88
000890cc  ab f7 aa e9                                      blx #0x34424
000890d0  d9 f8 00 00                                      ldr.w r0, [sb]
000890d4  21 46                                            mov r1, r4
000890d6  82 68                                            ldr r2, [r0, #8]
000890d8  48 46                                            mov r0, sb
000890da  90 47                                            blx r2
000890dc  e0 68                                            ldr r0, [r4, #0xc]
000890de  1e a1                                            adr r1, #0x78
000890e0  ab f7 a0 e9                                      blx #0x34424
000890e4  1d 48                                            ldr r0, [pc, #0x74]
000890e6  02 99                                            ldr r1, [sp, #8]
000890e8  78 44                                            add r0, pc
000890ea  00 68                                            ldr r0, [r0]
000890ec  00 68                                            ldr r0, [r0]
000890ee  40 1a                                            subs r0, r0, r1
000890f0  02 bf                                            ittt eq
000890f2  03 b0                                            addeq sp, #0xc
000890f4  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
000890f8  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000890fa  a8 f7 b2 ef                                      blx #0x32060
000890fe  df f8 48 c0                                      ldr.w ip, [pc, #0x48]
00089102  a7 f1 25 02                                      sub.w r2, r7, #0x25
00089106  00 26                                            movs r6, #0
00089108  00 23                                            movs r3, #0
0008910a  fc 44                                            add ip, pc
0008910c  00 fa 03 f1                                      lsl.w r1, r0, r3
00089110  29 42                                            tst r1, r5
00089112  1e bf                                            ittt ne
00089114  1c f8 03 10                                      ldrbne.w r1, [ip, r3]
00089118  91 55                                            strbne r1, [r2, r6]
0008911a  01 36                                            addne r6, #1
0008911c  01 33                                            adds r3, #1
0008911e  04 2b                                            cmp r3, #4
00089120  f4 d1                                            bne #0x8910c
00089122  da f8 04 00                                      ldr.w r0, [sl, #4]
00089126  31 46                                            mov r1, r6
00089128  01 22                                            movs r2, #1
0008912a  a9 f7 fc eb                                      blx #0x32924
0008912e  82 46                                            mov sl, r0
00089130  90 e7                                            b #0x89054
00089132  00 bf                                            nop
00089134  ea 34                                            adds r4, #0xea
00089136  05 00                                            movs r5, r0
00089138  5b 00                                            lsls r3, r3, #1
0008913a  00 00                                            movs r0, r0
0008913c  5d 00                                            lsls r5, r3, #1
0008913e  00 00                                            movs r0, r0
00089140  c8 7a                                            ldrb r0, [r1, #0xb]
00089142  03 00                                            movs r3, r0
00089144  2e 25                                            movs r5, #0x2e
00089146  63 00                                            lsls r3, r4, #1
00089148  b2 79                                            ldrb r2, [r6, #6]
0008914a  03 00                                            movs r3, r0
0008914c  2e 25                                            movs r5, #0x2e
0008914e  73 00                                            lsls r3, r6, #1
00089150  20 3d                                            subs r5, #0x20
00089152  20 00                                            movs r0, r4
00089154  28 00                                            movs r0, r5
00089156  00 00                                            movs r0, r0
00089158  29 00                                            movs r1, r5
0008915a  00 00                                            movs r0, r0
0008915c  cc 33                                            adds r3, #0xcc
0008915e  05 00                                            movs r5, r0

; FUNCTION 0x00089160, declared_size=564, range_size=564, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP13ir_assignment
; demangled: ir_print_glsl_visitor::visit(ir_assignment*)
; decoder-mode: thumb
00089160  f0 b5                                            push {r4, r5, r6, r7, lr}
00089162  03 af                                            add r7, sp, #0xc
00089164  2d e9 00 0b                                      push.w {r8, sb, fp}
00089168  82 b0                                            sub sp, #8
0008916a  04 46                                            mov r4, r0
0008916c  89 46                                            mov sb, r1
0008916e  94 f8 21 00                                      ldrb.w r0, [r4, #0x21]
00089172  00 b3                                            cbz r0, #0x891b6
00089174  a0 69                                            ldr r0, [r4, #0x18]
00089176  00 28                                            cmp r0, #0
00089178  43 d0                                            beq #0x89202
0008917a  25 69                                            ldr r5, [r4, #0x10]
0008917c  0c 21                                            movs r1, #0xc
0008917e  68 69                                            ldr r0, [r5, #0x14]
00089180  a9 f7 ce ea                                      blx #0x32720
00089184  06 46                                            mov r6, r0
00089186  7c 48                                            ldr r0, [pc, #0x1f0]
00089188  78 44                                            add r0, pc
0008918a  01 68                                            ldr r1, [r0]
0008918c  30 46                                            mov r0, r6
0008918e  a9 f7 b8 eb                                      blx #0x32900
00089192  05 f1 0c 00                                      add.w r0, r5, #0xc
00089196  30 60                                            str r0, [r6]
00089198  c6 f8 08 90                                      str.w sb, [r6, #8]
0008919c  77 a1                                            adr r1, #0x1dc
0008919e  28 69                                            ldr r0, [r5, #0x10]
000891a0  70 60                                            str r0, [r6, #4]
000891a2  06 60                                            str r6, [r0]
000891a4  2e 61                                            str r6, [r5, #0x10]
000891a6  e0 68                                            ldr r0, [r4, #0xc]
000891a8  02 b0                                            add sp, #8
000891aa  bd e8 00 0b                                      pop.w {r8, sb, fp}
000891ae  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000891b2  27 f0 e9 bd                                      b.w #0xb0d88
000891b6  48 46                                            mov r0, sb
000891b8  aa f7 c2 ea                                      blx #0x33740
000891bc  01 46                                            mov r1, r0
000891be  00 29                                            cmp r1, #0
000891c0  d8 d0                                            beq #0x89174
000891c2  d9 f8 18 00                                      ldr.w r0, [sb, #0x18]
000891c6  00 28                                            cmp r0, #0
000891c8  d4 d1                                            bne #0x89174
000891ca  e0 69                                            ldr r0, [r4, #0x1c]
000891cc  ab f7 4e e9                                      blx #0x3446c
000891d0  00 28                                            cmp r0, #0
000891d2  cf d0                                            beq #0x89174
000891d4  c1 6a                                            ldr r1, [r0, #0x2c]
000891d6  01 29                                            cmp r1, #1
000891d8  cc d1                                            bne #0x89174
000891da  01 6a                                            ldr r1, [r0, #0x20]
000891dc  00 f1 24 02                                      add.w r2, r0, #0x24
000891e0  91 42                                            cmp r1, r2
000891e2  1e bf                                            ittt ne
000891e4  01 6b                                            ldrne r1, [r0, #0x30]
000891e6  34 30                                            addne r0, #0x34
000891e8  81 42                                            cmpne r1, r0
000891ea  c3 d0                                            beq #0x89174
000891ec  02 20                                            movs r0, #2
000891ee  09 68                                            ldr r1, [r1]
000891f0  01 38                                            subs r0, #1
000891f2  00 29                                            cmp r1, #0
000891f4  fb d1                                            bne #0x891ee
000891f6  00 28                                            cmp r0, #0
000891f8  bc d1                                            bne #0x89174
000891fa  01 20                                            movs r0, #1
000891fc  84 f8 22 00                                      strb.w r0, [r4, #0x22]
00089200  85 e0                                            b #0x8930e
00089202  d9 f8 14 60                                      ldr.w r6, [sb, #0x14]
00089206  00 21                                            movs r1, #0
00089208  00 22                                            movs r2, #0
0008920a  00 2e                                            cmp r6, #0
0008920c  f0 68                                            ldr r0, [r6, #0xc]
0008920e  08 bf                                            it eq
00089210  01 22                                            moveq r2, #1
00089212  04 28                                            cmp r0, #4
00089214  18 bf                                            it ne
00089216  01 21                                            movne r1, #1
00089218  52 ea 01 00                                      orrs.w r0, r2, r1
0008921c  04 bf                                            itt eq
0008921e  b1 69                                            ldreq r1, [r6, #0x18]
00089220  67 29                                            cmpeq r1, #0x67
00089222  28 d0                                            beq #0x89276
00089224  d9 f8 18 10                                      ldr.w r1, [sb, #0x18]
00089228  00 29                                            cmp r1, #0
0008922a  18 bf                                            it ne
0008922c  01 21                                            movne r1, #1
0008922e  08 43                                            orrs r0, r1
00089230  04 bf                                            itt eq
00089232  b0 69                                            ldreq r0, [r6, #0x18]
00089234  3e 28                                            cmpeq r0, #0x3e
00089236  4d d1                                            bne #0x892d4
00089238  48 46                                            mov r0, sb
0008923a  aa f7 82 ea                                      blx #0x33740
0008923e  01 46                                            mov r1, r0
00089240  00 29                                            cmp r1, #0
00089242  45 d0                                            beq #0x892d0
00089244  d9 e9 04 02                                      ldrd r0, r2, [sb, #0x10]
00089248  15 69                                            ldr r5, [r2, #0x10]
0008924a  03 69                                            ldr r3, [r0, #0x10]
0008924c  ab 42                                            cmp r3, r5
0008924e  10 d1                                            bne #0x89272
00089250  1d 89                                            ldrh r5, [r3, #8]
00089252  05 f4 60 65                                      and r5, r5, #0xe00
00089256  b5 f5 00 7f                                      cmp.w r5, #0x200
0008925a  0a d1                                            bne #0x89272
0008925c  5b 68                                            ldr r3, [r3, #4]
0008925e  03 2b                                            cmp r3, #3
00089260  07 d8                                            bhi #0x89272
00089262  f3 69                                            ldr r3, [r6, #0x1c]
00089264  2b b1                                            cbz r3, #0x89272
00089266  dd 68                                            ldr r5, [r3, #0xc]
00089268  02 2d                                            cmp r5, #2
0008926a  04 bf                                            itt eq
0008926c  9b 69                                            ldreq r3, [r3, #0x18]
0008926e  99 42                                            cmpeq r1, r3
00089270  54 d0                                            beq #0x8931c
00089272  16 46                                            mov r6, r2
00089274  2e e0                                            b #0x892d4
00089276  f2 69                                            ldr r2, [r6, #0x1c]
00089278  00 23                                            movs r3, #0
0008927a  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
0008927e  4f f0 00 0c                                      mov.w ip, #0
00089282  d0 68                                            ldr r0, [r2, #0xc]
00089284  cd 68                                            ldr r5, [r1, #0xc]
00089286  02 28                                            cmp r0, #2
00089288  4f f0 00 00                                      mov.w r0, #0
0008928c  08 bf                                            it eq
0008928e  13 46                                            moveq r3, r2
00089290  02 2d                                            cmp r5, #2
00089292  08 bf                                            it eq
00089294  08 46                                            moveq r0, r1
00089296  20 b1                                            cbz r0, #0x892a2
00089298  1b b1                                            cbz r3, #0x892a2
0008929a  9b 69                                            ldr r3, [r3, #0x18]
0008929c  80 69                                            ldr r0, [r0, #0x18]
0008929e  98 42                                            cmp r0, r3
000892a0  39 d0                                            beq #0x89316
000892a2  19 f8 1c 0f                                      ldrb r0, [sb, #0x1c]!
000892a6  cd f8 00 c0                                      str.w ip, [sp]
000892aa  00 f0 0f 03                                      and r3, r0, #0xf
000892ae  20 46                                            mov r0, r4
000892b0  ab f7 ee e8                                      blx #0x34490
000892b4  e0 68                                            ldr r0, [r4, #0xc]
000892b6  32 a1                                            adr r1, #0xc8
000892b8  ab f7 b4 e8                                      blx #0x34424
000892bc  59 f8 0c 1c                                      ldr r1, [sb, #-0xc]
000892c0  d6 e9 08 20                                      ldrd r2, r0, [r6, #0x20]
000892c4  99 f8 00 30                                      ldrb.w r3, [sb]
000892c8  00 90                                            str r0, [sp]
000892ca  03 f0 0f 03                                      and r3, r3, #0xf
000892ce  1b e0                                            b #0x89308
000892d0  d9 f8 14 60                                      ldr.w r6, [sb, #0x14]
000892d4  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
000892d8  20 46                                            mov r0, r4
000892da  32 46                                            mov r2, r6
000892dc  ab f7 de e8                                      blx #0x3449c
000892e0  a8 b9                                            cbnz r0, #0x8930e
000892e2  d9 f8 18 00                                      ldr.w r0, [sb, #0x18]
000892e6  38 b1                                            cbz r0, #0x892f8
000892e8  01 68                                            ldr r1, [r0]
000892ea  8a 68                                            ldr r2, [r1, #8]
000892ec  21 46                                            mov r1, r4
000892ee  90 47                                            blx r2
000892f0  e0 68                                            ldr r0, [r4, #0xc]
000892f2  27 a1                                            adr r1, #0x9c
000892f4  ab f7 96 e8                                      blx #0x34424
000892f8  d9 e9 04 12                                      ldrd r1, r2, [sb, #0x10]
000892fc  00 23                                            movs r3, #0
000892fe  99 f8 1c 00                                      ldrb.w r0, [sb, #0x1c]
00089302  00 93                                            str r3, [sp]
00089304  00 f0 0f 03                                      and r3, r0, #0xf
00089308  20 46                                            mov r0, r4
0008930a  ab f7 c2 e8                                      blx #0x34490
0008930e  02 b0                                            add sp, #8
00089310  bd e8 00 0b                                      pop.w {r8, sb, fp}
00089314  f0 bd                                            pop {r4, r5, r6, r7, pc}
00089316  09 f1 1c 09                                      add.w sb, sb, #0x1c
0008931a  d1 e7                                            b #0x892c0
0008931c  d6 f8 20 80                                      ldr.w r8, [r6, #0x20]
00089320  b8 f1 00 0f                                      cmp.w r8, #0
00089324  a5 d0                                            beq #0x89272
00089326  d8 f8 0c 10                                      ldr.w r1, [r8, #0xc]
0008932a  16 46                                            mov r6, r2
0008932c  03 29                                            cmp r1, #3
0008932e  d1 d1                                            bne #0x892d4
00089330  01 68                                            ldr r1, [r0]
00089332  8a 68                                            ldr r2, [r1, #8]
00089334  21 46                                            mov r1, r4
00089336  90 47                                            blx r2
00089338  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008933c  00 69                                            ldr r0, [r0, #0x10]
0008933e  40 68                                            ldr r0, [r0, #4]
00089340  01 28                                            cmp r0, #1
00089342  09 dc                                            bgt #0x89358
00089344  d8 f8 00 00                                      ldr.w r0, [r8]
00089348  c1 6a                                            ldr r1, [r0, #0x2c]
0008934a  40 46                                            mov r0, r8
0008934c  88 47                                            blx r1
0008934e  01 28                                            cmp r0, #1
00089350  02 d1                                            bne #0x89358
00089352  e0 68                                            ldr r0, [r4, #0xc]
00089354  0d a1                                            adr r1, #0x34
00089356  27 e7                                            b #0x891a8
00089358  e0 68                                            ldr r0, [r4, #0xc]
0008935a  0a a1                                            adr r1, #0x28
0008935c  ab f7 62 e8                                      blx #0x34424
00089360  d8 f8 00 00                                      ldr.w r0, [r8]
00089364  21 46                                            mov r1, r4
00089366  82 68                                            ldr r2, [r0, #8]
00089368  40 46                                            mov r0, r8
0008936a  02 b0                                            add sp, #8
0008936c  bd e8 00 0b                                      pop.w {r8, sb, fp}
00089370  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00089374  10 47                                            bx r2
00089376  00 bf                                            nop
00089378  b0 33                                            adds r3, #0xb0
0008937a  05 00                                            movs r5, r0
0008937c  2f 2f                                            cmp r7, #0x2f
0008937e  00 00                                            movs r0, r0
00089380  3b 20                                            movs r0, #0x3b
00089382  00 00                                            movs r0, r0
00089384  20 2b                                            cmp r3, #0x20
00089386  3d 20                                            movs r0, #0x3d
00089388  00 00                                            movs r0, r0
0008938a  00 00                                            movs r0, r0
0008938c  2b 2b                                            cmp r3, #0x2b
0008938e  00 00                                            movs r0, r0
00089390  20 00                                            movs r0, r4
00089392  00 00                                            movs r0, r0

; FUNCTION 0x00089498, declared_size=672, range_size=672, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP11ir_constant
; demangled: ir_print_glsl_visitor::visit(ir_constant*)
; decoder-mode: thumb
00089498  f0 b5                                            push {r4, r5, r6, r7, lr}
0008949a  03 af                                            add r7, sp, #0xc
0008949c  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000894a0  81 b0                                            sub sp, #4
000894a2  04 46                                            mov r4, r0
000894a4  8f 48                                            ldr r0, [pc, #0x23c]
000894a6  0d 46                                            mov r5, r1
000894a8  78 44                                            add r0, pc
000894aa  2e 69                                            ldr r6, [r5, #0x10]
000894ac  00 68                                            ldr r0, [r0]
000894ae  00 68                                            ldr r0, [r0]
000894b0  86 42                                            cmp r6, r0
000894b2  38 d0                                            beq #0x89526
000894b4  8c 48                                            ldr r0, [pc, #0x230]
000894b6  78 44                                            add r0, pc
000894b8  00 68                                            ldr r0, [r0]
000894ba  00 68                                            ldr r0, [r0]
000894bc  86 42                                            cmp r6, r0
000894be  4d d0                                            beq #0x8955c
000894c0  8a 48                                            ldr r0, [pc, #0x228]
000894c2  78 44                                            add r0, pc
000894c4  00 68                                            ldr r0, [r0]
000894c6  00 68                                            ldr r0, [r0]
000894c8  86 42                                            cmp r6, r0
000894ca  5e d0                                            beq #0x8958a
000894cc  30 46                                            mov r0, r6
000894ce  aa f7 78 eb                                      blx #0x33bc0
000894d2  81 46                                            mov sb, r0
000894d4  e0 68                                            ldr r0, [r4, #0xc]
000894d6  31 46                                            mov r1, r6
000894d8  01 22                                            movs r2, #1
000894da  ff f7 39 f8                                      bl #0x88550
000894de  e0 68                                            ldr r0, [r4, #0xc]
000894e0  83 a1                                            adr r1, #0x20c
000894e2  aa f7 a0 ef                                      blx #0x34424
000894e6  28 69                                            ldr r0, [r5, #0x10]
000894e8  41 68                                            ldr r1, [r0, #4]
000894ea  07 29                                            cmp r1, #7
000894ec  5d d0                                            beq #0x895aa
000894ee  09 29                                            cmp r1, #9
000894f0  7d d1                                            bne #0x895ee
000894f2  00 69                                            ldr r0, [r0, #0x10]
000894f4  00 28                                            cmp r0, #0
000894f6  00 f0 d1 80                                      beq.w #0x8969c
000894fa  0f f2 f8 18                                      addw r8, pc, #0x1f8
000894fe  00 26                                            movs r6, #0
00089500  1e b1                                            cbz r6, #0x8950a
00089502  e0 68                                            ldr r0, [r4, #0xc]
00089504  41 46                                            mov r1, r8
00089506  aa f7 8e ef                                      blx #0x34424
0008950a  28 46                                            mov r0, r5
0008950c  31 46                                            mov r1, r6
0008950e  aa f7 a6 ee                                      blx #0x3425c
00089512  01 68                                            ldr r1, [r0]
00089514  8a 68                                            ldr r2, [r1, #8]
00089516  21 46                                            mov r1, r4
00089518  90 47                                            blx r2
0008951a  28 69                                            ldr r0, [r5, #0x10]
0008951c  01 36                                            adds r6, #1
0008951e  00 69                                            ldr r0, [r0, #0x10]
00089520  86 42                                            cmp r6, r0
00089522  ed d3                                            blo #0x89500
00089524  ba e0                                            b #0x8969c
00089526  95 ed 06 0a                                      vldr s0, [r5, #0x18]
0008952a  10 ee 10 2a                                      vmov r2, s0
0008952e  b4 ee c0 0a                                      vcmpe.f32 s0, s0
00089532  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00089536  1b d6                                            bvs #0x89570
00089538  b0 ee c0 0a                                      vabs.f32 s0, s0
0008953c  9f ed 77 1a                                      vldr s2, [pc, #0x1dc]
00089540  b4 ee 41 0a                                      vcmp.f32 s0, s2
00089544  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00089548  12 d0                                            beq #0x89570
0008954a  e0 68                                            ldr r0, [r4, #0xc]
0008954c  11 46                                            mov r1, r2
0008954e  01 b0                                            add sp, #4
00089550  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00089554  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00089558  27 f0 26 bc                                      b.w #0xb0da8
0008955c  aa 69                                            ldr r2, [r5, #0x18]
0008955e  e0 68                                            ldr r0, [r4, #0xc]
00089560  b2 f1 00 4f                                      cmp.w r2, #-0x80000000
00089564  12 bf                                            itee ne
00089566  64 a1                                            adrne r1, #0x190
00089568  64 a1                                            adreq r1, #0x190
0008956a  4f f0 00 42                                      moveq.w r2, #-0x80000000
0008956e  b0 e0                                            b #0x896d2
00089570  60 69                                            ldr r0, [r4, #0x14]
00089572  90 f8 7c 30                                      ldrb.w r3, [r0, #0x7c]
00089576  d0 f8 80 10                                      ldr.w r1, [r0, #0x80]
0008957a  00 2b                                            cmp r3, #0
0008957c  00 f0 97 80                                      beq.w #0x896ae
00089580  89 08                                            lsrs r1, r1, #2
00089582  4a 29                                            cmp r1, #0x4a
00089584  40 f2 96 80                                      bls.w #0x896b4
00089588  99 e0                                            b #0x896be
0008958a  61 69                                            ldr r1, [r4, #0x14]
0008958c  d1 f8 80 00                                      ldr.w r0, [r1, #0x80]
00089590  91 f8 7c 10                                      ldrb.w r1, [r1, #0x7c]
00089594  00 29                                            cmp r1, #0
00089596  00 f0 95 80                                      beq.w #0x896c4
0008959a  b0 f5 96 7f                                      cmp.w r0, #0x12c
0008959e  80 f0 94 80                                      bhs.w #0x896ca
000895a2  aa 69                                            ldr r2, [r5, #0x18]
000895a4  59 a1                                            adr r1, #0x164
000895a6  e0 68                                            ldr r0, [r4, #0xc]
000895a8  93 e0                                            b #0x896d2
000895aa  ed 6d                                            ldr r5, [r5, #0x5c]
000895ac  00 2d                                            cmp r5, #0
000895ae  18 bf                                            it ne
000895b0  04 3d                                            subne r5, #4
000895b2  2e 46                                            mov r6, r5
000895b4  56 f8 04 0f                                      ldr r0, [r6, #4]!
000895b8  00 28                                            cmp r0, #0
000895ba  6f d0                                            beq #0x8969c
000895bc  0f f2 34 18                                      addw r8, pc, #0x134
000895c0  01 20                                            movs r0, #1
000895c2  c0 07                                            lsls r0, r0, #0x1f
000895c4  03 d1                                            bne #0x895ce
000895c6  e0 68                                            ldr r0, [r4, #0xc]
000895c8  41 46                                            mov r1, r8
000895ca  aa f7 2c ef                                      blx #0x34424
000895ce  28 68                                            ldr r0, [r5]
000895d0  21 46                                            mov r1, r4
000895d2  82 68                                            ldr r2, [r0, #8]
000895d4  28 46                                            mov r0, r5
000895d6  90 47                                            blx r2
000895d8  35 68                                            ldr r5, [r6]
000895da  00 20                                            movs r0, #0
000895dc  00 2d                                            cmp r5, #0
000895de  18 bf                                            it ne
000895e0  04 3d                                            subne r5, #4
000895e2  2e 46                                            mov r6, r5
000895e4  56 f8 04 1f                                      ldr r1, [r6, #4]!
000895e8  00 29                                            cmp r1, #0
000895ea  ea d1                                            bne #0x895c2
000895ec  56 e0                                            b #0x8969c
000895ee  00 89                                            ldrh r0, [r0, #8]
000895f0  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000895f4  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000895f8  10 fb 01 f0                                      smulbb r0, r0, r1
000895fc  00 28                                            cmp r0, #0
000895fe  4d d0                                            beq #0x8969c
00089600  05 f1 18 06                                      add.w r6, r5, #0x18
00089604  0f f2 f0 0b                                      addw fp, pc, #0xf0
00089608  0f f2 e8 08                                      addw r8, pc, #0xe8
0008960c  01 20                                            movs r0, #1
0008960e  4f f0 00 0a                                      mov.w sl, #0
00089612  c0 07                                            lsls r0, r0, #0x1f
00089614  03 d1                                            bne #0x8961e
00089616  e0 68                                            ldr r0, [r4, #0xc]
00089618  41 46                                            mov r1, r8
0008961a  aa f7 04 ef                                      blx #0x34424
0008961e  d9 f8 04 00                                      ldr.w r0, [sb, #4]
00089622  03 28                                            cmp r0, #3
00089624  2d d8                                            bhi #0x89682
00089626  df e8 00 f0                                      tbb [pc, r0]
0008962a  02 0f                                            lsrs r2, r0, #0x1c
0008962c  19 1f                                            subs r1, r3, #4
0008962e  61 69                                            ldr r1, [r4, #0x14]
00089630  d1 f8 80 00                                      ldr.w r0, [r1, #0x80]
00089634  91 f8 7c 10                                      ldrb.w r1, [r1, #0x7c]
00089638  d9 b1                                            cbz r1, #0x89672
0008963a  b0 f5 96 7f                                      cmp.w r0, #0x12c
0008963e  1a d2                                            bhs #0x89676
00089640  56 f8 2a 20                                      ldr.w r2, [r6, sl, lsl #2]
00089644  31 a1                                            adr r1, #0xc4
00089646  19 e0                                            b #0x8967c
00089648  56 f8 2a 20                                      ldr.w r2, [r6, sl, lsl #2]
0008964c  e0 68                                            ldr r0, [r4, #0xc]
0008964e  b2 f1 00 4f                                      cmp.w r2, #-0x80000000
00089652  0c d1                                            bne #0x8966e
00089654  29 a1                                            adr r1, #0xa4
00089656  4f f0 00 42                                      mov.w r2, #-0x80000000
0008965a  10 e0                                            b #0x8967e
0008965c  56 f8 2a 10                                      ldr.w r1, [r6, sl, lsl #2]
00089660  e0 68                                            ldr r0, [r4, #0xc]
00089662  aa f7 22 ef                                      blx #0x344a8
00089666  0c e0                                            b #0x89682
00089668  16 f8 0a 20                                      ldrb.w r2, [r6, sl]
0008966c  e0 68                                            ldr r0, [r4, #0xc]
0008966e  59 46                                            mov r1, fp
00089670  05 e0                                            b #0x8967e
00089672  81 28                                            cmp r0, #0x81
00089674  e4 d9                                            bls #0x89640
00089676  56 f8 2a 20                                      ldr.w r2, [r6, sl, lsl #2]
0008967a  23 a1                                            adr r1, #0x8c
0008967c  e0 68                                            ldr r0, [r4, #0xc]
0008967e  aa f7 d2 ee                                      blx #0x34424
00089682  28 69                                            ldr r0, [r5, #0x10]
00089684  0a f1 01 0a                                      add.w sl, sl, #1
00089688  00 89                                            ldrh r0, [r0, #8]
0008968a  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008968e  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00089692  10 fb 01 f1                                      smulbb r1, r0, r1
00089696  00 20                                            movs r0, #0
00089698  8a 45                                            cmp sl, r1
0008969a  ba d3                                            blo #0x89612
0008969c  e0 68                                            ldr r0, [r4, #0xc]
0008969e  1c a1                                            adr r1, #0x70
000896a0  01 b0                                            add sp, #4
000896a2  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
000896a6  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000896aa  27 f0 6d bb                                      b.w #0xb0d88
000896ae  49 08                                            lsrs r1, r1, #1
000896b0  a4 29                                            cmp r1, #0xa4
000896b2  04 d8                                            bhi #0x896be
000896b4  90 f8 ac 01                                      ldrb.w r0, [r0, #0x1ac]
000896b8  00 28                                            cmp r0, #0
000896ba  3f f4 46 af                                      beq.w #0x8954a
000896be  18 a1                                            adr r1, #0x60
000896c0  e0 68                                            ldr r0, [r4, #0xc]
000896c2  06 e0                                            b #0x896d2
000896c4  81 28                                            cmp r0, #0x81
000896c6  7f f6 6c af                                      bls.w #0x895a2
000896ca  aa 69                                            ldr r2, [r5, #0x18]
000896cc  e0 68                                            ldr r0, [r4, #0xc]
000896ce  3a b1                                            cbz r2, #0x896e0
000896d0  0d a1                                            adr r1, #0x34
000896d2  01 b0                                            add sp, #4
000896d4  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
000896d8  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000896dc  27 f0 54 bb                                      b.w #0xb0d88
000896e0  0c a1                                            adr r1, #0x30
000896e2  dd e7                                            b #0x896a0
000896e4  f4 30                                            adds r0, #0xf4
000896e6  05 00                                            movs r5, r0
000896e8  be 30                                            adds r0, #0xbe
000896ea  05 00                                            movs r5, r0
000896ec  b6 30                                            adds r0, #0xb6
000896ee  05 00                                            movs r5, r0
000896f0  28 00                                            movs r0, r5
000896f2  00 00                                            movs r0, r0
000896f4  2c 20                                            movs r0, #0x2c
000896f6  00 00                                            movs r0, r0
000896f8  25 64                                            str r5, [r4, #0x40]
000896fa  00 00                                            movs r0, r0
000896fc  69 6e                                            ldr r1, [r5, #0x64]
000896fe  74 28                                            cmp r0, #0x74
00089700  30 78                                            ldrb r0, [r6]
00089702  25 58                                            ldr r5, [r4, r0]
00089704  29 00                                            movs r1, r5
00089706  00 00                                            movs r0, r0
00089708  25 75                                            strb r5, [r4, #0x14]
0008970a  75 00                                            lsls r5, r6, #1
0008970c  25 75                                            strb r5, [r4, #0x14]
0008970e  00 00                                            movs r0, r0
00089710  29 00                                            movs r1, r5
00089712  00 00                                            movs r0, r0
00089714  75 69                                            ldr r5, [r6, #0x14]
00089716  6e 74                                            strb r6, [r5, #0x11]
00089718  28 30                                            adds r0, #0x28
0008971a  29 00                                            movs r1, r5
0008971c  00 00                                            movs r0, r0
0008971e  80 7f                                            ldrb r0, [r0, #0x1e]
00089720  75 69                                            ldr r5, [r6, #0x14]
00089722  6e 74                                            strb r6, [r5, #0x11]
00089724  42 69                                            ldr r2, [r0, #0x14]
00089726  74 73                                            strb r4, [r6, #0xd]
00089728  54 6f                                            ldr r4, [r2, #0x74]
0008972a  46 6c                                            ldr r6, [r0, #0x44]
0008972c  6f 61                                            str r7, [r5, #0x14]
0008972e  74 28                                            cmp r0, #0x74
00089730  25 75                                            strb r5, [r4, #0x14]
00089732  75 29                                            cmp r1, #0x75
00089734  00 00                                            movs r0, r0
00089736  00 00                                            movs r0, r0

; FUNCTION 0x00089738, declared_size=228, range_size=228, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP7ir_call
; demangled: ir_print_glsl_visitor::visit(ir_call*)
; decoder-mode: thumb
00089738  f0 b5                                            push {r4, r5, r6, r7, lr}
0008973a  03 af                                            add r7, sp, #0xc
0008973c  2d e9 00 0b                                      push.w {r8, sb, fp}
00089740  04 46                                            mov r4, r0
00089742  88 46                                            mov r8, r1
00089744  a0 69                                            ldr r0, [r4, #0x18]
00089746  b8 b1                                            cbz r0, #0x89778
00089748  25 69                                            ldr r5, [r4, #0x10]
0008974a  0c 21                                            movs r1, #0xc
0008974c  68 69                                            ldr r0, [r5, #0x14]
0008974e  a8 f7 e8 ef                                      blx #0x32720
00089752  06 46                                            mov r6, r0
00089754  2b 48                                            ldr r0, [pc, #0xac]
00089756  78 44                                            add r0, pc
00089758  01 68                                            ldr r1, [r0]
0008975a  30 46                                            mov r0, r6
0008975c  a9 f7 d0 e8                                      blx #0x32900
00089760  05 f1 0c 00                                      add.w r0, r5, #0xc
00089764  30 60                                            str r0, [r6]
00089766  c6 f8 08 80                                      str.w r8, [r6, #8]
0008976a  27 a1                                            adr r1, #0x9c
0008976c  28 69                                            ldr r0, [r5, #0x10]
0008976e  70 60                                            str r0, [r6, #4]
00089770  06 60                                            str r6, [r0]
00089772  2e 61                                            str r6, [r5, #0x10]
00089774  e0 68                                            ldr r0, [r4, #0xc]
00089776  3e e0                                            b #0x897f6
00089778  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
0008977c  51 b1                                            cbz r1, #0x89794
0008977e  20 68                                            ldr r0, [r4]
00089780  42 6a                                            ldr r2, [r0, #0x24]
00089782  20 46                                            mov r0, r4
00089784  90 47                                            blx r2
00089786  a1 46                                            mov sb, r4
00089788  20 a1                                            adr r1, #0x80
0008978a  59 f8 0c 0f                                      ldr r0, [sb, #0xc]!
0008978e  aa f7 4a ee                                      blx #0x34424
00089792  01 e0                                            b #0x89798
00089794  04 f1 0c 09                                      add.w sb, r4, #0xc
00089798  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
0008979c  1c 49                                            ldr r1, [pc, #0x70]
0008979e  82 6b                                            ldr r2, [r0, #0x38]
000897a0  79 44                                            add r1, pc
000897a2  d9 f8 00 00                                      ldr.w r0, [sb]
000897a6  12 69                                            ldr r2, [r2, #0x10]
000897a8  aa f7 3c ee                                      blx #0x34424
000897ac  d8 f8 18 50                                      ldr.w r5, [r8, #0x18]
000897b0  00 2d                                            cmp r5, #0
000897b2  18 bf                                            it ne
000897b4  04 3d                                            subne r5, #4
000897b6  2e 46                                            mov r6, r5
000897b8  56 f8 04 0f                                      ldr r0, [r6, #4]!
000897bc  c0 b1                                            cbz r0, #0x897f0
000897be  0f f2 54 08                                      addw r8, pc, #0x54
000897c2  01 20                                            movs r0, #1
000897c4  c0 07                                            lsls r0, r0, #0x1f
000897c6  04 d1                                            bne #0x897d2
000897c8  d9 f8 00 00                                      ldr.w r0, [sb]
000897cc  41 46                                            mov r1, r8
000897ce  aa f7 2a ee                                      blx #0x34424
000897d2  28 68                                            ldr r0, [r5]
000897d4  21 46                                            mov r1, r4
000897d6  82 68                                            ldr r2, [r0, #8]
000897d8  28 46                                            mov r0, r5
000897da  90 47                                            blx r2
000897dc  35 68                                            ldr r5, [r6]
000897de  00 20                                            movs r0, #0
000897e0  00 2d                                            cmp r5, #0
000897e2  18 bf                                            it ne
000897e4  04 3d                                            subne r5, #4
000897e6  2e 46                                            mov r6, r5
000897e8  56 f8 04 1f                                      ldr r1, [r6, #4]!
000897ec  00 29                                            cmp r1, #0
000897ee  e9 d1                                            bne #0x897c4
000897f0  d9 f8 00 00                                      ldr.w r0, [sb]
000897f4  08 a1                                            adr r1, #0x20
000897f6  bd e8 00 0b                                      pop.w {r8, sb, fp}
000897fa  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000897fe  27 f0 c3 ba                                      b.w #0xb0d88
00089802  00 bf                                            nop
00089804  e2 2d                                            cmp r5, #0xe2
00089806  05 00                                            movs r5, r0
00089808  2f 2f                                            cmp r7, #0x2f
0008980a  00 00                                            movs r0, r0
0008980c  20 3d                                            subs r5, #0x20
0008980e  20 00                                            movs r0, r4
00089810  12 73                                            strb r2, [r2, #0xc]
00089812  03 00                                            movs r3, r0
00089814  2c 20                                            movs r0, #0x2c
00089816  00 00                                            movs r0, r0
00089818  29 00                                            movs r1, r5
0008981a  00 00                                            movs r0, r0

; FUNCTION 0x0008981c, declared_size=56, range_size=56, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP9ir_return
; demangled: ir_print_glsl_visitor::visit(ir_return*)
; decoder-mode: thumb
0008981c  b0 b5                                            push {r4, r5, r7, lr}
0008981e  02 af                                            add r7, sp, #8
00089820  04 46                                            mov r4, r0
00089822  0d 46                                            mov r5, r1
00089824  e0 68                                            ldr r0, [r4, #0xc]
00089826  08 a1                                            adr r1, #0x20
00089828  aa f7 fc ed                                      blx #0x34424
0008982c  2d 69                                            ldr r5, [r5, #0x10]
0008982e  55 b1                                            cbz r5, #0x89846
00089830  e0 68                                            ldr r0, [r4, #0xc]
00089832  07 a1                                            adr r1, #0x1c
00089834  aa f7 f6 ed                                      blx #0x34424
00089838  28 68                                            ldr r0, [r5]
0008983a  21 46                                            mov r1, r4
0008983c  82 68                                            ldr r2, [r0, #8]
0008983e  28 46                                            mov r0, r5
00089840  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
00089844  10 47                                            bx r2
00089846  b0 bd                                            pop {r4, r5, r7, pc}
00089848  72 65                                            str r2, [r6, #0x54]
0008984a  74 75                                            strb r4, [r6, #0x15]
0008984c  72 6e                                            ldr r2, [r6, #0x64]
0008984e  00 00                                            movs r0, r0
00089850  20 00                                            movs r0, r4
00089852  00 00                                            movs r0, r0

; FUNCTION 0x00089854, declared_size=60, range_size=60, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP10ir_discard
; demangled: ir_print_glsl_visitor::visit(ir_discard*)
; decoder-mode: thumb
00089854  b0 b5                                            push {r4, r5, r7, lr}
00089856  02 af                                            add r7, sp, #8
00089858  04 46                                            mov r4, r0
0008985a  0d 46                                            mov r5, r1
0008985c  e0 68                                            ldr r0, [r4, #0xc]
0008985e  08 a1                                            adr r1, #0x20
00089860  aa f7 e0 ed                                      blx #0x34424
00089864  28 69                                            ldr r0, [r5, #0x10]
00089866  50 b1                                            cbz r0, #0x8987e
00089868  e0 68                                            ldr r0, [r4, #0xc]
0008986a  07 a1                                            adr r1, #0x1c
0008986c  aa f7 da ed                                      blx #0x34424
00089870  28 69                                            ldr r0, [r5, #0x10]
00089872  01 68                                            ldr r1, [r0]
00089874  8a 68                                            ldr r2, [r1, #8]
00089876  21 46                                            mov r1, r4
00089878  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008987c  10 47                                            bx r2
0008987e  b0 bd                                            pop {r4, r5, r7, pc}
00089880  64 69                                            ldr r4, [r4, #0x14]
00089882  73 63                                            str r3, [r6, #0x34]
00089884  61 72                                            strb r1, [r4, #9]
00089886  64 00                                            lsls r4, r4, #1
00089888  20 54                                            strb r0, [r4, r0]
0008988a  4f 44                                            add r7, sb
0008988c  4f 20                                            movs r0, #0x4f
0008988e  00 00                                            movs r0, r0

; FUNCTION 0x00089890, declared_size=348, range_size=348, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP5ir_if
; demangled: ir_print_glsl_visitor::visit(ir_if*)
; decoder-mode: thumb
00089890  f0 b5                                            push {r4, r5, r6, r7, lr}
00089892  03 af                                            add r7, sp, #0xc
00089894  2d e9 00 07                                      push.w {r8, sb, sl}
00089898  04 46                                            mov r4, r0
0008989a  88 46                                            mov r8, r1
0008989c  e0 68                                            ldr r0, [r4, #0xc]
0008989e  4b a1                                            adr r1, #0x12c
000898a0  aa f7 c0 ed                                      blx #0x34424
000898a4  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
000898a8  01 68                                            ldr r1, [r0]
000898aa  8a 68                                            ldr r2, [r1, #8]
000898ac  21 46                                            mov r1, r4
000898ae  90 47                                            blx r2
000898b0  48 49                                            ldr r1, [pc, #0x120]
000898b2  e0 68                                            ldr r0, [r4, #0xc]
000898b4  79 44                                            add r1, pc
000898b6  aa f7 b6 ed                                      blx #0x34424
000898ba  60 68                                            ldr r0, [r4, #4]
000898bc  4f f0 00 0a                                      mov.w sl, #0
000898c0  84 f8 23 a0                                      strb.w sl, [r4, #0x23]
000898c4  01 30                                            adds r0, #1
000898c6  60 60                                            str r0, [r4, #4]
000898c8  d8 f8 14 50                                      ldr.w r5, [r8, #0x14]
000898cc  00 2d                                            cmp r5, #0
000898ce  18 bf                                            it ne
000898d0  04 3d                                            subne r5, #4
000898d2  2e 46                                            mov r6, r5
000898d4  56 f8 04 1f                                      ldr r1, [r6, #4]!
000898d8  11 b3                                            cbz r1, #0x89920
000898da  0f f2 fc 09                                      addw sb, pc, #0xfc
000898de  20 46                                            mov r0, r4
000898e0  aa f7 b2 ed                                      blx #0x34448
000898e4  28 68                                            ldr r0, [r5]
000898e6  21 46                                            mov r1, r4
000898e8  82 68                                            ldr r2, [r0, #8]
000898ea  28 46                                            mov r0, r5
000898ec  90 47                                            blx r2
000898ee  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
000898f2  08 b1                                            cbz r0, #0x898f8
000898f4  01 20                                            movs r0, #1
000898f6  05 e0                                            b #0x89904
000898f8  e0 68                                            ldr r0, [r4, #0xc]
000898fa  49 46                                            mov r1, sb
000898fc  aa f7 92 ed                                      blx #0x34424
00089900  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
00089904  84 f8 22 a0                                      strb.w sl, [r4, #0x22]
00089908  84 f8 23 00                                      strb.w r0, [r4, #0x23]
0008990c  35 68                                            ldr r5, [r6]
0008990e  00 2d                                            cmp r5, #0
00089910  18 bf                                            it ne
00089912  04 3d                                            subne r5, #4
00089914  2e 46                                            mov r6, r5
00089916  56 f8 04 0f                                      ldr r0, [r6, #4]!
0008991a  00 28                                            cmp r0, #0
0008991c  df d1                                            bne #0x898de
0008991e  60 68                                            ldr r0, [r4, #4]
00089920  01 38                                            subs r0, #1
00089922  60 60                                            str r0, [r4, #4]
00089924  20 46                                            mov r0, r4
00089926  aa f7 90 ed                                      blx #0x34448
0008992a  e0 68                                            ldr r0, [r4, #0xc]
0008992c  2b a1                                            adr r1, #0xac
0008992e  aa f7 7a ed                                      blx #0x34424
00089932  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
00089936  08 f1 24 01                                      add.w r1, r8, #0x24
0008993a  88 42                                            cmp r0, r1
0008993c  43 d0                                            beq #0x899c6
0008993e  e0 68                                            ldr r0, [r4, #0xc]
00089940  27 a1                                            adr r1, #0x9c
00089942  aa f7 70 ed                                      blx #0x34424
00089946  60 68                                            ldr r0, [r4, #4]
00089948  4f f0 00 09                                      mov.w sb, #0
0008994c  84 f8 23 90                                      strb.w sb, [r4, #0x23]
00089950  01 30                                            adds r0, #1
00089952  60 60                                            str r0, [r4, #4]
00089954  d8 f8 20 60                                      ldr.w r6, [r8, #0x20]
00089958  00 2e                                            cmp r6, #0
0008995a  18 bf                                            it ne
0008995c  04 3e                                            subne r6, #4
0008995e  35 46                                            mov r5, r6
00089960  55 f8 04 1f                                      ldr r1, [r5, #4]!
00089964  11 b3                                            cbz r1, #0x899ac
00089966  0f f2 70 08                                      addw r8, pc, #0x70
0008996a  20 46                                            mov r0, r4
0008996c  aa f7 6c ed                                      blx #0x34448
00089970  30 68                                            ldr r0, [r6]
00089972  21 46                                            mov r1, r4
00089974  82 68                                            ldr r2, [r0, #8]
00089976  30 46                                            mov r0, r6
00089978  90 47                                            blx r2
0008997a  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
0008997e  08 b1                                            cbz r0, #0x89984
00089980  01 20                                            movs r0, #1
00089982  05 e0                                            b #0x89990
00089984  e0 68                                            ldr r0, [r4, #0xc]
00089986  41 46                                            mov r1, r8
00089988  aa f7 4c ed                                      blx #0x34424
0008998c  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
00089990  84 f8 22 90                                      strb.w sb, [r4, #0x22]
00089994  84 f8 23 00                                      strb.w r0, [r4, #0x23]
00089998  2e 68                                            ldr r6, [r5]
0008999a  00 2e                                            cmp r6, #0
0008999c  18 bf                                            it ne
0008999e  04 3e                                            subne r6, #4
000899a0  35 46                                            mov r5, r6
000899a2  55 f8 04 0f                                      ldr r0, [r5, #4]!
000899a6  00 28                                            cmp r0, #0
000899a8  df d1                                            bne #0x8996a
000899aa  60 68                                            ldr r0, [r4, #4]
000899ac  01 38                                            subs r0, #1
000899ae  60 60                                            str r0, [r4, #4]
000899b0  20 46                                            mov r0, r4
000899b2  aa f7 4a ed                                      blx #0x34448
000899b6  e0 68                                            ldr r0, [r4, #0xc]
000899b8  08 a1                                            adr r1, #0x20
000899ba  bd e8 00 07                                      pop.w {r8, sb, sl}
000899be  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000899c2  27 f0 e1 b9                                      b.w #0xb0d88
000899c6  bd e8 00 07                                      pop.w {r8, sb, sl}
000899ca  f0 bd                                            pop {r4, r5, r6, r7, pc}
000899cc  69 66                                            str r1, [r5, #0x64]
000899ce  20 28                                            cmp r0, #0x20
000899d0  00 00                                            movs r0, r0
000899d2  00 00                                            movs r0, r0
000899d4  0d 72                                            strb r5, [r1, #8]
000899d6  03 00                                            movs r3, r0
000899d8  3b 0a                                            lsrs r3, r7, #8
000899da  00 00                                            movs r0, r0
000899dc  7d 00                                            lsls r5, r7, #1
000899de  00 00                                            movs r0, r0
000899e0  20 65                                            str r0, [r4, #0x50]
000899e2  6c 73                                            strb r4, [r5, #0xd]
000899e4  65 20                                            movs r0, #0x65
000899e6  7b 0a                                            lsrs r3, r7, #9
000899e8  00 00                                            movs r0, r0
000899ea  00 00                                            movs r0, r0

; FUNCTION 0x000899ec, declared_size=852, range_size=852, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor18emit_canonical_forEP7ir_loop
; demangled: ir_print_glsl_visitor::emit_canonical_for(ir_loop*)
; decoder-mode: thumb
000899ec  f0 b5                                            push {r4, r5, r6, r7, lr}
000899ee  03 af                                            add r7, sp, #0xc
000899f0  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000899f4  81 b0                                            sub sp, #4
000899f6  04 46                                            mov r4, r0
000899f8  0d 46                                            mov r5, r1
000899fa  e0 69                                            ldr r0, [r4, #0x1c]
000899fc  aa f7 5a ed                                      blx #0x344b4
00089a00  06 46                                            mov r6, r0
00089a02  7e b1                                            cbz r6, #0x89a24
00089a04  31 6a                                            ldr r1, [r6, #0x20]
00089a06  06 f1 24 00                                      add.w r0, r6, #0x24
00089a0a  81 42                                            cmp r1, r0
00089a0c  1e bf                                            ittt ne
00089a0e  30 6b                                            ldrne r0, [r6, #0x30]
00089a10  06 f1 34 01                                      addne.w r1, r6, #0x34
00089a14  88 42                                            cmpne r0, r1
00089a16  05 d0                                            beq #0x89a24
00089a18  02 21                                            movs r1, #2
00089a1a  00 68                                            ldr r0, [r0]
00089a1c  01 39                                            subs r1, #1
00089a1e  00 28                                            cmp r0, #0
00089a20  fb d1                                            bne #0x89a1a
00089a22  21 b1                                            cbz r1, #0x89a2e
00089a24  00 20                                            movs r0, #0
00089a26  01 b0                                            add sp, #4
00089a28  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00089a2c  f0 bd                                            pop {r4, r5, r6, r7, pc}
00089a2e  ae 48                                            ldr r0, [pc, #0x2b8]
00089a30  ae 49                                            ldr r1, [pc, #0x2b8]
00089a32  78 44                                            add r0, pc
00089a34  00 95                                            str r5, [sp]
00089a36  79 44                                            add r1, pc
00089a38  05 68                                            ldr r5, [r0]
00089a3a  00 20                                            movs r0, #0
00089a3c  d1 f8 00 90                                      ldr.w sb, [r1]
00089a40  29 46                                            mov r1, r5
00089a42  4a 46                                            mov r2, sb
00089a44  a8 f7 96 ee                                      blx #0x32774
00089a48  83 46                                            mov fp, r0
00089a4a  00 20                                            movs r0, #0
00089a4c  29 46                                            mov r1, r5
00089a4e  4a 46                                            mov r2, sb
00089a50  a8 f7 90 ee                                      blx #0x32774
00089a54  81 46                                            mov sb, r0
00089a56  e0 68                                            ldr r0, [r4, #0xc]
00089a58  a5 a1                                            adr r1, #0x294
00089a5a  aa f7 e4 ec                                      blx #0x34424
00089a5e  01 20                                            movs r0, #1
00089a60  84 f8 21 00                                      strb.w r0, [r4, #0x21]
00089a64  f0 6a                                            ldr r0, [r6, #0x2c]
00089a66  01 28                                            cmp r0, #1
00089a68  69 d1                                            bne #0x89b3e
00089a6a  d6 f8 20 a0                                      ldr.w sl, [r6, #0x20]
00089a6e  da f8 00 00                                      ldr.w r0, [sl]
00089a72  00 28                                            cmp r0, #0
00089a74  63 d0                                            beq #0x89b3e
00089a76  0f f2 80 28                                      addw r8, pc, #0x280
00089a7a  da f8 08 10                                      ldr.w r1, [sl, #8]
00089a7e  e0 69                                            ldr r0, [r4, #0x1c]
00089a80  aa f7 f4 ec                                      blx #0x3446c
00089a84  00 28                                            cmp r0, #0
00089a86  54 d0                                            beq #0x89b32
00089a88  da f8 08 50                                      ldr.w r5, [sl, #8]
00089a8c  20 46                                            mov r0, r4
00089a8e  2a 69                                            ldr r2, [r5, #0x10]
00089a90  29 46                                            mov r1, r5
00089a92  aa f7 e0 ec                                      blx #0x34454
00089a96  29 69                                            ldr r1, [r5, #0x10]
00089a98  00 22                                            movs r2, #0
00089a9a  e0 68                                            ldr r0, [r4, #0xc]
00089a9c  fe f7 58 fd                                      bl #0x88550
00089aa0  e0 68                                            ldr r0, [r4, #0xc]
00089aa2  41 46                                            mov r1, r8
00089aa4  aa f7 be ec                                      blx #0x34424
00089aa8  20 46                                            mov r0, r4
00089aaa  29 46                                            mov r1, r5
00089aac  aa f7 d8 ec                                      blx #0x34460
00089ab0  28 69                                            ldr r0, [r5, #0x10]
00089ab2  41 68                                            ldr r1, [r0, #4]
00089ab4  09 29                                            cmp r1, #9
00089ab6  05 d1                                            bne #0x89ac4
00089ab8  99 49                                            ldr r1, [pc, #0x264]
00089aba  02 69                                            ldr r2, [r0, #0x10]
00089abc  e0 68                                            ldr r0, [r4, #0xc]
00089abe  79 44                                            add r1, pc
00089ac0  aa f7 b0 ec                                      blx #0x34424
00089ac4  da f8 14 00                                      ldr.w r0, [sl, #0x14]
00089ac8  98 b3                                            cbz r0, #0x89b32
00089aca  e0 68                                            ldr r0, [r4, #0xc]
00089acc  8b a1                                            adr r1, #0x22c
00089ace  aa f7 aa ec                                      blx #0x34424
00089ad2  29 69                                            ldr r1, [r5, #0x10]
00089ad4  08 89                                            ldrh r0, [r1, #8]
00089ad6  00 f4 40 62                                      and r2, r0, #0xc00
00089ada  b2 f5 00 7f                                      cmp.w r2, #0x200
00089ade  0f d9                                            bls #0x89b00
00089ae0  00 f4 e0 40                                      and r0, r0, #0x7000
00089ae4  b0 f5 80 5f                                      cmp.w r0, #0x1000
00089ae8  0a d1                                            bne #0x89b00
00089aea  48 68                                            ldr r0, [r1, #4]
00089aec  03 28                                            cmp r0, #3
00089aee  07 d8                                            bhi #0x89b00
00089af0  e0 68                                            ldr r0, [r4, #0xc]
00089af2  00 22                                            movs r2, #0
00089af4  fe f7 2c fd                                      bl #0x88550
00089af8  e0 68                                            ldr r0, [r4, #0xc]
00089afa  81 a1                                            adr r1, #0x204
00089afc  aa f7 92 ec                                      blx #0x34424
00089b00  da f8 14 00                                      ldr.w r0, [sl, #0x14]
00089b04  01 68                                            ldr r1, [r0]
00089b06  8a 68                                            ldr r2, [r1, #8]
00089b08  21 46                                            mov r1, r4
00089b0a  90 47                                            blx r2
00089b0c  28 69                                            ldr r0, [r5, #0x10]
00089b0e  01 89                                            ldrh r1, [r0, #8]
00089b10  01 f4 40 62                                      and r2, r1, #0xc00
00089b14  b2 f5 00 7f                                      cmp.w r2, #0x200
00089b18  0b d9                                            bls #0x89b32
00089b1a  01 f4 e0 41                                      and r1, r1, #0x7000
00089b1e  b1 f5 80 5f                                      cmp.w r1, #0x1000
00089b22  06 d1                                            bne #0x89b32
00089b24  40 68                                            ldr r0, [r0, #4]
00089b26  03 28                                            cmp r0, #3
00089b28  03 d8                                            bhi #0x89b32
00089b2a  e0 68                                            ldr r0, [r4, #0xc]
00089b2c  75 a1                                            adr r1, #0x1d4
00089b2e  aa f7 7a ec                                      blx #0x34424
00089b32  da f8 00 a0                                      ldr.w sl, [sl]
00089b36  da f8 00 00                                      ldr.w r0, [sl]
00089b3a  00 28                                            cmp r0, #0
00089b3c  9d d1                                            bne #0x89a7a
00089b3e  e0 68                                            ldr r0, [r4, #0xc]
00089b40  71 a1                                            adr r1, #0x1c4
00089b42  aa f7 70 ec                                      blx #0x34424
00089b46  35 6b                                            ldr r5, [r6, #0x30]
00089b48  56 e0                                            b #0x89bf8
00089b4a  aa 68                                            ldr r2, [r5, #8]
00089b4c  58 46                                            mov r0, fp
00089b4e  29 46                                            mov r1, r5
00089b50  a8 f7 04 ee                                      blx #0x3275c
00089b54  a8 68                                            ldr r0, [r5, #8]
00089b56  d0 f8 10 80                                      ldr.w r8, [r0, #0x10]
00089b5a  b8 f1 00 0f                                      cmp.w r8, #0
00089b5e  1a d0                                            beq #0x89b96
00089b60  d8 f8 0c 00                                      ldr.w r0, [r8, #0xc]
00089b64  04 28                                            cmp r0, #4
00089b66  16 d1                                            bne #0x89b96
00089b68  d8 f8 18 10                                      ldr.w r1, [r8, #0x18]
00089b6c  a1 f1 46 00                                      sub.w r0, r1, #0x46
00089b70  05 28                                            cmp r0, #5
00089b72  0b d8                                            bhi #0x89b8c
00089b74  df f8 ac a1                                      ldr.w sl, [pc, #0x1ac]
00089b78  fa 44                                            add sl, pc
00089b7a  df e8 00 f0                                      tbb [pc, r0]
00089b7e  2a 03                                            lsls r2, r5, #0xc
00089b80  1b 23                                            movs r3, #0x1b
00089b82  1f 27                                            movs r7, #0x1f
00089b84  df f8 a4 a1                                      ldr.w sl, [pc, #0x1a4]
00089b88  fa 44                                            add sl, pc
00089b8a  22 e0                                            b #0x89bd2
00089b8c  01 29                                            cmp r1, #1
00089b8e  02 d1                                            bne #0x89b96
00089b90  d8 f8 1c 00                                      ldr.w r0, [r8, #0x1c]
00089b94  2b e0                                            b #0x89bee
00089b96  e0 68                                            ldr r0, [r4, #0xc]
00089b98  5c a1                                            adr r1, #0x170
00089b9a  aa f7 44 ec                                      blx #0x34424
00089b9e  a8 68                                            ldr r0, [r5, #8]
00089ba0  00 69                                            ldr r0, [r0, #0x10]
00089ba2  01 68                                            ldr r1, [r0]
00089ba4  8a 68                                            ldr r2, [r1, #8]
00089ba6  21 46                                            mov r1, r4
00089ba8  90 47                                            blx r2
00089baa  e0 68                                            ldr r0, [r4, #0xc]
00089bac  55 a1                                            adr r1, #0x154
00089bae  aa f7 3a ec                                      blx #0x34424
00089bb2  20 e0                                            b #0x89bf6
00089bb4  df f8 78 a1                                      ldr.w sl, [pc, #0x178]
00089bb8  fa 44                                            add sl, pc
00089bba  0a e0                                            b #0x89bd2
00089bbc  df f8 78 a1                                      ldr.w sl, [pc, #0x178]
00089bc0  fa 44                                            add sl, pc
00089bc2  06 e0                                            b #0x89bd2
00089bc4  df f8 6c a1                                      ldr.w sl, [pc, #0x16c]
00089bc8  fa 44                                            add sl, pc
00089bca  02 e0                                            b #0x89bd2
00089bcc  df f8 6c a1                                      ldr.w sl, [pc, #0x16c]
00089bd0  fa 44                                            add sl, pc
00089bd2  d8 f8 1c 00                                      ldr.w r0, [r8, #0x1c]
00089bd6  01 68                                            ldr r1, [r0]
00089bd8  8a 68                                            ldr r2, [r1, #8]
00089bda  21 46                                            mov r1, r4
00089bdc  90 47                                            blx r2
00089bde  52 49                                            ldr r1, [pc, #0x148]
00089be0  52 46                                            mov r2, sl
00089be2  e0 68                                            ldr r0, [r4, #0xc]
00089be4  79 44                                            add r1, pc
00089be6  aa f7 1e ec                                      blx #0x34424
00089bea  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
00089bee  01 68                                            ldr r1, [r0]
00089bf0  8a 68                                            ldr r2, [r1, #8]
00089bf2  21 46                                            mov r1, r4
00089bf4  90 47                                            blx r2
00089bf6  2d 68                                            ldr r5, [r5]
00089bf8  28 68                                            ldr r0, [r5]
00089bfa  00 28                                            cmp r0, #0
00089bfc  a5 d1                                            bne #0x89b4a
00089bfe  e0 68                                            ldr r0, [r4, #0xc]
00089c00  41 a1                                            adr r1, #0x104
00089c02  aa f7 10 ec                                      blx #0x34424
00089c06  35 6a                                            ldr r5, [r6, #0x20]
00089c08  28 68                                            ldr r0, [r5]
00089c0a  b8 b1                                            cbz r0, #0x89c3c
00089c0c  0f f2 00 18                                      addw r8, pc, #0x100
00089c10  01 26                                            movs r6, #1
00089c12  2a 69                                            ldr r2, [r5, #0x10]
00089c14  48 46                                            mov r0, sb
00089c16  29 46                                            mov r1, r5
00089c18  a8 f7 a0 ed                                      blx #0x3275c
00089c1c  f0 07                                            lsls r0, r6, #0x1f
00089c1e  03 d1                                            bne #0x89c28
00089c20  e0 68                                            ldr r0, [r4, #0xc]
00089c22  41 46                                            mov r1, r8
00089c24  aa f7 fe eb                                      blx #0x34424
00089c28  20 68                                            ldr r0, [r4]
00089c2a  29 69                                            ldr r1, [r5, #0x10]
00089c2c  02 6b                                            ldr r2, [r0, #0x30]
00089c2e  20 46                                            mov r0, r4
00089c30  90 47                                            blx r2
00089c32  2d 68                                            ldr r5, [r5]
00089c34  00 26                                            movs r6, #0
00089c36  28 68                                            ldr r0, [r5]
00089c38  00 28                                            cmp r0, #0
00089c3a  ea d1                                            bne #0x89c12
00089c3c  35 49                                            ldr r1, [pc, #0xd4]
00089c3e  e0 68                                            ldr r0, [r4, #0xc]
00089c40  79 44                                            add r1, pc
00089c42  aa f7 f0 eb                                      blx #0x34424
00089c46  60 68                                            ldr r0, [r4, #4]
00089c48  4f f0 00 0a                                      mov.w sl, #0
00089c4c  84 f8 21 a0                                      strb.w sl, [r4, #0x21]
00089c50  84 f8 23 a0                                      strb.w sl, [r4, #0x23]
00089c54  01 30                                            adds r0, #1
00089c56  60 60                                            str r0, [r4, #4]
00089c58  00 99                                            ldr r1, [sp]
00089c5a  0e 69                                            ldr r6, [r1, #0x10]
00089c5c  00 2e                                            cmp r6, #0
00089c5e  18 bf                                            it ne
00089c60  04 3e                                            subne r6, #4
00089c62  35 46                                            mov r5, r6
00089c64  55 f8 04 1f                                      ldr r1, [r5, #4]!
00089c68  61 b3                                            cbz r1, #0x89cc4
00089c6a  0f f2 ac 08                                      addw r8, pc, #0xac
00089c6e  58 46                                            mov r0, fp
00089c70  31 46                                            mov r1, r6
00089c72  a8 f7 3e ed                                      blx #0x326f0
00089c76  d8 b9                                            cbnz r0, #0x89cb0
00089c78  48 46                                            mov r0, sb
00089c7a  31 46                                            mov r1, r6
00089c7c  a8 f7 38 ed                                      blx #0x326f0
00089c80  b0 b9                                            cbnz r0, #0x89cb0
00089c82  20 46                                            mov r0, r4
00089c84  aa f7 e0 eb                                      blx #0x34448
00089c88  30 68                                            ldr r0, [r6]
00089c8a  21 46                                            mov r1, r4
00089c8c  82 68                                            ldr r2, [r0, #8]
00089c8e  30 46                                            mov r0, r6
00089c90  90 47                                            blx r2
00089c92  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
00089c96  08 b1                                            cbz r0, #0x89c9c
00089c98  01 20                                            movs r0, #1
00089c9a  05 e0                                            b #0x89ca8
00089c9c  e0 68                                            ldr r0, [r4, #0xc]
00089c9e  41 46                                            mov r1, r8
00089ca0  aa f7 c0 eb                                      blx #0x34424
00089ca4  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
00089ca8  84 f8 22 a0                                      strb.w sl, [r4, #0x22]
00089cac  84 f8 23 00                                      strb.w r0, [r4, #0x23]
00089cb0  2e 68                                            ldr r6, [r5]
00089cb2  00 2e                                            cmp r6, #0
00089cb4  18 bf                                            it ne
00089cb6  04 3e                                            subne r6, #4
00089cb8  35 46                                            mov r5, r6
00089cba  55 f8 04 0f                                      ldr r0, [r5, #4]!
00089cbe  00 28                                            cmp r0, #0
00089cc0  d5 d1                                            bne #0x89c6e
00089cc2  60 68                                            ldr r0, [r4, #4]
00089cc4  01 38                                            subs r0, #1
00089cc6  60 60                                            str r0, [r4, #4]
00089cc8  20 46                                            mov r0, r4
00089cca  aa f7 be eb                                      blx #0x34448
00089cce  e0 68                                            ldr r0, [r4, #0xc]
00089cd0  12 a1                                            adr r1, #0x48
00089cd2  aa f7 a8 eb                                      blx #0x34424
00089cd6  58 46                                            mov r0, fp
00089cd8  a8 f7 58 ed                                      blx #0x3278c
00089cdc  48 46                                            mov r0, sb
00089cde  a8 f7 56 ed                                      blx #0x3278c
00089ce2  01 20                                            movs r0, #1
00089ce4  9f e6                                            b #0x89a26
00089ce6  00 bf                                            nop
00089ce8  3a 2b                                            cmp r3, #0x3a
00089cea  05 00                                            movs r5, r0
00089cec  3a 2b                                            cmp r3, #0x3a
00089cee  05 00                                            movs r5, r0
00089cf0  66 6f                                            ldr r6, [r4, #0x74]
00089cf2  72 20                                            movs r0, #0x72
00089cf4  28 00                                            movs r0, r5
00089cf6  00 00                                            movs r0, r0
00089cf8  20 00                                            movs r0, r4
00089cfa  00 00                                            movs r0, r0
00089cfc  20 3d                                            subs r5, #0x20
00089cfe  20 00                                            movs r0, r4
00089d00  28 00                                            movs r0, r5
00089d02  00 00                                            movs r0, r0
00089d04  29 00                                            movs r1, r5
00089d06  00 00                                            movs r0, r0
00089d08  3b 20                                            movs r0, #0x3b
00089d0a  00 00                                            movs r0, r0
00089d0c  21 28                                            cmp r0, #0x21
00089d0e  00 00                                            movs r0, r0
00089d10  2c 20                                            movs r0, #0x2c
00089d12  00 00                                            movs r0, r0
00089d14  81 6e                                            ldr r1, [r0, #0x68]
00089d16  03 00                                            movs r3, r0
00089d18  3b 0a                                            lsrs r3, r7, #8
00089d1a  00 00                                            movs r0, r0
00089d1c  7d 00                                            lsls r5, r7, #1
00089d1e  00 00                                            movs r0, r0
00089d20  2c 72                                            strb r4, [r5, #8]
00089d22  03 00                                            movs r3, r0
00089d24  df 02                                            lsls r7, r3, #0xb
00089d26  03 00                                            movs r3, r0
00089d28  d3 6e                                            ldr r3, [r2, #0x6c]
00089d2a  03 00                                            movs r3, r0
00089d2c  cc 02                                            lsls r4, r1, #0xb
00089d2e  03 00                                            movs r3, r0
00089d30  9a 02                                            lsls r2, r3, #0xa
00089d32  03 00                                            movs r3, r0
00089d34  88 02                                            lsls r0, r1, #0xa
00089d36  03 00                                            movs r3, r0
00089d38  9d 02                                            lsls r5, r3, #0xa
00089d3a  03 00                                            movs r3, r0
00089d3c  8a 02                                            lsls r2, r1, #0xa
00089d3e  03 00                                            movs r3, r0

; FUNCTION 0x00089d40, declared_size=184, range_size=184, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP7ir_loop
; demangled: ir_print_glsl_visitor::visit(ir_loop*)
; decoder-mode: thumb
00089d40  f0 b5                                            push {r4, r5, r6, r7, lr}
00089d42  03 af                                            add r7, sp, #0xc
00089d44  2d e9 00 0b                                      push.w {r8, sb, fp}
00089d48  0e 46                                            mov r6, r1
00089d4a  04 46                                            mov r4, r0
00089d4c  aa f7 b8 eb                                      blx #0x344c0
00089d50  10 b1                                            cbz r0, #0x89d58
00089d52  bd e8 00 0b                                      pop.w {r8, sb, fp}
00089d56  f0 bd                                            pop {r4, r5, r6, r7, pc}
00089d58  e0 68                                            ldr r0, [r4, #0xc]
00089d5a  21 a1                                            adr r1, #0x84
00089d5c  aa f7 62 eb                                      blx #0x34424
00089d60  60 68                                            ldr r0, [r4, #4]
00089d62  4f f0 00 09                                      mov.w sb, #0
00089d66  84 f8 23 90                                      strb.w sb, [r4, #0x23]
00089d6a  01 30                                            adds r0, #1
00089d6c  60 60                                            str r0, [r4, #4]
00089d6e  36 69                                            ldr r6, [r6, #0x10]
00089d70  00 2e                                            cmp r6, #0
00089d72  18 bf                                            it ne
00089d74  04 3e                                            subne r6, #4
00089d76  35 46                                            mov r5, r6
00089d78  55 f8 04 1f                                      ldr r1, [r5, #4]!
00089d7c  11 b3                                            cbz r1, #0x89dc4
00089d7e  0f f2 70 08                                      addw r8, pc, #0x70
00089d82  20 46                                            mov r0, r4
00089d84  aa f7 60 eb                                      blx #0x34448
00089d88  30 68                                            ldr r0, [r6]
00089d8a  21 46                                            mov r1, r4
00089d8c  82 68                                            ldr r2, [r0, #8]
00089d8e  30 46                                            mov r0, r6
00089d90  90 47                                            blx r2
00089d92  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
00089d96  08 b1                                            cbz r0, #0x89d9c
00089d98  01 20                                            movs r0, #1
00089d9a  05 e0                                            b #0x89da8
00089d9c  e0 68                                            ldr r0, [r4, #0xc]
00089d9e  41 46                                            mov r1, r8
00089da0  aa f7 40 eb                                      blx #0x34424
00089da4  94 f8 22 00                                      ldrb.w r0, [r4, #0x22]
00089da8  84 f8 22 90                                      strb.w sb, [r4, #0x22]
00089dac  84 f8 23 00                                      strb.w r0, [r4, #0x23]
00089db0  2e 68                                            ldr r6, [r5]
00089db2  00 2e                                            cmp r6, #0
00089db4  18 bf                                            it ne
00089db6  04 3e                                            subne r6, #4
00089db8  35 46                                            mov r5, r6
00089dba  55 f8 04 0f                                      ldr r0, [r5, #4]!
00089dbe  00 28                                            cmp r0, #0
00089dc0  df d1                                            bne #0x89d82
00089dc2  60 68                                            ldr r0, [r4, #4]
00089dc4  01 38                                            subs r0, #1
00089dc6  60 60                                            str r0, [r4, #4]
00089dc8  20 46                                            mov r0, r4
00089dca  aa f7 3e eb                                      blx #0x34448
00089dce  e0 68                                            ldr r0, [r4, #0xc]
00089dd0  08 a1                                            adr r1, #0x20
00089dd2  bd e8 00 0b                                      pop.w {r8, sb, fp}
00089dd6  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00089dda  26 f0 d5 bf                                      b.w #0xb0d88
00089dde  00 bf                                            nop
00089de0  77 68                                            ldr r7, [r6, #4]
00089de2  69 6c                                            ldr r1, [r5, #0x44]
00089de4  65 20                                            movs r0, #0x65
00089de6  28 74                                            strb r0, [r5, #0x10]
00089de8  72 75                                            strb r2, [r6, #0x15]
00089dea  65 29                                            cmp r1, #0x65
00089dec  20 7b                                            ldrb r0, [r4, #0xc]
00089dee  0a 00                                            movs r2, r1
00089df0  3b 0a                                            lsrs r3, r7, #8
00089df2  00 00                                            movs r0, r0
00089df4  7d 00                                            lsls r5, r7, #1
00089df6  00 00                                            movs r0, r0

; FUNCTION 0x00089df8, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP12ir_loop_jump
; demangled: ir_print_glsl_visitor::visit(ir_loop_jump*)
; decoder-mode: thumb
00089df8  09 69                                            ldr r1, [r1, #0x10]
00089dfa  04 a3                                            adr r3, #0x10
00089dfc  c0 68                                            ldr r0, [r0, #0xc]
00089dfe  05 a2                                            adr r2, #0x14
00089e00  00 29                                            cmp r1, #0
00089e02  07 a1                                            adr r1, #0x1c
00089e04  08 bf                                            it eq
00089e06  1a 46                                            moveq r2, r3
00089e08  26 f0 be bf                                      b.w #0xb0d88
00089e0c  62 72                                            strb r2, [r4, #9]
00089e0e  65 61                                            str r5, [r4, #0x14]
00089e10  6b 00                                            lsls r3, r5, #1
00089e12  00 00                                            movs r0, r0
00089e14  63 6f                                            ldr r3, [r4, #0x74]
00089e16  6e 74                                            strb r6, [r5, #0x11]
00089e18  69 6e                                            ldr r1, [r5, #0x64]
00089e1a  75 65                                            str r5, [r6, #0x54]
00089e1c  00 00                                            movs r0, r0
00089e1e  00 00                                            movs r0, r0
00089e20  25 73                                            strb r5, [r4, #0xc]
00089e22  00 00                                            movs r0, r0

; FUNCTION 0x00089e24, declared_size=16, range_size=16, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP22ir_precision_statement
; demangled: ir_print_glsl_visitor::visit(ir_precision_statement*)
; decoder-mode: thumb
00089e24  0a 69                                            ldr r2, [r1, #0x10]
00089e26  02 a1                                            adr r1, #8
00089e28  c0 68                                            ldr r0, [r0, #0xc]
00089e2a  26 f0 ad bf                                      b.w #0xb0d88
00089e2e  00 bf                                            nop
00089e30  25 73                                            strb r5, [r4, #0xc]
00089e32  00 00                                            movs r0, r0

; FUNCTION 0x00089e34, declared_size=236, range_size=236, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP21ir_typedecl_statement
; demangled: ir_print_glsl_visitor::visit(ir_typedecl_statement*)
; decoder-mode: thumb
00089e34  f0 b5                                            push {r4, r5, r6, r7, lr}
00089e36  03 af                                            add r7, sp, #0xc
00089e38  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00089e3c  81 b0                                            sub sp, #4
00089e3e  0e 69                                            ldr r6, [r1, #0x10]
00089e40  04 46                                            mov r4, r0
00089e42  e0 68                                            ldr r0, [r4, #0xc]
00089e44  2a a1                                            adr r1, #0xa8
00089e46  f2 68                                            ldr r2, [r6, #0xc]
00089e48  aa f7 ec ea                                      blx #0x34424
00089e4c  31 69                                            ldr r1, [r6, #0x10]
00089e4e  e0 68                                            ldr r0, [r4, #0xc]
00089e50  00 29                                            cmp r1, #0
00089e52  44 d0                                            beq #0x89ede
00089e54  0f f2 a8 09                                      addw sb, pc, #0xa8
00089e58  0f f2 ac 0b                                      addw fp, pc, #0xac
00089e5c  2b a5                                            adr r5, #0xac
00089e5e  4f f0 00 08                                      mov.w r8, #0
00089e62  4f f0 00 0a                                      mov.w sl, #0
00089e66  49 46                                            mov r1, sb
00089e68  aa f7 dc ea                                      blx #0x34424
00089e6c  60 69                                            ldr r0, [r4, #0x14]
00089e6e  90 f8 7c 00                                      ldrb.w r0, [r0, #0x7c]
00089e72  70 b1                                            cbz r0, #0x89e92
00089e74  71 69                                            ldr r1, [r6, #0x14]
00089e76  28 4a                                            ldr r2, [pc, #0xa0]
00089e78  41 44                                            add r1, r8
00089e7a  e0 68                                            ldr r0, [r4, #0xc]
00089e7c  7a 44                                            add r2, pc
00089e7e  89 68                                            ldr r1, [r1, #8]
00089e80  03 29                                            cmp r1, #3
00089e82  03 d8                                            bhi #0x89e8c
00089e84  25 4a                                            ldr r2, [pc, #0x94]
00089e86  7a 44                                            add r2, pc
00089e88  52 f8 21 20                                      ldr.w r2, [r2, r1, lsl #2]
00089e8c  1d a1                                            adr r1, #0x74
00089e8e  aa f7 ca ea                                      blx #0x34424
00089e92  71 69                                            ldr r1, [r6, #0x14]
00089e94  00 22                                            movs r2, #0
00089e96  e0 68                                            ldr r0, [r4, #0xc]
00089e98  51 f8 08 10                                      ldr.w r1, [r1, r8]
00089e9c  fe f7 58 fb                                      bl #0x88550
00089ea0  71 69                                            ldr r1, [r6, #0x14]
00089ea2  e0 68                                            ldr r0, [r4, #0xc]
00089ea4  41 44                                            add r1, r8
00089ea6  4a 68                                            ldr r2, [r1, #4]
00089ea8  59 46                                            mov r1, fp
00089eaa  aa f7 bc ea                                      blx #0x34424
00089eae  70 69                                            ldr r0, [r6, #0x14]
00089eb0  50 f8 08 00                                      ldr.w r0, [r0, r8]
00089eb4  41 68                                            ldr r1, [r0, #4]
00089eb6  09 29                                            cmp r1, #9
00089eb8  05 d1                                            bne #0x89ec6
00089eba  16 49                                            ldr r1, [pc, #0x58]
00089ebc  02 69                                            ldr r2, [r0, #0x10]
00089ebe  e0 68                                            ldr r0, [r4, #0xc]
00089ec0  79 44                                            add r1, pc
00089ec2  aa f7 b0 ea                                      blx #0x34424
00089ec6  e0 68                                            ldr r0, [r4, #0xc]
00089ec8  29 46                                            mov r1, r5
00089eca  aa f7 ac ea                                      blx #0x34424
00089ece  e0 68                                            ldr r0, [r4, #0xc]
00089ed0  08 f1 18 08                                      add.w r8, r8, #0x18
00089ed4  31 69                                            ldr r1, [r6, #0x10]
00089ed6  0a f1 01 0a                                      add.w sl, sl, #1
00089eda  8a 45                                            cmp sl, r1
00089edc  c3 d3                                            blo #0x89e66
00089ede  0c a1                                            adr r1, #0x30
00089ee0  01 b0                                            add sp, #4
00089ee2  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00089ee6  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00089eea  26 f0 4d bf                                      b.w #0xb0d88
00089eee  00 bf                                            nop
00089ef0  73 74                                            strb r3, [r6, #0x11]
00089ef2  72 75                                            strb r2, [r6, #0x15]
00089ef4  63 74                                            strb r3, [r4, #0x11]
00089ef6  20 25                                            movs r5, #0x20
00089ef8  73 20                                            movs r0, #0x73
00089efa  7b 0a                                            lsrs r3, r7, #9
00089efc  00 00                                            movs r0, r0
00089efe  00 00                                            movs r0, r0
00089f00  20 20                                            movs r0, #0x20
00089f02  00 00                                            movs r0, r0
00089f04  25 73                                            strb r5, [r4, #0xc]
00089f06  00 00                                            movs r0, r0
00089f08  20 25                                            movs r5, #0x20
00089f0a  73 00                                            lsls r3, r6, #1
00089f0c  3b 0a                                            lsrs r3, r7, #8
00089f0e  00 00                                            movs r0, r0
00089f10  7d 00                                            lsls r5, r7, #1
00089f12  00 00                                            movs r0, r0
00089f14  2a 6e                                            ldr r2, [r5, #0x60]
00089f16  03 00                                            movs r3, r0
00089f18  43 f3 02 00                                      sbfx r0, r3, #0, #3
00089f1c  3a e8                                            .byte 0x3a, 0xe8
00089f1e  04 00                                            movs r4, r0

; FUNCTION 0x00089f20, declared_size=28, range_size=28, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP14ir_emit_vertex
; demangled: ir_print_glsl_visitor::visit(ir_emit_vertex*)
; decoder-mode: thumb
00089f20  c0 68                                            ldr r0, [r0, #0xc]
00089f22  01 a1                                            adr r1, #4
00089f24  26 f0 30 bf                                      b.w #0xb0d88
00089f28  65 6d                                            ldr r5, [r4, #0x54]
00089f2a  69 74                                            strb r1, [r5, #0x11]
00089f2c  2d 76                                            strb r5, [r5, #0x18]
00089f2e  65 72                                            strb r5, [r4, #9]
00089f30  74 65                                            str r4, [r6, #0x54]
00089f32  78 2d                                            cmp r5, #0x78
00089f34  54 4f                                            ldr r7, [pc, #0x150]
00089f36  44 4f                                            ldr r7, [pc, #0x110]
00089f38  00 00                                            movs r0, r0
00089f3a  00 00                                            movs r0, r0

; FUNCTION 0x00089f3c, declared_size=28, range_size=28, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitor5visitEP16ir_end_primitive
; demangled: ir_print_glsl_visitor::visit(ir_end_primitive*)
; decoder-mode: thumb
00089f3c  c0 68                                            ldr r0, [r0, #0xc]
00089f3e  01 a1                                            adr r1, #4
00089f40  26 f0 22 bf                                      b.w #0xb0d88
00089f44  65 6e                                            ldr r5, [r4, #0x64]
00089f46  64 2d                                            cmp r5, #0x64
00089f48  70 72                                            strb r0, [r6, #9]
00089f4a  69 6d                                            ldr r1, [r5, #0x54]
00089f4c  69 74                                            strb r1, [r5, #0x11]
00089f4e  69 76                                            strb r1, [r5, #0x19]
00089f50  65 2d                                            cmp r5, #0x65
00089f52  54 4f                                            ldr r7, [pc, #0x150]
00089f54  44 4f                                            ldr r7, [pc, #0x110]
00089f56  00 00                                            movs r0, r0

; FUNCTION 0x00089f58, declared_size=4, range_size=4, mode=thumb
; class-group: ir_print_glsl_visitor
; alias: _ZN21ir_print_glsl_visitorD0Ev
; demangled: ir_print_glsl_visitor::~ir_print_glsl_visitor()
; decoder-mode: thumb
00089f58  26 f0 fe be                                      b.w #0xb0d58
